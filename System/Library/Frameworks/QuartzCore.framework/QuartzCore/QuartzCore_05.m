CA::OGL::Context **CA::OGL::render_background(CA::OGL::Context **result, uint64_t a2, double a3, double a4, int8x16_t a5)
{
  v6 = result;
  v40 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 32);
  if ((v7 & 0x1000) != 0 && (*(*(a2 + 24) + 48) & 0x80) == 0)
  {
    result = CA::OGL::render_shadow_path(result, a2);
    if (byte_1ED4E9871)
    {
      return result;
    }

    v7 = *(a2 + 32);
  }

  if ((v7 & 0x200000000) != 0)
  {
    v8 = *v6;
    v9 = *(*v6 + 2);
    v10 = *(v9 + 496);
    if (v10 > 3 || v10 == 2)
    {
      *(v9 + 497) |= 1u;
    }

    v12 = *(a2 + 24);
    v13 = *(v12 + 136);
    if (v13)
    {
      v14 = *(v13 + 320);
      v15 = vcvt_f16_f32(*(v13 + 324));
      v16 = *(v13 + 344);
      v17 = *(v12 + 44) & 3;
      v18 = *(v13 + 232);
    }

    else
    {
      v15 = 0x3C00000000000000;
      v17 = *(v12 + 44) & 3;
      v14 = 0.0;
      v16 = 0.0;
      v18 = 0.0;
    }

    *a5.i64 = v18;
    v19 = 0.0;
    if ((*(v12 + 48) & 0x2000) != 0)
    {
      v19 = 1.0;
    }

    v20 = *(v12 + 88);
    v38 = *(v12 + 72);
    v39 = v20;
    v37 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v15), v16));
    result = CA::OGL::emit_rim_rounded_rect(v8, &v38, &v37, v17, *(*(v8 + 656) + 24), v14, v19, a5, *a5.i64);
  }

  v21 = *(a2 + 40);
  if ((v21 & 8) != 0)
  {
    v22 = **(*(a2 + 24) + 136);
    *&v38.f64[0] = &unk_1EF1F5980;
    *&v38.f64[1] = v6;
    *&v39 = a2;
    result = (*(*v22 + 232))(v22, &v38);
  }

  v23 = *(a2 + 32);
  if ((v23 & 0x20) != 0)
  {
    v24 = *(a2 + 24);
    v25 = vcvt_f16_f32(v24[1]);
    v26 = v24[2].f32[0];
    if ((*(a2 + 40) & 8) != 0)
    {
      v27 = *(*(a2 + 16) + 256);
      if (v27)
      {
        os_unfair_lock_lock((v27 + 52));
        v28 = *(v27 + 56);
        if (v28)
        {
          os_unfair_lock_lock((v28 + 40));
          v29 = *(v28 + 72);
          v30 = *(v28 + 80);
          if (v29 == v30)
          {
LABEL_29:
            LOBYTE(v31) = 0;
          }

          else
          {
            while (*v29 != *(v27 + 24) || *(v27 + 32) != *(v29 + 8) || *(v29 + 16) != *(v27 + 40))
            {
              v29 += 192;
              if (v29 == v30)
              {
                goto LABEL_29;
              }
            }

            v36 = *(v28 + 48);
            if (v36 && *(v36 + 8) == *v6)
            {
              v31 = (*(v36 + 224) >> 1) & 1;
            }

            else
            {
              LOBYTE(v31) = *(v29 + 180);
            }
          }

          os_unfair_lock_unlock((v28 + 40));
          os_unfair_lock_unlock((v27 + 52));
          if (v31)
          {
            v26 = 0.0;
            v32 = -1;
          }

          else
          {
            v32 = 0;
          }

          v25 = vbic_s8(v25, vdup_n_s16(v32));
        }

        else
        {
          os_unfair_lock_unlock((v27 + 52));
        }
      }
    }

    *&v38.f64[0] = v25;
    v33 = *(*(a2 + 24) + 136);
    if (v33)
    {
      v34 = *(v33 + 80);
    }

    else
    {
      v34 = 0;
    }

    result = CA::OGL::render_solid_background(v6, a2, &v38, v34, v26);
    v23 = *(a2 + 32);
  }

  if ((v21 & 8) == 0 && (v23 & 0x4000) != 0)
  {
    v35 = **(*(a2 + 24) + 136);
    *&v38.f64[0] = &unk_1EF1F5980;
    *&v38.f64[1] = v6;
    *&v39 = a2;
    return (*(*v35 + 232))(v35, &v38);
  }

  return result;
}

double CA::Transform::apply_to_point2(float64x2_t *this, double *a2, double *a3)
{
  v3 = LOBYTE(this[9].f64[0]);
  if ((v3 & 0x10) != 0)
  {
    *&result = *&CA::Mat4Impl::mat4_apply_to_point2(this, a2, a3);
    return result;
  }

  if ((LOBYTE(this[9].f64[0]) & 8) == 0)
  {
    if ((LOBYTE(this[9].f64[0]) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v7 = *a2;
    *a2 = -a2[1];
    *(a2 + 1) = v7;
    v3 = LOBYTE(this[9].f64[0]);
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = a2[1];
  *a2 = *a2 * this[8].f64[0];
  a2[1] = v6 * this[8].f64[0];
  v3 = LOBYTE(this[9].f64[0]);
  if ((v3 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v3 & 2) != 0)
  {
LABEL_5:
    *a2 = -*a2;
    v3 = LOBYTE(this[9].f64[0]);
  }

LABEL_6:
  v4 = a2[1];
  if (v3)
  {
    v4 = -v4;
    a2[1] = v4;
  }

  *a2 = *a2 + this[6].f64[0];
  result = v4 + this[6].f64[1];
  a2[1] = result;
  return result;
}

CA::OGL::Context *CA::OGL::emit_one_part_rect(CA::OGL::Context *result, uint64_t a2, const CA::Transform *a3, uint64_t a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v7 = *(*a2 + 16);
  v6 = *(*a2 + 24);
  if (v7 >= v6)
  {
    v8 = *(*a2 + 24);
  }

  else
  {
    v8 = *(*a2 + 16);
  }

  if (v8 > 0.0)
  {
    v13 = result;
    v28[0] = 0;
    v28[1] = 0;
    v15 = v5[1];
    v37.f64[0] = *v5;
    v14 = v37.f64[0];
    v37.f64[1] = v15;
    v16 = v37.f64[0] + v7;
    v17 = v15 + v6;
    v38 = v37.f64[0] + v7;
    v39 = v15 + v6;
    v18 = CA::OGL::Context::need_transparent_source(result) | ((a5 & 0x40000u) >> 18);
    if (*(a2 + 24) == 0)
    {
      *v30 = 0u;
      v19 = ((*(*(a2 + 8) + 144) >> 4) & 1) == 0;
      v20 = *(*(v13 + 82) + 8);
      v29[0] = v13;
      v29[1] = v20;
      memset(&v29[2], 0, 24);
      LOBYTE(v29[4]) = v19;
      BYTE1(v29[4]) = 1;
      CA::OGL::Context::ClippedArray::start(v29);
      while (1)
      {
        result = CA::OGL::Context::ClippedArray::next_rect(v29, v28);
        if (!result)
        {
          break;
        }

        CA::OGL::emit_quad(v13, &v37, v28, *(a2 + 8), a3, a4, v21);
      }
    }

    else
    {
      v22 = *(v13 + 17);
      v29[0] = *&v37.f64[0];
      *&v29[1] = v15;
      *&v29[4] = v16;
      *v30 = v15;
      v31 = v37.f64[0];
      v32 = v17;
      v34 = v16;
      v35 = v17;
      v36 = xmmword_183E20E60;
      v33 = xmmword_183E20E60;
      *&v30[8] = xmmword_183E20E60;
      *&v29[2] = xmmword_183E20E60;
      if (a3)
      {
        v22[1].i32[0] = *a3;
        v22[1].i32[1] = *(a3 + 1);
        v22[4].i32[0] = *(a3 + 2);
        v22[4].i32[1] = *(a3 + 1);
        v22[7].i32[0] = *a3;
        v22[7].i32[1] = *(a3 + 3);
        v22[10].i32[0] = *(a3 + 2);
        v22[10].i32[1] = *(a3 + 3);
      }

      if (a4)
      {
        v22[1].i32[2] = *a4;
        v22[1].i32[3] = *(a4 + 4);
        v22[4].i32[2] = *(a4 + 8);
        v22[4].i32[3] = *(a4 + 4);
        v22[7].i32[2] = *a4;
        v22[7].i32[3] = *(a4 + 12);
        v22[10].i32[2] = *(a4 + 8);
        v22[10].i32[3] = *(a4 + 12);
      }

      v23 = *(*(v13 + 2) + 8);
      v22[2].i64[0] = v23;
      v22[5].i64[0] = v23;
      v22[8].i64[0] = v23;
      v22[11].i64[0] = v23;
      v24 = *(a2 + 24);
      if (v24)
      {
        v24(a2, v29, v22, 4);
      }

      CA::OGL::transform_vertices(v29, v22, 4, *(a2 + 8));
      v25 = *(a2 + 32);
      if (v25)
      {
        v25(a2, v22, 4);
      }

      result = CA::OGL::emit_quad_indices(v13, *(a2 + 40), CA::OGL::emit_one_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,float const*,float const*,unsigned int)::indices, 4uLL, 4u);
    }

    if (v18)
    {
      *v29 = v14;
      *&v29[1] = v15;
      *&v29[4] = v16;
      *v30 = v15;
      v31 = v16;
      v32 = v17;
      v34 = v14;
      v35 = v17;
      v36 = xmmword_183E20E60;
      v33 = xmmword_183E20E60;
      *&v30[8] = xmmword_183E20E60;
      *&v29[2] = xmmword_183E20E60;
      CA::Transform::apply_to_point4(*(a2 + 8), v29, v29, 4);
      if ((a5 & 0x40000) != 0)
      {
        v26 = *(*(v13 + 2) + 8);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      return CA::OGL::emit_quad_surround(v13, v29, &v27);
    }
  }

  return result;
}

uint64_t CA::OGL::fill_color_rect(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, double a7, int8x16_t a8)
{
  v11 = result;
  v25 = *MEMORY[0x1E69E9840];
  v12 = a3 & 0xFFFF7FFF;
  if (a4 && (BYTE1(xmmword_1ED4E97DC) & 1) != 0)
  {
    v17 = *(*(result + 656) + 24);
    v18 = a2;
    v19 = v17;
    v20 = a3 & 0xFFFF7FFF;
    v24 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    result = CA::OGL::fill_color_rect(result, &v18, 0x80800080, a7, a8);
  }

  if (BYTE2(ca_debug_options) == 1)
  {
    v14 = *(*(v11 + 656) + 24);
    v18 = a2;
    v19 = v14;
    v20 = v12;
    if (a5)
    {
      v15 = 2147483776;
    }

    else
    {
      v15 = 8388736;
    }

    v24 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    result = CA::OGL::fill_color_rect(v11, &v18, v15, a7, a8);
  }

  if (byte_1ED4E984F == 1 && a6 != 0)
  {
    v16 = *(*(v11 + 656) + 24);
    v18 = a2;
    v19 = v16;
    v20 = v12;
    v24 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    return CA::OGL::fill_color_rect(v11, &v18, CA::OGL::velocity_debug_color(CA::Render::VelocityBucket)::velocity_colors[a6], a7, a8);
  }

  return result;
}

int8x16_t CA::OGL::simple_texcoords(CA::OGL *this, float *a2, float *a3, float *a4, const CA::Transform *a5)
{
  if (this)
  {
    v5 = *(a4 + 144);
    *a2 = *this;
    if ((v5 & 4) != 0)
    {
      *a3 = *(this + 3);
      a2[1] = *this;
      v6 = (this + 4);
      a3[1] = *(this + 1);
      v7 = (this + 8);
    }

    else
    {
      *a3 = *(this + 1);
      a2[1] = *(this + 2);
      a3[1] = *(this + 1);
      v6 = (this + 12);
      v7 = this;
    }

    a2[2] = *(this + 2);
    a3[2] = *v6;
    a2[3] = *v7;
    result.i32[0] = *(this + 3);
    a3[3] = *result.i32;
    v9 = *(a4 + 144);
    if ((v9 & 2) != 0)
    {
      *a2 = vrev64q_s32(*a2);
      result = vrev64q_s32(*a3);
      *a3 = result;
      v9 = *(a4 + 144);
    }

    if (v9)
    {
      v10 = vrev64q_s32(*a2);
      *a2 = vextq_s8(v10, v10, 8uLL);
      v11 = vrev64q_s32(*a3);
      result = vextq_s8(v11, v11, 8uLL);
      *a3 = result;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *a3 = 0;
    *(a3 + 1) = 0;
  }

  return result;
}

CA::OGL::Context *CA::OGL::fill_round_rect(CA::OGL::Context *result, float64x2_t **a2, double *a3, uint64_t a4, float64_t a5, float64_t a6)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v6 = (*a2)[1].f64[0];
  if (v6 >= (*a2)[1].f64[1])
  {
    v6 = (*a2)[1].f64[1];
  }

  if (v6 > 0.0)
  {
    v7 = a4;
    v8 = a3;
    v10 = result;
    v46 = 0;
    v11 = a2[1];
    if ((LOBYTE(v11[9].f64[0]) & 0x10) != 0)
    {
      v14 = vaddvq_f64(vmulq_f64(*v11, *v11));
      v15 = vaddvq_f64(vmulq_f64(v11[2], v11[2]));
      v16 = v11[7].f64[1];
      if (v16 != 1.0)
      {
        v17 = 1.0 / (v16 * v16);
        v14 = v17 * v14;
        v15 = v17 * v15;
      }

      v18 = v14 != 1.0;
      if (v15 != 1.0)
      {
        v18 = 1;
      }

      v19 = sqrt(v14);
      v13 = sqrt(v15);
      if (v18)
      {
        v12 = v19;
      }

      else
      {
        v13 = v15;
        v12 = v14;
      }
    }

    else
    {
      v12 = v11[8].f64[0];
      v13 = v12;
    }

    v20.f64[0] = a5;
    v20.f64[1] = a6;
    v21 = vmulq_f64(v20, vdupq_n_s64(0x3FF875696E58A32FuLL));
    if (a4)
    {
      v22 = v21.f64[0];
    }

    else
    {
      v22 = a5;
    }

    if (a4)
    {
      v23 = v21.f64[1];
    }

    else
    {
      v23 = a6;
    }

    v24 = v12 * v22;
    if (v12 * v22 < v13 * v23)
    {
      v24 = v13 * v23;
    }

    if (a3 && v24 >= 1.0)
    {
      v25 = *(a2 + 4);
      v26 = *(result + 2);
      v27 = *(v26 + 16) & 0xFFFFFF00FF00FF00;
      if (*(v26 + 8) == 0x3C003C003C003C00)
      {
        v28 = 1;
      }

      else
      {
        v28 = 3;
      }

      *(v26 + 16) = v28 | v27;
      *(v26 + 20) = HIDWORD(v27);
      v29 = (v25 >> 21) & 1;
      if (a4)
      {
        v30 = vaddq_f64(vdivq_f64(vmulq_f64((*a2)[1], vdupq_n_s64(0xBFF721E8A7A4B61BLL)), v21), vdupq_n_s64(0x400721E8A7A4B61BuLL));
        __asm { FMOV            V2.2D, #1.0 }

        v36 = vbslq_s8(vcgtq_f64(v30, _Q2), _Q2, v30);
        *&v52[0] = vcvt_f32_f64(vbicq_s8(v36, vcltzq_f64(v36)));
        LODWORD(a3) = vcvtpd_s64_f64(v24);
        (*(*result + 512))(result, 0, a3, 0, v29, &v46, a4, v52);
      }

      else
      {
        LODWORD(a3) = vcvtpd_s64_f64(v24);
        (*(*result + 504))(result, 0, a3, 0, v29, &v46);
      }

      v38 = *a2;
      v52[0] = (*a2)->f64[0];
      v52[1] = v52[0] + v22;
      v39 = v38[1].f64[0];
      v52[2] = v39 + v52[0] - v22;
      v52[3] = v39 + v52[0];
      v51[0] = v38->f64[1];
      v51[1] = v51[0] + v23;
      v40 = v38[1].f64[1];
      v51[2] = v40 + v51[0] - v23;
      v51[3] = v40 + v51[0];
      v41 = v46;
      LODWORD(v48) = v46;
      *(&v48 + 1) = *&v46 + ((*(&v46 + 1) - *&v46) * 0.5);
      v49 = *(&v48 + 1);
      v50 = HIDWORD(v46);
      LODWORD(v47[0]) = v46;
      v47[1] = *(&v48 + 1);
      v47[2] = *(&v48 + 1);
      v47[3] = *(&v46 + 1);
      if (v39 == v40 && v22 == v23 && fabs(v39 + v22 * -2.0) < 1.0)
      {
        if ((*(a2 + 20) & 0xF) != 0)
        {
          if (v8 == 15 && (a2[2] & 9) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (v8 == 15)
        {
LABEL_38:
          v42 = v46;
          v43 = v45;
          vst2_f32(v43, *&v41);
          CA::OGL::emit_one_part_rect(v10, a2, v45, 0, 0);
LABEL_44:
          result = (*(*v10 + 560))(v10, 0, 0);
          *(*(v10 + 2) + 16) = 0;
          return result;
        }
      }

      if (v7)
      {
        v44 = ~(v8 << 22) & 0x3C00000 | 0x20000;
      }

      else
      {
        v44 = ~(v8 << 22) & 0x3C00000;
      }

      CA::OGL::emit_nine_part_rect(v10, a2, v52, v51, &v48, v47, 0, 0, v44);
      goto LABEL_44;
    }

    return CA::OGL::fill_rect(result, a2, a3);
  }

  return result;
}

BOOL CA::OGL::Context::need_transparent_source(CA::OGL::Context *this)
{
  if ((*(*(this + 82) + 80) & 0x400) == 0)
  {
    return 0;
  }

  v2 = *(this + 2);
  if ((*(v2 + 16) & 0xFE) != 0x10)
  {
    v3 = *(v2 + 496);
    v4 = v3 > 0x19;
    v5 = (1 << v3) & 0x300C533;
    if (v4 || v5 == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 84);
  return !v7 || (*(v7 + 147) & 0x60) == 0;
}

uint64_t CA::OGL::MetalContext::encode_gamma_luts(CA::OGL::MetalContext *this)
{
  if ((*(this + 4016) & 4) != 0)
  {
    return 1;
  }

  result = CA::OGL::MetalContext::ensure_gamma_lut_buffer(this);
  if (result)
  {
    *(this + 4016) |= 4u;
    [*(this + 442) setFragmentBuffer:*(this + 640) offset:0 atIndex:7];
    return 1;
  }

  return result;
}

uint64_t CA::OGL::ContentsGeometry::fill_and_unbind(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 276);
  v7 = (a1 + 104);
  v50[0] = (a1 + 8);
  v50[1] = (a1 + 104);
  v8 = *(a1 + 308);
  v51 = v8;
  v52 = 0;
  v53 = 0;
  v54 = a1 + 40;
  if ((*(a1 + 339) & 1) == 0)
  {
    v9 = *(a1 + 336);
    v49 = v8;
    v10 = (*(*a2 + 1112))(a2);
    v8 = v49;
    if (v10 < v9)
    {
      *(*&a2[2] + 497) |= 2u;
      *(*&a2[2] + 368) = 1065353216;
    }
  }

  v11 = BYTE4(v8);
  v12 = v8;
  if (*(a1 + 338))
  {
    if (*(a1 + 337))
    {
      v13 = *(a1 + 24);
      if (v13 >= *(a1 + 32))
      {
        v13 = *(a1 + 32);
      }

      if (v13 > 0.0)
      {
        if ((v11 & 0xF) != 0 && (v12 & 9) != 0)
        {
          v69.i64[0] = &unk_1EF200560;
          v69.i64[1] = a1 + 276;
          *&v70 = a1 + 344;
          *(&v70 + 1) = a1 + 376;
          *&v71 = a1 + 320;
LABEL_50:
          goto LABEL_51;
        }
      }
    }

    else if ((*(a3 + 52) & 0x18000000000000) != 0x8000000000000 || (v6[4].i8[1] & 4) != 0)
    {
      v34 = *(a1 + 24);
      if (v34 >= *(a1 + 32))
      {
        v34 = *(a1 + 32);
      }

      if (v34 > 0.0)
      {
        if ((v11 & 0xF) != 0 && (v12 & 9) != 0)
        {
          v69.i64[0] = &unk_1EF200548;
          v69.i64[1] = a1 + 276;
          *&v70 = a1 + 320;
          goto LABEL_50;
        }
      }
    }

    else
    {
      v27.f64[0] = *(a1 + 320);
      v28.f64[0] = *(a1 + 264);
      v27.f64[1] = v28.f64[0];
      v28.f64[1] = *(a1 + 328);
      v29.i64[0] = *a1;
      v29.i64[1] = HIDWORD(*a1);
      v30 = vcvtq_f64_s64(v29);
      v31 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(*(a1 + 8), v30)), vdivq_f64(vmlaq_f64(*(a1 + 8), v28, vmulq_f64(v27, *(a1 + 24))), v30));
      *v32.f32 = *v6;
      *&v28.f64[0] = vsub_f32(v6[1], *v6);
      v28.f64[1] = v28.f64[0];
      *&v32.u32[2] = *v6;
      v33 = vmlaq_f32(v32, v31, v28);
      *v31.f32 = vrndm_f32(*v33.f32);
      v31.i64[1] = v31.i64[0];
      v69 = vsubq_f32(v33, v31);
      CA::OGL::fill_rect_tex(a2, v50, v69.f32);
    }
  }

  else if (*(a1 + 337))
  {
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    if (v15 >= v16)
    {
      v17 = *(a1 + 32);
    }

    else
    {
      v17 = *(a1 + 24);
    }

    if (v17 > 0.0)
    {
      v55 = 0.0;
      v56 = 0.0;
      CA::Transform::get_scale_recip(v7, &v56, &v55);
      v19 = v16 * v15 / (v55 * v56);
      if ((v11 & 0xF) == 0 || (v12 & 9) == 0)
      {
        v69 = 0uLL;
        v70 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v63 = 0.0;
        v64 = 0;
        v60 = 0.0;
        v61 = 0;
        v21 = a2[2];
        v22 = *(*&v21 + 16) & 0xFFFFFF00FF00FF00;
        if (*(*&v21 + 8) == 0x3C003C003C003C00)
        {
          v23 = 1;
        }

        else
        {
          v23 = 3;
        }

        *(*&v21 + 16) = v23 | v22;
        *(*&v21 + 20) = HIDWORD(v22);
        CA::OGL::emit_n_part_rect(a2, v50, v24, v26, v69.i64, &v66, &v63, &v60, 0, 0, (v19 >= *&a2[9]) << 16);
      }

      else
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v63 = 0.0;
        v64 = 0;
        v65 = 0;
        v60 = 0.0;
        v61 = 0;
        v62 = 0;
        memset(v59, 0, sizeof(v59));
        memset(v58, 0, sizeof(v58));
        v57 = 0;
        *(*&a2[2] + 16) = 5;
        is_isotropic = CA::Transform::is_isotropic(v7, 0.0);
        (*(*a2 + 496))(a2, 1, !is_isotropic, 0, &v57);
        v40 = *(a1 + 24);
        v41 = *(a1 + 32);
        if (v56 + v56 >= v40 * 0.5)
        {
          v38.f64[0] = v40 * 0.5;
        }

        else
        {
          v38.f64[0] = v56 + v56;
        }

        if (v55 + v55 >= v41 * 0.5)
        {
          v42 = v41 * 0.5;
        }

        else
        {
          v42 = v55 + v55;
        }

        v44.f64[0] = v42;
        CA::OGL::emit_n_part_rect(a2, v50, v43, v47, v69.i64, &v66, &v63, &v60, v59, v58, (v19 >= *&a2[9]) << 16);
        (*(*a2 + 560))(a2, 0, 1);
      }

      *(*&a2[2] + 16) = 0;
    }
  }

  else
  {
    CA::OGL::ContentsGeometry::fill_geometry(a1, a2, v50, (a1 + 276));
  }

LABEL_51:
  result = (*(*a2 + 560))(a2, a3, 0);
  *(*&a2[2] + 497) &= ~2u;
  return result;
}

float CA::OGL::ContentsGeometry::fill_debug(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, int8x16_t a7)
{
  v60 = *MEMORY[0x1E69E9840];
  if (options_are_visual != 1)
  {
    return *&a6;
  }

  v8 = a1;
  v9 = (a1 + 308);
  v10 = *(a1 + 308);
  if ((v10 & 0x36) != 0)
  {
    v11 = BYTE6(xmmword_1ED4E982C);
    if (BYTE5(xmmword_1ED4E982C) & 1) != 0 || (BYTE6(xmmword_1ED4E982C))
    {
      v12 = a1 + 104;
      v13 = *(a1 + 264);
      v14.f64[0] = v13 / *(a1 + 256);
      v15 = vmulq_n_f64(vsqrtq_f64(vpaddq_f64(vmulq_f64(*(a1 + 104), *(a1 + 104)), vmulq_f64(*(a1 + 136), *(a1 + 136)))), 1.0 / *(a1 + 224));
      v16 = v14.f64[0] / v15.f64[0];
      if (v14.f64[0] / v15.f64[0] <= v13 / v15.f64[1])
      {
        v16 = v13 / v15.f64[1];
      }

      v17 = v16;
      v14.f64[1] = *(a1 + 264);
      v18 = vdivq_f64(v15, v14);
      if (v18.f64[0] <= v18.f64[1])
      {
        v18.f64[0] = v18.f64[1];
      }

      v19 = v18.f64[0];
      if (v17 > 1.001 && BYTE5(xmmword_1ED4E982C) != 0)
      {
        v42 = v17 * 0.333333333 + -0.333333333;
        v43 = v42 > 1.0 || v42 < 0.0;
        v44 = 0.0;
        if (v42 >= 0.0 || v42 > 1.0)
        {
          v44 = 0.699999988;
        }

        v45 = v42 * 0.699999988;
        if (v43)
        {
          v45 = v44;
        }

        _D2 = 0.699999988 - v45;
        __asm { FCVT            H2, D2 }

        v52 = v19;
        v47.i16[0] = 14746;
        v47.i16[1] = LOWORD(_D2);
        v47.i32[1] = 966393856;
        v48 = CA::OGL::ExtendedColor::word32(a1, v47);
        v54 = v8 + 8;
        v55 = v8 + 104;
        v56 = *v9;
        v57 = 0;
        v58 = 0;
        v59 = v8 + 40;
        a1 = CA::OGL::fill_color_rect(a2, &v54, bswap32(v48), v56, v49);
        v19 = v52;
        v12 = v8 + 104;
        v11 = BYTE6(xmmword_1ED4E982C);
      }

      a6 = v19;
      if (a6 > 1.001 && (v11 & 1) != 0)
      {
        v21 = a6 * 0.333333333 + -0.333333333;
        v22 = v21 > 1.0 || v21 < 0.0;
        v23 = 0.7;
        if (v21 < 0.0 && v21 <= 1.0)
        {
          v23 = 0.2;
        }

        _S0 = v21 * 0.5 + 0.200000003;
        if (v22)
        {
          _S0 = v23;
        }

        __asm { FCVT            H1, S0 }

        v29.i32[0] = 0;
        v29.i16[2] = _H1;
        v29.i16[3] = _H1;
        v30 = v12;
        v31 = bswap32(CA::OGL::ExtendedColor::word32(a1, v29));
        v54 = v8 + 8;
        v55 = v30;
        goto LABEL_81;
      }

      return *&a6;
    }
  }

  if (*(a1 + 494) == 1 && (BYTE7(xmmword_1ED4E982C) & 1) != 0 || (v10 & 9) != 0 && (BYTE14(ca_debug_options) & 1) != 0)
  {
    v54 = a1 + 8;
    v55 = a1 + 104;
    v32 = *v9;
    v56 = *v9;
    v57 = 0;
    v58 = 0;
    v59 = a1 + 40;
    v33 = a2;
    v31 = 2155872384;
LABEL_84:
    CA::OGL::fill_color_rect(v33, &v54, v31, v32, a7);
    return *&a6;
  }

  if (BYTE9(xmmword_1ED4E97DC) == 1 && *(a1 + 495) == 1)
  {
    v54 = a1 + 8;
    v55 = a1 + 104;
    v32 = *v9;
    v56 = *v9;
    v57 = 0;
    v58 = 0;
    v59 = a1 + 40;
    v33 = a2;
    v31 = 4294901888;
    goto LABEL_84;
  }

  if (BYTE10(xmmword_1ED4E97DC) == 1 && *(a1 + 496) == 1)
  {
    v54 = a1 + 8;
    v55 = a1 + 104;
    v32 = *v9;
    v56 = *v9;
    v57 = 0;
    v58 = 0;
    v59 = a1 + 40;
    v33 = a2;
    v31 = 16777088;
    goto LABEL_84;
  }

  if (BYTE1(ca_debug_options) == 1 && a4 && (*(a4 + 12) & 0x10000FF) == 0x1000017)
  {
    v54 = a1 + 8;
    v55 = a1 + 104;
    v32 = *v9;
    v56 = *v9;
    v57 = 0;
    v58 = 0;
    v59 = a1 + 40;
    v31 = 8421504;
LABEL_83:
    v33 = a2;
    goto LABEL_84;
  }

  if (BYTE2(ca_debug_options) == 1)
  {
    v54 = a1 + 8;
    v55 = a1 + 104;
    v32 = *v9;
    if (a5)
    {
      v31 = 8388736;
    }

    else
    {
      v31 = 2147483776;
    }

    goto LABEL_82;
  }

  if (BYTE2(xmmword_1ED4E97DC) == 1)
  {
    if (a3)
    {
      if (a4)
      {
        v34 = *(a3 + 24);
        if (v34)
        {
          if ((*(v34 + 47) & 0x10) != 0)
          {
            v35 = *(v34 + 152);
            if (v35)
            {
              if ((*(v35 + 105) & 0x80) == 0)
              {
LABEL_72:
                v54 = a1 + 8;
                v55 = a1 + 104;
                v32 = *v9;
                v56 = *v9;
                v57 = 0;
                v58 = 0;
                v59 = a1 + 40;
                v33 = a2;
                v31 = 2147483776;
                goto LABEL_84;
              }
            }
          }
        }
      }
    }
  }

  if (BYTE4(xmmword_1ED4E97DC) == 1)
  {
    if (a4)
    {
      v37 = (*(*a4 + 104))(a4);
      if (*(a4 + 12) == 9)
      {
        goto LABEL_79;
      }

      if (v37 <= 0x1C && ((0x17826000u >> v37) & 1) != 0)
      {
        goto LABEL_61;
      }

      v31 = 2155872384;
      if (v37 - 33 < 3)
      {
        goto LABEL_80;
      }

      if (v37 <= 0x10 && ((0x1980Fu >> v37) & 1) != 0)
      {
        v31 = 2151678080;
        goto LABEL_80;
      }

      if ((v37 & 0xFFFFFFFE) == 0x12)
      {
        v31 = 2151710848;
        goto LABEL_80;
      }

      if (v37 <= 0x1A && ((0x6000700u >> v37) & 1) != 0)
      {
        v31 = 1077952640;
        goto LABEL_80;
      }

      return *&a6;
    }
  }

  else if (BYTE5(xmmword_1ED4E97DC) == 1 && a4)
  {
    v38 = *(a4 + 56);
    if (!v38)
    {
      return *&a6;
    }

    s = *(a4 + 56);
    if (CGColorSpaceIsHLGBased(v38))
    {
      v31 = 2155872384;
      goto LABEL_80;
    }

    if (CGColorSpaceContainsFlexGTCInfo())
    {
LABEL_79:
      v31 = 8388736;
      goto LABEL_80;
    }

    if (CGColorSpaceIsPQBased(s))
    {
      v31 = 2147516544;
      goto LABEL_80;
    }

    if (CGColorSpaceUsesExtendedRange(s))
    {
      LODWORD(a6) = *(a4 + 64);
      a7.i32[0] = 1.0;
      if (*&a6 > 1.0)
      {
LABEL_61:
        v31 = 32896;
LABEL_80:
        v54 = v8 + 8;
        v55 = v8 + 104;
LABEL_81:
        v32 = *v9;
LABEL_82:
        v56 = v32;
        v57 = 0;
        v58 = 0;
        v59 = v8 + 40;
        goto LABEL_83;
      }
    }

    return *&a6;
  }

  if (BYTE4(xmmword_1ED4E97EC) == 1)
  {
    if (a4)
    {
      if ((*(a4 + 12) & 0x100000) != 0 && *(a4 + 12) != 57)
      {
        v54 = a1 + 8;
        v55 = a1 + 104;
        v32 = *v9;
        v56 = *v9;
        v57 = 0;
        v58 = 0;
        v59 = a1 + 40;
        v33 = a2;
        v31 = 2150914688;
        goto LABEL_84;
      }

      return *&a6;
    }
  }

  else if (byte_1ED4E9825 == 1 && a4)
  {
    if ((*(a4 + 14) & 0x80) == 0)
    {
      return *&a6;
    }

    goto LABEL_72;
  }

  if (byte_1ED4E984F == 1)
  {
    if (a3)
    {
      v39 = *(a3 + 24);
      if (v39)
      {
        v40 = *(v39 + 152);
        if (v40)
        {
          v41 = *(v40 + 104);
          if ((v41 & 0xE0000000000000) != 0)
          {
            v31 = CA::OGL::velocity_debug_color(CA::Render::VelocityBucket)::velocity_colors[(v41 >> 53) & 7];
            goto LABEL_80;
          }
        }
      }
    }
  }

  return *&a6;
}

CA::OGL::Context *CA::OGL::ContentsGeometry::fill_geometry(uint64_t a1, CA::OGL::Context *a2, double **a3, float32x2_t *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 490) == 1)
  {
    v7 = a1 + 292;
    *v8.f32 = *a4;
    *v9.f32 = vsub_f32(a4[1], *a4);
    v9.i64[1] = v9.i64[0];
    *&v8.u32[2] = *a4;
    v15 = vmlaq_f32(v8, *(a1 + 292), v9);
    v10 = *(a1 + 448);
    if (v10)
    {
      v11 = (*(*v10 + 80))(v10);
      v12 = *(v7 + 180);
      v14[0] = *(v7 + 164);
      v14[1] = v12;
      return CA::OGL::fill_corner_rect_tex(a2, a3, v11, v14, *(a1 + 488), *(a1 + 489), &v15, *(a1 + 440), *(a1 + 424), *(a1 + 432), (a1 + 72));
    }

    else
    {
      return CA::OGL::fill_round_rect_tex(a2, a3, v15.f32, *(a1 + 440), *(a1 + 444), (a1 + 72), *(a1 + 424), *(a1 + 432));
    }
  }

  else
  {

    return CA::OGL::fill_rect_tex(a2, a3, a4);
  }
}

uint64_t CA::OGL::MetalContext::destination_bit_depth(CA::OGL::MetalContext *this)
{
  v1 = *(*(this + 84) + 192);
  v2 = v1 - 70;
  if (v1 - 70 > 0x2D)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x3D0000000000) != 0)
  {
    return 16;
  }

  if (((1 << v2) & 0xC03) != 0)
  {
    return 8;
  }

  if (((1 << v2) & 0x1100000) == 0)
  {
LABEL_2:
    if (v1 <= 0x2B)
    {
      if (((1 << v1) & 0xC0000C02) != 0)
      {
        return 8;
      }

      if (((1 << v1) & 0xA0000000000) != 0)
      {
        return 5;
      }
    }

    if (v1 - 550 < 6)
    {
      return 9;
    }

    return 8;
  }

  return 10;
}

void CA::OGL::ContentsGeometry::fill_and_unbind(uint64_t a1, int32x2_t *a2, uint32x2_t **a3, int a4, float a5)
{
  v125 = *MEMORY[0x1E69E9840];
  v10 = (a1 + 308);
  if (*(a1 + 491) == 1)
  {
    v11 = *(a1 + 392);
    if ((*(a3 + 59) & 1) == 0 && *a3)
    {
      *v78.f32 = vcvt_f32_u32((*a3)[2]);
      v78.i64[1] = v78.i64[0];
      v11 = vmulq_f32(v11, v78);
    }

    *(*&a2[2] + 19) = 5;
    *(*&a2[2] + 384) = v11;
  }

  if (*(a1 + 494) == 1)
  {
    v12 = a2[2];
    v13 = v12[6];
    v14.i64[0] = *(a1 + 408);
    *&v14.u32[2] = vmul_f32(*v13.f32, *(a1 + 416));
    v15.i64[0] = vmulq_f32(v14, v13).u64[0];
    v15.i64[1] = vaddq_f32(v14, v13).i64[1];
    v12[6] = v15;
  }

  if ((*(a1 + 337) & 1) != 0 || (*(a1 + 338) & 1) != 0 || (*v10 & 0x12) == 0 || (*(a3 + 27) & 0xF) == a4)
  {
    goto LABEL_12;
  }

  if ((*(a1 + 248) & 0x10) != 0)
  {
    v18 = vmulq_f64(*(a1 + 104), *(a1 + 104));
    v19 = vmulq_f64(*(a1 + 136), *(a1 + 136));
    v20 = vaddq_f64(vdupq_laneq_s64(v19, 1), v19);
    v21 = *(a1 + 224);
    v22 = vzip1q_s64(vaddq_f64(vdupq_laneq_s64(v18, 1), v18), v20);
    if (v21 != 1.0)
    {
      v22 = vmulq_n_f64(v22, 1.0 / (v21 * v21));
    }

    v23 = v22.f64[0] != 1.0;
    if (v22.f64[1] != 1.0)
    {
      v23 = 1;
    }

    v24 = vdup_n_s32(v23);
    v25.i64[0] = v24.u32[0];
    v25.i64[1] = v24.u32[1];
    v17 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v25, 0x3FuLL)), vsqrtq_f64(v22), v22);
  }

  else
  {
    v16 = (a1 + 232);
    v17 = vld1q_dup_f64(v16);
  }

  v26 = vbslq_s8(vcgezq_f64(v17), v17, vnegq_f64(v17));
  __asm { FMOV            V4.2D, #1.0 }

  v31 = vbslq_s8(vcgtq_f64(v26, _Q4), _Q4, v26);
  v32 = *&v31.i64[1];
  v33 = *v31.i64 <= *&v31.i64[1] ? *&v31.i64[1] : *v31.i64;
  v34 = *v31.i64 <= *&v31.i64[1] ? *v31.i64 : *&v31.i64[1];
  _ZF = v34 < 0.75 || a4 == 10;
  v36 = _ZF;
  if (v33 >= 0.999 || !v36)
  {
    goto LABEL_12;
  }

  v82 = _Q4;
  v83 = v31;
  v94 = 0uLL;
  CA::Shape::get_bounds(*(*&a2[82] + 8), &v94);
  v40 = a2[84];
  if (v40)
  {
    v41 = v40 + 6;
  }

  else
  {
    v41 = a2 + 76;
  }

  v42 = vclez_s32(*(&v94 + 8));
  if ((vpmax_u32(v42, v42).u32[0] & 0x80000000) == 0)
  {
    v43 = v41[1];
    v44 = vclez_s32(v43);
    if ((vpmax_u32(v44, v44).u32[0] & 0x80000000) == 0)
    {
      *&v45 = vmax_s32(*&v94, *v41);
      *v38.i8 = vsub_s32(vmin_s32(vadd_s32(*&v94, *(&v94 + 8)), vadd_s32(*v41, v43)), *&v45);
      v46 = vclez_s32(*v38.i8);
      *v39.i8 = vpmax_u32(v46, v46);
      if ((v39.i32[0] & 0x80000000) == 0)
      {
        *(&v45 + 1) = v38.i64[0];
        v94 = v45;
        v47 = v38.i32[0];
        v48 = v38.i32[1];
        if (v38.i32[0] <= v38.i32[1])
        {
          v49 = v38.i32[1];
        }

        else
        {
          v49 = v38.i32[0];
        }

        v38.i32[0] = v49;
        v39.i32[0] = 1073741822;
        v50.i64[0] = v45;
        v50.i64[1] = SDWORD1(v45);
        v51 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v38, v39), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v50));
        v52 = v48;
        if (v49 <= 1073741822)
        {
          v53 = v47;
        }

        else
        {
          v53 = 1.79769313e308;
        }

        if (v49 > 1073741822)
        {
          v52 = 1.79769313e308;
        }

        v92 = v51;
        v93.f64[0] = v53;
        v93.f64[1] = v52;
        if (fmax(v53, v52) < 1.79769313e308)
        {
          v54 = v53 >= v52 ? v52 : v53;
          if (v54 > 0.0)
          {
            __asm { FMOV            V3.2D, #-2.0 }

            v92 = vaddq_f64(v51, _Q3);
            v56 = v52 + 4.0;
            v93.f64[0] = v53 + 4.0;
            v93.f64[1] = v56;
            if (v53 + 4.0 <= 0.0 || v56 <= 0.0)
            {
              v93 = 0uLL;
            }
          }
        }

        CA::Rect::unapply_transform(&v92, (a1 + 104), v37);
        if (CA::BoundsImpl::intersect(&v92, *(a1 + 8), *(a1 + 24)))
        {
          v91 = 0uLL;
          v79 = v93;
          v80 = v92;
          CA::Bounds::set_exterior(&v91, v57, v92, v93);
          v58 = (*(*a2 + 232))(a2, 7);
          if (v91.i32[2] <= v58 && v91.i32[3] <= v58)
          {
            v90 = 0uLL;
            if (v83.f64[0] != 1.0 && v79.f64[0] < 1.79769313e308)
            {
              *&v92.f64[0] = *&vmulq_f64(v80, v83);
              *&v93.f64[0] = *&vmulq_f64(v79, v83);
            }

            if (v32 != 1.0 && v79.f64[1] < 1.79769313e308)
            {
              v92.f64[1] = vmulq_f64(v80, v83).f64[1];
              v93.f64[1] = v79.f64[1] * v32;
            }

            CA::Bounds::set_exterior(&v90, v59, v92, v93);
            memset(__dst, 0, 504);
            v60 = a2[2];
            memcpy(__dst, v60, 0x1F8uLL);
            *&__dst[0] = v60;
            a2[2] = __dst;
            if (*(a1 + 492))
            {
              v61 = 4111;
            }

            else
            {
              v61 = 15;
            }

            v62 = (*(*a2 + 696))(a2, 1, &v91, v61, @"fill-and-unbind-source");
            if (v62)
            {
              v81 = v62;
              if (*(a1 + 312) && (*v10 & 9) != 0 || (v63 = a2[2], *(*&v63 + 8) != 0x3C003C003C003C00))
              {
                v64 = (*(*a2 + 696))(a2, 1, &v90, v61, @"fill-and-unbind-downsample");
                v63 = a2[2];
              }

              else
              {
                v64 = 0;
              }

              v66 = *&__dst[0];
              memcpy(__dst, *&__dst[0], 0x1F8uLL);
              *&__dst[0] = v66;
              *(*&v63 + 8) = 0x3C003C003C003C00;
              *(*&a2[2] + 497) &= ~1u;
              v117 = 0x3C003C003C003C00;
              v120 = 0;
              v118 = 0;
              v119 = 0;
              v123 = 0;
              v122 = 0;
              v113 = 0;
              v114 = 0;
              v121 = 1065353216;
              v115 = 0;
              v116 = &CA::identity_transform;
              memset(v112, 0, sizeof(v112));
              CA::Shape::operator=(v112, v91.i32);
              v114 = v112;
              LOWORD(v123) = 1;
              v113 = CA::OGL::Context::set_gstate(a2, &v113);
              CA::OGL::Context::push_surface(a2, v81, 1u, 1024, 0);
              v67 = *(a1 + 336);
              if ((*(*a2 + 1112))(a2) < v67)
              {
                *(*&a2[2] + 497) |= 2u;
                *(*&a2[2] + 368) = 1065353216;
              }

              v84[0] = (a1 + 8);
              v84[1] = v116;
              v85 = 256;
              v86 = 0;
              v88 = 0;
              v87 = 0;
              v89 = 0;
              if (v64)
              {
                CA::OGL::fill_rect_tex(a2, v84, (a1 + 276));
              }

              else
              {
                CA::OGL::ContentsGeometry::fill_geometry(a1, a2, v84, (a1 + 276));
              }

              *(*&a2[2] + 497) &= ~2u;
              CA::OGL::Context::pop_surface(a2);
              CA::OGL::Context::set_gstate(a2, **&a2[82]);
              a2[2] = *&__dst[0];
              *&__dst[0] = 0;
              (*(*a2 + 560))(a2, a3, 0);
              memset(v111, 0, sizeof(v111));
              v109 = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v68 = (a1 + 104);
              v100 = 0u;
              if (v64)
              {
                v69 = a2[2];
                memcpy(__dst, v69, 0x1F8uLL);
                *&__dst[0] = v69;
                a2[2] = __dst;
                *(&__dst[0] + 1) = 0x3C003C003C003C00;
                BYTE1(__dst[31]) &= ~1u;
                CA::Shape::operator=(v111, v90.i32);
                v114 = v111;
                v101 = 0u;
                v102 = xmmword_183E20E60;
                v103 = 0u;
                v104 = 0u;
                v105 = xmmword_183E20E00;
                v106 = 0u;
                v107 = xmmword_183E20E60;
                v100 = *&v83.f64[0];
                if (v83.f64[0] == v32)
                {
                  *(&v102 + 1) = *&v83.f64[0];
                  *&v105 = 0x3FF0000000000000;
                  v108.f64[0] = v83.f64[0];
                  v108.f64[1] = 1.0 / v83.f64[0];
                  v70 = 8 * (v83.f64[0] != 1.0);
                }

                else
                {
                  *(&v102 + 1) = v32;
                  *&v105 = 0x3FF0000000000000;
                  v108 = v82;
                  v70 = 16;
                }

                LOBYTE(v109) = v70;
                v113 = CA::OGL::Context::set_gstate(a2, &v113);
                CA::OGL::Context::push_surface(a2, v64, 1u, 1024, 0);
                v68 = &v100;
              }

              v71 = 0;
              if (a4 == 2)
              {
                v72 = v83;
              }

              else
              {
                v72 = v83;
                if (a4 != 7)
                {
                  if (a4 == 11)
                  {
                    v71 = 1;
                  }

                  else if (a4 == 10)
                  {
                    v71 = 2;
                  }

                  else
                  {
                    v71 = 1;
                  }
                }
              }

              v95 = v72;
              (*(*a2 + 952))(a2, v81, &v95, v68, v71, a5);
              if (v64)
              {
                CA::OGL::Context::pop_surface(a2);
                CA::OGL::Context::set_gstate(a2, **&a2[82]);
                a2[2] = *&__dst[0];
                v74 = v83;
                *&v74.f64[1] = vextq_s8(v74, v74, 8uLL).u64[0];
                v75.i64[0] = v90.i32[0];
                v75.i64[1] = v90.i32[1];
                v76 = vcvt_f32_f64(vmlaq_f64(vnegq_f64(vcvtq_f64_s64(v75)), *(a1 + 8), v74));
                v77 = vmlaq_f64(vcvtq_f64_f32(v76), v74, *(a1 + 24));
                *&__dst[0] = 0;
                v110[0] = v76;
                v110[1] = vcvt_f32_f64(v77);
                *&v95.f64[0] = a1 + 8;
                *&v95.f64[1] = a1 + 104;
                v96 = *v10;
                v97 = 0;
                v98 = 0;
                v99 = a1 + 40;
                CA::OGL::Context::bind_surface(a2, v64, 0, 1u, 1, 0.0);
                CA::OGL::ContentsGeometry::fill_geometry(a1, a2, &v95, v110);
                CA::OGL::Context::unbind_surface(a2, v64, 0);
              }

              if (BYTE1(xmmword_1ED4E97DC) == 1)
              {
                *&v95.f64[0] = a1 + 8;
                *&v95.f64[1] = a1 + 104;
                v96 = *v10;
                v97 = 0;
                v98 = 0;
                v99 = a1 + 40;
                CA::OGL::fill_color_rect(a2, &v95, 0x80008080, v96, v73);
              }

              CA::OGL::Context::release_surface(a2, v81);
              if (v64)
              {
                CA::OGL::Context::release_surface(a2, v64);
              }

              if (*&__dst[0])
              {
                __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
              }
            }

            else
            {
              CA::OGL::ContentsGeometry::fill_and_unbind(a1, a2, a3);
              a2[2] = *&__dst[0];
            }

            return;
          }

LABEL_12:

          CA::OGL::ContentsGeometry::fill_and_unbind(a1, a2, a3);
          return;
        }
      }
    }
  }

  v65 = *(*a2 + 560);

  v65(a2, a3, 0);
}

CA::OGL::Context *CA::OGL::fill_rect_tex(CA::OGL::Context *result, uint64_t a2, float *a3)
{
  v5 = result;
  v180 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = (v7 & 0xF) == 0;
  if ((v6 & 9) == 0)
  {
    v8 = 1;
  }

  v9 = v6 & 0x100000;
  if (v8 && v9 == 0)
  {
    goto LABEL_18;
  }

  v11 = *a2;
  v12 = *(*a2 + 16);
  if (v12 >= *(*a2 + 24))
  {
    v12 = *(*a2 + 24);
  }

  if (v12 > 0.0)
  {
    v13 = *(a2 + 8);
    if ((*(v13 + 144) & 0x1F) != 0 || *(a2 + 24) != 0 || *(a2 + 32) != 0)
    {
      if (!v8)
      {
        memset(v165, 0, 32);
        memset(v175, 0, 32);
        v160 = 0.0;
        v161 = 0;
        *(*(result + 2) + 16) = 5;
        is_isotropic = CA::Transform::is_isotropic(*(a2 + 8), 0.0);
        (*(*v5 + 496))(v5, 1, !is_isotropic, 0, &v161);
        v67 = *a2;
        v68 = v67[1].f64[1];
        v69 = 1.0 / v67[1].f64[0];
        v70.i32[1] = *&v165[12];
        v70.i32[0] = *a3;
        v71.i32[0] = a3[1];
        v72 = a3[2];
        v73 = a3[3];
        *(v178.f64 + 4) = vmla_n_f32(vdup_lane_s32(v70, 0), vcvt_f32_f64(vmulq_n_f64(vsubq_f64(*&v165[8], vdupq_lane_s64(*v165, 0)), v69)), v72 - *a3);
        *&v177.i32[3] = v73;
        LODWORD(v178.f64[0]) = v70.i32[0];
        *(&v178.f64[1] + 1) = v72;
        v74 = 1.0 / v68;
        *(v177.i64 + 4) = vmla_n_f32(vdup_lane_s32(v71, 0), vcvt_f32_f64(vmulq_n_f64(vsubq_f64(*&v175[8], vdupq_lane_s64(*v175, 0)), v74)), v73 - *v71.i32);
        v177.i32[0] = v71.i32[0];
        v75 = *&v161;
        v76 = *(a2 + 20);
        if (v76)
        {
          v77 = *&v161;
        }

        else
        {
          v77 = *&v161 + ((*(&v161 + 1) - *&v161) * 0.5);
        }

        *v173.i32 = v77;
        *&v173.i32[1] = *&v161 + ((*(&v161 + 1) - *&v161) * 0.5);
        if ((v76 & 2) != 0)
        {
          v78 = *(&v161 + 1);
        }

        else
        {
          v78 = *&v161 + ((*(&v161 + 1) - *&v161) * 0.5);
        }

        *&v174 = *&v161 + ((*(&v161 + 1) - *&v161) * 0.5);
        *(&v174 + 1) = v78;
        if ((v76 & 4) == 0)
        {
          v75 = *&v161 + ((*(&v161 + 1) - *&v161) * 0.5);
        }

        *&v162 = v75;
        *(&v162 + 1) = *&v161 + ((*(&v161 + 1) - *&v161) * 0.5);
        if ((v76 & 8) != 0)
        {
          v79 = *(&v161 + 1);
        }

        else
        {
          v79 = *&v161 + ((*(&v161 + 1) - *&v161) * 0.5);
        }

        v163 = *&v161 + ((*(&v161 + 1) - *&v161) * 0.5);
        v164 = v79;
        CA::OGL::emit_nine_part_rect(v5, a2, v165, v175, &v178, &v177, &v173, &v162, (v160 >= *(v5 + 72)) << 16);
        result = (*(*v5 + 560))(v5, 0, 1);
        goto LABEL_22;
      }

LABEL_18:
      v16 = *(result + 2);
      v17 = *(v16 + 16) & 0xFFFFFF00FF00FF00;
      if (*(v16 + 8) == 0x3C003C003C003C00)
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }

      *(v16 + 16) = v18 | v17;
      *(v16 + 20) = HIDWORD(v17);
      result = CA::OGL::emit_one_part_rect(result, a2, a3, 0, 0);
LABEL_22:
      *(*(v5 + 16) + 16) = 0;
      return result;
    }

    v19 = v11[1];
    v178 = *v11;
    v179 = v19;
    CA::Rect::apply_transform(&v178, v13, a3);
    v20 = *(v5 + 16);
    v21 = v20[1];
    v22 = v179.f64[0] + v178.f64[0];
    v23 = v179.f64[1] + v178.f64[1];
    v24 = round(v178.f64[0]);
    v25 = floor(v178.f64[0]);
    v26 = ceil(v178.f64[0]);
    if (v7)
    {
      v27 = v26;
    }

    else
    {
      v27 = v24;
    }

    if (v7)
    {
      v28 = v25;
    }

    else
    {
      v28 = v24;
    }

    v29 = round(v22);
    v30.f64[0] = floor(v22);
    v31 = ceil(v22);
    if ((v7 & 2) == 0)
    {
      v31 = v29;
      v30.f64[0] = v29;
    }

    v154 = v31;
    v155 = v28;
    v32.f64[0] = v28;
    v158 = v30.f64[0];
    v159 = v27;
    v32.f64[1] = v27;
    v30.f64[1] = v31;
    v33 = round(v178.f64[1]);
    v34 = floor(v178.f64[1]);
    v35 = ceil(v178.f64[1]);
    if ((v7 & 4) != 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = v33;
    }

    if ((v7 & 4) != 0)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    v38 = round(v23);
    v39.f64[0] = floor(v23);
    v40 = ceil(v23);
    if ((v7 & 8) == 0)
    {
      v40 = v38;
      v39.f64[0] = v38;
    }

    v147 = v37;
    v148 = v40;
    v41.f64[0] = v37;
    v156 = v39.f64[0];
    v157 = v36;
    v41.f64[1] = v36;
    v39.f64[1] = v40;
    v42 = a3[1];
    v43 = (a3[3] - v42);
    v149 = v178.f64[0];
    v44 = vdupq_lane_s64(*&v178.f64[0], 0);
    v45 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
    v139 = v178.f64[1];
    v46 = vdupq_lane_s64(*&v178.f64[1], 0);
    v47 = (a3[2] - *a3);
    v48 = vdupq_lane_s64(COERCE__INT64(v42), 0);
    v49 = vmulq_n_f64(vsubq_f64(v32, v44), v47);
    v50 = vmulq_n_f64(vsubq_f64(v30, v44), v47);
    __asm { FMOV            V7.2D, #1.0 }

    v55 = vdivq_f64(_Q7, vdupq_lane_s64(*&v179.f64[0], 0));
    v146 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v45, v55, v49)), vmlaq_f64(v45, v55, v50));
    v56 = vdivq_f64(_Q7, vdupq_lane_s64(*&v179.f64[1], 0));
    v145 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v48, v56, vmulq_n_f64(vsubq_f64(v41, v46), v43))), vmlaq_f64(v48, v56, vmulq_n_f64(vsubq_f64(v39, v46), v43)));
    v57 = vceqzq_f64(v179);
    if ((vorrq_s8(vdupq_laneq_s64(v57, 1), v57).u64[0] & 0x8000000000000000) != 0 || (v58 = vceqq_f64(v179, v179), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v58), 1), v58).u64[0] & 0x8000000000000000) != 0))
    {
      v177 = 0uLL;
    }

    else
    {
      v59 = vcvtmq_s64_f64(vmaxnmq_f64(v178, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v177 = vuzp1q_s32(v59, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v178, v179), vdupq_n_s64(0x41C0000000000000uLL))), v59));
    }

    v60 = CA::OGL::Context::need_transparent_source(v5);
    v61 = *(a2 + 16) & 0x40000;
    v20[2].i8[0] = 3;
    v62 = *(a2 + 16);
    v63 = *(v5 + 16);
    if ((v62 & 0x10000) != 0)
    {
      v80 = *(v63 + 16) & 0xFFFFFF00FF00FF00;
      if (*(v63 + 8) == 0x3C003C003C003C00)
      {
        v81 = 1;
      }

      else
      {
        v81 = 3;
      }

      *(v63 + 16) = v81 | v80;
      *(v63 + 20) = HIDWORD(v80);
      v63 = *(v5 + 16);
      v65 = *(v63 + 497);
    }

    else
    {
      v64 = 0;
      if ((v62 & 0x8000) == 0 || (v65 = *(v63 + 497), (v65 & 1) == 0))
      {
LABEL_85:
        v90 = v60 | (v61 >> 18);
        v176 = 0u;
        v91 = *(*(v5 + 656) + 8);
        *v175 = v5;
        *&v175[8] = v91;
        memset(&v175[16], 0, 24);
        *&v175[32] = 256;
        *&v176 = &v177;
        CA::OGL::Context::ClippedArray::start(v175);
        v174 = 0;
        v173 = 0;
        v92 = v5 + 1386;
        v93 = v155;
        v94 = v147;
        v142 = v94;
        v144 = v93;
        v95 = v159;
        v153 = v95;
        v96 = v157;
        v152 = v96;
        v97 = v159 - v149;
        v98 = v157 - v139;
        v135 = v97 * v98;
        v136 = v98;
        v99 = v158;
        v150 = v99;
        v100 = v154;
        v101 = v22 - v158;
        v133 = v101 * v98;
        v134 = v101;
        v102 = v156;
        v103 = v148;
        v138 = v103;
        v140 = v100;
        v104 = v23 - v156;
        v137 = v97;
        v131 = v97 * v104;
        v132 = v104;
        v130 = v104 * v101;
        if (v158 <= v159)
        {
          v105 = 1;
        }

        else
        {
          v105 = v64;
        }

        while (1)
        {
          result = CA::OGL::Context::ClippedArray::next_rect(v175, &v173);
          if (!result)
          {
            break;
          }

          if (v157 > v147)
          {
            if (*(v5 + 108))
            {
              v106 = 18;
            }

            else
            {
              v106 = 12;
            }

            if ((*(v5 + 144) + 12) > *(v5 + 152) || (v107 = *(v5 + 128)) != 0 && *(v5 + 120) + v106 > v107)
            {
              *(v5 + 1384) |= 0x20u;
              CA::OGL::Context::array_flush(v5);
              *(v5 + 144) = 0;
              *(v5 + 112) = v92;
              *(v5 + 120) = xmmword_183E20E50;
            }

            if (v159 > v155)
            {
              CA::OGL::Context::array_rect(v5, v144, v142, v153, v152);
              v108 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v108 - 176) = v146.i32[0];
              *(v108 - 172) = v145.i32[0];
              *(v108 - 128) = v146.i32[1];
              *(v108 - 124) = v145.i32[0];
              *(v108 - 80) = v146.i32[1];
              *(v108 - 76) = v145.i32[1];
              *(v108 - 32) = v146.i32[0];
              *(v108 - 28) = v145.i32[1];
              v109 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v21), v135));
              *(v108 - 160) = v109;
              *(v108 - 112) = v109;
              *(v108 - 64) = v109;
              *(v108 - 16) = v109;
            }

            if (v158 > v159)
            {
              CA::OGL::Context::array_rect(v5, v153, v142, v150, v152);
              v110 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v110 - 176) = v146.i32[1];
              *(v110 - 172) = v145.i32[0];
              *(v110 - 128) = v146.i32[2];
              *(v110 - 124) = v145.i32[0];
              *(v110 - 80) = v146.i32[2];
              *(v110 - 76) = v145.i32[1];
              *(v110 - 32) = v146.i32[1];
              *(v110 - 28) = v145.i32[1];
              v111 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v21), v136));
              *(v110 - 160) = v111;
              *(v110 - 112) = v111;
              *(v110 - 64) = v111;
              *(v110 - 16) = v111;
            }

            if (v154 > v158)
            {
              CA::OGL::Context::array_rect(v5, v150, v142, v140, v152);
              v112 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v112 - 176) = v146.i32[2];
              *(v112 - 172) = v145.i32[0];
              *(v112 - 128) = v146.i32[3];
              *(v112 - 124) = v145.i32[0];
              *(v112 - 80) = v146.i32[3];
              *(v112 - 76) = v145.i32[1];
              *(v112 - 32) = v146.i32[2];
              *(v112 - 28) = v145.i32[1];
              v113 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v21), v133));
              *(v112 - 160) = v113;
              *(v112 - 112) = v113;
              *(v112 - 64) = v113;
              *(v112 - 16) = v113;
            }
          }

          if (v156 > v157)
          {
            if (*(v5 + 108))
            {
              v114 = 18;
            }

            else
            {
              v114 = 12;
            }

            if ((*(v5 + 144) + 12) > *(v5 + 152) || (v115 = *(v5 + 128)) != 0 && *(v5 + 120) + v114 > v115)
            {
              *(v5 + 1384) |= 0x20u;
              CA::OGL::Context::array_flush(v5);
              *(v5 + 144) = 0;
              *(v5 + 112) = v92;
              *(v5 + 120) = xmmword_183E20E50;
            }

            if (v159 > v155)
            {
              CA::OGL::Context::array_rect(v5, v144, v152, v153, v102);
              v116 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v116 - 176) = v146.i32[0];
              *(v116 - 172) = v145.i32[1];
              *(v116 - 128) = v146.i32[1];
              *(v116 - 124) = v145.i32[1];
              *(v116 - 80) = v146.i32[1];
              *(v116 - 76) = v145.i32[2];
              *(v116 - 32) = v146.i32[0];
              *(v116 - 28) = v145.i32[2];
              v117 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v21), v137));
              *(v116 - 160) = v117;
              *(v116 - 112) = v117;
              *(v116 - 64) = v117;
              *(v116 - 16) = v117;
            }

            if ((v105 & 1) == 0)
            {
              CA::OGL::Context::array_rect(v5, v153, v152, v150, v102);
              v118 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v118 - 176) = v146.i32[1];
              *(v118 - 172) = v145.i32[1];
              *(v118 - 128) = v146.i32[2];
              *(v118 - 124) = v145.i32[1];
              *(v118 - 80) = v146.i32[2];
              *(v118 - 76) = v145.i32[2];
              *(v118 - 32) = v146.i32[1];
              *(v118 - 28) = v145.i32[2];
              *(v118 - 160) = v21;
              *(v118 - 112) = v21;
              *(v118 - 64) = v21;
              *(v118 - 16) = v21;
            }

            if (v154 > v158)
            {
              CA::OGL::Context::array_rect(v5, v150, v152, v140, v102);
              v119 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v119 - 176) = v146.i32[2];
              *(v119 - 172) = v145.i32[1];
              *(v119 - 128) = v146.i32[3];
              *(v119 - 124) = v145.i32[1];
              *(v119 - 80) = v146.i32[3];
              *(v119 - 76) = v145.i32[2];
              *(v119 - 32) = v146.i32[2];
              *(v119 - 28) = v145.i32[2];
              v120 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v21), v134));
              *(v119 - 160) = v120;
              *(v119 - 112) = v120;
              *(v119 - 64) = v120;
              *(v119 - 16) = v120;
            }
          }

          if (v148 > v156)
          {
            if (*(v5 + 108))
            {
              v121 = 18;
            }

            else
            {
              v121 = 12;
            }

            if ((*(v5 + 144) + 12) > *(v5 + 152) || (v122 = *(v5 + 128)) != 0 && *(v5 + 120) + v121 > v122)
            {
              *(v5 + 1384) |= 0x20u;
              CA::OGL::Context::array_flush(v5);
              *(v5 + 144) = 0;
              *(v5 + 112) = v92;
              *(v5 + 120) = xmmword_183E20E50;
            }

            if (v159 > v155)
            {
              CA::OGL::Context::array_rect(v5, v144, v102, v153, v138);
              v123 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v123 - 176) = v146.i32[0];
              *(v123 - 172) = v145.i32[2];
              *(v123 - 128) = v146.i32[1];
              *(v123 - 124) = v145.i32[2];
              *(v123 - 80) = v146.i32[1];
              *(v123 - 76) = v145.i32[3];
              *(v123 - 32) = v146.i32[0];
              *(v123 - 28) = v145.i32[3];
              v124 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v21), v131));
              *(v123 - 160) = v124;
              *(v123 - 112) = v124;
              *(v123 - 64) = v124;
              *(v123 - 16) = v124;
            }

            if (v158 > v159)
            {
              CA::OGL::Context::array_rect(v5, v153, v102, v150, v138);
              v125 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v125 - 176) = v146.i32[1];
              *(v125 - 172) = v145.i32[2];
              *(v125 - 128) = v146.i32[2];
              *(v125 - 124) = v145.i32[2];
              *(v125 - 80) = v146.i32[2];
              *(v125 - 76) = v145.i32[3];
              *(v125 - 32) = v146.i32[1];
              *(v125 - 28) = v145.i32[3];
              v126 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v21), v132));
              *(v125 - 160) = v126;
              *(v125 - 112) = v126;
              *(v125 - 64) = v126;
              *(v125 - 16) = v126;
            }

            if (v154 > v158)
            {
              CA::OGL::Context::array_rect(v5, v150, v102, v140, v138);
              v127 = *(v5 + 136) + 48 * *(v5 + 144);
              *(v127 - 176) = v146.i32[2];
              *(v127 - 172) = v145.i32[2];
              *(v127 - 128) = v146.i32[3];
              *(v127 - 124) = v145.i32[2];
              *(v127 - 80) = v146.i32[3];
              *(v127 - 76) = v145.i32[3];
              *(v127 - 32) = v146.i32[2];
              *(v127 - 28) = v145.i32[3];
              v128 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v21), v130));
              *(v127 - 160) = v128;
              *(v127 - 112) = v128;
              *(v127 - 64) = v128;
              *(v127 - 16) = v128;
            }
          }
        }

        if (v90)
        {
          *v165 = v155;
          *&v165[8] = v147;
          *&v165[16] = xmmword_183E20E60;
          *&v165[32] = v154;
          *v166 = v147;
          *&v166[8] = xmmword_183E20E60;
          v167 = v154;
          v168 = v148;
          v169 = xmmword_183E20E60;
          v170 = v155;
          v171 = v148;
          v172 = xmmword_183E20E60;
          if ((*(a2 + 18) & 4) != 0)
          {
            v129 = *(*(v5 + 16) + 8);
          }

          else
          {
            v129 = 0;
          }

          v162 = v129;
          result = CA::OGL::emit_quad_surround(v5, v165, &v162);
        }

        goto LABEL_22;
      }
    }

    if ((v65 & 1) != 0 && (*(a2 + 17) & 0x80) != 0)
    {
      *(v63 + 497) = v65 & 0xFE;
    }

    if (v156 > v157 && v158 > v159)
    {
      v141 = v61;
      v143 = v22;
      v151 = v23;
      *v166 = 0u;
      v82 = *(*(v5 + 656) + 8);
      *v165 = v5;
      *&v165[8] = v82;
      memset(&v165[16], 0, 24);
      *&v165[32] = 256;
      *v166 = &v177;
      CA::OGL::Context::ClippedArray::start(v165);
      *v175 = 0uLL;
      while (CA::OGL::Context::ClippedArray::next_rect(v165, v175))
      {
        if (*(v5 + 108))
        {
          v87 = 6;
        }

        else
        {
          v87 = 4;
        }

        if ((*(v5 + 144) + 4) > *(v5 + 152) || (v88 = *(v5 + 128)) != 0 && *(v5 + 120) + v87 > v88)
        {
          *(v5 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(v5);
          *(v5 + 144) = 0;
          *(v5 + 112) = v5 + 1386;
          *(v5 + 120) = xmmword_183E20E50;
        }

        v83 = v159;
        v84 = v157;
        v85 = v158;
        v86 = v156;
        CA::OGL::Context::array_rect(v5, v83, v84, v85, v86);
        v89 = *(v5 + 136) + 48 * *(v5 + 144);
        *(v89 - 176) = v146.i32[1];
        *(v89 - 172) = v145.i32[1];
        *(v89 - 128) = v146.i32[2];
        *(v89 - 124) = v145.i32[1];
        *(v89 - 80) = v146.i32[2];
        *(v89 - 76) = v145.i32[2];
        *(v89 - 32) = v146.i32[1];
        *(v89 - 28) = v145.i32[2];
        *(v89 - 160) = v21;
        *(v89 - 112) = v21;
        *(v89 - 64) = v21;
        *(v89 - 16) = v21;
      }

      v23 = v151;
      v22 = v143;
      v61 = v141;
    }

    if (v65)
    {
      *(*(v5 + 16) + 497) |= 1u;
    }

    if (*(a2 + 18))
    {
      *(*(v5 + 16) + 16) = 3;
    }

    v64 = 1;
    goto LABEL_85;
  }

  return result;
}

BOOL CA::OGL::MetalContext::should_tile_image(CA::OGL::MetalContext *this, CA::Render::Texture *a2)
{
  v2 = *(this + 412);
  result = 1;
  if (v2 >= *(a2 + 4) && v2 >= *(a2 + 5))
  {
    if (*(a2 + 12) != 23)
    {
      return 0;
    }

    v4 = *(this + 413);
    if (!v4 || *(a2 + 22) <= v4)
    {
      return 0;
    }
  }

  return result;
}

CA::ColorProgram::Cache *CA::OGL::Context::color_program_cache(CA::OGL::Context *this)
{
  result = *(this + 73);
  if (!result)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_malloc(malloc_zone, 0x70uLL, 0x165299FDuLL);
    if (result)
    {
      *(this + 73) = CA::ColorProgram::Cache::Cache(result, *(this + 70));
      CA::OGL::Context::update_color_program_cache(this);
      return *(this + 73);
    }

    else
    {
      *(this + 73) = 0;
    }
  }

  return result;
}

uint64_t CA::OGL::MetalContext::encode_noise_scale(CA::OGL::MetalContext *this, const CA::OGL::MetalContext::FragmentShader::Spec *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 84) + 192);
  if (v3 > 93)
  {
    if ((v3 - 550) < 6)
    {
      v4 = 0.0039216;
      goto LABEL_14;
    }

    if (v3 != 94)
    {
      if (v3 == 115)
      {
        v4 = 0.00012207;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_12:
    v4 = 0.001955;
    goto LABEL_14;
  }

  if (v3 == 41 || v3 == 43)
  {
    v4 = 0.064516;
    goto LABEL_14;
  }

  if (v3 == 90)
  {
    goto LABEL_12;
  }

LABEL_13:
  v4 = 0.0078431;
LABEL_14:
  _S8 = *(*(this + 2) + 368) * v4;
  if (*(this + 1005) == _S8)
  {
    return 1;
  }

  __asm { FCVT            H0, S8 }

  __src = _H0;
  result = CA::OGL::MetalBufferPool::encode_fragment_arg(*(this + 595), 5, &__src, 2u, 2u);
  if (result)
  {
    *(this + 1005) = _S8;
  }

  return result;
}

atomic_uint **CA::OGL::MetalContext::retain_image(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t a4)
{
  while (1)
  {
    v4 = a4;
    v5 = a3;
    v6 = a2;
    v7 = a1;
    v8 = 0;
    v9 = 0;
    v56[2] = *MEMORY[0x1E69E9840];
    v52 = 0;
    v53 = 0;
    v56[0] = 0;
    *(v56 + 7) = 0;
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
    v55 = 0uLL;
    v10 = *(a3 + 12);
    v11 = xmmword_183E20F40;
    v12 = xmmword_183E20F30;
    v13 = 0x100000001;
    v14 = 0.5;
    v15 = 4.0;
    v16 = 1.0;
    v17 = -1;
    v18 = 0.0;
    if (v10 <= 0x23)
    {
      v46 = xmmword_183E20F30;
      v47 = xmmword_183E20F40;
      if (v10 == 9)
      {
        goto LABEL_15;
      }

      if (v10 != 23)
      {
        v48 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v25 = 0;
        v24 = 0;
        goto LABEL_48;
      }

      if (*(a2 + 8))
      {
        if (!a4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *(a2 + 8) = a3;
        atomic_fetch_add(a3 + 41, 1u);
        if (!a4)
        {
          goto LABEL_31;
        }
      }

      v28 = *(a2 + 32);
      if (!v28)
      {
        v45 = v7;
        v47 = xmmword_183E20F40;
        v46 = xmmword_183E20F30;
        v27 = CA::Render::Image::retain_iosurface(a3);
        v24 = 0;
        v23 = 0;
        v21 = 0;
        v20 = 0;
        v9 = 0;
        v48 = 0;
        v8 = 0;
        goto LABEL_44;
      }

      v29 = (*(*v28 + 168))(v28, xmmword_183E20F40, xmmword_183E20F30);
      CA::Render::Image::update_iosurface(v5, v29);
LABEL_31:
      v8 = 0;
      v48 = 0;
      v9 = 0;
      v20 = 0;
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v25 = 0;
      goto LABEL_48;
    }

    if (v10 == 36)
    {
      v46 = xmmword_183E20F30;
      v47 = xmmword_183E20F40;
LABEL_15:
      if (!*(a2 + 8))
      {
        *(a2 + 8) = a3;
        (*(*a3 + 24))(a3, xmmword_183E20F40, xmmword_183E20F30);
      }

      goto LABEL_31;
    }

    if (v10 == 57)
    {
      break;
    }

    v19 = a1;
    v46 = xmmword_183E20F30;
    v47 = xmmword_183E20F40;
    v48 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (v10 != 40)
    {
      goto LABEL_48;
    }

    v26 = CA::Render::PixelBuffer::image(a3);
    if (!v26)
    {
      return 0;
    }

    *(v6 + 52) = *(v6 + 52) & 0xFFFFFFC0FFFFFFFFLL | 0x1700000000;
    a3 = v26;
    a1 = v19;
    a2 = v6;
    a4 = v4;
  }

  if (!*(a2 + 8))
  {
    *(a2 + 8) = a3;
    (*(*a3 + 24))(a3, xmmword_183E20F40, xmmword_183E20F30);
  }

  if (*(v6 + 32))
  {
    v27 = 0;
  }

  else
  {
    v27 = v5[16];
    if (v27)
    {
      CFRetain(v5[16]);
    }
  }

  v8 = *(v5 + 360);
  v18 = (*(*v5 + 21))(v5, v11, v12);
  v48 = (*(*v5 + 37))(v5);
  v9 = v5[42];
  if (!(*(v6 + 32) | v9))
  {
    bzero(v54, 0x3E0uLL);
    CA::SurfaceUtil::CASurfaceQuerySharedEvent(v54, v5[16]);
    if (v54[0] != v54[1])
    {
      [*(v7 + 3504) newSharedEventWithMachPort:*(v54[0] + 2)];
      operator new();
    }

    v9 = 0;
    if (v54[0] != v54[2])
    {
      free(v54[0]);
    }
  }

  v45 = v7;
  if (!(*(*v5 + 38))(v5))
  {
    v24 = 0;
    v21 = 0;
    v20 = 0;
    v47 = xmmword_183E20F40;
    v23 = 0;
    v46 = xmmword_183E20F30;
    v13 = 0x100000001;
    v17 = -1;
    v16 = 1.0;
    v15 = 4.0;
    v14 = 0.5;
LABEL_44:
    v25 = 0;
    v22 = 0;
    if (v27)
    {
      goto LABEL_45;
    }

    goto LABEL_48;
  }

  v21 = v5[23];
  if (v21)
  {
    atomic_fetch_add(v21 + 4, 1u);
  }

  v46 = *(v5 + 12);
  v47 = *(v5 + 13);
  v25 = *(v5 + 56);
  v24 = *(v5 + 57);
  v14 = *(v5 + 29);
  v15 = *(v5 + 30);
  v23 = *(v5 + 259);
  v13 = *(v5 + 260);
  v16 = *(v5 + 76);
  v17 = *(v5 + 81);
  v22 = *(v5 + 83);
  v56[0] = v5[31];
  *(v56 + 7) = *(v5 + 255);
  v12 = *(v5 + 284);
  v51 = *(v5 + 300);
  v49 = *(v5 + 268);
  v50 = v12;
  v53 = *(v5 + 303);
  v52 = *(v5 + 301);
  v55 = *(v5 + 308);
  if (v21 && atomic_fetch_add(v21 + 4, 0xFFFFFFFF) == 1)
  {
    v30 = v24;
    (*(*v21 + 8))(v21);
    v24 = v30;
  }

  v20 = 1;
  if (!v27)
  {
    goto LABEL_48;
  }

LABEL_45:
  v31 = v24;
  v32 = *(v45 + 600);
  if (v32)
  {
    v32 = (*(*v32 + 16))(v32);
  }

  *(v6 + 32) = CA::WindowServer::IOSurface::wrap_buffer(v32, v27, 0, 1);
  v24 = v31;
LABEL_48:
  v33 = *(v6 + 32);
  if (v33)
  {
    v34 = v24;
    v33[248] = v8;
    (*(*v33 + 208))(v33, v18, v12);
    v35 = 0x1000000000;
    if (!v48)
    {
      v35 = 0;
    }

    *(*(v6 + 32) + 236) = *(*(v6 + 32) + 236) & 0xFFFFFFEFFFFFFFFFLL | v35;
    v36 = *(v6 + 32);
    v37 = *(v36 + 2);
    if (v37 != v9)
    {
      if (v37)
      {
        CA::CASharedEvent::unref(v37);
      }

      if (v9)
      {
        atomic_fetch_add(v9 + 32, 1u);
        v38 = v9;
      }

      else
      {
        v38 = 0;
      }

      *(v36 + 2) = v38;
    }

    if (v9)
    {
      *v9 = v36;
    }

    v39 = *(v36 + 1);
    if (v39)
    {
      CA::WindowServer::Display::add_shared_surface(v39, v36);
    }

    v40 = 0x2000000000;
    if (!v20)
    {
      v40 = 0;
    }

    *(*(v6 + 32) + 236) = *(*(v6 + 32) + 236) & 0xFFFFFFDFFFFFFFFFLL | v40;
    if (v20)
    {
      v42 = *(v6 + 32);
      v41 = (v6 + 32);
      CA::WindowServer::Surface::set_hdr_processor(v42, v21);
      v43 = *v41;
      *(v43 + 96) = v46;
      *(v43 + 112) = v47;
      *(v43 + 128) = v25;
      *(v43 + 132) = v34;
      *(v43 + 136) = v14;
      *(v43 + 144) = v15;
      *(v43 + 152) = v56[0];
      *(v43 + 159) = *(v56 + 7);
      *(v43 + 163) = v23;
      *(v43 + 164) = v13;
      *(v43 + 172) = v49;
      *(v43 + 188) = v50;
      *(v43 + 204) = v51;
      *(v43 + 207) = v53;
      *(v43 + 205) = v52;
      *(v43 + 208) = v16;
      *(v43 + 212) = v55;
      *(v43 + 228) = v17;
      *(*v41 + 232) = v22;
    }
  }

  return v5;
}

void sub_183AED4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25)
{
  if (a23 != a25)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *CA::OGL::Context::bind_image(uint64_t *a1, unsigned int a2, uint32x2_t *a3, uint64_t a4, unsigned int a5, int a6, uint64_t a7, CA::OGL::ContentsGeometry *a8, float a9, float32x4_t *a10, uint64_t a11)
{
  LODWORD(v13) = a6;
  v83 = *MEMORY[0x1E69E9840];
  v79 = 0;
  v80 = 0;
  v19 = &v79;
  if ((a4 & 0x400) == 0)
  {
    v19 = a10;
  }

  v76 = v19;
  v20 = a3[1].i32[1] & 0x40000;
  v21 = (*(*a1 + 232))(a1, 20);
  v75 = v21 == 0;
  if (v20 | a4 & 0x1000)
  {
    goto LABEL_4;
  }

  v33 = v21;
  if (a8)
  {
    if (*(a8 + 337) & 1) != 0 || (*(a8 + 338))
    {
      goto LABEL_4;
    }
  }

  v34 = (*(*a3 + 216))(a3);
  if (v34)
  {
    v82 = 0;
    memset(v81, 0, sizeof(v81));
    CA::OGL::TiledImageGeometry::TiledImageGeometry(v81, v34, a1, a4, a5, v13, a8, a9);
    v23 = a2;
    v26 = CA::OGL::TiledImageGeometry::bind_image(v81, a2, v76);
    if (!v26)
    {
      return v26;
    }

LABEL_25:
    if (!v33)
    {
LABEL_114:
      *(v26 + 5) = *(a1 + 159);
      if ((a4 & 0x400) != 0)
      {
        *v72.f32 = v79;
        *v73.f32 = vsub_f32(v80, v79);
        v73.i64[1] = v73.i64[0];
        *&v72.u32[2] = v79;
        *a10 = vmlaq_f32(v72, *a10, v73);
      }

      return v26;
    }

LABEL_106:
    v69 = a3[7];
    if (v69)
    {
      if ((a1[109] & 0x80) == 0)
      {
        v70 = a3[1].u32[1];
        if ((v70 & 0x80000) == 0 && (!a8 || (*(a8 + 340) & 1) == 0))
        {
          v71 = CA::OGL::Context::lookup_color_program(a1, v69, (v70 >> 12) & 1, 1);
          CA::OGL::Context::color_program(a1, v23, v71);
          if (a8)
          {
            if (v71)
            {
              *(a8 + 495) = 1;
            }
          }
        }
      }
    }

    goto LABEL_114;
  }

  if (!(*(*a1 + 608))(a1, a3))
  {
    goto LABEL_4;
  }

  LODWORD(v81[0]) = 0;
  v78 = 0;
  if (((*(*a3 + 232))(a3, v81, &v78) & 1) == 0)
  {
    goto LABEL_4;
  }

  if (((*(*a1 + 616))(a1, a3, LODWORD(v81[0]), v78) & 1) == 0)
  {
    (*(*a1 + 560))(a1, 0, a2);
    return 0;
  }

  v41 = (*(*a3 + 104))(a3);
  v42 = (*(*a1 + 248))(a1, v41, LODWORD(v81[0]), v78);
  v43 = (*(*a3 + 224))(a3, v42, (a4 >> 11) & 1);
  if (!v43)
  {
LABEL_4:
    if ((a4 & 0x43F) != 0)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    if ((a4 & 0x43F) != 0)
    {
      v22 = a5;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2;
    v24 = CA::OGL::state_image_texture_unit(a1[2], a2);
    v25 = (*(*a1 + 624))(a1, v24, a3, a4, v22, v13, a7, v76, a9, a11);
    v26 = v25;
    if (!v25)
    {
      return v26;
    }

    v27 = *(v25 + 52);
    v28 = BYTE3(v27) & 0x3F;
    v29 = a1[2];
    v30 = *(v29 + 376);
    if (v30)
    {
      v31 = v75;
      if ((*v30 - 1) <= 3)
      {
        if (*v30 == 1)
        {
          v32 = 28;
        }

        else
        {
          v32 = 30;
        }

        if (*(v30 + 16) > 0.0)
        {
          v28 = v32 | 1;
        }

        else
        {
          v28 = v32;
        }

        v31 = 1;
      }
    }

    else
    {
      v31 = v75;
    }

    if (v28 > 3)
    {
      if (v28 <= 0x2C)
      {
        if (((1 << v28) & 0x120004000000) != 0)
        {
          v36 = v29 + a2;
          *(v36 + 60) = BYTE5(v27) & 0xF;
          *(v36 + 62) = (*(v25 + 52) >> 44) & 3;
          v37 = v29 + 16 * a2 + 64;
          v38 = (*(v25 + 58) & 7) - 2;
          if (v38 > 4)
          {
            v40 = 0.0;
            v39.i32[0] = 0.5;
          }

          else
          {
            v39.i32[0] = dword_183E240A0[v38];
            v40 = flt_183E240B4[v38];
          }

          v45 = v76->f32[1];
          v46 = v76->f32[3];
          *(v37 + 8) = v39.i32[0];
          *(v37 + 12) = v40;
          v47 = *(v25 + 52);
          if ((v47 & 0x40000000000000) != 0)
          {
            v39.f32[0] = v39.f32[0] * 0.5;
            *(v37 + 8) = v39.i32[0];
            v47 = *(v25 + 52);
          }

          if ((v47 & 0x80000000000000) != 0)
          {
            v40 = v40 * 0.5;
            *(v37 + 12) = v40;
          }

          if (v45 > v46)
          {
            v40 = -v40;
            *(v37 + 12) = v40;
          }

          v48 = *(v25 + 52);
          if ((v48 & 0x100000000000000) != 0)
          {
            *v37 = 1065353216;
            v39.f32[1] = v40;
            *(v37 + 8) = vdiv_f32(v39, vcvt_f32_u32(vshl_u32(a3[2], vneg_s32(vand_s8(vmovn_s64(vshlq_u64(vdupq_n_s64(v48), xmmword_183E21130)), 0x100000001)))));
            v49 = 1.0;
          }

          else
          {
            v49 = 0.5;
            if ((v48 & 0x40000000000000) != 0)
            {
              v50 = 0.5;
            }

            else
            {
              v50 = 1.0;
            }

            *v37 = v50;
            if ((*(v25 + 58) & 0x80) == 0)
            {
              v49 = 1.0;
            }
          }

          *(v37 + 4) = v49;
LABEL_91:
          v54 = *(v26 + 52);
          if ((v54 & 0x800000000000000) != 0)
          {
            if ((v54 & 0x100000000000000) != 0)
            {
              *v61.f32 = vcvt_f32_u32(a3[2]);
              __asm { FMOV            V1.2S, #1.0 }

              _D8 = vdiv_f32(_D1, *v61.f32);
              v61.i64[1] = v61.i64[0];
              *v76 = vmulq_f32(*v76, v61);
            }

            else
            {
              __asm { FMOV            V8.2S, #1.0 }
            }

            v55 = a1[2];
            *(v55 + 320) |= 1 << a2;
          }

          else
          {
            v55 = a1[2];
            __asm { FMOV            V8.2S, #1.0 }
          }

          v63 = (v55 + 16 * a2);
          v64 = vcvt_f32_u32(a3[2]);
          __asm { FMOV            V1.2S, #1.0 }

          v63[42] = v64;
          v63[43] = vdiv_f32(_D1, v64);
          v66 = (*(*a3 + 168))(a3);
          v67 = a1[2];
          if (v66 != 1.0)
          {
            *&v67[4 * a2 + 328] = 1.0 / v66;
            v67[321] |= 1 << a2;
            if ((*(*a3 + 176))(a3))
            {
              v67 = a1[2];
              if (*(a1 + 144) != 1.0)
              {
                v67[322] |= 1 << a2;
              }
            }

            else
            {
              v67 = a1[2];
            }

            v23 = a2;
          }

          if ((*(v26 + 58) & 0x20) != 0)
          {
            v67[323] |= 1 << v23;
          }

          v67[a2 + 17] = v28;
          v68 = a1[2] + 16 * a2;
          *(v68 + 96) = _D8;
          *(v68 + 104) = 0;
          if (v31)
          {
            goto LABEL_114;
          }

          goto LABEL_106;
        }

        if (((1 << v28) & 0x81000000000) != 0)
        {
          v35 = v29 + a2;
          *(v35 + 60) = BYTE5(v27) & 0xF;
          *(v35 + 62) = (*(v25 + 52) >> 44) & 3;
          goto LABEL_91;
        }

        if (v28 == 25)
        {
          if (a3[1].i32[1] & 0x1000 | a4 & 0x200 && ((a4 & 0x100) != 0 || (*(*a1 + 448))(a1)))
          {
            LOBYTE(v28) = 33;
          }

          else
          {
            LOBYTE(v28) = 25;
          }

          goto LABEL_91;
        }
      }

      if (v28 != 4)
      {
        if (v28 != 5)
        {
          goto LABEL_91;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (v28 <= 1)
      {
        if (v28)
        {
          if (v28 != 1)
          {
            goto LABEL_91;
          }

          goto LABEL_72;
        }

        goto LABEL_80;
      }

      if (v28 != 2)
      {
LABEL_72:
        if ((a4 & 0x100) == 0)
        {
          v51 = (*(*a1 + 448))(a1);
          if (v28 == 3)
          {
            v52 = 2;
          }

          else
          {
            v52 = 4;
          }

          if (v28 == 1)
          {
            v52 = 0;
          }

          if ((v51 & 1) == 0)
          {
            LOBYTE(v28) = v52;
          }
        }

        goto LABEL_91;
      }
    }

LABEL_80:
    if ((*(*a3 + 128))(a3) <= 3 && a3[1].i32[1] & 0x1000 | a4 & 0x200 && ((a4 & 0x100) != 0 || (*(*a1 + 448))(a1)))
    {
      if (v28 == 2)
      {
        v53 = 3;
      }

      else
      {
        v53 = 5;
      }

      if (v28)
      {
        LOBYTE(v28) = v53;
      }

      else
      {
        LOBYTE(v28) = 1;
      }
    }

    goto LABEL_91;
  }

  v44 = v43;
  v26 = CA::OGL::bind_tiled_image(a1, a2, v43, a4, a5, v13, a8, v76, a9);
  if (atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v44 + 16))(v44);
  }

  v23 = a2;
  if (v26)
  {
    goto LABEL_25;
  }

  return v26;
}

uint64_t *CA::OGL::Context::lookup_image(os_unfair_lock_s *this, CA::Render::Texture *a2, int a3)
{
  v6 = (*(*a2 + 160))(a2, this, 0);
  if (v6)
  {
    return v6;
  }

  v7 = (*(*a2 + 88))(a2);
  os_unfair_lock_lock(this + 178);
  v8 = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::find<CA::OGL::Context::RenderObjectSlice>(&this[180]._os_unfair_lock_opaque, v7, 0);
  if (!v8)
  {
    v6 = 0;
LABEL_6:
    if (a3)
    {
      v6 = (*(*&this->_os_unfair_lock_opaque + 672))(this);
      v9 = 0x9DDFEA08EB382D69 * ((8 * (v7 & 0x1FFFFFFF) + 8) ^ HIDWORD(v7));
      v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ (v9 >> 47) ^ v9);
      v11 = (0x77FA823ACE0B5A40 * (v10 ^ (v10 >> 47)) + ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) >> 2) - 0x61C8864680B583E9) ^ (0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47)));
      v12 = *&this[182]._os_unfair_lock_opaque;
      if (v12)
      {
        v13 = vcnt_s8(v12);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = (0x77FA823ACE0B5A40 * (v10 ^ (v10 >> 47)) + ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) >> 2) - 0x61C8864680B583E9) ^ (0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47)));
          if (v11 >= *&v12)
          {
            v14 = v11 % *&v12;
          }
        }

        else
        {
          v14 = v11 & (*&v12 - 1);
        }

        v15 = *(*&this[180]._os_unfair_lock_opaque + 8 * v14);
        if (v15)
        {
          for (i = *v15; i; i = *i)
          {
            v17 = i[1];
            if (v17 == v11)
            {
              if (i[2] == v7 && *(i + 24) == 0)
              {
                goto LABEL_29;
              }
            }

            else
            {
              if (v13.u32[0] > 1uLL)
              {
                if (v17 >= *&v12)
                {
                  v17 %= *&v12;
                }
              }

              else
              {
                v17 &= *&v12 - 1;
              }

              if (v17 != v14)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    goto LABEL_29;
  }

  v6 = v8[4];
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_29:
  if (v6)
  {
    if (*v6)
    {
      (*(**v6 + 152))(*v6, this, 0);
    }

    *v6 = a2;
    *(v6 + 52) = *(v6 + 52) & 0xFFFFFFC0FFFFFFFFLL | ((*(a2 + 3) & 0x3F) << 32);
    (*(*a2 + 144))(a2, this, v6, 0);
  }

  os_unfair_lock_unlock(this + 178);
  return v6;
}

unint64_t CA::OGL::MetalContext::bind_image_impl(uint64_t a1, unsigned int a2, CA::Render::Texture *a3, __int16 a4, int a5, char a6, int a7, uint64_t a8, float a9, uint64_t a10)
{
  v45 = *MEMORY[0x1E69E9840];
  v19 = CA::OGL::Context::lookup_image(a1, a3, 1);
  v20 = v19;
  if (!v19)
  {
    return v20;
  }

  if (*(a3 + 12) == 23 && !*(v19 + 26))
  {
    *(v19 + 123) |= 2u;
  }

  v21 = CA::OGL::MetalContext::retain_image(a1, v19, a3, 0);
  if (!v21)
  {
    return 0;
  }

  v23 = v21;
  if (*(v20 + 64))
  {
    if (*(v20 + 122))
    {
      v24 = *(v20 + 8);
      if (v24)
      {
        if (*(v20 + 16) != *(v24 + 36))
        {
          *(v20 + 52) = *(v20 + 52) & 0xFFFFFFFFFFF0FFFFLL | ((a5 & 0xF) << 16);
          v25 = *(v24 + 12);
          if (v25 == 57)
          {
            CA::OGL::MetalContext::update_surface(a1, v20, v24, a2, a10);
          }

          else if (v25 == 23)
          {
            CA::OGL::MetalContext::update_image(a1, v20, v24, a2, a10);
          }
        }
      }
    }

    goto LABEL_31;
  }

  v26 = *(a1 + 3296);
  if (v26 < *(v21 + 4) || v26 < *(v21 + 5))
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v27 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v28 = *(v23 + 4);
    v29 = *(v23 + 5);
    v42[0] = 67109376;
    v42[1] = v28;
    v43 = 1024;
    v44 = v29;
    v30 = "%d by %d image is too large for GPU, ignoring\n";
    v31 = v27;
    v32 = 14;
    goto LABEL_19;
  }

  if (*(v21 + 12) == 23)
  {
    v33 = *(a1 + 3304);
    if (v33)
    {
      if (v21[22] > v33)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v34 = x_log_get_ogl_metal(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        LOWORD(v42[0]) = 0;
        v30 = "Image stride is too large for GPU, ignoring\n";
        v31 = v34;
        v32 = 2;
LABEL_19:
        _os_log_error_impl(&dword_183AA6000, v31, OS_LOG_TYPE_ERROR, v30, v42, v32);
        return 0;
      }
    }
  }

  if (a5 == 2)
  {
    *(v20 + 52) = *(v20 + 52) & 0xFFFFFFFFFFF0FFFFLL | 0x20000;
  }

  CA::OGL::MetalContext::update_texture(a1, v20, v21, a2, a10, v22);
LABEL_31:
  v35 = *(v20 + 122);
  if (!*(v20 + 122))
  {
    return 0;
  }

  v36 = 0;
  v37 = *(a1 + 16);
  v38 = v37 + 144;
  v39 = v37 + 176;
  do
  {
    if (v36 == 3)
    {
      __assert_rtn("create_image_binding", "ogl-metal.mm", 4264, "plane < OGL_MAX_PLANES_PER_IMAGE");
    }

    *(v38 + 2 * a2) = *(v20 + 52);
    *(v39 + 8 * a2++) = v36++ | v20;
  }

  while (v35 != v36);
  if (a5 == 2)
  {
    if (*(v20 + 123))
    {
      LOBYTE(a5) = 2;
    }

    else
    {
      LOBYTE(a5) = 1;
    }
  }

  v40 = *(v20 + 52) & 0xFFE7FFFFFF00FFFFLL | ((a5 & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((a6 & 0xF) << 20);
  *(v20 + 48) = a9;
  if (a7 == 1)
  {
    a7 = (*(v20 + 123) >> 1) & 1;
  }

  *(v20 + 52) = v40 | ((a7 & 3) << 51);
  *a8 = xmmword_183E21100;
  if (((a4 & 0x800) == 0) != (*(v23 + 13) & 8) >> 3)
  {
    *(a8 + 4) = 1065353216;
    *(a8 + 12) = 0;
  }

  return v20;
}

uint64_t CA::Render::Texture::get_pointer(CA::Render::Texture *this, void *a2)
{
  if (*(this + 13) == a2)
  {
    return *(this + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t CA::OGL::MetalContext::ensure_gamma_lut_buffer(CA::OGL::MetalContext *this)
{
  if (*(this + 640))
  {
    return 1;
  }

  result = [*(this + 438) newBufferWithLength:0x20000 options:0];
  *(this + 640) = result;
  if (result)
  {
    [result setLabel:@"com.apple.coreanimation.gamma-lut"];
    v3 = [*(this + 640) contents];
    v4 = 0;
    v5 = 0x3000200010000;
    v28 = vdupq_n_s32(0x3D9E8391u);
    v29 = vdupq_n_s32(0x3D25AEE6u);
    v26 = vdupq_n_s32(0x3D55891Au);
    v27 = vdupq_n_s32(0x3F72A76Fu);
    v24 = vdupq_n_s32(0x414EB852u);
    v25 = vdupq_n_s32(0x3B4D2E1Cu);
    v22 = vdupq_n_s32(0xBD6147AE);
    v23 = vdupq_n_s32(0x3F870A3Du);
    v6.i64[0] = 0x7F0000007FLL;
    v6.i64[1] = 0x7F0000007FLL;
    v21 = vnegq_f32(v6);
    do
    {
      v30 = vcvtq_f32_f16(vadd_s16(v5, v5));
      v38 = vabsq_f32(v30);
      v35 = vmlaq_f32(v26, v27, v38);
      v31 = powf(v35.f32[1], 2.4);
      *v7.i32 = powf(v35.f32[0], 2.4);
      *&v7.i32[1] = v31;
      v32 = v7;
      v8 = powf(v35.f32[2], 2.4);
      v9 = v32;
      *&v9.i32[2] = v8;
      v33 = v9;
      v10 = powf(v35.f32[3], 2.4);
      v11 = v33;
      *&v11.i32[3] = v10;
      v12.i64[0] = 0x8000000080000000;
      v12.i64[1] = 0x8000000080000000;
      v34 = vbslq_s8(vcgeq_f32(v29, v38), vmulq_f32(v30, v28), vbslq_s8(v12, v11, v30));
      v35.i32[0] = powf(v38.f32[1], 0.41667);
      v13.f32[0] = powf(v38.f32[0], 0.41667);
      v13.i32[1] = v35.i32[0];
      v36 = v13;
      v14 = powf(v38.f32[2], 0.41667);
      v15 = v36;
      v15.f32[2] = v14;
      v37 = v15;
      v16 = powf(v38.f32[3], 0.41667);
      v17 = v37;
      v17.f32[3] = v16;
      v18.i64[0] = 0x8000000080000000;
      v18.i64[1] = 0x8000000080000000;
      v19 = vbslq_s8(vcgeq_f32(v25, v38), vmulq_f32(v30, v24), vbslq_s8(v18, vmlaq_f32(v22, v23, v17), v30));
      v20 = (v3 + v4);
      *v20 = vcvt_f16_f32(vandq_s8(v34, vcgtq_s32(v21, (*&v34 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)))));
      v20[0x2000] = vcvt_f16_f32(vandq_s8(v19, vcgtq_s32(v21, (*&v19 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)))));
      v5 = vadd_s16(v5, 0x4000400040004);
      v4 += 8;
    }

    while (v4 != 0x10000);
    return 1;
  }

  return result;
}

CA::OGL::Context *CA::OGL::fill_round_rect_tex(CA::OGL::Context *result, float64x2_t **a2, float *a3, int a4, uint64_t a5, double *a6, float64_t a7, float64_t a8)
{
  v74[4] = *MEMORY[0x1E69E9840];
  v8 = (*a2)[1].f64[0];
  v9 = (*a2)[1].f64[1];
  if (v8 >= v9)
  {
    v10 = (*a2)[1].f64[1];
  }

  else
  {
    v10 = (*a2)[1].f64[0];
  }

  if (v10 > 0.0)
  {
    v16 = result;
    v63 = 0;
    v17 = a2[1];
    if ((LOBYTE(v17[9].f64[0]) & 0x10) != 0)
    {
      v20 = vaddvq_f64(vmulq_f64(*v17, *v17));
      v21 = vaddvq_f64(vmulq_f64(v17[2], v17[2]));
      v22 = v17[7].f64[1];
      if (v22 != 1.0)
      {
        v23 = 1.0 / (v22 * v22);
        v20 = v23 * v20;
        v21 = v23 * v21;
      }

      v24 = v20 != 1.0;
      if (v21 != 1.0)
      {
        v24 = 1;
      }

      v25 = sqrt(v20);
      v26 = sqrt(v21);
      if (v24)
      {
        v19 = v26;
      }

      else
      {
        v19 = v21;
      }

      if (v24)
      {
        v18 = v25;
      }

      else
      {
        v18 = v20;
      }
    }

    else
    {
      v18 = v17[8].f64[0];
      v19 = v18;
    }

    v27.f64[0] = a7;
    v27.f64[1] = a8;
    v28 = vmulq_f64(v27, vdupq_n_s64(0x3FF875696E58A32FuLL));
    if (a5)
    {
      v29 = v28.f64[1];
    }

    else
    {
      v29 = a8;
    }

    if (a5)
    {
      v30 = v28.f64[0];
    }

    else
    {
      v30 = a7;
    }

    v31 = v19 * v29;
    if (v18 * v30 >= 1.0 && a4 != 0 && v31 >= 1.0)
    {
      v34 = ceil(v18 * v30);
      v35 = ceil(v31);
      if (v34 <= v35)
      {
        v34 = v35;
      }

      v36 = v34;
      v37 = *(a2 + 4);
      *(*(result + 2) + 16) = 5;
      v38 = (v37 >> 21) & 1;
      if (a5)
      {
        v39 = vaddq_f64(vdivq_f64(vmulq_f64((*a2)[1], vdupq_n_s64(0xBFF721E8A7A4B61BLL)), v28), vdupq_n_s64(0x400721E8A7A4B61BuLL));
        __asm { FMOV            V1.2D, #1.0 }

        v43 = vbslq_s8(vcgtq_f64(v39, _Q1), _Q1, v39);
        *&v74[0] = vcvt_f32_f64(vbicq_s8(v43, vcltzq_f64(v43)));
        (*(*result + 512))(result, 1, v36, 0, v38, &v63, a5, v74);
      }

      else
      {
        (*(*result + 504))(result, 1, v36, 0, v38, &v63);
      }

      v45 = *a2;
      v74[0] = (*a2)->f64[0];
      v74[1] = v74[0] + v30;
      v46 = v45[1].f64[0];
      v74[2] = v46 + v74[0] - v30;
      v74[3] = v46 + v74[0];
      v73[0] = v45->f64[1];
      v73[1] = v73[0] + v29;
      v47 = v45[1].f64[1];
      v73[2] = v47 + v73[0] - v29;
      v73[3] = v47 + v73[0];
      v48 = v30 / v46;
      v49 = v29 / v47;
      v50 = *a3;
      v51 = a3[1];
      v52 = a3[2];
      v53 = a3[3];
      v70 = __PAIR64__(*a3 + ((v52 - *a3) * v48), *a3);
      v71 = v52 + ((v50 - v52) * v48);
      v72 = v52;
      v69[0] = v51;
      v69[1] = v51 + ((v53 - v51) * v49);
      v69[2] = v53 + ((v51 - v53) * v49);
      v69[3] = v53;
      v54 = v63;
      LODWORD(v65) = v63;
      v66 = *&v63 + ((*(&v63 + 1) - *&v63) * 0.5);
      v67 = v66;
      v68 = HIDWORD(v63);
      LODWORD(v64[0]) = v63;
      v64[1] = v66;
      v64[2] = v66;
      v64[3] = *(&v63 + 1);
      if (v46 == v47 && (fabs(v46 + v30 * -2.0) < 1.0 ? (v55 = v30 == v29) : (v55 = 0), v55 && ((*(a2 + 20) & 0xF) == 0 || (a2[2] & 9) == 0)))
      {
        v56 = a6 == 0;
        if (a4 == 15 && !a6)
        {
          *v62 = v50;
          *&v62[1] = v51;
          *&v62[2] = v52;
          *&v62[3] = v53;
          v59 = v63;
          v60 = v61;
          vst2_f32(v60, *&v54);
          CA::OGL::emit_one_part_rect(v16, a2, v62, v61, 0);
LABEL_51:
          result = (*(*v16 + 560))(v16, 0, 1);
          *(*(v16 + 16) + 16) = 0;
          return result;
        }
      }

      else
      {
        v56 = a6 == 0;
      }

      v57 = v19 * v18 * (v8 * v9) >= *(v16 + 72);
      {
        CA::OGL::emit_nine_part_rect(v16, a2, v74, v73, &v70, v69, &v65, v64, (((a4 & 0xF) << 22) | (v57 << 16)) ^ 0x7C00000);
      }

      goto LABEL_51;
    }

    return CA::OGL::fill_rect_tex(result, a2, a3);
  }

  return result;
}

float *CA::Render::GradientLayer::color_map(CA::Render::GradientLayer *this, uint64_t a2, int a3)
{
  if ((*(a2 + 13) & 8) != 0)
  {
    result = *(a2 + 112);
    goto LABEL_11;
  }

  if (a3)
  {
    v5 = 120;
  }

  else
  {
    v5 = 112;
  }

  result = *(a2 + v5);
  if (!result)
  {
    result = CA::Render::Gradient::create_color_map((a2 + 16), *(a2 + 128), a3);
    v7 = *(a2 + v5);
    *(a2 + v5) = result;
    if (v7)
    {
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v7 + 16))(v7);
      }

      result = *(a2 + v5);
    }

LABEL_11:
    if (!result)
    {
      goto LABEL_14;
    }
  }

  v8 = (result + 2);
  if (!atomic_fetch_add(result + 2, 1u))
  {
    result = 0;
    atomic_fetch_add(v8, 0xFFFFFFFF);
  }

LABEL_14:
  *this = result;
  return result;
}

uint64_t CA::OGL::render_subclass(CA::OGL::Renderer &,CA::OGL::Layer const*)::visitor::visit_subclass(uint64_t a1, uint64_t a2, double *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v5;
  v7 = *(*v5 + 82);
  v8 = *(v4 + 24);
  v9 = *(v8 + 80);
  v83.f64[0] = *(v8 + 72);
  *&v83.f64[1] = v9;
  v10 = *(v8 + 96);
  v84.f64[0] = *(v8 + 88);
  v84.f64[1] = v10;
  v81.f64[0] = v83.f64[0];
  *&v81.f64[1] = v9;
  v82.f64[0] = v84.f64[0];
  v82.f64[1] = v10;
  CA::Rect::apply_transform(&v81, *(v7 + 24), a3);
  result = CA::OGL::rect_intersects_clip_p(*(v7 + 8), v81, v82);
  if (result)
  {
    v16 = *(v7 + 24);
    v13.i64[0] = 1.0;
    v14.i64[0] = 1.0;
    v17 = CA::OGL::transform_filter_bits(v16, v12, v13, v14, v15);
    v18.i64[0] = 1.0;
    v69 = v84;
    v20 = CA::OGL::rect_filter_bits(v16, v17, v19, v83, v84, v18, 1.0);
    v21 = (*(v6 + 873) & 0x40) == 0 && (*(*v6 + 232))(v6, 23) != 0;
    v80 = 0;
    result = CA::Render::GradientLayer::color_map(&v80, a2, v21);
    v22 = v80;
    if (v80)
    {
      result = (*(*v80 + 80))(v80);
      if (!result)
      {
        goto LABEL_60;
      }

      v23 = result;
      v68 = v20;
      v24 = *(a2 + 104);
      v25 = v24 == 587;
      if (v24 == 128)
      {
        v25 = 1;
      }

      v26 = v25 ? 528647 : 4359;
      v86 = 0uLL;
      CA::OGL::prepare_color_program_cache(v5, v4, result, 0);
      result = CA::OGL::Context::bind_image(v6, 0, v23, v26, 1u, 1, v24 == 128, 0, 0.0, &v86, 0);
      if (!result)
      {
        goto LABEL_60;
      }

      v27 = result;
      v28 = *(v7 + 38);
      if (v28 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        v29 = *(a2 + 12);
        if ((v29 & 0x800) != 0)
        {
          if ((v29 & 0x1000) != 0)
          {
LABEL_16:
            v30 = *(v6[2] + 496);
            if (v30 > 3 || v30 == 2)
            {
              v31 = 0;
            }

            else
            {
              v31 = 0x8000;
            }

            v32 = 1;
LABEL_23:
            v33 = *(v7 + 32) | (*(v7 + 36) << 32);
            if ((v68 & 9) != 0 && (*(v4 + 41) & 0xF) != 0 || (*(v4 + 32) & 0x10) != 0)
            {
              v32 = 0;
            }

            v86.f32[3] = (v86.f32[3] + v86.f32[1]) * 0.5;
            v86.i32[1] = v86.i32[3];
            v34 = v6[2];
            v35 = *(v34 + 496);
            if (v35 >= 2 && (v35 != 3 || (v32 & 1) == 0))
            {
              *(v34 + 497) |= 1u;
              v34 = v6[2];
            }

            *(v34 + 8) = v33;
            *(v34 + 12) = WORD2(v33);
            *(v34 + 14) = v28;
            v85 = 0uLL;
            if (v24 == 587)
            {
              v43 = *(a2 + 72);
              v44 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(vsubq_f64(*(a2 + 88), v43), v69)));
              __asm { FMOV            V2.2D, #-1.0 }

              v85 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vmulq_f64(v69, v43), v44)), vdivq_f64(vmulq_f64(vaddq_f64(v43, _Q2), v69), v44));
              v41 = v6[2];
              v42 = 1;
            }

            else
            {
              if (v24 != 128)
              {
                if (v24 == 58)
                {
                  __asm { FMOV            V0.2S, #1.0 }

                  v85.i64[1] = _D0;
                }

LABEL_38:
                v46 = (*(*v23 + 104))(v23);
                v47 = (v46 < 0x1D) & (0x17826000u >> v46);
                if (v47 == 1)
                {
                  v48 = *(a2 + 108);
                  *(v6[2] + 497) |= 2u;
                  *(v6[2] + 368) = v48;
                }

                v49 = *(v4 + 41);
                v50 = *(v7 + 24);
                v72[0] = &v83;
                v72[1] = v50;
                v73 = v31 | v68;
                v74 = v49;
                v76 = 0;
                v77 = 0;
                v78 = a2;
                v79 = &v86;
                v51 = *(v4 + 24);
                v52 = *(v51 + 136);
                v53 = 0.0;
                if (v52)
                {
                  v54 = *(v52 + 72);
                  if (v54)
                  {
                    CA::OGL::fill_uneven_round_rect_tex(v6, v72, (v54 + 24), &v85, *(v51 + 44) & 3);
                    if (!v47)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_55;
                  }

                  v55 = *(v52 + 56);
                  if (v55)
                  {
                    v56 = (*(*v55 + 80))(v55, 0.0);
                    v57 = *(v4 + 24);
                    v58 = *(v57 + 136);
                    if (v58)
                    {
                      v59 = *(v58 + 64);
                      if (v59)
                      {
                        if (*(v59 + 16) > 3u)
                        {
                          v63 = vsubq_f64(*(v59 + 40), *(v59 + 24));
                          v70 = *(v59 + 24);
                          v71 = v63;
                        }

                        else
                        {
                          v70 = 0u;
                          v71 = 0u;
                        }
                      }

                      else
                      {
                        __asm { FMOV            V0.2D, #0.5 }

                        v70 = _Q0;
                        v71 = 0uLL;
                      }

                      v61 = *(v58 + 232);
                    }

                    else
                    {
                      __asm { FMOV            V0.2D, #0.5 }

                      v70 = _Q0;
                      v71 = 0uLL;
                      v61 = 0.0;
                    }

                    CA::OGL::fill_corner_rect_tex(v6, v72, v56, &v70, *(*(v4 + 16) + 24) & 1, HIWORD(*(v57 + 48)) & 1, &v85, *(v57 + 42) & 0xF, v61, v61, 0);
                    if (!v47)
                    {
                      goto LABEL_56;
                    }

LABEL_55:
                    *(v6[2] + 497) &= ~2u;
LABEL_56:
                    *(v6[2] + 19) = 0;
                    *(v6[2] + 497) &= ~1u;
                    (*(*v6 + 560))(v6, v27, 0);
                    v66 = *(*(v4 + 24) + 152);
                    if (v66)
                    {
                      v67 = (*(v66 + 104) >> 53) & 7;
                    }

                    else
                    {
                      LODWORD(v67) = 0;
                    }

                    result = CA::OGL::fill_color_rect(v6, &v83, v68, 0, v32 ^ 1u, v67, v64, v65);
LABEL_60:
                    if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
                    {
                      return (*(*v22 + 16))(v22);
                    }

                    return result;
                  }

                  v53 = *(v52 + 232);
                }

                CA::OGL::fill_round_rect_tex(v6, v72, v85.f32, *(v51 + 42) & 0xF, *(v51 + 44) & 3, 0, v53, v53);
                if (!v47)
                {
                  goto LABEL_56;
                }

                goto LABEL_55;
              }

              v85 = xmmword_183E210B0;
              v41 = v6[2];
              v42 = 2;
            }

            *(v41 + 19) = v42;
            goto LABEL_38;
          }
        }

        else if ((*(a2 + 28) & 0x800) != 0)
        {
          goto LABEL_16;
        }
      }

      v32 = 0;
      v31 = 0;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t CA::OGL::anonymous namespace::GradientRectState::map_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  v5 = *(v4 + 104);
  if (v5 == 128)
  {
    _Q2 = *(v4 + 72);
    v17 = vsubq_f64(*(v4 + 88), _Q2);
    v18 = sqrt(vaddvq_f64(vmulq_f64(v17, v17)));
    v19 = 0.0;
    if (v18 != 0.0)
    {
      v19 = (-1.0 / v18);
    }

    if (a4)
    {
      v20 = vcvt_f32_f64(vmulq_n_f64(v17, v19));
      _D4 = 2.0;
      v22 = _Q2.f64[0] * 2.0 + -1.0;
      __asm { FMLA            D3, D4, V2.D[1] }

      v28 = _D3;
      v29 = (a3 + 16);
      do
      {
        v30 = vmul_n_f32(v20, *v29 - v22);
        v31 = vrev64_s32(vmul_n_f32(v20, v29[1] + v28));
        LODWORD(v32) = vsub_f32(v30, v31).u32[0];
        HIDWORD(v32) = vadd_f32(v30, v31).i32[1];
        *v29 = v32;
        v29 += 12;
        --a4;
      }

      while (a4);
    }
  }

  else if (v5 == 58)
  {
    v6 = vcvt_f32_f64(*(v4 + 72));
    v7 = vcvt_f32_f64(vsubq_f64(*(v4 + 88), vcvtq_f64_f32(v6)));
    v8 = vaddv_f32(vmul_f32(v7, v7));
    v9 = 1.0 / v8;
    if (v8 == 0.0)
    {
      v9 = v8;
    }

    if (a4)
    {
      v10 = *(result + 56);
      v11 = *v10;
      v12 = v9 * (v10[2] - *v10);
      v13 = v12 * v7.f32[0];
      v14 = vmuls_lane_f32(v12, v7, 1);
      v15 = (a3 + 20);
      do
      {
        *(v15 - 1) = (v11 + ((*(v15 - 1) - v6.f32[0]) * v13)) + ((*v15 - v6.f32[1]) * v14);
        *v15 = v10[1];
        v15 += 12;
        --a4;
      }

      while (a4);
    }
  }

  return result;
}

uint64_t CACGColorSpaceIsRec709(uint64_t a1)
{
  if (CAGetColorSpace(27) == a1 || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(28) == a1 || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(24) == a1)
  {
    return 1;
  }

  return CGColorSpaceEqualToColorSpaceIgnoringRange();
}

uint64_t CACGColorSpaceIsRec601NTSC(uint64_t a1)
{
  if (CAGetColorSpace(29) == a1)
  {
    return 1;
  }

  return CGColorSpaceEqualToColorSpaceIgnoringRange();
}

uint64_t CACGColorSpaceIsRec601PAL(uint64_t a1)
{
  if (CAGetColorSpace(30) == a1)
  {
    return 1;
  }

  return CGColorSpaceEqualToColorSpaceIgnoringRange();
}

_DWORD *CA::ColorProgram::Cache::lookup(CA::ColorProgram::Cache *this, CGColorSpace *a2, int a3, uint64_t a4)
{
  v8 = *(this + 84);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(this + 85);
  }

  if (((*(this + 22) == 2) & v9) == 0 && !*(this + 5))
  {
    if (!CARequiresColorMatching(a2, *this, 0))
    {
      return 0;
    }

    v8 = *(this + 84);
  }

  if (*(this + 80))
  {
    v10 = a3 | 2;
  }

  else
  {
    v10 = a3;
  }

  v11 = v10 | 0x80;
  if (*(this + 86))
  {
    v11 = v10;
  }

  if (*(this + 81))
  {
    v10 = v11;
  }

  if (*(this + 82))
  {
    v10 |= 8u;
  }

  if (v8)
  {
    v12 = v10 | 0x10;
  }

  else
  {
    v12 = v10;
  }

  if (*(this + 85))
  {
    v12 |= 0x20u;
  }

  v13 = v12 | 0x40;
  if ((*(this + 86) & 1) == 0)
  {
    v13 = v12;
  }

  if (!BYTE7(xmmword_1ED4E988C))
  {
    v13 |= 0x100u;
  }

  if (!BYTE8(xmmword_1ED4E988C))
  {
    v13 |= 0x200u;
  }

  if (*(this + 87))
  {
    v14 = v13 | 0x400;
  }

  else
  {
    v14 = v13;
  }

  if (*(this + 83) & 1) != 0 || (BYTE11(xmmword_1ED4E982C))
  {
    if (BYTE10(xmmword_1ED4E982C) == 1)
    {
LABEL_36:
      v14 |= 4u;
    }
  }

  else if (!a4 || *(a4 + 60) != 1 || (BYTE10(xmmword_1ED4E982C) & 1) != 0)
  {
    goto LABEL_36;
  }

  result = CA::ColorProgram::Cache::lookup_(this, a2, v14, a4);
  if (result)
  {
    if (!result[9])
    {
      return 0;
    }
  }

  return result;
}

unint64_t CA::OGL::emit_nine_part_rect(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v82[79] = *MEMORY[0x1E69E9840];
  v9 = (a9 & 0x3C00000) != 0;
  v10 = (a9 & 0x8000000) == 0;
  v11 = v9 && v10;
  if (v9 && v10)
  {
    v12 = 20;
  }

  else
  {
    v12 = 16;
  }

  if (a7)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 > *(result + 152))
  {
    return result;
  }

  v15 = result;
  v16 = 0;
  v17 = *(result + 136);
  v18 = (v17 + 28);
  v19 = v82;
  v20 = xmmword_183E20E60;
  do
  {
    v21 = 0;
    v22 = *(a4 + 8 * v16);
    v23 = v19;
    v24 = v18;
    do
    {
      *(v23 - 2) = *(a3 + 8 * v21);
      *(v23 - 1) = v22;
      *v23 = xmmword_183E20E60;
      if (a5)
      {
        *(v24 - 3) = *(a5 + 4 * v21);
        *(v24 - 2) = *(a6 + 4 * v16);
      }

      if (a7)
      {
        *(v24 - 1) = *(a7 + 4 * v21);
        *v24 = *(a8 + 4 * v16);
      }

      ++v21;
      v24 += 12;
      v23 += 2;
    }

    while (v21 != 4);
    ++v16;
    v18 += 48;
    v19 += 16;
  }

  while (v16 != 4);
  if (v11)
  {
    v20.n128_f32[0] = CA::OGL::adjust_skipped_corner_vertices_simple(&v81, v17, 4, v13, a9);
  }

  v25 = *(*(v15 + 2) + 8);
  v26 = 32;
  v27 = v12;
  do
  {
    *(v17 + v26) = v25;
    v26 += 48;
    --v27;
  }

  while (v27);
  v28 = *(a2 + 24);
  if (v28)
  {
    v28(a2, &v81, v17, v12, v20);
  }

  CA::OGL::transform_vertices(&v81, v17, v12, *(a2 + 8));
  v29 = *(a2 + 32);
  if (v29)
  {
    v29(a2, v17, v12);
  }

  if ((*(a2 + 16) & 9) == 0)
  {
    goto LABEL_78;
  }

  v30 = *(a2 + 20);
  if ((v30 & 0xF) == 0)
  {
    goto LABEL_78;
  }

  if (v11)
  {
    if ((v30 & 4) != 0)
    {
      CA::OGL::aa_adjust_vertices((v17 + 768), (v17 + 192), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 48), (v17 + 240), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 144), (v17 + 336), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 768), (v17 + 48), 0, 1);
      if ((a9 & 0x400000) != 0)
      {
        v31 = (a9 >> 25) & 2;
        v32 = v13 >= v31;
        v33 = v13 - v31;
        if (v33 != 0 && v32)
        {
          v34 = v17 + 8 * ((a9 >> 26) & 1);
          do
          {
            *(v34 + 784) = *(v34 + 64);
            v34 += 4;
            --v33;
          }

          while (v33);
        }
      }
    }

    if (*(a2 + 20))
    {
      CA::OGL::aa_adjust_vertices(v17, (v17 + 192), 0, 1);
      CA::OGL::aa_adjust_vertices(v17, (v17 + 48), 192, 3);
      CA::OGL::aa_adjust_vertices((v17 + 912), (v17 + 624), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 912), (v17 + 384), 0, 1);
      if ((a9 & 0x400000) != 0)
      {
        v35 = (a9 >> 25) & 2;
        v32 = v13 >= v35;
        v36 = v13 - v35;
        if (v36 != 0 && v32)
        {
          v37 = (v17 + 8 * ((a9 >> 26) & 1) + 208);
          do
          {
            *(v37 - 48) = *v37;
            ++v37;
            --v36;
          }

          while (v36);
        }
      }

      if ((a9 & 0x1000000) != 0)
      {
        v38 = (a9 >> 25) & 2;
        v32 = v13 >= v38;
        v39 = v13 - v38;
        if (v39 != 0 && v32)
        {
          v40 = v17 + 8 * ((a9 >> 26) & 1);
          do
          {
            *(v40 + 928) = *(v40 + 400);
            v40 += 4;
            --v39;
          }

          while (v39);
        }
      }
    }

    if ((*(a2 + 20) & 8) != 0)
    {
      CA::OGL::aa_adjust_vertices((v17 + 576), (v17 + 624), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 576), (v17 + 384), 48, 3);
      CA::OGL::aa_adjust_vertices((v17 + 864), (v17 + 528), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 864), (v17 + 672), 0, 1);
      if ((a9 & 0x1000000) != 0)
      {
        v41 = (a9 >> 25) & 2;
        v32 = v13 >= v41;
        v42 = v13 - v41;
        if (v42 != 0 && v32)
        {
          v43 = (v17 + 8 * ((a9 >> 26) & 1) + 592);
          do
          {
            *v43 = v43[12];
            ++v43;
            --v42;
          }

          while (v42);
        }
      }

      if ((a9 & 0x2000000) != 0)
      {
        v44 = (a9 >> 25) & 2;
        v32 = v13 >= v44;
        v45 = v13 - v44;
        if (v45 != 0 && v32)
        {
          v46 = (v17 + 8 * ((a9 >> 26) & 1) + 880);
          do
          {
            *v46 = *(v46 - 48);
            ++v46;
            --v45;
          }

          while (v45);
        }
      }
    }

    if ((*(a2 + 20) & 2) != 0)
    {
      CA::OGL::aa_adjust_vertices((v17 + 720), (v17 + 528), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 336), (v17 + 288), 192, 3);
      CA::OGL::aa_adjust_vertices((v17 + 816), (v17 + 96), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 816), (v17 + 336), 0, 1);
      if ((a9 & 0x2000000) != 0)
      {
        v47 = (a9 >> 25) & 2;
        v32 = v13 >= v47;
        v48 = v13 - v47;
        if (v48 != 0 && v32)
        {
          v49 = (v17 + 8 * ((a9 >> 26) & 1) + 736);
          do
          {
            *v49 = *(v49 - 48);
            ++v49;
            --v48;
          }

          while (v48);
        }
      }

      if ((a9 & 0x800000) != 0)
      {
        v50 = (a9 >> 25) & 2;
        v32 = v13 >= v50;
        v51 = v13 - v50;
        if (v51 != 0 && v32)
        {
          v52 = v17 + 8 * ((a9 >> 26) & 1);
          do
          {
            *(v52 + 832) = *(v52 + 352);
            v52 += 4;
            --v51;
          }

          while (v51);
        }
      }
    }

    if ((*(a2 + 20) & 4) != 0)
    {
      CA::OGL::aa_adjust_vertices((v17 + 96), (v17 + 288), 0, 1);
      CA::OGL::aa_adjust_vertices((v17 + 144), (v17 + 96), 0, 1);
      if ((a9 & 0x800000) != 0)
      {
        v53 = (a9 >> 25) & 2;
        v32 = v13 >= v53;
        v54 = v13 - v53;
        if (v54 != 0 && v32)
        {
          v55 = (v17 + 8 * ((a9 >> 26) & 1) + 160);
          do
          {
            *v55 = *(v55 - 12);
            ++v55;
            --v54;
          }

          while (v54);
        }
      }
    }

    goto LABEL_78;
  }

  if ((v30 & 4) != 0)
  {
    CA::OGL::aa_adjust_vertices(v17, (v17 + 192), 48, 4);
    v30 = *(a2 + 20);
    if ((v30 & 8) == 0)
    {
LABEL_75:
      if ((v30 & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_100:
      CA::OGL::aa_adjust_vertices(v17, (v17 + 48), 192, 4);
      if ((*(a2 + 20) & 2) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }
  }

  else if ((v30 & 8) == 0)
  {
    goto LABEL_75;
  }

  CA::OGL::aa_adjust_vertices((v17 + 576), (v17 + 384), 48, 4);
  v30 = *(a2 + 20);
  if (v30)
  {
    goto LABEL_100;
  }

LABEL_76:
  if ((v30 & 2) != 0)
  {
LABEL_77:
    CA::OGL::aa_adjust_vertices((v17 + 144), (v17 + 96), 192, 4);
  }

LABEL_78:
  v56 = CA::OGL::Context::need_transparent_source(v15);
  v57 = a9 & 0x40000;
  if ((a9 & 0x8000000) != 0)
  {
    v58 = 20;
  }

  else
  {
    v58 = 4;
  }

  v59 = &CA::OGL::emit_nine_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int,float)::indices;
  if ((a9 & 0x8000000) != 0 && (a9 & 0x3C00000) != 0)
  {
    LODWORD(v56) = MEMORY[0x1EEE9AC00](v56);
    v61 = 0;
    v62 = 0;
    memset(v75, 0, sizeof(v75));
    v76 = xmmword_183E30AC0;
    v77 = unk_183E30AD0;
    v78 = 0x9000A00060005;
    v63 = 12;
    do
    {
      v64 = *(v60 + 8 * v61);
      if ((dword_183E21960[v61] & a9) != 0)
      {
        *&v75[v63] = v64;
        v63 -= 4;
        v58 += 4;
      }

      else
      {
        *&v75[v62] = v64;
        v62 += 4;
      }

      ++v61;
    }

    while (v61 != 4);
    v59 = v75;
  }

  v65 = v56 | (v57 >> 18);
  if (v11)
  {
    v59 = &CA::OGL::emit_nine_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int,float)::corner_skipped_indices;
    v66 = v15;
    v67 = a2;
    v68 = 52;
    v69 = 20;
  }

  else
  {
    v66 = v15;
    v67 = a2;
    v68 = 36;
    v69 = 16;
  }

  result = CA::OGL::emit_mesh_with_center(v66, v67, v59, v68, v58, v69, a9);
  if (v65)
  {
    v70 = vcvtq_f64_f32(*(v17 + 8));
    v80[0] = vcvtq_f64_f32(*v17);
    v80[1] = v70;
    v71 = vcvtq_f64_f32(*(v17 + 152));
    v80[2] = vcvtq_f64_f32(*(v17 + 144));
    v80[3] = v71;
    v72 = vcvtq_f64_f32(*(v17 + 728));
    v80[4] = vcvtq_f64_f32(*(v17 + 720));
    v80[5] = v72;
    v73 = vcvtq_f64_f32(*(v17 + 584));
    v80[6] = vcvtq_f64_f32(*(v17 + 576));
    v80[7] = v73;
    if ((a9 & 0x40000) != 0)
    {
      v74 = *(*(v15 + 2) + 8);
    }

    else
    {
      v74 = 0;
    }

    v79 = v74;
    return CA::OGL::emit_quad_surround(v15, v80, &v79);
  }

  return result;
}

void CA::WindowServer::Display::add_shared_surface(os_unfair_lock_s *this, CA::WindowServer::Surface *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  os_unfair_lock_lock(this + 56);
  *(a2 + 61) = 2;
  v4 = *&this[70]._os_unfair_lock_opaque;
  v5 = *&this[72]._os_unfair_lock_opaque;
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      if (++v4 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    std::vector<CA::WindowServer::Surface *>::push_back[abi:nn200100](&this[70], v6);
  }

  os_unfair_lock_unlock(this + 56);
}

uint64_t CA::Render::Image::num_color_components(CA::Render::Image *this)
{
  v1 = *(this + 168) - 8;
  if (v1 > 0x16)
  {
    return 3;
  }

  else
  {
    return dword_183E227B8[v1];
  }
}

uint64_t CA::OGL::emit_mesh_with_center(uint64_t a1, uint64_t a2, const unsigned __int16 *a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  v8 = a4;
  if ((a7 & 0x4000) != 0)
  {
    v8 = a4 - a5;
  }

  else if ((a7 & 0x30000) != 0 || (*(a2 + 17) & 0x80) != 0)
  {
    v8 = a4 - a5;
    if (a5)
    {
      v12 = *(a1 + 16);
      v13 = *(v12 + 16);
      if ((a7 & 0x10000) != 0)
      {
        v14 = v13 & 0xFFFFFF00FF00FF00;
        if (*(v12 + 8) == 0x3C003C003C003C00)
        {
          v15 = 1;
        }

        else
        {
          v15 = 3;
        }

        *(v12 + 16) = v15 | v14;
        *(v12 + 20) = HIDWORD(v14);
      }

      v16 = *(v12 + 497);
      if ((a7 & 0x20000) != 0)
      {
        *(*(a1 + 16) + 16) = 0;
      }

      if (v16)
      {
        if ((*(a2 + 17) & 0x80) != 0)
        {
          *(*(a1 + 16) + 497) &= ~1u;
        }

        CA::OGL::emit_quad_indices(a1, *(a2 + 40), &a3[v8], a5, a6);
        if ((*(a2 + 17) & 0x80) != 0)
        {
          *(*(a1 + 16) + 497) |= 1u;
        }
      }

      else
      {
        CA::OGL::emit_quad_indices(a1, *(a2 + 40), &a3[v8], a5, a6);
      }

      *(*(a1 + 16) + 16) = v13;
    }
  }

  v17 = *(a2 + 40);

  return CA::OGL::emit_quad_indices(a1, v17, a3, v8, a6);
}

float CA::OGL::anonymous namespace::clamp_nine_part_rect(CA::OGL::_anonymous_namespace_ *this, double *a2, double *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = *(this + 1);
  v8 = *(this + 2);
  if (v7 > v8)
  {
    v9 = (v8 + v7) * 0.5;
    v10 = v9;
    v11 = (v10 - *this) / (v7 - *this);
    *(this + 1) = v10;
    *(this + 2) = v10;
    if (a3)
    {
      v12 = *(a3 + 3) + ((*(a3 + 2) - *(a3 + 3)) * v11);
      *(a3 + 1) = *a3 + ((*(a3 + 1) - *a3) * v11);
      *(a3 + 2) = v12;
    }

    if (a5)
    {
      v13 = *a5 + ((a5[1] - *a5) * v11);
      v14 = a5[3] + ((a5[2] - a5[3]) * v11);
      a5[1] = v13;
      a5[2] = v14;
    }
  }

  v15 = a2[1];
  v16 = a2[2];
  if (v15 > v16)
  {
    v17 = (v16 + v15) * 0.5;
    v18 = v17;
    *&v15 = (v18 - *a2) / (v15 - *a2);
    a2[1] = v18;
    a2[2] = v18;
    if (a4)
    {
      v19 = a4[3] + ((a4[2] - a4[3]) * *&v15);
      a4[1] = *a4 + ((a4[1] - *a4) * *&v15);
      a4[2] = v19;
    }

    if (a6)
    {
      v20 = *a6 + ((a6[1] - *a6) * *&v15);
      *&v15 = a6[3] + ((a6[2] - a6[3]) * *&v15);
      a6[1] = v20;
      a6[2] = *&v15;
    }
  }

  return *&v15;
}

float64_t CA::OGL::get_filter_color_matrix(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(a1 + 24 + 8 * v3);
    if (*(v4 + 16) == 364)
    {
      break;
    }

    if (v2 == ++v3)
    {
      goto LABEL_14;
    }
  }

  if ((v3 & 0x80000000) == 0 && (v5 = *(v4 + 24)) != 0 && *(v5 + 12) == 62 && *(v5 + 16) == 20)
  {
    v6 = 0;
    v7 = (v5 + 24);
    do
    {
      v9 = *v7;
      v8 = v7[1];
      v7 += 2;
      *(a2 + v6) = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v8);
      v6 += 16;
    }

    while (v6 != 80);
  }

  else
  {
LABEL_14:
    *a2 = 1065353216;
    *&v8.f64[0] = 1065353216;
    *(a2 + 72) = 1065353216;
    *(a2 + 12) = 0;
    *(a2 + 4) = 0;
    *(a2 + 20) = 0x3F80000000000000;
    *(a2 + 44) = 0x3F80000000000000;
    *(a2 + 36) = 0;
    *(a2 + 28) = 0;
    *(a2 + 60) = 0;
    *(a2 + 52) = 0;
    *(a2 + 68) = 0;
  }

  return v8.f64[0];
}

uint64_t CA::OGL::should_render_secure_indicators_with_gpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && (*(a3 + 28) & 2) != 0 || (*(a2 + 1376) & 0x8000400) != 0x400)
  {
    v5 = 1;
  }

  else
  {
    v3 = *(a1 + 600);
    if (v3 && (v4 = (*(*v3 + 16))(v3)) != 0 && (*(v4 + 640) & 4) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = BYTE4(xmmword_1ED4E988C);
    }
  }

  return v5 & 1;
}

uint64_t CA::WindowServer::IOSurface::set_edr_factor(uint64_t this, float a2, __IOSurface *a3)
{
  if (*(this + 276) != a2)
  {
    *(this + 276) = a2;
    return CA::Render::iosurface_set_edr_factor(*(this + 264), a3, a2);
  }

  return this;
}

uint64_t CA::Render::KeyValueArray::get_int_key(CA::Render::KeyValueArray *this, int a2, uint64_t a3)
{
  named_object = CA::Render::KeyValueArray::find_named_object_(this, a2);
  if ((named_object & 0x80000000) == 0)
  {
    v6 = *(*(this + named_object + 3) + 24);
    if (v6)
    {
      if (*(v6 + 12) == 62 && *(v6 + 16))
      {
        return *(v6 + 24);
      }
    }
  }

  return a3;
}

uint64_t CA::OGL::MetalContext::start_command_buffer(CA::OGL::MetalContext *this, uint64_t a2, const char *a3)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v4 = *(this + 441);
  if (v4)
  {
    if ([*(this + 441) protectionOptions] != a2)
    {
      [v4 setProtectionOptions:a2];
    }

    return 1;
  }

  else
  {
    v7 = [*(this + 439) commandBuffer];
    *(this + 441) = v7;
    [v7 setLabel:@"com.apple.coreanimation.command-buffer"];
    v8 = *(this + 441);
    if (v8)
    {
      ++*(this + 1294);
      [v8 setProtectionOptions:a2];
      if (*(this + 78))
      {
        [v8 setResponsibleTaskIDs:? count:?];
      }

      if (*(this + 3316) & 0x10) != 0 && *(this + 10) && (byte_1ED4E982B)
      {
        CA::OGL::MetalContext::mark_cache_drop_hints(this);
      }

      [*(this + 441) enqueue];
      v9 = *(this + 595);
      v5 = 1;
      *(v9 + 16) = atomic_fetch_add(this + 593, 1uLL) + 1;
      *(v9 + 40) = 0;
      v10 = *(this + 441);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZN2CA3OGL12MetalContext26prepare_new_command_bufferEv_block_invoke;
      v13[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      v13[4] = this;
      [v10 addCompletedHandler:v13];
    }

    else
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v11 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13[0]) = 0;
        _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "Command buffer allocation failed!\n", v13, 2u);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t CA::OGL::ImagingNode::init_roi(uint64_t this, unsigned int a2)
{
  v2 = *(this + 224);
  if (v2 != a2)
  {
    if (v2)
    {
      v4 = *(this + 228) & 0xF8000000FFFFFCFFLL;
      *(this + 228) = v4 | 0xF00000000;
      v5 = *(this + 16);
      if (*(v5 + 192) && (*(v5 + 36) & 0x40) == 0)
      {
        *(this + 228) = v4 | 0x1F00000000;
      }
    }

    else
    {
      v5 = *(this + 16);
    }

    if ((*(*(v5 + 16) + 25) & 4) != 0 || (v6 = *(this + 88), v6 != 0x3C003C003C003C00) && ((v7 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)), *(&v6 + 2) <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0))) ? (v8 = *&v6 <= v7) : (v8 = 0), v8 ? (v9 = *(&v6 + 1) <= v7) : (v9 = 0), !v9))
    {
      *(this + 228) |= 0x100000000000uLL;
    }

    v10 = 0;
    *(this + 224) = a2;
    *(this + 160) = 0;
    v11 = this + 24;
    v12 = 1;
    *(this + 64) = 0;
    do
    {
      v13 = v12;
      this = *(v11 + 8 * v10);
      if (this)
      {
        this = CA::OGL::ImagingNode::init_roi(this, a2);
        ++*(*(v11 + 8 * v10) + 160);
      }

      v12 = 0;
      v10 = 1;
    }

    while ((v13 & 1) != 0);
  }

  return this;
}

uint64_t CA::OGL::ImagingNode::add_roi(int32x2_t *this, int32x2_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*&this[8])
  {
    this[8] = CA::Shape::operator=(&this[20], a2);
    goto LABEL_10;
  }

  v13 = 0;
  v14 = 0;
  CA::Shape::get_bounds(&this[20], &v13);
  v4 = a2[1];
  v5 = vclez_s32(v14);
  v6 = vpmax_u32(v5, v5).u32[0];
  v7 = vclez_s32(v4);
  v8 = vpmax_u32(v7, v7).u32[0];
  if ((v6 & 0x80000000) != 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *a2;
      goto LABEL_8;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    v9 = vmin_s32(v13, *a2);
    v4 = vsub_s32(vmax_s32(vadd_s32(v13, v14), vadd_s32(*a2, v4)), v9);
LABEL_8:
    v13 = v9;
    v14 = v4;
  }

  CA::Shape::operator=(&this[20], &v13);
LABEL_10:
  v10 = *a2;
  v11 = a2[1];

  return CA::BoundsImpl::Union(this + 26, v10, v11);
}

void CA::OGL::LayerNode::add_roi(CA::OGL::LayerNode *this, int32x2_t *a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  CA::OGL::ImagingNode::add_roi(this, a2);
  v3 = *(this + 2);
  if ((*(v3 + 33) & 2) != 0 && (*(*(v3 + 16) + 25) & 0x180) != 0)
  {
    CA::OGL::LayerNode::prepare_sublayers_roi_if_needed(this);
    for (i = *(this + 31); i; i = *i)
    {
      v5 = i[23];
      if (v5)
      {
        v6[0] = 0;
        v6[1] = 0;
        CA::Shape::get_bounds(v5 + 160, v6);
        CA::OGL::ImagingNode::add_roi(this, v6);
        *(this + 228) |= *(v5 + 228) & 0x4000000000;
      }
    }
  }
}

void CA::OGL::LayerNode::prepare_sublayers_if_needed(CA::OGL::LayerNode *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 240))
  {
    return;
  }

  v7 = 0;
  v2 = *(this + 2);
  *(this + 31) = CA::OGL::prepare_layers(*(this + 1), v2, (*(v2 + 16) + 96), this + 56, (*(this + 59) >> 23) & 1, &v7, &v7 + 1);
  v3 = *(v2 + 192);
  if (v3)
  {
    if ((*(v2 + 32) & 0x84000000000) == 0x4000000000)
    {
      v4 = **(*(v3 + 24) + 136);
      if (*(v4 + 152) == 1)
      {
        CA::OGL::LayerNode::merge_sdf_element_layers(v2, v4);
        v3 = *(v2 + 192);
      }

      v5 = *(**(*(v3 + 24) + 136) + 160);
      if (v5)
      {
        if (*(v5 + 16))
        {
          v5 = *(v5 + 16);
        }

        LOBYTE(v5) = *(v5 + 378);
      }

      if ((BYTE12(xmmword_1ED4E98AC) & 1) == 0 && (v5 & 1) == 0 && ((*(v2 + 376) & 0x10) == 0 || CA::Mat4Impl::mat4_is_affine_with_z_translate((v2 + 232), v4)))
      {
        CA::OGL::LayerNode::try_inline_sdf_element_layer(this, v2);
        v3 = *(v2 + 192);
      }

      if ((*(v3 + 36) & 0x40) == 0)
      {
        goto LABEL_21;
      }

      v8 = 0;
      if (!CA::OGL::contains_multiple_sdf_elements_helper(v2, &v8))
      {
        goto LABEL_21;
      }

      v3 = *(v2 + 192);
      v6 = 0x100000000000;
      goto LABEL_20;
    }

    if (HIBYTE(v7) == 1)
    {
      v6 = 0x80000000000;
LABEL_20:
      *(v3 + 32) |= v6;
    }
  }

LABEL_21:
  *(this + 240) |= 1u;
  if (HIBYTE(v7) == 1)
  {
    *(this + 59) |= 0x200000u;
  }

  if (v7 == 1)
  {
    *(this + 59) |= 0x1000000u;
  }
}

uint64_t CA::OGL::prepare_layers_roi(const Rect **a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v175 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = a4;
  v5 = a3;
  v6 = a2;
  v168 = (BYTE11(ca_debug_options) ^ 1) & ((*(a3 + 80) & 0x100) >> 8);
  v7 = *(a2[1] + 16);
  if (v7)
  {
    v8 = *(*(v7 + 32) + 152);
    if (v8)
    {
      LOBYTE(v168) = ((*(v8 + 106) & 0x30) == 0) & v168;
    }
  }

  v165 = 0;
  v166 = 0;
  v173 = *(a3 + 8);
  v9 = vdupq_n_s64(0xC1BFFFFFFF000000);
  v161 = v9;
  v162 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v9.i32[0] = 1073741822;
  v158 = v9;
  v159 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v10 = vdupq_n_s64(0x41C0000000000000uLL);
  v160 = v10;
  v10.i32[0] = 1073741822;
  v157 = v10;
  v11 = a2;
  do
  {
    while (1)
    {
      v12 = v11;
      if (v11 != v6)
      {
        v13 = *(v11[2] + 112);
        if (((v13 != 0) & v168) == 1)
        {
          v14 = a1[1];
          v15 = *&v14[69].top;
          if (v15)
          {
            if (v15 < v13)
            {
              v13 = *&v14[69].top;
            }

            v16 = *(*&v14[72] + 8 * (v13 - 1));
            if (v16)
            {
              if (v16)
              {
                if (v16 == 1)
                {
                  goto LABEL_19;
                }
              }

              else if (*(v16 + 4) == 6)
              {
                goto LABEL_19;
              }

              if ((v166 & 1) == 0)
              {
                v173 = CA::Shape::ref(v173, a2);
              }

              v17 = CA::Shape::intersect(v16, *(v5 + 8));
              CA::shape_union(&v173, v17, v18);
              CA::Shape::unref(v17);
              v166 = 1;
            }
          }
        }
      }

LABEL_19:
      v11 = *v11;
      v19 = *(*(v12 + 16) + 24) & 0x4001000;
      if (!v19)
      {
        if (v173)
        {
          if (v173 == 1)
          {
            goto LABEL_106;
          }
        }

        else if (*(v173 + 1) == 6)
        {
          goto LABEL_106;
        }
      }

      v20 = CA::Shape::ref(v173, a2);
      *(v12 + 160) = v20;
      v22 = (v12 + 160);
      v23 = *(*(v12 + 24) + 152);
      if (v23 && (*(v5 + 80) & 0x100) != 0 && (*(v12 + 33) & 0x90000400) == 0 && (*&a1[1][172].top & 1) == 0 && (*(*(v12 + 16) + 27) & 4) == 0)
      {
        if (((*a1)[109].top & 0x10) != 0)
        {
          if (!v19)
          {
            *v171 = *(v23 + 120);
            if (!CA::Shape::intersects(v20, v171))
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          *v171 = *(v23 + 120);
          CA::shape_intersect((v12 + 160), v171, v21);
          if (!v19)
          {
            v24 = *v22;
            if (*v22)
            {
              if (v24 == 1)
              {
                goto LABEL_106;
              }
            }

            else if (*(v24 + 4) == 6)
            {
              goto LABEL_106;
            }
          }
        }
      }

      v25 = *(v12 + 16);
      v26 = *(v12 + 24);
      if ((*(v26 + 45) & 1) == 0)
      {
        break;
      }

      v27 = *(v26 + 72);
      v28 = *(v26 + 88);
      *v171 = v27;
      v172 = v28;
      v29 = *(v25 + 56);
      if (v29)
      {
        CA::Mat4Impl::mat4_apply_to_rect(v29, v171, v21);
      }

      else
      {
        *v171 = vaddq_f64(*(v25 + 64), v27);
      }

      CA::Rect::apply_transform(v171, *(v5 + 24), v21);
      v174[0] = 0;
      v174[1] = 0;
      if (*(v12 + 32))
      {
        v31 = vceqzq_f64(v172);
        if ((vorrq_s8(vdupq_laneq_s64(v31, 1), v31).u64[0] & 0x8000000000000000) == 0)
        {
          v32 = vceqq_f64(v172, v172);
          if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v32), 1), v32).u64[0] & 0x8000000000000000) == 0)
          {
            v33 = vcvtmq_s64_f64(vmaxnmq_f64(*v171, v161));
            *v174 = vuzp1q_s32(v33, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(*v171, v172), v160)), v33));
          }
        }
      }

      else
      {
        CA::OGL::Context::raster_round_rect(v174, *a1, v171);
      }

      CA::shape_intersect((v12 + 160), v174, v30);
      if (v19)
      {
        goto LABEL_49;
      }

      v93 = *v22;
      if ((*v22 & 1) == 0)
      {
        if (*(v93 + 4) == 6)
        {
          goto LABEL_106;
        }

LABEL_49:
        v25 = *(v12 + 16);
        break;
      }

      if (v93 != 1)
      {
        goto LABEL_49;
      }

LABEL_106:
      CA::OGL::Renderer::dealloc_layer(a1, v12);
      if (!v11)
      {
        goto LABEL_217;
      }
    }

    if ((*(v25 + 28) & 0x20) != 0 && *(v12 + 8))
    {
      v34 = *(v12 + 160);
      v174[0] = 0;
      v174[1] = 0;
      CA::Shape::get_bounds(v34, v174);
      if (SLODWORD(v174[1]) <= SHIDWORD(v174[1]))
      {
        v37 = HIDWORD(v174[1]);
      }

      else
      {
        v37 = v174[1];
      }

      v36.i32[0] = v37;
      v38 = *(v12 + 176);
      v39.i64[0] = SLODWORD(v174[0]);
      v39.i64[1] = SHIDWORD(v174[0]);
      v40 = SLODWORD(v174[1]);
      v41 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v36, v157), 0), v162, vcvtq_f64_s64(v39));
      v42 = SHIDWORD(v174[1]);
      if (v37 > 1073741822)
      {
        v40 = 1.79769313e308;
        v42 = 1.79769313e308;
      }

      *v171 = v41;
      v172.f64[0] = v40;
      v172.f64[1] = v42;
      v43 = *(*(*(v12 + 8) + 24) + 136);
      if (!v43)
      {
        goto LABEL_117;
      }

      v44 = *(v43 + 96);
      if (!v44)
      {
        goto LABEL_117;
      }

      v170 = 1;
      v45 = *(v44 + 16);
      v46 = 1;
      if (v45)
      {
        v47 = v44 + 8 * v45 + 24;
        v48 = (*(v12 + 32) & 0x84000000000) == 0x4000000000;
        v49 = (v44 + 24);
        do
        {
          v50 = *v49;
          if ((*(*v49 + 14) & 8) != 0)
          {
            v51 = *(v50 + 40);
            if (!v51)
            {
              goto LABEL_70;
            }

            v52 = *(v51 + 16);
            if (!v52)
            {
              goto LABEL_70;
            }

            v53 = 0;
            v54 = v51 + 24;
            while (1)
            {
              v55 = *(v54 + 8 * v53);
              if (*(v55 + 16) == 431)
              {
                break;
              }

              if (v52 == ++v53)
              {
                goto LABEL_70;
              }
            }

            if ((v53 & 0x80000000) == 0)
            {
              v56 = *(v55 + 24);
            }

            else
            {
LABEL_70:
              v56 = 0;
            }

            v57 = *(v12 + 24);
            v58 = *(v57 + 128);
            v35 = *(v56 + 24);
            if (v35 != *(v58 + 24) || ((v59 = *(v50 + 48), !memcmp((v56 + 28), (v58 + 28), v35)) ? (v60 = v59 == 0) : (v60 = 1), v60 || ((*(*v59 + 16))(v59, v50, v57) & 1) != 0))
            {
              v48 = 0;
            }

            else
            {
              v61 = CA::Rect::unapply_transform(v171, *(v38 + 80), v35);
              (*(*v59 + 64))(v59, v50, *(v12 + 24), v171, v61);
              *v63.i64 = CA::Rect::apply_transform(v171, *(v38 + 80), v62);
              v64 = *(v50 + 24);
              if (v64 != 202 && v48)
              {
                if (v64 == 283)
                {
                  CA::OGL::accumulate_sdf_element_bounds(v12, v50, &v170, v63);
                }

                v48 = 1;
              }

              else
              {
                v48 = 0;
              }
            }
          }

          ++v49;
        }

        while (v49 != v47);
        v46 = v170;
        if (v48)
        {
          v4 = a4;
          if ((v170 & 1) == 0)
          {
            if (*(v170 + 1) == 6)
            {
              goto LABEL_116;
            }

LABEL_114:
            v94 = *(*(v12 + 8) + 176);
            if (v94)
            {
              v169 = *(v94 + 64);
              CA::shape_intersect(&v169, v170, v35);
              v95 = v169;
              *(*(v12 + 8) + 160) = v169;
              *(v94 + 64) = v95;
            }

            goto LABEL_116;
          }

          if (v170 != 1)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v4 = a4;
        }
      }

LABEL_116:
      CA::Shape::unref(v46);
      v41 = *v171;
LABEL_117:
      v96 = vceqzq_f64(v172);
      v97 = vorrq_s8(vdupq_laneq_s64(v96, 1), v96).u64[0];
      v98 = 0uLL;
      if ((v97 & 0x8000000000000000) == 0)
      {
        v99 = vceqq_f64(v172, v172);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v99), 1), v99).u64[0] & 0x8000000000000000) == 0)
        {
          v100 = vcvtmq_s64_f64(vmaxnmq_f64(v41, v161));
          v98 = vuzp1q_s32(v100, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v41, v172), v160)), v100));
        }
      }

      *v174 = v98;
      CA::shape_union((v12 + 160), v174, v35);
      if ((v166 & 1) == 0)
      {
        v173 = CA::Shape::ref(v173, v101);
      }

      v92 = v174;
LABEL_123:
      CA::shape_union(&v173, v92, v91);
      v166 = 1;
      goto LABEL_124;
    }

    if (*(v12 + 96) > 0.00001)
    {
      v65 = *(v12 + 160);
      v171[0] = 0;
      v171[1] = 0;
      CA::Shape::get_bounds(v65, v171);
      v67.i32[1] = HIDWORD(v171[1]);
      v68.i64[0] = SLODWORD(v171[0]);
      v68.i64[1] = SHIDWORD(v171[0]);
      v69 = HIDWORD(v171[1]);
      v70 = vcvtq_f64_s64(v68);
      v68.i64[0] = SLODWORD(v171[1]);
      v68.i64[1] = SHIDWORD(v171[1]);
      v71 = v68;
      if (SLODWORD(v171[1]) > SHIDWORD(v171[1]))
      {
        v69 = v171[1];
      }

      v67.i32[0] = v69;
      v72 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v67, v158), 0), v162, v70);
      v73 = vcvtq_f64_s64(v71);
      v74 = vdup_n_s32(v69 > 1073741822);
      v75.i64[0] = v74.u32[0];
      v75.i64[1] = v74.u32[1];
      v76 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v75, 0x3FuLL)), v159, v73);
      v77 = v76.f64[1];
      if (v76.f64[0] <= v76.f64[1])
      {
        v78 = v76.f64[1];
      }

      else
      {
        v78 = v76.f64[0];
      }

      if (v78 < 1.79769313e308)
      {
        if (v76.f64[0] < v76.f64[1])
        {
          v77 = v76.f64[0];
        }

        if (v77 > 0.0)
        {
          v79 = vcvtq_f64_f32(vneg_f32(*(v12 + 96)));
          v80 = vsubq_f64(v76, vaddq_f64(v79, v79));
          v81 = vmovn_s64(vmvnq_s8(vclezq_f64(v80)));
          v72 = vaddq_f64(v72, v79);
          *&v79.f64[0] = vdup_lane_s32(vand_s8(v81, vdup_lane_s32(v81, 1)), 0);
          v82.i64[0] = SLODWORD(v79.f64[0]);
          v82.i64[1] = SHIDWORD(v79.f64[0]);
          v76 = vandq_s8(v80, v82);
        }
      }

      v83 = vceqzq_f64(v76);
      v84 = vorrq_s8(vdupq_laneq_s64(v83, 1), v83).u64[0];
      v85 = 0uLL;
      if ((v84 & 0x8000000000000000) == 0)
      {
        v86 = vceqq_f64(v76, v76);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v86), 1), v86).u64[0] & 0x8000000000000000) == 0)
        {
          v87 = vmaxnmq_f64(v72, v161);
          v88 = vminnmq_f64(vaddq_f64(v72, v76), v160);
          v89 = vcvtmq_s64_f64(v87);
          v85 = vuzp1q_s32(v89, vsubq_s64(vcvtpq_s64_f64(v88), v89));
        }
      }

      *v171 = v85;
      CA::shape_union((v12 + 160), v171, v66);
      if ((v166 & 1) == 0)
      {
        v173 = CA::Shape::ref(v173, v90);
      }

      v92 = v171;
      goto LABEL_123;
    }

LABEL_124:
    v102 = *(v12 + 176);
    v103 = *(v12 + 160);
    v174[0] = 0;
    v174[1] = 0;
    CA::Shape::get_bounds(v103, v174);
    v104 = v102[1];
    v105 = *(*&v104 + 96);
    if ((v105 + 1) > 1)
    {
      v106 = v105 + 1;
    }

    else
    {
      v106 = 1;
    }

    *(*&v104 + 96) = v106;
    CA::OGL::ImagingNode::init_roi(v102, v106);
    v107 = 0;
    v102[5] = 0;
    v108 = v102;
    do
    {
      v109 = v108[5];
      v108[5] = 0;
      if (v107)
      {
        v107[5] = v108;
      }

      v110 = 0;
      v111 = 1;
      do
      {
        v112 = v111;
        v113 = v108[v110 + 3];
        if (v113)
        {
          v114 = *(*&v113 + 160) - 1;
          *(*&v113 + 160) = v114;
          if (!v114)
          {
            *(*&v113 + 40) = v109;
            v109 = v113;
          }
        }

        v111 = 0;
        v110 = 1;
      }

      while ((v112 & 1) != 0);
      v107 = v108;
      v108 = v109;
    }

    while (v109);
    (*(*v102 + 56))(v102, v174);
    CA::BoundsImpl::Union(v102 + 26, v174[0], v174[1]);
    if (v102[5])
    {
      v116 = v102;
      do
      {
        v171[0] = 0;
        v171[1] = 0;
        CA::Shape::get_bounds(&v116[20], v171);
        if (v116 == v102)
        {
          if (v116[19].i32[0] < 0)
          {
            (*(*v116 + 40))(v116, v116 + 18);
          }

          v125 = vclez_s32(v171[1]);
          if ((vpmax_u32(v125, v125).u32[0] & 0x80000000) == 0)
          {
            v126 = v116[19];
            v127 = vclez_s32(v126);
            if ((vpmax_u32(v127, v127).u32[0] & 0x80000000) != 0 || (v128 = v116[18], *&v129 = vmax_s32(v171[0], v128), v130 = vsub_s32(vmin_s32(vadd_s32(v171[0], v171[1]), vadd_s32(v128, v126)), *&v129), v131 = vclez_s32(v130), (vpmax_u32(v131, v131).u32[0] & 0x80000000) != 0))
            {
              v171[1] = 0;
            }

            else
            {
              *(&v129 + 1) = v130;
              *v171 = v129;
            }
          }
        }

        else
        {
          (*(*v116 + 48))(v116, v171);
          if (v116[19].i32[0] < 0)
          {
            (*(*v116 + 40))(v116, v116 + 18);
          }

          v117 = v171[1];
          v118 = vclez_s32(v171[1]);
          if ((vpmax_u32(v118, v118).u32[0] & 0x80000000) == 0)
          {
            v119 = v116[19];
            v120 = vclez_s32(v119);
            if ((vpmax_u32(v120, v120).u32[0] & 0x80000000) != 0 || (v121 = v116[18], v122 = vadd_s32(v121, v119), *&v123 = vmax_s32(v171[0], v121), v117 = vsub_s32(vmin_s32(vadd_s32(v171[0], v171[1]), v122), *&v123), v124 = vclez_s32(v117), (vpmax_u32(v124, v124).u32[0] & 0x80000000) != 0))
            {
              v117 = 0;
              v171[1] = 0;
            }

            else
            {
              *(&v123 + 1) = v117;
              *v171 = v123;
            }
          }

          if ((v116[28].i8[5] & 2) != 0)
          {
            v132 = HIDWORD(v117);
            if (v117 <= SHIDWORD(v117))
            {
              v133 = HIDWORD(v117);
            }

            else
            {
              v133 = v117;
            }

            if (v117 < SHIDWORD(v117))
            {
              v132 = v117;
            }

            if (v133 <= 1073741822 && v132 >= 1)
            {
              v135 = vadd_s32(v171[0], -1);
              v136 = vadd_s32(v117, 0x200000002);
              v137 = vclez_s32(v136);
              if (vorr_s8(v137, vdup_lane_s32(v137, 1)).u8[0])
              {
                v138 = -1;
              }

              else
              {
                v138 = 0;
              }

              v171[0] = v135;
              v171[1] = vbic_s8(v136, vdup_n_s32(v138));
            }
          }

          CA::Shape::operator=(&v116[20], v171);
        }

        (*(*v116 + 64))(v116, v171);
        (*(*v116 + 72))(v116, v116 + 26);
        v116 = v116[5];
      }

      while (v116);
    }

    while ((v102[28].i8[5] & 1) != 0)
    {
      v102 = v102[3];
    }

    v102[8] = v103;
    if (!v11)
    {
      v6 = a2;
      v5 = a3;
      if (!v4)
      {
        goto LABEL_199;
      }

      goto LABEL_198;
    }

    v6 = a2;
    v5 = a3;
    if (v168)
    {
      if ((*(v12 + 34) & 0x10) != 0 || (v139 = *(v12 + 16), (v140 = *(v139 + 208)) == 0))
      {
        LOBYTE(v168) = 1;
      }

      else
      {
        v141 = v173;
        if (CA::Shape::intersects(*(v139 + 208), v173))
        {
          v144 = CA::Shape::subtract(v141, v140, v142, v143);
          v145 = v144;
          if ((v144 & 1) != 0 || *(v144 + 1) <= 64)
          {
            if (v166)
            {
              CA::Shape::unref(v141);
            }

            v173 = v145;
            v146 = *(v12 + 184);
            LOBYTE(v168) = 1;
            if (!v146)
            {
              v166 = 1;
              v6 = a2;
              v5 = a3;
              goto LABEL_190;
            }

            v6 = a2;
            v5 = a3;
            goto LABEL_215;
          }

          v153 = *(*(v12 + 24) + 152);
          if (v153)
          {
            *(v153 + 104) |= 0x200000uLL;
          }

          CA::Shape::unref(v144);
          LOBYTE(v168) = 0;
        }

        else
        {
          LOBYTE(v168) = 1;
        }

        v6 = a2;
        v5 = a3;
      }
    }

    else
    {
      LOBYTE(v168) = 0;
    }

    v146 = *(v12 + 184);
    if (!v146)
    {
      goto LABEL_190;
    }

    if ((v166 & 1) == 0)
    {
      v173 = CA::Shape::ref(v173, v115);
      v146 = *(v12 + 184);
    }

LABEL_215:
    v171[0] = 0;
    v171[1] = 0;
    CA::Shape::get_bounds(v146 + 160, v171);
    CA::shape_union(&v173, v171, v154);
    v166 = 1;
LABEL_190:
    if ((*a1)[109].top & 0x10) == 0 || (v147 = v173, (v173) || ((v148 = *(v173 + 1), v148 != 6) ? (v149 = v148 == 12) : (v149 = 1), v149))
    {
      if (!v4)
      {
        goto LABEL_199;
      }
    }

    else
    {
      v171[0] = 0;
      v171[1] = 0;
      CA::Shape::get_bounds(v173, v171);
      if (v166)
      {
        CA::Shape::unref(v147);
      }

      v173 = CA::Shape::new_shape(v171, v152);
      v166 = 1;
      if (!v4)
      {
LABEL_199:
        *v12 = v165;
        v165 = v12;
        goto LABEL_204;
      }
    }

LABEL_198:
    if ((*(*(v12 + 16) + 28) & 0x20) == 0)
    {
      goto LABEL_199;
    }

    v150 = *(v12 + 8);
    if (v150)
    {
      v151 = *(v150 + 176);
      if (v151)
      {
        v171[0] = 0;
        v171[1] = 0;
        CA::Shape::get_bounds(v151 + 160, v171);
        CA::BoundsImpl::Union((*(v12 + 176) + 208), v171[0], v171[1]);
      }
    }

    *v12 = *v4;
    *v4 = v12;
LABEL_204:
    (*(**(v12 + 176) + 104))(*(v12 + 176));
  }

  while (v11);
LABEL_217:
  if (v166)
  {
    CA::Shape::unref(v173);
  }

  return v165;
}

BOOL CA::Shape::intersects(uint64_t this, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (this)
  {
    if (this == 1)
    {
      return 0;
    }
  }

  else if (*(this + 4) == 6)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 4) == 6)
  {
    return 0;
  }

  v2 = (this + 12);
  if (this)
  {
    if (this == 1)
    {
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
LABEL_21:
      v2 = (&v35 | 0xC);
      v35 = xmmword_183E21530;
      LODWORD(v36) = 2;
      DWORD1(v36) = (this >> 16) >> 16;
      DWORD2(v36) = 4;
      HIDWORD(v36) = this >> 48;
      LODWORD(v37) = HIDWORD(v36) + (this >> 17);
      DWORD1(v37) = ((this >> 2) & 0x7FFF) + DWORD1(v36);
      *(&v37 + 1) = 0x7FFFFFFF00000002;
      goto LABEL_22;
    }
  }

  else if (*(this + 4) != 12)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
LABEL_22:
    if (a2)
    {
      v32 = xmmword_183E21530;
      LODWORD(v33) = 2;
      DWORD1(v33) = (a2 >> 16) >> 16;
      DWORD2(v33) = 4;
      HIDWORD(v33) = a2 >> 48;
      LODWORD(v34) = HIDWORD(v33) + (a2 >> 17);
      DWORD1(v34) = ((a2 >> 2) & 0x7FFF) + DWORD1(v33);
      *(&v34 + 1) = 0x7FFFFFFF00000002;
      a2 = &v32;
    }

    v7 = *v2;
    if (*v2 == 0x7FFFFFFF)
    {
      return 0;
    }

    v8 = (a2 + 12);
    v9 = v2;
    v10 = (a2 + 12);
    while (1)
    {
      v11 = *v10;
      if (*v10 == 0x7FFFFFFF)
      {
        return 0;
      }

      v12 = v7 - v11;
      if (v7 - v11 >= 1)
      {
        break;
      }

      v13 = v2[1];
      v14 = &v2[v13];
      if ((v12 & 0x80000000) == 0)
      {
        v9 = v2;
        goto LABEL_31;
      }

      LODWORD(v15) = *(v8 + 1);
      v9 = v2;
LABEL_32:
      v16 = 0;
      v2 = v14;
      v17 = v13 - 2;
      v18 = v15 - 2;
      v19 = v9 + 2;
      v20 = v8 + 8;
      while (v17 && v18)
      {
        v21 = *v19 - *v20;
        v22 = v21 < 1;
        v19 += v21 < 1;
        v17 -= v22;
        v16 ^= v22;
        v20 += v21 >= 0;
        v18 -= v21 >= 0;
        if (v21 >= 0)
        {
          v16 ^= 2u;
        }

        if (v16 == 3)
        {
          return 1;
        }
      }

      result = 0;
      v7 = *v2;
      if (*v2 == 0x7FFFFFFF)
      {
        return result;
      }
    }

    LODWORD(v13) = v9[1];
    v14 = v2;
LABEL_31:
    v15 = *(v10 + 1);
    v8 = v10;
    v10 += 4 * v15;
    goto LABEL_32;
  }

  if (a2)
  {
    if (a2 == 1)
    {
LABEL_15:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      if ((this & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if (*(a2 + 4) != 12)
  {
    goto LABEL_15;
  }

  if (this)
  {
    v4 = this >> 48;
    v3 = this << 16 >> 48;
    v5 = this >> 17;
    v6 = (this >> 2) & 0x7FFF;
  }

  else
  {
    LODWORD(v3) = *(this + 20);
    LODWORD(v4) = *(this + 28);
    v5 = *(this + 32) - v4;
    v6 = *(this + 36) - v3;
  }

  v24 = __PAIR64__(v6, v5);
  if (a2)
  {
    v26 = a2 >> 48;
    v25 = a2 << 16 >> 48;
    v27 = a2 >> 17;
    v28 = (a2 >> 2) & 0x7FFF;
  }

  else
  {
    LODWORD(v25) = *(a2 + 20);
    LODWORD(v26) = *(a2 + 28);
    v27 = *(a2 + 32) - v26;
    v28 = *(a2 + 36) - v25;
  }

  v29 = vclez_s32(v24);
  if ((vpmax_u32(v29, v29).u32[0] & 0x80000000) == 0)
  {
    v30 = vclez_s32(__PAIR64__(v28, v27));
    if ((vpmax_u32(v30, v30).u32[0] & 0x80000000) == 0)
    {
      v31 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(__PAIR64__(v3, v4), v24), vadd_s32(__PAIR64__(v25, v26), __PAIR64__(v28, v27))), vmax_s32(__PAIR64__(v3, v4), __PAIR64__(v25, v26))));
      return vpmax_u32(v31, v31).i32[0] >= 0;
    }
  }

  return 0;
}

int32x2_t CA::OGL::Context::raster_round_rect(int32x2_t *this, const Rect *a2, double *a3)
{
  v4 = a3[3];
  if (a3[2] > v4)
  {
    v4 = a3[2];
  }

  if (v4 < 1073741820.0)
  {
    v18 = *&a2[170].bottom;
    v8 = a3 + 1;
    v16 = *a3;
    v17 = a3[2];
    v9 = (*(*a2 + 1200))(a2);
    *&v10.f64[0] = v16;
    v10.f64[1] = *v8;
    v11 = vcvt_f32_f64(v10);
    v12 = v10;
    v13 = *&a2[170].bottom;
    if (v9)
    {
      v13 = 1.0 - v13;
    }

    v14 = __PAIR64__(LODWORD(v13), v18);
    result = vcvt_s32_f32(vrndm_f32(vadd_f32(__PAIR64__(LODWORD(v13), v18), v11)));
    v15.f64[0] = v17;
    v15.f64[1] = a3[3];
    *this = result;
    this[1] = vsub_s32(vcvt_s32_f32(vrndm_f32(vadd_f32(v14, vcvt_f32_f64(vaddq_f64(v12, v15))))), result);
  }

  else
  {
    result = 0xE0000001E0000001;
    *this->i8 = xmmword_183E21120;
  }

  return result;
}

uint64_t CA::OGL::MetalContext::destination_rotated_or_flipped(CA::OGL::MetalContext *this)
{
  v1 = *(this + 84);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 308);
  if ((v2 & 0x400) != 0)
  {
    return 1;
  }

  else
  {
    return (v2 >> 9) & 1;
  }
}

float CA::OGL::MetalContext::update_projection_matrix(CA::OGL::MetalContext *this)
{
  v1 = *(this + 84);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = *(v1 + 44);
  v5 = v3;
  v6 = (v4 + v3);
  if ((*(v1 + 308) & 0x400) != 0)
  {
    v7 = (v4 + v3);
  }

  else
  {
    v7 = v2;
  }

  if ((*(v1 + 308) & 0x400) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = (*(v1 + 40) + v2);
  }

  if ((*(v1 + 308) & 0x400) != 0)
  {
    v5 = v2;
    v6 = (*(v1 + 40) + v2);
  }

  v9 = 1.0 / (v8 - v7);
  v10 = 1.0 / (v6 - v5);
  result = v9 + v9;
  v12 = 0.0;
  if ((*(v1 + 308) & 0x400) != 0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9 + v9;
  }

  *(this + 762) = v13;
  if ((*(v1 + 308) & 0x400) == 0)
  {
    result = 0.0;
  }

  *(this + 766) = result;
  *(this + 770) = 0;
  *(this + 774) = -((v8 + v7) * v9);
  if ((*(v1 + 308) & 0x400) != 0)
  {
    v14 = v10 * -2.0;
  }

  else
  {
    v14 = 0.0;
  }

  *(this + 763) = v14;
  if ((*(v1 + 308) & 0x400) == 0)
  {
    v12 = v10 * -2.0;
  }

  *(this + 767) = v12;
  *(this + 771) = 0;
  v15 = v10 * (v6 + v5);
  *(this + 775) = v15;
  *(this + 382) = 0;
  *(this + 384) = 0;
  *(this + 386) = 0;
  *(this + 388) = 0x3F80000000000000;
  if ((*(v1 + 308) & 0x200) != 0)
  {
    *(this + 766) = -result;
    *(this + 767) = -v12;
    result = -v15;
    *(this + 775) = -v15;
  }

  return result;
}

uint64_t CA::OGL::ImagingNode::prepare_roi(CA::OGL::ImagingNode *this)
{
  v2 = 0;
  v3 = this + 24;
  v18 = *MEMORY[0x1E69E9840];
  v4 = 1;
  do
  {
    v5 = v4;
    result = *&v3[8 * v2];
    if (result)
    {
      result = (*(*result + 104))(result);
      v7 = *&v3[8 * v2];
      v8 = *(v7 + 236);
      v9 = v8 & 0x1800000;
      v10 = v8 & 0x6400000;
      if (!v9 && v10 != 100663296 && (*(v7 + 228) & 0x80000000000) == 0)
      {
        v12 = *(v7 + 8);
        if (!(v12[11] >> 25) && !*(v7 + 48) && (*(v7 + 228) & 0x3C00) == 0)
        {
          v14 = *(this + 59);
          v15 = *v12;
          v16 = *(*v12 + 1376);
          *(v15 + 1376) = *(v7 + 16);
          *(v15 + 1384) &= ~0x800u;
          v17 = 1065353216;
          result = (*(*v7 + 80))(v7, &v17, v14 & 0x1FFFF);
          *(v7 + 48) = result;
          if (result)
          {
            *(*(v7 + 8) + 88) += *(result + 44) * *(result + 40) * (*(result + 146) & 0x1F);
          }

          *(v15 + 1376) = v16;
          *(v15 + 1384) &= ~0x800u;
        }
      }
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  return result;
}

void CA::OGL::LayerNode::compute_dod(CA::OGL::LayerNode *this, int32x2_t *a2, double *a3, double a4, double a5, float64x2_t a6, int64x2_t a7)
{
  v126 = *MEMORY[0x1E69E9840];
  v7 = *(this + 2);
  *a2 = 0;
  a2[1] = 0;
  v8 = *(v7 + 32);
  if ((v8 & 8) != 0)
  {
    return;
  }

  if ((v8 & 0x1000) != 0 && (*(*(v7 + 24) + 48) & 0x80) != 0)
  {
    *a2->i8 = xmmword_183E21120;
    return;
  }

  if ((v8 & 0x40A0) == 0)
  {
    v12 = 0uLL;
    v124 = 0u;
    v125 = 0u;
    v13.f64[0] = 0.0;
    goto LABEL_36;
  }

  v11 = *(v7 + 24);
  v12 = *(v11 + 72);
  v13 = *(v11 + 88);
  v124 = v12;
  v125 = v13;
  if ((v8 & 0x80) != 0 && (v14 = *(v11 + 136)) != 0 && (v15 = *(v14 + 236), v15 > 0.0))
  {
    if (v13.f64[0] <= v13.f64[1])
    {
      v16 = v13.f64[1];
    }

    else
    {
      v16 = v13.f64[0];
    }

    if (v16 < 1.79769313e308)
    {
      v17 = v13.f64[0] >= v13.f64[1] ? v13.f64[1] : v13.f64[0];
      if (v17 > 0.0)
      {
        *&v18 = -v15;
        a6 = vdupq_lane_s64(v18, 0);
        v12 = vaddq_f64(v12, a6);
        v124 = v12;
        v19 = *&v18 * -2.0;
        v13.f64[0] = v19 + v13.f64[0];
        v125.f64[0] = v13.f64[0];
        v125.f64[1] = v19 + v13.f64[1];
        if (v13.f64[0] <= 0.0 || v19 + v13.f64[1] <= 0.0)
        {
          v125 = 0uLL;
          v13.f64[0] = 0.0;
        }
      }
    }

    v20 = *(this + 2);
  }

  else
  {
    v20 = v7;
  }

  if ((*(v20 + 40) & 8) != 0)
  {
    v118 = v13.f64[0];
    v120 = v12;
    if (*(**(v11 + 136) + 12) == 3)
    {
      v21 = **(v11 + 136);
    }

    else
    {
      v21 = 0;
    }

    memset(v123, 0, 32);
    if ((*(*v21 + 184))(v21))
    {
      v13.f64[0] = v125.f64[0];
      v22 = v123[1];
      v23 = vclezq_f64(v125);
      a6 = vclezq_f64(v123[1]);
      a7 = vzip1q_s64(a6, v23);
      v24 = vmovn_s64(vcltzq_s64(vorrq_s8(a7, vzip2q_s64(a6, v23))));
      v12 = v120;
      if (v24.i8[4])
      {
        if ((v24.i8[0] & 1) == 0)
        {
          v12 = v123[0];
LABEL_34:
          v124 = v12;
          v125 = v22;
          v13.f64[0] = v22.f64[0];
        }
      }

      else if ((v24.i8[0] & 1) == 0)
      {
        a6 = vaddq_f64(v120, v125);
        v12 = vminnmq_f64(v120, v123[0]);
        v22 = vsubq_f64(vmaxnmq_f64(a6, vaddq_f64(v123[0], v123[1])), v12);
        goto LABEL_34;
      }
    }

    else
    {
      v13.f64[0] = v118;
      v12 = v120;
    }

    v8 = *(v7 + 32);
  }

LABEL_36:
  v119 = v13.f64[0];
  v121 = v12;
  if ((v8 & 0x100) != 0)
  {
    v123[0] = 0uLL;
    CA::OGL::compute_contents_dod(v123, v7, this + 56, *(*(v7 + 16) + 48));
    CA::BoundsImpl::Union(a2, *v123[0].i8, v123[0].u64[1]);
    v13.f64[0] = v119;
    v12 = v121;
    v8 = *(v7 + 32);
  }

  if ((v8 & 0x200) != 0)
  {
    CA::OGL::LayerNode::prepare_sublayers_if_needed(this);
    v13.f64[0] = v119;
    v12 = v121;
    v25 = *(this + 31);
    if (v25)
    {
      v114 = vdupq_n_s64(0x41C0000000000000uLL);
      v115 = vdupq_n_s64(0xC1BFFFFFFF000000);
      do
      {
        v26 = v25[22];
        v27 = v26[19].i32[0];
        if (v27 < 0)
        {
          (*(*v26 + 40))(v25[22], v26 + 18);
          v27 = v26[19].i32[0];
        }

        *v28.i8 = v26[18];
        v28.i32[2] = v27;
        v28.i32[3] = v26[19].i32[1];
        if ((v25[4] & 3) == 0)
        {
          v29 = v25[3];
          if (*(v29 + 45))
          {
            v116 = v26[18];
            v117 = v28;
            v30 = *(v29 + 9);
            v31 = *(v29 + 11);
            v123[0] = v30;
            v123[1] = v31;
            v32 = v25[2];
            v33 = v32[7];
            if (v33)
            {
              CA::Mat4Impl::mat4_apply_to_rect(v33, v123, a3);
            }

            else
            {
              v123[0] = vaddq_f64(*(v32 + 4), v30);
            }

            CA::Rect::apply_transform(v123, *(this + 10), a3);
            v34 = vceqzq_f64(v123[1]);
            v35 = 0uLL;
            if ((vorrq_s8(vdupq_laneq_s64(v34, 1), v34).u64[0] & 0x8000000000000000) == 0)
            {
              v36 = vceqq_f64(v123[1], v123[1]);
              if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v36), 1), v36).u64[0] & 0x8000000000000000) == 0)
              {
                v37 = vcvtmq_s64_f64(vmaxnmq_f64(v123[0], v115));
                v35 = vuzp1q_s32(v37, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v123[0], v123[1]), v114)), v37));
              }
            }

            v28 = v117;
            v38 = vextq_s8(v28, v28, 8uLL).u64[0];
            v39 = vclez_s32(v38);
            if ((vpmax_u32(v39, v39).u32[0] & 0x80000000) == 0)
            {
              v40 = vextq_s8(v35, v35, 8uLL).u64[0];
              v41 = vclez_s32(v40);
              if ((vpmax_u32(v41, v41).u32[0] & 0x80000000) != 0)
              {
                v28 = v116;
              }

              else
              {
                *v28.i8 = vmax_s32(v116, *v35.i8);
                v42 = vsub_s32(vmin_s32(vadd_s32(v116, v38), vadd_s32(*v35.i8, v40)), *v28.i8);
                v43 = vclez_s32(v42);
                if ((vpmax_u32(v43, v43).u32[0] & 0x80000000) != 0)
                {
                  v28 = v116;
                }

                else
                {
                  v28.u64[1] = v42;
                }
              }
            }
          }
        }

        CA::BoundsImpl::Union(a2, *v28.i8, *&vextq_s8(v28, v28, 8uLL));
        v25 = *v25;
        v13.f64[0] = v119;
        v12 = v121;
      }

      while (v25);
    }
  }

  if ((*(v7 + 33) & 0x20) != 0)
  {
    v44 = *(*(v7 + 24) + 136);
    if (v44)
    {
      v45 = *v44;
    }

    else
    {
      v45 = 0;
    }

    if ((*(*v45 + 176))(v45))
    {
      memset(v123, 0, sizeof(v123));
      if ((*(*v45 + 192))(v45, *(v7 + 24), v123))
      {
        CA::Volume::apply_transform(v123, *(this + 10), a3);
        v46 = vsubq_f64(*(&v123[1] + 8), v123[0]);
        if (v46.f64[0] >= v46.f64[1])
        {
          v47 = v46.f64[1];
        }

        else
        {
          v47 = v46.f64[0];
        }

        v48 = v47 <= 0.0;
        v49 = 0uLL;
        v50 = 0uLL;
        if (!v48)
        {
          if (v46.f64[0] <= v46.f64[1])
          {
            v51 = v46.f64[1];
          }

          else
          {
            v51 = v46.f64[0];
          }

          if (v51 >= 1.79769313e308)
          {
            v49 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
            v50 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
          }

          else
          {
            v50 = v46;
            v49 = v123[0];
          }
        }

        v55 = vceqzq_f64(v50);
        v56 = vorrq_s8(vdupq_laneq_s64(v55, 1), v55).u64[0];
        v57 = 0uLL;
        if ((v56 & 0x8000000000000000) == 0)
        {
          v58 = vceqq_f64(v50, v50);
          if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v58), 1), v58).u64[0] & 0x8000000000000000) == 0)
          {
            v59 = vcvtmq_s64_f64(vmaxnmq_f64(v49, vdupq_n_s64(0xC1BFFFFFFF000000)));
            v57 = vuzp1q_s32(v59, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v49, v50), vdupq_n_s64(0x41C0000000000000uLL))), v59));
          }
        }

        CA::BoundsImpl::Union(a2, *v57.i8, *&vextq_s8(v57, v57, 8uLL));
      }

      goto LABEL_85;
    }

    memset(v123, 0, 32);
    if (!(*(*v45 + 184))(v45, *(v7 + 24), v123, 0))
    {
LABEL_85:
      v13.f64[0] = v119;
      v12 = v121;
      goto LABEL_86;
    }

    v13.f64[0] = v125.f64[0];
    v52 = v123[1];
    v53 = vclezq_f64(v125);
    a6 = vclezq_f64(v123[1]);
    a7 = vzip1q_s64(a6, v53);
    v54 = vmovn_s64(vcltzq_s64(vorrq_s8(a7, vzip2q_s64(a6, v53))));
    v12 = v121;
    if (v54.i8[4])
    {
      if (v54.i8[0])
      {
        goto LABEL_86;
      }

      v12 = v123[0];
    }

    else
    {
      if (v54.i8[0])
      {
        goto LABEL_86;
      }

      a6 = vaddq_f64(v121, v125);
      v12 = vminnmq_f64(v121, v123[0]);
      v52 = vsubq_f64(vmaxnmq_f64(a6, vaddq_f64(v123[0], v123[1])), v12);
    }

    v124 = v12;
    v125 = v52;
    v13.f64[0] = v52.f64[0];
  }

LABEL_86:
  v60 = *(v7 + 32);
  if ((v60 & 0x1000) == 0)
  {
    goto LABEL_115;
  }

  v61 = *(v7 + 24);
  if (*(v61 + 49))
  {
    v64 = v61 + 72;
  }

  else
  {
    v62 = *(v61 + 136);
    v122 = v12;
    if (v62)
    {
      v63 = *(v62 + 120);
    }

    else
    {
      v63 = 0;
    }

    v64 = CA::Render::Path::bounding_rect(v63);
    v61 = *(v7 + 24);
    v12 = v122;
  }

  v65 = *(v64 + 16);
  v66 = *(v61 + 136);
  if (v66)
  {
    a6.f64[0] = *(v66 + 228) * -2.8;
  }

  else
  {
    a6.f64[0] = -8.4;
  }

  v67 = *v64;
  if (v65.f64[0] <= v65.f64[1])
  {
    v68 = *(v64 + 24);
  }

  else
  {
    v68 = *(v64 + 16);
  }

  if (v68 < 1.79769313e308)
  {
    v69 = v65.f64[0] >= v65.f64[1] ? *(v64 + 24) : *(v64 + 16);
    if (v69 > 0.0)
    {
      v67 = vaddq_f64(v67, vdupq_lane_s64(*&a6.f64[0], 0));
      a6.f64[0] = a6.f64[0] * -2.0;
      v65.f64[0] = a6.f64[0] + v65.f64[0];
      a6.f64[0] = a6.f64[0] + v65.f64[1];
      *a7.i64 = fmin(v65.f64[0], a6.f64[0]);
      v65.f64[1] = a6.f64[0];
      a6.f64[0] = 0.0;
      v65 = vandq_s8(v65, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a6, a7)).i64[0], 0));
    }
  }

  if (v66)
  {
    v70 = vcvtq_f64_f32(*(v66 + 220));
  }

  else
  {
    v70 = xmmword_183E20FC0;
  }

  v71 = vaddq_f64(v67, v70);
  v13.f64[0] = v125.f64[0];
  v72 = vclezq_f64(v125);
  a7 = vclezq_f64(v65);
  a6 = vcltzq_s64(vorrq_s8(vzip1q_s64(a7, v72), vzip2q_s64(a7, v72)));
  *&a6.f64[0] = vmovn_s64(a6);
  if (BYTE4(a6.f64[0]))
  {
    if (LOBYTE(a6.f64[0]))
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  if ((LOBYTE(a6.f64[0]) & 1) == 0)
  {
    a6 = vaddq_f64(v12, v125);
    v73 = vaddq_f64(v71, v65);
    v71 = vminnmq_f64(v12, v71);
    v65 = vsubq_f64(vmaxnmq_f64(a6, v73), v71);
LABEL_113:
    v124 = v71;
    v125 = v65;
    v13.f64[0] = v65.f64[0];
    v12 = v71;
  }

LABEL_114:
  v60 = *(v7 + 32);
LABEL_115:
  if ((v60 & 0x200000000) == 0)
  {
    goto LABEL_134;
  }

  v74 = *(v7 + 24);
  v75 = *(v74 + 88);
  v76 = *(v74 + 136);
  if (v76)
  {
    a6.f64[0] = *(v76 + 320);
  }

  else
  {
    a6.f64[0] = 0.0;
  }

  v77 = *(v74 + 72);
  if (v75.f64[0] <= v75.f64[1])
  {
    v78 = *(v74 + 96);
  }

  else
  {
    v78 = *(v74 + 88);
  }

  if (v78 < 1.79769313e308)
  {
    v79 = v75.f64[0] >= v75.f64[1] ? *(v74 + 96) : *(v74 + 88);
    if (v79 > 0.0)
    {
      v77 = vaddq_f64(v77, vdupq_lane_s64(COERCE__INT64(-a6.f64[0]), 0));
      a6.f64[0] = a6.f64[0] + a6.f64[0];
      v75.f64[0] = a6.f64[0] + v75.f64[0];
      a6.f64[0] = a6.f64[0] + v75.f64[1];
      *a7.i64 = fmin(v75.f64[0], a6.f64[0]);
      v75.f64[1] = a6.f64[0];
      a6.f64[0] = 0.0;
      v75 = vandq_s8(v75, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a6, a7)).i64[0], 0));
    }
  }

  v13.f64[0] = v125.f64[0];
  v80 = vclezq_f64(v125);
  v81 = vclezq_f64(v75);
  v82 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v81, v80), vzip2q_s64(v81, v80))));
  if ((v82.i8[4] & 1) == 0)
  {
    if (v82.i8[0])
    {
      goto LABEL_134;
    }

    v83 = vaddq_f64(v77, v75);
    v77 = vminnmq_f64(v12, v77);
    v75 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v12, v125), v83), v77);
    goto LABEL_133;
  }

  if ((v82.i8[0] & 1) == 0)
  {
LABEL_133:
    v124 = v77;
    v125 = v75;
    v13.f64[0] = v75.f64[0];
  }

LABEL_134:
  if (v13.f64[0] != 0.0)
  {
    CA::Rect::apply_transform(&v124, *(this + 10), a3);
    if ((v60 & 0x8000000000) != 0)
    {
      v84 = *(v7 + 192);
      if (v84)
      {
        if ((*(v84 + 376) & 0x10) != 0)
        {
          v87 = vmulq_f64(*(v84 + 232), *(v84 + 232));
          v88 = vmulq_f64(*(v84 + 264), *(v84 + 264));
          v89 = vaddq_f64(vdupq_laneq_s64(v88, 1), v88);
          v90 = *(v84 + 352);
          v91 = vzip1q_s64(vaddq_f64(vdupq_laneq_s64(v87, 1), v87), v89);
          if (v90 != 1.0)
          {
            v91 = vmulq_n_f64(v91, 1.0 / (v90 * v90));
          }

          v92 = v91.f64[0] != 1.0;
          if (v91.f64[1] != 1.0)
          {
            v92 = 1;
          }

          v93 = vdup_n_s32(v92);
          v94.i64[0] = v93.u32[0];
          v94.i64[1] = v93.u32[1];
          v86 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v94, 0x3FuLL)), vsqrtq_f64(v91), v91);
        }

        else
        {
          v85 = (v84 + 360);
          v86 = vld1q_dup_f64(v85);
        }

        v95 = v125.f64[1];
        if (v125.f64[0] <= v125.f64[1])
        {
          v96 = v125.f64[1];
        }

        else
        {
          v96 = v125.f64[0];
        }

        if (v96 < 1.79769313e308)
        {
          if (v125.f64[0] < v125.f64[1])
          {
            v95 = v125.f64[0];
          }

          if (v95 > 0.0)
          {
            v97 = vmulq_n_f64(vnegq_f64(v86), *(v7 + 104));
            v98 = vsubq_f64(v125, vaddq_f64(v97, v97));
            v124 = vaddq_f64(v124, v97);
            v125 = v98;
            if (v98.f64[0] <= 0.0 || v98.f64[1] <= 0.0)
            {
              v125 = 0uLL;
            }
          }
        }
      }
    }

    if ((*(v7 + 41) & 0xF) != 0)
    {
      v99 = v125.f64[1];
      v100 = v125.f64[0] <= v125.f64[1] ? v125.f64[1] : v125.f64[0];
      if (v100 < 1.79769313e308)
      {
        if (v125.f64[0] < v125.f64[1])
        {
          v99 = v125.f64[0];
        }

        if (v99 > 0.0)
        {
          v101 = vrndmq_f64(v124);
          v102 = vsubq_f64(vrndpq_f64(vaddq_f64(v124, v125)), v101);
          v124 = v101;
          v125 = v102;
        }
      }
    }

    CA::OGL::Context::raster_round_rect(v123, **(this + 1), v124.f64);
    if (v123[0].i32[2] <= v123[0].i32[3])
    {
      v103 = v123[0].i32[3];
    }

    else
    {
      v103 = v123[0].i32[2];
    }

    v104 = v123[0].i32[2];
    v105 = v123[0].i32[3];
    if (v103 > 1073741822)
    {
      v104 = 1.79769313e308;
      v105 = 1.79769313e308;
    }

    v125.f64[0] = v104;
    v125.f64[1] = v105;
    v106 = vceqzq_f64(v125);
    v107 = vorrq_s8(vdupq_laneq_s64(v106, 1), v106).u64[0];
    v108 = 0uLL;
    if ((v107 & 0x8000000000000000) == 0)
    {
      v109 = vceqq_f64(v125, v125);
      v110 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v109), 1), v109);
      if ((v110.i64[0] & 0x8000000000000000) == 0)
      {
        v108.i32[0] = 1073741822;
        v110.i32[0] = v103;
        v111.i64[0] = v123[0].i32[0];
        v111.i64[1] = v123[0].i32[1];
        v112 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v110, v108), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v111));
        v113 = vcvtmq_s64_f64(vmaxnmq_f64(v112, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v108 = vuzp1q_s32(v113, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v112, v125), vdupq_n_s64(0x41C0000000000000uLL))), v113));
      }
    }

    CA::BoundsImpl::Union(a2, *v108.i8, *&vextq_s8(v108, v108, 8uLL));
  }
}

uint64_t CA::OGL::ImagingNode::propagate_soft_roi(uint64_t this, int32x2_t *a2)
{
  v3 = 0;
  v4 = this + 24;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(v4 + 8 * v3);
    if (v7)
    {
      this = CA::BoundsImpl::Union(v7 + 26, *a2, a2[1]);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  return this;
}

double CA::OGL::FilterNode::compute_dod(CA::OGL::FilterNode *this, CA::Bounds *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  v5 = *(v4 + 152);
  if (v5 < 0)
  {
    (*(*v4 + 40))(*(this + 3), v4 + 144);
    v5 = *(v4 + 152);
  }

  v6.i64[0] = *(v4 + 144);
  *a2 = v6.i64[0];
  v7 = *(v4 + 156);
  *(a2 + 2) = v5;
  *(a2 + 3) = v7;
  v8 = *(*(this + 31) + 16);
  if (v8)
  {
    v9 = *(v8 + 48);
    if (v9)
    {
      v10 = *(this + 2);
      v11 = **(this + 1);
      if (((*(*v9 + 8))(*(v8 + 48), v8, *(v10 + 24)) & 1) == 0)
      {
        v14 = *(a2 + 2);
        v15 = *(a2 + 3);
        if (v14 <= v15)
        {
          v16 = *(a2 + 3);
        }

        else
        {
          v16 = *(a2 + 2);
        }

        v6.i32[0] = 1073741822;
        v13.i32[0] = v16;
        v17.i64[0] = *a2;
        v17.i64[1] = HIDWORD(*a2);
        v18 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v13, v6), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v17));
        v19 = v14;
        v20 = v15;
        if (v16 > 1073741822)
        {
          v19 = 1.79769313e308;
          v20 = 1.79769313e308;
        }

        v25 = v18;
        v26 = v19;
        v27 = v20;
        v21 = CA::Rect::unapply_transform(&v25, *(this + 10), v12);
        (*(*v9 + 48))(v9, v8, *(v10 + 24), &v25, v21);
        CA::Rect::apply_transform(&v25, *(this + 10), v22);
        CA::OGL::Context::raster_round_rect(&v24, v11, v25.i64);
        v6.i64[0] = v24;
        *a2 = v24;
      }
    }
  }

  return *v6.i64;
}

uint64_t CA::OGL::FilterNode::propagate_roi(CA::OGL::FilterNode *this, int32x4_t *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v53 = 0uLL;
  v5 = *(this + 31);
  v6 = *(v5 + 16);
  if (!v6)
  {
    if (!*(v5 + 48))
    {
      goto LABEL_28;
    }

    v17 = *a2;
LABEL_26:
    v53 = v17;
    goto LABEL_28;
  }

  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(this + 2);
    if (!(*(*v7 + 16))(*(v6 + 48), v6, *(v8 + 24)))
    {
      v18 = a2->i32[2];
      v19 = a2->i32[3];
      if (v18 <= v19)
      {
        v20 = a2->i32[3];
      }

      else
      {
        v20 = a2->i32[2];
      }

      v10.i32[0] = 1073741822;
      v11.i32[0] = v20;
      v21.i64[0] = a2->i64[0];
      v21.i64[1] = HIDWORD(a2->i64[0]);
      v22 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v11, v10), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v21));
      v23 = v18;
      v24 = v19;
      if (v20 > 1073741822)
      {
        v23 = 1.79769313e308;
        v24 = 1.79769313e308;
      }

      v54 = v22;
      v55.f64[0] = v23;
      v55.f64[1] = v24;
      v25 = CA::Rect::unapply_transform(&v54, *(this + 10), v9);
      (*(*v7 + 64))(v7, v6, *(v8 + 24), &v54, v25);
      CA::Rect::apply_transform(&v54, *(this + 10), v26);
      v27 = vceqzq_f64(v55);
      if ((vorrq_s8(vdupq_laneq_s64(v27, 1), v27).u64[0] & 0x8000000000000000) != 0 || (v28 = vceqq_f64(v55, v55), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v28), 1), v28).u64[0] & 0x8000000000000000) != 0))
      {
        v53 = 0uLL;
        goto LABEL_28;
      }

      v29 = vcvtmq_s64_f64(vmaxnmq_f64(v54, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v17 = vuzp1q_s32(v29, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v54, v55), vdupq_n_s64(0x41C0000000000000uLL))), v29));
      goto LABEL_26;
    }
  }

  v12 = *a2;
  v53 = *a2;
  if (*(v6 + 24) == 30)
  {
    v13 = v12.i32[2];
    if (v12.i32[2] <= v12.i32[3])
    {
      v14 = v12.i32[3];
    }

    else
    {
      v14 = v12.i32[2];
    }

    if (v12.i32[2] >= v12.i32[3])
    {
      v13 = v12.i32[3];
    }

    if (v14 <= 1073741822 && v13 >= 1)
    {
      v53 = vaddq_s32(v12, xmmword_183E20FD0);
      v16 = vclez_s32(*&vextq_s8(v53, v53, 8uLL));
      if (vorr_s8(v16, vdup_lane_s32(v16, 1)).u32[0])
      {
        v53.i64[1] = 0;
      }
    }
  }

LABEL_28:
  v30 = *(*(this + 1) + 8);
  if (v30 && (*(this + 68) & 0x100) != 0)
  {
    v31 = *(v30 + 200);
    v32 = *(v30 + 208);
    if (v31.i32[2] <= v31.i32[3])
    {
      v33 = v31.i32[3];
    }

    else
    {
      v33 = v32;
    }

    if (v31.i32[2] >= v31.i32[3])
    {
      v32 = v31.i32[3];
    }

    if (v33 <= 1073741822 && v32 >= 1)
    {
      v35.i64[0] = 0x100000001;
      v35.i64[1] = 0x100000001;
      v36.i64[0] = vaddq_s32(v31, v35).u64[0];
      v36.u64[1] = vadd_s32(*&vextq_s8(v31, v31, 8uLL), 0x40000000400);
      v37 = vclez_s32(v36.u64[1]);
      v31 = vbslq_s8(vmovl_s16(vdup_lane_s16(vorr_s8(v37, vdup_lane_s32(v37, 1)), 0)), v36.u64[0], v36);
    }

    v38 = vclez_s32(v53.u64[1]);
    if ((vpmax_u32(v38, v38).u32[0] & 0x80000000) == 0)
    {
      v39 = vextq_s8(v31, v31, 8uLL).u64[0];
      v40 = vclez_s32(v39);
      if ((vpmax_u32(v40, v40).u32[0] & 0x80000000) != 0 || (v41 = vadd_s32(*v31.i8, v39), *v31.i8 = vmax_s32(*v53.i8, *v31.i8), v42 = vsub_s32(vmin_s32(vadd_s32(*v53.i8, v53.u64[1]), v41), *v31.i8), v43 = vclez_s32(v42), (vpmax_u32(v43, v43).u32[0] & 0x80000000) != 0))
      {
        v53.i64[1] = 0;
      }

      else
      {
        v31.u64[1] = v42;
        v53 = v31;
      }
    }
  }

  (*(**(this + 3) + 56))(*(this + 3), &v53);
  v44 = CA::OGL::filter_flags(*(this + 31), *(this + 2));
  v45 = v44;
  if ((v44 & 1) == 0)
  {
    if ((v44 & 2) == 0)
    {
      goto LABEL_47;
    }

LABEL_65:
    *(*(this + 3) + 236) |= 0x2000000u;
    if ((v44 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  *(*(this + 3) + 228) |= 0x200uLL;
  if ((v44 & 2) != 0)
  {
    goto LABEL_65;
  }

LABEL_47:
  if ((v44 & 0x20) != 0)
  {
LABEL_48:
    *(*(this + 3) + 228) |= 0x4004000000000uLL;
  }

LABEL_49:
  v46 = *(this + 3);
  v47 = *(*(this + 31) + 16);
  if (v47 && (v48 = *(v47 + 48)) != 0 && (v49 = *(this + 2), (*(*v48 + 72))(*(v47 + 48))))
  {
    v50 = ((*(*v48 + 120))(v48, v4, v47, v49) & 0xF) << 10;
  }

  else
  {
    v50 = 0;
  }

  *(v46 + 228) = *(v46 + 228) & 0xFFFFFFFFFFFFC3FFLL | v50;
  result = *(this + 31);
  if (*(result + 8))
  {
    *(this + 228) |= 0x400000000000uLL;
  }

  if ((v45 & 4) != 0)
  {
    *(this + 59) |= 0x4000000u;
  }

  v52 = *(this + 3);
  if ((*(v52 + 238) & 0x20) == 0)
  {
    result = CA::OGL::can_filter_in_place(result);
    if (result)
    {
      *(v52 + 228) |= 0x80000000000uLL;
    }
  }

  if (*(this + 240))
  {
    *(this + 59) |= 0x800000u;
  }

  return result;
}

void *CA::OGL::MetalBufferPool::allocate_buffer(os_unfair_lock_s *this, unsigned int a2)
{
  LODWORD(v2) = a2;
  v13 = *MEMORY[0x1E69E9840];
  if (a2 <= 0x40000)
  {
    os_unfair_lock_lock(this + 14);
    v4 = *&this[70]._os_unfair_lock_opaque;
    if (v4)
    {
      v5 = v4 - 1;
      v6 = *(*(*&this[62]._os_unfair_lock_opaque + (((*&this[68]._os_unfair_lock_opaque + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*&this[68]._os_unfair_lock_opaque + v5) & 0x1FF));
      *&this[70]._os_unfair_lock_opaque = v5;
      std::deque<objc_object  {objcproto9MTLBuffer}*>::__maybe_remove_back_spare[abi:nn200100](&this[60]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(this + 14);
      if (v6)
      {
        return v6;
      }
    }

    else
    {
      v7 = *&this[82]._os_unfair_lock_opaque;
      if (v7)
      {
        v8 = v7 - 1;
        v6 = *(*(*&this[74]._os_unfair_lock_opaque + (((*&this[80]._os_unfair_lock_opaque + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*&this[80]._os_unfair_lock_opaque + v8) & 0x1FF));
        *&this[82]._os_unfair_lock_opaque = v8;
        std::deque<objc_object  {objcproto9MTLBuffer}*>::__maybe_remove_back_spare[abi:nn200100](&this[72]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(this + 14);
        if (v6)
        {
          [v6 setPurgeableState:2];
          return v6;
        }
      }

      else
      {
        os_unfair_lock_unlock(this + 14);
      }
    }
  }

  if (v2 <= 0x40000)
  {
    v2 = 0x40000;
  }

  else
  {
    v2 = v2;
  }

  v9 = [*&this->_os_unfair_lock_opaque newBufferWithLength:v2 options:0];
  if (v9)
  {
    v6 = v9;
    [v9 setLabel:@"com.apple.coreanimation.buffer"];
  }

  else
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v10 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = v2;
      _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "Failed to allocate %u-byte Metal buffer\n", v12, 8u);
    }

    return 0;
  }

  return v6;
}

void std::deque<objc_object  {objcproto9MTLBuffer}*>::__maybe_remove_back_spare[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((v1 - v2) << 6) - 1;
  }

  if ((v3 - (a1[5] + a1[4])) >= 0x400)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

double CA::OGL::SDFNode::compute_dod(CA::OGL::SDFNode *this, int32x2_t *a2, double a3, float32x2_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(this + 30);
  v6 = *(this + 3);
  v7 = *(v6 + 38);
  if (*(v5 + 136) == 5)
  {
    if (v7 < 0)
    {
      (*(*v6 + 40))(*(this + 3), v6 + 36);
      v7 = *(v6 + 38);
    }

    v9 = *(v6 + 36);
    v10 = *(v6 + 37);
    a2->i32[0] = v9;
    a2->i32[1] = v10;
    v11 = *(v6 + 39);
    a2[1].i32[0] = v7;
    a2[1].i32[1] = v11;
    v14.i64[0] = __PAIR64__(v10, v9);
    v14.i64[1] = __PAIR64__(v11, v7);
    a4.i32[0] = *(v5 + 32);
    CA::OGL::SDFNode::map_shadow_bounds(*(this + 10), &v14, 1, *(v5 + 28), a4);
    CA::BoundsImpl::Union(a2, *v14.i8, v14.u64[1]);
  }

  else
  {
    if (v7 < 0)
    {
      (*(*v6 + 40))(*(this + 3), v6 + 36);
      v7 = *(v6 + 38);
    }

    result = v6[18];
    *a2 = result;
    v13 = *(v6 + 39);
    a2[1].i32[0] = v7;
    a2[1].i32[1] = v13;
  }

  return result;
}

uint64_t CA::OGL::SDFNode::propagate_roi(CA::OGL::SDFNode *this, int32x4_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v22 = *a2;
  v4 = *(this + 30);
  v5 = *(v4 + 136);
  if (v5 == 1 || v5 == 7)
  {
    result = (*(**(this + 3) + 56))(*(this + 3), &v22);
    *(this + 228) |= 0x100001000000000uLL;
  }

  else
  {
    if (v5 == 5)
    {
      v12.i32[1] = v3.i32[3];
      v8 = v3.i32[2];
      v9 = v3;
      v10 = v3.i64[0];
      v11 = *(v4 + 28);
      v12.i32[0] = *(v4 + 32);
      v14 = v12.f32[0] == 0.0 && v11 == 0.0;
      CA::OGL::SDFNode::map_shadow_bounds(*(this + 10), &v22, 0, v11, v12);
      v15.i32[1] = v9.i32[3];
      v16 = vclez_s32(v22.u64[1]);
      v17 = vpmax_u32(v16, v16).u32[0];
      v18 = vclez_s32(v9.u64[1]);
      v19 = vpmax_u32(v18, v18).u32[0];
      if ((v17 & 0x80000000) != 0)
      {
        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        v22.i64[0] = v10;
      }

      else
      {
        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        v20 = vmin_s32(*v22.i8, *v9.i8);
        v15 = vsub_s32(vmax_s32(vadd_s32(*v22.i8, v22.u64[1]), vadd_s32(*v9.i8, v9.u64[1])), v20);
        *v22.i8 = v20;
        v8 = v15.i32[0];
      }

      v22.i32[2] = v8;
      *(&v22 | 0xC) = v15.i32[1];
LABEL_24:
      result = (*(**(this + 3) + 56))(*(this + 3), &v22);
      *(*(this + 3) + 228) |= 0x100001000000000uLL;
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = (*(**(this + 3) + 56))(*(this + 3), &v22);
  }

  *(*(this + 3) + 228) |= 0x100001000000000uLL;
LABEL_19:
  v21 = *(this + 3);
  if ((*(v21 + 238) & 0x20) == 0)
  {
    *(v21 + 228) |= 0x80000000000uLL;
  }

LABEL_25:
  *(*(this + 3) + 228) |= 0x200uLL;
  return result;
}

float16x4_t *CA::OGL::prepare_layer_image(void *a1, uint64_t a2, const CA::Transform *a3, const double *a4)
{
  v4 = a3;
  v381 = *MEMORY[0x1E69E9840];
  v346 = *a1;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 176);
  v10 = *(v7 + 136);
  v352 = v8;
  if (!v10 || (*(a2 + 35) & 4) != 0)
  {
    goto LABEL_22;
  }

  v11 = *(v10 + 88);
  if (!v11 || (*(v11 + 13) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(v11 + 24) != 742 || (v12 = *(v11 + 40), !CA::Render::KeyValueArray::get_int_key(v12, 331, 0)))
  {
    CA::OGL::prepare_compositing_filter(a1, a2, v11, 0);
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v13 = CA::Render::Array::new_array(v12[4], v12 + 6, 1, v12[3] >> 8);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
  v15 = v14;
  if (v14)
  {
    CA::Render::Filter::Filter(v14, 741, 0, v13);
  }

  v15[3] |= 0x100u;
  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v13 + 16))(v13);
  }

LABEL_16:
  v16 = *(v7 + 136);
  if (v16)
  {
    v17 = v15 != 0;
    if (v15 || (v18 = *(v16 + 88)) == 0 || *(v18 + 24) == 533)
    {
      v19 = *(v16 + 96);
      if (v15)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  v19 = 0;
  v17 = v15 != 0;
  if (v15)
  {
    goto LABEL_58;
  }

LABEL_57:
  if (!v19)
  {
    goto LABEL_23;
  }

LABEL_58:
  if (CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::once[0] != -1)
  {
    dispatch_once(CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::once, &__block_literal_global_38);
  }

  if (*(*(a2 + 16) + 104) != *(*(a2 + 16) + 96))
  {
    goto LABEL_23;
  }

  if (!v19)
  {
    v31 = 0;
    goto LABEL_140;
  }

  v31 = *(v19 + 16);
  v32 = v31 != 1 || v17;
  if (v32)
  {
LABEL_140:
    _ZF = v31 == 0;
    v59 = !v17;
    if (!_ZF)
    {
      v59 = 1;
    }

    v33 = v15;
    if (v59)
    {
      goto LABEL_23;
    }

    goto LABEL_143;
  }

  v33 = *(v19 + 24);
LABEL_143:
  if ((*(v33 + 13) & 1) == 0)
  {
    goto LABEL_23;
  }

  v60 = *(v33 + 5);
  if (v60)
  {
    int_key = CA::Render::KeyValueArray::get_int_key(*(v33 + 5), 410, 0);
    v62 = v33[6];
    if (v62 == 743)
    {
      v332 = v7;
      v63 = v15;
      v64 = v4;
      if (!int_key)
      {
        v108 = CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_dark_name;
        v66 = 744;
        goto LABEL_372;
      }

      v65 = &CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_dark_reversed_name;
      v66 = 745;
      goto LABEL_230;
    }

    if (v62 == 746)
    {
      v332 = v7;
      v63 = v15;
      v64 = v4;
      if (!int_key)
      {
        v108 = CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_light_name;
        v66 = 747;
        goto LABEL_372;
      }

      v65 = &CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_light_reversed_name;
      v66 = 748;
LABEL_230:
      v108 = *v65;
LABEL_372:
      v60 = CA::Render::Array::new_array(*(v60 + 4), v60 + 24, 1, *(v60 + 3) >> 8);
      goto LABEL_373;
    }
  }

  else
  {
    v62 = v33[6];
    if (v62 == 746)
    {
      v332 = v7;
      v63 = v15;
      v64 = v4;
      v60 = 0;
      v108 = CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_light_name;
      v66 = 747;
      goto LABEL_373;
    }

    if (v62 == 743)
    {
      v332 = v7;
      v63 = v15;
      v64 = v4;
      v60 = 0;
      v108 = CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_dark_name;
      v66 = 744;
      goto LABEL_373;
    }
  }

  if (v62 != 741 || !(*(*v346 + 232))(v346, 30))
  {
    goto LABEL_23;
  }

  v60 = *(v33 + 5);
  if (!CA::Render::KeyValueArray::get_int_key(v60, 331, 0))
  {
    v332 = v7;
    v63 = v15;
    v64 = v4;
    v66 = 742;
LABEL_371:
    v108 = CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_color_matrix_name;
    if (v60)
    {
      goto LABEL_372;
    }

LABEL_373:
    v183 = X::Allocator0::operator new(0x38uLL);
    v184 = v183;
    if (v183)
    {
      CA::Render::Filter::Filter(v183, v66, v108, v60);
    }

    if (v60 && atomic_fetch_add(v60 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v60 + 16))(v60);
    }

    v4 = v64;
    if (v184)
    {
      CA::OGL::prepare_compositing_filter(a1, a2, v184, 0);
      v15 = v63;
      if (atomic_fetch_add(v184 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v184 + 16))(v184);
      }

      *(a2 + 32) |= 0x8000uLL;
      v8 = v352;
    }

    else
    {
      v8 = v352;
      v15 = v63;
    }

    v7 = v332;
    goto LABEL_23;
  }

  if ((*(*v346 + 232))(v346, 27))
  {
    LOBYTE(v356[0]) = 0;
    LOBYTE(v354.f64[0]) = 0;
    v109 = CA::OGL::prepare_layers(a1, a2, *(a2 + 16) + 96, v4, (*(*(a2 + 176) + 236) >> 23) & 1, v356, &v354);
    if (v109)
    {
      v110 = v109;
      do
      {
        v111 = *v110;
        CA::OGL::Renderer::dealloc_layer(a1, v110);
        v110 = v111;
      }

      while (v111);
    }

    if ((LOBYTE(v354.f64[0]) & 1) == 0)
    {
      v332 = v7;
      v63 = v15;
      v64 = v4;
      v60 = *(v33 + 5);
      v66 = 60;
      goto LABEL_371;
    }
  }

LABEL_23:
  v20 = *(a2 + 8);
  if (*(v20 + 43) != 3)
  {
    *(a2 + 32) |= 0x100000uLL;
    *(a2 + 42) = *(v20 + 43);
    *(a2 + 64) = *(v20 + 48);
    *(a2 + 72) = *(v20 + 56);
    *(a2 + 88) = *(v20 + 80);
    *(v20 + 43) = 3;
  }

  v21 = *(v8 + 116);
  v22 = *(v4 + 4);
  if (v22)
  {
    _ZF = v21 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v24 = _ZF && (*(v8 + 24) & 0x40000000000) == 0;
  if ((v24 || ((*(v8 + 24) & 0x18) != 0 ? (v25 = (*(v8 + 24) & 0x1000) == 0) : (v25 = 0), v25)) && (v26 = *(a2 + 32), (v26 & 0x200000) == 0))
  {
    *(a2 + 32) = v26 | 8;
  }

  else
  {
    if (v21 == 0xFF)
    {
      v27 = HIWORD(v22);
    }

    else
    {
      *(a2 + 32) |= 4uLL;
      *(a2 + 40) |= 1u;
      LOWORD(v27) = *(v4 + 19);
    }

    if (*&v27 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
    {
      *(a2 + 32) |= 4uLL;
      *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFD | (2 * ((*(*(a2 + 8) + 40) >> 2) & 1));
    }
  }

  *(a2 + 40) &= *(v7 + 40) | 0xFFFFF0FF;
  v28 = *(v7 + 136);
  if (v28)
  {
    if (*(v28 + 58) > 0.001 && (*(v7 + 42) & 0xF) != 0 || v28[9])
    {
      *(a2 + 32) |= 0x10uLL;
    }

    v29 = *(a2 + 32);
    if ((v29 & 8) == 0)
    {
      if (*(v28 + 60) > 0.001 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v28 + 244))))) & 1) != 0)
      {
        if ((*(v7 + 49) & 0x10) != 0)
        {
          v30 = 128;
        }

        else
        {
          v30 = 128;
          if (!v28[16])
          {
            v30 = 64;
          }
        }

        v29 |= v30;
        *(a2 + 32) = v29;
      }

      if (*(v28 + 80) > 0.001 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v28 + 324))))) & 1) != 0 && *(v28 + 86) != 0.0)
      {
        v34 = 0x200000000;
        if ((*(v7 + 48) & 0x800) == 0)
        {
          v34 = 0x100000000;
        }

        v29 |= v34;
        *(a2 + 32) = v29;
      }

      if ((v29 & 0x100000040) != 0)
      {
        *(a2 + 32) = (v29 >> 1) & 0x100000040 | v29 & 0xFFFFFFFDFFFFFF7FLL;
      }

      if (!v28[10] && !v28[16] || (*(*(a2 + 176) + 236) |= 0x200000u, (v28 = *(v7 + 136)) != 0))
      {
        v35 = *v28;
        if (*v28)
        {
          *v356 = &unk_1EF1F5A10;
          *&v356[2] = a1;
          *&v357.f64[0] = a2;
          (*(*v35 + 232))(v35, v356);
        }
      }

      if ((*(a2 + 40) & 8) != 0)
      {
        v36 = *(*(a2 + 16) + 256);
        if (v36)
        {
          os_unfair_lock_lock((v36 + 52));
          v37 = *(v36 + 56);
          if (!v37 || (v38 = *(v37 + 72), v39 = *(v37 + 80), v38 == v39))
          {
LABEL_90:
            os_unfair_lock_unlock((v36 + 52));
          }

          else
          {
            while (*v38 != *(v36 + 24) || *(v36 + 32) != *(v38 + 8) || *(v38 + 16) != *(v36 + 40))
            {
              v38 += 192;
              if (v38 == v39)
              {
                goto LABEL_90;
              }
            }

            if ((*(v38 + 181) & 1) == 0)
            {
              os_unfair_lock_unlock((v36 + 52));
LABEL_227:
              *(*(a2 + 176) + 236) |= 0x200000u;
              goto LABEL_91;
            }

            v107 = *(v38 + 180);
            os_unfair_lock_unlock((v36 + 52));
            if (v107 == 1)
            {
              goto LABEL_227;
            }
          }
        }

LABEL_91:
        *(*(a2 + 176) + 236) |= 0x1000000u;
      }
    }
  }

  v40 = *(a2 + 32);
  if ((v40 & 8) != 0)
  {
    v56 = 0;
  }

  else
  {
    if ((*(v7 + 50) & 2) != 0)
    {
      v40 |= 0x20uLL;
      *(a2 + 32) = v40;
    }

    v41 = *(*(a2 + 16) + 48);
    if (v41 && (*(v8 + 27) & 2) == 0)
    {
      *(a2 + 32) = v40 | 0x100;
      v42 = v41[12];
      if (v42 == 26)
      {
        *(*(a2 + 176) + 236) |= 0x200000u;
      }

      v43 = *(a2 + 24);
      if (v43)
      {
        v43 = *(v43 + 152);
        if (v43)
        {
          LODWORD(v43) = *(v43 + 105) >> 7;
        }
      }

      if (v42 == 57 && (v43 & 1) == 0)
      {
        (*(*v346 + 336))(v346, v41);
      }

      v44 = *(v7 + 40);
      if ((v44 & 0x2000000000000) != 0 && (*(*(a2 + 24) + 47) & 0x20) != 0)
      {
        *(*(a2 + 176) + 236) |= 0x200000u;
        v44 = *(v7 + 40);
      }

      if ((v44 & 0xE) != 0)
      {
        *(*(a2 + 176) + 236) |= 0x200000u;
      }

      v45 = (*(*v41 + 80))(v41);
      if (v45)
      {
        v46 = v45;
        if ((v45[14] & 4) == 0 && ((*(*v45 + 216))(v45) || (*(*v346 + 608))(v346, v46)))
        {
          *(*(a2 + 176) + 236) |= 0x200000u;
        }

        v47 = *(a2 + 32);
        if ((v47 & 0x20) != 0 && (v46[13] & 0x10) != 0 && (*(v7 + 40) & 0xD000) == 0x9000)
        {
          v48 = *(v7 + 136);
          if (!v48 || !*(v48 + 32) && *(v48 + 296) == 1.0)
          {
            *(a2 + 32) = v47 & 0xFFFFFFFFFFFFFFDFLL;
          }
        }
      }
    }

    if (*(v7 + 37))
    {
      v49 = *(v7 + 136);
      if (!v49 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v49 + 200))))) & 1) != 0)
      {
        v50 = *(v7 + 48);
        if ((v50 & 0x80) != 0 || (v51 = *(*(a2 + 16) + 208)) == 0 || (CA::Shape::contains(v51, a1 + 4) & 1) == 0)
        {
          if ((v50 & 0x100) != 0 || v49 && *(v49 + 120) || CA::Render::Layer::supports_cc_edge_effects(v7))
          {
            *(a2 + 32) |= 0x1000uLL;
            v52 = (*(**a1 + 232))(*a1, 4) - 64;
            if ((*(v7 + 49) & 1) != 0 || CA::Render::Layer::supports_cc_edge_effects(v7))
            {
              v54 = (v7 + 88);
              v55 = (v7 + 96);
            }

            else
            {
              v57 = *(v7 + 136);
              if (v57)
              {
                v58 = *(v57 + 120);
              }

              else
              {
                v58 = 0;
              }

              v67 = CA::Render::Path::bounding_rect(v58);
              v54 = (v67 + 16);
              v55 = (v67 + 24);
            }

            v68 = *v55;
            v69 = *v54;
            v70 = *(v7 + 136);
            if (v70)
            {
              v71 = *(v70 + 304);
            }

            else
            {
              LOBYTE(v53) = *(v7 + 38);
              v71 = v53;
            }

            v72 = v71;
            if (v69 > v68)
            {
              v68 = v69;
            }

            if (v68 * v72 > v52)
            {
              *(*(a2 + 176) + 236) |= 0x200000u;
            }
          }

          else
          {
            *(a2 + 32) |= 0x800uLL;
          }
        }
      }
    }

    v73 = *(v8 + 104);
    if (v73 != v8 + 96)
    {
      v56 = 0;
      while (1)
      {
        if ((*(v73 + 24) & 0x2000000018) == 0 || (*(v73 + 24) & 0x1000) != 0)
        {
          v75 = *(a2 + 32);
          if ((v75 & 0x200) != 0)
          {
            v56 = 0;
            *(a2 + 32) = v75 | 0x400;
            goto LABEL_170;
          }

          *(a2 + 32) = v75 | 0x200;
          v56 = v73;
        }

        v73 = *(v73 + 8);
        if (v73 == v8 + 96)
        {
          goto LABEL_170;
        }
      }
    }

    v56 = 0;
LABEL_170:
    if (*(a2 + 42) << 16 == 2752512)
    {
      *(*(a2 + 176) + 236) |= 0x1000000u;
      v76 = *(a2 + 176);
      v77 = *(v76 + 236);
      if ((v77 & 0x200000) != 0)
      {
        *(a2 + 32) |= 0x800000uLL;
        *(a2 + 388) |= 0x800000u;
      }

      else
      {
        *(v76 + 236) = v77 | 0x200000;
      }
    }
  }

  v78 = *(v8 + 56);
  v350 = v56;
  if (v78)
  {
    CA::Transform::set(a2 + 232, v78, 1);
  }

  else
  {
    v79 = *(v8 + 80);
    if (fabs(v79) < 0.001)
    {
      v80 = CA::Transform::operator=(a2 + 232, *(v4 + 3));
      v80.n128_u64[0] = *(v8 + 64);
      v84 = CA::Transform::translate((a2 + 232), v80, *(v8 + 72), 0.0);
      goto LABEL_181;
    }

    v86 = *(v8 + 64);
    *(a2 + 232) = xmmword_183E20E00;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 264) = xmmword_183E20E60;
    *(a2 + 280) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = xmmword_183E20E00;
    *(a2 + 328) = v86;
    __asm { FMOV            V1.2D, #1.0 }

    *(a2 + 344) = xmmword_183E20E60;
    *(a2 + 360) = _Q1;
    *(a2 + 344) = v79;
    *(a2 + 376) = *(a2 + 376) & 0xE0 | 0x10;
  }

  if ((CA::OGL::maybe_concatenate((a2 + 232), *(v4 + 3), a3, a4) & 1) == 0)
  {
    *(a2 + 32) |= 0x1800000uLL;
    *(a2 + 388) |= 0x20000u;
    *(v9 + 136) = *(v9 + 136) & 0xFCFF | 0x200;
  }

LABEL_181:
  v91 = *(v8 + 24) & 0xC00000000;
  v92 = *(v7 + 40);
  v93 = v92 & 0x10000000000000 | v91;
  v94 = *(v7 + 136);
  if (v94)
  {
    v95 = *(v94 + 308);
    if (!v93)
    {
      goto LABEL_188;
    }
  }

  else
  {
    LOBYTE(v84.f64[0]) = *(v7 + 39);
    v95 = LODWORD(v84.f64[0]);
    if (!v93)
    {
LABEL_188:
      v96 = 0;
      goto LABEL_189;
    }
  }

  if ((v92 & 0x100000000000000) != 0)
  {
    *v84.f64 = *(a1[1] + 344) / (*(a1[1] + 212) * *(a1[1] + 208));
    if (*v84.f64 >= 0.95)
    {
      goto LABEL_188;
    }
  }

  *(a2 + 388) |= 0x1000000u;
  v94 = *(v7 + 136);
  v96 = 1;
LABEL_189:
  v97 = v95;
  if (!v94 || !*(v94 + 112))
  {
    goto LABEL_234;
  }

  if ((v96 & 1) == 0 && (*(a2 + 40) & 8) != 0 && ((*(a2 + 376) & 0x10) == 0 || CA::Mat4Impl::mat4_is_rectilinear((a2 + 232), v81)))
  {
    v98 = *(*(a2 + 24) + 136);
    if (v98)
    {
      v99 = *(v98 + 112);
      if (v99)
      {
        if (*(v99 + 108))
        {
          LODWORD(v84.f64[0]) = *(v98 + 232);
          if (*v84.f64 <= 0.0)
          {
            v100 = *(v98 + 72);
            if (!v100 || *(v100 + 16) != 8)
            {
              goto LABEL_206;
            }

            v101 = 0;
            v84.f64[0] = *(v100 + 24);
            v102 = v100 + 32;
            do
            {
              if (v84.f64[0] <= *(v102 + v101))
              {
                v84.f64[0] = *(v102 + v101);
              }

              v101 += 8;
            }

            while (v101 != 56);
            if (v84.f64[0] <= 0.0)
            {
LABEL_206:
              v103 = *(*(a2 + 16) + 256);
              if (v103)
              {
                os_unfair_lock_lock((v103 + 52));
                v104 = *(v103 + 56);
                if (v104)
                {
                  os_unfair_lock_lock((v104 + 40));
                  v333 = v7;
                  v105 = v15;
                  v106 = *(v104 + 80) - *(v104 + 72);
                  os_unfair_lock_unlock((v104 + 40));
                  os_unfair_lock_unlock((v103 + 52));
                  _ZF = v106 == 192;
                  v15 = v105;
                  v7 = v333;
                  if (_ZF)
                  {
                    v96 = 0;
                    *(a2 + 40) |= 0x10u;
                    goto LABEL_234;
                  }
                }

                else
                {
                  os_unfair_lock_unlock((v103 + 52));
                }
              }
            }
          }
        }
      }
    }
  }

  *(a2 + 388) |= 0x4000000u;
  v96 = 1;
LABEL_234:
  if (*(v8 + 264))
  {
    v112 = 1;
  }

  else
  {
    v112 = v96;
  }

  v113 = 1.0;
  if (v95 <= 0.0)
  {
    v97 = 1.0;
  }

  v114 = v112 == 1 && v91 == 0;
  if (v114 && (*(*(a2 + 24) + 46) & 0x80) != 0)
  {
    v119 = *(v7 + 136);
    if (v119)
    {
      v115 = *(v119 + 112) == 0;
    }

    else
    {
      v115 = 1;
    }
  }

  else
  {
    v115 = 0;
  }

  v343 = v91;
  v345 = v115;
  v349 = v112;
  if (!v112)
  {
    v117 = 0;
    v118 = v97;
    goto LABEL_262;
  }

  if (v97 <= 0.0)
  {
    v118 = 1.0;
    v117 = 0;
    if (v97 == 1.0)
    {
      goto LABEL_262;
    }

    if (v115)
    {
      goto LABEL_258;
    }

LABEL_260:
    v84.f64[0] = v97;
    v120 = CA::Transform::scale_2d((a2 + 232), v84);
    v120.f64[0] = v118 / v97;
    v84 = CA::Transform::scale_2d(v117, v120);
    goto LABEL_261;
  }

  *(a2 + 32) |= 0x800000uLL;
  if (v97 != 1.0 || !v115)
  {
    *(v9 + 136) = *(v9 + 136) & 0xFCFF | 0x200;
  }

  v116 = x_heap_malloc_small_(a1[7], 0x98uLL);
  v117 = v116;
  if ((v345 & 1) == 0)
  {
    CA::Transform::operator=(v116, a2 + 232);
    v84 = CA::Transform::operator=(a2 + 232, &CA::identity_transform);
    v118 = 1.0;
    if (v97 == 1.0)
    {
      goto LABEL_262;
    }

    goto LABEL_260;
  }

  v84 = CA::Transform::operator=(v116, &CA::identity_transform);
  v118 = 1.0;
  if (v97 != 1.0)
  {
LABEL_258:
    v84.f64[0] = v97;
    v84.f64[0] = CA::Transform::scale_2d_right((a2 + 232), v84, v81, v82, v83);
LABEL_261:
    v113 = v97;
  }

LABEL_262:
  v344 = v117;
  v121 = (v9 + 56);
  v342 = (a2 + 232);
  *(v9 + 80) = a2 + 232;
  v122 = *(a2 + 32);
  if ((*(*(a2 + 8) + 36) & 0x50) != 0)
  {
    v122 |= 0x1000000000uLL;
    *(a2 + 32) = v122;
  }

  if ((v122 & 0x2000000) != 0)
  {
    *(a2 + 32) = v122 & 0xFFFFFFFCFFFFE7BFLL;
    if (!v15)
    {
      goto LABEL_484;
    }

    goto LABEL_482;
  }

  v347 = v4;
  if ((v122 & 0x4000000000) == 0)
  {
    goto LABEL_391;
  }

  v123 = *(a2 + 176);
  v124 = *(a2 + 192);
  if (v124 && (v125 = *(*(v124 + 24) + 136)) != 0)
  {
    v126 = *v125;
  }

  else
  {
    v126 = 0;
  }

  if (*(v126 + 144) > 0.0)
  {
    *(v123 + 228) |= 0x1000000000uLL;
    v127 = *(a2 + 176);
    v128 = a1[9];
    if (v128)
    {
      a1[9] = *v128;
    }

    else
    {
      v128 = x_heap_malloc_small_(a1[7], 0x110uLL);
    }

    CA::OGL::ImagingNode::ImagingNode(v128, a1, a2, v127, 0);
    *v128 = &unk_1EF1FD970;
    *(v128 + 240) = v126;
    CA::OGL::init_gstate(v128 + 56, v127 + 56);
    *(v128 + 236) = (*(v128 + 236) & 0xFFDE0000) + 2113536;
    *(a2 + 176) = v128;
    *(v128 + 228) |= 0x1000000000uLL;
    v122 = *(a2 + 32) | 0x80000000000;
    *(a2 + 32) = v122;
  }

  v129 = *(v126 + 160);
  if (v129)
  {
    if (*(v129 + 16))
    {
      v130 = *(v129 + 16);
    }

    else
    {
      v130 = *(v126 + 160);
    }
  }

  else
  {
    v130 = 0;
  }

  v131 = *(v352 + 40);
  if (v131)
  {
    v132 = *(v131 + 80);
    v133 = v132;
    v134 = v132 != 0;
    v135 = HIDWORD(v132) == 0;
  }

  else
  {
    v133 = 0;
    v134 = 0;
    v135 = 1;
  }

  v136 = a1[1];
  v137 = *(v136 + 1376);
  if ((v137 & 0x4000000) != 0 || (v134 & ~v137 & 1) == 0 || !v130 || (v122 & 0x80000000000) != 0)
  {
LABEL_385:
    v182 = *(a2 + 176);
    if (*(v126 + 136) == 1)
    {
      *(v182 + 228) |= 0x1000000000uLL;
      *(v123 + 228) |= 0x1000000000uLL;
      goto LABEL_391;
    }

    goto LABEL_387;
  }

  if (v135)
  {
    if ((*(v130 + 378) & 1) == 0)
    {
      goto LABEL_385;
    }

    goto LABEL_323;
  }

  v338 = v133;
  if (*(v130 + 380) == 1)
  {
    *(v130 + 378) = 0;
    goto LABEL_385;
  }

  v138 = *(v136 + 80);
  v139 = *(*(a2 + 176) + 80);
  v140 = *(v7 + 152);
  v141 = *(v140 + 128);
  v142 = *(v130 + 144) - v141;
  if (v142 < 0)
  {
    v142 = v141 - *(v130 + 144);
  }

  if (v142 >= 2)
  {
    v143 = *(v140 + 132);
LABEL_301:
    *(v130 + 136) = *(v140 + 120);
    *(v130 + 144) = v141;
    *(v130 + 148) = v143;
    v145 = 1;
    goto LABEL_303;
  }

  v143 = *(v140 + 132);
  v144 = *(v130 + 148) - v143;
  if (v144 < 0)
  {
    v144 = v143 - *(v130 + 148);
  }

  if (v144 >= 2)
  {
    goto LABEL_301;
  }

  v145 = 0;
LABEL_303:
  v146 = v145 | !CA::Transform::only_translate(v139, (v130 + 224));
  CA::Transform::operator=(v130 + 224, v139);
  *(v130 + 208) = 0;
  *(v130 + 216) = 0;
  v147 = *(v130 + 192);
  *(v130 + 8 * v147 + 152) = v138 - *(v130 + 184);
  *(v130 + 192) = (v147 + 1) & 3;
  if (v146 == 1)
  {
    *(v130 + 184) = v138;
  }

  v148 = 0;
  v133 = v338;
  do
  {
    v149 = *(v130 + 152 + v148);
    v150 = v149 <= 0.334 || v148 == 24;
    v148 += 8;
  }

  while (!v150);
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if ((BYTE7(xmmword_1ED4E98AC) & 1) != 0 || *&dword_1ED4E9784 > *(v130 + 376))
  {
    *(v130 + 378) = 0;
    *(v130 + 379) = v146;
    goto LABEL_385;
  }

  v151 = v149 <= 0.334 || *(&qword_1ED4E977C + 1) > ((*(v130 + 48) - *(v130 + 40)) >> 4);
  v152 = !v151;
  *(v130 + 378) = v152;
  *(v130 + 379) = v146;
  if (v151)
  {
    goto LABEL_385;
  }

LABEL_323:
  v339 = v133;
  if (*(v126 + 136) == 1 && (*(*(a2 + 16) + 28) & 0x20) != 0)
  {
    v153 = *(a2 + 8);
    if (v153)
    {
      v154 = *(*(v153 + 24) + 136);
      if (v154)
      {
        v155 = *(v154 + 96);
        if (v155)
        {
          v329 = v15;
          memset(v356, 0, sizeof(v356));
          __asm { FMOV            V0.2D, #1.0 }

          v357 = _Q0;
          v157 = *(v155 + 16);
          if (v157)
          {
            v158 = v155 + 8 * v157 + 24;
            v159 = (v155 + 24);
            v330 = v158;
            do
            {
              v160 = *v159;
              if ((*(*v159 + 14) & 8) != 0)
              {
                v161 = *(v160 + 40);
                if (!v161)
                {
                  goto LABEL_339;
                }

                v162 = *(v161 + 16);
                if (!v162)
                {
                  goto LABEL_339;
                }

                v163 = 0;
                v164 = v161 + 24;
                while (1)
                {
                  v165 = *(v164 + 8 * v163);
                  if (*(v165 + 16) == 431)
                  {
                    break;
                  }

                  if (v162 == ++v163)
                  {
                    goto LABEL_339;
                  }
                }

                if ((v163 & 0x80000000) == 0)
                {
                  v166 = *(v165 + 24);
                }

                else
                {
LABEL_339:
                  v166 = 0;
                }

                v167 = *(*(a2 + 24) + 128);
                v168 = *(v166 + 24);
                if (v168 == *(v167 + 24))
                {
                  v169 = *(v160 + 48);
                  v336 = *(a2 + 24);
                  v331 = v169;
                  v170 = memcmp((v166 + 28), (v167 + 28), v168) || v169 == 0;
                  v158 = v330;
                  if (!v170 && ((*(*v331 + 16))(v331, v160, v336) & 1) == 0)
                  {
                    (*(*v331 + 64))(v331, v160, *(a2 + 24), v356);
                  }
                }
              }

              if (*(v160 + 24) == 283 && *(v130 + 208) == 0.0 && *(v130 + 216) == 0.0)
              {
                v171 = *(v160 + 40);
                v354 = xmmword_183E210C0;
                *(v130 + 208) = CA::Render::KeyValueArray::get_vec2_key(v171, 427, &v354);
                *(v130 + 216) = v172;
              }

              ++v159;
            }

            while (v159 != v158);
          }

          v353 = 0.0;
          v354.f64[0] = 0.0;
          v173 = *(v9 + 80);
          if ((*(v173 + 144) & 0x10) != 0)
          {
            CA::Mat4Impl::mat4_get_scale(v173, v354.f64, &v353, v83);
            v174 = v353;
            v175.f64[0] = v354.f64[0];
          }

          else
          {
            v174 = *(v173 + 128);
            v175.f64[0] = v174;
          }

          v15 = v329;
          v175.f64[1] = v174;
          *(a2 + 96) = vmul_f32(vcvt_f32_f64(vmulq_f64(v357, v175)), 0x3F0000003F000000);
        }
      }
    }
  }

  v334 = v7;
  if (*(v130 + 388))
  {
    *(v130 + 384) = 0;
    *(v130 + 388) = 0;
    v176 = *(v130 + 40);
    v177 = *(v130 + 48);
    v178 = v15;
    v179 = 0.0;
    while (v176 != v177)
    {
      if (v179 <= *(v176 + 8))
      {
        v179 = *(v176 + 8);
      }

      *(v130 + 384) = v179;
      v176 += 16;
    }
  }

  else
  {
    v178 = v15;
    v179 = *(v130 + 384);
  }

  *(a2 + 104) = v179;
  *(a2 + 108) = 1166016512;
  v180 = *(v130 + 200);
  v181 = *(a2 + 176);
  v182 = a1[9];
  if (v182)
  {
    a1[9] = *v182;
  }

  else
  {
    v182 = x_heap_malloc_small_(a1[7], 0x110uLL);
  }

  CA::OGL::ImagingNode::ImagingNode(v182, a1, a2, v123, 0);
  *v182 = &unk_1EF1FDA00;
  *(v182 + 240) = v339 | (v180 << 32);
  *(v123 + 236) |= 0x1800000u;
  CA::OGL::copy_gstate(v182 + 56, v123 + 56);
  *(v182 + 228) |= 0x1000000000uLL;
  CA::OGL::init_gstate(v182 + 56, v181 + 56);
  *(v182 + 236) = (*(v182 + 236) & 0xFFDE0000) + 2113536;
  *(a2 + 176) = v182;
  v15 = v178;
  v7 = v334;
  if (*(v126 + 136) != 1)
  {
LABEL_387:
    v185 = a1[9];
    if (v185)
    {
      a1[9] = *v185;
    }

    else
    {
      v185 = x_heap_malloc_small_(a1[7], 0x110uLL);
    }

    CA::OGL::ImagingNode::ImagingNode(v185, a1, a2, v182, 0);
    *v185 = &unk_1EF1FD8E0;
    *(v185 + 240) = v126;
    CA::OGL::init_gstate(v185 + 56, v182 + 56);
    *(v185 + 236) = (*(v185 + 236) & 0xFFDE0000) + 2113536;
    *(a2 + 176) = v185;
  }

LABEL_391:
  v356[0] = 0;
  v186 = *(v7 + 136);
  if (v186)
  {
    v187 = *(v186 + 96);
  }

  else
  {
    v187 = 0;
  }

  v188 = *(a2 + 32);
  if ((v188 & 0x8000) != 0)
  {
    v190 = 0;
    v189 = 0;
  }

  else if (v15 | v187)
  {
    v189 = CA::OGL::prepare_filters(a1, a2, v187, 0, v356, 0, v15);
    v15 = 0;
    v188 = *(a2 + 32);
    v190 = v356[0];
  }

  else
  {
    v190 = 0;
    v189 = 0;
    v15 = 0;
  }

  if ((v188 & 0x100000840) != 0)
  {
    if (v190 <= 1)
    {
      v190 = 1;
    }

    v356[0] = v190;
  }

  if (CA::OGL::test_source_requirement(v190, *(v9 + 80)))
  {
    v340 = 0;
    v191 = 0;
    v337 = 512;
    v4 = v347;
    if (!v189)
    {
      goto LABEL_463;
    }

    goto LABEL_421;
  }

  v192 = x_heap_malloc_small_(a1[7], 0x98uLL);
  v191 = x_heap_malloc_small_(a1[7], 0x98uLL);
  *v192 = xmmword_183E20E00;
  *(v192 + 16) = 0u;
  *(v192 + 32) = xmmword_183E20E60;
  *(v192 + 48) = 0u;
  *(v192 + 64) = 0u;
  *(v192 + 80) = xmmword_183E20E00;
  *(v192 + 96) = 0u;
  *(v192 + 112) = xmmword_183E20E60;
  __asm { FMOV            V0.2D, #1.0 }

  *(v192 + 128) = _Q0;
  *(v192 + 144) &= 0xE0u;
  v84 = CA::Transform::operator=(v191, *(v9 + 80));
  _ZF = v190 == 8;
  v4 = v347;
  if (!_ZF)
  {
    v194 = *(v9 + 80);
    if ((*(v194 + 144) & 0x10) != 0)
    {
      v195 = vaddvq_f64(vmulq_f64(*v194, *v194));
      v84 = vmulq_f64(*(v194 + 32), *(v194 + 32));
      v196 = vaddvq_f64(v84);
      v197 = *(v194 + 120);
      v84.f64[0] = 1.0;
      if (v197 != 1.0)
      {
        v198 = 1.0 / (v197 * v197);
        v195 = v198 * v195;
        v196 = v198 * v196;
      }

      v199 = v196 == 1.0 && v195 == 1.0;
      v200 = (sqrt(v196) + sqrt(v195)) * 0.5;
      if (!v199)
      {
        v84.f64[0] = v200;
      }
    }

    else
    {
      v84.f64[0] = *(v194 + 128);
    }

    v201 = round(v84.f64[0] * 65536.0);
    v84.f64[0] = v201 * 0.0000152587891;
    v202 = CA::Transform::scale_2d(v192, v84);
    v202.f64[0] = 65536.0 / v201;
    v84 = CA::Transform::scale_2d(v191, v202);
  }

  v203 = *(v9 + 136);
  *(v9 + 136) = v203 & 0xFCFF | 0x200;
  *(v9 + 128) = v191;
  v340 = *(v9 + 72);
  *(v9 + 72) = 0;
  *(v9 + 80) = v192;
  if ((v203 & 0x100) != 0)
  {
    v204 = 256;
  }

  else
  {
    v204 = 512;
  }

  v337 = v204;
  v188 = *(a2 + 32);
  if (v189)
  {
LABEL_421:
    v205 = v188 | 0x40000;
    if ((v188 & 0x1000) != 0)
    {
      v205 = v188 & 0xFFFFFFFFFFFBE7FFLL | 0x40800;
    }

    if ((v205 & 0x200000000) != 0)
    {
      v206 = v205 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }

    else
    {
      v206 = v205;
    }

    *(a2 + 32) = v206;
    v335 = v7;
    if (*(v189 + 10))
    {
      *(a2 + 176) = CA::OGL::cache_node(a1, a2, v189 + 5, *(a2 + 176), 0, 1.0);
      v206 = *(a2 + 32);
LABEL_433:
      v209 = v15;
      v210 = 0;
      *(a2 + 32) = v206 | 0x1000000000;
      goto LABEL_434;
    }

    v207 = v189;
    do
    {
      can_filter_in_place = CA::OGL::can_filter_in_place(v207);
      v207 = *v207;
    }

    while (v207 && can_filter_in_place);
    if (!can_filter_in_place)
    {
      goto LABEL_433;
    }

    v209 = v15;
    v210 = 1;
    while (1)
    {
LABEL_434:
      if (v189[1])
      {
        goto LABEL_435;
      }

      v212 = v189[6];
      if (v212)
      {
        if (!CA::ColorMatrix::is_alpha_identity(v212))
        {
          goto LABEL_435;
        }
      }

      v213 = v189[2];
      if (v213)
      {
        v214 = *(v213 + 48);
        if (!v214)
        {
          if ((*(v213 + 12) & 0x40100) == 0x100)
          {
            v219 = 0;
            while (*(v213 + 24) != CA::Render::Filter::is_opacity_commutative(void)const::atoms[v219])
            {
              if (++v219 == 3)
              {
                goto LABEL_435;
              }
            }
          }

          goto LABEL_436;
        }

        if (((*(*v214 + 40))(v214) & 1) == 0)
        {
LABEL_435:
          *(a2 + 32) |= 0x40000000uLL;
        }
      }

LABEL_436:
      if (v189[1] || (v215 = v189[6]) != 0 && !CA::ColorMatrix::is_diagonal(v215))
      {
LABEL_437:
        *(a2 + 32) |= 0x400000000uLL;
      }

      else
      {
        v216 = v189[2];
        if (v216 && !*(v216 + 48) && (*(v216 + 12) & 0x40100) == 0x100)
        {
          v217 = 0;
          v218 = *(v216 + 24);
          while (v218 != CA::Render::Filter::is_color_scale_commutative(void)const::atoms[v217])
          {
            if (++v217 == 4)
            {
              goto LABEL_437;
            }
          }
        }
      }

      v210 &= *v189 != 0;
      *(a2 + 176) = CA::OGL::filter_node(a1, a2, v189, *(a2 + 176) + 56, v210, *(a2 + 176));
      v211 = v189[2];
      if (v211 && *(v211 + 24) == 552)
      {
        *(v9 + 136) &= ~0x100u;
      }

      v189 = *v189;
      if (!v189)
      {
        v188 = *(a2 + 32);
        v4 = v347;
        v15 = v209;
        v7 = v335;
        break;
      }
    }
  }

LABEL_463:
  v220 = v188 & 0xFFFFFFFFFFFFE7FFLL | 0x800;
  if ((v188 & 0x100000800) == 0 || (v188 & 0x1000) == 0)
  {
    v220 = v188;
  }

  if ((v188 & 0x100000800) != 0 && (v220 & 0x200000000) != 0)
  {
    v221 = v220 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  else
  {
    v221 = v220;
  }

  if ((v188 & 0x100000800) != 0 && (v188 & 0x1000) != 0 || (v188 & 0x100000800) != 0 && (v220 & 0x200000000) != 0)
  {
    *(a2 + 32) = v221;
  }

  v121 = (v9 + 56);
  if ((v221 & 0x100000840) != 0)
  {
    v222 = *(a2 + 176);
    v223 = a1[9];
    if (v223)
    {
      a1[9] = *v223;
    }

    else
    {
      v223 = x_heap_malloc_small_(a1[7], 0x110uLL);
    }

    CA::OGL::ImagingNode::ImagingNode(v223, a1, a2, v222, 0);
    *v223 = &unk_1EF1FDDF0;
    CA::OGL::init_gstate(v223 + 56, v222 + 56);
    if ((*(*(a2 + 24) + 48) & 0x80) != 0)
    {
      v224 = 7;
    }

    else
    {
      v224 = 3;
    }

    *(v223 + 136) = v224;
    *(v223 + 236) = *(v223 + 236) & 0xFFDE0000 | 0x200001;
    *(a2 + 176) = v223;
  }

  if (v191)
  {
    CA::OGL::quad_node(a1, a2, *(a2 + 176), 1, 1, 0, 0.0);
    v121 = v225 + 7;
    v225[9] = v340;
    v225[10] = v191;
    v225[17].i16[0] = v337 | v225[17].i16[0] & 0xFCFF;
    v225[11] = *(v9 + 88);
    v84.f64[0] = 1.10008428e-19;
    *(v9 + 88) = 0x3C003C003C003C00;
    *(a2 + 176) = v225;
  }

  v8 = v352;
  if (v15)
  {
LABEL_482:
    if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15, v84);
    }
  }

LABEL_484:
  v226 = *(a2 + 32);
  if ((v226 & 0x6000000) == 0)
  {
    if (*(*(a2 + 8) + 24))
    {
      v239 = *(v7 + 136);
      if (v239)
      {
        v82 = *(v239 + 104);
        if (v82)
        {
          v356[0] = 0;
          v240 = CA::OGL::prepare_filters(a1, a2, v82, 1, v356, 0, 0);
          *(a2 + 224) = v240;
          v226 = *(a2 + 32);
          if (v240)
          {
            v226 |= 0x80000uLL;
            *(a2 + 32) = v226;
          }
        }
      }
    }
  }

  if ((v226 & 0x200008) == 8)
  {
    v227 = v226;
  }

  else
  {
    v227 = v226 | 0x10000;
    v228 = v226 & 0x300007FE0;
    if ((v226 & 0x300007FE0) == 0)
    {
      v227 = v226;
    }

    if ((v228 & (v228 - 1)) != 0)
    {
      v227 |= 0x20000uLL;
    }

    if (v228)
    {
      *(a2 + 32) = v227;
      v226 = v227;
    }
  }

  v229 = *(v8 + 24);
  if ((v229 & 0x18000) != 0)
  {
    v226 = v227 | 0x800000;
    *(a2 + 32) = v227 | 0x800000;
    if ((v229 & 0x8000) != 0)
    {
      *(a2 + 388) |= 0x40000u;
      v229 = *(v8 + 24);
    }

    if ((v229 & 0x10000) != 0)
    {
      *(a2 + 388) |= 0x80000u;
      v229 = *(v8 + 24);
    }

    v227 |= 0x800000uLL;
  }

  if ((v229 & 0x4000) != 0 && (v227 & 0x40000) == 0)
  {
    if ((*(*(a2 + 24) + 48) & 8) != 0 || (v230 = (*(*v346 + 824))(v346), v227 = *(a2 + 32), v226 = v227, v230))
    {
      v226 = v227 | 0x800000;
      *(a2 + 32) = v227 | 0x800000;
      *(a2 + 388) |= 0x100000u;
      v227 |= 0x800000uLL;
    }
  }

  if ((~v227 & 0x20004) != 0)
  {
    v231 = v350;
  }

  else
  {
    v231 = v350;
    if ((*(v8 + 26) & 0x10) == 0)
    {
      v232 = *(a2 + 40);
      if ((v232 & 2) != 0 || (v232 & 1) != 0 && (*(*(a2 + 24) + 48) & 4) != 0 && (*(*a1 + 872) & 4) == 0 && (*(*(a2 + 16) + 24) & 0x80) == 0)
      {
        v226 = v227 | 0x800000;
        *(a2 + 32) = v227 | 0x800000;
        *(a2 + 388) |= 0x200000u;
        v227 |= 0x800000uLL;
      }
    }
  }

  if ((~v227 & 0x40000004) == 0)
  {
    v226 = v227 | 0x800000;
    *(a2 + 32) = v227 | 0x800000;
    *(a2 + 388) |= 0x400000u;
    v227 |= 0x800000uLL;
  }

  if ((v227 & 0x400000000) != 0)
  {
    v233 = *(v4 + 17);
    if (*(v4 + 16) != v233 || (v234 = *(v4 + 18), v233 != v234) || v234 != *(v4 + 19))
    {
      v226 = v227 | 0x800000;
      *(a2 + 32) = v227 | 0x800000;
      *(a2 + 388) |= 0x400000u;
      v227 |= 0x800000uLL;
    }
  }

  v235 = *(v4 + 4);
  if (v235 != 0x3C003C003C003C00 && (*(&v235 + 2) > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) || *&v235 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) || *(&v235 + 1) > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0))))
  {
    v226 = v227 | 0x2000000000;
    *(a2 + 32) = v227 | 0x2000000000;
    v227 |= 0x2000000000uLL;
  }

  if ((*(*(a2 + 24) + 47) & 8) != 0)
  {
    v226 = v227 | 0x800000;
    *(a2 + 32) = v227 | 0x800000;
    v227 |= 0x800000uLL;
  }

  if ((v227 & 0x100000) != 0)
  {
    if (!v231 || (v236 = *(v231 + 32), (v237 = *(v236 + 136)) != 0) && *(v237 + 96))
    {
      v238 = 0;
    }

    else
    {
      v380 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v374 = 0u;
      v375 = 0u;
      v372 = 0u;
      v373 = 0u;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      v366 = 0u;
      v367 = 0u;
      v364 = 0u;
      v365 = 0u;
      v362 = 0u;
      v363 = 0u;
      v360 = 0u;
      v361 = 0u;
      v358 = 0u;
      v359 = 0u;
      *v356 = 0u;
      v357 = 0u;
      DWORD2(v358) = 196608;
      v241 = *(v236 + 136);
      if (v241 && (v82 = *(v241 + 88)) != 0 && (*(v82 + 13) & 1) != 0)
      {
        CA::OGL::prepare_compositing_filter(a1, v356, v82, 1);
        v226 = *(a2 + 32);
        v238 = (BYTE2(v358) & 0x10) == 0;
        LODWORD(v227) = v226;
      }

      else
      {
        v238 = 1;
      }
    }

    if ((v227 & 0x80820000) != 0)
    {
      goto LABEL_542;
    }

    if ((v227 & 0x200000) != 0 && (*(a2 + 40) & 8) == 0)
    {
      if ((v227 & 0x10000) == 0 || (v227 & 0x6120) == 0 || (v227 & 0x100) != 0 && (*(*(a2 + 24) + 40) & 0xF000) != 0x9000 || (*(v4 + 40) & 0x100) == 0 || (*(a2 + 376) & 0x10) != 0 && !CA::Mat4Impl::mat4_is_rectilinear(v342, v81))
      {
        goto LABEL_542;
      }

      v247 = *(a2 + 24);
      v248 = *(v247 + 88);
      *v356 = *(v247 + 72);
      v357 = v248;
      CA::Rect::apply_transform(v356, v342, v82);
      v250 = a1[4];
      v251.i64[0] = a1[5];
      v252 = v251.i32[1];
      v253.i64[0] = v250;
      v253.i64[1] = SHIDWORD(v250);
      v254 = v253;
      v253.i64[0] = v251.i32[0];
      v253.i64[1] = v251.i32[1];
      v255 = v253;
      if (v251.i32[0] > v251.i32[1])
      {
        v252 = a1[5];
      }

      v251.i32[0] = v252;
      v249.i32[0] = 1073741822;
      v256 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v251, v249), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v254));
      v257 = vdup_n_s32(v252 > 1073741822);
      v258.i64[0] = v257.u32[0];
      v258.i64[1] = v257.u32[1];
      v351 = *v356;
      v341 = v357;
      if (!CA::BoundsImpl::contains(*v356, v357, v256, vbslq_s8(vcltzq_s64(vshlq_n_s64(v258, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), vcvtq_f64_s64(v255))))
      {
        v301 = v121;
        v302 = *(a2 + 8);
        if (!v302 || (*(v302 + 376) & 0x10) != 0 && !CA::Mat4Impl::mat4_is_rectilinear((v302 + 232), v259) || (v303 = *(v302 + 16)) == 0)
        {
          v121 = v301;
          goto LABEL_542;
        }

        v304 = *(v303 + 168);
        v305 = *(v303 + 172);
        if (v304 <= v305)
        {
          v306 = *(v303 + 172);
        }

        else
        {
          v306 = *(v303 + 168);
        }

        v261.i32[0] = 1073741822;
        v85.i32[0] = v306;
        v307 = vdupq_lane_s32(*&vcgtq_s32(v85, v261), 0);
        v308 = *(v303 + 160);
        v309.i64[0] = v308;
        v309.i64[1] = SHIDWORD(v308);
        v310 = vbslq_s8(v307, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v309));
        v311 = v304;
        if (v306 > 1073741822)
        {
          v311 = 1.79769313e308;
        }

        v354 = v310;
        if (v306 <= 1073741822)
        {
          v312 = v305;
        }

        else
        {
          v312 = 1.79769313e308;
        }

        v355.f64[0] = v311;
        v355.f64[1] = v312;
        CA::Rect::apply_transform(&v354, (v302 + 232), v260);
        v121 = v301;
        if (!CA::BoundsImpl::contains(v351, v341, v354, v355))
        {
          goto LABEL_542;
        }
      }
    }

    if ((v226 & 0x200) == 0 || v238)
    {
      v262 = !v238;
      if ((v226 & 0x4000040000) != 0)
      {
        v262 = 1;
      }

      if (v262)
      {
        v227 = v226;
      }

      else
      {
        v263 = *(a2 + 40) | (BYTE2(*(a2 + 40)) << 24);
        *(a2 + 48) = *(a2 + 64);
        *(a2 + 80) = *(a2 + 88);
        *(a2 + 40) = v263 | 0x30000;
        v227 = v226 & 0xFFFFFFBFFFEBFFFFLL;
        *(a2 + 32) = v226 & 0xFFFFFFBFFFEBFFFFLL;
      }

      goto LABEL_543;
    }

LABEL_542:
    v227 = v226 | 0x800000;
    *(a2 + 32) = v226 | 0x800000;
    *(a2 + 388) |= 0x800000u;
  }

LABEL_543:
  if ((v227 & 0x800000) != 0)
  {
    v243 = *(a2 + 176);
    if (v349)
    {
      *(a2 + 32) = v227 ^ 0x40000000000;
      if (v343)
      {
        v244 = *(v7 + 152);
        if (v244)
        {
          if (!*(v244 + 72))
          {
            *(v244 + 72) = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
          }

          v245 = a1[9];
          if (v245)
          {
            a1[9] = *v245;
          }

          else
          {
            v245 = x_heap_malloc_small_(a1[7], 0x110uLL);
          }

          CA::OGL::ImagingNode::ImagingNode(v245, a1, a2, v243, 0);
          *v245 = &unk_1EF1FD730;
          *(v243 + 236) |= 0x800000u;
          CA::OGL::copy_gstate(v245 + 56, v243 + 56);
          *(v245 + 236) = (*(v245 + 236) & 0xFFDE0000) + 2101248;
          v243 = v245;
        }
      }

      else if ((*(v7 + 40) & 0x110000000000000) == 0x10000000000000 && (*(a1[1] + 1376) & 1) == 0)
      {
        v264 = *(v7 + 152);
        if (v264)
        {
          if (!*(v264 + 72))
          {
            *(v264 + 72) = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
          }

          v265 = v113;
          if (!v345)
          {
            v265 = 1.0;
          }

          v243 = CA::OGL::cache_node(a1, a2, (v264 + 72), v243, v345, v265);
        }
      }

      v266 = *(v7 + 40);
      if ((v266 & 0xFu) > 0xAuLL)
      {
        v267 = 1;
      }

      else
      {
        v267 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v266 & 0xF];
      }

      v268 = v266 >> 4;
      if (v268 > 0xA)
      {
        v269 = 1;
      }

      else
      {
        v269 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v268];
      }

      v270 = *(v7 + 136);
      v271 = v121;
      if (v270)
      {
        v272 = *(v270 + 312);
      }

      else
      {
        v272 = 0.0;
      }

      v273 = *(*(a2 + 16) + 264);
      v348 = v4;
      if (v273)
      {
        v274 = a1[9];
        if (v274)
        {
          a1[9] = *v274;
        }

        else
        {
          v274 = x_heap_malloc_small_(a1[7], 0x110uLL);
        }

        CA::OGL::ImagingNode::ImagingNode(v274, a1, a2, v243, 0);
        *v274 = &unk_1EF1FD7C0;
        *(v274 + 240) = v273;
        *(v274 + 236) |= 0x800000u;
        CA::OGL::copy_gstate(v274 + 56, v243 + 56);
        *(v274 + 236) = *(v274 + 236) & 0xFFDE0000 | 0x210000;
        v270 = *(v7 + 136);
      }

      else
      {
        v274 = v243;
      }

      v121 = v271;
      if (v270 && (v275 = *(v270 + 112)) != 0)
      {
        os_unfair_lock_lock((v275 + 16));
        CA::Render::MeshTransform::update_locked(v275, 1);
        os_unfair_lock_unlock((v275 + 16));
        v243 = a1[9];
        if (v243)
        {
          a1[9] = *v243;
        }

        else
        {
          v243 = x_heap_malloc_small_(a1[7], 0x110uLL);
        }

        CA::OGL::ImagingNode::ImagingNode(v243, a1, a2, v274, 0);
        *v243 = &unk_1EF1FDE80;
        *(v243 + 240) = v267 & 0xF | (16 * v269);
        *(v243 + 248) = v275;
        v276 = v113;
        *(v243 + 256) = v276;
        *(v243 + 260) = v272;
        CA::OGL::init_gstate(v243 + 56, v274 + 56);
        *(v243 + 236) = (*(v243 + 236) & 0xFFDE0000) + 2105344;
        v279.f64[0] = v113;
        v280 = CA::Transform::scale_2d(v344, v279);
        *(v243 + 80) = v344;
        if ((*(v348 + 40) & 0x100) != 0)
        {
          v281 = ~*(a2 + 34) & 0x100;
        }

        else
        {
          v281 = 0;
        }

        v8 = v352;
        *(v243 + 136) = *(v243 + 136) & 0xFEFF | v281;
        v282 = *(*(a2 + 16) + 24);
        if (v282 & 0x18000) != 0 || (v282 & 0x4000) != 0 && ((*(*(a2 + 24) + 48) & 8) != 0 || ((*(*v346 + 824))(v346, v280)))
        {
          v246 = 1;
        }

        else
        {
          v246 = *(v275 + 168) != *(v275 + 192) && (*(a2 + 32) & 0x100004) != 0;
        }

        v4 = v348;
      }

      else
      {
        CA::OGL::quad_node(a1, a2, v274, v267, v269, *(a2 + 41), v272);
        v243 = v277;
        *(v277 + 80) = v344;
        v4 = v348;
        if ((*(v348 + 40) & 0x100) != 0)
        {
          v278 = ~*(a2 + 34) & 0x100;
        }

        else
        {
          v278 = 0;
        }

        v8 = v352;
        v246 = 0;
        *(v277 + 136) = *(v277 + 136) & 0xFEFF | v278;
      }
    }

    else
    {
      v246 = 1;
    }

    if (*(a2 + 35))
    {
      v283 = *(v4 + 3);
      if (v118 != 1.0)
      {
        v284 = x_heap_malloc_small_(a1[7], 0x98uLL);
        v285 = CA::Transform::operator=(v284, v283);
        v285.n128_f64[0] = v118;
        CA::Transform::scale_2d_right(v342, v285, v286, v287, v288);
        v289.f64[0] = 1.0 / v118;
        CA::Transform::scale_2d(v284, v289);
        v283 = v284;
      }

      CA::OGL::quad_node(a1, a2, v243, 1, 1, 0, 0.0);
      v243 = v290;
      *(v290 + 80) = v283;
      *(v290 + 72) = *(v4 + 2);
      *(v290 + 136) = *(v290 + 136) & 0xFEFF | *(v4 + 40) & 0x100;
    }

    else if (v246)
    {
      v243 = CA::OGL::combine_node(a1, a2, 3, v243 + 56, v243, 0, 0.0, 0.0, 0.0, 0.0);
      *(v243 + 236) = *(v243 + 236) & 0xFFFE0000 | 0x200;
    }

    *(v243 + 88) = v121[4];
    v121[4] = 0x3C003C003C003C00;
    v121 = (v243 + 56);
    *(a2 + 176) = v243;
    v227 = *(a2 + 32) & 0xFFFFFFDFFFFFFFFFLL;
    goto LABEL_626;
  }

  if ((v227 & 4) != 0)
  {
    v242 = *(a2 + 40);
    if ((v242 & 2) != 0 || (v242 & 1) != 0 && (*(*(a2 + 24) + 48) & 4) != 0 && (*(*a1 + 872) & 4) == 0 && (*(*(a2 + 16) + 24) & 0x80) == 0)
    {
      *(a2 + 40) = v242 | 4;
    }
  }

  if ((v227 & 0x210000) == 0x200000)
  {
    v227 |= 0x10020uLL;
LABEL_626:
    *(a2 + 32) = v227;
  }

  v291 = v121;
  if ((v227 & 0x4000040000) != 0)
  {
    v291 = v121;
    if ((v227 & 0x800000) == 0)
    {
      v292 = *(a2 + 176);
      v291 = v292 + 7;
      if ((v227 & 0x4000000000) != 0)
      {
        v85 = vcvtq_f32_f16(v121[4]);
        v292[11] = vcvt_f16_f32(vmulq_f32(v85, vcvtq_f32_f16(v292[11])));
        v121[4] = 0x3C003C003C003C00;
      }
    }
  }

  v293 = *(v8 + 116);
  if (v293 != -1)
  {
    v294 = bswap32(v293);
    v85.i32[0] = v294;
    v85.i32[1] = v294 >> 8;
    v85.i32[2] = HIWORD(v294);
    v295.i64[0] = 0xFF000000FFLL;
    v295.i64[1] = 0xFF000000FFLL;
    v296 = vandq_s8(v85, v295);
    v296.i32[3] = vshrq_n_u32(vdupq_n_s32(v294), 0x18uLL).i32[3];
    v297 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v296), vdupq_n_s32(0x3B808081u)));
    if (*&v121[4] != 0x3C003C003C003C00)
    {
      v297 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v297), vcvtq_f32_f16(v291[4])));
    }

    v291[4] = v297;
  }

  v298 = *(v7 + 136);
  if (v298)
  {
    v299 = *(v298 + 316);
    if (v299 != 1.0)
    {
      CA::Render::Update::render_edr_factor();
      v314 = 1.0 / v313;
      v315 = *(a1[1] + 1184);
      if (v314 >= v315 && v315 > 0.001)
      {
        v314 = *(a1[1] + 1184);
      }

      v317 = *v291[8].i32;
      if (v317 >= v314)
      {
        v318 = v314;
      }

      else
      {
        v318 = *v291[8].i32;
      }

      v319 = v317 * v299;
      *v291[8].i32 = v319;
      if (v319 < v314)
      {
        v314 = v319;
      }

      v320 = v314 / v318;
      if (v320 > 0.0)
      {
        v321 = powf(v320, 1.0 / v346[144]);
        _H1 = v291[4].i16[0];
        __asm { FCVT            S1, H1 }

        _S1 = v321 * _S1;
        __asm { FCVT            H1, S1 }

        v291[4].i16[0] = LOWORD(_S1);
        LOWORD(_S1) = v291[4].i16[1];
        __asm { FCVT            S1, H1 }

        _S1 = v321 * _S1;
        __asm { FCVT            H1, S1 }

        v291[4].i16[1] = LOWORD(_S1);
        LOWORD(_S1) = v291[4].i16[2];
        __asm { FCVT            S1, H1 }

        _S0 = v321 * _S1;
        __asm { FCVT            H0, S0 }

        v291[4].i16[2] = LOWORD(_S0);
      }

      *(v8 + 276) = v319;
    }
  }

  return v121;
}