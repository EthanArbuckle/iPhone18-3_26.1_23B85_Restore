void CA::CG::ClipEllipseFill::~ClipEllipseFill(CA::CG::ClipEllipseFill *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

CA::OGL::Context *CA::CG::ClipRoundedRectFill::draw(CA::CG::ClipRoundedRectFill *this, CA::CG::Renderer *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v15 = v3;
  v4 = *(this + 1);
  v16 = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  v17 = v5;
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  v10 = *(this + 6);
  v11 = v6 - v10;
  if (v6 - v10 < 0.0)
  {
    v11 = -(v6 - v10);
  }

  if (v11 > 0.001)
  {
    v12 = v10 / v6;
    v13 = vmlaq_n_f64(vmlaq_n_f64(v9, v7, v3), v8, *&v4);
    v8 = vmulq_n_f64(v8, v12);
    v9 = vmlsq_lane_f64(vmlsq_lane_f64(v13, v7, v3, 0), v8, *&v4, 0);
    v17 = v5 / v12;
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v22 = 0;
  CA::Transform::set_affine(v18, v7.f64[0], v7.f64[1], v8.f64[0], v8.f64[1], v9.f64[0], v9.f64[1]);
  *(&v19 + 1) = &v15;
  *&v20 = v18;
  *(&v20 + 1) = 0xFF0020003FLL;
  v22 = 0;
  v21 = 0uLL;
  return CA::OGL::fill_round_rect(*(a2 + 1), &v19 + 1, 0xF, 0, v6, v6);
}

uint64_t CA::CG::ClipRoundedRectFill::prepare(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float64x2_t a10, uint64_t a11, int32x2_t *a12)
{
  v13 = *(a1 + 8);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (v14.f64[0] <= v15)
  {
    v16 = *(a1 + 32);
  }

  else
  {
    v16 = *(a1 + 24);
  }

  v17 = v16 < 1.79769313e308;
  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v20 = v19;
  v21 = v18;
  if (v17)
  {
    if (v14.f64[0] >= v15)
    {
      v22 = *(a1 + 32);
    }

    else
    {
      v22 = *(a1 + 24);
    }

    v19 = *(a1 + 24);
    v18 = *(a1 + 8);
    if (v22 > 0.0)
    {
      v23 = *(a1 + 40);
      v18 = vaddq_f64(v13, *&v23);
      v20.f64[1] = *(a1 + 32);
      v20.f64[0] = v14.f64[0] - (v23 + v23);
      v19.f64[0] = 0.0;
      v21.f64[0] = fmin(v20.f64[0], v15);
      v19 = vandq_s8(v20, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v19, v21)).i64[0], 0));
    }

    if (v14.f64[0] >= v15)
    {
      v24 = *(a1 + 32);
    }

    else
    {
      v24 = *(a1 + 24);
    }

    if (v24 > 0.0)
    {
      v25.f64[0] = 0.0;
      v25.f64[1] = *(a1 + 48);
      v21 = vaddq_f64(v13, v25);
      v20.f64[0] = v15 - (*(a1 + 48) + *(a1 + 48));
      v26.i64[0] = *(a1 + 24);
      v26.i64[1] = *&v20.f64[0];
      a10.f64[0] = 0.0;
      v20.f64[0] = fmin(v14.f64[0], v20.f64[0]);
      v20 = vandq_s8(v26, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a10, v20)).i64[0], 0));
    }

    else
    {
      v20 = *(a1 + 24);
      v21 = *(a1 + 8);
    }
  }

  v27 = *(a2 + 80);
  if (v27 != 1.0)
  {
    v12.f64[0] = 1.79769313e308;
    v28 = vdupq_lane_s64(vcgtq_f64(v12, v14).i64[0], 0);
    v29.i64[1] = *(a1 + 16);
    *v29.i64 = v27 * v13.f64[0];
    v13 = vbslq_s8(v28, v29, v13);
    v29.i64[1] = *(a1 + 32);
    *v29.i64 = v14.f64[0] * v27;
    v14 = vbslq_s8(v28, v29, v14);
    if (v14.f64[1] < 1.79769313e308)
    {
      v13.f64[1] = vmuld_lane_f64(v27, v13, 1);
      v14.f64[1] = v14.f64[1] * v27;
    }

    v12.f64[0] = 1.79769313e308;
    v30 = vdupq_lane_s64(vcgtq_f64(v12, v19).i64[0], 0);
    v31.i64[1] = *&v18.f64[1];
    *v31.i64 = v27 * v18.f64[0];
    v18 = vbslq_s8(v30, v31, v18);
    v31.i64[1] = *&v19.f64[1];
    *v31.i64 = v27 * v19.f64[0];
    v19 = vbslq_s8(v30, v31, v19);
    if (v19.f64[1] < 1.79769313e308)
    {
      v18.f64[1] = vmuld_lane_f64(v27, v18, 1);
      v19.f64[1] = v19.f64[1] * v27;
    }

    v12.f64[0] = 1.79769313e308;
    v32 = vdupq_lane_s64(vcgtq_f64(v12, v20).i64[0], 0);
    v33.i64[1] = *&v21.f64[1];
    *v33.i64 = v27 * v21.f64[0];
    v21 = vbslq_s8(v32, v33, v21);
    v33.i64[1] = *&v20.f64[1];
    *v33.i64 = v27 * v20.f64[0];
    v20 = vbslq_s8(v32, v33, v20);
    if (v20.f64[1] < 1.79769313e308)
    {
      v21.f64[1] = vmuld_lane_f64(v27, v21, 1);
      v20.f64[1] = v20.f64[1] * v27;
    }
  }

  v34 = vceqzq_f64(v19);
  v35 = vorrq_s8(vdupq_laneq_s64(v34, 1), v34).u64[0];
  v36 = 0uLL;
  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = vceqq_f64(v19, v19);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v37), 1), v37).u64[0] & 0x8000000000000000) == 0)
    {
      v38 = vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000));
      v39 = vminnmq_f64(vaddq_f64(v18, v19), vdupq_n_s64(0x41C0000000000000uLL));
      v40 = vcvtpq_s64_f64(v38);
      v36 = vuzp1q_s32(v40, vsubq_s64(vcvtmq_s64_f64(v39), v40));
    }
  }

  v41 = vextq_s8(v36, v36, 8uLL).u64[0];
  v42 = a12[1];
  v43 = vcltz_s32(v42);
  v44 = vorr_s8(v43, vclez_s32(v41));
  if ((vpmax_u32(v44, v44).u32[0] & 0x80000000) == 0)
  {
    v45 = vand_s8(vcge_s32(vadd_s32(*v36.i8, v41), vadd_s32(*a12, v42)), vcge_s32(*a12, *v36.i8));
    if ((vpmin_u32(v45, v45).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v46 = vceqzq_f64(v20);
  v47 = vorrq_s8(vdupq_laneq_s64(v46, 1), v46).u64[0];
  v48 = 0uLL;
  if ((v47 & 0x8000000000000000) == 0)
  {
    v49 = vceqq_f64(v20, v20);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v49), 1), v49).u64[0] & 0x8000000000000000) == 0)
    {
      v50 = vmaxnmq_f64(v21, vdupq_n_s64(0xC1BFFFFFFF000000));
      v51 = vminnmq_f64(vaddq_f64(v21, v20), vdupq_n_s64(0x41C0000000000000uLL));
      v52 = vcvtpq_s64_f64(v50);
      v48 = vuzp1q_s32(v52, vsubq_s64(vcvtmq_s64_f64(v51), v52));
    }
  }

  v53 = vextq_s8(v48, v48, 8uLL).u64[0];
  v54 = vorr_s8(v43, vclez_s32(v53));
  if ((vpmax_u32(v54, v54).u32[0] & 0x80000000) == 0)
  {
    v55 = vand_s8(vcge_s32(vadd_s32(*v48.i8, v53), vadd_s32(*a12, v42)), vcge_s32(*a12, *v48.i8));
    if ((vpmin_u32(v55, v55).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v56 = vceqzq_f64(v14);
  v57 = vorrq_s8(vdupq_laneq_s64(v56, 1), v56).u64[0];
  v58 = 0uLL;
  if ((v57 & 0x8000000000000000) == 0)
  {
    v59 = vceqq_f64(v14, v14);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v59), 1), v59).u64[0] & 0x8000000000000000) == 0)
    {
      v60 = vmaxnmq_f64(v13, vdupq_n_s64(0xC1BFFFFFFF000000));
      v61 = vminnmq_f64(vaddq_f64(v13, v14), vdupq_n_s64(0x41C0000000000000uLL));
      v62 = vcvtmq_s64_f64(v60);
      v58 = vuzp1q_s32(v62, vsubq_s64(vcvtpq_s64_f64(v61), v62));
    }
  }

  v63 = vclez_s32(v42);
  if ((vpmax_u32(v63, v63).u32[0] & 0x80000000) == 0)
  {
    v64 = vextq_s8(v58, v58, 8uLL).u64[0];
    v65 = vclez_s32(v64);
    if ((vpmax_u32(v65, v65).u32[0] & 0x80000000) == 0)
    {
      v66 = vadd_s32(*a12, v42);
      v67 = vadd_s32(*v58.i8, v64);
      *&v68 = vmax_s32(*a12, *v58.i8);
      v69 = vsub_s32(vmin_s32(v66, v67), *&v68);
      v70 = vclez_s32(v69);
      if ((vpmax_u32(v70, v70).u32[0] & 0x80000000) == 0)
      {
        *(&v68 + 1) = v69;
        *a12->i8 = v68;
        return 2;
      }
    }

    a12[1] = 0;
  }

  return 1;
}

void CA::CG::ClipRoundedRectFill::~ClipRoundedRectFill(CA::CG::ClipRoundedRectFill *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::CG::ClipStack::destroy_clip_stack(void (***this)(char *))
{
  if (*(this + 1))
  {
    v2 = 0;
    do
    {
      (*this[13 * v2 + 7])(&this[13 * v2 + 7]);
      ++v2;
    }

    while (v2 < *(this + 1));
  }

  free(this);
}

int32x2_t *CA::CG::ClipOp::ClipOp(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, double a6, double a7, double a8, int64x2_t a9, double a10, float64x2_t a11)
{
  v185 = *MEMORY[0x1E69E9840];
  *a1->i8 = a5;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = a4;
  v12 = a5.n128_i32[2];
  a1[6] = 0;
  if (a5.n128_i32[2] >= a5.n128_i32[3])
  {
    v12 = a5.n128_i32[3];
  }

  if (v12 < 1)
  {
    return a1;
  }

  v15 = *(a3 + 72);
  if (v15)
  {
    v16 = *&a5.n128_i8[8];
    v18 = *(v15 + 24);
    v17 = *(v15 + 32);
    if (v18 <= v17)
    {
      v19 = *(v15 + 32);
    }

    else
    {
      v19 = *(v15 + 24);
    }

    if (v19 < 1.79769313e308)
    {
      v21 = (v15 + 8);
      v169 = 0u;
      v170 = 0u;
      v20 = *(a2 + 80);
      if (v20 != 1.0)
      {
        v22 = *v21;
        v169 = *v21;
        *&v170 = v18;
        *(&v170 + 1) = v17;
        HIDWORD(a11.f64[0]) = 2146435071;
        if (v18 < 1.79769313e308)
        {
          a11.f64[0] = v20 * *v22.i64;
          *v169.i64 = v20 * *v22.i64;
          *&v170 = v18 * v20;
        }

        if (v17 < 1.79769313e308)
        {
          *&v169.i64[1] = *&v22.i64[1] * v20;
          *(&v170 + 1) = v17 * v20;
        }

        v21 = &v169;
      }

      a9 = v21[1];
      v23 = *&v21[1].i64[1];
      if (*a9.i64 > v23)
      {
        v23 = *v21[1].i64;
      }

      if (v23 < 1073741820.0)
      {
        v25.f64[0] = NAN;
        v25.f64[1] = NAN;
        a11 = vnegq_f64(v25);
        __asm { FMOV            V7.2D, #0.5 }

        v24 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(a11, _Q7, *v21), *v21)));
        v30 = vaddq_f64(*v21, a9);
        a9 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(a11, _Q7, v30), v30));
        *a9.i8 = vsub_s32(vmovn_s64(a9), v24);
      }

      else
      {
        v24 = vdup_n_s32(0xE0000001);
        a9.i64[0] = 0xC0000000C0000000;
      }

      v31 = vclez_s32(*&a5.n128_i8[8]);
      if ((vpmax_u32(v31, v31).u32[0] & 0x80000000) != 0)
      {
        return a1;
      }

      v32 = vclez_s32(*a9.i8);
      if ((vpmax_u32(v32, v32).u32[0] & 0x80000000) != 0)
      {
        goto LABEL_50;
      }

      v33 = vadd_s32(a5.n128_u64[0], *&a5.n128_i8[8]);
      a5.n128_u64[0] = vmax_s32(a5.n128_u64[0], v24);
      v16 = vsub_s32(vmin_s32(v33, vadd_s32(v24, *a9.i8)), a5.n128_u64[0]);
      v34 = vclez_s32(v16);
      if ((vpmax_u32(v34, v34).u32[0] & 0x80000000) != 0)
      {
        goto LABEL_50;
      }

      *&a5.n128_i8[8] = v16;
      *a1->i8 = a5;
    }

    else
    {
      v20 = *(a2 + 80);
    }

    if (v20 == 1.0)
    {
      if ((CA::BoundsImpl::intersect(a1, *(v15 + 40), *(v15 + 48)) & 1) == 0)
      {
        return a1;
      }

      goto LABEL_39;
    }

    v35 = *(v15 + 40);
    a9.i64[0] = *(v15 + 48);
    v36.i64[0] = v35;
    v36.i64[1] = SHIDWORD(v35);
    v37 = vcvtq_f64_s64(v36);
    v38 = a9.i32[1];
    v36.i64[0] = a9.i32[0];
    v36.i64[1] = a9.i32[1];
    v39 = v36;
    if (a9.i32[0] > a9.i32[1])
    {
      v38 = *(v15 + 48);
    }

    a9.i32[0] = v38;
    LODWORD(a11.f64[0]) = 1073741822;
    v40 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a9, a11), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v37);
    v41 = vdup_n_s32(v38 > 1073741822);
    v42.i64[0] = v41.u32[0];
    v42.i64[1] = v41.u32[1];
    v43 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v44 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v42, 0x3FuLL)), v43, vcvtq_f64_s64(v39));
    v43.f64[0] = 1.79769313e308;
    v45 = vdupq_lane_s64(vcgtq_f64(v43, v44).i64[0], 0);
    v46.i64[1] = v40.i64[1];
    *v46.i64 = v20 * *v40.i64;
    v47 = vbslq_s8(v45, v46, v40);
    v46.i64[1] = *&v44.f64[1];
    *v46.i64 = v20 * v44.f64[0];
    v48 = vbslq_s8(v45, v46, v44);
    if (v48.f64[1] < 1.79769313e308)
    {
      v47.f64[1] = vmuld_lane_f64(v20, v47, 1);
      v48.f64[1] = v48.f64[1] * v20;
    }

    v49 = vceqzq_f64(v48);
    v50 = vorrq_s8(vdupq_laneq_s64(v49, 1), v49).u64[0];
    v51 = 0uLL;
    if ((v50 & 0x8000000000000000) == 0)
    {
      v52 = vceqq_f64(v48, v48);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v52), 1), v52).u64[0] & 0x8000000000000000) == 0)
      {
        v53 = vcvtmq_s64_f64(vmaxnmq_f64(v47, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v51 = vuzp1q_s32(v53, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v47, v48), vdupq_n_s64(0x41C0000000000000uLL))), v53));
      }
    }

    v54 = vclez_s32(v16);
    if ((vpmax_u32(v54, v54).u32[0] & 0x80000000) != 0)
    {
      return a1;
    }

    v55 = vextq_s8(v51, v51, 8uLL).u64[0];
    v56 = vclez_s32(v55);
    if ((vpmax_u32(v56, v56).u32[0] & 0x80000000) == 0)
    {
      v57 = vadd_s32(a5.n128_u64[0], v16);
      a5.n128_u64[0] = vmax_s32(a5.n128_u64[0], *v51.i8);
      v58 = vsub_s32(vmin_s32(v57, vadd_s32(*v51.i8, v55)), a5.n128_u64[0]);
      v59 = vclez_s32(v58);
      if ((vpmax_u32(v59, v59).u32[0] & 0x80000000) == 0)
      {
        *&a5.n128_i8[8] = v58;
        *a1->i8 = a5;
LABEL_39:
        if ((*(a3 + 100) & 0x20) == 0 && *(v15 + 4))
        {
          v60 = 0;
          do
          {
            v61 = v15 + 56 + 104 * v60;
            v62 = (*(*v61 + 24))(v61, a2, a3, a1);
            if (v62 == 2)
            {
              v63 = a1[5];
              v64 = a1[6];
              a1[6] = (*&v64 + 1);
              *(*&v63 + 8 * *&v64) = v61;
            }

            else if (v62 == 1)
            {
              goto LABEL_124;
            }

            ++v60;
          }

          while (v60 < *(v15 + 4));
        }

        goto LABEL_47;
      }
    }

LABEL_50:
    a1[1] = 0;
    return a1;
  }

LABEL_47:
  if (*(a3 + 64))
  {
    CGSoftMaskGetBounds();
    *v68.i64 = v67;
    v68.i64[1] = v65;
    v69.f64[0] = 0.0;
    v71.i64[0] = *&v70.f64[0];
    v71.i64[1] = v66;
    v72 = vdupq_lane_s64(vcgtq_f64(v69, v70).i64[0], 0);
    v73.i64[1] = v65;
    *v73.i64 = v70.f64[0] + v67;
    v74 = vbslq_s8(v72, v73, v68);
    v75.i64[1] = v66;
    *v75.i64 = -v70.f64[0];
    v76 = vbslq_s8(v72, v75, v71);
    if (*&v66 >= 0.0)
    {
      v159 = v74;
    }

    else
    {
      *&v74.i64[1] = *&v66 + *&v65;
      v159 = v74;
      *&v76.i64[1] = -*&v66;
    }

    v162 = v76;
    v167 = 0u;
    v168 = 0u;
    v166 = 0u;
    CGSoftMaskGetMatrix();
    Background = CGSoftMaskGetBackground();
    v79 = *(a2 + 80);
    if (v79 == 1.0)
    {
      v85 = v159;
      v82 = v162;
    }

    else
    {
      v80 = v79;
      v81 = v80;
      v82 = v162;
      if (v80 == 1.0)
      {
        v85 = v159;
      }

      else
      {
        v78.f64[0] = 1.79769313e308;
        v83 = vdupq_lane_s64(vcgtq_f64(v78, v162).i64[0], 0);
        v84.i64[1] = v159.i64[1];
        *v84.i64 = v81 * *v159.i64;
        v85 = vbslq_s8(v83, v84, v159);
        v84.i64[1] = *&v162.f64[1];
        *v84.i64 = v81 * v162.f64[0];
        v82 = vbslq_s8(v83, v84, v162);
        if (v82.f64[1] < 1.79769313e308)
        {
          v85.f64[1] = vmuld_lane_f64(v81, v85, 1);
          v82.f64[1] = v82.f64[1] * v81;
        }
      }

      v166 = vmulq_n_f64(v166, v81);
      v167 = vmulq_n_f64(v167, v81);
      v168 = vmulq_n_f64(v168, v81);
    }

    v86 = v82.f64[1];
    if (v82.f64[0] > v82.f64[1])
    {
      v86 = v82.f64[0];
    }

    if (v86 < 1.79769313e308)
    {
      v87 = vmlaq_laneq_f64(vmulq_n_f64(v166, v85.f64[0]), v167, v85, 1);
      v88 = vmulq_n_f64(v166, v82.f64[0]);
      v89 = vaddq_f64(v87, v88);
      v90 = vminnmq_f64(v87, v89);
      v91 = vmaxnmq_f64(v87, v89);
      v92 = vmlaq_laneq_f64(v87, v167, v82, 1);
      v93 = vaddq_f64(v92, v88);
      v94 = vminnmq_f64(v90, vminnmq_f64(v92, v93));
      v85 = vaddq_f64(v94, v168);
      v82 = vsubq_f64(vmaxnmq_f64(v91, vmaxnmq_f64(v92, v93)), v94);
    }

    if (Background)
    {
      v95 = *a1->i8;
    }

    else
    {
      v112 = vceqzq_f64(v82);
      v95 = 0uLL;
      if ((vorrq_s8(vdupq_laneq_s64(v112, 1), v112).u64[0] & 0x8000000000000000) == 0)
      {
        v113 = vceqq_f64(v82, v82);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v113), 1), v113).u64[0] & 0x8000000000000000) == 0)
        {
          v114 = vcvtmq_s64_f64(vmaxnmq_f64(v85, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v95 = vuzp1q_s32(v114, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v85, v82), vdupq_n_s64(0x41C0000000000000uLL))), v114));
        }
      }

      v115 = vextq_s8(v95, v95, 8uLL).u64[0];
      v116 = vclez_s32(v115);
      if ((vpmax_u32(v116, v116).u32[0] & 0x80000000) == 0)
      {
        v117 = a1[1];
        v118 = vclez_s32(v117);
        if ((vpmax_u32(v118, v118).u32[0] & 0x80000000) != 0 || (v119 = vadd_s32(*v95.i8, v115), *v120.i8 = vmax_s32(*v95.i8, *a1), v121 = vsub_s32(vmin_s32(v119, vadd_s32(*a1, v117)), *v120.i8), v122 = vclez_s32(v121), (vpmax_u32(v122, v122).u32[0] & 0x80000000) != 0))
        {
          v95.i64[1] = 0;
        }

        else
        {
          v120.u64[1] = v121;
          v95 = v120;
        }
      }
    }

    v96 = v95.i32[2];
    v97 = v95.u32[3];
    v98 = v95.i32[2] >= v95.i32[3] ? v95.i32[3] : v95.i32[2];
    if (v98 >= 1)
    {
      v99 = Background;
      v163 = v95;
      v100 = CA::Render::format_rowbytes(9, v95.u32[2]);
      v101 = v100;
      v102 = is_mul_ok(v100, v97) ? (v100 * v97) : 0;
      v103 = CAGetColorSpace(1);
      size = 0;
      v104 = CA::Render::aligned_malloc(v102, &size, 0);
      if (v104)
      {
        v158 = a2;
        v105 = v99;
        v156 = v103;
        if (v99)
        {
          v106 = v103;
        }

        else
        {
          v106 = 0;
        }

        if (v99)
        {
          v107 = 0;
        }

        else
        {
          v107 = 7;
        }

        v108 = v104;
        v109 = CGBitmapContextCreate(v104, v96, v97, 8uLL, v101, v106, v107);
        if (v109)
        {
          v111 = v109;
          if (v105)
          {
            CGContextBeginTransparencyLayer(v109, 0);
            CGContextSetCompositeOperation();
            CGContextSetFillColorWithColor(v111, v105);
            CGContextFillRect(v111, *MEMORY[0x1E695F040]);
          }

          else
          {
            CGContextSetCompositeOperation();
          }

          v123.i64[0] = v163.i32[0];
          v123.i64[1] = v163.i32[1];
          v160 = vcvtq_f64_s64(v123);
          CGRenderingStateCreateCopy();
          CGRenderingStateSetBaseCTM();
          CGGStateCreateCopy();
          CGGStateResetClip();
          CGGStateSetAlpha();
          CGGStateSetStyle();
          CGGStateSetSoftMask();
          CGGStateSetCTM();
          CGGStateSetFillColor();
          CGGStateSetStrokeColor();
          CGGStateSetCompositeOperation();
          CGContextGetDelegate();
          CGSoftMaskDelegateDrawSoftMask();
          CGGStateRelease();
          CGRenderingStateRelease();
          if (v105)
          {
            CGContextEndTransparencyLayer(v111);
          }

          CGContextRelease(v111);
          if (CGSoftMaskGetTransfer())
          {
            if ((CGFunctionIsIdentity() & 1) == 0)
            {
              v124 = 0;
              v183 = 0u;
              v184 = 0u;
              v181 = 0u;
              v182 = 0u;
              v179 = 0u;
              v180 = 0u;
              v177 = 0u;
              v178 = 0u;
              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              v171 = 0u;
              v172 = 0u;
              v169 = 0u;
              v170 = 0u;
              do
              {
                CGFunctionEvaluate();
                v169.i8[v124++] = 0;
              }

              while (v124 != 256);
              if (v97)
              {
                v125 = v97;
                v126 = v108;
                do
                {
                  if (v96)
                  {
                    v127 = 0;
                    do
                    {
                      v126[v127] = v169.i8[v126[v127]];
                      ++v127;
                    }

                    while (v96 != v127);
                  }

                  v126 += v101;
                  --v125;
                }

                while (v125);
              }
            }
          }

          v128 = CGDataProviderCreateWithData(size, v108, size, CA::Render::aligned_release);
          v129 = CGImageCreate(v96, v97, 8uLL, 8uLL, v101, v156, 0, v128, 0, 0, kCGRenderingIntentDefault);
          CGDataProviderRelease(v128);
          if (v96 <= v97)
          {
            v132 = v97;
          }

          else
          {
            v132 = v96;
          }

          v130.i32[0] = 1073741822;
          v131.i32[0] = v132;
          v133 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v131, v130), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v160);
          v134.i64[0] = v163.i32[2];
          v134.i64[1] = v163.i32[3];
          v135 = vcvtq_f64_s64(v134);
          v136 = vdup_n_s32(v132 > 1073741822);
          v134.i64[0] = v136.u32[0];
          v134.i64[1] = v136.u32[1];
          v137 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v134, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v135);
          v138 = *MEMORY[0x1E695EFD0];
          v139 = *(MEMORY[0x1E695EFD0] + 16);
          v169 = *(MEMORY[0x1E695EFD0] + 32);
          v140 = *(v158 + 80);
          if (v140 != 1.0)
          {
            v141 = 1.0 / v140;
            v142 = v141;
            _ZF = *v137.i64 >= 1.79769313e308 || v141 == 1.0;
            v144.i64[1] = *&v133.f64[1];
            v145.i64[1] = v137.i64[1];
            if (_ZF)
            {
              v146 = 0;
            }

            else
            {
              v146 = -1;
            }

            v147 = vdupq_n_s64(v146);
            *v145.i64 = v142 * *v137.i64;
            v137 = vbslq_s8(v147, v145, v137);
            *v144.i64 = v142 * v133.f64[0];
            v133 = vbslq_s8(v147, v144, v133);
            if (v141 != 1.0 && *&v137.i64[1] < 1.79769313e308)
            {
              v133.f64[1] = vmuld_lane_f64(v142, v133, 1);
              *&v137.i64[1] = *&v137.i64[1] * v142;
            }

            v139 = vmulq_n_f64(v139, v142);
            v138 = vmulq_n_f64(v138, v142);
          }

          v161 = v137;
          v164 = v133;
          v155 = v139;
          v157 = v138;
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v148 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
          v149 = v148;
          if (v148)
          {
            *&v148->f64[0] = &unk_1EF1FE0F8;
            *&v148->f64[1] = CGImageRetain(v129);
            v149[1] = v157;
            v149[2] = v155;
            v149[3] = v169;
            v149[4] = v164;
            v149[5] = v161;
            LOBYTE(v149[6].f64[0]) = 0;
          }

          a1[4] = v149;
          CGImageRelease(v129);
          v150 = (*(**&a1[4] + 24))(*&a1[4], v158, a3, a1);
          if (v150 == 2)
          {
            v151 = a1[4];
            v152 = a1[5];
            v153 = a1[6];
            a1[6] = (*&v153 + 1);
            *(*&v152 + 8 * *&v153) = v151;
          }

          else if (v150 == 1)
          {
LABEL_124:
            *a1 = 0;
            a1[1] = 0;
          }
        }

        else
        {
          CA::Render::aligned_free(v108, size, v110);
        }
      }
    }
  }

  return a1;
}

uint64_t CA::CG::ClipOp::draw(CA::CG::ClipOp *this, CA::CG::Renderer *a2)
{
  v4 = *(a2 + 1);
  *(*(v4 + 16) + 8) = 0x3C003C003C003C00;
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 32))(result, a2);
    *(*(v4 + 16) + 497) |= 1u;
  }

  v6 = *(this + 6);
  if (v6)
  {
    v7 = 0;
    v8 = -8;
    do
    {
      v9 = *(*(this + 5) + 8 * v6 + v8);
      result = (*(*v9 + 32))(v9, a2);
      *(*(v4 + 16) + 497) |= 1u;
      ++v7;
      v6 = *(this + 6);
      v8 -= 8;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t CA::Render::EmitterLayer::get_volume(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 24);
  if (!v3 || !*(v3 + 124))
  {
    return 0;
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 64);
  a3[1] = *(v3 + 48);
  a3[2] = v5;
  *a3 = v4;
  return 1;
}

float *CA::Render::EmitterState::point_on_rectangle(float *result, uint64_t a2, float a3, float a4, float a5)
{
  v5 = *result - (a4 * 0.5);
  v6 = result[1] - (a5 * 0.5);
  result[1] = v6;
  v7 = a3 * ((a5 + a4) + (a5 + a4));
  if (v7 >= a4)
  {
    v9 = v7 - a4;
    *result = v5 + a4;
    if ((v7 - a4) >= a5)
    {
      v10 = v9 - a5;
      v11 = v6 + a5;
      result[1] = v11;
      if (v10 >= a4)
      {
        *result = v5;
        result[1] = (a4 - v10) + v11;
        v8 = 3212836864;
      }

      else
      {
        *result = (v5 + a4) - v10;
        v8 = 0x3F80000000000000;
      }
    }

    else
    {
      result[1] = v6 + v9;
      v8 = 1065353216;
    }
  }

  else
  {
    *result = v5 + v7;
    v8 = 0xBF80000000000000;
  }

  *a2 = v8;
  *(a2 + 8) = 0;
  return result;
}

float CA::Render::EmitterState::point_on_circle(float *a1, uint64_t a2, float a3, float a4)
{
  if (a3 > 0.5)
  {
    a3 = a3 + -1.0;
  }

  v4 = (a3 + a3) * 3.14159265;
  v5 = v4 * v4;
  result = (((((v4 * v4) * 0.0054654) + -0.15346) * (v4 * v4)) + 0.98442) * v4;
  v7 = (((((v5 * -0.00096967) + 0.039228) * v5) + -0.49535) * v5) + 0.99861;
  v8 = *a1 + (v7 * a4);
  v9 = a1[1] + (result * a4);
  *a1 = v8;
  a1[1] = v9;
  *a2 = v7;
  *(a2 + 4) = result;
  *(a2 + 8) = 0;
  return result;
}

float CA::Render::EmitterState::point_on_sphere(uint64_t a1, uint64_t a2, uint64_t a3, float32_t a4)
{
  v6 = 214013 * *(a1 + 28) + 2531011;
  v7 = HIWORD(v6) * 0.000015259;
  v8 = 214013 * v6 + 2531011;
  *(a1 + 28) = v8;
  v9 = v7 * 6.28318531 + -3.14159265;
  v27 = v9;
  v10 = acosf((HIWORD(v8) * 0.000030518) + -1.0);
  v11 = *(a2 + 4);
  _D4 = vmul_f32(__PAIR64__(LODWORD(v10), LODWORD(v27)), __PAIR64__(LODWORD(v10), LODWORD(v27)));
  v13 = ((((0.039228 - (0.00096967 * _D4.f32[0])) * _D4.f32[0]) + -0.49535) * _D4.f32[0]) + 0.99861;
  v14 = vmul_f32(_D4, 0x3A7E31513BB31712);
  _D6.i32[0] = -1105386157;
  _D7.i32[0] = vadd_f32(v14, _D6).u32[0];
  _D7.i32[1] = vsub_f32(vdup_n_s32(0x3D20AD37u), v14).i32[1];
  v17 = vmla_f32(0xBEFD9E7A3F7C02BDLL, _D4, _D7);
  _D7.i32[0] = 1001592594;
  __asm
  {
    FMLA            S6, S7, V4.S[1]
    FMLA            S7, S6, V4.S[1]
  }

  _D4.f32[0] = v27;
  v22 = vmul_f32(v17, _D4);
  v23 = _D7.f32[0] * v10;
  v24 = vdup_n_s32(0x3F7FA4B1u);
  v25 = vadd_f32(v22, v24);
  v24.f32[0] = v23;
  v24.i32[0] = vmul_f32(v22, v24).u32[0];
  v24.i32[1] = v25.i32[1];
  v25.f32[0] = v23 * a4;
  v22.f32[1] = a4;
  *a2 = *a2 + ((v23 * a4) * v13);
  *(a2 + 4) = vmla_f32(v11, v22, v25);
  result = v13 * v23;
  *a3 = result;
  *(a3 + 4) = v24;
  return result;
}

float32x2_t CA::Render::EmitterState::point_on_rectangles(uint64_t a1, float32x2_t *a2, uint64_t a3, float32x2_t result, float32x2_t a5, float32_t a6)
{
  if (a1)
  {
    v6 = *(a1 + 16);
    v7 = v6 / 5uLL;
    v8 = 4 * v7;
    if (v6 >= 5 && 5 * (v6 / 5uLL) == v6)
    {
      v11 = (a1 + 48);
      v12 = 0.0;
      do
      {
        v12 = *(v11 - 1) + v12 + *v11;
        v11 += 4;
        --v7;
      }

      while (v7);
      v13 = v12 * result.f32[0];
      *&result = v13;
      v14 = (a1 + 40);
      v15 = 0.0;
      while (1)
      {
        v16 = *v14;
        v17 = vaddvq_f64(*v14);
        if (v17 + v15 > *&result)
        {
          break;
        }

        v7 += 4;
        v14 += 2;
        v15 = v17 + v15;
        if (v8 == v7)
        {
          return result;
        }
      }

      v18 = *&result - v15;
      v19 = v18 / v17;
      v20 = v16.f64[0];
      v21 = v16.f64[1];
      __asm { FMOV            V5.2D, #0.5 }

      v29 = _Q5;
      a5.f32[1] = a6;
      v27 = *(a1 + 24 + 8 * v7);
      v28 = vcvtq_f64_f32(a5);
      v26 = *v14;
      CA::Render::EmitterState::point_on_rectangle(a2, a3, v19, v20, v21);
      result = vcvt_f32_f64(vmulq_f64(vaddq_f64(vmlaq_f64(v27, v29, v26), vcvtq_f64_f32(*a2)), v28));
      *a2 = result;
    }
  }

  return result;
}

void CA::Render::EmitterState::free_cell_state(CA::Render::EmitterState *this, Cell *ptr)
{
  v3 = ptr[5];
  if (v3)
  {
    v5 = *&ptr[2].v;
    v6 = ptr[4];
    *(this + 21) -= *&v3;
    if (v6)
    {
      do
      {
        if (*(v5 + 24) != 0.0)
        {
          --v6;
          if (*(v5 + 8))
          {
            CA::Render::EmitterState::free_cells_state(this, v5);
          }
        }

        v5 += 128;
      }

      while (v6);
      v5 = *&ptr[2].v;
    }

    free(v5);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_zone;

  malloc_zone_free(v7, ptr);
}

float32x2_t *CA::Render::EmitterBehaviors::DistanceFunction::DistanceFunction(float32x2_t *this, const CA::Render::KeyValueArray *a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  this->i32[0] = 0;
  v29[0] = 0;
  v29[1] = 0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(a2, 569, v29);
  *&v5 = v5;
  this->f32[1] = vec2_key;
  this[1].i32[0] = LODWORD(v5);
  this[3].i32[0] = 0;
  this[2] = 0;
  this[1].i32[1] = 0;
  float_key = CA::Render::KeyValueArray::get_float_key(a2, 588, 0.0);
  this[4].f32[0] = float_key;
  this[4].f32[1] = float_key * float_key;
  v7 = CA::Render::KeyValueArray::get_float_key(a2, 685, 1.0);
  this[5].f32[0] = v7;
  this[5].f32[1] = float_key * v7;
  v8 = CA::Render::KeyValueArray::get_float_key(a2, 764, 0.0);
  this[1].f32[1] = v8;
  if (a2)
  {
    v9 = *(a2 + 4);
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = *(a2 + v10 + 3);
        if (*(v11 + 16) == 53)
        {
          break;
        }

        if (v9 == ++v10)
        {
          goto LABEL_21;
        }
      }

      if ((v10 & 0x80000000) == 0)
      {
        v12 = *(v11 + 24);
        if (v12)
        {
          if (*(v12 + 12) == 54)
          {
            v13 = CAInternAtomWithCString((v12 + 28));
            if (v13 == 58)
            {
              v14 = 1;
            }

            else
            {
              if (v13 != 556)
              {
                v14 = this->i32[0];
                if ((this->i32[0] - 1) >= 2)
                {
                  goto LABEL_21;
                }

                goto LABEL_15;
              }

              v14 = 2;
            }

            this->i32[0] = v14;
LABEL_15:
            v15 = CA::Render::KeyValueArray::get_float_key(a2, 544, 1.57079633);
            if (fabsf(v15) >= 0.00001)
            {
              v19 = CA::Render::KeyValueArray::get_float_key(a2, 545, -1.57079633);
              v20 = __sincosf_stret(v19);
              v21 = __sincosf_stret(v15);
              cosval = v21.__cosval;
              v17 = v21.__sinval * v20.__cosval;
              v18 = v21.__sinval * v20.__sinval;
            }

            else
            {
              cosval = 1.0;
              v17 = 0.0;
              v18 = 0.0;
            }

            this[2].f32[0] = v17;
            this[2].f32[1] = v18;
            this[3].f32[0] = cosval;
            if (v14 == 2)
            {
              this[3].f32[1] = -(((this->f32[1] * v17) + (this[1].f32[0] * v18)) + (this[1].f32[1] * cosval));
            }
          }
        }
      }
    }
  }

LABEL_21:
  v22 = CA::Render::KeyValueArray::get_float_key(a2, 243, 0.0);
  v28 = v22;
  this[6].f32[0] = v22;
  v23 = CA::Render::KeyValueArray::get_float_key(a2, 242, INFINITY);
  v24 = 1.0 / v23;
  v25 = ((LODWORD(v23) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F && (LODWORD(v23) & 0x7FFFFFFFu) - 1 >= 0x7FFFFF;
  v26 = 0.0;
  if (!v25)
  {
    v26 = v24;
  }

  this[6].f32[1] = v26;
  this[7] = vmul_f32(__PAIR64__(LODWORD(v26), LODWORD(v28)), __PAIR64__(LODWORD(v26), LODWORD(v28)));
  return this;
}

void CA::Render::EmitterBehaviors::NoOp::~NoOp(CA::Render::EmitterBehaviors::NoOp *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::EmitterBehaviors::Wave::~Wave(CA::Render::EmitterBehaviors::Wave *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::EmitterBehaviors::ValueOver<CA::Render::EmitterBehaviors::LifeFunction>::~ValueOver(void *ptr)
{
  *ptr = &unk_1EF1FE668;
  v2 = ptr[2];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, ptr);
}

void *CA::Render::EmitterBehaviors::ValueOver<CA::Render::EmitterBehaviors::LifeFunction>::~ValueOver(void *a1)
{
  *a1 = &unk_1EF1FE668;
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t CA::Render::EmitterBehaviors::ValueOver<CA::Render::EmitterBehaviors::DistanceFunction>::operator()(uint64_t a1, uint64_t a2, double a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  LODWORD(a3) = *(a2 + 32);
  v9[0] = CA::Render::EmitterBehaviors::DistanceFunction::operator()(a1 + 12, a3, *(a2 + 36));
  v8 = 0.0;
  result = (*(**(a1 + 80) + 128))(*(a1 + 80), 1, v9, 0, &v8, 0, 0, 0);
  if (result)
  {
    v6 = v8;
    if (*(a1 + 92))
    {
      v6 = 1.0 / v6;
    }

    v7 = *(a1 + 88);
    if (*(a1 + 93) == 1)
    {
      v6 = *(a2 + 4 * v7) * v6;
    }

    if (*(a1 + 94) == 1)
    {
      v6 = *(a2 + 4 * v7) + v6;
    }

    *(a2 + 4 * v7) = v6;
  }

  return result;
}

float CA::Render::EmitterBehaviors::DistanceFunction::operator()(uint64_t a1, double a2, float32x2_t a3)
{
  *&a2 = *&a2 - *(a1 + 4);
  v3 = vsub_f32(a3, *(a1 + 8));
  if (*a1 == 2)
  {
    v7 = vmul_f32(*(a1 + 20), v3);
    *&a2 = fabsf((v7.f32[0] + (*(a1 + 16) * *&a2)) + (v7.f32[1] + *(a1 + 28)));
  }

  else
  {
    if (*a1 == 1)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      v6 = vmul_f32(v5, v3);
      v6.f32[0] = (v6.f32[0] + (v4 * *&a2)) + v6.f32[1];
      *&a2 = *&a2 - (v6.f32[0] * v4);
      v3 = vmls_lane_f32(v3, v5, v6, 0);
    }

    *&a2 = fmaxf(vaddv_f32(vmul_f32(v3, v3)) + (*&a2 * *&a2), 0.0001);
    LODWORD(a2) = vrecpe_f32(vdup_lane_s32(vrsqrte_f32(vdup_lane_s32(*&a2, 0)), 0)).u32[0];
  }

  return (*&a2 - (*(a1 + 32) + *(a1 + 48))) * *(a1 + 52);
}

void CA::Render::EmitterBehaviors::ValueOver<CA::Render::EmitterBehaviors::DistanceFunction>::~ValueOver(void *ptr)
{
  *ptr = &unk_1EF1FE638;
  v2 = ptr[10];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, ptr);
}

void *CA::Render::EmitterBehaviors::ValueOver<CA::Render::EmitterBehaviors::DistanceFunction>::~ValueOver(void *a1)
{
  *a1 = &unk_1EF1FE638;
  v2 = a1[10];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

float CA::Render::EmitterBehaviors::Light::operator()(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, float32x4_t *a10)
{
  v10 = *(a2 + 32) - *(a1 + 36);
  v11 = vsub_f32(*(a2 + 36), *(a1 + 40));
  v12 = vmul_f32(v11, v11);
  *&a8 = (v12.f32[0] + (v10 * v10)) + v12.f32[1];
  v13 = (*&a8 - *(a1 + 48)) * *(a1 + 52);
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v14 = 1.0 - v13;
  if (*(a1 + 56) == 1)
  {
    *&a8 = fmaxf(*&a8, 0.0001);
    v15 = vmul_f32(*(a1 + 64), v11);
    v16 = -(*(a1 + 72) - (((v15.f32[0] + (*(a1 + 60) * v10)) + v15.f32[1]) * vrsqrte_f32(vdup_lane_s32(*&a8, 0)).f32[0])) * *(a1 + 76);
    if (v16 > 1.0)
    {
      v16 = 1.0;
    }

    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v14 = v16 * v14;
  }

  result = *(a1 + 28) + (*(a1 + 32) * v14);
  *a10 = vmlaq_n_f32(*a10, *(a1 + 12), result);
  return result;
}

void CA::Render::EmitterBehaviors::Light::~Light(CA::Render::EmitterBehaviors::Light *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

float CA::Render::EmitterBehaviors::Drag::operator()(uint64_t a1, float32x2_t *a2, float32x2_t *a3, double a4)
{
  LODWORD(a4) = *(a1 + 12);
  v4 = a2[7].f32[0];
  *a3 = vmls_lane_f32(*a3, a2[6], *&a4, 0);
  *&a4 = a3[1].f32[0] - (v4 * *&a4);
  a3[1].i32[0] = LODWORD(a4);
  return *&a4;
}

void CA::Render::EmitterBehaviors::Drag::~Drag(CA::Render::EmitterBehaviors::Drag *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

float32x4_t CA::Render::EmitterBehaviors::ColorOver<CA::Render::EmitterBehaviors::LifeFunction>::operator()(uint64_t a1, float32x4_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = (a2[3].f32[3] / a2[1].f32[2]);
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  if ((*(**(a1 + 16) + 128))(*(a1 + 16), 1, &v4, 0, &v5, 0, 0, 0))
  {
    result = vmulq_f32(a2[4], vcvt_hight_f32_f64(vcvt_f32_f64(v5), v6));
    a2[4] = result;
  }

  return result;
}

void CA::Render::EmitterBehaviors::ColorOver<CA::Render::EmitterBehaviors::LifeFunction>::~ColorOver(void *ptr)
{
  *ptr = &unk_1EF1FE608;
  v2 = ptr[2];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, ptr);
}

void *CA::Render::EmitterBehaviors::ColorOver<CA::Render::EmitterBehaviors::LifeFunction>::~ColorOver(void *a1)
{
  *a1 = &unk_1EF1FE608;
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

float32x4_t CA::Render::EmitterBehaviors::ColorOver<CA::Render::EmitterBehaviors::DistanceFunction>::operator()(uint64_t a1, uint64_t a2, double a3)
{
  v10 = *MEMORY[0x1E69E9840];
  LODWORD(a3) = *(a2 + 32);
  v6 = CA::Render::EmitterBehaviors::DistanceFunction::operator()(a1 + 12, a3, *(a2 + 36));
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  if ((*(**(a1 + 80) + 128))(*(a1 + 80), 1, &v6, 0, &v7, 0, 0, 0))
  {
    result = vmulq_f32(*(a2 + 64), vcvt_hight_f32_f64(vcvt_f32_f64(v7), v8));
    *(a2 + 64) = result;
  }

  return result;
}

void CA::Render::EmitterBehaviors::ColorOver<CA::Render::EmitterBehaviors::DistanceFunction>::~ColorOver(void *ptr)
{
  *ptr = &unk_1EF1FE5D8;
  v2 = ptr[10];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, ptr);
}

void *CA::Render::EmitterBehaviors::ColorOver<CA::Render::EmitterBehaviors::DistanceFunction>::~ColorOver(void *a1)
{
  *a1 = &unk_1EF1FE5D8;
  v2 = a1[10];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void CA::Render::EmitterBehaviors::AlignToMotion::operator()(uint64_t a1, float *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  if ((*(a1 + 16) & 1) == 0)
  {
    v20 = *(a1 + 12) + atan2f(v3, -v4);
    v6 = 1.0;
    v15 = 0.0;
LABEL_12:
    v22 = 0.0;
    goto LABEL_13;
  }

  v5 = a2[14];
  v6 = 1.0;
  v7 = 1.0 / sqrtf(((v3 * v3) + (v4 * v4)) + (v5 * v5));
  v8 = v7 * v3;
  v9 = v7 * v4;
  v10 = v7 * v5;
  v11 = *(a1 + 20);
  v12 = *(a1 + 24);
  v13 = *(a1 + 28);
  v14 = ((v8 * v11) + (v9 * v12)) + (v10 * v13);
  if (v14 > 1.0)
  {
    v14 = 1.0;
  }

  if (v14 < -1.0)
  {
    v14 = -1.0;
  }

  v15 = 0.0;
  if (fabsf(v14 + -1.0) <= 0.00001)
  {
    v20 = 0.0;
    goto LABEL_12;
  }

  v16 = -((v9 * v13) - (v10 * v12));
  v17 = -((v10 * v11) - (v8 * v13));
  v18 = -((v8 * v12) - (v9 * v11));
  v19 = ((v16 * v16) + (v17 * v17)) + (v18 * v18);
  if (fabsf(v19) <= 0.00001)
  {
    v20 = 3.1416;
    goto LABEL_12;
  }

  v20 = acosf(v14);
  v21 = 1.0 / sqrtf(v19);
  v15 = v21 * v16;
  v22 = v21 * v17;
  v6 = v21 * v18;
LABEL_13:
  a2[22] = v20;
  a2[28] = v15;
  a2[29] = v22;
  a2[30] = v6;
}

void CA::Render::EmitterBehaviors::AlignToMotion::~AlignToMotion(CA::Render::EmitterBehaviors::AlignToMotion *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

float32_t CA::Render::EmitterBehaviors::SimpleAttractor::operator()(uint64_t a1, float32x2_t *a2, float32x2_t *a3, double a4, double a5, double a6)
{
  v6 = vsub_f32(a2[4], *(a1 + 12));
  v7 = vaddv_f32(vmul_f32(v6, v6));
  if (v7 < *(a1 + 28))
  {
    *&a6 = fmaxf(v7, 0.0001);
    *a3 = vmla_n_f32(*a3, v6, -(((*(a1 + 32) * v7) + -1.0) * -(*(a1 + 20) - (*(a1 + 24) * vrsqrte_f32(vdup_lane_s32(*&a6, 0)).f32[0]))));
  }

  return v6.f32[0];
}

void CA::Render::EmitterBehaviors::SimpleAttractor::~SimpleAttractor(CA::Render::EmitterBehaviors::SimpleAttractor *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

float32_t CA::Render::EmitterBehaviors::Attractor::operator()(uint64_t a1, float32x2_t *a2, float32x2_t *a3, double a4, double a5, double a6, double a7)
{
  v7 = a2[4];
  v8 = vsub_f32(v7, *(a1 + 16));
  LODWORD(a7) = a2[5].i32[0];
  v9 = *&a7 - *(a1 + 24);
  v10 = *(a1 + 12);
  if (v10 == 2)
  {
    v16 = *(a1 + 36);
    v17 = *(a1 + 28);
    v18 = (vaddv_f32(vmul_f32(v17, v8)) + (v16 * v9)) + *(a1 + 40);
    v9 = *&a7 + (v18 * v16);
    *&a7 = fabsf(v18);
    v15 = v18 * v18;
    LODWORD(a7) = vrecpe_f32(vdup_lane_s32(*&a7, 0)).u32[0];
    v8 = vmla_n_f32(v7, v17, v18);
  }

  else
  {
    if (v10 == 1)
    {
      v11 = *(a1 + 36);
      v12 = *(a1 + 28);
      v13 = vmul_f32(v12, v8);
      v13.f32[0] = vaddv_f32(v13) + (v11 * v9);
      v8 = vmls_lane_f32(v8, v12, v13, 0);
      v9 = v9 - (v13.f32[0] * v11);
    }

    v14 = vmul_f32(v8, v8);
    v15 = (*&v14.i32[1] + (v9 * v9)) + *v14.i32;
    *v14.i32 = fmaxf(v15, 0.0001);
    LODWORD(a7) = vrsqrte_f32(vdup_lane_s32(v14, 0)).u32[0];
  }

  v19 = (v15 - *(a1 + 68)) * *(a1 + 72);
  if (v19 > 1.0)
  {
    v19 = 1.0;
  }

  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  v20 = (1.0 - v19) * -(*(a1 + 52) - (*(a1 + 56) * *&a7));
  *a3 = vmla_n_f32(*a3, v8, v20);
  result = a3[1].f32[0] + (v20 * v9);
  a3[1].f32[0] = result;
  return result;
}

void CA::Render::EmitterBehaviors::Attractor::~Attractor(CA::Render::EmitterBehaviors::Attractor *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

float64_t CA::Render::EmitterLayer::set_property(CA::Render::EmitterLayer *this, unint64_t a2, unsigned int *a3, const unsigned int *a4, CA::Render::Vector *a5, double *a6, const double *a7, float64x2_t a8)
{
  v11 = a3;
  v12 = a2;
  v59 = *MEMORY[0x1E69E9840];
  v14 = *a3;
  if (a2 >= 2 && v14 == 223)
  {
    cell = CA::Render::emitter_find_cell(*(this + 4), a3[1]);
    if (cell)
    {
      v16 = cell;
      v17 = v12 - 3;
      for (v11 += 2; ; v11 += 2)
      {
        v12 = v17 + 1;
        if (v17 == -1)
        {
          break;
        }

        v14 = *v11;
        v18 = CA::Render::cell_atom_param_index(v14);
        if (a5 && (v18 & 0x80000000) == 0)
        {
          v24 = v16 + 4 * v18;
          if (a4)
          {
            a8.f64[0] = *a6 + *(v24 + 72);
          }

          else
          {
            a8.f64[0] = *a6;
          }

          *a8.f64 = a8.f64[0];
          *(v24 + 72) = LODWORD(a8.f64[0]);
          return a8.f64[0];
        }

        if (!v17 || v14 != 223)
        {
          if (v14 == 101)
          {
            v25 = 23;
          }

          else
          {
            v25 = v18;
          }

          if (a5 >= 4 && (v25 & 0x80000000) == 0)
          {
            v26 = a6[3];
            v27 = v26 * *a6;
            *(v16 + 72 + 4 * v25) = v27;
            v28 = a6[1] * v26;
            *(v16 + 72 + 4 * (v25 + 1)) = v28;
            a8.f64[0] = a6[2] * v26;
            *a8.f64 = a8.f64[0];
            *(v16 + 72 + 4 * (v25 + 2)) = LODWORD(a8.f64[0]);
            *a8.f64 = v26;
            *(v16 + 72 + 4 * (v25 + 3)) = LODWORD(a8.f64[0]);
            return a8.f64[0];
          }

          goto LABEL_30;
        }

        v16 = CA::Render::emitter_find_cell(*(v16 + 40), v11[1]);
        v17 -= 2;
        if (!v16)
        {
          return a8.f64[0];
        }
      }
    }

    return a8.f64[0];
  }

  if (a2 < 2 || v14 != 222)
  {
LABEL_30:
    if (a5 && v12 == 1)
    {
      v57.f64[0] = 0.0;
      v29 = CA::Render::emitter_atom_param_index(v14, &v57, a3);
      if ((v29 & 0x80000000) == 0)
      {
        v30 = v57.f64[0];
        if (*&v57.f64[0] - 1 < a5)
        {
          v31 = 0;
          v32 = this + 76;
          v33 = v29;
          do
          {
            if (a4)
            {
              a8.f64[0] = *a6 + *&v32[4 * v33];
              v34 = v33;
            }

            else
            {
              a8.f64[0] = *a6;
              v34 = v31 + v29;
            }

            *a8.f64 = a8.f64[0];
            *&v32[4 * v34] = LODWORD(a8.f64[0]);
            ++v31;
            ++a6;
            ++v33;
            --*&v30;
          }

          while (v30 != 0.0);
        }
      }

      return a8.f64[0];
    }

    if (v12 < 2)
    {
      return a8.f64[0];
    }

    goto LABEL_41;
  }

  behavior = CA::Render::emitter_find_behavior(*(this + 5), a3[1]);
  if (!behavior)
  {
    LODWORD(v14) = *v11;
LABEL_41:
    switch(v14)
    {
      case 0xAE:
        v49 = *(this + 128);
        v50 = vcvtq_f64_f32(v49);
        v51 = vcvtq_f64_f32(vsub_f32(*(this + 136), v49));
        v57 = v50;
        v58 = v51;
        CA::Render::set_rect_property(v57.f64, (v12 - 1), v11 + 1, a4, a5, a6, a7);
        a8 = vcvt_hight_f32_f64(vcvt_f32_f64(v57), vaddq_f64(v58, v57));
        *(this + 8) = a8;
        break;
      case 0xE7:
        a8 = vcvtq_f64_f32(*(this + 100));
        if (v12 == 2)
        {
          v47 = v11[1];
          if (a5 && v47 == 753)
          {
            if (a4)
            {
              v48 = *a6 + a8.f64[0];
            }

            else
            {
              v48 = *a6;
            }

            a8.f64[0] = v48;
          }

          else if (a5 && v47 == 295)
          {
            if (a4)
            {
              v54 = *a6 + a8.f64[1];
            }

            else
            {
              v54 = *a6;
            }

            a8.f64[1] = v54;
          }
        }

        *&a8.f64[0] = vcvt_f32_f64(a8);
        *(this + 100) = a8.f64[0];
        break;
      case 0xE4:
        a8 = vcvtq_f64_f32(*(this + 88));
        if (v12 == 2)
        {
          v35 = v11[1];
          if (a5 && v35 == 756)
          {
            if (a4)
            {
              v36 = *a6 + a8.f64[0];
            }

            else
            {
              v36 = *a6;
            }

            a8.f64[0] = v36;
          }

          else if (a5 && v35 == 760)
          {
            if (a4)
            {
              v55 = *a6 + a8.f64[1];
            }

            else
            {
              v55 = *a6;
            }

            a8.f64[1] = v55;
          }
        }

        *&a8.f64[0] = vcvt_f32_f64(a8);
        *(this + 11) = *&a8.f64[0];
        break;
    }

    return a8.f64[0];
  }

  v21 = behavior;
  if (v12 == 4)
  {
    v37 = v11[3];
    if ((v37 & 0x40000000) == 0)
    {
      return a8.f64[0];
    }

    if (a5 != 1)
    {
      return a8.f64[0];
    }

    v38 = *(behavior + 32);
    if (!v38)
    {
      return a8.f64[0];
    }

    named_object = CA::Render::KeyValueArray::find_named_object_(*(behavior + 32), v11[2]);
    if ((named_object & 0x80000000) != 0)
    {
      return a8.f64[0];
    }

    v41 = *(*(v38 + 8 * named_object + 24) + 24);
    if (!v41)
    {
      return a8.f64[0];
    }

    if (*(v41 + 12) != 62)
    {
      return a8.f64[0];
    }

    v42 = v37 & 0xFFFFFFFFBFFFFFFFLL;
    v43 = *(v41 + 16);
    if (v42 >= v43)
    {
      return a8.f64[0];
    }

    v44 = CA::Render::Vector::new_vector(v43, (v41 + 24), v40);
    *&v44[2 * v42 + 6] = *a6;
    CA::Render::KeyValueArray::set_key(*(v21 + 32), v11[2], v44);
    if (atomic_fetch_add(v44 + 2, 0xFFFFFFFF) != 1)
    {
      return a8.f64[0];
    }

    v45 = *(*v44 + 16);
    v46 = v44;
    goto LABEL_72;
  }

  if (v12 != 3)
  {
    return a8.f64[0];
  }

  if (a5 == 1 && v11[2] == 234)
  {
    a8.f64[0] = *a6;
    v22 = *(behavior + 12);
    if (*a6 <= 0.5)
    {
      v23 = v22 & 0xFFFFFEFF;
    }

    else
    {
      v23 = v22 | 0x100;
    }

    *(behavior + 12) = v23;
    return a8.f64[0];
  }

  if (*(behavior + 32))
  {
    v52 = CA::Render::Vector::new_vector(a5, a6, v20);
    CA::Render::KeyValueArray::set_key(*(v21 + 32), v11[2], v52);
    v53 = *(v21 + 40);
    if (v53)
    {
      (*(*v53 + 8))(v53);
      *(v21 + 40) = 0;
    }

    if (v52 && atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
    {
      v45 = *(*v52 + 16);
      v46 = v52;
LABEL_72:

      v45(v46);
    }
  }

  return a8.f64[0];
}

uint64_t CA::Render::emitter_find_cell(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 16);
    if ((a2 & 0x40000000) != 0)
    {
      if ((a2 & 0xBFFFFFFF) < v4)
      {
        v8 = a1 + 8 * (a2 & 0xBFFFFFFF) + 24;
        return *v8;
      }
    }

    else if (v4)
    {
      v5 = 0;
      v6 = a1 + 24;
      while (1)
      {
        v7 = *(*(v6 + 8 * v5) + 16);
        if (v7)
        {
          if (CA::Render::String::equal(v7, a2))
          {
            break;
          }
        }

        if (v4 == ++v5)
        {
          return 0;
        }
      }

      v8 = v6 + 8 * v5;
      return *v8;
    }

    return 0;
  }

  return v2;
}

uint64_t CA::Render::cell_atom_param_index(uint64_t this)
{
  if (this > 518)
  {
    if (this > 621)
    {
      if (this <= 737)
      {
        if (this > 672)
        {
          if (this == 673)
          {
            return 21;
          }

          if (this == 675)
          {
            return 22;
          }
        }

        else
        {
          if (this == 622)
          {
            return 14;
          }

          if (this == 623)
          {
            return 15;
          }
        }
      }

      else if (this <= 756)
      {
        if (this == 738)
        {
          return 6;
        }

        if (this == 739)
        {
          return 7;
        }
      }

      else
      {
        switch(this)
        {
          case 0x2F5:
            return 8;
          case 0x2F9:
            return 9;
          case 0x2FB:
            return 10;
        }
      }
    }

    else if (this <= 595)
    {
      if (this > 544)
      {
        if (this == 545)
        {
          return 17;
        }

        if (this == 546)
        {
          return 18;
        }
      }

      else
      {
        if (this == 519)
        {
          return 35;
        }

        if (this == 544)
        {
          return 16;
        }
      }
    }

    else if (this <= 615)
    {
      if (this == 596)
      {
        return 27;
      }

      if (this == 597)
      {
        return 31;
      }
    }

    else
    {
      switch(this)
      {
        case 0x268:
          return 19;
        case 0x26A:
          return 20;
        case 0x26D:
          return 13;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (this > 218)
  {
    if (this > 289)
    {
      if (this <= 472)
      {
        if (this == 290)
        {
          return 32;
        }

        if (this == 472)
        {
          return 1;
        }
      }

      else
      {
        switch(this)
        {
          case 0x1D9:
            return 2;
          case 0x1FB:
            return 11;
          case 0x1FC:
            return 12;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (this > 220)
    {
      if (this == 221)
      {
        return 5;
      }

      if (this == 289)
      {
        return 28;
      }

      return 0xFFFFFFFFLL;
    }

    if (this == 219)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else if (this <= 38)
  {
    if (this <= 36)
    {
      if (this == 27)
      {
        return 30;
      }

      if (this == 29)
      {
        return 34;
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (this > 71)
    {
      switch(this)
      {
        case 0x48:
          return 29;
        case 0x49:
          return 33;
        case 0x97:
          return 36;
      }

      return 0xFFFFFFFFLL;
    }

    if (this != 39)
    {
      if (this == 69)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return this;
}

uint64_t CA::Render::emitter_find_behavior(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 16);
    if ((a2 & 0x40000000) != 0)
    {
      if ((a2 & 0xBFFFFFFF) < v4)
      {
        v8 = a1 + 8 * (a2 & 0xBFFFFFFF) + 24;
        return *v8;
      }
    }

    else if (v4)
    {
      v5 = 0;
      v6 = a1 + 24;
      while (1)
      {
        v7 = *(*(v6 + 8 * v5) + 24);
        if (v7)
        {
          if (CA::Render::String::equal(v7, a2))
          {
            break;
          }
        }

        if (v4 == ++v5)
        {
          return 0;
        }
      }

      v8 = v6 + 8 * v5;
      return *v8;
    }

    return 0;
  }

  return v2;
}

uint64_t CA::Render::emitter_atom_param_index(CA::Render *this, void *a2, unint64_t *a3)
{
  *a2 = 1;
  if (this > 230)
  {
    if (this <= 620)
    {
      switch(this)
      {
        case 0xE7:
          *a2 = 2;
          return 6;
        case 0xE8:
          return 5;
        case 0x1D8:
          return 1;
      }
    }

    else if (this > 673)
    {
      if (this == 674)
      {
        return 12;
      }

      if (this == 738)
      {
        return 9;
      }
    }

    else
    {
      if (this == 621)
      {
        return 10;
      }

      if (this == 673)
      {
        return 11;
      }
    }
  }

  else if (this <= 173)
  {
    switch(this)
    {
      case 0x45:
        return 0;
      case 0xAC:
        return 18;
      case 0xAD:
        return 17;
    }
  }

  else if (this > 224)
  {
    if (this == 225)
    {
      return 2;
    }

    if (this == 228)
    {
      *a2 = 2;
      return 3;
    }
  }

  else
  {
    if (this == 174)
    {
      *a2 = 4;
      return 13;
    }

    if (this == 224)
    {
      return 8;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t CA::Render::EmitterLayer::get_property(CA::Render::EmitterLayer *this, unint64_t a2, unsigned int *a3, unint64_t a4, double *a5, double **a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4 < 4)
  {
    return 0;
  }

  v8 = a5;
  v10 = a3;
  v6 = a2;
  if (a6)
  {
    *a6 = a5;
  }

  v12 = *a3;
  if (a2 >= 2 && v12 == 223)
  {
    cell = CA::Render::emitter_find_cell(*(this + 4), a3[1]);
    if (cell)
    {
      v14 = cell;
      v15 = v6 - 3;
      for (v10 += 2; ; v10 += 2)
      {
        v6 = v15 + 1;
        if (v15 == -1)
        {
          break;
        }

        v16 = *v10;
        v17 = CA::Render::cell_atom_param_index(*v10);
        if ((v17 & 0x80000000) == 0)
        {
          v20 = *(v14 + 4 * v17 + 72);
          goto LABEL_26;
        }

        if (!v15 || v16 != 223)
        {
          if (v16 != 101)
          {
            goto LABEL_30;
          }

          v21 = *(v14 + 176);
          *v8 = vcvtq_f64_f32(vmul_n_f32(*(v14 + 164), 1.0 / v21));
          v8[2] = (*(v14 + 172) * (1.0 / v21));
          v8[3] = v21;
          return 4;
        }

        v14 = CA::Render::emitter_find_cell(*(v14 + 40), v10[1]);
        v15 -= 2;
        if (!v14)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (a2 < 2 || v12 != 222 || (behavior = CA::Render::emitter_find_behavior(*(this + 5), a3[1])) == 0)
  {
LABEL_30:
    if (!v6)
    {
      return v6;
    }

    if (v6 == 1)
    {
      *&v38[0] = 0;
      v22 = CA::Render::emitter_atom_param_index(*v10, v38, a3);
      if ((v22 & 0x80000000) == 0)
      {
        v23 = *&v38[0];
        if (*&v38[0])
        {
          if (*&v38[0] >= a4)
          {
            v23 = a4;
          }

          if (v23 <= 1)
          {
            v23 = 1;
          }

          v24 = (this + 4 * v22 + 76);
          do
          {
            v25 = *v24++;
            *v8++ = v25;
            --v23;
          }

          while (v23);
        }
      }

      return 0;
    }

    v26 = *v10;
    if (*v10 == 174)
    {
      v33 = *(this + 128);
      v34 = vcvtq_f64_f32(v33);
      v35 = vcvtq_f64_f32(vsub_f32(*(this + 136), v33));
      v38[0] = v34;
      v38[1] = v35;
      return CA::Render::get_rect_property(v38, (v6 - 1), v10 + 1, v8, a5);
    }

    if (v26 == 231)
    {
      if (v6 != 2)
      {
        return 0;
      }

      v27 = vcvtq_f64_f32(*(this + 100));
      v32 = v10[1];
      if (v32 != 753)
      {
        if (v32 != 295)
        {
          return 0;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v26 != 228 || v6 != 2)
      {
        return 0;
      }

      v27 = vcvtq_f64_f32(*(this + 88));
      v28 = v10[1];
      if (v28 != 756)
      {
        if (v28 != 760)
        {
          return 0;
        }

LABEL_58:
        v27.f64[0] = v27.f64[1];
      }
    }

    *v8 = v27.f64[0];
    return 1;
  }

  if (v6 == 4)
  {
    v29 = v10[3];
    if ((v29 & 0x40000000) == 0)
    {
      return 0;
    }

    v6 = *(behavior + 32);
    if (!v6)
    {
      return v6;
    }

    named_object = CA::Render::KeyValueArray::find_named_object_(*(behavior + 32), v10[2]);
    if ((named_object & 0x80000000) != 0)
    {
      return 0;
    }

    v31 = *(*(v6 + 8 * named_object + 24) + 24);
    if (!v31 || *(v31 + 12) != 62 || (v29 & 0xBFFFFFFF) >= *(v31 + 16))
    {
      return 0;
    }

    v20 = *(v31 + 8 * (v29 & 0xFFFFFFFFBFFFFFFFLL) + 24);
LABEL_26:
    *v8 = v20;
    return 1;
  }

  if (v6 == 3)
  {
    v19 = v10[2];
    if (v19 != 234)
    {
      v6 = *(behavior + 32);
      if (!v6)
      {
        return v6;
      }

      v36 = CA::Render::KeyValueArray::find_named_object_(*(behavior + 32), v19);
      if ((v36 & 0x80000000) == 0)
      {
        v6 = *(*(v6 + 8 * v36 + 24) + 24);
        if (!v6)
        {
          return v6;
        }

        if (*(v6 + 12) == 62)
        {
          v37 = *(v6 + 16);
          if (v37 <= a4)
          {
            memcpy(v8, (v6 + 24), 8 * v37);
            return *(v6 + 16);
          }
        }
      }

      return 0;
    }

    v20 = 1.0;
    if ((*(behavior + 12) & 0x100) == 0)
    {
      v20 = 0.0;
    }

    goto LABEL_26;
  }

  return 0;
}

uint64_t CA::Render::EmitterLayer::set_keypath_object(uint64_t this, void *const *a2, CA::Render::Object *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a3;
    v6 = this;
    if (v3)
    {
      v7 = v3 >> 1;
    }

    else
    {
      if (!*v3)
      {
        return this;
      }

      v7 = *(v3 + 4);
    }

    if (v7 == 223)
    {
      v10 = *(this + 32);
      if (v3)
      {
        v11 = HIDWORD(v3);
      }

      else if (*v3 < 2u)
      {
        LODWORD(v11) = 0;
      }

      else
      {
        LODWORD(v11) = *(v3 + 8);
      }

      this = CA::Render::emitter_find_cell(v10, v11);
      if (this)
      {
        v12 = this;
        for (i = 0; ; i += 2)
        {
          v14 = *a2;
          if (!*a2 || (v14 & 1) != 0)
          {
            break;
          }

          if (i + 2 >= *v14 || (v15 = &v14[i], v15[3] != 223))
          {
            if (i + 2 < *v14 && v14[i + 3] == 131)
            {
              if (v4)
              {
                v17 = 0;
                v18 = *(v4 + 12);
                do
                {
                  v19 = CA::Render::texture_types[v17];
                }

                while (v19 != v18 && v17++ != 5);
                if (v19 != v18)
                {
                  v4 = 0;
                }
              }

              this = *(v12 + 24);
              if (this != v4)
              {
                if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
                {
                  this = (*(*this + 16))(this);
                }

                if (v4)
                {
                  v21 = (v4 + 8);
                  if (!atomic_fetch_add(v4 + 2, 1u))
                  {
                    v4 = 0;
                    atomic_fetch_add(v21, 0xFFFFFFFF);
                  }
                }

                *(v12 + 24) = v4;
              }
            }

            return this;
          }

          if (i + 3 >= *v14)
          {
            v16 = 0;
          }

          else
          {
            v16 = v15[4];
          }

          this = CA::Render::emitter_find_cell(*(v12 + 40), v16);
          if (!this)
          {
            return this;
          }

          v12 = this;
        }
      }
    }

    else if (v7 == 229)
    {
      if (!a3 || *(a3 + 12) == 62)
      {
        this = *(this + 56);
        if (this != a3)
        {
          if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
          {
            this = (*(*this + 16))(this);
          }

          if (v4)
          {
            v9 = (v4 + 8);
            if (!atomic_fetch_add(v4 + 2, 1u))
            {
              v4 = 0;
              atomic_fetch_add(v9, 0xFFFFFFFF);
            }
          }

          *(v6 + 56) = v4;
        }
      }
    }

    else if (v7 == 227 && (!a3 || *(a3 + 12) == 38))
    {
      this = *(this + 48);
      if (this != a3)
      {
        if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
        {
          this = (*(*this + 16))(this);
        }

        if (v4)
        {
          v8 = (v4 + 8);
          if (!atomic_fetch_add(v4 + 2, 1u))
          {
            v4 = 0;
            atomic_fetch_add(v8, 0xFFFFFFFF);
          }
        }

        *(v6 + 48) = v4;
      }
    }
  }

  return this;
}

uint64_t CA::Render::EmitterLayer::get_keypath_object(CA::Render::EmitterLayer *this, void *const *a2)
{
  v2 = *a2;
  if (!*a2)
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
      return 0;
    }

    v4 = *(v2 + 4);
  }

  if (v4 != 223)
  {
    if (v4 == 229)
    {
      v6 = this + 56;
      return *v6;
    }

    if (v4 == 227)
    {
      v6 = this + 48;
      return *v6;
    }

    return 0;
  }

  v7 = *(this + 4);
  if (v2)
  {
    v8 = HIDWORD(v2);
  }

  else if (*v2 < 2u)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    LODWORD(v8) = *(v2 + 8);
  }

  result = CA::Render::emitter_find_cell(v7, v8);
  if (result)
  {
    for (i = 0; ; i += 2)
    {
      v10 = *a2;
      if (!*a2 || (v10 & 1) != 0)
      {
        break;
      }

      if (i + 2 >= *v10 || (v11 = &v10[i], v11[3] != 223))
      {
        if (i + 2 < *v10 && v10[i + 3] == 131)
        {
          v6 = (result + 24);
          return *v6;
        }

        return 0;
      }

      if (i + 3 >= *v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11[4];
      }

      result = CA::Render::emitter_find_cell(*(result + 40), v12);
      if (!result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

BOOL CA::Render::EmitterLayer::keypath_is_object(CA::Render::EmitterLayer *this, void *const *a2)
{
  v2 = *a2;
  if (!*a2)
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
      return 0;
    }

    v4 = *(v2 + 4);
  }

  v5 = 1;
  if (v4 == 229 || v4 == 227)
  {
    return v5;
  }

  if (v4 != 223)
  {
    return 0;
  }

  v6 = *(this + 4);
  if (v2)
  {
    v7 = HIDWORD(v2);
  }

  else
  {
    LODWORD(v7) = *v2 < 2u ? 0 : *(v2 + 8);
  }

  cell = CA::Render::emitter_find_cell(v6, v7);
  if (!cell)
  {
    return 0;
  }

  for (i = 0; ; i += 2)
  {
    v10 = *a2;
    if (!*a2)
    {
      break;
    }

    if (v10)
    {
      LODWORD(v10) = v10 >> 1;
      if (i != -2)
      {
        LODWORD(v10) = 0;
      }

      return v10 == 131;
    }

    if (i + 2 >= *v10 || (v11 = &v10[i], v11[3] != 223))
    {
      if (i + 2 >= *v10)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        LODWORD(v10) = v10[i + 3];
      }

      return v10 == 131;
    }

    if (i + 3 >= *v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11[4];
    }

    cell = CA::Render::emitter_find_cell(*(cell + 40), v12);
    if (!cell)
    {
      return 0;
    }
  }

  return v10 == 131;
}

void CA::Render::EmitterState::~EmitterState(CA::Render::EmitterState *this)
{
  CA::Render::EmitterState::~EmitterState(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1FE3A8;
  os_unfair_lock_lock(&CA::Render::EmitterState::_list_lock);
  v2 = CA::Render::EmitterState::_list;
  if (CA::Render::EmitterState::_list)
  {
    if (CA::Render::EmitterState::_list == this)
    {
      v4 = &CA::Render::EmitterState::_list;
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

  os_unfair_lock_unlock(&CA::Render::EmitterState::_list_lock);
  CA::Render::EmitterState::free_cells_state(this, this + 112);
  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  --dword_1ED4EAA78;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v5);
  }
}

void CA::Render::EmitterLayer::copy(CA::Render::EmitterLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA8uLL, 0xDEEC3011uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = 1;
    v4[3] = 15;
    ++dword_1ED4EAA74;
    *v4 = &unk_1EF1FE230;
    v6 = *(this + 3);
    *(v4 + 2) = *(this + 2);
    if (v6)
    {
      v7 = (v6 + 8);
      if (!atomic_fetch_add((v6 + 8), 1u))
      {
        v6 = 0;
        atomic_fetch_add(v7, 0xFFFFFFFF);
      }
    }

    *(v4 + 3) = v6;
    CA::Render::emitter_cells_copy(v4 + 4, *(this + 4));
    CA::Render::emitter_behaviors_copy(v5 + 5, *(this + 5));
    v8 = *(this + 6);
    if (v8)
    {
      v9 = (v8 + 8);
      if (!atomic_fetch_add((v8 + 8), 1u))
      {
        v8 = 0;
        atomic_fetch_add(v9, 0xFFFFFFFF);
      }
    }

    *(v5 + 6) = v8;
    v10 = *(this + 7);
    if (v10)
    {
      v11 = (v10 + 8);
      if (!atomic_fetch_add((v10 + 8), 1u))
      {
        v10 = 0;
        atomic_fetch_add(v11, 0xFFFFFFFF);
      }
    }

    *(v5 + 7) = v10;
    *(v5 + 8) = *(this + 8);
    v5[18] = *(this + 18);
    v5[38] = *(this + 38);
    *(v5 + 20) = *(this + 20);
    v5[3] |= *(this + 3) & 0xFFFFFF00;
    *(v5 + 19) = *(this + 76);
    v12 = *(this + 92);
    v13 = *(this + 108);
    v14 = *(this + 124);
    *(v5 + 34) = *(this + 136);
    *(v5 + 31) = v14;
    *(v5 + 27) = v13;
    *(v5 + 23) = v12;
  }

  *a2 = v5;
}

void CA::Render::emitter_cells_copy(void *a1, uint64_t a2)
{
  v2 = a1;
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_29;
  }

  v4 = *(a2 + 16);
  if (v4 < 0x201)
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v27 - ((v5 + 15) & 0xFFFFFFFF0);
    bzero(v6, v5);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_29:
    v7 = 0;
    goto LABEL_30;
  }

  v6 = malloc_type_malloc(8 * v4, 0xF12849A5uLL);
  if (!v6)
  {
    goto LABEL_29;
  }

LABEL_4:
  v28 = v4;
  v29 = v2;
  v7 = 0;
  v8 = (a2 + 24);
  do
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xE8uLL, 0xDEEC3011uLL);
    v10 = v9;
    if (v9)
    {
      v11 = *v8;
      v9[2] = 1;
      v9[3] = 14;
      ++dword_1ED4EAA70;
      *v9 = &unk_1EF1FE338;
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v12 + 8);
        if (!atomic_fetch_add((v12 + 8), 1u))
        {
          v12 = 0;
          atomic_fetch_add(v13, 0xFFFFFFFF);
        }
      }

      *(v9 + 2) = v12;
      v14 = *(v11 + 24);
      if (v14)
      {
        v15 = (v14 + 8);
        if (!atomic_fetch_add((v14 + 8), 1u))
        {
          v14 = 0;
          atomic_fetch_add(v15, 0xFFFFFFFF);
        }
      }

      *(v9 + 3) = v14;
      v16 = *(v11 + 32);
      if (v16)
      {
        v17 = (v16 + 8);
        if (!atomic_fetch_add((v16 + 8), 1u))
        {
          v16 = 0;
          atomic_fetch_add(v17, 0xFFFFFFFF);
        }
      }

      *(v9 + 4) = v16;
      CA::Render::emitter_cells_copy(v9 + 10, *(v11 + 40));
      CA::Render::emitter_behaviors_copy(v10 + 6, *(v11 + 48));
      v18 = *(v11 + 56);
      if (v18)
      {
        v19 = (v18 + 8);
        if (!atomic_fetch_add((v18 + 8), 1u))
        {
          v18 = 0;
          atomic_fetch_add(v19, 0xFFFFFFFF);
        }
      }

      *(v10 + 7) = v18;
      *(v10 + 8) = *(v11 + 64);
      v10[3] |= *(v11 + 12) & 0xFFFFFF00;
      v20 = *(v11 + 72);
      *(v10 + 22) = *(v11 + 88);
      *(v10 + 18) = v20;
      v21 = *(v11 + 104);
      v22 = *(v11 + 120);
      v23 = *(v11 + 136);
      *(v10 + 38) = *(v11 + 152);
      *(v10 + 34) = v23;
      *(v10 + 30) = v22;
      *(v10 + 26) = v21;
      v24 = *(v11 + 168);
      v25 = *(v11 + 184);
      v26 = *(v11 + 200);
      *(v10 + 54) = *(v11 + 216);
      *(v10 + 50) = v26;
      *(v10 + 46) = v25;
      *(v10 + 42) = v24;
    }

    *&v6[8 * v7] = v10;
    if (v10)
    {
      ++v7;
    }

    ++v8;
    --v4;
  }

  while (v4);
  if (v7)
  {
    v7 = CA::Render::Array::new_array(v7, v6, 0, 0);
  }

  v2 = v29;
  if (v28 >= 0x201)
  {
    free(v6);
  }

LABEL_30:
  *v2 = v7;
}

void CA::Render::emitter_behaviors_copy(void *a1, size_t size)
{
  v2 = a1;
  v19 = *MEMORY[0x1E69E9840];
  if (!size)
  {
    goto LABEL_23;
  }

  v4 = *(size + 16);
  if (v4 < 0x201)
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v16 - ((v5 + 15) & 0xFFFFFFFF0);
    bzero(v6, v5);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  v6 = malloc_type_malloc(8 * v4, 0xA7DDCDFDuLL);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_4:
  v17 = v4;
  v18 = v2;
  v7 = 0;
  v8 = (size + 24);
  do
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x30uLL, 0xDEEC3011uLL);
    v10 = v9;
    if (v9)
    {
      v11 = *v8;
      v9[2] = 1;
      v9[3] = 13;
      ++dword_1ED4EAA6C;
      *v9 = &unk_1EF1FE418;
      v9[4] = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v12)
      {
        v13 = (v12 + 8);
        if (!atomic_fetch_add((v12 + 8), 1u))
        {
          v12 = 0;
          atomic_fetch_add(v13, 0xFFFFFFFF);
        }
      }

      *(v9 + 3) = v12;
      v14 = *(v11 + 32);
      if (v14)
      {
        v15 = CA::Render::Array::new_array(v14[4], v14 + 6, 1, v14[3] >> 8);
      }

      else
      {
        v15 = 0;
      }

      *(v10 + 4) = v15;
      *(v10 + 5) = 0;
      v10[3] |= *(v11 + 12) & 0xFFFFFF00;
    }

    *&v6[8 * v7] = v10;
    if (v10)
    {
      ++v7;
    }

    ++v8;
    --v4;
  }

  while (v4);
  if (v7)
  {
    v7 = CA::Render::Array::new_array(v7, v6, 0, 0);
  }

  v2 = v18;
  if (v17 >= 0x201)
  {
    free(v6);
  }

LABEL_24:
  *v2 = v7;
}

char *CA::Render::EmitterBehavior::show(uint64_t a1, X::Stream *a2, int a3, char a4)
{
  v8 = [(__CFString *)CAAtomGetString(*(a1 + 16)) cStringUsingEncoding:4];
  if (a4)
  {
    return X::Stream::printf(a2, "(emitter-behavior %s)", v8);
  }

  X::Stream::printf(a2, "(emitter-behavior %s", v8);
  if ((*(a1 + 13) & 1) == 0)
  {
    X::Stream::printf(a2, "\n%*s", 2 * a3 + 2, "");
    X::Stream::printf(a2, "(enabled false)");
  }

  if (*(a1 + 32))
  {
    X::Stream::printf(a2, "\n%*s", 2 * (a3 + 1), "");
    X::Stream::printf(a2, "(values ");
    CA::Render::show_object(a2, *(a1 + 32));
    X::Stream::printf(a2, ")");
  }

  return X::Stream::printf(a2, ")");
}

void CA::Render::EmitterBehavior::~EmitterBehavior(CA::Render::EmitterBehavior *this, const CA::Render::Object *a2)
{
  CA::Render::EmitterBehavior::~EmitterBehavior(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FE418;
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 3);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  --dword_1ED4EAA6C;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void CA::Render::EmitterCell::~EmitterCell(CA::Render::EmitterCell *this, const CA::Render::Object *a2)
{
  CA::Render::EmitterCell::~EmitterCell(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FE338;
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

  v5 = *(this + 5);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 4);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(this + 3);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(this + 2);
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 16))(v8);
  }

  --dword_1ED4EAA70;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

atomic_uint *CA::Render::MetalTexture::unref_image_data(atomic_uint *this)
{
  add = atomic_fetch_add(this + 30, 0xFFFFFFFF);
  if (this)
  {
    if (add == 1)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

char *CA::Render::MetalTexture::show(uint64_t a1, X::Stream *a2, uint64_t a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  [*(a1 + 112) pixelFormat];
  Name = MTLPixelFormatGetName();
  if (a4)
  {
    return X::Stream::printf(a2, "<metal-texture [%d %d] [%s]>");
  }

  X::Stream::printf(a2, "(metal-texture [%d %d] %s", v7, v8, Name);
  if (*(a1 + 56))
  {
    if ((*(a1 + 14) & 8) != 0)
    {
      X::Stream::printf(a2, " colormatching-disabled");
    }

    v10 = CGColorSpaceCopyICCProfileDescription();
    if (v10)
    {
      v11 = v10;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *buffer = 0u;
      v14 = 0u;
      CFStringGetCString(v10, buffer, 127, 0x8000100u);
      if (buffer[0])
      {
        X::Stream::printf(a2, " (colorspace %s)", buffer);
      }

      CFRelease(v11);
    }
  }

  return X::Stream::printf(a2, ")");
}

uint64_t CA::Render::MetalTexture::finalize(CA::Render::MetalTexture *this)
{
  CA::Render::post_notification(3u, this, 0, 1);
  v2 = *(*this + 200);

  return v2(this);
}

void CA::Render::MetalTexture::~MetalTexture(id *this)
{
  CA::Render::MetalTexture::~MetalTexture(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1FE698;

  --dword_1ED4EAAC8;

  CA::Render::Texture::~Texture(this);
}

void sub_183D419E0(_Unwind_Exception *a1)
{
  --dword_1ED4EAAC8;
  CA::Render::Texture::~Texture(v1);
  _Unwind_Resume(a1);
}

CA::Render::MetalTexture *CA::Render::MetalTexture::MetalTexture(CA::Render::MetalTexture *this, objc_object *a2)
{
  CA::Render::Texture::Texture(this, [(objc_object *)a2 width], [(objc_object *)a2 height]);
  *(this + 12) = 36;
  ++dword_1ED4EAAC8;
  *this = &unk_1EF1FE698;
  *(this + 14) = a2;
  *(this + 3) |= 0x40000u;
  *(this + 30) = 1;
  return this;
}

void sub_183D41AAC(_Unwind_Exception *a1)
{
  --*(v2 + 2760);
  CA::Render::Texture::~Texture(v1);
  _Unwind_Resume(a1);
}

CA::Render::MetalTexture *CA::Render::MetalTexture::decode(CA::Render::MetalTexture *this, CA::Render::Decoder *a2)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x80uLL, 0xDEEC3011uLL);
  if (result)
  {
    return CA::Render::MetalTexture::MetalTexture(result, 0);
  }

  return result;
}

uint64_t CA::OGL::PerformanceHUD::CounterInfo::set_display_mode(uint64_t result, int a2)
{
  if (*(result + 48) != a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      if (*v4)
      {
        MEMORY[0x1865EA980](*v4, 0x1000C80F7F8B94BLL);
      }

      result = MEMORY[0x1865EA9A0](v4, 0x20C40960023A9);
      *(v3 + 24) = 0;
    }

    if (a2 == 3)
    {
      operator new();
    }

    *(v3 + 48) = a2;
  }

  return result;
}

float CA::OGL::PerformanceHUD::initialize_timebase(CA::OGL::PerformanceHUD *this)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  mach_timebase_info(v4);
  LODWORD(v2) = v4[0].denom;
  LODWORD(v1) = v4[0].numer;
  *&v1 = v1 * 0.000001 / v2;
  CA::OGL::PerformanceHUD::_scale_ticks_to_ms = v1;
  result = 1.0 / *&v1;
  CA::OGL::PerformanceHUD::_scale_ms_to_ticks = LODWORD(result);
  return result;
}

float CA::OGL::PerformanceHUD::register_counter(CA::OGL::PerformanceHUD *a1, int a2, unsigned int a3, uint64_t a4, int a5)
{
  if (a3 >= 0x35)
  {
    __assert_rtn("register_counter", "ogl-performance-hud.cpp", 569, "counter_index < _num_counters");
  }

  v6 = a1 + 64 * a3;
  if (!*(v6 + 223))
  {
    v7 = v6 + 848;
    *(v6 + 110) = a4;
    *(v6 + 222) = a2;
    *(v6 + 223) = a5;
    *(v6 + 108) = 1;
    CA::OGL::PerformanceHUD::CounterInfo::set_display_mode((v6 + 848), 1);
    *(v7 + 14) = 0;
    v7[60] = 0;

    return CA::OGL::PerformanceHUD::layout(a1);
  }

  return result;
}

float CA::OGL::PerformanceHUD::layout(CA::OGL::PerformanceHUD *this)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v2 = *&dword_1ED4E96A4 >> 16;
  v3 = *&dword_1ED4E96A4;
  v4 = v3;
  v5 = (v2 + 360);
  *(this + 1132) = v5;
  *(this + 1133) = v3;
  v6 = (this + 896);
  v7 = 53;
  v8 = v3;
  do
  {
    if (*(v6 - 1) && ((*(this + 1136) >> *(v6 - 2)) & 1) != 0)
    {
      v9 = *v6 - 1;
      v10 = 0.0;
      if (v9 <= 2)
      {
        v10 = flt_183E2DAB8[v9];
      }

      v8 = v8 + v10;
      *(this + 1133) = v8;
    }

    v6 += 16;
    --v7;
  }

  while (v7);
  if ((*(this + 4544) & 0x10) != 0)
  {
    *(this + 1130) = (v2 + 50);
    *(this + 1131) = (v3 + 50);
    if (*&dword_1ED4E969C < 0x3F || (_H0 = COERCE_UNSIGNED_INT(1.0), *&dword_1ED4E969C <= 0xFF))
    {
      if (*&dword_1ED4E969C >= 0x3F)
      {
        _S0 = *&dword_1ED4E969C * 0.0039216;
        __asm { FCVT            H0, S0 }
      }

      else
      {
        _H0 = 13288;
      }
    }

    *(this + 2244) = _H0;
    *(this + 2245) = _H0;
    *(this + 2246) = _H0;
    *(this + 2247) = 15360;
    if (*&dword_1ED4E96A0 <= 0x384)
    {
      if (*&dword_1ED4E96A0 >= 0x40)
      {
        v19 = truncf(*&dword_1ED4E96A0);
        goto LABEL_23;
      }

      v18 = 1115684864;
    }

    else
    {
      v18 = 1147207680;
    }

    v19 = *&v18;
LABEL_23:
    v11 = *(this + 1130);
    v5 = v11 + v19;
    v4 = *(this + 1131);
    v8 = v4 + v19;
    goto LABEL_24;
  }

  v11 = v2;
LABEL_24:
  v20 = v11 + -2.0;
  *(this + 1130) = v20;
  v21 = v4 + -2.0;
  *(this + 1131) = v21;
  v22 = v5 + 2.0;
  *(this + 1132) = v22;
  v23 = v8 + 2.0;
  *(this + 1126) = v20;
  *(this + 1127) = v21;
  *(this + 1133) = v23;
  *(this + 1128) = (v22 - v20);
  result = v23 - v21;
  *(this + 1129) = (v23 - v21);
  return result;
}

void *CA::OGL::PerformanceHUD::update(CA::OGL::PerformanceHUD *this)
{
  v87 = *MEMORY[0x1E69E9840];
  v82 = mach_absolute_time();
  v2 = *(this + 1136);
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v3 = *&dword_1ED4E96A4 >> 16;
  v4 = v3;
  v5 = *&dword_1ED4E96A4;
  *(this + 556) = *(this + 554);
  v6 = *(this + 4504);
  *(this + 274) = v6;
  *(this + 558) = *(this + 567);
  *(this + 550) = *(this + 565);
  CA::OGL::DebugRenderer::draw_rectangle_with_fill(this + 548, this + 566, *&v6);
  v7 = 0;
  *(this + 558) = *(this + 560);
  v8 = this + 848;
  v9 = (v3 + 360);
  v10 = 18.0;
  v81 = v9;
  do
  {
    v11 = &v8[64 * v7];
    v12 = *(v11 + 11);
    if (v12 && ((v2 >> *(v11 + 10)) & 1) != 0)
    {
      if (v11[60])
      {
        v13 = &CA::OGL::PerformanceHUD::_global_values;
      }

      else
      {
        v13 = (this + 424);
      }

      v14 = *(v13 + v7);
      if (byte_1ED4E9856 == 1 && v12 == 2)
      {
        *&v14 = (*&v14 + (CA::OGL::PerformanceHUD::get_prev_counter_value(this, v7) - *&v14) * 0.995);
        if (v11[60])
        {
          v79 = &CA::OGL::PerformanceHUD::_global_values;
        }

        else
        {
          v79 = (this + 424);
        }

        *(v79 + v7) = v14;
      }

      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }

      v16 = *(v11 + 14);
      if (v16 == 2 || (v16 == 1) != *v11 < *&v14 || (*&CA::OGL::PerformanceHUD::_scale_ticks_to_ms * (v82 - *(v11 + 1))) > *&dword_1ED4E96AC)
      {
        *v11 = v14;
        *(v11 + 1) = v82;
      }

      v17 = *(v11 + 3);
      if (v17)
      {
        v18 = v14;
        if (*(v11 + 11) != 7)
        {
          v18 = *&v14;
        }

        v19 = fminf(v18 / *(v11 + 2), 1.0);
        v20 = (v19 * 255.0);
        if (v16)
        {
          v21 = 0;
        }

        else
        {
          v21 = (v19 * 255.0);
        }

        if (v16)
        {
          v22 = 0;
        }

        else
        {
          v22 = ~v20;
        }

        if (v16 == 1)
        {
          v21 = ~v20;
          v22 = (v19 * 255.0);
        }

        v23 = v16 == 2;
        if (v16 == 2)
        {
          v24 = 0;
        }

        else
        {
          v24 = v21;
        }

        if (!v23)
        {
          LOBYTE(v20) = v22;
        }

        *&_S1 = v24 * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&_S2 = v20 * 0.0039216;
        __asm { FCVT            H2, S2 }

        v30 = v17[1];
        *v30 = v19;
        *(v30 + 8) = _S1 | (_S2 << 16) | 0x3A06000000000000;
        v31 = v17[2];
        v32 = v17[1] + 16;
        v17[1] = v32;
        if (v32 >= v31)
        {
          v17[1] = *v17;
        }
      }

      v33 = *(this + 560);
      v34 = *(v11 + 12);
      switch(v34)
      {
        case 3:
          *__s = 0;
          v86 = 0;
          v47 = CA::OGL::PerformanceHUD::CounterInfo::to_string(&v8[64 * v7], __s);
          *(this + 1100) = v4;
          *(this + 1101) = v5;
          v48 = *(v11 + 4);
          if (!v48)
          {
LABEL_94:
            __assert_rtn("draw_string", "ogl-debug-renderer.h", 136, "text");
          }

          v49 = v47;
          v50 = strlen(*(v11 + 4));
          CA::OGL::DebugRenderer::draw_string(this + 4384, v48, v50);
          *(this + 1100) = v9 - (14 * v49);
          *(this + 1101) = v5;
          v51 = strlen(__s);
          CA::OGL::DebugRenderer::draw_string(this + 4384, __s, v51);
          v54 = *(v11 + 3);
          if (!v54)
          {
            __assert_rtn("draw_graph2d", "ogl-performance-hud.cpp", 481, "_history");
          }

          v55 = v5 + 50.0;
          v56 = v54[1];
          *&v52 = v4;
          v57 = v4;
          if (v56 < v54[2])
          {
            do
            {
              v58 = v57;
              v59 = *v56;
              *(this + 1100) = v58;
              v60.f32[0] = v58 + 6.0;
              v83 = v58 + 6.0;
              v61 = v59 > 1.0 || v59 < 0.0;
              if (v59 < 0.0 && v59 <= 1.0)
              {
                *&v52 = 0.0;
              }

              else
              {
                *&v52 = 1.0;
              }

              v60.f32[1] = v55;
              if (!v61)
              {
                *&v52 = v59;
              }

              *__s = vmla_n_f32(v60, 0xC200000080000000, *&v52);
              *(this + 1101) = v55;
              *(this + 558) = *(v56 + 8);
              v52 = CA::OGL::DebugRenderer::draw_rectangle_with_fill(this + 548, __s, v52);
              v57 = v83;
              v55 = v5 + 50.0;
              v56 += 16;
              v54 = *(v11 + 3);
            }

            while (v56 < v54[2]);
            v56 = v54[1];
            *&v52 = v83;
          }

          v62 = *v54;
          if (*v54 < v56)
          {
            do
            {
              *&v53 = *&v52 + 6.0;
              v84 = v53;
              v63 = *v62;
              v64 = *v62 > 1.0 || *v62 < 0.0;
              if (*v62 < 0.0 && *v62 <= 1.0)
              {
                v65 = 0.0;
              }

              else
              {
                v65 = 1.0;
              }

              if (v64)
              {
                v63 = v65;
              }

              *__s = vmla_n_f32(__PAIR64__(LODWORD(v55), LODWORD(v53)), 0xC200000080000000, v63);
              *(this + 1100) = LODWORD(v52);
              *(this + 1101) = v55;
              *(this + 558) = *(v62 + 8);
              CA::OGL::DebugRenderer::draw_rectangle_with_fill(this + 548, __s, v52);
              v52 = v84;
              v55 = v5 + 50.0;
              v62 += 16;
            }

            while (v62 < *(*(v11 + 3) + 8));
          }

          v5 = v5 + v10;
          *(this + 558) = v33;
          v40 = 34.0;
          break;
        case 2:
          *__s = 0;
          v86 = 0;
          v41 = CA::OGL::PerformanceHUD::CounterInfo::to_string(&v8[64 * v7], __s);
          *(this + 1100) = v4;
          *(this + 1101) = v5;
          v42 = *(v11 + 4);
          if (!v42)
          {
            goto LABEL_94;
          }

          v43 = v41;
          v44 = strlen(*(v11 + 4));
          CA::OGL::DebugRenderer::draw_string(this + 4384, v42, v44);
          *(this + 1100) = v9 - (14 * v43);
          *(this + 1101) = v5;
          v45 = strlen(__s);
          CA::OGL::DebugRenderer::draw_string(this + 4384, __s, v45);
          if (*(v11 + 11) == 7)
          {
            v46 = *(v11 + 6);
          }

          else
          {
            v46 = *v11;
          }

          v66 = v46 / *(v11 + 2);
          v67 = 1.0;
          if (v66 <= 1.0)
          {
            v67 = 0.0;
            if (v66 >= 0.0)
            {
              v67 = v66;
            }
          }

          v5 = v5 + v10;
          *(this + 1100) = v4;
          *(this + 1101) = v5;
          v68 = (v67 * 255.0);
          v69 = *(v11 + 14);
          if (v69)
          {
            v70 = 0;
          }

          else
          {
            v70 = (v67 * 255.0);
          }

          if (v69)
          {
            v71 = 0;
          }

          else
          {
            v71 = ~v68;
          }

          if (v69 == 1)
          {
            v70 = ~v68;
            v71 = (v67 * 255.0);
          }

          v72 = v69 == 2;
          if (v69 == 2)
          {
            v73 = 0;
          }

          else
          {
            v73 = v70;
          }

          if (!v72)
          {
            LOBYTE(v68) = v71;
          }

          _S1 = v73 * 0.0039216;
          __asm { FCVT            H1, S1 }

          _S2 = v68 * 0.0039216;
          __asm { FCVT            H2, S2 }

          *(this + 2232) = LOWORD(_S1);
          *(this + 2233) = LOWORD(_S2);
          *(this + 1117) = 973471744;
          v76 = v4;
          v77 = v67 * 360.0;
          CA::OGL::DebugRenderer::draw_bar(this + 548, v67 * 360.0);
          *(this + 558) = 0x3A06000000000000;
          v78 = 360.0 - v77;
          v4 = v76;
          v10 = 18.0;
          CA::OGL::DebugRenderer::draw_bar(this + 548, v78);
          *(this + 558) = v33;
          v40 = 18.0;
          v9 = v81;
          break;
        case 1:
          *__s = 0;
          v86 = 0;
          v35 = CA::OGL::PerformanceHUD::CounterInfo::to_string(&v8[64 * v7], __s);
          *(this + 1100) = v4;
          *(this + 1101) = v5;
          v36 = *(v11 + 4);
          if (!v36)
          {
            goto LABEL_94;
          }

          v37 = v35;
          v38 = strlen(v36);
          CA::OGL::DebugRenderer::draw_string(this + 4384, v36, v38);
          *(this + 1100) = v9 - (14 * v37);
          *(this + 1101) = v5;
          v39 = strlen(__s);
          CA::OGL::DebugRenderer::draw_string(this + 4384, __s, v39);
          v40 = 18.0;
          break;
        default:
          goto LABEL_88;
      }

      v5 = v5 + v40;
    }

LABEL_88:
    ++v7;
  }

  while (v7 != 53);
  memcpy(this, this + 424, 0x1A8uLL);
  result = memcpy(&CA::OGL::PerformanceHUD::_prev_global_values, &CA::OGL::PerformanceHUD::_global_values, 0x1A8uLL);
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 105) = 0;
  qword_1EA851090 = 0;
  xmmword_1EA851070 = 0u;
  unk_1EA851080 = 0u;
  xmmword_1EA851050 = 0u;
  unk_1EA851060 = 0u;
  xmmword_1EA851030 = 0u;
  unk_1EA851040 = 0u;
  xmmword_1EA851010 = 0u;
  unk_1EA851020 = 0u;
  xmmword_1EA850FF0 = 0u;
  unk_1EA851000 = 0u;
  xmmword_1EA850FD0 = 0u;
  unk_1EA850FE0 = 0u;
  xmmword_1EA850FB0 = 0u;
  unk_1EA850FC0 = 0u;
  xmmword_1EA850F90 = 0u;
  unk_1EA850FA0 = 0u;
  xmmword_1EA850F70 = 0u;
  unk_1EA850F80 = 0u;
  xmmword_1EA850F50 = 0u;
  unk_1EA850F60 = 0u;
  xmmword_1EA850F30 = 0u;
  *&qword_1EA850F40 = 0u;
  xmmword_1EA850F10 = 0u;
  unk_1EA850F20 = 0u;
  CA::OGL::PerformanceHUD::_global_values = 0u;
  *&qword_1EA850F00 = 0u;
  return result;
}

uint64_t CA::OGL::PerformanceHUD::get_prev_counter_value(CA::OGL::PerformanceHUD *this, unsigned int a2)
{
  if (a2 >= 0x35)
  {
    __assert_rtn("get_prev_counter_value", "ogl-performance-hud.cpp", 695, "index < _num_counters");
  }

  if (*(this + 64 * a2 + 908))
  {
    v2 = &CA::OGL::PerformanceHUD::_prev_global_values;
  }

  else
  {
    v2 = this;
  }

  return *(v2 + a2);
}

uint64_t CA::OGL::PerformanceHUD::CounterInfo::to_string(CA::OGL::PerformanceHUD::CounterInfo *this, char *__str)
{
  if (!__str)
  {
    __assert_rtn("to_string", "ogl-performance-hud.cpp", 235, "buffer");
  }

  v2 = *(this + 11);
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:
        return 0;
      case 2:
        LODWORD(result) = snprintf(__str, 0x10uLL, "%.2fms");
        return result;
      case 3:
        LODWORD(result) = snprintf(__str, 0x10uLL, "%lld");
        return result;
    }

LABEL_26:
    __assert_rtn("to_string", "ogl-performance-hud.cpp", 285, "0 && unsupported counter type!");
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      LODWORD(result) = snprintf(__str, 0x10uLL, "0x%llx");
    }

    else if (*this && !(100 * *this / *(this + 2)))
    {
      LODWORD(result) = snprintf(__str, 0x10uLL, "<1%%");
    }

    else
    {
      LODWORD(result) = snprintf(__str, 0x10uLL, "%lld%%");
    }

    return result;
  }

  if (v2 != 6)
  {
    if (v2 == 7)
    {
      LODWORD(result) = snprintf(__str, 0x10uLL, "%.*f");
      return result;
    }

    goto LABEL_26;
  }

  if (*this >= 10000)
  {
    LODWORD(result) = snprintf(__str, 0x10uLL, "%.2fW");
    return result;
  }

  if (*this)
  {
    LODWORD(result) = snprintf(__str, 0x10uLL, "%lldmW");
    return result;
  }

  *__str = 5729584;
  return 3;
}

unsigned int CA::OGL::PerformanceHUD::calculate_fps(CA::OGL::PerformanceHUD *this, double a2)
{
  v3 = *(this + 569);
  v4 = CAHostTimeWithTime(a2);
  if (v3)
  {
    v5 = CAGetStatsStruct(0)[5];
    v6 = (v5 - *(this + 1140));
    v7 = v6 / CATimeWithHostTime(v4 - v3);
    result = vcvtas_u32_f32(v7);
    *(this + 570) = v5;
  }

  else
  {
    result = 0;
  }

  *(this + 569) = v4;
  return result;
}

void CA::CG::DrawColorMatrix::draw_shape_and_color(CA::CG::DrawColorMatrix *this, CA::CG::Renderer *a2)
{
  __dst[63] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = *(a2 + 10);
  v53 = 0uLL;
  CA::Shape::get_bounds(*(*&v4[82] + 8), &v53);
  v7 = v4[84];
  if (v7)
  {
    v8 = v7 + 6;
  }

  else
  {
    v8 = v4 + 76;
  }

  v9 = *(&v53 + 8);
  v10 = vclez_s32(*(&v53 + 8));
  if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) == 0)
  {
    v11 = v8[1];
    v12 = vclez_s32(v11);
    if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0 || (v13 = vadd_s32(*v8, v11), *&v14 = vmax_s32(*&v53, *v8), v9 = vsub_s32(vmin_s32(vadd_s32(*&v53, *(&v53 + 8)), v13), *&v14), v15 = vclez_s32(v9), (vpmax_u32(v15, v15).u32[0] & 0x80000000) != 0))
    {
      v9 = 0;
    }

    else
    {
      *(&v14 + 1) = v9;
      v53 = v14;
    }
  }

  v16 = v9.i32[0];
  if (v9.i32[0] <= v9.i32[1])
  {
    v16 = v9.i32[1];
  }

  v17.i64[0] = v9.i32[0];
  v17.i64[1] = v9.i32[1];
  v18 = vdup_n_s32(v16 > 1073741822);
  v19 = vcvtq_f64_s64(v17);
  v17.i64[0] = v18.u32[0];
  v17.i64[1] = v18.u32[1];
  v20 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v19);
  v21 = *(this + 8);
  v22 = *(this + 9);
  if (v5 != 1.0)
  {
    v23 = v5;
    v6.f64[0] = 1.79769313e308;
    v24 = vdupq_lane_s64(vcgtq_f64(v6, v22).i64[0], 0);
    v25.i64[1] = *(this + 17);
    *v25.i64 = v5 * v21.f64[0];
    v21 = vbslq_s8(v24, v25, v21);
    v25.i64[1] = *(this + 19);
    *v25.i64 = v5 * v22.f64[0];
    v22 = vbslq_s8(v24, v25, v22);
    if (v22.f64[1] < 1.79769313e308)
    {
      v21.f64[1] = vmuld_lane_f64(v23, v21, 1);
      v22.f64[1] = v22.f64[1] * v23;
    }
  }

  v26 = vclezq_f64(v20);
  if ((vorrq_s8(vdupq_laneq_s64(v26, 1), v26).u64[0] & 0x8000000000000000) == 0)
  {
    v27 = vclezq_f64(v22);
    v28 = vdupq_laneq_s64(v27, 1);
    v29 = vorrq_s8(v28, v27);
    if ((v29.i64[0] & 0x8000000000000000) == 0)
    {
      v29.i32[0] = v16;
      v28.i32[0] = 1073741822;
      v30.i64[0] = v53;
      v30.i64[1] = SDWORD1(v53);
      v31 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v29, v28), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v30));
      v32 = vaddq_f64(v31, v20);
      v33 = vmaxnmq_f64(v31, v21);
      v34 = vminnmq_f64(v32, vaddq_f64(v21, v22));
      v35 = vsubq_f64(v34, v33);
      v36 = vclezq_f64(v35);
      if ((vorrq_s8(vdupq_laneq_s64(v36, 1), v36).u64[0] & 0x8000000000000000) == 0)
      {
        v37 = vceqzq_f64(v35);
        if ((vorrq_s8(vdupq_laneq_s64(v37, 1), v37).u64[0] & 0x8000000000000000) != 0 || (v38 = vceqq_f64(v35, v35), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v38), 1), v38).u64[0] & 0x8000000000000000) != 0))
        {
          v52 = 0uLL;
        }

        else
        {
          v39 = vcvtmq_s64_f64(vmaxnmq_f64(v33, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v52 = vuzp1q_s32(v39, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(v34, vdupq_n_s64(0x41C0000000000000uLL))), v39));
        }

        v40 = (*(*v4 + 696))(v4, 1, &v52, 8207, @"draw-color-matrix");
        if (v40)
        {
          v41 = v40;
          v42 = *(a2 + 1);
          v54 = *(v40 + 48);
          v43 = *(v42 + 1384);
          v44 = v43 & 0x7000;
          if ((v43 & 0x7000) == 0x3000)
          {
            v45 = v43 & 0xAFFF;
            v43 &= 0xAAAAAAAA;
            *(v42 + 1384) = v45;
          }

          v46 = v43 >> 12;
          if ((v46 & 4) != 0)
          {
            v47 = 0;
          }

          else
          {
            v47 = (0x22231800u >> (8 * (v46 & 7)) << 8) & 0xFF00;
          }

          *(v40 + 144) = v47 | *(v40 + 144) & 0xFFFFC0FF;
          v48 = *(v42 + 16);
          memcpy(__dst, v48, 0x1F8uLL);
          __dst[0] = v48;
          *(v42 + 16) = __dst;
          v59 = 0;
          *&v57[16] = 0u;
          v58 = 0u;
          *&v56[16] = 0u;
          *v57 = 0u;
          *v56 = 0u;
          v49 = *(v42 + 656);
          *&v56[8] = *(v49 + 8);
          v50 = *(v49 + 32);
          *&v56[24] = *(v49 + 24);
          *v57 = v50;
          *&v57[8] = *(v49 + 40);
          *&v57[24] = *(v49 + 56);
          v51 = *(v49 + 80);
          LODWORD(v58) = *(v49 + 64);
          v59 = v51 & 0x5FF;
          *(&v58 + 1) = *(v49 + 72);
          memset(v55, 0, sizeof(v55));
          CA::Shape::operator=(v55, &v54);
          *&v56[8] = v55;
          *v56 = CA::OGL::Context::set_gstate(v42, v56);
          CA::OGL::Context::push_surface(v42, v41, 1u, 64, 0);
          CA::CG::DrawOp::render(*(this + 14), a2);
          CA::OGL::Context::pop_surface(v42);
          CA::OGL::Context::set_gstate(v42, **(v42 + 656));
          *(v42 + 16) = __dst[0];
          __dst[0] = 0;
          *(v42 + 1384) = *(v42 + 1384) & 0x8FFF | v44;
          CA::OGL::emit_color_matrix(v42, (*(this + 15) + 76), v41, 0, 1.0);
          if (__dst[0])
          {
            __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
          }

          CA::OGL::Context::release_surface(v4, v41);
        }
      }
    }
  }
}

uint64_t CA::CG::DrawColorMatrix::set_op(uint64_t this, CA::CG::DrawOp *a2)
{
  v2 = *(this + 112);
  if (v2)
  {
    *(v2 + 104) = 0;
  }

  *(this + 112) = a2;
  return this;
}

__n128 CA::CG::DrawColorMatrix::compute_dod(CA::CG::DrawColorMatrix *this, __n128 *a2)
{
  (*(**(this + 14) + 24))(*(this + 14), this + 128);
  *a2 = *(this + 8);
  result = *(this + 9);
  a2[1] = result;
  return result;
}

void CA::CG::DrawColorMatrix::~DrawColorMatrix(CA::CG::DrawColorMatrix *this)
{
  *this = &unk_1EF1FE7C0;
  v2 = *(this + 15);
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
  *this = &unk_1EF1FE7C0;
  v2 = *(this + 15);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::DrawColorMatrixTransparencyLayer::draw_shape_and_color(CA::CG::DrawColorMatrixTransparencyLayer *this, CA::CG::Renderer *a2, double a3, double a4, double a5, double a6, double a7, float64x2_t a8)
{
  v8 = *(*(this + 20) + 72);
  if (v8)
  {
    v9 = v8[7];
    v10 = v9.i32[1];
    v11.i64[0] = v9.i32[0];
    v11.i64[1] = v9.i32[1];
    v12 = v11;
    if (v9.i32[0] > v9.i32[1])
    {
      v10 = v8[7];
    }

    v13 = vcvtq_f64_s64(v12);
    v14 = vdup_n_s32(v10 > 1073741822);
    v15.i64[0] = v14.u32[0];
    v15.i64[1] = v14.u32[1];
    v16 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v13);
    v17 = *(a2 + 10);
    v18 = *(this + 8);
    v19 = *(this + 9);
    if (v17 != 1.0)
    {
      v20 = v17;
      a8.f64[0] = 1.79769313e308;
      v21 = vdupq_lane_s64(vcgtq_f64(a8, v19).i64[0], 0);
      v22.i64[1] = *(this + 17);
      *v22.i64 = v20 * v18.f64[0];
      v18 = vbslq_s8(v21, v22, v18);
      v22.i64[1] = *(this + 19);
      *v22.i64 = v20 * v19.f64[0];
      v19 = vbslq_s8(v21, v22, v19);
      if (v19.f64[1] < 1.79769313e308)
      {
        a8.f64[0] = vmuld_lane_f64(v20, v18, 1);
        v18.f64[1] = a8.f64[0];
        v19.f64[1] = v19.f64[1] * v20;
      }
    }

    v23 = vclezq_f64(v16);
    if ((vorrq_s8(vdupq_laneq_s64(v23, 1), v23).u64[0] & 0x8000000000000000) == 0)
    {
      v24 = vclezq_f64(v19);
      v25 = vdupq_laneq_s64(v24, 1);
      if ((vorrq_s8(v25, v24).u64[0] & 0x8000000000000000) == 0)
      {
        v26 = v8[6];
        v25.i32[0] = v10;
        LODWORD(a8.f64[0]) = 1073741822;
        v27.i64[0] = v26.i32[0];
        v27.i64[1] = v26.i32[1];
        v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v25, a8), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v27));
        v29 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(v28, v16), vaddq_f64(v18, v19)), vmaxnmq_f64(v28, v18)));
        if ((vorrq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) == 0)
        {
          CA::OGL::emit_color_matrix(*(a2 + 1), (*(this + 15) + 76), v8, 0, 1.0);
        }
      }
    }
  }

  else
  {
    CA::CG::DrawColorMatrix::draw_shape_and_color(this, a2);
  }
}

void CA::CG::DrawColorMatrixTransparencyLayer::~DrawColorMatrixTransparencyLayer(CA::CG::DrawColorMatrixTransparencyLayer *this)
{
  *this = &unk_1EF1FE888;
  v2 = *(this + 20);
  if (v2)
  {
    CA::CG::TransparencyLayer::unref(v2);
  }

  *this = &unk_1EF1FE7C0;
  v3 = *(this + 15);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF1FE888;
  v2 = *(this + 20);
  if (v2)
  {
    CA::CG::TransparencyLayer::unref(v2);
  }

  *this = &unk_1EF1FE7C0;
  v3 = *(this + 15);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::OGL::ExtendedColor::word32(CA::OGL::ExtendedColor *this, float16x4_t a2)
{
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3 = vmlaq_f32(v2, vdupq_n_s32(0x437F0000u), vcvtq_f32_f16(a2));
  v4 = vmovn_s32(vcltzq_f32(v3));
  if ((v4.i8[0] & (v3.f32[0] <= 255.0)) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 255;
  }

  if (!(v4.i8[0] & 1 | (v3.f32[0] > 255.0)))
  {
    v5 = v3.f32[0];
  }

  if ((v4.i8[2] & (v3.f32[1] <= 255.0)) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 65280;
  }

  if (!(v4.i8[2] & 1 | (v3.f32[1] > 255.0)))
  {
    v6 = v3.f32[1] << 8;
  }

  if ((v4.i8[4] & (v3.f32[2] <= 255.0)) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16711680;
  }

  if (!(v4.i8[4] & 1 | (v3.f32[2] > 255.0)))
  {
    v7 = v3.f32[2] << 16;
  }

  if ((v4.i8[6] & (v3.f32[3] <= 255.0)) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = -16777216;
  }

  if (!(v4.i8[6] & 1 | (v3.f32[3] > 255.0)))
  {
    v8 = v3.f32[3] << 24;
  }

  return v6 | v5 | v7 | v8;
}

void CA::Render::SDFState::~SDFState(CA::Render::SDFState *this)
{
  CA::Render::SDFState::~SDFState(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1FE950;
  os_unfair_lock_lock(&CA::Render::SDFState::_list_lock);
  v2 = CA::Render::SDFState::_list;
  if (CA::Render::SDFState::_list != qword_1EA84E608)
  {
    while (*v2 != this)
    {
      if (++v2 == qword_1EA84E608)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 != qword_1EA84E608)
  {
    *v2 = *(qword_1EA84E608 - 8);
    if (qword_1EA84E608 <= CA::Render::SDFState::_list)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    qword_1EA84E608 -= 8;
  }

LABEL_8:
  os_unfair_lock_unlock(&CA::Render::SDFState::_list_lock);
  v4 = *(this + 5);
  if (v4 != *(this + 7))
  {
    free(v4);
  }

  v5 = *(this + 2);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  --dword_1ED4EAAFC;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v3);
  }
}

uint64_t CA::Render::SDFLayer::commit_layer(uint64_t this, CA::Render::Context *a2, CA::Render::Layer *a3, CA::Render::Handle *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(this + 160))
  {
    v5 = this;
    v6 = *(this + 16);
    os_unfair_lock_lock(&CA::Render::SDFState::_list_lock);
    v7 = CA::Render::SDFState::_list;
    v8 = qword_1EA84E608;
    if (CA::Render::SDFState::_list != qword_1EA84E608)
    {
      do
      {
        v9 = *v7;
        if (*(*v7 + 24) == a2 && *(v9 + 4) == v6)
        {
          if (atomic_fetch_add(v9 + 2, 1u))
          {
            goto LABEL_22;
          }

          atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
        }

        v7 += 8;
      }

      while (v7 != v8);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x188uLL, 0xDEEC3011uLL);
    *(v9 + 88) = 0u;
    *(v9 + 104) = 0u;
    *(v9 + 120) = 0u;
    *(v9 + 136) = 0u;
    *(v9 + 152) = 0u;
    *(v9 + 168) = 0u;
    *(v9 + 184) = 0u;
    *(v9 + 200) = 0u;
    *(v9 + 216) = 0u;
    *(v9 + 232) = 0u;
    *(v9 + 248) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 264) = 0u;
    *(v9 + 280) = 0u;
    *(v9 + 296) = 0u;
    *(v9 + 312) = 0u;
    *(v9 + 328) = 0u;
    *(v9 + 344) = 0u;
    *(v9 + 360) = 0u;
    *(v9 + 376) = 0u;
    *(v9 + 2) = 1;
    *(v9 + 3) = 49;
    ++dword_1ED4EAAFC;
    *v9 = &unk_1EF1FE950;
    *(v9 + 5) = v9 + 72;
    *(v9 + 6) = v9 + 72;
    *(v9 + 7) = v9 + 72;
    *(v9 + 8) = 4;
    *(v9 + 2) = 0;
    *(v9 + 3) = a2;
    *(v9 + 4) = v6;
    CA::Transform::operator=((v9 + 224), &CA::identity_transform);
    v26 = v5;
    X::small_vector_base<CA::Render::SDFState::PortalCopy>::push_back((v9 + 40), &v26);
    v11 = CA::Render::SDFState::_list;
    v10 = qword_1EA84E608;
    v12 = qword_1EA84E608 - CA::Render::SDFState::_list;
    v13 = ((qword_1EA84E608 - CA::Render::SDFState::_list) >> 3) + 1;
    if (qword_1EA84E618 < v13)
    {
      v14 = off_1EA84E610;
      v15 = (qword_1EA84E618 + 1) | ((qword_1EA84E618 + 1) >> 1) | (((qword_1EA84E618 + 1) | ((qword_1EA84E618 + 1) >> 1)) >> 2);
      v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
      v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
      if (v17 + 1 > v13)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = (v12 >> 3) + 1;
      }

      v19 = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
      v20 = v19;
      v21 = CA::Render::SDFState::_list;
      v22 = qword_1EA84E608;
      if (CA::Render::SDFState::_list != qword_1EA84E608)
      {
        v23 = v19;
        do
        {
          v24 = *v21++;
          *v23 = v24;
          v23 += 8;
        }

        while (v21 != v22);
      }

      if (v11 != v14)
      {
        free(CA::Render::SDFState::_list);
      }

      v10 = &v20[v12];
      CA::Render::SDFState::_list = v20;
      qword_1EA84E608 = &v20[v12];
      qword_1EA84E618 = v18;
    }

    *v10 = v9;
    qword_1EA84E608 += 8;
LABEL_22:
    os_unfair_lock_unlock(&CA::Render::SDFState::_list_lock);
    this = *(v5 + 160);
    *(v5 + 160) = v9;
    if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
    {
      v25 = *(*this + 16);

      return v25();
    }
  }

  return this;
}

__n128 X::small_vector_base<CA::Render::SDFState::PortalCopy>::push_back(uint64_t a1, __n128 *a2)
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

    v14 = malloc_type_malloc(16 * v13, 0x1060040ADAFC7CAuLL);
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

char *CA::Render::SDFLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    X::Stream::printf(this, "(sdf-layer");
    v7 = 2 * a3;
    X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
    X::Stream::printf(this, "(smoothness %g)", *(a1 + 140));
    X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
    X::Stream::printf(this, "(gaussian-radius %g)", *(a1 + 144));
    X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
    X::Stream::printf(this, "(effect-offset %g)", *(a1 + 148));
    X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
    X::Stream::printf(this, "(merge-elements %g)", COERCE_DOUBLE(*(a1 + 152)));
    X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
    v8 = *(a1 + 136);
    v9 = ")";
    if (v8 <= 3)
    {
      if (*(a1 + 136) <= 1u)
      {
        if (!*(a1 + 136))
        {
          X::Stream::printf(this, "(effect visualize)");
LABEL_24:
          v9 = ")";
          goto LABEL_25;
        }

        X::Stream::printf(this, "(effect output");
        v11 = v7 + 4;
        X::Stream::printf(this, "\n%*s", v11, "");
        X::Stream::printf(this, "(minimum %g)", *(a1 + 24));
        X::Stream::printf(this, "\n%*s", v11, "");
        X::Stream::printf(this, "(maximum %g)");
LABEL_23:
        X::Stream::printf(this, ")");
        goto LABEL_24;
      }

      if (v8 != 2)
      {
        if (v8 != 3)
        {
          goto LABEL_25;
        }

        X::Stream::printf(this, "(effect gradient)");
        goto LABEL_24;
      }

      X::Stream::printf(this, "(effect fill");
      X::Stream::printf(this, "\n%*s", v7 + 4, "");
    }

    else if (*(a1 + 136) <= 5u)
    {
      if (v8 == 4)
      {
        X::Stream::printf(this, "(effect gradient-contour");
        v14 = v7 + 4;
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(startColor (%.3g %.3g %.3g %.0g %.3g))", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40));
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(endColor (%.3g %.3g %.3g %.0g %.3g))", *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60));
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(radius %g)", *(a1 + 68));
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(angle %g)", *(a1 + 64));
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(gradientOffset %g)", *(a1 + 88));
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(shadowEffectOffset %g)", *(a1 + 72));
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(shadowGradientStart %g)", *(a1 + 76));
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(shadowGradientEnd %g)", *(a1 + 80));
        X::Stream::printf(this, "\n%*s", v14, "");
        X::Stream::printf(this, "(shadowAlpha %g)");
        goto LABEL_23;
      }

      if (v8 != 5)
      {
        goto LABEL_25;
      }

      X::Stream::printf(this, "(effect shadow");
      v12 = v7 + 4;
      X::Stream::printf(this, "\n%*s", v12, "");
      X::Stream::printf(this, "(radius %g)", *(a1 + 24));
      X::Stream::printf(this, "\n%*s", v12, "");
      X::Stream::printf(this, "(offset [%g %g])", *(a1 + 28), *(a1 + 32));
      X::Stream::printf(this, "\n%*s", v12, "");
    }

    else
    {
      if (v8 != 6)
      {
        if (v8 == 7)
        {
          X::Stream::printf(this, "(effect glass-displacement");
          v15 = v7 + 4;
          X::Stream::printf(this, "\n%*s", v15, "");
          X::Stream::printf(this, "(height %g)", *(a1 + 24));
          X::Stream::printf(this, "\n%*s", v15, "");
          X::Stream::printf(this, "(curvature %g)", *(a1 + 28));
          X::Stream::printf(this, "\n%*s", v15, "");
          X::Stream::printf(this, "(angle %g)", *(a1 + 32));
          X::Stream::printf(this, "\n%*s", v15, "");
          X::Stream::printf(this, "(maskOffset %g)");
        }

        else
        {
          if (v8 != 8)
          {
            goto LABEL_25;
          }

          X::Stream::printf(this, "(effect key-fill-highlight");
          X::Stream::printf(this, "(keyColor (%.3g %.3g %.3g %.0g), gain (%.3g))", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40));
          v10 = v7 + 4;
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(keyHeightScale %g)", *(a1 + 44));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(keyHeightOffset %g)", *(a1 + 48));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(keySpreadScale %g)", *(a1 + 52));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(keySpreadOffset %g)", *(a1 + 56));
          X::Stream::printf(this, "(fillColor (%.3g %.3g %.3g %.0g), gain (%.3g))", *(a1 + 60), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(fillHeightScale %g)", *(a1 + 80));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(fillHeightOffset %g)", *(a1 + 84));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(fillSpreadScale %g)", *(a1 + 88));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(fillSpreadOffset %g)", *(a1 + 92));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(keyHeight %g)", *(a1 + 96));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(keyAngle %g)", *(a1 + 100));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(keySpread %g)", *(a1 + 104));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(keyAmount %g)", *(a1 + 108));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(fillHeight %g)", *(a1 + 112));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(fillAngle %g)", *(a1 + 116));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(fillSpread %g)", *(a1 + 120));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(fillAmount %g)", *(a1 + 124));
          X::Stream::printf(this, "\n%*s", v10, "");
          X::Stream::printf(this, "(curvature %g)");
        }

        goto LABEL_23;
      }

      X::Stream::printf(this, "(effect glass-highlight");
      v13 = v7 + 4;
      X::Stream::printf(this, "\n%*s", v13, "");
      X::Stream::printf(this, "(height %g)", *(a1 + 24));
      X::Stream::printf(this, "\n%*s", v13, "");
      X::Stream::printf(this, "(curvature %g)", *(a1 + 28));
      X::Stream::printf(this, "\n%*s", v13, "");
      X::Stream::printf(this, "(angle %g)", *(a1 + 32));
      X::Stream::printf(this, "\n%*s", v13, "");
    }

    X::Stream::printf(this, "(color (%.3g %.3g %.3g %.0g %.3g))");
    goto LABEL_23;
  }

  v9 = "sdf-layer";
LABEL_25:

  return X::Stream::printf(this, v9);
}

uint64_t CA::Render::SDFState::remove_copy(uint64_t this, const CA::Render::SDFLayer *a2)
{
  v3 = *(this + 40);
  v2 = *(this + 48);
  v4 = v3;
  if (v3 != v2)
  {
    while (*v4 != a2)
    {
      v4 += 16;
      if (v4 == v2)
      {
        return this;
      }
    }
  }

  if (v4 != v2)
  {
    if (v4 == v3)
    {
      *(v4 + 8) = 0;
    }

    else
    {
      v5 = *(v2 - 16);
      *(v4 + 8) = *(v2 - 8);
      *v4 = v5;
      v6 = *(this + 48);
      if (v6 <= *(this + 40))
      {
        __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
      }

      *(this + 48) = v6 - 16;
    }

    *(this + 388) = 1;
  }

  return this;
}

uint64_t CA::Render::SDFElementLayer::hit_test_contents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 104);
  if (v3)
  {
    result = (*(*v3 + 80))(*(a2 + 104));
    if (!result)
    {
      return result;
    }

    v10 = result;
    *v52 = 0;
    if ((*(result + 13) & 0x64) != 0)
    {
      v11 = &v52[1];
      v12 = v52;
      CA::Render::Texture::displayed_size_(result, &v52[1], v52);
    }

    else
    {
      v11 = (result + 16);
      v12 = (result + 20);
    }

    LODWORD(v8) = *v11;
    LODWORD(v9) = *v12;
    v13 = v8;
    v14 = v9;
    v48 = 0.0;
    v49 = 0.0;
    v50 = v13;
    v51 = v9;
    v15 = *(a2 + 136);
    if (v15)
    {
      LODWORD(v9) = *(v15 + 304);
    }

    else
    {
      LOBYTE(v9) = *(a2 + 38);
      *&v9 = v9;
    }

    if (*&v9 != 1.0)
    {
      if (*&v9 != 0.0)
      {
        v32 = *&v9;
        v13 = v13 / v32;
        v14 = v14 / v32;
        v50 = v13;
        v51 = v14;
        if (!v15)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      v50 = 0.0;
      v51 = 0.0;
      v14 = 0.0;
      v13 = 0.0;
    }

    if (!v15)
    {
      goto LABEL_15;
    }

LABEL_13:
    v16 = *(v15 + 40);
    if (v16)
    {
      v13 = (v16[5] - v16[3]) * v13;
      v14 = (v16[6] - v16[4]) * v14;
      v50 = v13;
      v51 = v14;
    }

LABEL_15:
    v47.f64[0] = v13;
    v47.f64[1] = v14;
    if ((*(a2 + 40) & 0xF000) == 0x9000 && *(a2 + 72) == 0.0 && *(a2 + 80) == 0.0 && (!v15 || !*(v15 + 32)) && *(a2 + 88) == v13 && *(a2 + 96) == v14)
    {
      v17 = 0.0;
    }

    else
    {
      CA::Render::Layer::apply_contents_transform(a2, &v48, &v47, 0);
      v17 = v48;
    }

    if (v17 <= *a3 && v50 + v17 > *a3)
    {
      v18 = *(a3 + 8);
      if (v49 <= v18 && v51 + v49 > v18)
      {
        v53[0] = xmmword_183E20E00;
        v53[1] = 0u;
        v53[2] = xmmword_183E20E60;
        memset(&v53[3], 0, 32);
        v53[5] = xmmword_183E20E00;
        v54 = 0u;
        v55 = xmmword_183E20E60;
        __asm { FMOV            V0.2D, #1.0 }

        v56 = _Q0;
        v57 = 0;
        if (!CA::Render::Layer::append_texture_transform(a2, v53, v10, v3))
        {
          return 1;
        }

        v25 = *a3;
        v46 = *a3;
        if ((v57 & 0x10) != 0)
        {
          CA::Mat4Impl::mat4_invert(v45, v53, v24);
          CA::Mat4Impl::mat4_unapply_inverse_to_point2(v45, v46.f64, v33);
          v44 = v46.f64[0];
        }

        else
        {
          v25.i32[0] = 0;
          v26 = vsubq_f64(v46, v54);
          v27 = vceqz_s32(vand_s8(vdup_n_s32(v57), 0x100000002));
          v28.i64[0] = v27.i32[0];
          v28.i64[1] = v27.i32[1];
          v29 = vbslq_s8(v28, v26, vnegq_f64(v26));
          LODWORD(v26.f64[0]) = v57 & 4;
          v30 = vdupq_lane_s8(*&vceqq_s8(v26, v25), 0);
          *&v26.f64[0] = vdupq_laneq_s64(v29, 1).u64[0];
          v26.f64[1] = -*v29.i64;
          v31 = vbslq_s8(v30, v29, v26);
          *&v46.f64[1] = v31.i64[1];
          if ((v57 & 8) != 0)
          {
            v44 = *v31.i64 * *(&v56 + 1);
            v46.f64[1] = *&v31.i64[1] * *(&v56 + 1);
          }

          else
          {
            v44 = *v31.i64;
          }
        }

        v35 = *(v10 + 4);
        v34 = *(v10 + 5);
        v36 = *(a1 + 20);
        v37 = *(a1 + 24);
        v38 = (*(*v10 + 104))(v10);
        if (v44 >= 0.0 && v44 < v35)
        {
          v39.n128_u64[0] = *&v46.f64[1];
          if (v46.f64[1] >= 0.0 && v46.f64[1] < v34)
          {
            v40 = v44;
            v41 = v46.f64[1];
            v42 = *v10;
            if (v38 <= 0x18 && ((0x1800200u >> v38) & 1) != 0)
            {
              (*(v42 + 264))(v10, v40, v41, v39);
            }

            else
            {
              v43 = (*(v42 + 272))(v10, v40, v41, v39);
            }

            if ((v36 + (v43 * (v37 - v36))) <= 0.0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL CA::Render::SDFElementLayer::hit_test(_BYTE *a1, uint64_t a2, double *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1[32] != 1)
  {
    return 0;
  }

  if (a1[16] == 1)
  {
    (*(*a1 + 248))(a1);
    return 0;
  }

  if (a1[16])
  {
    return 0;
  }

  v3 = *(a2 + 88);
  v7[0] = *(a2 + 72);
  v7[1] = v3;
  v4 = *(a2 + 136);
  v5 = 0.0;
  if (v4)
  {
    v5 = *(v4 + 232);
  }

  return CA_CGRoundRectContainsPoint(v7, v5, *a3, a3[1]);
}

uint64_t CA::Render::SDFElementLayer::set_property(uint64_t this, uint64_t a2, const unsigned int *a3, BOOL a4, uint64_t a5, const double *a6)
{
  if (a2 == 1 && a5)
  {
    v6 = *a3;
    if (*a3 > 287)
    {
      if (v6 == 301)
      {
        *(this + 32) = *a6 != 0.0;
      }

      else if (v6 == 288)
      {
        v8 = *a6;
        *(this + 28) = v8;
      }
    }

    else if (v6 == 148)
    {
      v9 = *a6;
      *(this + 24) = v9;
    }

    else if (v6 == 155)
    {
      v7 = *a6;
      *(this + 20) = v7;
    }
  }

  return this;
}

uint64_t CA::Render::SDFElementLayer::get_property(CA::Render::SDFElementLayer *this, uint64_t a2, const unsigned int *a3, unint64_t a4, double *a5, double **a6, double a7)
{
  if (a2 != 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a3;
  if (*a3 > 287)
  {
    if (v8 == 301)
    {
      LOBYTE(a7) = *(this + 32);
      v10 = *&a7;
      goto LABEL_13;
    }

    if (v8 == 288)
    {
      v9 = *(this + 7);
      goto LABEL_11;
    }
  }

  else
  {
    if (v8 == 148)
    {
      v9 = *(this + 6);
      goto LABEL_11;
    }

    if (v8 == 155)
    {
      v9 = *(this + 5);
LABEL_11:
      v10 = v9;
LABEL_13:
      *a5 = v10;
      return 1;
    }
  }

  return v7;
}

char *CA::Render::SDFElementLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  if (a4)
  {
    v8 = "sdf-element-layer";
  }

  else
  {
    X::Stream::printf(this, "(sdf-element-layer");
    v7 = 2 * a3;
    if (*(a1 + 16))
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(mode contents)");
    }

    if (*(a1 + 17))
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(operation subtraction)");
    }

    if (*(a1 + 20) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(contents-zero-value-distance %g)", *(a1 + 20));
    }

    if (*(a1 + 24) != 1.0)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(contents-one-value-distance %g)", *(a1 + 24));
    }

    if (*(a1 + 32) == 1)
    {
      X::Stream::printf(this, "\n%*s", v7 + 2, "");
      X::Stream::printf(this, "(hit-tests-as-fill true)");
    }

    v8 = ")";
  }

  return X::Stream::printf(this, v8);
}

void CA::Render::SDFState::add_copy(CA::Render::SDFState *this, const CA::Render::SDFLayer *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = *(this + 5);
  v4 = *(this + 6);
  v5 = this + 40;
  if (v6 != v4)
  {
    while (*v6 != a2)
    {
      v6 += 16;
      if (v6 == v4)
      {
        v6 = *(this + 6);
        break;
      }
    }
  }

  CA::Render::SDFLayer::sdf_padding(a2);
  if (v6 == *(this + 6))
  {
    v8.n128_u64[0] = a2;
    v8.n128_u64[1] = v7;
    X::small_vector_base<CA::Render::SDFState::PortalCopy>::push_back(v5, &v8);
  }

  else
  {
    *(v6 + 8) = v7;
  }

  *(this + 388) = 1;
}

uint64_t CA::Render::SDFLayer::set_original(CA::Render::SDFLayer *this)
{
  v1 = *(this + 20);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    CA::Render::SDFState::remove_copy(v3, this);
    v4 = *(this + 20);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
    if (v5)
    {
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 16))(v5);
      }
    }
  }

  CA::Render::SDFState::add_copy(*(this + 20), this);
  return *(this + 20);
}

unint64_t CA::Render::MatchPropertyAnimation::create_dependence(CA::Render::Handle *)::$_0::operator()(unint64_t *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (!*a1)
  {
    return v1;
  }

  if (v1)
  {
    if (HIDWORD(v1))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = *v1;
  }

  if (v3 - 0x10000 < 0xFFFFFFFFFFFF0001)
  {
    return 0;
  }

  if (v3 > 0x400)
  {
    v7 = malloc_type_malloc(4 * v3, 0x100004052888210uLL);
    if (!v7)
    {
      return 0;
    }

    v5 = v7;
    v1 = *a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v5, v4);
  }

  CA::Render::key_path_atoms(v1, v5, v6);
  v8 = *v5;
  v1 = 1;
  if (*v5 > 295)
  {
    if (v8 != 296 && v8 != 569)
    {
      goto LABEL_19;
    }
  }

  else if ((v8 - 162) >= 3 && v8 != 82)
  {
LABEL_19:
    v1 = 0;
  }

  if (v3 >= 0x401)
  {
    free(v5);
  }

  return v1;
}

BOOL CA::Render::MatchAnimation::matches_dependence_property(CA::Render::MatchAnimation *this, double *a2, unint64_t a3)
{
  if (!this)
  {
    return 0;
  }

  v3 = *(this + 14);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  if (a3 <= 0x10 && *(this + 8) == a3)
  {
    if (v3 > 295)
    {
      if (v3 > 568)
      {
        if (v3 != 716 && v3 != 569)
        {
          return 0;
        }
      }

      else if (v3 != 296 && v3 != 539)
      {
        return 0;
      }
    }

    else if ((v3 - 163) >= 2 && v3 != 82)
    {
      return v3 == 162;
    }

    if (!a3)
    {
      return 1;
    }

    v5 = (this + 72);
    v6 = a3 - 1;
    do
    {
      v7 = *v5++;
      v8 = v7;
      v9 = *a2++;
      v10 = v9;
      v12 = v6-- != 0;
      v4 = v8 == v10;
    }

    while (v8 == v10 && v12);
  }

  return v4;
}

uint64_t CA::Render::MatchAnimation::set_dependence_property(CA::Render::MatchAnimation *this, double *a2, unint64_t a3)
{
  result = CA::Render::MatchAnimation::set_dependence_property(double const*,unsigned long)const::$_0::operator()(this + 15, (*(this + 3) & 0x200) != 0, *(this + 16), a2, a3);
  if ((result & 1) == 0)
  {
    v5 = *(this + 16);
    if (v5)
    {
      *(v5 + 56) = 0;
    }
  }

  return result;
}

uint64_t CA::Render::MatchAnimation::set_dependence_property(double const*,unsigned long)const::$_0::operator()(unint64_t *a1, char a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v5 = 0;
  v16[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a5;
    if (a5 <= 0x10)
    {
      v7 = *a1;
      if (v7)
      {
        if (v7)
        {
          if (HIDWORD(v7))
          {
            v10 = 2;
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = *v7;
        }

        v5 = 0;
        if (v10 == 1 && (a2 & 1) == 0)
        {
          v11 = MEMORY[0x1EEE9AC00]();
          LODWORD(v16[0]) = 0;
          CA::Render::key_path_atoms(v11, v16, v12);
          *(a3 + 56) = v16[0];
          *(a3 + 64) = v6;
          if (v6)
          {
            v13 = (a3 + 72);
            do
            {
              v14 = *a4++;
              *v13++ = v14;
              --v6;
            }

            while (v6);
          }

          return 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

char *CA::Render::MatchPropertyAnimation::show(uint64_t a1, X::Stream *this, int a3, int a4)
{
  if (a4)
  {
    v8 = "match-property-animation;";
  }

  else
  {
    X::Stream::printf(this, "(match-property-animation");
    CA::Render::MatchAnimation::show_match_animation(a1, this, a3, a4);
    v8 = ")";
  }

  return X::Stream::printf(this, v8);
}

uint64_t CA::Render::MatchAnimation::show_match_animation(uint64_t a1, X::Stream *this, int a3, int a4)
{
  v7 = (a3 + 1);
  X::Stream::printf(this, "\n%*s", 2 * v7, "");
  CA::Render::show_object(this, *(a1 + 40));
  if (*(a1 + 48))
  {
    X::Stream::printf(this, "\n%*s", 2 * v7, "");
    X::Stream::printf(this, "(timingFunction ");
    CA::Render::show_object(this, *(a1 + 48));
    X::Stream::printf(this, ")");
  }

  X::Stream::printf(this, "\n%*s", 2 * v7, "");
  X::Stream::printf(this, "(keyPath ");
  v9 = CA::Render::key_path_copy_string(*(a1 + 120), v8);
  CA::Render::show_cfstring(this, v9);
  CFRelease(v9);
  X::Stream::printf(this, ")");
  X::Stream::printf(this, "\n%*s", 2 * v7, "");
  X::Stream::printf(this, "(sourceLayer 0x%lx)", *(a1 + 104));
  X::Stream::printf(this, "\n%*s", 2 * v7, "");
  X::Stream::printf(this, "(sourceContext %x)", *(a1 + 112));
  v10 = *(a1 + 112);
  v11 = *(a1 + 104);

  return CA::Render::Context::show_source_layer(this, v10, v11, v7, a4);
}

uint64_t CA::Render::MatchAnimation::matches_dependence_transform(uint64_t this, const double *a2)
{
  if (this)
  {
    v2 = *(this + 208);
    if (v2)
    {
      if (v2 != 716)
      {
        __assert_rtn("matches_dependence_transform", "render-match-animation.cpp", 264, "dep->prev_transform.atom == kCAAtom_transform");
      }

      v3 = 0;
      v4 = this + 224;
      do
      {
        v5 = *(v4 + v3 * 8);
        v6 = a2[v3];
        this = v5 == v6;
        if (v5 != v6)
        {
          break;
        }
      }

      while (v3++ != 15);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

char *CA::Render::MatchMoveAnimation::show(uint64_t a1, X::Stream *this, int a3, int a4)
{
  if (a4)
  {
    v8 = "match-move-animation;";
  }

  else
  {
    X::Stream::printf(this, "(match-move-animation");
    CA::Render::MatchAnimation::show_match_animation(a1, this, a3, a4);
    X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
    X::Stream::printf(this, "(sourcePoints ");
    CA::Render::show_object(this, *(a1 + 136));
    v8 = ")";
    X::Stream::printf(this, ")");
  }

  return X::Stream::printf(this, v8);
}

BOOL CATransform3DIsIdentity_(CATransform3D *t)
{
  if (t->m11 != 1.0)
  {
    return 0;
  }

  v2 = 1;
  v3 = 15;
  while (v2 != 16)
  {
    v4 = *(&t->m11 + v2);
    v5 = *(&CATransform3DIdentity.m11 + v2++);
    if (v4 != v5)
    {
      v3 = v2 - 2;
      return v3 > 0xE;
    }
  }

  return v3 > 0xE;
}

BOOL CATransform3DEqualToTransform_(CATransform3D *a, CATransform3D *b)
{
  if (a->m11 != b->m11)
  {
    return 0;
  }

  v3 = 1;
  v4 = 15;
  while (v3 != 16)
  {
    v5 = *(&a->m11 + v3);
    v6 = *(&b->m11 + v3++);
    if (v5 != v6)
    {
      v4 = v3 - 2;
      return v4 > 0xE;
    }
  }

  return v4 > 0xE;
}

BOOL CATransform3DIsIdentity(CATransform3D *t)
{
  if (t->m11 != 1.0)
  {
    return 0;
  }

  v2 = 1;
  v3 = 15;
  while (v2 != 16)
  {
    v4 = *(&t->m11 + v2);
    v5 = *(&CATransform3DIdentity.m11 + v2++);
    if (v4 != v5)
    {
      v3 = v2 - 2;
      return v3 > 0xE;
    }
  }

  return v3 > 0xE;
}

BOOL CATransform3DEqualToTransform(CATransform3D *a, CATransform3D *b)
{
  if (a->m11 != b->m11)
  {
    return 0;
  }

  v3 = 1;
  v4 = 15;
  while (v3 != 16)
  {
    v5 = *(&a->m11 + v3);
    v6 = *(&b->m11 + v3++);
    if (v5 != v6)
    {
      v4 = v3 - 2;
      return v4 > 0xE;
    }
  }

  return v4 > 0xE;
}

CATransform3D *__cdecl CATransform3DMakeTranslation_(CATransform3D *__return_ptr retstr, CGFloat tx, CGFloat ty, CGFloat tz)
{
  *&result->m11 = xmmword_183E20E00;
  result->m13 = 0.0;
  result->m14 = 0.0;
  *&result->m21 = xmmword_183E20E60;
  *&result->m23 = 0u;
  *&result->m31 = 0u;
  *&result->m33 = xmmword_183E20E00;
  *&result->m43 = xmmword_183E20E60;
  result->m41 = tx;
  result->m42 = ty;
  result->m43 = tz;
  return result;
}

CATransform3D *__cdecl CATransform3DMakeTranslation(CATransform3D *__return_ptr retstr, CGFloat tx, CGFloat ty, CGFloat tz)
{
  *&retstr->m11 = xmmword_183E20E00;
  retstr->m13 = 0.0;
  retstr->m14 = 0.0;
  *&retstr->m21 = xmmword_183E20E60;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = xmmword_183E20E00;
  *&retstr->m43 = xmmword_183E20E60;
  retstr->m41 = tx;
  retstr->m42 = ty;
  retstr->m43 = tz;
  return result;
}

CATransform3D *__cdecl CATransform3DMakeScale_(CATransform3D *__return_ptr retstr, CGFloat sx, CGFloat sy, CGFloat sz)
{
  *&result->m11 = xmmword_183E20E00;
  *&result->m13 = 0u;
  *&result->m21 = xmmword_183E20E60;
  *&result->m23 = 0u;
  *&result->m31 = 0u;
  *&result->m33 = xmmword_183E20E00;
  *&result->m41 = 0u;
  *&result->m43 = xmmword_183E20E60;
  result->m11 = sx;
  result->m22 = sy;
  result->m33 = sz;
  return result;
}

CATransform3D *__cdecl CATransform3DTranslate_(CATransform3D *__return_ptr retstr, CATransform3D *t, CGFloat tx, CGFloat ty, CGFloat tz)
{
  v5 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*&t->m43, *&t->m13, tx), *&t->m23, ty), *&t->m33, tz);
  *&t->m41 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*&t->m41, *&t->m11, tx), *&t->m21, ty), *&t->m31, tz);
  *&t->m43 = v5;
  return t;
}

CATransform3D *__cdecl CATransform3DTranslate(CATransform3D *__return_ptr retstr, CATransform3D *t, CGFloat tx, CGFloat ty, CGFloat tz)
{
  v5 = *&t->m13;
  v6 = *&t->m33;
  v7 = *&t->m23;
  *&t->m41 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*&t->m41, *&t->m11, tx), *&t->m21, ty), *&t->m31, tz);
  v8 = *&t->m11;
  v9 = *&t->m41;
  v10 = *&t->m21;
  v11 = vmlaq_n_f64(vmlaq_n_f64(*&t->m43, *&t->m13, tx), *&t->m23, ty);
  v12 = *&t->m31;
  *&t->m43 = vmlaq_n_f64(v11, *&t->m33, tz);
  *&retstr->m31 = v12;
  *&retstr->m33 = v6;
  *&retstr->m11 = v8;
  *&retstr->m13 = v5;
  *&retstr->m21 = v10;
  *&retstr->m23 = v7;
  v13 = *&t->m43;
  *&retstr->m41 = v9;
  *&retstr->m43 = v13;
  return t;
}

float64x2_t CATransform3DTranslateRight_(float64x2_t *a1, float64x2_t result, float64_t a3, double a4)
{
  result.f64[1] = a3;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[5];
  v8 = a1[7];
  v9 = vmlaq_laneq_f64(a1[2], result, v6, 1);
  v10 = vmlaq_laneq_f64(a1[4], result, v7, 1);
  v11 = vmlaq_laneq_f64(a1[6], result, v8, 1);
  *a1 = vmlaq_laneq_f64(*a1, result, v5, 1);
  a1[1] = vmlaq_laneq_f64(v5, *&a4, v5, 1);
  a1[2] = v9;
  a1[3] = vmlaq_laneq_f64(v6, *&a4, v6, 1);
  a1[4] = v10;
  a1[5] = vmlaq_laneq_f64(v7, *&a4, v7, 1);
  a1[6] = v11;
  a1[7] = vmlaq_laneq_f64(v8, *&a4, v8, 1);
  return result;
}

__n128 CATransform3DTranslateRight@<Q0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>, float64_t a4@<D1>, unint64_t a5@<D2>)
{
  a3.f64[1] = a4;
  v6 = a1[1];
  v7 = a1[3];
  v8 = a1[5];
  v9 = a1[7];
  v10 = vmlaq_laneq_f64(a1[2], a3, v7, 1);
  v11 = vmlaq_laneq_f64(a1[4], a3, v8, 1);
  v12 = vmlaq_laneq_f64(a1[6], a3, v9, 1);
  *a1 = vmlaq_laneq_f64(*a1, a3, v6, 1);
  a1[1] = vmlaq_laneq_f64(v6, a5, v6, 1);
  a1[2] = v10;
  a1[3] = vmlaq_laneq_f64(v7, a5, v7, 1);
  a1[4] = v11;
  a1[5] = vmlaq_laneq_f64(v8, a5, v8, 1);
  a1[6] = v12;
  a1[7] = vmlaq_laneq_f64(v9, a5, v9, 1);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v15;
  *a2 = v13;
  *(a2 + 16) = v14;
  result = a1[4];
  v17 = a1[5];
  v18 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v18;
  *(a2 + 64) = result;
  *(a2 + 80) = v17;
  return result;
}

CATransform3D *__cdecl CATransform3DScale_(CATransform3D *__return_ptr retstr, CATransform3D *t, CGFloat sx, CGFloat sy, CGFloat sz)
{
  v5 = vmulq_n_f64(*&t->m11, sx);
  v6 = vmulq_n_f64(*&t->m13, sx);
  v7 = vmulq_n_f64(*&t->m21, sy);
  v8 = vmulq_n_f64(*&t->m23, sy);
  v9 = vmulq_n_f64(*&t->m31, sz);
  v10 = vmulq_n_f64(*&t->m33, sz);
  *&t->m11 = v5;
  *&t->m13 = v6;
  *&t->m21 = v7;
  *&t->m23 = v8;
  *&t->m31 = v9;
  *&t->m33 = v10;
  return t;
}

CATransform3D *__cdecl CATransform3DScale(CATransform3D *__return_ptr retstr, CATransform3D *t, CGFloat sx, CGFloat sy, CGFloat sz)
{
  v5 = vmulq_n_f64(*&t->m11, sx);
  v6 = vmulq_n_f64(*&t->m13, sx);
  v7 = vmulq_n_f64(*&t->m21, sy);
  v8 = vmulq_n_f64(*&t->m23, sy);
  v9 = vmulq_n_f64(*&t->m31, sz);
  v10 = vmulq_n_f64(*&t->m33, sz);
  *&t->m11 = v5;
  *&t->m13 = v6;
  *&t->m21 = v7;
  *&t->m23 = v8;
  *&t->m31 = v9;
  *&t->m33 = v10;
  v11 = *&t->m43;
  *&retstr->m41 = *&t->m41;
  *&retstr->m43 = v11;
  v12 = *&t->m33;
  *&retstr->m31 = *&t->m31;
  *&retstr->m33 = v12;
  v13 = *&t->m13;
  *&retstr->m11 = *&t->m11;
  *&retstr->m13 = v13;
  v14 = *&t->m23;
  *&retstr->m21 = *&t->m21;
  *&retstr->m23 = v14;
  return t;
}

CATransform3D *__cdecl CATransform3DInvert(CATransform3D *__return_ptr retstr, CATransform3D *t)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  result = CA::Mat4Impl::mat4_invert(v11, t, v2);
  if (result)
  {
    v6 = v11;
  }

  else
  {
    v6 = t;
  }

  v7 = *&v6->m33;
  *&retstr->m31 = *&v6->m31;
  *&retstr->m33 = v7;
  v8 = *&v6->m43;
  *&retstr->m41 = *&v6->m41;
  *&retstr->m43 = v8;
  v9 = *&v6->m13;
  *&retstr->m11 = *&v6->m11;
  *&retstr->m13 = v9;
  v10 = *&v6->m23;
  *&retstr->m21 = *&v6->m21;
  *&retstr->m23 = v10;
  return result;
}

CATransform3D *__cdecl CATransform3DMakeAffineTransform_(CATransform3D *__return_ptr retstr, CATransform3D *m)
{
  *&m->m11 = xmmword_183E20E00;
  *&m->m13 = 0u;
  *&m->m21 = xmmword_183E20E60;
  *&m->m23 = 0u;
  *&m->m31 = 0u;
  *&m->m33 = xmmword_183E20E00;
  *&m->m41 = 0u;
  *&m->m43 = xmmword_183E20E60;
  m->m11 = *v2;
  m->m12 = v2[1];
  m->m21 = v2[2];
  m->m22 = v2[3];
  m->m41 = v2[4];
  m->m42 = v2[5];
  return m;
}

CATransform3D *__cdecl CATransform3DMakeAffineTransform(CATransform3D *__return_ptr retstr, CATransform3D *m)
{
  retstr->m13 = 0.0;
  retstr->m14 = 0.0;
  *&retstr->m31 = 0u;
  *&retstr->m33 = xmmword_183E20E00;
  v2 = *&m->m13;
  *&retstr->m11 = *&m->m11;
  *&retstr->m21 = v2;
  *&retstr->m23 = 0u;
  *&retstr->m41 = *&m->m21;
  *&retstr->m43 = xmmword_183E20E60;
  return m;
}

double CATransform3DConcatAffineTransform@<D0>(double *a1@<X0>, CGAffineTransform *a2@<X1>, const double *a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *&result = *&CA::Mat4Impl::mat4_concat(a4, a1, a2, a3);
  return result;
}

CGAffineTransform *__cdecl CATransform3DGetAffineTransform_(CGAffineTransform *__return_ptr retstr, CGAffineTransform *t)
{
  v3 = v2[2];
  *&t->a = *v2;
  *&t->c = v3;
  *&t->tx = v2[6];
  return t;
}

CGAffineTransform *__cdecl CATransform3DGetAffineTransform(CGAffineTransform *__return_ptr retstr, CGAffineTransform *t)
{
  v2 = *&t->tx;
  *&retstr->a = *&t->a;
  *&retstr->c = v2;
  *&retstr->tx = *&t[2].a;
  return t;
}

double CA_CGPointApplyTransform(float64x2_t *a1, double a2, double a3)
{
  v3 = a1[7].f64[1] + a1[1].f64[1] * a2 + a1[3].f64[1] * a3;
  if (fabs(v3 + -1.0) >= 0.000001)
  {
    if (v3 <= 0.0)
    {
      v3 = INFINITY;
    }

    else
    {
      v3 = 1.0 / v3;
    }
  }

  *&result = *&vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(a1[6], *a1, a2), a1[2], a3), v3);
  return result;
}

double CA_CGPointUnapplyInverseTransform(float64x2_t *a1, double a2, double a3, uint64_t a4, double *a5)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  v6[1] = a3;
  CA::Mat4Impl::mat4_unapply_inverse_to_point2(a1, v6, a5);
  return v6[0];
}

double CA_CGRectApplyTransform(float64x2_t *a1, double a2, double a3, double a4, double a5, uint64_t a6, double *a7)
{
  v11 = *MEMORY[0x1E69E9840];
  *v8.i64 = a2;
  *&v8.i64[1] = a3;
  v9 = a4;
  v10 = a5;
  CA::Mat4Impl::mat4_apply_to_rect(a1, &v8, a7);
  return *v8.i64;
}

double CA_CGRectUnapplyInverseTransform(float64x2_t *a1, double a2, double a3, double a4, double a5, uint64_t a6, double *a7)
{
  v11 = *MEMORY[0x1E69E9840];
  *v8.i64 = a2;
  *&v8.i64[1] = a3;
  v9 = a4;
  v10 = a5;
  CA::Mat4Impl::mat4_unapply_inverse_to_rect(a1, &v8, a7);
  return *v8.i64;
}

double CATransform3DMakeWithSIMDFloat3x3@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *a1 = vcvtq_f64_f32(a2.n128_u64[0]);
  *(a1 + 16) = a2.n128_f32[2];
  *(a1 + 24) = 0;
  *(a1 + 32) = vcvtq_f64_f32(a3.n128_u64[0]);
  *(a1 + 48) = a3.n128_f32[2];
  *(a1 + 56) = 0;
  *(a1 + 64) = vcvtq_f64_f32(a4.n128_u64[0]);
  *(a1 + 80) = a4.n128_f32[2];
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

float64x2_t CATransform3DMakeWithSIMDFloat4x4@<Q0>(float64x2_t *a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>, float32x4_t a5@<Q3>)
{
  *a1 = vcvtq_f64_f32(*a2.f32);
  a1[1] = vcvt_hight_f64_f32(a2);
  a1[2] = vcvtq_f64_f32(*a3.f32);
  a1[3] = vcvt_hight_f64_f32(a3);
  a1[4] = vcvtq_f64_f32(*a4.f32);
  a1[5] = vcvt_hight_f64_f32(a4);
  result = vcvtq_f64_f32(*a5.f32);
  a1[6] = result;
  a1[7] = vcvt_hight_f64_f32(a5);
  return result;
}

double CATransform3DMakeWithSIMDDouble3x3@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = 0;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = 0;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
  return result;
}

__n128 CATransform3DMakeWithSIMDDouble4x4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = result;
  return result;
}

__n128 CATransform3DGetSIMDDouble3x3@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = 0u;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = 0u;
  *(a2 + 48) = v3;
  result = *(a1 + 64);
  v5 = *(a1 + 80);
  *(a2 + 64) = result;
  *(a2 + 80) = 0u;
  *(a2 + 80) = v5;
  return result;
}

__n128 CATransform3DGetSIMDDouble4x4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 96);
  v6 = *(a1 + 112);
  *(a2 + 96) = result;
  *(a2 + 112) = v6;
  return result;
}

void CA::CG::DrawGaussianBlur::draw_shape_and_color(CA::CG::DrawGaussianBlur *this, CA::CG::Renderer *a2)
{
  __dst[63] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = *(a2 + 10);
  v6 = *(*(this + 15) + 80);
  v7 = v5;
  v79 = 0uLL;
  CA::Shape::get_bounds(*(*&v4[82] + 8), &v79);
  v11 = v4[84];
  if (v11)
  {
    v12 = v11 + 6;
  }

  else
  {
    v12 = v4 + 76;
  }

  v13 = *(&v79 + 8);
  v14 = vclez_s32(*(&v79 + 8));
  if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) == 0)
  {
    v15 = v12[1];
    v16 = vclez_s32(v15);
    *v8.i8 = vpmax_u32(v16, v16);
    if (v8.i32[0] < 0 || (*v9.i8 = *v12, v17 = vadd_s32(*v12, v15), *&v18 = vmax_s32(*&v79, *v12), v13 = vsub_s32(vmin_s32(vadd_s32(*&v79, *(&v79 + 8)), v17), *&v18), v19 = vclez_s32(v13), *v8.i8 = vpmax_u32(v19, v19), v8.i32[0] < 0))
    {
      v13 = 0;
    }

    else
    {
      *(&v18 + 1) = v13;
      v79 = v18;
    }
  }

  v20 = v6 * v7;
  v21 = v13.i32[0];
  if (v13.i32[0] <= v13.i32[1])
  {
    v21 = v13.i32[1];
  }

  v8.i32[0] = v21;
  v9.i32[0] = 1073741822;
  v22.i64[0] = v79;
  v22.i64[1] = SDWORD1(v79);
  v23 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v8, v9), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v22));
  v22.i64[0] = v13.i32[0];
  v22.i64[1] = v13.i32[1];
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

  v33 = *(this + 8);
  v34 = *(this + 9);
  if (v5 != 1.0)
  {
    v10.f64[0] = 1.79769313e308;
    v35 = vdupq_lane_s64(vcgtq_f64(v10, v34).i64[0], 0);
    v36.i64[1] = *(this + 17);
    *v36.i64 = v7 * v33.f64[0];
    v33 = vbslq_s8(v35, v36, v33);
    v36.i64[1] = *(this + 19);
    *v36.i64 = v7 * v34.f64[0];
    v34 = vbslq_s8(v35, v36, v34);
    if (v34.f64[1] < 1.79769313e308)
    {
      v33.f64[1] = vmuld_lane_f64(v7, v33, 1);
      v34.f64[1] = v34.f64[1] * v7;
    }
  }

  v37 = vclezq_f64(v26);
  if ((vorrq_s8(vdupq_laneq_s64(v37, 1), v37).u64[0] & 0x8000000000000000) == 0)
  {
    v38 = vclezq_f64(v34);
    if ((vorrq_s8(vdupq_laneq_s64(v38, 1), v38).u64[0] & 0x8000000000000000) == 0)
    {
      v39 = vaddq_f64(v23, v26);
      v40 = vmaxnmq_f64(v23, v33);
      v41 = vminnmq_f64(v39, vaddq_f64(v33, v34));
      v42 = vsubq_f64(v41, v40);
      v43 = vclezq_f64(v42);
      if ((vorrq_s8(vdupq_laneq_s64(v43, 1), v43).u64[0] & 0x8000000000000000) == 0)
      {
        if (v20 >= 0.1)
        {
          v45 = vceqzq_f64(v42);
          if ((vorrq_s8(vdupq_laneq_s64(v45, 1), v45).u64[0] & 0x8000000000000000) != 0 || (v46 = vceqq_f64(v42, v42), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v46), 1), v46).u64[0] & 0x8000000000000000) != 0))
          {
            v78 = 0uLL;
            v50 = 0;
            v49 = -1;
          }

          else
          {
            v47 = vcvtmq_s64_f64(vmaxnmq_f64(v40, vdupq_n_s64(0xC1BFFFFFFF000000)));
            v48 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(v41, vdupq_n_s64(0x41C0000000000000uLL))), v47);
            v78 = vuzp1q_s32(v47, v48);
            v49 = vadd_s32(vmovn_s64(v47), -1);
            v50 = vmovn_s64(v48);
          }

          v51 = v50.i32[1];
          if (v50.i32[0] <= v50.i32[1])
          {
            v52 = v50.i32[1];
          }

          else
          {
            v52 = v50.i32[0];
          }

          if (v50.i32[0] < v50.i32[1])
          {
            v51 = v50.i32[0];
          }

          if (v52 <= 1073741822 && v51 >= 1)
          {
            v53 = vadd_s32(v50, 0x200000002);
            v54 = vclez_s32(v53);
            if (vorr_s8(v54, vdup_lane_s32(v54, 1)).u8[0])
            {
              v55 = -1;
            }

            else
            {
              v55 = 0;
            }

            *v78.i8 = v49;
            v78.u64[1] = vbic_s8(v53, vdup_n_s32(v55));
          }

          v56 = (*(*v4 + 696))(v4, 1, &v78, 8207, @"draw-gaussian-blur-surface");
          if (v56)
          {
            v57 = v56;
            v58 = *(a2 + 1);
            v59 = *(a2 + 10);
            v60 = *(*(this + 15) + 80);
            v61 = v59;
            v80 = *(v56 + 48);
            v62 = *(v58 + 1384);
            v63 = v62 & 0x7000;
            if ((v62 & 0x7000) == 0x3000)
            {
              v64 = v62 & 0xAFFF;
              v62 &= 0xAAAAAAAA;
              *(v58 + 1384) = v64;
            }

            v65 = v62 >> 12;
            v66 = v60 * v61;
            if ((v65 & 4) != 0)
            {
              v67 = 0;
            }

            else
            {
              v67 = (0x22231800u >> (8 * (v65 & 7)) << 8) & 0xFF00;
            }

            *(v56 + 144) = v67 | *(v56 + 144) & 0xFFFFC0FF;
            v68 = *(v58 + 16);
            memcpy(__dst, v68, 0x1F8uLL);
            __dst[0] = v68;
            *(v58 + 16) = __dst;
            v91 = 0;
            *&v89[16] = 0u;
            v90 = 0u;
            *&v88[16] = 0u;
            *v89 = 0u;
            *v88 = 0u;
            v69 = *(v58 + 656);
            *&v88[8] = *(v69 + 8);
            v70 = *(v69 + 32);
            *&v88[24] = *(v69 + 24);
            *v89 = v70;
            *&v89[8] = *(v69 + 40);
            *&v89[24] = *(v69 + 56);
            v71 = *(v69 + 80);
            LODWORD(v90) = *(v69 + 64);
            v91 = v71 & 0x5FF;
            *(&v90 + 1) = *(v69 + 72);
            memset(v87, 0, sizeof(v87));
            CA::Shape::operator=(v87, &v80);
            *&v88[8] = v87;
            if ((*(*v58 + 232))(v58, 25))
            {
              (*(*v58 + 760))(v58, v57, 32, 32);
            }

            *v88 = CA::OGL::Context::set_gstate(v58, v88);
            CA::OGL::Context::push_surface(v58, v57, 1u, 64, 0);
            CA::CG::DrawOp::render(*(this + 14), a2);
            CA::OGL::Context::pop_surface(v58);
            CA::OGL::Context::set_gstate(v58, **(v58 + 656));
            v72 = __dst[0];
            *(v58 + 16) = __dst[0];
            *(v58 + 1384) = *(v58 + 1384) & 0x8FFF | v63;
            v84 = 0u;
            v83 = 0u;
            v82 = 0u;
            HIDWORD(v84) = 15;
            v85 = 0uLL;
            v86 = 0;
            v73 = *(v72 + 16);
            v74 = *(v72 + 8) == 0x3C003C003C003C00;
            __dst[0] = 0;
            v75 = v66;
            *v81 = v75;
            *&v81[1] = v75;
            v76 = v73 & 0xFFFFFF00FF00FF00;
            if (v74)
            {
              v77 = 1;
            }

            else
            {
              v77 = 3;
            }

            *(v72 + 16) = v77 | v76;
            *(v72 + 20) = HIDWORD(v76);
            (*(*v58 + 928))(v58, v57, v81, 0, 1.0, 1.0);
            *(*(v58 + 16) + 16) = 0;
            if (__dst[0])
            {
              __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
            }

            CA::OGL::Context::release_surface(v4, v57);
          }
        }

        else
        {
          v44 = *(**(this + 14) + 160);

          v44();
        }
      }
    }
  }
}

uint64_t CA::CG::DrawGaussianBlur::set_op(uint64_t this, CA::CG::DrawOp *a2)
{
  v2 = *(this + 112);
  if (v2)
  {
    *(v2 + 104) = 0;
  }

  *(this + 112) = a2;
  return this;
}

uint64_t CA::CG::DrawGaussianBlur::compute_dod(CA::CG::DrawGaussianBlur *this, CA::Rect *a2)
{
  result = (*(**(this + 14) + 24))(*(this + 14), this + 128);
  v5 = *(this + 8);
  *a2 = v5;
  v6 = *(this + 9);
  *(a2 + 1) = v6;
  if (*&v6 <= *(&v6 + 1))
  {
    v7 = *(&v6 + 1);
  }

  else
  {
    v7 = *&v6;
  }

  if (v7 < 1.79769313e308)
  {
    if (*&v6 >= *(&v6 + 1))
    {
      v8 = *(&v6 + 1);
    }

    else
    {
      v8 = *&v6;
    }

    if (v8 > 0.0)
    {
      v9 = *(*(this + 15) + 80);
      *a2 = vaddq_f64(v5, vdupq_lane_s64(COERCE__INT64(v9 * -2.8), 0));
      v10 = v9 * 5.6;
      v11 = v9 * 5.6 + *&v6;
      *(a2 + 2) = v11;
      *(a2 + 3) = v10 + *(&v6 + 1);
      if (v11 <= 0.0 || v10 + *(&v6 + 1) <= 0.0)
      {
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
      }
    }
  }

  return result;
}

void CA::CG::DrawGaussianBlur::~DrawGaussianBlur(CA::CG::DrawGaussianBlur *this)
{
  *this = &unk_1EF1FED10;
  v2 = *(this + 15);
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
  *this = &unk_1EF1FED10;
  v2 = *(this + 15);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::CG::DrawGaussianBlurTransparencyLayer::draw_shape_and_color(uint64_t this, CA::CG::Renderer *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 160) + 72);
  if (v2)
  {
    v3 = *(a2 + 1);
    v4 = *(a2 + 10);
    v5 = *(*(this + 120) + 80) * v4;
    v12 = 0u;
    v10 = 0u;
    v11 = 0u;
    HIDWORD(v12) = 15;
    v13 = 0uLL;
    v14 = 0;
    *&v5 = v5;
    v9[0] = LODWORD(v5);
    v9[1] = LODWORD(v5);
    if ((*(*v3 + 232))(v3, 25))
    {
      (*(*v3 + 760))(v3, v2, 32, 32);
    }

    v6 = v3[2];
    v7 = *(v6 + 16) & 0xFFFFFF00FF00FF00;
    if (*(v6 + 8) == 0x3C003C003C003C00)
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }

    *(v6 + 16) = v8 | v7;
    *(v6 + 20) = HIDWORD(v7);
    this = (*(*v3 + 928))(v3, v2, v9, 0, 1.0, 1.0);
    *(v3[2] + 16) = 0;
  }

  return this;
}

void CA::CG::DrawGaussianBlurTransparencyLayer::~DrawGaussianBlurTransparencyLayer(CA::CG::DrawGaussianBlurTransparencyLayer *this)
{
  *this = &unk_1EF1FEDD8;
  v2 = *(this + 20);
  if (v2)
  {
    CA::CG::TransparencyLayer::unref(v2);
  }

  *this = &unk_1EF1FED10;
  v3 = *(this + 15);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF1FEDD8;
  v2 = *(this + 20);
  if (v2)
  {
    CA::CG::TransparencyLayer::unref(v2);
  }

  *this = &unk_1EF1FED10;
  v3 = *(this + 15);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::Render::ShadowCache::free_raster_entry(int a1, void *ptr)
{
  if (ptr)
  {
    v3 = ptr[1];
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v4 = malloc_zone;

    malloc_zone_free(v4, ptr);
  }
}

void CA::Render::ShadowCache::free_shadow_entry(int a1, void *ptr)
{
  if (ptr)
  {
    v3 = ptr[19];
    if (v3)
    {
      ptr[20] = v3;
      operator delete(v3);
    }

    v4 = ptr[16];
    if (v4)
    {
      ptr[17] = v4;
      operator delete(v4);
    }

    v5 = ptr[2];
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    v6 = ptr[1];
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 16))(v6);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_zone;

    malloc_zone_free(v7, ptr);
  }
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::Render::anonymous namespace::Interval *,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      v9 = *(a2 + 8);
      *a2 = *a3;
      *a3 = v5;
      *(a3 + 8) = v9;
      v10 = *result;
      v7 = v5;
      if (*a2 < *result)
      {
        v11 = *(result + 8);
        *result = *a2;
        *a2 = v10;
        *(a2 + 8) = v11;
        v7 = *a3;
      }
    }
  }

  else
  {
    v8 = *(result + 8);
    if (v7 < v5)
    {
      *result = *a3;
LABEL_9:
      *a3 = v6;
      *(a3 + 8) = v8;
      v7 = v6;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v6;
    *(a2 + 8) = v8;
    v7 = *a3;
    if (*a3 < v6)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v7)
  {
    v12 = *(a3 + 8);
    *a3 = *a4;
    *a4 = v7;
    a4[1] = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      v14 = *(a2 + 8);
      *a2 = *a3;
      *a3 = v13;
      *(a3 + 8) = v14;
      v15 = *result;
      if (*a2 < *result)
      {
        v16 = *(result + 8);
        *result = *a2;
        *a2 = v15;
        *(a2 + 8) = v16;
      }
    }
  }

  v17 = *a4;
  if (*a5 < *a4)
  {
    v18 = a4[1];
    *a4 = *a5;
    *a5 = v17;
    *(a5 + 8) = v18;
    v19 = *a3;
    if (*a4 < *a3)
    {
      v20 = *(a3 + 8);
      *a3 = *a4;
      *a4 = v19;
      a4[1] = v20;
      v21 = *a2;
      if (*a3 < *a2)
      {
        v22 = *(a2 + 8);
        *a2 = *a3;
        *a3 = v21;
        *(a3 + 8) = v22;
        v23 = *result;
        if (*a2 < *result)
        {
          v24 = *(result + 8);
          *result = *a2;
          *a2 = v23;
          *(a2 + 8) = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::Render::anonymous namespace::Interval *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = (a2 - 16);
      v9 = *(a2 - 16);
      v3 = *a1;
      if (v7 < *a1)
      {
        v4 = *(a1 + 8);
        if (v9 >= v7)
        {
          *a1 = *v6;
          *(a1 + 16) = v3;
          *(a1 + 24) = v4;
          if (*v8 >= v3)
          {
            return 1;
          }

          *v6 = *v8;
          goto LABEL_14;
        }

        v5 = *v8;
LABEL_13:
        *a1 = v5;
LABEL_14:
        *(a2 - 16) = v3;
        *(a2 - 8) = v4;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v22 = *(a1 + 24);
      *v6 = *v8;
      *(a2 - 16) = v7;
      *(a2 - 8) = v22;
LABEL_52:
      v38 = *a1;
      if (*(a1 + 16) < *a1)
      {
        v39 = *(a1 + 8);
        *a1 = *v6;
        *(a1 + 16) = v38;
        *(a1 + 24) = v39;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return 1;
      }

      goto LABEL_15;
    }

    v6 = (a1 + 16);
    v16 = *(a1 + 16);
    v17 = (a1 + 32);
    v18 = *(a1 + 32);
    v19 = (a2 - 16);
    v20 = *a1;
    if (v16 >= *a1)
    {
      if (v18 < v16)
      {
        v25 = *(a1 + 24);
        *v6 = *v17;
        *(a1 + 32) = v16;
        *(a1 + 40) = v25;
        if (*(a1 + 16) < v20)
        {
          v26 = *(a1 + 8);
          *a1 = *v6;
          *(a1 + 16) = v20;
          *(a1 + 24) = v26;
        }

        v18 = v16;
      }

      goto LABEL_49;
    }

    v21 = *(a1 + 8);
    if (v18 >= v16)
    {
      *a1 = *v6;
      *(a1 + 16) = v20;
      *(a1 + 24) = v21;
      if (v18 >= v20)
      {
        goto LABEL_49;
      }

      *v6 = *v17;
    }

    else
    {
      *a1 = *v17;
    }

    *(a1 + 32) = v20;
    *(a1 + 40) = v21;
    v18 = v20;
LABEL_49:
    if (*v19 >= v18)
    {
      return 1;
    }

    v35 = *(a1 + 40);
    *v17 = *v19;
    *(a2 - 16) = v18;
    *(a2 - 8) = v35;
    v36 = *(a1 + 16);
    if (*(a1 + 32) >= v36)
    {
      return 1;
    }

    v37 = *(a1 + 24);
    *v6 = *v17;
    *(a1 + 32) = v36;
    *(a1 + 40) = v37;
    goto LABEL_52;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if (*(a2 - 16) < *a1)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 16);
      goto LABEL_13;
    }

    return 1;
  }

LABEL_15:
  v10 = (a1 + 32);
  v11 = *(a1 + 32);
  v12 = (a1 + 16);
  v13 = *(a1 + 16);
  v14 = *a1;
  if (v13 >= *a1)
  {
    if (v11 < v13)
    {
      v23 = *(a1 + 24);
      *v12 = *v10;
      *(a1 + 32) = v13;
      *(a1 + 40) = v23;
      if (*(a1 + 16) < v14)
      {
        v24 = *(a1 + 8);
        *a1 = *v12;
        *(a1 + 16) = v14;
        *(a1 + 24) = v24;
      }
    }
  }

  else
  {
    v15 = *(a1 + 8);
    if (v11 >= v13)
    {
      *a1 = *v12;
      *(a1 + 16) = v14;
      *(a1 + 24) = v15;
      if (v11 >= v14)
      {
        goto LABEL_35;
      }

      *v12 = *v10;
    }

    else
    {
      *a1 = *v10;
    }

    *(a1 + 32) = v14;
    *(a1 + 40) = v15;
  }

LABEL_35:
  v27 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    v30 = *v27;
    if (*v27 < *v10)
    {
      v31 = *(v27 + 8);
      v32 = v28;
      while (1)
      {
        *(a1 + v32 + 48) = *(a1 + v32 + 32);
        if (v32 == -32)
        {
          break;
        }

        v33 = *(a1 + v32 + 16);
        v32 -= 16;
        if (v30 >= v33)
        {
          v34 = a1 + v32 + 48;
          goto LABEL_43;
        }
      }

      v34 = a1;
LABEL_43:
      *v34 = v30;
      *(v34 + 8) = v31;
      if (++v29 == 8)
      {
        return v27 + 16 == a2;
      }
    }

    v10 = v27;
    v28 += 16;
    v27 += 16;
    if (v27 == a2)
    {
      return 1;
    }
  }
}

os_log_t ___Z15x_log_get_colorv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Color");
  x_log_get_color(void)::log = result;
  return result;
}

char *CA::ColorProgram::Program::show(uint64_t a1, X::Stream *this)
{
  result = X::Stream::printf(this, "CA::ColorProgram %p:\n", a1);
  v5 = *(a1 + 36) & 0x7FFFFFFF;
  if (v5)
  {
    v6 = *(a1 + 48);
    do
    {
      v7 = v5 & 0x1F;
      v8 = "UNKNOWN";
      if ((v5 & 0x1F) <= 0x15)
      {
        v8 = CA::ColorProgram::opcode_name(CA::ColorProgram::Opcode)::names[v7];
      }

      v9 = CA::ColorProgram::kOpcodeParamCount[v7];
      result = X::Stream::printf(this, "    %s:\n", v8);
      if (((0x1801uLL >> v7) & 1) == 0)
      {
        do
        {
          result = X::Stream::printf(this, "        %g %g %g %g\n", *v6, v6[1], v6[2], v6[3]);
          v6 += 4;
          --v9;
        }

        while (v9);
      }

      v10 = v5 >= 0x20;
      v5 >>= 5;
    }

    while (v10);
  }

  return result;
}

CA::ColorProgram::Cache *CA::ColorProgram::Cache::Cache(CA::ColorProgram::Cache *this, CGColorSpaceRef space)
{
  v3 = CGColorSpaceRetain(space);
  *this = v3;
  *(this + 1) = CAGetReconciledColorSpace(v3);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 32;
  *(this + 14) = 1065353216;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 76) = 1065353216;
  *(this + 84) = 0;
  *(this + 85) = 1;
  *(this + 87) = 0;
  *(this + 88) = xmmword_183E214E0;
  *(this + 13) = 0;
  CGColorTransformRetain();
  return this;
}

void CA::ColorProgram::Cache::~Cache(CA::ColorProgram::Cache *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = 0;
    do
    {
      *(this + 3) = *v2;
      CA::ColorProgram::Program::~Program(v2);
      free(v4);
      ++v3;
      v2 = *(this + 3);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    v6 = 0;
    do
    {
      *(this + 4) = *v5;
      CA::ColorProgram::Program::~Program(v5);
      free(v7);
      ++v6;
      v5 = *(this + 4);
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v11 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109376;
      v12[1] = v3;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "Flushed %d static and %d dynamic color programs", v12, 0xEu);
    }
  }

  CGColorSpaceRelease(*this);
  CGColorTransformRelease();
  for (i = *(this + 13); i; i = *(this + 13))
  {
    v9 = *(i + 24);
    *(this + 13) = *(i + 32);
    if (v9)
    {
      CFRelease(v9);
    }

    MEMORY[0x1865EA9A0](i, 0x1060C40FD4C721FLL);
  }

  v10 = *(this + 5);
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t CA::ColorProgram::Cache::set_colorspace(CGColorSpace **this, CGColorSpace *a2)
{
  v4 = *this;
  if (v4 == a2)
  {
    result = CGColorSpaceEqualToColorSpace();
    if (result)
    {
      return result;
    }

    v4 = *this;
  }

  CGColorSpaceRelease(v4);
  v6 = CGColorSpaceRetain(a2);
  *this = v6;
  this[1] = CAGetReconciledColorSpace(v6);
  result = this[2];
  if (result)
  {
    result = CGColorTransformRelease();
    this[2] = 0;
  }

  return result;
}

BOOL ___ZN2CA12ColorProgram7Program13color_programEPK21CGColorConversionInfoP12CGColorSpacei28CGColorConversionIterateTypebijfffffRb_block_invoke_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = &CADisplayTimerGetTypeID::type;
  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v35 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      _os_log_impl(&dword_183AA6000, v35, OS_LOG_TYPE_DEFAULT, "Stage = %ld, %ld TRCs\n", buf, 0x16u);
    }
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  CGColorTRCGetFunction();
  v10 = CGColorTRCGetGammaID();
  v11 = a1;
  if ((*(a1 + 80) & 0x80) == 0)
  {
    goto LABEL_6;
  }

  if (v10 != 1)
  {
    if (v10 == 4)
    {
      v12 = 0xBu;
      goto LABEL_10;
    }

LABEL_6:
    if (v44 > 9)
    {
      v12 = 0u;
    }

    else
    {
      v12 = dword_183E2FAC4[v44];
    }

    goto LABEL_10;
  }

  v12 = 0xCu;
LABEL_10:
  v13 = CA::ColorProgram::kOpcodeParamCount[v12];
  if (*(*(*(a1 + 32) + 8) + 24) >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v39 = v12 - 13;
    v36 = v12 - 15;
    v40 = v12 - 7;
    v41 = v12 - 3;
    v37 = v14;
    v38 = CA::ColorProgram::kOpcodeParamCount[v12];
    while (1)
    {
      v17 = *(a5 + 8 * v15);
      if ((v17 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v40 < 0xFFFFFFFB)
      {
        return v16;
      }

      if (v13 <= 3)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            if (v13 != 3)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          }

LABEL_60:
          *(*(*(v11[5] + 8) + 24) + 4 * v15 + 16) = 1065353216;
        }

        *(*(*(v11[5] + 8) + 24) + 4 * v15) = 1065353216;
        goto LABEL_62;
      }

      if (v13 <= 5)
      {
        if (v13 != 4)
        {
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (v13 == 6)
      {
        goto LABEL_56;
      }

      if (v13 == 7)
      {
        *(*(*(v11[5] + 8) + 24) + 4 * v15 + 96) = 0;
LABEL_56:
        *(*(*(v11[5] + 8) + 24) + 4 * v15 + 80) = 0;
LABEL_57:
        *(*(*(v11[5] + 8) + 24) + 4 * v15 + 64) = 0;
LABEL_58:
        *(*(*(v11[5] + 8) + 24) + 4 * v15 + 48) = 0;
LABEL_59:
        *(*(*(v11[5] + 8) + 24) + 4 * v15 + 32) = 0;
        goto LABEL_60;
      }

LABEL_62:
      v16 = v14 <= ++v15;
      if (v15 == v14)
      {
        goto LABEL_84;
      }
    }

    if (v17 >= *(a2 + 28))
    {
      return v16;
    }

    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v18 = v11;
    CGColorTRCGetFunction();
    v19 = CGColorTRCPureGammaOriginal();
    v11 = v18;
    if ((v18[10] & 4) == 0 && v41 <= 3 && v19)
    {
      DWORD2(v42[0]) = 1065353216;
      memset(v42 + 12, 0, 20);
    }

    if (*(v9 + 2105) == 1)
    {
      CA::ColorProgram::print_trc(v15, *(a5 + 8 * v15), v42, v19);
      v11 = v18;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    else if (!v15)
    {
      goto LABEL_24;
    }

    if (LODWORD(v42[0]) != v44)
    {
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v33 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_183AA6000, v33, OS_LOG_TYPE_INFO, "TRCs are not the same for each color channel, falling back to cube LUT\n", buf, 2u);
      }

      return v16;
    }

LABEL_24:
    if (v12 == 7)
    {
      v20 = *(a5 + 8 * v15);
      if (v20 < 0)
      {
        goto LABEL_94;
      }

      v21 = v11;
      v22 = v12;
      v23 = v9;
      v24 = a5;
      v25 = 0;
      v26 = *(v11 + 20);
      v27 = v20 + 1;
      v28 = -1;
      do
      {
        v48 = 0;
        memset(buf, 0, sizeof(buf));
        CGColorTRCGetFunction();
        v29 = CGColorTRCGetGammaID();
        if ((v26 & 0x80) != 0 && (v29 != 1 ? (v30 = v29 == 4) : (v30 = 1), v30))
        {
          v31 = 0;
        }

        else
        {
          v31 = *buf <= 9u && *buf == 5;
        }

        v28 += v31;
        ++v25;
      }

      while (v27 != v25);
      if ((v28 & 0x80000000) != 0)
      {
LABEL_94:
        __assert_rtn("lut_index_from_trc_index", "CAColorProgram.cpp", 554, "lut_index >= 0");
      }

      *(*(*(v21[5] + 8) + 24) + 4 * v15) = (*(*(*(*(v21[6] + 8) + 24) + 72) + 4 * v28) / *(*(v21[7] + 8) + 24));
      *(*(*(v21[5] + 8) + 24) + 4 * v15 + 16) = (v28 + 0.5) / *(*(*(v21[6] + 8) + 24) + 56);
      v9 = v23;
      a5 = v24;
      v12 = v22;
      v14 = v37;
      v13 = v38;
      v11 = v21;
      goto LABEL_62;
    }

    if (v39 > 1)
    {
      if (v36 > 1)
      {
        if (v13 <= 3)
        {
          if (v13 != 1)
          {
            if (v13 != 2)
            {
              if (v13 != 3)
              {
                goto LABEL_62;
              }

              goto LABEL_78;
            }

LABEL_79:
            *(*(*(v11[5] + 8) + 24) + 4 * v15 + 16) = DWORD2(v42[0]);
          }

          *(*(*(v11[5] + 8) + 24) + 4 * v15) = DWORD1(v42[0]);
          goto LABEL_62;
        }

        if (v13 <= 5)
        {
          if (v13 != 4)
          {
            goto LABEL_76;
          }

          goto LABEL_77;
        }

        if (v13 == 6)
        {
          goto LABEL_75;
        }

        if (v13 == 7)
        {
          *(*(*(v11[5] + 8) + 24) + 4 * v15 + 96) = HIDWORD(v42[1]);
LABEL_75:
          *(*(*(v11[5] + 8) + 24) + 4 * v15 + 80) = DWORD2(v42[1]);
LABEL_76:
          *(*(*(v11[5] + 8) + 24) + 4 * v15 + 64) = DWORD1(v42[1]);
LABEL_77:
          *(*(*(v11[5] + 8) + 24) + 4 * v15 + 48) = v42[1];
LABEL_78:
          *(*(*(v11[5] + 8) + 24) + 4 * v15 + 32) = HIDWORD(v42[0]);
          goto LABEL_79;
        }
      }

      else
      {
        **(*(v11[5] + 8) + 24) = HIDWORD(v42[1]);
      }
    }

    else
    {
      **(*(v11[5] + 8) + 24) = *(&v42[1] + 1) * 12.0;
    }

    goto LABEL_62;
  }

  v16 = 1;
LABEL_84:
  *(*(v11[8] + 8) + 24) |= v12 << *(*(v11[9] + 8) + 24);
  *(*(v11[9] + 8) + 24) += 5;
  *(*(v11[5] + 8) + 24) += 16 * v13;
  return v16;
}

uint64_t ___ZN2CA12ColorProgram7Program13color_programEPK21CGColorConversionInfoP12CGColorSpacei28CGColorConversionIterateTypebijfffffRb_block_invoke_34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  CGColorMatrixGetMatrix();
  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    CA::ColorProgram::print_matrix(a3, a4, &v12);
  }

  *(*(a1[4] + 8) + 24) = *(a2 + 20);
  **(*(a1[5] + 8) + 24) = v12;
  *(*(*(a1[5] + 8) + 24) + 4) = v13;
  *(*(*(a1[5] + 8) + 24) + 8) = v14;
  *(*(*(a1[5] + 8) + 24) + 12) = 0;
  v8 = DWORD2(v12);
  *(*(*(a1[5] + 8) + 24) + 16) = DWORD1(v12);
  v9 = HIDWORD(v12);
  *(*(*(a1[5] + 8) + 24) + 20) = DWORD1(v13);
  *(*(*(a1[5] + 8) + 24) + 24) = DWORD1(v14);
  *(*(*(a1[5] + 8) + 24) + 28) = 0;
  *(*(*(a1[5] + 8) + 24) + 32) = v8;
  v10 = HIDWORD(v13);
  *(*(*(a1[5] + 8) + 24) + 36) = DWORD2(v13);
  *(*(*(a1[5] + 8) + 24) + 40) = DWORD2(v14);
  *(*(*(a1[5] + 8) + 24) + 44) = 0;
  *(*(*(a1[5] + 8) + 24) + 48) = v9;
  *(*(*(a1[5] + 8) + 24) + 52) = v10;
  *(*(*(a1[5] + 8) + 24) + 56) = HIDWORD(v14);
  *(*(*(a1[5] + 8) + 24) + 60) = 0;
  *(*(a1[6] + 8) + 24) |= 1 << *(*(a1[7] + 8) + 24);
  *(*(a1[7] + 8) + 24) += 5;
  *(*(a1[5] + 8) + 24) += 64;
  return 1;
}

BOOL ___ZN2CA12ColorProgram7Program13color_programEPK21CGColorConversionInfoP12CGColorSpacei28CGColorConversionIterateTypebijfffffRb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v4 = *(*(a2 + 68) + 8 * a4);
  if (!v4)
  {
    return 0;
  }

  memset(v59, 0, sizeof(v59));
  CGColorNxMTransformGetTransform();
  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    CA::ColorProgram::print_nxm(a3, a4, v59);
  }

  v8 = *v59;
  if (*v59 > 8)
  {
    switch(*v59)
    {
      case 9:
        v36 = *&v59[28];
        **(*(*(a1 + 32) + 8) + 24) = *(*&v59[28] + 24);
        *(*(*(*(a1 + 32) + 8) + 24) + 4) = *(v36 + 20) - *(v36 + 24);
        *(*(*(*(a1 + 32) + 8) + 24) + 8) = 1.0 / (*(v36 + 20) - *(v36 + 24));
        *(*(*(*(a1 + 32) + 8) + 24) + 12) = 0;
        *(*(*(*(a1 + 32) + 8) + 24) + 16) = *(v36 + 32);
        *(*(*(*(a1 + 32) + 8) + 24) + 20) = *(v36 + 28);
        *(*(*(*(a1 + 32) + 8) + 24) + 24) = *(v36 + 36);
        *(*(*(*(a1 + 32) + 8) + 24) + 28) = *(v36 + 40);
        *(*(*(*(a1 + 32) + 8) + 24) + 32) = *(v36 + 44);
        *(*(*(*(a1 + 32) + 8) + 24) + 36) = 1.0 / *(v36 + 44);
        v37 = *(a1 + 104) * 0.0001 * *(v36 + 44);
        *(*(*(*(a1 + 32) + 8) + 24) + 40) = v37;
        *(*(*(*(a1 + 32) + 8) + 24) + 44) = 0;
        *(*(*(*(a1 + 32) + 8) + 24) + 48) = *(v36 + 56);
        *(*(*(*(a1 + 32) + 8) + 24) + 52) = *(v36 + 60);
        *(*(*(*(a1 + 32) + 8) + 24) + 56) = *(v36 + 64);
        *(*(*(*(a1 + 32) + 8) + 24) + 60) = *(v36 + 68);
        if (BYTE13(xmmword_1ED4E982C) == 1)
        {
          if (x_log_get_color(void)::once != -1)
          {
            dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
          }

          v48 = x_log_get_color(void)::log;
          if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v49 = *(a1 + 100);
            *buf = 134217984;
            v62 = v49;
            _os_log_impl(&dword_183AA6000, v48, OS_LOG_TYPE_DEFAULT, "    headroom: %g", buf, 0xCu);
          }
        }

        v38 = *(a1 + 64);
        v39 = *(*(*(a1 + 72) + 8) + 24);
        v40 = 18;
        break;
      case 0xA:
        v42 = *&v59[28];
        **(*(*(a1 + 32) + 8) + 24) = *(*&v59[28] + 4);
        *(*(*(*(a1 + 32) + 8) + 24) + 4) = v42[3];
        *(*(*(*(a1 + 32) + 8) + 24) + 8) = v42[4];
        *(*(*(*(a1 + 32) + 8) + 24) + 12) = v42[12];
        *(*(*(*(a1 + 32) + 8) + 24) + 16) = v42[13];
        *(*(*(*(a1 + 32) + 8) + 24) + 20) = v42[14];
        *(*(*(*(a1 + 32) + 8) + 24) + 24) = v42[15];
        *(*(*(*(a1 + 32) + 8) + 24) + 28) = v42[16];
        *(*(*(*(a1 + 32) + 8) + 24) + 32) = v42[8];
        *(*(*(*(a1 + 32) + 8) + 24) + 36) = v42[9];
        *(*(*(*(a1 + 32) + 8) + 24) + 40) = v42[10];
        *(*(*(*(a1 + 32) + 8) + 24) + 44) = v42[11];
        *(*(*(*(a1 + 32) + 8) + 24) + 48) = v42[2];
        *(*(*(*(a1 + 32) + 8) + 24) + 52) = v42[5];
        *(*(*(*(a1 + 32) + 8) + 24) + 56) = v42[6];
        *(*(*(*(a1 + 32) + 8) + 24) + 60) = v42[7];
        v43 = *(*(a1 + 40) + 8);
        v44 = *(v43 + 24);
        if (v44)
        {
          if (*(*(*(a1 + 56) + 8) + 24) < a3)
          {
            *v44 = *(*(*(a1 + 48) + 8) + 24);
            v43 = *(*(a1 + 40) + 8);
          }

          *(v43 + 24) = 0;
        }

        v38 = *(a1 + 64);
        v39 = *(*(*(a1 + 72) + 8) + 24);
        v40 = 20;
        break;
      case 0xB:
        v17 = *&v59[28];
        v18 = *(*&v59[28] + 28);
        v60 = 4 * v18;
        v19 = CA::Render::Image::new_image(0x18, v18, 1u, 1u, 0, (*&v59[28] + 36), &v60, CA::ColorProgram::release_nxmlut, v4, v58);
        *(*(*(*(a1 + 80) + 8) + 24) + 80) = v19;
        if (v19)
        {
          CFRetain(v4);
        }

        **(*(*(a1 + 32) + 8) + 24) = v17[2];
        *(*(*(*(a1 + 32) + 8) + 24) + 4) = v17[3];
        *(*(*(*(a1 + 32) + 8) + 24) + 8) = v17[4];
        *(*(*(*(a1 + 32) + 8) + 24) + 12) = v17[5];
        *(*(*(*(a1 + 32) + 8) + 24) + 16) = v17[6];
        *(*(*(*(a1 + 32) + 8) + 24) + 20) = (v18 - 1) / v18;
        *(*(*(*(a1 + 32) + 8) + 24) + 24) = 0.5 / v18;
        CGColorFunctionGetOutputRange();
        *(*(*(*(a1 + 32) + 8) + 24) + 28) = v20;
        v21 = *(a1 + 64);
        v22 = *(*(*(a1 + 72) + 8) + 24);
        v23 = 19;
        goto LABEL_35;
      default:
LABEL_38:
        if (x_log_get_color(void)::once != -1)
        {
          dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
        }

        v41 = x_log_get_color(void)::log;
        result = os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 0;
          v26 = "unsupported NxM format\n";
LABEL_42:
          v27 = v41;
          v28 = 2;
          goto LABEL_43;
        }

        return result;
    }

    *(*(v38 + 8) + 24) |= v40 << v39;
    *(*(*(a1 + 72) + 8) + 24) += 5;
    v34 = *(*(a1 + 32) + 8);
    v35 = *(v34 + 24) + 64;
    goto LABEL_70;
  }

  if ((*v59 - 5) >= 2 && *v59 != 3)
  {
    if (*v59 == 7)
    {
      v29 = *&v59[28];
      **(*(*(a1 + 32) + 8) + 24) = *(*&v59[28] + 4);
      *(*(*(*(a1 + 32) + 8) + 24) + 4) = *v29;
      *(*(*(*(a1 + 32) + 8) + 24) + 8) = 0;
      *(*(*(*(a1 + 32) + 8) + 24) + 12) = 0;
      *(*(*(*(a1 + 32) + 8) + 24) + 16) = v29[2];
      *(*(*(*(a1 + 32) + 8) + 24) + 20) = v29[3];
      *(*(*(*(a1 + 32) + 8) + 24) + 24) = v29[4];
      *(*(*(*(a1 + 32) + 8) + 24) + 28) = v29[5];
      if ((*(a1 + 96) & 0x40) != 0 && fabsf(v29[5] + -0.5) <= 0.00000011921)
      {
        v30 = *(*(*(a1 + 32) + 8) + 24);
        *(v30 + 16) = *(v30 + 16) + *(v30 + 16);
        v31 = *(*(*(a1 + 32) + 8) + 24);
        *(v31 + 20) = *(v31 + 20) + *(v31 + 20);
        v32 = *(*(*(a1 + 32) + 8) + 24);
        *(v32 + 24) = *(v32 + 24) + *(v32 + 24);
        *(*(*(*(a1 + 32) + 8) + 24) + 28) = 0;
        if (BYTE13(xmmword_1ED4E982C) == 1)
        {
          if (x_log_get_color(void)::once != -1)
          {
            dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
          }

          v52 = x_log_get_color(void)::log;
          if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v53 = *(*(*(a1 + 32) + 8) + 24);
            v54 = v53[4];
            v55 = v53[5];
            v56 = v53[6];
            v57 = v53[7];
            *buf = 134218752;
            v62 = v54;
            v63 = 2048;
            v64 = v55;
            v65 = 2048;
            v66 = v56;
            v67 = 2048;
            v68 = v57;
            _os_log_impl(&dword_183AA6000, v52, OS_LOG_TYPE_DEFAULT, "    overriding HLG luma_coeffs to (%f, %f, %f, %f)", buf, 0x2Au);
          }
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24);
      *(*(*(a1 + 48) + 8) + 24) = **(*(*(a1 + 32) + 8) + 24);
      *(*(*(a1 + 56) + 8) + 24) = a3;
      v33 = *(*(*(a1 + 32) + 8) + 24);
      *v33 = *v33 * *(a1 + 100);
      if (BYTE13(xmmword_1ED4E982C) == 1)
      {
        if (x_log_get_color(void)::once != -1)
        {
          dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
        }

        v50 = x_log_get_color(void)::log;
        if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 100);
          *buf = 134217984;
          v62 = v51;
          _os_log_impl(&dword_183AA6000, v50, OS_LOG_TYPE_DEFAULT, "    headroom: %g", buf, 0xCu);
        }
      }

      v21 = *(a1 + 64);
      v22 = *(*(*(a1 + 72) + 8) + 24);
      v23 = 17;
LABEL_35:
      *(*(v21 + 8) + 24) |= v23 << v22;
      *(*(*(a1 + 72) + 8) + 24) += 5;
      v34 = *(*(a1 + 32) + 8);
      v35 = *(v34 + 24) + 32;
LABEL_70:
      *(v34 + 24) = v35;
      return 1;
    }

    goto LABEL_38;
  }

  v10 = *&v59[12];
  *(*(*(a1 + 88) + 8) + 24) = *&v59[12];
  v11 = *&v59[4];
  if (*&v59[4] > 4uLL || ((1 << v59[4]) & 0x1A) == 0 || v10 != 3)
  {
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v24 = x_log_get_color(void)::log;
    result = os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 134218240;
      v62 = *&v59[4];
      v63 = 2048;
      v64 = *&v59[12];
      v26 = "%zux%zu LUT not supported.\n";
      v27 = v24;
      v28 = 22;
LABEL_43:
      _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
      return 0;
    }

    return result;
  }

  if (*&v59[4] == 4 && *(a1 + 108) == 2)
  {
    return 0;
  }

  v12 = *&v59[20];
  v13 = (*&v59[20] - 1);
  v14 = *&v59[20];
  **(*(*(a1 + 32) + 8) + 24) = v13 / *&v59[20];
  *(*(*(*(a1 + 32) + 8) + 24) + 4) = 0.5 / v14;
  *(*(*(*(a1 + 32) + 8) + 24) + 8) = v13;
  v15 = 1.0 / v12;
  *(*(*(*(a1 + 32) + 8) + 24) + 12) = v15;
  switch(v8)
  {
    case 3:
      v16 = 12;
      goto LABEL_53;
    case 6:
      v16 = 14;
      goto LABEL_53;
    case 5:
      v16 = 13;
LABEL_53:
      v60 = v12 * dword_183E22690[v16];
      if (v11 != 1)
      {
        if (v11 == 3)
        {
          LODWORD(v11) = v12 * v12;
        }

        else
        {
          LODWORD(v11) = v12 * v12 * v12;
        }
      }

      v45 = CA::Render::Image::new_image(v16, v12, v11, 1u, 0, *&v59[28], &v60, CA::ColorProgram::release_nxmlut, v4, v58);
      *(*(*(*(a1 + 80) + 8) + 24) + 80) = v45;
      if (v45)
      {
        CFRetain(v4);
      }

      if (*&v59[4] == 3)
      {
        v46 = 9;
      }

      else
      {
        v46 = 10;
      }

      if (*&v59[4] == 1)
      {
        v47 = 8;
      }

      else
      {
        v47 = v46;
      }

      *(*(*(a1 + 64) + 8) + 24) |= v47 << *(*(*(a1 + 72) + 8) + 24);
      *(*(*(a1 + 72) + 8) + 24) += 5;
      v34 = *(*(a1 + 32) + 8);
      v35 = *(v34 + 24) + 16;
      goto LABEL_70;
  }

  if (x_log_get_color(void)::once != -1)
  {
    dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
  }

  v41 = x_log_get_color(void)::log;
  result = os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    v26 = "unsupported NxM LUT data format\n";
    goto LABEL_42;
  }

  return result;
}

_DWORD *CA::ColorProgram::Program::null_program(CA::ColorProgram::Program *this)
{
  v4 = *MEMORY[0x1E69E9840];
  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v2 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEFAULT, "Creating null_program", v3, 2u);
    }
  }

  result = malloc_type_calloc(1uLL, 0x88uLL, 0x10F004033556A7DuLL);
  result[9] = 0;
  return result;
}

void CA::ColorProgram::print_nxm(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v102 = *MEMORY[0x1E69E9840];
  if (x_log_get_color(void)::once != -1)
  {
    dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
  }

  v6 = x_log_get_color(void)::log;
  if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a3 + 1);
    v8 = *(a3 + 3);
    v70 = 134218752;
    v71 = *&a1;
    v72 = 2048;
    v73 = v7;
    v74 = 2048;
    v75 = v8;
    v76 = 2048;
    v77 = *&a2;
    _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "Stage = %ld %zux%zu Transform %ld\n", &v70, 0x2Au);
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }
  }

  v9 = x_log_get_color(void)::log;
  if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3;
    if (v10 > 0xB)
    {
      *&v11 = COERCE_DOUBLE("Unknown NxM Transform Format");
    }

    else
    {
      v11 = off_1E6DF61B8[v10];
    }

    v70 = 136315138;
    v71 = *&v11;
    _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "    Format '%s'\n", &v70, 0xCu);
  }

  v12 = *a3;
  if (*a3 > 9)
  {
    if (v12 == 10)
    {
      v52 = *(a3 + 7);
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v53 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v52[8];
        v55 = v52[2];
        v56 = v52[3];
        v57 = v52[5];
        v58 = v52[6];
        v59 = v52[12];
        v60 = v52[13];
        v61 = v52[14];
        v62 = v52[15];
        v63 = v52[16];
        v64 = v52[9];
        v65 = v52[10];
        v66 = v52[11];
        v67 = v52[4];
        v68 = v52[7];
        v69 = v52[1];
        v70 = 134221824;
        v71 = v54;
        v72 = 2048;
        v73 = v55;
        v74 = 2048;
        v75 = v56;
        v76 = 2048;
        v77 = v57;
        v78 = 2048;
        v79 = v58;
        v80 = 2048;
        v81 = v59;
        v82 = 2048;
        v83 = v60;
        v84 = 2048;
        v85 = v61;
        v86 = 2048;
        v87 = v62;
        v88 = 2048;
        v89 = v63;
        v90 = 2048;
        v91 = v64;
        v92 = 2048;
        v93 = v65;
        v94 = 2048;
        v95 = v66;
        v96 = 2048;
        v97 = v67;
        v98 = 2048;
        v99 = v68;
        v100 = 2048;
        v101 = v69;
        v26 = "p0x=%g slope_adjusted=%g source_headroom=%g extension_offset=%g extension_weight=%g  a=%g b=%g c=%g d=%g e=%g p0y=%g p1y=%g p2y=%g target_headroom=%g output_gamma=%g luminance_scale=%g";
        v27 = v53;
        v28 = 162;
        goto LABEL_32;
      }
    }

    else if (v12 == 11)
    {
      v29 = *(a3 + 7);
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v30 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *v29;
        v32 = *(v29 + 4);
        v33 = *(v29 + 8);
        v34 = *(v29 + 12);
        v35 = *(v29 + 16);
        v36 = *(v29 + 20);
        v37 = *(v29 + 24);
        v38 = *(v29 + 28);
        v39 = *(v29 + 36);
        v40 = *(v29 + 40);
        v41 = v29 + 36 + 4 * *&v38;
        v42 = *(v41 - 4);
        v43 = *(v41 - 8);
        v70 = 134221056;
        v71 = v31;
        v72 = 2048;
        v73 = v32;
        v74 = 2048;
        v75 = v33;
        v76 = 2048;
        v77 = v34;
        v78 = 2048;
        v79 = v35;
        v80 = 2048;
        v81 = v36;
        v82 = 2048;
        v83 = v37;
        v84 = 2048;
        v85 = v38;
        v86 = 2048;
        *&v87 = v29 + 36;
        v88 = 2048;
        v89 = v39;
        v90 = 2048;
        v91 = v40;
        v92 = 2048;
        v93 = v42;
        v94 = 2048;
        v95 = v43;
        v26 = "\tFlex Luminance Scaling params:\n\t\tsource headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\tcoefficients[0] = % 3.10f\n\t\tcoefficients[1] = % 3.10f\n\t\tcoefficients[2] = % 3.10f\n\t\tcoefficients[3] = % 3.10f\n\t\tcoefficients[4] = % 3.10f\n\t\tFlexGTCTableCount = %zu\n\t\tFlexGTCTable = %p, [%f, %f, ..., %f, %f]\n";
        v27 = v30;
        v28 = 132;
        goto LABEL_32;
      }
    }
  }

  else if (v12 == 7)
  {
    v44 = *(a3 + 7);
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v45 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v44[1];
      v47 = *v44;
      v48 = v44[2];
      v49 = v44[3];
      v50 = v44[4];
      v51 = v44[5];
      v70 = 134219264;
      v71 = v46;
      v72 = 2048;
      v73 = v47;
      v74 = 2048;
      v75 = v48;
      v76 = 2048;
      v77 = v49;
      v78 = 2048;
      v79 = v50;
      v80 = 2048;
      v81 = v51;
      v26 = "    gain: %g, gamma: %g, luma_coeff: (%g, %g, %g), max_coeff %g";
      v27 = v45;
      v28 = 62;
      goto LABEL_32;
    }
  }

  else if (v12 == 9)
  {
    v13 = *(a3 + 7);
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v14 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13[5];
      v16 = v13[6];
      v17 = v13[8];
      v18 = v13[7];
      v19 = v13[9];
      v20 = v13[10];
      v21 = v13[11];
      v22 = v13[14];
      v23 = v13[15];
      v24 = v13[16];
      v25 = v13[17];
      v70 = 134220544;
      v71 = v15;
      v72 = 2048;
      v73 = v16;
      v74 = 2048;
      v75 = v17;
      v76 = 2048;
      v77 = v18;
      v78 = 2048;
      v79 = v19;
      v80 = 2048;
      v81 = v20;
      v82 = 2048;
      v83 = v21;
      v84 = 2048;
      v85 = v22;
      v86 = 2048;
      v87 = v23;
      v88 = 2048;
      v89 = v24;
      v90 = 2048;
      v91 = v25;
      v26 = "    master [%g %g], lum [%g %g], KneeStart %g, KneeScale %g, OpticalScale: %g, lumaCoef (%g, %g, %g, %g)";
      v27 = v14;
      v28 = 112;
LABEL_32:
      _os_log_impl(&dword_183AA6000, v27, OS_LOG_TYPE_DEFAULT, v26, &v70, v28);
    }
  }
}

void CA::ColorProgram::release_nxmlut(CA::ColorProgram *this, CFTypeRef cf, void *a3)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

double CA::ColorProgram::print_matrix(uint64_t a1, uint64_t a2, float *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (x_log_get_color(void)::once != -1)
  {
    dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
  }

  v6 = x_log_get_color(void)::log;
  if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
    v14 = a3[6];
    v15 = a3[7];
    v16 = a3[8];
    v17 = a3[9];
    v18 = a3[10];
    v19 = a3[11];
    v20 = 134221312;
    v21 = a1;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v8;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    v30 = 2048;
    v31 = v11;
    v32 = 2048;
    v33 = v12;
    v34 = 2048;
    v35 = v13;
    v36 = 2048;
    v37 = v14;
    v38 = 2048;
    v39 = v15;
    v40 = 2048;
    v41 = v16;
    v42 = 2048;
    v43 = v17;
    v44 = 2048;
    v45 = v18;
    v46 = 2048;
    v47 = v19;
    _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "Stage = %ld matrix %ld\n    %g %g %g %g\n    %g %g %g %g\n    %g %g %g %g", &v20, 0x8Eu);
  }

  return result;
}

void CA::ColorProgram::print_trc(CA::ColorProgram *this, uint64_t a2, uint64_t a3, CGColorTRC *a4)
{
  v6 = this;
  v77 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (*a3 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        if (x_log_get_color(void)::once != -1)
        {
          dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
        }

        v31 = x_log_get_color(void)::log;
        if (!os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v32 = *(a3 + 4);
        v33 = *(a3 + 12);
        v34 = *v33;
        v35 = v33[1];
        v36 = &v33[*&v32];
        v37 = *(v36 - 2);
        v38 = *(v36 - 1);
        v55 = 67110656;
        v56 = v6;
        v57 = 2048;
        v58 = a2;
        v59 = 2048;
        v60 = v32;
        v61 = 2048;
        v62 = v34;
        v63 = 2048;
        v64 = v35;
        v65 = 2048;
        v66 = v37;
        v67 = 2048;
        v68 = v38;
        v18 = "    TRC channel %d --> TRCs[%ld], Table: entries = %zu, [%g %g ... %g %g]\n";
        v19 = v31;
        v20 = 68;
LABEL_64:
        _os_log_impl(&dword_183AA6000, v19, OS_LOG_TYPE_DEFAULT, v18, &v55, v20);
        return;
      }

      if (v7 != 6)
      {
        return;
      }

      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v28 = x_log_get_color(void)::log;
      if (!os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v29 = *(a3 + 28);
      v55 = 67109632;
      v56 = v6;
      v57 = 2048;
      v58 = a2;
      v59 = 2048;
      v60 = v29;
      v18 = "    TRC channel %d --> TRCs[%ld], PQ EOTF (degamma), optical scale: %g";
    }

    else
    {
      if (v7 != 7)
      {
        if (v7 == 8)
        {
          if (x_log_get_color(void)::once != -1)
          {
            dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
          }

          v21 = x_log_get_color(void)::log;
          if (!os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v55 = 67109376;
          v56 = v6;
          v57 = 2048;
          v58 = a2;
          v18 = "    TRC channel %d --> TRCs[%ld], HLG InvOETF (degamma)";
        }

        else
        {
          if (v7 != 9)
          {
            return;
          }

          if (x_log_get_color(void)::once != -1)
          {
            dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
          }

          v21 = x_log_get_color(void)::log;
          if (!os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v55 = 67109376;
          v56 = v6;
          v57 = 2048;
          v58 = a2;
          v18 = "    TRC channel %d --> TRCs[%ld], HLG OETF (engamma)";
        }

        v19 = v21;
        v20 = 18;
        goto LABEL_64;
      }

      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v28 = x_log_get_color(void)::log;
      if (!os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v47 = *(a3 + 28);
      v55 = 67109632;
      v56 = v6;
      v57 = 2048;
      v58 = a2;
      v59 = 2048;
      v60 = v47;
      v18 = "    TRC channel %d --> TRCs[%ld], PQ InvEOTF (engamma), optical scale: %g";
    }

LABEL_52:
    v19 = v28;
    v20 = 28;
    goto LABEL_64;
  }

  v8 = a4;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (x_log_get_color(void)::once != -1)
        {
          dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
        }

        v22 = x_log_get_color(void)::log;
        if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a3 + 4);
          v23 = *(a3 + 8);
          v25 = *(a3 + 12);
          v55 = 67110914;
          v56 = v6;
          v57 = 2048;
          v58 = a2;
          v59 = 2048;
          v60 = v23;
          v61 = 2048;
          v62 = v25;
          v26 = (-v25 / v23);
          v27 = "NO";
          v63 = 2048;
          v64 = v24;
          v65 = 2048;
          v66 = v26;
          if (v8)
          {
            v27 = "YES";
          }

          v67 = 2048;
          v68 = v26;
          v69 = 2080;
          v70 = *&v27;
          v18 = "    TRC channel %d --> TRCs[%ld], Type1: Y = (%g*X+%g)^%g [X >= %g],  Y = 0 [X < %g] pure power original: %s\n";
          v19 = v22;
          v20 = 78;
          goto LABEL_64;
        }
      }

      return;
    }

    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v28 = x_log_get_color(void)::log;
    if (!os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v30 = *(a3 + 4);
    v55 = 67109632;
    v56 = v6;
    v57 = 2048;
    v58 = a2;
    v59 = 2048;
    v60 = v30;
    v18 = "    TRC channel %d --> TRCs[%ld], Type0: Y = X^%f \n";
    goto LABEL_52;
  }

  switch(v7)
  {
    case 2:
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v39 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a3 + 4);
        v40 = *(a3 + 8);
        v42 = *(a3 + 12);
        v43 = *(a3 + 16);
        v55 = 67111426;
        v44 = v43;
        v56 = v6;
        v57 = 2048;
        v58 = a2;
        v59 = 2048;
        v60 = v40;
        v61 = 2048;
        v62 = v42;
        v63 = 2048;
        v64 = v41;
        v65 = 2048;
        v66 = v44;
        v45 = "NO";
        v46 = (-v42 / v40);
        if (v8)
        {
          v45 = "YES";
        }

        v67 = 2048;
        v68 = v46;
        v69 = 2048;
        v70 = v44;
        v71 = 2048;
        v72 = v46;
        v73 = 2080;
        v74 = *&v45;
        v18 = "    TRC channel %d --> TRCs[%ld], Type2: Y = (%g*X+%g)^%g + %f [X >= %g],  Y = %g [X < %g] pure power original: %s\n";
        v19 = v39;
        v20 = 98;
        goto LABEL_64;
      }

      break;
    case 3:
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v48 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v49 = *(a3 + 8);
        v50 = *(a3 + 12);
        v51 = *(a3 + 4);
        v52 = *(a3 + 20);
        v53 = *(a3 + 16);
        v54 = "NO";
        if (v8)
        {
          v54 = "YES";
        }

        v55 = 67111170;
        v56 = v6;
        v57 = 2048;
        v58 = a2;
        v59 = 2048;
        v60 = v49;
        v61 = 2048;
        v62 = v50;
        v63 = 2048;
        v64 = v51;
        v65 = 2048;
        v66 = v52;
        v67 = 2048;
        v68 = v53;
        v69 = 2048;
        v70 = v52;
        v71 = 2080;
        v72 = *&v54;
        v18 = "    TRC channel %d --> TRCs[%ld], Type3: Y = (%g*X+%g)^%g [X >= %g],  Y = %g*X [X < %g] pure power original: %s\n";
        v19 = v48;
        v20 = 88;
        goto LABEL_64;
      }

      break;
    case 4:
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v9 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a3 + 8);
        v11 = *(a3 + 12);
        v12 = *(a3 + 4);
        v13 = *(a3 + 24);
        v14 = *(a3 + 20);
        v15 = *(a3 + 16);
        v16 = *(a3 + 28);
        v17 = "NO";
        if (v8)
        {
          v17 = "YES";
        }

        v55 = 67111682;
        v56 = v6;
        v57 = 2048;
        v58 = a2;
        v59 = 2048;
        v60 = v10;
        v61 = 2048;
        v62 = v11;
        v63 = 2048;
        v64 = v12;
        v65 = 2048;
        v66 = v13;
        v67 = 2048;
        v68 = v14;
        v69 = 2048;
        v70 = v15;
        v71 = 2048;
        v72 = v16;
        v73 = 2048;
        v74 = v14;
        v75 = 2080;
        v76 = v17;
        v18 = "    TRC channel %d --> TRCs[%ld], Type4: Y = (%g*X+%g)^%g + %g [X >= %g], Y = %g*X + %g [X < %g] pure power original: %s\n";
        v19 = v9;
        v20 = 108;
        goto LABEL_64;
      }

      break;
  }
}

void CA::ColorProgram::print_CGColorConverterInfo(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (x_log_get_color(void)::once != -1)
  {
    dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
  }

  v2 = x_log_get_color(void)::log;
  if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 4);
    v4 = *(a1 + 12);
    v5 = *(a1 + 20);
    v6 = *(a1 + 28);
    v7 = *(a1 + 36);
    v8 = *(a1 + 44);
    v9[0] = 67110400;
    v9[1] = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEFAULT, "CGColorConverter:\n    %d stages\n    %d input components\n    %d output components\n    %d TRCs\n    %d Matrices\n    %d NxM LUTs\n", v9, 0x26u);
  }
}

uint64_t ___ZN2CA12ColorProgram5Cache18force_single_cacheEv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CAForceSingleColorProgramCache", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    CA::ColorProgram::Cache::force_single_cache(void)::force_single_cache = result != 0;
  }

  return result;
}

void ___ZN2CA12ColorProgram5Cache7lookup_EP12CGColorSpacej22CGColorRenderingIntent_block_invoke()
{
  v22 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = 1024;
  v0 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  LODWORD(valuePtr[0]) = 1120403456;
  v1 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  LODWORD(valuePtr[0]) = 1008981770;
  v2 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  LODWORD(valuePtr[0]) = 1094713344;
  v3 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  LODWORD(valuePtr[0]) = 1034594987;
  v4 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  LODWORD(valuePtr[0]) = 1120403456;
  v5 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  valuePtr[2] = xmmword_1E6DF6120;
  valuePtr[3] = *&off_1E6DF6130;
  valuePtr[4] = xmmword_1E6DF6140;
  valuePtr[0] = xmmword_1E6DF6100;
  valuePtr[1] = *&off_1E6DF6110;
  values[0] = *MEMORY[0x1E695E4D0];
  values[1] = v0;
  values[2] = values[0];
  values[3] = v0;
  values[4] = v3;
  values[5] = v4;
  values[6] = v1;
  values[7] = v2;
  values[8] = values[0];
  values[9] = values[0];
  *keys = xmmword_1E6DF6150;
  v18[0] = values[0];
  v18[1] = values[0];
  v15 = xmmword_1E6DF6180;
  v16 = *&off_1E6DF6190;
  v17 = @"kCGSkipToneMappingForBT2100";
  *v13 = xmmword_1E6DF6160;
  v14 = *&off_1E6DF6170;
  v12[0] = values[0];
  v12[1] = v0;
  v12[2] = values[0];
  v12[3] = v0;
  v12[4] = v3;
  v12[5] = v4;
  v12[6] = v1;
  v12[7] = v2;
  v12[8] = values[0];
  v12[9] = values[0];
  v10 = values[0];
  v11 = @"kCGSkipToneMappingForBT2100";
  *v9 = xmmword_1E6DF61A8;
  v8[0] = v5;
  v8[1] = values[0];
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  CA::ColorProgram::Cache::lookup_(CGColorSpace *,unsigned int,CGColorRenderingIntent)::converter_options[0] = CFDictionaryCreate(0, valuePtr, values, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4E5200 = CFDictionaryCreate(0, keys, v18, 2, v6, v7);
  qword_1ED4E5208 = CFDictionaryCreate(0, v13, v12, 9, v6, v7);
  qword_1ED4E5210 = CFDictionaryCreate(0, &v11, &v10, 1, v6, v7);
  qword_1ED4E5218 = CFDictionaryCreate(0, v9, v8, 2, v6, v7);
  CFRelease(v0);
  CFRelease(v1);
  CFRelease(v2);
  CFRelease(v3);
  CFRelease(v4);
}

BOOL CA::ColorProgram::Cache::push_whippet_cache(uint64_t a1, CGColorSpaceRef a2, float a3, float a4, uint64_t a5, uint64_t a6)
{
  v11 = CGColorSpaceUsesITUR_2100TF(a2);
  if (v11 || (result = CGColorSpaceUsesExtendedRange(a2)))
  {
    v13 = !v11;
    if (a3 > 1.0)
    {
      v13 = 0;
    }

    if (a4 == 0.0)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(a1 + 72) > 0.0;
    if (*(a1 + 76) < 1.0)
    {
      v15 = 1;
    }

    if (a3 > 1.0 && a3 <= a4)
    {
      goto LABEL_17;
    }

    if (a4 == 0.0)
    {
      v17 = 0;
    }

    else
    {
      if (a3 > a4)
      {
        goto LABEL_17;
      }

      v18 = a3 > 1.0 && v15;
      v17 = a6 ? 1 : v18;
    }

    if (((v11 | v14) & 1) != 0 || v17)
    {
LABEL_17:
      operator new();
    }

    return 0;
  }

  return result;
}

int32x2_t *CA::ColorProgram::Cache::pop_whippet_cache(int32x2_t *this)
{
  v1 = this[13];
  if (v1)
  {
    this[10].i8[5] = **&v1;
    this[10].i8[4] = *(*&v1 + 1);
    this[7] = vrev64_s32(*(*&v1 + 4));
    this[9] = *(*&v1 + 12);
    v2 = *(*&v1 + 24);
    this[13] = *(*&v1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    JUMPOUT(0x1865EA9A0);
  }

  return this;
}

uint64_t CA::ColorProgram::Cache::convert_color(CA::ColorProgram::Cache *this, CGColorSpace *a2, float *a3, CGColorRenderingIntent a4)
{
  v7 = *(this + 85);
  if ((v7 & 1) == 0 && *(this + 84) != 1 || *(this + 15) <= 1.0)
  {
    if (!CARequiresColorMatching(a2, *this, 0))
    {
      return 1;
    }

    v7 = *(this + 85);
  }

  v8 = a3[3];
  v9 = v8 == 1.0;
  if (v8 == 1.0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  if (*(this + 80))
  {
    v9 = v10;
  }

  v11 = v9 | 0x80;
  if (*(this + 86))
  {
    v11 = v9;
  }

  if (*(this + 81))
  {
    v9 = v11;
  }

  if (*(this + 82))
  {
    v9 |= 8u;
  }

  if (*(this + 84))
  {
    v9 |= 0x10u;
  }

  if (v7)
  {
    v12 = v9 | 0x20;
  }

  else
  {
    v12 = v9;
  }

  if (*(this + 86))
  {
    v12 |= 0x40u;
  }

  if (!BYTE7(xmmword_1ED4E988C))
  {
    v12 |= 0x100u;
  }

  if (!BYTE8(xmmword_1ED4E988C))
  {
    v12 |= 0x200u;
  }

  if (*(this + 87))
  {
    v13 = v12 | 0x400;
  }

  else
  {
    v13 = v12;
  }

  result = CA::ColorProgram::Cache::lookup_(this, a2, v13, a4);
  if (result)
  {
    v20 = *(result + 36);
    if (v20)
    {
      v21 = v20 & 0x7FFFFFFF;
      if ((v20 & 0x7FFFFFFF) != 0)
      {
        v22 = *(result + 48);
        v23.i64[0] = 0x8000000080000000;
        v23.i64[1] = 0x8000000080000000;
        v24 = &qword_183E20000;
        v25 = &xmmword_183E21000;
        v26 = &xmmword_183E21000;
        v27 = &xmmword_183E21000;
        v15.i32[1] = 1070945621;
        v28 = 1.0;
        v29 = &xmmword_183E21000;
        while (2)
        {
          result = 0;
          switch(v21 & 0x1F)
          {
            case 1u:
              v30 = *a3;
              v31 = a3[1];
              v32 = a3[2];
              *a3 = ((v22[3].f32[0] + (v22->f32[0] * *a3)) + (v22[1].f32[0] * v31)) + (v22[2].f32[0] * v32);
              a3[1] = ((v22[3].f32[1] + (v22->f32[1] * v30)) + (v22[1].f32[1] * v31)) + (v22[2].f32[1] * v32);
              a3[2] = ((v22[3].f32[2] + (v22->f32[2] * v30)) + (v22[1].f32[2] * v31)) + (v22[2].f32[2] * v32);
              v22 += 4;
              goto LABEL_134;
            case 2u:
              for (i = 0; i != 3; ++i)
              {
                *v15.i32 = a3[i];
                v123 = v15;
                *v73.i32 = powf(fabsf(*v15.i32), v22->f32[i]);
                v23.i64[0] = 0x8000000080000000;
                v23.i64[1] = 0x8000000080000000;
                v16 = v123;
                v15 = vbslq_s8(v23, v73, v123);
                a3[i] = *v15.i32;
              }

              ++v22;
              v25 = &xmmword_183E21000;
              goto LABEL_134;
            case 3u:
              f32 = v22[2].f32;
              v52 = a3;
              v53 = 3;
              do
              {
                v54 = *(f32 - 8);
                v55 = *(f32 - 4);
                v56 = *f32++;
                v15.i32[0] = *v52;
                v119 = v15;
                v57 = fabsf(*v52);
                *v58.i32 = powf(v56 + (v57 * v55), v54);
                v23.i64[0] = 0x8000000080000000;
                v23.i64[1] = 0x8000000080000000;
                if (v57 < (-v56 / v55))
                {
                  *v58.i32 = 0.0;
                }

                v16 = v119;
                v15 = vbslq_s8(v23, v58, v119);
                *v52++ = *v15.i32;
                --v53;
              }

              while (v53);
              v22 += 3;
              v25 = &xmmword_183E21000;
              v26 = &xmmword_183E21000;
              v27 = &xmmword_183E21000;
              v28 = 1.0;
              v29 = &xmmword_183E21000;
              goto LABEL_134;
            case 4u:
              v41 = 0;
              v42 = v22[2].f32;
              do
              {
                v43 = *(v42 - 4);
                v44 = *v42;
                v45 = v42[4];
                *v15.i32 = a3[v41];
                v117 = v15;
                v46 = fabsf(*v15.i32);
                *v47.i32 = powf(*v42 + (v46 * v43), *(v42 - 8));
                v23.i64[0] = 0x8000000080000000;
                v23.i64[1] = 0x8000000080000000;
                *v47.i32 = *v47.i32 + v45;
                if (v46 < (-v44 / v43))
                {
                  *v47.i32 = v45;
                }

                v16 = v117;
                v15 = vbslq_s8(v23, v47, v117);
                a3[v41++] = *v15.i32;
                ++v42;
              }

              while (v41 != 3);
              v22 += 4;
              goto LABEL_84;
            case 5u:
              v74 = 0;
              v75 = v22[2].f32;
              do
              {
                v76 = v75[4];
                v77 = v75[8];
                *v18.i32 = a3[v74];
                v124 = v18;
                v78 = fabsf(*v18.i32);
                *v79.i32 = powf(*v75 + (v78 * *(v75 - 4)), *(v75 - 8));
                v23.i64[0] = 0x8000000080000000;
                v23.i64[1] = 0x8000000080000000;
                if (v78 < v77)
                {
                  *v79.i32 = v78 * v76;
                }

                v16 = v124;
                v15 = vbslq_s8(v23, v79, v124);
                a3[v74++] = *v15.i32;
                ++v75;
              }

              while (v74 != 3);
              v22 += 5;
              goto LABEL_84;
            case 6u:
              v33 = 0;
              v34 = v22[3].f32;
              do
              {
                v35 = *v34;
                v36 = v34[4];
                v37 = v34[8];
                v38 = v34[12];
                *v18.i32 = a3[v33];
                v116 = v18;
                v39 = fabsf(*v18.i32);
                *v40.i32 = powf(*(v34 - 4) + (v39 * *(v34 - 8)), *(v34 - 12));
                v23.i64[0] = 0x8000000080000000;
                v23.i64[1] = 0x8000000080000000;
                *v40.i32 = *v40.i32 + v37;
                if (v39 < v36)
                {
                  *v40.i32 = v38 + (v39 * v35);
                }

                v16 = v116;
                v15 = vbslq_s8(v23, v40, v116);
                a3[v33++] = *v15.i32;
                ++v34;
              }

              while (v33 != 3);
              v22 += 7;
LABEL_84:
              v25 = &xmmword_183E21000;
              v26 = &xmmword_183E21000;
              goto LABEL_133;
            case 0xBu:
              for (j = 0; j != 3; ++j)
              {
                *v16.i32 = a3[j];
                v69 = fabsf(*v16.i32);
                if (v69 <= 0.0031308)
                {
                  *v15.i32 = *v16.i32 * 12.92;
                }

                else
                {
                  v122 = v16;
                  v70 = powf(v69, 0.41667);
                  v23.i64[0] = 0x8000000080000000;
                  v23.i64[1] = 0x8000000080000000;
                  *v71.i32 = (v70 * 1.055) + -0.055;
                  v16 = v122;
                  v15 = vbslq_s8(v23, v71, v122);
                }

                a3[j] = *v15.i32;
              }

              goto LABEL_113;
            case 0xCu:
              for (k = 0; k != 3; ++k)
              {
                *v16.i32 = a3[k];
                v90 = fabsf(*v16.i32);
                if (v90 <= 0.04045)
                {
                  *v15.i32 = *v16.i32 * 0.077399;
                }

                else
                {
                  v127 = v16;
                  *v91.i32 = powf((v90 * 0.94787) + 0.052133, 2.4);
                  v23.i64[0] = 0x8000000080000000;
                  v23.i64[1] = 0x8000000080000000;
                  v16 = v127;
                  v15 = vbslq_s8(v23, v91, v127);
                }

                a3[k] = *v15.i32;
              }

              goto LABEL_113;
            case 0xDu:
              v48 = 0;
              v49 = v22->f32[0];
              do
              {
                *v17.i32 = a3[v48];
                v50 = fabsf(*v17.i32);
                if (v50 <= 0.083333)
                {
                  *v15.i32 = *v17.i32 * *v17.i32;
                  v16.i64[0] = 0x3FD5555555555555;
                }

                else
                {
                  v118 = v17;
                  *v15.i32 = expf((v50 * 5.5918) + -3.1309);
                  v17 = v118;
                  v23.i64[0] = 0x8000000080000000;
                  v23.i64[1] = 0x8000000080000000;
                  *v15.i32 = *v15.i32 + 0.28467;
                  v16.i64[0] = 0x3FB5555555555555;
                }

                *v15.i64 = *v16.i64 * *v15.i32;
                *v15.i32 = *v15.i64;
                v15 = vbslq_s8(v23, v15, v17);
                a3[v48++] = *v15.i32 * v49;
              }

              while (v48 != 3);
              goto LABEL_112;
            case 0xEu:
              v80 = 0;
              v81 = v22->f32[0];
              do
              {
                *v17.i32 = a3[v80];
                v82 = fabsf(*v17.i32) * v81;
                v83 = v82;
                if (v82 <= 0.083333)
                {
                  v16.i64[0] = 3.0;
                  *v15.i64 = sqrt(v83 * 3.0);
                }

                else
                {
                  v125 = v17;
                  *v15.i64 = log(*(v24 + 139) + v83 * 12.0);
                  v23.i64[0] = 0x8000000080000000;
                  v23.i64[1] = 0x8000000080000000;
                  v16.i32[1] = 1071770313;
                  *v15.i64 = *v15.i64 * 0.178832769 + 0.559910715;
                  v17 = v125;
                }

                *v15.i32 = *v15.i64;
                v15 = vbslq_s8(v23, v15, v17);
                a3[v80++] = *v15.i32;
              }

              while (v80 != 3);
              goto LABEL_112;
            case 0xFu:
              v92 = 0;
              v93 = v22->f32[0];
              do
              {
                *v17.i32 = a3[v92];
                if (*v17.i32 == 0.0)
                {
                  v16.i64[0] = 0;
                }

                else
                {
                  v94 = fabsf(*v17.i32);
                  v16.i32[0] = 1.0;
                  if (v94 < 1.0)
                  {
                    v128 = v17;
                    v95 = powf(v94, 0.012683);
                    v96 = (v95 + -0.83594) / ((v95 * *(v26 + 702)) + 18.852);
                    v97 = powf(v96, 6.2774);
                    v17 = v128;
                    v23.i64[0] = 0x8000000080000000;
                    v23.i64[1] = 0x8000000080000000;
                    v98 = v96 > 0.0;
                    v28 = 1.0;
                    if (v98)
                    {
                      *v16.i32 = v97;
                    }

                    else
                    {
                      *v16.i32 = 0.0;
                    }
                  }
                }

                v15 = vbslq_s8(v23, v16, v17);
                a3[v92++] = *v15.i32 * v93;
              }

              while (v92 != 3);
LABEL_112:
              ++v22;
LABEL_113:
              v25 = &xmmword_183E21000;
              goto LABEL_134;
            case 0x10u:
              v59 = v25;
              v60 = 0;
              v61 = v22->f32[0];
              do
              {
                *v15.i32 = a3[v60];
                v120 = v15;
                v62 = powf(fabsf(*v15.i32) * v61, 0.1593);
                *v63.i32 = powf(((v62 * *(v59 + 701)) + 0.83594) / (v28 + (v62 * *(v27 + 705))), *(v29 + 706));
                v23.i64[0] = 0x8000000080000000;
                v23.i64[1] = 0x8000000080000000;
                v16 = v120;
                v15 = vbslq_s8(v23, v63, v120);
                a3[v60++] = *v15.i32;
              }

              while (v60 != 3);
              ++v22;
              v25 = v59;
              v26 = &xmmword_183E21000;
              v24 = &qword_183E20000;
              goto LABEL_134;
            case 0x11u:
              v84 = v22->f32[0];
              v19.i32[0] = a3[2];
              v126 = v19;
              v85.i64[0] = *a3;
              v114 = *v85.f32;
              LODWORD(v86) = HIDWORD(*a3);
              if (v85.f32[0] >= v85.f32[1])
              {
                LODWORD(v86) = *a3;
              }

              if (v86 < *v19.i32)
              {
                v86 = a3[2];
              }

              v85.i64[1] = __PAIR64__(LODWORD(v86), v19.u32[0]);
              v87 = vmulq_f32(v22[1], v85);
              v88 = fabsf(vaddv_f32(*&vpaddq_f32(v87, v87)));
              if (v88 < 0.00000011921)
              {
                v88 = 0.00000011921;
              }

              *v15.i32 = powf(v88, v22->f32[1]);
              v23.i64[0] = 0x8000000080000000;
              v23.i64[1] = 0x8000000080000000;
              *v15.i32 = *v15.i32 * v84;
              *a3 = vmul_n_f32(v114, *v15.i32);
              v16 = v126;
              a3[2] = *v15.i32 * *v126.i32;
              v22 += 2;
              goto LABEL_134;
            case 0x14u:
              *v18.i8 = vmul_n_f32(*a3, v22->f32[0]);
              v64 = a3[2] * v22->f32[0];
              v65 = *&v18.i32[1];
              if (*v18.i32 >= *&v18.i32[1])
              {
                v65 = *v18.i32;
              }

              if (v65 < v64)
              {
                v65 = a3[2] * v22->f32[0];
              }

              if (v65 >= 0.001)
              {
                v66 = v65;
              }

              else
              {
                v66 = 0.001;
              }

              v121 = v18;
              if (v66 >= v22[2].f32[0])
              {
                if (v66 <= v22->f32[1])
                {
                  v110 = v22[1].f32[0] + (v66 * v22->f32[3]);
                  if (v110 < 0.0)
                  {
                    v110 = 0.0;
                  }

                  v111 = (sqrtf(v110) + v22[1].f32[1]) * v22[1].f32[2];
                  v112 = 1.0 - v111;
                  *v16.i64 = v22[2].f32[2] * (v111 + v111) + v112 * v22[2].f32[1];
                  v67 = ((v111 * v111) * v22[2].f32[3]) + *v16.i64 * v112;
                }

                else
                {
                  v67 = v22[3].f32[1] + (v66 * v22[3].f32[2]);
                }
              }

              else
              {
                v67 = v66 * v22[3].f32[0];
              }

              v16.i32[0] = v22->i32[2];
              v115 = v16;
              *v15.i32 = powf(v67 * v22[1].f32[3], v22[3].f32[3]);
              v19 = v115;
              *v15.i32 = (*v15.i32 * *v115.i32) / v66;
              v16.i64[1] = v121.i64[1];
              *v16.i8 = vmul_n_f32(*v121.i8, *v15.i32);
              *v17.i8 = vdup_lane_s32(*v115.i8, 0);
              *v18.i8 = vcgt_f32(*v16.i8, *v17.i8);
              *v16.i8 = vbsl_s8(*v18.i8, *v17.i8, *v16.i8);
              *a3 = v16.i64[0];
              *v15.i32 = *v15.i32 * v64;
              if (*v115.i32 < *v15.i32)
              {
                v15.i32[0] = v115.i32[0];
              }

              a3[2] = *v15.i32;
              v22 += 4;
              v23.i64[0] = 0x8000000080000000;
              v23.i64[1] = 0x8000000080000000;
LABEL_133:
              v28 = 1.0;
              goto LABEL_134;
            case 0x15u:
              v99 = v22->f32[0];
              v100 = v22->f32[1];
              v101 = v22->f32[2];
              v102 = v22->f32[3];
              v104 = v22[1].f32[0];
              v103 = v22[1].f32[1];
              v105 = v22[2].f32[0];
              *v16.i8 = vmul_n_f32(*a3, v22->f32[0]);
              *a3 = v16.i64[0];
              v106 = a3[2] * v99;
              a3[2] = v106;
              v107 = *&v16.i32[1];
              if (*v16.i32 >= *&v16.i32[1])
              {
                v107 = *v16.i32;
              }

              if (v107 < v106)
              {
                v107 = v106;
              }

              if (fabsf(v107) <= 0.0000001)
              {
                a3[2] = 0.0;
                *a3 = 0;
              }

              else
              {
                if (v107 <= v28)
                {
                  v101 = v107 * v105;
                }

                else if (v107 <= v100)
                {
                  v108 = v104 + (v107 * v102);
                  if (v108 < 0.0)
                  {
                    v108 = 0.0;
                  }

                  v109 = (sqrtf(v108) + v103) / v102;
                  v101 = v105 + ((v109 * (v105 - v101)) * (v109 + -2.0));
                }

                v113 = v101 / v107;
                *v16.i8 = vmul_n_f32(*v16.i8, v113);
                *a3 = v16.i64[0];
                a3[2] = v113 * v106;
                v22 += 3;
              }

LABEL_134:
              v98 = v21 > 0x1F;
              v21 >>= 5;
              if (!v98)
              {
                return 1;
              }

              continue;
            default:
              return result;
          }
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}