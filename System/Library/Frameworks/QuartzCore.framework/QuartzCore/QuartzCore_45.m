void CA::OGL::anonymous namespace::tile_rect_tex_(unint64_t a1, float64_t **a2, __int32 *a3, double *a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = (*a2)[1];
  v6 = (*a2)[3];
  v7 = (*a2)[2] + **a2;
  v14[0] = **a2;
  v14[1] = v7;
  *v13 = v5;
  *&v13[1] = v6 + v5;
  LODWORD(v5) = a3[1];
  LODWORD(v7) = a3[2];
  LODWORD(v6) = a3[3];
  v12[0] = *a3;
  v12[1] = LODWORD(v7);
  v11[0] = LODWORD(v5);
  v11[1] = LODWORD(v6);
  v8 = *(a1 + 16);
  v9 = *(v8 + 16) & 0xFFFFFF00FF00FF00;
  if (*(v8 + 8) == 0x3C003C003C003C00)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  *(v8 + 16) = v10 | v9;
  *(v8 + 20) = HIDWORD(v9);
  *(*(a1 + 16) + 16) = 0;
}

void CA::OGL::tile_rect_tex(CA::OGL::Context &,CA::OGL::RectState const&,float const*,double const*)::MaskedTileRect::draw_content(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 4);
  v4 = *a3;
  v5 = v3;
  v6 = 0;
  v8 = 0;
  v7 = 0;
  v9 = 0;
}

void CA::OGL::tile_rect_tex(CA::OGL::Context &,CA::OGL::RectState const&,float const*,double const*,float const*,double const*)::MaskedTileRect9::draw_content(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 4);
  v4 = *a3;
  v5 = v3;
  v6 = 0;
  v8 = 0;
  v7 = 0;
  v9 = 0;
}

uint64_t CA::OGL::emit_shadow_rect(void *a1, uint64_t a2, float32x2_t *a3, float16x4_t *a4, int a5, int a6, int a7, uint64_t a8, double a9)
{
  v66[1] = *MEMORY[0x1E69E9840];
  _Q0 = vaddq_f64(*a2, vcvtq_f64_f32(*a3));
  *a2 = _Q0;
  v17 = *a4;
  if (a5 >= 255)
  {
    v18 = 255;
  }

  else
  {
    v18 = a5;
  }

  v19 = v18 & ~(v18 >> 31);
  if (*&v17 == 0x3C003C003C003C00)
  {
    *_Q0.f64 = v19 * 0.0039216;
    __asm { FCVT            H0, S0 }

    *&_Q0.f64[0] = vdup_lane_s16(*&_Q0.f64[0], 0);
  }

  else
  {
    *&_Q0.f64[0] = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v17), v19 * 0.0039216));
  }

  v24 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*(a1[82] + 32)), vcvtq_f32_f16(*&_Q0.f64[0]))));
  if (*(a1[82] + 32) != 0x3C003C003C003C00)
  {
    _Q0.f64[0] = v24;
  }

  *(a1[2] + 8) = _Q0.f64[0];
  if (a6)
  {
    v25 = 12;
  }

  else
  {
    v25 = 3;
  }

  *(a1[2] + 16) = v25;
  v65 = 0;
  v66[0] = 0;
  (*(*a1 + 544))(a1, 0, v66);
  v26 = *(a2 + 16);
  v27 = *(a2 + 8);
  v64[0].f64[0] = *a2 - a9 * 2.8;
  v28 = v64[0].f64[0];
  v64[0].f64[1] = v64[0].f64[0] + a9 * 5.6;
  v29 = vaddq_f64(vdupq_lane_s64(v26, 0), v64[0]);
  v64[1] = v29;
  v30 = v27 - a9 * 2.8;
  v61 = v30;
  v62 = v30 + a9 * 5.6;
  v31.f64[0] = v30;
  v31.f64[1] = v62;
  v32 = vaddq_f64(vdupq_lane_s64(*(&v26 + 1), 0), v31);
  v63 = v32;
  v59[0] = HIDWORD(v66[0]);
  v59[1] = v66[0];
  v60 = v66[0];
  v57[0] = HIDWORD(v66[0]);
  v57[1] = v66[0];
  v58 = v66[0];
  v49[0] = a2;
  v49[1] = a8;
  v50 = 63;
  v51 = 0;
  v53 = 0;
  v52 = 0;
  v54 = 0;
  if (a7)
  {
    *(a1[2] + 16) = 14;
    v46 = v27 - a9 * 2.8;
    v47 = v30 + a9 * 5.6;
    v48 = v32;
    v43 = v28;
    v44 = v28 + a9 * 5.6;
    v45 = v29;
    (*(*a1 + 496))(a1, 1, 0, 0, &v65);
    v33 = 1.0 / *(a2 + 16);
    v34 = 1.0 / *(a2 + 24);
    v35 = *(a2 + 8) - a3->f32[1];
    v36 = (*(&v65 + 1) - *&v65);
    v37.f64[0] = v43;
    v37.f64[1] = v44;
    v38 = vdupq_lane_s64(COERCE__INT64(trunc(*a2 - a3->f32[0])), 0);
    v39 = vdupq_lane_s64(COERCE__INT64(*&v65), 0);
    v56 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v39, vsubq_f64(v37, v38), v36 * v33)), vmlaq_n_f64(v39, vsubq_f64(v45, v38), v36 * v33));
    v38.f64[0] = v46;
    v38.f64[1] = v47;
    v40 = vdupq_lane_s64(COERCE__INT64(trunc(v35)), 0);
    v55 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v39, vsubq_f64(v38, v40), v36 * v34)), vmlaq_n_f64(v39, vsubq_f64(v48, v40), v36 * v34));
    CA::OGL::emit_nine_part_rect(a1, v49, v64, &v61, v59, v57, &v56, &v55, 0);
    (*(*a1 + 560))(a1, 0, 1);
  }

  else
  {
    if (a6)
    {
      v41 = 278528;
    }

    else
    {
      v41 = 0;
    }

    CA::OGL::emit_nine_part_rect(a1, v49, v64, &v61, v59, v57, 0, 0, v41);
  }

  result = (*(*a1 + 560))(a1, 0, 0);
  *(a1[2] + 16) = 0;
  return result;
}

const float *CA::OGL::merge_compressed_geometry_clipped(CA::OGL *this, double *a2, const double *a3, const float *a4, const float *a5, float a6, uint64_t a7, double *a8, float *a9, float *a10, unsigned __int16 *a11)
{
  if (a5 < 2)
  {
    return a5;
  }

  v12 = *a2;
  v13 = a6;
  v14 = *a3;
  v15 = *this;
  v16 = *a2 - v13;
  if (v16 >= *this)
  {
    LODWORD(v19) = 0;
    v21 = (*a4 - a4[1]) / (a2[1] - v12);
    v22 = *a4 + v21;
    v23 = -1.0 - v13 + v12;
    v24 = a5 - 1;
LABEL_12:
    v26 = v24;
    while (1)
    {
      if (a2[v26] - v13 <= *(this + v24))
      {
LABEL_16:
        v25 = 0;
        goto LABEL_17;
      }

      if (!v26)
      {
        break;
      }

      if (v19 > --v26)
      {
        goto LABEL_16;
      }
    }

    LOWORD(v27) = 0;
    v11 = 0;
    v28 = 0;
    goto LABEL_42;
  }

  v17 = 0;
  while (1)
  {
    v18 = v16;
    if (a5 - 1 == v17)
    {
      break;
    }

    v19 = v17 + 1;
    v16 = a2[++v17] - v13;
    if (v16 >= v15)
    {
      v20 = &a4[v19 - 1];
      goto LABEL_10;
    }
  }

  v20 = &a4[a5 - 1];
  LODWORD(v19) = a5;
LABEL_10:
  v22 = *v20;
  v23 = v18;
  v25 = v19 == a5;
  v24 = a5 - 1;
  if (a5 - 1 >= v19)
  {
    goto LABEL_12;
  }

  LODWORD(v26) = a5 - 1;
LABEL_17:
  LOWORD(v27) = 0;
  if (v25 || v19 > v26)
  {
    v11 = 0;
    v28 = 0;
  }

  else
  {
    v28 = 0;
    LODWORD(v11) = 0;
    v27 = 0;
    v29 = v15 + -1.0;
    v30 = -v13;
    v31 = (v14 - *(a3 + 1)) / (*(this + 1) - v15);
    v32 = v14 + v31;
    v33 = v19;
    do
    {
      v34 = *(this + v28);
      v35 = a2[v33];
      v36 = v35 - v13;
      if (v34 >= v35 - v13)
      {
        if (v36 >= v34)
        {
          *(a7 + 8 * v11) = v34;
          v32 = *(a3 + v28);
          *(a8 + v11) = v32;
          v22 = a4[v33];
          a9[v11] = v22;
          v29 = v34;
          v23 = v36;
          ++v28;
        }

        else
        {
          v41 = v34 - v29;
          v42 = (v36 - v29) / v41;
          if (v42 > 1.0 || (v43 = 0.0, v42 >= 0.0))
          {
            v44 = (v30 - v29 + v35) / v41;
            v43 = 1.0;
            if (v44 <= 1.0)
            {
              v43 = v44;
            }
          }

          v23 = v36;
          *(a7 + 8 * v11) = v23;
          v22 = a4[v33];
          a9[v11] = v22;
          *(a8 + v11) = v32 + ((*(a3 + v28) - v32) * v43);
          if (v11 >= 0xF)
          {
            v45 = 15;
          }

          else
          {
            v45 = v11;
          }

          v27 |= 1 << v45;
        }

        ++v33;
      }

      else
      {
        v37 = v34 - v23;
        v38 = v37 / (v36 - v23);
        if (v38 > 1.0 || (v39 = 0.0, v38 >= 0.0))
        {
          v40 = v37 / (v30 - v23 + v35);
          v39 = 1.0;
          if (v40 <= 1.0)
          {
            v39 = v40;
          }
        }

        v29 = v34;
        *(a7 + 8 * v11) = v29;
        v32 = *(a3 + v28);
        *(a8 + v11) = v32;
        a9[v11] = v22 + ((a4[v33] - v22) * v39);
        ++v28;
      }

      v11 = (v11 + 1);
    }

    while (v28 < a5 && v33 <= v26);
  }

LABEL_42:
  if (v26 + 1 < v24)
  {
    v24 = v26 + 1;
  }

  if (v28 < a5)
  {
    v46 = a2[v26];
    v47 = a4[v26];
    v48 = a5 - v28;
    v49 = (a4[v24] - a4[v24 - 1]) / (a2[v24] - a2[v24 - 1]);
    v50 = a3 + v28;
    v51 = (this + 8 * v28);
    do
    {
      v52 = *v51++;
      v53 = v52;
      *(a7 + 8 * v11) = v52;
      LODWORD(v52) = *v50++;
      *(a8 + v11) = LODWORD(v52);
      *&v53 = v53 + v13 - v46;
      a9[v11] = v47 + (*&v53 * v49);
      v11 = (v11 + 1);
      --v48;
    }

    while (v48);
  }

  if (a10)
  {
    v54 = v27 | (v19 << 8);
    if (a5 > 8)
    {
      v54 = 0;
    }

    *a10 = v54;
  }

  return v11;
}

uint64_t CA::OGL::merge_rr_occl_bins_8x8(CA::OGL *this, unsigned int a2, unsigned int a3, int a4, int a5)
{
  if (!(a2 | this))
  {
    return 0;
  }

  v5 = 0;
  if (a3 <= 8 && a4 <= 8)
  {
    if (a5)
    {
      v6 = 14;
    }

    else
    {
      v6 = 4;
    }

    if (a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = this >> 8;
      do
      {
        v10 += (this >> v7) & 1;
        v8 |= (v10 == 2) << v7;
        v9 |= ((v6 >> v10) & 1) << v7++;
      }

      while (a3 != v7);
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    if (a4 < 1)
    {
      v14 = 0;
      v13 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = a2 >> 8;
      do
      {
        v15 += (a2 >> v11) & 1;
        v14 |= (v15 == 2) << v12;
        v13 |= ((v6 >> v15) & 1) << v12;
        ++v11;
        v12 += a3;
      }

      while (a4 > v11);
    }

    return (v13 * v8) | (v14 * v9);
  }

  return v5;
}

unint64_t CA::OGL::emit_shadow_corner_contents(CA::OGL::Context *a1, float64x2_t *a2, float32x2_t *a3, float16x4_t *a4, int a5, int a6, int a7, CA::Mat4Impl *a8, double a9, float a10, float a11, uint64_t a12, float64_t *a13, unsigned __int8 a14)
{
  v23 = a1;
  v240 = *MEMORY[0x1E69E9840];
  result = CA::OGL::Context::shadow_cache(a1);
  if (!result)
  {
    return result;
  }

  v25 = result;
  v26 = *a2;
  *a2 = vaddq_f64(*a2, vcvtq_f64_f32(*a3));
  v27 = a13[1];
  v28 = a13[3];
  if ((*(v23 + 872) & 2) != 0)
  {
    v27 = 1.0 - (v27 + v28);
    a13[1] = v27;
  }

  if ((*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v185 = a4;
  v186 = a5;
  v184 = v26;
  v29 = a12;
  v30.f64[0] = *a13;
  v31.f64[0] = a13[2];
  v32 = *(a12 + 16);
  v33.i64[0] = v32;
  v33.i64[1] = HIDWORD(v32);
  v34 = vcvtq_f64_u64(v33);
  v30.f64[1] = v27;
  v31.f64[1] = v28;
  rect2 = vmulq_f64(v31, v34);
  v195 = vmulq_f64(v30, v34);
  os_unfair_lock_lock((result + 40));
  v35 = x_hash_table_lookup(*(v25 + 8), a12, 0);
  v188 = a7;
  v190 = a10;
  if (v35)
  {
    v36 = v35;
    v37 = a11;
    v38 = 1;
    v39 = v35;
    do
    {
      v40 = v39;
      if (*(v39 + 24) == a9 && *(v39 + 32) == v37 && *(v39 + 44) == a14 && *(v39 + 40) == a10)
      {
        v241.origin = v195;
        v241.size = rect2;
        v41 = CGRectEqualToRect(*(v39 + 48), v241);
        v42 = v195;
        if (!v41)
        {
          v44 = v40;
          goto LABEL_18;
        }
      }

      v39 = *v40;
      ++v38;
    }

    while (*v40);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v43 = malloc_type_zone_malloc(malloc_zone, 0xB8uLL, 0x165299FDuLL);
    v44 = v43;
    if (v43)
    {
      *v43 = 0;
      *(v43 + 1) = 0;
      *(v43 + 2) = 0;
      *(v43 + 24) = vdupq_n_s64(0x7FF8000000000000uLL);
      *(v43 + 10) = 0;
      v43[44] = 0;
      *(v43 + 8) = 0u;
      *(v43 + 9) = 0u;
      *(v43 + 10) = 0u;
    }

    *v40 = v43;
    v42 = v195;
LABEL_18:
    a7 = v188;
    v45 = rect2;
    if (v38 >= 9)
    {
      v46 = *v36;
      *v36 = **v36;
      *v46 = *(v25 + 32);
      *(v25 + 32) = v46;
    }

    v29 = a12;
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v47 = malloc_type_zone_malloc(malloc_zone, 0xB8uLL, 0x165299FDuLL);
    v44 = v47;
    if (v47)
    {
      *v47 = 0;
      *(v47 + 1) = 0;
      *(v47 + 2) = 0;
      *(v47 + 24) = vdupq_n_s64(0x7FF8000000000000uLL);
      *(v47 + 10) = 0;
      v47[44] = 0;
      *(v47 + 8) = 0u;
      *(v47 + 9) = 0u;
      *(v47 + 10) = 0u;
      v48 = *(v25 + 8);
      v49 = a12;
      v50 = v44;
    }

    else
    {
      v48 = *(v25 + 8);
      v49 = a12;
      v50 = 0;
    }

    hash_table_modify(v48, v49, v50, 0);
    v37 = a11;
    v45 = rect2;
    v42 = v195;
  }

  *(v44 + 10) = v190;
  *(v44 + 3) = a9;
  *(v44 + 4) = v37;
  *(v44 + 44) = a14;
  *(v44 + 3) = v42;
  *(v44 + 4) = v45;
  os_unfair_lock_unlock((v25 + 40));
  v189 = v44;
  v51 = v44[1];
  if (v51)
  {
    v52 = v189[2];
    if (!a7 || v52)
    {
LABEL_152:
      v136 = *(v189 + 44);
      v239 = 0uLL;
      result = CA::OGL::Context::bind_image(v23, 0, v51, 63, 1u, 1, 0, 0, 0.0, &v239, 0);
      if (!result)
      {
        return result;
      }

      v138 = result;
      if (byte_1ED4E9872 == 1)
      {
        v145 = 0x3C0000003C000000;
        *v185 = 0x3C0000003C000000;
        if (v186 >= 255)
        {
          v171 = 255;
        }

        else
        {
          v171 = v186;
        }

        v140 = v171 & ~(v171 >> 31);
      }

      else
      {
        if (v186 >= 255)
        {
          v139 = 255;
        }

        else
        {
          v139 = v186;
        }

        v140 = v139 & ~(v139 >> 31);
        if (*v185 == 0x3C003C003C003C00)
        {
          *_D0.i32 = v140 * 0.0039216;
          __asm { FCVT            H0, S0 }

          v144 = COERCE_DOUBLE(vdup_lane_s16(_D0, 0));
LABEL_161:
          v146 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*(*(v23 + 656) + 32)), vcvtq_f32_f16(*&v144))));
          if (*(*(v23 + 656) + 32) != 0x3C003C003C003C00)
          {
            v144 = v146;
          }

          *(*(v23 + 16) + 8) = v144;
          v147 = *(v23 + 16);
          if (a6)
          {
            *(v147 + 16) = 12;
          }

          else
          {
            v148 = *(v147 + 16) & 0xFFFFFF00FF00FF00;
            if (*(v147 + 8) == 0x3C003C003C003C00)
            {
              v149 = 1;
            }

            else
            {
              v149 = 3;
            }

            *(v147 + 16) = v149 | v148;
            *(v147 + 20) = HIDWORD(v148);
          }

          v150 = v136 + a10;
          v151 = v136;
          v152 = a2->f64[0];
          v153 = a2->f64[1];
          v154 = v150;
          v155 = a2->f64[0] + v150;
          v235 = a2->f64[0] - v151;
          v236 = v155;
          v156 = a2[1].f64[1];
          v157 = a2[1].f64[0] + v152;
          v237 = v157 - v154;
          v238 = v157 + v151;
          v231 = v153 - v151;
          v232 = v153 + v154;
          v158 = v156 + v153;
          v233 = v158 - v154;
          v234 = v158 + v151;
          *&v158 = v239.f32[0] + (v239.f32[2] - v239.f32[0]) * 0.5;
          v228 = __PAIR64__(LODWORD(v158), v239.u32[0]);
          v229 = LODWORD(v158);
          v230 = v239.i32[2];
          *&v157 = v239.f32[1] + (v239.f32[3] - v239.f32[1]) * 0.5;
          v225 = __PAIR64__(LODWORD(v157), v239.u32[1]);
          v227 = v239.i32[3];
          v226 = LODWORD(v157);
          if (a7)
          {
            *(*(v23 + 16) + 16) = 14;
            v219 = 0uLL;
            v216 = 0u;
            memset(&src, 0, 48);
            v213 = 0u;
            v214 = 0u;
            memset(&dest, 0, sizeof(dest));
            memset(v211, 0, sizeof(v211));
            memset(v210, 0, sizeof(v210));
            memset(v209, 0, sizeof(v209));
            memset(v208, 0, sizeof(v208));
            v159 = CA::OGL::Context::bind_image(v23, 1u, v52, 63, 1u, 1, 2, 0, 0.0, &v219, 0);
            v221 = v184.f64[0] - v151;
            v222 = v184.f64[0] + v154;
            v160 = a2[1].f64[1];
            v161 = a2[1].f64[0] + v184.f64[0];
            v223 = v161 - v154;
            v224 = v161 + v151;
            *v162.i64 = v184.f64[1] - v151;
            *v220 = v184.f64[1] - v151;
            *&v220[1] = v184.f64[1] + v154;
            *&v220[2] = v160 + v184.f64[1] - v154;
            *&v220[3] = v160 + v184.f64[1] + v151;
            *v162.i32 = v219.f32[0] + ((v219.f32[1] - v219.f32[0]) * 0.5);
            v218[0] = v219.f32[0];
            v218[1] = *v162.i32;
            v218[2] = *v162.i32;
            v218[3] = v219.f32[2];
            v217[0] = v219.f32[1];
            v217[1] = *v162.i32;
            v217[2] = *v162.i32;
            v217[3] = v219.f32[3];
            v200 = 0.0;
            v163.i64[0] = 1.0;
            v164.i64[0] = 1.0;
            v166 = (~CA::OGL::transform_filter_bits(a8, v165, v163, v164, v162) & 9) != 0;
            v167 = CA::OGL::merge_compressed_geometry_clipped(&v235, &v221, &v228, v218, 4, 0.0, &src, v211, v210, (&v200 + 2), v174) - 1;
            v168 = CA::OGL::merge_compressed_geometry_clipped(&v231, v220, &v225, v217, 4, 0.0, &dest, v209, v208, &v200, v175) - 1;
            v169 = CA::OGL::merge_rr_occl_bins_8x8(HIWORD(v200), LOWORD(v200), v167, v168, v166);
            v201 = a2;
            v202 = a8;
            v203 = 63;
            v204 = 0;
            v206 = 0;
            v205 = 0;
            v207 = 0;
            CA::OGL::emit_n_part_rect_occluded(v23, &v201, v167, v168, &src, &dest, v211, v209, v210, v208, v169);
            (*(*v23 + 560))(v23, v159, 1);
          }

          else
          {
            src.data = a2;
            src.height = a8;
            if (a6)
            {
              v170 = 278528;
            }

            else
            {
              v170 = 0x20000;
            }

            memset(&src.width + 4, 0, 28);
            LODWORD(src.width) = 63;
            CA::OGL::emit_nine_part_rect(v23, &src, &v235, &v231, &v228, &v225, 0, 0, v170);
          }

          result = (*(*v23 + 560))(v23, v138, 0);
          *(*(v23 + 16) + 16) = 0;
          return result;
        }

        v145 = *v185;
      }

      v144 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v145), v140 * 0.0039216)));
      goto LABEL_161;
    }
  }

  v53 = v37 * a9;
  v54 = v53;
  v55 = vcvtps_s32_f32((v54 * 2.82) + 0.5);
  if (v54 <= 0.6)
  {
    v55 = 0;
  }

  if (v55)
  {
    v56 = 1;
  }

  else
  {
    v56 = a14;
  }

  if (!v56)
  {
    v55 = 1;
  }

  v194 = v55;
  os_unfair_lock_lock((v25 + 40));
  v57 = x_hash_table_lookup(*v25, v29, 0);
  if (v57)
  {
    v58 = v57;
    v59 = 1;
    v60 = v57;
    v61 = a10;
    v62 = v194;
    do
    {
      v63 = v60;
      if (*(v60 + 24) == a14 && *(v60 + 16) == v62 && *(v60 + 20) == v190)
      {
        v242.origin = v195;
        v242.size = rect2;
        v64 = CGRectEqualToRect(*(v60 + 32), v242);
        v65 = v195;
        v62 = v194;
        if (!v64)
        {
          v66 = v63;
          v67 = rect2;
          goto LABEL_49;
        }
      }

      v60 = *v63;
      ++v59;
    }

    while (*v63);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v66 = malloc_type_zone_malloc(malloc_zone, 0x40uLL, 0x165299FDuLL);
    if (v66)
    {
      *v66 = 0;
      v66[1] = 0;
    }

    *v63 = v66;
    v62 = v194;
    v67 = rect2;
    v65 = v195;
LABEL_49:
    a7 = v188;
    if (v59 >= 5)
    {
      v68 = *v58;
      *v58 = **v58;
      *v68 = *(v25 + 24);
      *(v25 + 24) = v68;
    }

    v29 = a12;
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v61 = a10;
    v69 = malloc_type_zone_malloc(malloc_zone, 0x40uLL, 0x165299FDuLL);
    if (v69)
    {
      v70 = v69;
      *v69 = 0;
      v69[1] = 0;
      hash_table_modify(*v25, v29, v69, 0);
      v66 = v70;
    }

    else
    {
      hash_table_modify(*v25, v29, 0, 0);
      v66 = 0;
    }

    v62 = v194;
    v67 = rect2;
    v65 = v195;
  }

  v187 = v66;
  *(v66 + 4) = v62;
  *(v66 + 5) = v61;
  *(v66 + 24) = a14;
  *(v66 + 2) = v65;
  *(v66 + 3) = v67;
  v71 = v62;
  os_unfair_lock_unlock((v25 + 40));
  v72 = v187;
  v73 = v187[1];
  v74 = 2 * v61;
  v183 = a6;
  if (v73)
  {
    v75 = v73 + 2;
    if (!atomic_fetch_add(v73 + 2, 1u))
    {
      v73 = 0;
      atomic_fetch_add(v75, 0xFFFFFFFF);
    }

    goto LABEL_121;
  }

  v182 = 2 * v61;
  v76 = (4 * v71 + 2 * v61);
  v77 = CA::Render::format_rowbytes(*(v29 + 168), 4 * v71 + 2 * v61);
  if (is_mul_ok(v77, v76))
  {
    v78 = (v77 * v76);
  }

  else
  {
    v78 = 0;
  }

  v220[0] = 0;
  v79 = CA::Render::aligned_malloc(v78, v220, 0);
  if (!v79)
  {
    v116 = 0;
    v73 = 0;
    v74 = 2 * v61;
    goto LABEL_122;
  }

  v80 = v79;
  v81 = CA::Render::format_rowbytes(*(v29 + 168), v76);
  v211[0] = v81;
  v82 = *(v29 + 168);
  if ((v82 - 11) >= 0xFFFFFFFD)
  {
    v199 = v80;
    v179 = v76;
    v180 = v23;
    v181 = a2;
    v83 = 0;
    v197 = *(v29 + 176);
    v198 = *(v29 + 112);
    v85 = *(v29 + 16);
    v84 = *(v29 + 20);
    LODWORD(v201) = 0;
    HIDWORD(v201) = v195.x;
    v86 = rect2.width + trunc(v195.x);
    if (v86 >= v85)
    {
      v86 = v85;
    }

    LODWORD(v202) = v86;
    HIDWORD(v202) = v85;
    v87 = rect2.height + trunc(v195.y);
    if (v87 >= v84)
    {
      v87 = v84;
    }

    LODWORD(v235) = 0;
    HIDWORD(v235) = v195.y;
    LODWORD(v236) = v87;
    HIDWORD(v236) = v84;
    v88 = v194;
    LODWORD(v231) = v194;
    HIDWORD(v231) = v194 + v190;
    v177 = v194 + v190;
    v178 = 2 * v194;
    v89 = v194 + v190 + 2 * v194;
    LODWORD(v232) = v89;
    HIDWORD(v232) = v89 + v190;
    LODWORD(v221) = v194;
    HIDWORD(v221) = v194 + v190;
    v90 = rect2.width == 0.0;
    if (rect2.height == 0.0)
    {
      v90 = 1;
    }

    v196 = v90 & a14;
    rect2a = v194 + v190 + 2 * v194;
    LODWORD(v222) = rect2a;
    v176 = v89 + v190;
    HIDWORD(v222) = v89 + v190;
    do
    {
      v91 = 0;
      v92 = v83 + 1;
      do
      {
        v93 = v91++;
        v94 = *(&v231 + v91);
        v95 = v94 - v88;
        if (v94 != v88)
        {
          v96 = *(&v221 + v83);
          v97 = *(&v221 + v92);
          if (v97 != v96)
          {
            v98 = *(&v235 + v83);
            v99 = *(&v201 + v93);
            v100 = *(&v235 + v92) - v98;
            v101 = *(&v201 + v91) - v99;
            src.data = (v198 + v197 * v98 + v99);
            src.height = v100;
            src.width = v101;
            src.rowBytes = v197;
            v102 = v80 + v81 * v96 + v88;
            v103 = v95;
            dest.data = v102;
            dest.height = v97 - v96;
            dest.width = v95;
            dest.rowBytes = v81;
            _ZF = v83 == 1 || v93 == 1;
            v105 = _ZF;
            v106 = a14 ^ 1;
            if (!_ZF)
            {
              v106 = 0;
            }

            if (v106 == 1)
            {
              if ((v97 - v96) <= 1)
              {
                v107 = 1;
              }

              else
              {
                v107 = v97 - v96;
              }

              do
              {
                memset(v102, 255, v103);
                v102 += v81;
                --v107;
              }

              while (v107);
            }

            else if ((v196 & v105 & 1) == 0)
            {
              vImageScale_Planar8(&src, &dest, 0, 0);
            }
          }
        }

        v88 = v94;
      }

      while (v91 != 3);
      ++v83;
      v88 = v194;
    }

    while (v92 != 3);
    v23 = v180;
    a2 = v181;
    a7 = v188;
    if (v196)
    {
      if (v190 <= 0)
      {
        v113 = v80 + v81 * rect2a;
      }

      else
      {
        v108 = v81 * v194;
        v109 = v80 + v177 + v108;
        v110 = rect2a;
        v111 = v80 + v108 + rect2a + 1;
        v112 = v194;
        do
        {
          memset(v109, *(v109 - 1), v194);
          memset(&v109[v178], *v111, v194);
          ++v112;
          v111 += v81;
          v109 += v81;
        }

        while (v112 < v177);
        v113 = v199 + v81 * rect2a;
        v114 = &v113[v177];
        v115 = v199 + rect2a + v81 * rect2a + 1;
        do
        {
          memset(v114, *(v114 - 1), v194);
          memset(&v114[v194], *v115, v194);
          ++v110;
          v115 += v81;
          v114 += v81;
        }

        while (v110 < v176);
        a2 = v181;
        a7 = v188;
        v88 = v194;
        v80 = v199;
      }

      v117 = v194 + v190;
      v118 = v177 - 1;
      v119 = v80 + v81 * v118;
      v120 = v177 + v88;
      if (v88 < 1)
      {
        v121 = v80 + v81 * v118;
      }

      else
      {
        v121 = v80 + v81 * v118;
        do
        {
          memcpy(v121, v119, v81);
          v121 += v81;
          ++v117;
        }

        while (v117 < v120);
      }

      if (v178 > v194)
      {
        do
        {
          memcpy(v121, v113, v81);
          v121 += v81;
          ++v120;
        }

        while (v120 < rect2a);
      }
    }

    v82 = *(a12 + 168);
    LODWORD(v76) = v179;
  }

  v73 = CA::Render::Image::new_image(v82, v76, v76, 1u, 0, v80, v211, CA::Render::aligned_free, v220[0], v173);
  if (!a7)
  {
    goto LABEL_119;
  }

  v72 = v187;
  v122 = v187[1];
  v187[1] = v73;
  if (v73 && (v123 = v73 + 2, !atomic_fetch_add(v73 + 2, 1u)))
  {
    v73 = 0;
    atomic_fetch_add(v123, 0xFFFFFFFF);
    if (!v122)
    {
      goto LABEL_120;
    }
  }

  else if (!v122)
  {
    goto LABEL_120;
  }

  if (atomic_fetch_add(v122 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v122 + 16))(v122);
LABEL_119:
    v72 = v187;
  }

LABEL_120:
  v74 = v182;
LABEL_121:
  v116 = *(v72 + 4);
LABEL_122:
  v124 = v74 + 4 * v116;
  v125 = 8.0;
  if (v53 <= 8.0)
  {
    v125 = 4.0;
  }

  v126 = 2.0;
  if (v53 > 4.0)
  {
    v126 = v125;
  }

  if (v53 <= v126)
  {
    v127 = v37;
  }

  else
  {
    v127 = v37;
    do
    {
      v127 = v127 * 0.5;
      v53 = v53 * 0.5;
    }

    while (v53 > v126);
  }

  v128 = v127 * v124 / v37;
  v129 = v128;
  v130 = CA::Render::format_rowbytes(*(a12 + 168), v128);
  v131 = v130;
  src.data = v130;
  if (is_mul_ok(v130, v129))
  {
    result = v130 * v129;
  }

  else
  {
    result = 0;
  }

  if (result <= 0x1000000)
  {
    dest.data = 0;
    result = CA::Render::aligned_malloc(result, &dest, 0);
    if (result)
    {
      v132 = result;
      CA::downsample_image(*(a12 + 168), *(v73 + 14), *(v73 + 22), v124, v124, result, v131, 4, 0.0, 0.0, v129, v129, v172);
      v133 = v53;
      v51 = CA::Render::Image::new_image(*(a12 + 168), v129, v129, 1u, 0, v132, &src, CA::Render::aligned_free, dest.data, v173);
      a6 = v183;
      a7 = v188;
      if (v188)
      {
        v134 = v189[2];
        if (v134 != v73)
        {
          if (v134 && atomic_fetch_add(v134 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v134 + 16))(v134);
          }

          v135 = v73;
          if (!atomic_fetch_add(v73 + 2, 1u))
          {
            v135 = 0;
            atomic_fetch_add(v73 + 2, 0xFFFFFFFF);
          }

          v189[2] = v135;
        }
      }

      if (atomic_fetch_add(v73 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v73 + 16))(v73);
      }

      result = v189[1];
      v189[1] = v51;
      *(v189 + 44) = v116;
      if (result)
      {
        if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
        {
          result = (*(*result + 16))(result);
        }

        v51 = v189[1];
      }

      if (v51)
      {
        v52 = v189[2];
        goto LABEL_152;
      }
    }
  }

  return result;
}

void CA::OGL::emit_large_brim(uint64_t a1, uint64_t a2, float64x2_t *a3, float16x4_t *a4, float16x4_t *a5, uint64_t a6, int a7, uint64_t a8, double a9, float a10, double a11, float a12)
{
  v95 = *MEMORY[0x1E69E9840];
  if (byte_1ED4E9872 == 1)
  {
    *a4 = 0x3C003A0000003A00;
    *a5 = 0x3C0000003A003A00;
  }

  if ((*(a6 + 144) & 0x10) != 0)
  {
    v21 = vaddvq_f64(vmulq_f64(*a6, *a6));
    v22 = vaddvq_f64(vmulq_f64(*(a6 + 32), *(a6 + 32)));
    v23 = *(a6 + 120);
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
    v21 = *(a6 + 128);
    v22 = v21;
  }

  if (v21 >= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = v21;
  }

  v29 = v28 * a9;
  v30 = ceilf(v29);
  v72 = v30 + 1.0;
  v71 = vcvtq_f64_f32(vmul_n_f32(0x4080000040000000, v30 + 1.0));
  v70 = vdupq_lane_s64(v71.i64[0], 0);
  v82 = vuzp1q_s32(vcvtq_s64_f64(vsubq_f64(*a3, v70)), vcvtq_s64_f64(vaddq_f64(a3[1], vdupq_laneq_s64(v71, 1))));
  v31 = (*(*a1 + 696))(a1, 1, &v82, 0x200000, @"image-brim-1");
  v32 = (*(*a1 + 696))(a1, 1, &v82, 0x200000, @"image-brim-2");
  (*(*a1 + 880))(a1, v31, 0, a8, @"image-brim-1");
  (*(*a1 + 880))(a1, v32, 0, a8, @"image-brim-2");
  if (v31 && v32)
  {
    v33 = v28 * a11;
    v34 = *(a1 + 16);
    v35 = *(v34 + 497);
    if (v35)
    {
      *(v34 + 497) = v35 & 0xFE;
    }

    v36 = ceilf(v33);
    v68 = vdupq_lane_s64(COERCE__INT64(v72), 0);
    v37 = vsubq_f64(*a3, v68);
    v38 = vaddq_f64(a3[1], v70);
    v39 = vcvtq_s64_f64(v38);
    *v39.i8 = vmovn_s64(v39);
    v84 = 0;
    v83[0] = xmmword_183E20E00;
    v83[1] = 0u;
    v83[2] = xmmword_183E20E60;
    memset(&v83[3], 0, 32);
    v83[5] = xmmword_183E20E00;
    v83[6] = 0u;
    v83[7] = xmmword_183E20E60;
    __asm { FMOV            V3.2D, #1.0 }

    v83[8] = _Q3;
    v45 = v39.i32[1];
    if (v39.i32[0] > v39.i32[1])
    {
      v45 = v39.i32[0];
    }

    v39.i32[0] = v45;
    _Q3.i32[0] = 1073741822;
    v46 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v39, _Q3), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vrndq_f64(v37));
    v47 = vdup_n_s32(v45 > 1073741822);
    v48.i64[0] = v47.u32[0];
    v48.i64[1] = v47.u32[1];
    v81[0] = v46;
    v81[1] = vbslq_s8(vcltzq_s64(vshlq_n_s64(v48, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), vrndq_f64(v38));
    v75[0] = v81;
    v75[1] = v83;
    v76 = 63;
    v77 = 0;
    v79 = 0;
    v78 = 0;
    v80 = 0;
    v94 = 0;
    *&v92[16] = 0uLL;
    v93 = 0uLL;
    v91 = 0uLL;
    *v92 = 0uLL;
    v90 = 0uLL;
    v49 = *(a1 + 656);
    v50 = *(v49 + 8);
    v91 = *(v49 + 16);
    *v92 = *(v49 + 32);
    *&v92[8] = *(v49 + 40);
    *&v92[24] = *(v49 + 56);
    v51 = *(v49 + 80);
    LODWORD(v93) = *(v49 + 64);
    v94 = v51 & 0x5FF;
    *(&v93 + 1) = *(v49 + 72);
    v73 = 0;
    v74 = 0;
    CA::Shape::get_bounds(v50, &v73);
    v52 = -v72;
    if (v74 <= SHIDWORD(v74))
    {
      v53 = HIDWORD(v74);
    }

    else
    {
      v53 = v74;
    }

    if (v74 >= SHIDWORD(v74))
    {
      v54 = HIDWORD(v74);
    }

    else
    {
      v54 = v74;
    }

    if (v53 <= 1073741822 && v54 >= 1)
    {
      v73 = vadd_s32(v73, vdup_n_s32(v52));
      v55 = HIDWORD(v74) - 2 * v52;
      LODWORD(v74) = v74 - 2 * v52;
      HIDWORD(v74) = v55;
      if (v74 < 1 || v55 <= 0)
      {
        v74 = 0;
      }
    }

    memset(v89, 0, sizeof(v89));
    CA::Shape::operator=(v89, &v73);
    *(&v90 + 1) = v89;
    *&v90 = CA::OGL::Context::set_gstate(a1, &v90);
    *(*(a1 + 16) + 16) = 79;
    *(a1 + 160) = a12;
    v87[0] = -v72;
    v87[1] = -v72;
    v88 = vcvt_f32_f64(vaddq_f64(a3[1], v68));
    CA::OGL::Context::bind_surface(a1, a2, 0, 0, 0, 0.0);
    CA::OGL::Context::push_surface(a1, v31, 1u, 64, 0);
    CA::OGL::emit_one_part_rect(a1, v75, v87, 0, 0);
    CA::OGL::Context::pop_surface(a1);
    CA::OGL::Context::unbind_surface(a1, a2, 0);
    *(*(a1 + 16) + 16) = 80;
    v85[0] = v30 + 1.0;
    v85[1] = v30 + 1.0;
    v86 = vcvt_f32_f64(vaddq_f64(vdupq_lane_s64(COERCE__INT64(*v71.i64 + v72), 0), a3[1]));
    v56 = v72 - v87[0];
    if (v30 <= v36)
    {
      v57 = v36;
    }

    else
    {
      v57 = v30;
    }

    v58 = ((v57 + 1.0) - 1) | (((v57 + 1.0) - 1) >> 1);
    v59 = v58 | (v58 >> 2) | ((v58 | (v58 >> 2)) >> 4);
    v60 = v59 | (v59 >> 8) | ((v59 | (v59 >> 8)) >> 16);
    v61 = ((v60 | HIDWORD(v60)) + 1);
    *(a1 + 240) = v56;
    *(a1 + 320) = a12;
    CA::OGL::Context::bind_surface(a1, a2, 1u, 0, 0, 0.0);
    v62 = v31;
    v63 = v32;
    do
    {
      v64 = v63;
      v63 = v62;
      v61 = v61 * 0.5;
      *(a1 + 160) = v61;
      CA::OGL::Context::bind_surface(a1, v62, 0, 0, 0, 0.0);
      CA::OGL::Context::push_surface(a1, v64, 1u, 64, 0);
      CA::OGL::emit_one_part_rect(a1, v75, v85, v87, 0);
      CA::OGL::Context::pop_surface(a1);
      CA::OGL::Context::unbind_surface(a1, v63, 0);
      v62 = v64;
    }

    while (v61 > 1.0);
    CA::OGL::Context::unbind_surface(a1, a2, 1);
    *(v64 + 88) = *(a2 + 88);
    v65 = *(a1 + 16);
    if (a7)
    {
      *(v65 + 16) = 84;
      v66 = *a4;
      *(a1 + 240) = v29;
      *(a1 + 244) = a10;
      *(a1 + 248) = a12;
      v67 = 252;
    }

    else
    {
      *(v65 + 16) = 83;
      v66 = *a4;
      *(a1 + 240) = vcvtq_f32_f16(*a5);
      *(a1 + 320) = v29;
      *(a1 + 324) = v33;
      *(a1 + 328) = a10;
      *(a1 + 332) = 0;
      *(a1 + 400) = a12;
      v67 = 404;
    }

    *(a1 + v67) = v56;
    *(a1 + 160) = vcvtq_f32_f16(v66);
    *(*(a1 + 16) + 497) |= 1u;
    CA::OGL::Context::set_gstate(a1, **(a1 + 656));
    CA::OGL::Context::bind_surface(a1, v64, 0, 0, 0, 0.0);
    CA::OGL::Context::bind_surface(a1, a2, 1u, 0, 0, 0.0);
    CA::OGL::emit_one_part_rect(a1, v75, v85, v87, 0);
    CA::OGL::Context::unbind_surface(a1, v64, 0);
    CA::OGL::Context::unbind_surface(a1, a2, 1);
    if ((v35 & 1) == 0)
    {
      *(*(a1 + 16) + 497) &= ~1u;
    }

    *(*(a1 + 16) + 16) = 0;
    CA::OGL::Context::release_surface(a1, v31);
LABEL_46:
    CA::OGL::Context::release_surface(a1, v32);
    return;
  }

  if (v31)
  {
    CA::OGL::Context::release_surface(a1, v31);
  }

  if (v32)
  {
    goto LABEL_46;
  }
}

void sub_183D6D02C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_183D6D584(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 18);
  CFRelease(v2);
  _Unwind_Resume(a1);
}

void sub_183D6DD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_183D6E224(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 26);
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(a1);
}

os_log_t ___Z21x_log_get_image_queuev_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "CAImageQueue");
  x_log_get_image_queue(void)::log = result;
  return result;
}

uint64_t CAImageQueueGetReleasedImageInfo()
{
  result = release_key;
  if (release_key)
  {
    v1 = pthread_getspecific(release_key);
    if (v1)
    {
      return v1 + 56;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CAImageQueueFlush(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 24);
    v4 = *(a1 + 24) + 1;
    *(a1 + 24) = v4;
    *(v3 + 16) = v4;
    os_unfair_lock_unlock((a1 + 16));

    CAImageQueueCollect_(a1, 0, 0);
  }

  else
  {

    os_unfair_lock_unlock((a1 + 16));
  }
}

void CAImageQueueFlushWithTransaction(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 24);
    v4 = *(a1 + 24) + 1;
    *(a1 + 24) = v4;
    v5 = *(a1 + 208);
    if (v5 && (v6 = CA::Context::retain_context_with_id(v5), v4 = *(a1 + 24), v6))
    {
      v7 = v6;
      valuePtr = *(a1 + 24);
      v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      v9 = *(v7 + 29);
      v7 += 58;
      v10 = (*(v9 + 16))(v7);
      CA::Transaction::add_command(0xE, v10, *(a1 + 28), v8, v11);
      CFRelease(v8);
      (**v7)(v7);
    }

    else
    {
      *(v3 + 16) = v4;
    }
  }

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t CAImageQueueConsumeUnconsumedInRange(uint64_t a1, char a2, double a3, double a4)
{
  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v9 = *(v4 + 24);
  os_unfair_lock_lock((a1 + 16));
  if (!*(a1 + 40))
  {
    v11 = 0;
    goto LABEL_32;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(a1 + 24);
  v13 = INFINITY;
  if ((a2 & 2) == 0)
  {
    v13 = -INFINITY;
  }

  v14 = v9 + 472;
  v15 = (v9 + 593);
  v16 = -1;
  do
  {
    if (!*(v15 - 53))
    {
      goto LABEL_25;
    }

    v17 = *(v15 - 57);
    if (v17 - v12 < 0)
    {
      v21 = 0;
      atomic_compare_exchange_strong((v15 - 61), &v21, 0x33333333u);
LABEL_19:
      if (v21)
      {
        goto LABEL_25;
      }

LABEL_20:
      *v15 = 1;
      ++v11;
      goto LABEL_25;
    }

    v18 = *(v15 - 121);
    if (v17 != v12 || v18 < a3 || v18 > a4)
    {
      goto LABEL_25;
    }

    if ((a2 & 2) == 0)
    {
      if (v18 <= v13)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (v18 >= v13)
    {
LABEL_17:
      v21 = 0;
      atomic_compare_exchange_strong((v15 - 61), &v21, 0x22222222u);
      goto LABEL_19;
    }

LABEL_22:
    if (v16 != -1)
    {
      v22 = 0;
      atomic_compare_exchange_strong((v14 + 160 * v16 + 60), &v22, 0x22222222u);
      v16 = v10;
      v13 = v18;
      if (!v22)
      {
        goto LABEL_20;
      }
    }

    v16 = v10;
    v13 = v18;
LABEL_25:
    ++v10;
    v15 += 160;
  }

  while (v10 < *(a1 + 40));
  if ((a2 & 1) == 0 && v16 != -1)
  {
    v23 = 0;
    v24 = v14 + 160 * v16;
    atomic_compare_exchange_strong((v24 + 60), &v23, 0x22222222u);
    if (!v23)
    {
      *(v24 + 121) = 1;
      ++v11;
    }
  }

LABEL_32:
  os_unfair_lock_unlock((a1 + 16));
  return v11;
}

char *CAShmemImageQueueShow(X::Stream *this, uint64_t a2, uint64_t a3, char a4, int a5, char a6)
{
  v7 = a2;
  v9 = atomic_load((a2 + 8));
  if (a6)
  {
    X::Stream::printf(this, "(image-queue: ");
    if (!a3)
    {
      v42 = ")";
      goto LABEL_69;
    }

    v44 = (v7 + 552);
    v42 = ")";
    while (1)
    {
      v45 = *(v44 - 3);
      if (v45 > 2)
      {
        break;
      }

      if (v45)
      {
        v46 = "iosurface";
        if (v45 != 2)
        {
LABEL_81:
          v46 = "unknown";
        }

        goto LABEL_82;
      }

LABEL_83:
      v44 += 40;
      if (!--a3)
      {
        goto LABEL_69;
      }
    }

    v46 = "iosurface";
    if (v45 != 4)
    {
      if (v45 != 3)
      {
        goto LABEL_81;
      }

      v46 = "buffer";
    }

LABEL_82:
    X::Stream::printf(this, "%s [%d %d];", v46, *(v44 - 1), *v44);
    goto LABEL_83;
  }

  X::Stream::printf(this, "(image-queue");
  if (*(v7 + 80))
  {
    X::Stream::printf(this, " 0x%016llx", *(v7 + 80));
  }

  if (*(v7 + 32))
  {
    v12 = "";
  }

  else
  {
    v12 = " not-visible";
  }

  v13 = " async";
  if ((v9 & 1) == 0)
  {
    v13 = "";
  }

  v14 = " enable-dpb";
  if ((v9 & 0x40) == 0)
  {
    v14 = "";
  }

  v15 = " protected";
  if ((v9 & 4) == 0)
  {
    v15 = "";
  }

  v16 = " reduced-polling";
  if ((v9 & 0x10000) == 0)
  {
    v16 = "";
  }

  v17 = " changed";
  if ((a4 & 2) == 0)
  {
    v17 = "";
  }

  X::Stream::printf(this, "%s%s%s%s%s%s", v12, v13, v14, v15, v16, v17);
  v18 = 2 * a5;
  X::Stream::printf(this, "\n%*s", v18 + 2, "");
  X::Stream::printf(this, "(generation 0x%08x)", *(v7 + 16));
  if (*(v7 + 92))
  {
    X::Stream::printf(this, "\n%*s", v18 + 2, "");
    X::Stream::printf(this, "(rotationFlags %d)", *(v7 + 92));
  }

  v19 = *(v7 + 128);
  if (((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001 || *&v19 == 0xFFF0000000000000 || (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 1 <= 0xFFFFFFFFFFFFELL)
  {
    X::Stream::printf(this, "\n%*s", v18 + 2, "");
    X::Stream::printf(this, "(edr-deadline %f)", v19);
  }

  if (*(v7 + 94))
  {
    X::Stream::printf(this, "\n%*s", v18 + 2, "");
    X::Stream::printf(this, "(enhancementMode %d)", *(v7 + 94));
  }

  atomic_fetch_or((v7 + 264), 0x80000000);
  __dmb(0xBu);
  v23 = *(v7 + 264) & 1;
  v24 = (v7 + 48 * v23);
  v25 = v24[21];
  v26 = v24[22];
  v27 = v24[23];
  v28 = v24[24];
  v29 = v24[25];
  v30 = v24[26];
  __dmb(0xBu);
  *(v7 + 264) = v23;
  if (v25 != 0.0 || v26 != 1.0 || v27 != 0.0 || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 || (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    X::Stream::printf(this, "\n%*s", v18 + 2, "");
    X::Stream::printf(this, "(timing begin %g speed %g offset %g duration %g clamp-min %g clamp-max %g)", v25, v26, v27, v28, v29, v30);
  }

  X::Stream::printf(this, "\n%*s", v18 + 2, "");
  X::Stream::printf(this, "(samples");
  if (a3)
  {
    v31 = v18 + 4;
    while (1)
    {
      v32 = *(v7 + 540);
      if (v32 > 2)
      {
        break;
      }

      if (v32)
      {
        v33 = "iosurface";
        if (v32 != 2)
        {
LABEL_48:
          v33 = "unknown";
        }

        goto LABEL_49;
      }

LABEL_67:
      v7 += 160;
      if (!--a3)
      {
        goto LABEL_68;
      }
    }

    v33 = "iosurface";
    if (v32 != 4)
    {
      if (v32 != 3)
      {
        goto LABEL_48;
      }

      v33 = "buffer";
    }

LABEL_49:
    v34 = *(v7 + 532);
    if (v34 > 572662305)
    {
      if (v34 == 572662306)
      {
        v35 = "consumed";
        goto LABEL_59;
      }

      if (v34 == 858993459)
      {
        v35 = "flushed";
        goto LABEL_59;
      }
    }

    else
    {
      if (!v34)
      {
        v35 = "unconsumed";
        goto LABEL_59;
      }

      if (v34 == 286331153)
      {
        v35 = "displayed";
LABEL_59:
        v36 = *(v7 + 544);
        v37 = IOSurfaceLookup(*(v7 + 528));
        if (v37)
        {
          v38 = v37;
          DetachModeCode = IOSurfaceGetDetachModeCode();
          CFRelease(v38);
        }

        else
        {
          DetachModeCode = -1;
        }

        X::Stream::printf(this, "\n%*s", v31, "");
        v40 = " opaque";
        if ((v36 & 1) == 0)
        {
          v40 = "";
        }

        v41 = " flipped";
        if ((v36 & 8) == 0)
        {
          v41 = "";
        }

        X::Stream::printf(this, "(0x%llx %s 0x%x, [%d %d; rot %d] %f (generation 0x%08x) (detach 0x%016llx) %s%s%s)", *(v7 + 480), v33, *(v7 + 528), *(v7 + 548), *(v7 + 552), *(v7 + 592), *(v7 + 472), *(v7 + 536), DetachModeCode, v35, v40, v41);
        goto LABEL_67;
      }
    }

    v35 = "<unknown>";
    goto LABEL_59;
  }

LABEL_68:
  v42 = "))";
LABEL_69:

  return X::Stream::printf(this, v42);
}

BOOL CAImageQueueInsertImage(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = xmmword_183E21120;
  return CAImageQueueInsertImage_(a1, a2, a3, a4, 0, &v8, a5, a6, a7, 0.0, 0.0, 0.0, 0.0);
}

IOSurfaceRef CAImageQueueCopyLastIOSurface(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = 0;
  v4 = 0;
  v5 = (*(*(a1 + 48) + 24) + 528);
  do
  {
    if (v5[3] && *v5)
    {
      v6 = v5[11];
      v7 = v6 >= v4;
      if (v6 > v4)
      {
        v4 = v5[11];
      }

      if (v7)
      {
        v3 = *v5;
      }
    }

    v5 += 40;
    --v2;
  }

  while (v2);
  if (v3)
  {
    v8 = IOSurfaceLookup(v3);
  }

  else
  {
LABEL_14:
    v8 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v8;
}

IOSurfaceRef CAImageQueueCopyDisplayedIOSurface(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = 0;
  v4 = 0;
  v5 = (*(*(a1 + 48) + 24) + 528);
  do
  {
    if (v5[3] && *v5 && v5[1] == 286331153)
    {
      v6 = v5[11];
      v7 = v6 >= v4;
      if (v6 > v4)
      {
        v4 = v5[11];
      }

      if (v7)
      {
        v3 = *v5;
      }
    }

    v5 += 40;
    --v2;
  }

  while (v2);
  if (v3)
  {
    v8 = IOSurfaceLookup(v3);
  }

  else
  {
LABEL_15:
    v8 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v8;
}

uint64_t CAImageQueueSetLatestCanonicalTime(uint64_t result, double a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    v3 = *(v2 + 24);
    *(v3 + 304) = a2;
    __dmb(0xBu);
    *(v3 + 300) = *(v3 + 16);
  }

  return result;
}

uint64_t CAImageQueueRegisterPixelBuffer(uint64_t a1, CA::Render::Shmem *this, char *a3, uint64_t a4, int a5, void *a6, int a7, const void *a8)
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    return 0;
  }

  if (*(a1 + 20))
  {
    return 0;
  }

  v12 = a6;
  v15 = CA::Render::Shmem::new_shmem(this, a3, 1, 0, 0, a6);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v17 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
  if (!v17)
  {
    if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v16 + 16))(v16);
    }

    return 0;
  }

  v18 = v17;
  v19 = CA::Render::Texture::Texture(v17, a5, v12);
  *(v19 + 12) = 40;
  ++dword_1ED4EAAD8;
  *v19 = &unk_1EF1FA618;
  v20 = v16;
  if (!atomic_fetch_add(v16 + 2, 1u))
  {
    v20 = 0;
    atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
  }

  *(v18 + 14) = v20;
  *(v18 + 15) = a4;
  *(v18 + 32) = a7;
  *(v18 + 18) = 0;
  *(v18 + 19) = 0;
  *(v18 + 17) = 0;
  v47 = 0uLL;
  if (a8)
  {
    *(v18 + 17) = CFRetain(a8);
    Value = CFDictionaryGetValue(a8, *MEMORY[0x1E6965CE8]);
    CA::Render::Texture::set_colorspace(v18, Value);
    v22 = CFDictionaryGetValue(a8, *MEMORY[0x1E6965EF8]);
    v23 = 1.0;
    if (v22)
    {
      v24 = v22;
      v25 = CFGetTypeID(v22);
      if (v25 == CFDictionaryGetTypeID())
      {
        v26 = CFDictionaryGetValue(v24, *MEMORY[0x1E6965F00]);
        v27 = CFDictionaryGetValue(v24, *MEMORY[0x1E6965EF0]);
        if (v26)
        {
          v28 = v27;
          v29 = CFGetTypeID(v26);
          if (v29 == CFNumberGetTypeID())
          {
            if (v28)
            {
              v30 = CFGetTypeID(v28);
              if (v30 == CFNumberGetTypeID())
              {
                LODWORD(v51[0]) = 0;
                LODWORD(valuePtr) = 0;
                CFNumberGetValue(v26, kCFNumberFloatType, &valuePtr);
                CFNumberGetValue(v28, kCFNumberFloatType, v51);
                v23 = *v51 / *&valuePtr;
              }
            }
          }
        }
      }
    }

    *(v18 + 8) = v23;
    v31 = CFDictionaryGetValue(a8, *MEMORY[0x1E6965F08]);
    if (v31 || (v31 = CFDictionaryGetValue(a8, *MEMORY[0x1E6965D70])) != 0)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 == CFDictionaryGetTypeID())
      {
        v34 = CFDictionaryGetValue(v32, *MEMORY[0x1E6965D68]);
        v35 = CFDictionaryGetValue(v32, *MEMORY[0x1E6965D78]);
        v36 = CFDictionaryGetValue(v32, *MEMORY[0x1E6965D80]);
        v37 = CFDictionaryGetValue(v32, *MEMORY[0x1E6965D60]);
        TypeID = CFNumberGetTypeID();
        if (v34)
        {
          v39 = TypeID;
          if (CFGetTypeID(v34) == TypeID)
          {
            if (v35)
            {
              if (CFGetTypeID(v35) == v39)
              {
                if (v36)
                {
                  if (CFGetTypeID(v36) == v39)
                  {
                    if (v37)
                    {
                      if (CFGetTypeID(v37) == v39)
                      {
                        valuePtr = 0.0;
                        v51[0] = 0.0;
                        v48 = 0.0;
                        v49 = 0.0;
                        CFNumberGetValue(v34, kCFNumberDoubleType, v51);
                        CFNumberGetValue(v35, kCFNumberDoubleType, &valuePtr);
                        CFNumberGetValue(v36, kCFNumberDoubleType, &v49);
                        CFNumberGetValue(v37, kCFNumberDoubleType, &v48);
                        v40.f64[0] = v49;
                        v41.f64[0] = v51[0] + (a5 - v49) * 0.5;
                        v41.f64[1] = v12 - (v48 + valuePtr) + (v12 - v48) * -0.5;
                        v40.f64[1] = v48;
                        CA::Bounds::set_interior(&v47, v42, v41, v40);
                        v43.i64[0] = 0;
                        v43.i64[1] = __PAIR64__(v12, a5);
                        v44 = v47;
                        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v47, v43)))))
                        {
                          *(v18 + 12) = v47.i16[0];
                          *(v18 + 13) = v44.i16[2];
                          v45 = *(v18 + 5);
                          *(v18 + 14) = *(v18 + 4) - (v44.i16[0] + v44.i16[4]);
                          *(v18 + 15) = v45 - (v44.i16[2] + v44.i16[6]);
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
    }
  }

  else
  {
    *(v18 + 17) = 0;
    *(v18 + 8) = 1065353216;
  }

  if ((*(*v18 + 120))(v18))
  {
    *(v18 + 3) |= 0x1000u;
  }

  if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v16 + 16))(v16);
  }
}

uint64_t CAImageQueueRegisterCVImageBuffer(uint64_t a1, void *cf, char a3)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CVPixelBufferGetTypeID() && (IOSurface = CVPixelBufferGetIOSurface(cf)) != 0)
  {

    return CAImageQueueRegisterIOSurfaceBuffer(a1, IOSurface, a3);
  }

  else
  {
    if (!*(a1 + 48) || *(a1 + 20))
    {
      return 0;
    }

    EncodedSize = CVImageBufferGetEncodedSize(cf);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
    if (v10)
    {
      v11 = v10;
      v12 = CA::Render::Texture::Texture(v10, EncodedSize.width, EncodedSize.height);
      *(v12 + 12) = 40;
      ++dword_1ED4EAAD8;
      *v12 = &unk_1EF1FA618;
      *(v12 + 14) = 0;
      v13 = (v12 + 112);
      *(v12 + 17) = 0;
      v14 = (v12 + 136);
      *(v12 + 15) = 0;
      *(v12 + 32) = 0;
      *(v12 + 18) = 0;
      *(v11 + 19) = CFRetain(cf);
      v15 = CFGetTypeID(cf);
      if (v15 == CVPixelBufferGetTypeID())
      {
        CVPixelBufferLockBaseAddress(cf, 0);
        BaseAddress = CVPixelBufferGetBaseAddress(cf);
        DataSize = CVPixelBufferGetDataSize(cf);
        v19 = CA::Render::Shmem::new_shmem(BaseAddress, DataSize, 1, CA::Render::release_cvpixelbuffer, cf, v18);
        v20 = *v13;
        if (*v13 != v19)
        {
          if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v20 + 16))(v20);
          }

          if (v19)
          {
            v21 = v19 + 2;
            if (!atomic_fetch_add(v19 + 2, 1u))
            {
              v19 = 0;
              atomic_fetch_add(v21, 0xFFFFFFFF);
            }
          }

          *v13 = v19;
        }

        if (v19)
        {
          CVPixelBufferRetain(cf);
        }

        else
        {
          CVPixelBufferUnlockBaseAddress(cf, 0);
        }

        *(v11 + 15) = CVPixelBufferGetBytesPerRow(cf);
        *(v11 + 32) = CVPixelBufferGetPixelFormatType(cf);
      }

      v22 = CVBufferCopyAttachments(cf, kCVAttachmentMode_ShouldPropagate);
      *v14 = v22;
      if (v22)
      {
        Value = CFDictionaryGetValue(v22, *MEMORY[0x1E6965CE8]);
        CA::Render::Texture::set_colorspace(v11, Value);
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t CAImageQueueRegisterBuffer(uint64_t a1, CA::Render::Shmem *a2, unint64_t a3, unint64_t a4, void *a5, unsigned int a6)
{
  if (a4 && a5 && is_mul_ok(a5 - 1, a3) && (a6 > 0x25 ? (v9 = 0) : (v9 = dword_183E22690[a6]), is_mul_ok(a4, v9) && ((v11 = (a5 - 1) * a3, v12 = a4 * v9, v13 = (v11 + v12), !__CFADD__(v11, v12)) ? (v14 = 0) : (v14 = 1), a6 <= 0x23 && (v14 & 1) == 0 && ((0x61CB910CuLL >> a6) & 1) == 0)))
  {
    return CAImageQueueRegisterPixelBuffer(a1, a2, v13, a3, a4, a5, dword_183E22814[a6], 0);
  }

  else
  {
    return 0;
  }
}

uint64_t CAImageQueueCopyTexture(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 200))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 16));
  v4 = x_hash_table_lookup(*(a1 + 200), a2, 0);
  if (v4)
  {
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = (v5 + 8);
      if (!atomic_fetch_add((v5 + 8), 1u))
      {
        v5 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v5;
}

unint64_t CAImageQueueGetFlags(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return atomic_load((*(v1 + 24) + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t CAImageQueueGetLastUpdateHostTime(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  v3 = -15;
  do
  {
    v4 = *v2;
    __dmb(0xBu);
    result = *(v2 + 14);
    __dmb(0xBu);
  }

  while (v4 != v2[1] && v3++ != 0);
  return result;
}

unint64_t CAImageQueueGetTimes(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 24);
    for (i = 16; i; --i)
    {
      v6 = *v4;
      __dmb(0xBu);
      if (v4[15] >= a3)
      {
        result = a3;
      }

      else
      {
        result = v4[15];
      }

      if (result)
      {
        v8 = (v4 + 86);
        v9 = a2;
        v10 = result;
        do
        {
          v11 = *v8;
          v8 += 3;
          *v9++ = v11;
          --v10;
        }

        while (v10);
      }

      __dmb(0xBu);
      if (v6 == v4[1])
      {
        return result;
      }
    }
  }

  return 0;
}

unint64_t CAImageQueueGetVBLInfo(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 24);
    for (i = 16; i; --i)
    {
      v6 = *v4;
      __dmb(0xBu);
      if (v4[15] >= a3)
      {
        result = a3;
      }

      else
      {
        result = v4[15];
      }

      if (result)
      {
        v8 = 0;
        do
        {
          v9 = a2 + v8 * 4;
          *(v9 + 8) = *&v4[v8 + 86];
          *v9 = *&v4[v8 + 84];
          *(v9 + 16) = v4[v8 + 88];
          v8 += 6;
        }

        while (6 * result != v8);
      }

      __dmb(0xBu);
      if (v6 == v4[1])
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t CAImageQueueGetTimeStamp(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 48);
  if (v3)
  {
    v4 = *(v3 + 24);
    v5 = -17;
    do
    {
      if (__CFADD__(v5++, 1))
      {
        break;
      }

      v7 = *v4;
      __dmb(0xBu);
      *a3 = 0;
      *(a3 + 64) = 2;
      *(a3 + 16) = *a2;
      v8 = v4[74];
      v9 = 2;
      if (v8)
      {
        *(a3 + 4) = v8;
        *(a3 + 8) = *(v4 + 35);
        *(a3 + 64) = 3;
        v9 = 3;
      }

      v10 = *(v4 + 36);
      if (v10)
      {
        *(a3 + 32) = v10;
        v9 |= 8uLL;
        *(a3 + 64) = v9;
      }

      v11 = *(v4 + 34);
      if (v11 != 0.0)
      {
        *(a3 + 24) = v11;
        *(a3 + 64) = v9 | 0x10;
      }

      __dmb(0xBu);
    }

    while (v7 != v4[1]);
  }

  return result;
}

double CAImageQueueGetLatestTime(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return -1.0;
  }

  v3 = *(v1 + 24) + 472;
  result = -1.0;
  do
  {
    if (*(v3 + 68))
    {
      if (*v3 > result)
      {
        result = *v3;
      }
    }

    v3 += 160;
    --v2;
  }

  while (v2);
  return result;
}

double CAImageQueueGetDisplayTime(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return -1.0;
  }

  v3 = (*(v1 + 24) + 540);
  result = -1.0;
  do
  {
    if (*v3 && *(v3 - 2) && *(v3 - 17) > result)
    {
      result = *(v3 - 17);
    }

    v3 += 40;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t CAImageQueueGetUnconsumedImageCount(uint64_t a1, double *a2, double *a3)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  v6 = *(v3 + 24);
  v7 = (v6 + 556);
  v8 = -1.0;
  v9 = -1.0;
  do
  {
    if (!*(v7 - 4))
    {
      goto LABEL_28;
    }

    v10 = *(v7 - 6);
    if (v10 > 572662305)
    {
      if (v10 == 572662306 || v10 == 858993459)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v10)
      {
        v11 = v10 == 286331153;
      }

      else
      {
        v11 = 1;
      }

      if (v11 && (*v7 || *(v7 - 5) - *(v6 + 16) < 0))
      {
        goto LABEL_28;
      }
    }

    v12 = *(v7 - 21);
    v13 = result == 0;
    if (v12 > v9 || result == 0)
    {
      v9 = *(v7 - 21);
    }

    if (v12 < v8)
    {
      v13 = 1;
    }

    if (v13)
    {
      v8 = *(v7 - 21);
    }

    ++result;
LABEL_28:
    v7 += 40;
    --v4;
  }

  while (v4);
  if (a2 && result)
  {
    *a2 = v8;
  }

  if (a3)
  {
    if (result)
    {
      *a3 = v9;
    }
  }

  return result;
}

unint64_t CAImageQueueGetGPURegistryID(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return atomic_load((*(v1 + 24) + 104));
  }

  else
  {
    return 0;
  }
}

uint64_t CAImageQueueGetDisplayedPixelCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return *(*(v1 + 24) + 68);
  }

  else
  {
    return 0;
  }
}

uint64_t CAImageQueueSetEnhancementMode(uint64_t result, char a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    *(*(v2 + 24) + 94) = a2;
    __dmb(0xBu);
  }

  return result;
}

uint64_t CAImageQueueSetReducedPollingTimeRange(uint64_t result, double a2, double a3)
{
  v3 = *(result + 48);
  if (v3)
  {
    v4 = *(v3 + 24);
    *(v4 + 312) = a2;
    *(v4 + 320) = a3;
    __dmb(0xBu);
  }

  return result;
}

uint64_t ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjjjjEJjjjEEEijjbPKcT_DpT0__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 32))(*(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64));
  if (v2)
  {
    v4 = v2;
    if (v2 != 268435460 || (*(a1 + 68) & 1) == 0)
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v5 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        v7 = 136315650;
        v8 = v6;
        v9 = 1024;
        v10 = v4;
        v11 = 2080;
        v12 = mach_error_string(v4);
        _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "%s client message err=0x%x : %s", &v7, 0x1Cu);
      }
    }
  }

  return mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 48));
}

void invoke_display_change_callback(_BYTE *a1)
{
  pthread_mutex_lock(&display_change_mutex);
  if (a1[176] == 1)
  {
    do
    {
      pthread_cond_wait(&presented_cond, &display_change_mutex);
    }

    while ((a1[176] & 1) != 0);
  }

  if (*(a1 + 21))
  {
    a1[176] = 1;
    pthread_mutex_unlock(&display_change_mutex);
    (*(*(a1 + 21) + 16))();
    pthread_mutex_lock(&display_change_mutex);
    a1[176] = 0;
    pthread_cond_broadcast(&display_change_cond);
  }

  pthread_mutex_unlock(&display_change_mutex);

  CFRelease(a1);
}

uint64_t ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjjjdddEJjjdddEEEijjbPKcT_DpT0__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 32))(*(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 84), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (v2)
  {
    v4 = v2;
    if (v2 != 268435460 || (*(a1 + 88) & 1) == 0)
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v5 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 64);
        v7 = 136315650;
        v8 = v6;
        v9 = 1024;
        v10 = v4;
        v11 = 2080;
        v12 = mach_error_string(v4);
        _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "%s client message err=0x%x : %s", &v7, 0x1Cu);
      }
    }
  }

  return mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 72));
}

double **std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **,0>(double **result, double **a2, double **a3, double **a4, double **a5)
{
  v5 = *a2;
  v6 = **a2;
  v7 = *result;
  v8 = **result;
  v9 = *a3;
  v10 = **a3;
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v6)
    {
      *result = v9;
LABEL_9:
      *a3 = v7;
      v5 = v7;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v7;
    v5 = *a3;
    if (**a3 < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **>(double **a1, double **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *v6;
      v8 = **a1;
      v9 = *(a2 - 1);
      v10 = *v9;
      if (*v6 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*v31 < **a1)
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*v47 >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *v21;
    v25 = *a1;
    v26 = **a1;
    v27 = *v23;
    if (*v21 >= v26)
    {
      if (v27 >= v24)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*v42 < *v21)
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v43;
          v45 = *v20;
          if (*v43 < *v45)
          {
            a1[1] = v43;
            a1[2] = v45;
            v46 = *a1;
            if (v44 < **a1)
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v24)
      {
        *a1 = v21;
        a1[1] = v25;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v25;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v25;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*v3 < **a1)
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *v13;
  v15 = *a1;
  v16 = **a1;
  v17 = *v11;
  if (*v13 < v16)
  {
    v18 = a1;
    v19 = a1 + 2;
    if (v17 >= v14)
    {
      *a1 = v13;
      a1[1] = v15;
      v18 = a1 + 1;
      v19 = a1 + 2;
      if (v17 >= v16)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v18 = v11;
    *v19 = v15;
    goto LABEL_27;
  }

  if (v17 < v14)
  {
    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
    if (v17 < v16)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = **v33;
    v38 = *v12;
    if (v37 < *v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= *v38)
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t CAImageQueueGetTypeID()
{
  if (CAImageQueueGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageQueueGetTypeID::once, &__block_literal_global_44_15357);
  }

  return CAImageQueueGetTypeID::type;
}

void CAImageQueueSetOwner()
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v0 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "CAImageQueueSetOwner() is deprecated and does nothing. Please stop calling this method.\n", v1, 2u);
  }
}

uint64_t CAImageQueueSetIdentifier(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    *(*(v2 + 24) + 80) = a2;
  }

  return result;
}

uint64_t CAImageQueueGetIdentifier(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return *(*(v1 + 24) + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t CAImageQueueSetNominalFrameRate(uint64_t result, float a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    *(*(v2 + 24) + 152) = a2;
  }

  return result;
}

double CAImageQueueGetNominalFrameRate(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0.0;
  }

  LODWORD(result) = *(*(v1 + 24) + 152);
  return result;
}

uint64_t CAImageQueueSetInterpolationCurve(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(*(result + 48) + 24);
  __dmb(0xBu);
  v5[54] = a2;
  v5[55] = a3;
  v5[56] = a4;
  v5[57] = a5;
  __dmb(0xBu);
  return result;
}

void *CAXPCImageQueueCreate(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  Int = CA_CFDictionaryGetInt(a1, @"imageQueueCapacity");
  Int64 = CA_CFDictionaryGetInt64(a1, @"imageQueueIdentifier");
  if (a2)
  {
    v8 = Int64;
    v9 = CAImageQueueCreate_(1, Int);
    v10 = v9;
    if (v9)
    {
      v9[10] = a2;
      v9[11] = a3;
      v11 = v9[6];
      if (v11)
      {
        *(*(v11 + 24) + 80) = v8;
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v12, "command", 1uLL);
      xpc_dictionary_set_uint64(v12, "capacity", *(v10 + 10));
      xpc_dictionary_set_uint64(v12, "shmemFlags", *(v10[6] + 12) >> 8);
      xpc_dictionary_set_uint64(v12, "shmemSize", *(v10[6] + 16));
      xpc_dictionary_set_uint64(v12, "shmemOffset", (*MEMORY[0x1E69E9AC8] - 1) & *(v10[6] + 24));
      CA::Render::Shmem::port(v10[6]);
      xpc_dictionary_set_mach_send();
      (v10[10])(v10, v12, v10[11]);
      xpc_release(v12);
    }
  }

  else
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v13 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      _os_log_impl(&dword_183AA6000, v13, OS_LOG_TYPE_DEFAULT, "Invalid callback for CAXPCImageQueueCreate!", &v15, 2u);
    }

    return 0;
  }

  return v10;
}

void _CAXPCImageQueueSampleInvalidate(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    *(a1 + 64) |= 1u;
    v2 = *(a1 + 56);
    if (v2)
    {
      add = atomic_fetch_add((*(*(v2 + 40) + 24) + 160 * *(a1 + 16) + 624), 0xFFFFFFFF);
      v4 = *(a1 + 56);
      if (add == 1)
      {
        v5 = v4[6];
        if (v5 <= *(a1 + 24))
        {
          v5 = *(a1 + 24);
        }

        v4[6] = v5;
      }

      CFRelease(v4);
      *(a1 + 56) = 0;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 32) = 0;
    }
  }
}

uint64_t ___Z30CAXPCImageQueueSampleGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CAXPCImageQueueSampleGetTypeID(void)::type = result;
  return result;
}

CFStringRef xpcImageQueueSampleCopyFormatDescription(__IOSurface **a1, const __CFDictionary *a2)
{
  v4 = CFGetAllocator(a1);
  v5 = a1[4];
  ID = IOSurfaceGetID(v5);
  return CFStringCreateWithFormat(v4, a2, @"<CAXPCImageQueueSample %p : IOSurfaceRef %p (id 0x%x), read %u, t %g>\n", a1, v5, ID, *(a1 + 10), a1[6]);
}

void xpcImageQueueSampleFinalize(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((a1[8] & 2) != 0 && (a1[8] & 1) == 0)
  {
    v2 = a1[7];
    if (v2)
    {
      if (*(*(*(v2 + 40) + 24) + 160 * a1[2] + 624) <= 1u)
      {
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v3 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
        {
          v4 = 134217984;
          v5 = a1;
          _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "CAXPCImageQueueSampleRef %p released without calling finish!", &v4, 0xCu);
        }
      }
    }
  }

  _CAXPCImageQueueSampleInvalidate(a1);
}

void CAXPCImageQueueSampleFinish(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      v4 = *(a1 + 56);
      if (v4)
      {
        v5 = *(a1 + 16);
        if (v5 >= *(v4 + 32))
        {
          __assert_rtn("CAXPCImageQueueSampleFinish", "CAImageQueue.cpp", 5023, "sample->index < sample->receiver->capacity");
        }

        v6 = *(*(v4 + 40) + 24) + 160 * v5 + 472;
        if (CFDictionaryContainsKey(theDict, @"sampleDisplayCount"))
        {
          Value = CFDictionaryGetValue(theDict, @"sampleDisplayCount");
          if (Value)
          {
            LODWORD(Value) = CA_CFIntValue(Value);
          }

          *(v6 + 84) = Value;
        }

        if (CFDictionaryContainsKey(theDict, @"sampleDisplayInterval"))
        {
          v8 = CFDictionaryGetValue(theDict, @"sampleDisplayInterval");
          if (v8)
          {
            v9 = CA_CFDoubleValue(v8);
          }

          else
          {
            v9 = 0.0;
          }

          *(v6 + 32) = v9;
        }

        if (CFDictionaryContainsKey(theDict, @"sampleLocalLayerTime"))
        {
          v10 = CFDictionaryGetValue(theDict, @"sampleLocalLayerTime");
          if (v10)
          {
            v11 = CA_CFDoubleValue(v10);
          }

          else
          {
            v11 = 0.0;
          }

          *(v6 + 16) = v11;
        }

        if (CFDictionaryContainsKey(theDict, @"sampleHostMachTime"))
        {
          v12 = CFDictionaryGetValue(theDict, @"sampleHostMachTime");
          if (v12)
          {
            v12 = CA_CFInt64Value(v12);
          }

          *(v6 + 24) = v12;
        }

        if (CFDictionaryContainsKey(theDict, @"samplePresentaitonMachTime"))
        {
          v13 = CFDictionaryGetValue(theDict, @"samplePresentaitonMachTime");
          if (v13)
          {
            v13 = CA_CFInt64Value(v13);
          }

          *(v6 + 40) = v13;
        }

        if (CFDictionaryContainsKey(theDict, @"duration"))
        {
          v14 = CFDictionaryGetValue(theDict, @"duration");
          if (v14)
          {
            v15 = CA_CFDoubleValue(v14);
          }

          else
          {
            v15 = 0.0;
          }

          *(v6 + 48) = v15;
        }
      }
    }

    _CAXPCImageQueueSampleInvalidate(a1);
  }
}

uint64_t ___Z32CAXPCImageQueueReceiverGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CAXPCImageQueueReceiverGetTypeID(void)::type = result;
  return result;
}

__CFString *xpcImageQueueReceiverCopyFormatDescription(os_unfair_lock_s *a1, const __CFDictionary *a2)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<CAXPCImageQueueReceiver %p>\n", a1);
  os_unfair_lock_lock(a1 + 4);
  for (i = *&a1[16]._os_unfair_lock_opaque; i; i = *i)
  {
    v7 = i[2];
    v6 = i[3];
    ID = IOSurfaceGetID(v6);
    CFStringAppendFormat(Mutable, 0, @"{0x%llx : IOSurfaceRef %p (id 0x%x)}\n", v7, v6, ID);
  }

  os_unfair_lock_unlock(a1 + 4);
  v9 = *&a1[8]._os_unfair_lock_opaque;
  v10 = *(*&a1[10]._os_unfair_lock_opaque + 24);
  memset(v13, 0, 24);
  CAShmemImageQueueShow(v13, v10, v9, 0, 0, 0);
  v11 = x_stream_get(v13);
  CFStringAppendCString(Mutable, v11, 0x8000100u);
  if (v13[0])
  {
    free(v13[0]);
  }

  return Mutable;
}

void xpcImageQueueReceiverFinalize(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v2 = *&a1[10]._os_unfair_lock_opaque;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  *&a1[10]._os_unfair_lock_opaque = 0;
  v3 = *&a1[16]._os_unfair_lock_opaque;
  if (v3)
  {
    do
    {
      CFRelease(v3[3]);
      v3 = *v3;
    }

    while (v3);
    v4 = *&a1[16]._os_unfair_lock_opaque;
    v5 = &a1[12];
    if (v4)
    {
      do
      {
        v6 = *v4;
        operator delete(v4);
        v4 = v6;
      }

      while (v6);
    }
  }

  else
  {
    v5 = &a1[12];
  }

  v7 = *v5;
  *v5 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  os_unfair_lock_unlock(a1 + 4);
}

uint64_t CAXPCImageQueueReceiverCreate(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (xpc_dictionary_get_uint64(a1, "command") != 1)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v8 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "Invalid command in CAXPCImageQueueReceiverCreate message!", v9, 2u);
    }

    return 0;
  }

  result = xpc_dictionary_get_value(a1, "capacity");
  if (!result)
  {
    return result;
  }

  value = xpc_uint64_get_value(result);
  result = xpc_dictionary_get_value(a1, "shmemFlags");
  if (!result)
  {
    return result;
  }

  v4 = xpc_uint64_get_value(result);
  result = xpc_dictionary_get_value(a1, "shmemSize");
  if (!result)
  {
    return result;
  }

  v5 = xpc_uint64_get_value(result);
  result = xpc_dictionary_get_value(a1, "shmemOffset");
  if (!result)
  {
    return result;
  }

  xpc_uint64_get_value(result);
  v6 = xpc_dictionary_copy_mach_send();
  result = 0;
  if (!v6 || !v5 || v5 < value)
  {
    return result;
  }

  v7 = CA::Render::Shmem::new_shmem(v6, v5, 0, v4);
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
  if (!v7)
  {
    return 0;
  }

  if (CAXPCImageQueueReceiverGetTypeID(void)::once[0] != -1)
  {
    dispatch_once(CAXPCImageQueueReceiverGetTypeID(void)::once, &__block_literal_global_86_15394);
  }

  result = _CFRuntimeCreateInstance();
  *(result + 16) = 0x100000000;
  *(result + 24) = 0;
  *(result + 32) = value;
  *(result + 40) = v7;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 1065353216;
  return result;
}

void CAXPCImageQueueReceiverSetProperty(uint64_t a1, const void *a2, const __CFString *a3)
{
  os_unfair_lock_lock((a1 + 16));
  if (CFEqual(a2, @"displayRefreshRate"))
  {
    *(a1 + 28) = CA_CFFloatValue(a3);
  }

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t CAXPCImageQueueReceiverProcessMessage(uint64_t a1, xpc_object_t xdict)
{
  *&v36[13] = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "command");
  if (uint64 == 3)
  {
    v9 = xpc_dictionary_get_uint64(xdict, "iosurfaceRenderId");
    os_unfair_lock_lock((a1 + 16));
    v10 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>((a1 + 48), v9);
    if (v10)
    {
      v11 = v10;
      CFRelease(v10[3]);
      v12 = *(a1 + 56);
      v13 = v11[1];
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

      v19 = *(a1 + 48);
      v20 = *(v19 + 8 * v13);
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20 != v11);
      if (v21 == (a1 + 64))
      {
        goto LABEL_42;
      }

      v22 = v21[1];
      if (v14.u32[0] > 1uLL)
      {
        if (v22 >= *&v12)
        {
          v22 %= *&v12;
        }
      }

      else
      {
        v22 &= *&v12 - 1;
      }

      if (v22 != v13)
      {
LABEL_42:
        if (!*v11)
        {
          goto LABEL_43;
        }

        v26 = *(*v11 + 8);
        if (v14.u32[0] > 1uLL)
        {
          if (v26 >= *&v12)
          {
            v26 %= *&v12;
          }
        }

        else
        {
          v26 &= *&v12 - 1;
        }

        if (v26 != v13)
        {
LABEL_43:
          *(v19 + 8 * v13) = 0;
        }
      }

      v27 = *v11;
      if (*v11)
      {
        v28 = *(v27 + 8);
        if (v14.u32[0] > 1uLL)
        {
          if (v28 >= *&v12)
          {
            v28 %= *&v12;
          }
        }

        else
        {
          v28 &= *&v12 - 1;
        }

        if (v28 != v13)
        {
          *(*(a1 + 48) + 8 * v28) = v21;
          v27 = *v11;
        }
      }

      *v21 = v27;
      *v11 = 0;
      --*(a1 + 72);
      operator delete(v11);
    }

    else
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v18 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        v33 = 134218240;
        v34 = a1;
        v35 = 2048;
        *v36 = v9;
        _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "CAXPCIQR(%p) unregister: id 0x%llx not found", &v33, 0x16u);
      }
    }

    os_unfair_lock_unlock((a1 + 16));
    return 1;
  }

  if (uint64 != 2)
  {
    return 0;
  }

  v5 = xpc_dictionary_copy_mach_send();
  v6 = xpc_dictionary_get_uint64(xdict, "iosurfaceRenderId");
  os_unfair_lock_lock((a1 + 16));
  if (v5)
  {
    if (!std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>((a1 + 48), v6))
    {
      if (IOSurfaceLookupFromMachPort(v5))
      {
        v23 = *(a1 + 56);
        if (v23)
        {
          v24 = vcnt_s8(v23);
          v24.i16[0] = vaddlv_u8(v24);
          if (v24.u32[0] > 1uLL)
          {
            v25 = v6;
            if (v6 >= *&v23)
            {
              v25 = v6 % *&v23;
            }
          }

          else
          {
            v25 = (*&v23 - 1) & v6;
          }

          v30 = *(*(a1 + 48) + 8 * v25);
          if (v30)
          {
            for (i = *v30; i; i = *i)
            {
              v32 = i[1];
              if (v32 == v6)
              {
                if (i[2] == v6)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                if (v24.u32[0] > 1uLL)
                {
                  if (v32 >= *&v23)
                  {
                    v32 %= *&v23;
                  }
                }

                else
                {
                  v32 &= *&v23 - 1;
                }

                if (v32 != v25)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v29 = x_log_get_utilities::log;
      if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }

      v33 = 134218496;
      v34 = a1;
      v35 = 1024;
      *v36 = v5;
      v36[2] = 2048;
      *&v36[3] = v6;
      v8 = "CAXPCIQR(%p) register: iosurface lookup for port(%u) failed for id 0x%llx";
      v16 = v29;
      v17 = 28;
      goto LABEL_18;
    }

    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v7 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

    v33 = 134218240;
    v34 = a1;
    v35 = 2048;
    *v36 = v6;
    v8 = "CAXPCIQR(%p) register: id 0x%llx already registered";
  }

  else
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v7 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

    v33 = 134218240;
    v34 = a1;
    v35 = 2048;
    *v36 = v6;
    v8 = "CAXPCIQR(%p) register: NULL port for id 0x%llx";
  }

  v16 = v7;
  v17 = 22;
LABEL_18:
  _os_log_error_impl(&dword_183AA6000, v16, OS_LOG_TYPE_ERROR, v8, &v33, v17);
LABEL_72:
  os_unfair_lock_unlock((a1 + 16));
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
  return 1;
}

uint64_t CAXPCImageQueueReceiverCreateSampleForTime(uint64_t a1, char a2, double a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 + 40) + 24);
  atomic_fetch_or((v5 + 264), 0x80000000);
  __dmb(0xBu);
  v6 = *(v5 + 264) & 1;
  v7 = (v5 + 48 * (*(v5 + 264) & 1));
  v8 = v7[22];
  v9 = v7[23] + (a3 - v7[21]) * v8;
  if (v7[24] >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7[24];
  }

  v11 = *(v7 + 24);
  v12 = v7[25];
  v13 = v7[26];
  __dmb(0xBu);
  *(v5 + 264) = v6;
  v14 = v8;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v9 = v10;
  }

  if (v13 < v9)
  {
    v9 = v13;
  }

  if (v12 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v12;
  }

  v16 = *(a1 + 20) + 1;
  *(a1 + 20) = v16;
  bzero(v38, 0x570uLL);
  v17 = *(a1 + 24);
  v27 = 0uLL;
  CA::Render::Update::Update(v38, 0, 0, v15, 0, v16, v17, v17, &v27, 0);
  v40 = *(a1 + 28);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = CAShmemImageQueueCopyImageInfo(0, *(a1 + 32), v5, v38, &v27, (a2 & 1) == 0, 0, 0, v15, v14, v18);
  if ((a2 & 1) == 0)
  {
    CAShmemImageQueueUpdate(v5, 0, 0, 0, 0, v41, 0, 0, v14, v39);
  }

  os_unfair_lock_lock((a1 + 16));
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = v30;
  v21 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>((a1 + 48), v30);
  if (!v21)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v25 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v37 = v20;
      _os_log_error_impl(&dword_183AA6000, v25, OS_LOG_TYPE_ERROR, "CAXPCImageQueue: buffer id 0x%llx not found!", buf, 0xCu);
    }

LABEL_25:
    os_unfair_lock_unlock((a1 + 16));
    goto LABEL_26;
  }

  v22 = CFRetain(v21[3]);
  os_unfair_lock_unlock((a1 + 16));
  if (!v22)
  {
LABEL_26:
    Instance = 0;
    goto LABEL_27;
  }

  if (CAXPCImageQueueSampleGetTypeID(void)::once != -1)
  {
    dispatch_once(&CAXPCImageQueueSampleGetTypeID(void)::once, &__block_literal_global_80);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = v34;
  *(Instance + 24) = *(a1 + 20);
  *(Instance + 32) = v22;
  *(Instance + 64) = (*(Instance + 64) & 0xF9 | a2 & 2 | (BYTE8(v27) >> 3) & 4) ^ 2;
  CFRetain(a1);
  *(Instance + 56) = a1;
  *(Instance + 64) &= ~1u;
  *(Instance + 40) = DWORD2(v28);
  *(Instance + 48) = *(&v30 + 1);
LABEL_27:
  CA::Render::Update::~Update(v38, v23);
  return Instance;
}

uint64_t CAXPCImageQueueReceiverGetImageCount(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(*(a1 + 40) + 24) + 540);
  do
  {
    v5 = *v4;
    v4 += 40;
    if (v5)
    {
      ++result;
    }

    --v1;
  }

  while (v1);
  return result;
}

uint64_t CAXPCImageQueueReceiverGetIdentifier(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 24);
  if (v1)
  {
    return *(v1 + 80);
  }

  else
  {
    return 0;
  }
}

void sub_183D7290C(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<int,unsigned int,int,unsigned int,std::unordered_set<CA::Render::String *>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 56;
        std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t display_for_server(CA::WindowServer::Server *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [_shared_server displays];
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(v2);
      }

      result = *(*(&v8 + 1) + 8 * v6);
      if (*(*(result + 8) + 64) == a1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_183D7CCE4(_Unwind_Exception *a1)
{
  operator delete(v2);
  pthread_mutex_unlock(v1);
  _Unwind_Resume(a1);
}

void sub_183D7D5F0(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  pthread_mutex_unlock(v1);
  _Unwind_Resume(a1);
}

void sub_183D7DCCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::ConvertTransform::~ConvertTransform(_anonymous_namespace_::ConvertTransform *this)
{
  v5[1] = *MEMORY[0x1E69E9840];
  *this = &unk_1EF2008B0;
  v5[0] = (this + 40);
  std::vector<X::Ref<CA::Render::Handle>>::__destroy_vector::operator()[abi:nn200100](v5);
  v3 = *(this + 4);
  if (v3 && atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
  {
    CA::Render::LayerNode::delete_node(v3, v2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }
  }
}

{
  v5[1] = *MEMORY[0x1E69E9840];
  *this = &unk_1EF2008B0;
  v5[0] = (this + 40);
  std::vector<X::Ref<CA::Render::Handle>>::__destroy_vector::operator()[abi:nn200100](v5);
  v3 = *(this + 4);
  if (v3 && atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
  {
    CA::Render::LayerNode::delete_node(v3, v2);
  }

  v4 = *(this + 3);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  JUMPOUT(0x1865EA9A0);
}

void destroy_impl(CAWindowServerDisplayImpl *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  (**a1->var1)(a1->var1);
  pthread_mutex_destroy(&a1->var0._m);
  var3 = a1->var3;
  if (var3)
  {
    _Block_release(var3);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [a1->var6 allValues];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        _Block_release(*(*(&v17 + 1) + 8 * i));
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v6);
  }

  a1->var6 = 0;
  objc_autoreleasePoolPop(v3);
  v9 = objc_autoreleasePoolPush();
  v10 = [a1->var7 allValues];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        _Block_release(*(*(&v17 + 1) + 8 * j));
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v12);
  }

  a1->var7 = 0;
  objc_autoreleasePoolPop(v9);
  var1 = a1->var1;
  if (var1)
  {
    (*(*var1 + 112))(var1);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, a1);
}

BOOL CA::WindowServer::Server::supports_throttle(CA::WindowServer::Server *this)
{
  if (CADeviceSupportsAPT::once != -1)
  {
    dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
  }

  if (CADeviceSupportsAPT::supports_apt == 1 && (*(*(this + 12) + 640) & 0x10) != 0)
  {
    return 1;
  }

  if (CADeviceSupportsExternalHighRefreshRateAndVRR::once != -1)
  {
    dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
  }

  return CADeviceSupportsExternalHighRefreshRateAndVRR::b == 1 && (*(*(this + 12) + 672) & 0x1C00) == 1024;
}

void shared_server_init(void *a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v2 = x_log_get_windowserver(void)::log;
  v3 = os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *v22 = 0;
    _os_log_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEFAULT, "Initializing CAWindowServer...", v22, 2u);
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  CA::Render::Server::start(v3);
  CA::WindowServer::Display::_fetch_frozen_surface_on_creation = [objc_msgSend(a1 objectForKeyedSubscript:{@"fetchFrozenSurfaces", "BOOLValue"}];
  _shared_server = [[CAWindowServer alloc] _init];
  v4 = [objc_msgSend(a1 objectForKeyedSubscript:{@"local", "BOOLValue"}];
  if ((v4 & 1) == 0)
  {
    if (CADeviceUseVirtualMainDisplay::once[0] != -1)
    {
      dispatch_once(CADeviceUseVirtualMainDisplay::once, &__block_literal_global_470);
    }

    if (CADeviceUseVirtualMainDisplay::b == 1)
    {
      v20 = [CAWindowServerVirtualDisplay alloc];
      v23[0] = @"kCAVirtualDisplayWidth";
      v23[1] = @"kCAVirtualDisplayHeight";
      v24[0] = &unk_1EF22F8E8;
      v24[1] = &unk_1EF22F900;
      v23[2] = @"kCAVirtualDisplayName";
      v24[2] = @"CAVirtualMainDisplay";
      v21 = -[CAWindowServerVirtualDisplay initWithOptions:](v20, "initWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3]);
      [(CAWindowServerDisplay *)v21 setDisablesUpdates:1];
      [_shared_server addDisplay:v21];
    }

    [_shared_server _detectDisplays];
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"disableUpdatesOnMainDisplay", "BOOLValue"}])
  {
    [objc_msgSend(objc_msgSend(_shared_server "displays")];
  }

  v5 = getenv("CA_CLONE_DISPLAY");
  if (v5 && atoi(v5))
  {
    v6 = [_shared_server displays];
    v7 = [v6 count];
    if (v7 >= 2)
    {
      for (i = 1; i != v7; ++i)
      {
        [objc_msgSend(v6 objectAtIndex:{0), "addClone:", objc_msgSend(v6, "objectAtIndex:", i)}];
      }
    }

    _force_cloning = 1;
  }

  v9 = getenv("CA_MAIN_DISPLAY_SCALE");
  if (v9)
  {
    v10 = atof(v9);
    if (v10 > 0.0)
    {
      v11 = v10;
      v12 = [_shared_server displays];
      if ([v12 count])
      {
        [objc_msgSend(v12 objectAtIndex:{0), "setScale:", v11}];
      }
    }
  }

  v13 = getenv("CA_EXTERNAL_DISPLAY_SCALE");
  if (v13)
  {
    v15 = atof(v13);
    if (v15 > 0.0)
    {
      v16 = v15;
      v17 = [_shared_server displays];
      v18 = [v17 count];
      if (v18 >= 2)
      {
        for (j = 1; j != v18; ++j)
        {
          [objc_msgSend(v17 objectAtIndex:{j), "setScale:", v16}];
        }
      }
    }
  }

  if ((v4 & 1) == 0)
  {
    CA::Render::Server::register_name(0, v14);
    {
      shared_server_init(void *)::monitor = [MEMORY[0x1E69C75F8] monitorWithConfiguration:&__block_literal_global_16191];
    }

    CFRetain(shared_server_init(void *)::monitor);
  }

  CA::Render::add_observer(0x39u, 0, shared_server_init(void *)::$_0::__invoke, 0, 0);
}

uint64_t ___ZL18shared_server_initPv_block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C7630] descriptor];
  [v3 setValues:1];
  [v3 setEndowmentNamespaces:&unk_1EF22FD18];
  [a2 setStateDescriptor:v3];
  v5[0] = [MEMORY[0x1E69C7610] predicateMatchingProcessTypeApplication];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 1)}];
  return [a2 setUpdateHandler:&__block_literal_global_1059];
}

os_log_t ___Z21x_log_get_sharedeventv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "SharedEvent");
  x_log_get_sharedevent(void)::log = result;
  return result;
}

void CA::CASharedEvent::initialize(CA::CASharedEvent *this)
{
  v6 = *MEMORY[0x1E69E9840];
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

    v3 = x_log_get_sharedevent(void)::log;
    if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(this + 4);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_debug_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEBUG, "IOSurfaceID: 0x%x  Alloc", v5, 8u);
    }
  }

  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 32) = 1;
  v2 = *(this + 3);
  if (v2)
  {
    CFRetain(v2);
  }

  *(this + 7) = objc_alloc_init(MEMORY[0x1E696CE08]);
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    operator new();
  }

  *(this + 15) = 0;
}

uint64_t CA::CASharedEvent::unref(uint64_t this)
{
  v8 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add((this + 128), 0xFFFFFFFF);
  if (this && add == 1)
  {
    v2 = this;
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

      v5 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(v2 + 16);
        v7[0] = 67109120;
        v7[1] = v6;
        _os_log_debug_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEBUG, "IOSurfaceID: 0x%x  Dealloc", v7, 8u);
      }
    }

    v3 = *(v2 + 24);
    if (v3)
    {
      CFRelease(v3);
    }

    *(v2 + 24) = 0;

    *(v2 + 32) = 0;
    *(v2 + 56) = 0;
    v4 = *(v2 + 120);
    if (v4)
    {
      MEMORY[0x1865EA9A0](v4, 0x1000C4055D675C7);
    }

    JUMPOUT(0x1865EA9A0);
  }

  return this;
}

BOOL CA::CASharedEvent::is_complete_with_timeout(CA::CASharedEvent *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 1;
  }

  v3 = [v2 signaledValue];
  v4 = v3;
  v5 = *(this + 6);
  if (v3 != v5)
  {
    if (*(this + 11) != v3)
    {
      *(this + 11) = v3;
      goto LABEL_8;
    }

    v6 = mach_continuous_time();
    if (CATimeWithHostTime(v6 - *(this + 12)) > 10.0)
    {
      CA::CASharedEvent::force_complete(this, [*(this + 4) signaledValue] + 1, 1, 1);
      v4 = [*(this + 4) signaledValue];
      *(this + 11) = v4;
LABEL_8:
      *(this + 12) = mach_continuous_time();
    }
  }

  return v4 == v5;
}

void *CA::CASharedEvent::force_complete(CA::CASharedEvent *this, unint64_t a2, int a3, int a4)
{
  v48 = *MEMORY[0x1E69E9840];
  result = *(this + 4);
  if (!result)
  {
    return result;
  }

  result = [result signaledValue];
  if (result == *(this + 6))
  {
    return result;
  }

  v9 = [*(this + 4) signaledValue];
  if (a4)
  {
    v10 = v9;
    v11 = *(this + 6);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v12 = x_log_get_sharedevent(void)::log;
    if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v28 = "True";
      }

      else
      {
        v28 = "False";
      }

      CString = CA_CFStringGetCString(*(this + 3), &v40, 128);
      v30 = *(this + 4);
      *buf = 136316162;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = CString;
      *&buf[22] = 1024;
      v35 = v30;
      v36 = 2048;
      v37 = v10;
      v38 = 2048;
      v39 = v11;
      _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "force_complete () force_immediately: %s  IOSurfaceName: %s  IOSurfaceID: 0x%x  Value Completed: 0x%llx  Last Value Requested: 0x%llx", buf, 0x30u);
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else if (a3)
    {
LABEL_8:
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v13 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "shared event signal not complete and forcing immediate\n", buf, 2u);
      }
    }

    v14 = *(this + 15);
    if (v14)
    {
      v31 = a3;
      memset(buf, 0, sizeof(buf));
      v15 = *(this + 4);
      v16 = *v14;
      if (*v14 <= 64)
      {
        LOBYTE(v17) = 64;
      }

      else
      {
        v17 = *v14;
      }

      if (v16 >= 64)
      {
        v18 = 64;
      }

      else
      {
        v18 = *v14;
      }

      if (v16 >= 1)
      {
        v19 = 0;
        v20 = v14 + 2;
        do
        {
          v21 = &v20[8 * (v17 & 0x3F)];
          v22 = *(v21 + 3);
          v19 |= v22 == v10;
          if (v19)
          {
            v23 = "Not Completed";
            if (v22 < v10)
            {
              v23 = "Completed";
            }

            if (v22 == v10)
            {
              v23 = "Last Completed";
            }

            X::Stream::printf(buf, "%s IOSurfaceID: 0x%x  usage: %s  operation: %s  access: %s  value: 0x%llx\n", v23, v15, CA::CASharedEvent::UsageString[v21[2]], CA::CASharedEvent::OperationString[v21[3]], CA::CASharedEvent::AccessString[v21[4]], v22);
          }

          LOBYTE(v17) = v17 + 1;
          --v18;
        }

        while (v18);
      }

      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v24 = x_log_get_sharedevent(void)::log;
      LOBYTE(a3) = v31;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
      {
        *v32 = 136315138;
        v33 = x_stream_get(buf);
        _os_log_error_impl(&dword_183AA6000, v24, OS_LOG_TYPE_ERROR, "%s\n", v32, 0xCu);
      }

      if (*buf)
      {
        free(*buf);
      }
    }
  }

  if (a3)
  {
    return [*(this + 4) setSignaledValue:a2];
  }

  v25 = *(this + 6);
  if (v25 <= a2)
  {
    return [*(this + 4) setSignaledValue:a2];
  }

  v26 = *(this + 4);
  v27 = *(this + 7);
  *&v40 = MEMORY[0x1E69E9820];
  *(&v40 + 1) = 3221225472;
  *&v41 = ___ZN2CA11SurfaceUtil43CASurfaceAsyncWaitAndSignalSharedEventValueEPNS0_24CASurfaceSharedEventRef_EPNS0_29CASurfaceSharedEventListener_Eyy_block_invoke;
  *(&v41 + 1) = &__block_descriptor_48_e33_v24__0__IOSurfaceSharedEvent_8Q16l;
  *&v42 = v25 - 1;
  *(&v42 + 1) = v25;
  return [v26 notifyListener:v27 atValue:? block:?];
}

void CA::CASharedEvent::stream_print(uint64_t a1, X::Stream *a2, NSObject *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) signaledValue];
  if (os_signpost_enabled(a3))
  {
    v7 = *(a1 + 16);
    v8 = v6 == *(a1 + 48);
    *buf = 67240704;
    *&buf[4] = v7;
    *&buf[8] = 2050;
    *&buf[10] = v6;
    *&buf[18] = 1026;
    *&buf[20] = v8;
    _os_signpost_emit_with_name_impl(&dword_183AA6000, a3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharedEvent", " IOSurfaceID=%{public, name=IOSurfaceID}#x ValueCompleted=%{public, name=ValueCompleted}#llx AllFinished=%{public, BOOL, name=AllFinished}d", buf, 0x18u);
  }

  if (a2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    memset(buf, 0, sizeof(buf));
    if (*a1 && (v9 = *(*a1 + 256)) != 0)
    {
      CString = CA_CFStringGetCString(v9, buf, 128);
    }

    else
    {
      CString = "Unknown";
    }

    v11 = v6 == *(a1 + 48) ? "True" : "False";
    X::Stream::printf(a2, "Name: %s  IOSurfaceID: 0x%x  Value Completed: 0x%llx  All Finished: %s\n", CString, *(a1 + 16), v6, v11);
    v12 = *(a1 + 120);
    if (v12)
    {
      v13 = *v12;
      if (*v12 <= 64)
      {
        LOBYTE(v14) = 64;
      }

      else
      {
        v14 = *v12;
      }

      v15 = v13 >= 64 ? 64 : *v12;
      X::Stream::printf(a2, "          Time                      Usage              Operation Access       Value        Completed\n");
      X::Stream::printf(a2, "----------------------- ------------------------------ --------- ------ ------------------ ---------\n");
      if (v13 >= 1)
      {
        memset(v27, 0, sizeof(v27));
        do
        {
          v16 = &v12[8 * (v14 & 0x3F) + 2];
          v17 = CACreateDateStringFromHostContinuousTime(*v16, @"yyyy-MM-dd HH:mm:ss.SSS");
          v18 = CA_CFStringGetCString(v17, v27, 32);
          v19 = "False";
          if (*(v16 + 24) <= v6)
          {
            v19 = "";
          }

          X::Stream::printf(a2, "%20s %35s %9s %6s 0x%16llx %9s\n", v18, CA::CASharedEvent::UsageString[*(v16 + 8)], CA::CASharedEvent::OperationString[*(v16 + 12)], CA::CASharedEvent::AccessString[*(v16 + 16)], *(v16 + 24), v19);
          if (v17)
          {
            CFRelease(v17);
          }

          LOBYTE(v14) = v14 + 1;
          --v15;
        }

        while (v15);
      }
    }
  }
}

void CA::CASharedEvent::update_from_iosurface_list(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    v6 = 0;
    do
    {
      v7 = *(v4 + 16);
      if (v7 <= *(a1 + 48))
      {
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

          log = x_log_get_sharedevent(void)::log;
          if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
          {
            v9 = *(a1 + 112);
            *buf = 134218240;
            v12 = v7;
            v13 = 2048;
            v14 = v9;
            _os_log_debug_impl(&dword_183AA6000, log, OS_LOG_TYPE_DEBUG, "transaction.value: %lld <= _last_iosurface_write_value: %lld", buf, 0x16u);
          }
        }
      }

      else
      {
        if (*(v4 + 24))
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }

        CA::CASharedEvent::update_signal_value(a1, *(v4 + 16), 17, v8);
        if (v7 > v6)
        {
          v6 = v7;
        }
      }

      v4 += 32;
    }

    while (v4 != a3);
    if (v6 > *(a1 + 48))
    {
      *(a1 + 48) = v6;
    }
  }
}

void CAML::Type::~Type(CAML::Type *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

double CAPointToCGPoint(double *a1, double a2, double a3, double a4, double a5)
{
  if (fabs(a5 + -1.0) >= 0.000001)
  {
    if (a5 <= 0.0)
    {
      a5 = INFINITY;
      if (!a1)
      {
        return a5 * a2;
      }

      goto LABEL_5;
    }

    a5 = 1.0 / a5;
  }

  if (a1)
  {
LABEL_5:
    *a1 = a5 * a4;
  }

  return a5 * a2;
}

__n128 CAPointApplyTransform_(float64x2_t *a1, float64x2_t *a2)
{
  result = *a1;
  v3 = a1[1];
  v4 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a2[1], a1->f64[0]), a2[3], *a1, 1), a2[5], v3.f64[0]), a2[7], v3, 1);
  *a1 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a2, a1->f64[0]), a2[2], *a1, 1), a2[4], v3.f64[0]), a2[6], v3, 1);
  a1[1] = v4;
  return result;
}

float64x2_t CAPointArrayApplyTransform(float64x2_t *a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  if (a3)
  {
    v4 = a1 + 1;
    do
    {
      result = v4[-1];
      v6 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a4[1], result.f64[0]), a4[3], result, 1), a4[5], v4->f64[0]), a4[7], *v4, 1);
      v4[-1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a4, result.f64[0]), a4[2], result, 1), a4[4], v4->f64[0]), a4[6], *v4, 1);
      *v4 = v6;
      v4 = (v4 + a2);
      --a3;
    }

    while (a3);
  }

  return result;
}

void CA::CG::DrawShadow::draw_shadow(CA::CG::DrawShadow *this, CA::CG::Renderer *a2)
{
  __dst[63] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = *(a2 + 10);
  v6 = *(this + 19);
  v7 = v6[10];
  v104 = v5;
  v8 = v6[9].f32[1] * v5;
  v109 = 0uLL;
  CA::Shape::get_bounds(*(*(v4 + 656) + 8), &v109);
  v12 = *(v4 + 672);
  if (v12)
  {
    v13 = v12 + 6;
  }

  else
  {
    v13 = (v4 + 608);
  }

  v14 = v109.u64[1];
  v15 = vclez_s32(v109.u64[1]);
  *v9.i8 = vpmax_u32(v15, v15);
  if (v9.i32[0] < 0)
  {
    v17 = v104;
  }

  else
  {
    *v9.i8 = v13[1];
    v16 = vclez_s32(*v9.i8);
    *v10.i8 = vpmax_u32(v16, v16);
    v17 = v104;
    if (v10.i32[0] < 0 || (v18 = vadd_s32(*v13, *v9.i8), *v9.i8 = vmax_s32(*v109.i8, *v13), v14 = vsub_s32(vmin_s32(vadd_s32(*v109.i8, v109.u64[1]), v18), *v9.i8), v19 = vclez_s32(v14), *v10.i8 = vpmax_u32(v19, v19), v10.i32[0] < 0))
    {
      v14 = 0;
      v109.i64[1] = 0;
    }

    else
    {
      v9.u64[1] = v14;
      v109 = v9;
    }
  }

  v20 = v8;
  v21 = v14.i32[0];
  if (v14.i32[0] <= v14.i32[1])
  {
    v21 = v14.i32[1];
  }

  v9.i32[0] = v21;
  v10.i32[0] = 1073741822;
  v22.i64[0] = v109.i32[0];
  v22.i64[1] = v109.i32[1];
  v23 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v9, v10), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v22));
  v22.i64[0] = v14.i32[0];
  v22.i64[1] = v14.i32[1];
  v24 = vcvtq_f64_s64(v22);
  v25 = vdup_n_s32(v21 > 1073741822);
  v22.i64[0] = v25.u32[0];
  v22.i64[1] = v25.u32[1];
  v26 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v24);
  v27 = v26.f64[1];
  if (v26.f64[0] <= v26.f64[1])
  {
    v28 = v26.f64[1];
  }

  else
  {
    v28 = v26.f64[0];
  }

  if (v28 < 1.79769313e308)
  {
    if (v26.f64[0] < v26.f64[1])
    {
      v27 = v26.f64[0];
    }

    if (v27 > 0.0)
    {
      v29 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v20 * 5.6), 0), v26);
      v30 = vmovn_s64(vmvnq_s8(vclezq_f64(v29)));
      v23 = vaddq_f64(v23, vdupq_lane_s64(COERCE__INT64(v20 * -2.8), 0));
      v31 = vdup_lane_s32(vand_s8(v30, vdup_lane_s32(v30, 1)), 0);
      v32.i64[0] = v31.i32[0];
      v32.i64[1] = v31.i32[1];
      v26 = vandq_s8(v29, v32);
    }
  }

  v33 = *(this + 7);
  v34 = *(this + 8);
  v35 = v17;
  if (v17 != 1.0)
  {
    v11.f64[0] = 1.79769313e308;
    v36 = vdupq_lane_s64(vcgtq_f64(v11, v34).i64[0], 0);
    v37.i64[1] = *(this + 15);
    *v37.i64 = v35 * v33.f64[0];
    v33 = vbslq_s8(v36, v37, v33);
    v37.i64[1] = *(this + 17);
    *v37.i64 = v35 * v34.f64[0];
    v34 = vbslq_s8(v36, v37, v34);
    if (v34.f64[1] < 1.79769313e308)
    {
      v33.f64[1] = vmuld_lane_f64(v35, v33, 1);
      v34.f64[1] = v34.f64[1] * v35;
    }
  }

  v38 = vclezq_f64(v26);
  if ((vorrq_s8(vdupq_laneq_s64(v38, 1), v38).u64[0] & 0x8000000000000000) == 0)
  {
    v39 = vclezq_f64(v34);
    if ((vorrq_s8(vdupq_laneq_s64(v39, 1), v39).u64[0] & 0x8000000000000000) == 0)
    {
      v40 = vmul_n_f32(v7, v17);
      v41 = vcvtq_f64_f32(v40);
      v42 = vsubq_f64(v23, v41);
      v43 = vmaxnmq_f64(v42, v33);
      v44 = vsubq_f64(vminnmq_f64(vaddq_f64(v42, v26), vaddq_f64(v33, v34)), v43);
      v45 = vclezq_f64(v44);
      v46 = vdupq_laneq_s64(v45, 1);
      if ((vorrq_s8(v46, v45).u64[0] & 0x8000000000000000) == 0)
      {
        v99 = v41;
        v47 = *(this + 18);
        v48 = v47[25];
        _ZF = v8 == 0.0 && (v47[25] & 0x400) == 0;
        if (_ZF && (v101 = v44, v105 = v43, v50 = (*(*v47 + 128))(v47, a2), v44 = v101, v43 = v105, (v50 & 1) == 0) && (v51 = (*(**(this + 18) + 136))(*(this + 18), a2), v44 = v101, v43 = v105, (v51 & 5) != 0))
        {
          v102 = *(a2 + 104);
          v106 = *(a2 + 88);
          v97 = *(a2 + 2);
          v95 = *(a2 + 120);
          v96 = *(a2 + 3);
          v94 = *(a2 + 4);
          v52 = *(*(v4 + 16) + 8);
          *(a2 + 4) = vaddq_f64(v94, v99);
          *(a2 + 120) = vaddq_f64(v95, v99);
          _H1 = *(*(this + 18) + 94);
          __asm { FCVT            S1, H1 }

          *(*(v4 + 16) + 8) = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*(this + 88)), _S1));
          (*(**(this + 18) + 160))(*(this + 18), a2);
          *(*(v4 + 16) + 8) = v52;
          *(a2 + 2) = v97;
          *(a2 + 3) = v96;
          *(a2 + 4) = v94;
          *(a2 + 88) = v106;
          *(a2 + 104) = v102;
          *(a2 + 120) = v95;
        }

        else
        {
          v58 = 64.0;
          if (v8 <= 8.0)
          {
            v58 = 16.0;
          }

          v59 = 4.0;
          if (v8 > 4.0)
          {
            v59 = v58;
          }

          v60 = v20 * v20;
          v61 = 1.0;
          if (v20 * v20 <= v59)
          {
            v63 = sqrt(v60);
          }

          else
          {
            v62 = 3.0625;
            do
            {
              v61 = v61 * 0.5;
              v60 = (v60 - v62) * 0.25;
              v62 = 0.0;
            }

            while (v60 > v59);
            v63 = sqrt(v60);
            if (v61 == 1.0)
            {
              v61 = 1.0;
            }

            else
            {
              v46.f64[0] = 1.79769313e308;
              v64 = vdupq_lane_s64(vcgtq_f64(v46, v44).i64[0], 0);
              v65.i64[1] = *&v43.f64[1];
              *v65.i64 = v61 * v43.f64[0];
              v43 = vbslq_s8(v64, v65, v43);
              v65.i64[1] = *&v44.f64[1];
              *v65.i64 = v61 * v44.f64[0];
              v44 = vbslq_s8(v64, v65, v44);
              if (v44.f64[1] < 1.79769313e308)
              {
                v43.f64[1] = vmuld_lane_f64(v61, v43, 1);
                v44.f64[1] = v44.f64[1] * v61;
              }
            }
          }

          v66 = vceqzq_f64(v44);
          if ((vorrq_s8(vdupq_laneq_s64(v66, 1), v66).u64[0] & 0x8000000000000000) != 0 || (v67 = vceqq_f64(v44, v44), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v67), 1), v67).u64[0] & 0x8000000000000000) != 0))
          {
            v108 = 0uLL;
            v71 = 0;
            v70 = -1;
          }

          else
          {
            v68 = vcvtmq_s64_f64(vmaxnmq_f64(v43, vdupq_n_s64(0xC1BFFFFFFF000000)));
            v69 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v43, v44), vdupq_n_s64(0x41C0000000000000uLL))), v68);
            v108 = vuzp1q_s32(v68, v69);
            v70 = vadd_s32(vmovn_s64(v68), -1);
            v71 = vmovn_s64(v69);
          }

          v107 = v61;
          v72 = v71.i32[0];
          if (v71.i32[0] <= v71.i32[1])
          {
            v73 = v71.i32[1];
          }

          else
          {
            v73 = v71.i32[0];
          }

          if (v71.i32[0] >= v71.i32[1])
          {
            v72 = v71.i32[1];
          }

          if (v73 <= 1073741822 && v72 >= 1)
          {
            v75 = vadd_s32(v71, 0x200000002);
            v76 = vclez_s32(v75);
            if (vorr_s8(v76, vdup_lane_s32(v76, 1)).u8[0])
            {
              v77 = -1;
            }

            else
            {
              v77 = 0;
            }

            *v108.i8 = v70;
            v108.u64[1] = vbic_s8(v75, vdup_n_s32(v77));
          }

          v78 = (*(*v4 + 696))(v4, 1, &v108, 8200, @"draw-shadow");
          if (v78)
          {
            v79 = v78;
            v80 = v107 * v35;
            if (*(a2 + 10) != v107 * v35)
            {
              *(a2 + 10) = v80;
              *(a2 + 11) = v80;
              *(a2 + 12) = 0;
              *(a2 + 13) = 0;
              *(a2 + 14) = v80;
              *(a2 + 15) = 0;
              *(a2 + 16) = 0;
            }

            v81 = *(a2 + 4);
            v100 = *(a2 + 3);
            v103 = *(a2 + 2);
            *(a2 + 2) = vmulq_n_f64(v103, v107);
            *(a2 + 3) = vmulq_n_f64(v100, v107);
            v98 = v81;
            *(a2 + 4) = vmulq_n_f64(v81, v107);
            v82 = *(v4 + 1384);
            v83 = v82 & 0x7000;
            if ((v82 & 0x7000) == 0x3000)
            {
              v84 = v82 & 0xAFFF;
              v82 &= 0xAAAAAAAA;
              *(v4 + 1384) = v84;
            }

            v85 = v82 >> 12;
            if ((v85 & 4) != 0)
            {
              v86 = 0;
            }

            else
            {
              v86 = (0x22231800u >> (8 * (v85 & 7)) << 8) & 0xFF00;
            }

            *(v78 + 144) = v86 | *(v78 + 144) & 0xFFFFC0FF;
            v87 = *(v4 + 16);
            memcpy(__dst, v87, 0x1F8uLL);
            __dst[0] = v87;
            *(v4 + 16) = __dst;
            v120 = 0;
            *&v118[16] = 0u;
            v119 = 0u;
            *&v117[16] = 0u;
            *v118 = 0u;
            *v117 = 0u;
            v88 = *(v4 + 656);
            *&v117[8] = *(v88 + 8);
            v89 = *(v88 + 32);
            *&v117[24] = *(v88 + 24);
            *v118 = v89;
            *&v118[8] = *(v88 + 40);
            *&v118[24] = *(v88 + 56);
            v90 = *(v88 + 80);
            LODWORD(v119) = *(v88 + 64);
            v120 = v90 & 0x5FF;
            *(&v119 + 1) = *(v88 + 72);
            memset(v116, 0, sizeof(v116));
            CA::Shape::operator=(v116, v108.i32);
            *&v117[8] = v116;
            if ((*(*v4 + 232))(v4, 25))
            {
              (*(*v4 + 760))(v4, v79, 32, 32);
            }

            *v117 = CA::OGL::Context::set_gstate(v4, v117);
            CA::OGL::Context::push_surface(v4, v79, 1u, 1, 0);
            CA::CG::DrawOp::render_alpha(*(this + 18), a2, 1);
            CA::OGL::Context::pop_surface(v4);
            CA::OGL::Context::set_gstate(v4, **(v4 + 656));
            *(v4 + 16) = __dst[0];
            __dst[0] = 0;
            *(v4 + 1384) = *(v4 + 1384) & 0x8FFF | v83;
            v91 = v103;
            *(a2 + 2) = v103;
            *(a2 + 3) = v100;
            *(a2 + 4) = v98;
            if (*(a2 + 10) != v35)
            {
              *(a2 + 10) = v35;
              *(a2 + 11) = v35;
              *(a2 + 12) = 0;
              *(a2 + 13) = 0;
              *(a2 + 14) = v35;
              *(a2 + 15) = 0;
              *(a2 + 16) = 0;
            }

            v114 = 0xF00000000uLL;
            v112 = 0u;
            v113 = 0u;
            v115 = 0uLL;
            if ((v48 & 0x400) != 0)
            {
              v92 = 12;
            }

            else
            {
              v92 = 11;
            }

            *(*(v4 + 16) + 16) = v92;
            v93 = v63;
            *v110 = v93;
            *&v110[1] = v93;
            v111 = v40;
            v91.n128_f32[0] = v107;
            (*(*v4 + 928))(v4, v79, v110, 0, 1.0, v91);
            *(*(v4 + 16) + 16) = 0;
            CA::OGL::Context::release_surface(v4, v79);
            if (__dst[0])
            {
              __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
            }
          }
        }
      }
    }
  }
}

void *CA::CG::DrawShadow::draw_shape_and_color(void *this, CA::CG::Renderer *a2)
{
  if ((*(this[19] + 89) & 1) == 0)
  {
    return (*(*this + 184))(this, a2);
  }

  return this;
}

void *CA::CG::DrawShadow::draw_shape(void *this, CA::CG::Renderer *a2)
{
  if ((*(this[19] + 89) & 1) == 0)
  {
    return (*(*this + 184))(this, a2);
  }

  return this;
}

uint64_t CA::CG::DrawShadow::set_op(uint64_t this, CA::CG::DrawOp *a2)
{
  v2 = *(this + 144);
  if (v2)
  {
    *(v2 + 104) = 0;
  }

  *(this + 144) = a2;
  return this;
}

int64x2_t CA::CG::DrawShadow::compute_dod(int64x2_t *this, int64x2_t *a2)
{
  v4 = this[9].i64[0];
  if ((v4[101] & 4) != 0)
  {
    result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v16 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    this[7] = result;
    this[8] = v16;
    *a2 = result;
    a2[1] = v16;
  }

  else
  {
    (*(*v4 + 24))(v4, this + 7);
    v5 = this[7];
    *a2 = v5;
    result = this[8];
    a2[1] = result;
    v7 = this[9].i64[1];
    if ((v7[11].i8[1] & 1) == 0)
    {
      v8 = v7[9].f32[1];
      v9 = vaddq_f64(v5, vcvtq_f64_f32(v7[10]));
      *a2 = v9;
      v10 = *result.i64 <= *&result.i64[1] ? *&result.i64[1] : *result.i64;
      if (v10 < 1.79769313e308)
      {
        if (*result.i64 >= *&result.i64[1])
        {
          v11 = result.i64[1];
        }

        else
        {
          v11 = result.i64[0];
        }

        if (*&v11 > 0.0)
        {
          v12 = v8 * -2.8;
          *&v13 = v12;
          *a2 = vaddq_f64(v9, vdupq_lane_s64(v13, 0));
          v14 = *&v13 * -2.0;
          v15 = *&v13 * -2.0 + *result.i64;
          *result.i64 = v14 + *&result.i64[1];
          *a2[1].i64 = v15;
          *&a2[1].i64[1] = v14 + *&result.i64[1];
          if (v15 <= 0.0 || *result.i64 <= 0.0)
          {
            a2[1].i64[0] = 0;
            a2[1].i64[1] = 0;
          }
        }
      }
    }
  }

  return result;
}

void CA::CG::DrawShadow::~DrawShadow(CA::CG::DrawShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

BOOL CA::Shape::is_valid(CA::Shape *this)
{
  if (this)
  {
    return 1;
  }

  v1 = *(this + 1);
  if (v1 > 11 || v1 == 6)
  {
    v5 = *(this + 3);
    v3 = (this + 12);
    for (i = v5; i != 0x7FFFFFFF; i = *v3)
    {
      v6 = v3[1];
      v7 = v6 > 1;
      if (v6 < 2)
      {
        return v7;
      }

      v3 += v6;
    }

    return 1;
  }

  return 0;
}

char *CA::Shape::dump(CA::Shape *this)
{
  if (this)
  {
    v2 = 144;
  }

  else
  {
    v2 = 12 * *(this + 1);
  }

  v3 = malloc_type_malloc(v2, 0x100004077774924uLL);
  v4 = 0;
  v5 = v3;
  if (this)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = *(this + 1); v4 < i; i = 12)
  {
    v5 += snprintf(v5, &v3[v2] - v5, "%d ", *(this + v4++));
    if ((this & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  return v3;
}

CA::Shape *CA::Shape::new_shape(unint64_t a1, double *a2, unsigned int a3)
{
  v3 = a1;
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return v3;
  }

  v22 = 0;
  if (!CGPathIsRegion())
  {
LABEL_13:
    v20 = 0u;
    v21 = 0u;
    *v19 = 0u;
    *&v18 = a3;
    *(&v18 + 1) = a2;
    v23 = MEMORY[0x1E69E9820];
    v24 = 0x40000000;
    v25 = ___ZN2CA12_GLOBAL__N_113PathConverter7convertEPK6CGPath_block_invoke;
    v26 = &__block_descriptor_tmp_16498;
    v27 = &v18;
    CGPathApplyWithBlock2();
    if ((LODWORD(v19[1]) - 6) < 2)
    {
    }

    else if (LODWORD(v19[1]))
    {
      if (LODWORD(v19[1]) != 8)
      {
        LODWORD(v19[1]) = 8;
        if (v19[0])
        {
          CA::Shape::unref(v19[0]);
          v19[0] = 0;
        }
      }
    }

    return v19[0];
  }

  if (*a2 != 1.0)
  {
LABEL_4:
    if (a3)
    {
LABEL_10:
      *v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      if (&v18 != a2)
      {
        v11 = *(a2 + 1);
        v18 = *a2;
        *v19 = v11;
        v20 = *(a2 + 2);
      }

      CGSTransformRegion();
      v3 = CA::Shape::new_shape();
      CGSReleaseRegion();
      return v3;
    }

    v6 = trunc(*a2);
    if (vabdd_f64(v6, v6) < 0.000001)
    {
      v7 = a2 + 1;
      v8 = -1;
      while (v8 != 4)
      {
        v9 = *v7++;
        v10 = trunc(v9);
        ++v8;
        if (vabdd_f64(v10, v10) >= 0.000001)
        {
          if (v8 < 5)
          {
            goto LABEL_13;
          }

          goto LABEL_10;
        }
      }

      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v14 = 1;
  while (v14 != 6)
  {
    v15 = v14;
    v16 = a2[v14];
    v17 = CA::Mat2Impl::mat2_identity_double[v14++];
    if (v16 != v17)
    {
      if ((v15 - 1) < 5)
      {
        goto LABEL_4;
      }

      return CA::Shape::new_shape();
    }
  }

  return CA::Shape::new_shape();
}

unint64_t CA::Shape::new_shape()
{
  v17 = *MEMORY[0x1E69E9840];
  if (CGSRegionIsEmpty())
  {
    return 1;
  }

  v16 = 0;
  v15 = 0;
  if (CGSGetRegionData())
  {
    return 1;
  }

  if (v16[1] == 4)
  {
    return 1;
  }

  if (*v16 != 0x80000000)
  {
    return 1;
  }

  v1 = v15 >> 2;
  if (v16[v1 - 1] != 0x7FFFFFFF)
  {
    return 1;
  }

  if (v1 == 9)
  {
    v2 = v16[2];
    v3 = v16[5];
    v14[0] = v16[4];
    v14[1] = v2;
    v4 = v16[6] - v2;
    v14[2] = v3 - v14[0];
    v14[3] = v4;
    return CA::Shape::new_shape(v14, v0);
  }

  v6 = v1 + 3;
  result = x_new<int>(v1 + 3);
  if (!result)
  {
    return 1;
  }

  *(result + 4) = v6;
  *(result + 8) = v6;
  *result = 1;
  v7 = v16;
  v8 = (result + 12);
  for (i = *v16; i != 0x7FFFFFFF; i = *v7)
  {
    *v8 = i;
    v10 = v7[1];
    v8[1] = v10;
    v8 += 2;
    if (v10 != 2)
    {
      v11 = v7 + 2;
      v12 = 4 * v10 - 8;
      do
      {
        v13 = *v11++;
        *v8++ = v13;
        v12 -= 4;
      }

      while (v12);
    }

    v7 += v10;
  }

  *v8 = 0x7FFFFFFF;
  return result;
}

void ___ZN2CA12_GLOBAL__N_113PathConverter7convertEPK6CGPath_block_invoke(uint64_t a1, int *a2, const CA::Bounds *a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4 == 8)
  {
    *a3 = 1;
    return;
  }

  v5 = *a2;
  if (*a2 != 4)
  {
    if (v5 != 1)
    {
      if (!v5 && !v4)
      {
        v6 = **(a2 + 1);
        v7.f64[0] = NAN;
        v7.f64[1] = NAN;
        *&v7.f64[0] = vmovn_s64(vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v6, vnegq_f64(v7))));
        if (LODWORD(v7.f64[0]) & HIDWORD(v7.f64[0]))
        {
          v6 = vmlaq_laneq_f64(vmlaq_n_f64(*(*(v3 + 8) + 32), **(v3 + 8), v6.f64[0]), *(*(v3 + 8) + 16), v6, 1);
        }

        *(v3 + 32) = v6;
        v8 = 1;
        goto LABEL_10;
      }

      goto LABEL_42;
    }

    if ((v4 - 1) <= 4)
    {
      v9 = **(a2 + 1);
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      *&v10.f64[0] = vmovn_s64(vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v9, vnegq_f64(v10))));
      if (LODWORD(v10.f64[0]) & HIDWORD(v10.f64[0]))
      {
        v9 = vmlaq_laneq_f64(vmlaq_n_f64(*(*(v3 + 8) + 32), **(v3 + 8), v9.f64[0]), *(*(v3 + 8) + 16), v9, 1);
      }

      if (v4 <= 2)
      {
        if (v4 == 1)
        {
          v13 = *(v3 + 40);
          if (v9.f64[1] == v13 || vabdd_f64(v9.f64[1], v13) < 0.001)
          {
            *(v3 + 48) = v9.f64[0];
            v8 = 2;
            goto LABEL_10;
          }

          v14 = *(v3 + 32);
          if (v9.f64[0] == v14 || vabdd_f64(v9.f64[0], v14) < 0.001)
          {
            *(v3 + 56) = v9.f64[1];
            v8 = 4;
            goto LABEL_10;
          }
        }

        else
        {
          v19 = *(v3 + 48);
          if (v9.f64[0] == v19 || vabdd_f64(v9.f64[0], v19) < 0.001)
          {
            *(v3 + 56) = v9.f64[1];
            v8 = 3;
            goto LABEL_10;
          }
        }
      }

      else if (v4 == 3)
      {
        v15 = *(v3 + 32);
        if (v9.f64[0] == v15 || vabdd_f64(v9.f64[0], v15) < 0.001)
        {
          v16 = *(v3 + 56);
          if (v9.f64[1] == v16 || vabdd_f64(v9.f64[1], v16) < 0.001)
          {
            v8 = 6;
            goto LABEL_10;
          }
        }
      }

      else if (v4 == 4)
      {
        v11 = *(v3 + 56);
        if (v9.f64[1] == v11 || vabdd_f64(v9.f64[1], v11) < 0.001)
        {
          *(v3 + 48) = v9.f64[0];
          v8 = 5;
LABEL_10:
          *(v3 + 24) = v8;
          return;
        }
      }

      else
      {
        v17 = *(v3 + 48);
        if (v9.f64[0] == v17 || vabdd_f64(v9.f64[0], v17) < 0.001)
        {
          v18 = *(v3 + 40);
          if (v9.f64[1] == v18 || vabdd_f64(v9.f64[1], v18) < 0.001)
          {
            v8 = 7;
            goto LABEL_10;
          }
        }
      }
    }

LABEL_42:
    *(v3 + 24) = 8;
    v20 = *(v3 + 16);
    if (v20)
    {
      CA::Shape::unref(v20);
      *(v3 + 16) = 0;
    }

    return;
  }

  if ((v4 & 0xFFFFFFFE) != 6)
  {
    goto LABEL_42;
  }

  v12 = *(a1 + 32);
}

void CA::anonymous namespace::PathConverter::close_rect(CA::_anonymous_namespace_::PathConverter *this, const CA::Bounds *a2, const CA::Bounds *a3)
{
  v3 = a2;
  v93 = *MEMORY[0x1E69E9840];
  *(this + 6) = 0;
  v5 = *(this + 4);
  v6 = *(this + 6);
  if (v5 <= v6)
  {
    v7 = *(this + 6);
    v6 = *(this + 4);
  }

  else
  {
    *(this + 4) = v6;
    *(this + 6) = v5;
    v3 = a2 ^ 1;
    v7 = v5;
  }

  v8 = *(this + 5);
  v9 = *(this + 7);
  if (v8 <= v9)
  {
    v10 = *(this + 7);
    v9 = *(this + 5);
  }

  else
  {
    *(this + 5) = v9;
    *(this + 7) = v8;
    v3 ^= 1u;
    v10 = v8;
  }

  v11 = v7 - v6;
  v12 = v10 - v9;
  v13.f64[0] = v6;
  v13.f64[1] = v9;
  v14.f64[0] = v11;
  v14.f64[1] = v12;
  v15 = *this;
  if ((*this & 4) != 0)
  {
    v25 = vceqzq_f64(v14);
    if ((vorrq_s8(vdupq_laneq_s64(v25, 1), v25).u64[0] & 0x8000000000000000) != 0 || (v26 = vceqq_f64(v14, v14), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v26), 1), v26).u64[0] & 0x8000000000000000) != 0))
    {
      v79 = 0uLL;
      v24 = 0;
    }

    else
    {
      v27 = vcvtpq_s64_f64(vmaxnmq_f64(v13, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v28 = vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v13, v14), vdupq_n_s64(0x41C0000000000000uLL))), v27);
      v79 = vuzp1q_s32(v27, v28);
      v24 = vmovn_s64(v28);
    }

    goto LABEL_36;
  }

  if ((v15 & 8) != 0)
  {
    if (v11 <= v12)
    {
      v29 = v12;
    }

    else
    {
      v29 = v11;
    }

    if (v29 < 1073741820.0)
    {
      v35.f64[0] = NAN;
      v35.f64[1] = NAN;
      v36 = vnegq_f64(v35);
      __asm { FMOV            V2.2D, #0.5 }

      v30 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v36, _Q2, v13), v13)));
      v41 = vaddq_f64(v13, v14);
      v24 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v36, _Q2, v41), v41))), v30);
    }

    else
    {
      v30 = vdup_n_s32(0xE0000001);
      v24 = 0xC0000000C0000000;
    }

    *v79.i8 = v30;
    v79.u64[1] = v24;
    goto LABEL_36;
  }

  v16 = vceqzq_f64(v14);
  if ((vorrq_s8(vdupq_laneq_s64(v16, 1), v16).u64[0] & 0x8000000000000000) != 0 || (v17 = vceqq_f64(v14, v14), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v17), 1), v17).u64[0] & 0x8000000000000000) != 0))
  {
    v79 = 0uLL;
    v24 = 0;
    v23 = 0.0;
    v22 = 0.0;
  }

  else
  {
    v18 = vmaxnmq_f64(v13, vdupq_n_s64(0xC1BFFFFFFF000000));
    v19 = vminnmq_f64(vaddq_f64(v13, v14), vdupq_n_s64(0x41C0000000000000uLL));
    v20 = vcvtmq_s64_f64(v18);
    v21 = vsubq_s64(vcvtpq_s64_f64(v19), v20);
    v79 = vuzp1q_s32(v20, v21);
    v22 = v20.i32[0];
    v23 = v20.i32[2];
    v24 = vmovn_s64(v21);
  }

  if (v6 == v22 && v9 == v23 && v11 == v24.i32[0] && v12 == v24.i32[1])
  {
LABEL_36:
    if (!vorr_s8(vdup_lane_s32(v24, 1), v24).u32[0])
    {
      return;
    }

    v42 = (this + 16);
    v43 = *(this + 2);
    if (!v43)
    {
      *(this + 2) = CA::Shape::new_shape(&v79, a2);
      *(this + 4) = v3;
      return;
    }

    if ((v15 & 0x10) == 0)
    {
      if (*(this + 4) == v3)
      {
        CA::shape_union(this + 2, &v79, a3);
        return;
      }

      *(this + 6) = 8;
      v34 = v43;
      goto LABEL_48;
    }

    v44 = vceqz_s32(v24);
    if (vorr_s8(v44, vdup_lane_s32(v44, 1)).u32[0])
    {
      return;
    }

    if (v43)
    {
      if (v43 != 1)
      {
        v81 = 0u;
        v82 = 0u;
        v80 = 0u;
        CA::Shape::operator=(&v80, v79.i32);
LABEL_51:
        if (DWORD1(v80) == 6)
        {
          v46 = v43;
          goto LABEL_53;
        }

        v87 = xmmword_183E21520;
        v88 = 2;
        v48 = v89;
        v83 = &v87;
        v84 = v89;
        v85 = v89;
        v86 = &v87 + 12;
        *&v89[2028] = 0;
        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
        v49 = &v80 | 0xC;
        v50 = v43;
        if (v43)
        {
          v90 = xmmword_183E21530;
          LODWORD(v91) = 2;
          DWORD1(v91) = (v43 >> 16) >> 16;
          DWORD2(v91) = 4;
          HIDWORD(v91) = v43 >> 48;
          LODWORD(v92) = HIDWORD(v91) + (v43 >> 17);
          DWORD1(v92) = ((v43 >> 2) & 0x7FFF) + DWORD1(v91);
          *(&v92 + 1) = 0x7FFFFFFF00000002;
          v50 = &v90;
        }

        v53 = *(v50 + 3);
        v51 = v50 + 12;
        v52 = v53;
        if (v53 == 0x7FFFFFFF)
        {
          v54 = &v80 | 0xC;
LABEL_101:
          v47 = CA::ShapeHandle::finish(&v83, v54);
          goto LABEL_102;
        }

        v55 = (&v80 | 0xC);
        v54 = v51;
        while (1)
        {
          v56 = *v55;
          if (*v55 == 0x7FFFFFFF)
          {
            goto LABEL_101;
          }

          if (v52 - v56 >= 1)
          {
            break;
          }

          v57 = *(v54 + 4);
          if (((v52 - v56) & 0x80000000) == 0)
          {
            v51 = v54;
            v54 += 4 * v57;
            goto LABEL_65;
          }

          LODWORD(v58) = *(v49 + 4);
          v51 = v54;
          v54 += 4 * v57;
          v59 = v55;
LABEL_66:
          v60 = v57 - 2;
          v61 = v57 - 2 + v58;
          if (*(v83 + 2) < (&v48[v61] - v83) >> 2)
          {
            if (!CA::ShapeHandle::grow(&v83, v61))
            {
              if (*v54 == 0x7FFFFFFF)
              {
LABEL_100:
                v54 = v59;
              }

              goto LABEL_101;
            }

            v48 = v84;
          }

          v62 = v48 + 2;
          v84 = v48 + 2;
          v63 = v58 - 2;
          *v48 = v52;
          v48[1] = 0;
          v64 = (v51 + 8);
          v65 = (v49 + 8);
          if (v60 && v58 != 2)
          {
            v66 = 0;
            while (1)
            {
              v67 = *v64;
              v68 = *v65;
              v69 = *v64 - *v65;
              if (*v64 <= *v65)
              {
                v70 = v66 ^ 1;
                ++v64;
                --v60;
                if (v69 < 0)
                {
                  v68 = v67;
                  goto LABEL_76;
                }
              }

              else
              {
                v70 = v66;
              }

              v70 ^= 2u;
              ++v65;
              --v63;
LABEL_76:
              if ((v66 - 1) < 2 != (v70 - 1) < 2)
              {
                *v62++ = v68;
                v84 = v62;
              }

              if (v60)
              {
                v66 = v70;
                if (v63)
                {
                  continue;
                }
              }

              break;
            }
          }

          if (v60)
          {
            v63 = v60;
          }

          if (v63)
          {
            if (!v60)
            {
              v64 = v65;
            }

            do
            {
              v71 = *v64++;
              *v62++ = v71;
              --v63;
            }

            while (v63);
            v84 = v62;
          }

          v72 = v85;
          v73 = v86;
          v74 = (v62 - v85) >> 2;
          v85[1] = v74;
          if (v73 && *(v73 + 1) == v74)
          {
            v75 = 2;
            while (v74 != v75)
            {
              v76 = v72[v75];
              v77 = *&v73[4 * v75++];
              if (v76 != v77)
              {
                goto LABEL_94;
              }
            }

            v84 = v72;
            v62 = v72;
          }

          else
          {
LABEL_94:
            v85 = v62;
            v86 = v72;
          }

          v52 = *v54;
          v48 = v62;
          v55 = v59;
          if (*v54 == 0x7FFFFFFF)
          {
            goto LABEL_100;
          }
        }

        LODWORD(v57) = *(v51 + 1);
LABEL_65:
        v58 = v55[1];
        v59 = &v55[v58];
        v49 = v55;
        v52 = *v55;
        goto LABEL_66;
      }
    }

    else if (*(v43 + 4) != 6)
    {
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      CA::Shape::operator=(&v80, v79.i32);
      if (*(v43 + 4) == 6)
      {
        v46 = &v80;
LABEL_53:
        v47 = CA::Shape::ref(v46, v45);
LABEL_102:
        v78 = v47;
        CA::Shape::unref(v43);
        *v42 = v78;
        return;
      }

      goto LABEL_51;
    }

    v47 = CA::Shape::new_shape(&v79, a2);
    goto LABEL_102;
  }

  *(this + 6) = 8;
  v34 = *(this + 2);
  if (v34)
  {
LABEL_48:
    CA::Shape::unref(v34);
    *(this + 2) = 0;
  }
}

void *x_new<int>(uint64_t a1)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  return malloc_type_zone_malloc(v2, 4 * a1, 0x100004052888210uLL);
}

uint64_t layer_can_disable_allows_group_blending(CALayer *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (-[CALayer allowsGroupBlending](a1, "allowsGroupBlending") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, v2 = flattened_sublayers(a1), (v3 = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16]) != 0))
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = flattened_compositing_filter(*(*(&v12 + 1) + 8 * v7));
        if (v8)
        {
          v9 = v8;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_17;
          }

          if (destructive_blend_modes(void)::once != -1)
          {
            dispatch_once(&destructive_blend_modes(void)::once, &__block_literal_global_16527);
          }

          if ([destructive_blend_modes(void)::modes containsObject:v9])
          {
            goto LABEL_17;
          }

          v5 = 1;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v4);
  }

  else
  {
LABEL_17:
    v5 = 0;
  }

  return v5 & 1;
}

id flattened_sublayers(CALayer *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(CALayer *)a1 sublayers];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObjectsFromArray:flattened_sublayers(v8)];
        }

        else
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  return v2;
}

__CFString *flattened_compositing_filter(CALayer *a1)
{
  v2 = [(CALayer *)a1 compositingFilter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [(__CFString *)v2 type];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (([(__CFString *)v2 isEqualToString:@"normalBlendMode"]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    if (([(__CFString *)v2 isEqualToString:@"sourceOver"]& 1) == 0)
    {
      if (v2)
      {
        v3 = v2;
        if ([(NSArray *)[(CALayer *)a1 filters] count])
        {
          goto LABEL_15;
        }
      }
    }
  }

  if ([(NSArray *)[(CALayer *)a1 filters] count]!= 1)
  {
    return v3;
  }

  v4 = [(NSArray *)[(CALayer *)a1 filters] firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = @"vibrantColorMatrix";
    if ([objc_msgSend(v4 "type")])
    {
      return v3;
    }

    v3 = @"vibrantDark";
    if ([objc_msgSend(v4 "type")])
    {
      return v3;
    }

    v3 = @"vibrantLight";
    if ([objc_msgSend(v4 "type")])
    {
      return v3;
    }
  }

LABEL_15:
  v6 = MEMORY[0x1E695DFB0];

  return [v6 null];
}

uint64_t ___Z23destructive_blend_modesv_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"clear", @"copy", @"sourceIn", @"sourceOut", @"sourceAtop", @"dest", @"destOver", @"destIn", @"destOut", @"destAtop", @"xor", @"subtractS", @"subtractD", @"multiply", 0}];
  destructive_blend_modes(void)::modes = result;
  return result;
}

uint64_t layer_can_push_blending(CALayer *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = flattened_compositing_filter(a1);
    if (!result)
    {
      return result;
    }

    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (destructive_blend_modes(void)::once != -1)
      {
        dispatch_once(&destructive_blend_modes(void)::once, &__block_literal_global_16527);
      }

      if (([destructive_blend_modes(void)::modes containsObject:v3] & 1) == 0)
      {
        while (a1)
        {
          v4 = flattened_sublayers(a1);
          result = [v4 count];
          if (!result)
          {
            return result;
          }

          if ([v4 count] > 1)
          {
            return 1;
          }

          a1 = [v4 firstObject];
          v5 = flattened_compositing_filter(a1);
          result = 0;
          if (v5)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

BOOL layer_can_disable_group_opacity(CALayer *a1)
{
  result = [(CALayer *)a1 allowsGroupOpacity];
  if (result)
  {
    [(CALayer *)a1 opacity];
    if (v3 == 1.0)
    {
      return 0;
    }

    [(CALayer *)a1 opacity];
    return v4 != 0.0 && ![(CALayer *)a1 isHidden]&& [(NSArray *)[(CALayer *)a1 sublayers] count]> 1;
  }

  return result;
}

uint64_t layer_is_simple_shape(CALayer *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(CALayer *)a1 strokeStart];
  if (v2 != 0.0)
  {
    return 0;
  }

  [(CALayer *)a1 strokeEnd];
  if (v3 != 1.0)
  {
    return 0;
  }

  v5 = [(CALayer *)a1 path];
  if (CGPathIsRectWithTransform() & 1) != 0 || (CGPathIsRoundedRectWithTransform() & 1) != 0 || (CGPathIsEllipseWithTransform())
  {
    return 1;
  }

  else
  {
    return cgpath_is_uibezierpath_rounded_rect(v5);
  }
}

uint64_t cgpath_is_uibezierpath_rounded_rect(const CGPath *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CGPathGetNumberOfElements() == 22 && CGPathGetNumberOfPoints() == 46)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL35cgpath_is_uibezierpath_rounded_rectPK6CGPath_block_invoke;
    block[3] = &unk_1E6DF8120;
    block[4] = &v5;
    block[5] = v9;
    CGPathApplyWithBlock(a1, block);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
    _Block_object_dispose(v9, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_183D84850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 56), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL35cgpath_is_uibezierpath_rounded_rectPK6CGPath_block_invoke(uint64_t result, int *a2)
{
  if (*(*(*(result + 32) + 8) + 24) == 1)
  {
    v2 = *a2;
    v3 = *(*(result + 40) + 8);
    v4 = *(v3 + 24);
    *(v3 + 24) = v4 + 1;
    if (v2 != cgpath_is_uibezierpath_rounded_rect(CGPath const*)::types[v4])
    {
      *(*(*(result + 32) + 8) + 24) = 0;
    }
  }

  return result;
}

uint64_t layer_has_simple_shape_masking(CALayer *a1)
{
  result = [(CALayer *)a1 mask];
  if (result)
  {
    v2 = result;
    if (![objc_msgSend(result "sublayers")] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (!objc_msgSend(v2, "strokeColor") || CGColorGetAlpha(objc_msgSend(v2, "strokeColor")) == 0.0))
    {
      v3 = [v2 path];
      if (CGPathIsRectWithTransform() & 1) != 0 || (CGPathIsRoundedRectWithTransform() & 1) != 0 || (CGPathIsEllipseWithTransform())
      {
        return 1;
      }

      else
      {
        return cgpath_is_uibezierpath_rounded_rect(v3);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t layer_has_simple_background_masking(CALayer *a1)
{
  result = [(CALayer *)a1 mask];
  if (result)
  {
    v2 = result;
    if ([objc_msgSend(result "sublayers")])
    {
      return 0;
    }

    result = [v2 isMemberOfClass:objc_opt_class()];
    if (result)
    {
      result = [v2 backgroundColor];
      if (result)
      {
        if (!CGColorGetPattern([v2 backgroundColor]))
        {
          v3 = 0;
          while (1)
          {
            v4 = off_1E6DF80F0[v3];
            v5 = [v2 valueForKey:v4];
            v6 = [CALayer defaultValueForKey:v4];
            if (!-[__CFString isEqualToString:](v4, "isEqualToString:", @"shadowOpacity") || ([v5 floatValue], v7 != 0.0))
            {
              if (!-[__CFString isEqualToString:](v4, "isEqualToString:", @"borderWidth") || ([v5 floatValue], v8 != 0.0))
              {
                if (([v5 isEqual:v6] & 1) == 0 && v5 | v6)
                {
                  break;
                }
              }
            }

            ++v3;
            result = 1;
            if (v3 == 5)
            {
              return result;
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

_DWORD *CA::CG::FocusRingStyle::copy(CA::CG::FocusRingStyle *this)
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
    *v3 = &unk_1EF200A18;
    *(v3 + 19) = *(this + 76);
    v3[21] = *(this + 21);
  }

  return v3;
}

uint64_t CA::CG::FocusRingStyle::expand_layer_roi(uint64_t this, float64x2_t *a2)
{
  v3 = a2[1].f64[0];
  v2 = a2[1].f64[1];
  if (v3 <= v2)
  {
    v4 = a2[1].f64[1];
  }

  else
  {
    v4 = a2[1].f64[0];
  }

  if (v4 < 1.79769313e308)
  {
    if (v3 >= v2)
    {
      v5 = a2[1].f64[1];
    }

    else
    {
      v5 = a2[1].f64[0];
    }

    if (v5 > 0.0)
    {
      *&v6 = (-1.0 - floorf(*(this + 76) + 0.5));
      *a2 = vaddq_f64(*a2, vdupq_lane_s64(v6, 0));
      v7 = *&v6 * -2.0;
      v8 = v7 + v3;
      v9 = v7 + v2;
      a2[1].f64[0] = v8;
      a2[1].f64[1] = v9;
      if (v8 <= 0.0 || v9 <= 0.0)
      {
        a2[1].f64[0] = 0.0;
        a2[1].f64[1] = 0.0;
      }
    }
  }

  return this;
}

float CA::CG::FocusRingStyle::matrix_changed(CA::CG::FocusRingStyle *this)
{
  Data = CGStyleGetData();
  v3 = vaddvq_f64(vmulq_f64(*(this + 40), vextq_s8(*(this + 24), *(this + 24), 8uLL)));
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  v4 = sqrtf(v3);
  if (v3 != 1.0)
  {
    v3 = v4;
  }

  result = fmax(*(Data + 24) * v3, 0.0);
  *(this + 19) = result;
  return result;
}

void CA::CG::FocusRingStyle::~FocusRingStyle(CA::CG::Renderer **this, const void *a2)
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

void sub_183D86C74(_Unwind_Exception *exception_object)
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

uint64_t paced_keyframe(double *a1, int a2, double a3, double *a4)
{
  if (a2 < 1)
  {
    v9 = 0;
    v10 = 0.0;
    v8 = INFINITY;
  }

  else
  {
    v4 = a2;
    v5 = 0.0;
    v6 = a1;
    do
    {
      v7 = *v6++;
      v5 = v7 + v5;
      --v4;
    }

    while (v4);
    v8 = 1.0 / v5;
    v9 = (a2 - 1);
    if (a2 == 1)
    {
      v10 = 0.0;
    }

    else
    {
      v11 = 0;
      v12 = v5 * a3;
      v10 = 0.0;
      while (1)
      {
        v13 = a1[v11] + v10;
        if (v13 > v12)
        {
          break;
        }

        ++v11;
        v10 = v13;
        if (v9 == v11)
        {
          v10 = v13;
          goto LABEL_12;
        }
      }

      v9 = v11;
    }
  }

LABEL_12:
  v14 = v10 * v8;
  a4[1] = v10 * v8;
  v15 = &a1[v9];
  v16 = (*v15 + v10) * v8;
  a4[2] = v16;
  if (v9)
  {
    v17 = (v10 - *(v15 - 1)) * v8;
  }

  else
  {
    v17 = -(v16 + v14 * -2.0);
  }

  *a4 = v17;
  if (v9 + 1 >= a2)
  {
    v18 = -(v14 + v16 * -2.0);
  }

  else
  {
    v18 = (*v15 + v10 + a1[(v9 + 1)]) * v8;
  }

  a4[3] = v18;
  return v9;
}

uint64_t applyValueFunction(CAValueFunction *a1, objc_object *a2, CAPropertyAnimation *a3, objc_object *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = [(CAValueFunction *)a1 inputCount];
  v9 = v8;
  if (v8 >= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v8;
  }

  v11 = [(CAValueFunction *)a1 outputCount];
  memset(v26, 0, sizeof(v26));
  if (v9)
  {
    if (v9 == 1)
    {
      [(objc_object *)a2 doubleValue];
      *&v26[0] = v12;
    }

    else
    {
      v13 = 0;
      do
      {
        [-[objc_object objectAtIndex:](a2 objectAtIndex:{v13), "doubleValue"}];
        *(v26 + v13++) = v14;
      }

      while (v10 != v13);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17[0] = a3;
  v17[1] = a4;
  [(CAValueFunction *)a1 apply:v26 result:&v18 parameterFunction:functionParam context:v17];
  if (v11 == 2)
  {
    return [MEMORY[0x1E696B098] valueWithPoint:v18];
  }

  if (v11 == 1)
  {
    return [MEMORY[0x1E696AD98] numberWithDouble:*&v18];
  }

  if (v11 < 0x10)
  {
    return 0;
  }

  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v16[5] = v23;
  v16[6] = v24;
  v16[7] = v25;
  return [MEMORY[0x1E696B098] valueWithCATransform3D:v16];
}

double functionParam(int a1, NSString *a2, id *a3)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0.0;
    }

    ++a3;
  }

  v5 = [*a3 valueForKeyPath:{a2, v3}];

  [v5 doubleValue];
  return result;
}

uint64_t set_layer_transform(void *a1, uint64_t a2, int a3)
{
  v5 = [MEMORY[0x1E696B098] valueWithBytes:a2 objCType:"{CATransform3D=dddddddddddddddd}"];
  if (a3)
  {
    v5 = [v5 CA_addValue:objc_msgSend(a1 multipliedBy:{"valueForKey:", @"transform", 1}];
  }

  return [a1 setValue:v5 forKey:@"transform"];
}

void sub_183D8D820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9)
{
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v11 + 16))(v11);
  }

  if (a9 && atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*a9 + 16))(a9);
  }

  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v10 + 16))(v10);
  }

  if (v9)
  {
    if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }
  }

  _Unwind_Resume(exception_object);
}

IMP cons_CAAnimation_kCAValueCornerRadii(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e67__CACornerRadii__CGSize_dd__CGSize_dd__CGSize_dd__CGSize_dd__16__0_8l;
    v4 = ___ZL36cons_CAAnimation_kCAValueCornerRadiijb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e70_v80__0_8_CACornerRadii__CGSize_dd__CGSize_dd__CGSize_dd__CGSize_dd__16l;
    v4 = ___ZL36cons_CAAnimation_kCAValueCornerRadiijb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

void ___ZL36cons_CAAnimation_kCAValueCornerRadiijb_block_invoke(uint64_t a1@<X0>, CA::Transaction *a2@<X1>, CA::Mat4Impl *a3@<X8>)
{
  v4 = *(a1 + 32);
  *a3 = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  CAAnimation_getter(a2, v4, 0x19, a3);
}

void ___ZL36cons_CAAnimation_kCAValueCornerRadiijb_block_invoke_2(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  v6 = a3[3];
  v7[2] = a3[2];
  v7[3] = v6;
  CAAnimation_setter(a2, v4, 25, v7);
}

IMP cons_CAAnimation_kCAValuePoint3D(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e22__CAPoint3D_ddd_16__0_8l;
    v4 = ___ZL32cons_CAAnimation_kCAValuePoint3Djb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e25_v40__0_8_CAPoint3D_ddd_16l;
    v4 = ___ZL32cons_CAAnimation_kCAValuePoint3Djb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL32cons_CAAnimation_kCAValuePoint3Djb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  memset(v5, 0, 24);
  CAAnimation_getter(a2, v3, 0x18, v5);
  return *v5;
}

void ___ZL32cons_CAAnimation_kCAValuePoint3Djb_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  CAAnimation_setter(a2, v6, 24, v7);
}

IMP cons_CAAnimation_kCAValueAffineTransform(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e33__CGAffineTransform_dddddd_16__0_8l;
    v4 = ___ZL40cons_CAAnimation_kCAValueAffineTransformjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e36_v64__0_8_CGAffineTransform_dddddd_16l;
    v4 = ___ZL40cons_CAAnimation_kCAValueAffineTransformjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

void ___ZL40cons_CAAnimation_kCAValueAffineTransformjb_block_invoke(uint64_t a1@<X0>, CA::Transaction *a2@<X1>, CA::Mat4Impl *a3@<X8>)
{
  v4 = *(a1 + 32);
  *a3 = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  CAAnimation_getter(a2, v4, 0x17, a3);
}

void ___ZL40cons_CAAnimation_kCAValueAffineTransformjb_block_invoke_2(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  v6[2] = a3[2];
  CAAnimation_setter(a2, v4, 23, v6);
}

IMP cons_CAAnimation_kCAValueTransform(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e39__CATransform3D_dddddddddddddddd_16__0_8l;
    v4 = ___ZL34cons_CAAnimation_kCAValueTransformjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e43_v144__0_8_CATransform3D_dddddddddddddddd_16l;
    v4 = ___ZL34cons_CAAnimation_kCAValueTransformjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

void ___ZL34cons_CAAnimation_kCAValueTransformjb_block_invoke(uint64_t a1@<X0>, CA::Transaction *a2@<X1>, CA::Mat4Impl *a3@<X8>)
{
  v4 = *(a1 + 32);
  *a3 = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  *(a3 + 6) = 0u;
  *(a3 + 7) = 0u;
  CAAnimation_getter(a2, v4, 0x16, a3);
}

void ___ZL34cons_CAAnimation_kCAValueTransformjb_block_invoke_2(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3[5];
  v9[4] = a3[4];
  v9[5] = v5;
  v6 = a3[7];
  v9[6] = a3[6];
  v9[7] = v6;
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  v8 = a3[3];
  v9[2] = a3[2];
  v9[3] = v8;
  CAAnimation_setter(a2, v4, 22, v9);
}

IMP cons_CAAnimation_kCAValueRect(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e39__CGRect__CGPoint_dd__CGSize_dd__16__0_8l;
    v4 = ___ZL29cons_CAAnimation_kCAValueRectjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e42_v48__0_8_CGRect__CGPoint_dd__CGSize_dd__16l;
    v4 = ___ZL29cons_CAAnimation_kCAValueRectjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL29cons_CAAnimation_kCAValueRectjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  memset(v5, 0, sizeof(v5));
  CAAnimation_getter(a2, v3, 0x15, v5);
  return *v5;
}

void ___ZL29cons_CAAnimation_kCAValueRectjb_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  *v8 = a3;
  *&v8[1] = a4;
  *&v8[2] = a5;
  *&v8[3] = a6;
  CAAnimation_setter(a2, v7, 21, v8);
}

IMP cons_CAAnimation_kCAValueSize(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e18__CGSize_dd_16__0_8l;
    v4 = ___ZL29cons_CAAnimation_kCAValueSizejb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e21_v32__0_8_CGSize_dd_16l;
    v4 = ___ZL29cons_CAAnimation_kCAValueSizejb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL29cons_CAAnimation_kCAValueSizejb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  CAAnimation_getter(a2, v3, 0x14, v5);
  return *v5;
}

void ___ZL29cons_CAAnimation_kCAValueSizejb_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  *v6 = a3;
  *&v6[1] = a4;
  CAAnimation_setter(a2, v5, 20, v6);
}

IMP cons_CAAnimation_kCAValuePoint(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e19__CGPoint_dd_16__0_8l;
    v4 = ___ZL30cons_CAAnimation_kCAValuePointjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e22_v32__0_8_CGPoint_dd_16l;
    v4 = ___ZL30cons_CAAnimation_kCAValuePointjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL30cons_CAAnimation_kCAValuePointjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  CAAnimation_getter(a2, v3, 0x13, v5);
  return *v5;
}

void ___ZL30cons_CAAnimation_kCAValuePointjb_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  *v6 = a3;
  *&v6[1] = a4;
  CAAnimation_setter(a2, v5, 19, v6);
}

IMP cons_CAAnimation_kCAValueDouble(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_d16__0_8l;
    v4 = ___ZL31cons_CAAnimation_kCAValueDoublejb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8d16l;
    v4 = ___ZL31cons_CAAnimation_kCAValueDoublejb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

double ___ZL31cons_CAAnimation_kCAValueDoublejb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 0x12, v5);
  return *v5;
}

void ___ZL31cons_CAAnimation_kCAValueDoublejb_block_invoke_2(uint64_t a1, uint64_t a2, double a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  *v5 = a3;
  CAAnimation_setter(a2, v4, 18, v5);
}

IMP cons_CAAnimation_kCAValueFloat(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_f16__0_8l;
    v4 = ___ZL30cons_CAAnimation_kCAValueFloatjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8f16l;
    v4 = ___ZL30cons_CAAnimation_kCAValueFloatjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

float ___ZL30cons_CAAnimation_kCAValueFloatjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 0.0;
  CAAnimation_getter(a2, v3, 0x11, &v5);
  return v5;
}

void ___ZL30cons_CAAnimation_kCAValueFloatjb_block_invoke_2(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  CAAnimation_setter(a2, v4, 17, &v5);
}

IMP cons_CAAnimation_kCAValueUnsignedLongLong(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_Q16__0_8l;
    v4 = ___ZL41cons_CAAnimation_kCAValueUnsignedLongLongjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8Q16l;
    v4 = ___ZL41cons_CAAnimation_kCAValueUnsignedLongLongjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL41cons_CAAnimation_kCAValueUnsignedLongLongjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 0x10, v5);
  return v5[0];
}

void ___ZL41cons_CAAnimation_kCAValueUnsignedLongLongjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 16, v5);
}

IMP cons_CAAnimation_kCAValueLongLong(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_q16__0_8l;
    v4 = ___ZL33cons_CAAnimation_kCAValueLongLongjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8q16l;
    v4 = ___ZL33cons_CAAnimation_kCAValueLongLongjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL33cons_CAAnimation_kCAValueLongLongjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 0xF, v5);
  return v5[0];
}

void ___ZL33cons_CAAnimation_kCAValueLongLongjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 15, v5);
}

IMP cons_CAAnimation_kCAValueUnsignedLong(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_Q16__0_8l;
    v4 = ___ZL37cons_CAAnimation_kCAValueUnsignedLongjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8Q16l;
    v4 = ___ZL37cons_CAAnimation_kCAValueUnsignedLongjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL37cons_CAAnimation_kCAValueUnsignedLongjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 0xE, v5);
  return v5[0];
}

void ___ZL37cons_CAAnimation_kCAValueUnsignedLongjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 14, v5);
}

IMP cons_CAAnimation_kCAValueLong(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_q16__0_8l;
    v4 = ___ZL29cons_CAAnimation_kCAValueLongjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8q16l;
    v4 = ___ZL29cons_CAAnimation_kCAValueLongjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL29cons_CAAnimation_kCAValueLongjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 0xD, v5);
  return v5[0];
}

void ___ZL29cons_CAAnimation_kCAValueLongjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 13, v5);
}

IMP cons_CAAnimation_kCAValueUnsignedInt(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_I16__0_8l;
    v4 = ___ZL36cons_CAAnimation_kCAValueUnsignedIntjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8I16l;
    v4 = ___ZL36cons_CAAnimation_kCAValueUnsignedIntjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL36cons_CAAnimation_kCAValueUnsignedIntjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 0;
  CAAnimation_getter(a2, v3, 0xC, &v5);
  return v5;
}

void ___ZL36cons_CAAnimation_kCAValueUnsignedIntjb_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  CAAnimation_setter(a2, v4, 12, &v5);
}

IMP cons_CAAnimation_kCAValueInt(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_i16__0_8l;
    v4 = ___ZL28cons_CAAnimation_kCAValueIntjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8i16l;
    v4 = ___ZL28cons_CAAnimation_kCAValueIntjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL28cons_CAAnimation_kCAValueIntjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 0;
  CAAnimation_getter(a2, v3, 0xB, &v5);
  return v5;
}

void ___ZL28cons_CAAnimation_kCAValueIntjb_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  CAAnimation_setter(a2, v4, 11, &v5);
}

IMP cons_CAAnimation_kCAValueUnsignedShort(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_S16__0_8l;
    v4 = ___ZL38cons_CAAnimation_kCAValueUnsignedShortjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8S16l;
    v4 = ___ZL38cons_CAAnimation_kCAValueUnsignedShortjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL38cons_CAAnimation_kCAValueUnsignedShortjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 0;
  CAAnimation_getter(a2, v3, 0xA, &v5);
  return v5;
}

void ___ZL38cons_CAAnimation_kCAValueUnsignedShortjb_block_invoke_2(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  CAAnimation_setter(a2, v4, 10, &v5);
}

IMP cons_CAAnimation_kCAValueShort(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_s16__0_8l;
    v4 = ___ZL30cons_CAAnimation_kCAValueShortjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8s16l;
    v4 = ___ZL30cons_CAAnimation_kCAValueShortjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL30cons_CAAnimation_kCAValueShortjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 0;
  CAAnimation_getter(a2, v3, 9, &v5);
  return v5;
}

void ___ZL30cons_CAAnimation_kCAValueShortjb_block_invoke_2(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  CAAnimation_setter(a2, v4, 9, &v5);
}

IMP cons_CAAnimation_kCAValueUnsignedChar(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_C16__0_8l;
    v4 = ___ZL37cons_CAAnimation_kCAValueUnsignedCharjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8C16l;
    v4 = ___ZL37cons_CAAnimation_kCAValueUnsignedCharjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL37cons_CAAnimation_kCAValueUnsignedCharjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 0;
  CAAnimation_getter(a2, v3, 8, &v5);
  return v5;
}

void ___ZL37cons_CAAnimation_kCAValueUnsignedCharjb_block_invoke_2(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  CAAnimation_setter(a2, v4, 8, &v5);
}

IMP cons_CAAnimation_kCAValueChar(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_c16__0_8l;
    v4 = ___ZL29cons_CAAnimation_kCAValueCharjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8c16l;
    v4 = ___ZL29cons_CAAnimation_kCAValueCharjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL29cons_CAAnimation_kCAValueCharjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 0;
  CAAnimation_getter(a2, v3, 7, &v5);
  return v5;
}

void ___ZL29cons_CAAnimation_kCAValueCharjb_block_invoke_2(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  CAAnimation_setter(a2, v4, 7, &v5);
}

IMP cons_CAAnimation_kCAValueBool(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_B16__0_8l;
    v4 = ___ZL29cons_CAAnimation_kCAValueBooljb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8B16l;
    v4 = ___ZL29cons_CAAnimation_kCAValueBooljb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL29cons_CAAnimation_kCAValueBooljb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 0;
  CAAnimation_getter(a2, v3, 6, &v5);
  return v5;
}

void ___ZL29cons_CAAnimation_kCAValueBooljb_block_invoke_2(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  CAAnimation_setter(a2, v4, 6, &v5);
}

IMP cons_CAAnimation_kCAValueBlock(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL30cons_CAAnimation_kCAValueBlockjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL30cons_CAAnimation_kCAValueBlockjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL30cons_CAAnimation_kCAValueBlockjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 5, v5);
  return v5[0];
}

void ___ZL30cons_CAAnimation_kCAValueBlockjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 5, v5);
}

IMP cons_CAAnimation_kCAValueCopiedPointer(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL38cons_CAAnimation_kCAValueCopiedPointerjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL38cons_CAAnimation_kCAValueCopiedPointerjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL38cons_CAAnimation_kCAValueCopiedPointerjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 3, v5);
  return v5[0];
}

void ___ZL38cons_CAAnimation_kCAValueCopiedPointerjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 3, v5);
}

IMP cons_CAAnimation_kCAValueRetainedPointer(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL40cons_CAAnimation_kCAValueRetainedPointerjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL40cons_CAAnimation_kCAValueRetainedPointerjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL40cons_CAAnimation_kCAValueRetainedPointerjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 2, v5);
  return v5[0];
}

void ___ZL40cons_CAAnimation_kCAValueRetainedPointerjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 2, v5);
}

IMP cons_CAAnimation_kCAValueAssignedPointer(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL40cons_CAAnimation_kCAValueAssignedPointerjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL40cons_CAAnimation_kCAValueAssignedPointerjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t ___ZL40cons_CAAnimation_kCAValueAssignedPointerjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 1, v5);
  return v5[0];
}

void ___ZL40cons_CAAnimation_kCAValueAssignedPointerjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 1, v5);
}

CA::Shape **CA::WindowServer::Server::render_surface(CA::WindowServer::Display **this, CA::Render::Update *a2, CA::WindowServer::Surface *a3, const CA::Bounds *a4, uint64_t a5, int a6)
{
  result = CA::WindowServer::Server::sw_renderer(this);
  if (result)
  {
    v13 = result;
    *(this[12] + 226) |= 0x400u;
    v14 = CA::WindowServer::Display::render_surface(this[12], result, a3, a2, a4, a5, a6);
    CA::OGL::Renderer::collect(v13, a2, *(a2 + 10));
    return v14;
  }

  return result;
}

uint64_t CA::WindowServer::Server::sw_renderer(CA::WindowServer::Server *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*(this + 25))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v2 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x5210uLL, 0xDEEC3011uLL);
    v3 = v2;
    if (v2)
    {
      bzero(v2, 0x5210uLL);
      CA::OGL::Context::Context(v3);
      *v3 = &unk_1EF201918;
    }

    *(this + 24) = v3;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v4 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
    v5 = v4;
    if (v4)
    {
      v6 = *(this + 24);
      v4[1] = 0;
      v4[2] = 0;
      *v4 = v6;
      v4[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
      v5[7] = 0;
      *(v5 + 24) = 1;
      *(v5 + 50) = 0;
    }

    *(this + 25) = v5;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_183AA6000, v7, OS_LOG_TYPE_FAULT, "Failed to initialize Metal or OpenGLES contexts!", v12, 2u);
    }
  }

  v8 = *(this + 24);
  v9 = *(this + 46);
  v10 = *(v8 + 632);
  *(v8 + 632) = v9;
  *(v8 + 872) = global_feature_flags | v9;
  if (((v10 ^ v9) & 0x2000200) != 0)
  {
    CA::OGL::Context::update_color_program_cache(v8);
  }

  return *(this + 25);
}

os_log_t ___Z22x_log_get_windowserverv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "WindowServer");
  x_log_get_windowserver(void)::log = result;
  return result;
}

CA::Shape **CA::WindowServer::Server::render_update(CA::WindowServer::Display **this, CA::Render::Update *a2, unsigned int *a3)
{
  result = CA::WindowServer::Server::sw_renderer(this);
  if (result)
  {
    v6 = result;
    *(this[12] + 226) |= 0x400u;
    v7 = this[12];

    return CA::WindowServer::Display::render_display(v7, v6, a2);
  }

  return result;
}

void CA::WindowServer::Server::report_car_play_regions(CA::WindowServer::Server *this, const CA::Render::Update *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 140);
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    v7 = *(this + 13);
    if (v7)
    {
      CFDictionarySetValue(Mutable, @"display_name", v7);
    }

    v26 = 0u;
    v27 = 0u;
    *cStr = 0u;
    v25 = 0u;
    v23 = this;
    if ((*(**(this + 12) + 816))())
    {
      v8 = CFStringCreateWithCString(0, cStr, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(v6, @"display_uuid", v8);
        CFRelease(v9);
      }
    }

    v10 = CAHostTimeWithTime(*(a2 + 105));
    CA_CFDictionarySetLongLong(v6, @"presentation_host_time", v10);
    if (*&time_scale == 0.0 && time_scale_once[0] != -1)
    {
      dispatch_once_f(time_scale_once, 0, initialize_time_scale);
    }

    theDict = v6;
    CA_CFDictionarySetLongLong(v6, @"presentation_ntp_time", (((v10 % (1000000000 * timebase / timebase)) << 32) / (1000000000 * timebase / timebase)) | ((v10 / (1000000000 * timebase / timebase)) << 32));
    v11 = MEMORY[0x1E695E9C0];
    v12 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v13 = *MEMORY[0x1E695E4D0];
    v14 = *MEMORY[0x1E695E4C0];
    do
    {
      v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v16 = v15;
      v17 = *(v2 + 1);
      if (v17)
      {
        CFDictionarySetValue(v15, @"identifier", v17);
      }

      v18 = CFArrayCreateMutable(0, 0, v11);
      CA_CFArrayAppendDouble(v18, v2[2]);
      CA_CFArrayAppendDouble(v18, v2[3]);
      CA_CFArrayAppendDouble(v18, v2[4]);
      CA_CFArrayAppendDouble(v18, v2[5]);
      CFDictionarySetValue(v16, @"bounds", v18);
      CFRelease(v18);
      v19 = CFArrayCreateMutable(0, 0, v11);
      for (i = 6; i != 22; ++i)
      {
        CA_CFArrayAppendDouble(v19, v2[i]);
      }

      CFDictionarySetValue(v16, @"transform", v19);
      CFRelease(v19);
      CA_CFDictionarySetDouble(v16, @"corner_radius", v2[22]);
      if (*(v2 + 192))
      {
        v21 = v13;
      }

      else
      {
        v21 = v14;
      }

      CFDictionarySetValue(v16, @"continuous_corners", v21);
      CA_CFDictionarySetDouble(v16, @"opacity", *(v2 + 47));
      CA_CFDictionarySetDouble(v16, @"cumulative_opacity", *(v2 + 46));
      CFArrayAppendValue(v12, v16);
      CFRelease(v16);
      v2 = *v2;
    }

    while (v2);
    CFDictionarySetValue(theDict, @"regions", v12);
    CFRelease(v12);
    [*(v23 + 62) sendLayerProperties:theDict];
    CFRelease(theDict);
  }
}

void CA::WindowServer::Server::blanked_render_sil_indicators(CA::WindowServer::Server *this, double a2, CA::Render::Context **a3)
{
  v3 = MEMORY[0x1EEE9AC00](this);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v10 = v9;
  v12 = v11;
  v32 = *MEMORY[0x1E69E9840];
  *v11 = 0x7FF0000000000000;
  *(v11 + 8) = vdupq_n_s64(0x100000000000uLL);
  v13 = *(v9 + 96);
  bzero(v25, 0x570uLL);
  CA::Render::Update::Update(v25, v28, 0x2000uLL, v8, 0, 0, 0, 0, (v13 + 200), *(v10 + 184));
  if (v25[0])
  {
    v26[13] = COERCE_CA_SHAPE_((*(**(v10 + 96) + 768))(*(v10 + 96)));
    v26[37] = (*(**(v10 + 96) + 1416))();
    v27 |= 0x400uLL;
    v24[0] = 0;
    v24[1] = 0;
    CA::Render::Fence::BatchWaitLock::BatchWaitLock(v24);
    if (v5)
    {
      v15 = v7 - 8;
      do
      {
        v16 = *(v15 + 8 * v5);
        pthread_mutex_lock((v16 + 72));
        if ((*(v16 + 14) & 0x802) != 0)
        {
          CA::Render::Update::add_context(v25, v16);
        }

        pthread_mutex_unlock((v16 + 72));
        --v5;
      }

      while (v5);
    }

    CA::Render::Fence::BatchWaitLock::invalidate(v24);
    CA::Render::Update::added_all_contexts(v25, v17, v18);
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    CA::Shape::operator=(v29, (v13 + 200));
    CA::shape_union(v26, v29, v19);
    v20 = v26[9];
    v21 = v26[10];
    v12[2] = v26[11] | 0x100000000000;
    if (v20 != 0xFFF0000000000000 && ((v20 & 0x7FFFFFFFFFFFFFFFLL) - 0x10000000000000) >> 53 >= 0x3FF && (v20 & 0x7FFFFFFFFFFFFFFFLL) - 1 >= 0xFFFFFFFFFFFFFLL)
    {
      v21 |= 0x100000000000uLL;
    }

    v12[1] = v21;
    *v12 = v20;
    if ((*(**(v10 + 96) + 216))(*(v10 + 96)))
    {
      LODWORD(v29[0]) = 3;
      (*(**(v10 + 96) + 400))(*(v10 + 96), v25);
      (*(*v10 + 472))(v10, v25, v29);
      (*(**(v10 + 96) + 408))();
    }

    CA::Render::Fence::BatchWaitLock::invalidate(v24);
  }

  CA::Render::Update::~Update(v25, v14);
}

uint64_t CA::WindowServer::Server::RenderIntervalInfo::render_status_to_legacy_reason_code(uint64_t result)
{
  if (result > 244)
  {
    if (result <= 247)
    {
      if (result == 245)
      {
        return 2;
      }

      else if (result == 246)
      {
        return 6;
      }

      else
      {
        return 1;
      }
    }

    else if ((result - 250) < 6 || result == 248)
    {
      return 3;
    }

    else
    {
      if (result != 249)
      {
        return 0xFFFFFFFFLL;
      }

      return 4;
    }
  }

  else
  {
    if (result > 2)
    {
      return 0xFFFFFFFFLL;
    }

    if (result)
    {
      if (result == 1)
      {
        return 8;
      }

      else
      {
        if (result != 2)
        {
          return 0xFFFFFFFFLL;
        }

        return 5;
      }
    }
  }

  return result;
}

char *CA::WindowServer::show_layer_trees(char *this, uint64_t a2, double a3)
{
  v3 = *(a2 + 8);
  if (v3 != a2)
  {
    v6 = this;
    v7 = 0;
    do
    {
      X::Stream::printf(v6, "\n** Render #%d tree at time %f **\n\n", v7, a3);
      CA::Render::show_object(v6, *(v3 + 32));
      this = X::Stream::printf(v6, "\n");
      ++v7;
      v3 = *(v3 + 8);
    }

    while (v3 != a2);
  }

  return this;
}

void X::small_vector_base<X::Ref<CA::Render::Context>>::grow(uint64_t a1, unint64_t a2)
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

  v11 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
  v12 = v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (*a1 != v14)
  {
    v15 = v11;
    v16 = *a1;
    do
    {
      *v15++ = *v16;
      *v16++ = 0;
    }

    while (v16 != v14);
    do
    {
      v17 = *v13;
      if (*v13 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v17 + 16))(v17);
      }

      ++v13;
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

void *CA::WindowServer::find_layernode_for_handle(void *this, const CA::Render::LayerNode *a2, const CA::Render::Handle *a3)
{
  if (*(this[4] + 152) != a2)
  {
    v3 = (this + 12);
    v4 = this[13];
    if (v4 == (this + 12))
    {
      return 0;
    }

    else
    {
      while (1)
      {
        this = CA::WindowServer::find_layernode_for_handle(v4, a2, a3);
        if (this)
        {
          break;
        }

        v4 = *(v4 + 1);
        if (v4 == v3)
        {
          return 0;
        }
      }
    }
  }

  return this;
}

void CA::WindowServer::anonymous namespace::RenderDisplayDelegate::~RenderDisplayDelegate(CA::WindowServer::_anonymous_namespace_::RenderDisplayDelegate *this)
{
  *this = &unk_1EF200FB0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 8);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF200FB0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 8);
}

void CA::WindowServer::anonymous namespace::ExcludeDelegate::~ExcludeDelegate(CA::WindowServer::_anonymous_namespace_::ExcludeDelegate *this)
{
  *this = &unk_1EF200FB0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 8);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF200FB0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 8);
}

os_log_t ___Z21x_log_get_server_perfv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "WindowServer.Performance");
  x_log_get_server_perf(void)::log = result;
  return result;
}

void CA::WindowServer::Server::~Server(CA::WindowServer::Server *this)
{
  CA::WindowServer::Server::~Server(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF200D08;
  if ((*(this + 824) & 1) == 0)
  {
    __assert_rtn("~Server", "windowserver-server.cpp", 470, "_shutdown_called");
  }

  v2 = *(this + 22);
  if (v2)
  {
    CA::Shape::unref(v2);
  }

  v3 = *(this + 43);
  if (v3)
  {
    CA::Render::HitTestTree::unref(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    CA::OGL::Renderer::~Renderer(*(this + 25));
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v4);
  }

  v5 = *(this + 24);
  if (v5)
  {
    (*(*v5 + 272))(*(this + 24), 1);
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 12) = 0;
  if (*(this + 15))
  {
    v8 = *(this + 14);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v8);
  }

  if (*(this + 18))
  {
    v9 = *(this + 17);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v9);
  }

  v10 = *(this + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 62);
  if (v11)
  {
    [*(this + 62) invalidate];
  }

  v12 = *(this + 11);
  if (v12)
  {
    dispatch_release(v12);
  }

  pthread_mutex_destroy((this + 24));
  v13 = *(this + 74);
  if (v13 != *(this + 76))
  {
    free(v13);
  }

  pthread_mutex_destroy((this + 528));
  v14 = *(this + 63);
  if (v14)
  {
    v15 = *(this + 64);
    v16 = *(this + 63);
    if (v15 != v14)
    {
      do
      {
        v15 -= 26;
        std::__destroy_at[abi:nn200100]<CA::Render::ContentStreamConfig,0>(v15);
      }

      while (v15 != v14);
      v16 = *(this + 63);
    }

    *(this + 64) = v14;
    operator delete(v16);
  }
}

void std::__destroy_at[abi:nn200100]<CA::Render::ContentStreamConfig,0>(void *a1)
{
  v2 = a1[18];
  if (v2 != a1[20])
  {
    free(v2);
  }

  v3 = a1[10];
  if (v3 != a1[12])
  {

    free(v3);
  }
}

uint64_t CA::WindowServer::Server::displayed_surface(CA::WindowServer::Server *this)
{
  result = (*(**(this + 12) + 464))(*(this + 12), 1);
  if (result)
  {
    v2 = *(*result + 168);

    return v2();
  }

  return result;
}

void *CA::WindowServer::Server::shutdown(CA::WindowServer::Server *this)
{
  v13[3] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 24));
  if (*(this + 824) == 1)
  {

    return pthread_mutex_unlock((this + 24));
  }

  else
  {
    *(this + 824) = 1;
    pthread_mutex_unlock((this + 24));
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = 0x7FF0000000000000;
    (*(*this + 176))(this, v13, 0.0);
    CA::Render::remove_observer(1u, 0, CA::WindowServer::Server::context_created, this);
    CA::Render::remove_observer(0xCu, 0, CA::WindowServer::Server::ping_server, this);
    CA::Render::remove_observer(0x13u, 0, CA::WindowServer::Server::render_display, this);
    CA::Render::remove_observer(0x14u, 0, CA::WindowServer::Server::render_display_layer, this);
    CA::Render::remove_observer(0x15u, 0, CA::WindowServer::Server::render_display_context_list, this);
    CA::Render::remove_observer(0x1Au, 0, CA::WindowServer::Server::get_displays, this);
    CA::Render::remove_observer(0x1Bu, 0, CA::WindowServer::Server::get_display_info, this);
    CA::Render::remove_observer(0x1Cu, 0, CA::WindowServer::Server::get_display_edr_state, this);
    CA::Render::remove_observer(0x1Du, 0, CA::WindowServer::Server::get_display_logical_bounds, this);
    CA::Render::remove_observer(0x1Eu, 0, CA::WindowServer::Server::get_display_auto_luminance_boost, this);
    CA::Render::remove_observer(0x20u, 0, CA::WindowServer::Server::set_display_properties, this);
    CA::Render::remove_observer(0x22u, 0, CA::WindowServer::Server::set_display_user_prefs, this);
    CA::Render::remove_observer(0x23u, 0, CA::WindowServer::Server::set_display_latency, this);
    CA::Render::remove_observer(0x2Eu, 0, CA::WindowServer::Server::display_changed, this);
    CA::Render::remove_observer(0x26u, 0, CA::WindowServer::Server::purge_server, this);
    CA::Render::remove_observer(0x27u, 0, CA::WindowServer::Server::set_ax_matrix, this);
    CA::Render::remove_observer(0x2Fu, 0, CA::WindowServer::Server::get_debug_log, this);
    CA::Render::remove_observer(0x28u, 0, CA::WindowServer::Server::get_update_histograms, this);
    CA::Render::remove_observer(0x2Cu, 0, CA::WindowServer::Server::get_performance_info, this);
    if ((*(*(this + 12) + 640) & 0x40) != 0)
    {
      CA::Render::remove_observer(0xDu, 0, CA::WindowServer::Server::flipbook_render, this);
      CA::Render::remove_observer(0xEu, 0, CA::WindowServer::Server::flipbook_query_frame, this);
      CA::Render::remove_observer(0xFu, 0, CA::WindowServer::Server::flipbook_query_memory_usage, this);
      CA::Render::remove_observer(0x10u, 0, CA::WindowServer::Server::flipbook_copy_current_frame, this);
      CA::Render::remove_observer(0x11u, 0, CA::WindowServer::Server::flipbook_cancel, this);
      CA::Render::remove_observer(0x12u, 0, CA::WindowServer::Server::flipbook_modify, this);
    }

    CA::Render::remove_observer(0x33u, 0, CA::WindowServer::Server::get_surface_replaceability, this);
    CA::Render::remove_observer(0x3Eu, 0, CA::WindowServer::Server::content_stream_state_changed, this);
    CA::Render::remove_observer(0x3Fu, 0, CA::WindowServer::Server::content_stream_modified, this);
    CA::Render::remove_observer(0x40u, 0, CA::WindowServer::Server::get_display_state_shmem, this);
    CA::Render::remove_observer(0x41u, 0, CA::WindowServer::Server::set_display_state, this);
    CA::Render::remove_observer(0x42u, 0, CA::WindowServer::Server::set_display_cloning_state, this);
    CA::Render::remove_observer(0x48u, 0, CA::WindowServer::Server::disable_automatic_wireless_display_state_control, this);
    if ((*(*(this + 12) + 672) & 0x1C00) != 0)
    {
      CA::Render::remove_observer(0x3Bu, 0, CA::WindowServer::Server::get_active_display_count, this);
    }

    os_unfair_lock_lock(&CA::Render::Server::_callback_lock);
    v3 = CA::Render::Server::_callback_list;
    if (CA::Render::Server::_callback_list)
    {
      v4 = 0;
      v5 = &CA::Render::Server::_callback_list;
      do
      {
LABEL_11:
        v6 = v3;
        if (*(v3 + 24) == CA::WindowServer::Server::timer_callback)
        {
          while (v6[4] == this)
          {
            *v5 = *v6;
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, v6);
            v6 = *v5;
            if (!*v5)
            {
              goto LABEL_20;
            }

            v4 = 1;
            if (v6[3] != CA::WindowServer::Server::timer_callback)
            {
              v3 = *v6;
              v5 = *v5;
              if (*v6)
              {
                goto LABEL_11;
              }

LABEL_20:
              os_unfair_lock_unlock(&CA::Render::Server::_callback_lock);
              goto LABEL_21;
            }
          }
        }

        v3 = *v6;
        v5 = v6;
      }

      while (*v6);
      os_unfair_lock_unlock(&CA::Render::Server::_callback_lock);
      if (v4)
      {
LABEL_21:
        CA::Render::Server::kick_server(v12);
      }
    }

    else
    {
      os_unfair_lock_unlock(&CA::Render::Server::_callback_lock);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, this, @"kCADebugOptionsDidChange", 0);
    os_unfair_lock_lock(this + 4);
    if (*(this + 16))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        CA::WindowServer::Server::remove_observers(this, *(*(this + 14) + v8));
        ++v9;
        v8 += 16;
      }

      while (v9 < *(this + 16));
    }

    *(this + 16) = 0;
    os_unfair_lock_unlock(this + 4);
    CA::WindowServer::Server::destroy_blank_context(this);
    os_unfair_lock_lock(this + 82);
    v10 = *(this + 1);
    if (v10)
    {
      _Block_release(v10);
      *(this + 1) = 0;
    }

    os_unfair_lock_unlock(this + 82);
    v11 = *(this + 31);
    if (v11)
    {
      _Block_release(v11);
      *(this + 31) = 0;
    }

    CA::WindowServer::Server::set_pre_post_power_callback(this, 0);
    return CA::WindowServer::Server::set_pre_post_flipbook_callback(this, 0);
  }
}

void *CA::WindowServer::Server::set_pre_post_power_callback(uint64_t a1, const void *a2)
{
  result = *(a1 + 264);
  if (result != a2)
  {
    _Block_release(result);
    result = _Block_copy(a2);
    *(a1 + 264) = result;
  }

  return result;
}

void *CA::WindowServer::Server::set_pre_post_flipbook_callback(uint64_t a1, const void *a2)
{
  result = *(a1 + 272);
  if (result != a2)
  {
    _Block_release(result);
    result = _Block_copy(a2);
    *(a1 + 272) = result;
  }

  return result;
}

void CA::WindowServer::Server::context_ordered(CA::WindowServer::Server *this, CA::Render::Object *a2, CFDictionaryRef theDict, void *a4)
{
  v7 = *(a2 + 12);
  if ((*(v7 + 640) & 4) != 0)
  {
    for (i = *(v7 + 40); i; i = i[1])
    {
      if (*(*i + 144) >= 2uLL)
      {
        *(*i + 827) = 1;
      }
    }
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"siblingId");
    if (!Value)
    {
      return;
    }

    v10 = CA_CFIntValue(Value);
    v11 = CFDictionaryGetValue(theDict, @"above");
    if (v11)
    {
      v12 = CA_CFBoolValue(v11);
    }

    else
    {
      v12 = 0;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v16 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
    v14 = v16;
    if (v16)
    {
      *v16 = &unk_1EF2010B0;
      v16[2] = this;
      v16[3] = v10;
      *(v16 + 32) = v12;
    }
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v13 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
    v14 = v13;
    if (v13)
    {
      v15 = *(this + 48);
      v13[2] = this;
      *v13 = &unk_1EF201088;
      *(v13 + 6) = v15;
    }
  }

  os_unfair_lock_lock(a2 + 38);
  v14[1] = *(a2 + 20);
  *(a2 + 20) = v14;

  os_unfair_lock_unlock(a2 + 38);
}

void CA::WindowServer::Server::PendingOrderAbove::run(CA::WindowServer::Server::PendingOrderAbove *this, os_unfair_lock_s *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v5 = *(this + 32);
  if (v4 && v4 == *(v3 + 4))
  {
    return;
  }

  os_unfair_lock_lock(a2 + 4);
  v6 = *&a2[32]._os_unfair_lock_opaque;
  if (!v6)
  {
    goto LABEL_46;
  }

  v7 = 0;
  v8 = *&a2[28]._os_unfair_lock_opaque;
  v9 = v8;
  while (*v9 != v3)
  {
    ++v7;
    v9 += 2;
    if (v6 == v7)
    {
      goto LABEL_46;
    }
  }

  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_46;
  }

  v10 = (v8 + 16 * (v7 & 0x7FFFFFFF));
  v11 = v10[2];
  if (v6 < 1)
  {
    LODWORD(v12) = 0;
    if (v5)
    {
      v18 = *&a2[32]._os_unfair_lock_opaque;
    }

    else
    {
      v18 = 0;
    }

    v14 = *&a2[32]._os_unfair_lock_opaque;
    if (v4)
    {
LABEL_33:
      if (v18 <= v12)
      {
        v20 = v12;
      }

      else
      {
        v20 = v18;
      }

      if (v20 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v20;
      }
    }
  }

  else
  {
    v12 = 0;
    v13 = *&a2[32]._os_unfair_lock_opaque & 0x7FFFFFFFLL;
    v14 = v13;
    v15 = (v8 + 8);
    while (v11 > *v15)
    {
      ++v12;
      v15 += 4;
      if (v13 == v12)
      {
        v12 = *&a2[32]._os_unfair_lock_opaque;
        break;
      }
    }

    v16 = (v8 + 16 * v13 - 8);
    while (v11 < *v16)
    {
      v16 -= 4;
      if (v14-- <= 1)
      {
        LODWORD(v14) = 0;
        break;
      }
    }

    if (v5)
    {
      v18 = v14;
    }

    else
    {
      v18 = v12;
    }

    if (v4)
    {
      v19 = 0;
      while (v4 != *(*v8 + 16))
      {
        ++v19;
        v8 += 16;
        if (v13 == v19)
        {
          goto LABEL_33;
        }
      }

      v18 = v19 + v5;
      goto LABEL_33;
    }
  }

  if (v18 == v7 || v18 == v7 + 1)
  {
LABEL_46:

    os_unfair_lock_unlock(a2 + 4);
    return;
  }

  v21 = v6 + ~(v7 & 0x7FFFFFFF);
  if (v21 >= 1)
  {
    memmove(v10, v10 + 4, 16 * (v21 & 0x7FFFFFFF));
    v6 = *&a2[32]._os_unfair_lock_opaque;
  }

  *&a2[32]._os_unfair_lock_opaque = v6 - 1;
  CA::WindowServer::Server::context_insert(a2, v18 - (v18 > v7), v3, v11);
  os_unfair_lock_unlock(a2 + 4);

  CA::WindowServer::Server::invalidate_context(a2, v3);
}

void CA::WindowServer::Server::context_insert(CA::WindowServer::Server *this, unint64_t a2, CA::Render::Context *a3, float a4)
{
  v8 = *(this + 15);
  v7 = *(this + 16);
  if (v7 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = *(this + 16);
  }

  if (v7 + 1 > v8)
  {
    v10 = v8 + 2;
    if ((v8 + 2) >> 60)
    {
      v11 = 0;
      if (!v9)
      {
LABEL_15:
        v13 = &v11[16 * v9];
        *v13 = a3;
        v13[2] = a4;
        v14 = *(this + 16);
        v15 = v14 > v9;
        v16 = v14 - v9;
        if (v15)
        {
          memcpy(v13 + 4, (*(this + 14) + 16 * v9), 16 * v16);
        }

        v17 = *(this + 14);
        if (v17)
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v17);
        }

        *(this + 14) = v11;
        *(this + 15) = v10;
        goto LABEL_23;
      }
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v11 = malloc_type_zone_malloc(malloc_zone, 16 * v10, 0x10200403A5D3213uLL);
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    memcpy(v11, *(this + 14), 16 * v9);
    goto LABEL_15;
  }

  if (v7 > a2)
  {
    memmove((*(this + 14) + 16 * v9 + 16), (*(this + 14) + 16 * v9), 16 * (v7 - v9));
  }

  v12 = *(this + 14) + 16 * v9;
  *v12 = a3;
  *(v12 + 8) = a4;
LABEL_23:
  ++*(this + 16);
}

void CA::WindowServer::Server::invalidate_context(CA::WindowServer::Server *this, CA::Render::Context *a2)
{
  pthread_mutex_lock((a2 + 72));
  v4 = CA::Render::Context::root_layer_handle(a2);
  if (v4)
  {
    v6 = v4;
    v7 = CA::Shape::new_shape((v4 + 30), v5);
    *(v6 + 13) |= 2uLL;
    pthread_mutex_unlock((a2 + 72));
    if (v7)
    {
      CA::WindowServer::Server::invalidate(this, v7);

      CA::Shape::unref(v7);
    }
  }

  else
  {

    pthread_mutex_unlock((a2 + 72));
  }
}

void CA::WindowServer::Server::PendingOrderAbove::~PendingOrderAbove(CA::WindowServer::Server::PendingOrderAbove *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::WindowServer::Server::PendingOrderLevel::run(CA::WindowServer::Server::PendingOrderLevel *this, os_unfair_lock_s *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 6);
  os_unfair_lock_lock(a2 + 4);
  v5 = *&a2[32]._os_unfair_lock_opaque;
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *&a2[28]._os_unfair_lock_opaque;
  v8 = v7;
  while (*v8 != v3)
  {
    ++v6;
    v8 += 4;
    if (v5 == v6)
    {
      goto LABEL_8;
    }
  }

  if ((v6 & 0x80000000) == 0)
  {
    v7[4 * (v6 & 0x7FFFFFFF) + 2] = v4;
  }

LABEL_8:
  if (v5 == 1)
  {
LABEL_14:

    os_unfair_lock_unlock(a2 + 4);
  }

  else
  {
    v9 = v7[2];
    v10 = 2;
    if (v5 > 2)
    {
      v10 = v5;
    }

    v11 = v10 - 1;
    v12 = 6;
    while (1)
    {
      v13 = v9;
      v9 = v7[v12];
      if (v9 < v13)
      {
        break;
      }

      v12 += 4;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    mergesort(v7, v5, 0x10uLL, CA::WindowServer::Server::compare_levels);
    os_unfair_lock_unlock(a2 + 4);

    CA::WindowServer::Server::invalidate_context(a2, v3);
  }
}