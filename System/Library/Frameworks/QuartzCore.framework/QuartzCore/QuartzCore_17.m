uint64_t CA::OGL::BlurFilter::needs_dither(CA::Render::KeyValueArray *a1, uint64_t a2)
{
  result = CA::Render::KeyValueArray::get_int_key(a1, 366, 0);
  if (result)
  {
    float_key = CA::Render::KeyValueArray::get_float_key(a1, 400, 0.0);
    if ((*(a2 + 376) & 0x10) != 0)
    {
      v7 = vaddvq_f64(vmulq_f64(*(a2 + 232), *(a2 + 232)));
      v8 = vaddvq_f64(vmulq_f64(*(a2 + 264), *(a2 + 264)));
      v9 = *(a2 + 352);
      if (v9 != 1.0)
      {
        v10 = 1.0 / (v9 * v9);
        v7 = v10 * v7;
        v8 = v10 * v8;
      }

      v11 = v8 == 1.0 && v7 == 1.0;
      v6 = (sqrt(v8) + sqrt(v7)) * 0.5;
      if (v11)
      {
        v6 = 1.0;
      }
    }

    else
    {
      v6 = *(a2 + 360);
    }

    return v6 * float_key > 4.0;
  }

  return result;
}

uint64_t CA::OGL::GaussianBlurFilter::filter_flags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 40);
  if (CA::OGL::BlurFilter::needs_dither(v4, a3))
  {
    v5 = 14;
  }

  else
  {
    v5 = 6;
  }

  if (CA::Render::KeyValueArray::get_int_key(v4, 392, 0))
  {
    if ((*(a3 + 376) & 0x10) != 0)
    {
      v6 = vaddvq_f64(vmulq_f64(*(a3 + 232), *(a3 + 232)));
      v7 = vaddvq_f64(vmulq_f64(*(a3 + 264), *(a3 + 264)));
      v9 = *(a3 + 352);
      if (v9 != 1.0)
      {
        v10 = 1.0 / (v9 * v9);
        v6 = v10 * v6;
        v7 = v10 * v7;
      }

      v11 = v6 != 1.0;
      if (v7 != 1.0)
      {
        v11 = 1;
      }

      v12 = sqrt(v6);
      v13 = sqrt(v7);
      if (v11)
      {
        v7 = v13;
        v6 = v12;
      }
    }

    else
    {
      v6 = *(a3 + 360);
      v7 = v6;
    }

    if (v6 >= v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = v6;
    }

    v15 = v14 * CA::Render::KeyValueArray::get_float_key(v4, 400, 0.0);
    if (v15 <= 0.35)
    {
      return v5;
    }

    else
    {
      return v5 | 0x10;
    }
  }

  else if (CA::Render::KeyValueArray::get_int_key(v4, 385, 0))
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

void CA::OGL::PingPongState::~PingPongState(CA::OGL::PingPongState *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    CA::OGL::Context::release_surface(*this, v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    CA::OGL::Context::release_surface(*this, v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    CA::Shape::unref(v4);
  }
}

void CA::OGL::PingPongState::scale_and_dilate(CA::OGL::PingPongState *this, double a2, float32_t a3, signed int a4, signed int a5)
{
  *(this + 10) = vmul_f32(*(this + 80), __PAIR64__(LODWORD(a3), LODWORD(a2)));
  v6 = floorf(*(this + 13) * a3);
  *(this + 12) = floorf(*(this + 12) * *&a2) - a4;
  *(this + 13) = v6 - a5;
  v7 = ceilf(*(this + 15) * a3) + a5;
  *(this + 14) = ceilf(*(this + 14) * *&a2) + a4;
  *(this + 15) = v7;
  v8 = *(this + 5);
  if (v8)
  {
    v9 = CA::Shape::scale_and_dilate(v8, *&a2, a3, a4, a5);
    CA::Shape::unref(*(this + 5));
    *(this + 5) = v9;
  }
}

uint64_t CA::OGL::BlurState::tile_downsample(float32x2_t *this, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (this[5])
  {
    return 0;
  }

  if (this[15].i8[0])
  {
    v2 = 0;
    if ((this[15].i8[0] & 2) != 0 || this[13].i32[0] == 1)
    {
      return v2;
    }
  }

  else if ((this[15].i8[0] & 2) != 0)
  {
    return 0;
  }

  v6 = *this;
  if (!(*(**this + 232))(*this, 34))
  {
    return 0;
  }

  v9 = this[4].i16[0];
  v10 = v9;
  v11 = v9 & 1;
  v12 = (v10 >= 0 ? &this[v11 + 11] : &this[1]);
  v13 = *v12;
  if (v6[85] != *v12 || (*(v13 + 147) & 0xF) < a2)
  {
    return 0;
  }

  v14 = v11 ^ 1;
  v15 = *(v13 + 48);
  v7.i64[0] = *(v13 + 56);
  v16.i64[0] = v15;
  v16.i64[1] = SHIDWORD(v15);
  v17 = vcvtq_f64_s64(v16);
  v18 = v7.i32[1];
  v16.i64[0] = v7.i32[0];
  v16.i64[1] = v7.i32[1];
  v19 = v16;
  if (v7.i32[0] > v7.i32[1])
  {
    v18 = *(v13 + 56);
  }

  v7.i32[0] = v18;
  v8.i32[0] = 1073741822;
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v7, v8), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v17);
  v21 = vdup_n_s32(v18 > 1073741822);
  v22.i64[0] = v21.u32[0];
  v22.i64[1] = v21.u32[1];
  v23 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), vcvtq_f64_s64(v19));
  v24 = 1.0 / a2;
  v25 = v24;
  v26 = *v23.i64 >= 1.79769313e308 || v24 == 1.0;
  v27.i64[1] = v20.i64[1];
  v28.i64[1] = v23.i64[1];
  if (v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = -1;
  }

  v30 = vdupq_n_s64(v29);
  *v28.i64 = v25 * *v23.i64;
  v31 = vbslq_s8(v30, v28, v23);
  *v27.i64 = v25 * *v20.i64;
  v32 = vbslq_s8(v30, v27, v20);
  if (v24 != 1.0 && v31.f64[1] < 1.79769313e308)
  {
    v32.f64[1] = vmuld_lane_f64(v25, v32, 1);
    v31.f64[1] = v31.f64[1] * v25;
  }

  v33 = vceqzq_f64(v31);
  if ((vorrq_s8(vdupq_laneq_s64(v33, 1), v33).u64[0] & 0x8000000000000000) != 0 || (v34 = vceqq_f64(v31, v31), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v34), 1), v34).u64[0] & 0x8000000000000000) != 0))
  {
    v41.i64[0] = 0;
    v37 = 0x100000001;
  }

  else
  {
    v35 = vminnmq_f64(vaddq_f64(v32, v31), vdupq_n_s64(0x41C0000000000000uLL));
    v36 = vcvtmq_s64_f64(vmaxnmq_f64(v32, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v41 = vuzp1q_s32(v36, vsubq_s64(vcvtpq_s64_f64(v35), v36));
    v37 = vadd_s32(v41.u64[1], 0x100000001);
  }

  v41.u64[1] = v37;
  this[4].i32[1] |= 0x4000u;
  if (!CA::OGL::PingPongState::create_surface(this, v14, &v41))
  {
    return 0;
  }

  v38 = this[v14 + 11];
  v39 = *(v13 + 48) / a2 - *(*&v38 + 48);
  v40 = *(v13 + 52) / a2 - *(*&v38 + 52);
  this[7] = vcvt_f32_s32(vadd_s32(v41.u64[1], *v41.i8));
  v42 = v39;
  v43 = v40;
  v2 = (*(*v6 + 968))(v6);
  if (v2)
  {
    (*(*v6 + 816))(v6);
    ++this[4].i16[0];
  }

  return v2;
}

BOOL CA::OGL::PingPongState::attach_dest(float32x2_t *this, int a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = (this[4].i16[0] & 1) == 0;
  v7 = this[6];
  v8 = vsub_f32(this[7], v7);
  v9 = vceqz_f32(v8);
  v10.i64[0] = v9.i32[0];
  v10.i64[1] = v9.i32[1];
  if ((vorrq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0] & 0x8000000000000000) != 0 || (v11 = vmvn_s8(vceq_f32(v8, v8)), v12.i64[0] = v11.i32[0], v12.i64[1] = v11.i32[1], (vorrq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0] & 0x8000000000000000) != 0))
  {
    v29 = 0uLL;
    v19 = 0;
    v18 = -1;
  }

  else
  {
    v13 = vcvtq_f64_f32(v7);
    v14 = vmaxnmq_f64(v13, vdupq_n_s64(0xC1BFFFFFFF000000));
    v15 = vminnmq_f64(vaddq_f64(v13, vcvtq_f64_f32(v8)), vdupq_n_s64(0x41C0000000000000uLL));
    v16 = vcvtmq_s64_f64(v14);
    v17 = vsubq_s64(vcvtpq_s64_f64(v15), v16);
    v29 = vuzp1q_s32(v16, v17);
    v18 = vadd_s32(vmovn_s64(v16), -1);
    v19 = vmovn_s64(v17);
  }

  if (this[4].i8[2] == 1)
  {
    v20 = v19.i32[0];
    if (v19.i32[0] <= v19.i32[1])
    {
      v21 = v19.i32[1];
    }

    else
    {
      v21 = v19.i32[0];
    }

    if (v19.i32[0] >= v19.i32[1])
    {
      v20 = v19.i32[1];
    }

    if (v21 <= 1073741822 && v20 >= 1)
    {
      v23 = vadd_s32(v19, 0x200000002);
      v24 = vclez_s32(v23);
      if (vorr_s8(v24, vdup_lane_s32(v24, 1)).u8[0])
      {
        v25 = -1;
      }

      else
      {
        v25 = 0;
      }

      *v29.i8 = v18;
      v29.u64[1] = vbic_s8(v23, vdup_n_s32(v25));
    }
  }

  surface = CA::OGL::PingPongState::create_surface(this, v6, &v29);
  if (surface)
  {
    v27 = this[v6 + 11];
    (*(**this + 760))(*this, v27, a3, a3);
    CA::OGL::Context::push_surface(*this, v27, 0, 64, 0);
    if (a2)
    {
      if ((*(v27 + 147) & 0x40) == 0)
      {
        memset(v30, 0, sizeof(v30));
        CA::Shape::operator=(v30, v29.i32);
        (*(**this + 1000))();
      }
    }
  }

  return surface;
}

uint64_t CA::OGL::BlurState::process_edges(CA::OGL::BlurState *this, float a2, float a3, float a4, int *a5)
{
  v20[3] = *MEMORY[0x1E69E9840];
  *(*(*this + 16) + 16) = 1;
  v10 = *(this + 5);
  if (v10)
  {
    v18 = 0;
    v19 = 0;
    v20[1] = 0;
    v20[2] = 0;
    v20[0] = v10;
    while (1)
    {
      result = CA::ShapeIterator::iterate(v20, &v18);
      if (!result)
      {
        break;
      }

      v12 = v18;
      if (*(this + 26) == 1)
      {
        CA::OGL::PingPongState::replicate_edges(*this, a2, v12, SHIDWORD(v18), (v19 + v18), (HIDWORD(v19) + HIDWORD(v18)), -(*a5 - (v12 * a3)), -(a5[1] - (SHIDWORD(v18) * a4)), -(*a5 - ((v19 + v18) * a3)), -(a5[1] - ((HIDWORD(v19) + HIDWORD(v18)) * a4)));
      }

      else
      {
        CA::OGL::PingPongState::clear_edges(*this, a2, v12, SHIDWORD(v18), (v19 + v18), (HIDWORD(v19) + HIDWORD(v18)));
      }
    }
  }

  else
  {
    v13 = *(this + 12);
    if (*(this + 26) == 1)
    {
      return CA::OGL::PingPongState::replicate_edges(*this, a2, v13, *(this + 13), *(this + 14), *(this + 15), -(*a5 - (v13 * a3)), -(a5[1] - (*(this + 13) * a4)), -(*a5 - (*(this + 14) * a3)), -(a5[1] - (*(this + 15) * a4)));
    }

    else
    {
      v14 = *(this + 13);
      v15 = *(this + 14);
      v16 = *(this + 15);
      v17 = *this;

      return CA::OGL::PingPongState::clear_edges(v17, a2, v13, v14, v15, v16);
    }
  }

  return result;
}

void *CA::OGL::PingPongState::render_pass(uint64_t a1, int a2, int a3, int a4, uint64_t *a5, float a6, float a7, float a8, float a9)
{
  v63[3] = *MEMORY[0x1E69E9840];
  v16 = *a1;
  v17 = *(a1 + 40);
  if (v17)
  {
    v61 = 0;
    v62 = 0;
    v63[1] = 0;
    v63[2] = 0;
    v63[0] = v17;
    v18 = a8 - a2;
    v19 = a9 - a3;
    while (1)
    {
      result = CA::ShapeIterator::iterate(v63, &v61);
      if (!result)
      {
        break;
      }

      v22 = v61;
      v21 = HIDWORD(v61);
      v23 = v62;
      v24 = HIDWORD(v62);
      if (*(v16 + 108))
      {
        v25 = 6;
      }

      else
      {
        v25 = 4;
      }

      if ((*(v16 + 144) + 4) > *(v16 + 152) || (v26 = *(v16 + 128)) != 0 && *(v16 + 120) + v25 > v26)
      {
        *(v16 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(v16);
        *(v16 + 144) = 0;
        *(v16 + 112) = v16 + 1386;
        *(v16 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(v16, v22, v21, (v23 + v22), (v24 + v21));
      if (a4)
      {
        v27 = *a5;
        v28 = *(v16 + 136) + 48 * *(v16 + 144);
        *(v28 - 160) = *a5;
        *(v28 - 112) = v27;
        *(v28 - 64) = v27;
        *(v28 - 16) = v27;
      }

      v29 = v18 + (v22 * a6);
      v30 = v19 + (v21 * a7);
      v31 = v18 + ((v23 + v22) * a6);
      v32 = *(v16 + 136) + 48 * *(v16 + 144);
      *(v32 - 176) = v29;
      *(v32 - 172) = v30;
      v33 = v19 + ((v24 + v21) * a7);
      *(v32 - 128) = v31;
      *(v32 - 124) = v30;
      *(v32 - 80) = v31;
      *(v32 - 76) = v33;
      *(v32 - 32) = v29;
      *(v32 - 28) = v33;
    }
  }

  else
  {
    v35 = *(a1 + 48);
    v36 = *(a1 + 52);
    v37 = *(a1 + 56);
    v38 = *(a1 + 60);
    v39 = 6;
    if (!*(v16 + 108))
    {
      v39 = 4;
    }

    if ((*(v16 + 144) + 4) > *(v16 + 152) || (v40 = *(v16 + 128), v41 = *(a1 + 60), v42 = *(a1 + 56), v43 = *(a1 + 52), v44 = *(a1 + 48), v40) && (v41 = *(a1 + 60), v42 = *(a1 + 56), v43 = *(a1 + 52), v44 = *(a1 + 48), *(v16 + 120) + v39 > v40))
    {
      *(v16 + 1384) |= 0x20u;
      v45 = v37;
      v46 = v38;
      CA::OGL::Context::array_flush(v16);
      v38 = v46;
      v37 = v45;
      *(v16 + 144) = 0;
      *(v16 + 112) = v16 + 1386;
      *(v16 + 120) = xmmword_183E20E50;
      v44 = *(a1 + 48);
      v43 = *(a1 + 52);
      v42 = *(a1 + 56);
      v41 = *(a1 + 60);
    }

    v47 = a2;
    v48 = v35 * a6;
    v49 = v36 * a7;
    v50 = a3;
    v51 = v37 * a6;
    v52 = v38 * a7;
    result = CA::OGL::Context::array_rect(v16, v44, v43, v42, v41);
    if (a4)
    {
      v53 = *a5;
      v54 = *(v16 + 136) + 48 * *(v16 + 144);
      *(v54 - 160) = *a5;
      *(v54 - 112) = v53;
      *(v54 - 64) = v53;
      *(v54 - 16) = v53;
    }

    v55 = (a8 - v47) + v48;
    v56 = (a9 - v50) + v49;
    v57 = (a8 - v47) + v51;
    v58 = *(v16 + 136) + 48 * *(v16 + 144);
    *(v58 - 176) = v55;
    *(v58 - 172) = v56;
    v59 = (a9 - v50) + v52;
    *(v58 - 128) = v57;
    *(v58 - 124) = v56;
    *(v58 - 80) = v57;
    *(v58 - 76) = v59;
    *(v58 - 32) = v55;
    *(v58 - 28) = v59;
  }

  return result;
}

void CA::OGL::BlurState::narrow_blur(float32x2_t *this, int a2, const float *a3, const float *a4, int a5)
{
  v5 = a5;
  v63 = *MEMORY[0x1E69E9840];
  v10 = *this;
  if ((a5 & 1) != 0 || ((this[15].i8[0] & 1) == 0 ? (v11 = 32) : (v11 = 16), CA::OGL::PingPongState::attach_dest(this, 1, v11)))
  {
    if (a2 <= 26)
    {
      if (a2 <= 22)
      {
        if (a2 <= 18)
        {
          if (a2 <= 14)
          {
            if (a2 <= 10)
            {
              v12 = 33;
            }

            else
            {
              v12 = 34;
            }
          }

          else
          {
            v12 = 35;
          }
        }

        else
        {
          v12 = 36;
        }
      }

      else
      {
        v12 = 37;
      }
    }

    else
    {
      v12 = 38;
    }

    v13 = *(*(v10 + 16) + 16);
    v14 = this[4].i16[0];
    v15 = v14;
    v16 = &this[(v14 & 1) + 11];
    if (v15 < 0)
    {
      v16 = this + 1;
    }

    v17 = *v16;
    v18 = *(*v16 + 52);
    v54 = *(*v16 + 48);
    v62[0] = v54;
    v62[1] = v18;
    CA::OGL::Context::bind_surface(*this, v17, 0, 1u, 1, 0.0);
    if ((v5 & 1) == 0)
    {
      v19 = 32.0;
      if (this[15].i8[0])
      {
        v19 = 16.0;
      }

      CA::OGL::BlurState::process_edges(this, v19, 1.0, 1.0, v62);
    }

    v20 = 0;
    *(*(v10 + 16) + 16) = v12;
    v21 = *(*(v10 + 16) + 96);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v22 = -2;
    do
    {
      *(&v58 + v20 * 4) = vmul_f32(*&a3[v20], v21);
      v22 += 2;
      v20 += 2;
    }

    while (v22 < 0xC);
    if ((*(*v10 + 1072))(v10))
    {
      v23 = 1.0;
      if (this[13].i32[0] == 2)
      {
        if ((v5 & 1) == 0)
        {
          v23 = 1.0;
          if ((this[15].i8[0] & 2) == 0)
          {
            v23 = 0.0;
          }
        }
      }

      else
      {
        v23 = 0.0;
      }

      v24 = v59;
      *(v10 + 160) = v58;
      *(v10 + 176) = v24;
      *(v10 + 192) = v60;
      *(v10 + 208) = v61;
      v25 = *(a4 + 1);
      *(v10 + 240) = *a4;
      *(v10 + 256) = v25;
      *(v10 + 320) = v23;
      if (v5)
      {
        v26 = (this[15].u8[0] >> 2) & 1;
        v56[0] = 0;
        CA::OGL::PingPongState::render_pass_final_dest(*this, v54, v18, v26, v56);
      }

      else
      {
        *(v10 + 144) = 0;
        *(v10 + 112) = v10 + 1386;
        *(v10 + 120) = xmmword_183E20E50;
        v56[0] = 0;
        CA::OGL::PingPongState::render_pass(this, v54, v18, 0, v56, 1.0, 1.0, 0.0, 0.0);
        CA::OGL::Context::array_flush(v10);
      }
    }

    else
    {
      v50 = v13;
      v51 = v5;
      v27 = 0;
      *(*(v10 + 16) + 16) = 3;
      *(*(v10 + 16) + 496) = 12;
      *(v10 + 144) = 0;
      v53 = v10 + 1386;
      *(v10 + 112) = v10 + 1386;
      *(v10 + 120) = xmmword_183E20E50;
      memset(v56, 0, sizeof(v56));
      v57 = 0;
      v28 = 255;
      do
      {
        v29 = ((a4[v27] * 255.0) + 0.5);
        v28 -= 2 * v29;
        *(v56 + v27 * 4) = v29;
        ++v27;
      }

      while (v27 != 7);
      v30 = 0;
      v31 = 0;
      v32 = v28 & ~(v28 >> 31);
      LODWORD(v56[0]) += v32 >> 1;
      v52 = v32 & 1;
      v33 = a2 - 3;
      v34 = a3 + 1;
      v35 = 1;
      do
      {
        if (v30 <= v33)
        {
          v36 = 12;
          if (!*(v10 + 108))
          {
            v36 = 8;
          }

          if ((*(v10 + 144) + 8) > *(v10 + 152) || (v37 = *(v10 + 128)) != 0 && *(v10 + 120) + v36 > v37)
          {
            *(v10 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v10);
            *(v10 + 144) = 0;
            *(v10 + 112) = v53;
            *(v10 + 120) = xmmword_183E20E50;
          }

          v38 = *(v56 + v31);
          *&_S0 = v38 * 0.0039216;
          __asm { FCVT            H0, S0 }

          v44 = _S0;
          v55 = 0x1000100010001 * _S0;
          CA::OGL::PingPongState::render_pass(this, v54, v18, 1, &v55, 1.0, 1.0, -*(v34 - 1), -*v34);
          if (v35)
          {
            CA::OGL::Context::array_flush(v10);
            *(*(v10 + 16) + 497) |= 1u;
            *(v10 + 144) = 0;
            *(v10 + 112) = v53;
            *(v10 + 120) = xmmword_183E20E50;
            *&_S0 = (v38 + v52) * 0.0039216;
            __asm { FCVT            H0, S0 }

            v44 = _S0;
          }

          v55 = (v44 << 32) | (v44 << 48) | (v44 << 16) | v44;
          CA::OGL::PingPongState::render_pass(this, v54, v18, 1, &v55, 1.0, 1.0, *(v34 - 1), *v34);
          v35 = 0;
        }

        ++v31;
        v34 += 2;
        v30 += 2;
      }

      while (v31 != 6);
      CA::OGL::Context::array_flush(v10);
      *(*(v10 + 16) + 497) &= ~1u;
      v13 = v50;
      v5 = v51;
    }

    v46 = this[4].i16[0];
    v47 = v46;
    v48 = &this[(v46 & 1) + 11];
    if (v47 < 0)
    {
      v48 = &this[1];
    }

    CA::OGL::Context::unbind_surface(*this, *v48, 0);
    if (v5)
    {
      v49 = v13;
    }

    else
    {
      v49 = 0;
    }

    *(*(v10 + 16) + 16) = v49;
    if ((v5 & 1) == 0)
    {
      CA::OGL::Context::pop_surface(*this);
      ++this[4].i16[0];
    }
  }
}

uint64_t CA::OGL::anonymous namespace::set_destination_bounds(uint64_t result, int32x4_t *a2, uint64_t *a3, uint64_t a4, double a5, float a6, double a7, double a8, int32x4_t a9, double a10, int32x4_t a11)
{
  if (*&a5 != 1.0 && a4 != 0)
  {
    v13 = result;
    v15 = a2[3].i64[0];
    a9.i64[0] = a2[3].i64[1];
    v14 = a2 + 3;
    v16.i64[0] = v15;
    v16.i64[1] = SHIDWORD(v15);
    v17 = vcvtq_f64_s64(v16);
    v18 = a9.i32[1];
    v16.i64[0] = a9.i32[0];
    v16.i64[1] = a9.i32[1];
    v19 = v16;
    if (a9.i32[0] > a9.i32[1])
    {
      v18 = a9.i32[0];
    }

    a9.i32[0] = v18;
    a11.i32[0] = 1073741822;
    v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a9, a11), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v17);
    v21 = vdup_n_s32(v18 > 1073741822);
    v22 = vcvtq_f64_s64(v19);
    v23.i64[0] = v21.u32[0];
    v23.i64[1] = v21.u32[1];
    v24 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v23, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v22);
    v22.f64[0] = 1.79769313e308;
    v25 = vdupq_lane_s64(vcgtq_f64(v22, v24).i64[0], 0);
    v26.i64[1] = *&v24.f64[1];
    *v26.i64 = *&a5 * v24.f64[0];
    v27 = vbslq_s8(v25, v26, v24);
    v28.i64[1] = v20.i64[1];
    *v28.i64 = *&a5 * *v20.i64;
    v29 = vbslq_s8(v25, v28, v20);
    if (a6 != 1.0 && v27.f64[1] < 1.79769313e308)
    {
      v29.f64[1] = vmuld_lane_f64(a6, v29, 1);
      v27.f64[1] = v27.f64[1] * a6;
    }

    v30 = vceqzq_f64(v27);
    if ((vorrq_s8(vdupq_laneq_s64(v30, 1), v30).u64[0] & 0x8000000000000000) != 0 || (v31 = vceqq_f64(v27, v27), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v31), 1), v31).u64[0] & 0x8000000000000000) != 0))
    {
      v14->i64[0] = 0;
      v14->i64[1] = 0;
    }

    else
    {
      v32 = vcvtmq_s64_f64(vmaxnmq_f64(v29, vdupq_n_s64(0xC1BFFFFFFF000000)));
      *v14 = vuzp1q_s32(v32, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v29, v27), vdupq_n_s64(0x41C0000000000000uLL))), v32));
    }

    result = CA::Shape::scale_and_dilate(*(result + 8), *&a5, a6, 1u, 1u);
    *a3 = result;
    *(v13 + 8) = result;
  }

  return result;
}

void CA::OGL::PingPongState::render_pass_final_dest(void *a1, int a2, int a3, int a4, uint64_t *a5)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v9 = a1[84];
  if (v9)
  {
    v10 = a4 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v9 = (*(*a1 + 736))(a1, v9, 1);
    CA::OGL::Context::push_surface(a1, v9, 0, 64, 0);
  }

  v11 = 0;
  a1[18] = 0;
  v26 = 0;
  a1[14] = a1 + 1386;
  *(a1 + 15) = xmmword_183E20E50;
  v12 = *(a1[82] + 8);
  v28[1] = 0;
  v28[2] = 0;
  v27 = 0;
  v28[0] = v12;
  while (CA::ShapeIterator::iterate(v28, &v26))
  {
    if (v9)
    {
      if (v27 + v26 == v9[14] + v9[12])
      {
        LODWORD(v27) = v27 + 1;
      }

      if (HIDWORD(v27) + HIDWORD(v26) == v9[15] + v9[13])
      {
        ++HIDWORD(v27);
      }
    }

    v13 = 6;
    if (!*(a1 + 27))
    {
      v13 = 4;
    }

    if ((v11 + 4) > a1[19] || (v14 = a1[16]) != 0 && a1[15] + v13 > v14)
    {
      *(a1 + 692) |= 0x20u;
      CA::OGL::Context::array_flush(a1);
      a1[18] = 0;
      a1[14] = a1 + 1386;
      *(a1 + 15) = xmmword_183E20E50;
    }

    v15 = v26;
    v16 = HIDWORD(v26);
    v18 = v27;
    v17 = HIDWORD(v27);
    CA::OGL::Context::array_rect(a1, v26, SHIDWORD(v26), (v27 + v26), (HIDWORD(v27) + HIDWORD(v26)));
    v19 = *a5;
    v20 = a1[17] + 48 * a1[18];
    *(v20 - 160) = *a5;
    *(v20 - 112) = v19;
    *(v20 - 64) = v19;
    v21 = (v15 - a2);
    v22 = (v15 - a2 + v18);
    v23 = (v16 - a3 + v17);
    *(v20 - 16) = v19;
    v11 = a1[18];
    v24 = a1[17] + 48 * v11;
    *(v24 - 176) = v21;
    *(v24 - 172) = (v16 - a3);
    *(v24 - 128) = v22;
    *(v24 - 124) = (v16 - a3);
    *(v24 - 80) = v22;
    *(v24 - 76) = v23;
    *(v24 - 32) = v21;
    *(v24 - 28) = v23;
  }

  CA::OGL::Context::array_flush(a1);
  if (v9 && a4)
  {
    CA::OGL::Context::pop_surface(a1);
    (*(*a1 + 744))(a1, a1[84], v9);

    CA::OGL::Context::release_surface(a1, v9);
  }
}

double CA::OGL::Context::array_check(CA::OGL::Context *this, int a2)
{
  if (*(this + 27))
  {
    v3 = 6 * a2;
  }

  else
  {
    v3 = 4 * a2;
  }

  if (*(this + 18) + (4 * a2) > *(this + 19) || (v4 = *(this + 16)) != 0 && *(this + 15) + v3 > v4)
  {
    *(this + 692) |= 0x20u;
    CA::OGL::Context::array_flush(this);
    *(this + 18) = 0;
    *(this + 14) = this + 1386;
    result = 0.0;
    *(this + 120) = xmmword_183E20E50;
  }

  return result;
}

void *CA::OGL::add_color_matrix(uint64_t a1, uint64_t a2, int a3, float32x4_t *a4, int *a5, int a6)
{
  v9 = a1;
  v35 = *MEMORY[0x1E69E9840];
  if ((vmaxvq_u8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(*a4, xmmword_183E20E10), vceqq_f32(a4[1], xmmword_183E20E30)), vuzp1q_s16(vceqzq_f32(a4[2]), vceqq_f32(a4[3], xmmword_183E20E10))))) & 1) == 0 && (vaddvq_s32(vbicq_s8(xmmword_183E21260, vceqq_f32(a4[4], xmmword_183E20E30))) & 0xF) == 0)
  {
    return v9;
  }

  if (!a6 && (a4[1].f32[0] != 0.0 || a4[2].f32[1] != 0.0 || a4[3].f32[2] != 0.0) || a4[4].f32[3] != 0.0)
  {
    v10 = *a5;
    if (*a5 <= 4)
    {
      v10 = 4;
    }

    *a5 = v10;
  }

  if (!a1)
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    goto LABEL_13;
  }

  v14 = *(a1 + 16);
  if (!v14 || (v15 = *(v14 + 48)) == 0)
  {
LABEL_24:
    v17 = *(v9 + 8);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = v17;
        v17 = *(v17 + 8);
        *(v19 + 8) = v18;
        v18 = v19;
      }

      while (v17);
      *(v9 + 8) = v19;
    }

LABEL_28:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v20 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0x10600405D376E66uLL);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v21 = malloc_type_zone_malloc(malloc_zone, 0x50uLL, 0x10000404247E4FDuLL);
    v20[6] = v21;
    *v21 = *a4;
    v22 = a4[4];
    v24 = a4[1];
    v23 = a4[2];
    v21[3] = a4[3];
    v21[4] = v22;
    v21[1] = v24;
    v21[2] = v23;
    v20[5] = *(a2 + 16);
    *(v20 + 56) = a6;
    *v20 = v9;
    return v20;
  }

  if ((*(*v15 + 80))(v15))
  {
    v16 = a6 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
LABEL_13:
      if (*(v9 + 56) == a6)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        CA::concat(&v30, a4, v11, a4);
        v12 = v34;
        *(v11 + 3) = v33;
        *(v11 + 4) = v12;
        v13 = v32;
        *(v11 + 1) = v31;
        *(v11 + 2) = v13;
        *v11 = v30;
        if (!*(v9 + 40))
        {
          *(v9 + 40) = *(a2 + 16);
        }

        return v9;
      }

      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v26 = malloc_type_zone_malloc(malloc_zone, 0x50uLL, 0x10000404247E4FDuLL);
  *(v9 + 48) = v26;
  *v26 = *a4;
  v27 = a4[4];
  v29 = a4[1];
  v28 = a4[2];
  v26[3] = a4[3];
  v26[4] = v27;
  v26[1] = v29;
  v26[2] = v28;
  *(v9 + 56) = a6;
  return v9;
}

uint64_t CA::OGL::PingPongState::clear_edges(CA::OGL::PingPongState *this, float a2, float a3, float a4, float a5, float a6)
{
  *(*(this + 2) + 16) = 0;
  *(this + 18) = 0;
  v12 = this + 1386;
  *(this + 14) = this + 1386;
  *(this + 120) = xmmword_183E20E50;
  if (*(this + 19) <= 7uLL)
  {
    *(this + 692) |= 0x20u;
    CA::OGL::Context::array_flush(this);
    *(this + 18) = 0;
    *(this + 14) = v12;
    *(this + 120) = xmmword_183E20E50;
  }

  v13 = a3 - a2;
  CA::OGL::Context::array_rect(this, a3 - a2, a4, a3, a6);
  v14 = *(this + 17) + 48 * *(this + 18);
  *(v14 - 160) = 0;
  *(v14 - 112) = 0;
  *(v14 - 64) = 0;
  *(v14 - 16) = 0;
  v15 = a5 + a2;
  CA::OGL::Context::array_rect(this, a5, a4, a5 + a2, a6);
  v16 = *(this + 17) + 48 * *(this + 18);
  *(v16 - 160) = 0;
  *(v16 - 112) = 0;
  *(v16 - 64) = 0;
  *(v16 - 16) = 0;
  v17 = 12;
  if (!*(this + 27))
  {
    v17 = 8;
  }

  if ((*(this + 18) + 8) > *(this + 19) || (v18 = *(this + 16)) != 0 && *(this + 15) + v17 > v18)
  {
    *(this + 692) |= 0x20u;
    CA::OGL::Context::array_flush(this);
    *(this + 18) = 0;
    *(this + 14) = v12;
    *(this + 120) = xmmword_183E20E50;
  }

  v19 = a4 - a2;
  CA::OGL::Context::array_rect(this, a3, a4 - a2, a5, a4);
  v20 = *(this + 17) + 48 * *(this + 18);
  *(v20 - 160) = 0;
  *(v20 - 112) = 0;
  *(v20 - 64) = 0;
  *(v20 - 16) = 0;
  v21 = a6 + a2;
  CA::OGL::Context::array_rect(this, a3, a6, a5, v21);
  v22 = *(this + 17) + 48 * *(this + 18);
  *(v22 - 160) = 0;
  *(v22 - 112) = 0;
  *(v22 - 64) = 0;
  *(v22 - 16) = 0;
  v23 = 12;
  if (!*(this + 27))
  {
    v23 = 8;
  }

  if ((*(this + 18) + 8) > *(this + 19) || (v24 = *(this + 16)) != 0 && *(this + 15) + v23 > v24)
  {
    *(this + 692) |= 0x20u;
    CA::OGL::Context::array_flush(this);
    *(this + 18) = 0;
    *(this + 14) = v12;
    *(this + 120) = xmmword_183E20E50;
  }

  CA::OGL::Context::array_rect(this, v13, v19, a3, a4);
  v25 = *(this + 17) + 48 * *(this + 18);
  *(v25 - 160) = 0;
  *(v25 - 112) = 0;
  *(v25 - 64) = 0;
  *(v25 - 16) = 0;
  CA::OGL::Context::array_rect(this, a5, v19, v15, a4);
  v26 = *(this + 17) + 48 * *(this + 18);
  *(v26 - 160) = 0;
  *(v26 - 112) = 0;
  *(v26 - 64) = 0;
  *(v26 - 16) = 0;
  v27 = 12;
  if (!*(this + 27))
  {
    v27 = 8;
  }

  if ((*(this + 18) + 8) > *(this + 19) || (v28 = *(this + 16)) != 0 && *(this + 15) + v27 > v28)
  {
    *(this + 692) |= 0x20u;
    CA::OGL::Context::array_flush(this);
    *(this + 18) = 0;
    *(this + 14) = v12;
    *(this + 120) = xmmword_183E20E50;
  }

  CA::OGL::Context::array_rect(this, v13, a6, a3, v21);
  v29 = *(this + 17) + 48 * *(this + 18);
  *(v29 - 160) = 0;
  *(v29 - 112) = 0;
  *(v29 - 64) = 0;
  *(v29 - 16) = 0;
  CA::OGL::Context::array_rect(this, a5, a6, v15, v21);
  v30 = *(this + 17) + 48 * *(this + 18);
  *(v30 - 160) = 0;
  *(v30 - 112) = 0;
  *(v30 - 64) = 0;
  *(v30 - 16) = 0;

  return CA::OGL::Context::array_flush(this);
}

float CA::OGL::anonymous namespace::narrowBlurParameters(CA::OGL::_anonymous_namespace_ *this, float a2, unsigned int a3, uint64_t a4, float *a5, float *a6)
{
  v9 = this;
  v54 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  *v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v10 = *&v52 + *(&v52 + 1);
  v11 = *&v51 + *(&v51 + 1);
  v12 = *&v50 + *(&v50 + 1);
  v13 = *&v51 / (*&v51 + *(&v51 + 1)) + 4.0;
  v14 = *&v50 / (*&v50 + *(&v50 + 1)) + 6.0;
  v16 = *&v49 + *(&v49 + 1) < 0.002 || v9 < 19;
  v19 = *&v48 + *(&v48 + 1) < 0.002 || v9 < 23;
  v22 = *&v47 + *(&v47 + 1) < 0.002 || v9 < 27;
  if (v22)
  {
    v24 = 0.0;
  }

  else
  {
    v23 = *&v47 / (*&v47 + *(&v47 + 1)) + 12.0;
    v24 = v23;
  }

  if (v22)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = *&v47 + *(&v47 + 1);
  }

  if (a3)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0.0;
  }

  if (a3)
  {
    v24 = 0.0;
  }

  if (v19)
  {
    v27 = 0.0;
  }

  else
  {
    v20 = *&v48 / (*&v48 + *(&v48 + 1)) + 10.0;
    v27 = v20;
  }

  if (v19)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = *&v48 + *(&v48 + 1);
  }

  if (v16)
  {
    v29 = 0.0;
  }

  else
  {
    v17 = *&v49 / (*&v49 + *(&v49 + 1)) + 8.0;
    v29 = v17;
  }

  if (v16)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *&v49 + *(&v49 + 1);
  }

  if (v12 < 0.002)
  {
    v14 = 0.0;
    v12 = 0.0;
  }

  if (v11 < 0.002)
  {
    v13 = 0.0;
    v11 = 0.0;
  }

  if (v10 >= 0.002)
  {
    v31 = *&v52 / (*&v52 + *(&v52 + 1)) + 2.0;
  }

  else
  {
    v31 = 0.0;
  }

  *&v32 = v53[0] / (v53[0] + v53[1] * 0.5);
  *&v33 = v31;
  *&v34 = v13;
  *&v35 = v14;
  v36 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(a3)), 0x1FuLL));
  v37.i64[0] = v32;
  v37.i64[1] = v33;
  v38.i64[0] = v34;
  v38.i64[1] = v35;
  *a4 = vbslq_s8(v36, v37, vtrn1q_s32(0, v37));
  *(a4 + 16) = vbslq_s8(v36, v38, vtrn1q_s32(0, v38));
  v39.i64[0] = LODWORD(v29);
  v39.i64[1] = LODWORD(v27);
  *(a4 + 32) = vbslq_s8(v36, v39, vtrn1q_s32(0, v39));
  *(a4 + 48) = v26;
  *(a4 + 52) = v24;
  if (v10 < 0.002)
  {
    v10 = 0.0;
  }

  v40 = 0.5 - (v10 + v11 + v28 + v12 + v30 + v25);
  v41 = v10;
  *a5 = v40;
  a5[1] = v41;
  v42 = v11;
  v43 = v12;
  a5[2] = v42;
  a5[3] = v43;
  v44 = v30;
  v45 = v28;
  a5[4] = v44;
  a5[5] = v45;
  result = v25;
  a5[6] = result;
  a5[7] = 0.0;
  return result;
}

void CA::OGL::anonymous namespace::normalized_half_normal_distribution<27>(uint64_t a1, float a2)
{
  *(a1 + 96) = 0;
  v3 = 0uLL;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v4 = a2;
  v5 = 0x100000000;
  v6 = xmmword_183E20FF0;
  v7 = (a1 + 8);
  v8 = 14;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v16 = vdupq_n_s64(2uLL);
  v17 = vdupq_n_s64(0xDuLL);
  v15 = -0.5 / v4;
  do
  {
    v22 = v3;
    v20 = vmovn_s64(vcgtq_u64(v17, v6)).u8[0];
    v21 = v6;
    v9 = vadd_s32(v5, 0xC0000000CLL);
    v10 = vmul_s32(v9, v9);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    __x = vmulq_n_f64(vcvtq_f64_u64(v11), v15);
    v19 = exp(__x.f64[1]);
    v12.f64[0] = exp(__x.f64[0]);
    v12.f64[1] = v19;
    if (v20)
    {
      *(v7 - 1) = v12.f64[0];
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xDuLL), *&v21)).i32[1])
    {
      *v7 = v19;
    }

    v3 = vaddq_f64(v12, v22);
    v6 = vaddq_s64(v21, v16);
    v5 = vadd_s32(v5, 0x200000002);
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v13 = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  v14 = 1.0 / (vaddvq_f64(vbslq_s8(vcgtq_u64(vdupq_n_s64(0xDuLL), v21), v3, v22)) * 2.0 + 1.0);
  do
  {
    *(a1 + v13) = vmulq_n_f64(*(a1 + v13), v14);
    v13 += 16;
  }

  while (v13 != 112);
}

uint64_t CA::OGL::color_matrix_function(CA::OGL *this, CA::OGL::Context *a2, const CA::ColorMatrix *a3, int a4, int a5)
{
  v7 = a3;
  v66 = *MEMORY[0x1E69E9840];
  result = CA::ColorMatrix::is_diagonal(a2);
  v60 = a5;
  if (!result || ((v11 = *a2, *a2 >= 0.0) ? (v12 = v11 <= 1.0) : (v12 = 0), !v12 || ((v13 = *(a2 + 6), v13 >= 0.0) ? (v14 = v13 <= 1.0) : (v14 = 0), !v14 || ((v15 = *(a2 + 12), v15 >= 0.0) ? (v16 = v15 <= 1.0) : (v16 = 0), !v16 || (_S3 = *(a2 + 18), _S3 < 0.0) || _S3 > 1.0))))
  {
    v28 = &v65 + 4;
    v29 = &v65;
    v30 = &v64 + 12;
    v31 = &v64 + 8;
    v32 = &v64 + 4;
    v33 = &v64;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    __src = 0u;
    if (!CA::ColorMatrix::is_alpha_identity(a2) && (!CA::ColorMatrix::is_alpha_scale(a2) || v7) && (!a4 || !CA::ColorMatrix::is_opaque_identity(a2)))
    {
      goto LABEL_44;
    }

    if (*(a2 + 4) == 0.0 && *(a2 + 9) == 0.0 && *(a2 + 14) == 0.0 && *(a2 + 19) == 0.0 && *(a2 + 18) == 1.0 && (!v7 ? (v34 = 18) : (v34 = 23), *(*(this + 2) + 16) = v34, (*(*this + 1072))(this)))
    {
      v35 = 3;
      v36 = 48;
      v37 = 28;
      v38 = 8;
      LODWORD(__src) = *a2;
      v39 = 44;
      v40 = 24;
      v41 = 4;
      v42 = 40;
      v43 = 20;
      v33 = (&__src + 4);
      v32 = &__src + 8;
      v31 = &__src + 12;
      v30 = &v62;
      v29 = (&v62 + 4);
      v28 = &v62 + 8;
      v44 = &v62 + 12;
      v45 = &v63;
      v46 = 3;
    }

    else
    {
      if (v7)
      {
        v47 = 24;
      }

      else if (CA::ColorMatrix::is_alpha_scale(a2))
      {
        _D0.i32[0] = *(a2 + 18);
        __asm { FCVT            H0, S0 }

        *(*(this + 2) + 8) = vdup_lane_s16(_D0, 0);
        v47 = 20;
      }

      else
      {
        v47 = 19;
      }

      *(*(this + 2) + 16) = v47;
      if (!(*(*this + 1072))(this))
      {
LABEL_44:
        if (v60)
        {
          v51 = 21;
        }

        else
        {
          v51 = 22;
        }

        if (v7)
        {
          v51 = 25;
        }

        *(*(this + 2) + 16) = v51;
        v52 = *(a2 + 1);
        v53 = *(a2 + 5);
        v54 = *(a2 + 6);
        LODWORD(__src) = *a2;
        DWORD1(__src) = v53;
        v55 = *(a2 + 11);
        v56 = *(a2 + 15);
        v57 = *(a2 + 16);
        DWORD2(__src) = *(a2 + 10);
        HIDWORD(__src) = v56;
        *&v62 = __PAIR64__(v54, v52);
        *(&v62 + 1) = __PAIR64__(v57, v55);
        v58 = *(a2 + 7);
        v46 = 5;
        LODWORD(v63) = *(a2 + 2);
        DWORD1(v63) = v58;
        v35 = 4;
        v36 = 76;
        v37 = 56;
        v38 = 36;
        v59 = *(a2 + 17);
        v39 = 16;
        v40 = 72;
        v41 = 52;
        v42 = 32;
        v43 = 12;
        DWORD2(v63) = *(a2 + 12);
        HIDWORD(v63) = v59;
        v44 = &v65 + 8;
        v45 = &v65 + 12;
        goto LABEL_50;
      }

      v49 = *(a2 + 5);
      v50 = *(a2 + 1);
      LODWORD(__src) = *a2;
      DWORD1(__src) = v49;
      v46 = 4;
      v35 = 3;
      v36 = 56;
      v37 = 36;
      v38 = 16;
      v39 = 48;
      v40 = 28;
      v41 = 8;
      v42 = 44;
      v43 = 24;
      v33 = &v62;
      v32 = &v62 + 4;
      v31 = &v62 + 8;
      v30 = &v62 + 12;
      DWORD2(__src) = *(a2 + 10);
      HIDWORD(__src) = v50;
      v29 = &v63;
      v28 = &v63 + 4;
      v44 = &v63 + 8;
      v45 = &v63 + 12;
    }

LABEL_50:
    *v33 = *(a2 + v43);
    *v32 = *(a2 + v42);
    *v31 = *(a2 + v41);
    *v30 = *(a2 + v40);
    *v29 = *(a2 + v39);
    *v28 = *(a2 + v38);
    *v44 = *(a2 + v37);
    *v45 = *(a2 + v36);
    return memcpy(this + 160, &__src, 4 * v46 * v35);
  }

  _S0 = _S3 * v11;
  _S1 = v13 * _S3;
  _S2 = v15 * _S3;
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
    FCVT            H2, S2
    FCVT            H3, S3
  }

  v26 = *(this + 2);
  v26[4] = LOWORD(_S0);
  v26[5] = LOWORD(_S1);
  v26[6] = LOWORD(_S2);
  v26[7] = _H3;
  if (v7)
  {
    v27 = 4;
  }

  else
  {
    v27 = 3;
  }

  *(*(this + 2) + 16) = v27;
  return result;
}

BOOL CA::Transform::is_isotropic(CA::Transform *this, double a2)
{
  if ((*(this + 144) & 0x10) == 0)
  {
    return 1;
  }

  if (*(this + 15) != 1.0)
  {
    return 0;
  }

  v3 = vaddvq_f64(vmulq_f64(*this, *this));
  v4 = vmulq_f64(*(this + 2), *(this + 2));
  v5 = vaddq_f64(vdupq_laneq_s64(v4, 1), v4).f64[0];
  v6 = v3 != 1.0;
  if (v5 != 1.0)
  {
    v6 = 1;
  }

  v7 = sqrt(v3);
  v8 = sqrt(v5);
  if (v6)
  {
    v5 = v8;
  }

  else
  {
    v7 = v3;
  }

  v9 = fabs(v7);
  v10 = fabs(v5);
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v9 >= v10)
  {
    v9 = v10;
  }

  return v11 / v9 <= 2.0;
}

double CA::OGL::Context::bind_square(CA::OGL::Context *this, unsigned int a2, BOOL a3, BOOL a4, double *a5)
{
  v5 = *(this + 2);
  *(v5 + 16 * a2 + 96) = xmmword_183E21110;
  *(v5 + a2 + 17) = 9;
  __asm { FMOV            V0.2S, #-1.0 }

  result = -_D0;
  *a5 = result;
  return result;
}

double CA::OGL::anonymous namespace::rect_nine_part_source_xy(double *a1, CA::Transform *this, double *a3, double *a4, double *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = 0.0;
  v18[0] = 0.0;
  CA::Transform::get_scale_recip(this, v18, &v17);
  result = v18[0];
  v10 = a1[2] * 0.5;
  if (result + result < v10)
  {
    v10 = v18[0] + v18[0];
  }

  v11 = v17;
  v12 = a1[3] * 0.5;
  if (v11 + v11 < v12)
  {
    v12 = v17 + v17;
  }

  v13 = *a1;
  *a3 = *a1;
  v14 = a1[2] + v13;
  a3[1] = v13 + v10;
  a3[2] = v14 - v10;
  a3[3] = v14;
  v15 = a1[1];
  *a4 = v15;
  v16 = a1[3] + v15;
  a4[1] = v15 + v12;
  a4[2] = v16 - v12;
  a4[3] = v16;
  if (a5)
  {
    result = a1[3] * a1[2] / (v11 * result);
    *a5 = result;
  }

  return result;
}

uint64_t CA::Transform::get_scale_recip(uint64_t this, double *a2, double *a3)
{
  if ((*(this + 144) & 0x10) != 0)
  {
    v4 = vaddvq_f64(vmulq_f64(*this, *this));
    v5 = vaddvq_f64(vmulq_f64(*(this + 32), *(this + 32)));
    v6 = *(this + 120);
    v7 = 1.0;
    if (v6 != 1.0)
    {
      v8 = 1.0 / (v6 * v6);
      v4 = v8 * v4;
      v5 = v8 * v5;
    }

    v9 = v4 == 1.0 && v5 == 1.0;
    v3 = 1.0;
    if (!v9)
    {
      v7 = 1.0 / sqrt(v4);
      v3 = 1.0 / sqrt(v5);
    }

    if (a2)
    {
      *a2 = v7;
    }

    if (a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = *(this + 136);
    }

    if (a3)
    {
      v3 = *(this + 136);
LABEL_16:
      *a3 = v3;
    }
  }

  return this;
}

float32x4_t *CA::OGL::aa_adjust_vertices(float32x4_t *result, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = result + 1;
    v5 = a2 + 1;
    do
    {
      v6 = v4[-1];
      v7 = v5[-1];
      v8 = vsubq_f32(v6, v7);
      v9 = vmulq_f32(v8, v8);
      v10 = vaddv_f32(*&vpaddq_f32(v9, v9));
      if (v10 != 0.0)
      {
        v11 = 1.0;
        if (v10 != 1.0)
        {
          v11 = 1.0 / sqrtf(v10);
        }

        v7.i32[0] = HIDWORD(*&v5[-1]);
        if (v6.f32[3] > v7.f32[3])
        {
          v7.i32[0] = HIDWORD(*&v4[-1]);
        }

        v12 = v11 * v7.f32[0];
        v13 = vmlaq_n_f32(v6, v8, v12);
        v14 = vmlaq_n_f32(*v4, vsubq_f32(*v4, *v5), v12);
        v4[-1] = v13;
        *v4 = v14;
      }

      v4 = (v4 + a3);
      v5 = (v5 + a3);
      --a4;
    }

    while (a4);
  }

  return result;
}

_DWORD *CA::ColorProgram::Cache::lookup_(CA::ColorProgram::Cache *this, CGColorSpace *a2, unsigned int a3, CGColorRenderingIntent a4)
{
  v4 = MEMORY[0x1EEE9AC00](this);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v129 = *MEMORY[0x1E69E9840];
  v10 = *(v4 + 8);
  if (CGColorSpaceGetModel(v7) == kCGColorSpaceModelCMYK)
  {
    v8 = CAGetReconciledColorSpace(v8);
  }

  theDict = 0;
  v95 = 0;
  v96 = 0;
  IsHLGBased = CGColorSpaceIsHLGBased(v8);
  IsPQBased = CGColorSpaceIsPQBased(v8);
  v13 = CGColorSpaceUsesExtendedRange(v8);
  v97 = (v6 & 0x30) != 0;
  BYTE1(v97) = (v6 & 0x30) == 16;
  v14 = (v6 & 0x200) != 0 && (IsHLGBased || IsPQBased || v13);
  BYTE2(v97) = v14;
  LODWORD(v95) = *(v9 + 100);
  X::CFRef<CGColorSpace *>::operator=(&v96, *(v9 + 40));
  v15 = (v6 & 0x100) != 0 && ((v97 & 0x100000000) != 0 || BYTE5(v97) == 1) && CGColorSpaceContainsFlexGTCInfo() && v96 == 0;
  BYTE3(v97) = v15;
  v16 = ((v97 & 0x100000000) != 0 || BYTE5(v97) == 1) && *(v9 + 88) == 2;
  if (BYTE2(v97) == 1)
  {
    Extended = CGColorSpaceCreateExtended(v10);
    v10 = Extended;
  }

  else
  {
    Extended = 0;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v8);
  if (NumberOfComponents == 4)
  {
    if (*(v9 + 48) == 5)
    {
      goto LABEL_29;
    }

    v19 = 5;
    goto LABEL_28;
  }

  if (NumberOfComponents == 3)
  {
    if (*(v9 + 48) == 32)
    {
      goto LABEL_29;
    }

    v19 = 32;
    goto LABEL_28;
  }

  if (NumberOfComponents == 1 && *(v9 + 48) != 256)
  {
    v19 = 256;
LABEL_28:
    *(v9 + 48) = v19;
  }

LABEL_29:
  if (v97 & 0x10000)
  {
    v20 = 203.0;
  }

  else
  {
    if (BYTE4(v97))
    {
      v20 = 100.0;
    }

    else
    {
      v20 = 203.0;
    }

    if ((v6 & 0x40) != 0 && BYTE4(v97) && *(v9 + 64) > 0.0)
    {
      v20 = *(v9 + 64);
    }
  }

  v21 = v20;
  if ((v6 & 0x20) == 0)
  {
    v22 = BYTE5(v97);
    if ((v97 & 0x10000000000) != 0 || (v97 & 0x100000000) != 0)
    {
      if (BYTE2(v97))
      {
LABEL_35:
        v21 = *(v9 + 56) * v20;
        goto LABEL_36;
      }
    }

    else if (BYTE6(v97) & BYTE2(v97))
    {
      goto LABEL_35;
    }

    if ((v6 & 0x40) != 0 || BYTE5(v97))
    {
      v21 = *(v9 + 56) * v20;
    }

    else
    {
      v21 = v20;
      if (BYTE4(v97) == 1)
      {
        v28 = *(v9 + 56);
        if (v28 >= 4.92610837)
        {
          v28 = 4.9261;
        }

        *(v9 + 56) = v28;
        v21 = (v28 + -1.0) * 229.23463 + 100.0;
      }
    }

    if (v22 && v21 > 999.9 && !(v97 & 0x1000000))
    {
      v21 = 999.9;
      *(v9 + 56) = 999.9 / v20;
    }
  }

LABEL_36:
  if (*(v9 + 60) == 0.0)
  {
    v23 = 4.9261;
  }

  else
  {
    v23 = *(v9 + 60);
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9758 == 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = *&dword_1ED4E9758 / v20;
  }

  v25 = BYTE12(xmmword_1ED4E982C);
  v26 = &CADisplayTimerGetTypeID::type;
  if ((BYTE12(xmmword_1ED4E982C) & 1) == 0)
  {
    if (BYTE1(v97) != 1)
    {
      goto LABEL_214;
    }

    if (CA::ColorProgram::Cache::force_single_cache(void)::once[0] != -1)
    {
      dispatch_once(CA::ColorProgram::Cache::force_single_cache(void)::once, &__block_literal_global_48);
    }

    if ((CA::ColorProgram::Cache::force_single_cache(void)::force_single_cache & 1) == 0)
    {
      if (CA::ColorProgram::Cache::find_program(v9, (v9 + 32), v8, v10, v6, &v95, v21, v24))
      {
        v27 = *(v9 + 32);
        goto LABEL_183;
      }
    }

    else
    {
LABEL_214:
      if (CA::ColorProgram::Cache::find_program(v9, (v9 + 24), v8, v10, v6, &v95, v21, v24))
      {
        v27 = *(v9 + 24);
        goto LABEL_183;
      }
    }
  }

  v91 = v16 | v6 & 0x400;
  v92 = v25;
  if (v91)
  {
    v29 = (v6 >> 3) & 1 | 2;
  }

  else
  {
    v29 = (v6 >> 3) & 1;
  }

  v30 = v97;
  if (CA::ColorProgram::Cache::lookup_(CGColorSpace *,unsigned int,CGColorRenderingIntent)::options_once != -1)
  {
    dispatch_once(&CA::ColorProgram::Cache::lookup_(CGColorSpace *,unsigned int,CGColorRenderingIntent)::options_once, &__block_literal_global_52);
  }

  v31 = 4;
  if (!v30)
  {
    v31 = v29;
  }

  X::CFRef<CGColorSpace *>::operator=(&theDict, CA::ColorProgram::Cache::lookup_(CGColorSpace *,unsigned int,CGColorRenderingIntent)::converter_options[v31]);
  v32 = 1.0;
  if ((v6 & 0x20) == 0)
  {
    v32 = *(v9 + 56);
  }

  if (v32 > 0.0)
  {
    v33 = 1.0;
  }

  else
  {
    v33 = v24;
  }

  if (v32 >= 1.0)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = *(v9 + 72);
  v36 = *(v9 + 76);
  v37 = *(v9 + 68);
  if (v97 || BYTE4(v97) == 1)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    if (!v97)
    {
LABEL_137:
      X::CFRef<CGColorSpace *>::operator=(&theDict, MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_139;
    }

    *&valuePtr = v21;
    v39 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionarySetValue(MutableCopy, @"kCGTargetDisplayWhite", v39);
    v90 = Extended;
    if (v96)
    {
      value = v39;
      v40 = 0.0;
      if ((v24 + -0.001) >= 0.0)
      {
        v40 = v24 + -0.001;
      }

      if ((v24 + -0.001) >= v34)
      {
        v41 = v34;
      }

      else
      {
        v41 = v40;
      }

      Dictionary = CGContentToneMappingInfoCreateDictionary();
      CFDictionarySetValue(MutableCopy, @"kCGContentToneMappingInfo", Dictionary);
      CFDictionarySetValue(MutableCopy, @"kCGColorConversionInfoForceCreate", *MEMORY[0x1E695E4D0]);
      *&valuePtr = v24;
      v43 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      *&valuePtr = v41;
      v44 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionarySetValue(MutableCopy, @"kCGSourceHeadroom", v43);
      CFDictionarySetValue(MutableCopy, @"kCGTargetHeadroom", v44);
      if (v44)
      {
        CFRelease(v44);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      v39 = value;
      if (Dictionary)
      {
        CFRelease(Dictionary);
      }
    }

    else
    {
      if (BYTE2(v97) == 1)
      {
        *&valuePtr = v34;
        v45 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        LODWORD(valuePtr) = 0x40000000;
        valuea = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        *&valuePtr = v24 * 203.0;
        v46 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        Mutable = CFDictionaryCreateMutable(0, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E695F450], v45);
        cf = v46;
        CFDictionarySetValue(Mutable, *MEMORY[0x1E695F458], v46);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E695F468], valuea);
        if (v35 > 0.0 || v36 < 1.0)
        {
          v85 = v45;
          *&valuePtr = v36;
          v48 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
          *&valuePtr = v35;
          v49 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
          LODWORD(valuePtr) = v37;
          v50 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(Mutable, *MEMORY[0x1E695F1F8], v48);
          CFDictionarySetValue(Mutable, @"kCGContentAverageLightLevelNits", v50);
          CFDictionarySetValue(Mutable, @"kCGConstrainedDynamicRange", v49);
          if (v50)
          {
            CFRelease(v50);
          }

          if (v49)
          {
            CFRelease(v49);
          }

          v45 = v85;
          if (v48)
          {
            CFRelease(v48);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (valuea)
        {
          CFRelease(valuea);
        }

        if (v45)
        {
          CFRelease(v45);
        }

        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695F078], Mutable);
        v41 = v34;
        if (!Mutable)
        {
          goto LABEL_122;
        }

        CFRelease(Mutable);
      }

      else
      {
        CFDictionarySetValue(MutableCopy, @"kCGApplyToneMappingForBT2100", *MEMORY[0x1E695E4D0]);
      }

      v41 = v34;
    }

LABEL_122:
    if (BYTE3(v97) == 1)
    {
      CFDictionaryRemoveAllValues(MutableCopy);
      v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *&valuePtr = v41;
      v52 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionarySetValue(v51, *MEMORY[0x1E695F240], v52);
      if (v35 > 0.0 || v36 < 1.0)
      {
        valueb = v39;
        *&valuePtr = v36;
        v53 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        *&valuePtr = v35;
        v54 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        LODWORD(valuePtr) = v37;
        v55 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(v51, @"kCGContentEDRStrength", v53);
        CFDictionarySetValue(v51, @"kCGConstrainedDynamicRange", v54);
        CFDictionarySetValue(v51, @"kCGContentAverageLightLevelNits", v55);
        if (v55)
        {
          CFRelease(v55);
        }

        if (v54)
        {
          CFRelease(v54);
        }

        v39 = valueb;
        if (v53)
        {
          CFRelease(v53);
        }
      }

      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695F070], v51);
      if (v52)
      {
        CFRelease(v52);
      }

      if (v51)
      {
        CFRelease(v51);
      }
    }

    Extended = v90;
    v26 = &CADisplayTimerGetTypeID::type;
    if (v39)
    {
      CFRelease(v39);
    }

    goto LABEL_137;
  }

LABEL_139:
  v56 = CGColorConversionInfoCreateFromList(theDict, v8, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, v10, 1, 0, 0);
  v57 = v56;
  if (*(v26 + 2105) == 1)
  {
    v73 = CFCopyDescription(theDict);
    bzero(&valuePtr, 0x1000uLL);
    if (v73)
    {
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v74 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        CString = CA_CFStringGetCString(v73, &valuePtr, 4096);
        v114[0] = 134218242;
        *&v114[1] = v57;
        LOWORD(v114[3]) = 2080;
        *(&v114[3] + 2) = CString;
        _os_log_impl(&dword_183AA6000, v74, OS_LOG_TYPE_DEFAULT, "CCColorConversionInfo %p Options: %s\n", v114, 0x16u);
      }

      CFRelease(v73);
    }
  }

  if (v57)
  {
    Model = CGColorSpaceGetModel(v10);
    v93 = 0;
    v59 = *(v9 + 92);
    if (v59 == 14)
    {
      v60 = 6;
    }

    else
    {
      v60 = 5;
    }

    if (v59 == 14)
    {
      v61 = 2;
    }

    else
    {
      v61 = 1;
    }

    if (Model)
    {
      v62 = v60;
    }

    else
    {
      v62 = v61;
    }

    if (*(v9 + 80))
    {
      v63 = 2;
    }

    else
    {
      v63 = v91 == 0 && ~v97;
    }

    v27 = CA::ColorProgram::Program::color_program(v57, *(v9 + 48), v63, *(v9 + 96) == 24, v62, v6, &v93, v34, *(v9 + 72), *(v9 + 76), *(v9 + 68), v21);
    if (v93 == 1)
    {
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v64 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_ERROR))
      {
        LOWORD(valuePtr) = 0;
        _os_log_error_impl(&dword_183AA6000, v64, OS_LOG_TYPE_ERROR, "Failed to iterate CGColorConverter ", &valuePtr, 2u);
      }

      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      valuePtr = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      memset(v114, 0, sizeof(v114));
      CA_CGColorSpaceGetCString(v8, &valuePtr);
      CA_CGColorSpaceGetCString(v10, v114);
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v65 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_ERROR))
      {
        v72 = CGColorSpaceUsesExtendedRange(v10);
        *buf = 136315650;
        p_valuePtr = &valuePtr;
        v100 = 2080;
        v101 = v114;
        v102 = 1024;
        v103 = v72;
        _os_log_error_impl(&dword_183AA6000, v65, OS_LOG_TYPE_ERROR, "'%s' --> '%s' (extended: %d)\n", buf, 0x1Cu);
      }
    }

    CFRelease(v57);
    if (!v27)
    {
      goto LABEL_184;
    }
  }

  else
  {
    v27 = CA::ColorProgram::Program::null_program(v56);
    if (!v27)
    {
      goto LABEL_184;
    }
  }

  v66 = *(v9 + 52) + 1;
  *(v9 + 52) = v66;
  v27[2] = v66;
  *(v27 + 2) = CGColorSpaceRetain(v8);
  *(v27 + 3) = CGColorSpaceRetain(v10);
  v27[24] = v6;
  v27[8] = 0;
  v27[25] = *(v9 + 48);
  *(v27 + 28) = v24;
  *(v27 + 29) = v21;
  v27[26] = *(v9 + 100);
  v67 = *(v9 + 40);
  if (v67)
  {
    *(v27 + 11) = CFDictionaryCreateCopy(0, v67);
  }

  if (BYTE1(v97) != 1)
  {
    goto LABEL_171;
  }

  if (CA::ColorProgram::Cache::force_single_cache(void)::once[0] != -1)
  {
    dispatch_once(CA::ColorProgram::Cache::force_single_cache(void)::once, &__block_literal_global_48);
  }

  if ((CA::ColorProgram::Cache::force_single_cache(void)::force_single_cache & 1) == 0)
  {
    *v27 = *(v9 + 32);
    if (v92)
    {
      goto LABEL_179;
    }

    *(v9 + 32) = v27;
    if (*(v26 + 2105) != 1)
    {
      goto LABEL_179;
    }

    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v68 = x_log_get_color(void)::log;
    if (!os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_179;
    }

    LOWORD(valuePtr) = 0;
    v69 = "Added program to dynamic cache";
  }

  else
  {
LABEL_171:
    *v27 = *(v9 + 24);
    if (v92)
    {
      goto LABEL_179;
    }

    *(v9 + 24) = v27;
    if (*(v26 + 2105) != 1)
    {
      goto LABEL_179;
    }

    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v68 = x_log_get_color(void)::log;
    if (!os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_179;
    }

    LOWORD(valuePtr) = 0;
    v69 = "Added program to static cache";
  }

  _os_log_impl(&dword_183AA6000, v68, OS_LOG_TYPE_DEFAULT, v69, &valuePtr, 2u);
LABEL_179:
  v70 = v27[9];
  if (v27[25] == 5 || (v6 & 1) != 0 && v70)
  {
    v27[9] = v70 | 0x80000000;
  }

LABEL_183:
  if (*(v26 + 2105) != 1)
  {
    goto LABEL_184;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  valuePtr = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  memset(v114, 0, sizeof(v114));
  CA_CGColorSpaceGetCString(v8, &valuePtr);
  CA_CGColorSpaceGetCString(v10, v114);
  if (CGColorSpaceUsesITUR_2100TF(v8))
  {
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v76 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v77 = CGColorSpaceUsesExtendedRange(v10);
      v78 = v27[24];
      v79 = *(v27 + 27);
      v80 = *(v27 + 29);
      *buf = 136316930;
      p_valuePtr = &valuePtr;
      v100 = 2080;
      v101 = v114;
      v102 = 1024;
      v103 = v77;
      v104 = 1024;
      v105 = v97;
      v106 = 1024;
      v107 = (v78 >> 5) & 1;
      v108 = 2048;
      v109 = v79;
      v110 = 2048;
      v111 = v80;
      v112 = 1024;
      v113 = (v78 >> 6) & 1;
      v81 = "'%s' --> '%s' (extended: %d), BT2100 Tonemapping: %d, to SDR: %d, headroom: %g, target nits: %g, reference preset: %d\n";
      v82 = v76;
      v83 = 66;
LABEL_206:
      _os_log_impl(&dword_183AA6000, v82, OS_LOG_TYPE_DEFAULT, v81, buf, v83);
    }
  }

  else
  {
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v84 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      p_valuePtr = &valuePtr;
      v100 = 2080;
      v101 = v114;
      v81 = "'%s' --> '%s'\n";
      v82 = v84;
      v83 = 22;
      goto LABEL_206;
    }
  }

LABEL_184:
  if (Extended)
  {
    CFRelease(Extended);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v27;
}

uint64_t CA::ColorProgram::Cache::find_program(uint64_t a1, float **a2, CGColorSpace *a3, CGColorSpace *a4, int a5, unsigned __int8 *a6, float a7, float a8)
{
  v133 = *MEMORY[0x1E69E9840];
  v15 = (a6[19] ^ 1) & (a6[21] | a6[20]);
  v16 = *a2;
  v17 = 0;
  if (*a2)
  {
    v18 = a2;
    while (1)
    {
      v19 = v16;
      if (a6[17] == 1)
      {
        v20 = *(a1 + 56);
        v21 = v16[27];
        if (v20 != v21)
        {
          v28 = v20 == 1.0 || v21 == 1.0;
          if (v28 || vabds_f32(v20, v21) > (fminf(v20, v21) * 0.01))
          {
            break;
          }
        }
      }

      if (v15)
      {
        v22 = v16[29];
        if (v22 > 0.0 && v22 != a7)
        {
          break;
        }
      }

      v24 = *(a1 + 72);
      if (v24 != v16[30] || *(a1 + 76) != v16[31] || v24 > 0.0 && *(a1 + 68) != v16[32])
      {
        break;
      }

      v25 = *(a1 + 40);
      v26 = *(v19 + 88);
      if ((v25 == 0) == (v26 != 0))
      {
        break;
      }

      if (v25)
      {
        if (*(a1 + 100) != *(v19 + 104))
        {
          break;
        }

        v27 = CFEqual(v25, v26) == 0;
      }

      else
      {
        v27 = 0;
      }

      v32 = a6[16];
      v29 = v32 | v27;
      if (v32 == 1 && !v27)
      {
        v29 = *(v19 + 112) != a8;
      }

LABEL_25:
      if (!*(v19 + 36))
      {
        if (*(a1 + 84))
        {
          v30 = 1;
        }

        else
        {
          v30 = *(a1 + 85);
        }

        v31 = (*(a1 + 88) == 2) & v30;
        if (*(a1 + 40))
        {
          v31 = 1;
        }

        v29 &= v31;
      }

      if (!*(v19 + 32) && *(v19 + 96) == a5 && *(v19 + 100) == *(a1 + 48) && (*(v19 + 16) == a3 || CGColorSpaceEqualToColorSpaceIgnoringRange()))
      {
        if (*(v19 + 24) == a4)
        {
          if ((v29 & 1) == 0)
          {
LABEL_55:
            *v18 = *v19;
            v37 = a2;
            *v19 = *a2;
            if (BYTE13(xmmword_1ED4E982C) == 1)
            {
              v131 = 0u;
              v132 = 0u;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              v117 = 0u;
              v118 = 0u;
              memset(v74, 0, sizeof(v74));
              CA::ColorProgram::Program::show(v19, v74);
              CA_CGColorSpaceGetCString(a3, &v125);
              CA_CGColorSpaceGetCString(a4, &v117);
              if (x_log_get_color(void)::once != -1)
              {
                dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
              }

              v51 = x_log_get_color(void)::log;
              if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                v70 = *(a1 + 48);
                if ((a1 + 24) == a2)
                {
                  v52 = "static";
                }

                else
                {
                  v52 = "dynamic";
                }

                v53 = *(a1 + 56);
                v54 = a8;
                v55 = a7;
                v56 = *(a1 + 72);
                v57 = *(a1 + 76);
                v58 = a6[16];
                v59 = a6[17];
                v60 = v15 & 1;
                v61 = *(v19 + 32);
                v62 = *(v19 + 96);
                v72 = *(v19 + 100);
                v67 = *(v19 + 108);
                v69 = *(v19 + 112);
                v63 = *(v19 + 116);
                v64 = *(v19 + 120);
                v65 = *(v19 + 124);
                v68 = *(v19 + 104);
                v71 = *(v19 + 88);
                v66 = x_stream_get(v74);
                *buf = 134224642;
                v76 = v19;
                v77 = 2080;
                *v78 = v52;
                *&v78[8] = 1024;
                *v79 = v17;
                *&v79[4] = 2080;
                v80 = &v125;
                *v81 = 2080;
                *&v81[2] = &v117;
                v82 = 0x400000000000400;
                *v83 = a5;
                *&v83[4] = 1024;
                *&v83[6] = v70;
                v84 = 2048;
                v85 = v53;
                v86 = 2048;
                v87 = v54;
                v88 = 2048;
                v89 = v55;
                v90 = 2048;
                v91 = v56;
                v92 = 2048;
                v93 = v57;
                v94 = 1024;
                *v95 = v58;
                *&v95[4] = 1024;
                *&v95[6] = v59;
                *v96 = 1024;
                *&v96[2] = v60;
                LOWORD(v97) = 1024;
                *(&v97 + 2) = v61;
                HIWORD(v97) = 1024;
                v98 = v62;
                v99 = 1024;
                v100 = v72;
                v101 = 2048;
                v102 = v67;
                v103 = 2048;
                v104 = v69;
                v105 = 2048;
                v106 = v63;
                v107 = 2048;
                v108 = v64;
                v109 = 2048;
                v110 = v65;
                v111 = 1024;
                v112 = v68;
                v113 = 2048;
                v114 = v71;
                v115 = 2080;
                v116 = v66;
                _os_log_impl(&dword_183AA6000, v51, OS_LOG_TYPE_DEFAULT, "Found matching color program %p in %s cache at %d for color matching from '%s' to '%s'. Search parameters: ri=%d flags=0x%x cube_size=%u tonemap_headroom=%f content_headroom=%f target_nits=%f cdr_strength=%f edr_strength=%f tm=%d dynamic_tm=%d need_target_nits=%d. Color program: ri=%d flags=0x%x cube_size=%u tonemap_headroom=%f content_headroom=%f target_nits=%f cdr_strength=%f edr_strength=%f explicit_tm_method=%d explicit_tm_options=%p.\n%s", buf, 0xE4u);
              }

              if (v74[0])
              {
                free(v74[0]);
              }

              v37 = a2;
            }

            *v37 = v19;
            return 1;
          }
        }

        else if (!(v29 & 1 | ((CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) == 0)))
        {
          goto LABEL_55;
        }
      }

      v16 = *v19;
      if (v17 == 1000)
      {
        if (v16)
        {
          v33 = 0;
          *v19 = 0;
          do
          {
            v34 = *v16;
            CA::ColorProgram::Program::~Program(v16);
            free(v35);
            ++v33;
            v16 = v34;
          }

          while (v34);
          if (BYTE13(xmmword_1ED4E982C) == 1)
          {
            if (x_log_get_color(void)::once != -1)
            {
              dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
            }

            v50 = x_log_get_color(void)::log;
            if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v76) = v33;
              _os_log_impl(&dword_183AA6000, v50, OS_LOG_TYPE_DEFAULT, "Purged %d entries from color program cache", buf, 8u);
            }
          }
        }

        v17 = 1001;
        goto LABEL_53;
      }

      ++v17;
      v18 = v19;
      if (!v16)
      {
        goto LABEL_53;
      }
    }

    v29 = 1;
    goto LABEL_25;
  }

LABEL_53:
  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    CA_CGColorSpaceGetCString(a3, &v125);
    CA_CGColorSpaceGetCString(a4, &v117);
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v38 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 48);
      v40 = "static";
      if ((a1 + 24) != a2)
      {
        v40 = "dynamic";
      }

      v41 = *(a1 + 72);
      v42 = *(a1 + 76);
      if (a6[17])
      {
        v43 = "y";
      }

      else
      {
        v43 = "n";
      }

      v44 = *(a1 + 100);
      v45 = *(a1 + 40);
      v46 = *(a1 + 56);
      *buf = 136318978;
      v47 = v41;
      v48 = v42;
      v76 = v40;
      if (v15)
      {
        v49 = "y";
      }

      else
      {
        v49 = "n";
      }

      v77 = 1024;
      *v78 = v17;
      *&v78[4] = 1024;
      *&v78[6] = 0;
      *v79 = 1024;
      *&v79[2] = a5;
      LOWORD(v80) = 1024;
      *(&v80 + 2) = v39;
      HIWORD(v80) = 2080;
      *v81 = &v125;
      *&v81[8] = 2080;
      v82 = &v117;
      *v83 = 2080;
      *&v83[2] = v43;
      v84 = 2048;
      v85 = v46;
      v86 = 2048;
      v87 = a8;
      v88 = 2048;
      v89 = v47;
      v90 = 2048;
      v91 = v48;
      v92 = 2080;
      v93 = *&v49;
      v94 = 2048;
      *v95 = a7;
      *&v95[8] = 1024;
      *v96 = v44;
      *&v96[4] = 2048;
      v97 = v45;
      _os_log_impl(&dword_183AA6000, v38, OS_LOG_TYPE_DEFAULT, "No matching program in %s cache after %d; ri %d; f 0x%x; cu %d; src %s; dst %s; dt %s; targ_hr %f; source_hr %f; cdr_strength: %f, edr_strength: %f, nn %s; tn %f; explicit_tm_method %d; explicit_tm_options %p", buf, 0x8Eu);
    }
  }

  return 0;
}

uint64_t CA::Render::Updater::LayerShapes::union_visible_shape(uint64_t this, CA::Shape **a2, const CA::Shape *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = (this + 64);
  if (*(this + 64))
  {
    CA::shape_union((this + 64), a2, a3);
    this = *v3;
    if ((*v3 & 1) == 0 && *(this + 4) >= 257)
    {
      v5[0] = 0;
      v5[1] = 0;
      CA::Shape::get_bounds(this, v5);
      CA::Shape::unref(*v3);
      this = CA::Shape::new_shape(v5, v4);
      *v3 = this;
    }
  }

  return this;
}

void CA::Layer::set_mask(CA::Layer ***this, CALayer *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CA::Transaction::ensure_compat(this);
  if ((*(this + 1) & 0x60000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", this[2]}];
  }

  if (this[4] != a2)
  {
    v6 = v5[29];
    v5[29] = v6 + 1;
    if (v6)
    {
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      if (!a2)
      {
LABEL_17:
        v18.isa = 0;
        CA::Layer::begin_change(this, v5, @"mask", &v18, v4);
        v13 = CA::Layer::ancestor_context_id(this, v5);
        v14 = this[4];
        if (v14)
        {
          CA::Layer::update_removed_sublayer(v14[2], v5, v13);
        }

        if (a2)
        {
          CA::Layer::update_added_sublayer(a2->_attr.layer, v5, this, v13);
          layer = a2->_attr.layer;
          v16 = v5[28];
          if ((v16 & 0x80000000) != 0 || (v17 = *(layer + v16 + 68)) == 0)
          {
            v17 = *CA::Layer::thread_flags_(layer, v5);
          }

          CA::Layer::update_for_changed_sublayers(this, v5, v17);
        }

        this[4] = &a2->super.isa;
        CA::Layer::end_change(this, v5, 503, @"mask", v18.isa);
        CA::Transaction::unlock(v5);
        if (v14)
        {

          CA::Transaction::release_object(v5, v14);
        }

        return;
      }
    }

    v7 = CA::Layer::retain_parent(a2->_attr.layer, v5);
    if (v7)
    {
      v10 = v7;
      CA::Layer::remove_sublayer(v7, v5, a2, v8, v9);
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

          goto LABEL_17;
        }
      }
    }

    else
    {
      CFRetain(a2);
      CA::Layer::remove_from_context(a2->_attr.layer);
    }

    goto LABEL_17;
  }
}

uint64_t CABackingStoreSetVolatile(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 492);
  if ((((v4 & 0x100) == 0) ^ a2))
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 & 0xFEFF | v5;
  *(a1 + 492) = v6;
  if (a2)
  {
    *(a1 + 232) = 0;
    *(a1 + 304) = 0;
    *(a1 + 376) = 0;
    *(a1 + 472) = 0;
    v7 = v6 & 0xFF00 | 6;
LABEL_8:
    *(a1 + 492) = v7;
    goto LABEL_9;
  }

  v9 = *(a1 + 400);
  if ((*(v9 + 65) & 1) == 0)
  {
    v10 = *(v9 + 16);
    if (!v10)
    {
      v11 = *(v9 + 24);
      if (!v11)
      {
        a2 = 0;
        goto LABEL_9;
      }

      if (CA::CG::AccelDrawable::set_volatile(v11, 0))
      {
        goto LABEL_2;
      }

      goto LABEL_16;
    }

    if ((CA::Render::Shmem::set_volatile(v10, 0, 0) & 1) == 0)
    {
LABEL_16:
      CABackingStoreReleaseImages(a1);
      CABackingStoreDeleteBuffer(v9);
      v7 = *(a1 + 492) & 0xF9FF | 0x400;
      goto LABEL_8;
    }
  }

LABEL_2:
  a2 = 1;
LABEL_9:
  pthread_mutex_unlock((a1 + 16));
  return a2;
}

uint64_t CA::Render::BackdropLayer::get_property(CA::Render::BackdropLayer *this, uint64_t a2, const unsigned int *a3, unint64_t a4, double *a5, double **a6)
{
  if (a4 >= 4)
  {
    if (a6)
    {
      *a6 = a5;
    }

    if (!a2)
    {
      return a2;
    }

    if (a2 != 1)
    {
      if (*a3 == 61)
      {
        return CA::Render::get_rect_property((this + 96), (a2 - 1), a3 + 1, a5, a5);
      }

      return 0;
    }

    a2 = 0;
    v6 = *a3;
    if (*a3 > 492)
    {
      if (v6 <= 620)
      {
        if (v6 == 493)
        {
          v14 = *(this + 6);
LABEL_35:
          *a5 = v14;
          return 1;
        }

        if (v6 != 502)
        {
          return a2;
        }

        v7 = *(this + 9);
      }

      else
      {
        switch(v6)
        {
          case 621:
            v7 = *(this + 8);
            break;
          case 729:
            v7 = *(this + 22);
            break;
          case 766:
            v7 = *(this + 10);
            break;
          default:
            return a2;
        }
      }

      v14 = v7;
      goto LABEL_35;
    }

    if (v6 > 233)
    {
      if (v6 == 234)
      {
        v9 = (*(this + 3) & 0x100) == 0;
LABEL_28:
        v14 = 0.0;
        if (!v9)
        {
          v14 = 1.0;
        }

        goto LABEL_35;
      }

      if (v6 != 492)
      {
        return a2;
      }

      v10 = *(this + 7);
      *a5 = v10;
      v11 = *(this + 8);
      a5[1] = v11;
      a5[2] = *(this + 9) + v10;
      v12 = *(this + 10);
    }

    else
    {
      if (v6 != 61)
      {
        if (v6 != 90)
        {
          return a2;
        }

        v9 = (*(this + 3) & 0x1000) == 0;
        goto LABEL_28;
      }

      v13 = *(this + 12);
      *a5 = v13;
      v11 = *(this + 13);
      a5[1] = v11;
      a5[2] = *(this + 14) + v13;
      v12 = *(this + 15);
    }

    a5[3] = v12 + v11;
    return 4;
  }

  return 0;
}

double *CA::Render::BackdropLayer::set_property(double *this, uint64_t a2, const unsigned int *a3, const unsigned int *a4, unint64_t a5, double *a6, const double *a7)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return this;
  }

  v7 = this;
  if (a2 != 1)
  {
    if (*a3 != 61)
    {
      return this;
    }

    v10 = *(this + 14);
    v21 = *(this + 6);
    v22 = v10;
    this = CA::Render::set_rect_property(&v21, (a2 - 1), a3 + 1, a4, a5, a6, a7);
    v11 = v21;
    v12 = v22;
    goto LABEL_12;
  }

  v8 = *a3;
  if (*a3 > 492)
  {
    if (v8 <= 620)
    {
      if (v8 == 493)
      {
        if (a5)
        {
          v19 = *a6;
          this[6] = v19;
        }
      }

      else if (v8 == 502 && a5)
      {
        v16 = *a6;
        *(this + 9) = v16;
      }
    }

    else
    {
      switch(v8)
      {
        case 621:
          if (a5)
          {
            v18 = *a6;
            *(this + 8) = v18;
          }

          break;
        case 729:
          if (a5)
          {
            v20 = *a6;
            *(this + 22) = v20;
          }

          break;
        case 766:
          if (a5)
          {
            v9 = *a6;
            *(this + 10) = v9;
          }

          break;
      }
    }

    return this;
  }

  if (v8 <= 233)
  {
    if (v8 != 61)
    {
      if (v8 != 90 || !a5)
      {
        return this;
      }

      v13 = *(this + 3);
      if (*a6 == 0.0)
      {
        v14 = v13 & 0xFFFFEFFF;
      }

      else
      {
        v14 = v13 | 0x1000;
      }

LABEL_41:
      *(this + 3) = v14;
      return this;
    }

    if (a5 < 4)
    {
      return this;
    }

    v11 = *a6;
    v12 = vsubq_f64(*(a6 + 2), *a6);
LABEL_12:
    *(v7 + 6) = v11;
    *(v7 + 7) = v12;
    return this;
  }

  if (v8 == 234)
  {
    if (!a5)
    {
      return this;
    }

    v17 = *(this + 3);
    if (*a6 <= 0.5)
    {
      v14 = v17 & 0xFFFFFEFF;
    }

    else
    {
      v14 = v17 | 0x100;
    }

    goto LABEL_41;
  }

  if (v8 == 492 && a5 >= 4)
  {
    v15 = vsubq_f64(*(a6 + 2), *a6);
    *(this + 7) = *a6;
    *(this + 9) = v15;
  }

  return this;
}

uint64_t CA::Render::SDFLayer::get_property(CA::Render::SDFLayer *this, uint64_t a2, const unsigned int *a3, unint64_t a4, float64x2_t *a5, double **a6, double a7)
{
  if (a4 < 4)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    result = 0;
    v9 = *a3;
    if (*a3 <= 513)
    {
      if (v9 == 218)
      {
        v10 = *(this + 37);
      }

      else
      {
        if (v9 != 281)
        {
          return result;
        }

        v10 = *(this + 36);
      }

      goto LABEL_29;
    }

    if (v9 != 514)
    {
      if (v9 != 658)
      {
        return result;
      }

      v10 = *(this + 35);
      goto LABEL_29;
    }

    LOBYTE(a7) = *(this + 152);
LABEL_33:
    v14 = *&a7;
    goto LABEL_30;
  }

  if (*a3 != 217)
  {
    return 0;
  }

  result = 0;
  v11 = *(this + 136);
  if (v11 <= 4)
  {
    if (*(this + 136) <= 2u)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          return result;
        }

        if (a3[1] == 101)
        {
          goto LABEL_16;
        }

        return 0;
      }

      v17 = a3[1];
      if (v17 != 512)
      {
        if (v17 != 520)
        {
          return 0;
        }

        goto LABEL_69;
      }

LABEL_125:
      v10 = *(this + 7);
      goto LABEL_29;
    }

    if (v11 == 3)
    {
      result = *(this + 3);
      if (result)
      {
        v21 = a3[1];
        v19 = a3 + 1;
        v20 = v21;
        if (v21 == 121 || v20 == 490 || v20 == 446)
        {
          return CA::Render::Gradient::get_values(result, a2 - 1, v19, a4, a5, a6);
        }

        return 0;
      }

      return result;
    }

    if (v11 != 4)
    {
      return result;
    }

    result = 0;
    v15 = a3[1];
    if (v15 > 587)
    {
      if (v15 > 638)
      {
        if (v15 == 639)
        {
          v10 = *(this + 18);
          goto LABEL_29;
        }

        if (v15 != 641)
        {
          if (v15 == 642)
          {
            v10 = *(this + 19);
            goto LABEL_29;
          }

          return result;
        }

LABEL_115:
        v10 = *(this + 20);
        goto LABEL_29;
      }

      if (v15 == 588)
      {
        v10 = *(this + 17);
        goto LABEL_29;
      }

      if (v15 != 637)
      {
        return result;
      }

      goto LABEL_116;
    }

    if (v15 <= 118)
    {
      if (v15 == 35)
      {
        v10 = *(this + 16);
        goto LABEL_29;
      }

      if (v15 != 108)
      {
        return result;
      }

LABEL_81:
      a5->f64[0] = *(this + 11);
      a5->f64[1] = *(this + 12);
      a5[1].f64[0] = *(this + 13);
      a5[1].f64[1] = *(this + 14);
      v12 = *(this + 15);
      goto LABEL_128;
    }

    if (v15 != 119)
    {
      if (v15 != 287)
      {
        return result;
      }

      goto LABEL_99;
    }

LABEL_16:
    a5->f64[0] = *(this + 6);
    a5->f64[1] = *(this + 7);
    a5[1].f64[0] = *(this + 8);
    a5[1].f64[1] = *(this + 9);
    v12 = *(this + 10);
LABEL_128:
    a5[2].f64[0] = v12;
    return 5;
  }

  if (*(this + 136) <= 6u)
  {
    if (v11 == 5)
    {
      result = 0;
      v18 = a3[1];
      if (v18 <= 533)
      {
        if (v18 != 101)
        {
          if (v18 == 448)
          {
            v14 = 0.0;
            if ((*(this + 56) & 2) != 0)
            {
              v14 = 1.0;
            }

            goto LABEL_30;
          }

          return result;
        }
      }

      else
      {
        if (v18 != 534)
        {
          if (v18 == 584)
          {
            v14 = (*(this + 56) & 1);
            goto LABEL_30;
          }

          if (v18 != 588)
          {
            return result;
          }

LABEL_69:
          v10 = *(this + 6);
          goto LABEL_29;
        }

        if (a2 == 2)
        {
          *a5 = vcvtq_f64_f32(*(this + 28));
          return 2;
        }

        v22 = a3[2];
        if (v22 == 760)
        {
          goto LABEL_126;
        }

        if (v22 == 756)
        {
          goto LABEL_125;
        }
      }

      a5->f64[0] = *(this + 9);
      a5->f64[1] = *(this + 10);
      a5[1].f64[0] = *(this + 11);
      a5[1].f64[1] = *(this + 12);
      v12 = *(this + 13);
      goto LABEL_128;
    }

    if (v11 != 6)
    {
      return result;
    }

    result = 0;
    v13 = a3[1];
    if (v13 <= 175)
    {
      if (v13 == 32)
      {
        v10 = *(this + 10);
        goto LABEL_29;
      }

      if (v13 != 35)
      {
        if (v13 != 101)
        {
          return result;
        }

        goto LABEL_81;
      }

LABEL_126:
      v10 = *(this + 8);
      goto LABEL_29;
    }

    if (v13 == 176)
    {
      goto LABEL_125;
    }

    if (v13 == 677)
    {
      goto LABEL_72;
    }

LABEL_68:
    if (v13 != 295)
    {
      return result;
    }

    goto LABEL_69;
  }

  if (v11 == 7)
  {
    result = 0;
    v13 = a3[1];
    if (v13 <= 294)
    {
      if (v13 != 35)
      {
        if (v13 == 176)
        {
          goto LABEL_125;
        }

        return result;
      }

      goto LABEL_126;
    }

    if (v13 == 504)
    {
LABEL_72:
      v10 = *(this + 9);
      goto LABEL_29;
    }

    goto LABEL_68;
  }

  if (v11 != 8)
  {
    return result;
  }

  result = 0;
  v16 = a3[1];
  if (v16 > 284)
  {
    if (v16 > 458)
    {
      if (v16 <= 461)
      {
        if (v16 == 459)
        {
          v10 = *(this + 12);
          goto LABEL_29;
        }

        if (v16 == 460)
        {
          v10 = *(this + 11);
          goto LABEL_29;
        }
      }

      else
      {
        switch(v16)
        {
          case 462:
            v10 = *(this + 26);
            goto LABEL_29;
          case 463:
            v10 = *(this + 14);
            goto LABEL_29;
          case 464:
            v10 = *(this + 13);
            goto LABEL_29;
        }
      }

      return result;
    }

    if (v16 <= 455)
    {
      if (v16 == 285)
      {
        LOBYTE(a7) = *(this + 132);
        goto LABEL_33;
      }

      if (v16 == 455)
      {
        v10 = *(this + 27);
        goto LABEL_29;
      }

      return result;
    }

    if (v16 == 456)
    {
      v10 = *(this + 25);
      goto LABEL_29;
    }

    if (v16 != 457)
    {
      v10 = *(this + 24);
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (v16 > 247)
  {
    if (v16 <= 251)
    {
      if (v16 != 248)
      {
        if (v16 != 249)
        {
          return result;
        }

        goto LABEL_115;
      }

LABEL_116:
      v10 = *(this + 21);
      goto LABEL_29;
    }

    if (v16 == 252)
    {
      v10 = *(this + 30);
      goto LABEL_29;
    }

    if (v16 == 253)
    {
      v10 = *(this + 23);
      goto LABEL_29;
    }

    if (v16 != 254)
    {
      return result;
    }

LABEL_99:
    v10 = *(this + 22);
    goto LABEL_29;
  }

  if (v16 > 244)
  {
    if (v16 == 245)
    {
      v10 = *(this + 29);
    }

    else
    {
      if (v16 == 246)
      {
        a5->f64[0] = *(this + 15);
        a5->f64[1] = *(this + 16);
        a5[1].f64[0] = *(this + 17);
        a5[1].f64[1] = *(this + 18);
        v12 = *(this + 19);
        goto LABEL_128;
      }

      v10 = *(this + 28);
    }

LABEL_29:
    v14 = v10;
LABEL_30:
    a5->f64[0] = v14;
    return 1;
  }

  if (v16 == 176)
  {
    v10 = *(this + 32);
    goto LABEL_29;
  }

  if (v16 == 244)
  {
    v10 = *(this + 31);
    goto LABEL_29;
  }

  return result;
}

char *CA::Render::SDFLayer::copy@<X0>(CA::Render::SDFLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA8uLL, 0xDEEC3011uLL);
  if (result)
  {
    *(result + 2) = 1;
    *(result + 3) = 48;
    ++dword_1ED4EAAF8;
    *result = &unk_1EF1FE9C0;
    *(result + 2) = *(this + 2);
    v5 = *(this + 24);
    v6 = *(this + 40);
    *(result + 56) = *(this + 56);
    *(result + 40) = v6;
    *(result + 24) = v5;
    v7 = *(this + 72);
    v8 = *(this + 88);
    v9 = *(this + 104);
    *(result + 120) = *(this + 120);
    *(result + 104) = v9;
    *(result + 88) = v8;
    *(result + 72) = v7;
    v10 = *(this + 136);
    result[136] = v10;
    *(result + 140) = *(this + 140);
    *(result + 37) = *(this + 37);
    result[152] = *(this + 152);
    v11 = *(this + 20);
    if (v11)
    {
      v12 = (v11 + 8);
      if (!atomic_fetch_add((v11 + 8), 1u))
      {
        v11 = 0;
        atomic_fetch_add(v12, 0xFFFFFFFF);
      }

      v10 = *(this + 136);
    }

    *(result + 20) = v11;
    if (v10 == 3)
    {
      v13 = *(this + 3);
      if (v13)
      {
        v14 = (v13 + 8);
        if (!atomic_fetch_add((v13 + 8), 1u))
        {
          v13 = 0;
          atomic_fetch_add(v14, 0xFFFFFFFF);
        }
      }

      *(result + 3) = v13;
      v15 = *(this + 4);
      if (v15)
      {
        v16 = (v15 + 8);
        if (!atomic_fetch_add((v15 + 8), 1u))
        {
          v15 = 0;
          atomic_fetch_add(v16, 0xFFFFFFFF);
        }
      }

      *(result + 4) = v15;
    }
  }

  *a2 = result;
  return result;
}

double CA::Render::SDFLayer::set_property(CA::Render::SDFLayer *this, uint64_t a2, const unsigned int *a3, BOOL a4, unint64_t a5, const double *a6, __n128 a7, uint64_t a8, CGColorSpace *a9)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v10 = *a3;
      if (*a3 > 533)
      {
        if (v10 == 534)
        {
          if (a5)
          {
            a7.n128_f64[0] = *a6;
            a7.n128_f32[0] = *a6;
            *(this + 37) = a7.n128_u32[0];
          }
        }

        else if (v10 == 658 && a5)
        {
          a7.n128_f64[0] = *a6;
          a7.n128_f32[0] = *a6;
          *(this + 35) = a7.n128_u32[0];
        }
      }

      else if (v10 == 281)
      {
        if (a5)
        {
          a7.n128_f64[0] = *a6;
          a7.n128_f32[0] = *a6;
          *(this + 36) = a7.n128_u32[0];
        }
      }

      else if (v10 == 514 && a5)
      {
        a7.n128_f64[0] = *a6;
        *(this + 152) = *a6 != 0.0;
      }
    }

    return a7.n128_f64[0];
  }

  if (*a3 != 217)
  {
    return a7.n128_f64[0];
  }

  v11 = *(this + 136);
  if (v11 > 4)
  {
    if (*(this + 136) > 6u)
    {
      if (v11 != 7)
      {
        if (v11 != 8)
        {
          return a7.n128_f64[0];
        }

        v14 = a3[1];
        if (v14 > 284)
        {
          if (v14 > 458)
          {
            if (v14 <= 461)
            {
              if (v14 == 459)
              {
                if (a5)
                {
                  a7.n128_f64[0] = *a6;
                  a7.n128_f32[0] = *a6;
                  *(this + 12) = a7.n128_u32[0];
                }
              }

              else if (v14 == 460 && a5)
              {
                a7.n128_f64[0] = *a6;
                a7.n128_f32[0] = *a6;
                *(this + 11) = a7.n128_u32[0];
              }
            }

            else if (v14 == 462)
            {
              if (a5)
              {
                a7.n128_f64[0] = *a6;
                a7.n128_f32[0] = *a6;
                *(this + 26) = a7.n128_u32[0];
              }
            }

            else if (v14 == 463)
            {
              if (a5)
              {
                a7.n128_f64[0] = *a6;
                a7.n128_f32[0] = *a6;
                *(this + 14) = a7.n128_u32[0];
              }
            }

            else if (v14 == 464 && a5)
            {
              a7.n128_f64[0] = *a6;
              a7.n128_f32[0] = *a6;
              *(this + 13) = a7.n128_u32[0];
            }
          }

          else if (v14 <= 455)
          {
            if (v14 == 285)
            {
              if (a5)
              {
                a7.n128_f64[0] = *a6;
                *(this + 132) = *a6 > 0.5;
              }
            }

            else if (v14 == 455 && a5)
            {
              a7.n128_f64[0] = *a6;
              a7.n128_f32[0] = *a6;
              *(this + 27) = a7.n128_u32[0];
            }
          }

          else if (v14 == 456)
          {
            if (a5)
            {
              a7.n128_f64[0] = *a6;
              a7.n128_f32[0] = *a6;
              *(this + 25) = a7.n128_u32[0];
            }
          }

          else
          {
            if (v14 == 457)
            {
              goto LABEL_14;
            }

            if (a5)
            {
              a7.n128_f64[0] = *a6;
              a7.n128_f32[0] = *a6;
              *(this + 24) = a7.n128_u32[0];
            }
          }

          return a7.n128_f64[0];
        }

        if (v14 <= 247)
        {
          if (v14 <= 244)
          {
            if (v14 == 176)
            {
              if (a5)
              {
                a7.n128_f64[0] = *a6;
                a7.n128_f32[0] = *a6;
                *(this + 32) = a7.n128_u32[0];
              }
            }

            else if (v14 == 244 && a5)
            {
              a7.n128_f64[0] = *a6;
              a7.n128_f32[0] = *a6;
              *(this + 31) = a7.n128_u32[0];
            }
          }

          else if (v14 == 245)
          {
            if (a5)
            {
              a7.n128_f64[0] = *a6;
              a7.n128_f32[0] = *a6;
              *(this + 29) = a7.n128_u32[0];
            }
          }

          else if (v14 == 246)
          {
            CA::Render::color_from_vec(&v23, a5, a6);
            a7.n128_u64[0] = v23;
            *(this + 60) = v23;
            *(this + 19) = v24;
          }

          else if (a5)
          {
            a7.n128_f64[0] = *a6;
            a7.n128_f32[0] = *a6;
            *(this + 28) = a7.n128_u32[0];
          }

          return a7.n128_f64[0];
        }

        if (v14 <= 251)
        {
          if (v14 != 248)
          {
            if (v14 != 249)
            {
              return a7.n128_f64[0];
            }

LABEL_132:
            if (a5)
            {
              a7.n128_f64[0] = *a6;
              a7.n128_f32[0] = *a6;
              *(this + 20) = a7.n128_u32[0];
            }

            return a7.n128_f64[0];
          }

          goto LABEL_134;
        }

        if (v14 == 252)
        {
          if (a5)
          {
            a7.n128_f64[0] = *a6;
            a7.n128_f32[0] = *a6;
            *(this + 30) = a7.n128_u32[0];
          }

          return a7.n128_f64[0];
        }

        if (v14 == 253)
        {
          if (a5)
          {
            a7.n128_f64[0] = *a6;
            a7.n128_f32[0] = *a6;
            *(this + 23) = a7.n128_u32[0];
          }

          return a7.n128_f64[0];
        }

        if (v14 != 254)
        {
          return a7.n128_f64[0];
        }

        goto LABEL_106;
      }

      v12 = a3[1];
      if (v12 > 294)
      {
        if (v12 == 504)
        {
          goto LABEL_70;
        }

LABEL_74:
        if (v12 != 295)
        {
          return a7.n128_f64[0];
        }

        goto LABEL_75;
      }

      if (v12 == 35)
      {
        goto LABEL_70;
      }

      if (v12 != 176)
      {
        return a7.n128_f64[0];
      }
    }

    else
    {
      if (v11 == 5)
      {
        v16 = a3[1];
        if (v16 <= 533)
        {
          if (v16 == 101)
          {
            CA::Render::color_from_vec(&v23, a5, a6);
            a7.n128_u64[0] = v23;
            *(this + 36) = v23;
            *(this + 13) = v24;
            return a7.n128_f64[0];
          }

          if (v16 != 448 || !a5)
          {
            return a7.n128_f64[0];
          }

          a7.n128_f64[0] = *a6;
          v21 = *(this + 56) & 0xFD | (2 * (*a6 != 0.0));
        }

        else
        {
          if (v16 == 534)
          {
            if (a5 >= 2)
            {
              a7.n128_u64[0] = vcvt_f32_f64(*a6);
              *(this + 28) = a7.n128_u64[0];
            }

            return a7.n128_f64[0];
          }

          if (v16 != 584)
          {
            if (v16 != 588)
            {
              return a7.n128_f64[0];
            }

LABEL_75:
            if (a5)
            {
              a7.n128_f64[0] = *a6;
              a7.n128_f32[0] = *a6;
              *(this + 6) = a7.n128_u32[0];
            }

            return a7.n128_f64[0];
          }

          if (!a5)
          {
            return a7.n128_f64[0];
          }

          a7.n128_f64[0] = *a6;
          v21 = *(this + 56) & 0xFE;
          if (*a6 != 0.0)
          {
            ++v21;
          }
        }

        *(this + 56) = v21;
        return a7.n128_f64[0];
      }

      if (v11 != 6)
      {
        return a7.n128_f64[0];
      }

      v12 = a3[1];
      if (v12 <= 175)
      {
        if (v12 == 32)
        {
          if (a5)
          {
            a7.n128_f64[0] = *a6;
            a7.n128_f32[0] = *a6;
            *(this + 10) = a7.n128_u32[0];
          }

          return a7.n128_f64[0];
        }

        if (v12 != 35)
        {
          if (v12 != 101)
          {
            return a7.n128_f64[0];
          }

          goto LABEL_88;
        }

LABEL_70:
        if (a5)
        {
          a7.n128_f64[0] = *a6;
          a7.n128_f32[0] = *a6;
          *(this + 8) = a7.n128_u32[0];
        }

        return a7.n128_f64[0];
      }

      if (v12 != 176)
      {
        if (v12 == 677)
        {
          if (a5)
          {
            a7.n128_f64[0] = *a6;
            a7.n128_f32[0] = *a6;
            *(this + 9) = a7.n128_u32[0];
          }

          return a7.n128_f64[0];
        }

        goto LABEL_74;
      }
    }

LABEL_77:
    if (a5)
    {
      a7.n128_f64[0] = *a6;
      a7.n128_f32[0] = *a6;
      *(this + 7) = a7.n128_u32[0];
    }

    return a7.n128_f64[0];
  }

  if (*(this + 136) <= 2u)
  {
    if (v11 != 1)
    {
      if (v11 != 2 || a3[1] != 101)
      {
        return a7.n128_f64[0];
      }

LABEL_14:
      CA::Render::color_from_vec(&v23, a5, a6);
      a7.n128_u64[0] = v23;
      *(this + 24) = v23;
      *(this + 10) = v24;
      return a7.n128_f64[0];
    }

    v15 = a3[1];
    if (v15 != 512)
    {
      if (v15 != 520)
      {
        return a7.n128_f64[0];
      }

      goto LABEL_75;
    }

    goto LABEL_77;
  }

  if (v11 == 3)
  {
    v17 = *(this + 3);
    if (v17)
    {
      v20 = a3[1];
      v18 = a3 + 1;
      v19 = v20;
      if (v20 == 121 || v19 == 490 || v19 == 446)
      {

        a7.n128_u64[0] = CA::Render::Gradient::set_values(v17, 1, v18, a5, a6, 0, 0, a9, a7).n128_u64[0];
      }
    }

    return a7.n128_f64[0];
  }

  if (v11 != 4)
  {
    return a7.n128_f64[0];
  }

  v13 = a3[1];
  if (v13 <= 587)
  {
    if (v13 <= 118)
    {
      if (v13 == 35)
      {
        if (a5)
        {
          a7.n128_f64[0] = *a6;
          a7.n128_f32[0] = *a6;
          *(this + 16) = a7.n128_u32[0];
        }

        return a7.n128_f64[0];
      }

      if (v13 != 108)
      {
        return a7.n128_f64[0];
      }

LABEL_88:
      CA::Render::color_from_vec(&v23, a5, a6);
      a7.n128_u64[0] = v23;
      *(this + 44) = v23;
      *(this + 15) = v24;
      return a7.n128_f64[0];
    }

    if (v13 == 119)
    {
      goto LABEL_14;
    }

    if (v13 != 287)
    {
      return a7.n128_f64[0];
    }

LABEL_106:
    if (a5)
    {
      a7.n128_f64[0] = *a6;
      a7.n128_f32[0] = *a6;
      *(this + 22) = a7.n128_u32[0];
    }

    return a7.n128_f64[0];
  }

  if (v13 <= 638)
  {
    if (v13 == 588)
    {
      if (a5)
      {
        a7.n128_f64[0] = *a6;
        a7.n128_f32[0] = *a6;
        *(this + 17) = a7.n128_u32[0];
      }

      return a7.n128_f64[0];
    }

    if (v13 != 637)
    {
      return a7.n128_f64[0];
    }

LABEL_134:
    if (a5)
    {
      a7.n128_f64[0] = *a6;
      a7.n128_f32[0] = *a6;
      *(this + 21) = a7.n128_u32[0];
    }

    return a7.n128_f64[0];
  }

  if (v13 != 639)
  {
    if (v13 != 641)
    {
      if (v13 == 642 && a5)
      {
        a7.n128_f64[0] = *a6;
        a7.n128_f32[0] = *a6;
        *(this + 19) = a7.n128_u32[0];
      }

      return a7.n128_f64[0];
    }

    goto LABEL_132;
  }

  if (a5)
  {
    a7.n128_f64[0] = *a6;
    a7.n128_f32[0] = *a6;
    *(this + 18) = a7.n128_u32[0];
  }

  return a7.n128_f64[0];
}

void CA::Render::color_from_vec(CA::Render *this, unint64_t a2, const double *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 < 5)
  {
    if (a2 == 4)
    {
      *this = vcvt_hight_f32_f64(vcvt_f32_f64(*a3), *(a3 + 2));
    }

    else
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v6 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v7 = 134217984;
        v8 = a2;
        _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "trying to create color from vec of len %zu", &v7, 0xCu);
      }

      *this = 0;
      *(this + 1) = 0;
    }

    *(this + 4) = 0;
  }

  else
  {
    v4 = a3[4];
    *this = vcvt_hight_f32_f64(vcvt_f32_f64(*a3), *(a3 + 2));
    *(this + 4) = v4;
  }
}

double CA::Render::Updater::TransformOp::map_crop(CA::Render::Updater::TransformOp *this, CA::Rect *a2, int8x16_t *a3)
{
  CA::Rect::apply_transform(a3, (this + 24), a3->i64);
  result = *(a2 + 2);
  if (result != 0.0)
  {

    return CA::Rect::apply_transform_interior(a2, (this + 24));
  }

  return result;
}

BOOL CA::Render::FlattenManager::is_stager(uint64_t a1)
{
  os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
  v2 = *(a1 + 152);
  v3 = (*(v2 + 240) & 2) == 0 && *(v2 + 184) == a1;
  os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
  return v3;
}

uint64_t CA::WindowServer::Server::set_next_update(uint64_t a1, unint64_t *a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  a3.n128_u64[0] = *a2;
  if (*a2 == 0.0)
  {
    v6 = mach_absolute_time();
    a3.n128_f64[0] = CATimeWithHostTime(v6);
    *a2 = a3.n128_u64[0];
    a2[1] = 0;
    a2[2] = 0;
  }

  if (v4 != 0.0)
  {
    v7 = (*(*a1 + 456))(a1, a3) + v4;
    a3.n128_u64[0] = *a2;
    if (*a2 < v7)
    {
      *a2 = v7;
      a3.n128_f64[0] = v7;
      a2[1] = 0;
      a2[2] = 0;
    }
  }

  return CA::Render::Server::add_callback(3, CA::WindowServer::Server::timer_callback, a1, a3.n128_f64[0]);
}

uint64_t IOGPUDeviceSetDisplayParamsFunc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IOGPUDeviceSetDisplayParamsSymbolLoc = getIOGPUDeviceSetDisplayParamsSymbolLoc();
  if (IOGPUDeviceSetDisplayParamsSymbolLoc)
  {

    return IOGPUDeviceSetDisplayParamsSymbolLoc(a1, a2, a3);
  }

  else
  {
    dlerror();
    abort_report_np();
    return getIOGPUDeviceSetDisplayParamsSymbolLoc();
  }
}

uint64_t getIOGPUDeviceSetDisplayParamsSymbolLoc(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getIOGPUDeviceSetDisplayParamsSymbolLoc(void)::ptr;
  v6 = getIOGPUDeviceSetDisplayParamsSymbolLoc(void)::ptr;
  if (!getIOGPUDeviceSetDisplayParamsSymbolLoc(void)::ptr)
  {
    v1 = IOGPULibrary();
    v4[3] = dlsym(v1, "IOGPUDeviceSetDisplayParams");
    getIOGPUDeviceSetDisplayParamsSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

unint64_t CACFAbsoluteTimeToContinuousTime(double a1)
{
  v1 = CAHostTimeWithTime(a1);
  mach_get_times();
  return v1;
}

void std::vector<CA::Vec2<double>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
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
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void ___ZN2CA3OGL12MetalContext12delete_imageEPNS0_5ImageE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 32;
  do
  {

    v1 += 8;
  }

  while (v1 != 24);
}

uint64_t CA::WindowServer::Server::set_color_matrix(CA::WindowServer::Server *this, const float *a2, float a3, double a4)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 24));
  (*(**(this + 12) + 1440))(*(this + 12), a2, a3, a4);
  if (xmmword_1ED4E988C == 1)
  {
    if (x_log_get_CADebug(void)::once != -1)
    {
      dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
    }

    v9 = x_log_get_CADebug(void)::log;
    if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_color_matrix", &v10, 2u);
    }
  }

  v10 = 0;
  v11 = vdupq_n_s64(8uLL);
  (*(*this + 176))(this, &v10, 0.0);
  return pthread_mutex_unlock((this + 24));
}

void CA::WindowServer::IOMFBDisplay::set_color_matrix(CA::WindowServer::IOMFBDisplay *this, const float *a2, float a3, double a4)
{
  v6 = this + 24576;
  v7 = *(this + 1689);
  *(this + 26936) = *(this + 1688);
  *(this + 26952) = v7;
  *(this + 6742) = *(this + 6760);
  *(this + 6761) = *(this + 6763);
  v8 = (this + 26972);
  if (a2)
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    *(this + 6751) = a2[8];
    *v8 = v9;
    *(this + 26988) = v10;
    *(this + 6762) = a3;
  }

  else
  {
    *v8 = xmmword_183E20E10;
    *(this + 26988) = xmmword_183E20E10;
    *(this + 6751) = 1065353216;
  }

  v11 = mach_absolute_time();
  *(this + 3365) = CATimeWithHostTime(v11);
  *(this + 3366) = a4;
  v6[2480] = 0;
  v6[2341] = 1;
}

void CA::Render::Image::finalize(CA::Render::Image *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    CFRelease(v2);
    *(this + 19) = 0;
  }

  if (*(this + 18))
  {
    if (CA::Render::tiled_image_mutex_once[0] != -1)
    {
      dispatch_once_f(CA::Render::tiled_image_mutex_once, 0, CA::Render::Image::tiled_image_mutex_init);
    }

    pthread_mutex_lock(&CA::Render::Image::_tiled_image_lock);
    for (i = *(this + 18); i; i = *(this + 18))
    {
      *(this + 18) = *(i + 144);
      if (atomic_fetch_add((i + 8), 0xFFFFFFFF) == 1)
      {
        (*(*i + 16))(i);
      }
    }

    *(this + 18) = 0;
    pthread_mutex_unlock(&CA::Render::Image::_tiled_image_lock);
  }

  if ((*(this + 15) & 2) != 0)
  {
    os_unfair_lock_lock(&CA::Render::Image::_subimage_table_lock);
    if (CA::Render::Image::_subimage_table)
    {
      x_hash_table_remove_if (CA::Render::Image::_subimage_table, CA::Render::Image::SubimageKey::delete_images, this);
    }

    *(this + 3) &= ~0x2000000u;
    os_unfair_lock_unlock(&CA::Render::Image::_subimage_table_lock);
  }

  CA::Render::post_notification(3u, this, 0, 1);
  v4 = *(this + 17);
  if (v4)
  {
    *(this + 17) = 0;
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }
  }

  CA::Render::Image::release_data(this);
}

void CA::Render::Image::~Image(CA::Render::Image *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v2(*(this + 14), *(this + 16));
  }

  v3 = *(this + 17);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAA94;

  CA::Render::Texture::~Texture(this);
}

{
  CA::Render::Image::~Image(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t CA::Render::release_shmem_bitmap(CA::Render *this, const void *a2, void *a3)
{
  atomic_fetch_add(*(a2 + 3), 0xFFFFFFFF);
  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t init_suspended(void *a1)
{
  {
    init_suspended(void *)::notification = objc_alloc_init(CASuspendNotification);
  }

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 addObserver:init_suspended(void *)::notification selector:sel_willSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [v1 addObserver:init_suspended(void *)::notification selector:sel_willUnsuspend_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  v2 = init_suspended(void *)::notification;

  return [v1 addObserver:v2 selector:sel_willUnsuspend_ name:@"UIApplicationDidFinishLaunchingNotification" object:0];
}

char *classDescription_locked(objc_class *a1)
{
  v133 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v126[0] = 0;
  v2 = x_hash_table_lookup(class_table, a1, v126);
  if (v126[0])
  {
    return v2;
  }

  v124 = a1;
  v4 = [(objc_class *)a1 superclass];
  v5 = a1;
  if (v4 == a1)
  {
    return 0;
  }

  if (log_class_descriptions == 1)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v6 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSStringFromClass(v5) UTF8String];
      LODWORD(v126[0]) = 136315138;
      *(v126 + 4) = v7;
      _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "creating class description for %s\n", v126, 0xCu);
    }
  }

  v3 = malloc_type_malloc(0x90uLL, 0x10F0040449965B5uLL);
  *(v3 + 1) = v124;
  *v3 = classDescription_locked(v4);
  *(v3 + 1) = 0u;
  v118 = (v3 + 16);
  *(v3 + 3) = 0u;
  v123 = v3 + 48;
  *(v3 + 2) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 16) = 0;
  v3[136] = [(objc_class *)v124 CA_automaticallyNotifiesObservers:v124];
  *(v3 + 137) = 0;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 584) = v3;
  if (objc_opt_class() == v124)
  {
    classDescription_locked(objc_class *)::CALayer_needsLayoutForKey = [(objc_class *)v124 methodForSelector:sel_needsLayoutForKey_];
    if (!classDescription_locked(objc_class *)::CALayer_needsLayoutForKey)
    {
      goto LABEL_17;
    }
  }

  else if (!classDescription_locked(objc_class *)::CALayer_needsLayoutForKey)
  {
    goto LABEL_17;
  }

  if ([(objc_class *)v124 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v124 methodForSelector:sel_needsLayoutForKey_];
    v9 = v8 != classDescription_locked(objc_class *)::CALayer_needsLayoutForKey;
    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
LABEL_18:
  v3[137] = v9;
  v10 = objc_opt_class();
  v11 = v124;
  if (v10 == v124)
  {
    classDescription_locked(objc_class *)::CALayer_needsDisplayForKey = [(objc_class *)v124 methodForSelector:sel_needsDisplayForKey_];
    v11 = v124;
    if (classDescription_locked(objc_class *)::CALayer_needsDisplayForKey)
    {
      goto LABEL_20;
    }

LABEL_23:
    v13 = 0;
    goto LABEL_26;
  }

  if (!classDescription_locked(objc_class *)::CALayer_needsDisplayForKey)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ([(objc_class *)v124 isSubclassOfClass:objc_opt_class()])
  {
    v12 = [(objc_class *)v124 methodForSelector:sel_needsDisplayForKey_];
    v13 = v12 != classDescription_locked(objc_class *)::CALayer_needsDisplayForKey;
  }

  else
  {
    v13 = 0;
  }

  v11 = v124;
LABEL_26:
  v3[138] = v13;
  v125 = 0;
  v121 = class_copyPropertyList(v11, &v125);
  if (v125)
  {
    v14 = malloc_type_malloc(32 * v125, 0x10E0040625550D7uLL);
    *v118 = v14;
    if (v125)
    {
      v16 = 0;
      *&v15 = 136315394;
      v120 = v15;
      *&v15 = 67109634;
      v119 = v15;
      while (1)
      {
        v17 = v121[v16];
        Name = property_getName(v17);
        Attributes = property_getAttributes(v17);
        if (log_class_descriptions == 1)
        {
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v20 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v126[0]) = v120;
            *(v126 + 4) = Name;
            WORD2(v126[1]) = 2080;
            *(&v126[1] + 6) = Attributes;
            _os_log_impl(&dword_183AA6000, v20, OS_LOG_TYPE_DEFAULT, "  %s: %s\n", v126, 0x16u);
          }
        }

        v21 = CAInternAtomWithCString(Name);
        *(v14 + 1) = 0;
        v122 = (v14 + 2);
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
        LOWORD(v22) = 0;
        *v14 = v21;
        v14[1] = 0x20000;
        v23 = *Attributes;
        if (*Attributes)
        {
          break;
        }

LABEL_126:
        if ([(objc_class *)v124 CA_encodesPropertyConditionally:*v14 type:v22])
        {
          v14[1] |= 0x20000000u;
        }

        if (log_class_descriptions == 1)
        {
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v45 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *(v14 + 2);
            CStringPtr = CFStringGetCStringPtr(*(v14 + 3), 0x8000100u);
            v48 = *(v14 + 3);
            v126[0] = __PAIR64__(v46, v119);
            LOWORD(v126[1]) = 2080;
            *(&v126[1] + 2) = CStringPtr;
            WORD1(v126[2]) = 1024;
            HIDWORD(v126[2]) = v48;
            _os_log_impl(&dword_183AA6000, v45, OS_LOG_TYPE_DEFAULT, "    type %d: %s flags 0x%x\n", v126, 0x18u);
          }
        }

        if (*(v14 + 2))
        {
          v49 = *v14;
          if (v49)
          {
            if (!*(v14 + 2))
            {
              if (v49 > 0x2FE)
              {
                goto LABEL_140;
              }

              if (init_selectors(void)::once[0] != -1)
              {
                dispatch_once(init_selectors(void)::once, &__block_literal_global_11611);
              }

              v50 = t[2 * v49];
              if (!v50)
              {
LABEL_140:
                v50 = sel_registerName(Name);
              }

              *(v14 + 2) = v50;
            }

            if (!*v122 && (*(v14 + 6) & 1) == 0)
            {
              v51 = *v14;
              if (v51 > 0x2FE)
              {
                goto LABEL_148;
              }

              if (init_selectors(void)::once[0] != -1)
              {
                dispatch_once(init_selectors(void)::once, &__block_literal_global_11611);
              }

              v52 = t[2 * v51 + 1];
              if (!v52)
              {
LABEL_148:
                v52 = defaultSetter(Name);
              }

              *v122 = v52;
            }

            v14 += 8;
            ++*(v3 + 6);
          }
        }

        if (++v16 >= v125)
        {
          goto LABEL_152;
        }
      }

      while (1)
      {
        v24 = Attributes + 1;
          ;
        }

        if (v23 > 81)
        {
          if (v23 > 83)
          {
            if (v23 == 87)
            {
              v26 = v14[1] | 0x80000;
              goto LABEL_100;
            }

            if (v23 == 84)
            {
              v31 = i - Attributes;
              if (i - Attributes <= 255)
              {
                v32 = Name;
                v33 = v31 - 1;
                v34 = v126;
                memcpy(v126, v24, v31 - 1);
                *(v126 + v33) = 0;
                Name = v32;
                *(v14 + 3) = 0;
                while (2)
                {
                  switch(*v34)
                  {
                    case '@':
                      v41 = v34[1];
                      v40 = v34 + 1;
                      if (v41 == 34)
                      {
                        *(v14 + 3) = intern_quoted(v40);
                      }

                      goto LABEL_88;
                    case 'A':
                    case 'D':
                    case 'E':
                    case 'F':
                    case 'G':
                    case 'H':
                    case 'J':
                    case 'K':
                    case 'M':
                    case 'P':
                    case 'T':
                    case 'U':
                    case 'W':
                    case 'X':
                    case 'Y':
                    case 'Z':
                    case '[':
                    case '\\':
                    case ']':
                    case '_':
                    case 'a':
                    case 'b':
                    case 'e':
                    case 'g':
                    case 'h':
                    case 'j':
                    case 'k':
                    case 'm':
                    case 'p':
                      goto LABEL_75;
                    case 'B':
                      v37 = 6;
                      goto LABEL_99;
                    case 'C':
                      v37 = 8;
                      goto LABEL_99;
                    case 'I':
                      v37 = 12;
                      goto LABEL_99;
                    case 'L':
                    case 'Q':
                      v37 = 14;
                      goto LABEL_99;
                    case 'N':
                    case 'O':
                    case 'R':
                    case 'V':
                    case 'n':
                    case 'o':
                    case 'r':
                      ++v34;
                      continue;
                    case 'S':
                      v37 = 10;
                      goto LABEL_99;
                    case '^':
                      v39 = v34[1];
                      v38 = v34 + 1;
                      if (v39 == 123)
                      {
                        *(v14 + 3) = intern_struct_name(v38);
                      }

                      v37 = 2;
                      goto LABEL_99;
                    case 'c':
                      v37 = 7;
                      goto LABEL_99;
                    case 'd':
                      v37 = 18;
                      goto LABEL_99;
                    case 'f':
                      v37 = 17;
                      goto LABEL_99;
                    case 'i':
                      v37 = 11;
                      goto LABEL_99;
                    case 'l':
                    case 'q':
                      v37 = 13;
                      goto LABEL_99;
                    case 's':
                      v37 = 9;
                      goto LABEL_99;
                    default:
                      if (*v34 == 58)
                      {
LABEL_88:
                        *(v14 + 2) = 1;
                        goto LABEL_101;
                      }

LABEL_75:
                      if (compare_types(v34, "{CGPoint=dd}"))
                      {
                        v37 = 19;
                      }

                      else if (compare_types(v34, "{CGSize=dd}"))
                      {
                        v37 = 20;
                      }

                      else if (compare_types(v34, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
                      {
                        v37 = 21;
                      }

                      else if (compare_types(v34, "{CGAffineTransform=dddddd}") || compare_types(v34, "{?=dddddd}"))
                      {
                        v37 = 23;
                      }

                      else if (compare_types(v34, "{CATransform3D=dddddddddddddddd}"))
                      {
                        v37 = 22;
                      }

                      else if (compare_types(v34, "{CAPoint3D=ddd}"))
                      {
                        v37 = 24;
                      }

                      else if (compare_types(v34, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
                      {
                        v37 = 25;
                      }

                      else
                      {
                        v37 = 0;
                      }

LABEL_99:
                      v26 = v14[1] & 0xFFFD0000 | v37;
                      break;
                  }

                  goto LABEL_100;
                }
              }
            }
          }

          else
          {
            if (v23 == 82)
            {
              v26 = v14[1] | 0x10000;
              goto LABEL_100;
            }

            v27 = i - Attributes;
            if (i - Attributes <= 255)
            {
              v28 = *v14;
              if (v28 < 0x2FF)
              {
                if (init_selectors(void)::once[0] != -1)
                {
                  dispatch_once(init_selectors(void)::once, &__block_literal_global_11611);
                }

                v35 = t[2 * v28 + 1];
                *v122 = v35;
                if (v35)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                *v122 = 0;
              }

              memcpy(v126, Attributes + 1, v27 + 1);
              *(v126 + v27 - 1) = 0;
              *v122 = sel_registerName(v126);
            }
          }
        }

        else if (v23 > 67)
        {
          if (v23 == 68)
          {
            v26 = v14[1] | 0x200000;
            goto LABEL_100;
          }

          if (v23 == 71)
          {
            v29 = i - Attributes;
            if (i - Attributes <= 255)
            {
              v30 = *v14;
              if (v30 < 0x2FF)
              {
                if (init_selectors(void)::once[0] != -1)
                {
                  dispatch_once(init_selectors(void)::once, &__block_literal_global_11611);
                }

                v36 = t[2 * v30];
                *(v14 + 2) = v36;
                if (v36)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                *(v14 + 2) = 0;
              }

              memcpy(v126, Attributes + 1, v29 + 1);
              *(v126 + v29 - 1) = 0;
              *(v14 + 2) = sel_registerName(v126);
            }
          }
        }

        else
        {
          if (v23 == 38)
          {
            v26 = v14[1] & 0xFFFDFFFF;
            goto LABEL_100;
          }

          if (v23 == 67)
          {
            v26 = v14[1] & 0xFFF9FFFF | 0x40000;
LABEL_100:
            v14[1] = v26;
          }
        }

LABEL_101:
        if (*i == 44)
        {
          Attributes = i + 1;
        }

        else
        {
          Attributes = i;
        }

        v23 = *Attributes;
        if (!*Attributes)
        {
          v22 = v14[1];
          if (v22 - 1 <= 3)
          {
            if ((v22 & 0x20000) != 0)
            {
              v42 = 1;
            }

            else
            {
              v42 = 2;
            }

            if ((v22 & 0x80000) != 0)
            {
              v43 = -327680;
            }

            else
            {
              v43 = v22 & 0x20000 | 0xFFF10000;
            }

            if ((v22 & 0x80000) != 0)
            {
              v44 = 4;
            }

            else
            {
              v44 = v42;
            }

            if ((v22 & 0x40000) != 0)
            {
              v43 = -65536;
              v44 = 3;
            }

            v22 = v22 & v43 | v44;
            v14[1] = v22;
          }

          goto LABEL_126;
        }
      }
    }

LABEL_152:
    if (!*(v3 + 6))
    {
      free(*v118);
      *v118 = 0;
    }
  }

  free(v121);
  v53 = *(v3 + 6);
  if (!v53)
  {
    *(v3 + 14) = 0;
    goto LABEL_190;
  }

  v54 = *v118;
  if (!*v118)
  {
    __assert_rtn("classDescription_locked", "CAObject.mm", 445, "info != NULL");
  }

  qsort(*v118, v53, 0x20uLL, compareInfo);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v117 - v56;
  bzero(v57, v58);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v117 - v60;
  bzero(v61, v62);
  v63 = *(v3 + 6);
  if (v63)
  {
    v64 = 0;
    do
    {
      v57[v64] = v54[2];
      v65 = v64 + 1;
      v61[v64] = v54;
      v66 = v54[1];
      if (v66)
      {
        v57[v65] = v66;
        v61[v65] = v54;
        v65 = v64 + 2;
      }

      v54 += 4;
      v64 = v65;
      --v63;
    }

    while (v63);
  }

  else
  {
    v65 = 0;
  }

  v67 = CFDictionaryCreate(*MEMORY[0x1E695E490], v57, v61, v65, 0, 0);
  v68 = *(v3 + 6);
  *(v3 + 14) = v67;
  if (v68)
  {
    LODWORD(v126[0]) = 0;
    v69 = *v118;
    v70 = class_copyMethodList(v124, v126);
    v71 = v70;
    if (!LODWORD(v126[0]))
    {
      v73 = 0;
LABEL_173:
      v76 = *(v3 + 6);
      if (!v76)
      {
        goto LABEL_186;
      }

      v77 = 0;
      while (1)
      {
        v78 = &v69[32 * v77];
        if ((v78[6] & 0x20) == 0)
        {
          goto LABEL_183;
        }

        v79 = 0;
        v80 = 1;
        while (1)
        {
          v81 = v80;
          v82 = &v78[8 * v79 + 8];
          if (!*v82 || bsearch(v82, v73, LODWORD(v126[0]), 8uLL, compare_sel))
          {
            goto LABEL_181;
          }

          v83 = *(v78 + 1);
          if ((v81 & 1) == 0)
          {
            break;
          }

          *(v78 + 1) = v83 | 0x40000000;
LABEL_181:
          v80 = 0;
          v79 = 1;
          if ((v81 & 1) == 0)
          {
            goto LABEL_182;
          }
        }

        *(v78 + 1) = v83 | 0x80000000;
LABEL_182:
        v76 = *(v3 + 6);
LABEL_183:
        if (++v77 >= v76)
        {
LABEL_186:
          if (LODWORD(v126[0]))
          {
            if (LODWORD(v126[0]) >= 0x201)
            {
              free(v73);
            }

            free(v71);
          }

          goto LABEL_190;
        }
      }
    }

    if (LODWORD(v126[0]) > 0x200)
    {
      v73 = malloc_type_malloc(8 * LODWORD(v126[0]), 0x80040B8603338uLL);
      if (!LODWORD(v126[0]))
      {
        v75 = 0;
LABEL_172:
        qsort(v73, v75, 8uLL, compare_sel);
        goto LABEL_173;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v70);
      v73 = &v117 - ((v72 + 15) & 0xFFFFFFFF0);
      bzero(v73, v72);
    }

    v74 = 0;
    do
    {
      *&v73[8 * v74] = method_getName(v71[v74]);
      ++v74;
      v75 = LODWORD(v126[0]);
    }

    while (v74 < LODWORD(v126[0]));
    goto LABEL_172;
  }

LABEL_190:
  v121 = 0;
  v122 = 0;
  v84 = 0;
  v85 = 0;
  v86 = v3;
  do
  {
    if (*(v86 + 6))
    {
      v87 = 0;
      v88 = 0;
      do
      {
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        memset(v126, 0, sizeof(v126));
        v89 = *(v86 + 2);
        v90 = *(v89 + v87);
        String = CAAtomGetString(*(v89 + v87));
        if (v3[137] == 1)
        {
          v92 = [(objc_class *)v124 needsLayoutForKey:String];
          if (v92)
          {
            MEMORY[0x1EEE9AC00](v92);
            *(&v117 - 2) = v90;
            *(&v117 - 1) = v85;
            ++v84;
            v85 = (&v117 - 2);
          }
        }

        if (v3[138] == 1)
        {
          v93 = [(objc_class *)v124 needsDisplayForKey:String];
          if (v93)
          {
            MEMORY[0x1EEE9AC00](v93);
            v94 = v121;
            *(&v117 - 2) = v90;
            *(&v117 - 1) = v94;
            v121 = (&v117 - 2);
            v122 = (v122 + 1);
          }
        }

        v95 = [(objc_class *)v124 defaultValueForKey:String];
        if (v95)
        {
          if (v86 == v3 || !*v3 || (v96 = [*(*v3 + 8) defaultValueForKey:String], v96 != v95) && (objc_msgSend(v96, "isEqual:", v95) & 1) == 0)
          {
            CAValueObjCUnbox(v95, *(*(v86 + 2) + v87 + 4), v126);
            v97 = v90 & 7;
            v98 = *&v123[8 * (v90 & 7)];
            v99 = (*(v86 + 2) + v87);
            v100 = *v99;
            v101 = *(v99 + 2);
            if (!v98)
            {
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v98 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
            }

            v102 = CA::AttrList::set(v98, v100, v101, v126);
            *&v123[8 * v97] = v102;
          }
        }

        ++v88;
        v87 += 32;
      }

      while (v88 < *(v86 + 6));
    }

    v86 = *v86;
  }

  while (v86);
  if (v84)
  {
    if (v84 < 0)
    {
      *(v3 + 4) = 0;
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v103 = malloc_type_zone_malloc(malloc_zone, 2 * v84, 0x1000040BDFB0063uLL);
      *(v3 + 4) = v103;
      if (v103)
      {
        if (v85)
        {
          v105 = 0;
          v106 = v85;
          do
          {
            ++v105;
            v106 = *(v106 + 1);
          }

          while (v106);
          v107 = list_sort_1(v85, v105, v104);
          if (v107)
          {
            v108 = *(v3 + 4);
            do
            {
              *v108++ = *v107;
              v107 = *(v107 + 1);
            }

            while (v107);
          }
        }

        *(v3 + 14) = v84;
      }
    }
  }

  v109 = v124;
  if (v122)
  {
    if ((v122 & 0x8000000000000000) != 0)
    {
      *(v3 + 5) = 0;
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v110 = malloc_type_zone_malloc(malloc_zone, 2 * v122, 0x1000040BDFB0063uLL);
      *(v3 + 5) = v110;
      v109 = v124;
      if (v110)
      {
        v112 = v121;
        if (v121)
        {
          v113 = 0;
          do
          {
            ++v113;
            v112 = v112[1];
          }

          while (v112);
          v114 = list_sort_1(v121, v113, v111);
          if (v114)
          {
            v115 = *(v3 + 5);
            do
            {
              *v115++ = *v114;
              v114 = *(v114 + 1);
            }

            while (v114);
          }
        }

        *(v3 + 15) = v122;
      }
    }
  }

  hash_table_modify(class_table, v109, v3, 0);
  return v3;
}

void initAtoms()
{
  if (!atomDict)
  {
    nextAtom = 768;
    atomDict = x_hash_table_new_(hash_cf, compare_cf, 0, 0, 0, 0);
    LODWORD(v0) = 2 * nextAtom;
    if ((2 * nextAtom) <= 0x80)
    {
      v0 = 128;
    }

    else
    {
      v0 = v0;
    }

    atomArraySize = v0;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    atomArray = malloc_type_zone_calloc(malloc_zone, atomArraySize, 8uLL, 0x6004044C4A2DFuLL);
  }
}

char *intern_quoted(char *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = a1 + 1;
  result = strchr(a1 + 1, 34);
  if (result)
  {
    v3 = result;
    v4 = strchr(v1, 60);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5 - v1;
    if (v5 == v1)
    {
      return 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v8 = v9 - v7;
      bzero(v9 - v7, v6 + 1);
      memcpy(v8, v1, v6);
      v8[v6] = 0;
      return unique_name(v8);
    }
  }

  return result;
}

CFStringRef unique_name(const char *cStr)
{
  if (!unique_name(char const*)::set)
  {
    unique_name(char const*)::set = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{@"CALayer", @"CADisplay", @"CAEDRMetadata", @"CAMediaTimingFunction", @"CAValueFunction", @"CAMeshTransform", @"CAStateControllerTransition", @"NSData", @"NSDictionary", @"NSString", @"NSSet", @"NSArray", @"NSNumber", @"CGPath", @"CGColorSpace", @"CGColor", @"UIView", 0}];
  }

  v2 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x1E695E498]);
  v3 = [unique_name(char const*)::set member:v2];
  if (!v3)
  {
    v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    [unique_name(char const*)::set addObject:v3];
    CFRelease(v3);
  }

  CFRelease(v2);
  return v3;
}

float CADefaultsGetFloat(const __CFDictionary *a1, float a2, const char *a3)
{
  value[1] = *MEMORY[0x1E69E9840];
  v6 = getenv(a3);
  if (v6)
  {
    return atof(v6);
  }

  value[0] = 0;
  v7 = CFStringCreateWithCStringNoCopy(0, a3, 0x8000100u, *MEMORY[0x1E695E498]);
  if (a1 && CFDictionaryGetValueIfPresent(a1, v7, value) && (v8 = CFGetTypeID(value[0]), v8 == CFNumberGetTypeID()))
  {
    valuePtr = a2;
    CFNumberGetValue(value[0], kCFNumberFloatType, &valuePtr);
    CFRelease(v7);
    return valuePtr;
  }

  else
  {
    CFRelease(v7);
  }

  return a2;
}

void CA::Display::DisplayTimingsControl::set_timings_shmem(os_unfair_lock_s *this, atomic_uint *a2)
{
  os_unfair_lock_lock(this + 3);
  v4 = *&this[4]._os_unfair_lock_opaque;
  if (v4)
  {
    *&this[4]._os_unfair_lock_opaque = 0;
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    *&this[6]._os_unfair_lock_opaque = 0;
  }

  if (a2)
  {
    v5 = *&this[4]._os_unfair_lock_opaque;
    if (v5 != a2)
    {
      if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      v6 = a2 + 2;
      if (!atomic_fetch_add(a2 + 2, 1u))
      {
        a2 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }

      *&this[4]._os_unfair_lock_opaque = a2;
      v5 = a2;
    }

    *&this[6]._os_unfair_lock_opaque = *(v5 + 3);
  }

  os_unfair_lock_unlock(this + 3);
}

uint64_t __CADeviceSupportsHDRExternalDisplayBrightnessControl_block_invoke()
{
  result = _os_feature_enabled_impl();
  CADeviceSupportsHDRExternalDisplayBrightnessControl::enabled = result;
  return result;
}

void CA::Display::DisplayLink::foreach_display_link(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Display::DisplayLink::_list_lock);
  v3 = CA::Display::DisplayLink::_list;
  if (!CA::Display::DisplayLink::_list)
  {
    goto LABEL_7;
  }

  v4 = 0;
  do
  {
    v5 = v4++;
    v3 = *(v3 + 48);
  }

  while (v3);
  if (v4)
  {
    v6 = 8 * v4;
    if ((8 * v4) > 0x1000)
    {
      v7 = malloc_type_malloc(8 * v4, 0x58423134uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v2);
      v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v7, 8 * v4);
    }

    v8 = 0;
    v9 = &CA::Display::DisplayLink::_list;
    do
    {
      v10 = *v9;
      while (1)
      {
        v11 = *(v10 + 40);
        if (!v11)
        {
          break;
        }

        v12 = *(v10 + 40);
        atomic_compare_exchange_strong((v10 + 40), &v12, v11 + 1);
        if (v12 == v11)
        {
          v13 = v10;
          goto LABEL_17;
        }
      }

      v13 = 0;
LABEL_17:
      *&v7[8 * v8] = v13;
      v9 = (v10 + 48);
    }

    while (v8++ != v5);
    os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
    for (i = 0; i != v4; ++i)
    {
      (*(a1 + 16))(a1, *&v7[8 * i]);
      CA::Display::DisplayLink::unref(*&v7[8 * i]);
    }

    if (v6 > 0x1000)
    {
      free(v7);
    }
  }

  else
  {
LABEL_7:

    os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
  }
}

void CAFrameRateRangeGroupShouldUpdate(int a1)
{
  os_unfair_lock_lock(&CA::FrameRateRangeGroup::_list_lock);
  for (i = CA::FrameRateRangeGroup::_list; i; i = *(i + 24))
  {
    if (*(i + 4) == a1)
    {
      os_unfair_lock_lock(i);
      *(i + 104) = *(i + 96);
      for (j = *(i + 72); j; j = *j)
      {
        CA::FrameRateRangeGroup::add(i, *(j + 2));
        --j[6];
      }

      os_unfair_lock_unlock(i);
    }
  }

  os_unfair_lock_unlock(&CA::FrameRateRangeGroup::_list_lock);
}

void sub_183B988F4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(&CA::FrameRateRangeGroup::_list_lock);
  _Unwind_Resume(a1);
}

void CADynamicFrameRateSourceRecomputeFrameInterval(int a1)
{
  os_unfair_lock_lock(&CA::DynamicFrameRateSource::_list_lock);
  for (i = CA::DynamicFrameRateSource::_list; i; i = *(i + 96))
  {
    if (*i == a1)
    {
      CA::DynamicFrameRateSource::set_preferred_fps_range(i, *(i + 16), 0);
    }
  }

  os_unfair_lock_unlock(&CA::DynamicFrameRateSource::_list_lock);
}

uint64_t CA::WindowServer::AppleExternalDisplay::minimum_frame_duration(CA::WindowServer::AppleExternalDisplay *this)
{
  if (CADeviceSupportsExternalHighRefreshRateAndVRR::once != -1)
  {
    dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
  }

  if (CADeviceSupportsExternalHighRefreshRateAndVRR::b != 1 || !*(this + 6852))
  {
    return 1;
  }

  if (round(1.0 / (*(*this + 752))(this)) == 120.0)
  {
    return 2;
  }

  return 1;
}

dispatch_queue_t ___ZN2CA7DisplayL13display_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  result = dispatch_queue_create("CA::Display::display_queue", v0);
  CA::Display::display_queue(void)::queue = result;
  return result;
}

void CA::Render::add_observer(unsigned int a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1 > 0x4A)
  {
    return;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 0x50uLL, 0x10A00401FEA8EC9uLL);
  v10[5] = a3;
  v10[6] = a2;
  v10[7] = a4;
  *(v10 + 76) = a5;
  *(v10 + 77) = 0;
  v10[8] = dispatch_semaphore_create(1);
  *(v10 + 18) = 0;
  *v10 = v10;
  v10[1] = v10;
  v11 = (v10 + 2);
  v10[2] = v10 + 2;
  v10[3] = v10 + 2;
  os_unfair_lock_lock(&CA::Render::notification_lock);
  if ((CA::Render::initialize_notifications(void)::initialized & 1) == 0)
  {
    v27 = CA::Render::notifications;
    v28 = 75;
    v29 = &dword_1ED4E99A0;
    do
    {
      *v27 = v27;
      v27[1] = v27;
      v27 += 2;
      *(v29 - 2) = 0uLL;
      *(v29 - 1) = 0uLL;
      *v29 = 1065353216;
      v29 += 10;
      --v28;
    }

    while (v28);
    CA::Render::initialize_notifications(void)::initialized = 1;
  }

  v12 = CA::Render::add_observer(CA::Render::NotificationName,CA::Render::Object *,void (*)(CA::Render::Object *,void *,void *),void *,BOOL)::order++;
  v10[4] = v12;
  v13 = &CA::Render::notifications[2 * a1];
  v14 = v13[1];
  v13[1] = v10;
  *v10 = v13;
  *v14 = v10;
  v10[1] = v14;
  v15 = &CA::Render::notifications_map_data + 5 * a1;
  v16 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v17 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v16 >> 47) ^ v16);
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v19 = v15[1];
  if (!*&v19)
  {
    goto LABEL_22;
  }

  v20 = vcnt_s8(v19);
  v20.i16[0] = vaddlv_u8(v20);
  if (v20.u32[0] > 1uLL)
  {
    v21 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
    if (v18 >= *&v19)
    {
      v21 = v18 % *&v19;
    }
  }

  else
  {
    v21 = v18 & (*&v19 - 1);
  }

  v22 = *(*v15 + 8 * v21);
  if (!v22 || (v23 = *v22) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v24 = v23[1];
    if (v24 == v18)
    {
      break;
    }

    if (v20.u32[0] > 1uLL)
    {
      if (v24 >= *&v19)
      {
        v24 %= *&v19;
      }
    }

    else
    {
      v24 &= *&v19 - 1;
    }

    if (v24 != v21)
    {
      goto LABEL_22;
    }

LABEL_21:
    v23 = *v23;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  if (v23[2] != a2)
  {
    goto LABEL_21;
  }

  v25 = v23 + 3;
  v26 = v23[4];
  if (!v26)
  {
    *v25 = v25;
    v26 = v23 + 3;
  }

  v23[4] = v11;
  v10[2] = v25;
  *v26 = v11;
  v10[3] = v26;
  os_unfair_lock_unlock(&CA::Render::notification_lock);
  if (CA::Render::memory_once != -1)
  {

    dispatch_once_f(&CA::Render::memory_once, 0, CA::Render::init_memory_warnings_);
  }
}

double initialize_time_scale(void)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (mach_timebase_info(v2))
  {
    v0 = *&time_scale;
  }

  else
  {
    v0 = v2[0].numer * 0.000000001 / v2[0].denom;
    *&time_scale = v0;
    timebase = v2[0].denom;
    timebase = v2[0].numer;
  }

  result = 1.0 / v0;
  recip_time_scale = *&result;
  return result;
}

char *___ZL18force_local_serverv_block_invoke()
{
  result = getenv("CA_FORCE_LOCAL_SERVER");
  force_local_server(void)::_force_local_server = result != 0;
  return result;
}

uint64_t CADisplayTimerRemoveFromRunLoop(uint64_t a1, __CFRunLoop *a2, const __CFString *a3)
{
  pthread_mutex_lock((a1 + 16));
  mk_timer_cancel();
  *(a1 + 200) = 1;
  v6 = *(a1 + 192);
  if (v6)
  {
    v6(a1, 2, *(a1 + 232), *(a1 + 216), *(a1 + 184));
  }

  CFRunLoopRemoveSource(a2, *(a1 + 136), a3);

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t CA::WindowServer::IOMFBServer::set_vsync_disabled(CA::WindowServer::IOMFBServer *this)
{
  pthread_mutex_lock((this + 920));
  if (*(this + 1445) == 1)
  {
    *(this + 1445) = 0;
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    if ((*(this + 1446) & 2) != 0)
    {
      IOMobileFramebufferDisableVSyncNotifications();
    }

    else
    {
      v2 = *(this + 139);
      if (v2)
      {
        v3 = (*(*this + 424))(this);
        CADisplayTimerRemoveFromRunLoop(v2, v3, *MEMORY[0x1E695E8E0]);
      }

      CA::WindowServer::IOMFBDisplay::set_timings_enabled(*(this + 12), 0);
    }
  }

  return pthread_mutex_unlock((this + 920));
}

void CA::WindowServer::IOMFBDisplay::set_timings_enabled(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  os_unfair_lock_lock(this + 6576);
  CA::WindowServer::IOMFBDisplay::initialize_timings(this);
  v4 = *(this + 3290);
  if (v4)
  {
    v5 = atomic_load(v4);
    if ((v5 & 1) != a2)
    {
      if ((a2 & 1) == 0)
      {
        *(this + 6582) = 0;
        *(this + 3292) = 0;
      }

      atomic_store(a2, *(this + 3290));
      __dmb(0xBu);
    }
  }

  os_unfair_lock_unlock(this + 6576);
}

uint64_t CA::WindowServer::IOMFBDisplay::activate_replay(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = this + 25688;
  result = CA::WindowServer::IOMFBDisplay::service_int_property(*(this + 6422), @"IdleState");
  if ((v2[3807] & 1) == 0 && (*(this + 336) & 0x1C00) != 0x1000 && v2[3833] == 1 && (byte_1ED4E9807 & 1) == 0 && (result - 1) >= 2)
  {
    result = (*(*this + 2312))(this);
    if ((result & 1) != 0 || (result = CA::WindowServer::IOMFBDisplay::framebuffer_available(this), result))
    {
      v4 = *(this + 3337);
      if (v4)
      {
        v5 = (v4 + 32);
        result = *(v4 + 32);
        if (!result)
        {
          v2[3836] = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v7 = *(this + 3286);
        if (!v7)
        {
LABEL_18:
          v2[3836] = 0;
          return result;
        }

        while (1)
        {
          result = v7[4];
          if (result)
          {
            if (!*(v7 + 2))
            {
              break;
            }
          }

          v7 = *v7;
          if (!v7)
          {
            goto LABEL_18;
          }
        }

        *(v7 + 2) = 1;
        *(this + 3337) = v7;
        v5 = v7 + 4;
      }

      v6 = *(result + 16);
      if (v6 && *(v6 + 32))
      {
        (*(*result + 168))(result);
        CA::CASharedEvent::get_wait_value(v6, 13, 2);
        CA::CASharedEvent::inc_signal_value(v6, 13, 2);
        result = IOMobileFramebufferSetIdleBufferEvent();
      }

      else
      {
        (*(*result + 168))(result);
        result = IOMobileFramebufferSetIdleBuffer();
      }

      *(*v5 + 236) |= 0x200000000uLL;
      if (BYTE11(xmmword_1ED4E980C) == 1)
      {
        v8 = result;
        (*(**v5 + 192))(*v5);
        kdebug_trace();
        result = v8;
        if (v8)
        {
          goto LABEL_22;
        }
      }

      else if (result)
      {
LABEL_22:
        result = (*(*this + 2312))(this);
        if (result)
        {
          return result;
        }

        v4 = *(this + 3337);
        if (!v4)
        {
          return result;
        }

LABEL_26:
        --*(v4 + 8);
        *(this + 3337) = 0;
        return result;
      }

      v2[3836] = 1;
      *(v2 + 95) = 0;
    }
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::service_int_property(CA::WindowServer::IOMFBDisplay *this, const __CFString *a2)
{
  if (!this)
  {
    return 0;
  }

  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v3 = CFProperty;
  v4 = CA_CFIntValue(CFProperty);
  CFRelease(v3);
  return v4;
}

uint64_t CA::WindowServer::IOMFBDisplay::framebuffer_available(CA::WindowServer::IOMFBDisplay *this)
{
  CA::WindowServer::IOMFBDisplay::can_update_(this, 0, 0.0, 0.0);
  v2 = *(this + 3286);
  if (!v2)
  {
    return 0;
  }

  while (!v2[4] || *(v2 + 2))
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CA::Render::Server::server_port(CA::Render::Server *this)
{
  v9 = *MEMORY[0x1E69E9840];
  result = CA::Render::Server::_server_port;
  name = CA::Render::Server::_server_port;
  if (!CA::Render::Server::_server_port)
  {
    v2 = MEMORY[0x1E69E9A60];
    mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
    CA::Render::Server::port_set_qlimit(name);
    inserted = mach_port_insert_right(*v2, name, name, 0x14u);
    v4 = 0;
    atomic_compare_exchange_strong(&CA::Render::Server::_server_port, &v4, name);
    v5 = *v2;
    v6 = name;
    if (v4)
    {
      mach_port_mod_refs(*v2, name, 1u, -1);
      mach_port_deallocate(*v2, name);
    }

    else
    {
      v7 = CA::Render::Server::port_set(inserted);
      mach_port_move_member(v5, v6, v7);
    }

    return CA::Render::Server::_server_port;
  }

  return result;
}

void ___ZL14init_selectorsv_block_invoke()
{
  qword_1ED4E5BB8 = sel_acceleratesDrawing;
  unk_1ED4E5BC0 = sel_setAcceleratesDrawing_;
  qword_1ED4E5BC8 = sel_actions;
  unk_1ED4E5BD0 = sel_setActions_;
  qword_1ED4E5BD8 = sel_additive;
  unk_1ED4E5BE0 = sel_setAdditive_;
  qword_1ED4E5C28 = sel_alignmentMode;
  unk_1ED4E5C30 = sel_setAlignmentMode_;
  qword_1ED4E5C38 = sel_allowedContentsHideSublayers;
  unk_1ED4E5C40 = sel_setAllowedContentsHideSublayers_;
  qword_1ED4E5C48 = sel_allowedInContextTransform;
  unk_1ED4E5C50 = sel_setAllowedInContextTransform_;
  qword_1ED4E5C58 = sel_allowsBackdropGroups;
  unk_1ED4E5C60 = sel_setAllowsBackdropGroups_;
  qword_1ED4E5C68 = sel_allowsColorMatching;
  unk_1ED4E5C70 = sel_setAllowsColorMatching_;
  qword_1ED4E5C88 = sel_allowsDisplayCompositing;
  unk_1ED4E5C90 = sel_setAllowsDisplayCompositing_;
  qword_1ED4E5C98 = sel_allowsDynamicSystemOOTF;
  unk_1ED4E5CA0 = sel_setAllowsDynamicSystemOOTF_;
  qword_1ED4E5CA8 = sel_allowsEdgeAntialiasing;
  unk_1ED4E5CB0 = sel_setAllowsEdgeAntialiasing_;
  qword_1ED4E5CB8 = sel_allowsFilteredLuma;
  unk_1ED4E5CC0 = sel_setAllowsFilteredLuma_;
  qword_1ED4E5CC8 = sel_allowsFontSubpixelQuantization;
  unk_1ED4E5CD0 = sel_setAllowsFontSubpixelQuantization_;
  qword_1ED4E5CD8 = sel_allowsGroupBlending;
  unk_1ED4E5CE0 = sel_setAllowsGroupBlending_;
  qword_1ED4E5CE8 = sel_allowsGroupOpacity;
  unk_1ED4E5CF0 = sel_setAllowsGroupOpacity_;
  qword_1ED4E5CF8 = sel_allowsHitTesting;
  unk_1ED4E5D00 = sel_setAllowsHitTesting_;
  qword_1ED4E5D08 = sel_allowsInPlaceFiltering;
  unk_1ED4E5D10 = sel_setAllowsInPlaceFiltering_;
  qword_1ED4E5D18 = sel_allowsLimitedHeadroom;
  unk_1ED4E5D20 = sel_setAllowsLimitedHeadroom_;
  qword_1ED4E5D28 = sel_allowsOverdamping;
  unk_1ED4E5D30 = sel_setAllowsOverdamping_;
  qword_1ED4E5D38 = sel_allowsRemoteEffectHitTesting;
  unk_1ED4E5D40 = sel_setAllowsRemoteEffectHitTesting_;
  qword_1ED4E5D58 = sel_alphaRange;
  unk_1ED4E5D60 = sel_setAlphaRange_;
  qword_1ED4E5D78 = sel_alphaSpeed;
  unk_1ED4E5D80 = sel_setAlphaSpeed_;
  qword_1ED4E5DA8 = sel_amount;
  unk_1ED4E5DB0 = sel_setAmount_;
  qword_1ED4E5DB8 = sel_anchorPoint;
  qword_1ED4E5DC0 = sel_setAnchorPoint_;
  qword_1ED4E5DC8 = sel_anchorPointZ;
  qword_1ED4E5DD0 = sel_setAnchorPointZ_;
  qword_1ED4E5DD8 = sel_angle;
  qword_1ED4E5DE0 = sel_setAngle_;
  qword_1ED4E5DF8 = sel_animatesFromModelValues;
  qword_1ED4E5E00 = sel_setAnimatesFromModelValues_;
  qword_1ED4E5E18 = sel_animationDuration;
  qword_1ED4E5E20 = sel_setAnimationDuration_;
  qword_1ED4E5E28 = sel_animationTimingFunction;
  qword_1ED4E5E30 = sel_setAnimationTimingFunction_;
  qword_1ED4E5E38 = sel_animations;
  qword_1ED4E5E40 = sel_setAnimations_;
  qword_1ED4E5DE8 = sel_animId;
  qword_1ED4E5E58 = sel_appliesRotation;
  qword_1ED4E5E60 = sel_setAppliesRotation_;
  qword_1ED4E5E68 = sel_appliesScale;
  qword_1ED4E5E70 = sel_setAppliesScale_;
  qword_1ED4E5E78 = sel_appliesX;
  qword_1ED4E5E80 = sel_setAppliesX_;
  qword_1ED4E5E88 = sel_appliesY;
  qword_1ED4E5E90 = sel_setAppliesY_;
  qword_1ED4E5EB8 = sel_asynchronousOpaque;
  qword_1ED4E5EC0 = sel_setAsynchronousOpaque_;
  qword_1ED4E5EC8 = sel_asynchronousRenderPeriod;
  qword_1ED4E5ED0 = sel_setAsynchronousRenderPeriod_;
  qword_1ED4E5ED8 = sel_asynchronousRenderTimes;
  qword_1ED4E5EE0 = sel_setAsynchronousRenderTimes_;
  qword_1ED4E5F18 = sel_autoresizingMask;
  qword_1ED4E5F20 = sel_setAutoresizingMask_;
  qword_1ED4E5F28 = sel_autoreverses;
  qword_1ED4E5F30 = sel_setAutoreverses_;
  qword_1ED4E5F78 = sel_backdropRect;
  qword_1ED4E5F80 = sel_setBackdropRect_;
  qword_1ED4E5F88 = sel_backgroundColor;
  qword_1ED4E5F90 = sel_setBackgroundColor_;
  qword_1ED4E5F98 = sel_backgroundColorPhase;
  qword_1ED4E5FA0 = sel_setBackgroundColorPhase_;
  qword_1ED4E5FA8 = sel_backgroundFilters;
  qword_1ED4E5FB0 = sel_setBackgroundFilters_;
  qword_1ED4E5FB8 = sel_beginTime;
  qword_1ED4E5FC0 = sel_setBeginTime_;
  qword_1ED4E5FC8 = sel_beginTimeMode;
  qword_1ED4E5FD0 = sel_setBeginTimeMode_;
  qword_1ED4E5FE8 = sel_biasValues;
  qword_1ED4E5FF0 = sel_setBiasValues_;
  qword_1ED4E5FF8 = sel_birthRate;
  qword_1ED4E6000 = sel_setBirthRate_;
  qword_1ED4E6018 = sel_blendFactor;
  qword_1ED4E6020 = sel_setBlendFactor_;
  qword_1ED4E6028 = sel_blueRange;
  qword_1ED4E6030 = sel_setBlueRange_;
  qword_1ED4E6038 = sel_blueSpeed;
  qword_1ED4E6040 = sel_setBlueSpeed_;
  qword_1ED4E6048 = sel_borderColor;
  qword_1ED4E6050 = sel_setBorderColor_;
  qword_1ED4E6058 = sel_borderOffset;
  qword_1ED4E6060 = sel_setBorderOffset_;
  qword_1ED4E6068 = sel_borderPathIsBounds;
  qword_1ED4E6070 = sel_setBorderPathIsBounds_;
  qword_1ED4E6078 = sel_borderWidth;
  qword_1ED4E6080 = sel_setBorderWidth_;
  qword_1ED4E60C8 = sel_bounds;
  qword_1ED4E60D0 = sel_setBounds_;
  qword_1ED4E6108 = sel_byValue;
  qword_1ED4E6110 = sel_setByValue_;
  qword_1ED4E6118 = sel_cachesInputImage;
  qword_1ED4E6120 = sel_setCachesInputImage_;
  qword_1ED4E6128 = sel_calculationMode;
  qword_1ED4E6130 = sel_setCalculationMode_;
  qword_1ED4E6138 = sel_canDrawConcurrently;
  qword_1ED4E6140 = sel_setCanDrawConcurrently_;
  qword_1ED4E6148 = sel_captureOnly;
  qword_1ED4E6150 = sel_setCaptureOnly_;
  qword_1ED4E61E8 = sel_clearsContext;
  qword_1ED4E61F0 = sel_setClearsContext_;
  qword_1ED4E61F8 = sel_color;
  qword_1ED4E6200 = sel_setColor_;
  qword_1ED4E62A8 = sel_colorMap;
  qword_1ED4E62B0 = sel_setColorMap_;
  qword_1ED4E6308 = sel_colorSpace;
  qword_1ED4E6310 = sel_setColorSpace_;
  qword_1ED4E6338 = sel_colors;
  qword_1ED4E6340 = sel_setColors_;
  qword_1ED4E6348 = sel_commitTime;
  qword_1ED4E6350 = sel_setCommitTime_;
  qword_1ED4E6358 = sel_completionBlock;
  qword_1ED4E6360 = sel_setCompletionBlock_;
  qword_1ED4E6368 = sel_compositingFilter;
  qword_1ED4E6370 = sel_setCompositingFilter_;
  qword_1ED4E63C8 = sel_constraints;
  qword_1ED4E63D0 = sel_setConstraints_;
  qword_1ED4E63D8 = sel_contents;
  qword_1ED4E63E0 = sel_setContents_;
  qword_1ED4E6408 = sel_contentsCenter;
  qword_1ED4E6410 = sel_setContentsCenter_;
  qword_1ED4E6418 = sel_contentsContainsSubtitles;
  qword_1ED4E6420 = sel_setContentsContainsSubtitles_;
  qword_1ED4E6438 = sel_contentsDither;
  qword_1ED4E6440 = sel_setContentsDither_;
  qword_1ED4E6428 = sel_contentsDirtyRect;
  qword_1ED4E6430 = sel_setContentsDirtyRect_;
  qword_1ED4E63F8 = sel_contentsCDRStrength;
  qword_1ED4E6400 = sel_setContentsCDRStrength_;
  qword_1ED4E6448 = sel_contentsEDRStrength;
  qword_1ED4E6450 = sel_setContentsEDRStrength_;
  qword_1ED4E6458 = sel_contentsFormat;
  qword_1ED4E6460 = sel_setContentsFormat_;
  qword_1ED4E6468 = sel_contentsFrameCount;
  qword_1ED4E6470 = sel_setContentsFrameCount_;
  qword_1ED4E6478 = sel_contentsFrameMode;
  qword_1ED4E6480 = sel_setContentsFrameMode_;
  qword_1ED4E6488 = sel_contentsFramesPerRow;
  qword_1ED4E6490 = sel_setContentsFramesPerRow_;
  qword_1ED4E6498 = sel_contentsFramesPerSecond;
  qword_1ED4E64A0 = sel_setContentsFramesPerSecond_;
  qword_1ED4E63E8 = sel_contentsAlignsToPixels;
  qword_1ED4E63F0 = sel_setContentsAlignsToPixels_;
  qword_1ED4E64A8 = sel_contentsGravity;
  qword_1ED4E64B0 = sel_setContentsGravity_;
  qword_1ED4E64B8 = sel_contentsHeadroom;
  qword_1ED4E64C0 = sel_setContentsHeadroom_;
  qword_1ED4E64C8 = sel_contentsMaximumDesiredEDR;
  qword_1ED4E64D0 = sel_setContentsMaximumDesiredEDR_;
  qword_1ED4E64D8 = sel_contentsMultiplyColor;
  qword_1ED4E64E0 = sel_setContentsMultiplyColor_;
  qword_1ED4E64E8 = sel_contentsOneValueDistance;
  qword_1ED4E64F0 = sel_setContentsOneValueDistance_;
  qword_1ED4E64F8 = sel_contentsOpaque;
  qword_1ED4E6500 = sel_setContentsOpaque_;
  qword_1ED4E6508 = sel_contentsRect;
  qword_1ED4E6510 = sel_setContentsRect_;
  qword_1ED4E6518 = sel_contentsScale;
  qword_1ED4E6520 = sel_setContentsScale_;
  qword_1ED4E6528 = sel_contentsScaling;
  qword_1ED4E6530 = sel_setContentsScaling_;
  qword_1ED4E6538 = sel_contentsSwizzle;
  qword_1ED4E6540 = sel_setContentsSwizzle_;
  qword_1ED4E6548 = sel_contentsTransform;
  qword_1ED4E6550 = sel_setContentsTransform_;
  qword_1ED4E6558 = sel_contentsZeroValueDistance;
  qword_1ED4E6560 = sel_setContentsZeroValueDistance_;
  qword_1ED4E6568 = sel_contextId;
  qword_1ED4E6570 = sel_setContextId_;
  qword_1ED4E6578 = sel_continuityValues;
  qword_1ED4E6580 = sel_setContinuityValues_;
  qword_1ED4E6598 = sel_cornerContents;
  qword_1ED4E65A0 = sel_setCornerContents_;
  qword_1ED4E65A8 = sel_cornerContentsCenter;
  qword_1ED4E65B0 = sel_setCornerContentsCenter_;
  qword_1ED4E5C78 = sel_allowsCornerContentsEdgeEffects;
  unk_1ED4E5C80 = sel_setAllowsCornerContentsEdgeEffects_;
  qword_1ED4E65B8 = sel_cornerContentsMasksEdges;
  qword_1ED4E65C0 = sel_setCornerContentsMasksEdges_;
  qword_1ED4E65C8 = sel_cornerCurve;
  qword_1ED4E65D0 = sel_setCornerCurve_;
  qword_1ED4E65D8 = sel_cornerRadii;
  qword_1ED4E65E0 = sel_setCornerRadii_;
  qword_1ED4E65E8 = sel_cornerRadius;
  qword_1ED4E65F0 = sel_setCornerRadius_;
  qword_1ED4E65F8 = sel_createsCompositingGroup;
  qword_1ED4E6600 = sel_setCreatesCompositingGroup_;
  qword_1ED4E6608 = sel_createsShadowGroup;
  qword_1ED4E6610 = sel_setCreatesShadowGroup_;
  qword_1ED4E6618 = sel_crossDisplay;
  qword_1ED4E6620 = sel_setCrossDisplay_;
  qword_1ED4E6668 = sel_cullMaxZ;
  qword_1ED4E6670 = sel_setCullMaxZ_;
  qword_1ED4E6678 = sel_cullMinZ;
  qword_1ED4E6680 = sel_setCullMinZ_;
  qword_1ED4E6688 = sel_cullRect;
  qword_1ED4E6690 = sel_setCullRect_;
  qword_1ED4E6698 = sel_isCumulative;
  qword_1ED4E66A0 = sel_setCumulative_;
  qword_1ED4E66A8 = sel_curvature;
  qword_1ED4E66B0 = sel_setCurvature_;
  qword_1ED4E66C8 = sel_damping;
  qword_1ED4E66D0 = sel_setDamping_;
  qword_1ED4E66F8 = sel_definesDisplayRegionOfInterest;
  qword_1ED4E6700 = sel_setDefinesDisplayRegionOfInterest_;
  qword_1ED4E6708 = sel_delegate;
  qword_1ED4E6710 = sel_setDelegate_;
  qword_1ED4E6718 = sel_description;
  qword_1ED4E67E8 = sel_disableActions;
  qword_1ED4E67F0 = sel_setDisableActions_;
  qword_1ED4E67F8 = sel_disableFilterCache;
  qword_1ED4E6800 = sel_setDisableFilterCache_;
  qword_1ED4E6808 = sel_disableFoveation;
  qword_1ED4E6810 = sel_setDisableFoveation_;
  qword_1ED4E6818 = sel_disableUpdateMask;
  qword_1ED4E6820 = sel_setDisableUpdateMask_;
  qword_1ED4E6838 = sel_discretizesTime;
  qword_1ED4E6840 = sel_setDiscretizesTime_;
  qword_1ED4E6858 = sel_displayMaximumDesiredEDR;
  qword_1ED4E6860 = sel_setDisplayMaximumDesiredEDR_;
  qword_1ED4E6888 = sel_isDoubleSided;
  qword_1ED4E6890 = sel_setDoubleSided_;
  qword_1ED4E68B8 = sel_isDrawingEnabled;
  qword_1ED4E68C0 = sel_setDrawingEnabled_;
  qword_1ED4E68C8 = sel_drawsAsynchronously;
  qword_1ED4E68D0 = sel_setDrawsAsynchronously_;
  qword_1ED4E68D8 = sel_duration;
  qword_1ED4E68E0 = sel_setDuration_;
  qword_1ED4E68E8 = sel_earliestAutomaticCommitTime;
  qword_1ED4E68F0 = sel_setEarliestAutomaticCommitTime_;
  qword_1ED4E6938 = sel_effect;
  qword_1ED4E6940 = sel_setEffect_;
  qword_1ED4E7F90 = sel_setPreferredFrameRateRangeMinimum_;
  qword_1ED4E7F80 = sel_setPreferredFrameRateRangeMaximum_;
  qword_1ED4E7F88 = sel_preferredFrameRateRangeMinimum;
  qword_1ED4E7FB0 = sel_setPreferredFramesPerSecond_;
  qword_1ED4E7F78 = sel_preferredFrameRateRangeMaximum;
  qword_1ED4E7F70 = sel_setPreferredDynamicRange_;
  qword_1ED4E7FA8 = sel_preferredFramesPerSecond;
  qword_1ED4E7F60 = sel_setPreallocatesScreenArea_;
  qword_1ED4E7F68 = sel_preferredDynamicRange;
  qword_1ED4E7F50 = sel_setPostCommitDuration_;
  qword_1ED4E7F58 = sel_preallocatesScreenArea;
  qword_1ED4E7F40 = sel_setPosition_;
  qword_1ED4E7F48 = sel_postCommitDuration;
  qword_1ED4E7E50 = sel_setPath_;
  qword_1ED4E7F38 = sel_position;
  qword_1ED4E7E40 = sel_setParticleType_;
  qword_1ED4E7E48 = sel_path;
  qword_1ED4E7E10 = sel_setOverrides_;
  qword_1ED4E7E38 = sel_particleType;
  qword_1ED4E7DD0 = sel_setOrientationRange_;
  qword_1ED4E7E08 = sel_overrides;
  qword_1ED4E7DC0 = sel_setOrientationLongitude_;
  qword_1ED4E7DC8 = sel_orientationRange;
  qword_1ED4E7DB0 = sel_setOrientationLatitude_;
  qword_1ED4E7DB8 = sel_orientationLongitude;
  qword_1ED4E7DA0 = sel_setOptions_;
  qword_1ED4E7DA8 = sel_orientationLatitude;
  qword_1ED4E7D90 = sel_setOperation_;
  qword_1ED4E7D98 = sel_options;
  qword_1ED4E7D80 = sel_setOpaque_;
  qword_1ED4E7D88 = sel_operation;
  qword_1ED4E7D60 = sel_setOpacity_;
  qword_1ED4E7D78 = sel_isOpaque;
  qword_1ED4E7D10 = sel_setOffset_;
  qword_1ED4E7D58 = sel_opacity;
  qword_1ED4E7CF0 = sel_setNoiseScale_;
  qword_1ED4E7D08 = sel_offset;
  qword_1ED4E7CD0 = sel_setNeedsLayoutOnGeometryChange_;
  qword_1ED4E7CE8 = sel_noiseScale;
  qword_1ED4E7CC0 = sel_setNeedsDisplayOnBoundsChange_;
  qword_1ED4E7CC8 = sel_needsLayoutOnGeometryChange;
  qword_1ED4E7CA0 = sel_setName_;
  qword_1ED4E7CB8 = sel_needsDisplayOnBoundsChange;
  qword_1ED4E7C50 = sel_setMode_;
  qword_1ED4E7C98 = sel_name;
  qword_1ED4E7C40 = sel_setMiterLimit_;
  qword_1ED4E7C48 = sel_mode;
  qword_1ED4E7C30 = sel_setMinimum_;
  qword_1ED4E7C38 = sel_miterLimit;
  qword_1ED4E7C20 = sel_setMinificationFilterBias_;
  qword_1ED4E7C28 = sel_minimum;
  qword_1ED4E7C10 = sel_setMinificationFilter_;
  qword_1ED4E7C18 = sel_minificationFilterBias;
  qword_1ED4E7BE0 = sel_setMeshTransform_;
  qword_1ED4E7C08 = sel_minificationFilter;
  qword_1ED4E7BD0 = sel_setMergeElements_;
  qword_1ED4E7BD8 = sel_meshTransform;
  qword_1ED4E7BC0 = sel_setMaximumTileScale_;
  qword_1ED4E7BC8 = sel_mergeElements;
  qword_1ED4E7BB0 = sel_setMaximum_;
  qword_1ED4E7BB8 = sel_maximumTileScale;
  qword_1ED4E7BA0 = sel_setMatchesTransform_;
  qword_1ED4E7BA8 = sel_maximum;
  qword_1ED4E7B90 = sel_setMatchesPosition_;
  qword_1ED4E7B98 = sel_matchesTransform;
  qword_1ED4E7B80 = sel_setMatchesOpacity_;
  qword_1ED4E7B88 = sel_matchesPosition;
  qword_1ED4E7B70 = sel_setMassRange_;
  qword_1ED4E7B78 = sel_matchesOpacity;
  qword_1ED4E7B60 = sel_setMass_;
  qword_1ED4E7B68 = sel_massRange;
  qword_1ED4E7B30 = sel_setMaskOffset_;
  qword_1ED4E7B58 = sel_mass;
  qword_1ED4E7B50 = sel_setMasksToBounds_;
  qword_1ED4E7B28 = sel_maskOffset;
  qword_1ED4E7B40 = sel_setMaskedCorners_;
  qword_1ED4E7B48 = sel_masksToBounds;
  qword_1ED4E7B20 = sel_setMask_;
  qword_1ED4E7B38 = sel_maskedCorners;
  qword_1ED4E7B10 = sel_setMarginWidth_;
  qword_1ED4E7B18 = sel_mask;
  qword_1ED4E7B00 = sel_setMargin_;
  qword_1ED4E7B08 = sel_marginWidth;
  qword_1ED4E7AF0 = sel_setMagnificationFilter_;
  qword_1ED4E7AF8 = sel_margin;
  qword_1ED4E7A80 = sel_setLumaUpdateRate_;
  qword_1ED4E7AE8 = sel_magnificationFilter;
  qword_1ED4E7A70 = sel_setLumaSubrect_;
  qword_1ED4E7A78 = sel_lumaUpdateRate;
  qword_1ED4E7A60 = sel_setLowLatency_;
  qword_1ED4E7A68 = sel_lumaSubrect;
  qword_1ED4E7A50 = sel_setLocations_;
  qword_1ED4E7A58 = sel_lowLatency;
  qword_1ED4E7A40 = sel_setLiteralContentsCenter_;
  qword_1ED4E7A48 = sel_locations;
  qword_1ED4E79E0 = sel_setLineWidth_;
  qword_1ED4E7A38 = sel_literalContentsCenter;
  qword_1ED4E79D0 = sel_setLineJoin_;
  qword_1ED4E79D8 = sel_lineWidth;
  qword_1ED4E79C0 = sel_setLineDashPhase_;
  qword_1ED4E79C8 = sel_lineJoin;
  qword_1ED4E79B0 = sel_setLineDashPattern_;
  qword_1ED4E79B8 = sel_lineDashPhase;
  qword_1ED4E79A0 = sel_setLineCap_;
  qword_1ED4E79A8 = sel_lineDashPattern;
  qword_1ED4E7940 = sel_setLifetimeRange_;
  qword_1ED4E7998 = sel_lineCap;
  qword_1ED4E7930 = sel_setLifetime_;
  qword_1ED4E7938 = sel_lifetimeRange;
  qword_1ED4E7920 = sel_setLevelsOfDetailBias_;
  qword_1ED4E7928 = sel_lifetime;
  qword_1ED4E7910 = sel_setLevelsOfDetail_;
  qword_1ED4E7918 = sel_levelsOfDetailBias;
  qword_1ED4E78F0 = sel_setLayoutManager_;
  qword_1ED4E7908 = sel_levelsOfDetail;
  qword_1ED4E78C0 = sel_setKeyTimes_;
  qword_1ED4E78E8 = sel_layoutManager;
  qword_1ED4E7880 = sel_setKeyPath_;
  qword_1ED4E78B8 = sel_keyTimes;
  qword_1ED4E7810 = sel_setKey_;
  qword_1ED4E7878 = sel_keyPath;
  qword_1ED4E77F0 = sel_setInvertsShape_;
  qword_1ED4E7808 = &sel_key;
  qword_1ED4E77E0 = sel_setInvertsShadow_;
  qword_1ED4E77E8 = sel_invertsShape;
  qword_1ED4E77D0 = sel_setInvertsMask_;
  qword_1ED4E77D8 = sel_invertsShadow;
  qword_1ED4E77C0 = sel_setInvertsContentsAreFlipped_;
  qword_1ED4E77C8 = sel_invertsMask;
  qword_1ED4E77A0 = sel_setInverseMeshed_;
  qword_1ED4E77B8 = sel_invertsContentsAreFlipped;
  qword_1ED4E7790 = sel_setInterpolations_;
  qword_1ED4E7798 = sel_isInverseMeshed;
  qword_1ED4E7780 = sel_setInstanceTransform_;
  qword_1ED4E7788 = sel_interpolations;
  qword_1ED4E7770 = sel_setInstanceRedOffset_;
  qword_1ED4E7778 = sel_instanceTransform;
  qword_1ED4E7760 = sel_setInstanceGreenOffset_;
  qword_1ED4E7768 = sel_instanceRedOffset;
  qword_1ED4E7750 = sel_setInstanceDelay_;
  qword_1ED4E7758 = sel_instanceGreenOffset;
  qword_1ED4E7740 = sel_setInstanceCount_;
  qword_1ED4E7748 = sel_instanceDelay;
  qword_1ED4E7730 = sel_setInstanceColor_;
  qword_1ED4E7738 = sel_instanceCount;
  qword_1ED4E7720 = sel_setInstanceBlueOffset_;
  qword_1ED4E7728 = sel_instanceColor;
  qword_1ED4E7710 = sel_setInstanceAlphaOffset_;
  qword_1ED4E7718 = sel_instanceBlueOffset;
  qword_1ED4E76D0 = sel_setInputTime_;
  qword_1ED4E7708 = sel_instanceAlphaOffset;
  qword_1ED4E6F60 = sel_setInheritsTiming_;
  qword_1ED4E76C8 = sel_inputTime;
  qword_1ED4E6F50 = sel_setInheritsSecurity_;
  qword_1ED4E6F58 = sel_inheritsTiming;
  qword_1ED4E6F40 = sel_setIgnoresScreenClip_;
  qword_1ED4E6F48 = sel_inheritsSecurity;
  qword_1ED4E6F30 = sel_setIgnoreAnimations_;
  qword_1ED4E6F38 = sel_ignoresScreenClip;
  qword_1ED4E6EF8 = sel_identifiers;
  qword_1ED4E6F28 = sel_ignoreAnimations;
  qword_1ED4E6EE8 = sel_identifier;
  qword_1ED4E6EF0 = sel_setIdentifier_;
  qword_1ED4E6EC8 = sel_hostingToken;
  qword_1ED4E6ED0 = sel_setHostingToken_;
  qword_1ED4E6E98 = sel_hitTestsContentsAlphaChannel;
  qword_1ED4E6EA0 = sel_setHitTestsContentsAlphaChannel_;
  qword_1ED4E6E78 = sel_hitTestsAsFill;
  qword_1ED4E6E80 = sel_setHitTestsAsFill_;
  qword_1ED4E6E88 = sel_hitTestsAsOpaque;
  qword_1ED4E6E90 = sel_setHitTestsAsOpaque_;
  qword_1ED4E6E68 = sel_highFrameRateReason;
  qword_1ED4E6E70 = sel_setHighFrameRateReason_;
  qword_1ED4E6E48 = sel_hidesSourceLayerInOtherPortals;
  qword_1ED4E6E50 = sel_setHidesSourceLayerInOtherPortals_;
  qword_1ED4E6E38 = sel_hidesSourceLayer;
  qword_1ED4E6E40 = sel_setHidesSourceLayer_;
  qword_1ED4E6E28 = sel_isHidden;
  qword_1ED4E6E30 = sel_setHidden_;
  qword_1ED4E6E18 = sel_height;
  qword_1ED4E6E20 = sel_setHeight_;
  qword_1ED4E6DF0 = sel_setGroupNamespace_;
  qword_1ED4E6E08 = sel_hash;
  qword_1ED4E6DE0 = sel_setGroupName_;
  qword_1ED4E6DE8 = sel_groupNamespace;
  qword_1ED4E6DD0 = sel_setGreenSpeed_;
  qword_1ED4E6DD8 = sel_groupName;
  qword_1ED4E6DC0 = sel_setGreenRange_;
  qword_1ED4E6DC8 = sel_greenSpeed;
  qword_1ED4E6DB0 = sel_setGradientOvalization_;
  qword_1ED4E6DB8 = sel_greenRange;
  qword_1ED4E6DA0 = sel_setGradientOffset_;
  qword_1ED4E6DA8 = sel_gradientOvalization;
  qword_1ED4E6D90 = sel_setGlyphScale_;
  qword_1ED4E6D98 = sel_gradientOffset;
  qword_1ED4E6D50 = sel_setGeometryFlipped_;
  qword_1ED4E6D88 = sel_glyphScale;
  qword_1ED4E6D40 = sel_setGaussianRadius_;
  qword_1ED4E6D48 = sel_isGeometryFlipped;
  qword_1ED4E6D20 = sel_setGain_;
  qword_1ED4E6D38 = sel_gaussianRadius;
  qword_1ED4E6D00 = sel_setFullyOccluded_;
  qword_1ED4E6D18 = sel_gain;
  qword_1ED4E6CF0 = sel_setFrozen_;
  qword_1ED4E6CF8 = sel_fullyOccluded;
  qword_1ED4E6CE0 = sel_setFromValue_;
  qword_1ED4E6CE8 = sel_isFrozen;
  qword_1ED4E6C60 = sel_setFrameInterval_;
  qword_1ED4E6CD8 = sel_fromValue;
  qword_1ED4E6C80 = sel_setFramingOptions_;
  qword_1ED4E6C58 = sel_frameInterval;
  qword_1ED4E6C50 = sel_setFrame_;
  qword_1ED4E6C78 = sel_framingOptions;
  qword_1ED4E6C40 = sel_setForegroundColor_;
  qword_1ED4E6C48 = sel_frame;
  qword_1ED4E6C10 = sel_setFontSize_;
  qword_1ED4E6C38 = sel_foregroundColor;
  qword_1ED4E6C00 = sel_setFont_;
  qword_1ED4E6C08 = sel_fontSize;
  qword_1ED4E6BF0 = sel_setFloating_;
  qword_1ED4E6BF8 = sel_font;
  qword_1ED4E6BE0 = sel_setFlipsHorizontalAxis_;
  qword_1ED4E6BE8 = sel_isFloating;
  qword_1ED4E6BC0 = sel_setFlattenMode_;
  qword_1ED4E6BD8 = sel_flipsHorizontalAxis;
  qword_1ED4E6BB0 = sel_setFilters_;
  qword_1ED4E6BB8 = sel_flattenMode;
  qword_1ED4E6BA0 = sel_setFilter_;
  qword_1ED4E6BA8 = sel_filters;
  qword_1ED4E6B60 = sel_setFillRule_;
  qword_1ED4E6B98 = sel_filter;
  qword_1ED4E6B50 = sel_setFillMode_;
  qword_1ED4E6B58 = sel_fillRule;
  qword_1ED4E6B10 = sel_setFillColor_;
  qword_1ED4E6B48 = sel_fillMode;
  qword_1ED4E6AA0 = sel_setExcludeSeparated_;
  qword_1ED4E6B08 = sel_fillColor;
  qword_1ED4E6A90 = sel_setEndProgress_;
  qword_1ED4E6A98 = sel_excludeSeparated;
  qword_1ED4E6A80 = sel_setEndPoint_;
  qword_1ED4E6A88 = sel_endProgress;
  qword_1ED4E6A70 = sel_setEndAngle_;
  qword_1ED4E6A78 = sel_endPoint;
  qword_1ED4E6A50 = sel_setEnabled_;
  qword_1ED4E6A68 = sel_endAngle;
  qword_1ED4E6A40 = sel_setEmptyLowLatency_;
  qword_1ED4E6A48 = sel_enabled;
  qword_1ED4E6A30 = sel_setEmitterZPosition_;
  qword_1ED4E6A38 = sel_emptyLowLatency;
  qword_1ED4E6A20 = sel_setEmitterSize_;
  qword_1ED4E6A28 = sel_emitterZPosition;
  qword_1ED4E6A10 = sel_setEmitterShape_;
  qword_1ED4E6A18 = sel_emitterSize;
  qword_1ED4E6A00 = sel_setEmitterRects_;
  qword_1ED4E6A08 = sel_emitterShape;
  qword_1ED4E69F0 = sel_setEmitterPosition_;
  qword_1ED4E69F8 = sel_emitterRects;
  qword_1ED4E69E0 = sel_setEmitterPath_;
  qword_1ED4E69E8 = sel_emitterPosition;
  qword_1ED4E69D0 = sel_setEmitterMode_;
  qword_1ED4E69D8 = sel_emitterPath;
  qword_1ED4E69C0 = sel_setEmitterDuration_;
  qword_1ED4E69C8 = sel_emitterMode;
  qword_1ED4E69B0 = sel_setEmitterDepth_;
  qword_1ED4E69B8 = sel_emitterDuration;
  qword_1ED4E69A0 = sel_setEmitterCells_;
  qword_1ED4E69A8 = sel_emitterDepth;
  qword_1ED4E6990 = sel_setEmitterBehaviors_;
  qword_1ED4E6998 = sel_emitterCells;
  qword_1ED4E6980 = sel_setEmissionRange_;
  qword_1ED4E6988 = sel_emitterBehaviors;
  qword_1ED4E6970 = sel_setEmissionLongitude_;
  qword_1ED4E6978 = sel_emissionRange;
  qword_1ED4E6960 = sel_setEmissionLatitude_;
  qword_1ED4E6968 = sel_emissionLongitude;
  qword_1ED4E6910 = sel_setEdgeAntialiasingMask_;
  qword_1ED4E6958 = sel_emissionLatitude;
  qword_1ED4E6950 = sel_setEffectOffset_;
  qword_1ED4E6908 = sel_edgeAntialiasingMask;
  qword_1ED4E6948 = sel_effectOffset;
  qword_1ED4E7F98 = sel_preferredFrameRateRangePreferred;
  qword_1ED4E7FA0 = sel_setPreferredFrameRateRangePreferred_;
  qword_1ED4E7FB8 = sel_preloadsCache;
  qword_1ED4E7FC0 = sel_setPreloadsCache_;
  qword_1ED4E7FC8 = sel_premultiplied;
  qword_1ED4E7FD0 = sel_setPremultiplied_;
  qword_1ED4E7FD8 = sel_presentationModifiers;
  qword_1ED4E7FE0 = sel_setPresentationModifiers_;
  qword_1ED4E7FE8 = sel_preservesDepth;
  qword_1ED4E7FF0 = sel_setPreservesDepth_;
  qword_1ED4E7FF8 = sel_preservesFlip;
  qword_1ED4E8000 = sel_setPreservesFlip_;
  qword_1ED4E8008 = sel_privacyIndicatorType;
  qword_1ED4E8010 = sel_setPrivacyIndicatorType_;
  qword_1ED4E8038 = sel_punchoutShadow;
  qword_1ED4E8040 = sel_setPunchoutShadow_;
  qword_1ED4E8068 = sel_radius;
  qword_1ED4E8070 = sel_setRadius_;
  qword_1ED4E80B8 = sel_rasterizeInParentSpace;
  qword_1ED4E80C0 = sel_setRasterizeInParentSpace_;
  qword_1ED4E8088 = sel_rasterizationPrefersDisplayCompositing;
  qword_1ED4E8090 = sel_setRasterizationPrefersDisplayCompositing_;
  qword_1ED4E8098 = sel_rasterizationPrefersWindowServerAwareBackdrops;
  qword_1ED4E80A0 = sel_setRasterizationPrefersWindowServerAwareBackdrops_;
  qword_1ED4E80A8 = sel_rasterizationScale;
  qword_1ED4E80B0 = sel_setRasterizationScale_;
  qword_1ED4E80C8 = sel_rectangle;
  qword_1ED4E80D0 = sel_setRectangle_;
  qword_1ED4E80E8 = sel_redRange;
  qword_1ED4E80F0 = sel_setRedRange_;
  qword_1ED4E80F8 = sel_redSpeed;
  qword_1ED4E8100 = sel_setRedSpeed_;
  qword_1ED4E8108 = sel_reducesCaptureBitDepth;
  qword_1ED4E8110 = sel_setReducesCaptureBitDepth_;
  qword_1ED4E8118 = sel_remoteEffects;
  qword_1ED4E8120 = sel_setRemoteEffects_;
  qword_1ED4E8128 = sel_remoteInputMachTime;
  qword_1ED4E8130 = sel_setRemoteInputMachTime_;
  qword_1ED4E8138 = sel_isRemovedOnCompletion;
  qword_1ED4E8140 = sel_setRemovedOnCompletion_;
  qword_1ED4E8158 = sel_rendersAsynchronously;
  qword_1ED4E8160 = sel_setRendersAsynchronously_;
  qword_1ED4E8148 = sel_renderMode;
  qword_1ED4E8150 = sel_setRenderMode_;
  qword_1ED4E8168 = sel_repeatCount;
  qword_1ED4E8170 = sel_setRepeatCount_;
  qword_1ED4E8178 = sel_repeatDuration;
  qword_1ED4E8180 = sel_setRepeatDuration_;
  qword_1ED4E81B8 = sel_resizesHostedContext;
  qword_1ED4E81C0 = sel_setResizesHostedContext_;
  qword_1ED4E81E8 = sel_rimColor;
  qword_1ED4E81F0 = sel_setRimColor_;
  qword_1ED4E81F8 = sel_rimOpacity;
  qword_1ED4E8200 = sel_setRimOpacity_;
  qword_1ED4E8208 = sel_rimPathIsBounds;
  qword_1ED4E8210 = sel_setRimPathIsBounds_;
  qword_1ED4E8218 = sel_rimWidth;
  qword_1ED4E8220 = sel_setRimWidth_;
  qword_1ED4E8228 = sel_rotation;
  qword_1ED4E8230 = sel_setRotation_;
  qword_1ED4E8238 = sel_rotationMode;
  qword_1ED4E8240 = sel_setRotationMode_;
  qword_1ED4E8248 = sel_rotationRange;
  qword_1ED4E8250 = sel_setRotationRange_;
  qword_1ED4E8258 = sel_roundsToInteger;
  qword_1ED4E8260 = sel_setRoundsToInteger_;
  qword_1ED4E8278 = sel_scale;
  qword_1ED4E8280 = sel_setScale_;
  qword_1ED4E8288 = sel_scaleRange;
  qword_1ED4E8290 = sel_setScaleRange_;
  qword_1ED4E8298 = sel_scaleSpeed;
  qword_1ED4E82A0 = sel_setScaleSpeed_;
  qword_1ED4E82C8 = sel_scrollMode;
  qword_1ED4E82D0 = sel_setScrollMode_;
  qword_1ED4E82E8 = sel_securityMode;
  qword_1ED4E82F0 = sel_setSecurityMode_;
  qword_1ED4E82F8 = sel_seed;
  qword_1ED4E8300 = sel_setSeed_;
  qword_1ED4E8318 = sel_separatedShadowCompositingFilter;
  qword_1ED4E8320 = sel_setSeparatedShadowCompositingFilter_;
  qword_1ED4E8328 = sel_separatedShadowReceiverCompositingFilter;
  qword_1ED4E8330 = sel_setSeparatedShadowReceiverCompositingFilter_;
  qword_1ED4E8338 = sel_separatedShadowReceiverMode;
  qword_1ED4E8340 = sel_setSeparatedShadowReceiverMode_;
  qword_1ED4E8348 = sel_separatedState;
  qword_1ED4E8350 = sel_setSeparatedState_;
  qword_1ED4E8308 = sel_separatedOptions;
  qword_1ED4E8310 = sel_setSeparatedOptions_;
  qword_1ED4E8368 = sel_sequestered;
  qword_1ED4E8370 = sel_setSequestered_;
  qword_1ED4E8378 = sel_shadowAlpha;
  qword_1ED4E8380 = sel_setShadowAlpha_;
  qword_1ED4E8388 = sel_shadowColor;
  qword_1ED4E8390 = sel_setShadowColor_;
  qword_1ED4E8398 = sel_shadowEffectOffset;
  qword_1ED4E83A0 = sel_setShadowEffectOffset_;
  qword_1ED4E83A8 = sel_shadowEffectsOnWindowMaskOnly;
  qword_1ED4E83B0 = sel_setShadowEffectsOnWindowMaskOnly_;
  qword_1ED4E83B8 = sel_shadowGradientEnd;
  qword_1ED4E83C0 = sel_setShadowGradientEnd_;
  qword_1ED4E83C8 = sel_shadowGradientStart;
  qword_1ED4E83D0 = sel_setShadowGradientStart_;
  qword_1ED4E83D8 = sel_shadowOffset;
  qword_1ED4E83E0 = sel_setShadowOffset_;
  qword_1ED4E83E8 = sel_shadowOpacity;
  qword_1ED4E83F0 = sel_setShadowOpacity_;
  qword_1ED4E83F8 = sel_shadowPath;
  qword_1ED4E8400 = sel_setShadowPath_;
  qword_1ED4E8408 = sel_shadowPathIsBounds;
  qword_1ED4E8410 = sel_setShadowPathIsBounds_;
  qword_1ED4E8418 = sel_shadowRadius;
  qword_1ED4E8420 = sel_setShadowRadius_;
  qword_1ED4E8428 = sel_sharpness;
  qword_1ED4E8430 = sel_setSharpness_;
  qword_1ED4E8438 = sel_shouldFlatten;
  qword_1ED4E8440 = sel_setShouldFlatten_;
  qword_1ED4E8448 = sel_shouldRasterize;
  qword_1ED4E8450 = sel_setShouldRasterize_;
  qword_1ED4E8458 = sel_shouldReflatten;
  qword_1ED4E8460 = sel_setShouldReflatten_;
  qword_1ED4E8498 = sel_sizeRequisition;
  qword_1ED4E84A0 = sel_setSizeRequisition_;
  qword_1ED4E84A8 = sel_skipHitTesting;
  qword_1ED4E84B0 = sel_setSkipHitTesting_;
  qword_1ED4E84B8 = sel_smartFlatten;
  qword_1ED4E84C0 = sel_setSmartFlatten_;
  qword_1ED4E84C8 = sel_smoothness;
  qword_1ED4E84D0 = sel_setSmoothness_;
  qword_1ED4E84E8 = sel_softRim;
  qword_1ED4E84F0 = sel_setSoftRim_;
  qword_1ED4E84F8 = sel_sortsSublayers;
  qword_1ED4E8500 = sel_setSortsSublayers_;
  qword_1ED4E8518 = sel_sourceContextId;
  qword_1ED4E8520 = sel_setSourceContextId_;
  qword_1ED4E8538 = sel_sourceLayer;
  qword_1ED4E8540 = sel_setSourceLayer_;
  qword_1ED4E8548 = sel_sourceLayerOpacityScale;
  qword_1ED4E8550 = sel_setSourceLayerOpacityScale_;
  qword_1ED4E8558 = sel_sourceLayerRenderId;
  qword_1ED4E8560 = sel_setSourceLayerRenderId_;
  qword_1ED4E8588 = sel_sourcePoints;
  qword_1ED4E8590 = sel_setSourcePoints_;
  qword_1ED4E8598 = sel_speed;
  qword_1ED4E85A0 = sel_setSpeed_;
  qword_1ED4E85B8 = sel_spin;
  qword_1ED4E85C0 = sel_setSpin_;
  qword_1ED4E85C8 = sel_spinBias;
  qword_1ED4E85D0 = sel_setSpinBias_;
  qword_1ED4E85D8 = sel_spinRange;
  qword_1ED4E85E0 = sel_setSpinRange_;
  qword_1ED4E85F8 = sel_spread;
  qword_1ED4E8600 = sel_setSpread_;
  qword_1ED4E8648 = sel_startAngle;
  qword_1ED4E8650 = sel_setStartAngle_;
  qword_1ED4E8658 = sel_startPoint;
  qword_1ED4E8660 = sel_setStartPoint_;
  qword_1ED4E8668 = sel_startProgress;
  qword_1ED4E8670 = sel_setStartProgress_;
  qword_1ED4E8678 = sel_stiffness;
  qword_1ED4E8680 = sel_setStiffness_;
  qword_1ED4E8688 = sel_stopsHitTestTransformAccumulation;
  qword_1ED4E8690 = sel_setStopsHitTestTransformAccumulation_;
  qword_1ED4E8698 = sel_stopsSecureSuperlayersValidation;
  qword_1ED4E86A0 = sel_setStopsSecureSuperlayersValidation_;
  qword_1ED4E86A8 = sel_string;
  qword_1ED4E86B0 = sel_setString_;
  qword_1ED4E86B8 = sel_strokeColor;
  qword_1ED4E86C0 = sel_setStrokeColor_;
  qword_1ED4E86C8 = sel_strokeEnd;
  qword_1ED4E86D0 = sel_setStrokeEnd_;
  qword_1ED4E86D8 = sel_strokeStart;
  qword_1ED4E86E0 = sel_setStrokeStart_;
  qword_1ED4E86E8 = sel_style;
  qword_1ED4E86F0 = sel_setStyle_;
  qword_1ED4E86F8 = sel_sublayerTransform;
  qword_1ED4E8700 = sel_setSublayerTransform_;
  qword_1ED4E8708 = sel_sublayers;
  qword_1ED4E8710 = sel_setSublayers_;
  qword_1ED4E8758 = sel_subtype;
  qword_1ED4E8760 = sel_setSubtype_;
  qword_1ED4E8768 = sel_superlayer;
  qword_1ED4E8778 = sel_surface;
  qword_1ED4E8780 = sel_setSurface_;
  qword_1ED4E8788 = sel_targetsSuperlayer;
  qword_1ED4E8790 = sel_setTargetsSuperlayer_;
  qword_1ED4E8798 = sel_tensionValues;
  qword_1ED4E87A0 = sel_setTensionValues_;
  qword_1ED4E87A8 = sel_tileSize;
  qword_1ED4E87B0 = sel_setTileSize_;
  qword_1ED4E87B8 = sel_timeOffset;
  qword_1ED4E87C0 = sel_setTimeOffset_;
  qword_1ED4E87C8 = sel_timingFunction;
  qword_1ED4E87D0 = sel_setTimingFunction_;
  qword_1ED4E87D8 = sel_timingFunctions;
  qword_1ED4E87E0 = sel_setTimingFunctions_;
  qword_1ED4E87E8 = sel_toValue;
  qword_1ED4E87F0 = sel_setToValue_;
  qword_1ED4E87F8 = sel_toneMapMode;
  qword_1ED4E8800 = sel_setToneMapMode_;
  qword_1ED4E8808 = sel_toneMapToStandardDynamicRange;
  qword_1ED4E8810 = sel_setToneMapToStandardDynamicRange_;
  qword_1ED4E8848 = sel_tracksLuma;
  qword_1ED4E8850 = sel_setTracksLuma_;
  qword_1ED4E8858 = sel_tracksLumaWhileHidden;
  qword_1ED4E8860 = sel_setTracksLumaWhileHidden_;
  qword_1ED4E8868 = sel_transform;
  qword_1ED4E8870 = sel_setTransform_;
  qword_1ED4E8878 = sel_transformsToScreenSpace;
  qword_1ED4E8880 = sel_setTransformsToScreenSpace_;
  qword_1ED4E8898 = sel_transitionFlags;
  qword_1ED4E88A0 = sel_setTransitionFlags_;
  qword_1ED4E88B8 = sel_treatRec709AsSRGB;
  qword_1ED4E88C0 = sel_setTreatRec709AsSRGB_;
  qword_1ED4E88D8 = sel_truncationMode;
  qword_1ED4E88E0 = sel_setTruncationMode_;
  qword_1ED4E88E8 = sel_truncationString;
  qword_1ED4E88F0 = sel_setTruncationString_;
  qword_1ED4E88F8 = sel_type;
  qword_1ED4E8900 = sel_setType_;
  qword_1ED4E8918 = sel_updateDeadline;
  qword_1ED4E8920 = sel_setUpdateDeadline_;
  qword_1ED4E8928 = sel_updateInterval;
  qword_1ED4E8930 = sel_setUpdateInterval_;
  qword_1ED4E8938 = sel_updateRate;
  qword_1ED4E8940 = sel_setUpdateRate_;
  qword_1ED4E8948 = sel_usesNormalizedCoordinates;
  qword_1ED4E8950 = sel_setUsesNormalizedCoordinates_;
  qword_1ED4E8958 = sel_usesWebKitBehavior;
  qword_1ED4E8960 = sel_setUsesWebKitBehavior_;
  qword_1ED4E8968 = sel_value;
  qword_1ED4E8970 = sel_setValue_;
  qword_1ED4E8978 = sel_valueFunction;
  qword_1ED4E8980 = sel_setValueFunction_;
  qword_1ED4E89A8 = sel_values;
  qword_1ED4E89B0 = sel_setValues_;
  qword_1ED4E89C8 = sel_velocity;
  qword_1ED4E89D0 = sel_setVelocity_;
  qword_1ED4E89D8 = sel_velocityRange;
  qword_1ED4E89E0 = sel_setVelocityRange_;
  qword_1ED4E8A98 = sel_wantsExtendedDynamicRangeContent;
  qword_1ED4E8AA0 = sel_setWantsExtendedDynamicRangeContent_;
  qword_1ED4E8AB8 = sel_width;
  qword_1ED4E8AC0 = sel_setWidth_;
  qword_1ED4E8AD8 = sel_isWrapped;
  qword_1ED4E8AE0 = sel_setWrapped_;
  qword_1ED4E8AF8 = sel_xAcceleration;
  qword_1ED4E8B00 = sel_setXAcceleration_;
  qword_1ED4E8B38 = sel_yAcceleration;
  qword_1ED4E8B40 = sel_setYAcceleration_;
  qword_1ED4E8B58 = sel_zAcceleration;
  qword_1ED4E8B60 = sel_setZAcceleration_;
  qword_1ED4E8B68 = sel_zPosition;
  qword_1ED4E8B70 = sel_setZPosition_;
  qword_1ED4E8B78 = sel_zombificationMode;
  qword_1ED4E8B80 = sel_setZombificationMode_;
  qword_1ED4E8B88 = sel_zoom;
  qword_1ED4E8B90 = sel_setZoom_;
}

uint64_t get_cg_name(int a1)
{
  {
    v17 = a1;
    a1 = v17;
    if (v2)
    {
      v3 = *MEMORY[0x1E695F1C8];
      get_cg_name(CAColorSpaceName)::named_cg_colorspaces[0] = 0;
      unk_1ED4E56F0 = v3;
      v4 = *MEMORY[0x1E695F128];
      qword_1ED4E56F8 = *MEMORY[0x1E695F1D0];
      unk_1ED4E5700 = v4;
      v5 = *MEMORY[0x1E695F118];
      qword_1ED4E5708 = *MEMORY[0x1E695F0E0];
      unk_1ED4E5710 = v5;
      v6 = *MEMORY[0x1E695F0D8];
      qword_1ED4E5718 = *MEMORY[0x1E695F0B8];
      unk_1ED4E5720 = v6;
      v7 = *MEMORY[0x1E695F0C8];
      qword_1ED4E5728 = *MEMORY[0x1E695F0C0];
      unk_1ED4E5730 = v7;
      v8 = *MEMORY[0x1E695F150];
      qword_1ED4E5738 = *MEMORY[0x1E695F0B0];
      unk_1ED4E5740 = v8;
      v9 = *MEMORY[0x1E695F1A8];
      qword_1ED4E5748 = *MEMORY[0x1E695F0E8];
      unk_1ED4E5750 = v9;
      qword_1ED4E5758 = *MEMORY[0x1E695F100];
      unk_1ED4E5760 = 0;
      v10 = *MEMORY[0x1E695F170];
      qword_1ED4E5768 = 0;
      unk_1ED4E5770 = v10;
      v11 = *MEMORY[0x1E695F168];
      qword_1ED4E5778 = *MEMORY[0x1E695F178];
      unk_1ED4E5780 = v11;
      v12 = *MEMORY[0x1E695F0F0];
      qword_1ED4E5788 = *MEMORY[0x1E695F198];
      unk_1ED4E5790 = v12;
      qword_1ED4E5798 = 0;
      unk_1ED4E57A0 = 0;
      v13 = *MEMORY[0x1E695F190];
      qword_1ED4E57A8 = *MEMORY[0x1E695F180];
      unk_1ED4E57B0 = v13;
      xmmword_1ED4E57B8 = 0u;
      unk_1ED4E57C8 = 0u;
      xmmword_1ED4E57D8 = 0u;
      v14 = *MEMORY[0x1E695F108];
      qword_1ED4E57E8 = 0;
      unk_1ED4E57F0 = v14;
      v15 = *MEMORY[0x1E695F110];
      qword_1ED4E57F8 = 0;
      unk_1ED4E5800 = v15;
      v16 = *MEMORY[0x1E695F148];
      qword_1ED4E5808 = *MEMORY[0x1E695F1C0];
      unk_1ED4E5810 = v16;
      a1 = v17;
    }
  }

  return get_cg_name(CAColorSpaceName)::named_cg_colorspaces[a1];
}

double CAValueObjCUnbox(void *a1, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      goto LABEL_2;
    case 6:
      v8 = [a1 BOOLValue];
      goto LABEL_18;
    case 7:
      v8 = [a1 charValue];
      goto LABEL_18;
    case 8:
      v8 = [a1 unsignedCharValue];
LABEL_18:
      *a3 = v8;
      return result;
    case 9:
      v7 = [a1 shortValue];
      goto LABEL_22;
    case 10:
      v7 = [a1 unsignedShortValue];
LABEL_22:
      *a3 = v7;
      return result;
    case 11:
      v6 = [a1 intValue];
      goto LABEL_20;
    case 12:
      v6 = [a1 unsignedIntValue];
LABEL_20:
      *a3 = v6;
      return result;
    case 13:
      a1 = [a1 longValue];
      goto LABEL_2;
    case 14:
      a1 = [a1 unsignedLongValue];
      goto LABEL_2;
    case 15:
      a1 = [a1 longLongValue];
      goto LABEL_2;
    case 16:
      a1 = [a1 unsignedLongLongValue];
LABEL_2:
      *a3 = a1;
      return result;
    case 17:
      [a1 floatValue];
      *a3 = LODWORD(result);
      return result;
    case 18:
      [a1 doubleValue];
      *a3 = result;
      return result;
    case 19:
    case 20:
      v4 = 16;
      goto LABEL_26;
    case 21:
      v4 = 32;
      goto LABEL_26;
    case 22:
      v4 = 128;
      goto LABEL_26;
    case 23:
      if (a1)
      {
        [a1 CA_CGAffineTransformValue];
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
        v9 = 0u;
      }

      *a3 = v9;
      *(a3 + 16) = v10;
      result = *&v11;
      *(a3 + 32) = v11;
      return result;
    case 24:
      v4 = 24;
      goto LABEL_26;
    case 25:
      v4 = 64;
LABEL_26:

      [a1 getValue:a3 size:v4];
      break;
    default:
      return result;
  }

  return result;
}

const char *CA::Transaction::init(CA::Transaction *this)
{
  pthread_key_init_np();
  v1 = getenv("CA_DEBUG_TRANSACTIONS");
  if (v1)
  {
    CA::Transaction::_debug_transactions = atoi(v1) != 0;
  }

  result = getenv("CA_ASSERT_MAIN_THREAD_TRANSACTIONS");
  if (result)
  {
    result = atoi(result);
    CA::Transaction::_assert_transactions = result != 0;
  }

  return result;
}

uint64_t CA::Layer::State::fetch_defaults(uint64_t a1, CA::Transaction *a2, void (*a3)(uint64_t, uint64_t, uint64_t, CFTypeRef *), uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v58 = 0u;
  memset(&v59, 0, sizeof(v59));
  v57 = 0u;
  v55 = 0.0;
  v56 = 0.0;
  v54 = 0.0;
  v53 = 0u;
  memset(&v52, 0, sizeof(v52));
  cf1 = 0;
  v51 = 0;
  a3(a4, 692, 1, &cf1);
  if (cf1)
  {
    *(a1 + 16) |= 0x20000u;
    v8 = 0x1FFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  a3(a4, 539, 17, (&v51 + 4));
  v9.n128_u32[0] = HIDWORD(v51);
  if (*(&v51 + 1) != 1.0)
  {
    *(a1 + 16) |= 0x10u;
    v8 = v8 | 8;
  }

  (a3)(a4, 716, 22, v60, v9);
  v10.n128_u64[0] = *&v60[0];
  if (*v60 == 1.0)
  {
    v41 = 1;
    while (v41 != 16)
    {
      v42 = v41;
      v10.n128_u64[0] = *(v60 + v41);
      v43 = *(&CATransform3DIdentity.m11 + v41++);
      if (v10.n128_f64[0] != v43)
      {
        if ((v42 - 1) <= 0xE)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  else
  {
LABEL_7:
    *(a1 + 16) |= 0x20u;
    v8 = v8 | 0x20;
  }

  (a3)(a4, 693, 22, v60, v10);
  v11.n128_u64[0] = *&v60[0];
  if (*v60 == 1.0)
  {
    v44 = 1;
    while (v44 != 16)
    {
      v45 = v44;
      v11.n128_u64[0] = *(v60 + v44);
      v46 = *(&CATransform3DIdentity.m11 + v44++);
      if (v11.n128_f64[0] != v46)
      {
        if ((v45 - 1) <= 0xE)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  else
  {
LABEL_9:
    *(a1 + 16) |= 0x40u;
    v8 = v8 | 0x40;
  }

  (a3)(a4, 154, 23, &v59, v11);
  v48 = v59;
  if (!CGAffineTransformIsIdentity(&v48))
  {
    *(a1 + 16) |= 0x400u;
    v8 = v8 | 0x80;
  }

  a3(a4, 150, 21, &v57);
  __asm { FMOV            V2.2D, #1.0 }

  v47 = _Q2;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v57), vceqq_f64(v58, _Q2))))))
  {
    *(a1 + 16) |= 0x100u;
    v8 = v8 | 0x100;
  }

  a3(a4, 134, 21, &v57);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v57), vceqq_f64(v58, v47))))))
  {
    *(a1 + 16) |= 0x80u;
    v8 = v8 | 0x20000;
  }

  a3(a4, 151, 18, &v54);
  v16.n128_f64[0] = v54;
  if (v54 != 1.0)
  {
    *(a1 + 16) |= 0x200u;
    v8 = v8 | 0x10;
    if (v16.n128_f64[0] == 2.0 || v16.n128_f64[0] == 3.0)
    {
      *(a1 + 4) = *(a1 + 4) & 0xF3FFFFFF | ((v16.n128_f64[0] & 3) << 26);
    }
  }

  (a3)(a4, 160, 21, &v57, v16);
  __asm { FMOV            V2.2D, #0.5 }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v57, _Q2), vceqzq_f64(v58))))))
  {
    *(a1 + 16) |= 0x800u;
    v8 = v8 | 0x80000;
  }

  a3(a4, 33, 19, &v55);
  v18.n128_f64[0] = v55;
  if (v55 != 0.5 || v56 != 0.5)
  {
    if (v56 == 0.0 && v55 == 0.0)
    {
      v20 = 12288;
    }

    else
    {
      v20 = 4096;
    }

    *(a1 + 16) |= v20;
    v8 = v8 | 0x10;
  }

  (a3)(a4, 34, 18, &v54, v18);
  v21.n128_f64[0] = v54;
  if (v54 != 0.0)
  {
    *(a1 + 16) |= 0x4000u;
    v8 = v8 | 0x10;
  }

  (a3)(a4, 764, 18, &v54, v21);
  v22.n128_f64[0] = v54;
  if (v54 != 0.0)
  {
    *(a1 + 16) |= 0x8000u;
    v8 = v8 | 8;
  }

  (a3)(a4, 163, 25, &v52, v22);
  v48 = v52;
  v49 = v53;
  if (!CACornerRadiiEqualToRadii(&v48.a, CACornerRadiiZero))
  {
    *(a1 + 20) |= 4u;
    v8 = v8 | 0x8000;
  }

  v23 = *(a1 + 16);
  if ((v23 & 0x40000000) == 0)
  {
    v48.a = 0.0;
    a3(a4, 182, 4, &v48);
    CA::Layer::State::set_delegate(a1, a2, *&v48.a, 1);
    v23 = *(a1 + 16);
  }

  if ((v23 & 0x80000000) == 0)
  {
    v25 = (a1 + 104);
    v24 = *(a1 + 104);
    if (v24)
    {
      CA::Transaction::release_object(a2, v24);
    }

    a3(a4, 131, 1, (a1 + 104));
    if (*v25)
    {
      CFRetain(*v25);
      v8 = v8 | 1;
    }
  }

  v26 = *(a1 + 20);
  if ((v26 & 1) == 0)
  {
    a3(a4, 139, 1, &cf1);
    *(a1 + 4) = *(a1 + 4) & 0xFFFFFFF8 | CA::Render::Layer::contents_format_from_string(cf1, v27);
    v26 = *(a1 + 20);
  }

  if ((v26 & 2) == 0)
  {
    a3(a4, 144, 1, &cf1);
    *(a1 + 4) = *(a1 + 4) & 0xFFFFFF87 | (8 * CA::Render::Layer::gravity_from_string(cf1, v28));
    v8 = v8 | 0x8000;
    v26 = *(a1 + 20);
  }

  v29 = (a1 + 4);
  if ((v26 & 8) == 0)
  {
    a3(a4, 214, 12, &v51);
    *v29 = *v29 & 0xFFFFF87F | ((v51 & 0xF) << 7);
    v8 = v8 | 0x8000;
  }

  v30 = *(a1 + 24);
  if ((v30 & 0x1000000) != 0)
  {
    if ((v30 & 0x2000000) != 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    a3(a4, 505, 12, &v51);
    *(a1 + 4) = *(a1 + 4) & 0xFFFF87FF | ((v51 & 0xF) << 11);
    v8 = v8 | 0x8000;
    v30 = *(a1 + 24);
    if ((v30 & 0x2000000) != 0)
    {
LABEL_52:
      if ((v30 & 0x4000000) != 0)
      {
        goto LABEL_53;
      }

LABEL_73:
      a3(a4, 628, 12, &v51);
      *(a1 + 4) = *(a1 + 4) & 0x3FFFFFFF | (v51 << 30);
      v8 = v8 | 0x8000;
      if ((*(a1 + 24) & 0x8000) != 0)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    }
  }

  a3(a4, 199, 12, &v51);
  *(a1 + 4) = *(a1 + 4) & 0xFC007FFF | ((v51 & 0x7FF) << 15);
  v8 = v8 | 0x8000;
  v30 = *(a1 + 24);
  if ((v30 & 0x4000000) == 0)
  {
    goto LABEL_73;
  }

LABEL_53:
  if ((v30 & 0x8000) != 0)
  {
    goto LABEL_58;
  }

LABEL_54:
  a3(a4, 152, 1, &cf1);
  if ([cf1 isEqualToString:@"repeat"])
  {
    v31 = 0x10000;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 12) = *(a1 + 12) & 0xFFFEFFFF | v31;
  v8 = v8 | 0x8000;
LABEL_58:
  v32 = *(a1 + 20);
  if ((v32 & 0x2000) == 0)
  {
    a3(a4, 709, 12, &v51);
    *(a1 + 8) = *(a1 + 8) & 0xFFFFFFE7 | (8 * (v51 & 3));
    v8 = v8 | 0x8000;
    v32 = *(a1 + 20);
  }

  if ((v32 & 0x4000) == 0)
  {
    a3(a4, 572, 12, &v51);
    *(a1 + 8) = *(a1 + 8) & 0xFFFFFF9F | (32 * (v51 & 3));
    v8 = v8 | 0x8000;
  }

  v33 = &byte_1E6DF6DC0;
  v34 = 52;
  do
  {
    if (((v29[*(v33 - 5) >> 5] >> *(v33 - 5)) & 1) == 0)
    {
      a3(a4, *(v33 - 2), 7, &v61);
      v35 = *(v33 - 6);
      v36 = v61;
      v37 = v35 >> 5;
      v38 = 1 << v35;
      if (v61 == 1)
      {
        v39 = v29[v37] | v38;
      }

      else
      {
        v39 = v29[v37] & ~v38;
      }

      v29[v37] = v39;
      if (v36 != *v33)
      {
        v8 = *(v33 - 1) | v8;
      }
    }

    v33 += 32;
    --v34;
  }

  while (v34);
  return v8;
}

void ___Z16CAPrefers60HzAPTv_block_invoke()
{
  if (enable_frame_rate_features(void)::once != -1)
  {
    dispatch_once(&enable_frame_rate_features(void)::once, &__block_literal_global_9_18950);
  }

  if (enable_frame_rate_features(void)::enabled == 1)
  {
    v0 = CADevicePrefers60HzAPT();
  }

  else
  {
    v0 = 0;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9710 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = v0;
  }

  if (*&dword_1ED4E9710 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  CAPrefers60HzAPT(void)::enabled = v2;
}

uint64_t CA::Display::MaxEarlyWakeupOffset(CA::Display *this)
{
  {
    CA::Display::MaxEarlyWakeupOffset(void)::ret = CAHostTimeWithTime(0.004);
  }

  {
    CA::Display::MaxEarlyWakeupOffset(void)::ret_apt = CAHostTimeWithTime(0.001);
  }

  if (CADeviceSupportsAPT::once != -1)
  {
    dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
  }

  if (CADeviceSupportsAPT::supports_apt)
  {
    v1 = &CA::Display::MaxEarlyWakeupOffset(void)::ret_apt;
  }

  else
  {
    v1 = &CA::Display::MaxEarlyWakeupOffset(void)::ret;
  }

  return *v1;
}

float CADisplayGetPotentialHeadroom(uint32_t a1)
{
  pthread_mutex_lock(&_edr_states_lock);
  v2 = edr_state_for_display(a1);
  v3 = v2;
  if (v2)
  {
    os_unfair_lock_lock(v2 + 1);
    v4 = *&v3[4]._os_unfair_lock_opaque;
    if (v4)
    {
      v5 = atomic_load((v4 + 4));
      v6 = *&v5;
    }

    else
    {
      v6 = 1.0;
    }

    os_unfair_lock_unlock(v3 + 1);
  }

  else
  {
    v6 = 1.0;
  }

  pthread_mutex_unlock(&_edr_states_lock);
  return v6;
}

os_unfair_lock_s *edr_state_for_display(uint32_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!_edr_states)
  {
    operator new();
  }

  for (i = *_edr_states; i != *(_edr_states + 8); ++i)
  {
    v3 = *i;
    if ((*i)->_os_unfair_lock_opaque == a1)
    {
      return v3;
    }
  }

  ServerPort = CARenderServerGetServerPort(0);
  if (!ServerPort)
  {
    return 0;
  }

  v5 = ServerPort;
  if (!a1)
  {
LABEL_20:
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
    return 0;
  }

  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a1;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = v5;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D2900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = *&msg_4[8];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x24u, 0x40u, v7, 0, 0);
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
    goto LABEL_20;
  }

  if (v8)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
    goto LABEL_20;
  }

  if (*&msg_4[16] != 40333 || (msg & 0x80000000) == 0 || *&msg_4[20] != 1 || *msg_4 != 56 || *&msg_4[4] || *&msg_4[34] << 16 != 1114112)
  {
    mach_msg_destroy(&msg);
    goto LABEL_20;
  }

  v10 = *&msg_4[24];
  if (!*&msg_4[24] || !*&msg_4[44])
  {
    goto LABEL_20;
  }

  v11 = CA::Render::Shmem::new_shmem(*&msg_4[24], *&msg_4[44], 0, 3);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v12 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0xDEEC3011uLL);
  if (!v12 || (v3 = v12, v12->_os_unfair_lock_opaque = a1, v12[1]._os_unfair_lock_opaque = 0, v13 = v12 + 1, *&v12[2]._os_unfair_lock_opaque = 0, !v11))
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v10);
    goto LABEL_20;
  }

  os_unfair_lock_lock(v12 + 1);
  v14 = *&v3[2]._os_unfair_lock_opaque;
  if (v14)
  {
    *&v3[2]._os_unfair_lock_opaque = 0;
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 16))(v14);
    }

    *&v3[4]._os_unfair_lock_opaque = 0;
    v15 = *&v3[2]._os_unfair_lock_opaque;
    if (v15 == v11)
    {
      goto LABEL_43;
    }

    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }
  }

  v16 = v11 + 2;
  if (!atomic_fetch_add(v11 + 2, 1u))
  {
    v11 = 0;
    atomic_fetch_add(v16, 0xFFFFFFFF);
  }

  *&v3[2]._os_unfair_lock_opaque = v11;
  v15 = v11;
LABEL_43:
  *&v3[4]._os_unfair_lock_opaque = *(v15 + 3);
  os_unfair_lock_unlock(v13);
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
  v17 = _edr_states;
  v19 = *(_edr_states + 8);
  v18 = *(_edr_states + 16);
  if (v19 >= v18)
  {
    v21 = *_edr_states;
    v22 = v19 - *_edr_states;
    v23 = v22 >> 3;
    v24 = (v22 >> 3) + 1;
    if (v24 >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v25 = v18 - v21;
    if (v25 >> 2 > v24)
    {
      v24 = v25 >> 2;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v24;
    }

    if (v26)
    {
      if (!(v26 >> 61))
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    *(8 * v23) = v3;
    v20 = 8 * v23 + 8;
    memcpy(0, v21, v22);
    *v17 = 0;
    v17[1] = v20;
    v17[2] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v19 = v3;
    v20 = (v19 + 1);
  }

  v17[1] = v20;
  return v3;
}

void _XGetDisplayEDRState(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
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

  *(a2 + 32) = 0x13000000000000;
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v11[0] = *(a1 + 56);
  v11[1] = v5;
  if ((CA::Render::Server::audit_token_cache_lookup(v11, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v11, v6) & 0x20000) != 0)
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  v9[0] = 0;
  object_handle = 0;
  v9[1] = v4;
  CA::Render::post_notification(0x1Cu, 0, v9, 0);
  if (LOBYTE(v9[0]) != 1)
  {
    v3 = 56;
    goto LABEL_7;
  }

  if (object_handle)
  {
    v7 = CA::Render::Shmem::port(object_handle);
    v8 = object_handle;
    *(a2 + 28) = v7;
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
}

uint64_t CA::Render::Server::audit_token_cache_lookup(CA::Render::Server *this, const audit_token_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::Server::_audit_token_lock);
  v3 = CA::Render::Server::_audit_token_cache;
  if (CA::Render::Server::_audit_token_cache)
  {
    v4 = 0;
    v5 = CA::Render::Server::_audit_token_cache;
    do
    {
      v6 = *v5;
      if (*(*v5 + 20) == *(this + 5))
      {
        v7 = *v6 == *this && *(v6 + 8) == *(this + 1);
        v8 = v7 && *(v6 + 16) == *(this + 2);
        if (v8 && *(v6 + 24) == *(this + 3))
        {
          x_list_remove(CA::Render::Server::_audit_token_cache, *v5);
          CA::Render::Server::_audit_token_cache = v3;
          goto LABEL_37;
        }
      }

      v5 = v5[1];
      ++v4;
    }

    while (v5);
    if (v4 < 0x10)
    {
      goto LABEL_19;
    }

    v10 = CA::Render::Server::_audit_token_cache;
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
    }

    while (v10);
    v6 = *v11;
    x_list_remove(CA::Render::Server::_audit_token_cache, *v11);
    CA::Render::Server::_audit_token_cache = v3;
  }

  else
  {
LABEL_19:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v6 = malloc_type_zone_malloc(malloc_zone, 0x24uLL, 0x10000408AA14F5FuLL);
  }

  v12 = *(this + 1);
  *v6 = *this;
  *(v6 + 16) = v12;
  v13 = *(this + 1);
  *v25.val = *this;
  *&v25.val[4] = v13;
  v14 = SecTaskCreateWithAuditToken(0, &v25);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = SecTaskCopyValueForEntitlement(v15, CA::Render::Server::entitlements_for_audit_token(audit_token_t const&)::str[v16], 0);
      if (v18)
      {
        v19 = v18;
        v17 |= CA_CFBoolValue(v18) << v16;
        CFRelease(v19);
      }

      ++v16;
    }

    while (v16 != 17);
    v20 = 0;
    v21 = 1;
    while (1)
    {
      v22 = SecTaskCopyValueForEntitlement(v15, CA::Render::Server::has_restricted_client_entitlement(__SecTask *)::entitlements[v20], 0);
      if (v22)
      {
        break;
      }

      v21 = v20++ < 2;
      if (v20 == 3)
      {
        goto LABEL_34;
      }
    }

    CFRelease(v22);
    if (v21)
    {
      v17 |= 0x20000u;
    }

LABEL_34:
    CFRelease(v15);
  }

  else
  {
    v17 = 0;
  }

  *(v6 + 32) = v17;
  v3 = CA::Render::Server::_audit_token_cache;
LABEL_37:
  CA::Render::Server::_audit_token_cache = x_list_prepend(v3, v6);
  v23 = *(v6 + 32);
  os_unfair_lock_unlock(&CA::Render::Server::_audit_token_lock);
  return v23;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> x_list_remove(uint64_t *ptr, uint64_t a2)
{
  if (ptr)
  {
    v3 = ptr;
    v4 = &v5;
    do
    {
      if (*v3 == a2)
      {
        *v4 = v3[1];
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v3);
      }

      else
      {
        v4 = v3 + 1;
      }

      v3 = *v4;
    }

    while (*v4);
  }
}

_DWORD *CA::WindowServer::Server::get_display_edr_state(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v4 = *(a2 + 12);
  if (*(a3 + 1) == *(v4 + 24))
  {
    *a3 = 1;
    result = CA::WindowServer::Display::initialize_edr_state(v4);
    a3[1] = *(v4 + 696);
  }

  return result;
}

_DWORD *CA::WindowServer::Display::initialize_edr_state(_DWORD *this)
{
  if (!*(this + 87))
  {
    v1 = this;
    this = CA::Render::Shmem::new_shmem(0xC);
    *(v1 + 87) = this;
    v2 = *(this + 3);
    v2[2] = 0;
    *v2 = 0;
    *(v1 + 88) = v2;
    atomic_store(0x3F800000u, v2);
    atomic_store(0x3F800000u, (*(v1 + 88) + 4));
    atomic_store(0x3F800000u, (*(v1 + 88) + 8));
  }

  return this;
}

uint64_t ___ZN2CA19IOMobileFramebuffer10set_matrixE20IOMFB_MatrixLocationPA3_A3_Ky_block_invoke(uint64_t a1)
{
  result = IOMobileFramebufferSetMatrix();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

_DWORD *CA::Render::Encoder::encode_data_async(CA::Render::Encoder *this, const void *__src, size_t a3, uint64_t (*a4)(const void *, void *), void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a3))
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

      v14 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v17 = a3;
        _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "CoreAnimation: Cannot send %zu bytes to the server. This exceeds mach ool capabilities!", buf, 0xCu);
      }

      abort();
    }
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  v11 = v9 + 1;
  if (*MEMORY[0x1E69E9AC8] <= a3)
  {
    if (v11 > v10)
    {
      CA::Render::Encoder::grow(this, 8);
      v9 = *(this + 4);
    }

    *v9 = -1;
    *(this + 4) += 8;
    result = x_heap_malloc_small_(*(this + 1), 0x30uLL);
    result[2] = 1;
    *(result + 2) = __src;
    *(result + 3) = a3;
    *(result + 4) = a4;
    *(result + 5) = a5;
    v13 = *(this + 7);
    *result = *(this + 6);
    *(this + 6) = result;
    *(this + 7) = v13 + 1;
  }

  else
  {
    if (v11 > v10)
    {
      CA::Render::Encoder::grow(this, 8);
      v9 = *(this + 4);
    }

    *v9 = a3;
    result = (*(this + 4) + 8);
    *(this + 4) = result;
    if (a3)
    {
      if (result + a3 > *(this + 5))
      {
        CA::Render::Encoder::grow(this, a3);
        result = *(this + 4);
      }

      result = memcpy(result, __src, a3);
      *(this + 4) += a3;
    }

    if (a4)
    {

      return a4(__src, a5);
    }
  }

  return result;
}

void CA::Render::Image::release_data(atomic_uint *this)
{
  if (atomic_fetch_add(this + 41, 0xFFFFFFFF) == 1)
  {
    CA::Render::Image::~Image(this);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v3 = malloc_zone;

    malloc_zone_free(v3, this);
  }
}

void CA::Layer::mark_context_changed(atomic_uint *this, CA::Transaction **a2)
{
  atomic_fetch_or(this + 1, 0x2000000u);
  this[10] |= 0x1FFFFFu;
  if (this[66])
  {
    if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
    {
      dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
    }

    if (this)
    {
      v4 = this + CA::Render::_render_id_slide;
    }

    else
    {
      v4 = 0;
    }

    CA::Transaction::add_deleted_id(a2[15], v4, this[66], 0);
    this[66] = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {
    v6 = v5 + 1;
    v7 = v5[2];
    if (v7 == 1)
    {
      if (!v5[3])
      {
        do
        {
LABEL_14:
          v8 = *v6++;
          CA::Layer::mark_context_changed(*(v8 + 16), a2);
          --v7;
        }

        while (v7);
        goto LABEL_15;
      }
    }

    else if (!v7)
    {
      goto LABEL_15;
    }

    v6 = *v6;
    goto LABEL_14;
  }

LABEL_15:
  v9 = *(this + 4);
  if (v9)
  {
    CA::Layer::mark_context_changed(*(v9 + 16), a2);
  }

  for (i = *(this + 35); i; i = *i)
  {
    *(i + 11) = 0;
  }
}

void CA::Mat4Impl::mat4_mix(CA::Mat4Impl *this, CA::Mat4Impl *a2, double *a3, const double *a4, double a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (CA::Mat4Impl::mat4_is_affine(a2, a2) && CA::Mat4Impl::mat4_is_affine(a3, v9))
  {
    v11 = *(a2 + 2);
    v18[0] = *a2;
    v18[1] = v11;
    v18[2] = *(a2 + 6);
    v12 = *(a3 + 2);
    v17[0] = *a3;
    v17[1] = v12;
    v17[2] = *(a3 + 6);
    CA::Mat2Impl::mat2_mix(v16, v18, v17, v10, a5);
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0u;
    *(this + 5) = xmmword_183E20E00;
    v13 = v16[1];
    *this = v16[0];
    *(this + 2) = v13;
    *(this + 3) = 0u;
    *(this + 6) = v16[2];
    *(this + 7) = xmmword_183E20E60;
  }

  else
  {
    CA::Mat4Impl::mat4_get_unmatrix(a2, v18, 1);
    CA::Mat4Impl::mat4_get_unmatrix(a3, v17, 1);
    CA::mix(v16, v18, v17, a5);
    CA::Mat4Impl::mat4_set_unmatrix(this, v16, v14, v15);
  }
}

float64x2_t CA::Mat2Impl::mat2_mix(CA::Mat2Impl *this, double *a2, const double *a3, const double *a4, double a5)
{
  v30 = *MEMORY[0x1E69E9840];
  CA::Mat2Impl::mat2_get_unmatrix(a2, &v25);
  CA::Mat2Impl::mat2_get_unmatrix(a3, v21);
  v8 = v25;
  if ((v25.f64[0] >= 0.0 || v21[0].f64[1] >= 0.0) && (v25.f64[1] >= 0.0 || v21[0].f64[0] >= 0.0))
  {
    v9 = v27.f64[0];
  }

  else
  {
    v8 = vnegq_f64(v25);
    v9 = dbl_183E21140[v27.f64[0] < 0.0] + v27.f64[0];
    v27.f64[0] = v9;
  }

  if (v9 == 0.0)
  {
    v27.f64[0] = 6.28318531;
    v9 = 6.28318531;
  }

  v10 = v22.f64[0];
  if (v22.f64[0] == 0.0)
  {
    v22.f64[0] = 6.28318531;
    v10 = 6.28318531;
  }

  if (vabdd_f64(v9, v10) > 3.14159265)
  {
    v11 = v9 <= v10;
    if (v9 <= v10)
    {
      v9 = v10;
    }

    v12 = v21;
    if (!v11)
    {
      v12 = &v25;
    }

    v12[2].f64[0] = v9 + -6.28318531;
  }

  v13 = vmlaq_n_f64(v8, vsubq_f64(v21[0], v8), a5);
  v14 = vmlaq_n_f64(v26, vsubq_f64(v21[1], v26), a5);
  result = vmlaq_n_f64(v27, vsubq_f64(v22, v27), a5);
  *v20 = result.f64[1];
  *&v20[8] = vmlaq_n_f64(v28, vsubq_f64(v23, v28), a5);
  *&v20[24] = v29 + (v24 - v29) * a5;
  *this = *v20;
  *(this + 1) = *&v20[16];
  *(this + 2) = v14;
  if (result.f64[0] != 0.0)
  {
    v19 = v13;
    CA::Mat2Impl::mat2_rotate(this, v7, result.f64[0]);
    v13 = v19;
  }

  result.f64[0] = v13.f64[1];
  if (v13.f64[0] != 1.0 || v13.f64[1] != 1.0)
  {
    result = vmulq_n_f64(*this, v13.f64[0]);
    v17 = vmulq_laneq_f64(*(this + 1), v13, 1);
    *this = result;
    *(this + 1) = v17;
  }

  return result;
}

void CA::Mat2Impl::mat2_get_unmatrix(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = vzip1q_s64(*a1, v4);
  v7 = vmulq_f64(v6, v6);
  v8 = vzip2q_s64(*a1, v4);
  v9 = vsqrtq_f64(vmlaq_f64(v7, v8, v8));
  *a2 = v9;
  *(a2 + 16) = v5;
  v10 = vmulq_f64(vextq_s8(v4, v4, 8uLL), v3);
  v11 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v10, 1), v10)).u8[0];
  v12 = v9.f64[1];
  if (v11)
  {
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v4, 1), v3)).u8[0])
    {
      v9.f64[0] = -v9.f64[0];
      *a2 = v9.f64[0];
    }

    else
    {
      v12 = -v9.f64[1];
      *(a2 + 8) = -v9.f64[1];
    }
  }

  if (v9.f64[0] != 0.0)
  {
    v3 = vmulq_n_f64(v3, 1.0 / v9.f64[0]);
  }

  if (v12 != 0.0)
  {
    v4 = vmulq_n_f64(v4, 1.0 / v12);
  }

  v17 = v3;
  v18 = v4;
  v13 = atan2(v3.f64[1], v3.f64[0]);
  *(a2 + 32) = v13;
  if (v13 == 0.0)
  {
    v15 = v17;
    v16 = v18;
  }

  else
  {
    v14 = __sincos_stret(v13);
    v15 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v18, v14.__sinval)), v17, v14.__cosval);
    v16 = vmlaq_n_f64(vmulq_n_f64(v18, v14.__cosval), v17, v14.__sinval);
  }

  *(a2 + 40) = v15;
  *(a2 + 56) = v16;
}

float64x2_t CA::Mat2Impl::mat2_rotate(float64x2_t *this, double *a2, double a3)
{
  v6 = __sincos_stret(a3);
  *v5.i64 = v6.__cosval;
  *v4.i64 = v6.__sinval;
  if (fabs(v6.__sinval) >= 0.0000001)
  {
    if (fabs(v6.__cosval) < 0.0000001)
    {
      v5.i64[0] = 1.0;
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      v4.i64[0] = vbslq_s8(vnegq_f64(v8), v5, v4).u64[0];
      v5.i64[0] = 0;
    }
  }

  else
  {
    v4.i64[0] = 1.0;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v5.i64[0] = vbslq_s8(vnegq_f64(v7), v4, v5).u64[0];
    v4.i64[0] = 0;
  }

  v9 = *this;
  v10 = this[1];
  v11 = vmlaq_n_f64(vmulq_n_f64(*this, *v5.i64), v10, *v4.i64);
  v12 = vmlaq_n_f64(vmulq_n_f64(*this, -*v4.i64), v10, *v5.i64);
  *this = v11;
  this[1] = v12;
  result = vmlaq_f64(this[2], 0, vaddq_f64(v10, v9));
  this[2] = result;
  return result;
}

void ___Z33CAHighFrameRateRestrictionEnabledv_block_invoke()
{
  if (CAPrefers60HzAPT(void)::once != -1)
  {
    dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
  }

  v0 = CAPrefers60HzAPT(void)::enabled;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E970C == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = v0;
  }

  if (*&dword_1ED4E970C == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  CAHighFrameRateRestrictionEnabled(void)::enabled = v2;
}

void sub_183B9E26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___ZN2CA12WindowServer12IOMFBDisplay15process_monitorEv_block_invoke(uint64_t a1, uint64_t pid, int a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  if (byte_1ED4E9846 == 1)
  {
    memset(buffer, 0, sizeof(buffer));
    proc_name(pid, buffer, 0x20u);
    if (x_log_get_frame_rate(void)::once != -1)
    {
      dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
    }

    v17 = x_log_get_frame_rate(void)::log;
    if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109890;
      v18[1] = pid;
      v19 = 2080;
      v20 = buffer;
      v21 = 1024;
      v22 = a3;
      v23 = 1024;
      v24 = a4;
      _os_log_impl(&dword_183AA6000, v17, OS_LOG_TYPE_DEFAULT, "CAFrameRateServer: monitored process %u[%s] running: %d, suspended: %d", v18, 0x1Eu);
    }
  }

  v8 = (v7 + 28244);
  os_unfair_lock_lock((v7 + 28244));
  v9 = *(v7 + 28248);
  v10 = *(v7 + 28256);
  if (v9 != v10)
  {
    while (*v9 != pid)
    {
      v9 += 24;
      if (v9 == v10)
      {
        v9 = *(v7 + 28256);
        break;
      }
    }
  }

  if (v10 != v9)
  {
    v11 = v9[20];
    if ((a3 & 1) == 0)
    {
      v14 = v10 - (v9 + 24);
      if (v10 != v9 + 24)
      {
        memmove(v9, v9 + 24, v10 - (v9 + 24));
      }

      *(v7 + 28256) = &v9[v14];
      if ((v11 & 1) == 0)
      {
        CA::WindowServer::IOMFBDisplay::recompute_server_frame_interval_locked(v7);
      }

      goto LABEL_26;
    }

    if ((v11 & 1) != a4)
    {
      v9[20] = v11 & 0xFE | a4;
      CA::WindowServer::IOMFBDisplay::recompute_server_frame_interval_locked(v7);
    }
  }

  os_unfair_lock_unlock((v7 + 28244));
  v8 = (v7 + 28296);
  os_unfair_lock_lock((v7 + 28296));
  v12 = *(v7 + 28304);
  v13 = *(v7 + 28312);
  if (v12 != v13)
  {
    while (*v12 != pid)
    {
      v12 += 28;
      if (v12 == v13)
      {
        v12 = *(v7 + 28312);
        break;
      }
    }
  }

  if (v13 == v12)
  {
    os_unfair_lock_unlock((v7 + 28296));
    if (a3)
    {
      return;
    }

    goto LABEL_27;
  }

  if (a3)
  {
    *(v12 + 24) = a4;
    os_unfair_lock_unlock((v7 + 28296));
    return;
  }

  v15 = v13 - (v12 + 28);
  if (v13 != v12 + 28)
  {
    memmove(v12, (v12 + 28), v13 - (v12 + 28));
  }

  *(v7 + 28312) = v12 + v15;
LABEL_26:
  os_unfair_lock_unlock(v8);
LABEL_27:
  v16 = *(v7 + 28288);

  [v16 removeMonitoringProcess:pid];
}

void CA::OGL::MetalContext::end_new_render_pipeline(CA::OGL::MetalContext *this, os_signpost_id_t a2, char *a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a3;
    v7 = *(this + 692) & 1;
    *__str = 0;
    CA::OGL::MetalContext::format_new_pipeline_flags_string((v7 | a3), __str, a3);
    if (x_log_get_metal_pipelines(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_pipelines(void)::once, &__block_literal_global_4_8625);
    }

    v8 = x_log_get_metal_pipelines(void)::log;
    if ((v5 & 0x20) != 0)
    {
      if (x_log_get_metal_pipelines_stall(void)::once != -1)
      {
        dispatch_once(&x_log_get_metal_pipelines_stall(void)::once, &__block_literal_global_7);
      }

      v9 = x_log_get_metal_pipelines_stall(void)::log;
      if (os_signpost_enabled(x_log_get_metal_pipelines_stall(void)::log))
      {
        v11 = 136446210;
        v12 = __str;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v9, OS_SIGNPOST_INTERVAL_END, a2, "NewRenderPipeline", "flags=%{public, name=flags}s", &v11, 0xCu);
      }
    }

    v10 = os_signpost_enabled(v8);
    if (a4)
    {
      if (v10)
      {
        v11 = 136446210;
        v12 = __str;
        _os_signpost_emit_unreliably_with_name_impl();
      }
    }

    else if (v10)
    {
      v11 = 136446210;
      v12 = __str;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v8, OS_SIGNPOST_INTERVAL_END, a2, "NewRenderPipeline", "flags=%{public, name=flags, signpost.telemetry:string2}s enableTelemetry=YES ", &v11, 0xCu);
    }
  }
}

void ___ZN2CA3OGL12MetalContext23dispatch_async_pipelineERKNS1_8Pipeline4SpecEPS2_bb_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = atomic_load((v1 + 2744));
  if ((v2 & 1) == 0)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = CA::OGL::MetalContext::Pipeline::Spec::encode_segment((a1 + 40));
    v6 = [v4 stringWithFormat:@"%@_%@", v5, CA::OGL::MetalContext::FragmentShader::Spec::name((a1 + 40))];
    if (*(a1 + 80))
    {
      v7 = 128;
    }

    else
    {
      v7 = 0;
    }

    v13 = v7;
    if (*(a1 + 81))
    {
      v8 = 0;
    }

    else
    {
      v8 = CA::OGL::MetalContext::begin_new_render_pipeline(v6, 0, 0);
    }

    v9 = CA::OGL::MetalContext::create_pipeline_state(v1, (a1 + 40), &v13, (v1 + 2744));
    if (v9)
    {
      v10 = *(a1 + 72);
      if (atomic_load(v10))
      {
        __assert_rtn("set_pipeline_state", "ogl-metal.mm", 1542, "!is_complete ()");
      }

      atomic_store(v9, v10);
      ++*(v1 + 2720);
      v12 = v13;
    }

    else
    {
      v12 = v13 | 0x40;
      *(*(a1 + 72) + 26) = 0;
    }

    CA::OGL::MetalContext::end_new_render_pipeline(v1, v8, v12, 0);
  }
}

uint64_t CA::OGL::MetalContext::format_new_pipeline_flags_string(CA::OGL::MetalContext *this, char *__str, char *a3)
{
  v3 = "a";
  v4 = "";
  if ((this & 1) == 0)
  {
    v3 = "";
  }

  v5 = "p";
  if ((this & 2) == 0)
  {
    v5 = "";
  }

  v6 = "l";
  if ((this & 4) == 0)
  {
    v6 = "";
  }

  v7 = "r";
  if ((this & 0x80) == 0)
  {
    v7 = "";
  }

  v8 = "w";
  if ((this & 8) == 0)
  {
    v8 = "";
  }

  v9 = "c";
  if ((this & 0x10) == 0)
  {
    v9 = "";
  }

  v10 = "s";
  if ((this & 0x20) == 0)
  {
    v10 = "";
  }

  if ((this & 0x40) != 0)
  {
    v4 = "e";
  }

  return snprintf(__str, 8uLL, "%s%s%s%s%s%s%s%s", v3, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t CA::OGL::BlurFilter::ROI(CA::OGL::BlurFilter *this, CA::Render::KeyValueArray **a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  if ((*(*this + 152))(this, a2, a3, &v25))
  {
    v7 = a4[1];
    v8 = vclezq_f64(v7);
    if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) == 0)
    {
      v9 = vclezq_f64(v26);
      if ((vorrq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) != 0 || (v10 = vaddq_f64(*a4, v7), v11 = vmaxnmq_f64(*a4, v25), v12 = vsubq_f64(vminnmq_f64(v10, vaddq_f64(v25, v26)), v11), v13 = vclezq_f64(v12), (vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0))
      {
        a4[1].f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }

      else
      {
        *a4 = v11;
        a4[1] = v12;
      }
    }
  }

  float_key = CA::Render::KeyValueArray::get_float_key(a2[5], 400, 0.0);
  result = (*(*this + 160))(this);
  v18 = a4[1].f64[0];
  v17 = a4[1].f64[1];
  if (v18 <= v17)
  {
    v19 = a4[1].f64[1];
  }

  else
  {
    v19 = a4[1].f64[0];
  }

  if (v19 < 1.79769313e308)
  {
    if (v18 >= v17)
    {
      v20 = a4[1].f64[1];
    }

    else
    {
      v20 = a4[1].f64[0];
    }

    if (v20 > 0.0)
    {
      *&v21 = -(float_key * v16);
      *a4 = vaddq_f64(*a4, vdupq_lane_s64(v21, 0));
      v22 = *&v21 * -2.0;
      v23 = v22 + v18;
      v24 = v22 + v17;
      a4[1].f64[0] = v23;
      a4[1].f64[1] = v24;
      if (v23 <= 0.0 || v24 <= 0.0)
      {
        a4[1].f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }
    }
  }

  return result;
}

uint64_t CA::OGL::GaussianBlurFilter::filter_alignment(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!(*(**a2 + 232))(*a2, 34))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6[4];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = 0;
  while (1)
  {
    v9 = *&v6[2 * v8 + 6];
    if (*(v9 + 16) == 399)
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_13;
    }
  }

  if ((v8 & 0x80000000) != 0)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = *(v9 + 24);
  if (v10)
  {
    if (*(v10 + 12) != 54)
    {
      goto LABEL_13;
    }

    if (!strcmp((v10 + 28), "low"))
    {
      v10 = 1;
      goto LABEL_14;
    }

    if (strcmp((v10 + 28), "high"))
    {
      goto LABEL_13;
    }

    return 0;
  }

LABEL_14:
  if ((*(a4 + 376) & 0x10) != 0)
  {
    v11 = vaddvq_f64(vmulq_f64(*(a4 + 232), *(a4 + 232)));
    v12 = vaddvq_f64(vmulq_f64(*(a4 + 264), *(a4 + 264)));
    v14 = *(a4 + 352);
    if (v14 != 1.0)
    {
      v15 = 1.0 / (v14 * v14);
      v11 = v15 * v11;
      v12 = v15 * v12;
    }

    v16 = v11 != 1.0;
    if (v12 != 1.0)
    {
      v16 = 1;
    }

    v17 = sqrt(v11);
    v18 = sqrt(v12);
    if (v16)
    {
      v12 = v18;
      v11 = v17;
    }
  }

  else
  {
    v11 = *(a4 + 360);
    v12 = v11;
  }

  if (v11 >= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v11;
  }

  v20 = v19 * CA::Render::KeyValueArray::get_float_key(v6, 400, 0.0);
  v21 = (v20 * v20);

  return CA::OGL::blur_downsample_alignment(v10, v21);
}

uint64_t CA::OGL::MetalContext::FragmentShader::Spec::name(CA::OGL::MetalContext::FragmentShader::Spec *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v4 = (this + 14);
  v3 = *(this + 14);
  v5 = v31;
  v6 = v3 & 0x7F;
  if ((v3 & 0x7F) != 0)
  {
    LOBYTE(v31[0]) = 84;
    if (v6 > 0x78)
    {
      snprintf(v31 + 1, 4uLL, "%03d", v3 & 0x7F);
      v3 = *v4;
    }

    else
    {
      v7 = CA::OGL::MetalContext::TextureFunction_codes[v6];
      v8 = *v7;
      BYTE3(v31[0]) = v7[2];
      *(v31 + 1) = v8;
    }

    v5 = v31 + 4;
  }

  if ((v3 & 0x3F00) != 0x3E00)
  {
    *v5 = 66;
    v9 = v5 + 1;
    if ((v3 & 0x3F00) == 0x3F00)
    {
      snprintf(v9, 4uLL, "%03d", 63);
      v3 = *v4;
    }

    else
    {
      v10 = CA::OGL::MetalContext::BlendFunction_codes[(v3 >> 8) & 0x3F];
      v11 = *v10;
      v5[3] = v10[2];
      *v9 = v11;
    }

    v5 += 4;
  }

  if ((v3 & 0x70000) != 0)
  {
    *v5 = 68;
    v12 = v5 + 1;
    v13 = *v4;
    v14 = (v13 >> 16) & 7;
    if ((WORD1(v13) & 7) > 4u)
    {
      snprintf(v12, 3uLL, "%02d", v14);
    }

    else
    {
      *v12 = *CA::OGL::MetalContext::DestinationFunction_codes[v14];
    }

    v5 += 3;
    v3 = *v4;
  }

  if ((v3 & 0x600000) != 0x200000)
  {
    *v5 = 65;
    v5[1] = *CA::OGL::MetalContext::int_codes[(*v4 >> 21) & 3];
    v5 += 2;
    v3 = *v4;
  }

  if ((v3 & 0x3000000) != 0)
  {
    *v5 = 83;
    v5[1] = *CA::OGL::MetalContext::int_codes[*(v4 + 3) & 3];
    v5 += 2;
    v3 = *v4;
  }

  if ((v3 & 0x180000) != 0)
  {
    *v5 = 76;
    v15 = v5 + 1;
    v16 = *v4;
    if ((~v16 & 0x180000) != 0)
    {
      *v15 = *CA::OGL::MetalContext::VertexLayout_codes[(v16 >> 19) & 3];
    }

    else
    {
      snprintf(v15, 3uLL, "%02d", 3);
    }

    v5 += 3;
  }

  *v5 = 0;
  v17 = v5 + 1;
  v18 = *v4;
  if ((*v4 & 0x4000000) != 0)
  {
    *v5 = 26456;
    v17 = v5 + 2;
    v18 = *v4;
    if ((*v4 & 0x10000000) == 0)
    {
LABEL_27:
      if ((v18 & 0x20000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_53;
    }
  }

  else if ((v18 & 0x10000000) == 0)
  {
    goto LABEL_27;
  }

  *v5 = 88;
  *v17++ = 104;
  v18 = *v4;
  if ((*v4 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v18 & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_53:
  *v5 = 88;
  *v17++ = 118;
  if ((*v4 & 0x40000000) != 0)
  {
LABEL_29:
    *v5 = 88;
    *v17++ = 102;
  }

LABEL_30:
  if ((*(this + 18) & 0x10) != 0)
  {
    *v5 = 88;
    *v17++ = 99;
  }

  if ((*v4 & 0x80000000) != 0)
  {
    *v5 = 88;
    *v17++ = 120;
  }

  v19 = *(this + 18);
  if (v19)
  {
    *v5 = 88;
    *v17++ = 117;
    v19 = *(this + 18);
    if ((v19 & 2) == 0)
    {
LABEL_36:
      if ((v19 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }
  }

  else if ((*(this + 18) & 2) == 0)
  {
    goto LABEL_36;
  }

  *v5 = 88;
  *v17++ = 112;
  v19 = *(this + 18);
  if ((v19 & 4) == 0)
  {
LABEL_37:
    if ((v19 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_57:
  *v5 = 88;
  *v17++ = 101;
  if ((*(this + 18) & 8) != 0)
  {
LABEL_38:
    *v5 = 88;
    *v17++ = 115;
  }

LABEL_39:
  if ((*(v4 + 3) & 8) != 0)
  {
    *v5 = 88;
    *v17++ = 110;
  }

  v20 = *(this + 18);
  if ((v20 & 0x20) != 0)
  {
    *v5 = 88;
    *v17++ = 108;
    v20 = *(this + 18);
  }

  if ((v20 & 0x40) != 0)
  {
    *v5 = 88;
    *v17++ = 114;
  }

  if (!*v5)
  {
    v17 = v5;
  }

  *v17 = 0;
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31];
  v22 = *v4 & 0x7F;
  v23 = CA::OGL::tex_image_count[v22];
  if (!CA::OGL::tex_image_count[v22])
  {
    v26 = &stru_1EF20BE80;
    v27 = "";
    v24 = &stru_1EF20BE80;
    v25 = &stru_1EF20BE80;
    v28 = "";
    goto LABEL_63;
  }

  v24 = CA::OGL::MetalContext::FragmentShader::Spec::Image::encode_segment(this);
  if (CA::OGL::tex_image_count[*(this + 14) & 0x7F] < 2u)
  {
    v27 = "";
    v26 = &stru_1EF20BE80;
    v25 = &stru_1EF20BE80;
    goto LABEL_61;
  }

  v25 = CA::OGL::MetalContext::FragmentShader::Spec::Image::encode_segment((this + 7));
  if (CA::OGL::tex_image_count[*(this + 14) & 0x7F] >= 3u)
  {
    v26 = CA::OGL::MetalContext::FragmentShader::Spec::Image::encode_segment(v4);
    v27 = "_";
LABEL_61:
    v28 = v27;
    goto LABEL_63;
  }

  v28 = "_";
  v27 = "";
  v26 = &stru_1EF20BE80;
LABEL_63:
  if (v23)
  {
    v29 = "_";
  }

  else
  {
    v29 = "";
  }

  return [v2 stringWithFormat:@"%@%s%@%s%@%s%@", v21, v29, v24, v28, v25, v27, v26];
}