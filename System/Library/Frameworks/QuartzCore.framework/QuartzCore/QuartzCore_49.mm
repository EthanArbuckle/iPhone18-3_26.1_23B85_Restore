uint64_t CA::OGL::PathFiller::finish(CA::OGL::PathFiller *this)
{
  MEMORY[0x1EEE9AC00](this);
  v2 = v1;
  v55[1536] = *MEMORY[0x1E69E9840];
  v3 = v1[5];
  v4 = v1[6];
  v1[5] = v4;
  if (vmvn_s8(vceq_f32(v3, v4)).i32[1])
  {
    CA::OGL::PathFiller::emit_line(v1, v3, v4);
  }

  if (v2[82].f32[1] < v2[3].f32[0] && (v2[83].i8[0] & 1) == 0)
  {
    v2[81].i32[1] = v2[82].i32[0];
  }

  CA::OGL::PathFiller::emit_span_rect_coverage(v2);
  CA::OGL::PathFiller::flush_rect(v2);
  CA::OGL::PathFiller::flush_cube(v2);
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *(v6 + 8);
  v8 = (*(*v2 + 1384) >> 12) & 7;
  v9 = HIWORD(v7);
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      goto LABEL_10;
    }

    v7 = v7 & 0xFFFFFFFFFFFF0000 | v9;
  }

  v7 = v7 & 0xFFFF00000000FFFFLL | (v9 << 16) | (v9 << 32);
LABEL_10:
  v10 = v2[7].u32[0];
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = vcvtq_f32_f16(v7);
    v13.n128_u64[0] = vcvt_f16_f32(v13);
    do
    {
      v14 = v2[41].u32[v11];
      if (v14)
      {
        v15 = v2[7].u32[1];
        if ((v15 & 0x80000000) == 0)
        {
          v16 = &v2[8] + v11;
          v18 = *v16;
          v17 = v16[1];
          v19 = v2[24].f32[1];
          v20 = v15 + 1;
          v21 = &v2[25];
          v22 = v19;
          do
          {
            v23 = *v21;
            if ((v14 & 1) == 0)
            {
              if (v22 != v19)
              {
                v24 = &v55[3 * v12++];
                *v24 = __PAIR64__(LODWORD(v19), v18);
                v24[1] = __PAIR64__(LODWORD(v22), v17);
                v24[2] = v13.n128_u64[0];
              }

              v19 = v23;
              if (v14 < 2)
              {
                break;
              }
            }

            v14 >>= 1;
            ++v21;
            v22 = v23;
            --v20;
          }

          while (v20);
        }
      }

      ++v11;
    }

    while (v11 != v10);
    if (v12)
    {
      if (v2[80].i8[0])
      {
        v25 = 110;
      }

      else
      {
        v25 = 109;
      }

      *(v6 + 16) = v25;
      (*(**v2 + 408))(*v2, v13);
      v5 = *v2;
    }
  }

  *(*(*&v5 + 16) + 497) &= ~4u;
  v26 = *(*v2 + 16);
  v27 = *(v26 + 14);
  v28 = *(v26 + 497);
  v29 = *(v26 + 496);
  if (v29 < 2 || (v29 == 3 ? (v31 = v27 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0))) : (v31 = 0), v31))
  {
    *(v26 + 497) = v28 & 0xFE;
    v30 = *(*v2 + 16);
  }

  else
  {
    v30 = *(*v2 + 16);
  }

  v32 = *(v26 + 12);
  v33 = *(v26 + 8);
  *(v30 + 16) = 0;
  v34 = *v2;
  *(v34 + 144) = 0;
  *(v34 + 112) = v34 + 1386;
  *(v34 + 120) = xmmword_183E20E50;
  v35 = v2[7].i32[0];
  if (v35 >= 1)
  {
    v53 = v28;
    v36 = 0;
    v54 = &v2[8];
    v37 = (v33 | (v32 << 32)) & 0xFFFFFFFFFFFFLL | (LOWORD(v27) << 48);
    do
    {
      v38 = v2[57].u32[v36];
      if (v38)
      {
        v39 = v36 + 1;
        v40 = v2[7].i32[1];
        if (v40 < 0)
        {
          goto LABEL_53;
        }

        v41 = v54[v36];
        v42 = v54[v39];
        v43 = v2[24].f32[1];
        v44 = 50;
        v45 = v43;
        while (1)
        {
          v46 = v2->f32[v44];
          if ((v38 & 1) == 0)
          {
            if (v45 != v43)
            {
              v47 = *v2;
              if (*(*v2 + 108))
              {
                v48 = 6;
              }

              else
              {
                v48 = 4;
              }

              if ((*(v47 + 144) + 4) > *(v47 + 152) || (v49 = *(v47 + 128)) != 0 && *(v47 + 120) + v48 > v49)
              {
                *(v47 + 1384) |= 0x20u;
                CA::OGL::Context::array_flush(v47);
                *(v47 + 144) = 0;
                *(v47 + 112) = v47 + 1386;
                *(v47 + 120) = xmmword_183E20E50;
                v47 = *v2;
              }

              CA::OGL::Context::array_rect(v47, v41, v43, v42, v45);
              v50 = *(*v2 + 136) + 48 * *(*v2 + 144);
              *(v50 - 160) = v37;
              *(v50 - 112) = v37;
              *(v50 - 64) = v37;
              *(v50 - 16) = v37;
            }

            if (v38 < 2)
            {
LABEL_51:
              v35 = v2[7].i32[0];
              goto LABEL_53;
            }

            v40 = v2[7].i32[1];
            v43 = v46;
          }

          v38 >>= 1;
          v51 = v44 - 50;
          ++v44;
          v45 = v46;
          if (v51 >= v40)
          {
            goto LABEL_51;
          }
        }
      }

      v39 = v36 + 1;
LABEL_53:
      v36 = v39;
    }

    while (v39 < v35);
    v34 = *v2;
    v28 = v53;
  }

  result = CA::OGL::Context::array_flush(v34);
  if (v28)
  {
    *(*(*v2 + 16) + 497) |= 1u;
  }

  *(*(*v2 + 16) + 16) = 0;
  return result;
}

void CA::OGL::PathRenderer::cgpath_apply_transform<CA::OGL::PathFiller>(CA::OGL::PathFiller *this, uint64_t a2)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v6 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(*(*(this + 1) + 32), **(this + 1), **(a2 + 8)), *(*(this + 1) + 16), *(*(a2 + 8) + 8)));
        v7 = *(this + 40);
        *(this + 5) = v6;
        v8 = *(this + 165);
        if (v8 <= v6.f32[0])
        {
          v8 = v6.f32[0];
        }

        *(this + 165) = v8;
        if ((vceq_f32(v7, v6).i32[1] & 1) == 0)
        {

          CA::OGL::PathFiller::emit_line(this, v7, v6);
        }
      }
    }

    else
    {
      v30 = COERCE_DOUBLE(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(*(*(this + 1) + 32), **(this + 1), **(a2 + 8)), *(*(this + 1) + 16), *(*(a2 + 8) + 8))));

      CA::OGL::PathFiller::move_to(this, v30);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v9 = *(a2 + 8);
        v10 = *v9;
        v11 = v9[1];
        v12 = v9[2];
        v13 = v9[3];
        v14 = *(this + 1);
        v15 = v14[1];
        v16 = COERCE_DOUBLE(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v14[2], *v14, v10), v15, v11)));
        v17 = COERCE_DOUBLE(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v14[2], *v14, v12), v15, v13)));

        CA::OGL::PathFiller::quad_to(this, v16, v17);
        break;
      case 3:
        v18 = *(a2 + 8);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        v25 = *(this + 1);
        v26 = v25[1];
        v27 = COERCE_DOUBLE(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v25[2], *v25, v19), v26, v20)));
        v28 = COERCE_DOUBLE(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v25[2], *v25, v21), v26, v22)));
        v29 = COERCE_DOUBLE(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v25[2], *v25, v23), v26, v24)));

        CA::OGL::PathFiller::cube_to(this, v27, v28, v29);
        break;
      case 4:
        v4 = *(this + 40);
        v5 = *(this + 48);
        *(this + 5) = v5;
        if (vmvn_s8(vceq_f32(v4, v5)).i32[1])
        {
          CA::OGL::PathFiller::emit_line(this, v4, v5);
        }

        if (*(this + 165) < *(this + 6) && (*(this + 664) & 1) == 0)
        {
          *(this + 163) = *(this + 164);
        }

        break;
    }
  }
}

void CA::OGL::PathRenderer::cgpath_apply<CA::OGL::PathFiller>(float32x2_t *this, uint64_t a2)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v6 = vcvt_f32_f64(**(a2 + 8));
        v7 = this[5];
        this[5] = v6;
        v8 = this[82].f32[1];
        if (v8 <= v6.f32[0])
        {
          v8 = v6.f32[0];
        }

        this[82].f32[1] = v8;
        if ((vceq_f32(v7, v6).i32[1] & 1) == 0)
        {

          CA::OGL::PathFiller::emit_line(this, v7, v6);
        }
      }
    }

    else
    {
      v16 = COERCE_DOUBLE(vcvt_f32_f64(**(a2 + 8)));

      CA::OGL::PathFiller::move_to(this, v16);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v9 = *(a2 + 8);
        v10 = COERCE_DOUBLE(vcvt_f32_f64(*v9));
        v11 = COERCE_DOUBLE(vcvt_f32_f64(v9[1]));

        CA::OGL::PathFiller::quad_to(this, v10, v11);
        break;
      case 3:
        v12 = *(a2 + 8);
        v13 = COERCE_DOUBLE(vcvt_f32_f64(*v12));
        v14 = COERCE_DOUBLE(vcvt_f32_f64(v12[1]));
        v15 = COERCE_DOUBLE(vcvt_f32_f64(v12[2]));

        CA::OGL::PathFiller::cube_to(this, v13, v14, v15);
        break;
      case 4:
        v4 = this[5];
        v5 = this[6];
        this[5] = v5;
        if (vmvn_s8(vceq_f32(v4, v5)).i32[1])
        {
          CA::OGL::PathFiller::emit_line(this, v4, v5);
        }

        if (this[82].f32[1] < this[3].f32[0] && (this[83].i8[0] & 1) == 0)
        {
          this[81].i32[1] = this[82].i32[0];
        }

        break;
    }
  }
}

double CA::OGL::PathStroker::add_line_points(float32x2_t *this, double a2, double a3)
{
  v6 = this[15].i32[0];
  v7 = this[8].i32[0];
  if (6 * this[15].i32[1] + 4 * v6 + 4 > v7)
  {
    CA::OGL::PathStroker::flush_points(this);
    v6 = this[15].i32[0];
    v7 = this[8].i32[0];
  }

  v8 = v6 + 1;
  this[15].i32[0] = v8;
  v9 = *&this[7] + 8 * v7 - 32 * v8;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = vmul_n_f32(this[12], this[9].f32[0]);
  result = *&this[13];
  *(v9 + 24) = result;
  return result;
}

uint64_t CA::OGL::PathStroker::flush_points(uint64_t this)
{
  v1 = this;
  *(this + 92) = *(this + 124);
  *(*this + 160) = *(this + 80);
  v2 = *(this + 124);
  if (v2)
  {
    v3 = *(this + 120);
    v4 = *(this + 56);
    if (v3)
    {
      v5 = 3 * v2;
      v6 = 4 * v3;
      v7 = 4 * v3 + 2 * v5;
      v8 = *(this + 64);
      if (v7 < v8)
      {
        v9 = 2 * v5;
        if (v6 <= v9)
        {
          memcpy((v4 + 8 * v9), (v4 + 8 * v8 - 8 * v6), 8 * v6);
        }

        else
        {
          memcpy((v4 + 8 * v8 - 8 * v7), *(this + 56), 8 * v9);
          v4 = *(v1 + 7) + 8 * v1[16] - 8 * v7;
        }
      }
    }
  }

  else
  {
    v10 = *(this + 120);
    if (!v10)
    {
      return this;
    }

    v4 = *(this + 56) + 8 * *(this + 64) - 32 * v10;
  }

  *(*(*v1 + 16) + 16) = 107;
  this = (*(**v1 + 400))(*v1, v1[31], v1[30], v4);
  *(*(*v1 + 16) + 497) |= 4u;
  *(v1 + 15) = 0;
  return this;
}

void CA::OGL::PathStroker::move_to(float32x2_t *this, double a2)
{
  if (this[9].i8[6] == 1)
  {
    if (this[9].i8[5] == 1)
    {
      v4 = this[15].i32[0];
      v5 = this[8].i32[0];
      if (6 * this[15].i32[1] + 4 * v4 + 8 > v5)
      {
        CA::OGL::PathStroker::flush_points(this);
        v4 = this[15].i32[0];
        v5 = this[8].i32[0];
      }

      v6 = v4 + 2;
      this[15].i32[0] = v6;
      v7 = (*&this[7] + 8 * v5 - 32 * v6);
      v8 = this[5];
      *v7 = v8;
      v9 = vdup_n_s32(0x3C800000u);
      v7[1] = vmls_f32(v8, v9, this[12]);
      v7[2] = vadd_f32(this[12], this[12]);
      v7[3] = vadd_f32(this[12], this[12]);
      v10 = this[6];
      v7[4] = v10;
      v7[5] = vmls_f32(v10, v9, this[14]);
      v7[6] = vadd_f32(this[14], this[14]);
      v7[7] = vadd_f32(this[14], this[14]);
    }

    else
    {
      v11 = this[8].f32[1];
      if (v11 > 0.0)
      {
        CA::OGL::PathStroker::add_line_points(this, *&this[6], COERCE_DOUBLE(vmla_n_f32(this[6], this[14], v11)));
        CA::OGL::PathStroker::add_line_points(this, *&this[5], COERCE_DOUBLE(vmla_n_f32(this[5], this[12], this[8].f32[1])));
      }
    }

    this[9].i8[6] = 0;
  }

  this[12] = 0;
  this[13] = 0;
  *&this[5] = a2;
  *&this[6] = a2;
}

void CA::OGL::PathStroker::line_to(float32x2_t *this, double a2)
{
  v4 = *&this[5];
  v5 = vsub_f32(*&v4, *&a2);
  v6 = vmul_f32(v5, v5);
  if (vaddv_f32(v6) >= 0.000001)
  {
    v8 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
    v9 = vrsqrte_f32(v8);
    v10 = vmul_f32(vrsqrts_f32(v8, vmul_f32(v9, v9)), v9);
    v7 = vmul_n_f32(v5, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
  }

  else
  {
    if (this[9].i8[4] != 1 || !this[9].i8[5])
    {
      return;
    }

    v7 = 0x3F80000000000000;
  }

  this[13] = v7;
  if ((this[9].i8[6] & 1) == 0)
  {
    this[9].i8[6] = 1;
    this[14] = v7;
  }

  CA::OGL::PathStroker::add_line_points(this, v4, a2);
  this[12] = vneg_f32(this[13]);
  *&this[5] = a2;
}

void CA::OGL::PathStroker::quad_to(float32x2_t *this, float32x2_t a2, int8x8_t a3, double a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9)
{
  v12 = *&this[5];
  v13 = vsub_f32(*&v12, a2);
  v14 = vaddv_f32(vmul_f32(v13, v13));
  v15 = v14;
  if (v14 >= 0.000001 || (v13 = vsub_f32(*&v12, a3), v15 = vaddv_f32(vmul_f32(v13, v13)), v15 >= 0.000001))
  {
    v17 = v15;
    v18 = vrsqrte_f32(LODWORD(v15));
    v19 = vmul_f32(vrsqrts_f32(LODWORD(v17), vmul_f32(v18, v18)), v18);
    a7.n128_u64[0] = vmul_f32(v19, v19);
    v20 = vmul_n_f32(v13, vmul_f32(v19, vrsqrts_f32(LODWORD(v17), a7.n128_u64[0])).f32[0]);
    this[13] = v20;
    if ((this[9].i8[6] & 1) == 0)
    {
      v20.i32[0] = 0;
      v21 = this[6];
      v22 = vmvn_s8(vceq_f32(v21, a2));
      v23 = vsub_f32(v21, vbsl_s8(vdup_lane_s32(vcgt_s32(v20, vpmax_u32(v22, v22)), 0), a2, a3));
      v24 = vmul_f32(v23, v23);
      v24.i32[0] = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
      v25 = vrsqrte_f32(v24.u32[0]);
      v26 = vmul_f32(vrsqrts_f32(v24.u32[0], vmul_f32(v25, v25)), v25);
      a7.n128_u64[0] = vmul_f32(v26, v26);
      this[14] = vmul_n_f32(v23, vmul_f32(v26, vrsqrts_f32(v24.u32[0], a7.n128_u64[0])).f32[0]);
      this[9].i8[6] = 1;
    }

    if (v14 >= 0.000001 && (v27 = vsub_f32(a2, a3), vaddv_f32(vmul_f32(v27, v27)) >= 0.000001))
    {
      CA::OGL::PathStroker::emit_cube(this, 0, v12, COERCE_DOUBLE(vmla_f32(vmul_f32(a2, vdup_n_s32(0x3F2AAAABu)), vdup_n_s32(0x3EAAAAAAu), *&v12)), COERCE_DOUBLE(vmla_f32(vmul_f32(a2, vdup_n_s32(0x3F2AAAAAu)), vdup_n_s32(0x3EAAAAABu), a3)), a3, INFINITY, a7, a8, a9);
    }

    else
    {
      CA::OGL::PathStroker::add_line_points(this, v12, *&a3);
    }

    v28 = vsub_f32(a3, a2);
    v29 = vaddv_f32(vmul_f32(v28, v28));
    if (v29 < 0.000001)
    {
      v28 = vsub_f32(a3, this[5]);
      v29 = vaddv_f32(vmul_f32(v28, v28));
    }

    v30 = v29;
    v31 = vrsqrte_f32(LODWORD(v29));
    v32 = vmul_f32(vrsqrts_f32(LODWORD(v30), vmul_f32(v31, v31)), v31);
    v16 = vmul_n_f32(v28, vmul_f32(v32, vrsqrts_f32(LODWORD(v30), vmul_f32(v32, v32))).f32[0]);
    goto LABEL_17;
  }

  if (this[9].i8[4] == 1 && this[9].i8[5])
  {
    this[13] = 0x3F80000000000000;
    if ((this[9].i8[6] & 1) == 0)
    {
      this[9].i8[6] = 1;
      this[14] = 0x3F80000000000000;
    }

    CA::OGL::PathStroker::add_line_points(this, v12, *&a3);
    v16 = vneg_f32(this[13]);
LABEL_17:
    this[12] = v16;
    this[5] = a3;
  }
}

void CA::OGL::PathStroker::emit_cube(float32x2_t *a1, unint64_t a2, double a3, double a4, double a5, float32x2_t a6, float a7, __n128 a8, __n128 a9, __n128 a10)
{
  a8.n128_f64[0] = a5;
  a10.n128_f64[0] = a4;
  a9.n128_f64[0] = a3;
  v68 = *MEMORY[0x1E69E9840];
  v12 = vmul_f32(a6, 0x3F0000003F000000);
  v13 = 128;
  if (a2 > 0x80)
  {
    v13 = a2;
  }

  v14 = a2 + 1;
  v15 = -v13;
  v42 = *&a6;
  while (1)
  {
    v16 = a7;
    v17 = vsub_f32(a6, a8.n128_u64[0]);
    v18 = vsub_f32(a10.n128_u64[0], a9.n128_u64[0]);
    *v19.f32 = v18;
    *&v19.u32[2] = vsub_f32(a8.n128_u64[0], a10.n128_u64[0]);
    v20 = vabsq_f32(v19);
    a7 = (fabsf(v17.f32[0]) + fabsf(v17.f32[1])) + vaddv_f32(*&vpaddq_f32(v20, v20));
    if (a7 < 15000.0 || a7 >= v16)
    {
      v33 = a1[15].i32[1];
      v34 = 6 * v33;
      if (6 * v33 + 4 * a1[15].i32[0] + 6 > a1[8].i32[0])
      {
        v47 = a9.n128_u64[0];
        v50 = a8.n128_u64[0];
        v44 = a10.n128_u64[0];
        v41 = v18;
        CA::OGL::PathStroker::flush_points(a1);
        v18 = v41;
        *&a6 = v42;
        a10.n128_u64[0] = v44;
        a9.n128_u64[0] = v47;
        a8.n128_u64[0] = v50;
        v33 = a1[15].i32[1];
        v34 = 6 * v33;
      }

      v35 = (*&a1[7] + 8 * v34);
      a1[15].i32[1] = v33 + 1;
      __asm { FMOV            V1.2S, #3.0 }

      *v35 = vmla_f32(vsub_f32(a6, a9.n128_u64[0]), _D1, vsub_f32(a10.n128_u64[0], a8.n128_u64[0]));
      v35[1] = vmul_f32(vadd_f32(vsub_f32(a9.n128_u64[0], vadd_f32(a10.n128_u64[0], a10.n128_u64[0])), a8.n128_u64[0]), _D1);
      v35[2] = vmul_f32(v18, _D1);
      v35[3] = a9.n128_u64[0];
      v35[4] = vmul_n_f32(a1[12], a1[9].f32[0]);
      v35[5] = a1[13];
      return;
    }

    if (v15 + v14 == 1)
    {
      break;
    }

    v22 = vmul_f32(a10.n128_u64[0], 0x3F0000003F000000);
    v23 = vmul_f32(a8.n128_u64[0], 0x3F0000003F000000);
    v24 = vadd_f32(v23, v22);
    v25 = vmla_f32(v22, 0x3F0000003F000000, a9.n128_u64[0]);
    v26 = vadd_f32(v23, v12);
    v27 = vmul_f32(v24, 0x3F0000003F000000);
    v28 = vmla_f32(v27, 0x3F0000003F000000, v25);
    v29 = vmla_f32(v27, 0x3F0000003F000000, v26);
    v30 = vmul_f32(vadd_f32(v29, v28), 0x3F0000003F000000);
    v31 = vorn_s8(vorn_s8(vmvn_s8(vceq_f32(v28, a8.n128_u64[0])), vceq_f32(v25, a10.n128_u64[0])), vceq_f32(v30, a6));
    if ((vpmax_u32(v31, v31).u32[0] & 0x80000000) != 0)
    {
      v46 = a9;
      v49 = a8;
      v43 = a10;
      CA::OGL::PathStroker::emit_cube(a1, v14, a9.n128_f64[0]);
      a10 = v43;
      a9 = v46;
      a8 = v49;
      *&a6 = v42;
    }

    v32 = vorn_s8(vorn_s8(vmvn_s8(vceq_f32(v29, a10.n128_u64[0])), vceq_f32(v26, a8.n128_u64[0])), vceq_f32(v30, a9.n128_u64[0]));
    ++v14;
    a9.n128_u64[0] = v30;
    a10.n128_u64[0] = v29;
    a8.n128_u64[0] = v26;
    if ((vpmax_u32(v32, v32).u32[0] & 0x80000000) == 0)
    {
      return;
    }
  }

  v48 = a9.n128_u64[0];
  v51 = a8.n128_u64[0];
  v45 = a10.n128_u64[0];
  if (x_log_get_ogl(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
  }

  v40 = x_log_get_ogl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 134219776;
    v53 = *&v48;
    v54 = 2048;
    v55 = *(&v48 + 1);
    v56 = 2048;
    v57 = *&v45;
    v58 = 2048;
    v59 = *(&v45 + 1);
    v60 = 2048;
    v61 = *&v51;
    v62 = 2048;
    v63 = *(&v51 + 1);
    v64 = 2048;
    v65 = *&v42;
    v66 = 2048;
    v67 = *(&v42 + 1);
    _os_log_error_impl(&dword_183AA6000, v40, OS_LOG_TYPE_ERROR, "too many subdivisions in cubic curve (%a, %a) (%a, %a) (%a, %a) (%a, %a). Stack will most likely overflow. bail out.", buf, 0x52u);
  }
}

void CA::OGL::PathStroker::cube_to(float32x2_t *this, double a2, float32x2_t a3, int8x8_t a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9)
{
  v13 = *&this[5];
  v14 = vsub_f32(*&v13, *&a2);
  v15 = vaddv_f32(vmul_f32(v14, v14));
  v16 = v15;
  if (v15 >= 0.000001 || (v14 = vsub_f32(*&v13, a3), v16 = vaddv_f32(vmul_f32(v14, v14)), v16 >= 0.000001) || (v14 = vsub_f32(*&v13, a4), v16 = vaddv_f32(vmul_f32(v14, v14)), v16 >= 0.000001))
  {
    v18 = v16;
    v19 = vrsqrte_f32(LODWORD(v16));
    v20 = vmul_f32(vrsqrts_f32(LODWORD(v18), vmul_f32(v19, v19)), v19);
    a7.n128_u64[0] = vmul_f32(v20, v20);
    this[13] = vmul_n_f32(v14, vmul_f32(v20, vrsqrts_f32(LODWORD(v18), a7.n128_u64[0])).f32[0]);
    if ((this[9].i8[6] & 1) == 0)
    {
      v21 = this[6];
      v22 = vmvn_s8(vceq_f32(v21, *&a2));
      v23 = vpmax_u32(v22, v22).u32[0];
      v24 = *&a2;
      if ((v23 & 0x80000000) == 0)
      {
        v24.i32[0] = 0;
        v25 = vmvn_s8(vceq_f32(v21, a3));
        v24 = vbsl_s8(vdup_lane_s32(vcgt_s32(v24, vpmax_u32(v25, v25)), 0), a3, a4);
      }

      v26 = vsub_f32(v21, v24);
      v27 = vmul_f32(v26, v26);
      v27.i32[0] = vadd_f32(v27, vdup_lane_s32(v27, 1)).u32[0];
      v28 = vrsqrte_f32(v27.u32[0]);
      v29 = vmul_f32(vrsqrts_f32(v27.u32[0], vmul_f32(v28, v28)), v28);
      a7.n128_u64[0] = vmul_f32(v29, v29);
      this[14] = vmul_n_f32(v26, vmul_f32(v29, vrsqrts_f32(v27.u32[0], a7.n128_u64[0])).f32[0]);
      this[9].i8[6] = 1;
    }

    v30 = vsub_f32(a3, a4);
    v31 = vaddv_f32(vmul_f32(v30, v30));
    if ((v31 >= 0.000001 || v15 >= 0.000001) && ((v32 = vsub_f32(*&a2, a3), v33 = fminf(v31, v15) >= 0.000001, vaddv_f32(vmul_f32(v32, v32)) >= 0.000001) || v33))
    {
      CA::OGL::PathStroker::emit_cube(this, 0, v13, a2, *&a3, a4, INFINITY, a7, a8, a9);
    }

    else
    {
      CA::OGL::PathStroker::add_line_points(this, v13, *&a4);
    }

    if (v31 < 0.000001)
    {
      v34 = vsub_f32(a4, *&a2);
      v35 = vaddv_f32(vmul_f32(v34, v34));
      if (v35 >= 0.000001)
      {
LABEL_24:
        v36 = v35;
        v37 = vrsqrte_f32(LODWORD(v35));
        v38 = vmul_f32(vrsqrts_f32(LODWORD(v36), vmul_f32(v37, v37)), v37);
        v17 = vmul_n_f32(v34, vmul_f32(v38, vrsqrts_f32(LODWORD(v36), vmul_f32(v38, v38))).f32[0]);
LABEL_25:
        this[12] = v17;
        this[5] = a4;
        return;
      }

      v34 = vsub_f32(a4, this[5]);
    }

    else
    {
      v34 = vsub_f32(a4, a3);
    }

    v35 = vaddv_f32(vmul_f32(v34, v34));
    goto LABEL_24;
  }

  if (this[9].i8[4] == 1 && this[9].i8[5])
  {
    this[13] = 0x3F80000000000000;
    if ((this[9].i8[6] & 1) == 0)
    {
      this[9].i8[6] = 1;
      this[14] = 0x3F80000000000000;
    }

    CA::OGL::PathStroker::add_line_points(this, v13, *&a4);
    v17 = vneg_f32(this[13]);
    goto LABEL_25;
  }
}

void CA::OGL::PathStroker::close(float32x2_t *this)
{
  v2 = *&this[5];
  v3 = *&this[6];
  v4 = vsub_f32(*&v2, *&v3);
  v5 = vmul_f32(v4, v4);
  if (vaddv_f32(v5) >= 0.000001)
  {
    v6 = vadd_f32(v5, vdup_lane_s32(v5, 1)).u32[0];
    v7 = vrsqrte_f32(v6);
    v8 = vmul_f32(vrsqrts_f32(v6, vmul_f32(v7, v7)), v7);
    this[13] = vmul_n_f32(v4, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]);
    CA::OGL::PathStroker::add_line_points(this, v2, v3);
    this[12] = vneg_f32(this[13]);
    v3 = *&this[6];
  }

  v9 = this[14];
  this[13] = v9;
  *&this[5] = v3;
  CA::OGL::PathStroker::add_line_points(this, v3, COERCE_DOUBLE(vmla_f32(*&v3, vdup_n_s32(0xBC800000), v9)));
  this[9].i8[6] = 0;
}

uint64_t CA::OGL::PathStroker::finish(float32x2_t *this)
{
  v9[3] = *MEMORY[0x1E69E9840];
  CA::OGL::PathStroker::move_to(this, COERCE_DOUBLE(vneg_f32(0x7F0000007FLL)));
  CA::OGL::PathStroker::flush_points(this);
  v3 = *(*this + 16);
  v4 = *(v3 + 8);
  v5 = (*(*this + 1384) >> 12) & 7;
  v6 = HIWORD(v4);
  if (v5 == 2)
  {
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    v4 = v4 & 0xFFFFFFFFFFFF0000 | v6;
LABEL_4:
    v4 = v4 & 0xFFFF00000000FFFFLL | (v6 << 16) | (v6 << 32);
  }

  v7 = this[4];
  v9[0] = this[3];
  v9[1] = v7;
  v9[2] = vcvt_f16_f32(vcvtq_f32_f16(v4));
  *(v3 + 16) = 109;
  result = (*(**this + 408))(*this, 1, v9, v2);
  *(*(*this + 16) + 497) &= ~4u;
  *(*(*this + 16) + 16) = 0;
  return result;
}

void CA::OGL::PathRenderer::cgpath_apply_transform<CA::OGL::PathStroker>(float32x2_t *this, uint64_t a2, double a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  v8 = *a2;
  if (*a2 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        CA::OGL::PathStroker::line_to(this, COERCE_DOUBLE(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(*(*&this[1] + 32), **&this[1], **(a2 + 8)), *(*&this[1] + 16), *(*(a2 + 8) + 8)))));
      }
    }

    else
    {
      CA::OGL::PathStroker::move_to(this, COERCE_DOUBLE(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(*(*&this[1] + 32), **&this[1], **(a2 + 8)), *(*&this[1] + 16), *(*(a2 + 8) + 8)))));
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v9 = *(a2 + 8);
        v10 = *v9;
        v11 = v9[1];
        v12 = v9[2];
        v13 = v9[3];
        v14 = this[1];
        v15 = *(*&v14 + 16);
        v16 = vmlaq_n_f64(vmlaq_n_f64(*(*&v14 + 32), *v14, v12), v15, v13);
        v17 = vmlaq_n_f64(vmlaq_n_f64(*(*&v14 + 32), *v14, v10), v15, v11);
        CA::OGL::PathStroker::quad_to(this, vcvt_f32_f64(v17), vcvt_f32_f64(v16), v12, v13, *v14, v15, v17, v16);
        break;
      case 3:
        v18 = *(a2 + 8);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        a8.n128_f64[0] = v18[5];
        v24 = this[1];
        v25 = *(*&v24 + 16);
        v26 = vmlaq_n_f64(vmlaq_n_f64(*(*&v24 + 32), *v24, v23), v25, a8.n128_f64[0]);
        v27 = vmlaq_n_f64(vmlaq_n_f64(*(*&v24 + 32), *v24, v19), v25, v20);
        CA::OGL::PathStroker::cube_to(this, COERCE_DOUBLE(vcvt_f32_f64(v27)), vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(*(*&v24 + 32), *v24, v21), v25, v22)), vcvt_f32_f64(v26), v22, v27.f64[0], a8, *v24, v25);
        break;
      case 4:
        CA::OGL::PathStroker::close(this);
        break;
    }
  }
}

void CA::OGL::PathRenderer::cgpath_apply<CA::OGL::PathStroker>(float32x2_t *this, uint64_t a2, double a3, double a4, double a5, double a6, double a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = *a2;
  if (*a2 <= 1)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        CA::OGL::PathStroker::line_to(this, COERCE_DOUBLE(vcvt_f32_f64(**(a2 + 8))));
      }
    }

    else
    {
      CA::OGL::PathStroker::move_to(this, COERCE_DOUBLE(vcvt_f32_f64(**(a2 + 8))));
    }
  }

  else
  {
    switch(v10)
    {
      case 2:
        CA::OGL::PathStroker::quad_to(this, vcvt_f32_f64(**(a2 + 8)), vcvt_f32_f64(*(*(a2 + 8) + 16)), a5, a6, a7, a8, a9, a10);
        break;
      case 3:
        CA::OGL::PathStroker::cube_to(this, COERCE_DOUBLE(vcvt_f32_f64(**(a2 + 8))), vcvt_f32_f64(*(*(a2 + 8) + 16)), vcvt_f32_f64(*(*(a2 + 8) + 32)), a6, a7, a8, a9, a10);
        break;
      case 4:
        CA::OGL::PathStroker::close(this);
        break;
    }
  }
}

void CA::OGL::PathStroker::render(CA::OGL::PathStroker *this, const CGPath *a2, const CGAffineTransform *a3, double a4, const double *a5, unint64_t a6)
{
  v57[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a5;
    if (a5)
    {
      *(*this + 160) = *(this + 5);
      v10 = *(this + 1);
      v11 = vmulq_f64(*v10, *v10);
      v12 = vaddq_f64(vdupq_laneq_s64(v11, 1), v11);
      v13 = vmulq_f64(v10[1], v10[1]);
      v14 = vaddq_f64(vdupq_laneq_s64(v13, 1), v13);
      v15 = vaddvq_f64(v11) != 1.0;
      if (*v14.i64 != 1.0)
      {
        v15 = 1;
      }

      v16 = vzip1q_s64(v12, v14);
      v17 = vdup_n_s32(v15);
      v18.i64[0] = v17.u32[0];
      v18.i64[1] = v17.u32[1];
      v19 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v18, 0x3FuLL)), vsqrtq_f64(v16), v16);
      v20 = vmulq_f64(*&a3->a, *&a3->a);
      v21 = vaddq_f64(vdupq_laneq_s64(v20, 1), v20);
      v22 = vmulq_f64(*&a3->c, *&a3->c);
      v23 = vaddq_f64(vdupq_laneq_s64(v22, 1), v22);
      v24 = vaddvq_f64(v20) != 1.0;
      if (*v23.i64 != 1.0)
      {
        v24 = 1;
      }

      v25 = vzip1q_s64(v21, v23);
      v26 = vdup_n_s32(v24);
      v27.i64[0] = v26.u32[0];
      v27.i64[1] = v26.u32[1];
      v28 = vmulq_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v27, 0x3FuLL)), vsqrtq_f64(v25), v25), v19);
      if (v28.f64[1] >= v28.f64[0])
      {
        v29 = v28.f64[0];
      }

      else
      {
        v29 = v28.f64[1];
      }

      if (v28.f64[1] >= v28.f64[0])
      {
        v30 = v28.f64[1];
      }

      else
      {
        v30 = v28.f64[0];
      }

      v31 = a6 << (a6 & 1);
      v32 = 8 * v31;
      if (8 * v31 > 0x1000)
      {
        v33 = malloc_type_malloc(8 * v31, 0xAA67CB5CuLL);
        if (!v33)
        {
          return;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](this);
        v33 = (v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v33, 8 * v31);
      }

      if (v31)
      {
        v34 = 0;
        v35 = v29;
        v36 = v35;
        v37 = v33 + 1;
        v38 = 0.0;
        v39 = 0.0;
        v40 = 0.00200000009 / v36;
        do
        {
          if (v34 >= a6)
          {
            v41 = a6;
          }

          else
          {
            v41 = 0;
          }

          v42 = v34 + 1;
          if (v42 >= a6)
          {
            v43 = a6;
          }

          else
          {
            v43 = 0;
          }

          v44 = 0x1FFFFFFFFFFFFFFFLL * v41;
          v45 = v6[-v41];
          if (*(this + 77) == 2 && (v46 = v45 * v36, v46 < 0.002) && (v47 = &v6[-v43], v47[1] * v36 > 0.00200000009 - v46))
          {
            *(v37 - 1) = v40;
            *v37 = v47[1] - v40 + v6[v44];
            v48 = v47[1];
          }

          else
          {
            *(v37 - 1) = v45;
            v48 = v6[-v43 + 1];
            *v37 = v48;
          }

          v38 = v48 + v38;
          v39 = v48 + v39 + v6[v44];
          v37 += 2;
          v6 += 2;
          v34 = v42 + 1;
        }

        while (v34 < v31);
        v49 = v38 == 0.0;
      }

      else
      {
        v49 = 1;
        v39 = 0.0;
      }

      v51 = *(this + 1);
      v52 = CA::OGL::PathRenderer::cgpath_apply_transform<CA::OGL::PathStroker>;
      if (*v51 == 1.0)
      {
        v53 = 1;
        while (v53 != 6)
        {
          v54 = v53;
          v55 = v51[v53];
          v56 = CA::Mat2Impl::mat2_identity_double[v53++];
          if (v55 != v56)
          {
            v52 = CA::OGL::PathRenderer::cgpath_apply_transform<CA::OGL::PathStroker>;
            if ((v54 - 1) < 5)
            {
              goto LABEL_38;
            }

            break;
          }
        }

        v52 = CA::OGL::PathRenderer::cgpath_apply<CA::OGL::PathStroker>;
      }

LABEL_38:
      if (v31 > a6)
      {
        v39 = v39 * 0.5;
      }

      v50 = v30;
      if ((v39 * v50) < 0.0005)
      {
        v49 = 1;
      }

      if (v49)
      {
        CGPathApply(a2, this, v52);
      }

      else
      {
        CGPathApplyDashedPath();
      }

      CA::OGL::PathStroker::finish(this);
      if (v32 > 0x1000)
      {
        free(v33);
      }
    }
  }
}

uint64_t CA::Render::Subtexture::mix@<X0>(atomic_uint *this@<X0>, atomic_uint *a2@<X1>, const CA::Render::ValueInterpolator *a3@<X2>, void *a4@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA8uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::Render::Interpolator::Interpolator(result, this, a2, *a3);
  }

  *a4 = result;
  return result;
}

char *CA::Render::Subtexture::show(uint64_t a1, X::Stream *this, int a3, uint64_t a4)
{
  X::Stream::printf(this, "(subtexture [%d %d %d %d] ", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36));
  v8 = *(a1 + 16);
  if (a4)
  {
    if (v8)
    {
      (*(*v8 + 40))(v8, this, (a3 + 1), a4);
    }
  }

  else if (v8)
  {
    v9 = (a3 + 1);
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(texture ");
    (*(**(a1 + 16) + 40))(*(a1 + 16), this, v9, a4);
    X::Stream::printf(this, ")");
  }

  return X::Stream::printf(this, ")");
}

void *CA::Render::Fence::Transaction::Observer::free_batch_handlers(void *this)
{
  v1 = this;
  v2 = this[4];
  if (v2)
  {
    do
    {
      _Block_release(*v2);
      v2 = *(v2 + 8);
    }

    while (v2);
    this = v1[4];
    if (this)
    {
      do
      {
        v3 = this[1];
        free(this);
        this = v3;
      }

      while (v3);
    }
  }

  v1[4] = 0;
  return this;
}

uint64_t ___ZN2CA6Render5Fence11Transaction8Observer8activateENSt3__113unordered_setIyNS4_4hashIyEENS4_8equal_toIyEENS4_9allocatorIyEEEEPFvPS3_RKSC_djyEPFvSD_SF_jjEPFvSD_SF_E_block_invoke_6(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v3 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 80);
    v7 = *(a1 + 64);
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 2048;
    v10 = v7;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "fence tx observer %x timed out after %f\n", v8, 0x12u);
  }

  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    result = dispatch_mach_cancel();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v5 = *(*(a1 + 40) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    return (*(a1 + 72))(v2, *(*(a1 + 48) + 8) + 40);
  }

  return result;
}

void *CA::Render::Fence::Transaction::Observer::notify_batch_handlers(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    do
    {
      result = (*(*v1 + 16))();
      v1 = v1[1];
    }

    while (v1);
    if (v2[4])
    {

      return CA::Render::Fence::Transaction::Observer::free_batch_handlers(v2);
    }
  }

  return result;
}

void CA::Render::Fence::send_rmfc_msg(uint64_t a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 24);
  if (!v3)
  {
    __assert_rtn("send_rmfc_msg", "render-fence.cpp", 169, "!f_names.empty ()");
  }

  v6 = a1;
  v7 = 8 * v3;
  if ((8 * v3) > 0x1000)
  {
    v8 = malloc_type_malloc(8 * v3, 0x9E3EB93uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v8 = &msg[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    bzero(v8, v7);
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = v8;
    do
    {
      *v10++ = v9[2];
      v9 = *v9;
    }

    while (v9);
  }

  *msg = 0x3480000013;
  *&msg[8] = v6;
  *&msg[12] = xmmword_183E21780;
  v17 = v8;
  v11 = 8 * *(a3 + 24);
  v18 = 16777472;
  v19 = v11;
  v20 = getpid();
  v21 = a2;
  v12 = mach_msg(msg, 17, 0x34u, 0, 0, 0x64u, 0);
  if (v12)
  {
    v13 = v12;
    if ((v12 - 268435459) <= 1)
    {
      mach_msg_destroy(msg);
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v14 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v23 = v13;
      _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "failed to send rmfc reply: %x\n", buf, 8u);
    }
  }

  if (v7 > 0x1000)
  {
    free(v8);
  }
}

void CA::CG::fill_shading(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v175 = *MEMORY[0x1E69E9840];
  Type = CGShadingGetType();
  switch(Type)
  {
    case 3:
      Descriptor = CGShadingGetDescriptor();
      ColorSpace = CGShadingGetColorSpace();
      if (CGColorSpaceGetModel(ColorSpace) > kCGColorSpaceModelRGB)
      {
        goto LABEL_50;
      }

      v9 = *(*&v6 + 8);
      *(v9[2] + 16) = 50;
      v31 = (*(*v9 + 1072))(v9);
      v32 = v9[2];
      if (!v31)
      {
        goto LABEL_49;
      }

      v33 = *(v32 + 496);
      if (v33 == 12 || (v33 - 1) > 0x18)
      {
        goto LABEL_50;
      }

      {
      }

      {
        *(v9[2] + 497) |= 2u;
        *(v9[2] + 368) = 1065353216;
      }

      v35 = *(Descriptor + 40);
      v154.i64[0] = &unk_1EF203818;
      v154.i64[1] = v35;
      Background = CGShadingGetBackground();
      *v167 = 2048;
      v37 = *(Descriptor + 16);
      transform.b = v6;
      *&transform.c = v9;
      transform.d = v2;
      *&transform.tx = &v154;
      *&transform.ty = ColorSpace;
      v166 = Background;
      *&transform.a = &unk_1EF203978;
      *&v167[8] = *Descriptor;
      *&v167[24] = v37;
      break;
    case 2:
      v15 = CGShadingGetDescriptor();
      v16 = CGShadingGetColorSpace();
      if (CGColorSpaceGetModel(v16) > kCGColorSpaceModelRGB)
      {
        goto LABEL_50;
      }

      v9 = *(*&v6 + 8);
      v18 = v9[2];
      v19 = *(v18 + 496);
      if (v19 == 12 || (v19 - 1) > 0x18)
      {
        goto LABEL_50;
      }

      v17.n128_u64[0] = *v15;
      if (*v15 == *(v15 + 32) && (v17.n128_u64[0] = *(v15 + 8), v17.n128_f64[0] == *(v15 + 40)))
      {
        v22 = 0;
        v21 = 48;
      }

      else
      {
        v21 = 49;
        v22 = 1;
      }

      *(v18 + 16) = v21;
      if (((*(*v9 + 1072))(v9, v17) & 1) == 0)
      {
        v32 = v9[2];
        goto LABEL_49;
      }

      {
      }

      {
        *(v9[2] + 497) |= 2u;
        *(v9[2] + 368) = 1065353216;
      }

      v23 = *(v15 + 80);
      v154.i64[0] = &unk_1EF203818;
      v154.i64[1] = v23;
      v24 = CGShadingGetBackground();
      v168 = 0u;
      *&v167[32] = 0u;
      *&v167[16] = 0u;
      *v167 = 0u;
      v25 = *(v15 + 16);
      v26 = *(v15 + 48);
      v27 = *(v15 + 24);
      v28 = *(v15 + 56);
      transform.b = v6;
      *&transform.c = v9;
      transform.d = v2;
      *&transform.tx = &v154;
      *&transform.ty = v16;
      v166 = v24;
      *v167 = 2048;
      *&transform.a = &unk_1EF203930;
      *&v167[8] = *v15;
      *&v167[24] = *(v15 + 32);
      *&v167[40] = fabs(v25);
      *&v168 = fabs(v26);
      BYTE8(v168) = v27;
      BYTE9(v168) = v28;
      BYTE10(v168) = v22;
      break;
    case 1:
      v8 = CGShadingGetColorSpace();
      if (CGColorSpaceGetModel(v8) > kCGColorSpaceModelRGB)
      {
        goto LABEL_50;
      }

      v9 = *(*&v6 + 8);
      v10 = CGShadingGetDescriptor();
      v11 = v10;
      if (*(v10 + 16) == 1 && *(v10 + 40) == 1)
      {
        v12 = v9[2];
        v13 = *(v12 + 16) & 0xFFFFFF00FF00FF00;
        if (*(v12 + 8) == 0x3C003C003C003C00)
        {
          v14 = 1;
        }

        else
        {
          v14 = 3;
        }

        *(v12 + 16) = v14 | v13;
        *(v12 + 20) = HIDWORD(v13);
LABEL_41:
        {
        }

        {
          *(v9[2] + 497) |= 2u;
          *(v9[2] + 368) = 1065353216;
        }

        v41 = *(v11 + 64);
        v154.i64[0] = &unk_1EF203818;
        v154.i64[1] = v41;
        v42 = CGShadingGetBackground();
        v169 = 0u;
        v168 = 0u;
        *&v167[32] = 0u;
        *&v167[16] = 0u;
        *v167 = 0u;
        CGShadingGetBounds();
        v45 = *(v11 + 16);
        v46 = *(v11 + 40);
        transform.b = v6;
        *&transform.c = v9;
        transform.d = v2;
        *&transform.tx = &v154;
        *&transform.ty = v8;
        v166 = v42;
        *v167 = 2048;
        *&transform.a = &unk_1EF203830;
        *&v167[8] = *v11;
        *&v167[24] = *(v11 + 24);
        *&v167[40] = v47;
        *&v168 = v48;
        *(&v168 + 1) = v49;
        *&v169 = v50;
        BYTE8(v169) = has_background;
        BYTE9(v169) = v45;
        BYTE10(v169) = v46;
        break;
      }

      *(v9[2] + 16) = 47;
      v38 = (*(*v9 + 1072))(v9);
      v32 = v9[2];
      if (v38)
      {
        v39 = *(v32 + 496);
        if (v39 == 12 || (v39 - 1) > 0x18)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }

LABEL_49:
      *(v32 + 16) = 0;
      goto LABEL_50;
    default:
      goto LABEL_50;
  }

  Identifier = CGShadingGetIdentifier();
  *(v9[2] + 497) &= ~2u;
  *(v9[2] + 16) = 0;
  if (v52)
  {
    return;
  }

LABEL_50:
  v53 = *(*&v6 + 8);
  v164 = 0uLL;
  CA::Shape::get_bounds(*(*(v53 + 656) + 8), &v164);
  v55 = *(v53 + 672);
  if (v55)
  {
    v56 = v55 + 6;
  }

  else
  {
    v56 = (v53 + 608);
  }

  v57 = vclez_s32(*(&v164 + 8));
  if ((vpmax_u32(v57, v57).u32[0] & 0x80000000) != 0)
  {
    v148 = *(&v164 + 8);
    v150 = *(&v164 + 8);
  }

  else
  {
    v58 = v56[1];
    v59 = vclez_s32(v58);
    if ((vpmax_u32(v59, v59).u32[0] & 0x80000000) != 0 || (v60 = vadd_s32(*v56, v58), *&v61 = vmax_s32(*&v164, *v56), v62 = vsub_s32(vmin_s32(vadd_s32(*&v164, *(&v164 + 8)), v60), *&v61), v63 = vclez_s32(v62), (vpmax_u32(v63, v63).u32[0] & 0x80000000) != 0))
    {
      v148 = 0;
      v150 = 0;
      *(&v164 + 1) = 0;
    }

    else
    {
      *(&v61 + 1) = v62;
      v164 = v61;
      v148 = v62;
      v150 = v62;
    }
  }

  {
    v64 = v148;
    v65 = v150;
  }

  else
  {
    CGShadingGetBounds();
    *v69.i64 = v68;
    *&v69.i64[1] = v66;
    v70.f64[0] = 0.0;
    v72.i64[0] = *&v71.f64[0];
    v72.i64[1] = v67;
    v73 = -v71.f64[0];
    v74 = vdupq_lane_s64(vcgtq_f64(v70, v71).i64[0], 0);
    v71.f64[1] = v66;
    v71.f64[0] = v71.f64[0] + v68;
    v75 = vbslq_s8(v74, v71, v69);
    v76.i64[1] = v67;
    *v76.i64 = v73;
    v77 = vbslq_s8(v74, v76, v72);
    if (*&v67 < 0.0)
    {
      v75.f64[1] = *&v67 + v66;
      v77.f64[1] = -*&v67;
    }

    v78 = v77.f64[1];
    if (v77.f64[0] > v77.f64[1])
    {
      v78 = v77.f64[0];
    }

    if (v78 < 1.79769313e308)
    {
      v79 = *(*&v2 + 16);
      v80 = vmlaq_laneq_f64(vmulq_n_f64(**&v2, v75.f64[0]), v79, v75, 1);
      v81 = vmulq_n_f64(**&v2, v77.f64[0]);
      v82 = vaddq_f64(v80, v81);
      v83 = vminnmq_f64(v80, v82);
      v84 = vmaxnmq_f64(v80, v82);
      v85 = vmlaq_laneq_f64(v80, v79, v77, 1);
      v86 = vaddq_f64(v85, v81);
      v87 = vminnmq_f64(v83, vminnmq_f64(v85, v86));
      v88 = vmaxnmq_f64(v84, vmaxnmq_f64(v85, v86));
      v75 = vaddq_f64(v87, *(*&v2 + 32));
      v77 = vsubq_f64(v88, v87);
    }

    v89 = vceqzq_f64(v77);
    v90 = vorrq_s8(vdupq_laneq_s64(v89, 1), v89).u64[0];
    v91 = 0uLL;
    if ((v90 & 0x8000000000000000) == 0)
    {
      v92 = vceqq_f64(v77, v77);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v92), 1), v92).u64[0] & 0x8000000000000000) == 0)
      {
        v93 = vcvtmq_s64_f64(vmaxnmq_f64(v75, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v91 = vuzp1q_s32(v93, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v75, v77), vdupq_n_s64(0x41C0000000000000uLL))), v93));
      }
    }

    v65 = v150;
    v94 = vclez_s32(v150);
    if ((vpmax_u32(v94, v94).u32[0] & 0x80000000) != 0)
    {
      v64 = v148;
    }

    else
    {
      v95 = vextq_s8(v91, v91, 8uLL).u64[0];
      v96 = vclez_s32(v95);
      if ((vpmax_u32(v96, v96).u32[0] & 0x80000000) != 0 || (v97 = vadd_s32(*v91.i8, v95), *&v98 = vmax_s32(*&v164, *v91.i8), v64 = vsub_s32(vmin_s32(vadd_s32(*&v164, v150), v97), *&v98), v99 = vclez_s32(v64), (vpmax_u32(v99, v99).u32[0] & 0x80000000) != 0))
      {
        v65 = 0;
        *(&v164 + 1) = 0;
        v64 = 0;
      }

      else
      {
        *(&v98 + 1) = v64;
        v164 = v98;
        v65 = v64;
      }
    }
  }

  v100 = v64.i32[0];
  v101 = v64.u32[1];
  if (!*&v64)
  {
    *(*(v53 + 16) + 8) = 0;
    v104 = *(*(v53 + 656) + 8);
    transform.a = 0.0;
    transform.b = 0.0;
    CA::OGL::emit_combine(v53, 0, 0, 0, v104, &transform);
    return;
  }

  v102 = *(*&v6 + 8);
  v149 = v64;
  v151 = v65;
  if (v102)
  {
    v103 = *(v102 + 560);
  }

  else
  {
    v103 = 0;
  }

  if (CGColorSpaceGetModel(v103))
  {
    v105 = 2;
  }

  else
  {
    v105 = 1;
  }

  v106 = *&v6 + 192 * v105;
  if ((v101 + *(v106 + 1448) - 1) / *(v106 + 1448) * ((v100 + *(v106 + 1444) - 1) / *(v106 + 1444)) > *(&CA::CG::Renderer::_max_mosaic_cells + v105))
  {
    v107 = CA::Render::format_rowbytes(0xB, v100);
    v108 = v107;
    v152 = 0;
    v153 = v107;
    if (is_mul_ok(v107, v101))
    {
      v109 = (v107 * v101);
    }

    else
    {
      v109 = 0;
    }

    v110 = CA::Render::aligned_malloc(v109, &v152, 0);
    if (!v110)
    {
      return;
    }

    v111 = v110;
    v112 = CAGetCachedCGBitmapContext_(v110, v100, v101, 0xBu, v108, *(v53 + 560));
    if (v112 && (v114 = v112[2]) != 0)
    {
      CGContextTranslateCTM(v112[2], -v164, -DWORD1(v164));
      v115 = *(*&v2 + 16);
      v116 = *(*&v2 + 32);
      *&transform.a = **&v2;
      *&transform.c = v115;
      *&transform.tx = v116;
      CGContextConcatCTM(v114, &transform);
      if (CGShadingGetType())
      {
        CGContextSetCompositeOperation();
      }

      else
      {
        CGContextSetCompositeOperation();
        CGContextClear();
      }

      CGContextDrawShading(v114, v4);
      CAReleaseCachedCGContext(v114);
      v135 = v152;
      v136 = CA::Render::Image::new_image(0xB, v100, v101, 1u, *(v53 + 560), v111, &v153, CA::Render::aligned_free, v152, v147);
      if (v136)
      {
        v137 = v136;
        v170 = 0;
        *&v171 = 0;
        v138 = CA::OGL::Context::bind_image(v53, 0, v136, 256, 0, 0, 0, 0, 0.0, &v170, 0);
        if (v138)
        {
          v141 = v138;
          if (v100 <= v101)
          {
            v142 = v101;
          }

          else
          {
            v142 = v100;
          }

          v139.i32[0] = 1073741822;
          v140.i32[0] = v142;
          v143.i64[0] = v164;
          v143.i64[1] = SDWORD1(v164);
          v144 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v140, v139), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v143));
          v143.i64[0] = v149.i32[0];
          v143.i64[1] = v149.i32[1];
          v145 = vdup_n_s32(v142 > 1073741822);
          v146 = vcvtq_f64_s64(v143);
          v143.i64[0] = v145.u32[0];
          v143.i64[1] = v145.u32[1];
          v154 = v144;
          v155 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v143, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v146);
          *&transform.a = &v154;
          *&transform.b = &CA::identity_transform;
          memset(&transform.c, 0, 32);
          CA::OGL::fill_rect_tex(v53, &transform, &v170);
          (*(*v53 + 560))(v53, v141, 0);
        }

        if (atomic_fetch_add(v137 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v137 + 16))(v137);
        }

        return;
      }

      v127 = v111;
      v126 = v135;
    }

    else
    {
      v126 = v152;
      v127 = v111;
    }

    CA::Render::aligned_free(v127, v126, v113);
    return;
  }

  v117 = v106 + 1440;
  v118 = *(v53 + 16);
  v119 = *(v118 + 16) & 0xFFFFFF00FF00FF00;
  if (*(v118 + 8) == 0x3C003C003C003C00)
  {
    v120 = 1;
  }

  else
  {
    v120 = 3;
  }

  *(v118 + 16) = v120 | v119;
  *(v118 + 20) = HIDWORD(v119);
  if ((*(v117 + 144) & 0x80000000) != 0)
  {
    *(v117 + 144) = 0;
    *(v117 + 148) = 0;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    v171 = 0u;
    v170 = &unk_1EF203878;
    v121 = CGShadingGetIdentifier();
    LODWORD(v171) = v121;
    *(&v171 + 4) = v151;
    if (&v172 == *&v2)
    {
      v124 = *(&v174 + 1);
      v125 = *&v174;
      v123 = v172;
      v122 = v173;
    }

    else
    {
      v123 = **&v2;
      v122 = *(*&v2 + 16);
      v172 = **&v2;
      v173 = v122;
      v125 = *(*&v2 + 32);
      v124 = *(*&v2 + 40);
    }

    v128 = v164;
    v129 = DWORD1(v164);
    v130 = v125 - v164;
    v131 = v124 - SDWORD1(v164);
    *&v174 = v130;
    *(&v174 + 1) = v131;
    *&v154.i64[1] = v6;
    v155.i64[0] = v53;
    *(v53 + 144) = 0;
    *(v53 + 112) = v53 + 1386;
    *(v53 + 120) = xmmword_183E20E50;
    v155.u64[1] = v149;
    p_transform = &transform;
    v157 = 0x2000;
    v158 = 0;
    v159 = 0;
    v154.i64[0] = &unk_1EF2038A8;
    v160 = v4;
    v122.f64[0] = 256.0 * v122.f64[0] + vaddvq_f64(vmulq_f64(v123, xmmword_183E21790)) * 33.0;
    v161 = v128;
    v162 = v129;
    v132 = v131 + (v130 + vaddvq_f64(vmulq_f64(v122, xmmword_183E217A0)) * 33.0) * 33.0;
    v133 = -v132;
    if (v132 >= 0.0)
    {
      v133 = v132;
    }

    v163 = v2;
    CA::OGL::Mosaic::draw(v117, v53, 6, 33 * (33 * (33 * v133 + v151.i32[0]) + v151.i32[1]) + v121, &v170, v100, v101, 1, &v154, 0);
    CA::CG::MosaicBitmapDelegate::~MosaicBitmapDelegate(&v154);
    v134 = *(v117 + 160);
    if (v134)
    {
      (*(*v53 + 560))(v53, v134, 0);
      *(v117 + 160) = 0;
      *(v117 + 152) = -1;
    }

    *(v117 + 144) = -1;
    *(v117 + 112) = 0;
  }

  *(*(v53 + 16) + 16) = 0;
}

uint64_t CA::CG::anonymous namespace::shading_has_background(CA::CG::_anonymous_namespace_ *this, CGShading *a2)
{
  result = CGShadingGetBackground();
  if (result)
  {
    v3 = result;
    ColorSpace = CGShadingGetColorSpace();
    return *(v3 + 8 * CGColorSpaceGetNumberOfComponents(ColorSpace)) > 0.0;
  }

  return result;
}

uint64_t CA::CG::anonymous namespace::draw_shading_delegate(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = v3[84];
  if (v4)
  {
    LODWORD(v4) = (*(v4 + 92) & 0x130) != 0;
  }

  if (a2 == 5)
  {
    LODWORD(v4) = 1;
  }

  v5 = v4 == 0;
  v6 = 576;
  if (!v5)
  {
    v6 = 960;
  }

  v7 = *(a1 + 8) + v6;
  v8 = *(v7 + 1584);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = v7 + 1440;
    *(v7 + 1584) = 0;
    *(v7 + 1588) = a2 == 7;
    *(v7 + 1589) = a2 == 7;
    CA::OGL::Mosaic::draw(v7 + 1440, v3, a2, a3, 0, *(a1 + 56), 1, 0, a1, 0);
    v10 = *(v9 + 160);
    if (v10)
    {
      (*(*v3 + 560))(v3, v10, 0);
      *(v9 + 160) = 0;
      *(v9 + 152) = -1;
    }

    *(v9 + 144) = -1;
    *(v9 + 112) = 0;
  }

  return v8 >> 31;
}

void CA::CG::anonymous namespace::ShadingBitmapDelegate::draw(CA::CG::_anonymous_namespace_::ShadingBitmapDelegate *this, CGContextRef c, double a3)
{
  v9 = *MEMORY[0x1E69E9840];
  LODWORD(a3) = *(this + 7);
  v8.c = 0.0;
  *&v8.a = 0x3FF0000000000000uLL;
  *&v8.d = xmmword_183E20F00;
  v8.ty = *&a3;
  CGContextConcatCTM(c, &v8);
  CGContextTranslateCTM(c, -*(this + 18), -*(this + 19));
  v5 = *(this + 10);
  v6 = v5[1];
  v7 = v5[2];
  *&v8.a = *v5;
  *&v8.c = v6;
  *&v8.tx = v7;
  CGContextConcatCTM(c, &v8);
  if (CGShadingGetType())
  {
    CGContextSetCompositeOperation();
  }

  else
  {
    CGContextSetCompositeOperation();
    CGContextClear();
  }

  CGContextDrawShading(c, *(this + 8));
}

float CA::CG::anonymous namespace::ShadingBitmapDelegate::quad(CA::CG::_anonymous_namespace_::ShadingBitmapDelegate *this, const CA::Bounds *a2, float *a3)
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

  v9 = *a2 + *(this + 18);
  v10 = *(a2 + 1) + *(this + 19);
  v11 = *(a2 + 2) + v9;
  v12 = *(a2 + 3) + v10;
  CA::OGL::Context::array_rect(v6, v9, v10, v11, v12);
  result = *a3;
  v14 = *(a3 + 1);
  v15 = *(a3 + 2);
  v16 = *(a3 + 3);
  v17 = *(v6 + 136) + 48 * *(v6 + 144);
  *(v17 - 176) = *a3;
  *(v17 - 172) = v14;
  *(v17 - 128) = v15;
  *(v17 - 124) = v14;
  *(v17 - 80) = v15;
  *(v17 - 76) = v16;
  *(v17 - 32) = result;
  *(v17 - 28) = v16;
  v18 = *(*(v6 + 16) + 8);
  *(v17 - 160) = v18;
  *(v17 - 112) = v18;
  *(v17 - 64) = v18;
  *(v17 - 16) = v18;
  return result;
}

void CA::CG::anonymous namespace::ShadingBitmapDelegate::~ShadingBitmapDelegate(CA::CG::_anonymous_namespace_::ShadingBitmapDelegate *this)
{
  CA::CG::MosaicBitmapDelegate::~MosaicBitmapDelegate(this);

  JUMPOUT(0x1865EA9A0);
}

__n128 CA::CG::anonymous namespace::ShadingKey::copy(CA::CG::_anonymous_namespace_::ShadingKey *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_malloc(malloc_zone, 0x48uLL, 0x165299FDuLL);
  if (v2)
  {
    *v2 = &unk_1EF203878;
    result.n128_u64[0] = *(this + 1);
    *(v2 + 1) = result.n128_u64[0];
    *(v2 + 4) = *(this + 4);
    if (v2 != this)
    {
      *(v2 + 24) = *(this + 24);
      *(v2 + 40) = *(this + 40);
      result = *(this + 56);
      *(v2 + 56) = result;
    }
  }

  return result;
}

BOOL CA::CG::anonymous namespace::ShadingKey::equal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v3 = 0;
  v4 = 5;
  while (v3 != 5)
  {
    v5 = *(a1 + 32 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3++);
    if (v5 != v6)
    {
      v4 = v3 - 1;
      return v4 > 4;
    }
  }

  return v4 > 4;
}

void CA::CG::anonymous namespace::ShadingKey::~ShadingKey(CA::CG::_anonymous_namespace_::ShadingKey *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t CA::CG::anonymous namespace::ConicShadingDelegate::quad(CA::CG::_anonymous_namespace_::ConicShadingDelegate *this, const CA::Bounds *a2, float *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  v66 = 0;
  v67 = 0;
  result = CA::Shape::get_bounds(*(*(v5 + 656) + 8), &v66);
  v7 = *(v5 + 672);
  if (v7)
  {
    v8 = v7 + 6;
  }

  else
  {
    v8 = (v5 + 608);
  }

  v9 = vclez_s32(v67);
  if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) == 0)
  {
    v10 = v8[1];
    v11 = vclez_s32(v10);
    if ((vpmax_u32(v11, v11).u32[0] & 0x80000000) == 0)
    {
      v12 = vadd_s32(*v8, v10);
      v13 = vmax_s32(v66, *v8);
      v14 = vmin_s32(vadd_s32(v66, v67), v12);
      v15 = vclez_s32(vsub_s32(v14, v13));
      if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) == 0)
      {
        v16 = v13.i32[0];
        v17 = v13.i32[1];
        v18 = v14.i32[0];
        v19.i64[0] = v13.i32[0];
        v19.i64[1] = v13.i32[1];
        v20 = vcvtq_f64_s64(v19);
        v19.i64[0] = v14.i32[0];
        v19.i64[1] = v13.i32[1];
        v21 = vcvtq_f64_s64(v19);
        v22 = v14.i32[1];
        v61 = v21;
        v63 = v20;
        v21.f64[1] = v14.i32[1];
        v20.f64[1] = v14.i32[1];
        v59 = v20;
        v60 = v21;
        v23 = *(this + 3);
        v20.f64[1] = *(v23 + 16);
        v20.f64[0] = *(v23 + 24);
        v24 = vmulq_f64(v20, *v23);
        v25 = vsubq_f64(v24, vdupq_laneq_s64(v24, 1)).f64[0];
        if (v25 == 0.0)
        {
          v57 = 0.0;
          v58 = 0.0;
          v55 = 0.0;
          v56 = 0.0;
          v32 = 0uLL;
        }

        else
        {
          v26 = 1.0 / v25;
          v27 = *(v23 + 32);
          v28 = vmulq_n_f64(*(v23 + 8), v26);
          v29.f64[1] = *v23;
          v29.f64[0] = *(v23 + 24);
          v30 = vmulq_n_f64(v29, v26);
          v57 = v30.f64[0];
          v58 = -v28.f64[0];
          v55 = -v28.f64[1];
          *&v56 = vextq_s8(v30, v30, 8uLL).u64[0];
          v31 = vmulq_f64(v27, v28);
          v32 = vmlsq_f64(vextq_s8(v31, v31, 8uLL), v30, v27);
        }

        v35 = v32;
        v36 = *(this + 10);
        v37 = __sincosf_stret(v36);
        v38 = vdupq_lane_s64(*&v35.f64[0], 0);
        v39 = vdupq_lane_s64(*&v35.f64[1], 0);
        v34 = (this + 64);
        v40 = vld1q_dup_f64(v34);
        v33 = (this + 72);
        v41 = vld1q_dup_f64(v33);
        v42 = vzip1q_s64(v61, v63);
        v43 = vzip1q_s64(v63, v61);
        v44 = vzip2q_s64(v60, v59);
        v45 = vzip2q_s64(v63, v61);
        v46 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v40, vmlaq_n_f64(vmlaq_n_f64(v38, v43, v57), v45, v55))), vsubq_f64(v40, vmlaq_n_f64(vmlaq_n_f64(v38, v42, v57), v44, v55)));
        v47 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(v39, v43, v58), v45, v56), v41)), vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(v39, v42, v58), v44, v56), v41));
        v48 = vmlaq_n_f32(vnegq_f32(vmulq_n_f32(v47, v37.__sinval)), v46, v37.__cosval);
        v49 = vmulq_n_f32(v46, v37.__sinval);
        *v41.f64 = a3[1];
        *v42.f64 = a3[2];
        *v43.f64 = a3[3];
        *v44.f64 = ((*v42.f64 - *a3) * 0.5) / *(this + 14);
        v46.f32[0] = *v44.f64 + *a3;
        *a3 = v46.f32[0];
        *v42.f64 = *v42.f64 - *v44.f64;
        a3[2] = *v42.f64;
        *(v5 + 160) = *v42.f64 - v46.f32[0];
        *(v5 + 164) = v46.i32[0];
        *(v5 + 168) = (*v43.f64 + *v41.f64) * 0.5;
        *(v5 + 172) = LODWORD(v42.f64[0]);
        v70 = 0u;
        v50 = *(*(v5 + 656) + 8);
        v51 = vmlaq_n_f32(v49, v47, v37.__cosval);
        v64 = vzip2q_s32(v48, v51);
        v65 = 0u;
        v62 = vzip1q_s32(v48, v51);
        v68[0] = v5;
        v68[1] = v50;
        v69 = 0u;
        v68[2] = 0;
        WORD4(v69) = 256;
        CA::OGL::Context::ClippedArray::start(v68);
        while (1)
        {
          result = CA::OGL::Context::ClippedArray::next_rect(v68, &v65);
          if (!result)
          {
            break;
          }

          CA::OGL::Context::array_rect(v5, v16, v17, v18, v22);
          v52 = *(v5 + 136) + 48 * *(v5 + 144);
          *(v52 - 176) = v62.i64[0];
          *(v52 - 128) = v62.i64[1];
          *(v52 - 80) = v64.i64[0];
          *(v52 - 32) = v64.i64[1];
          v53 = *(*(v5 + 16) + 8);
          v54 = *(v5 + 136) + 48 * *(v5 + 144);
          *(v54 - 160) = v53;
          *(v54 - 112) = v53;
          *(v54 - 64) = v53;
          *(v54 - 16) = v53;
        }
      }
    }
  }

  return result;
}

uint64_t CA::CG::anonymous namespace::ShadingDelegate::read(uint64_t this, int a2, const CA::Bounds *a3, unsigned __int8 *a4)
{
  if (a2 == 13 || a2 == 11)
  {
    if (*a3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a3 + 1) == 0;
    }

    v5 = v4 && *(a3 + 3) == 1;
    if (v5 && *(a3 + 2) == *(this + 56))
    {
      return (***(this + 32))(*(this + 32), *(this + 8), *(this + 40), a4);
    }
  }

  return this;
}

uint64_t CA::CG::anonymous namespace::RadialShadingDelegate::quad(CA::CG::_anonymous_namespace_::RadialShadingDelegate *this, const CA::Bounds *a2, float *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  v92 = 0;
  v93 = 0;
  result = CA::Shape::get_bounds(*(*(v5 + 656) + 8), &v92);
  v7 = *(v5 + 672);
  if (v7)
  {
    v8 = v7 + 6;
  }

  else
  {
    v8 = (v5 + 608);
  }

  v9 = vclez_s32(v93);
  if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) == 0)
  {
    v10 = v8[1];
    v11 = vclez_s32(v10);
    if ((vpmax_u32(v11, v11).u32[0] & 0x80000000) == 0)
    {
      v12 = vmax_s32(v92, *v8);
      v13 = vmin_s32(vadd_s32(v92, v93), vadd_s32(*v8, v10));
      v14 = vclez_s32(vsub_s32(v13, v12));
      if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) == 0)
      {
        v16 = *(this + 12);
        v15 = *(this + 13);
        v17 = v16 - v15;
        if (v16 - v15 < 0.0)
        {
          v17 = -(v16 - v15);
        }

        v18.i64[0] = v12.i32[0];
        v18.i64[1] = v12.i32[1];
        v19 = vcvtq_f64_s64(v18);
        v18.i64[0] = v13.i32[0];
        v18.i64[1] = v12.i32[1];
        v20 = vcvtq_f64_s64(v18);
        v21 = v13.i32[1];
        v22.i64[0] = v20.i64[0];
        v23.i64[0] = v19.i64[0];
        v24 = *(this + 3);
        v25.f64[1] = *(v24 + 16);
        v25.f64[0] = *(v24 + 24);
        v26 = vmulq_f64(v25, *v24);
        v27 = vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0];
        if (v27 == 0.0)
        {
          v37 = 0uLL;
          v32.f64[0] = 0.0;
          v33 = 0.0;
          v34 = 0.0;
          v35 = 0.0;
        }

        else
        {
          v28 = 1.0 / v27;
          v29 = *(v24 + 32);
          v30 = vmulq_n_f64(*(v24 + 8), v28);
          v31.f64[1] = *v24;
          v31.f64[0] = *(v24 + 24);
          v32 = vmulq_n_f64(v31, v28);
          v33 = -v30.f64[0];
          v34 = -v30.f64[1];
          *&v35 = vextq_s8(v32, v32, 8uLL).u64[0];
          v36 = vmulq_f64(v29, v30);
          v37 = vmlsq_f64(vextq_s8(v36, v36, 8uLL), v32, v29);
        }

        v38 = (this + 64);
        v39 = *&v37.f64[1];
        v40 = vdupq_lane_s64(*&v37.f64[0], 0);
        v41 = vdupq_lane_s64(v39, 0);
        v42 = vld1q_dup_f64(v38);
        v43 = (this + 72);
        v44 = vld1q_dup_f64(v43);
        v45 = vzip1q_s64(v20, v19);
        v46 = vzip1q_s64(v19, v20);
        *&v22.i64[1] = v13.i32[1];
        *&v23.i64[1] = v13.i32[1];
        v47 = vzip2q_s64(v22, v23);
        v48 = vzip2q_s64(v19, v20);
        v49 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(v40, v46, v32.f64[0]), v48, v34), v42)), vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(v40, v45, v32.f64[0]), v47, v34), v42));
        v50 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(v41, v46, v33), v48, v35), v44)), vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(v41, v45, v33), v47, v35), v44));
        if (v17 >= 0.000001)
        {
          v51 = *(this + 13);
        }

        else
        {
          v51 = v15 + 0.000001;
        }

        v52 = a3[2];
        v53 = ((v52 - *a3) * 0.5) / *(this + 14);
        v54 = v53 + *a3;
        *a3 = v54;
        v55 = v52 - v53;
        a3[2] = v52 - v53;
        v97 = 0uLL;
        v56 = *(this + 6);
        if (v56)
        {
          v87 = v12;
          v89 = v13.i32[0];
          v85 = v50;
          v86 = v49;
          CA::OGL::Context::device_float_color(v5, &v97, *(this + 5), v56, 0.0, 0.0, v53);
          v50 = v85;
          v49 = v86;
          v12 = v87;
          v13.i32[0] = v89;
          v55 = a3[2];
          v54 = *a3;
        }

        v57 = v12.i32[0];
        v58 = v12.i32[1];
        v59 = v13.i32[0];
        v60 = vzip2q_s32(v49, v50);
        v61 = vzip1q_s32(v49, v50);
        v62 = v55 - v54;
        v63 = (a3[3] + a3[1]) * 0.5;
        v64 = 1.0 / (v51 - v16);
        if (*(this + 114) == 1)
        {
          v88 = vmulq_n_f32(v61, v64);
          v90 = vmulq_n_f32(v60, v64);
          v65 = vmulq_n_f64(vsubq_f64(*(this + 5), *(this + 4)), v64);
          v66 = vaddvq_f64(vmulq_f64(v65, v65));
          if (v66 < 0.00000001)
          {
            v66 = 0.00000001;
          }

          v67 = sqrt(v66);
          v68 = vcvt_f32_f64(vdivq_f64(v65, vdupq_lane_s64(*&v67, 0)));
          v69 = v16 * v64;
          v70 = v64 < 0.0;
          v71 = 1.0;
          if (v70)
          {
            v72 = -1.0;
          }

          else
          {
            v72 = 1.0;
          }

          v73 = v67;
          v74 = 1.0 / (v66 + -1.0);
          v75 = 1.0 - v66;
          v76 = -(1.0 - v66);
          if (v75 < 0.0)
          {
            v75 = v76;
          }

          v70 = v75 < 0.00001;
          v77 = 0.0;
          if (v70)
          {
            v77 = 1.0;
          }

          v55 = v77;
          *(v5 + 400) = v69;
          *(v5 + 404) = v72;
          *(v5 + 408) = v73;
          *(v5 + 412) = v74;
          v78 = -1000000.0;
          if (!*(this + 112))
          {
            v78 = 0.0;
          }

          if (*(this + 113))
          {
            v71 = 1000000.0;
          }

          *(v5 + 160) = v78;
          *(v5 + 164) = v71;
          *(v5 + 168) = v68;
        }

        else
        {
          v62 = v62 * v64;
          v79 = LODWORD(v54);
          v54 = v54 - v16 * v62;
          if (*(this + 112))
          {
            v79 = -915135488;
          }

          if (*(this + 113))
          {
            v80 = 1232348160;
          }

          else
          {
            v80 = LODWORD(v55);
          }

          *(v5 + 160) = v79;
          *(v5 + 164) = v80;
          v88 = v61;
          v90 = v60;
        }

        *(v5 + 240) = v97;
        *(v5 + 320) = v62;
        *(v5 + 324) = v54;
        *(v5 + 328) = v63;
        *(v5 + 332) = v55;
        v91 = 0u;
        v96 = 0u;
        v81 = *(*(v5 + 656) + 8);
        v94[0] = v5;
        v94[1] = v81;
        v95 = 0u;
        v94[2] = 0;
        WORD4(v95) = 256;
        CA::OGL::Context::ClippedArray::start(v94);
        while (1)
        {
          result = CA::OGL::Context::ClippedArray::next_rect(v94, &v91);
          if (!result)
          {
            break;
          }

          CA::OGL::Context::array_rect(v5, v57, v58, v59, v21);
          v82 = *(v5 + 136) + 48 * *(v5 + 144);
          *(v82 - 176) = v88.i64[0];
          *(v82 - 128) = v88.i64[1];
          *(v82 - 80) = v90.i64[0];
          *(v82 - 32) = v90.i64[1];
          v83 = *(*(v5 + 16) + 8);
          v84 = *(v5 + 136) + 48 * *(v5 + 144);
          *(v84 - 160) = v83;
          *(v84 - 112) = v83;
          *(v84 - 64) = v83;
          *(v84 - 16) = v83;
        }
      }
    }
  }

  return result;
}

uint64_t CA::CG::anonymous namespace::AxialShadingDelegate::quad(CA::CG::_anonymous_namespace_::AxialShadingDelegate *this, const CA::Bounds *a2, float *a3)
{
  v119 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  v113 = 0;
  v114 = 0;
  result = CA::Shape::get_bounds(*(*(v5 + 656) + 8), &v113);
  v8 = *(v5 + 672);
  if (v8)
  {
    v9 = v8 + 6;
  }

  else
  {
    v9 = (v5 + 608);
  }

  v10 = vclez_s32(v114);
  if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) != 0)
  {
    return result;
  }

  v11 = v9[1];
  v12 = vclez_s32(v11);
  if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0)
  {
    return result;
  }

  v13 = vmax_s32(v113, *v9);
  v14 = vsub_s32(vmin_s32(vadd_s32(v113, v114), vadd_s32(*v9, v11)), v13);
  v15 = vclez_s32(v14);
  if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) != 0)
  {
    return result;
  }

  v16 = v14.i32[0];
  v17 = v13.i32[0];
  if (*(this + 128) == 1)
  {
    v18 = *(this + 3);
  }

  else
  {
    v19 = *(this + 6);
    v20 = *(this + 7);
    v7.f64[0] = 0.0;
    v21 = vdupq_lane_s64(vcgtq_f64(v7, v20).i64[0], 0);
    v22.i64[1] = *(this + 15);
    *v22.i64 = -v20.f64[0];
    v23 = vbslq_s8(v21, v22, v20);
    v24 = vaddq_f64(v20, v19);
    v21.i64[0] = vbslq_s8(v21, v24, v19).u64[0];
    v25.i64[0] = v21.i64[0];
    v25.i64[1] = *(this + 13);
    v26 = vdupq_lane_s64(vcgtq_f64(v7, vdupq_laneq_s64(v20, 1)).i64[0], 0);
    v21.i64[1] = v24.i64[1];
    v27 = vbslq_s8(v26, v21, v25);
    v21.i64[0] = v23.i64[0];
    v21.i64[1] = *&vnegq_f64(v20).f64[1];
    v28 = vbslq_s8(v26, v21, v23);
    v18 = *(this + 3);
    v29 = v28.f64[1];
    if (v28.f64[0] > v28.f64[1])
    {
      v29 = v28.f64[0];
    }

    if (v29 < 1.79769313e308)
    {
      v30 = *(v18 + 16);
      v31 = vmlaq_laneq_f64(vmulq_n_f64(*v18, v27.f64[0]), v30, v27, 1);
      v32 = vmulq_n_f64(*v18, v28.f64[0]);
      v33 = vaddq_f64(v31, v32);
      v34 = vminnmq_f64(v31, v33);
      v35 = vmaxnmq_f64(v31, v33);
      v36 = vmlaq_laneq_f64(v31, v30, v28, 1);
      v37 = vaddq_f64(v36, v32);
      v38 = vminnmq_f64(v34, vminnmq_f64(v36, v37));
      v39 = vmaxnmq_f64(v35, vmaxnmq_f64(v36, v37));
      v27 = vaddq_f64(v38, *(v18 + 32));
      v28 = vsubq_f64(v39, v38);
    }

    v40 = v14;
    v41 = vceqzq_f64(v28);
    v42 = vorrq_s8(vdupq_laneq_s64(v41, 1), v41).u64[0];
    v43 = 0uLL;
    if ((v42 & 0x8000000000000000) == 0)
    {
      v44 = vceqq_f64(v28, v28);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v44), 1), v44).u64[0] & 0x8000000000000000) == 0)
      {
        v45 = vminnmq_f64(vaddq_f64(v27, v28), vdupq_n_s64(0x41C0000000000000uLL));
        v46 = vcvtmq_s64_f64(vmaxnmq_f64(v27, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v43 = vuzp1q_s32(v46, vsubq_s64(vcvtpq_s64_f64(v45), v46));
      }
    }

    v47 = vclez_s32(v14);
    if ((vpmax_u32(v47, v47).u32[0] & 0x80000000) == 0)
    {
      v48 = vextq_s8(v43, v43, 8uLL).u64[0];
      v49 = vclez_s32(v48);
      v50 = vpmax_u32(v49, v49).u32[0];
      v51.i32[1] = v13.i32[1];
      v51.i32[0] = 0;
      if ((v50 & 0x80000000) != 0 || (v52 = vadd_s32(v13, v40), v13 = vmax_s32(v13, *v43.i8), v14 = vsub_s32(vmin_s32(v52, vadd_s32(*v43.i8, v48)), v13), v53 = vclez_s32(v14), (vpmax_u32(v53, v53).u32[0] & 0x80000000) != 0))
      {
        v16 = 0;
        goto LABEL_21;
      }

      v17 = v13.i32[0];
      v16 = v14.i32[0];
    }
  }

  v51 = vzip2_s32(v14, v13);
LABEL_21:
  v54 = v17;
  v55 = v51.i32[1];
  v56 = v51.i32[1];
  v57 = v16 + v17;
  v58 = (v16 + v17);
  v59 = v51.i32[0] + v51.i32[1];
  v60 = (v51.i32[0] + v51.i32[1]);
  v61.f64[1] = *(v18 + 16);
  v61.f64[0] = *(v18 + 24);
  v62 = vmulq_f64(v61, *v18);
  v63 = vsubq_f64(v62, vdupq_laneq_s64(v62, 1)).f64[0];
  if (v63 == 0.0)
  {
    v72 = 0uLL;
    v68.f64[0] = 0.0;
    v70 = 0.0;
    v69 = 0uLL;
  }

  else
  {
    v64 = 1.0 / v63;
    v65 = *(v18 + 32);
    v66 = vmulq_n_f64(*(v18 + 8), v64);
    v67.f64[1] = *v18;
    v67.f64[0] = *(v18 + 24);
    v68 = vmulq_n_f64(v67, v64);
    v69 = vnegq_f64(v66);
    v70 = v68.f64[1];
    v71 = vmulq_f64(v65, v66);
    v72 = vmlsq_f64(vextq_s8(v71, v71, 8uLL), v68, v65);
  }

  v73 = vmuld_lane_f64(v56, v69, 1);
  v74 = v70 * v56;
  v75 = vmuld_lane_f64(v60, v69, 1);
  v76 = v70 * v60;
  v77 = *(this + 8);
  v78 = *(this + 9);
  v79 = *(this + 10) - v77;
  v80 = *(this + 11) - v78;
  v81 = *a3;
  v82 = a3[2];
  v83 = (v82 - *a3) / (v79 * v79 + v80 * v80);
  v84 = a3[3] + a3[1];
  v85 = v72.f64[0] + v68.f64[0] * v54;
  v86 = v72.f64[1] + v69.f64[0] * v54;
  v87 = v83;
  v88 = *a3;
  v89 = v88 + (v79 * (v85 + v73 - v77) + v80 * (v86 + v74 - v78)) * v87;
  v90 = v72.f64[0] + v68.f64[0] * v58;
  v91 = v72.f64[1] + v69.f64[0] * v58;
  v92 = v88 + (v79 * (v90 + v73 - v77) + v80 * (v91 + v74 - v78)) * v87;
  v93 = v88 + (v79 * (v90 + v75 - v77) + v80 * (v91 + v76 - v78)) * v87;
  v94 = v88 + (v79 * (v85 + v75 - v77) + v80 * (v86 + v76 - v78)) * v87;
  v95 = *(v5 + 16);
  if (*(v95 + 16) == 47)
  {
    v115 = 0uLL;
    v96 = -1000000.0;
    if (!*(this + 129))
    {
      v96 = v81;
    }

    v97 = v81 + v82;
    if (*(this + 130))
    {
      v97 = 1000000.0;
    }

    v98 = *(v95 + 96);
    v99 = *(v95 + 104);
    v100 = v99 + (v98 * v96);
    v101 = v99 + (v97 * v98);
    v102 = *(this + 6);
    if (v102)
    {
      CA::OGL::Context::device_float_color(v5, &v115, *(this + 5), v102, 0.0, 0.0, v98);
    }

    *(v5 + 160) = v100;
    *(v5 + 164) = v101;
    *(v5 + 240) = v115;
  }

  v103 = v84 * 0.5;
  v104 = v89;
  v111 = v104;
  v106 = v93;
  v112 = 0u;
  v118 = 0u;
  v108 = *(*(v5 + 656) + 8);
  *&v115 = v5;
  *(&v115 + 1) = v108;
  v117 = 0u;
  v116 = 0;
  WORD4(v117) = 256;
  CA::OGL::Context::ClippedArray::start(&v115);
  while (1)
  {
    result = CA::OGL::Context::ClippedArray::next_rect(&v115, &v112);
    if (!result)
    {
      break;
    }

    CA::OGL::Context::array_rect(v5, v17, v55, v57, v59);
    v109 = *(v5 + 136) + 48 * *(v5 + 144);
    *(v109 - 176) = v111;
    *(v109 - 172) = v103;
    v105 = v92;
    *(v109 - 128) = v105;
    *(v109 - 124) = v103;
    *(v109 - 80) = v106;
    *(v109 - 76) = v103;
    v107 = v94;
    *(v109 - 32) = v107;
    *(v109 - 28) = v103;
    v110 = *(*(v5 + 16) + 8);
    *(v109 - 160) = v110;
    *(v109 - 112) = v110;
    *(v109 - 64) = v110;
    *(v109 - 16) = v110;
  }

  return result;
}

void CA::CG::anonymous namespace::FunctionColormapGenerator::generate(CA::CG::_anonymous_namespace_::FunctionColormapGenerator *this, CA::CG::Renderer *a2, CGColorSpace *a3, unsigned __int8 *a4, int a5, char a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v20 = 0u;
  v19 = 0u;
  *&v18[16] = 0u;
  *v18 = 0u;
  v10 = *(this + 1);
  v16 = *(a2 + 1);
  LOBYTE(v17) = (*(a2 + 136) & 0x40) != 0;
  *(&v17 + 1) = v10;
  *v18 = CGFunctionGetRangeDimension();
  *&v18[8] = xmmword_183E217B0;
  *&v18[24] = a3;
  LODWORD(v19) = CGColorSpaceGetModel(a3);
  *(&v19 + 1) = a4;
  LODWORD(v20) = a5;
  BYTE4(v20) = a6;
  DWORD2(v20) = 0;
  Domain = CGFunctionGetDomain();
  if (Domain)
  {
    v12 = *Domain;
    *&v18[8] = (*(Domain + 8) - *Domain) * 0.00048828125;
    *&v18[16] = v12;
  }

  if (v20 >= 2)
  {
    v13 = 0;
    v14 = v20 - 1;
    do
    {
      if (v13 + 19 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = (v13 + 19);
      }

      if (BYTE4(v20) == 1)
      {
      }

      else
      {
      }

      v14 = v20 - 1;
      v13 = v15;
    }

    while (v15 < v20 - 1);
  }
}

void CA::CG::anonymous namespace::FunctionSampler::sample(CA::CG::_anonymous_namespace_::FunctionSampler *this, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  CGFunctionEvaluate();
  v5 = *(this + 3);
  if (*(this + 14) == 1)
  {
    if (v5 >= 4)
    {
      goto LABEL_7;
    }

    v6 = &v13 + 1;
  }

  else
  {
    if (v5 > 1)
    {
      goto LABEL_7;
    }

    v6 = &v12.f64[1];
  }

  *v6 = 1.0;
LABEL_7:
  v7 = *this;
  v8 = *(this + 6);
  if (*(this + 76) == 1)
  {
    v14 = 0;
    v15 = 0;
    CA::OGL::Context::device_float_color(v7, &v14, v8, &v12, 0.0, 0.0, v4);
    *v9.f32 = vmul_n_f32(v14, *(&v15 + 1));
    v9.f32[2] = *&v15 * *(&v15 + 1);
    v9.i32[3] = HIDWORD(v15);
    *(*(this + 8) + 8 * a2) = vcvt_f16_f32(v9);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    CA::OGL::Context::device_float_color(v7, &v14, v8, &v12, 0.0, 0.0, v4);
    *v10.f32 = vmul_n_f32(v14, *(&v15 + 1));
    v10.f32[2] = *&v15 * *(&v15 + 1);
    v10.i32[3] = HIDWORD(v15);
    *(*(this + 8) + 4 * a2) = CA::OGL::ExtendedColor::word32(v11, vcvt_f16_f32(v10));
  }

  ++*(this + 20);
}

void CA::CG::anonymous namespace::FunctionSampler::bisect_fp16(CA::CG::_anonymous_namespace_::FunctionSampler *this, int a2, uint64_t a3)
{
  while (1)
  {
    v3 = a3 - a2;
    if (a3 - a2 < 2)
    {
      break;
    }

    v4 = a3;
    v5 = a2;
    v6 = this;
    v7 = v3 >> 1;
    v8 = v7 + a2;
    v10 = *(v6 + 8);
    v11 = *(v10 + 8 * v5);
    v12 = *(v10 + 8 * v8);
    v13 = *(v10 + 8 * v4);
    v14 = vmovn_s64(vshlq_u64(vdupq_n_s64(v12), xmmword_183E217C0));
    v15 = vuzp1_s16(v14, v14);
    v16 = 0.5;
    if (v7 != v4 - v8)
    {
      v16 = v7 / v3;
    }

    v17 = vcvtq_f32_f16(v11);
    v18 = vcvtq_f32_f16(v13);
    v19 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v17, 1.0 - v16), v18, v16));
    v9.i16[1] = WORD2(*(v10 + 8 * v8));
    v9.i16[0] = *(v10 + 8 * v8);
    v20 = vcvtq_f32_f16(v9).u64[0];
    v21 = vcvtq_f32_f16(v15).u64[0];
    v22 = v19;
    v22.i16[1] = v19.i16[2];
    v23 = vcvtq_f32_f16(v22).u64[0];
    v24 = vcvtq_f32_f16(vuzp2_s16(v19, *v18.f32)).u64[0];
    v25 = vbsl_s8(vcagt_f32(vsub_f32(v20, v23), vsub_f32(v21, v24)), vabd_f32(v20, v23), vabd_f32(v21, v24));
    if (*v25.i32 <= *&v25.i32[1])
    {
      v25.i32[0] = v25.i32[1];
    }

    if (*v25.i32 <= 0.031373)
    {
      if (*&v11 == v12)
      {
        if (v3 >= 4)
        {
          v26 = 0;
          v27 = v5 + 1;
          if (v5 + 1 + 1 > v8)
          {
            v28 = v27 + 1;
          }

          else
          {
            v28 = v8;
          }

          v29 = v28 - v27;
          v30 = vdupq_n_s64(v29 - 1);
          v31 = v10 + 8 * v27;
          do
          {
            v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_183E20FF0)));
            if (v32.i8[0])
            {
              *(v31 + 8 * v26) = v11;
            }

            if (v32.i8[4])
            {
              *(v31 + 8 * v26 + 8) = v11;
            }

            v26 += 2;
          }

          while (((v29 + 1) & 0xFFFFFFFFFFFFFFFELL) != v26);
        }
      }

      else
      {
        v11 = *(v10 + 8 * v8);
        if (v3 >= 4)
        {
          v33 = v5 + 1;
          v34 = vcvtq_f32_f16(v12);
          v35 = 1;
          do
          {
            *(v10 + 8 * v33++) = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v17, 1.0 - (v35 * (1.0 / v7))), v34, v35 * (1.0 / v7)));
            ++v35;
          }

          while (v33 < v8);
          v11 = v12;
        }
      }

      v36 = v8 + 1;
      if (*&v11 == *&v13)
      {
        if (v36 < v4)
        {
          v37 = 0;
          v38 = v4 - v36;
          v39 = vdupq_n_s64(v38 - 1);
          v40 = v10 + 8 * v36;
          do
          {
            v41 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_183E20FF0)));
            if (v41.i8[0])
            {
              *(v40 + 8 * v37) = v13;
            }

            if (v41.i8[4])
            {
              *(v40 + 8 * v37 + 8) = v13;
            }

            v37 += 2;
          }

          while (((v38 + 1) & 0xFFFFFFFFFFFFFFFELL) != v37);
        }
      }

      else if (v36 < v4)
      {
        v42 = vcvtq_f32_f16(v12);
        v43 = v4 - v36;
        v44 = (v10 + 8 * v36);
        v45 = 1;
        do
        {
          *v44++ = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v42, 1.0 - (v45 * (1.0 / (v4 - v8)))), v18, v45 * (1.0 / (v4 - v8))));
          ++v45;
          --v43;
        }

        while (v43);
      }

      return;
    }

    this = v6;
    a2 = v8;
    a3 = v4;
  }
}

uint64_t CA::CG::anonymous namespace::FunctionSampler::bisect(uint64_t this, signed int a2, signed int a3)
{
  v3 = a3 - a2;
  if (a3 - a2 >= 2)
  {
    v5 = a2;
    v6 = this;
    v7 = a3;
    while (1)
    {
      v8 = v3 >> 1;
      v9 = v8 + v5;
      v11 = a3 - v9;
      v12 = v8 == a3 - v9 ? 128 : (((v8 * 256.0) / v3) + 0.5);
      v13 = *(v6 + 8);
      v14 = *(v13 + 4 * v5);
      v15 = *(v13 + 4 * v9);
      v16 = *(v13 + 4 * v7);
      v17 = v14 & 0xFF00FF;
      this = (v14 >> 8) & 0xFF00FF;
      v18 = v16 & 0xFF00FF;
      v19 = (v16 >> 8) & 0xFF00FF;
      v20 = v17 + ((v12 * ((v16 & 0xFF00FF) - v17)) >> 8);
      v10.i32[0] = v12 * (v19 - this) + (this << 8);
      v21 = vshlq_u32(v10, xmmword_183E217D0);
      v10.i32[1] = HIWORD(v20);
      v10.i32[2] = v10.i32[0] >> 8;
      v10.i32[3] = v15;
      v22.i64[0] = 0xFF000000FFLL;
      v22.i64[1] = 0xFF000000FFLL;
      v23 = vandq_s8(v10, v22);
      v23.i32[0] = v21.i32[0];
      v21.i32[0] = v15;
      v24 = vshlq_u32(v21, xmmword_183E217D0).u32[0];
      v21.i32[1] = HIWORD(v15);
      v25 = v15 >> 8;
      v21.i32[2] = v15 >> 8;
      v21.i32[3] = v20;
      v26 = vandq_s8(v21, v22);
      v26.i32[0] = v24;
      if (vmaxvq_u32(vabdq_u32(v23, v26)) < 9)
      {
        break;
      }

      v3 = a3 - v9;
      v5 += v8;
      if (v11 < 2)
      {
        return this;
      }
    }

    if (v14 == v15)
    {
      if (v3 >= 4)
      {
        v27 = 0;
        v28 = v5 + 1;
        if (v9 <= v5 + 1 + 1)
        {
          v29 = v28 + 1;
        }

        else
        {
          v29 = v8 + v5;
        }

        v30 = v29 - v28;
        v31 = vdupq_n_s64(v30 - 1);
        v32 = (v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v33 = (v13 + 4 * v28 + 8);
        do
        {
          v34 = vdupq_n_s64(v27);
          v35 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_183E20FF0)));
          if (vuzp1_s16(v35, *v31.i8).u8[0])
          {
            *(v33 - 2) = v14;
          }

          if (vuzp1_s16(v35, *&v31).i8[2])
          {
            *(v33 - 1) = v14;
          }

          v36 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_183E21240)));
          if (vuzp1_s16(*&v31, v36).i32[1])
          {
            *v33 = v14;
          }

          *v22.i8 = vuzp1_s16(*v31.i8, v36);
          this = v22.u16[3];
          if (v22.i8[6])
          {
            v33[1] = v14;
          }

          v27 += 4;
          v33 += 4;
        }

        while (v32 != v27);
      }
    }

    else if (v3 >= 4)
    {
      v37 = 0;
      v38 = this << 8;
      v39 = v5 + 1;
      this = (v25 & 0xFF00FF) - this;
      v40 = (v15 & 0xFF00FF) - v17;
      if (v9 <= v5 + 1 + 1)
      {
        v41 = v39 + 1;
      }

      else
      {
        v41 = v8 + v5;
      }

      v42 = v41 - v39;
      v43 = vaddq_s32(vdupq_n_s32(v39), xmmword_183E210A0);
      v44 = vdupq_n_s64(v42 - 1);
      v45 = vdupq_n_s32(v5);
      *v22.i32 = 256.0 / v8;
      v22 = vdupq_lane_s32(*v22.i8, 0);
      v46 = (v13 + 4 * v39 + 8);
      v47.i64[0] = 0x400000004;
      v47.i64[1] = 0x400000004;
      do
      {
        v48 = vdupq_n_s64(v37);
        v49 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(v48, xmmword_183E20FF0)));
        v50.i64[0] = 0x3F0000003F000000;
        v50.i64[1] = 0x3F0000003F000000;
        v51 = vcvtq_u32_f32(vmlaq_f32(v50, vcvtq_f32_s32(vsubq_s32(v43, v45)), v22));
        if (vuzp1_s16(v49, *v43.i8).u8[0])
        {
          *(v46 - 2) = (v17 + ((v40 * v51.i32[0]) >> 8)) & 0xFF00FF | (v38 + this * v51.i32[0]) & 0xFF00FF00;
        }

        if (vuzp1_s16(v49, *&v43).i8[2])
        {
          *(v46 - 1) = (v17 + ((v40 * v51.i32[1]) >> 8)) & 0xFF00FF | (v38 + this * v51.i32[1]) & 0xFF00FF00;
        }

        if (vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v44, vorrq_s8(v48, xmmword_183E21240)))).i32[1])
        {
          *v46 = (v17 + ((v40 * v51.i32[2]) >> 8)) & 0xFF00FF | (v38 + this * v51.i32[2]) & 0xFF00FF00;
          v46[1] = (v17 + ((v40 * v51.i32[3]) >> 8)) & 0xFF00FF | (v38 + this * v51.i32[3]) & 0xFF00FF00;
        }

        v37 += 4;
        v43 = vaddq_s32(v43, v47);
        v46 += 4;
      }

      while (((v42 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v37);
    }

    v52 = v9 + 1;
    if (v15 == v16)
    {
      if (v52 < a3)
      {
        v53 = 0;
        v54 = v7 - v52;
        v55 = vdupq_n_s64(v54 - 1);
        v56 = (v13 + 4 * v52 + 8);
        do
        {
          v57 = vdupq_n_s64(v53);
          v58 = vmovn_s64(vcgeq_u64(v55, vorrq_s8(v57, xmmword_183E20FF0)));
          if (vuzp1_s16(v58, *v55.i8).u8[0])
          {
            *(v56 - 2) = v15;
          }

          if (vuzp1_s16(v58, *&v55).i8[2])
          {
            *(v56 - 1) = v15;
          }

          if (vuzp1_s16(*&v55, vmovn_s64(vcgeq_u64(v55, vorrq_s8(v57, xmmword_183E21240)))).i32[1])
          {
            *v56 = v15;
            v56[1] = v15;
          }

          v53 += 4;
          v56 += 4;
        }

        while (((v54 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v53);
      }
    }

    else if (v52 < a3)
    {
      v59 = 0;
      v60 = v15 & 0xFF00FF;
      v61 = v25 & 0xFF00FF;
      v62 = v18 - v60;
      v63 = v19 - v61;
      v64 = v61 << 8;
      v65 = v7 - v52;
      v66 = vaddq_s32(vdupq_n_s32(v52), xmmword_183E210A0);
      v67 = vdupq_n_s64(v65 - 1);
      v68 = vdupq_n_s32(v9);
      *v22.i32 = 256.0 / v11;
      v69 = vdupq_lane_s32(*v22.i8, 0);
      v70 = (v13 + 4 * v52 + 8);
      v71.i64[0] = 0x400000004;
      v71.i64[1] = 0x400000004;
      do
      {
        v72 = vdupq_n_s64(v59);
        v73 = vmovn_s64(vcgeq_u64(v67, vorrq_s8(v72, xmmword_183E20FF0)));
        v74.i64[0] = 0x3F0000003F000000;
        v74.i64[1] = 0x3F0000003F000000;
        v75 = vcvtq_u32_f32(vmlaq_f32(v74, vcvtq_f32_s32(vsubq_s32(v66, v68)), v69));
        if (vuzp1_s16(v73, *v66.i8).u8[0])
        {
          *(v70 - 2) = (v60 + ((v62 * v75.i32[0]) >> 8)) & 0xFF00FF | (v64 + v63 * v75.i32[0]) & 0xFF00FF00;
        }

        if (vuzp1_s16(v73, *&v66).i8[2])
        {
          *(v70 - 1) = (v60 + ((v62 * v75.i32[1]) >> 8)) & 0xFF00FF | (v64 + v63 * v75.i32[1]) & 0xFF00FF00;
        }

        if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v67, vorrq_s8(v72, xmmword_183E21240)))).i32[1])
        {
          *v70 = (v60 + ((v62 * v75.i32[2]) >> 8)) & 0xFF00FF | (v64 + v63 * v75.i32[2]) & 0xFF00FF00;
          v70[1] = (v60 + ((v62 * v75.i32[3]) >> 8)) & 0xFF00FF | (v64 + v63 * v75.i32[3]) & 0xFF00FF00;
        }

        v59 += 4;
        v66 = vaddq_s32(v66, v71);
        v70 += 4;
      }

      while (((v65 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v59);
    }
  }

  return this;
}

uint64_t ___ZN2CA2CG12_GLOBAL__N_113allows_ditherEv_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"CADisableShadingDither", *MEMORY[0x1E695E8A8], 0);
  return result;
}

char *CA::CG::DrawShading::clipping_planes(CA::CG::DrawShading *this, float64x2_t *a2)
{
  if (CGShadingGetType() != 1)
  {
    return 0;
  }

  Descriptor = CGShadingGetDescriptor();
  v4 = *(Descriptor + 16);
  v5 = *(Descriptor + 40);
}

char *CA::CG::anonymous namespace::axial_clipping_planes(float64x2_t *this, CA::CG::Renderer *a2, const CGPoint *a3, const CGPoint *a4, int a5)
{
  v6 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v7 = &v43;
  v8 = *a3;
  v43 = *a2;
  v44 = v8;
  v9 = this[2];
  v10 = this[3];
  v11 = this[4];
  v12 = 1;
  do
  {
    v13 = v12;
    *v7 = vmlaq_n_f64(vmlaq_n_f64(v11, v9, *v7), v10, v7[1]);
    v7 = &v44;
    v12 = 0;
  }

  while ((v13 & 1) != 0);
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  *&v14.f64[0] = v43;
  v15.f64[0] = *&v44 - *&v43;
  if (*&v44 - *&v43 == 0.0)
  {
    v19 = *(&v44 + 1) - *(&v43 + 1);
    v20 = -v15.f64[0] / (*(&v44 + 1) - *(&v43 + 1));
    v17 = *(&v43 + 1) - *&v43 * v20;
    v18 = *(&v44 + 1) - *&v44 * v20;
    v16 = -1.0;
  }

  else
  {
    v16 = (*(&v43 + 1) - *(&v44 + 1)) / v15.f64[0];
    v17 = *&v43 - *(&v43 + 1) * v16;
    v18 = *&v44 - *(&v44 + 1) * v16;
    v19 = *(&v44 + 1) - *(&v43 + 1);
    v20 = -1.0;
  }

  *&v40 = v20;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v20;
  *&v42 = v16;
  *(&v42 + 1) = v18;
  v15.f64[1] = v19;
  __asm { FMOV            V3.2D, #0.5 }

  v14.f64[1] = *(&v43 + 1);
  v26 = vmlaq_f64(v14, _Q3, v15);
  v27 = &v40;
  v28 = 1;
  do
  {
    v29 = v28;
    v30 = v27[1].f64[0];
    if (vaddvq_f64(vmulq_f64(*v27, v26)) + v30 < 0.0)
    {
      *v27 = vnegq_f64(*v27);
      v27[1].f64[0] = -v30;
    }

    v28 = 0;
    v27 = (&v41 + 8);
  }

  while ((v29 & 1) != 0);
  v31 = 0;
  v32 = 0;
  v33 = &v40;
  v34 = 1;
  do
  {
    v35 = v34;
    if (((v31 | v6) & 1) == 0 || ((v34 | a5) & 1) == 0)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v36 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x1020040FA731AC5uLL);
      *v36 = v32;
      if (v32)
      {
        v37 = *(v32 + 2) + 1;
      }

      else
      {
        v37 = 1;
      }

      *(v36 + 2) = v37;
      *(v36 + 12) = vcvt_f32_f64(*v33);
      *(v36 + 5) = 0;
      v38 = v33[1].f64[0];
      *(v36 + 6) = v38;
      v32 = v36;
    }

    v34 = 0;
    v31 = 1;
    v33 = (&v41 + 8);
  }

  while ((v35 & 1) != 0);
  return v32;
}

uint64_t CA::CG::DrawShading::color_type(CA::CG::_anonymous_namespace_ **this, CA::CG::Renderer *a2)
{
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

int64x2_t CA::CG::DrawShading::compute_dod(CA::CG::DrawShading *this, int64x2_t *a2)
{
  result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  *a2 = result;
  a2[1] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  return result;
}

void CA::CG::DrawShading::~DrawShading(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF203430;
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
  *this = &unk_1EF203430;
  CA::CG::Renderer::release_object(this[14], a2);

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::CG::DrawGradient::color_type(CA::CG::DrawGradient *this, CA::CG::Renderer *a2)
{
  v5 = 1;
  ColorSpace = CGGradientGetColorSpace();
  if (CGColorSpaceGetModel(ColorSpace) > kCGColorSpaceModelRGB)
  {
    v5 = 0;
  }

  else
  {
    CGGradientApply();
  }

  if ((~*(this + 25) & 0x3000000) != 0)
  {
    return 0;
  }

  if (v5 != 1)
  {
    return 8;
  }

  if (*(this + 47) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    return 12;
  }

  return 8;
}

char *CA::CG::DrawGradient::color_type(CA::CG::Renderer &)const::$_1::__invoke(char *result, uint64_t a2)
{
  v2 = *result;
  if (*(a2 + 24) != 1.0)
  {
    v2 = 0;
  }

  *result = v2;
  return result;
}

char *CA::CG::DrawGradient::color_type(CA::CG::Renderer &)const::$_0::__invoke(char *result, uint64_t a2)
{
  v2 = *result;
  if (*(a2 + 8) != 1.0)
  {
    v2 = 0;
  }

  *result = v2;
  return result;
}

int64x2_t CA::CG::DrawGradient::compute_dod(CA::CG::DrawGradient *this, int64x2_t *a2)
{
  result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  *a2 = result;
  a2[1] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  return result;
}

void CA::CG::DrawGradient::~DrawGradient(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF2034F8;
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
  *this = &unk_1EF2034F8;
  CA::CG::Renderer::release_object(this[14], a2);

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::DrawLinearGradient::draw_color(CA::CG::DrawLinearGradient *this, CA::CG::Renderer *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v3 = v2;
  v5 = v4;
  v143 = *MEMORY[0x1E69E9840];
  if ((*(v4 + 103) & 4) != 0)
  {
    v10 = *(v2 + 8);
    if (CGGradientUsesPremultipliedInterpolation())
    {
      v11 = 0;
    }

    else
    {
      v11 = 13;
    }

    *(*(v10 + 16) + 16) = v11;
    {
    }

    {
      *(*(v10 + 16) + 497) |= 2u;
      *(*(v10 + 16) + 368) = 1065353216;
    }

    memset(v134, 0, sizeof(v134));
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v12 = *(v5 + 112);
    v13 = *(v5 + 128);
    v14 = *(v5 + 136);
    v15 = *(v5 + 144);
    v16 = *(v5 + 152);
    v17 = *(v5 + 100);
    v18 = *(v5 + 120);
    v19 = HIBYTE(v17) & 1;
    v20 = (v17 >> 25) & 1;
    v119[0] = *(v3 + 8);
    v119[1] = v12;
    v119[2] = CGGradientGetColorSpace();
    CGGradientGetContentHeadroom();
    v120 = v21;
    v121 = v18;
    v122 = &v135;
    v123 = 0;
    v124 = 1;
    v125 = v19;
    v126 = v20;
    v127 = 1;
    *&v129 = 0xFFEFFFFFFFFFFFFFLL;
    CA::Shape::get_bounds(*(*(*v119 + 656) + 8), &v134[8]);
    v22 = *(*v119 + 672);
    if (v22)
    {
      v23 = v22 + 6;
    }

    else
    {
      v23 = (*v119 + 608);
    }

    v24 = vclez_s32(*&v134[16]);
    if ((vpmax_u32(v24, v24).u32[0] & 0x80000000) == 0)
    {
      v25 = v23[1];
      v26 = vclez_s32(v25);
      if ((vpmax_u32(v26, v26).u32[0] & 0x80000000) != 0 || (v27 = vmax_s32(*&v134[8], *v23), v28 = vsub_s32(vmin_s32(vadd_s32(*&v134[8], *&v134[16]), vadd_s32(*v23, v25)), v27), v29 = vclez_s32(v28), (vpmax_u32(v29, v29).u32[0] & 0x80000000) != 0))
      {
        *&v134[16] = 0;
      }

      else
      {
        *&v30 = v27;
        *(&v30 + 1) = v28;
        *&v134[8] = v30;
        v31 = v15 - v13;
        v32 = v16 - v14;
        v33 = sqrt(v31 * v31 + v32 * v32);
        v35 = *(v3 + 32);
        v34 = *(v3 + 40);
        v37 = *(v3 + 48);
        v36 = *(v3 + 56);
        v38 = v35 * v13 + v37 * v14;
        v39 = *(v3 + 64);
        v40 = *(v3 + 72);
        v41 = v34 * v13 + v36 * v14;
        v42 = v35 * v15 + v37 * v16;
        v43 = v34 * v15 + v36 * v16;
        v130.f64[0] = v38 + v39;
        v130.f64[1] = v41 + v40;
        v44 = v42 - v38;
        v45 = v43 - v41;
        *&v131 = v44;
        *(&v131 + 1) = v43 - v41;
        *v136 = v27.i32[0];
        *&v136[1] = v27.i32[1];
        v46 = v28.i32[0];
        v137 = (v28.i32[0] + v27.i32[0]);
        v138 = v27.i32[1];
        v47 = v28.i32[1];
        v139 = v137;
        v140 = (v28.i32[1] + v27.i32[1]);
        v141 = v27.i32[0];
        v142 = v140;
        v48 = *(v3 + 40);
        v49.f64[1] = *(v3 + 48);
        v49.f64[0] = v36;
        v50 = vdupq_lane_s64(*&v48.f64[0], 0);
        v50.f64[0] = v35;
        v51 = vmulq_f64(v49, v50);
        v52 = vsubq_f64(v51, vdupq_laneq_s64(v51, 1)).f64[0];
        v53 = 0.0;
        if (v52 == 0.0)
        {
          v62.f64[1] = 0.0;
          _D23 = 0.0;
          v63 = 0uLL;
        }

        else
        {
          v54 = 1.0 / v52;
          v55 = *(v3 + 64);
          v56 = vmulq_n_f64(v48, v54);
          v57.f64[0] = v36;
          v57.f64[1] = v35;
          v58 = vmulq_n_f64(v57, v54);
          v59 = -v56.f64[0];
          _D23 = -v56.f64[1];
          v61 = vmulq_f64(v55, v56);
          v62 = vmlsq_f64(vextq_s8(v61, v61, 8uLL), v58, v55);
          v63.f64[1] = v58.f64[1];
          v63.f64[0] = v59;
        }

        v80 = 0;
        v81 = v35 * v32;
        v82 = sqrt(v44 * v44 + v45 * v45);
        v83 = 1.0 / (v33 * v33);
        v84 = v31 * v83;
        v85 = v32 * v83;
        v86 = v39 + v42;
        v87 = v40 + v43;
        v88 = -INFINITY;
        v89 = INFINITY;
        do
        {
          _Q30 = *v136[v80].f32;
          v91 = vmulq_f64(_Q30, v63);
          __asm { FMLA            D8, D23, V30.D[1] }

          v97 = _D8 * v84 + (v62.f64[1] - v14 + v91.f64[0] + v91.f64[1]) * v85;
          if (v89 >= v97)
          {
            v89 = v97;
          }

          v98 = vaddvq_f64(vabdq_f64(_Q30, v130));
          v99 = vabdd_f64(*&v136[v80 + 1], v87) + vabdd_f64(_Q30.f64[0], v86);
          if (v88 <= v97)
          {
            v88 = v97;
          }

          if (v98 > v99)
          {
            v99 = v98;
          }

          if (v53 <= v99)
          {
            v53 = v99;
          }

          v80 += 2;
        }

        while (v80 != 8);
        v100 = -(v81 - v37 * v31);
        v101 = 1.0 / v82;
        v102 = v34 * v32;
        v103 = v101 * v44;
        v104 = -(v102 - v36 * v31);
        v105 = v101 * v45;
        *&v128 = v89;
        *(&v128 + 1) = v88;
        v106 = 1.0 / sqrt(v100 * v100 + v104 * v104);
        v107 = v106 * v100;
        v108 = v106 * v104;
        *&v132 = v53 * (v106 * v100);
        *(&v132 + 1) = v53 * (v106 * v104);
        v109 = -(v106 * v104);
        v110 = v105 * (v106 * v100);
        v111 = -(v106 * v100);
        if (v110 >= v103 * v108)
        {
          v112 = v107;
        }

        else
        {
          v109 = v108;
          v112 = v111;
        }

        v113 = (v47 + v46);
        *&v133 = v109 * v113;
        *(&v133 + 1) = v112 * v113;
        *v134 = *(*(*v119 + 16) + 8);
        if (*&v134[6] != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          __asm { FCMP            H0, #0 }

          if (!_ZF && (CGGradientUsesPremultipliedInterpolation() & 1) == 0)
          {
            *&v115 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&v134[6];
            v116 = vdup_n_s16(v115);
            v116.i16[3] = 15360;
            *v134 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v116), vcvtq_f32_f16(*v134)));
          }
        }
      }
    }

    CA::Shape::get_bounds(*(*(*v119 + 656) + 8), &v134[8]);
    v64 = *(*v119 + 672);
    if (v64)
    {
      v65 = v64 + 6;
    }

    else
    {
      v65 = (*v119 + 608);
    }

    v66 = vclez_s32(*&v134[16]);
    if ((vpmax_u32(v66, v66).u32[0] & 0x80000000) == 0)
    {
      v67 = v65[1];
      v68 = vclez_s32(v67);
      if ((vpmax_u32(v68, v68).u32[0] & 0x80000000) == 0)
      {
        *&v69 = vmax_s32(*&v134[8], *v65);
        v70 = vsub_s32(vmin_s32(vadd_s32(*&v134[8], *&v134[16]), vadd_s32(*v65, v67)), *&v69);
        v71 = vclez_s32(v70);
        if ((vpmax_u32(v71, v71).u32[0] & 0x80000000) == 0)
        {
          *(&v69 + 1) = v70;
          *&v134[8] = v69;
          CGGradientApply();
          if (v126 == 1)
          {
            if (*&v128 <= 1.0)
            {
              if (*(&v128 + 1) > 1.0)
              {
                v136[0] = *(&v129 + 8);
              }
            }

            else
            {
              v72 = *(&v129 + 8);
              v73 = &v122[48 * v123];
              v74 = &v122[48 * (v123 + 1)];
              v75 = v123 + 3;
              v76 = &v122[48 * (v123 + 2)];
              v123 += 4;
              v77 = &v122[48 * v75];
              v77[4] = *(&v129 + 8);
              v76[4] = v72;
              v74[4] = v72;
              *(v73 + 4) = v72;
              *(v73 + 1) = 0x3F80000000000000;
              v74[1] = 0x3F80000000000000;
              v78 = vcvt_f32_s32(vadd_s32(*&v134[16], *&v134[8]));
              v79 = vcvt_f32_s32(*&v134[8]);
              *v73 = __PAIR64__(v79.u32[1], v78.u32[0]);
              *v74 = v79;
              *v76 = v78;
              v76[1] = 0x3F80000000000000;
              v79.i32[1] = v78.i32[1];
              *v77 = v79;
              v77[1] = 0x3F80000000000000;
            }
          }

          v117 = *(*v119 + 16);
          if ((*(v117 + 497) & 1) != 0 && ((v118 = *(v117 + 496), v118 < 2) || v118 == 3 && v127 == 1))
          {
            *(v117 + 497) &= ~1u;
            *(*(*v119 + 16) + 497) |= 1u;
          }

          else
          {
          }
        }
      }
    }

    *(*(v10 + 16) + 497) &= ~2u;
    *(*(v10 + 16) + 16) = 0;
  }

  else
  {
    ColorSpace = CGGradientGetColorSpace();
    Function = CGGradientGetFunction();
    Axial = CGShadingCreateAxial(ColorSpace, *(v5 + 128), *(v5 + 144), Function, *(v5 + 100) & 0x1000000, (*(v5 + 100) & 0x2000000) != 0);
    if (Axial)
    {
      v9 = Axial;
      CA::CG::fill_shading(v3);

      CGShadingRelease(v9);
    }
  }
}

double CA::CG::anonymous namespace::GradientStripeRenderer::draw_quad(int32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[4];
  v3 = a1[5].u32[0];
  v4 = (*&v2 + 48 * v3);
  v5 = (*&v2 + 48 * (v3 + 1));
  v6 = (*&v2 + 48 * (v3 + 2));
  a1[5].i32[0] = v3 + 4;
  v7 = (*&v2 + 48 * (v3 + 3));
  v8 = *a2;
  v7[4] = *a2;
  v6[4] = v8;
  v5[4] = v8;
  v4[4] = v8;
  result = 0.0078125;
  v10 = a1[19];
  v11 = vcvt_f32_s32(vadd_s32(a1[20], v10));
  v12 = vcvt_f32_s32(v10);
  *v4 = __PAIR64__(v12.u32[1], v11.u32[0]);
  v4[1] = 0x3F80000000000000;
  *v5 = v12;
  v5[1] = 0x3F80000000000000;
  *v6 = v11;
  v6[1] = 0x3F80000000000000;
  v12.i32[1] = v11.i32[1];
  *v7 = v12;
  v7[1] = 0x3F80000000000000;
  return result;
}

float32x2_t CA::CG::anonymous namespace::GradientStripeRenderer::draw_stripe(uint64_t a1, float32x2_t *a2, double a3)
{
  v3 = a3;
  v6 = *(a1 + 40);
  if (v6 - 252 > 0xFFFFFEFF)
  {
    if (!v6)
    {
      v13 = *(a1 + 64);
      if (v13 >= 0.0)
      {
        v14 = vmulq_n_f64(*(a1 + 96), v13);
      }

      else
      {
        v14 = vnegq_f64(*(a1 + 128));
      }

      v15 = *(a1 + 32);
      *(a1 + 40) = 2;
      v16 = *(a1 + 72);
      v17 = vaddq_f64(*(a1 + 80), v14);
      v15[10] = v16;
      v15[4] = v16;
      v18 = *(a1 + 112);
      *v15 = vcvt_f32_f64(vaddq_f64(v18, v17));
      v15[1] = 0x3F80000000000000;
      v15[6] = vcvt_f32_f64(vsubq_f64(v17, v18));
      v15[7] = 0x3F80000000000000;
      v6 = *(a1 + 40);
    }
  }

  else
  {
    v3 = a3;
    v7 = *(a1 + 32);
    v8 = v7 + 48 * (*(a1 + 40) - 2);
    v9 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v9;
    *(v7 + 32) = *(v8 + 32);
    v10 = *(a1 + 32);
    v11 = v10 + 48 * (*(a1 + 40) - 1);
    v12 = *(v11 + 16);
    *(v10 + 48) = *v11;
    *(v10 + 64) = v12;
    *(v10 + 80) = *(v11 + 32);
    v6 = 2;
  }

  v19 = *(a1 + 32);
  *(a1 + 40) = v6 + 2;
  if (v3 <= 1.0)
  {
    v20 = vmulq_n_f64(*(a1 + 96), v3);
  }

  else
  {
    v20 = vaddq_f64(*(a1 + 128), *(a1 + 96));
  }

  v21 = (v19 + 48 * (v6 + 1));
  v22 = (v19 + 48 * v6);
  v23 = *a2;
  v24 = vaddq_f64(*(a1 + 80), v20);
  v21[4] = *a2;
  v22[4] = v23;
  v25 = *(a1 + 112);
  *v22 = vcvt_f32_f64(vaddq_f64(v25, v24));
  v22[1] = 0x3F80000000000000;
  result = vcvt_f32_f64(vsubq_f64(v24, v25));
  *v21 = result;
  v21[1] = 0x3F80000000000000;
  return result;
}

int32x2_t *CA::CG::anonymous namespace::GradientStripeRenderer::flush(int32x2_t *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (this[5].i32[0])
  {
    v1 = this;
    v6 = 0u;
    v2 = this + 19;
    v3 = *(*(*this + 656) + 8);
    v4[0] = *this;
    v4[1] = v3;
    v5 = 0u;
    v4[2] = 0;
    WORD4(v5) = 0;
    CA::OGL::Context::ClippedArray::start(v4);
    while (1)
    {
      this = CA::OGL::Context::ClippedArray::next_rect(v4, v2);
      if (!this)
      {
        break;
      }

      (*(**v1 + 344))(*v1, 2, v1[5].u32[0], 0, *&v1[4], 0, v1[5].u32[0], 0);
    }
  }

  return this;
}

void CA::CG::anonymous namespace::GradientStripeRenderer::draw(void)::$_0::__invoke(uint64_t a1, float64x2_t *a2, double a3, double a4, float a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0uLL;
  CA::OGL::Context::device_float_color(*a1, v15.f32, *(a1 + 16), a2, *(a1 + 24), *(a1 + 28), a5);
  v12 = vcvt_f16_f32(v15);
  if (CGGradientUsesPremultipliedInterpolation())
  {
    v8 = *&v12;
    *v7.i16 = vmulh_lane_f16(*&v8, *&v8, 3);
    LOWORD(v8) = v7.i16[0];
    *(&v8 + 2) = vmul_lane_f16(vext_s8(v12, v7, 2uLL), v12, 3).u32[0];
  }

  else
  {
    v8 = *&v12;
  }

  v9 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*(a1 + 144)), vcvtq_f32_f16(*&v8))));
  if (*(a1 + 144) != 0x3C003C003C003C00)
  {
    v8 = v9;
  }

  if (*(&v8 + 3) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    *(a1 + 47) = 0;
  }

  if (vaddvq_f64(vmulq_f64(*(a1 + 96), *(a1 + 96))) == 0.0)
  {
    if (*(a1 + 44) != 1 || *(a1 + 45) != 1)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 46);
    goto LABEL_12;
  }

  v10 = *(a1 + 56);
  if (v10 < 0.0)
  {
    if (*(a1 + 44) != 1)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 45);
LABEL_12:
    if (v11 == 1)
    {
      v14 = v8;
      v13 = v8;
LABEL_20:
      v8 = v13;
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (*(a1 + 48) <= a3 && *(a1 + 64) <= v10)
  {
    if (*(a1 + 44))
    {
      if (*(a1 + 45) != 1)
      {
        goto LABEL_21;
      }

      *(a1 + 72) = v8;
    }

    v14 = v8;
    v13 = v8;
    goto LABEL_20;
  }

LABEL_21:
  *(a1 + 64) = a3;
  *(a1 + 72) = v8;
  *(a1 + 44) = 0;
}

char *CA::CG::DrawLinearGradient::clipping_planes(CA::CG::DrawLinearGradient *this, float64x2_t *a2)
{
  v2 = *(this + 25);
  if ((v2 & 0x4000000) != 0)
  {
    return 0;
  }

  else
  {
  }
}

void CA::CG::DrawLinearGradient::~DrawLinearGradient(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF2034F8;
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
  *this = &unk_1EF2034F8;
  CA::CG::Renderer::release_object(this[14], a2);

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::DrawRadialGradient::draw_color(float64x2_t *this, CA::CG::Renderer *a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  ColorSpace = CGGradientGetColorSpace();
  if (CGColorSpaceGetModel(ColorSpace) < kCGColorSpaceModelCMYK)
  {
    v6 = v4[2];
    v7 = *(v6 + 496);
    if (v7 != 12 && (v7 - 1) < 0x19)
    {
      if (this[8].f64[0] == this[9].f64[0] && this[8].f64[1] == this[9].f64[1])
      {
        v10 = 0;
        v9 = 48;
      }

      else
      {
        v9 = 49;
        v10 = 1;
      }

      *(v6 + 16) = v9;
      if ((*(*v4 + 1072))(v4))
      {
        {
        }

        {
          *(v4[2] + 497) |= 2u;
          *(v4[2] + 368) = 1065353216;
        }

        v12 = *&this[7].f64[0];
        v13 = LODWORD(this[7].f64[1]);
        v20[0] = &unk_1EF203918;
        v20[1] = v12;
        v20[2] = v13;
        v14 = CA::CG::gradient_pixel_size(v12, v11);
        memset(&v19[7], 0, 64);
        v15 = HIDWORD(this[6].f64[0]);
        v19[1] = a2;
        v19[2] = v4;
        v19[3] = a2 + 32;
        v19[4] = v20;
        v19[5] = ColorSpace;
        v19[6] = 0;
        LODWORD(v19[7]) = v14;
        v19[0] = &unk_1EF203930;
        v16 = this[9];
        *&v19[8] = this[8];
        *&v19[10] = v16;
        *&v19[12] = vabsq_f64(this[10]);
        LOBYTE(v19[14]) = HIBYTE(v15) & 1;
        BYTE1(v19[14]) = (v15 & 0x2000000) != 0;
        BYTE2(v19[14]) = v10;
        Identifier = CGGradientGetIdentifier();
        *(v4[2] + 497) &= ~2u;
        *(v4[2] + 16) = 0;
        if ((v18 & 1) == 0)
        {
          CA::CG::DrawRadialGradient::draw_as_shading(this, a2);
        }

        return;
      }

      *(v4[2] + 16) = 0;
    }
  }

  CA::CG::DrawRadialGradient::draw_as_shading(this, a2);
}

void CA::CG::DrawRadialGradient::draw_as_shading(CGPoint *this, CA::CG::Renderer *a2)
{
  ColorSpace = CGGradientGetColorSpace();
  Function = CGGradientGetFunction();
  Radial = CGShadingCreateRadial(ColorSpace, this[8], this[10].x, this[9], this[10].y, Function, HIDWORD(this[6].x) & 0x1000000, (HIDWORD(this[6].x) & 0x2000000) != 0);
  if (Radial)
  {
    v7 = Radial;
    CA::CG::fill_shading(a2);

    CGShadingRelease(v7);
  }
}

unint64_t CA::CG::gradient_pixel_size(CA::CG *this, CGGradient *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  LocationCount = CGGradientGetLocationCount();
  if (LocationCount < 3)
  {
    return 2;
  }

  v4 = LocationCount;
  if (LocationCount > 0x10)
  {
    return 2048;
  }

  memset(v16, 0, sizeof(v16));
  v5 = v16;
  CGGradientApply();
  v6 = v4 - 1;
  while (v6)
  {
    v7 = round((v5[1] - *v5) * 4096.0);
    *v5 = v7;
    v8 = *&v7 & 0x7FFFFFFFFFFFFFFFLL;
    --v6;
    v10 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000 || v8 == 0x7FF0000000000000 || v8 == 0;
    ++v5;
    if (v10)
    {
      return 2048;
    }
  }

  v11 = *v16;
  v12 = 1;
  do
  {
    v13 = *(v16 + v12);
    if (v13)
    {
      v14 = v11;
      do
      {
        v11 = v13;
        v13 = v14 % v13;
        v14 = v11;
      }

      while (v13);
    }

    ++v12;
  }

  while (v12 != v4 - 1);
  v15 = round(4096.0 / v11) + 1.0;
  if (v15 >= 0x800)
  {
    return 2048;
  }

  else
  {
    return v15;
  }
}

double **CA::CG::gradient_pixel_size(CGGradient *)::$_0::__invoke(double **result, double a2)
{
  v2 = *result;
  *v2 = a2;
  *result = v2 + 1;
  return result;
}

uint64_t CA::CG::anonymous namespace::GradientColormapGenerator::generate(CA::CG::_anonymous_namespace_::GradientColormapGenerator *this, CA::CG::Renderer *a2, CGColorSpaceRef space, unsigned __int8 *a4)
{
  CGColorSpaceGetModel(space);
  CGGradientGetContentHeadroom();
  return CGGradientApply();
}

void CA::CG::anonymous namespace::GradientSampler::callback(float64x2_t *this, float64x2_t *a2, float64_t a3, const double *a4)
{
  v213 = *MEMORY[0x1E69E9840];
  v7 = CGGradientUsesPremultipliedInterpolation();
  v9 = this[3].f64[1];
  if (v7)
  {
    if (v9 >= 0.0)
    {
      v10 = LODWORD(this[2].f64[1]);
      if (BYTE4(this[2].f64[1]) == 1)
      {
        if (v9 <= 0.0)
        {
          v11 = 0;
        }

        else
        {
          v11 = vcvtpd_u64_f64(v9 * (v10 - 1));
        }

        if (a3 >= 1.0)
        {
          v67 = v10;
        }

        else
        {
          v67 = ceil((v10 - 1) * a3);
        }

        v101 = v67;
        v102 = *&this->f64[0];
        v103 = *&this[1].f64[0];
        v104 = *this[3].f64;
        v105 = *(this[3].f64 + 1);
        v212 = 0uLL;
        CA::OGL::Context::device_float_color(v102, v212.f32, v103, this + 4, v104, v105, v8);
        v211 = vcvt_f16_f32(v212);
        v106 = *&this->f64[0];
        v107 = *&this[1].f64[0];
        v108 = *this[3].f64;
        v109 = *(this[3].f64 + 1);
        v212 = 0uLL;
        CA::OGL::Context::device_float_color(v106, v212.f32, v107, a2, v108, v109, v110);
        v111.i16[3] = v211.i16[3];
        v112 = vcvt_f16_f32(v212);
        if (*&v211 == *&v112)
        {
          if (v11 < v101)
          {
            v113 = 0;
            *v112.i16 = vmulh_lane_f16(*v211.i16, v211, 3);
            v111.i16[0] = v112.i16[0];
            *(v111.i32 + 2) = vmul_lane_f16(vext_s8(v211, v112, 2uLL), v211, 3).u32[0];
            v114 = v101 - v11;
            v115 = vdupq_n_s64(v114 - 1);
            v116 = (v114 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v117 = *&this[2].f64[0] + 8 * v11;
            do
            {
              v118 = vmovn_s64(vcgeq_u64(v115, vorrq_s8(vdupq_n_s64(v113), xmmword_183E20FF0)));
              if (v118.i8[0])
              {
                *(v117 + 8 * v113) = v111;
              }

              if (v118.i8[4])
              {
                *(v117 + 8 * v113 + 8) = v111;
              }

              v113 += 2;
            }

            while (v116 != v113);
          }
        }

        else if (v11 < v101)
        {
          v142 = vmul_lane_f16(vext_s8(v112, v112, 2uLL), v112, 3).u32[0];
          v112.i16[0] = vmulh_lane_f16(*v112.i16, v112, 3);
          *(v112.i32 + 2) = v142;
          v111.i16[0] = vmulh_lane_f16(*v211.i16, v211, 3);
          *(v111.i32 + 2) = vmul_lane_f16(vext_s8(v211, v112, 2uLL), v211, 3).u32[0];
          v143 = (LODWORD(this[2].f64[1]) - 1);
          v144 = (a3 - v9) * v143;
          v145 = v9 * v143;
          v146 = v11;
          v147 = vcvtq_f32_f16(v111);
          v148 = vcvtq_f32_f16(v112);
          v149 = this[2].f64[0];
          v150 = 1.0 / v144;
          do
          {
            v151 = (v146 - v145) * v150;
            *(*&v149 + 8 * v146++) = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v147, 1.0 - v151), v148, v151));
          }

          while (v101 != v146);
        }
      }

      else
      {
        v37 = (v10 - 1);
        v38 = vcvtpd_u64_f64(v9 * v37);
        if (v9 > 0.0)
        {
          v39 = v38;
        }

        else
        {
          v39 = 0;
        }

        v40 = ceil(v37 * a3);
        if (a3 >= 1.0)
        {
          v40 = v10;
        }

        v41 = v40;
        v42 = *&this->f64[0];
        v43 = *&this[1].f64[0];
        v44 = *this[3].f64;
        v45 = *(this[3].f64 + 1);
        v212 = 0uLL;
        CA::OGL::Context::device_float_color(v42, v212.f32, v43, this + 4, v44, v45, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v10)));
        v47 = CA::OGL::ExtendedColor::word32(v46, vcvt_f16_f32(v212));
        v48 = *&this->f64[0];
        v49 = *&this[1].f64[0];
        v50 = *this[3].f64;
        v51 = *(this[3].f64 + 1);
        v212 = 0uLL;
        CA::OGL::Context::device_float_color(v48, v212.f32, v49, a2, v50, v51, v52);
        v54 = CA::OGL::ExtendedColor::word32(v53, vcvt_f16_f32(v212));
        v55 = ((((v47 | (v47 << 24)) & 0xFF00FF00FF00FFLL) * (HIBYTE(v47) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
        v56 = (v55 >> 24) | v55;
        v57 = v47 & 0xFF000000;
        if (v47 == v54)
        {
          if (v39 < v41)
          {
            v58 = 0;
            v59 = v56 & 0xFFFFFF | v57;
            v60 = v41 - v39;
            v61 = vdupq_n_s64(v60 - 1);
            v62 = (v60 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v63 = (*&this[2].f64[0] + 4 * v39 + 8);
            do
            {
              v64 = vdupq_n_s64(v58);
              v65 = vmovn_s64(vcgeq_u64(v61, vorrq_s8(v64, xmmword_183E20FF0)));
              if (vuzp1_s16(v65, *v61.i8).u8[0])
              {
                *(v63 - 2) = v59;
              }

              if (vuzp1_s16(v65, *&v61).i8[2])
              {
                *(v63 - 1) = v59;
              }

              if (vuzp1_s16(*&v61, vmovn_s64(vcgeq_u64(v61, vorrq_s8(v64, xmmword_183E21240)))).i32[1])
              {
                *v63 = v59;
                v63[1] = v59;
              }

              v58 += 4;
              v63 += 4;
            }

            while (v62 != v58);
          }
        }

        else if (v39 < v41)
        {
          v76 = 0;
          v77 = v56 & 0xFF00 | v57;
          v78 = (LODWORD(this[2].f64[1]) - 1);
          *&v79 = v9 * v78;
          v80 = ((((v54 | (v54 << 24)) & 0xFF00FF00FF00FFLL) * (HIBYTE(v54) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
          LODWORD(v80) = (v80 >> 24) | v80;
          v81 = v54 & 0xFF000000 | v80;
          v82 = v56 & 0xFF00FF;
          v83 = (v80 & 0xFF00FF) - v82;
          v84 = (v81 >> 8) - (v77 >> 8);
          v85 = v41 - v39;
          v86 = (a3 - v9) * v78;
          v87 = vdupq_n_s64(v85 - 1);
          v88 = vdupq_lane_s64(v79, 0);
          v89 = vdupq_lane_s64(COERCE__INT64(256.0 / v86), 0);
          v90 = vadd_s32(vdup_n_s32(v39), 0x100000000);
          v91 = *&this[2].f64[0] + 4 * v39;
          __asm { FMOV            V5.2D, #0.5 }

          do
          {
            v97 = vmovn_s64(vcgeq_u64(v87, vorrq_s8(vdupq_n_s64(v76), xmmword_183E20FF0)));
            v98.i64[0] = v90.u32[0];
            v98.i64[1] = v90.u32[1];
            v99 = vmovn_s64(vcvtq_u64_f64(vmlaq_f64(_Q5, vsubq_f64(vcvtq_f64_u64(v98), v88), v89)));
            if (v97.i8[0])
            {
              *(v91 + 4 * v76) = (v82 + ((v83 * v99.i32[0]) >> 8)) & 0xFF00FF | (v77 + v84 * v99.i32[0]) & 0xFF00FF00;
            }

            if (v97.i8[4])
            {
              *(v91 + 4 * v76 + 4) = (v82 + ((v83 * v99.i32[1]) >> 8)) & 0xFF00FF | (v77 + v84 * v99.i32[1]) & 0xFF00FF00;
            }

            v76 += 2;
            v90 = vadd_s32(v90, 0x200000002);
          }

          while (((v85 + 1) & 0xFFFFFFFFFFFFFFFELL) != v76);
        }
      }
    }
  }

  else if (v9 >= 0.0)
  {
    v13 = LODWORD(this[2].f64[1]);
    if (BYTE4(this[2].f64[1]) == 1)
    {
      v14 = (v13 - 1);
      v15 = vcvtpd_u64_f64(v9 * v14);
      if (v9 > 0.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = ceil(v14 * a3);
      if (a3 >= 1.0)
      {
        v17 = v13;
      }

      v18 = v17;
      v19 = *&this->f64[0];
      v20 = *&this[1].f64[0];
      v21 = *this[3].f64;
      v22 = *(this[3].f64 + 1);
      v212 = 0uLL;
      CA::OGL::Context::device_float_color(v19, v212.f32, v20, this + 4, v21, v22, v8);
      v210 = vcvt_f16_f32(v212);
      v23 = *&this->f64[0];
      v24 = *&this[1].f64[0];
      v25 = *this[3].f64;
      v26 = *(this[3].f64 + 1);
      v212 = 0uLL;
      CA::OGL::Context::device_float_color(v23, v212.f32, v24, a2, v25, v26, v27);
      v29.i16[3] = v210.i16[3];
      v28 = *v212.f32;
      v30 = vcvt_f16_f32(v212);
      if (*&v210 == *&v30)
      {
        if (v16 < v18)
        {
          v31 = 0;
          *v28.i16 = *&v210.i16[3] * *v210.i16;
          *v29.i16 = *&v210.i16[3] * *v210.i16;
          *(v29.i32 + 2) = vmul_lane_f16(vext_s8(v210, v28, 2uLL), v210, 3).u32[0];
          v32 = v18 - v16;
          v33 = vdupq_n_s64(v32 - 1);
          v34 = (v32 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v35 = *&this[2].f64[0] + 8 * v16;
          do
          {
            v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v31), xmmword_183E20FF0)));
            if (v36.i8[0])
            {
              *(v35 + 8 * v31) = v29;
            }

            if (v36.i8[4])
            {
              *(v35 + 8 * v31 + 8) = v29;
            }

            v31 += 2;
          }

          while (v34 != v31);
        }
      }

      else
      {
        v68 = LODWORD(this[2].f64[1]) - 1;
        v69 = 1.0 / ((a3 - v9) * v68);
        v70 = -(v9 * v68) * v69;
        if (*&v30.i16[3] == *&v210.i16[3])
        {
          if (v16 < v18)
          {
            v71 = vmul_lane_f16(vext_s8(v30, *&v69, 2uLL), v30, 3).u32[0];
            *v30.i16 = *&v30.i16[3] * *v30.i16;
            *(v30.i32 + 2) = v71;
            *v29.i16 = *&v210.i16[3] * *v210.i16;
            *(v29.i32 + 2) = vmul_lane_f16(vext_s8(v210, *&v69, 2uLL), v210, 3).u32[0];
            v72 = vcvtq_f32_f16(v29);
            v73 = vcvtq_f32_f16(v30);
            v74 = this[2].f64[0];
            do
            {
              v75 = v70 + v69 * v16;
              *(*&v74 + 8 * v16++) = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v72, 1.0 - v75), v73, v75));
            }

            while (v18 != v16);
          }
        }

        else if (v16 < v18)
        {
          v204 = vcvtq_f32_f16(v210);
          v205 = vcvtq_f32_f16(v30);
          v206 = this[2].f64[0];
          do
          {
            v207 = v70 + v69 * v16;
            v208 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v204, 1.0 - v207), v205, v207));
            v209 = vmul_lane_f16(vext_s8(v208, *&v69, 2uLL), v208, 3);
            v208.i16[0] = vmulh_lane_f16(*v208.i16, v208, 3);
            *(v208.i32 + 2) = vuzp1_s16(*&vmovl_u16(v209), *&v69).u32[0];
            *(*&v206 + 8 * v16++) = v208;
          }

          while (v18 != v16);
        }
      }
    }

    else
    {
      if (v9 <= 0.0)
      {
        v66 = 0;
      }

      else
      {
        v66 = vcvtpd_u64_f64(v9 * (v13 - 1));
      }

      if (a3 >= 1.0)
      {
        v100 = v13;
      }

      else
      {
        v100 = ceil((v13 - 1) * a3);
      }

      v119 = v100;
      v120 = *&this->f64[0];
      v121 = *&this[1].f64[0];
      v122 = *this[3].f64;
      v123 = *(this[3].f64 + 1);
      v212 = 0uLL;
      CA::OGL::Context::device_float_color(v120, v212.f32, v121, this + 4, v122, v123, v8);
      v125 = CA::OGL::ExtendedColor::word32(v124, vcvt_f16_f32(v212));
      v126 = *&this->f64[0];
      v127 = *&this[1].f64[0];
      v128 = *this[3].f64;
      v129 = *(this[3].f64 + 1);
      v212 = 0uLL;
      CA::OGL::Context::device_float_color(v126, v212.f32, v127, a2, v128, v129, v130);
      v132 = CA::OGL::ExtendedColor::word32(v131, vcvt_f16_f32(v212));
      if (v125 == v132)
      {
        if (v66 < v119)
        {
          v133 = 0;
          v134 = ((((v125 | (v125 << 24)) & 0xFF00FF00FF00FFLL) * (HIBYTE(v125) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
          v135 = v125 & 0xFF000000 | ((v134 >> 24) | v134) & 0xFFFFFF;
          v136 = v119 - v66;
          v137 = vdupq_n_s64(v136 - 1);
          v138 = (v136 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v139 = (*&this[2].f64[0] + 4 * v66 + 8);
          do
          {
            v140 = vdupq_n_s64(v133);
            v141 = vmovn_s64(vcgeq_u64(v137, vorrq_s8(v140, xmmword_183E20FF0)));
            if (vuzp1_s16(v141, *v137.i8).u8[0])
            {
              *(v139 - 2) = v135;
            }

            if (vuzp1_s16(v141, *&v137).i8[2])
            {
              *(v139 - 1) = v135;
            }

            if (vuzp1_s16(*&v137, vmovn_s64(vcgeq_u64(v137, vorrq_s8(v140, xmmword_183E21240)))).i32[1])
            {
              *v139 = v135;
              v139[1] = v135;
            }

            v133 += 4;
            v139 += 4;
          }

          while (v138 != v133);
        }
      }

      else
      {
        v152 = (LODWORD(this[2].f64[1]) - 1);
        v153 = 256.0 / ((a3 - v9) * v152);
        v154 = -(v9 * v152 * v153 + -0.5);
        if (HIBYTE(v125) == HIBYTE(v132))
        {
          if (v66 < v119)
          {
            v155 = 0;
            v156 = HIBYTE(v125) + 1;
            v157 = ((((v125 | (v125 << 24)) & 0xFF00FF00FF00FFLL) * v156) >> 8) & 0xFF00FF00FF00FFLL;
            v158 = (v157 >> 24) | v157;
            v159 = v158 & 0xFF00 | v125 & 0xFF000000;
            v160 = ((((v132 | (v132 << 24)) & 0xFF00FF00FF00FFLL) * v156) >> 8) & 0xFF00FF00FF00FFLL;
            v161 = (v160 >> 24) | v160;
            v162 = v132 & 0xFF000000 | ((v160 >> 24) | v160);
            v163 = v158 & 0xFF00FF;
            v164 = (v161 & 0xFF00FF) - (v158 & 0xFF00FF);
            v165 = (v162 >> 8) - (v159 >> 8);
            v166 = v119 - v66;
            v167 = vadd_s32(vdup_n_s32(v66), 0x100000000);
            v168 = vdupq_n_s64(v166 - 1);
            v169 = vdupq_lane_s64(*&v153, 0);
            v170 = vdupq_lane_s64(*&v154, 0);
            v171 = *&this[2].f64[0] + 4 * v66;
            do
            {
              v172 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(vdupq_n_s64(v155), xmmword_183E20FF0)));
              v173.i64[0] = v167.u32[0];
              v173.i64[1] = v167.u32[1];
              v174 = vmovn_s64(vcvtq_u64_f64(vmlaq_f64(v170, vcvtq_f64_u64(v173), v169)));
              if (v172.i8[0])
              {
                *(v171 + 4 * v155) = (v163 + ((v164 * v174.i32[0]) >> 8)) & 0xFF00FF | (v159 + v165 * v174.i32[0]) & 0xFF00FF00;
              }

              if (v172.i8[4])
              {
                *(v171 + 4 * v155 + 4) = (v163 + ((v164 * v174.i32[1]) >> 8)) & 0xFF00FF | (v159 + v165 * v174.i32[1]) & 0xFF00FF00;
              }

              v155 += 2;
              v167 = vadd_s32(v167, 0x200000002);
            }

            while (((v166 + 1) & 0xFFFFFFFFFFFFFFFELL) != v155);
          }
        }

        else if (v66 < v119)
        {
          v175 = 0;
          v176 = v119 - v66;
          v177 = (v125 >> 8) & 0xFF00FF;
          v178 = vaddq_s32(vdupq_n_s32(v66), xmmword_183E210A0);
          v179 = vdupq_n_s64(v176 - 1);
          v180 = vdupq_lane_s64(*&v153, 0);
          v181 = vdupq_lane_s64(*&v154, 0);
          v182 = vdupq_n_s32((v132 & 0xFF00FF) - (v125 & 0xFF00FF));
          v183 = vdupq_n_s32(((v132 >> 8) & 0xFF00FF) - v177);
          v184 = vdupq_n_s32(v125 & 0xFF00FF);
          v185 = vdupq_n_s32(v177 << 8);
          v186 = (*&this[2].f64[0] + 4 * v66 + 8);
          v187.i64[0] = 0xFF00FF00FF00FFLL;
          v187.i64[1] = 0xFF00FF00FF00FFLL;
          v188.i64[0] = 0x400000004;
          v188.i64[1] = 0x400000004;
          do
          {
            v189 = vdupq_n_s64(v175);
            v190 = vmovn_s64(vcgeq_u64(v179, vorrq_s8(v189, xmmword_183E20FF0)));
            v191.i64[0] = v178.u32[2];
            v191.i64[1] = v178.u32[3];
            v192 = vcvtq_f64_u64(v191);
            v191.i64[0] = v178.u32[0];
            v191.i64[1] = v178.u32[1];
            v193 = vuzp1q_s32(vcvtq_u64_f64(vmlaq_f64(v181, vcvtq_f64_u64(v191), v180)), vcvtq_u64_f64(vmlaq_f64(v181, v192, v180)));
            v194 = vmlaq_s32(v185, v183, v193);
            v195 = vbslq_s8(v187, vsraq_n_u32(v184, vmulq_s32(v182, v193), 8uLL), v194);
            v191.i64[0] = v195.u32[0];
            v191.i64[1] = v195.u32[1];
            v196.i64[0] = 0x100000001;
            v196.i64[1] = 0x100000001;
            v197 = vsraq_n_u32(v196, v194, 0x18uLL);
            v198 = vandq_s8(vorrq_s8(vshll_n_u32(*v195.i8, 0x18uLL), v191), v187);
            v198.i64[0] *= v197.u32[0];
            v198.i64[1] *= v197.u32[1];
            v199 = vandq_s8(vshrq_n_u64(v198, 8uLL), v187);
            if (vuzp1_s16(v190, *v178.i8).u8[0])
            {
              *(v186 - 2) = v194.i32[0] & 0xFF000000 | ((v199.i64[0] >> 24) | v199.i32[0]) & 0xFFFFFF;
            }

            if (vuzp1_s16(v190, *&v178).i8[2])
            {
              *(v186 - 1) = v194.i32[1] & 0xFF000000 | ((v199.i64[1] >> 24) | v199.i32[2]) & 0xFFFFFF;
            }

            v200 = vorrq_s8(v189, xmmword_183E21240);
            v201.i64[0] = v195.u32[2];
            v201.i64[1] = v195.u32[3];
            v202 = vandq_s8(vorrq_s8(vshll_high_n_u32(v195, 0x18uLL), v201), v187);
            v202.i64[0] *= v197.u32[2];
            v202.i64[1] *= v197.u32[3];
            v203 = vandq_s8(vshrq_n_u64(v202, 8uLL), v187);
            if (vuzp1_s16(*&v178, vmovn_s64(vcgeq_u64(v179, v200))).i32[1])
            {
              *v186 = v194.i32[2] & 0xFF000000 | ((v203.i64[0] >> 24) | v203.i32[0]) & 0xFFFFFF;
              v186[1] = v194.i32[3] & 0xFF000000 | ((v203.i64[1] >> 24) | v203.i32[2]) & 0xFFFFFF;
            }

            v175 += 4;
            v178 = vaddq_s32(v178, v188);
            v186 += 4;
          }

          while (((v176 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v175);
        }
      }
    }
  }

  this[3].f64[1] = a3;
  v12 = *a2;
  if (LODWORD(this[1].f64[1]) == 1)
  {
    this[5] = a2[1];
  }

  this[4] = v12;
}

void CA::CG::DrawRadialGradient::~DrawRadialGradient(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF2034F8;
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
  *this = &unk_1EF2034F8;
  CA::CG::Renderer::release_object(this[14], a2);

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::DrawConicGradient::draw_color(CA::CG::DrawConicGradient *this, CA::CG::Renderer *a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  ColorSpace = CGGradientGetColorSpace();
  if (CGColorSpaceGetModel(ColorSpace) < kCGColorSpaceModelCMYK)
  {
    *(v4[2] + 16) = 50;
    v6 = (*(*v4 + 1072))(v4);
    v8 = v4[2];
    if (v6)
    {
      v9 = *(v8 + 496);
      if (v9 != 12 && (v9 - 1) < 0x19)
      {
        {
        }

        {
          *(v4[2] + 497) |= 2u;
          *(v4[2] + 368) = 1065353216;
        }

        v11 = *(this + 14);
        v12 = *(this + 30);
        v20[0] = &unk_1EF203918;
        v20[1] = v11;
        v20[2] = v12;
        v13 = CA::CG::gradient_pixel_size(v11, v7);
        v14 = *(this + 18);
        v17[1] = a2;
        v17[2] = v4;
        v17[3] = a2 + 32;
        v17[4] = v20;
        v17[6] = 0;
        v17[5] = ColorSpace;
        v17[7] = v13;
        v17[0] = &unk_1EF203978;
        v18 = *(this + 8);
        v19 = v14;
        Identifier = CGGradientGetIdentifier();
        *(v4[2] + 497) &= ~2u;
        *(v4[2] + 16) = 0;
        if ((v16 & 1) == 0)
        {
          CA::CG::DrawConicGradient::draw_as_shading(this, a2);
        }

        return;
      }
    }

    else
    {
      *(v8 + 16) = 0;
    }
  }

  CA::CG::DrawConicGradient::draw_as_shading(this, a2);
}

void CA::CG::DrawConicGradient::draw_as_shading(CA::CG::DrawConicGradient *this, CA::CG::Renderer *a2)
{
  CGGradientGetColorSpace();
  CGGradientGetFunction();
  Conic = CGShadingCreateConic();
  if (Conic)
  {
    v4 = Conic;
    CA::CG::fill_shading(a2);

    CGShadingRelease(v4);
  }
}

void CA::CG::DrawConicGradient::~DrawConicGradient(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF2034F8;
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
  *this = &unk_1EF2034F8;
  CA::CG::Renderer::release_object(this[14], a2);

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::CG::DrawGradient::DrawGradient(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, const void *a5, char a6)
{
  *CA::CG::DrawOp::DrawOp(a1, a2, a3, a4, 0, 0x2000) = &unk_1EF2034F8;
  if (a5)
  {
    v9 = CFRetain(a5);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 112) = v9;
  CGGStateGetEDRTargetHeadroom();
  *(a1 + 120) = v10;
  if (a6)
  {
    *(a1 + 100) |= 0x1000000u;
  }

  if ((a6 & 2) != 0)
  {
    *(a1 + 100) |= 0x2000000u;
  }

  return a1;
}

void CA::CG::FillGlyphs::draw_shape_and_color(CA::CG::FillGlyphs *this, CA::CG::Renderer *a2, double a3, int64x2_t a4, double a5, double a6, double a7, int64x2_t a8, uint64_t a9, const CA::CG::ShadowStyle *a10)
{
  if ((CA::CG::draw_glyph_bitmaps(a2, this, 0, a10, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {

    CA::CG::draw_glyph_paths(a2, this, 192, 0);
  }
}

uint64_t CA::CG::draw_glyph_bitmaps(CA::CG *this, CA::CG::Renderer *a2, float32x2_t *a3, const CA::CG::ShadowStyle *a4, double a5, int64x2_t a6, double a7, double a8, double a9, int64x2_t a10)
{
  v125 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 33) | 4) != 4)
  {
    return 0;
  }

  if (!*(this + 178))
  {
    *(this + 178) = CGGlyphLockCreate();
  }

  v13 = *(a2 + 15);
  a6.i64[0] = v122;
  a10.i64[0] = this + 32;
  v14 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a10, a6)).i64[0], 0);
  v15 = vandq_s8(*(this + 4), v14);
  v16 = vandq_s8(*(this + 3), v14);
  v17 = vandq_s8(*(this + 2), v14);
  v18 = vmlaq_n_f64(vmulq_n_f64(v17, *(a2 + 17)), v16, *(a2 + 18));
  v19 = vmlaq_n_f64(vmulq_n_f64(v17, *(a2 + 19)), v16, *(a2 + 20));
  v122[0] = v18;
  v122[1] = v19;
  v20 = vmlaq_n_f64(vmlaq_n_f64(v15, v17, *(a2 + 21)), v16, *(a2 + 22));
  v123 = v20;
  if (a3)
  {
    v21 = a3[9].f32[1];
    v22 = v21;
    if (COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    v25 = v21 > 8.0;
    v26 = 4.0;
    if (v25)
    {
      v26 = 8.0;
    }

    for (i = 1.0; v22 > v26; v22 = v22 * 0.5)
    {
      i = i * 0.5;
    }

    v27 = vmulq_n_f64(vcvtq_f64_f32(a3[10]), *(this + 10));
    v28 = vdup_n_s32((*(a2 + 32) & 8) == 0);
    v29.i64[0] = v28.u32[0];
    v29.i64[1] = v28.u32[1];
    v20 = vaddq_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v29, 0x3FuLL)), v27, vrndaq_f64(v27)), v20);
    v123 = v20;
  }

  else
  {
    i = 1.0;
  }

  v30 = i * v13;
  v119 = vmulq_n_f64(v18, v30);
  v120 = vmulq_n_f64(v19, v30);
  v121 = v20;
  v31 = vmulq_f64(vextq_s8(v120, v120, 8uLL), v119);
  v32 = vsubq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0];
  if (v32 < 0.0)
  {
    v32 = -v32;
  }

  if (v32 > 32768.0)
  {
    return 0;
  }

  if (!CGGlyphLockAccess())
  {
    return 0;
  }

  v118[3] = 0;
  QuantizationLevel = CGGlyphLockGetQuantizationLevel();
  if (!QuantizationLevel)
  {
    return 0;
  }

  v34 = *(this + 1);
  v35 = *(a2 + 23);
  v36 = 4 * v35;
  v37 = 8 * v35;
  if ((4 * v35) > 0x1000)
  {
    v39 = malloc_type_malloc(4 * v35, 0xF96C429FuLL);
    v38 = v39;
  }

  else
  {
    MEMORY[0x1EEE9AC00](QuantizationLevel);
    v38 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v38, v36);
  }

  v114 = v34;
  if (v37 > 0x1000)
  {
    v115 = malloc_type_malloc(v37, 0x4366EBF6uLL);
    v117 = malloc_type_malloc(v37, 0x8FE54FB7uLL);
    if (!a3)
    {
      goto LABEL_27;
    }

LABEL_34:
    v46 = 0;
    goto LABEL_35;
  }

  MEMORY[0x1EEE9AC00](v39);
  v41 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v106 - v41;
  bzero(&v106 - v41, v37);
  MEMORY[0x1EEE9AC00](v42);
  v43 = (&v106 - v41);
  v34 = v114;
  v117 = v43;
  bzero(v43, v37);
  if (a3)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (!(*(*v34 + 232))(v34, 19))
  {
    goto LABEL_34;
  }

  v44 = *(v34[2] + 496);
  v46 = v44 != 12 && (v44 - 1) < 0x19;
LABEL_35:
  v23 = 0;
  if (!v38 || !v115 || !v117)
  {
    goto LABEL_134;
  }

  v118[1] = 0;
  v118[2] = 0;
  CGFontGetGlyphIdentifiers();
  v47 = CGGlyphLockLockGlyphBitmaps();
  if (!v47)
  {
    v23 = 0;
    goto LABEL_134;
  }

  if (!v46)
  {
    v48 = *(a2 + 23);
    v109 = 24 * v48;
    if ((24 * v48) > 0x1000)
    {
      v50 = malloc_type_malloc(24 * v48, 0xF9FBE1C6uLL);
      v48 = *(a2 + 23);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v47);
      v50 = &v106 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v50, v49);
    }

    v113 = v38;
    v111 = v50;
    if (!v48)
    {
      v74 = 0;
LABEL_83:
      v75 = v114;
      v76 = *(this + 532);
      if (v76 >= 0x801)
      {
        do
        {
          v77 = *(this + 531);
          v78 = *(this + 4240);
          v79 = v77[1];
          v80 = vcnt_s8(v78);
          v80.i16[0] = vaddlv_u8(v80);
          if (v80.u32[0] > 1uLL)
          {
            if (v79 >= *&v78)
            {
              v79 %= *&v78;
            }
          }

          else
          {
            v79 &= *&v78 - 1;
          }

          v81 = *(this + 529);
          v82 = *(v81 + 8 * v79);
          do
          {
            v83 = v82;
            v82 = *v82;
          }

          while (v82 != v77);
          if (v83 == (this + 4248))
          {
            goto LABEL_101;
          }

          v84 = v83[1];
          if (v80.u32[0] > 1uLL)
          {
            if (v84 >= *&v78)
            {
              v84 %= *&v78;
            }
          }

          else
          {
            v84 &= *&v78 - 1;
          }

          if (v84 != v79)
          {
LABEL_101:
            if (!*v77)
            {
              goto LABEL_102;
            }

            v85 = *(*v77 + 8);
            if (v80.u32[0] > 1uLL)
            {
              if (v85 >= *&v78)
              {
                v85 %= *&v78;
              }
            }

            else
            {
              v85 &= *&v78 - 1;
            }

            if (v85 != v79)
            {
LABEL_102:
              *(v81 + 8 * v79) = 0;
            }
          }

          v86 = *v77;
          if (*v77)
          {
            v87 = *(v86 + 8);
            if (v80.u32[0] > 1uLL)
            {
              if (v87 >= *&v78)
              {
                v87 %= *&v78;
              }
            }

            else
            {
              v87 &= *&v78 - 1;
            }

            if (v87 != v79)
            {
              *(*(this + 529) + 8 * v87) = v83;
              v86 = *v77;
            }
          }

          *v83 = v86;
          *v77 = 0;
          *(this + 532) = v76 - 1;
          operator delete(v77);
          v76 = *(this + 532);
        }

        while (v76 > 0x800);
        v74 = *(a2 + 23);
        v75 = v114;
      }

      v88 = v75[2];
      v89 = *(v88 + 8);
      if (v74 && *(*v117 + 28) == 16)
      {
        _H0 = *(a2 + 44);
        __asm { FCVT            S0, H0 }

        v51.i32[0] = *(a2 + 90);
        v95 = vmul_f32(*&vcvtq_f32_f16(v51), 0x3E0000003F000000);
        v96 = ((v95.f32[0] + (_S0 * 0.375)) + v95.f32[1]);
        if (v96 >= 0x55)
        {
          v97 = 2 * (v96 > 0xAA);
        }

        else
        {
          v97 = 1;
        }
      }

      else
      {
        v97 = 0;
      }

      v98 = *(v88 + 16) & 0xFFFFFF00FF00FF00;
      if (v89 == 0x3C003C003C003C00)
      {
        v99 = 1;
      }

      else
      {
        v99 = 3;
      }

      *(v88 + 16) = v99 | v98;
      *(v88 + 20) = HIDWORD(v98);
      v100 = v75[2];
      if ((*(v100 + 497) & 1) != 0 && *(v100 + 496) <= 1u)
      {
        *(v100 + 497) &= ~1u;
        v101 = 1;
      }

      else
      {
        v101 = 0;
      }

      v102 = *(this + 396);
      if ((v102 & 0x80000000) != 0)
      {
        *(this + 396) = 0;
        *(this + 794) = 0;
        v103 = *(this + 1);
        memset(v124, 0, sizeof(v124));
        v104 = i;
        v118[0] = v89;
        CA::CG::GlyphDelegate::GlyphDelegate(v124, this, v103, v118, v97, a3, v104);
        CA::CG::emit_glyphs(v103, v124, this + 1440, *(a2 + 23), v117, v115, v111);
        CA::CG::GlyphDelegate::~GlyphDelegate(v124);
        v105 = *(this + 200);
        if (v105)
        {
          (*(*v114 + 560))(v114, v105, 0);
          *(this + 200) = 0;
          *(this + 398) = -1;
        }

        *(this + 396) = -1;
        *(this + 194) = 0;
      }

      v23 = v102 >> 31;
      if (v101)
      {
        *(v114[2] + 497) |= 1u;
      }

      v38 = v113;
      if (v109 > 0x1000 && v111)
      {
        free(v111);
      }

      goto LABEL_133;
    }

    v107 = v37;
    v108 = v36;
    v52 = 0;
    v110 = this + 4248;
LABEL_47:
    v116 = v117[v52];
    v53 = *(v116 + 36);
    v54 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(this + 529, *(v116 + 36));
    if (v54)
    {
      goto LABEL_78;
    }

    v56 = (v116 + 40);
    v57 = *(v116 + 24) * *(v116 + 32);
    if (v57 < 4)
    {
      v62 = 0;
      v58 = 190295070;
    }

    else
    {
      v58 = 190295070;
      v59 = (*(v116 + 24) * *(v116 + 32));
      do
      {
        v60 = *v56;
        v56 += 4;
        HIDWORD(v61) = (461845907 * ((380141568 * v60) | ((-862048943 * v60) >> 17))) ^ v58;
        LODWORD(v61) = HIDWORD(v61);
        v58 = 5 * (v61 >> 19) - 430675100;
        v59 -= 4;
      }

      while (v59 > 3);
      v62 = v57 & 0xFFFFFFFC;
      v57 = v59;
    }

    v63 = 0;
    if (v57 > 1)
    {
      if (v57 != 2)
      {
        v63 = v56[2] << 16;
      }

      v63 |= v56[1] << 8;
    }

    else if (!v57)
    {
      goto LABEL_60;
    }

    HIDWORD(v64) = (461845907 * ((380141568 * (v63 ^ *v56)) | ((-862048943 * (v63 ^ *v56)) >> 17))) ^ v58;
    LODWORD(v64) = HIDWORD(v64);
    v58 = 5 * (v64 >> 19) - 430675100;
    v62 += 4;
LABEL_60:
    v65 = *(this + 4240);
    if (!*&v65)
    {
      goto LABEL_77;
    }

    v66 = vcnt_s8(v65);
    v66.i16[0] = vaddlv_u8(v66);
    if (v66.u32[0] > 1uLL)
    {
      v67 = v53;
      if (*&v65 <= v53)
      {
        v67 = v53 % v65.i32[0];
      }
    }

    else
    {
      v67 = (v65.i32[0] - 1) & v53;
    }

    v68 = *(*(this + 529) + 8 * v67);
    if (!v68 || (v54 = *v68) == 0)
    {
LABEL_77:
      v70 = -2048144789 * (v58 ^ v62 ^ ((v58 ^ v62) >> 16));
      LODWORD(v55) = v53;
      DWORD1(v55) = (-1028477387 * (v70 ^ (v70 >> 13))) ^ ((-1028477387 * (v70 ^ (v70 >> 13))) >> 16);
      v112 = v55;
      operator new();
    }

    while (1)
    {
      v69 = v54[1];
      if (v69 == v53)
      {
        if (*(v54 + 4) == v53)
        {
          v50 = v111;
LABEL_78:
          if (v50)
          {
            v71 = &v50[24 * v52];
            v72 = *(v54 + 5);
            *v71 = &unk_1EF203B50;
            v73 = *(v116 + 20);
            *(v71 + 2) = v72;
            *(v71 + 3) = *&v113[4 * v52];
            *(v71 + 2) = v73;
          }

          ++v52;
          v74 = *(a2 + 23);
          if (v52 >= v74)
          {
            v37 = v107;
            v36 = v108;
            goto LABEL_83;
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (v66.u32[0] > 1uLL)
        {
          if (v69 >= *&v65)
          {
            v69 %= *&v65;
          }
        }

        else
        {
          v69 &= *&v65 - 1;
        }

        if (v69 != v67)
        {
          goto LABEL_77;
        }
      }

      v54 = *v54;
      if (!v54)
      {
        goto LABEL_77;
      }
    }
  }

  v23 = CA::OGL::GlyphCache::emit_glyphs((this + 2592), *(a2 + 23), v117, v115);
LABEL_133:
  *(v114[2] + 16) = 0;
  CGGlyphLockUnlock();
LABEL_134:
  if (v37 > 0x1000 && v117)
  {
    free(v117);
  }

  if (v37 > 0x1000 && v115)
  {
    free(v115);
  }

  if (v36 > 0x1000 && v38)
  {
    free(v38);
  }

  return v23;
}

void CA::CG::draw_glyph_paths(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CGFontGetUnitsPerEm(*(a2 + 112));
  if (*(a2 + 184))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      GlyphPath = CGFontCreateGlyphPath();
      if (GlyphPath)
      {
        v10 = GlyphPath;
        if (a4)
        {
          CA::CG::stroke_path(a1, GlyphPath, 0, a2 + 8, a4);
        }

        else
        {
          CA::CG::fill_path(a1);
        }

        CGPathRelease(v10);
      }

      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 184));
  }
}

uint64_t CA::CG::GlyphDelegate::GlyphDelegate(uint64_t result, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, float a7)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(a3 + 144) = 0;
  *(a3 + 112) = a3 + 1386;
  *(a3 + 120) = xmmword_183E20E50;
  *result = &unk_1EF203C50;
  *(result + 24) = *a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  *(result + 52) = 1.0 / a7;
  *(result + 88) = 0;
  if (a6)
  {
    v7 = *(a6 + 76) * (a7 * *(a2 + 80));
    v8 = (((v7 * 256.0) + 0.5) << 10) | 1;
    v9 = vcvtps_s32_f32((v7 * 2.82) + 0.5);
    if (v7 <= 0.6)
    {
      v9 = 0;
    }

    v10 = 2 * v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
  }

  *(result + 60) = v9;
  *(result + 64) = v10;
  *(result + 56) = v8 | (a5 << 8);
  return result;
}

void CA::CG::emit_glyphs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v13 = (*(*a1 + 832))(a1);
  if (v13)
  {
    if ((8 * a4) > 0x1000)
    {
      v14 = malloc_type_malloc(8 * a4, 0x2004093837F09uLL);
      if (!v14)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v13);
      v14 = &v42 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v14, 8 * a4);
    }

    v43 = 8 * a4;
    memset(v48, 0, sizeof(v48));
    if (a4)
    {
      v17 = 0;
      v44 = a4;
      do
      {
        v18 = 0;
        v19 = a5[v17];
        *&v15 = vadd_s32(*(v19 + 12), *(a6 + 8 * v17));
        v20 = *(v19 + 20);
        v21 = vsub_s32(*&v15, v20);
        v22 = vadd_s32(*&v15, v20);
        v23 = vext_s8(v21, v22, 4uLL);
        v24 = v15;
        v25 = DWORD1(v15);
        do
        {
          v26 = *(v48 + v18);
          if (!v26)
          {
            v27 = (v48 + v18);
            v37 = &v14[8 * v17];
            *v37 = 0;
            v38 = v27 + 1;
            goto LABEL_32;
          }

          v27 = (v48 + v18);
          v28 = *(&v48[1] + v18);
          if (v22.i32[0] < v28)
          {
            v28 = v22.i32[0];
          }

          v29 = v27[1].i32[0];
          if (v15 > v29)
          {
            v29 = v15;
          }

          if (v28 <= v29)
          {
            goto LABEL_29;
          }

          v30 = v27[2].i32[1];
          if (SDWORD1(v15) < v30)
          {
            v30 = DWORD1(v15);
          }

          v31 = v27[1].i32[1];
          if (v21.i32[1] > v31)
          {
            v31 = v21.i32[1];
          }

          if (v30 <= v31)
          {
LABEL_29:
            v37 = &v14[8 * v17];
            *v37 = v26;
            v38 = v27 + 1;
LABEL_30:
            *v38 = vmin_s32(*v38, vzip1_s32(*&v15, v23));
            v27[2] = vmax_s32(v27[2], vzip2_s32(v23, *&v15));
            goto LABEL_33;
          }

          v18 += 24;
        }

        while (v18 != 96);
        v45 = v15;
        v46 = v15;
        v47 = v17;
        for (i = 0; i != 4; ++i)
        {
          v33 = v48 + 3 * i;
          for (j = *v33; j; j = *j)
          {
            v35 = *(a5 + j - v14);
            *(a2 + 72) = v35;
            *(a2 + 80) = a6 + j - v14;
            CA::OGL::Mosaic::draw(a3, *(a2 + 16), *(a2 + 56), *(a7 + 24 * ((j - v14) >> 3) + 8), a7 + 24 * ((j - v14) >> 3), *(a2 + 64) + *(v35 + 20), *(v35 + 24) + *(a2 + 64), 0, a2, 0);
          }

          *v33 = 0;
          CA::CG::MosaicDelegate::draw_array(*(a2 + 16));
        }

        v17 = v47;
        v36 = *&v48[0];
        v27 = v48;
        v37 = &v14[8 * v47];
        *v37 = *&v48[0];
        v38 = v48 + 1;
        a4 = v44;
        v15 = v46;
        v24 = v45;
        v25 = HIDWORD(v45);
        if (v36)
        {
          goto LABEL_30;
        }

LABEL_32:
        v38->i32[0] = v24;
        *(v27 + 12) = v23;
        v27[2].i32[1] = v25;
LABEL_33:
        *v27 = v37;
        ++v17;
      }

      while (v17 != a4);
    }

    for (k = 0; k != 4; ++k)
    {
      v40 = *(v48 + 3 * k);
      if (v40)
      {
        do
        {
          v41 = *(a5 + v40 - v14);
          *(a2 + 72) = v41;
          *(a2 + 80) = a6 + v40 - v14;
          CA::OGL::Mosaic::draw(a3, *(a2 + 16), *(a2 + 56), *(a7 + 24 * ((v40 - v14) >> 3) + 8), a7 + 24 * ((v40 - v14) >> 3), *(a2 + 64) + *(v41 + 20), *(v41 + 24) + *(a2 + 64), 0, a2, 0);
          v40 = *v40;
        }

        while (v40);
        CA::CG::MosaicDelegate::draw_array(*(a2 + 16));
      }
    }

    if (v43 > 0x1000)
    {
      free(v14);
    }
  }

  else
  {
    for (; a4; --a4)
    {
      v16 = *a5++;
      *(a2 + 72) = v16;
      *(a2 + 80) = a6;
      CA::OGL::Mosaic::draw(a3, *(a2 + 16), *(a2 + 56), *(a7 + 8), a7, *(a2 + 64) + *(v16 + 20), *(v16 + 24) + *(a2 + 64), 0, a2, 0);
      a7 += 24;
      a6 += 8;
    }
  }
}

void CA::CG::GlyphDelegate::~GlyphDelegate(CA::CG::GlyphDelegate *this)
{
  *this = &unk_1EF203C50;
  v2 = *(this + 11);
  if (v2)
  {
    free(v2);
  }

  *this = &unk_1EF203C98;
  CA::CG::MosaicDelegate::draw_array(*(this + 2));
}

{
  *this = &unk_1EF203C50;
  v2 = *(this + 11);
  if (v2)
  {
    free(v2);
  }

  *this = &unk_1EF203C98;
  CA::CG::MosaicDelegate::draw_array(*(this + 2));

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF203C50;
  v2 = *(this + 11);
  if (v2)
  {
    free(v2);
  }

  *this = &unk_1EF203C98;
  CA::CG::MosaicDelegate::draw_array(*(this + 2));
}

float CA::CG::GlyphDelegate::quad(CA::CG::GlyphDelegate *this, int32x2_t *a2, float *a3)
{
  v6 = *(this + 2);
  v7 = 4;
  if (*(v6 + 108))
  {
    v7 = 6;
  }

  v8 = *(v6 + 144);
  v9 = v8 + 4;
  if ((v8 + 4) > *(v6 + 152) || (v10 = *(v6 + 128)) != 0 && *(v6 + 120) + v7 > v10)
  {
    CA::CG::MosaicDelegate::draw_array(*(this + 2));
    v8 = *(v6 + 144);
    v9 = v8 + 4;
  }

  v11 = *(v6 + 136) + 48 * v8;
  *(v6 + 144) = v9;
  CA::OGL::Context::array_indices(v6, v8);
  v13 = *(this + 9);
  v12 = *(this + 10);
  v14 = *(this + 15);
  v15 = *(this + 13);
  result = *a3;
  v17 = *(a3 + 1);
  v19 = *(a3 + 2);
  v18 = *(a3 + 3);
  v20.i32[0] = *(v13 + 12) - v14;
  v21 = *a2;
  v22 = a2[1];
  v23.i32[0] = vadd_s32(v20, *a2).u32[0];
  v20.i32[1] = *(v13 + 16) + v14;
  *(v11 + 16) = *a3;
  *(v11 + 20) = v17;
  v23.i32[1] = vsub_s32(v20, v21).i32[1];
  v24 = vrnd_f32(vmla_n_f32(vcvt_f32_s32(*v12), vcvt_f32_s32(v23), v15));
  v25 = vmul_n_f32(vcvt_f32_s32(v22), v15);
  v21.i32[0] = vadd_f32(v25, v24).u32[0];
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = vsub_f32(v24, v25).i32[1];
  *v11 = v24;
  *(v11 + 8) = 0x3F80000000000000;
  *(v11 + 32) = *(this + 3);
  v21.i32[1] = v24.i32[1];
  *(v11 + 48) = v21;
  *(v11 + 56) = 0x3F80000000000000;
  *(v11 + 64) = v19;
  *(v11 + 68) = v17;
  *(v11 + 80) = *(this + 3);
  *(v11 + 96) = v22;
  *(v11 + 104) = 0x3F80000000000000;
  *(v11 + 112) = v19;
  *(v11 + 116) = v18;
  *(v11 + 128) = *(this + 3);
  v24.i32[1] = v22.i32[1];
  *(v11 + 144) = v24;
  *(v11 + 152) = 0x3F80000000000000;
  *(v11 + 160) = result;
  *(v11 + 164) = v18;
  *(v11 + 176) = *(this + 3);
  return result;
}

char *CA::CG::GlyphDelegate::read(CA::CG::GlyphDelegate *this, int a2, const CA::Bounds *a3, unsigned __int8 *a4, uint64_t a5)
{
  v10 = *(this + 9);
  v11 = *(this + 16);
  if (!v11)
  {
    result = (v10 + 10);
    v18 = v10[7];
    LODWORD(v12) = v10[8];
    goto LABEL_14;
  }

  v12 = (v10[5] + v11);
  v13 = (v10[6] + v11);
  result = *(this + 11);
  v15 = (v13 * v12);
  if (!result)
  {
    goto LABEL_5;
  }

  if (*(this + 12) < v15)
  {
    free(result);
LABEL_5:
    if (v15 <= 0x1000)
    {
      v16 = 4096;
    }

    else
    {
      v16 = v15;
    }

    *(this + 12) = v16;
    result = malloc_type_malloc(v16, 0x100004077774924uLL);
    *(this + 11) = result;
    v17 = ~v10[9];
    *(this + 26) = v17;
    goto LABEL_11;
  }

  v17 = *(this + 26);
LABEL_11:
  if (v17 != v10[9])
  {
    bzero(result, (v13 * v12));
    CGBlt_copyBytes();
    v19 = *(*(this + 1) + 80) * *(this + 12) * *(*(this + 5) + 76);
    *(this + 26) = v10[9];
    result = *(this + 11);
  }

  v18 = 8;
LABEL_14:
  v20 = &result[*(a3 + 1) * v12];
  if (a2 == 20)
  {
    if (v18 == 16)
    {
      v40 = *(a3 + 3);
      if (v40 >= 1)
      {
        v41 = &v20[2 * *a3];
        v42 = *(a3 + 2);
        do
        {
          if (v42 >= 1)
          {
            v43 = 0;
            v44 = v42 + 1;
            do
            {
              *&a4[v43] = (2 * *&v41[v43]) | 1;
              --v44;
              v43 += 2;
            }

            while (v44 > 1);
          }

          v41 += v12;
          a4 += a5;
          v26 = v40-- <= 1;
        }

        while (!v26);
      }
    }

    else if (v18 == 8)
    {
      v27 = *(a3 + 3);
      if (v27 >= 1)
      {
        v28 = &v20[*a3];
        v29 = *(a3 + 2);
        do
        {
          if (v29 >= 1)
          {
            v30 = 0;
            v31 = v29 + 1;
            do
            {
              *&a4[2 * v30] = (2114 * (v28[v30] >> 3)) | 1;
              --v31;
              ++v30;
            }

            while (v31 > 1);
          }

          v28 += v12;
          a4 += a5;
          v26 = v27-- <= 1;
        }

        while (!v26);
      }
    }
  }

  else if (a2 == 9)
  {
    if (v18 == 16)
    {
      v32 = *(this + 8);
      v33 = &CA::CG::identity_map;
      if (v32 == 2)
      {
        v33 = &CA::CG::white_on_black_map;
      }

      if (v32 == 1)
      {
        v34 = &CA::CG::black_on_white_map;
      }

      else
      {
        v34 = v33;
      }

      v35 = *(a3 + 3);
      if (v35 >= 1)
      {
        v36 = &v20[2 * *a3];
        do
        {
          v37 = *(a3 + 2);
          if (v37 >= 1)
          {
            v38 = 0;
            v39 = v37 + 1;
            do
            {
              a4[v38] = v34[*&v36[2 * v38] & 0x1F];
              --v39;
              ++v38;
            }

            while (v39 > 1);
          }

          v36 += v12;
          a4 += a5;
          v26 = v35-- <= 1;
        }

        while (!v26);
      }
    }

    else if (v18 == 8)
    {
      v21 = *(a3 + 3);
      if (v21 >= 1)
      {
        v22 = &v20[*a3];
        do
        {
          v23 = *(a3 + 2);
          if (v23 >= 1)
          {
            v24 = 0;
            v25 = v23 + 1;
            do
            {
              a4[v24] = v22[v24];
              --v25;
              ++v24;
            }

            while (v25 > 1);
          }

          v22 += v12;
          a4 += a5;
          v26 = v21-- <= 1;
        }

        while (!v26);
      }
    }
  }

  return result;
}

double CA::CG::GlyphKey::copy(CA::CG::GlyphKey *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x165299FDuLL);
  if (v2)
  {
    *v2 = &unk_1EF203B50;
    *(v2 + 2) = *(this + 2);
    *(v2 + 3) = *(this + 3);
    result = *(this + 2);
    v2[2] = result;
  }

  return result;
}

void CA::CG::GlyphKey::~GlyphKey(CA::CG::GlyphKey *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::CG::FillGlyphs::draw_shape(CA::CG::FillGlyphs *this, CA::CG::Renderer *a2, double a3, int64x2_t a4, double a5, double a6, double a7, int64x2_t a8, uint64_t a9, const CA::CG::ShadowStyle *a10)
{
  if ((CA::CG::draw_glyph_bitmaps(a2, this, 0, a10, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {

    CA::CG::draw_glyph_paths(a2, this, 192, 0);
  }
}

uint64_t CA::CG::FillGlyphs::shape_type(CA::CG::FillGlyphs *this, CA::CG::Renderer *a2)
{
  if (!*(this + 23))
  {
    return 0;
  }

  if (*(this + 103))
  {
    return 3;
  }

  return 2;
}

BOOL CA::CG::FillGlyphs::can_coalesce(CA::CG::FillGlyphs *this, const CA::CG::FillGlyphs *a2)
{
  if (*(this + 1) != *(a2 + 1))
  {
    return 0;
  }

  if (*(this + 2) != *(a2 + 2) || *(this + 3) != *(a2 + 3) || *(this + 4) != *(a2 + 4) || *(this + 5) != *(a2 + 5) || *(this + 6) != *(a2 + 6) || *(this + 14) != *(a2 + 14) || *(this + 8) != *(a2 + 8) || *(this + 9) != *(a2 + 9) || *(this + 11) != *(a2 + 11))
  {
    return 0;
  }

  v4 = *(this + 10);
  v5 = *(a2 + 10);
  if (v4 && v5)
  {
    if (!CA::CG::DeviceColor::Pattern::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v4 | v5)
  {
    return 0;
  }

  if (*(this + 25) == *(a2 + 25) && *(this + 14) == *(a2 + 14) && *(this + 15) == *(a2 + 15) && *(this + 32) == *(a2 + 32) && *(this + 33) == *(a2 + 33) && *(this + 17) == *(a2 + 17) && *(this + 18) == *(a2 + 18) && *(this + 19) == *(a2 + 19))
  {
    return *(this + 20) == *(a2 + 20);
  }

  return 0;
}

void *CA::CG::FillGlyphs::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (v10)
  {
    Color = CGStyleGetColor();
    CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, 2112);
    *v10 = &unk_1EF203CE0;
    v10[18] = a1;
    atomic_fetch_add((a3 + 8), 1u);
    v10[19] = a3;
    *v10 = &unk_1EF203B80;
  }

  return v10;
}

void CA::CG::FillGlyphsShadow::draw_shadow(CA::CG::FillGlyphsShadow *this, CA::CG::Renderer *a2)
{
  v4 = *(a2 + 1);
  if (((*(**(this + 18) + 136))(*(this + 18)) & 5) == 0)
  {
    goto LABEL_5;
  }

  v12 = *(v4 + 16);
  v13 = v12[1];
  v14 = *(this + 18);
  LOWORD(_D0) = *(v14 + 47);
  *v7.i16 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
  if (*&_D0 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    __asm { FCVT            S0, H0 }

    v7 = vcvtq_f32_f16(v13);
    _D0 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_n_f32(v7, _S0)));
    *&v12[1] = _D0;
    v14 = *(this + 18);
  }

  v20 = CA::CG::draw_glyph_bitmaps(a2, v14, *(this + 19), v5, _D0, v7, v8, v9, v10, v11);
  *(*(v4 + 16) + 8) = v13;
  if ((v20 & 1) == 0)
  {
LABEL_5:

    CA::CG::DrawShadow::draw_shadow(this, a2);
  }
}

void CA::CG::FillGlyphsShadow::~FillGlyphsShadow(CA::CG::FillGlyphsShadow *this)
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

BOOL CA::CG::FillGlyphs::may_flush(uint64_t a1, uint64_t a2, int a3)
{
  if (!(*(**(a2 + 8) + 232))(*(a2 + 8), 19))
  {
    return 1;
  }

  result = 1;
  if (a3 != 12 && (a3 - 1) <= 0x18)
  {
    return (*(a1 + 103) & 1) == 0;
  }

  return result;
}

void CA::CG::DrawGlyphs::compute_dod_(CA::CG::DrawGlyphs *this, float64x2_t *a2, double a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = *(this + 14);
  bboxes.origin.x = 0.0;
  if (CGFontGetVariationAxes())
  {
    v8 = *&bboxes.origin.x == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    CGFontGetVariations();
  }

  UnitsPerEm = CGFontGetUnitsPerEm(v7);
  v10 = -UnitsPerEm;
  v11 = UnitsPerEm * 2.4;
  FontBBox = CGFontGetFontBBox(v7);
  v35.origin.x = v10;
  v35.origin.y = v10;
  v35.size.width = v11;
  v35.size.height = v11;
  v36 = CGRectUnion(v35, FontBBox);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v16 = *(this + 23);
  if (v16)
  {
    v17 = (this + a4 + 8);
    v18 = -1.79769313e308;
    v19 = 1.79769313e308;
    v20 = 1.79769313e308;
    v21 = -1.79769313e308;
    do
    {
      v22 = *(v17 - 1);
      v23 = *v17;
      if (v22 < v19)
      {
        v19 = *(v17 - 1);
      }

      if (v23 < v20)
      {
        v20 = *v17;
      }

      if (v22 > v18)
      {
        v18 = *(v17 - 1);
      }

      if (v23 > v21)
      {
        v21 = *v17;
      }

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v20 = 1.79769313e308;
    v21 = -1.79769313e308;
    v18 = -1.79769313e308;
    v19 = 1.79769313e308;
  }

  v31 = *(this + 15);
  v24 = v31 / CGFontGetUnitsPerEm(v7);
  a2[1].f64[0] = v18 - v19 + v24 * width;
  a2[1].f64[1] = v21 - v20 + v24 * height;
  a2->f64[0] = v19 + v24 * x;
  a2->f64[1] = v20 + v24 * y;
  CA::Rect::apply_transform(a2, (this + 136));
  if (a3 > 0.0)
  {
    v26 = a2[1].f64[0];
    v25 = a2[1].f64[1];
    v27 = v26 <= v25 ? a2[1].f64[1] : a2[1].f64[0];
    if (v27 < 1.79769313e308)
    {
      if (v26 >= v25)
      {
        v28 = a2[1].f64[1];
      }

      else
      {
        v28 = a2[1].f64[0];
      }

      if (v28 > 0.0)
      {
        *a2 = vaddq_f64(*a2, vdupq_lane_s64(COERCE__INT64(-a3), 0));
        v29 = a3 + a3 + v26;
        v30 = a3 + a3 + v25;
        a2[1].f64[0] = v29;
        a2[1].f64[1] = v30;
        if (v29 <= 0.0 || v30 <= 0.0)
        {
          a2[1].f64[0] = 0.0;
          a2[1].f64[1] = 0.0;
        }
      }
    }
  }

  CA::Rect::apply_transform(a2, (this + 8));
}

void CA::CG::FillGlyphs::~FillGlyphs(CA::CG::FillGlyphs *this)
{
  *this = &unk_1EF203DB0;
  v2 = *(this + 14);
  if (v2)
  {
    CFRelease(v2);
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
  *this = &unk_1EF203DB0;
  v2 = *(this + 14);
  if (v2)
  {
    CFRelease(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::StrokeGlyphs::~StrokeGlyphs(CA::CG::StrokeGlyphs *this)
{
  *this = &unk_1EF203A88;
  if (*(this + 26))
  {
    CGDashRelease();
  }

  *this = &unk_1EF203DB0;
  v2 = *(this + 14);
  if (v2)
  {
    CFRelease(v2);
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
  *this = &unk_1EF203A88;
  if (*(this + 26))
  {
    CGDashRelease();
  }

  *this = &unk_1EF203DB0;
  v2 = *(this + 14);
  if (v2)
  {
    CFRelease(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

float CA::Render::PortalLayer::set_property(CA::Render::PortalLayer *this, unint64_t a2, const unsigned int *a3, BOOL a4, uint64_t a5, const double *a6)
{
  if (a5)
  {
    if (*a3 == 666)
    {
      v6 = *a6;
      result = (v6 * 255.0) + 0.5;
      *(this + 44) = result;
    }
  }

  return result;
}

uint64_t CA::Render::PortalLayer::get_property(CA::Render::PortalLayer *this, unint64_t a2, const unsigned int *a3, unint64_t a4, double *a5, double **a6, float a7)
{
  if (a4 < 4)
  {
    return 0;
  }

  if (a6)
  {
    *a6 = a5;
  }

  if (*a3 != 666)
  {
    return 0;
  }

  LOBYTE(a7) = *(this + 44);
  *a5 = (LODWORD(a7) * 0.0039216);
  return 1;
}

char *CA::Render::PortalLayer::show(uint64_t a1, X::Stream *this, int a3, int a4)
{
  if (a4)
  {
    return X::Stream::printf(this, "portal-layer %x", *(a1 + 40));
  }

  X::Stream::printf(this, "(portal-layer 0x%lx", *(a1 + 24));
  v8 = (a3 + 1);
  X::Stream::printf(this, "\n%*s", 2 * v8, "");
  X::Stream::printf(this, "(sourceLayer 0x%lx)", *(a1 + 32));
  X::Stream::printf(this, "\n%*s", 2 * v8, "");
  X::Stream::printf(this, "(sourceContext %x)", *(a1 + 40));
  v10 = *(a1 + 12);
  if ((v10 & 0x100) != 0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v8, "");
    X::Stream::printf(this, "(hidesSourceLayer true)");
    v10 = *(a1 + 12);
  }

  if ((v10 & 0x10000) != 0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v8, "");
    X::Stream::printf(this, "(hidesSourceLayerInOtherPortals true)");
  }

  LOBYTE(v9) = *(a1 + 44);
  if ((v9 * 0.0039216) != 1.0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v8, "");
    LOBYTE(v11) = *(a1 + 44);
    X::Stream::printf(this, "(sourceLayerOpacityScale %g)", (v11 * 0.0039216));
  }

  v12 = *(a1 + 12);
  if ((v12 & 0x200) != 0)
  {
    X::Stream::printf(this, "\n%*s", 2 * v8, "");
    X::Stream::printf(this, "(matchesOpacity true)");
    v12 = *(a1 + 12);
    if ((v12 & 0x400) == 0)
    {
LABEL_10:
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if ((v12 & 0x400) == 0)
  {
    goto LABEL_10;
  }

  X::Stream::printf(this, "\n%*s", 2 * v8, "");
  X::Stream::printf(this, "(matchesPosition true)");
  v12 = *(a1 + 12);
  if ((v12 & 0x800) == 0)
  {
LABEL_11:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  X::Stream::printf(this, "\n%*s", 2 * v8, "");
  X::Stream::printf(this, "(matchesTransform true)");
  v12 = *(a1 + 12);
  if ((v12 & 0x1000) == 0)
  {
LABEL_12:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    X::Stream::printf(this, "\n%*s", 2 * v8, "");
    X::Stream::printf(this, "(crossDisplay true)");
    if ((*(a1 + 12) & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  X::Stream::printf(this, "\n%*s", 2 * v8, "");
  X::Stream::printf(this, "(allowsBackdropGroups true)");
  v12 = *(a1 + 12);
  if ((v12 & 0x2000) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((v12 & 0x8000) != 0)
  {
LABEL_14:
    X::Stream::printf(this, "\n%*s", 2 * v8, "");
    X::Stream::printf(this, "(allowedInContextTransform true)");
  }

LABEL_15:
  v13 = *(a1 + 56);
  if (v13)
  {
    if ((*(v13 + 213) & 1) != 0 || (X::Stream::printf(this, "\n%*s", 2 * v8, ""), X::Stream::printf(this, "(source layer not found)"), (v13 = *(a1 + 56)) != 0))
    {
      if ((*(v13 + 13) & 0x10) != 0)
      {
        X::Stream::printf(this, "\n%*s", 2 * v8, "");
        X::Stream::printf(this, "(stop-secure-superlayers-validation true)");
      }
    }
  }

  CA::Render::Context::show_source_layer(this, *(a1 + 40), *(a1 + 32), v8, a4);

  return X::Stream::printf(this, ")");
}

void *CA::Render::PortalState::match_cross_display_layer(uint64_t a1, _OWORD *a2, _DWORD *a3, void *a4)
{
  os_unfair_lock_lock(&CA::Render::_cross_display_sources_lock);
    ;
  }

  if (i == qword_1EA84F508)
  {
    v16 = 0;
  }

  else
  {
    v9 = *(i + 2);
    v10 = *(i + 3);
    v11 = *(i + 4);
    *a2 = *(i + 1);
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
    v12 = *(i + 6);
    v13 = *(i + 7);
    v14 = *(i + 8);
    a2[4] = *(i + 5);
    a2[5] = v12;
    a2[6] = v13;
    a2[7] = v14;
    *a3 = *(i + 36);
    *a4 = *(i + 19);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v15 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
    v16 = v15;
    if (v15)
    {
      CA::Render::Layer::Layer(v15, *(i + 1));
    }
  }

  os_unfair_lock_unlock(&CA::Render::_cross_display_sources_lock);
  return v16;
}

void CAMLWriterFreeElementList(_CAMLWriterElement *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1;
    do
    {
      var1 = v2->var1;
      if (var1)
      {
        CAMLWriterFreeElementList(var1);
      }

      var4 = v2->var4;
      if (var4)
      {
        CFRelease(var4);
      }

      var5 = v2->var5;
      if (var5)
      {
        CFRelease(var5);
      }

      CAMLWriterFreeAttributeList(v2->var6);
      v2 = v2->var2;
    }

    while (v2);
    do
    {
      var2 = v1->var2;
      free(v1);
      v1 = var2;
    }

    while (var2);
  }
}

void CAMLWriterFreeAttributeList(_CAMLWriterAttribute *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1;
    do
    {
      v3 = *(v2 + 2);
      if (v3)
      {
        CFRelease(v3);
      }

      v2 = *v2;
    }

    while (v2);
    do
    {
      v4 = *v1;
      free(v1);
      v1 = v4;
    }

    while (v4);
  }
}

void CAMLWriterNewline(_CAMLWriterPriv *a1, unsigned int a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = (a2 >> 2) & 0x1FFFFFFF;
  v4 = (2 * a2) & 6;
  v5 = v4 + ((2 * a2) >> 3) + 1;
  MEMORY[0x1EEE9AC00](a1);
  v7 = v8 - v6;
  bzero(v8 - v6, v5);
  *v7 = 10;
  memset(v7 + 1, 9, v3);
  memset(&v7[v3 + 1], 32, v4);
  CFDataAppendBytes(a1, v7, v5);
}

void CAMLWriterPrintf(_CAMLWriterPriv *a1, char *__s, ...)
{
  va_start(va, __s);
  va_copy(v22, va);
  while (1)
  {
    v4 = strchr(__s, 37);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    v6 = v4 - __s;
    if (v4 != __s)
    {
      CFDataAppendBytes(a1->var0, __s, v6);
    }

    v7 = v5[1];
    if (v7 == 115)
    {
      v19 = va_arg(v22, const char *);
      v20 = strlen(v19);
      if (!v20)
      {
        goto LABEL_38;
      }

      v10 = v20;
      var0 = a1->var0;
      v9 = v19;
      goto LABEL_37;
    }

    if (v7 != 83)
    {
      if (v7 != 37)
      {
        goto LABEL_38;
      }

      var0 = a1->var0;
      v9 = "%";
      v10 = 1;
      goto LABEL_37;
    }

    v11 = va_arg(v22, void *);
    v12 = [v11 UTF8String];
    v13 = strlen(v12);
    if (!v13)
    {
      goto LABEL_38;
    }

    if (v13 >= 1)
    {
      v14 = &v12[v13];
      v9 = v12;
      while (1)
      {
        v15 = *v12;
        if (v15 > 0x3E || ((1 << v15) & 0x500000C400000000) == 0)
        {
          ++v12;
          goto LABEL_29;
        }

        if (v12 - v9 >= 1)
        {
          CFDataAppendBytes(a1->var0, v9, v12 - v9);
          v15 = *v12;
        }

        if (v15 > 59)
        {
          if (v15 == 62)
          {
            v17 = "&gt;";
            goto LABEL_28;
          }

          if (v15 != 60)
          {
            goto LABEL_25;
          }

          v17 = "&lt;";
        }

        else
        {
          if (v15 == 34)
          {
            v17 = "&quot;";
            goto LABEL_28;
          }

          v17 = "&amp;";
          if (v15 != 38)
          {
LABEL_25:
            v17 = "&apos;";
          }
        }

LABEL_28:
        v18 = strlen(v17);
        CFDataAppendBytes(a1->var0, v17, v18);
        v9 = ++v12;
LABEL_29:
        if (v12 >= v14)
        {
          goto LABEL_35;
        }
      }
    }

    v9 = v12;
LABEL_35:
    v10 = v12 - v9;
    if (v12 - v9 >= 1)
    {
      var0 = a1->var0;
LABEL_37:
      CFDataAppendBytes(var0, v9, v10);
    }

LABEL_38:
    __s = v5 + 2;
  }

  if (*__s)
  {
    v21 = strlen(__s);
    if (v21)
    {
      CFDataAppendBytes(a1->var0, __s, v21);
    }
  }
}

void CAMLWriterElementRemoveAttribute(_CAMLWriterElement *a1, int a2)
{
  p_var6 = &a1->var6;
  while (1)
  {
    v4 = p_var6;
    p_var6 = *p_var6;
    if (!p_var6)
    {
      break;
    }

    if (*(p_var6 + 2) == a2)
    {
      v5 = *p_var6;
      *v4 = *p_var6;
      if (!v5)
      {
        a1->var7 = p_var6;
      }

      *p_var6 = 0;
      CAMLWriterFreeAttributeList(p_var6);
      return;
    }
  }
}

BOOL CAMLWriterIdentifierNeedsQuoting(CFStringRef theString)
{
  if (!CAMLWriterIdentifierNeedsQuoting(__CFString const*)::quoted_set)
  {
    Mutable = CFCharacterSetCreateMutable(0);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
    CFCharacterSetUnion(Mutable, Predefined);
    CFCharacterSetAddCharactersInString(Mutable, @"_");
    CFCharacterSetInvert(Mutable);
    CAMLWriterIdentifierNeedsQuoting(__CFString const*)::quoted_set = CFCharacterSetCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, CAMLWriterIdentifierNeedsQuoting(__CFString const*)::quoted_set, v5, 0, 0) != 0;
}

void path_callback(void *a1, const CGPathElement *a2)
{
  type = a2->type;
  if (a2->type <= kCGPathElementAddLineToPoint)
  {
    if (type)
    {
      if (type != kCGPathElementAddLineToPoint)
      {
        return;
      }

      v5 = 1;
      v7 = 108;
    }

    else
    {
      v5 = 1;
      v7 = 109;
    }

    v6 = 2;
  }

  else
  {
    switch(type)
    {
      case kCGPathElementAddQuadCurveToPoint:
        v5 = 1;
        v7 = 113;
        v6 = 4;
        break;
      case kCGPathElementAddCurveToPoint:
        v5 = 1;
        v7 = 99;
        v6 = 6;
        break;
      case kCGPathElementCloseSubpath:
        v5 = 0;
        v6 = 0;
        v7 = 104;
        break;
      default:
        return;
    }
  }

  if ([a1 length])
  {
    [a1 appendString:@" "];
  }

  if (v5)
  {
    v8 = CACreateStringWithDoubleArray(a2->points, v6, 1.0e-12);
    if (v8)
    {
      v9 = v8;
      [a1 appendFormat:@"%@ %c", v8, v7];

      CFRelease(v9);
    }
  }

  else
  {
    [a1 appendFormat:@"%c", v7];
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::display_supports_rotation_p(CA::WindowServer::IOMFBDisplay *this, int a2, CA::WindowServer::Surface *a3)
{
  if (a2)
  {
    v3 = *(this + 29510);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

double *CA::WindowServer::IOMFBDisplay::set_presentation_latency(double *this, double a2)
{
  if (vabdd_f64(a2, this[3684]) >= 0.000375)
  {
    v3 = this;
    v4 = (*(*this + 760))(this);
    if (v4 >= a2)
    {
      v4 = a2;
    }

    v3[3684] = v4;
    CAHostTimeWithTime(v4);

    return kdebug_trace();
  }

  return this;
}

CA::WindowServer::Surface *CA::WindowServer::IOMFBDisplay::create_surface(CA::WindowServer::IOSurface *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, const __CFString *a9)
{
  v10 = 1024;
  if ((*(a1 + 905) & 4) == 0)
  {
    if ((MEMORY[0xFFFFFC021] & 8) != 0)
    {
      v10 = 1792;
    }

    else
    {
      v10 = 1024;
    }
  }

  return CA::WindowServer::IOSurface::allocate_iosurface(a1, a2, a3, a4, a5, a6, v10, a7, a8, a9);
}

uint64_t CA::WindowServer::IOMFBDisplay::idle(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = this + 24576;
  pthread_mutex_lock((this + 25848));
  if (*(this + 12 * *(v2 + 315) + 6484))
  {
    CA::IOMobileFramebuffer::swap_wait((this + 25696));
  }

  v3 = *(v2 + 316);
  if (v3)
  {
    v4 = (v3 + 3) & 0x1FFFFFFFCLL;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_183E21240;
    v7 = xmmword_183E20FF0;
    v8 = v2 + 1504;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 36) = 0;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 24) = 0;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *(v8 - 12) = 0;
        *v8 = 0;
      }

      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 48;
      v4 -= 4;
    }

    while (v4);
  }

  CA::WindowServer::Display::idle(this);

  return pthread_mutex_unlock((this + 25848));
}

uint64_t CA::WindowServer::IOMFBDisplay::release_resources(CA::WindowServer::IOMFBDisplay *this)
{
  CA::WindowServer::IOMFBDisplay::release_everything(this);

  return CA::WindowServer::Display::release_resources(this);
}

uint64_t CA::WindowServer::IOMFBDisplay::release_everything(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = (this + 25840);
  (*(*this + 2336))(this);
  *(v2 + 3684) = 0;
  v3 = *(this + 3337);
  if (v3)
  {
    --*(v3 + 8);
    *(this + 3337) = 0;
  }

  pthread_mutex_lock((this + 25848));
  v4 = *v2;
  if (v4)
  {
    v5 = 0;
    v6 = (this + 25928);
    do
    {
      *(v6 - 1) = 0;
      if (*v6)
      {
        CA::WindowServer::Surface::unref(*v6);
        *v6 = 0;
        v4 = *v2;
      }

      ++v5;
      v6 += 6;
    }

    while (v5 < v4);
  }

  v7 = *(this + 3286);
  if (v7)
  {
    do
    {
      *(v7 + 2) = 0;
      CA::WindowServer::IOMFBDisplay::release_buffer(v7);
      v7 = *v7;
    }

    while (v7);
    v8 = *(this + 3286);
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }
  }

  *(this + 3286) = 0;
  if (*(this + 3287))
  {
    CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
  }

  v10 = *(this + 3335);
  if (v10)
  {
    (*(*v10 + 8))(v10);
    *(this + 3335) = 0;
  }

  return pthread_mutex_unlock((this + 25848));
}

void CA::WindowServer::IOMFBDisplay::release_buffer(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CA::Shape::unref(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CA::Shape::unref(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CA::WindowServer::Surface::unref(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CA::WindowServer::Surface::unref(v5);
    a1[5] = 0;
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::set_signal_type(uint64_t result, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(result + 652) != a2)
  {
    v2 = result;
    *(result + 652) = a2;
    v8 = 0u;
    *__p = 0u;
    v4 = 0;
    v6 = 0u;
    memset(v7, 0, sizeof(v7));
    v5 = &v6;
    LODWORD(v8) = 1065353216;
    CA::WindowServer::Display::set_all_modes(result, __p, 0, 0);
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v7);
    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v6);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *(v2 + 27320) = 0;
    pthread_mutex_lock((v2 + 576));
    CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(v2, 582);
    return pthread_mutex_unlock((v2 + 576));
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  v301 = *MEMORY[0x1E69E9840];
  v3 = (this + 25836);
  v4 = atomic_load((*(this + 96) + 4));
  if (v4 || (v5 = atomic_load((*(this + 96) + 5))) != 0)
  {
    v6 = *(this + 6688) | a2;
    *(this + 6688) = 0;
    if (!v6)
    {
      return;
    }
  }

  else
  {
    *(this + 6688) |= a2 & 0x130;
    LOWORD(v6) = a2 & 0xFECF;
    if ((a2 & 0xFFFFFECF) == 0)
    {
      return;
    }
  }

  if ((v6 & 0x200) != 0)
  {
    v10 = *(this + 336) & 0x1C00;
    if (v10 == 1024 || v10 != 4096 && (*(this + 29495) & 1) == 0 && *(this + 27267) == 1)
    {
      *v284 = 0;
      if (!IOMobileFramebufferGetDigitalOutState())
      {
        *(v3 + 3694) = 0;
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v11 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(this + 6);
          *buf = 67109120;
          *&buf[4] = v12;
          _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "Display %u get_hotplug_state - not active", buf, 8u);
        }

        return;
      }

      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v44 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(this + 6);
        *buf = 67109120;
        *&buf[4] = v45;
        _os_log_impl(&dword_183AA6000, v44, OS_LOG_TYPE_DEFAULT, "Display %u get_hotplug_state - active", buf, 8u);
      }
    }
  }

  v7 = *(this + 688);
  *(this + 688) = v7 + 1;
  if (!v7)
  {
    *(this + 85) = mach_continuous_time();
  }

  if ((v6 & 0x46) != 0)
  {
    v8 = IOMobileFramebufferCopyProperty();
    v9 = IOMobileFramebufferCopyProperty();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  memset(v264, 0, 44);
  (*(*this + 1384))(v264, this);
  if ((v6 & 0x42) == 0 || *(v3 + 3659) != 1)
  {
    v22 = 0;
    goto LABEL_28;
  }

  *(v3 + 171) = 0x447A00003BA3D70ALL;
  v3[175] = 0;
  if (v8)
  {
    v13 = CFGetTypeID(v8);
    if (v13 == CFDictionaryGetTypeID())
    {
      Dictionary = CA_CFDictionaryGetDictionary(v8, @"Luminance");
      if (Dictionary)
      {
        v15 = Dictionary;
        Value = CFDictionaryGetValue(Dictionary, @"Min");
        v17 = 0.0;
        v18 = 0.0;
        if (Value)
        {
          v18 = vcvts_n_f32_s64(CA_CFInt64Value(Value), 0x10uLL);
        }

        v19 = CFDictionaryGetValue(v15, @"Max");
        if (v19)
        {
          v17 = vcvts_n_f32_s64(CA_CFInt64Value(v19), 0x10uLL);
        }

        v20 = CFDictionaryGetValue(v15, @"MaxFrameAverage");
        if (v20)
        {
          v21 = vcvts_n_f32_s64(CA_CFInt64Value(v20), 0x10uLL);
        }

        else
        {
          v21 = 0.0;
        }

        *(v3 + 171) = v18;
        *(v3 + 172) = v17;
        *(v3 + 175) = v21;
      }

      v137 = CFDictionaryGetValue(v8, @"DolbyVisionDMVersion");
      if (v137)
      {
        LODWORD(v137) = CA_CFIntValue(v137);
      }

      v3[177] = v137;
      v138 = CFDictionaryGetValue(v8, @"MaxHorizontalImageSize");
      v139 = 0.0;
      v140 = 0.0;
      if (v138)
      {
        v140 = CA_CFIntValue(v138) * 0.3937;
      }

      v141 = CFDictionaryGetValue(v8, @"MaxVerticalImageSize");
      if (v141)
      {
        v139 = CA_CFIntValue(v141) * 0.3937;
      }

      *(this + 3300) = v140;
      *(this + 3301) = v139;
      if (v140 != 0.0 && v139 != 0.0)
      {
        *(v3 + 145) = v140 / v139;
      }

      v142 = CFDictionaryGetValue(v8, @"DolbyVisionSupports2160p60Hz");
      v143 = v142;
      if (v142)
      {
        v144 = CA_CFIntValue(v142);
      }

      else
      {
        v144 = 0;
      }

      if (v144 >= 3 || v143 == 0)
      {
        v146 = 0;
      }

      else
      {
        v146 = v144 + 1;
      }

      v147 = CFDictionaryGetValue(v8, @"SupportsPQEOTF");
      v148 = v147;
      if (v147)
      {
        v144 = CA_CFIntValue(v147);
      }

      if (v144)
      {
        v149 = 2;
      }

      else
      {
        v149 = 1;
      }

      if (!v148)
      {
        v149 = 0;
      }

      v259 = v149;
      v150 = CFDictionaryGetValue(v8, @"SupportsBT2020YCC");
      v151 = v150;
      if (v150)
      {
        v144 = CA_CFIntValue(v150);
      }

      if (v144)
      {
        v152 = 2;
      }

      else
      {
        v152 = 1;
      }

      if (!v151)
      {
        v152 = 0;
      }

      v256 = v152;
      v153 = CFDictionaryGetValue(v8, @"SupportsHDRStaticMetadataType1");
      v154 = v153;
      if (v153)
      {
        v144 = CA_CFIntValue(v153);
      }

      if (v144)
      {
        v155 = 2;
      }

      else
      {
        v155 = 1;
      }

      if (!v154)
      {
        v155 = 0;
      }

      v254 = v155;
      v156 = CFDictionaryGetValue(v8, @"HasHDMILegacyEDID");
      v157 = v156;
      if (v156)
      {
        v144 = CA_CFIntValue(v156);
      }

      if (v157)
      {
        v158 = v144 == 1;
      }

      else
      {
        v158 = 0;
      }

      v159 = v158;
      v160 = CA_CFDictionaryGetDictionary(v8, @"ProductAttributes");
      v263 = v146;
      v253 = v159;
      if (!v160)
      {
        v164 = v8;
        v163 = 0;
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        goto LABEL_346;
      }

      v161 = v160;
      v162 = CFDictionaryGetValue(v160, @"ProductID");
      if (v162)
      {
        v163 = CA_CFIntValue(v162);
      }

      else
      {
        v163 = 0;
      }

      v3[370] = v163;
      v169 = CFDictionaryGetValue(v161, @"LegacyManufacturerID");
      if (v169)
      {
        v170 = CA_CFIntValue(v169);
      }

      else
      {
        v170 = 0;
      }

      v171 = *(this + 3413);
      if (v171)
      {
        free(v171);
        *(this + 3413) = 0;
      }

      v251 = v170;
      if (v170 == 1552)
      {
        if (v163 - 44577 <= 0xE && ((1 << (v163 - 33)) & 0x7007) != 0)
        {
          v172 = "Pro Display XDR";
LABEL_261:
          *(this + 3413) = strdup(v172);
          v168 = 1;
          goto LABEL_331;
        }

        if (v163 >> 3 == 5575)
        {
          v172 = "Studio Display";
          goto LABEL_261;
        }
      }

      v168 = 0;
LABEL_331:
      String = CA_CFDictionaryGetString(v161, @"ProductName");
      if (String && !*(this + 3413))
      {
        v211 = String;
        v212 = v8;
        v213 = CFGetTypeID(String);
        if (v213 == CFStringGetTypeID())
        {
          v282 = 0u;
          v283 = 0u;
          v280 = 0u;
          v281 = 0u;
          v278 = 0u;
          v279 = 0u;
          v276 = 0u;
          v277 = 0u;
          v274 = 0u;
          v275 = 0u;
          v272 = 0u;
          v273 = 0u;
          v271 = 0u;
          *buf = 0u;
          memset(v270, 0, sizeof(v270));
          if (CFStringGetCString(v211, buf, 256, 0x8000100u))
          {
            *(this + 3413) = strdup(buf);
            v168 = 1;
          }
        }

        v8 = v212;
      }

      v214 = CFDictionaryGetValue(v161, @"WeekOfManufacture");
      if (v214)
      {
        v166 = CA_CFIntValue(v214);
      }

      else
      {
        v166 = 0;
      }

      v164 = v8;
      v215 = CFDictionaryGetValue(v161, @"YearOfManufacture");
      if (v215)
      {
        v167 = CA_CFIntValue(v215);
      }

      else
      {
        v167 = 0;
      }

      v160 = CFDictionaryGetValue(v161, @"SerialNumber");
      if (v160)
      {
        LODWORD(v160) = CA_CFIntValue(v160);
      }

      v165 = v251;
LABEL_346:
      *&v216 = __PAIR64__(v259, v263);
      *(&v216 + 1) = __PAIR64__(v254, v256);
      *&v217 = __PAIR64__(v165, v163);
      *(&v217 + 1) = __PAIR64__(v167, v166);
      *(v3 + 47) = v216;
      v3[192] = 0;
      *(v3 + 772) = v253;
      *(v3 + 194) = v217;
      v3[198] = v160;
      v8 = v164;
      v22 = v168;
      if (v9)
      {
        goto LABEL_347;
      }

      goto LABEL_370;
    }
  }

  v22 = 0;
  if (v9)
  {
LABEL_347:
    v218 = CFGetTypeID(v9);
    if (v218 == CFDictionaryGetTypeID())
    {
      v219 = CA_CFDictionaryGetString(v9, @"Downstream");
      if (v219)
      {
        v220 = v219;
        if (CFEqual(v219, @"DP"))
        {
          v221 = 1;
        }

        else if (CFEqual(v220, @"DVI"))
        {
          v221 = 2;
        }

        else if (CFEqual(v220, @"HDMI"))
        {
          v221 = 3;
        }

        else if (CFEqual(v220, @"MIPI"))
        {
          v221 = 4;
        }

        else if (CFEqual(v220, @"VGA"))
        {
          v221 = 5;
        }

        else
        {
          v221 = 0;
        }

        v3[209] = v221;
      }
    }
  }

LABEL_370:
  v241 = IOMobileFramebufferCopyProperty();
  v242 = *(this + 3418);
  if (v242)
  {
    CFRelease(v242);
  }

  *(this + 3418) = v241;
  if (v241)
  {
    v243 = CFDictionaryGetValue(v241, @"IncludeAllLayers");
    if (v243)
    {
      LOBYTE(v243) = CA_CFBoolValue(v243);
    }

    *(v3 + 3661) = v243;
    *(v3 + 3662) = CA_CFDictionaryGetBool(*(this + 3418), @"NotifyOnDisallowedCloningLayers");
    *(v3 + 3664) = CA_CFDictionaryGetBool(*(this + 3418), @"AllowRemoteControlLayers");
    *(v3 + 3665) = CA_CFDictionaryGetBool(*(this + 3418), @"OverrideCanvas");
    v3[808] = CA_CFDictionaryGetInt(*(this + 3418), @"MirroringMode");
    v3[809] = CA_CFDictionaryGetInt(*(this + 3418), @"HDRToneMappingMode");
    *(v3 + 3690) = CA_CFDictionaryGetBool(*(this + 3418), @"IsAOCPProtected");
    if (*(v3 + 3665) == 1)
    {
      v3[806] = CA_CFDictionaryGetInt(*(this + 3418), @"OverrideCanvasWidth");
      v3[807] = CA_CFDictionaryGetInt(*(this + 3418), @"OverrideCanvasHeight");
    }
  }

LABEL_28:
  if ((v6 & 0x40) != 0)
  {
    os_unfair_lock_lock(this + 6817);
    if (*(this + 3409))
    {
      free(*(this + 3410));
      *(this + 3410) = *(this + 3409);
      *(this + 3409) = 0;
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v23 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(this + 6);
        *buf = 67109120;
        *&buf[4] = v24;
        _os_log_impl(&dword_183AA6000, v23, OS_LOG_TYPE_DEFAULT, "Display %u uuid cleared", buf, 8u);
      }
    }

    v25 = IOMobileFramebufferCopyProperty();
    v26 = v25;
    if (v25)
    {
      v27 = CFGetTypeID(v25);
      if (v27 == CFStringGetTypeID())
      {
        v282 = 0u;
        v283 = 0u;
        v280 = 0u;
        v281 = 0u;
        v278 = 0u;
        v279 = 0u;
        v276 = 0u;
        v277 = 0u;
        v274 = 0u;
        v275 = 0u;
        v272 = 0u;
        v273 = 0u;
        v271 = 0u;
        *buf = 0u;
        memset(v270, 0, sizeof(v270));
        if (CFStringGetCString(v26, buf, 256, 0x8000100u))
        {
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v28 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(this + 6);
            *v284 = 67109120;
            *&v284[4] = v29;
            _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_DEFAULT, "Display %u uuid set ", v284, 8u);
          }

          *(this + 3409) = strdup(buf);
          v22 = 1;
        }
      }
    }

    v30 = *(this + 3411);
    if (v30)
    {
      free(v30);
      *(this + 3411) = 0;
    }

    v31 = *(this + 3412);
    if (v31)
    {
      CFRelease(v31);
      *(this + 3412) = 0;
    }

    v32 = IOMobileFramebufferCopyProperty();
    if (v32)
    {
      v33 = v32;
      v34 = CFGetTypeID(v32);
      if (v34 == CFStringGetTypeID())
      {
        v282 = 0u;
        v283 = 0u;
        v280 = 0u;
        v281 = 0u;
        v278 = 0u;
        v279 = 0u;
        v276 = 0u;
        v277 = 0u;
        v274 = 0u;
        v275 = 0u;
        v272 = 0u;
        v273 = 0u;
        v271 = 0u;
        *buf = 0u;
        memset(v270, 0, sizeof(v270));
        if (CFStringGetCString(v33, buf, 256, 0x8000100u))
        {
          *(this + 3411) = strdup(buf);
          v22 = 1;
        }

        *(this + 3412) = CFUUIDCreateFromString(0, v33);
      }

      CFRelease(v33);
    }

    os_unfair_lock_unlock(this + 6817);
    if (v26)
    {
      v35 = CFGetTypeID(v26);
      if (v35 == CFStringGetTypeID())
      {
        if (*(this + 3409))
        {
          if (*(this + 3410))
          {
            *buf = 0u;
            memset(v270, 0, 28);
            (*(*this + 1384))(buf, this);
            if (strcmp(*(this + 3409), *(this + 3410)))
            {
              if (*(&v270[0] + 1) == *(&v264[1] + 1) && (*(v3 + 3677) & 1) == 0)
              {
                CA::WindowServer::Display::set_user_preferences(this, *(this + 226) & 1, *(this + 336) >> 13, (*(this + 226) >> 1) & 1, (*(this + 226) >> 2) & 1, 1);
              }
            }
          }
        }

        v36 = CFPreferencesCopyAppValue(@"CADisplayPreferences", *MEMORY[0x1E695E8A8]);
        v37 = v36;
        if (v36 && (v38 = CFGetTypeID(v36), v38 == CFDictionaryGetTypeID()) && (v39 = CA_CFDictionaryGetDictionary(v37, v26)) != 0)
        {
          v40 = v39;
          Bool = CA_CFDictionaryGetBool(v39, @"matchContent");
          Int = CA_CFDictionaryGetInt(v40, @"preferredHdrType");
          if (CADeviceSupportsExternalHighRefreshRateAndVRR::once != -1)
          {
            dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
          }

          BoolWithDefaultValue = CA_CFDictionaryGetBoolWithDefaultValue(v40, CADeviceSupportsExternalHighRefreshRateAndVRR::b);
          v41 = CA_CFDictionaryGetBool(v40, @"prefersVRR");
          *(this + 226) = *(this + 226) & 0xFFFFFFFE | Bool;
          *(this + 336) = *(this + 336) & 0x1FFF | (Int << 13);
          if (CADeviceSupportsExternalHighRefreshRateAndVRR::once != -1)
          {
            dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
          }

          if (CADeviceSupportsExternalHighRefreshRateAndVRR::b & BoolWithDefaultValue)
          {
            v42 = 2;
          }

          else
          {
            v42 = 0;
          }

          *(this + 226) = *(this + 226) & 0xFFFFFFFD | v42;
          if (CADeviceSupportsExternalHighRefreshRateAndVRR::b & v41)
          {
            v43 = 4;
          }

          else
          {
            v43 = 0;
          }

          *(this + 226) = *(this + 226) & 0xFFFFFFFB | v43;
        }

        else
        {
          *(this + 226) &= ~1u;
          *(this + 336) &= 0x1FFFu;
          if (CADeviceSupportsExternalHighRefreshRateAndVRR::once != -1)
          {
            dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
          }

          if (CADeviceSupportsExternalHighRefreshRateAndVRR::b)
          {
            v46 = 2;
          }

          else
          {
            v46 = 0;
          }

          *(this + 226) = *(this + 226) & 0xFFFFFFF9 | v46;
          if (!v37)
          {
            goto LABEL_93;
          }
        }

        CFRelease(v37);
      }

LABEL_93:
      CFRelease(v26);
    }
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_143;
  }

  v272 = 0u;
  v273 = 0u;
  *buf = 0u;
  *&v270[0] = 0;
  v270[1] = 0u;
  v271 = 0u;
  *(&v270[0] + 1) = &v270[1];
  LODWORD(v273) = 1065353216;
  v47 = *(this + 82);
  v267 = 0;
  current_iomfb_mode = v47;
  v48 = *(this + 652);
  if (v48 == 2)
  {
    if (*(v3 + 3659) == 1)
    {
      *v284 = 0;
      theArray = 0;
      IOMobileFramebufferGetSupportedDigitalOutModes();
      X::CFRef<CGColorSpace *>::operator=(this + 3417, theArray);
      CA::WindowServer::IOMFBDisplay::update_digital_modes(this, buf, &v267, *v284, theArray);
    }

LABEL_105:
    if (v47)
    {
      goto LABEL_106;
    }

    goto LABEL_115;
  }

  if (v48 != 1)
  {
    goto LABEL_105;
  }

  *v284 = 0;
  theArray = 0;
  IOMobileFramebufferGetSupportedDigitalOutModes();
  X::CFRef<CGColorSpace *>::operator=(this + 3417, theArray);
  if (!*v284 || !theArray || CFArrayGetCount(*v284) <= 1 && CFArrayGetCount(theArray) < 2)
  {
    v265 = -1;
    CA::WindowServer::Display::ModeSet::add_mode(buf, &v265);
    if (v47)
    {
      goto LABEL_106;
    }

LABEL_115:
    v57 = v267;
    goto LABEL_116;
  }

  CA::WindowServer::IOMFBDisplay::update_digital_modes(this, buf, &v267, *v284, theArray);
  current_iomfb_mode = CA::WindowServer::IOMFBDisplay::fetch_current_iomfb_mode(this);
  if (!current_iomfb_mode)
  {
    goto LABEL_115;
  }

LABEL_106:
  v49 = *buf;
  if (*buf != *&buf[8])
  {
    v50 = vdupq_n_s64(0x3F59000000000000uLL);
    v51 = vdupq_n_s64(0x40847AE147AE147BuLL);
    v52 = vdupq_n_s64(0x3FFFFFE0000000uLL);
    while (*v49 != current_iomfb_mode)
    {
      v53.i64[0] = *v49;
      v53.i64[1] = current_iomfb_mode;
      v54 = vshrn_n_s64(v53, 0x1DuLL);
      v55.i64[0] = v54.i32[0] & 0x1FFFFFF;
      v55.i64[1] = v54.i32[1] & 0x1FFFFFF;
      v56 = vbslq_s8(v52, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v55), v50)), v51)), 0x1DuLL), v53);
      if (vmovn_s64(vceqq_s64(v56, vdupq_laneq_s64(v56, 1))).u8[0])
      {
        break;
      }

      if (++v49 == *&buf[8])
      {
        goto LABEL_115;
      }
    }
  }

  v57 = v267;
  if (v49 != *&buf[8])
  {
    v58 = current_iomfb_mode;
    goto LABEL_117;
  }

LABEL_116:
  current_iomfb_mode = v57;
  v58 = v57;
LABEL_117:
  v59 = CA::WindowServer::Display::set_all_modes(this, buf, v58, v57);
  v261 = (*(*this + 664))(this);
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v60 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v249 = current_iomfb_mode & 0x3FFF;
    v250 = *(this + 6);
    v252 = (current_iomfb_mode >> 14) & 0x3FFF;
    v258 = v3;
    *v284 = &current_iomfb_mode;
    v248 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, current_iomfb_mode) + 7);
    *v284 = &current_iomfb_mode;
    v61 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, current_iomfb_mode) + 6);
    *v284 = &v267;
    v62 = v6;
    v6 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, v267) + 7);
    *v284 = &v267;
    v63 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, v267) + 6);
    *v284 = 67111168;
    *&v284[4] = v250;
    v285 = 1024;
    v286 = v249;
    v287 = 1024;
    v288 = v252;
    v289 = 1024;
    v290 = v248;
    v291 = 1024;
    v292 = v61;
    v293 = 1024;
    v294 = v57 & 0x3FFF;
    v3 = v258;
    v295 = 1024;
    v296 = (v57 >> 14) & 0x3FFF;
    v297 = 1024;
    v298 = v6;
    LOWORD(v6) = v62;
    v299 = 1024;
    v300 = v63;
    _os_log_impl(&dword_183AA6000, v60, OS_LOG_TYPE_DEFAULT, "Display %u current mode (%u x %u) [%u %u], preferred mode (%u x %u) [%u %u]", v284, 0x38u);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v271);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*&v270[1]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v22 |= v261 | v59;
  v64 = *(this + 3415);
  if ((v3[914] & 1) == 0)
  {
    if ((v65 = *(this + 82), v64 != v65) && (v66.i64[0] = *(this + 3415), v66.i64[1] = *(this + 82), v67 = vshrn_n_s64(v66, 0x1DuLL), v68.i64[0] = v67.i32[0] & 0x1FFFFFF, v68.i64[1] = v67.i32[1] & 0x1FFFFFF, v69 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v68), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v66), (vmovn_s64(vceqq_s64(v69, vdupq_laneq_s64(v69, 1))).u32[0] & 1) == 0) || *(v3 + 3740) == 1)
    {
      *(this + 3415) = v65;
      LOWORD(v6) = v6 | 4;
      v64 = v65;
    }
  }

  if (v64)
  {
    os_unfair_lock_lock(this + 102);
    CA::WindowServer::Display::ModeSet::ModeSet(buf, (this + 416));
    os_unfair_lock_unlock(this + 102);
    v70 = *buf;
    if (*buf == *&buf[8])
    {
      v78 = v22;
      v79 = v9;
      v80 = 1;
    }

    else
    {
      v71 = vdupq_n_s64(0x3F59000000000000uLL);
      v72 = vdupq_n_s64(0x40847AE147AE147BuLL);
      v73 = vdupq_n_s64(0x3FFFFFE0000000uLL);
      while (*v70 != *(this + 3415))
      {
        v74.i64[0] = *v70;
        v74.i64[1] = *(this + 3415);
        v75 = vshrn_n_s64(v74, 0x1DuLL);
        v76.i64[0] = v75.i32[0] & 0x1FFFFFF;
        v76.i64[1] = v75.i32[1] & 0x1FFFFFF;
        v77 = vbslq_s8(v73, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v76), v71)), v72)), 0x1DuLL), v74);
        if (vmovn_s64(vceqq_s64(v77, vdupq_laneq_s64(v77, 1))).u8[0])
        {
          break;
        }

        if (++v70 == *&buf[8])
        {
          v78 = v22;
          v79 = v9;
          v70 = *&buf[8];
          goto LABEL_136;
        }
      }

      v78 = v22;
      v79 = v9;
LABEL_136:
      v80 = v70 == *&buf[8];
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v271);
    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*&v270[1]);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v80)
    {
      *(this + 3415) = 0;
      LOWORD(v6) = v6 | 4;
    }

    v9 = v79;
    v22 = v78;
  }

LABEL_143:
  if (v6)
  {
    IOMobileFramebufferSetDebugFlags();
  }

  if ((*(this + 336) & 0x1C00) == 0x400)
  {
    v81 = atomic_load((*(this + 96) + 5));
    if (v81 != 1)
    {
      v3[228] |= v6 & 4;
      LOWORD(v6) = v6 & 0xFFFB;
    }
  }

  if ((v6 & 4) != 0)
  {
    (*(*this + 2336))(this);
    if (*(v3 + 3659))
    {
      if (*(this + 652) != 2)
      {
        goto LABEL_171;
      }

      os_unfair_lock_lock(this + 102);
      CA::WindowServer::Display::ModeSet::ModeSet(buf, (this + 416));
      os_unfair_lock_unlock(this + 102);
      v82 = (this + 27320);
      v83 = *buf;
      v84 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v85 = vdupq_n_s64(0x3F59000000000000uLL);
        v86 = vdupq_n_s64(0x40847AE147AE147BuLL);
        v87 = vdupq_n_s64(0x3FFFFFE0000000uLL);
        while (*v83 != *v82)
        {
          v88.i64[0] = *v83;
          v88.i64[1] = *v82;
          v89 = vshrn_n_s64(v88, 0x1DuLL);
          v90.i64[0] = v89.i32[0] & 0x1FFFFFF;
          v90.i64[1] = v89.i32[1] & 0x1FFFFFF;
          v91 = vbslq_s8(v87, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v90), v85)), v86)), 0x1DuLL), v88);
          if (vmovn_s64(vceqq_s64(v91, vdupq_laneq_s64(v91, 1))).u8[0])
          {
            break;
          }

          if (++v83 == *&buf[8])
          {
            v83 = *&buf[8];
            break;
          }
        }
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v271);
      std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*&v270[1]);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (v83 == v84)
      {
LABEL_171:
        v272 = 0u;
        v273 = 0u;
        *buf = 0u;
        *&v270[0] = 0;
        v270[1] = 0u;
        v271 = 0u;
        *(&v270[0] + 1) = &v270[1];
        LODWORD(v273) = 1065353216;
        CA::WindowServer::Display::set_all_modes(this, buf, 0, 0);
        std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v271);
        std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*&v270[1]);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        *(this + 3415) = 0;
        *(v3 + 3656) = 0;
        atomic_fetch_and(this + 160, 0xFFFFFFFE);
        v3[227] = 0;
        IOMobileFramebufferSetDisplayDevice();
        *(this + 226) &= ~0x1000u;
        (*(*this + 984))(this);
        (*(*this + 960))(this);
      }

      else
      {
        IOMobileFramebufferSetDisplayDevice();
        *buf = this + 27320;
        v92 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *(this + 3415)) + 6);
        *buf = this + 27320;
        v262 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *(this + 3415)) + 7);
        v247 = v8;
        if ((*(this + 3415) & 0x8000000000000000) != 0)
        {
          v93 = (*(*this + 2072))(this);
        }

        else
        {
          v93 = 0;
        }

        *&buf[8] = 0;
        *&v270[0] = 0;
        *buf = v93;
        IOMobileFramebufferSetParameter();
        pthread_mutex_lock((this + 25848));
        v117 = this + 48 * *v3;
        v118 = v117 + 25912;
        *&buf[8] = 0;
        v270[0] = 0uLL;
        v119 = *(v117 + 3240);
        v120 = v9;
        v121 = v6;
        if (v119)
        {
          v119 = *(v119 + 32);
        }

        v122 = 0;
        v123 = *(v118 + 2);
        *buf = v119;
        *&v270[0] = v123;
        BYTE8(v270[0]) = *(v3 + 853) == 2;
        while (1)
        {
          v124 = *&buf[v122];
          if (v124)
          {
            if (((*(*this + 2424))(this, *(v124 + 56), *(v124 + 60), *(this + 6830) & 0x3FFF, (*(this + 6830) >> 14) & 0x3FFF, buf[v122 + 8]) & 1) == 0)
            {
              break;
            }
          }

          v122 += 16;
          if (v122 == 32)
          {
            goto LABEL_187;
          }
        }

        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v125 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_INFO))
        {
          v126 = *(v124 + 56);
          v127 = *(v124 + 60);
          v128 = *v82 & 0x3FFF;
          v129 = (*v82 >> 14) & 0x3FFF;
          *v284 = 67109888;
          *&v284[4] = v126;
          v285 = 1024;
          v286 = v127;
          v287 = 1024;
          v288 = v128;
          v289 = 1024;
          v290 = v129;
          _os_log_impl(&dword_183AA6000, v125, OS_LOG_TYPE_INFO, "Current %dx%d surface exceeds scaling limits for new %dx%d display mode; clearing before mode change", v284, 0x1Au);
        }

        CA::WindowServer::IOMFBDisplay::set_all_layers_to_null(this, 1);
LABEL_187:
        pthread_mutex_unlock((this + 25848));
        v130 = IOMobileFramebufferSetDigitalOutMode();
        CA::WindowServer::IOMFBDisplay::update_display_bandwidth_limits(this, (this + 27320));
        v3[228] &= ~4u;
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        LOWORD(v6) = v121;
        v131 = x_log_get_windowserver(void)::log;
        v9 = v120;
        if (v130)
        {
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
          {
            v239 = *v82 & 0x3FFF;
            v240 = (*v82 >> 14) & 0x3FFF;
            *buf = 67110144;
            *&buf[4] = v92;
            *&buf[8] = 1024;
            *&buf[10] = v262;
            *&buf[14] = 1024;
            LODWORD(v270[0]) = v239;
            WORD2(v270[0]) = 1024;
            *(v270 + 6) = v240;
            WORD5(v270[0]) = 1024;
            HIDWORD(v270[0]) = v130;
            _os_log_error_impl(&dword_183AA6000, v131, OS_LOG_TYPE_ERROR, "set digital mode failed [%d %d] %dx%d: 0x%x", buf, 0x20u);
          }

          std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(this + 3338);
          v272 = 0u;
          v273 = 0u;
          *buf = 0u;
          *&v270[0] = 0;
          v270[1] = 0u;
          v271 = 0u;
          *(&v270[0] + 1) = &v270[1];
          LODWORD(v273) = 1065353216;
          CA::WindowServer::Display::set_all_modes(this, buf, 0, 0);
          std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v271);
          std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*&v270[1]);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          *v82 = 0;
          *(this + 3416) = 0;
          v8 = v247;
        }

        else
        {
          v8 = v247;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v132 = *v82 & 0x3FFF;
            v133 = (*v82 >> 14) & 0x3FFF;
            v134 = (*v82 >> 45) & 0x1FF;
            v135 = ((*v82 >> 55) & 0x1F) - 1;
            if (v135 > 0x1B)
            {
              v136 = "";
            }

            else
            {
              v136 = off_1E6DED668[v135];
            }

            *buf = 67110402;
            *&buf[4] = v92;
            *&buf[8] = 1024;
            *&buf[10] = v262;
            *&buf[14] = 1024;
            LODWORD(v270[0]) = v132;
            WORD2(v270[0]) = 1024;
            *(v270 + 6) = v133;
            WORD5(v270[0]) = 1024;
            HIDWORD(v270[0]) = v134;
            LOWORD(v270[1]) = 2080;
            *(&v270[1] + 2) = v136;
            _os_log_impl(&dword_183AA6000, v131, OS_LOG_TYPE_DEFAULT, "set digital mode [%d %d] %dx%d %dhz %s\n", buf, 0x2Au);
          }

          *(this + 3416) = *(this + 3415);
          CA::WindowServer::IOMFBDisplay::post_hotplug_log(this);
        }

        *(v3 + 3740) = 0;
        CA::WindowServer::IOMFBDisplay::update_timing_info(this);
        v177 = *(this + 3409);
        v178 = 0;
        if (v177)
        {
          v179 = *(this + 3415);
          if (v179)
          {
            v180 = objc_autoreleasePoolPush();
            v181 = +[CADisplayPersistedData sharedInstance];
            -[CADisplayPersistedData latencyForUUID:andMode:](v181, "latencyForUUID:andMode:", [MEMORY[0x1E696AEC0] stringWithUTF8String:v177], v179);
            v178 = v182;
            objc_autoreleasePoolPop(v180);
          }
        }

        *(this + 3419) = v178;
        *buf = this + 656;
        if (*(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *(this + 82)) + 44) == 1)
        {
          atomic_fetch_or(this + 160, 1u);
        }

        else
        {
          atomic_fetch_and(this + 160, 0xFFFFFFFE);
        }

        *buf = this + 656;
        v3[227] = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *(this + 82)) + 9);
        if (CA::WindowServer::Display::Mode::is_hdr((this + 656)) || (*(this + 82) & 0xF80000000000000) == 0x680000000000000 && *(v3 + 3697) == 1)
        {
          atomic_fetch_or(this + 160, 8u);
        }

        else
        {
          atomic_fetch_and(this + 160, 0xFFFFFFF7);
        }

        *(v3 + 1336) = 0;
        (*(*this + 1072))(this);
      }

      (*(*this + 2392))(this);
      CA::WindowServer::IOMFBDisplay::update_brightness_capabilities(this, 0);
LABEL_279:
      *(v3 + 3745) = 0;
      v183 = IOMobileFramebufferCopyProperty();
      if (v183)
      {
        v184 = v183;
        *(v3 + 3745) = CA_CFBoolValue(v183);
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v185 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v186 = *(this + 6);
          v187 = *(v3 + 3745);
          *buf = 67109376;
          *&buf[4] = v186;
          *&buf[8] = 1024;
          *&buf[10] = v187;
          _os_log_impl(&dword_183AA6000, v185, OS_LOG_TYPE_DEFAULT, "Display %d EDR scaling applied in GP: %d", buf, 0xEu);
        }

        CFRelease(v184);
      }

      *(v3 + 744) = 0;
      v3[187] = 0;
      {
        CA::WindowServer::IOMFBDisplay::update_chromaticity(__CFDictionary const*)::srgb = xmmword_183E217E0;
        *algn_1EA84FC70 = xmmword_183E217F0;
        byte_1EA84FC80 = 1;
      }

      {
        CA::WindowServer::IOMFBDisplay::update_chromaticity(__CFDictionary const*)::p3 = xmmword_183E21800;
        unk_1EA84FCA0 = xmmword_183E217F0;
        byte_1EA84FCB0 = 1;
      }

      {
        CA::WindowServer::IOMFBDisplay::update_chromaticity(__CFDictionary const*)::bt2020 = xmmword_183E21810;
        *algn_1EA84FC30 = xmmword_183E21820;
        byte_1EA84FC40 = 1;
      }

      if ((*(this + 336) & 0xC00) != 0)
      {
        if (v8 && (*(v3 + 3659) & 1) != 0 && *(this + 82))
        {
          v188 = v9;
          v189 = *(this + 3415);
          v190 = (v189 >> 55) & 0x1F;
          v191 = CA::WindowServer::Display::Mode::hdr_type(v189) == 5 || CA::WindowServer::Display::Mode::hdr_type(*(this + 3415)) == 4;
          if (v190 <= 0x19 && ((1 << v190) & 0x300E000) != 0)
          {
            v9 = v188;
            if (v191)
            {
              v194 = @"DolbyVisionWhitePoint";
              v195 = @"DolbyVisionChromaticity";
LABEL_358:
              v223 = CA_CFDictionaryGetDictionary(v8, v195);
              v224 = CA_CFDictionaryGetDictionary(v8, v194);
              if (v223)
              {
                v225 = v224;
                if (v224)
                {
                  v226 = CA_CFDictionaryGetDictionary(v223, @"Blue");
                  v227 = CA_CFDictionaryGetDictionary(v223, @"Green");
                  v228 = CA_CFDictionaryGetDictionary(v223, @"Red");
                  if (v226)
                  {
                    if (v227)
                    {
                      v229 = v228;
                      if (v228)
                      {
                        v230 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v226, @"X"), 0x10uLL);
                        *(v3 + 182) = v230;
                        v231 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v226, @"Y"), 0x10uLL);
                        *(v3 + 183) = v231;
                        v232 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v227, @"X"), 0x10uLL);
                        *(v3 + 180) = v232;
                        v233 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v227, @"Y"), 0x10uLL);
                        *(v3 + 181) = v233;
                        v234 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v229, @"X"), 0x10uLL);
                        *(v3 + 178) = v234;
                        v235 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v229, @"Y"), 0x10uLL);
                        *(v3 + 179) = v235;
                        v9 = v188;
                        v236 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v225, @"X"), 0x10uLL);
                        *(v3 + 184) = v236;
                        v237 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v225, @"Y"), 0x10uLL);
                        *(v3 + 185) = v237;
                        v238 = vcvtd_n_f64_s32(CA_CFDictionaryGetInt(v225, @"Gamma"), 0x10uLL);
                        *(v3 + 187) = v238;
                        *(v3 + 744) = 1;
                      }
                    }
                  }
                }
              }

              goto LABEL_304;
            }

LABEL_357:
            v194 = @"DefaultWhitePoint";
            v195 = @"Chromaticity";
            goto LABEL_358;
          }

          if (v191)
          {
            v194 = @"DolbyVisionWhitePoint";
            v195 = @"DolbyVisionChromaticity";
            v9 = v188;
            goto LABEL_358;
          }

          v207 = CA::WindowServer::Display::Mode::hdr_type(*(this + 3415));
          v208 = (this + 26548);
          v9 = v188;
          if (v207 == 3)
          {
            v209 = *algn_1EA84FC30;
            *v208 = CA::WindowServer::IOMFBDisplay::update_chromaticity(__CFDictionary const*)::bt2020;
            *(this + 26564) = v209;
            *(this + 26580) = byte_1EA84FC40;
          }

          else
          {
            v222 = *algn_1EA84FC70;
            *v208 = CA::WindowServer::IOMFBDisplay::update_chromaticity(__CFDictionary const*)::srgb;
            *(this + 26564) = v222;
            *(this + 26580) = byte_1EA84FC80;
            buf[0] = 0;
            if (CA_CFDictionaryGetBoolIfExists(v8, @"DefaultColorSpaceIsSRGB", buf) && (buf[0] & 1) == 0)
            {
              goto LABEL_357;
            }
          }
        }
      }

      else
      {
        if ((*(this + 160) & 8) != 0 && (memset(buf, 0, sizeof(buf)), LODWORD(v270[0]) = 0, (MGIsDeviceOneOfType() & 1) == 0))
        {
          v192 = this + 26548;
          v193 = &CA::WindowServer::IOMFBDisplay::update_chromaticity(__CFDictionary const*)::p3;
        }

        else
        {
          v192 = this + 26548;
          v193 = &CA::WindowServer::IOMFBDisplay::update_chromaticity(__CFDictionary const*)::srgb;
        }

        v196 = v193[1];
        *v192 = *v193;
        *(v192 + 1) = v196;
        v192[32] = *(v193 + 32);
        v3[187] = 1074580685;
      }

LABEL_304:
      CA::WindowServer::IOMFBDisplay::set_needs_icc_reload(this);
      v22 = 1;
      *(v3 + 3672) = 1;
      v3[150] = 2143289344;
      goto LABEL_305;
    }

    IOMobileFramebufferSetDisplayDevice();
    v102 = *(this + 3415);
    if (v102 != -1)
    {
      if (*(v3 + 3694) != 1)
      {
LABEL_168:
        v112 = *(this + 3415);
        if (*(this + 82) != v112)
        {
          v113.i64[0] = *(this + 82);
          v113.i64[1] = *(this + 3415);
          v114 = vshrn_n_s64(v113, 0x1DuLL);
          v115.i64[0] = v114.i32[0] & 0x1FFFFFF;
          v115.i64[1] = v114.i32[1] & 0x1FFFFFF;
          v116 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v115), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v113);
          if ((vmovn_s64(vceqq_s64(v116, vdupq_laneq_s64(v116, 1))).u8[0] & 1) == 0)
          {
            *(this + 82) = v112;
            CA::WindowServer::Display::post_display_changed(this);
          }
        }

        goto LABEL_279;
      }

      v103 = (this + 27320);
      *buf = this + 27320;
      v104 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, v102) + 6);
      *buf = this + 27320;
      v105 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *(this + 3415)) + 7);
      v106 = IOMobileFramebufferSetDigitalOutMode();
      CA::WindowServer::IOMFBDisplay::update_display_bandwidth_limits(this, (this + 27320));
      CA::WindowServer::IOMFBDisplay::update_timing_info(this);
      if (v106)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v244 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          v245 = *v103 & 0x3FFF;
          v246 = (*v103 >> 14) & 0x3FFF;
          *buf = 67110144;
          *&buf[4] = v104;
          *&buf[8] = 1024;
          *&buf[10] = v105;
          *&buf[14] = 1024;
          LODWORD(v270[0]) = v245;
          WORD2(v270[0]) = 1024;
          *(v270 + 6) = v246;
          WORD5(v270[0]) = 1024;
          HIDWORD(v270[0]) = v106;
          _os_log_error_impl(&dword_183AA6000, v244, OS_LOG_TYPE_ERROR, "CoreAnimation: failed to set internal panel mode! [%d %d] %dx%d: 0x%x", buf, 0x20u);
        }

        abort();
      }

      v107 = *(this + 3415);
      if (v107 != *(this + 83))
      {
        v108.i64[0] = *(this + 3415);
        v108.i64[1] = *(this + 83);
        v109 = vshrn_n_s64(v108, 0x1DuLL);
        v110.i64[0] = v109.i32[0] & 0x1FFFFFF;
        v110.i64[1] = v109.i32[1] & 0x1FFFFFF;
        v96 = vdupq_n_s64(0x3FFFFFE0000000uLL);
        v111 = vbslq_s8(v96, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v110), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v108);
        v95 = vdupq_laneq_s64(v111, 1);
        v94 = vceqq_s64(v111, v95);
        *&v94.f64[0] = vmovn_s64(v94);
        if ((LOBYTE(v94.f64[0]) & 1) == 0)
        {
          *v284 = v107 & 0x3FFF;
          *&v284[4] = (v107 >> 14) & 0x3FFF;
          __asm { FMOV            V0.2D, #1.0 }

          *buf = _Q0;
          CA::WindowServer::Display::set_size(this, v284, v284, buf, *&_Q0, *v95.i64, *v96.i64, v97, v98, v99, v100, v101);
          goto LABEL_168;
        }
      }
    }

    CA::WindowServer::IOMFBDisplay::set_physical_and_canvas_sizes(this, v94, *v95.i64, *v96.i64, v97, v98, v99, v100, v101);
    goto LABEL_168;
  }

LABEL_305:
  CA::WindowServer::IOMFBDisplay::update_framebuffer_color_properties(this, v6);
  if ((v6 & 0x86) != 0)
  {
    if (*(this + 652) && (v204 = *(this + 82)) != 0)
    {
      if (*(this + 652) != 2)
      {
LABEL_315:
        CA::WindowServer::IOMFBDisplay::mark_buffers_non_static(this, 0);
        goto LABEL_316;
      }

      if ((*(this + 336) & 0x1C00) == 0x800 && *(v3 + 3665) == 1)
      {
        *v284 = v204 & 0x3FFF;
        *&v284[4] = (v204 >> 14) & 0x3FFF;
        __asm { FMOV            V0.2D, #1.0 }

        *buf = _Q0;
        v206 = this + 29060;
LABEL_314:
        CA::WindowServer::Display::set_size(this, v284, v206, buf, *&_Q0, v197, v198, v199, v200, v201, v202, v203);
        goto LABEL_315;
      }

      *v284 = v204 & 0x3FFF;
      *&v284[4] = (v204 >> 14) & 0x3FFF;
    }

    else
    {
      *v284 = 0;
    }

    __asm { FMOV            V0.2D, #1.0 }

    *buf = _Q0;
    v206 = v284;
    goto LABEL_314;
  }

LABEL_316:
  if (v22)
  {
    CA::WindowServer::Display::post_display_changed(this);
  }

  CA::WindowServer::Display::end_display_changes(this);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::set_physical_and_canvas_sizes(__n128 *this, float64x2_t a2, double a3, double a4, double a5, int32x4_t a6, double a7, double a8, int32x4_t a9)
{
  v10 = this + 1536;
  if ((this[1648].n128_u8[9] & 1) == 0)
  {
    IOMobileFramebufferGetDisplaySize();
    v11 = 0.0;
    v12 = getenv("CA_LCD_WIDTH");
    if (v12)
    {
      v13 = atoi(v12);
    }

    else
    {
      v13 = 0.0;
    }

    v14 = 0.0;
    v10[76].n128_u32[2] = v13;
    v15 = getenv("CA_LCD_HEIGHT");
    if (v15)
    {
      v16 = atoi(v15);
    }

    else
    {
      v16 = 0.0;
    }

    v10[76].n128_u32[3] = v16;
    v17 = 1.0;
    v18 = v11 < 1 || v13 == v11;
    v19 = 1.0;
    if (!v18)
    {
      v19 = v13 / v11;
    }

    this[1613].n128_f64[1] = v19;
    if (v14 >= 1 && v16 != v14)
    {
      v17 = v16 / v14;
    }

    this[1614].n128_f64[0] = v17;
    IOMobileFramebufferGetCanvasSizes();
    this[1613].n128_u64[0] = vmovn_s64(vcvtq_s64_f64(MEMORY[0xFFFFFFFF0]));
    v21 = getenv("CA_CANVAS_WIDTH");
    if (v21)
    {
      v10[77].n128_u32[0] = atoi(v21);
    }

    v22 = getenv("CA_CANVAS_HEIGHT");
    if (v22)
    {
      v10[77].n128_u32[1] = atoi(v22);
    }

    IOMobileFramebufferGetDisplayArea();
    a2 = vcvtq_f64_f32(0);
    this[1650] = a2;
    v10[112].n128_u8[9] = 1;
  }

  return CA::WindowServer::Display::set_size(this, &this[1612].n128_i64[1], &this[1613], &this[1613].n128_f64[1], a2.f64[0], a3, a4, a5, a6, a7, a8, a9);
}

void *std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  v4 = v3.u32[0];
  if (v3.u32[0] > 1uLL)
  {
    v5 = a2;
    if (a2 >= v2)
    {
      v5 = a2 % v2;
    }
  }

  else
  {
    v5 = (v2 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_20:
    operator new();
  }

  v8 = vdupq_n_s64(0x3F59000000000000uLL);
  v9 = vdupq_n_s64(0x40847AE147AE147BuLL);
  v10 = vdupq_n_s64(0x3FFFFFE0000000uLL);
  while (1)
  {
    v11 = v7[1];
    if (v11 == a2)
    {
      break;
    }

    if (v4 > 1)
    {
      if (v11 >= v2)
      {
        v11 %= v2;
      }
    }

    else
    {
      v11 &= v2 - 1;
    }

    if (v11 != v5)
    {
      goto LABEL_20;
    }

LABEL_19:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  if (v7[2] != a2)
  {
    v12.i64[0] = v7[2];
    v12.i64[1] = a2;
    v13 = vshrn_n_s64(v12, 0x1DuLL);
    v14.i64[0] = v13.i32[0] & 0x1FFFFFF;
    v14.i64[1] = v13.i32[1] & 0x1FFFFFF;
    v15 = vbslq_s8(v10, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v14), v8)), v9)), 0x1DuLL), v12);
    if ((vmovn_s64(vceqq_s64(v15, vdupq_laneq_s64(v15, 1))).u8[0] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  return v7;
}

void CA::WindowServer::IOMFBDisplay::update_display_bandwidth_limits(CA::WindowServer::IOMFBDisplay *this, CA::WindowServer::Display::Mode *a2)
{
  v10[7] = *MEMORY[0x1E69E9840];
  *__p = 0u;
  v8 = 0u;
  if (IOMobileFramebufferGetBandwidth())
  {
    v4 = *(this + 3401);
  }

  else
  {
    v5 = __p[0];
    *(this + 27208) = *__p;
    *(this + 27224) = v8;
    v4 = v5;
  }

  if (!v4 || !*(this + 3402) || !*(this + 3403) || *(this + 3404) == 0.0)
  {
    *(this + 27240) = 0;
  }

  if ((*(*this + 2464))(this))
  {
    *&v6.var2 = 0;
    *&v6.var0 = 0;
    os_unfair_lock_lock(this + 102);
    CA::WindowServer::Display::ModeSet::ModeSet(__p, (this + 416));
    os_unfair_lock_unlock(this + 102);
    CA::WindowServer::Display::ModeSet::get_per_mode_info(__p, *a2, &v6);
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v10);
    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v9);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *(this + 27265) = *&v6.var2;
  }
}

const void **CA::WindowServer::IOMFBDisplay::update_timing_info(const void **this)
{
  v1 = this[3339];
  if (v1)
  {
    v2 = this;
    v3 = this[3415];
    v4 = vcnt_s8(v1);
    v4.i16[0] = vaddlv_u8(v4);
    v5 = v4.u32[0];
    if (v4.u32[0] > 1uLL)
    {
      v6 = v3;
      if (v3 >= v1)
      {
        v6 = v3 % v1;
      }
    }

    else
    {
      v6 = (v1 - 1) & v3;
    }

    v7 = *(this[3338] + v6);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        v9 = vdupq_n_s64(0x3F59000000000000uLL);
        v10 = vdupq_n_s64(0x40847AE147AE147BuLL);
        v11 = vdupq_n_s64(0x3FFFFFE0000000uLL);
        do
        {
          v12 = v8[1];
          if (v12 == v3)
          {
            if (v8[2] == v3 || (v13.i64[0] = v8[2], v13.i64[1] = this[3415], v14 = vshrn_n_s64(v13, 0x1DuLL), v15.i64[0] = v14.i32[0] & 0x1FFFFFF, v15.i64[1] = v14.i32[1] & 0x1FFFFFF, v16 = vbslq_s8(v11, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v15), v9)), v10)), 0x1DuLL), v13), (vmovn_s64(vceqq_s64(v16, vdupq_laneq_s64(v16, 1))).u8[0] & 1) != 0))
            {
              if (!this[3417])
              {
                IOMobileFramebufferGetSupportedDigitalOutModes();
                return X::CFRef<CGColorSpace *>::operator=(v2 + 3417, 0);
              }

              return this;
            }
          }

          else
          {
            if (v5 > 1)
            {
              if (v12 >= v1)
              {
                v12 %= v1;
              }
            }

            else
            {
              v12 &= v1 - 1;
            }

            if (v12 != v6)
            {
              return this;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_all_layers_to_null(uint64_t this, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = (this + 25840);
  if ((*(this + 29523) & 1) == 0)
  {
    v4 = this;
    v22 = 0;
    CA::IOMobileFramebuffer::swap_begin((this + 25696), &v22);
    IOMobileFramebufferSwapSetBackgroundColor();
    v5 = 0;
    if ((*(*v4 + 1704))(v4))
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    do
    {
      *buf = 0u;
      v24 = 0u;
      memset(v21, 0, sizeof(v21));
      CA::WindowServer::IOMFBDisplay::swap_set_layer(v4, v5, 0, buf, v21, 0, v22, 0, 0, v20);
      v5 = (v5 + 1);
    }

    while (v6 != v5);
    v7 = IOMobileFramebufferSwapEnd();
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
        v19 = *(v4 + 24);
        *buf = 67109376;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = v8;
        _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "display %u swap_end returned error %x\n", buf, 0xEu);
      }
    }

    if (*(v2 + 3688) == 1)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v10 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xE0uLL, 0xDEEC3011uLL);
      if (v10)
      {
        v10[10] = 0;
        v10[9] = v10 + 10;
        v10[13] = 0;
        v10[11] = 0;
        v10[12] = v10 + 13;
        v10[14] = 0;
        v10[15] = v10 + 19;
        v10[16] = v10 + 19;
        v10[17] = v10 + 19;
        v10[18] = 4;
      }

      *buf = v10;
      *v10 = v22;
      *(v10 + 110) |= 0x10u;
      os_unfair_lock_lock((v4 + 26072));
      std::vector<std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>>::push_back[abi:nn200100](v4 + 26080, buf);
      os_unfair_lock_unlock((v4 + 26072));
      std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](buf, 0);
    }

    if (a2)
    {
      CA::IOMobileFramebuffer::swap_wait((v4 + 25696));
    }

    pthread_mutex_lock((v4 + 25848));
    v11 = *v2;
    if (v11)
    {
      v12 = (v11 + 3) & 0x1FFFFFFFCLL;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = xmmword_183E21240;
      v15 = xmmword_183E20FF0;
      v16 = v2 + 60;
      v17 = vdupq_n_s64(4uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v13, v15));
        if (vuzp1_s16(v18, *v13.i8).u8[0])
        {
          *(v16 - 36) = 0;
        }

        if (vuzp1_s16(v18, *&v13).i8[2])
        {
          *(v16 - 24) = 0;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
        {
          *(v16 - 12) = 0;
          *v16 = 0;
        }

        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v16 += 48;
        v12 -= 4;
      }

      while (v12);
    }

    *(v2 + 3668) = 1;
    return pthread_mutex_unlock((v4 + 25848));
  }

  return this;
}

void CA::WindowServer::IOMFBDisplay::post_hotplug_log(CA::WindowServer::IOMFBDisplay *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = (this + 27312);
  if (*(this + 29495) == 1 && (*(this + 29513) & 1) == 0)
  {
    v3 = *(this + 3415);
    if (v3 + 1 >= 2 && (v3 & 0x10000000) == 0)
    {
      v4 = (v3 >> 14) & 0x3FFF;
      v5 = vcvtd_n_f64_u32((v3 >> 29) & 0x1FFFFFF, 0x10uLL);
      v6 = ((v3 >> 55) & 0x1F) - 1;
      if (v6 > 0x1B)
      {
        v7 = "";
      }

      else
      {
        v7 = off_1E6DED668[v6];
      }

      if ((v3 & 0x4000000000000000) != 0)
      {
        v8 = "high";
      }

      else
      {
        v8 = "low";
      }

      v9 = CFStringCreateWithFormat(0, 0, @"%dx%d@%.3f %s, %s bandwidth", *(this + 3415) & 0x3FFFLL, v4, *&v5, v7, v8);
      os_unfair_lock_lock(this + 102);
      CA::WindowServer::Display::ModeSet::ModeSet(__p, (this + 416));
      os_unfair_lock_unlock(this + 102);
      v10 = __p[1] - __p[0];
      if (__p[1] != __p[0])
      {
        if (!((v10 >> 3) >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::Display::Mode>>(v10 >> 3);
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v25);
      std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*&v24[1]);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v10)
      {
        v11 = 8;
        v12 = 0;
        if (v10 != 8)
        {
          v12 = 0;
          while (1)
          {
            v13 = *v11;
            if (((*v12 >> 54) & 1) != ((*v11 >> 54) & 1))
            {
              break;
            }

            if (((*v12 >> 14) & 0x3FFF) * (*v12 & 0x3FFF) < ((v13 >> 14) & 0x3FFF) * (v13 & 0x3FFF))
            {
              goto LABEL_24;
            }

LABEL_25:
            v11 += 8;
            if (v11 == v10)
            {
              goto LABEL_26;
            }
          }

          if ((v13 & 0x40000000000000) != 0)
          {
            goto LABEL_25;
          }

LABEL_24:
          v12 = v11;
          goto LABEL_25;
        }

LABEL_26:
        v14 = *v12;
        *__p = 0u;
        memset(v24, 0, 28);
        (*(*this + 1384))(__p, this);
        v15 = vcvtd_n_f64_u32((v14 >> 29) & 0x1FFFFFF, 0x10uLL);
        v16 = (*(this + 336) >> 13) - 1;
        if (v16 > 4)
        {
          v17 = "Unspecified";
        }

        else
        {
          v17 = off_1E6DFA220[v16];
        }

        v18 = CFStringCreateWithFormat(0, 0, @"%dx%d@%.3f, %d, %d, %s", v14 & 0x3FFF, (v14 >> 14) & 0x3FFF, *&v15, LODWORD(__p[0]), BYTE4(v24[0]), v17);
        v20 = *v1;
        v19 = v1[1];
        if (x_log_get_display(void)::once != -1)
        {
          dispatch_once(&x_log_get_display(void)::once, &__block_literal_global_5114);
        }

        v21 = *(this + 6);
        if (v21)
        {
          v22 = x_log_get_display(void)::log;
          if (os_signpost_enabled(x_log_get_display(void)::log))
          {
            *buf = 138544130;
            v27 = v9;
            v28 = 2114;
            v29 = v18;
            v30 = 1026;
            v31 = v20;
            v32 = 1026;
            v33 = v19;
            _os_signpost_emit_with_name_impl(&dword_183AA6000, v22, OS_SIGNPOST_EVENT, v21, "Connected", "mode=%{public, name=mode, signpost.telemetry:string1}@ displayAttributes=%{public, name=displayAttributes, signpost.telemetry:string2}@ vendorId=%{public, name=vendorId, signpost.telemetry:number1}u modelId=%{public, name=modelId, signpost.telemetry:number2}u enableTelemetry=YES ", buf, 0x22u);
          }
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void CA::WindowServer::IOMFBDisplay::update_brightness_capabilities(CA::WindowServer::IOMFBDisplay *this, const __CFDictionary *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = (this + 26520);
  if (*(this + 29568) != 1)
  {
    return;
  }

  os_unfair_lock_lock(this + 6868);
  v5 = *(this + 3435);
  os_unfair_lock_unlock(this + 6868);
  if (v5)
  {
    if (!a2 && (*(this + 336) & 0x1C00) == 0)
    {
      return;
    }
  }

  BrightnessControlCapabilities = IOMobileFramebufferGetBrightnessControlCapabilities();
  if (!a2)
  {
    MutableCopy = BrightnessControlCapabilities;
    v15 = (*(this + 336) >> 10) & 7;
    if (!BrightnessControlCapabilities)
    {
      v14 = v15 == 1;
      if (v15 != 1 || !CA::WindowServer::Display::Mode::is_hdr((this + 656)))
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v30 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(this + 6);
          *buf = 67109120;
          *&buf[4] = v45;
          _os_log_debug_impl(&dword_183AA6000, v30, OS_LOG_TYPE_DEBUG, "DisplayID: %u got NULL brightness capabilities", buf, 8u);
        }

        *(this + 226) &= ~0x1000u;
        CA::WindowServer::Display::initialize_edr_state(this);
        v31 = *(this + 88);
        MutableCopy = 0;
        if (v31)
        {
          atomic_store(0x3F800000u, (v31 + 4));
        }

        goto LABEL_79;
      }

      *buf = xmmword_1E6DFA0F0;
      *&buf[16] = @"ReferenceSDRBrightness";
      v24 = (*(*this + 984))(this);
      LODWORD(valuePtr[0]) = 1092616192;
      v25 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
      *valuePtr = v24;
      v26 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
      valuePtr[0] = *MEMORY[0x1E695E4C0];
      valuePtr[1] = v25;
      valuePtr[2] = v26;
      MutableCopy = CFDictionaryCreate(0, buf, valuePtr, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (x_log_get_brightness(void)::once != -1)
      {
        dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
      }

      v27 = x_log_get_brightness(void)::log;
      if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(this + 6);
        v46[0] = 67109378;
        v46[1] = v28;
        v47 = 2112;
        v48 = MutableCopy;
        _os_log_impl(&dword_183AA6000, v27, OS_LOG_TYPE_DEFAULT, "DisplayID: %u simulating HDR10 brightness capabilities %@", v46, 0x12u);
      }

      CA::WindowServer::Display::initialize_edr_state(this);
      v29 = *(this + 88);
      if (v29)
      {
        atomic_store(0x41200000u, (v29 + 4));
      }

      *(this + 226) &= ~0x1000u;
      if (v26)
      {
        CFRelease(v26);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      goto LABEL_13;
    }

    *(this + 226) |= 0x1000u;
    if (v15)
    {
      if (v15 == 1)
      {
        (*(*this + 1384))(buf, this);
        if (v52 == 1552 && (v51 - 44577) <= 0xE && ((1 << (v51 - 33)) & 0x7007) != 0)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
          (*(*this + 1216))(buf, this);
          v16 = *&buf[4];
          is_hdr = CA::WindowServer::Display::Mode::is_hdr((this + 656));
          CA::WindowServer::Display::initialize_edr_state(this);
          v18 = *(this + 88);
          if (v18)
          {
            v19 = (v18 + 4);
            if (is_hdr)
            {
              v20 = 1098907648;
            }

            else
            {
              v20 = 1084227584;
            }

            atomic_store(v20, v19);
          }

          if (v16 == 0.0)
          {
            if (CA::WindowServer::Display::Mode::is_hdr((this + 656)))
            {
              v16 = 1600.0;
            }

            else
            {
              v16 = 500.0;
            }

            v2[1] = v16;
          }

          v21 = (v16 * 0.01) > 16.0 || (v16 * 0.01) < 1.0;
          v22 = 16.0;
          if ((v16 * 0.01) < 1.0 && (v16 * 0.01) <= 16.0)
          {
            v22 = 1.0;
          }

          v23 = (v16 * 0.01);
          if (v21)
          {
            v23 = v22;
          }

          CA_CFDictionarySetDouble(MutableCopy, @"EDRPotentialHeadroom", v23);
          if (v16 > 550.0)
          {
            CA_CFDictionarySetDouble(MutableCopy, @"EDRReferenceHeadroom", 10.0);
          }

          CA_CFDictionarySetDouble(MutableCopy, @"ReferenceSDRBrightness", 100.0);
        }

        else
        {
          CFRetain(MutableCopy);
        }

        v14 = 0;
        goto LABEL_73;
      }
    }

    else
    {
      if (CADeviceSupportsReferenceMode::once != -1)
      {
        dispatch_once(&CADeviceSupportsReferenceMode::once, &__block_literal_global_263);
      }

      if (CADeviceSupportsReferenceMode::supports_ref == 1)
      {
        v32 = *(v2 + 112);
        v33 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
        MutableCopy = v33;
        v34 = 16.0;
        if (v32)
        {
          v34 = 10.0;
          v35 = 10.0;
        }

        else
        {
          v35 = 0.0;
        }

        CA_CFDictionarySetDouble(v33, @"EDRPotentialHeadroom", v34);
        CA_CFDictionarySetDouble(MutableCopy, @"EDRReferenceHeadroom", v35);
        if (v32)
        {
          CA_CFDictionarySetDouble(MutableCopy, @"MinNits", 100.0);
          CA_CFDictionarySetDouble(MutableCopy, @"MaxNits", 100.0);
          v36 = 1000.0;
        }

        else
        {
          v36 = 1600.0;
        }

        CA_CFDictionarySetDouble(MutableCopy, @"MaxNitsEDR", v36);
        v14 = 1;
        goto LABEL_72;
      }
    }

    CFRetain(MutableCopy);
    v14 = 0;
LABEL_72:
    Double = CA_CFDictionaryGetDouble(MutableCopy, @"MinNits");
    *v2 = Double;
    v38 = CA_CFDictionaryGetDouble(MutableCopy, @"MaxNits");
    v2[1] = v38;
LABEL_73:
    v39 = CA_CFDictionaryGetDouble(MutableCopy, @"EDRPotentialHeadroom");
    CA::WindowServer::Display::initialize_edr_state(this);
    v40 = *(this + 88);
    if (v40)
    {
      *&v41 = v39;
      atomic_store(v41, (v40 + 4));
    }

    if (x_log_get_brightness(void)::once != -1)
    {
      dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
    }

    v42 = x_log_get_brightness(void)::log;
    if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(this + 6);
      *buf = 67109378;
      *&buf[4] = v43;
      *&buf[8] = 2112;
      *&buf[10] = MutableCopy;
      _os_log_impl(&dword_183AA6000, v42, OS_LOG_TYPE_DEFAULT, "DisplayID: %u got brightness capabilities %@", buf, 0x12u);
    }

    goto LABEL_79;
  }

  v7 = CFGetTypeID(a2);
  if (v7 != CFDictionaryGetTypeID())
  {
    return;
  }

  MutableCopy = CFRetain(a2);
  v9 = CA_CFDictionaryGetDouble(MutableCopy, @"EDRPotentialHeadroom");
  CA::WindowServer::Display::initialize_edr_state(this);
  v10 = *(this + 88);
  if (v10)
  {
    *&v11 = v9;
    atomic_store(v11, (v10 + 4));
  }

  if (x_log_get_brightness(void)::once != -1)
  {
    dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
  }

  v12 = x_log_get_brightness(void)::log;
  if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 6);
    *buf = 67109378;
    *&buf[4] = v13;
    *&buf[8] = 2112;
    *&buf[10] = MutableCopy;
    _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "DisplayID: %u brightness capabilities set to %@", buf, 0x12u);
  }

LABEL_13:
  v14 = 1;
LABEL_79:
  os_unfair_lock_lock(this + 6868);
  v44 = *(this + 3435);
  *(this + 3435) = MutableCopy;
  os_unfair_lock_unlock(this + 6868);
  if (v44)
  {
    CFRelease(v44);
  }

  if (v14 && *(v2 + 3048) == 1)
  {
    CA::Render::post_notification(0x34u, 0, 0, 0);
  }
}