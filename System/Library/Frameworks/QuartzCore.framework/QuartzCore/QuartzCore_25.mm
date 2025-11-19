_DWORD *CA::Render::set_transform_property(CA::Render *this, CA::Render::Vector *a2, int *a3, const unsigned int *a4, unint64_t a5, uint64_t a6, const double *a7)
{
  v9 = a4;
  v11 = a2;
  v51 = *MEMORY[0x1E69E9840];
  v13 = &CA::Mat4Impl::mat4_identity_double;
  if (this)
  {
    v14 = *(this + 4);
    v15 = (this + 24);
    if (v14 > 0xF)
    {
      v13 = v15;
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  CA::Mat4Impl::mat4_get_unmatrix(v13, &v42, 0);
  if (v11 != 2)
  {
    if (v11 != 1)
    {
      goto LABEL_81;
    }

    v18 = *a3;
    if (a5 && v18 == 616)
    {
      goto LABEL_8;
    }

    if (a5 && v18 == 621)
    {
      v25 = *a6;
      if (v9)
      {
        v26 = vaddq_f64(v42, vdupq_lane_s64(*&v25, 0));
        v25 = v25 + *&v43;
      }

      else
      {
        v26 = vdupq_lane_s64(*&v25, 0);
      }

      v42 = v26;
      *&v43 = v25;
      goto LABEL_81;
    }

    if (!a5 || v18 != 720)
    {
      goto LABEL_81;
    }

    if (!v9)
    {
      *&v45 = *a6;
      if (a5 <= 1)
      {
        goto LABEL_81;
      }

      *(&v45 + 1) = *(a6 + 8);
      if (a5 == 2)
      {
        goto LABEL_81;
      }

      v37 = *(a6 + 16);
LABEL_78:
      *&v46 = v37;
      goto LABEL_81;
    }

    *&v45 = *a6 + *&v45;
    if (a5 <= 1)
    {
      goto LABEL_81;
    }

    *(&v45 + 1) = *(a6 + 8) + *(&v45 + 1);
    if (a5 == 2)
    {
      goto LABEL_81;
    }

    v29 = *&v46;
    v30 = *(a6 + 16);
LABEL_72:
    v37 = v30 + v29;
    goto LABEL_78;
  }

  v20 = *a3;
  if (a5 && v20 == 621)
  {
    v21 = a3[1];
    if (v21 > 759)
    {
      if (v21 == 760)
      {
        if (v9)
        {
          v35 = *a6 + *&v42.i64[1];
        }

        else
        {
          v35 = *a6;
        }

        *&v42.i64[1] = v35;
      }

      else if (v21 == 762)
      {
        if (v9)
        {
          v33 = *a6 + *&v43;
        }

        else
        {
          v33 = *a6;
        }

        *&v43 = v33;
      }
    }

    else if (v21 == 756)
    {
      if (v9)
      {
        v34 = *a6 + *v42.i64;
      }

      else
      {
        v34 = *a6;
      }

      *v42.i64 = v34;
    }

    else if (v21 == 759)
    {
      v22 = vld1q_dup_f64(a6);
      v23 = vaddq_f64(v42, v22);
      if (v9)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      v42 = vbslq_s8(vdupq_n_s64(v24), v23, v22);
    }
  }

  else if (a5 && v20 == 616)
  {
    v27 = a3[1];
    switch(v27)
    {
      case 762:
LABEL_8:
        if (v9)
        {
          v19 = *a6 + *(&v49 + 1);
        }

        else
        {
          v19 = *a6;
        }

        *(&v49 + 1) = v19;
        break;
      case 760:
        if (v9)
        {
          v36 = *a6 + *&v49;
        }

        else
        {
          v36 = *a6;
        }

        *&v49 = v36;
        break;
      case 756:
        if (v9)
        {
          v28 = *a6 + *(&v48 + 1);
        }

        else
        {
          v28 = *a6;
        }

        *(&v48 + 1) = v28;
        break;
    }
  }

  else
  {
    if (!a5 || v20 != 720)
    {
      goto LABEL_81;
    }

    v31 = a3[1];
    switch(v31)
    {
      case 762:
        if ((v9 & 1) == 0)
        {
          v37 = *a6;
          goto LABEL_78;
        }

        v29 = *&v46;
        v30 = *a6;
        goto LABEL_72;
      case 760:
        if (v9)
        {
          v38 = *a6 + *(&v45 + 1);
        }

        else
        {
          v38 = *a6;
        }

        *(&v45 + 1) = v38;
        break;
      case 756:
        if (v9)
        {
          v32 = *a6 + *&v45;
        }

        else
        {
          v32 = *a6;
        }

        *&v45 = v32;
        break;
    }
  }

LABEL_81:
  memset(v41, 0, sizeof(v41));
  CA::Mat4Impl::mat4_set_unmatrix(v41, &v42, v16, v17);
  return CA::Render::Vector::new_vector(0x10, v41, v39);
}

double CA::OGL::SampleMapFilter::max_range(CA::OGL::SampleMapFilter *this, const CA::Render::Filter *a2)
{
  float_key = CA::Render::KeyValueArray::get_float_key(this, 325, 1.0);
  v4 = 0.0;
  if (!this)
  {
    goto LABEL_13;
  }

  v5 = *(this + 4);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(this + v6 + 3);
    if (*(v7 + 16) == 394)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_13;
    }
  }

  if ((v6 & 0x80000000) == 0 && (v8 = *(v7 + 24)) != 0 && *(v8 + 12) == 62)
  {
    v9 = *(v8 + 16);
    v10 = 0.0;
    if (v9)
    {
      v4 = *(v8 + 24);
      if (v9 == 1)
      {
        v10 = *(v8 + 24);
      }

      else
      {
        v10 = *(v8 + 32);
      }
    }
  }

  else
  {
LABEL_13:
    v10 = 0.0;
  }

  return fabs(float_key) * fmaxf(fmaxf(vabds_f32(1.0, v4), vabds_f32(1.0, v10)), fmaxf(fabsf(v4), fabsf(v10)));
}

void CA::OGL::SampleMapFilter::ROI(CA::OGL::SampleMapFilter *this, CA::OGL::SampleMapFilter **a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v5 = CA::OGL::SampleMapFilter::max_range(a2[5], a2);
  v7 = a4[1].f64[0];
  v6 = a4[1].f64[1];
  if (v7 <= v6)
  {
    v8 = a4[1].f64[1];
  }

  else
  {
    v8 = a4[1].f64[0];
  }

  if (v8 < 1.79769313e308)
  {
    if (v7 >= v6)
    {
      v9 = a4[1].f64[1];
    }

    else
    {
      v9 = a4[1].f64[0];
    }

    if (v9 > 0.0)
    {
      *a4 = vaddq_f64(*a4, vdupq_lane_s64(COERCE__INT64(-v5), 0));
      v10 = v5 + v5;
      v11 = v10 + v7;
      v12 = v10 + v6;
      a4[1].f64[0] = v11;
      a4[1].f64[1] = v12;
      if (v11 <= 0.0 || v12 <= 0.0)
      {
        a4[1].f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }
    }
  }
}

float64x2_t *CA::BoundsImpl::inset(float64x2_t *result, float64_t a2, float64_t a3)
{
  v4 = result[1].f64[0];
  v3 = result[1].f64[1];
  if (v4 <= v3)
  {
    v5 = result[1].f64[1];
  }

  else
  {
    v5 = result[1].f64[0];
  }

  if (v5 < 1.79769313e308)
  {
    if (v4 >= v3)
    {
      v6 = result[1].f64[1];
    }

    else
    {
      v6 = result[1].f64[0];
    }

    if (v6 > 0.0)
    {
      v7.f64[0] = a2;
      v7.f64[1] = a3;
      *result = vaddq_f64(*result, v7);
      v8 = v4 - (a2 + a2);
      v9 = v3 - (a3 + a3);
      result[1].f64[0] = v8;
      result[1].f64[1] = v9;
      if (v8 <= 0.0 || v9 <= 0.0)
      {
        result[1].f64[0] = 0.0;
        result[1].f64[1] = 0.0;
      }
    }
  }

  return result;
}

void CA::OGL::emit_combine_scaled(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, CA::Shape *a5, unsigned int *a6, float a7, float a8)
{
  v121[3] = *MEMORY[0x1E69E9840];
  *(*(a1 + 16) + 16) = a2;
  v14 = 0uLL;
  if (a3)
  {
    CA::OGL::Context::bind_surface(a1, a3, 0, 1u, 1, 0.0);
    v14 = 0uLL;
    v16 = *(a3 + 56);
    v15 = *(a3 + 60);
    v17 = *(a3 + 48);
    v18.i64[0] = v17;
    v18.i64[1] = SHIDWORD(v17);
    v19 = vcvtq_f64_s64(v18);
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  v15 = 0;
  v19 = 0uLL;
  if (a4)
  {
LABEL_3:
    v115 = v19;
    CA::OGL::Context::bind_surface(a1, a4, 1u, 1u, 1, 0.0);
    v19 = v115;
    v14 = *(a4 + 48);
  }

LABEL_4:
  *v20.i64 = v16;
  v21 = v15;
  v22.i32[0] = vextq_s8(v14, v14, 8uLL).u32[0];
  v22.i32[1] = v16;
  v23.i32[0] = vdup_laneq_s32(v14, 3).u32[0];
  v23.i32[1] = v15;
  v24 = vcgt_s32(vmax_s32(v22, v23), vdup_n_s32(0x3FFFFFFEu));
  v25 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (v24.i8[4])
  {
    *v20.i64 = 1.79769313e308;
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  v27 = vdupq_n_s64(v26);
  if (v24.i8[4])
  {
    v21 = 1.79769313e308;
  }

  v28 = 1.0 / a7;
  v29 = (1.0 / a7);
  *&v20.i64[1] = v21;
  v30 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v31 = vbslq_s8(v27, v30, v19);
  v32.i64[0] = v14.i32[2];
  v32.i64[1] = v14.i32[3];
  v33 = vcvtq_f64_s64(v32);
  v34 = vdup_lane_s32(v24, 0);
  v32.i64[0] = v34.i32[0];
  v32.i64[1] = v34.i32[1];
  v35 = v32;
  v36 = vbslq_s8(v32, v25, v33);
  v32.i64[0] = v14.i32[0];
  v32.i64[1] = v14.i32[1];
  v37 = vbslq_s8(v35, v30, vcvtq_f64_s64(v32));
  _ZF = *v20.i64 >= 1.79769313e308 || v28 == 1.0;
  v39.i64[1] = v31.i64[1];
  v40.i64[1] = v20.i64[1];
  if (_ZF)
  {
    v41 = 0;
  }

  else
  {
    v41 = -1;
  }

  v42 = vdupq_n_s64(v41);
  *v40.i64 = *v20.i64 * v29;
  v43 = vbslq_s8(v42, v40, v20);
  *v39.i64 = v29 * *v31.i64;
  v114 = vbslq_s8(v42, v39, v31);
  if (v28 != 1.0 && v43.f64[1] < 1.79769313e308)
  {
    v44.f64[0] = v114.f64[0];
    v44.f64[1] = vmuld_lane_f64(v29, v114, 1);
    v114 = v44;
    v43.f64[1] = v43.f64[1] * v29;
  }

  v45 = 1.0 / a8;
  v46 = (1.0 / a8);
  v47 = *v36.i64 >= 1.79769313e308 || v45 == 1.0;
  v48.i64[1] = v37.i64[1];
  v49.i64[1] = v36.i64[1];
  if (v47)
  {
    v50 = 0;
  }

  else
  {
    v50 = -1;
  }

  v51 = vdupq_n_s64(v50);
  *v49.i64 = v46 * *v36.i64;
  v52 = vbslq_s8(v51, v49, v36);
  *v48.i64 = v46 * *v37.i64;
  v113 = vbslq_s8(v51, v48, v37);
  if (v45 != 1.0 && v52.f64[1] < 1.79769313e308)
  {
    v53.f64[0] = v113.f64[0];
    v53.f64[1] = vmuld_lane_f64(v46, v113, 1);
    v113 = v53;
    v52.f64[1] = v52.f64[1] * v46;
  }

  v54 = vceqzq_f64(v43);
  if ((vorrq_s8(vdupq_laneq_s64(v54, 1), v54).u64[0] & 0x8000000000000000) != 0 || (v55 = vceqq_f64(v43, v43), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v55), 1), v55).u64[0] & 0x8000000000000000) != 0))
  {
    v118 = 0uLL;
    v57 = 0uLL;
  }

  else
  {
    v56 = vcvtmq_s64_f64(vmaxnmq_f64(v114, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v57 = vuzp1q_s32(v56, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v114, v43), vdupq_n_s64(0x41C0000000000000uLL))), v56));
    v118 = v57;
  }

  v58 = vceqzq_f64(v52);
  v59 = 0uLL;
  v116 = v57;
  if ((vorrq_s8(vdupq_laneq_s64(v58, 1), v58).u64[0] & 0x8000000000000000) == 0)
  {
    v60 = vceqq_f64(v52, v52);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v60), 1), v60).u64[0] & 0x8000000000000000) == 0)
    {
      v61 = vcvtmq_s64_f64(vmaxnmq_f64(v113, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v59 = vuzp1q_s32(v61, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v113, v52), vdupq_n_s64(0x41C0000000000000uLL))), v61));
    }
  }

  *v109 = v59;
  if ((*(*a1 + 1072))(a1))
  {
    v117 = 0uLL;
    v62 = &v118;
    v107 = a5;
    if (a2 <= 0x36)
    {
      if (((1 << a2) & 0x78000003FC1B5ELL) != 0)
      {
LABEL_37:
        v110 = CA::Shape::intersect(a5, v62);
LABEL_38:
        v63 = 1;
        goto LABEL_39;
      }

      if (((1 << a2) & 0x480) != 0)
      {
        v117 = v116;
        v99 = vextq_s8(*v109, *v109, 8uLL).u64[0];
        v100 = vclez_s32(v116.u64[1]);
        v101 = vpmax_u32(v100, v100).u32[0];
        v102 = vclez_s32(v99);
        v103 = vpmax_u32(v102, v102).u32[0];
        if ((v101 & 0x80000000) != 0)
        {
          if ((v103 & 0x80000000) != 0)
          {
            v110 = 1;
            goto LABEL_38;
          }

          v117.i64[0] = v109[0];
          v117.i32[2] = v109[1];
          v106 = HIDWORD(v109[1]);
        }

        else
        {
          if ((v103 & 0x80000000) != 0)
          {
LABEL_108:
            v62 = &v117;
            goto LABEL_37;
          }

          v104 = vmin_s32(*v116.i8, v109[0]);
          v105 = vsub_s32(vmax_s32(vadd_s32(*v116.i8, v116.u64[1]), vadd_s32(v109[0], v99)), v104);
          *v117.i8 = v104;
          v117.i32[2] = v105.i32[0];
          v106 = v105.i32[1];
        }

        v117.i32[3] = v106;
        goto LABEL_108;
      }

      if (a2 == 5)
      {
        v117 = v116;
        v62 = &v117;
        if ((CA::BoundsImpl::intersect(&v117, v109[0], *&vextq_s8(*v109, *v109, 8uLL)) & 1) == 0)
        {
          v65 = *(*(a1 + 16) + 8);
          v66 = v65 >> 16;
          v67 = HIDWORD(v65);
          v68 = HIWORD(v65);
          v108 = 1;
          v110 = 1;
          goto LABEL_53;
        }

        goto LABEL_37;
      }
    }

    v63 = 0;
    if (a2 - 75 > 0x11)
    {
      v110 = a5;
    }

    else
    {
      v110 = a5;
      if (((1 << (a2 - 75)) & 0x30C01) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    v64 = *(a1 + 16);
    v65 = *(v64 + 8);
    v66 = v65 >> 16;
    v67 = HIDWORD(v65);
    v68 = HIWORD(v65);
    v108 = v63;
    if (a2 - 8 >= 2)
    {
      if (a2 == 7)
      {
        _S0 = *a6;
        __asm { FCVT            H0, S0 }

        LOWORD(v65) = _S0;
        LOWORD(v66) = _S0;
        LOWORD(v67) = _S0;
        v68 = _S0;
      }
    }

    else
    {
      *(v64 + 24) = *a6;
    }

LABEL_53:
    v74 = CA::OGL::Context::need_transparent_source(a1);
    v75 = *(a1 + 64);
    if (v75 == 1)
    {
      *(a1 + 64) = 0;
    }

    *(a1 + 144) = 0;
    v76 = a1 + 1386;
    *(a1 + 112) = a1 + 1386;
    *(a1 + 120) = xmmword_183E20E50;
    v121[1] = 0;
    v121[2] = 0;
    v121[0] = v110;
    v77 = (v67 << 32) | (v68 << 48) | (v66 << 16) | v65;
    while (CA::ShapeIterator::iterate(v121, &v117))
    {
      if (*(a1 + 108))
      {
        v78 = 6;
      }

      else
      {
        v78 = 4;
      }

      if ((*(a1 + 144) + 4) > *(a1 + 152) || (v79 = *(a1 + 128)) != 0 && *(a1 + 120) + v78 > v79)
      {
        *(a1 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(a1);
        *(a1 + 144) = 0;
        *(a1 + 112) = v76;
        *(a1 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(a1, v117.i32[0], v117.i32[1], (v117.i32[2] + v117.i32[0]), (v117.i32[3] + v117.i32[1]));
      v80 = *(a1 + 136) + 48 * *(a1 + 144);
      *(v80 - 160) = v77;
      *(v80 - 112) = v77;
      *(v80 - 64) = v77;
      *(v80 - 16) = v77;
      if (a3)
      {
        v81 = *(a1 + 136) + 48 * *(a1 + 144);
        v82.i64[0] = v117.i32[0];
        v82.i64[1] = v117.i32[1];
        v83 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_s64(v82), v114));
        v84 = vmul_n_f32(v83, a7);
        v85 = vmul_n_f32(vadd_f32(vcvt_f32_s32(v117.u64[1]), v83), a7);
        *(v81 - 176) = v84;
        *(v81 - 128) = __PAIR64__(v84.u32[1], v85.u32[0]);
        *(v81 - 80) = v85;
        v84.i32[1] = v85.i32[1];
        *(v81 - 32) = v84;
      }

      if (a4)
      {
        v86 = *(a1 + 136) + 48 * *(a1 + 144);
        v87.i64[0] = v117.i32[0];
        v87.i64[1] = v117.i32[1];
        v88 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_s64(v87), v113));
        v89 = vmul_n_f32(v88, a8);
        v90 = vmul_n_f32(vadd_f32(vcvt_f32_s32(v117.u64[1]), v88), a8);
        *(v86 - 168) = v89;
        *(v86 - 120) = __PAIR64__(v89.u32[1], v90.u32[0]);
        *(v86 - 72) = v90;
        v89.i32[1] = v90.i32[1];
        *(v86 - 24) = v89;
      }
    }

    CA::OGL::Context::array_flush(a1);
    if (!v74)
    {
      goto LABEL_85;
    }

    v93 = CA::Shape::subtract(v107, v110, v91, v92);
    v94 = v93;
    if (v93)
    {
      if (v93 == 1)
      {
LABEL_84:
        CA::Shape::unref(v94);
LABEL_85:
        if (v75)
        {
          *(a1 + 64) = 1;
        }

        if (v108)
        {
          CA::Shape::unref(v110);
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

    else if (*(v93 + 4) == 6)
    {
      goto LABEL_84;
    }

    v95 = *(a1 + 16);
    memcpy(buf, v95, sizeof(buf));
    v119[2] = 0;
    *buf = v95;
    *(a1 + 16) = buf;
    buf[16] = 0;
    *(a1 + 144) = 0;
    *(a1 + 112) = v76;
    *(a1 + 120) = xmmword_183E20E50;
    v119[0] = v94;
    v119[1] = 0;
    while (CA::ShapeIterator::iterate(v119, &v117))
    {
      if (*(a1 + 108))
      {
        v96 = 6;
      }

      else
      {
        v96 = 4;
      }

      if ((*(a1 + 144) + 4) > *(a1 + 152) || (v97 = *(a1 + 128)) != 0 && *(a1 + 120) + v96 > v97)
      {
        *(a1 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(a1);
        *(a1 + 144) = 0;
        *(a1 + 112) = v76;
        *(a1 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(a1, v117.i32[0], v117.i32[1], (v117.i32[2] + v117.i32[0]), (v117.i32[3] + v117.i32[1]));
      v98 = *(a1 + 136) + 48 * *(a1 + 144);
      *(v98 - 160) = 0;
      *(v98 - 112) = 0;
      *(v98 - 64) = 0;
      *(v98 - 16) = 0;
    }

    CA::OGL::Context::array_flush(a1);
    *(a1 + 16) = *buf;
    goto LABEL_84;
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

  v69 = x_log_get_ogl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_183AA6000, v69, OS_LOG_TYPE_ERROR, "unhandled combiner function: %d\n", buf, 8u);
  }
}

float CA::OGL::adjust_skipped_corner_vertices_simple(_OWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = &a1[2 * a3 * a3];
  v6 = a1[1];
  *v5 = *a1;
  v5[1] = v6;
  v7 = &a1[2 * a3 - 2];
  v8 = v7[1];
  v5[2] = *v7;
  v5[3] = v8;
  v9 = *(v5 - 1);
  v5[4] = *(v5 - 2);
  v5[5] = v9;
  v10 = &a1[2 * (a3 - 1) * a3];
  v11 = v10[1];
  v5[6] = *v10;
  v5[7] = v11;
  v12 = (a2 + 16);
  v13 = 48 * a3;
  v14 = (a2 + 48 * a3 - 32);
  v15 = a2 + 48 * a3 * a3 + 64;
  v16 = a4;
  do
  {
    *(v15 - 48) = *v12;
    v17 = *v14++;
    *v15 = v17;
    *(v15 + 48) = *(v15 - 96);
    result = *(v12 + 48 * a3 * (a3 - 1));
    *(v15 + 96) = result;
    ++v12;
    v15 += 4;
    --v16;
  }

  while (v16);
  v19 = (a5 >> 25) & 2;
  if ((a5 & 0x400000) != 0)
  {
    v20 = a4 - v19;
    if (a4 > v19)
    {
      v21 = a2 + 8 * ((a5 >> 26) & 1);
      do
      {
        *(v21 + 16) = *(v21 + v13 + 16);
        result = *(v21 + 64);
        *(v21 + v13 * a3 + 16) = result;
        v21 += 4;
        --v20;
      }

      while (v20);
    }
  }

  if ((a5 & 0x800000) != 0)
  {
    v22 = a4 - v19;
    if (a4 > v19)
    {
      v23 = 8 * ((a5 >> 26) & 1);
      v24 = (((v13 * a3) & 0xFFFFFFFFFFFFFFF7 | (8 * ((a5 >> 26) & 1))) + a2 + 64);
      v25 = ((v23 | (96 * a3)) + a2 - 32);
      v26 = ((v23 & 0xF | (48 * a3)) + a2 - 80);
      do
      {
        v26[12] = *v26;
        v27 = *v25++;
        result = v27;
        *v24++ = v27;
        ++v26;
        --v22;
      }

      while (v22);
    }
  }

  if ((a5 & 0x2000000) != 0)
  {
    v28 = a4 - v19;
    if (a4 > v19)
    {
      v29 = (((a3 * (v13 - 48)) & 0xFFFFFFFFFFFFFFF7 | (8 * ((a5 >> 26) & 1))) + a2 - 32);
      v30 = ((v13 * a3) & 0xFFFFFFFFFFFFFFF7 | (8 * ((a5 >> 26) & 1))) + a2 - 80;
      do
      {
        v31 = *v29++;
        *(v30 + 48) = v31;
        result = *v30;
        *(v30 + 192) = *v30;
        v30 += 4;
        --v28;
      }

      while (v28);
    }
  }

  if ((a5 & 0x1000000) != 0)
  {
    v32 = a4 - v19;
    if (a4 > v19)
    {
      v33 = 8 * ((a5 >> 26) & 1);
      v34 = ((v33 | (48 * a3 * a3)) + a2 + 160);
      v35 = ((v33 | (48 * a3 * (a3 - 2))) + a2 + 16);
      v36 = ((v33 | (48 * a3 * (a3 - 1))) + a2 + 64);
      do
      {
        *(v36 - 12) = *v36;
        v37 = *v35++;
        result = v37;
        *v34++ = v37;
        ++v36;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

CA::OGL::ImagingNode *CA::OGL::ImagingNode::remove_feature_passthrough_aware(CA::OGL::ImagingNode *this, unsigned int a2)
{
  if ((*(this + 229) & 1) != 0 || (result = (*(*this + 120))(this), result))
  {
    result = *(this + 3);
    if (result)
    {
      result = CA::OGL::ImagingNode::remove_feature_passthrough_aware(result, a2);
    }
  }

  *(this + 228) &= ~0x80000000000uLL;
  return result;
}

uint64_t CA::OGL::render_alpha_threshold_filter(uint64_t a1, CA::Render::KeyValueArray *this, int32x2_t *a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  float_key = CA::Render::KeyValueArray::get_float_key(this, 325, 0.5);
  v14.i64[0] = 0;
  v14.i64[1] = 0x3F80000000000000;
  CA::Render::KeyValueArray::get_float_color_key(this, 360, &v14);
  CA::OGL::bind_filter_surface(a1, a3, 0, a4);
  v9 = vmul_f32(*(*(a1 + 16) + 96), 0x3F0000003F000000);
  v18 = 0;
  *&v16[16] = 0u;
  v17 = 0u;
  *&v15[16] = 0u;
  *v16 = 0u;
  *v15 = 0u;
  v10 = *(a1 + 656);
  *&v15[8] = *(v10 + 8);
  v11 = *(v10 + 32);
  *&v15[24] = *(v10 + 24);
  *v16 = v11;
  *&v16[8] = *(v10 + 40);
  *&v16[24] = *(v10 + 56);
  v12 = *(v10 + 80);
  LODWORD(v17) = *(v10 + 64);
  v18 = v12 & 0x5FF;
  *(&v17 + 1) = *(v10 + 72);
  *v15 = CA::OGL::Context::set_gstate(a1, v15);
  *(*(a1 + 16) + 16) = 92;
  *(a1 + 160) = v9;
  *(a1 + 240) = v14;
  *(a1 + 320) = float_key;
  CA::OGL::emit_filter_quads(a1, a3, a4);
  *(*(a1 + 16) + 16) = 0;
  result = CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  if (*(a1 + 672) != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  *(*(a1 + 16) + 19) = 0;
  return result;
}

id image_properties_dictionary(int a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696E0D0];
  v6[0] = *MEMORY[0x1E696E0A8];
  v6[1] = v2;
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = v3;
  if (a1)
  {
    v4 = [v3 mutableCopy];
    [v4 setObject:*MEMORY[0x1E696E028] forKeyedSubscript:*MEMORY[0x1E696E018]];
  }

  return v4;
}

CGImageRef CA_copyL8CGImageAsA8(CGImage *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = xmmword_183E20E00;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  DataProvider = CGImageGetDataProvider(a1);
  return CGImageMaskCreate(Width, Height, 8uLL, 8uLL, BytesPerRow, DataProvider, &v7, 0);
}

uint64_t foreachLayer(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  (*(a2 + 16))(a2, a1);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [a1 sublayers];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        foreachLayer(*(*(&v21 + 1) + 8 * v8++), a2);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v6);
  }

  v9 = [a1 mask];
  if (v9)
  {
    foreachLayer(v9, a2);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [a1 states];
  result = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) foreachLayer:a2];
      }

      while (v12 != v14);
      result = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
      v12 = result;
    }

    while (result);
  }

  return result;
}

void *CA::WindowServer::Server::set_global_light_params(void *result, float a2, float a3, float a4, float a5)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = result[12];
  *v7 = *(v5 + 872);
  if (*v7 != __PAIR64__(LODWORD(a3), LODWORD(a2)) || *&v7[8] != __PAIR64__(LODWORD(a5), LODWORD(a4)))
  {
    *(v5 + 872) = a2;
    *(v5 + 876) = a3;
    *(v5 + 880) = a4;
    *(v5 + 884) = a5;
    *v7 = 0;
    *&v7[8] = vdupq_n_s64(0x200000000000uLL);
    return (*(*result + 176))(result, v7, 0.0);
  }

  return result;
}

void CA::WindowServer::Server::hit_test(uint64_t a1, uint64_t a2, double *a3, const double *a4, uint64_t a5, char a6, int64x2_t *a7)
{
  v9 = a5;
  v10 = a4;
  v324 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = CATransform3DIdentity;
  *(a1 + 168) = CATransform3DIdentity;
  v306 = 0;
  if (a6)
  {
    v14 = *(a2 + 168);
    if (v14)
    {
      v15 = *(v14 + 16);
      if (a5)
      {
        *(a4 + a5) = v15;
        v9 = a5 + 1;
      }

      else
      {
        v306 = v15;
        v10 = &v306;
        v9 = 1;
      }
    }
  }

  os_unfair_lock_lock((a2 + 340));
  v16 = *(a2 + 344);
  if (!v16)
  {

    os_unfair_lock_unlock((a2 + 340));
    return;
  }

  atomic_fetch_add(v16, 1u);
  os_unfair_lock_unlock((a2 + 340));
  v17 = *a3;
  v18 = a3[1];
  v305 = 0;
  v19 = CA::Render::HitTestTree::hit_test(v16, v10, v9, &v305, v17, v18);
  if (!v19)
  {
    goto LABEL_403;
  }

  v22 = v19;
  v23 = v19;
  do
  {
    LODWORD(v24) = v23[8];
    if (v24)
    {
      break;
    }

    v24 = *v23;
    v23 = (v23 - v24);
  }

  while (v24);
  v25 = *(v19 + 36);
  *a1 = v24;
  *(a1 + 4) = v25;
  if ((a6 & 2) != 0)
  {
    v26 = 1.0;
    v27 = v19;
    do
    {
      LOBYTE(v21) = *(v27 + 11);
      v21 = LODWORD(v21);
      v26 = (v26 * 0.0039216) * v21;
      v28 = *v27;
      v27 = (v27 - v28);
    }

    while (v28);
    *(a1 + 32) = v26;
  }

  if ((a6 & 0x10) != 0)
  {
    v29 = v19;
    while (1)
    {
      v30 = *(v29 + 1);
      if ((v30 & 0x400000000000) != 0)
      {
        break;
      }

      v31 = *v29;
      v29 = (v29 - v31);
      if (!v31)
      {
        v32 = 0;
        goto LABEL_25;
      }
    }

    v32 = v30 & 0x400000000000;
    if (BYTE4(xmmword_1ED4E982C) == 1)
    {
      CA::Render::print_hit_test(*(v29 + 2), "detected", "filters", v20);
    }

LABEL_25:
    *(a1 + 28) = v32 >> 46;
  }

  v294 = v16;
  if (!v25)
  {
    goto LABEL_115;
  }

  if ((a6 & 0x10) != 0 && (*(a1 + 28) & 1) == 0)
  {
    v33 = *(v22 + 2);
    if (v33)
    {
      LOBYTE(v33) = CA::Render::Layer::has_hit_test_insecure_properties(v33, 1);
    }

    *(a1 + 28) = v33;
  }

  v34 = *(v22 + 6);
  *v318 = *(v22 + 10);
  v35 = *&v318[12];
  v36 = *&v318[4];
  v37 = *v318;
  if (a7)
  {
    v38 = v34 <= *&v318[12] ? *&v318[12] : v34;
    v39 = v34 >= *&v318[12] ? *&v318[12] : v34;
    if (v38 <= 1073741822 && v39 >= 1)
    {
      v41 = a7[1].i32[0];
      v42 = a7[1].i32[2];
      v43 = a7->i32[0];
      v44 = a7->i32[2];
      v37 = *v318 + v44;
      v36 = *&v318[4] + a7->i32[0];
      *v318 += v44;
      *&v318[4] = v36;
      v34 -= v42 + v44;
      v35 = *&v318[12] - (v41 + v43);
      *&v318[8] = v34;
      *&v318[12] = v35;
      if (v34 < 1 || v35 <= 0)
      {
        v35 = 0;
        v34 = 0;
        *&v318[8] = 0;
      }
    }
  }

  v290 = a7;
  if (byte_1ED4E986B)
  {
LABEL_61:
    v56 = 0;
    goto LABEL_104;
  }

  v46 = *v22;
  v47 = (v22 - v46);
  v48 = BYTE4(xmmword_1ED4E982C);
  if (BYTE4(xmmword_1ED4E982C))
  {
    v287 = v37;
    v289 = v36;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v49 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_INFO))
    {
      v50 = v22[9];
      v51 = *(v22 + 2);
      v52 = "No Name";
      if (v51)
      {
        v53 = *(v51 + 128);
        if (v53)
        {
          v52 = (v53 + 28);
        }
      }

      *buf = 67110402;
      *&buf[4] = v50;
      *&buf[8] = 1024;
      *&buf[10] = v287;
      *&buf[14] = 1024;
      *&buf[16] = v289;
      *&buf[20] = 1024;
      *&buf[22] = v34;
      *&buf[26] = 1024;
      *&buf[28] = v35;
      *&buf[32] = 2080;
      *&buf[34] = v52;
      _os_log_impl(&dword_183AA6000, v49, OS_LOG_TYPE_INFO, "Slot <%d> [%d %d %d %d] (%s) detected", buf, 0x2Au);
    }

    v54 = *(v22 + 1);
    if ((v54 & 0x40000000000) == 0)
    {
      if ((v54 & 0x20000000000000) != 0)
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v71 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_INFO))
        {
          v72 = v22[9];
          *buf = 67110144;
          *&buf[4] = v72;
          *&buf[8] = 1024;
          *&buf[10] = v287;
          *&buf[14] = 1024;
          *&buf[16] = v289;
          *&buf[20] = 1024;
          *&buf[22] = v34;
          *&buf[26] = 1024;
          *&buf[28] = v35;
          v73 = "Slot <%d> [%d %d %d %d] occluded by self border";
          v74 = v71;
          v75 = 32;
LABEL_102:
          _os_log_impl(&dword_183AA6000, v74, OS_LOG_TYPE_INFO, v73, buf, v75);
        }

        goto LABEL_103;
      }

      v55 = v22;
      if (v46)
      {
        goto LABEL_68;
      }

      goto LABEL_61;
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v69 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_INFO))
    {
      v70 = v22[9];
      *buf = 67110144;
      *&buf[4] = v70;
      *&buf[8] = 1024;
      *&buf[10] = v287;
      *&buf[14] = 1024;
      *&buf[16] = v289;
      *&buf[20] = 1024;
      *&buf[22] = v34;
      *&buf[26] = 1024;
      *&buf[28] = v35;
      _os_log_impl(&dword_183AA6000, v69, OS_LOG_TYPE_INFO, "Slot <%d> [%d %d %d %d] occluded by clipping", buf, 0x20u);
    }

LABEL_96:
    v56 = 2;
    goto LABEL_104;
  }

  v57 = *(v22 + 1);
  if ((v57 & 0x40000000000) != 0)
  {
    goto LABEL_96;
  }

  if ((v57 & 0x20000000000000) != 0)
  {
    v56 = 3;
  }

  else
  {
    v56 = 0;
  }

  if ((v57 & 0x20000000000000) != 0)
  {
    goto LABEL_104;
  }

  v287 = v37;
  v289 = v36;
  v55 = v22;
  if (!v46)
  {
    goto LABEL_104;
  }

  while (1)
  {
LABEL_68:
    v58 = v47[1];
    if ((v58 & 0x20000000000000) == 0)
    {
      goto LABEL_77;
    }

    v59 = v47[2];
    if (!*&v59)
    {
      goto LABEL_77;
    }

    v60 = *(*&v59 + 136);
    if (!v60)
    {
      goto LABEL_77;
    }

    v61 = *(v60 + 240);
    _ZF = v61 <= 2.0 || v48 == 0;
    if (!_ZF)
    {
      break;
    }

    if (v61 > 2.0)
    {
      goto LABEL_103;
    }

LABEL_77:
    v63 = (v47 + ((v58 >> 30) & 0x3FC));
    if ((v58 & 0x800000000000) != 0)
    {
      v63 = (v63 + v63->i32[1]);
    }

    if ((v58 & 0xFFFFFF) != 0 && v63 != v55)
    {
      v65 = 1;
      while ((CA::Render::HitTestTree::Node::subtree_occludes_slot(v63, v55[4].u32[1], v318) & 1) == 0)
      {
        v63 = (v63 + v63->i32[1]);
        _CF = v65++ >= (v47[1].i32[0] & 0xFFFFFFu);
        if (_CF || v63 == v55)
        {
          goto LABEL_90;
        }
      }

      v56 = 1;
      goto LABEL_104;
    }

LABEL_90:
    v56 = 0;
    v68 = v47->u32[0];
    v55 = v47;
    v47 = (v47 - v68);
    if (!v68)
    {
      goto LABEL_104;
    }
  }

  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v279 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_INFO))
  {
    v280 = v55[4].i32[1];
    *buf = 67110400;
    *&buf[4] = v280;
    *&buf[8] = 1024;
    *&buf[10] = v287;
    *&buf[14] = 1024;
    *&buf[16] = v289;
    *&buf[20] = 1024;
    *&buf[22] = v34;
    *&buf[26] = 1024;
    *&buf[28] = v35;
    *&buf[32] = 2048;
    *&buf[34] = v59;
    v73 = "Slot <%d> [%d %d %d %d] occluded by border of parent layer <%p>";
    v74 = v279;
    v75 = 42;
    goto LABEL_102;
  }

LABEL_103:
  v56 = 3;
LABEL_104:
  *(a1 + 24) = v56;
  v16 = v294;
  a7 = v290;
  if ((a6 & 4) != 0)
  {
    CA::Render::HitTestTree::Node::relative_transform_product(buf, v22, 0, v20);
    v76 = *&buf[16];
    v77 = *&buf[32];
    v78 = v311;
    *(a1 + 40) = *buf;
    *(a1 + 56) = v76;
    *(a1 + 72) = v77;
    *(a1 + 88) = v78;
    v79 = v313;
    v80 = v314;
    v81 = v315;
    *(a1 + 104) = v312;
    *(a1 + 120) = v79;
    *(a1 + 136) = v80;
    *(a1 + 152) = v81;
    v82 = xmmword_183E20E00;
    v83 = 0uLL;
    *buf = xmmword_183E20E00;
    *&buf[16] = 0u;
    v84 = xmmword_183E20E60;
    *&buf[32] = xmmword_183E20E60;
    v311 = 0u;
    v312 = 0u;
    v313 = xmmword_183E20E00;
    v314 = 0u;
    v315 = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v316 = _Q0;
    v317 &= 0xE0u;
    v88 = *(v22 + 2);
    if (v88 && (v89 = *(v88 + 104)) != 0)
    {
      v90 = (*(*v89 + 80))(v89);
      if (v90)
      {
        goto LABEL_108;
      }

      if (v89[12] == 26)
      {
        v90 = (*(**(v89 + 4) + 80))(*(v89 + 4));
        v91 = 0uLL;
        v96 = 0uLL;
        v84 = xmmword_183E20E60;
        v82 = xmmword_183E20E00;
        v97 = xmmword_183E20E60;
        v94 = 0uLL;
        v95 = xmmword_183E20E00;
        v83 = 0uLL;
        if (v90)
        {
LABEL_108:
          v92 = v90;
          v93 = *(v22 + 2);
          if ((*(v93 + 45) & 0x80) != 0)
          {
            v91.f64[0] = -1.0;
            CA::Transform::scale(buf, v91, 1.0, 1.0);
            v93 = *(v22 + 2);
          }

          CA::Render::Layer::append_texture_transform(v93, buf, v92, v89);
          v95 = *buf;
          v94 = *&buf[16];
          v97 = *&buf[32];
          v96 = v311;
          v91 = v312;
          v82 = v313;
          v83 = v314;
          v84 = v315;
        }
      }

      else
      {
        v91 = 0uLL;
        v96 = 0uLL;
        v84 = xmmword_183E20E60;
        v82 = xmmword_183E20E00;
        v97 = xmmword_183E20E60;
        v94 = 0uLL;
        v95 = xmmword_183E20E00;
        v83 = 0uLL;
      }
    }

    else
    {
      v91 = 0uLL;
      v96 = 0uLL;
      v97 = xmmword_183E20E60;
      v94 = 0uLL;
      v95 = xmmword_183E20E00;
    }

    *(a1 + 168) = v95;
    *(a1 + 184) = v94;
    *(a1 + 200) = v97;
    *(a1 + 216) = v96;
    *(a1 + 232) = v91;
    *(a1 + 248) = v82;
    *(a1 + 264) = v83;
    *(a1 + 280) = v84;
  }

  if ((a6 & 8) != 0)
  {
    *(a1 + 8) = *(v22 + 10);
  }

LABEL_115:
  if ((a6 & 0x20) == 0)
  {
    goto LABEL_403;
  }

  v98 = byte_1ED4E988A;
  if (!*(v16 + 48))
  {
    if (!byte_1ED4E988A)
    {
      goto LABEL_403;
    }

    if (x_log_get_security_analysis(void)::once != -1)
    {
      dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
    }

    v100 = x_log_get_security_analysis(void)::log;
    if (!os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_403;
    }

    *buf = 0;
    v101 = "Security Analysis requested but no context labeled as needing secure superlayers";
    goto LABEL_249;
  }

  if (v305 == 1)
  {
    if (byte_1ED4E988A)
    {
      if (x_log_get_security_analysis(void)::once != -1)
      {
        dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
      }

      v99 = x_log_get_security_analysis(void)::log;
      if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_183AA6000, v99, OS_LOG_TYPE_INFO, "Hit Asynchronous Layer Host", buf, 2u);
      }
    }

    *(a1 + 442) = 8;
    *(a1 + 444) = 1065353216;
    *(a1 + 308) = 1065353216;
    *(a1 + 312) = CATransform3DIdentity;
    *(a1 + 440) = 0;
    *(a1 + 448) = 1;
    goto LABEL_403;
  }

  if (!byte_1ED4E988A)
  {
    secure_superlayers_validation_start_node = CA::Render::HitTestTree::get_secure_superlayers_validation_start_node(v16, v22);
    if (!secure_superlayers_validation_start_node)
    {
      goto LABEL_403;
    }

    v109 = secure_superlayers_validation_start_node;
    v113 = *secure_superlayers_validation_start_node;
    if (!v113)
    {
      goto LABEL_403;
    }

    v111 = (secure_superlayers_validation_start_node - v113);
LABEL_144:
    v296 = v109;
    v114 = 1;
    do
    {
      if (v114)
      {
        v115 = *(v109 + 2);
        if (v115)
        {
          v116 = *(v115 + 136);
          if (v116)
          {
            v117 = *v116;
            if (*v116)
            {
              v118 = *(v117 + 12);
              if (v118 == 42)
              {
                v120 = *(v117 + 56);
                if (v120 && (*(v120 + 13) & 0x10) != 0)
                {
                  goto LABEL_160;
                }
              }

              else if (v118 == 31)
              {
                v119 = *(v117 + 96);
                if (v119)
                {
                  if (*(v119 + 584) & 0x20 | v118 & 0x10000)
                  {
                    goto LABEL_160;
                  }
                }

                else if ((v118 & 0x10000) != 0)
                {
                  goto LABEL_160;
                }
              }
            }
          }
        }
      }

      v114 = v109[8] != 0;
      v121 = *v109;
      v109 = (v109 - v121);
    }

    while (v121);
    v109 = 0;
LABEL_160:
    v303 = byte_1ED4E988A;
    v122 = xmmword_183E20E00;
    v123 = 0uLL;
    *buf = xmmword_183E20E00;
    *&buf[16] = 0u;
    v124 = xmmword_183E20E60;
    *&buf[32] = xmmword_183E20E60;
    v311 = 0u;
    v312 = 0u;
    v313 = xmmword_183E20E00;
    v314 = 0u;
    v315 = xmmword_183E20E60;
    v295 = v98;
    if (v111 != v109)
    {
      v291 = a7;
      v299 = 0;
      v301 = 0;
      v125 = 0;
      v126 = 0;
      v127 = 0.0039216;
      LODWORD(v128.f64[0]) = 134218242;
      v129 = 1.0;
      v130 = 1.0;
      v131 = v111;
      while (1)
      {
        if (v126)
        {
          v126 = v131[8] == 0;
          if ((v125 & 1) == 0)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v138 = v131;
          while (1)
          {
            v139 = v138[8];
            if (v139)
            {
              break;
            }

            v140 = *v138;
            v138 = (v138 - v140);
            if (!v140)
            {
              v139 = 0;
              break;
            }
          }

          v141 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>((v16 + 24), v139);
          v126 = v131[8] == 0;
          if (!v141)
          {
LABEL_164:
            LOBYTE(v128.f64[0]) = *(v131 + 11);
            v132 = LODWORD(v128.f64[0]) * v127;
            if (v303 && v132 < 1.0)
            {
              if (x_log_get_security_analysis(void)::once != -1)
              {
                dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
              }

              v133 = x_log_get_security_analysis(void)::log;
              if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
              {
                v134 = *(v131 + 2);
                if (v134)
                {
                  v135 = *(v134 + 128);
                  v136 = (v135 + 28);
                  _ZF = v135 == 0;
                  v137 = "No Name";
                  if (!_ZF)
                  {
                    v137 = v136;
                  }
                }

                else
                {
                  v137 = "No Name";
                }

                *v318 = 134218498;
                *&v318[4] = v134;
                *&v318[12] = 2080;
                *&v318[14] = v137;
                *&v318[22] = 2048;
                *&v318[24] = v132;
                _os_log_impl(&dword_183AA6000, v133, OS_LOG_TYPE_INFO, "Insecure Layer <%p> <%s> (opacity %f)", v318, 0x20u);
              }
            }

            v142.f64[1] = 0.0;
            *v318 = xmmword_183E20E00;
            *&v318[16] = 0u;
            *&v318[32] = xmmword_183E20E60;
            *&v318[48] = 0u;
            v319 = 0u;
            v320 = xmmword_183E20E00;
            v321 = 0u;
            v322 = xmmword_183E20E60;
            v143 = v111;
            if (v131 == v111)
            {
              v177 = *(v131 + 2);
              if (v177)
              {
                v178 = *(v177 + 136);
                if (v178)
                {
                  v179 = *(v178 + 24);
                  if (v179)
                  {
                    v288 = v130;
                    v180 = *(v178 + 184);
                    v285 = v127;
                    v181 = *(v177 + 72) + *(v178 + 168) * *(v177 + 88);
                    v182 = *(v177 + 80) + *(v178 + 176) * *(v177 + 96);
                    v142.f64[0] = -v181;
                    CA::Mat4Impl::mat4_translate_right(buf, v107, v142, -v182, -v180);
                    if (*(v179 + 16) <= 0xFu)
                    {
                      v184 = &CA::Mat4Impl::mat4_identity_double;
                    }

                    else
                    {
                      v184 = (v179 + 24);
                    }

                    v185 = CA::Mat4Impl::mat4_concat(buf, buf, v184, v183);
                    v185.f64[0] = v181;
                    v127 = v285;
                    v186 = v182;
                    v129 = 1.0;
                    v187 = v180;
                    v130 = v288;
                    CA::Mat4Impl::mat4_translate_right(buf, v188, v185, v186, v187);
                  }
                }
              }
            }

            v144 = *(v131 + 1);
            if ((v144 & 0x8000000000000) != 0)
            {
              v148 = *(v131 + 26);
              v149 = *(v131 + 30);
              v150 = *(v131 + 34);
              *v318 = *(v131 + 22);
              *&v318[16] = v148;
              *&v318[32] = v149;
              *&v318[48] = v150;
              v151 = *(v131 + 42);
              v152 = *(v131 + 46);
              v153 = *(v131 + 50);
              v319 = *(v131 + 38);
              v320 = v151;
              v321 = v152;
              v322 = v153;
              v145 = *v318 != v129;
            }

            else
            {
              v145 = 0;
              if ((v144 & 0x10000000000000) != 0)
              {
                v146 = *(v131 + 11);
                v147 = *(v131 + 12);
                v321 = vmlaq_n_f64(vmulq_n_f64(xmmword_183E20E60, v147), xmmword_183E20E00, v146);
                v322 = vmlaq_n_f64(vmlaq_n_f64(xmmword_183E20E60, 0, v146), 0, v147);
              }
            }

            v128 = CA::Mat4Impl::mat4_concat(buf, buf, v318, v108);
            if (v303)
            {
              if (v145)
              {
LABEL_188:
                if (x_log_get_security_analysis(void)::once != -1)
                {
                  dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
                }

                v154 = x_log_get_security_analysis(void)::log;
                if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
                {
                  v155 = *(v131 + 2);
                  if (v155)
                  {
                    v156 = *(v155 + 128);
                    v157 = (v156 + 28);
                    _ZF = v156 == 0;
                    v158 = "No Name";
                    if (!_ZF)
                    {
                      v158 = v157;
                    }
                  }

                  else
                  {
                    v158 = "No Name";
                  }

                  LODWORD(v323[0].f64[0]) = 134218242;
                  *(v323[0].f64 + 4) = v155;
                  WORD2(v323[0].f64[1]) = 2080;
                  *(&v323[0].f64[1] + 6) = v158;
                  _os_log_impl(&dword_183AA6000, v154, OS_LOG_TYPE_INFO, "Insecure Layer <%p> <%s> (non identity transform)", v323, 0x16u);
                }
              }

              else
              {
                v159 = 1;
                while (v159 != 16)
                {
                  v160 = v159;
                  v128.f64[0] = *&v318[8 * v159];
                  v161 = *(&CA::Mat4Impl::mat4_identity_double + v159++);
                  if (v128.f64[0] != v161)
                  {
                    if ((v160 - 1) <= 0xE)
                    {
                      goto LABEL_188;
                    }

                    break;
                  }
                }
              }

              v111 = v143;
              if ((*(v131 + 13) & 0x40) != 0)
              {
                if (x_log_get_security_analysis(void)::once != -1)
                {
                  dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
                }

                v162 = x_log_get_security_analysis(void)::log;
                v299 = 1;
                if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
                {
                  v163 = *(v131 + 2);
                  if (v163)
                  {
                    v164 = *(v163 + 128);
                    v165 = (v164 + 28);
                    _ZF = v164 == 0;
                    v166 = "No Name";
                    if (!_ZF)
                    {
                      v166 = v165;
                    }
                  }

                  else
                  {
                    v166 = "No Name";
                  }

                  LODWORD(v323[0].f64[0]) = 134218242;
                  *(v323[0].f64 + 4) = v163;
                  WORD2(v323[0].f64[1]) = 2080;
                  *(&v323[0].f64[1] + 6) = v166;
                  v299 = 1;
                  _os_log_impl(&dword_183AA6000, v162, OS_LOG_TYPE_INFO, "Insecure Layer <%p> <%s> (insecure filters)", v323, 0x16u);
                }
              }
            }

            else
            {
              v299 |= (*(v131 + 13) & 0x40) >> 6;
              v111 = v143;
            }

            v167 = *(v131 + 2);
            if (v167)
            {
              has_hit_test_insecure_properties = CA::Render::Layer::has_hit_test_insecure_properties(v167, 0);
              v301 |= has_hit_test_insecure_properties;
              if (has_hit_test_insecure_properties)
              {
                if (v303)
                {
                  if (x_log_get_security_analysis(void)::once != -1)
                  {
                    dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
                  }

                  v169 = x_log_get_security_analysis(void)::log;
                  v301 = 1;
                  if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
                  {
                    v170 = *(v131 + 2);
                    if (v170)
                    {
                      v171 = *(v170 + 128);
                      v172 = (v171 + 28);
                      _ZF = v171 == 0;
                      v173 = "No Name";
                      if (!_ZF)
                      {
                        v173 = v172;
                      }
                    }

                    else
                    {
                      v173 = "No Name";
                    }

                    LODWORD(v323[0].f64[0]) = 134218242;
                    *(v323[0].f64 + 4) = v170;
                    WORD2(v323[0].f64[1]) = 2080;
                    *(&v323[0].f64[1] + 6) = v173;
                    v301 = 1;
                    _os_log_impl(&dword_183AA6000, v169, OS_LOG_TYPE_INFO, "Insecure Layer <%p> <%s> (insecure properties)", v323, 0x16u);
                  }
                }
              }
            }

            v125 = 0;
            v130 = v132 * v130;
            goto LABEL_226;
          }
        }

        v125 = 1;
LABEL_226:
        v174 = *v131;
        v131 = (v131 - v174);
        if (v174)
        {
          v175 = v131;
        }

        else
        {
          v175 = 0;
        }

        if (v175)
        {
          v176 = v175 == v109;
        }

        else
        {
          v176 = 1;
        }

        if (v176)
        {
          v190 = *buf;
          v189 = *&buf[16];
          v192 = *&buf[32];
          v191 = v311;
          v193 = v312;
          v122 = v313;
          v123 = v314;
          v124 = v315;
          a7 = v291;
          v98 = v295;
          v194 = v301;
          v195 = v299;
          goto LABEL_252;
        }
      }
    }

    v194 = 0;
    v195 = 0;
    v130 = 1.0;
    v193 = 0uLL;
    v191 = 0uLL;
    v192 = xmmword_183E20E60;
    v189 = 0uLL;
    v190 = xmmword_183E20E00;
LABEL_252:
    *(a1 + 308) = v130;
    *(a1 + 312) = v190;
    *(a1 + 328) = v189;
    *(a1 + 344) = v192;
    *(a1 + 360) = v191;
    *(a1 + 376) = v193;
    *(a1 + 392) = v122;
    *(a1 + 408) = v123;
    *(a1 + 424) = v124;
    *(a1 + 440) = v195 & 1;
    *(a1 + 441) = v194 & 1;
    if (byte_1ED4E986B)
    {
      v275 = 0;
    }

    else
    {
      v198 = *(v296 + 10);
      v308 = v198;
      v199 = v198.i32[3];
      v302 = v194;
      v300 = v195;
      if (a7)
      {
        v200 = v198.i32[2];
        if (v198.i32[2] <= v198.i32[3])
        {
          v201 = v198.i32[3];
        }

        else
        {
          v201 = v198.i32[2];
        }

        if (v198.i32[2] >= v198.i32[3])
        {
          v200 = v198.i32[3];
        }

        if (v201 <= 1073741822 && v200 >= 1)
        {
          v202 = vmovn_s64(*a7);
          v203 = vadd_s32(vmovn_s64(a7[1]), v202);
          v204 = vadd_s32(*v198.i8, vrev64_s32(v202));
          v205 = vsub_s32(*&vextq_s8(v198, v198, 8uLL), vrev64_s32(v203));
          v207 = v205.i32[0] < 1 || v205.i32[1] < 1;
          v208 = !v207;
          if (v207)
          {
            v209 = -1;
          }

          else
          {
            v209 = 0;
          }

          *v308.i8 = v204;
          v308.u64[1] = vbic_s8(v205, vdup_n_s32(v209));
          if (v208)
          {
            v199 = v205.i32[1];
          }

          else
          {
            v199 = 0;
          }
        }
      }

      v210 = *v296;
      v211 = (v296 - v210);
      if (v210)
      {
        v212 = (v296 - v210);
      }

      else
      {
        v212 = 0;
      }

      v213 = *(v296 + 1);
      v304 = v199;
      if ((v213 & 0x40000000000) != 0)
      {
        v215 = *(v296 + ((((v213 >> 1) & 0x7F00000000) - 0xC00000000) >> 29) + 88);
        v214 = 4;
      }

      else
      {
        v214 = 0;
        v215 = 0.0;
      }

      v218 = CA::Shape::new_shape(&v308, v107);
      v307 = v218;
      *v318 = CA::Render::allowed_occlusion_instances;
      *&v318[16] = unk_183E24464;
      *&v318[32] = xmmword_183E24474;
      *&v318[48] = 1;
      if (v210 && v212 != v109)
      {
        v297 = vdupq_n_s64(0x41C0000000000000uLL);
        v298 = vdupq_n_s64(0xC1BFFFFFFF000000);
        v219 = v296;
        while (1)
        {
          v220 = *(v211 + 1);
          if ((v220 & 0x20000000000000) == 0)
          {
            goto LABEL_321;
          }

          if ((v307 & 1) != 0 || *(v307 + 1) < 257)
          {
            v221 = *(v211 + 2);
            if (!v221)
            {
              goto LABEL_320;
            }

            v222 = *(v221 + 136);
            if (!v222)
            {
              goto LABEL_320;
            }

            v223 = *(v222 + 240);
            if (v223 < 2.0)
            {
              goto LABEL_320;
            }

            v224 = *(v211 + 16);
            v225 = vclez_s32(v224);
            v304 = v308.i32[3];
            if ((vpmax_u32(v225, v225).u32[0] & 0x80000000) != 0)
            {
              goto LABEL_320;
            }

            v226 = vclez_s32(v308.u64[1]);
            if ((vpmax_u32(v226, v226).u32[0] & 0x80000000) != 0)
            {
              goto LABEL_320;
            }

            v227 = *(v211 + 14);
            v228 = vadd_s32(v227, v224);
            v229 = vadd_s32(*v308.i8, v308.u64[1]);
            v230 = vclez_s32(vsub_s32(vmin_s32(v228, v229), vmax_s32(v227, *v308.i8)));
            if ((vpmax_u32(v230, v230).u32[0] & 0x80000000) != 0)
            {
              goto LABEL_320;
            }

            v323[0] = *(v211 + 14);
            v231 = HIDWORD(v323[0].f64[1]);
            v232 = SLODWORD(v323[0].f64[1]) <= SHIDWORD(v323[0].f64[1]) ? HIDWORD(v323[0].f64[1]) : LODWORD(v323[0].f64[1]);
            v233 = SLODWORD(v323[0].f64[1]) >= SHIDWORD(v323[0].f64[1]) ? HIDWORD(v323[0].f64[1]) : LODWORD(v323[0].f64[1]);
            if (v232 > 1073741822 || v233 < 1)
            {
              v235 = *&v323[0].f64[1];
            }

            else
            {
              *&v323[0].f64[0] = vadd_s32(*&v323[0].f64[0], vdup_n_s32(v223));
              LODWORD(v323[0].f64[1]) -= 2 * v223;
              HIDWORD(v323[0].f64[1]) -= 2 * v223;
              if (SLODWORD(v323[0].f64[1]) < 1 || v231 - 2 * v223 < 1)
              {
                v235 = 0;
                v323[0].f64[1] = 0.0;
              }

              else
              {
                v235 = *&v323[0].f64[1];
              }
            }

            v237 = vorr_s8(vcltz_s32(v308.u64[1]), vclez_s32(v235));
            if ((vpmax_u32(v237, v237).u32[0] & 0x80000000) == 0)
            {
              v238 = vand_s8(vcge_s32(vadd_s32(*&v323[0].f64[0], v235), v229), vcge_s32(*v308.i8, *&v323[0].f64[0]));
              if ((vpmin_u32(v238, v238).u32[0] & 0x80000000) != 0)
              {
                goto LABEL_320;
              }
            }

            v292 = v308.i64[0];
            v293 = v308.i32[2];
            v309[0] = CA::Shape::new_shape((v211 + 14), v216);
            CA::shape_subtract(v309, v323, v239);
            v240 = v309[0];
            CA::shape_subtract(&v307, v309[0], v241, v242);
            CA::Shape::unref(v240);
            if (byte_1ED4E988A == 1)
            {
              if (x_log_get_security_analysis(void)::once != -1)
              {
                dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
              }

              v243 = x_log_get_security_analysis(void)::log;
              v16 = v294;
              if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
              {
                v244 = *(v211 + 2);
                if (v244)
                {
                  v245 = *(v244 + 128);
                  v246 = (v245 + 28);
                  _ZF = v245 == 0;
                  v247 = "No Name";
                  if (!_ZF)
                  {
                    v247 = v246;
                  }
                }

                else
                {
                  v247 = "No Name";
                }

                v286 = v247;
                v267 = v211[14];
                v282 = v211[15];
                v283 = v211[16];
                v284 = v211[17];
                v268 = CA::Shape::area(v307);
                *buf = 136317954;
                *&buf[4] = v286;
                *&buf[12] = 2048;
                *&buf[14] = v244;
                *&buf[22] = 1024;
                *&buf[24] = v267;
                *&buf[28] = 1024;
                *&buf[30] = v282;
                *&buf[34] = 1024;
                *&buf[36] = v283;
                *&buf[40] = 1024;
                *&buf[42] = v284;
                *&buf[46] = 2048;
                *&v311 = v223;
                WORD4(v311) = 1024;
                *(&v311 + 10) = v292;
                HIWORD(v311) = 1024;
                LODWORD(v312.f64[0]) = HIDWORD(v292);
                WORD2(v312.f64[0]) = 1024;
                *(v312.f64 + 6) = v293;
                WORD1(v312.f64[1]) = 1024;
                HIDWORD(v312.f64[1]) = v304;
                LOWORD(v313) = 2048;
                *(&v313 + 2) = v268;
                _os_log_impl(&dword_183AA6000, v243, OS_LOG_TYPE_INFO, "Layer (%s) <%p> [%d %d %d %d] has border width %f that occludes view [%d %d %d %d] unoccluded area is now %ld", buf, 0x5Au);
                v16 = v294;
              }
            }
          }

          v214 |= 8u;
LABEL_320:
          v220 = *(v211 + 1);
LABEL_321:
          v248 = (v211 + ((v220 >> 30) & 0x3FC));
          CA::Render::Update::subtract_corner_radii_clipping_from_shape(*(v211 + 2), &v307, v217);
          v249 = *(v211 + 1);
          if ((v249 & 0x800000000000) != 0)
          {
            v250 = v248[2];
            if (v250)
            {
              v251 = *(v250 + 136);
              if (v251)
              {
                if (*(v251 + 12) || *(v251 + 14))
                {
LABEL_326:
                  *buf = 0;
                  *&buf[8] = 0;
                  v252 = buf;
                  goto LABEL_327;
                }

                v259 = *v251;
                if (*v251)
                {
                  if (*(v259 + 12) == 51)
                  {
                    if (!*(v259 + 16) || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v259 + 24))))) & 1) == 0 && !*(v259 + 48))
                    {
                      goto LABEL_326;
                    }

                    goto LABEL_361;
                  }

                  memset(buf, 0, 32);
                  memset(v323, 0, sizeof(v323));
                  if ((*(*v259 + 184))(v259, v250, buf, v323))
                  {
                    v260 = vceqzq_f64(v323[1]);
                    if ((vorrq_s8(vdupq_laneq_s64(v260, 1), v260).u64[0] & 0x8000000000000000) != 0 || (v261 = vceqq_f64(v323[1], v323[1]), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v261), 1), v261).u64[0] & 0x8000000000000000) != 0))
                    {
                      v309[0] = 0;
                      v309[1] = 0;
                    }

                    else
                    {
                      v262 = vcvtmq_s64_f64(vmaxnmq_f64(v323[0], v298));
                      *v309 = vuzp1q_s32(v262, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v323[0], v323[1]), v297)), v262));
                    }

                    v252 = v309;
LABEL_327:
                    CA::shape_intersect(&v307, v252, v217);
                  }

                  else
                  {
                    v251 = *(v250 + 136);
                    if (v251)
                    {
                      goto LABEL_361;
                    }
                  }
                }

                else
                {
LABEL_361:
                  if (v251[58] > 0.0)
                  {
                    goto LABEL_362;
                  }

                  v263 = *(v251 + 9);
                  if (v263 && *(v263 + 16) == 8)
                  {
                    v264 = 0;
                    v265 = *(v263 + 24);
                    v266 = v263 + 32;
                    do
                    {
                      if (v265 <= *(v266 + v264))
                      {
                        v265 = *(v266 + v264);
                      }

                      v264 += 8;
                    }

                    while (v264 != 56);
                    if (v265 > 0.0)
                    {
LABEL_362:
                      CA::Render::Update::subtract_corner_radii_clipping_from_shape(v250, &v307, v217);
                    }
                  }
                }
              }
            }

            v248 = (v248 + v248->i32[1]);
            v249 = *(v211 + 1);
            v16 = v294;
          }

          if ((v249 & 0xFFFFFF) != 0 && v248 != v219)
          {
            v254 = 1;
            do
            {
              if (CA::Render::HitTestTree::Node::subtract_subtree_occlusion_from_shape(v248, &v308, &v307, v318))
              {
                v214 |= 2u;
              }

              v248 = (v248 + v248->i32[1]);
              _CF = v254++ >= (v211[2] & 0xFFFFFF);
            }

            while (!_CF && v248 != v219);
          }

          v256 = *v211;
          v219 = v211;
          v211 = (v211 - v256);
          if (v256)
          {
            v257 = v211;
          }

          else
          {
            v257 = 0;
          }

          if (v257)
          {
            v258 = v257 == v109;
          }

          else
          {
            v258 = 1;
          }

          if (v258)
          {
            v218 = v307;
            v98 = v295;
            break;
          }
        }
      }

      v194 = v302;
      v195 = v300;
      if ((v218 & 1) == 0 && *(v218 + 4) > 256)
      {
        LOBYTE(v214) = v214 | 0x10;
      }

      v269 = CA::Shape::area(v218);
      v270 = (v304 * v308.i32[2]);
      if ((*(v296 + 13) & 4) != 0 && v215 < 1.0)
      {
        v270 = v270 / (1.0 - v215);
      }

      if ((v269 - v270) > 0.01)
      {
        if (x_log_get_security_analysis(void)::once != -1)
        {
          dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
        }

        v281 = x_log_get_security_analysis(void)::log;
        v16 = v294;
        v98 = v295;
        if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v269;
          *&buf[12] = 2048;
          *&buf[14] = v270;
          _os_log_error_impl(&dword_183AA6000, v281, OS_LOG_TYPE_ERROR, "Error: Unoccluded area (%f) is larger than original area (%f)", buf, 0x16u);
        }
      }

      v271 = 1.0 - (v269 / v270);
      v272 = v271 > 1.0 || v271 < 0.0;
      v273 = 0x3F80000000000000;
      if (v271 < 0.0 && v271 <= 1.0)
      {
        v273 = 0;
      }

      if (v272)
      {
        v274 = v273;
      }

      else
      {
        v274 = LODWORD(v271) << 32;
      }

      CA::Shape::unref(v218);
      v275 = v274 & 0xFFFFFFFFFFFFFF00 | v214;
    }

    *(a1 + 442) = v275;
    *(a1 + 444) = HIDWORD(v275);
    *(a1 + 448) = 1;
    if (!v98)
    {
      goto LABEL_403;
    }

    if (x_log_get_security_analysis(void)::once != -1)
    {
      dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
    }

    v276 = x_log_get_security_analysis(void)::log;
    if (!os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_403;
    }

    *buf = 134219008;
    *&buf[4] = v130;
    *&buf[12] = 1024;
    *&buf[14] = v195 & 1;
    *&buf[18] = 1024;
    *&buf[20] = v194 & 1;
    *&buf[24] = 1024;
    *&buf[26] = v275;
    *&buf[30] = 2048;
    *&buf[32] = (*(&v275 + 1) * 100.0);
    v101 = "Security Results [opacity: %f] [insecure filtered: %d] [insecure properties: %d] [occlusion: %d (%.2f%% occluded)]";
    v196 = v276;
    v197 = 40;
LABEL_250:
    _os_log_impl(&dword_183AA6000, v196, OS_LOG_TYPE_INFO, v101, buf, v197);
    goto LABEL_403;
  }

  memset(buf, 0, 24);
  for (i = *(v16 + 40); i; i = *i)
  {
    X::Stream::printf(buf, " %x;", *(i + 4));
  }

  if (x_log_get_security_analysis(void)::once != -1)
  {
    dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
  }

  v103 = x_log_get_security_analysis(void)::log;
  if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
  {
    v104 = *(v16 + 48);
    v105 = x_stream_get(buf);
    *v318 = 134218242;
    *&v318[4] = v104;
    *&v318[12] = 2080;
    *&v318[14] = v105;
    _os_log_impl(&dword_183AA6000, v103, OS_LOG_TYPE_INFO, "%zu start ctxs [%s", v318, 0x16u);
  }

  if (*buf)
  {
    free(*buf);
  }

  v106 = CA::Render::HitTestTree::get_secure_superlayers_validation_start_node(v16, v22);
  if (!v106)
  {
    if (x_log_get_security_analysis(void)::once != -1)
    {
      dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
    }

    v100 = x_log_get_security_analysis(void)::log;
    if (!os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_403;
    }

    *buf = 0;
    v101 = "no secure ctxs were hit";
LABEL_249:
    v196 = v100;
    v197 = 2;
    goto LABEL_250;
  }

  v109 = v106;
  v110 = *v106;
  if (v110)
  {
    v111 = (v106 - v110);
    goto LABEL_144;
  }

  if (x_log_get_security_analysis(void)::once != -1)
  {
    dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
  }

  v277 = x_log_get_security_analysis(void)::log;
  if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
  {
    do
    {
      LODWORD(v278) = v109[8];
      if (v278)
      {
        break;
      }

      v278 = *v109;
      v109 = (v109 - v278);
    }

    while (v278);
    *buf = 67109120;
    *&buf[4] = v278;
    v101 = "Nothing above start ctx [%x] to test";
    v196 = v277;
    v197 = 8;
    goto LABEL_250;
  }

LABEL_403:
  CA::Render::HitTestTree::unref(v16);
}

uint64_t CA::Render::HitTestTree::hit_test_node(uint64_t a1, uint64_t a2, const double *a3, const char *a4, _BYTE *a5, double a6, double a7)
{
  v95 = *MEMORY[0x1E69E9840];
  v89.f64[0] = a6;
  v89.f64[1] = a7;
  v14 = *(a2 + 16);
  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v81 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v82 = *(v14 + 128);
        if (v82)
        {
          v83 = *(v82 + 6);
          v82 += 28;
          if (!v83)
          {
            v82 = 0;
          }
        }
      }

      else
      {
        v82 = "";
      }

      LODWORD(buf.origin.x) = 136316162;
      *(&buf.origin.x + 4) = "entering";
      WORD2(buf.origin.y) = 2048;
      *(&buf.origin.y + 6) = v14;
      HIWORD(buf.size.width) = 2080;
      *&buf.size.height = v82;
      v91 = 2080;
      v92 = "";
      v93 = 2080;
      v94 = "";
      _os_log_impl(&dword_183AA6000, v81, OS_LOG_TYPE_DEFAULT, "HitTest: %s layer %p %s%s%s", &buf, 0x34u);
    }
  }

  v15 = *(a2 + 8);
  if ((v15 & 0x10000000000) != 0)
  {
    if (BYTE4(xmmword_1ED4E982C) != 1)
    {
      return 0;
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v23 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    if (v14)
    {
      v24 = *(v14 + 128);
      if (v24)
      {
        v25 = *(v24 + 6);
        v24 += 28;
        if (!v25)
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = "";
    }

    LODWORD(buf.origin.x) = 136316162;
    *(&buf.origin.x + 4) = "rejecting";
    WORD2(buf.origin.y) = 2048;
    *(&buf.origin.y + 6) = v14;
    HIWORD(buf.size.width) = 2080;
    *&buf.size.height = v24;
    v91 = 2080;
    v92 = " - ";
    v93 = 2080;
    v84 = "culled/disallows hit testing";
    goto LABEL_181;
  }

  v16 = *(a2 + 32);
  if (v16)
  {
    v17 = a4 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = a4;
    v19 = a3;
    while (1)
    {
      v20 = *v19;
      v19 = (v19 + 4);
      if (v16 == v20)
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_10;
      }
    }

    if (BYTE4(xmmword_1ED4E982C) != 1)
    {
      return 0;
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v23 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    if (v14)
    {
      v30 = *(v14 + 128);
      if (v30)
      {
        v31 = *(v30 + 6);
        v30 += 28;
        if (!v31)
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = "";
    }

    LODWORD(buf.origin.x) = 136316162;
    *(&buf.origin.x + 4) = "rejecting";
    WORD2(buf.origin.y) = 2048;
    *(&buf.origin.y + 6) = v14;
    HIWORD(buf.size.width) = 2080;
    *&buf.size.height = v30;
    v91 = 2080;
    v92 = " - ";
    v93 = 2080;
    v84 = "rejected context ID";
    goto LABEL_181;
  }

LABEL_10:
  if ((v15 & 0x4000000000000000) == 0)
  {
    v21 = *(a2 + 72);
    v87 = *MEMORY[0x1E695EFF8];
    v88 = v21;
    if ((v15 & 0x8000000000000) != 0)
    {
      CA::Mat4Impl::mat4_invert(&buf, (a2 + 88), a3);
      CA::Mat4Impl::mat4_unapply_inverse_to_point2(&buf, v89.f64, v32);
      v22 = 16;
    }

    else if ((v15 & 0x10000000000000) != 0)
    {
      v89 = vsubq_f64(v89, *(a2 + 88));
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    v33 = 0.0;
    if ((v15 & 0x20000000000000) != 0)
    {
      v35 = a2 + 8 * v22;
      v22 |= 1u;
      v34 = *(v35 + 88);
      if ((v15 & 0x40000000000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v34 = 0.0;
      if ((v15 & 0x40000000000000) == 0)
      {
LABEL_42:
        v37 = 0.0;
        if ((v15 & 0x80000000000000) != 0)
        {
          v38 = a2 + 8 * v22++;
          v37 = *(v38 + 88);
          if ((v15 & 0x100000000000000) == 0)
          {
LABEL_44:
            if ((v15 & 0x20000000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          }
        }

        else if ((v15 & 0x100000000000000) == 0)
        {
          goto LABEL_44;
        }

        v87 = *(a2 + 8 * v22 + 88);
        if ((v15 & 0x20000000000) == 0)
        {
          goto LABEL_49;
        }

LABEL_48:
        if (!CA_CGRoundRectContainsPoint(v87.f64, v37, v89.f64[0], v89.f64[1]))
        {
          if (BYTE4(xmmword_1ED4E982C) != 1)
          {
            return 0;
          }

          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v23 = x_log_get_render(void)::log;
          if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          if (v14)
          {
            v43 = *(v14 + 128);
            if (v43)
            {
              v44 = *(v43 + 6);
              v43 += 28;
              if (!v44)
              {
                v43 = 0;
              }
            }
          }

          else
          {
            v43 = "";
          }

          LODWORD(buf.origin.x) = 136316162;
          *(&buf.origin.x + 4) = "rejecting";
          WORD2(buf.origin.y) = 2048;
          *(&buf.origin.y + 6) = v14;
          HIWORD(buf.size.width) = 2080;
          *&buf.size.height = v43;
          v91 = 2080;
          v92 = " - ";
          v93 = 2080;
          v84 = "masksToBounds = YES and not in bounds";
          goto LABEL_181;
        }

LABEL_49:
        v39 = (v15 >> 30) & 0x3FC;
        v40 = a2 + v39;
        if ((v15 & 0x800000000000) != 0)
        {
          v41 = CA::Render::HitTestTree::hit_test_node(a1, a2 + v39, a3, a4, a5, v89.f64[0], v89.f64[1]) == 0;
          if (v14)
          {
            v42 = (*(v14 + 45) & 2) == 0;
          }

          else
          {
            v42 = 1;
          }

          if (v42 == v41)
          {
            if (BYTE4(xmmword_1ED4E982C) != 1)
            {
              return 0;
            }

            if (x_log_get_render(void)::once[0] == -1)
            {
              goto LABEL_79;
            }

            goto LABEL_182;
          }

          v40 += *(v40 + 4);
          v15 = *(a2 + 8);
        }

        if ((v15 & 0xFFFFFF) != 0)
        {
          v50 = 0;
          v51 = v89;
          while (1)
          {
            result = CA::Render::HitTestTree::hit_test_node(a1, v40, a3, a4, a5, v51.f64[0], v51.f64[1]);
            if (result)
            {
              break;
            }

            v40 += *(v40 + 4);
            ++v50;
            v15 = *(a2 + 8);
            if (v50 >= (*(a2 + 8) & 0xFFFFFFu))
            {
              goto LABEL_90;
            }
          }

          if (BYTE4(xmmword_1ED4E982C) == 1)
          {
            v47 = result;
            if (x_log_get_render(void)::once[0] == -1)
            {
LABEL_99:
              v56 = x_log_get_render(void)::log;
              if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                if (v14)
                {
                  v57 = *(v14 + 128);
                  if (v57)
                  {
                    v58 = *(v57 + 6);
                    v57 += 28;
                    if (!v58)
                    {
                      v57 = 0;
                    }
                  }
                }

                else
                {
                  v57 = "";
                }

                LODWORD(buf.origin.x) = 136316162;
                *(&buf.origin.x + 4) = "accepting";
                WORD2(buf.origin.y) = 2048;
                *(&buf.origin.y + 6) = v14;
                HIWORD(buf.size.width) = 2080;
                *&buf.size.height = v57;
                v91 = 2080;
                v92 = " - ";
                v93 = 2080;
                v94 = "hit sublayer";
                _os_log_impl(&dword_183AA6000, v56, OS_LOG_TYPE_DEFAULT, "HitTest: %s layer %p %s%s%s", &buf, 0x34u);
              }

              return v47;
            }

LABEL_183:
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            goto LABEL_99;
          }

          return result;
        }

LABEL_90:
        v52 = *(a2 + 24);
        if (v52)
        {
          for (i = *(v52 + 40); i; i = *i)
          {
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((a1 + 24), *(i + 4));
          }

          v54 = CA::Render::HitTestTree::hit_test(v52, a3, a4, a5, v89.f64[0], v89.f64[1]);
          if (v54)
          {
            do
            {
              LODWORD(v55) = v54[8];
              if (v55)
              {
                break;
              }

              v55 = *v54;
              v54 = (v54 - v55);
            }

            while (v55);
            *(a2 + 32) = v55;
            *(a2 + 8) |= 0x1000000000000000uLL;
            return a2;
          }

          v15 = *(a2 + 8);
        }

        if ((v15 & 0x80000000000) != 0)
        {
          v59 = vaddq_f64(v88, v87);
          v60 = vmovn_s64(vcgtq_f64(v59, v87));
          if (v60.i32[0] & v60.i32[1])
          {
            v61.i32[0] = vuzp1_s16(vmovn_s64(vmvnq_s8(vcgeq_f64(v89, v59))), *&v87.f64[0]).u32[0];
            v62 = vmovn_s64(vmvnq_s8(vcgtq_f64(v87, v89)));
            v61.i32[1] = vuzp1_s16(v62, v62).i32[1];
            if (vminv_u16(v61))
            {
              v63 = "hitTestsAsOpaque = YES and in bounds";
              goto LABEL_162;
            }
          }
        }

        if ((v15 & 0x200000000000) != 0)
        {
          v64 = "culled above";
LABEL_165:
          CA::Render::print_hit_test(v14, "rejecting", v64, a4);
          return 0;
        }

        if ((v15 & 0x1000000000000) != 0 && CA_CGRoundRectContainsPoint(v87.f64, v37, v89.f64[0], v89.f64[1]))
        {
          v63 = "within background color";
LABEL_162:
          CA::Render::print_hit_test(v14, "accepting", v63, a4);
          return a2;
        }

        if (v34 != 0.0)
        {
          v96.origin = v87;
          v96.size = v88;
          buf = CGRectInset(v96, -v33, -v33);
          v86 = CGRectInset(buf, v34, v34);
          if (v37 + v33 >= 0.0)
          {
            v65 = v37 + v33;
          }

          else
          {
            v65 = 0.0;
          }

          v66 = v89.f64[1];
          v85 = v89.f64[0];
          if (CA_CGRoundRectContainsPoint(&buf.origin.x, v65, v89.f64[0], v89.f64[1]))
          {
            v67 = v65 - v34;
            if (v65 - v34 < 0.0)
            {
              v67 = 0.0;
            }

            if (!CA_CGRoundRectContainsPoint(&v86.origin.x, v67, v85, v66))
            {
              v63 = "within border";
              goto LABEL_162;
            }
          }

          v15 = *(a2 + 8);
        }

        if (v14 && (v15 & 0x2000000000000) != 0)
        {
          v68 = *(v14 + 136);
          if (v68)
          {
            v69 = *v68;
            if (v69)
            {
              if (*(v69 + 12) == 47 && *(v69 + 16) == 1)
              {
                goto LABEL_137;
              }
            }
          }
        }

        else if ((v15 & 0x2000000000000) == 0)
        {
          goto LABEL_136;
        }

        if ((v15 & 0x4000000000000) == 0)
        {
          if (CA::Render::hit_test_contents(v14, *(v14 + 104), (v15 >> 44) & 1, v89.f64[0], v89.f64[1]))
          {
LABEL_149:
            v63 = "within contents";
            goto LABEL_162;
          }

LABEL_137:
          v74 = *(v14 + 136);
          if (v74)
          {
            v75 = *v74;
            if (*v74)
            {
              if (*(v75 + 12) == 31)
              {
                v76 = CA::Render::LayerHost::retain_async_hit_test_tree(v75);
                if (v76)
                {
                  v77 = v76;
                  for (j = *(v76 + 5); j; j = *j)
                  {
                    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((a1 + 24), *(j + 4));
                  }

                  v79 = CA::Render::HitTestTree::hit_test(v77, a3, a4, a5, v89.f64[0], v89.f64[1]);
                  if (v79)
                  {
                    *a5 = 1;
                    do
                    {
                      LODWORD(v80) = v79[8];
                      if (v80)
                      {
                        break;
                      }

                      v80 = *v79;
                      v79 = (v79 - v80);
                    }

                    while (v80);
                    *(a2 + 32) = v80;
                    *(a2 + 8) |= 0x1000000000000000uLL;
                    CA::Render::HitTestTree::unref(v77);
                    return a2;
                  }

                  CA::Render::HitTestTree::unref(v77);
                }
              }

              buf.origin = v89;
              if ((*(*v75 + 224))(v75, v14, &buf))
              {
                v63 = "subclass";
                goto LABEL_162;
              }
            }
          }

          goto LABEL_164;
        }

        v70 = vaddq_f64(v88, v87);
        v71 = vmovn_s64(vcgtq_f64(v70, v87));
        if (v71.i32[0] & v71.i32[1])
        {
          v72.i32[0] = vuzp1_s16(vmovn_s64(vmvnq_s8(vcgeq_f64(v89, v70))), *&v87.f64[0]).u32[0];
          v73 = vmovn_s64(vmvnq_s8(vcgtq_f64(v87, v89)));
          v72.i32[1] = vuzp1_s16(v73, v73).i32[1];
          if (vminv_u16(v72))
          {
            goto LABEL_149;
          }
        }

LABEL_136:
        if (!v14)
        {
LABEL_164:
          v64 = "no hits";
          goto LABEL_165;
        }

        goto LABEL_137;
      }
    }

    v36 = a2 + 8 * v22++;
    v33 = *(v36 + 88);
    goto LABEL_42;
  }

  v26 = (v15 >> 30) & 0x3FC;
  v27 = a2 + v26;
  if ((v15 & 0x800000000000) != 0)
  {
    v28 = CA::Render::HitTestTree::hit_test_node(a1, a2 + v26, a3, a4, a5, a6, a7) == 0;
    if (v14)
    {
      v29 = (*(v14 + 45) & 2) == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29 == v28)
    {
      if (BYTE4(xmmword_1ED4E982C) != 1)
      {
        return 0;
      }

      if (x_log_get_render(void)::once[0] == -1)
      {
LABEL_79:
        v23 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          if (v14)
          {
            v48 = *(v14 + 128);
            if (v48)
            {
              v49 = *(v48 + 6);
              v48 += 28;
              if (!v49)
              {
                v48 = 0;
              }
            }
          }

          else
          {
            v48 = "";
          }

          LODWORD(buf.origin.x) = 136316162;
          *(&buf.origin.x + 4) = "rejecting";
          WORD2(buf.origin.y) = 2048;
          *(&buf.origin.y + 6) = v14;
          HIWORD(buf.size.width) = 2080;
          *&buf.size.height = v48;
          v91 = 2080;
          v92 = " - ";
          v93 = 2080;
          v84 = "mask not hit";
LABEL_181:
          v94 = v84;
          _os_log_impl(&dword_183AA6000, v23, OS_LOG_TYPE_DEFAULT, "HitTest: %s layer %p %s%s%s", &buf, 0x34u);
        }

        return 0;
      }

LABEL_182:
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      goto LABEL_79;
    }

    v27 += *(v27 + 4);
    v15 = *(a2 + 8);
  }

  if ((v15 & 0xFFFFFF) == 0)
  {
    return 0;
  }

  v45 = 0;
  while (1)
  {
    result = CA::Render::HitTestTree::hit_test_node(a1, v27, a3, a4, a5, a6, a7);
    if (result)
    {
      break;
    }

    v27 += *(v27 + 4);
    if (++v45 >= (*(a2 + 8) & 0xFFFFFFu))
    {
      return 0;
    }
  }

  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    v47 = result;
    if (x_log_get_render(void)::once[0] == -1)
    {
      goto LABEL_99;
    }

    goto LABEL_183;
  }

  return result;
}

uint64_t CA::Render::HitTestTree::hit_test(uint64_t a1, const double *a2, const char *a3, _BYTE *a4, double a5, double a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v14 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = a5;
      v19 = 2048;
      v20 = a6;
      _os_log_impl(&dword_183AA6000, v14, OS_LOG_TYPE_DEFAULT, "HitTest: start at: (%g, %g)", &v17, 0x16u);
    }
  }

  v12 = CA::Render::HitTestTree::hit_test_node(a1, *(a1 + 16), a2, a3, a4, a5, a6);
  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v15 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v12 + 16);
      v17 = 134217984;
      v18 = v16;
      _os_log_impl(&dword_183AA6000, v15, OS_LOG_TYPE_DEFAULT, "HitTest: end - layer %p", &v17, 0xCu);
    }
  }

  return v12;
}

BOOL CA_CGRoundRectContainsPoint(double *a1, double a2, double a3, double a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2] + *a1;
  v7 = a1[3] + v5;
  v8 = v6 <= *a1 || v7 <= v5;
  result = 0;
  if (!v8)
  {
    v9 = v4 <= a3 && v6 > a3;
    v10 = v9 && v5 <= a4;
    if (v10 && v7 > a4)
    {
      if (a2 <= 0.0)
      {
        return 1;
      }

      v13 = a2 * a2;
      v14 = v4 + a2 - a3;
      v15 = v5 + a2 - a4;
      if (v14 <= 0.0 || v15 <= 0.0 || v14 * v14 + v15 * v15 <= v13)
      {
        v16 = a2 - v6 + a3;
        if (v16 <= 0.0 || v15 <= 0.0 || v16 * v16 + v15 * v15 <= v13)
        {
          v17 = a2 - v7 + a4;
          if (v16 <= 0.0 || v17 <= 0.0 || v16 * v16 + v17 * v17 <= v13)
          {
            if (v14 <= 0.0)
            {
              return 1;
            }

            v8 = v17 <= 0.0;
            v18 = v14 * v14 + v17 * v17;
            if (v8 || v18 <= v13)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void CA::Render::print_hit_test(CA::Render *this, const CA::Render::Layer *a2, const char *a3, const char *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v7 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "";
      if (this)
      {
        v9 = *(this + 16);
        if (v9)
        {
          v10 = *(v9 + 6);
          v9 += 28;
          if (!v10)
          {
            v9 = 0;
          }
        }
      }

      else
      {
        v9 = "";
      }

      v11 = " - ";
      v12 = 136316162;
      if (!a3)
      {
        v11 = "";
      }

      v13 = a2;
      if (a3)
      {
        v8 = a3;
      }

      v14 = 2048;
      v15 = this;
      v16 = 2080;
      v17 = v9;
      v18 = 2080;
      v19 = v11;
      v20 = 2080;
      v21 = v8;
      _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "HitTest: %s layer %p %s%s%s", &v12, 0x34u);
    }
  }
}

uint64_t CA::Render::BackdropLayer::hit_test(_BYTE *a1, uint64_t a2, double *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a1[13] & 0x10) == 0)
  {
    v6 = 0u;
    *v7 = 0u;
    result = (*(*a1 + 184))(a1, a2, &v6, 0);
    if (!result)
    {
      return result;
    }

    if (*&v6 <= *a3 && v7[0] + *&v6 > *a3)
    {
      v5 = a3[1];
      if (*(&v6 + 1) <= v5)
      {
        return v7[1] + *(&v6 + 1) > v5;
      }
    }
  }

  return 0;
}

uint64_t CA::Render::hit_test_contents(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v47 = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 80))(a2);
  if (result)
  {
    goto LABEL_2;
  }

  if (*(a2 + 12) != 26)
  {
    return 0;
  }

  result = (*(**(a2 + 32) + 80))(*(a2 + 32));
  if (result)
  {
LABEL_2:
    v13 = result;
    *v44 = 0;
    if ((*(result + 13) & 0x64) != 0)
    {
      CA::Render::Texture::displayed_size_(result, &v44[1], v44);
    }

    else
    {
      v14 = *(result + 16);
      v44[0] = *(result + 20);
      v44[1] = v14;
    }

    v15 = (a2 + 32);
    v16 = v44;
    if (*(a2 + 12) == 56)
    {
      v16 = (a2 + 36);
    }

    else
    {
      v15 = &v44[1];
    }

    LODWORD(v11) = *v15;
    LODWORD(v12) = *v16;
    v17 = v11;
    v18 = v12;
    v40 = 0.0;
    v41 = 0.0;
    v42 = v17;
    v43 = v12;
    v19 = *(a1 + 136);
    if (v19)
    {
      LODWORD(v12) = *(v19 + 304);
    }

    else
    {
      LOBYTE(v12) = *(a1 + 38);
      *&v12 = v12;
    }

    if (*&v12 != 1.0)
    {
      if (*&v12 != 0.0)
      {
        v23 = *&v12;
        v17 = v17 / v23;
        v18 = v18 / v23;
        v42 = v17;
        v43 = v18;
        if (!v19)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v42 = 0.0;
      v43 = 0.0;
      v18 = 0.0;
      v17 = 0.0;
    }

    if (!v19)
    {
      goto LABEL_20;
    }

LABEL_18:
    v20 = *(v19 + 40);
    if (v20)
    {
      v17 = (v20[5] - v20[3]) * v17;
      v18 = (v20[6] - v20[4]) * v18;
      v42 = v17;
      v43 = v18;
    }

LABEL_20:
    v39.f64[0] = v17;
    v39.f64[1] = v18;
    v21 = *(a1 + 40);
    if ((v21 & 0xF000) == 0x9000 && *(a1 + 72) == 0.0 && *(a1 + 80) == 0.0 && (!v19 || !*(v19 + 32)) && *(a1 + 88) == v17 && *(a1 + 96) == v18)
    {
      v22 = 0.0;
    }

    else
    {
      CA::Render::Layer::apply_contents_transform(a1, &v40, &v39, 0);
      v22 = v40;
    }

    if (v22 <= a4 && v42 + v22 > a4 && v41 <= a5 && v43 + v41 > a5)
    {
      if ((*(a1 + 48) & 0x40) == 0)
      {
        return 1;
      }

      if ((*(v13 + 13) & 0x10) != 0)
      {
        return 1;
      }

      if ((v21 & 0x8000000000000) != 0)
      {
        return 1;
      }

      v45[0] = xmmword_183E20E00;
      v45[1] = 0u;
      v45[2] = xmmword_183E20E60;
      memset(&v45[3], 0, 32);
      v45[5] = xmmword_183E20E00;
      v45[6] = 0u;
      v45[7] = xmmword_183E20E60;
      __asm { FMOV            V0.2D, #1.0 }

      v45[8] = _Q0;
      v46 = 0;
      if (!CA::Render::Layer::append_texture_transform(a1, v45, v13, a2))
      {
        return 1;
      }

      v37 = a4;
      v38 = a5;
      if ((v46 & 0x10) != 0)
      {
        CA::Mat4Impl::mat4_invert(v36, v45, v29);
        CA::Mat4Impl::mat4_unapply_inverse_to_point2(v36, &v37, v30);
      }

      else
      {
        CA::TransformDetails::unapply<CA::Transform,double>(v45, &v37, &v38);
      }

      v31 = *(v13 + 20);
      if (a3)
      {
        v38 = -1.0 - v38 + v31;
      }

      v32 = v37;
      if (*(a2 + 12) == 56)
      {
        v34 = *(a2 + 24);
        v33 = *(a2 + 28);
        v35 = *(a2 + 32);
        v31 = *(a2 + 36);
        v32 = v37 + v34;
        v38 = v38 + v33;
      }

      else
      {
        v34 = 0;
        v33 = 0;
        v35 = *(v13 + 16);
      }

      if (v32 >= v34 && v32 < (v35 + v34) && v38 >= v33 && v38 < (v31 + v33) && (*(*v13 + 264))(v13, v32, v38) > 0.0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t map_fun(uint64_t a1, _OWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v9[0] = *a2;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v9[4] = a2[4];
  v9[5] = v5;
  v9[6] = v6;
  v9[7] = v7;
  return (*(a1 + 8))(*a1, v9);
}

void CARenderServerSetCacheAsynchronousSurfaces(int a1, int a2)
{
  ServerPort = a1;
  v9 = *MEMORY[0x1E69E9840];
  if (a1 || (ServerPort = CARenderServerGetServerPort(0)) != 0)
  {
    memset(&msg[4], 0, 32);
    v8 = 0;
    *&msg[24] = *MEMORY[0x1E69E99E0];
    *&msg[32] = a2;
    reply_port = mig_get_reply_port();
    *&msg[8] = ServerPort;
    *&msg[12] = reply_port;
    *msg = 5395;
    *&msg[16] = 0x9D2500000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      v5 = *&msg[12];
    }

    else
    {
      v5 = reply_port;
    }

    v6 = mach_msg(msg, 3, 0x24u, 0x2Cu, v5, 0, 0);
    if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else if (v6)
    {
      mig_dealloc_reply_port(*&msg[12]);
    }

    else if (*&msg[20] != 40329 || (*msg & 0x80000000) != 0 || *&msg[4] != 36 || *&msg[8] || *&msg[32])
    {
      mach_msg_destroy(msg);
    }
  }
}

BOOL CA::Render::GradientLayer::hit_test(CA::Render::GradientLayer *a1, uint64_t a2, double *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  result = CA::Render::GradientLayer::is_valid(a1);
  if (result)
  {
    v6 = *(a2 + 88);
    v9[0] = *(a2 + 72);
    v9[1] = v6;
    v7 = *(a2 + 136);
    v8 = 0.0;
    if (v7)
    {
      v8 = *(v7 + 232);
    }

    return CA_CGRoundRectContainsPoint(v9, v8, *a3, a3[1]);
  }

  return result;
}

void _XSetCacheAsynchronousSurfaces(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
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
    v9 = v5;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v7) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else if ((CA::Render::Server::audit_token_cache_lookup(v10, v8) & 0x200) != 0)
    {
      CA::Render::post_notification(0x18u, 0, &v9, 0);
      v3 = 0;
    }

    else
    {
      v3 = 5;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

CATransform3D *__cdecl CATransform3DConcat(CATransform3D *__return_ptr retstr, CATransform3D *a, CATransform3D *b)
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CA::Mat4Impl::mat4_concat(retstr, &a->m11, &b->m11, v3);
  return result;
}

void CA::OGL::AsynchronousDispatcher::AsynchronousDispatcher(void)::$_0::__invoke(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  CA::OGL::cache_io_surfaces = *a3 != 0;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::OGL::surface_cache_lock);
    for (i = 0; i != 2; ++i)
    {
      v7 = CA::OGL::surface_cache[i];
      if (v7)
      {
        CA::OGL::release_iosurface(v7, v5);
        CA::OGL::surface_cache[i] = 0;
      }
    }

    os_unfair_lock_unlock(&CA::OGL::surface_cache_lock);
  }
}

char *CA::Render::show_object(X::Stream *a1, uint64_t a2)
{
  CA::Render::show_object(a1, a2);

  return X::Stream::printf(a1, "\n");
}

char *CA::Render::show_object(X::Stream *this, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 40))(a2, this);
  }

  else
  {
    return X::Stream::printf(this, "()");
  }
}

void *CA::Render::KeyPathValue::encode(CA::Render::KeyPathValue *this, CA::Render::Encoder *a2)
{
  CA::Render::Encoder::encode_keypath(a2, this + 2);
  CA::Render::Encoder::encode_object(a2, *(this + 3));

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::KeyPathValue::~KeyPathValue(CA::Render **this, void **a2)
{
  CA::Render::KeyPathValue::~KeyPathValue(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1F57E8;
  CA::Render::key_path_free(this[2], a2);
  v4 = this[3];
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  --dword_1ED4EAAA8;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v3);
  }
}

void CA::OGL::SampleMapFilter::DOD(CA::OGL::SampleMapFilter *this, CA::OGL::SampleMapFilter **a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v5 = CA::OGL::SampleMapFilter::max_range(a2[5], a2);
  v7 = a4[1].f64[0];
  v6 = a4[1].f64[1];
  if (v7 <= v6)
  {
    v8 = a4[1].f64[1];
  }

  else
  {
    v8 = a4[1].f64[0];
  }

  if (v8 < 1.79769313e308)
  {
    if (v7 >= v6)
    {
      v9 = a4[1].f64[1];
    }

    else
    {
      v9 = a4[1].f64[0];
    }

    if (v9 > 0.0)
    {
      *a4 = vaddq_f64(*a4, vdupq_lane_s64(COERCE__INT64(-v5), 0));
      v10 = v5 + v5;
      v11 = v10 + v7;
      v12 = v10 + v6;
      a4[1].f64[0] = v11;
      a4[1].f64[1] = v12;
      if (v11 <= 0.0 || v12 <= 0.0)
      {
        a4[1].f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }
    }
  }
}

uint64_t CA::OGL::SampleMapFilter::get_edge_info(uint64_t a1, CA::OGL::SampleMapFilter **a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x2_t *a6)
{
  v7 = *(*(a4 + 656) + 24);
  if ((*(v7 + 144) & 0x10) != 0)
  {
    v8 = vaddvq_f64(vmulq_f64(*v7, *v7));
    v9 = vaddvq_f64(vmulq_f64(*(v7 + 32), *(v7 + 32)));
    v10 = *(v7 + 120);
    if (v10 != 1.0)
    {
      v11 = 1.0 / (v10 * v10);
      v8 = v11 * v8;
      v9 = v11 * v9;
    }

    v12 = v8 != 1.0;
    if (v9 != 1.0)
    {
      v12 = 1;
    }

    v13 = sqrt(v8);
    v14 = sqrt(v9);
    if (v12)
    {
      v9 = v14;
      v8 = v13;
    }

    v18 = v9;
    v19 = v8;
  }

  else
  {
    v19 = *(v7 + 128);
    v18 = v19;
  }

  v15 = CA::OGL::SampleMapFilter::max_range(a2[5], a2);
  v16.f64[0] = v19;
  v16.f64[1] = v18;
  *a6 = vmul_n_f32(vcvt_f32_f64(v16), v15);
  return 1;
}

double *CA::OGL::anonymous namespace::clamp_twenty_part_rect(double *this, double *a2, double *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = this[v8];
    v11 = 5 - v8;
    v12 = this[5 - v8];
    if (v10 > v12)
    {
      v13 = (v12 + v10) * 0.5;
      v14 = v13;
      v15 = (v14 - *this) / (v10 - *this);
      this[v11] = v14;
      this[v8] = v14;
      if (a3)
      {
        *(a3 + v8) = *a3 + ((*(a3 + v8) - *a3) * v15);
        *(a3 + v11) = *(a3 + 5) + ((*(a3 + v11) - *(a3 + 5)) * v15);
      }

      if (a5)
      {
        a5[v8] = *a5 + ((a5[v8] - *a5) * v15);
        a5[v11] = a5[5] + ((a5[v11] - a5[5]) * v15);
      }
    }

    v7 = 1;
    v8 = 2;
  }

  while ((v9 & 1) == 0);
  v16 = 0;
  v17 = 1;
  do
  {
    v18 = v16;
    v19 = a2[v17];
    v20 = 5 - v17;
    v21 = a2[5 - v17];
    if (v19 > v21)
    {
      v22 = (v21 + v19) * 0.5;
      v23 = v22;
      v24 = (v23 - *a2) / (v19 - *a2);
      a2[v20] = v23;
      a2[v17] = v23;
      if (a4)
      {
        a4[v17] = *a4 + ((a4[v17] - *a4) * v24);
        a4[v20] = a4[5] + ((a4[v20] - a4[5]) * v24);
      }

      if (a6)
      {
        a6[v17] = *a6 + ((a6[v17] - *a6) * v24);
        a6[v20] = a6[5] + ((a6[v20] - a6[5]) * v24);
      }
    }

    v16 = 1;
    v17 = 2;
  }

  while ((v18 & 1) == 0);
  return this;
}

unint64_t CA::OGL::emit_twenty_part_rect(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v33[143] = *MEMORY[0x1E69E9840];
  if (*(result + 152) < 0x24u)
  {
    return result;
  }

  v10 = result;
  v11 = 0;
  v12 = *(result + 136);
  v13 = (v12 + 28);
  v14 = v33;
  do
  {
    v15 = 0;
    v16 = *(a4 + 8 * v11);
    v17 = v14;
    v18 = v13;
    do
    {
      *(v17 - 2) = *(a3 + 8 * v15);
      *(v17 - 1) = v16;
      *v17 = xmmword_183E20E60;
      if (a5)
      {
        *(v18 - 3) = *(a5 + 4 * v15);
        *(v18 - 2) = *(a6 + 4 * v11);
      }

      if (a7)
      {
        *(v18 - 1) = *(a7 + 4 * v15);
        *v18 = *(a8 + 4 * v11);
      }

      ++v15;
      v18 += 12;
      v17 += 2;
    }

    while (v15 != 6);
    ++v11;
    v13 += 72;
    v14 += 24;
  }

  while (v11 != 6);
  v19 = *(*(result + 16) + 8);
  for (i = 32; i != 1760; i += 48)
  {
    *(v12 + i) = v19;
  }

  v21 = *(a2 + 24);
  if (v21)
  {
    v21(a2, &v32, v12, 36, xmmword_183E20E60);
  }

  CA::OGL::transform_vertices(&v32, v12, 0x24, *(a2 + 8));
  v22 = *(a2 + 32);
  if (v22)
  {
    v22(a2, v12, 36);
  }

  if ((*(a2 + 16) & 9) != 0)
  {
    v23 = *(a2 + 20);
    if ((v23 & 0xF) == 0)
    {
      goto LABEL_23;
    }

    if ((v23 & 4) != 0)
    {
      CA::OGL::aa_adjust_vertices(v12, (v12 + 288), 48, 6);
      v23 = *(a2 + 20);
      if ((v23 & 8) == 0)
      {
LABEL_20:
        if ((v23 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_34;
      }
    }

    else if ((v23 & 8) == 0)
    {
      goto LABEL_20;
    }

    CA::OGL::aa_adjust_vertices((v12 + 1440), (v12 + 1152), 48, 6);
    v23 = *(a2 + 20);
    if ((v23 & 1) == 0)
    {
LABEL_21:
      if ((v23 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_34:
    CA::OGL::aa_adjust_vertices(v12, (v12 + 48), 288, 6);
    v23 = *(a2 + 20);
    if ((v23 & 2) == 0)
    {
LABEL_23:
      if ((v23 & 0xF0) != 0)
      {
        CA::OGL::aa_adjust_vertices((v12 + 384), (v12 + 96), 48, 2);
        CA::OGL::aa_adjust_vertices((v12 + 1248), (v12 + 1536), 48, 2);
        CA::OGL::aa_adjust_vertices((v12 + 624), (v12 + 576), 288, 2);
        CA::OGL::aa_adjust_vertices((v12 + 768), (v12 + 816), 288, 2);
      }

      goto LABEL_25;
    }

LABEL_22:
    CA::OGL::aa_adjust_vertices((v12 + 240), (v12 + 192), 288, 6);
    v23 = *(a2 + 20);
    goto LABEL_23;
  }

LABEL_25:
  v24 = CA::OGL::Context::need_transparent_source(v10);
  result = CA::OGL::emit_quad_indices(v10, *(a2 + 40), CA::OGL::emit_twenty_part_rect(CA::OGL::Context &,CA::OGL::RectState const&,double const*,double const*,float const*,float const*,float const*,float const*,unsigned int,float)::indices, 0x50uLL, 0x24u);
  if ((a9 & 0x40000) != 0 || v24)
  {
    v25 = vcvtq_f64_f32(*(v12 + 8));
    v31[0] = vcvtq_f64_f32(*v12);
    v31[1] = v25;
    v26 = vcvtq_f64_f32(*(v12 + 248));
    v31[2] = vcvtq_f64_f32(*(v12 + 240));
    v31[3] = v26;
    v27 = vcvtq_f64_f32(*(v12 + 1688));
    v31[4] = vcvtq_f64_f32(*(v12 + 1680));
    v31[5] = v27;
    v28 = vcvtq_f64_f32(*(v12 + 1448));
    v31[6] = vcvtq_f64_f32(*(v12 + 1440));
    v31[7] = v28;
    if ((a9 & 0x40000) != 0)
    {
      v29 = *(*(v10 + 2) + 8);
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    return CA::OGL::emit_quad_surround(v10, v31, &v30);
  }

  return result;
}

CA::Render::KeyPathValue *CA::Render::KeyPathValue::KeyPathValue(CA::Render::KeyPathValue *this, CA::Render::Decoder *a2)
{
  *(this + 2) = 1;
  *(this + 3) = 28;
  ++dword_1ED4EAAA8;
  *this = &unk_1EF1F57E8;
  *(this + 2) = CA::Render::Decoder::decode_keypath(a2);
  *(this + 3) = CA::Render::Decoder::decode_object(a2, 0);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-key-value.cpp", 245);
  return this;
}

double CA::Render::ValueInterpolator::set_hermite(CA::Render::ValueInterpolator *this, float64x2_t a2, double a3, float64_t a4, float64x2_t a5, float64x2_t a6, double a7, float64_t a8, float64_t a9, double a10)
{
  v10.f64[0] = *this;
  v11 = v10.f64[0] * v10.f64[0] * v10.f64[0];
  v12 = *this - (v10.f64[0] * v10.f64[0] + v10.f64[0] * v10.f64[0]) + v11;
  v13 = *this * -4.0 + 1.0;
  v10.f64[1] = v10.f64[0] * v10.f64[0];
  v14 = vmulq_f64(v10, xmmword_183E20E80);
  *(this + 2) = 1.0 - v14.f64[1] + v11 + v11;
  *(this + 3) = v12;
  *(this + 4) = v14.f64[1] - (v11 + v11);
  *(this + 5) = v11 - v10.f64[0] * v10.f64[0];
  v15 = vmulq_f64(v10, xmmword_183E20E90);
  v16 = vextq_s8(v15, v15, 8uLL);
  *(this + 6) = *&vsubq_f64(v16, v14);
  *(this + 7) = v13 + v14.f64[1];
  a2.f64[1] = a4;
  *(this + 4) = vsubq_f64(v14, v16);
  a5.f64[1] = a8;
  __asm { FMOV            V2.2D, #1.0 }

  v22 = vsubq_f64(_Q2, a5);
  v23 = a6.f64[0] + 1.0;
  a6.f64[1] = a9;
  v24 = vsubq_f64(_Q2, a6);
  v25.f64[0] = 1.0 - a7;
  v26 = vdivq_f64(vmulq_n_f64(v22, a3), vaddq_f64(a2, vdupq_lane_s64(*&a3, 0)));
  *(this + 10) = v23 * (a7 + 1.0) * v26.f64[0];
  v25.f64[1] = a10 + 1.0;
  *(this + 88) = vmulq_f64(v26, vmulq_f64(v24, v25));
  result = vmuld_lane_f64(a9 + 1.0, v26, 1) * (1.0 - a10);
  *(this + 13) = result;
  *(this + 112) = 1;
  return result;
}

double CA::Render::ValueInterpolator::mix_n<double>(float64x2_t *a1, uint64_t a2, double *a3, double *a4, double *a5, double *a6, double *a7)
{
  if (a2)
  {
    result = -2.0;
    do
    {
      v8 = *a5++;
      v9.f64[0] = v8;
      v10 = *a6++;
      v11.f64[0] = v10;
      if (a4)
      {
        v12 = *a4++;
        v13 = v12;
        if (!a7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = -(v11.f64[0] + v9.f64[0] * -2.0);
        if (!a7)
        {
LABEL_7:
          v15 = -(v9.f64[0] + v11.f64[0] * -2.0);
          goto LABEL_8;
        }
      }

      v14 = *a7++;
      v15 = v14;
LABEL_8:
      v9.f64[1] = a1[5].f64[0] * (v9.f64[0] - v13) + a1[5].f64[1] * (v11.f64[0] - v9.f64[0]);
      v11.f64[1] = a1[6].f64[0] * (v11.f64[0] - v9.f64[0]) + a1[6].f64[1] * (v15 - v11.f64[0]);
      *a3++ = vaddvq_f64(vmlaq_f64(vmulq_f64(a1[2], v11), v9, a1[1]));
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::WindowServer::Server::set_secure(CA::WindowServer::Server *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 24));
  if (*(this + 825) != a2)
  {
    *(this + 825) = a2;
    *(this + 833) = 1;
    CA::WindowServer::Server::invalidate(this, *(*(this + 12) + 216));
    v10 = 0;
    __asm { FMOV            V0.2D, #2.0 }

    v11 = _Q0;
    (*(*this + 176))(this, &v10, 0.0);
  }

  return pthread_mutex_unlock((this + 24));
}

uint64_t _next_encode_id(void)
{
  os_unfair_lock_lock(&_next_encode_id(void)::encode_count_lock);
  if ((_next_encode_id(void)::last_encode_count + 1) > 1)
  {
    v0 = (_next_encode_id(void)::last_encode_count + 1);
  }

  else
  {
    v0 = 1;
  }

  _next_encode_id(void)::last_encode_count = v0;
  os_unfair_lock_unlock(&_next_encode_id(void)::encode_count_lock);
  return v0 | (getpid() << 32);
}

void CA::Transaction::release_thread(CA::Transaction *this, void *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *(this + 15);
  if (*v5)
  {
    kdebug_trace();
    if (CA::Transaction::_debug_transactions == 1)
    {
      *buf = 0;
      v33 = 0;
      v34 = 0;
      v28 = backtrace_symbols(*(v5 + 240), *(v5 + 206));
      if (v28)
      {
        if (*(v5 + 206))
        {
          v29 = 0;
          do
          {
            X::Stream::printf(buf, "\n%s", v28[v29++]);
          }

          while (v29 < *(v5 + 206));
        }

        free(v28);
      }

      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v30 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v31 = x_stream_get(buf);
        *v37 = 136315138;
        v38 = v31;
        _os_log_error_impl(&dword_183AA6000, v30, OS_LOG_TYPE_ERROR, "Deleted thread with uncommitted CATransaction; created by:%s", v37, 0xCu);
      }

      if (*buf)
      {
        free(*buf);
      }
    }

    else
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v6 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "warning, deleted thread with uncommitted CATransaction; set CA_DEBUG_TRANSACTIONS=1 in environment to log backtraces, or set CA_ASSERT_MAIN_THREAD_TRANSACTIONS=1 to abort when an implicit transaction isn't created on a main thread.\n", buf, 2u);
      }
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 576) = this;
    v8 = objc_autoreleasePoolPush();
    CA::Transaction::commit(this);
    objc_autoreleasePoolPop(v8);
    *(StatusReg + 576) = 0;
    kdebug_trace();
  }

  v9 = *(this + 6);
  if (v9)
  {
    v10 = 0;
    while (*(v9 + 3))
    {
      if (v10)
      {
        v11 = 0;
        v12 = 1 << *v9;
        do
        {
          for (i = *(*(v9 + 2) + 8 * v11); i; i = *i)
          {
            CA::move_root(i[2], i[3], v10, a4);
          }

          ++v11;
        }

        while (v11 != v12);
        x_hash_table_remove_all(*(this + 6));
      }

      else
      {
        *(this + 6) = 0;
        v10 = v9;
      }

      v14 = 0;
      v35[0] = &unk_1EF1FA020;
      v36 = v35;
      v15 = 1 << *v10;
      do
      {
        for (j = *(*(v10 + 2) + 8 * v14); j; j = *j)
        {
          X::HashTable<CA::Layer *,CA::Layer *>::foreach(std::function<void ()(CA::Layer *,CA::Layer *)>)::{lambda(void *,void *,void *)#1}::__invoke(j[2], j[3], v35);
        }

        ++v14;
      }

      while (v14 != v15);
      if (v36 == v35)
      {
        (*(*v36 + 32))(v36);
      }

      else if (v36)
      {
        (*(*v36 + 40))();
      }

      x_hash_table_remove_all(v10);
      v9 = *(this + 6);
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    x_hash_table_free(v9);
    if (v10)
    {
LABEL_27:
      x_hash_table_free(v10);
    }
  }

  v17 = *(this + 8);
  if (v17)
  {
    CFRunLoopObserverInvalidate(v17);
    CFRelease(*(this + 8));
  }

  if (*(v5 + 16))
  {
    CA::Transaction::free_command_list(*(v5 + 16));
  }

  v18 = *(v5 + 64);
  if (v18)
  {
    CA::Transaction::free_commit_handlers_list(v18);
  }

  v19 = *(v5 + 72);
  if (v19)
  {
    CA::Transaction::free_commit_handlers_list(v19);
  }

  v20 = *(v5 + 80);
  if (v20)
  {
    CA::Transaction::free_commit_handlers_list(v20);
  }

  v21 = *(v5 + 88);
  if (v21)
  {
    CA::Transaction::free_commit_handlers_list(v21);
  }

  v22 = *(v5 + 96);
  if (v22)
  {
    CA::Transaction::free_commit_handlers_list(v22);
  }

  v23 = *(v5 + 104);
  if (v23)
  {
    CA::Transaction::free_commit_handlers_list(v23);
  }

  v24 = *(v5 + 48);
  if (v24)
  {
    CA::Transaction::free_batch_handlers_list(v24);
    *(v5 + 48) = 0;
  }

  if (*(v5 + 24))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v25 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x7C12FF47uLL);
    *v25 = *(v5 + 24);
    v25[1] = 0;
    do
    {
      v26 = CA::Transaction::global_deleted[0];
      v25[1] = CA::Transaction::global_deleted[0];
      v27 = v26;
      atomic_compare_exchange_strong(CA::Transaction::global_deleted, &v27, v25);
    }

    while (v27 != v26);
  }

  CA::Transaction::reset_animators(this);
  free(this);
}

void sub_183C0F3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  kdebug_trace();
  _Unwind_Resume(a1);
}

void *CA::Transaction::reset_animators(void *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this;
    do
    {
      if (*v1)
      {
        _Block_release(*v1);
      }

      v1 = *(v1 + 8);
    }

    while (v1);
    this = v2[1];
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

    v2[1] = 0;
  }

  return this;
}

void release_layer(const void *a1, void *cf, void *a3)
{
  v4 = cf[3];
  if (v4)
  {
    do
    {
      v5 = v4[1];

      cf[3] = v5;
      v4 = v5;
    }

    while (v5);
  }

  CFRelease(cf);
}

uint64_t CA::Render::Updater::RasterizationOp::copy(uint64_t a1, uint64_t *a2)
{
  result = x_heap_malloc_small_(a2, 0x18uLL);
  if (result)
  {
    v4 = *(a1 + 20);
    *(result + 16) = 1;
    *(result + 18) = 0;
    *result = &unk_1EF1F83A0;
    *(result + 20) = v4;
  }

  return result;
}

void CA::downsample_image(CA *this, void *a2, size_t a3, vImagePixelCount a4, vImagePixelCount a5, unsigned __int16 *a6, size_t a7, char a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, unsigned int a13)
{
  v23 = this;
  v52 = *MEMORY[0x1E69E9840];
  v24 = vcvtpd_u64_f64(a11 + a9);
  v25 = vcvtpd_u64_f64(a12 + a10);
  if (this <= 0x23)
  {
    if (((1 << this) & 0x60070F) != 0)
    {
      src.width = a4;
      src.rowBytes = a3;
      src.data = a2;
      src.height = a5;
      dest.width = v24;
      dest.rowBytes = a7;
      dest.data = a6;
      dest.height = v25;
      v26 = a11 / a4;
      transform.a = v26;
      v27 = a12 / a5;
      transform.b = 0.0;
      transform.c = 0.0;
      v28 = a9;
      transform.d = v27;
      transform.tx = v28;
      v29 = a10;
      transform.ty = v29;
      if ((a8 & 2) != 0)
      {
        v30 = 8;
      }

      else
      {
        v30 = 24;
      }

      v31 = dword_183E22690[this];
      switch(v31)
      {
        case 8:
          *backColor = 0;
          vImageAffineWarp_ARGB16U(&src, &dest, 0, &transform, backColor, v30);
          if ((a8 & 1) == 0 && v25)
          {
            v34 = 0;
            v35 = a6 + 2;
            do
            {
              v36 = v35;
              for (i = v24; i; --i)
              {
                v38 = v36[1];
                v39 = *(v36 - 2);
                if (v38 < v39)
                {
                  LOWORD(v39) = v36[1];
                }

                *(v36 - 2) = v39;
                v40 = *(v36 - 1);
                if (v38 < v40)
                {
                  LOWORD(v40) = v38;
                }

                *(v36 - 1) = v40;
                if (v38 >= *v36)
                {
                  LOWORD(v38) = *v36;
                }

                *v36 = v38;
                v36 += 4;
              }

              ++v34;
              v35 = (v35 + a7);
            }

            while (v34 != v25);
          }

          break;
        case 4:
          *backColor = 0;
          vImageAffineWarp_ARGB8888(&src, &dest, 0, &transform, backColor, v30);
          if ((a8 & 1) == 0)
          {
            if (v23 == 1)
            {
              vImageClipToAlpha_RGBA8888(&dest, &dest, 0);
            }

            else if (!v23)
            {
              vImageClipToAlpha_ARGB8888(&dest, &dest, 0);
            }
          }

          break;
        case 1:
          vImageAffineWarp_Planar8(&src, &dest, 0, &transform, 0, v30);
          break;
      }

      return;
    }

    if (((1 << this) & 0xA000000C0) != 0)
    {
      return;
    }
  }

  if ((a8 & 4) != 0)
  {
    return;
  }

  provider = CGDataProviderCreateWithData(0, a2, a5 * a3, 0);
  if (v23 > 0x23)
  {
    bitsPerPixel = 0;
    bitmapInfo = 0;
LABEL_37:
    v33 = 32;
    goto LABEL_38;
  }

  v32 = dword_183E22600[v23];
  bitmapInfo = dword_183E22570[v23];
  bitsPerPixel = dword_183E22600[v23];
  if (v32 == 16)
  {
    v33 = 5;
    goto LABEL_38;
  }

  if (v32 == 64)
  {
    v33 = 16;
    goto LABEL_38;
  }

  if (v32 != 32)
  {
    goto LABEL_37;
  }

  v33 = 8;
LABEL_38:
  v41 = CAGetColorSpace(2);
  v42 = CGImageCreate(a4, a5, v33, bitsPerPixel, a3, v41, bitmapInfo, provider, 0, 1, kCGRenderingIntentDefault);
  CGImageSetCachingFlags();
  CGDataProviderRelease(provider);
  v43 = CAGetCachedCGBitmapContext_(a6, v24, v25, v23, a7, v41);
  if (v43)
  {
    v44 = *(v43 + 2);
  }

  else
  {
    v44 = 0;
  }

  CGContextSetCompositeOperation();
  CGContextSetInterpolationQuality(v44, kCGInterpolationHigh);
  v54.origin.x = a9;
  v54.origin.y = a10;
  v54.size.width = a11;
  v54.size.height = a12;
  CGContextDrawImage(v44, v54, v42);
  CAReleaseCachedCGContext(v44);

  CGImageRelease(v42);
}

CA::OGL::Context *CA::OGL::fill_uneven_round_rect_tex(CA::OGL::Context *result, uint64_t a2, float64_t *a3, uint64_t a4, uint64_t a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *(*a2 + 16);
  if (v6 >= *(*a2 + 24))
  {
    v6 = *(*a2 + 24);
  }

  if (v6 > 0.0)
  {
    v9 = result;
    v10 = *a3;
    v11 = a3[2];
    if (*a3 == v11)
    {
      v12 = a3[1];
      v13 = a3[3];
      if (v12 == v13)
      {
        v14 = a3[4];
        if (v11 == v14)
        {
          v15 = a3[5];
          if (v13 == v15 && v14 == a3[6] && v15 == a3[7])
          {

            return CA::OGL::fill_round_rect_tex(result, a2, a4, 15, a5, 0, v10, v12);
          }
        }
      }
    }

    v16 = *(a2 + 8);
    if ((*(v16 + 144) & 0x10) != 0)
    {
      v17.f64[0] = vaddvq_f64(vmulq_f64(*v16, *v16));
      v18 = vaddvq_f64(vmulq_f64(*(v16 + 32), *(v16 + 32)));
      v19 = *(v16 + 120);
      if (v19 != 1.0)
      {
        v20 = 1.0 / (v19 * v19);
        v17.f64[0] = v20 * v17.f64[0];
        v18 = v20 * v18;
      }

      v21 = v17.f64[0] != 1.0;
      if (v18 != 1.0)
      {
        v21 = 1;
      }

      v22 = sqrt(v17.f64[0]);
      v23 = sqrt(v18);
      if (v21)
      {
        v18 = v23;
        v17.f64[0] = v22;
      }
    }

    else
    {
      v17.f64[0] = *(v16 + 128);
      v18 = v17.f64[0];
    }

    v24 = a3 + 1;
    v25 = 0.0;
    v26 = 4;
    do
    {
      v27 = *(v24 - 1);
      if (v27 <= *v24)
      {
        v27 = *v24;
      }

      if (v25 <= v27)
      {
        v25 = v27;
      }

      v24 += 2;
      --v26;
    }

    while (v26);
    if (v17.f64[0] <= v18)
    {
      v28 = v18;
    }

    else
    {
      v28 = v17.f64[0];
    }

    v29 = v28 * v25;
    if (a5)
    {
      v29 = v29 * 1.528665;
    }

    if (v29 < 1.0)
    {

      return CA::OGL::fill_rect_tex(result, a2, a4);
    }

    v30 = 0;
    v31 = v5->f64[0];
    v32 = v5->f64[1];
    v17.f64[1] = v18;
    __asm { FMOV            V1.2D, #0.5 }

    v38 = v5[1];
    v83 = 0u;
    v84 = 0u;
    v39 = v38.f64[0] + v31;
    v40 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(_Q1, v17)));
    __asm { FMOV            V0.2D, #1.0 }

    v69 = v38.f64[1];
    v42 = vdivq_f64(_Q0, v38);
    v43 = vdup_n_s32(0x3FC3AB4Bu);
    do
    {
      while (1)
      {
        v44 = vcvt_f32_f64(vmulq_f64(vbslq_s8(vcgtq_f64(*&a3[2 * v30], v40), *&a3[2 * v30], v40), v42));
        *(&v83 + v30) = v44;
        if (!a5)
        {
          break;
        }

        *(&v83 + v30++) = vmul_f32(v44, v43);
        if (v30 == 4)
        {
          v45 = result + 16;
          *(*(result + 2) + 16) = 5;
          v82 = 0;
          v46.i64[0] = __PAIR64__(HIDWORD(v83), v83);
          v47.i64[0] = __PAIR64__(DWORD1(v84), DWORD2(v83));
          v47.i64[1] = __PAIR64__(DWORD1(v83), DWORD2(v84));
          v46.i64[1] = __PAIR64__(HIDWORD(v84), v84);
          v48 = vaddq_f32(v47, v46);
          v49 = vdupq_n_s64(0x400721E8A7A4B61BuLL);
          v50 = vsubq_f64(v49, vdivq_f64(v49, vcvt_hight_f64_f32(v48)));
          v51 = vsubq_f64(v49, vdivq_f64(v49, vcvtq_f64_f32(*v48.f32)));
          v52 = vbslq_s8(vcgtq_f64(v50, _Q0), _Q0, v50);
          v53 = vbslq_s8(vcgtq_f64(v51, _Q0), _Q0, v51);
          v72[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vbicq_s8(v53, vcltzq_f64(v53))), vbicq_s8(v52, vcltzq_f64(v52)));
          result = (*(*result + 536))(result, 1, &v83, &v82);
          goto LABEL_43;
        }
      }

      ++v30;
    }

    while (v30 != 4);
    v45 = result + 16;
    *(*(result + 2) + 16) = 5;
    v82 = 0;
    result = (*(*result + 528))(result, 1, &v83, &v82);
LABEL_43:
    if ((*(v9 + 152) & 0xFFFFFFFC) != 0)
    {
      v54 = *(v9 + 136);
      v72[1] = xmmword_183E20E60;
      v75 = xmmword_183E20E60;
      v78 = xmmword_183E20E60;
      v81 = xmmword_183E20E60;
      v72[0].f64[0] = v31;
      v72[0].f64[1] = v32;
      v73 = v39;
      v74 = v32;
      v76 = v31;
      v77 = v69 + v32;
      v79 = v39;
      v80 = v69 + v32;
      v55 = *a4;
      *(v54 + 112) = *a4;
      *(v54 + 16) = v55;
      v56 = *(a4 + 8);
      *(v54 + 160) = v56;
      *(v54 + 64) = v56;
      v57 = *(a4 + 4);
      *(v54 + 68) = v57;
      *(v54 + 20) = v57;
      v58 = *(a4 + 12);
      v59 = v82;
      *(v54 + 116) = v58;
      *(v54 + 120) = v59;
      *(v54 + 164) = v58;
      *(v54 + 168) = HIDWORD(v59);
      *(v54 + 72) = HIDWORD(v59);
      *(v54 + 76) = v59;
      *(v54 + 24) = v59;
      *(v54 + 28) = v59;
      *(v54 + 172) = HIDWORD(v59);
      *(v54 + 124) = HIDWORD(v59);
      v60 = *(*v45 + 8);
      *(v54 + 32) = v60;
      *(v54 + 80) = v60;
      *(v54 + 128) = v60;
      *(v54 + 176) = v60;
      v61 = *(a2 + 24);
      if (v61)
      {
        v61(a2, v72, v54, 4);
      }

      CA::OGL::transform_vertices(v72, v54, 4, *(a2 + 8));
      v62 = *(a2 + 32);
      if (v62)
      {
        v62(a2, v54, 4);
      }

      v63 = *(a2 + 20);
      if ((v63 & 0xF) == 0 || (*(a2 + 16) & 9) == 0)
      {
        goto LABEL_55;
      }

      if ((v63 & 4) != 0)
      {
        CA::OGL::aa_adjust_vertices(v54, (v54 + 96), 48, 2);
        v63 = *(a2 + 20);
        if ((v63 & 8) == 0)
        {
LABEL_52:
          if ((v63 & 1) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }
      }

      else if ((v63 & 8) == 0)
      {
        goto LABEL_52;
      }

      CA::OGL::aa_adjust_vertices((v54 + 96), v54, 48, 2);
      v63 = *(a2 + 20);
      if ((v63 & 1) == 0)
      {
LABEL_53:
        if ((v63 & 2) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

LABEL_59:
      CA::OGL::aa_adjust_vertices(v54, (v54 + 48), 96, 2);
      if ((*(a2 + 20) & 2) == 0)
      {
LABEL_55:
        v64 = CA::OGL::Context::need_transparent_source(v9);
        CA::OGL::emit_quad_indices(v9, *(a2 + 40), CA::OGL::fill_uneven_round_rect_tex(CA::OGL::Context &,CA::OGL::RectState const&,CA::Vec2<double> *,float const*,unsigned int)::indices, 4uLL, 4u);
        result = (*(*v9 + 560))(v9, 0, 0);
        *(*(v9 + 16) + 16) = 0;
        if (v64)
        {
          v65 = vcvtq_f64_f32(*(v54 + 8));
          v71[0] = vcvtq_f64_f32(*v54);
          v71[1] = v65;
          v66 = vcvtq_f64_f32(*(v54 + 56));
          v71[2] = vcvtq_f64_f32(*(v54 + 48));
          v71[3] = v66;
          v67 = vcvtq_f64_f32(*(v54 + 152));
          v71[4] = vcvtq_f64_f32(*(v54 + 144));
          v71[5] = v67;
          v68 = vcvtq_f64_f32(*(v54 + 104));
          v71[6] = vcvtq_f64_f32(*(v54 + 96));
          v71[7] = v68;
          v70 = 0;
          return CA::OGL::emit_quad_surround(v9, v71, &v70);
        }

        return result;
      }

LABEL_54:
      CA::OGL::aa_adjust_vertices((v54 + 48), v54, 96, 2);
      goto LABEL_55;
    }
  }

  return result;
}

uint64_t CA::OGL::MaskNode::MaskRectState::map_(uint64_t result, float32x2_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = **(result + 48);
    v4.i64[0] = v3;
    v4.i64[1] = SHIDWORD(v3);
    v5 = vcvtq_f64_s64(v4);
    v6 = a2 + 2;
    do
    {
      v7 = vcvtq_f64_f32(v6[-2]);
      v8 = v6[-1].f32[1];
      if (v8 != 1.0)
      {
        v7 = vmulq_n_f64(v7, 1.0 / v8);
      }

      *v6 = vcvt_f32_f64(vsubq_f64(v7, v5));
      v6 += 6;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t CA::Layer::toggle_flipped(CA::Layer *this, CA::Transaction *a2)
{
  while (1)
  {
    v4 = *(this + 2);
    [v4 willChangeValueForKey:@"contentsAreFlipped"];
    atomic_fetch_xor(this + 1, 0x400000u);
    if (!CA::Layer::layout_is_active(this, a2, 1) && [v4 needsLayoutOnGeometryChange])
    {
      [v4 setNeedsLayout];
    }

    v5 = [v4 contents];
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (CABackingStoreGetTypeID::once[0] != -1)
      {
        dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
      }

      if (v7 == CABackingStoreGetTypeID::type && (v6[246] & 0x4000) != 0)
      {
        [v4 setNeedsDisplay];
      }
    }

    result = [v4 didChangeValueForKey:@"contentsAreFlipped"];
    v9 = *(this + 3);
    if (v9)
    {
      v10 = v9 + 1;
      v11 = v9[2];
      if (v11 == 1)
      {
        if (!v9[3])
        {
          do
          {
LABEL_16:
            v12 = *v10++;
            result = CA::Layer::toggle_flipped(*(v12 + 16), a2);
            --v11;
          }

          while (v11);
          goto LABEL_17;
        }
      }

      else if (!v11)
      {
        goto LABEL_17;
      }

      v10 = *v10;
      goto LABEL_16;
    }

LABEL_17:
    v13 = *(this + 4);
    if (!v13)
    {
      return result;
    }

    this = *(v13 + 16);
  }
}

IMP cons_CALayer_kCAValueRetainedPointer(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL36cons_CALayer_kCAValueRetainedPointerjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL36cons_CALayer_kCAValueRetainedPointerjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

IMP cons_CALayer_kCAValueDouble(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_d16__0_8l;
    v4 = ___ZL27cons_CALayer_kCAValueDoublejb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v24__0_8d16l;
    v4 = ___ZL27cons_CALayer_kCAValueDoublejb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

void setupHermiteInterpolator(CAKeyframeAnimation *a1, CA::Render::ValueInterpolator *a2, int a3, const double *a4)
{
  v8 = [(CAKeyframeAnimation *)a1 tensionValues];
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if (v8)
  {
    v12 = v8;
    v13 = [(NSArray *)v8 count];
    if (v13 > a3)
    {
      [-[NSArray objectAtIndex:](v12 objectAtIndex:{a3), "doubleValue"}];
      v11 = v14;
    }

    if (a3 + 1 < v13)
    {
      [-[NSArray objectAtIndex:](v12 objectAtIndex:{a3 + 1), "doubleValue"}];
      v10 = v15;
    }
  }

  v16 = [(CAKeyframeAnimation *)a1 continuityValues];
  v17 = 0.0;
  if (v16)
  {
    v18 = v16;
    v19 = [(NSArray *)v16 count];
    if (v19 > a3)
    {
      [-[NSArray objectAtIndex:](v18 objectAtIndex:{a3), "doubleValue"}];
      v17 = v20;
    }

    if (a3 + 1 < v19)
    {
      [-[NSArray objectAtIndex:](v18 objectAtIndex:{a3 + 1), "doubleValue"}];
      v9 = v21;
    }
  }

  v22 = [(CAKeyframeAnimation *)a1 biasValues];
  if (v22)
  {
    v26 = v22;
    v27 = [(NSArray *)v22 count];
    v28 = 0.0;
    v29 = 0.0;
    if (v27 > a3)
    {
      [-[NSArray objectAtIndex:](v26 objectAtIndex:{a3), "doubleValue"}];
      v29 = v23.f64[0];
    }

    if (a3 + 1 < v27)
    {
      [-[NSArray objectAtIndex:](v26 objectAtIndex:{a3 + 1), "doubleValue"}];
      v28 = v23.f64[0];
    }
  }

  else
  {
    v28 = 0.0;
    v29 = 0.0;
  }

  v30 = a4[1];
  v23.f64[0] = v30 - *a4;
  v24.f64[0] = v11;
  v25.f64[0] = v17;
  CA::Render::ValueInterpolator::set_hermite(a2, v23, a4[2] - v30, a4[3] - a4[2], v24, v25, v29, v10, v9, v28);
}

void CA::Render::ShadowCache::free_bounds_entry(CA::Render::ShadowCache *this, void *a2, void *a3)
{
  v4 = *(this + 13);
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4, a2, a3);
    }

    *(this + 13) = 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_zone;

  malloc_zone_free(v5, this);
}

void CA::Context::delete_sent_deferrals(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    do
    {
      v3 = *(v1 + 8);
      if (v3)
      {
        *v3 = 0;
      }

      v4 = *v1;
      if (*v1)
      {
        do
        {
          v5 = *v4;
          CA::Context::unref(v4[1], 1);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v4);
          v4 = v5;
        }

        while (v5);
      }

      v1 += 16;
    }

    while (v1 != v2);
  }
}

void ___ZN2CA7Context14send_deferralsEjjRKNSt3__113unordered_setIyNS1_4hashIyEENS1_8equal_toIyEENS1_9allocatorIyEEEEdjy_block_invoke(uint64_t a1)
{
  CA::Context::delete_sent_deferrals(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x1865EA9A0);
  }
}

uint64_t CA::Render::get_rect_property(CA::Render *this, const CA::Rect *a2, int *a3, unsigned int *a4, double *a5)
{
  v5 = *a3;
  if (a2 == 1)
  {
    if (v5 == 654)
    {
      *a4 = *(this + 2);
      v6 = *(this + 3);
      goto LABEL_12;
    }

    if (v5 == 547)
    {
      *a4 = *this;
      v6 = *(this + 1);
LABEL_12:
      *(a4 + 1) = v6;
      return 2;
    }

    return 0;
  }

  if (v5 == 654)
  {
    if (a2 == 2)
    {
      v10 = a3[1];
      if (v10 == 753)
      {
        v8 = *(this + 2);
        goto LABEL_20;
      }

      if (v10 == 295)
      {
        v8 = *(this + 3);
        goto LABEL_20;
      }
    }

    return 0;
  }

  if (v5 != 547 || a2 != 2)
  {
    return 0;
  }

  v7 = a3[1];
  if (v7 == 756)
  {
    v8 = *this;
    goto LABEL_20;
  }

  if (v7 != 760)
  {
    return 0;
  }

  v8 = *(this + 1);
LABEL_20:
  *a4 = v8;
  return 1;
}

uint64_t CA::Render::ShapeLayer::get_keypath_object(CA::Render::ShapeLayer *this, void *const *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v2)
  {
    if (HIDWORD(v2))
    {
      return 0;
    }

    v3 = v2 >> 1;
  }

  else
  {
    if (*v2 != 1)
    {
      return 0;
    }

    v3 = *(v2 + 4);
  }

  if (v3 == 554)
  {
    v4 = 16;
    return *(this + v4);
  }

  if (v3 != 480)
  {
    return 0;
  }

  v4 = 128;
  return *(this + v4);
}

CA::Render *CA::Render::morph_paths(CA::Render **this, CA::Render **a2, CA::Render::Path *a3, float a4)
{
  v5 = this;
  v111 = *MEMORY[0x1E69E9840];
  if (fabsf(a4) >= 0.00001)
  {
    if (fabsf(a4 + -1.0) < 0.00001)
    {
      if (!a2)
      {
        return 0;
      }

      v6 = (a2 + 1);
      v5 = a2;
      if (!atomic_fetch_add(a2 + 2, 1u))
      {
        goto LABEL_8;
      }

      return v5;
    }

    v8 = CA::Render::spline_count(this[4], this[5]);
    v9 = CA::Render::spline_count(a2[4], a2[5]);
    v106 = v8;
    v107 = v9;
    if (v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v11 = 72 * v8;
    v12 = 72 * v9;
    v104 = v10;
    v13 = 9 * v10;
    if (72 * v8 > 0x1000)
    {
      v15 = malloc_type_malloc(72 * v8, 0xC8CB51ACuLL);
      v14 = v15;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v9);
      v14 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v14, 72 * v8);
    }

    v16 = 8 * v13;
    if (v12 > 0x1000)
    {
      v18 = malloc_type_malloc(v12, 0xCB8CD66uLL);
      v17 = v18;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v15);
      v17 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v12);
    }

    v105 = v16;
    if (v16 > 0x1000)
    {
      v110 = malloc_type_malloc(v16, 0x69F6970DuLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v18);
      v110 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v110, v16);
    }

    v19 = 0;
    if (!v14 || !v17 || !v110)
    {
      goto LABEL_98;
    }

    CA::Render::make_splines(*(v5 + 4), *(v5 + 5), v14);
    splines = CA::Render::make_splines(a2[4], a2[5], v17);
    v23 = v106;
    v22 = v107;
    if (v106 >= v107)
    {
      v24 = v107;
    }

    else
    {
      v24 = v106;
    }

    v102 = v12;
    v103 = 72 * v8;
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      *&v21 = a4;
      v109 = v21;
      v108 = vdupq_lane_s64(COERCE__INT64(a4), 0);
      v27 = 1;
      do
      {
        v28 = &v14[72 * v26];
        if (v28[64] & 1) != 0 || (v17[72 * v26 + 64])
        {
          if ((v27 & 1) != 0 && v28[65] == 1 && v17[72 * v26 + 65] == 1)
          {
            CA::Render::mix_splines(v110, v14, v17, v26++, v25, a4);
            v27 = 1;
          }

          else
          {
            v29 = &v14[72 * v26];
            v30 = &v17[72 * v26];
            v31 = v17;
            v32 = v14;
            v33 = v110;
            v34 = &v110[72 * v26];
            v34[1] = vmlaq_f64(v29[1], v108, vsubq_f64(*(v30 + 1), v29[1]));
            v34[2].f64[1] = CA::Render::mix_angle(splines, v29[2].f64[1], *(v30 + 5), a4);
            v35 = v108;
            v34[3].f64[1] = v29[3].f64[1] + (*(v30 + 7) - v29[3].f64[1]) * *&v109;
            LOWORD(v34[4].f64[0]) = *(v30 + 32);
            v36 = &v32[72 * v25];
            v37 = &v31[72 * v25];
            v38 = &v33[72 * v25];
            v14 = v32;
            *v38 = vmlaq_f64(*v36, v35, vsubq_f64(*v37, *v36));
            v27 = 0;
            v38[2].f64[0] = CA::Render::mix_angle(v39, v36[2].f64[0], v37[2].f64[0], a4);
            v40 = v36[3].f64[0];
            v17 = v31;
            v38[3].f64[0] = v40 + (v37[3].f64[0] - v40) * *&v109;
            ++v26;
          }

          v25 = v26;
        }

        else
        {
          CA::Render::mix_splines(v110, v14, v17, v26, v26 + 1, a4);
          ++v26;
        }
      }

      while (v26 != v24);
      if (v25 < v24)
      {
        v41 = &v14[72 * v25];
        v42 = v17;
        v43 = &v17[72 * v25];
        v44 = &v110[72 * v25];
        *v44 = vmlaq_f64(*v41, v108, vsubq_f64(*v43, *v41));
        v44[2].f64[0] = CA::Render::mix_angle(splines, v41[2].f64[0], v43[2].f64[0], a4);
        v45 = v43[3].f64[0];
        v17 = v42;
        v44[3].f64[0] = v41[3].f64[0] + (v45 - v41[3].f64[0]) * *&v109;
      }

      v12 = v102;
      v11 = v103;
      v23 = v106;
      v22 = v107;
    }

    v46 = v23 - v24;
    if (v23 > v24)
    {
      if (v22)
      {
        v47 = &v17[72 * v24 - 56];
        v48 = vdupq_lane_s64(COERCE__INT64(a4), 0);
        do
        {
          v49 = 0;
          v50 = &v14[72 * v24];
          v51 = &v110[72 * v24];
          v52 = 1;
          do
          {
            *&v51[16 * v49] = vmlaq_f64(*&v50[16 * v49], v48, vsubq_f64(*v47, *&v50[16 * v49]));
            v53 = *&v50[8 * v49 + 32];
            if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              v53 = 0.0;
            }

            *&v51[8 * v49 + 32] = v53;
            v54 = v52;
            *&v51[8 * v49 + 48] = *&v50[8 * v49 + 48] - *&v50[8 * v49 + 48] * a4;
            v49 = 1;
            v52 = 0;
          }

          while ((v54 & 1) != 0);
          *(v51 + 32) = *(v50 + 32);
          ++v24;
        }

        while (v24 != v23);
      }

      else
      {
        v55 = &v110[72 * v24];
        v56 = &v14[72 * v24];
        do
        {
          *v55 = *v56;
          v57 = *(v56 + 1);
          v58 = *(v56 + 2);
          v59 = *(v56 + 3);
          *(v55 + 32) = *(v56 + 32);
          *(v55 + 2) = v58;
          *(v55 + 3) = v59;
          *(v55 + 1) = v57;
          v55 += 72;
          v56 += 72;
          --v46;
        }

        while (v46);
      }

      v24 = v23;
    }

    v60 = v22 - v24;
    if (v22 > v24)
    {
      if (v23)
      {
        v61 = &v14[72 * v24 - 56];
        v62 = vdupq_lane_s64(COERCE__INT64(a4), 0);
        do
        {
          v63 = 0;
          v64 = &v17[72 * v24];
          v65 = &v110[72 * v24];
          v66 = 1;
          do
          {
            *&v65[16 * v63] = vmlaq_f64(*v61, v62, vsubq_f64(*&v64[16 * v63], *v61));
            v67 = *&v64[8 * v63 + 32];
            if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              v67 = 0.0;
            }

            *&v65[8 * v63 + 32] = v67;
            v68 = v66;
            *&v65[8 * v63 + 48] = *&v64[8 * v63 + 48] * a4;
            v63 = 1;
            v66 = 0;
          }

          while ((v68 & 1) != 0);
          *(v65 + 32) = *(v64 + 32);
          ++v24;
        }

        while (v24 != v22);
      }

      else
      {
        v69 = &v110[72 * v24];
        v70 = &v17[72 * v24];
        do
        {
          *v69 = *v70;
          v71 = *(v70 + 1);
          v72 = *(v70 + 2);
          v73 = *(v70 + 3);
          *(v69 + 32) = *(v70 + 32);
          *(v69 + 2) = v72;
          *(v69 + 3) = v73;
          *(v69 + 1) = v71;
          v69 += 72;
          v70 += 72;
          --v60;
        }

        while (v60);
      }
    }

    v74 = v104;
    if (v104)
    {
      v75 = 0;
      v76 = 0;
      LODWORD(v77) = 0;
      v78 = v110 + 65;
      v79 = 1;
      do
      {
        if (*(v78 - 17) == 0.0 && *(v78 - 9) == 0.0)
        {
          v80 = 1;
        }

        else
        {
          v80 = 3;
        }

        v81 = v77 + v79;
        v76 += v79 + v80;
        if (*v78)
        {
          v82 = 2;
        }

        else
        {
          v82 = 1;
        }

        v77 = (v81 + v82);
        v75 += v82;
        v79 = *(v78 - 1);
        v78 += 72;
        --v74;
      }

      while (v74);
      v83 = CA::Render::Path::new_path(v77, v76, v75);
      v19 = v83;
      if (!v83)
      {
LABEL_98:
        if (v110 && v105 > 0x1000)
        {
          free(v110);
        }

        goto LABEL_101;
      }

      v84 = v110 + 32;
      v86 = *(v83 + 4);
      v85 = *(v83 + 5);
      v87 = 1;
      v88 = v104;
      do
      {
        v89 = v84 - 32;
        if (v87)
        {
          *v85++ = 1;
          *v86 = *v89;
          v86 += 16;
        }

        if (*(v84 + 2) == 0.0 && *(v84 + 3) == 0.0)
        {
          *v85 = 2;
          *v86 = *(v84 - 1);
          v86 += 16;
        }

        else
        {
          v90 = v88;
          *v85 = 4;
          v91 = *(v84 + 2);
          if (v91 == 0.0)
          {
            *v86 = *v89;
          }

          else
          {
            v92 = *(v84 - 4);
            *v86 = v92 + cos(*v84) * v91;
            v93 = *(v84 - 3);
            v94 = *(v84 + 2);
            *(v86 + 8) = v93 + sin(*v84) * v94;
          }

          v95 = *(v84 + 3);
          v96 = v84 - 16;
          if (v95 == 0.0)
          {
            *(v86 + 16) = *v96;
          }

          else
          {
            v97 = *(v84 - 2);
            *(v86 + 16) = v97 + cos(*(v84 + 1)) * v95;
            v98 = *(v84 - 1);
            v99 = *(v84 + 3);
            *(v86 + 24) = v98 + sin(*(v84 + 1)) * v99;
          }

          v88 = v90;
          *(v86 + 32) = *v96;
          v86 += 48;
        }

        if (v84[33] == 1)
        {
          v85[1] = 0;
          v85 += 2;
        }

        else
        {
          ++v85;
        }

        v87 = v84[32];
        v84 += 72;
        --v88;
      }

      while (v88);
      v12 = v102;
      v11 = v103;
    }

    else
    {
      v100 = CA::Render::Path::new_path(0, 0, 0);
      v19 = v100;
      if (!v100)
      {
LABEL_101:
        if (v17 && v12 > 0x1000)
        {
          free(v17);
        }

        if (v11 > 0x1000 && v14)
        {
          free(v14);
        }

        return v19;
      }

      v85 = *(v100 + 5);
    }

    *v85 = 5;
    goto LABEL_98;
  }

  if (this)
  {
    v6 = (this + 1);
    if (!atomic_fetch_add(this + 2, 1u))
    {
LABEL_8:
      v5 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }
  }

  return v5;
}

CA::Render *CA::Render::Path::mix@<X0>(CA::Render **this@<X0>, CA::Render **a2@<X1>, const CA::Render::ValueInterpolator *a3@<X2>, CA::Render **a4@<X8>)
{
  v5 = *a3;
  result = CA::Render::morph_paths(this, a2, a3, v5);
  *a4 = result;
  return result;
}

uint64_t CA::Render::spline_count(CA::Render *this, CA::Render::Path *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = v2;
        v7 = *a2;
        a2 = (a2 + 1);
        v6 = v7;
        if (v7 > 2)
        {
          break;
        }

        if (v6)
        {
          if (v6 == 2)
          {
            v8 = (this + 16);
          }

          else
          {
            v8 = this;
          }

          if (v6 == 2)
          {
            v3 = this;
            v9 = v4 + 1;
          }

          else
          {
            v9 = v4;
          }

          if (v6 == 1)
          {
            v2 = this;
            v3 = this;
            this = (this + 16);
          }

          else
          {
            this = v8;
          }

          if (v6 != 1)
          {
            v4 = v9;
          }
        }

        else
        {
          v2 = 0;
          if (v5)
          {
            if (*v3 != *v5 || (v2 = 0, v3[1] != v5[1]))
            {
              v2 = 0;
              ++v4;
            }
          }
        }
      }

      if (v6 != 3)
      {
        break;
      }

      v3 = (this + 16);
      this = (this + 32);
LABEL_24:
      ++v4;
    }

    if (v6 == 4)
    {
      v3 = (this + 32);
      this = (this + 48);
      goto LABEL_24;
    }
  }

  while (v6 != 5);
  return v4;
}

__int128 *CA::Render::make_splines(__int128 *result, unsigned __int8 *a2, unint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v17 = vdupq_n_s64(0x3FE5555555555555uLL);
  v18 = vdupq_n_s64(0x3FD5555555555555uLL);
  v7 = a3;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v5;
          v9 = result;
          v11 = *a2++;
          v10 = v11;
          if (v11 > 2)
          {
            break;
          }

          if (v10)
          {
            if (v10 == 1)
            {
              if (v5 && v7 > a3)
              {
                *(v7 - 8) = 1;
              }

              ++result;
              v5 = v9;
              v6 = v9;
            }

            else if (v10 == 2)
            {
              *v7 = *v6;
              *(v7 + 16) = *result;
              v20 = 0uLL;
              v12 = *v7;
              v13 = vsubq_f64(*(v7 + 16), *v7);
              v20 = vmlaq_f64(*v7, v18, v13);
              v19 = vmlaq_f64(v12, v17, v13);
              CA::Render::compute_angles(v7, v20.f64, v19.f64);
              *(v7 + 64) = 0;
              v7 += 72;
              result = v9 + 1;
              v5 = v8;
              v6 = v9;
            }
          }

          else
          {
            v5 = 0;
            if (v8)
            {
              if (*v6 == *v8 && v6[1] == v8[1])
              {
                v5 = 0;
                if (v7 > a3)
                {
                  v5 = 0;
                  *(v7 - 8) = 257;
                }
              }

              else
              {
                v5 = 0;
                *v7 = *v6;
                v14 = *v8;
                *(v7 + 32) = 0u;
                *(v7 + 48) = 0u;
                *(v7 + 16) = v14;
                *(v7 + 64) = 257;
                v7 += 72;
              }
            }
          }
        }

        if (v10 != 3)
        {
          break;
        }

        *v7 = *v6;
        *(v7 + 16) = result[1];
        v20 = 0uLL;
        v15 = vaddq_f64(*result, *result);
        v16 = vmulq_f64(vaddq_f64(*v7, v15), v18);
        v6 = (result + 1);
        v19 = vmulq_f64(vaddq_f64(*(v7 + 16), v15), v18);
        v20 = v16;
        CA::Render::compute_angles(v7, v20.f64, v19.f64);
        *(v7 + 64) = 0;
        v7 += 72;
        result = v9 + 2;
        v5 = v8;
      }

      if (v10 != 4)
      {
        break;
      }

      *v7 = *v6;
      v6 = (result + 2);
      *(v7 + 16) = result[2];
      CA::Render::compute_angles(v7, result, result + 2);
      *(v7 + 64) = 0;
      v7 += 72;
      result = v9 + 3;
      v5 = v8;
    }
  }

  while (v10 != 5);
  if (v5 && v7 > a3)
  {
    *(v7 - 8) = 1;
  }

  return result;
}

void CA::Render::compute_angles(uint64_t a1, double *a2, double *a3)
{
  v6 = a2[1];
  v7 = *a1;
  v8 = *(a1 + 8);
  if (vabdd_f64(*a2, *a1) >= 0.0001 || vabdd_f64(v6, v8) >= 0.0001)
  {
    v11 = *a2 - v7;
    v12 = v6 - v8;
    *(a1 + 32) = atan2(v6 - v8, v11);
    v13 = (v11 * v11 + v12 * v12) / sqrt(fmax(v11 * v11 + v12 * v12, 0.000001));
  }

  else
  {
    v9 = *a3;
    v10 = a3[1];
    if (vabdd_f64(*a3, v7) >= 0.0001 || vabdd_f64(v10, v8) >= 0.0001 || (v9 = *(a1 + 16), v10 = *(a1 + 24), vabdd_f64(v9, v7) >= 0.0001) || vabdd_f64(v10, v8) >= 0.0001)
    {
      *(a1 + 32) = atan2(v10 - v8, v9 - v7);
    }

    else
    {
      *(a1 + 32) = 0x7FF8000000000000;
    }

    v13 = 0.0;
  }

  *(a1 + 48) = v13;
  v14 = *a3;
  v15 = a3[1];
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  if (vabdd_f64(*a3, v17) < 0.0001 && vabdd_f64(v15, v16) < 0.0001)
  {
    v18 = a2[1];
    if (vabdd_f64(*a2, v17) >= 0.0001 || vabdd_f64(v18, v16) >= 0.0001)
    {
      v22 = *a2 - v17;
      v23 = v18 - v16;
    }

    else
    {
      if (vabdd_f64(v7, v17) < 0.0001 && vabdd_f64(v8, v16) < 0.0001)
      {
        *(a1 + 40) = 0x7FF8000000000000;
LABEL_22:
        v21 = 0.0;
        goto LABEL_23;
      }

      v22 = v7 - v17;
      v23 = v8 - v16;
    }

    *(a1 + 40) = atan2(v23, v22);
    goto LABEL_22;
  }

  v19 = v14 - v17;
  v20 = v15 - v16;
  *(a1 + 40) = atan2(v15 - v16, v14 - v17);
  v21 = (v19 * v19 + v20 * v20) / sqrt(fmax(v19 * v19 + v20 * v20, 0.000001));
LABEL_23:
  *(a1 + 56) = v21;
}

void CA::Render::mix_splines(CA::Render *a1, uint64_t a2, uint64_t a3, int a4, int a5, float a6)
{
  v7 = (a2 + 72 * a4);
  v8 = a6;
  v9 = a3 + 72 * a4;
  v10 = (a1 + 72 * a5);
  v11 = (a1 + 72 * a4);
  v12 = vmlaq_n_f64(v7[1], vsubq_f64(*(v9 + 16), v7[1]), v8);
  *v10 = v12;
  v11[1] = v12;
  v11[3].f64[1] = v7[3].f64[1] + (*(v9 + 56) - v7[3].f64[1]) * v8;
  v13 = a2 + 72 * a5;
  v14 = a3 + 72 * a5;
  v10[3].f64[0] = *(v13 + 48) + (*(v14 + 48) - *(v13 + 48)) * v8;
  v15 = v7[2].f64[1];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v7[3].f64[1] == 0.0)
  {
    v15 = *(v9 + 40);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v15 = 0.0;
    }
  }

  else if ((*(v9 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v9 + 56) != 0.0)
  {
    v15 = CA::Render::mix_angle(a1, v15, *(v9 + 40), a6);
  }

  v11[2].f64[1] = v15;
  v16 = *(v13 + 48) & 0x7FFFFFFFFFFFFFFFLL;
  if (v16 >= 0x7FF0000000000001 || v16 == 0x7FF0000000000000 || v16 == 0)
  {
    v19 = *(v14 + 32);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v19 = 0.0;
    }
  }

  else
  {
    v20 = *(v14 + 48) & 0x7FFFFFFFFFFFFFFFLL;
    v22 = v20 > 0x7FF0000000000000 || v20 == 0x7FF0000000000000 || v20 == 0;
    v19 = *(v13 + 32);
    if (!v22)
    {
      v19 = CA::Render::mix_angle(a1, v19, *(v14 + 32), a6);
    }
  }

  v10[2].f64[0] = v19;
  LOWORD(v11[4].f64[0]) = *(v9 + 64);
}

double CA::Render::mix_angle(CA::Render *this, double result, double a3, float a4)
{
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (vabdd_f64(result, a3) > 3.14159265)
      {
        if (result <= a3)
        {
          a3 = a3 + -6.28318531;
        }

        else
        {
          result = result + -6.28318531;
        }
      }

      return result + (a3 - result) * a4;
    }
  }

  else
  {
    result = 0.0;
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return a3;
    }
  }

  return result;
}

atomic_uint *CA::Render::ShapeLayer::set_keypath_object(atomic_uint *this, void *const *a2, CA::Render::Object *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a3;
    v5 = this;
    if (v3)
    {
      if (HIDWORD(v3))
      {
        return this;
      }

      v6 = v3 >> 1;
    }

    else
    {
      if (*v3 != 1)
      {
        return this;
      }

      v6 = *(v3 + 4);
    }

    if (v6 == 480)
    {
      if (a3)
      {
        if (*(a3 + 12) == 62)
        {

          return CA::Render::ShapeLayer::set_dash_pattern(this, a3);
        }
      }

      else
      {
        this = *(this + 16);
        if (this)
        {
          if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
          {
            this = (*(*this + 16))(this);
          }

          *(v5 + 16) = 0;
        }
      }
    }

    else if (v6 == 554 && (!a3 || *(a3 + 12) == 38))
    {
      v7 = *(this + 2);
      if (v7 != a3)
      {
        if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v7 + 16))(v7);
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

        *(v5 + 2) = v4;
      }

      return CA::Render::ShapeLayer::invalidate_stroke_path(v5);
    }
  }

  return this;
}

void CA::OGL::MetalContext::stop_idle_collect_timer(CA::OGL::MetalContext *this)
{
  os_unfair_lock_lock(this + 818);
  v2 = *(this + 592);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 592));
    *(this + 592) = 0;
  }

  os_unfair_lock_unlock(this + 818);
}

void CA::Context::invalidate(CA::Context *this)
{
  v2 = pthread_mutex_lock((this + 16));
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 576);
  if (!v4)
  {
    v2 = CA::Transaction::create(v2);
    v4 = v2;
  }

  v5 = **(v4 + 15);
  if (!v5)
  {
    CA::Transaction::begin_transaction(v2);
    *(v4 + 132) = *(v4 + 132) & 0xFB | (4 * (pthread_main_np() == 0));
  }

  v6 = *(this + 12);
  if (v6)
  {
    CA::Layer::set_visible(*(v6 + 16), 0);
    CFRelease(*(this + 12));
    *(this + 12) = 0;
  }

  if ((*(this + 257) & 0x100) != 0)
  {
    v7 = 520;
  }

  else
  {
    v7 = 8;
  }

  *(this + 257) |= v7;
  pthread_mutex_unlock((this + 16));
  if (!v5)
  {
    v9 = *(StatusReg + 576);
    if (v9)
    {
      if (**(v9 + 15))
      {

        CA::Transaction::pop(v9, v8);
      }
    }
  }
}

double CA::OGL::Context::bind_uneven_supercircle(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, uint64_t a5, __int128 *a6)
{
  v6 = *(a1 + 16);
  *(v6 + 16 * a2 + 96) = xmmword_183E21110;
  *(v6 + a2 + 17) = 16;
  v7 = *(a1 + 16) + 400;
  v8 = (v7 + 48 * a2);
  *v8 = *a3;
  v8[1] = a3[1];
  if (a6)
  {
    v9 = *a6;
  }

  else
  {
    v9 = 0uLL;
  }

  *(v7 + 48 * a2 + 32) = v9;
  result = 0.0078125;
  *a4 = 0x3F80000000000000;
  return result;
}

void CA::Render::Fence::ftimeout_callback(CA::Render::Fence *this, double a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (CA::Render::Fence::fence_info_once != -1)
  {
    dispatch_once_f(&CA::Render::Fence::fence_info_once, 0, CA::Render::Fence::fence_info_init);
  }

  os_unfair_lock_lock(&CA::Render::Fence::_lock);
  v4 = *(CA::Render::Fence::fences_by_name + 16);
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = 0;
  v6 = INFINITY;
  do
  {
    while (1)
    {
      v7 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(CA::Render::Fence::cleared_f_names, v4[2]);
      if (v7)
      {
        goto LABEL_15;
      }

      v8 = v4[3];
      v9 = *(v8 + 8);
      if (v9 > a2)
      {
        break;
      }

      kdebug_trace();
      ht_fence_timeout();
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v10 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v11 = v4[2];
        *buf = 134217984;
        v16 = v11;
        _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "timed out fence %llu\n", buf, 0xCu);
      }

      v7 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(CA::Render::Fence::cleared_f_names, v4[2]);
      v4 = *v4;
      v5 = 1;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    if (v9 <= v6)
    {
      v6 = *(v8 + 8);
    }

LABEL_15:
    v4 = *v4;
  }

  while (v4);
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if (CA::Render::Fence::resolve_fences(v7))
  {
    v12 = *(CA::Render::Fence::fences_by_name + 16);
    if (v12)
    {
      v13 = CA::Render::Fence::cleared_f_names;
      v6 = INFINITY;
      do
      {
        if (!std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v13, v12[2]))
        {
          v14 = v12[3];
          if (*(v14 + 8) <= v6)
          {
            v6 = *(v14 + 8);
          }
        }

        v12 = *v12;
      }

      while (v12);
      goto LABEL_26;
    }

LABEL_25:
    v6 = INFINITY;
  }

LABEL_26:
  os_unfair_lock_unlock(&CA::Render::Fence::_lock);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    CA::Render::Server::add_callback(3, CA::Render::Fence::ftimeout_callback, 0, v6);
  }
}

uint64_t ___ZL36cons_CAAnimation_kCAValueWeakPointerjb_block_invoke(uint64_t a1, CA::Transaction *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = 0;
  CAAnimation_getter(a2, v3, 4, v5);
  return v5[0];
}

void CA::Render::ImageQueue::~ImageQueue(id *this, CA::Render::Object *a2)
{
  *this = &unk_1EF1F4DB0;
  CA::Render::Context::remove_image_queue(this, a2);
  v3 = this[61];
  if (v3)
  {
    do
    {
      v4 = *v3;
      if (atomic_fetch_add((*v3 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
      }

      v3 = v3[1];
    }

    while (v3);
    v5 = this[61];
    if (v5)
    {
      do
      {
        v6 = v5[1];
        free(v5);
        v5 = v6;
      }

      while (v6);
    }
  }

  v7 = *(this + 115);
  if (v7)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v7);
  }

  v8 = this[9];
  if (v8)
  {

    for (i = 1; i != 4; ++i)
    {
      v10 = v8[i];
      if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v10 + 16))(v10);
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v8);
  }

  v11 = this[48];
  if (v11)
  {
    v12 = (v11 - 2);
    v13 = *(v11 - 1);
    if (v13)
    {
      v14 = &v11[24 * v13 - 24];
      v15 = -192 * v13;
      do
      {
        v16 = *(v14 + 8);
        if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v16 + 16))(v16);
        }

        v17 = *v14;
        if (*v14 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v17 + 16))(v17);
        }

        v14 -= 192;
        v15 += 192;
      }

      while (v15);
    }

    MEMORY[0x1865EA980](v12, 0x1020C804108B384);
  }

  v18 = this[53];
  if (v18)
  {
    MEMORY[0x1865EA9A0](v18, 0x1000C404D711F9FLL);
  }

  v19 = this[63];
  if (v19)
  {
    CA::CASharedEvent::unref(v19);
  }

  v20 = this[62];
  if (v20)
  {
    CA::CASharedEvent::unref(v20);
  }

  if (this[59])
  {
    if (*(this + 480) == 1)
    {
      objc_storeWeakOrNil(this + 59, 0);
    }

    else
    {
      this[59] = 0;
    }
  }

  v21 = this[54];
  if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = this[47];
  if (v22 && atomic_fetch_add(v22 + 4, 0xFFFFFFFF) == 1)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = this[10];
  if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v23 + 16))(v23);
  }

  v24 = this[8];
  if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v24 + 16))(v24);
  }

  v25 = this[4];
  if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v25 + 16))(v25);
  }

  v26 = this[3];
  if (v26 && atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v26 + 16))(v26);
  }

  v27 = this[2];
  if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v27 + 16))(v27);
  }

  --dword_1ED4EAA9C;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v7);
  }
}

{
  CA::Render::ImageQueue::~ImageQueue(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void CA::HDRProcessorInternal::~HDRProcessorInternal(CA::HDRProcessorInternal *this)
{
  CA::HDRProcessorInternal::~HDRProcessorInternal(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1FA068;
  v2 = *(this + 7);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = *v3;
        if (*v3 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 16))(v4);
        }

        MEMORY[0x1865EA9A0](v3, 0x20C4093837F09);
      }

      v2 = *(v2 + 8);
    }

    while (v2);
    v5 = *(this + 7);
    if (v5)
    {
      do
      {
        v6 = v5[1];
        free(v5);
        v5 = v6;
      }

      while (v6);
    }
  }

  v7 = *(this + 13);
  if (v7)
  {
    CA::IOSAManager::unref(v7);
    *(this + 13) = 0;
  }

  v8 = *(this + 10);
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_183C12E68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(exception_object);
}

void CAImageQueueInvalidate(uint64_t a1)
{
  v2 = (a1 + 96);
  if (*(a1 + 96))
  {
    pthread_mutex_lock(&collectable_mutex);
    if (*(a1 + 112) == 1)
    {
      do
      {
        pthread_cond_wait(&collectable_cond, &collectable_mutex);
      }

      while ((*(a1 + 112) & 1) != 0);
    }

    v3 = collectable_list;
    x_list_remove(collectable_list, a1);
    collectable_list = v3;
    v4 = *(a1 + 72);
    if (v4)
    {
      dispatch_release(v4);
    }

    *(a1 + 72) = 0;
    *v2 = 0;
    v2[1] = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      *(*(v5 + 24) + 28) = 0;
    }

    pthread_mutex_unlock(&collectable_mutex);
  }

  if (*(a1 + 144))
  {
    pthread_mutex_lock(&composited_mutex);
    if (*(a1 + 160) == 1)
    {
      do
      {
        pthread_cond_wait(&composited_cond, &composited_mutex);
      }

      while ((*(a1 + 160) & 1) != 0);
    }

    v6 = composited_list;
    x_list_remove(composited_list, a1);
    composited_list = v6;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    v7 = *(a1 + 48);
    if (v7)
    {
      *(*(v7 + 24) + 52) = 0;
    }

    pthread_mutex_unlock(&composited_mutex);
  }

  if (*(a1 + 120))
  {
    pthread_mutex_lock(&presented_mutex);
    if (*(a1 + 136) == 1)
    {
      do
      {
        pthread_cond_wait(&presented_cond, &presented_mutex);
      }

      while ((*(a1 + 136) & 1) != 0);
    }

    v8 = presented_list;
    x_list_remove(presented_list, a1);
    presented_list = v8;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 24);
      *(v10 + 48) = 0;
      *(v10 + 94) = 0;
    }

    pthread_mutex_unlock(&presented_mutex);
  }

  if (*(a1 + 168))
  {
    pthread_mutex_lock(&display_change_mutex);
    if (*(a1 + 176) == 1)
    {
      do
      {
        pthread_cond_wait(&display_change_cond, &display_change_mutex);
      }

      while ((*(a1 + 176) & 1) != 0);
    }

    v11 = display_change_list;
    x_list_remove(display_change_list, a1);
    display_change_list = v11;
    _Block_release(*(a1 + 168));
    *(a1 + 168) = 0;
    pthread_mutex_unlock(&display_change_mutex);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(v12 + 24);
    v14 = atomic_load((v13 + 8));
    os_unfair_lock_lock((a1 + 16));
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v13 + 540);
      v19 = (v14 >> 58) & 1;
      do
      {
        v20 = *v18;
        v18 += 40;
        if (v20)
        {
          v17 = release_image(a1, v16, v17, v19);
          v15 = *(a1 + 40);
        }

        ++v16;
      }

      while (v16 < v15);
      os_unfair_lock_unlock((a1 + 16));
      if (v17)
      {
        release_images(a1, v17);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 16));
    }

    v21 = *(a1 + 48);
    if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v21 + 16))(v21);
    }

    *(a1 + 48) = 0;
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    free(v22);
    *(a1 + 64) = 0;
  }

  os_unfair_lock_lock((a1 + 16));
  v23 = *(a1 + 56);
  *(a1 + 56) = 0;
  os_unfair_lock_unlock((a1 + 16));
  if (v23)
  {
    if (*(v23 + 472))
    {
      if (*(v23 + 480) == 1)
      {
        objc_storeWeakOrNil((v23 + 472), 0);
      }

      else
      {
        *(v23 + 472) = 0;
      }
    }

    if (atomic_fetch_add((v23 + 8), 0xFFFFFFFF) == 1)
    {
      v24 = *(*v23 + 16);

      v24(v23);
    }
  }
}

void imageQueueFinalize(char *a1)
{
  if (*(a1 + 5) == 1)
  {
    v2 = a1 + 80;
    if (*(a1 + 10))
    {
      v3 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v3, "command", 4uLL);
      (*(a1 + 10))(a1, v3, *(a1 + 11));
      xpc_release(v3);
      *v2 = 0;
      *(a1 + 11) = 0;
    }
  }

  CAImageQueueInvalidate(a1);
  os_unfair_lock_lock(a1 + 4);
  v4 = *(a1 + 28);
  if (v4)
  {
    v5 = *(a1 + 28);
    do
    {
      (v5[2])(v5[1], a1);
      v5 = *v5;
    }

    while (v5);
    do
    {
      v6 = *v4;
      free(v4);
      v4 = v6;
    }

    while (v6);
    *(a1 + 28) = 0;
  }

  v7 = *(a1 + 25);
  if (v7)
  {
    v8 = 0;
    v9 = 1 << *v7;
    do
    {
      for (i = *(*(v7 + 16) + 8 * v8); i; i = *i)
      {
        delete_buffer(i[2], i[3], a1);
      }

      ++v8;
    }

    while (v8 != v9);
    x_hash_table_free(*(a1 + 25));
    *(a1 + 25) = 0;
  }

  v11 = *(a1 + 21);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(a1 + 53);
  if (v12)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v12);
  }

  os_unfair_lock_unlock(a1 + 4);
}

void delete_buffer(uint64_t a1, CAImageQueueBuffer *a2, void *a3)
{
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v16[15] = *MEMORY[0x1E69E9840];
  if (v4)
  {
    v7 = v5;
    v8 = v4;
    v9 = *(v5 + 20);
    if (v9 == 1)
    {
      if (*(v5 + 80))
      {
        v10 = v3;
        v11 = xpc_dictionary_create(0, 0, 0);
        if (v11)
        {
          v12 = v11;
          xpc_dictionary_set_uint64(v11, "command", 3uLL);
          xpc_dictionary_set_uint64(v12, "iosurfaceRenderId", v10);
          (*(v7 + 80))(v7, v12, *(v7 + 88));
          xpc_release(v12);
        }
      }

      v9 = *(v7 + 20);
    }

    if (!v9)
    {
      if (*(v7 + 212))
      {
        v13 = CA::Context::retain_context_with_id(*(v7 + 208));
        if (v13)
        {
          v14 = v13;
          bzero(v15, 0x1090uLL);
          CAImageQueueCommit::CAImageQueueCommit(v15, v7, (v14 + 58));
          if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
          {
            dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
          }

          CA::Render::encode_delete_object(v16, (v8 + CA::Render::_render_id_slide), v8[4]);
          CAImageQueueCommit::~CAImageQueueCommit(v15);
        }
      }
    }

    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v8 + 16))(v8, v6);
    }
  }
}

void CAImageQueueBuffer::finalize(CAImageQueueBuffer *this)
{
  v1 = this - 8;
  (**this)(this);

  free(v1);
}

void CAImageQueueBuffer::~CAImageQueueBuffer(CAImageQueueBuffer *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF200768;
  v3 = *(this + 3);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --CA::Render::Object::_instance_counts[0];
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  CAImageQueueBuffer::~CAImageQueueBuffer(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void CA::Render::sync_req_timeout(os_unfair_lock_s *this, double a2, void *a3)
{
  os_unfair_lock_lock(this + 13);
  CA::Render::Context::check_sync_reqs(this, a2);
  os_unfair_lock_unlock(this + 13);
  if (atomic_fetch_add(&this[2], 0xFFFFFFFF) == 1)
  {
    v5 = *(*&this->_os_unfair_lock_opaque + 16);

    v5(this);
  }
}

_DWORD *CA::Render::set_rect_vector_property(CA::Render *this, CA::Render::Vector *a2, int *a3, const unsigned int *a4, unint64_t a5, double *a6, const double *a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v7 = 0uLL;
    _Q1 = 0uLL;
    if (*(this + 4) >= 4u)
    {
      v7 = *(this + 24);
      _Q1 = vsubq_f64(*(this + 40), v7);
    }
  }

  else
  {
    __asm { FMOV            V1.2D, #1.0 }

    v7 = 0uLL;
  }

  v16 = v7;
  v17 = _Q1;
  CA::Render::set_rect_property(v16.f64, a2, a3, a4, a5, a6, a7);
  v14 = v17.f64[0];
  if (v17.f64[0] >= v17.f64[1])
  {
    v14 = v17.f64[1];
  }

  if (v14 <= 0.0)
  {
    return 0;
  }

  v18[0] = v16;
  v18[1] = vaddq_f64(v17, v16);
  return CA::Render::Vector::new_vector(4, v18, v13);
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_i64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_i64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_i64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

atomic_uint *CA::Render::Layer::set_affine_matrix(atomic_uint *result, int a2, unint64_t a3, float64x2_t *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 >= 6)
  {
    v6 = CA::Render::Layer::ensure_ext(result);
    v8 = v6;
    v10 = *a4;
    v9 = a4[1];
    v11 = a4[2];
    if (a2)
    {
      v12 = v6[4];
      if (v12)
      {
        v13 = *(v12 + 16);
        v14 = (v12 + 24);
        v15 = (v12 + 40);
        v16 = (v12 + 56);
        v17 = v13 >= 6;
        if (v13 < 6)
        {
          v16 = (MEMORY[0x1E695EFD0] + 32);
        }

        v18 = (MEMORY[0x1E695EFD0] + 16);
        if (v17)
        {
          v18 = v15;
        }

        if (!v17)
        {
          v14 = MEMORY[0x1E695EFD0];
        }

        v11 = vmlaq_laneq_f64(vmlaq_n_f64(*v16, *v14, v11.f64[0]), *v18, v11, 1);
        v9 = vmlaq_laneq_f64(vmulq_n_f64(*v14, v9.f64[0]), *v18, v9, 1);
        v10 = vmlaq_laneq_f64(vmulq_n_f64(*v14, v10.f64[0]), *v18, v10, 1);
      }
    }

    v20[0] = v10;
    v20[1] = v9;
    v20[2] = v11;
    v19 = CA::Render::Vector::new_vector(6, v20, v7);
    result = v8[4];
    v8[4] = v19;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        return (*(*result + 16))(result);
      }
    }
  }

  return result;
}

uint64_t _CreateDisplayPowerAssertion(int a1, const audit_token_t *a2, mach_port_name_t a3, int a4, unsigned __int8 a5, CA::Render::Server *this, audit_token_t *a7)
{
  v11 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v13 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v14) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v15) & 0x10000) != 0)
  {
    v17[3] = a4;
    v17[0] = a1;
    v17[1] = v11;
    v17[2] = a3;
    v18 = a5;
    CA::Render::post_notification(0x43u, 0, v17, 0);
    v13 = 0;
    if ((v18 & 0x100) == 0)
    {
      if (a3)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], a3);
      }

      return 5;
    }
  }

  return v13;
}

uint64_t _XCreateDisplayPowerAssertion(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, audit_token_t *a7)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 60)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 60) && *(result + 64) > 0x1Fu)
      {
        v10 = *(result + 48);
        v9 = *(result + 52);
        v11 = *(result + 28);
        v12 = *(result + 56);
        v13 = *(result + 96);
        v14[0] = *(result + 80);
        v14[1] = v13;
        result = _CreateDisplayPowerAssertion(v10, v9, v11, v12, 0, v14, a7);
        *(a2 + 32) = result;
        return result;
      }

      v8 = -309;
    }

    else
    {
      v8 = -300;
    }
  }

  else
  {
    v8 = -304;
  }

  *(a2 + 32) = v8;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void CA::WindowServer::IOMFBDisplay::create_power_assertion(CA::WindowServer::IOMFBDisplay *this, CA::Render::Object *a2, char *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*a3 == *(a2 + 6) && (*(a3 + 2) + 1) >= 2)
  {
    if (x_log_get_display_state(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
    }

    v6 = x_log_get_display_state(void)::log;
    if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 6);
      v8 = *(a3 + 1);
      v9 = *(a3 + 2);
      v10 = *(a3 + 3);
      v37[0] = 67109888;
      v37[1] = v7;
      v38 = 1024;
      v39 = v8;
      v40 = 1024;
      v41 = v9;
      v42 = 1024;
      v43 = v10;
      _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "Creating power assertion for display=%u pid=%i port=%u reason=%i", v37, 0x1Au);
    }

    v11 = a2 + 26808;
    os_unfair_lock_lock(a2 + 7192);
    v12 = *(a3 + 4);
    v13 = *(a3 + 3);
    v14 = mach_absolute_time();
    v15 = CATimeWithHostTime(v14);
    v37[0] = 0;
    CA::Render::Server::add_dead_name_watch(*(a3 + 2), v37, CA::WindowServer::handle_power_assertion_dead_name, v16);
    v17 = *(a2 + 3598);
    v18 = *(a2 + 3597);
    v19 = &v17[-v18];
    v20 = 0xAAAAAAAAAAAAAAABLL * (&v17[-v18] >> 3) + 1;
    v21 = *(a2 + 3600);
    if (v21 < v20)
    {
      v22 = *(a2 + 3599);
      v23 = (v21 + 1) | ((v21 + 1) >> 1) | (((v21 + 1) | ((v21 + 1) >> 1)) >> 2);
      v24 = v23 | (v23 >> 4) | ((v23 | (v23 >> 4)) >> 8);
      v25 = v24 | (v24 >> 16) | ((v24 | (v24 >> 16)) >> 32);
      if (v25 + 1 > v20)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = v20;
      }

      v27 = malloc_type_malloc(24 * v26, 0x10000401E56706BuLL);
      v28 = v27;
      v29 = *(a2 + 3597);
      v30 = *(a2 + 3598);
      if (v29 != v30)
      {
        v31 = v27;
        do
        {
          v32 = *v29;
          v31[2] = *(v29 + 2);
          *v31 = v32;
          v31 += 3;
          v29 = (v29 + 24);
        }

        while (v29 != v30);
      }

      if (v18 != v22)
      {
        free(*(a2 + 3597));
      }

      *(a2 + 3597) = v28;
      v17 = &v19[v28];
      *(a2 + 3598) = &v19[v28];
      *(a2 + 3600) = v26;
    }

    *v17 = v12;
    *(v17 + 1) = v13;
    *(v17 + 2) = v15;
    v33 = *(a2 + 3598) + 24;
    *(a2 + 3598) = v33;
    if (v33 - *(a2 + 3597) == 24 || a3[16] == 1)
    {
      *(a2 + 7226) = 1;
      v34 = a3[16];
      os_unfair_lock_lock(a2 + 189);
      CA::WindowServer::IOMFBDisplay::update_power_state_locked(a2, v34);
      os_unfair_lock_unlock(a2 + 189);
    }

    if (v13 == 3)
    {
      v36 = *v11;
      if (v36 == 255)
      {
        __assert_rtn("create_power_assertion", "windowserver-iomfb-display.cpp", 20983, "d->_sil_power_assertion_count < 255");
      }

      *v11 = v36 + 1;
    }

    else if (v13 == 1)
    {
      v35 = mach_absolute_time();
      *&CATailspinMinimumTimestamp = CATimeWithHostTime(v35) + 10.0;
    }

    a3[17] = 1;
    os_unfair_lock_unlock(a2 + 7192);
  }
}

uint64_t CA::Render::Server::add_dead_name_watch(CA::Render::Server *this, mach_port_t *a2, unsigned int *a3, BOOL (*a4)(unsigned int))
{
  v6 = this;
  os_unfair_lock_lock(&CA::Render::Server::_dead_name_watch_list_lock);
  CA::Render::Server::dead_name_watch_list(v7);
  if (!*(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1))
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(*(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 8));
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (*(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1) <= v6)
    {
      v9 = v6 % DWORD2(CA::Render::Server::dead_name_watch_list(void)::watch_list);
    }
  }

  else
  {
    v9 = (DWORD2(CA::Render::Server::dead_name_watch_list(void)::watch_list) - 1) & v6;
  }

  v10 = *(CA::Render::Server::dead_name_watch_list(void)::watch_list + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1))
      {
        v12 %= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1);
      }
    }

    else
    {
      v12 &= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1) - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (*(v11 + 4) != v6)
  {
    goto LABEL_17;
  }

  v11[3] = a3;
  os_unfair_lock_unlock(&CA::Render::Server::_dead_name_watch_list_lock);
  v13 = *MEMORY[0x1E69E9A60];
  v15 = CA::Render::Server::notify_port(v14);

  return mach_port_request_notification(v13, v6, 72, 0, v15, 0x15u, a2);
}

void CA::Render::Server::dead_name_watch_list(CA::Render::Server *this)
{
  {
    CA::Render::Server::dead_name_watch_list(void)::watch_list = 0u;
    *&qword_1EA84F998 = 0u;
    dword_1EA84F9A8 = 1065353216;
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_fastest_display(CA::WindowServer::IOMFBDisplay *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(&v10, 0, sizeof(v10));
  pthread_mutex_init(&v10, 0);
  v11 = 0;
  CA::Render::post_notification(0x3Au, 0, &v10, 0);
  v2 = atomic_exchange(&CA::WindowServer::IOMFBDisplay::_fastest_display_id, v11);
  if (v2 != v11)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v3 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109376;
      v7[1] = v11;
      v8 = 1024;
      v9 = HIDWORD(v11);
      _os_log_debug_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEBUG, "AGX vsync hints will track display %u with %u Hz refresh rate\n", v7, 0xEu);
    }
  }

  v4 = atomic_load((*(this + 96) + 4));
  if ((v4 || (v5 = atomic_load((*(this + 96) + 5))) != 0) && v11 == *(this + 6))
  {
    atomic_store(6u, CA::WindowServer::IOMFBDisplay::_latching_vsync);
  }

  return pthread_mutex_destroy(&v10);
}

void CA::WindowServer::IOMFBServer::post_power_notification(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, unsigned __int8 *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a3 == *(*(a2 + 12) + 24))
  {
    v5 = a3[4];
    v6 = a3[6];
    if (*(a2 + 33))
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v7 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a2 + 12) + 24);
        v9 = "post";
        if (v5)
        {
          v9 = "pre";
        }

        v11[0] = 67109634;
        v11[1] = v8;
        v12 = 1024;
        v13 = v6;
        v14 = 2080;
        v15 = v9;
        _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "Display %u posting power %d %s-notification ", v11, 0x18u);
      }

      (*(*(a2 + 33) + 16))();
    }

    if ((v5 & 1) == 0)
    {
      v10 = *(a2 + 30);
      if (v10)
      {
        (*(v10 + 16))(v10, v6);
      }
    }
  }
}

void CA::IOMobileFramebuffer::set_power_state(CA::IOMobileFramebuffer *this)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x2000000000;
    v2 = 0;
    BMMonitorBlockExecutionWithSignature();
    _Block_object_dispose(v1, 8);
  }

  else
  {

    IOMobileFramebufferRequestPowerChange();
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_power_state_locked(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = this + 28672;
  v5 = *(this + 96);
  v6 = (v5 + 4);
  v7 = (v5 + 5);
  if (*(this + 7226))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(this + 28908);
  }

  atomic_load(v6);
  atomic_load(v7);
  kdebug_trace();
  if (((*(*this + 680))(this) & 1) == 0)
  {
    if (x_log_get_display_state(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
    }

    v9 = x_log_get_display_state(void)::log;
    if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(this + 6);
      v11 = atomic_load(v6);
      v12 = atomic_load(v7);
      v13 = v4[236];
      v14 = *(v4 + 58) != 0;
      *buf = 67110656;
      *&buf[4] = v10;
      LOWORD(v49) = 1024;
      *(&v49 + 2) = v11;
      HIWORD(v49) = 1024;
      *v50 = v12;
      *&v50[4] = 1024;
      *&v50[6] = v8;
      v51 = 1024;
      v52 = a2;
      v53 = 1024;
      v54 = v13;
      v55 = 1024;
      v56 = v14;
      _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "IOMFBDisplay::update_power_state display_id=%u current_power_state=%i target_power_state=%i new_target_power_state=%i sync=%i raw_power_state=%i power_assertions=%i", buf, 0x2Cu);
    }
  }

  *buf = this;
  v49 = v6;
  *v50 = v7;
  v15 = atomic_load(v7);
  if (v15 == v8)
  {
    if (!a2)
    {
      return kdebug_trace();
    }

    v16 = atomic_load(v6);
    if (v16 == v8)
    {
      return kdebug_trace();
    }

    goto LABEL_55;
  }

  CA::WindowServer::IOMFBDisplay::update_fastest_display(this);
  atomic_store(v8, v7);
  v17 = atomic_load(v7);
  os_unfair_lock_lock(this + 6576);
  CA::WindowServer::IOMFBDisplay::initialize_timings(this);
  v18 = *(this + 3290);
  if (v18)
  {
    atomic_store(v17 == 1, (v18 + 1));
  }

  os_unfair_lock_unlock(this + 6576);
  v43 = 0;
  v42 = 0x100000000;
  LODWORD(v42) = *(this + 6);
  IOMobileFramebufferGetDigitalOutState();
  HIWORD(v42) = v17 == 1;
  CA::Render::post_notification(0x35u, 0, &v42, 0);
  v19 = *(this + 3220);
  if (!v19)
  {
    goto LABEL_25;
  }

  if (*v19)
  {
    if (v17 == 1)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v20 = sil_mgr_instance(0, 0xFFFFFFFFLL);
  *v19 = v20;
  if (v20 && v17 != 1)
  {
LABEL_21:
    v21 = (this + 26804);
    os_unfair_lock_lock(this + 6701);
    IOMobileFramebufferSwapSetIndicatorBrightness();
    CA::WindowServer::SILMgr::set_power(*(this + 3220), 0, 1);
    CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(this + 25760, 1);
    CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(this);
LABEL_29:
    os_unfair_lock_unlock(v21);
    goto LABEL_30;
  }

  v22 = *(this + 3220);
  if (v22)
  {
    if (*v22)
    {
      goto LABEL_30;
    }

    v23 = sil_mgr_instance(0, 0xFFFFFFFFLL);
    *v22 = v23;
    v24 = v23 != 0;
  }

  else
  {
LABEL_25:
    v24 = 0;
  }

  if (!v24 && v17 == 1)
  {
    v21 = (this + 26804);
    os_unfair_lock_lock(this + 6701);
    CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(this + 25760, 0);
    goto LABEL_29;
  }

LABEL_30:
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v25 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(this + 6);
    *v44 = 67109376;
    v45 = v26;
    v46 = 1024;
    v47 = v17 == 1;
    _os_log_impl(&dword_183AA6000, v25, OS_LOG_TYPE_DEFAULT, "Display %u set power state %d", v44, 0xEu);
  }

  CA::IOMobileFramebuffer::set_power_state((this + 25696));
  if (atomic_load(v7))
  {
    *(this + 3416) = 0;
    v28 = (*(this + 336) >> 10) & 7;
    if (v28 == 1)
    {
      (*(*this + 824))(this, 1);
    }

    else if (!v28 && *(this + 3341) >= 2uLL)
    {
      current_iomfb_mode = CA::WindowServer::IOMFBDisplay::fetch_current_iomfb_mode(this);
      if (!current_iomfb_mode || (v30 = vshrn_n_s64(current_iomfb_mode, 0x1DuLL), v31.i64[0] = v30.i32[0] & 0x1FFFFFF, v31.i64[1] = v30.i32[1] & 0x1FFFFFF, v32 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v31), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), current_iomfb_mode), (vmovn_s64(vceqq_s64(v32, vdupq_laneq_s64(v32, 1))).u8[0] & 1) != 0))
      {
        current_iomfb_mode = *(this + 83);
      }

      if (*(this + 3415) != current_iomfb_mode && (v33.i64[0] = *(this + 3415), v33.i64[1] = current_iomfb_mode, v34 = vshrn_n_s64(v33, 0x1DuLL), v35.i64[0] = v34.i32[0] & 0x1FFFFFF, v35.i64[1] = v34.i32[1] & 0x1FFFFFF, v36 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v35), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v33), (vmovn_s64(vceqq_s64(v36, vdupq_laneq_s64(v36, 1))).u8[0] & 1) == 0) || v4[904] == 1)
      {
        *(this + 3415) = current_iomfb_mode;
        pthread_mutex_lock(this + 9);
        CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(this, 4);
        pthread_mutex_unlock(this + 9);
        CA::WindowServer::IOMFBDisplay::reset_timings(this);
      }
    }
  }

  else
  {
    v37 = atomic_load(v7);
    atomic_store(v37, v6);
    v4[855] = 0;
    if (v4[912] == 1)
    {
      *(v4 + 913) = 0;
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v38 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&dword_183AA6000, v38, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: reset", v44, 2u);
      }
    }

    CA::WindowServer::IOMFBDisplay::collect_frame_info(&v41, this, 0);
    std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](&v41, 0);
  }

  CA::WindowServer::IOMFBDisplay::set_timings_enabled(this, v17 == 1);
  if (v17 == 1)
  {
    notify_post("com.apple.CoreAnimation.CAWindowServer.DisplayPower");
  }

  BYTE4(v42) = 0;
  CA::Render::post_notification(0x35u, 0, &v42, 0);
  CA::WindowServer::IOMFBDisplay::set_needs_icc_reload(this);
  CA::WindowServer::IOMFBDisplay::update_fastest_display(this);
  if (a2)
  {
LABEL_55:
    v39 = atomic_load(v7);
    if (v39 == 1)
    {
      CA::WindowServer::IOMFBDisplay::update_power_state_locked(BOOL)::$_0::operator()(buf);
    }
  }

  return kdebug_trace();
}

void CA::WindowServer::IOMFBDisplay::find_fastest_display(CA::WindowServer::IOMFBDisplay *this, CA::Render::Object *a2, pthread_mutex_t *a3, void *a4)
{
  v6 = atomic_load((*(a2 + 96) + 4));
  if (v6 || (v7 = atomic_load((*(a2 + 96) + 5))) != 0)
  {
    v8 = 1.0 / (*(*a2 + 760))(a2);
    v9 = vcvtas_u32_f32(v8);
    pthread_mutex_lock(a3);
    sig_high = HIDWORD(a3[1].__sig);
    if (sig_high <= v9 && (sig_high != v9 || (*(a2 + 29495) & 1) != 0 || (*(a2 + 336) & 0x1C00) == 0x1000))
    {
      LODWORD(a3[1].__sig) = *(a2 + 6);
      HIDWORD(a3[1].__sig) = v9;
    }

    pthread_mutex_unlock(a3);
  }
}

uint64_t ___ZN2CA19IOMobileFramebuffer15set_power_stateEb_block_invoke(uint64_t a1)
{
  result = IOMobileFramebufferRequestPowerChange();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::fetch_current_iomfb_mode(CA::WindowServer::IOMFBDisplay *this)
{
  v12 = *MEMORY[0x1E69E9840];
  DigitalOutMode = IOMobileFramebufferGetDigitalOutMode();
  if (DigitalOutMode)
  {
    v3 = DigitalOutMode;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 6);
      *buf = 67109376;
      *&buf[4] = v5;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Display %d error 0x%x fetching current digital mode", buf, 0xEu);
    }

    return 0;
  }

  v6 = (this + 27320);
  *buf = this + 27320;
  if (!*(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *(this + 3415)) + 6))
  {
    *buf = this + 27320;
    if (!*(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *v6) + 7))
    {
      return *v6;
    }
  }

  v8 = *(this + 3340);
  if (!v8)
  {
    return 0;
  }

  while (*(v8 + 6) || *(v8 + 7))
  {
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  return v8[2];
}

uint64_t CA::Display::DisplayLink::power_changed(CA::Display::DisplayLink *this)
{
  pthread_mutex_lock((this + 56));
  if (*(this + 36) == (*(this + 16) - *(this + 15)) >> 3)
  {
    *(this + 37) = 0;
  }

  else if ((CA::Display::DisplayTimingsControl::power_state((*(this + 1) + 464)) & 1) != 0 || (*(*(this + 1) + 768) & 0x400) != 0)
  {
    CA::Display::DisplayLink::start_timer_locked(this);
    CA::Display::DisplayLink::set_display_active_locked(this, 1);
  }

  return pthread_mutex_unlock((this + 56));
}

void CA::WindowServer::IOMFBDisplay::set_needs_icc_reload(CA::WindowServer::IOMFBDisplay *this)
{
  if ((*(*this + 1888))(this))
  {
    v2 = 0;
    *(this + 29561) = (*(this + 226) & 0x200) != 0;
    *(this + 14781) = 257;
    *(this + 6891) = -1;
    v3 = this + 27512;
    do
    {
      v4 = *&v3[v2];
      if (v4)
      {
        CFRelease(v4);
        *&v3[v2] = 0;
      }

      v2 += 8;
    }

    while (v2 != 32);
  }
}

void ___ZN2CA12WindowServer6Server14timer_callbackEdPv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = mach_absolute_time();
  CATimeWithHostTime(v2);

  CA::WindowServer::Server::render_for_time(v1);
}

void CA::WindowServer::IOMFBServer::remove_power_log_timer(CA::WindowServer::IOMFBServer *this)
{
  v1 = *(this + 140);
  if (v1)
  {
    CFRunLoopRemoveTimer(*(this + 135), v1, *MEMORY[0x1E695E8E0]);
    CFRelease(*(this + 140));
    *(this + 140) = 0;
  }
}

uint64_t CA::WindowServer::AccelServer::release_resources(uint64_t this)
{
  v1 = *(this + 1464);
  if (v1)
  {
    return (*(**v1 + 272))(*v1, 0);
  }

  return this;
}

uint64_t CA::OGL::Context::purge(os_unfair_lock_s *this, char a2)
{
  os_unfair_lock_lock(&CA::Render::BackdropGroup::_list_lock);
  v4 = CA::Render::BackdropGroup::_list;
  v5 = qword_1EA84E8E0;
  if (CA::Render::BackdropGroup::_list == qword_1EA84E8E0)
  {
    os_unfair_lock_unlock(&CA::Render::BackdropGroup::_list_lock);
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      if (*(*v4 + 8))
      {
        os_unfair_lock_lock((v7 + 40));
        v8 = *(v7 + 48);
        if (v8 && *(v8 + 8) == this)
        {
          v6 = x_list_prepend(v6, v8);
          *(v7 + 48) = 0;
        }

        os_unfair_lock_unlock((v7 + 40));
      }

      v4 += 8;
    }

    while (v4 != v5);
    os_unfair_lock_unlock(&CA::Render::BackdropGroup::_list_lock);
    if (v6)
    {
      v9 = v6;
      do
      {
        if (*v9)
        {
          (*(**v9 + 8))(*v9);
        }

        v9 = v9[1];
      }

      while (v9);
      do
      {
        v10 = v6[1];
        free(v6);
        v6 = v10;
      }

      while (v10);
    }
  }

  os_unfair_lock_lock(this + 178);
  for (i = *&this[184]._os_unfair_lock_opaque; i; i = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(&this[180]._os_unfair_lock_opaque, i))
  {
    CA::OGL::Context::prepend_deleted_image(this, i[4]);
  }

  os_unfair_lock_unlock(this + 178);
  result = (*(*&this->_os_unfair_lock_opaque + 264))(this, 1);
  if (a2)
  {

    return CA::OGL::Context::update_color_program_cache(this);
  }

  return result;
}

void CA::WindowServer::Server::timer_callback(CA::WindowServer::Server *this, double a2, void *a3)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 424))(this, a3, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E695E8E0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZN2CA12WindowServer6Server14timer_callbackEdPv_block_invoke;
    v8[3] = &__block_descriptor_tmp_40;
    v8[4] = this;
    CFRunLoopPerformBlock(v4, v6, v8);
    CFRunLoopWakeUp(v5);
  }

  else
  {
    v7 = mach_absolute_time();
    CATimeWithHostTime(v7);

    CA::WindowServer::Server::render_for_time(this);
  }
}

void CA::WindowServer::IOMFBServer::remove_vsync_source(CA::WindowServer::IOMFBServer *this)
{
  if ((*(this + 1446) & 2) != 0)
  {
    v3 = *(this + 137);
    if (!v3)
    {
      return;
    }

    v2 = this + 1096;
    if (*(*(this + 12) + 25696))
    {
      CA::WindowServer::IOMFBServer::set_vsync_disabled(this);
      v3 = *(this + 137);
    }

    CFRunLoopRemoveSource(*(this + 135), v3, *MEMORY[0x1E695E8E0]);
  }

  else
  {
    if (!*(this + 139))
    {
      return;
    }

    v2 = this + 1112;
    CA::WindowServer::IOMFBServer::set_vsync_disabled(this);
    CADisplayTimerInvalidate(*(this + 139));
    CFRelease(*(this + 139));
  }

  *v2 = 0;
}

void CA::WindowServer::IOMFBDisplay::post_power_log(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = mach_absolute_time();
  v3 = 0;
  v4 = this + 25576;
  while (!*&v4[v3])
  {
    v3 += 4;
    if (v3 == 40)
    {
      return;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CA_CFDictionarySetLongLong(Mutable, @"mach_absolute_time", v2);
  for (i = 0; i != 10; ++i)
  {
    CA_CFDictionarySetInt(Mutable, CA::WindowServer::power_log_dr_keys[i], *&v4[4 * i]);
    *&v4[4 * i] = 0;
  }

  PLLogTimeSensitiveRegisteredEvent();

  CFRelease(Mutable);
}

uint64_t CA::WindowServer::Server::complete_display_state_transition(os_unfair_lock_s *this, int a2)
{
  if (a2 != 1)
  {
    CA::WindowServer::Server::set_needs_global_light(this, 0);
  }

  v3 = *(**&this[24]._os_unfair_lock_opaque + 224);

  return v3();
}

uint64_t CA::OGL::MetalContext::purge(CA::OGL::MetalContext *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    CA::OGL::MetalContext::purge_shaders(this);
    os_unfair_lock_lock(this + 850);
    v4 = *(this + 426);
    if (v4)
    {
      x_hash_table_remove_all(v4);
    }

    os_unfair_lock_unlock(this + 850);

    *(this + 486) = 0;
    *(this + 487) = 0;
  }

  return CA::OGL::Context::purge(this, v2);
}

uint64_t CA::WindowServer::Server::update_delay(CA::WindowServer::Server *this, float *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 990057071;
  result = CA::WindowServer::Display::benchmark_mode(&v4, a2);
  if ((result & 1) == 0)
  {
    return (*(**(this + 12) + 760))(*(this + 12));
  }

  return result;
}

uint64_t Transition::begin(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 10);
  v8 = *&a1[14]._os_unfair_lock_opaque;
  if (v8)
  {
    v9 = *&a1[12]._os_unfair_lock_opaque;
    os_unfair_lock_opaque_low = LOBYTE(a1[16]._os_unfair_lock_opaque);
    *&a1[14]._os_unfair_lock_opaque = 0;
  }

  else
  {
    os_unfair_lock_opaque_low = 0;
    v9 = 0;
  }

  *&a1[12]._os_unfair_lock_opaque = a3;
  *&a1[14]._os_unfair_lock_opaque = _Block_copy(a4);
  v11 = LOBYTE(a1[16]._os_unfair_lock_opaque) + 1;
  LOBYTE(a1[16]._os_unfair_lock_opaque) = v11;
  os_unfair_lock_unlock(a1 + 10);
  if (v8)
  {
    v23 = a3;
    if (x_log_get_display_state(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
    }

    v12 = x_log_get_display_state(void)::log;
    if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a2;
      v14 = *&a1[2]._os_unfair_lock_opaque;
      v15 = (*&a1[4]._os_unfair_lock_opaque)(v9);
      v16._os_unfair_lock_opaque = a1->_os_unfair_lock_opaque;
      *buf = 136315906;
      v25 = v14;
      a2 = v13;
      v26 = 2080;
      v27 = v15;
      v28 = 1024;
      os_unfair_lock_opaque = v16._os_unfair_lock_opaque;
      v30 = 1024;
      v31 = os_unfair_lock_opaque_low;
      _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "CADisplayStateControl %s=%s display_id=%u seed=%u interrupted", buf, 0x22u);
    }

    v8[2](v8, a2, 3);
    a3 = v23;
    _Block_release(v8);
  }

  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v17 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *&a1[2]._os_unfair_lock_opaque;
    v19 = (*&a1[4]._os_unfair_lock_opaque)(a3);
    v20._os_unfair_lock_opaque = a1->_os_unfair_lock_opaque;
    *buf = 136316162;
    v25 = v18;
    v26 = 2080;
    v27 = v19;
    v28 = 1024;
    os_unfair_lock_opaque = v20._os_unfair_lock_opaque;
    v30 = 1024;
    v31 = v11;
    v32 = 2048;
    v33 = a4;
    _os_log_impl(&dword_183AA6000, v17, OS_LOG_TYPE_DEFAULT, "CADisplayStateControl %s=%s, display_id=%u, seed=%u, completion=%p", buf, 0x2Cu);
  }

  if (a4)
  {
    v21 = a1[9]._os_unfair_lock_opaque;
  }

  else
  {
    v21 = 0;
  }

  return (*&a1[6]._os_unfair_lock_opaque)(a1[8]._os_unfair_lock_opaque, v21, a1->_os_unfair_lock_opaque, a3, v11);
}

uint64_t cadisplay_state_to_string(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = @"unknown";
  }

  else
  {
    v1 = off_1E6DF6248[a1];
  }

  return [(__CFString *)v1 cStringUsingEncoding:4];
}

uint64_t _CASSetDisplayState(int a1, int a2, int a3, char a4, char a5)
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
  *&msg[20] = 0x100009D58;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 1, 0x3Cu, 0, 0, 0, 0);
}

uint64_t CASSetDisplayState(mach_port_name_t a1, const audit_token_t *a2, unsigned int a3, uint64_t a4, CA::Render::Server *this)
{
  v8 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v10 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(this, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v11) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(this, v12) & 0x10000) != 0)
  {
    v15[1] = a1;
    v15[0] = v8;
    v16 = a3;
    BYTE1(v16) = a4;
    CA::Render::post_notification(0x41u, 0, v15, 0);
    if ((v16 & 0x10000) == 0)
    {
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v13 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v18 = v8;
        _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "Failed to find display %u to set display state.", buf, 8u);
        if (!a1)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (a1)
      {
LABEL_9:
        CADisplayStateDidChange(v8, a3, a4, 5u);
        mach_port_deallocate(*MEMORY[0x1E69E9A60], a1);
      }
    }

    return 0;
  }

  return v10;
}

uint64_t _XSetDisplayState(uint64_t result, uint64_t a2)
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
        result = CASSetDisplayState(v4, v5, v6, v7, v9);
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

uint64_t CA::WindowServer::Server::set_display_state(uint64_t a1, uint64_t a2, int a3, mach_port_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 24));
  v8 = *(a1 + 96);
  os_unfair_lock_lock(v8 + 189);
  v9 = *(a1 + 96);
  v10 = *(v9 + 768);
  v11 = atomic_load(v10);
  CA::WindowServer::Display::DisplayStateTransitionReply::_send((v9 + 776), "flush", v11, 3);
  atomic_load(v10);
  atomic_load(v10 + 1);
  kdebug_trace();
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v12 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 96) + 24);
    v14 = atomic_load(v10);
    v15 = v14 - 1;
    if (v15 > 0xAu)
    {
      v16 = "off";
    }

    else
    {
      v16 = off_1E6DED748[v15];
    }

    v17 = atomic_load(v10 + 1);
    v18 = v17 - 1;
    if (v18 > 0xAu)
    {
      v19 = "off";
    }

    else
    {
      v19 = off_1E6DED748[v18];
    }

    if ((a2 - 1) > 0xA)
    {
      v20 = "off";
    }

    else
    {
      v20 = off_1E6DED748[(a2 - 1)];
    }

    LODWORD(buf[0]) = 67110146;
    HIDWORD(buf[0]) = v13;
    LOWORD(buf[1]) = 1024;
    *(&buf[1] + 2) = a3;
    HIWORD(buf[1]) = 2080;
    buf[2] = v16;
    LOWORD(buf[3]) = 2080;
    *(&buf[3] + 2) = v19;
    WORD1(buf[4]) = 2080;
    *(&buf[4] + 4) = v20;
    _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "Server::set_display_state display_id=%u seed=%u current_state=%s target_state=%s new_target_state=%s", buf, 0x2Cu);
  }

  if (a2 > 0xA)
  {
    goto LABEL_15;
  }

  v22 = *(a1 + 96);
  v23 = *(v22 + 768);
  v24 = a2;
  if (a2 < 5)
  {
    goto LABEL_26;
  }

  if ((a2 - 5) > 1u)
  {
    if ((a2 - 7) <= 1u)
    {
      if ((*(v22 + 640) & 0x40) == 0)
      {
        goto LABEL_15;
      }

      if ((a2 == 7) == (*(*v22 + 288))(v22))
      {
        goto LABEL_41;
      }

      (*(**(a1 + 96) + 296))(*(a1 + 96), a2 == 7);
      (*(**(a1 + 96) + 312))();
      v59 = atomic_load(v23 + 1);
      if (a2 != 7 || v59)
      {
        v60 = atomic_load(v23 + 1);
        if (v60 == 2)
        {
          if (a2 == 7)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v67 = atomic_load(v23 + 1);
          v21 = 255;
          if (a2 == 7 || v67 != 3)
          {
            goto LABEL_42;
          }
        }

        v24 = 0;
        goto LABEL_26;
      }

LABEL_118:
      v24 = 2;
      goto LABEL_26;
    }

    if ((*(v22 + 640) & 0x40) == 0)
    {
      goto LABEL_15;
    }

    if ((a2 == 9) == (*(*v22 + 304))(v22))
    {
      goto LABEL_41;
    }

    if (((*(**(a1 + 96) + 288))(*(a1 + 96)) & 1) == 0 && a2 == 9)
    {
      (*(**(a1 + 96) + 296))(*(a1 + 96), 1);
    }

    (*(**(a1 + 96) + 312))(*(a1 + 96), a2 == 9);
    if (atomic_load(v23 + 1))
    {
      v65 = atomic_load(v23 + 1);
      if (a2 == 9 && v65 == 2)
      {
        goto LABEL_105;
      }
    }

    else if (a2 == 9)
    {
LABEL_105:
      v24 = 3;
      goto LABEL_26;
    }

    v66 = atomic_load(v23 + 1);
    v21 = 255;
    if (a2 == 9 || v66 != 3)
    {
      goto LABEL_42;
    }

    goto LABEL_118;
  }

  v25 = atomic_load(v23 + 1);
  v26 = (a2 == 5) ^ (v25 == 1);
  if (v26)
  {
    v24 = a2;
  }

  else
  {
    v24 = 1;
  }

  if (a2 == 5 && v25 == 1)
  {
    if (((*(**(a1 + 96) + 304))(*(a1 + 96)) & 1) == 0)
    {
      if ((*(**(a1 + 96) + 288))(*(a1 + 96)))
      {
        v24 = 2;
      }

      else
      {
        v24 = 0;
      }

      if (v26)
      {
        goto LABEL_41;
      }

      goto LABEL_26;
    }

    v24 = 3;
  }

  if (v26)
  {
LABEL_41:
    v31 = *(a1 + 96);
    v32 = atomic_load(v10);
    (*(*v31 + 2224))(v31, v32);
    v21 = 0;
    goto LABEL_42;
  }

LABEL_26:
  v27 = atomic_load(v23 + 1);
  if (v27 >= 4)
  {
    __assert_rtn("set_display_state_locked", "windowserver-server.cpp", 7269, "target_state < kDisplayStateCount");
  }

  v28 = atomic_load(v23);
  if (v28 == 1)
  {
    if (!*(a1 + 168))
    {
      CA::WindowServer::Server::create_blank_context(a1);
    }

    CA::WindowServer::Server::notify_content_streams(a1, 5);
  }

  else if (v24 == 1)
  {
    if (*(a1 + 168) && ((*(**(a1 + 96) + 504))(*(a1 + 96)) & 1) == 0)
    {
      CA::WindowServer::Server::destroy_blank_context(a1);
    }

    CA::WindowServer::Server::notify_content_streams(a1, 6);
    v29 = 0;
LABEL_39:
    (*(**(a1 + 96) + 2224))(*(a1 + 96), v24);
    goto LABEL_40;
  }

  v29 = (v24 & 0xFE) == 2;
  if ((v24 & 0xFE) == 2 && (*(*(a1 + 96) + 640) & 0x40) == 0)
  {
    goto LABEL_15;
  }

  if ((v24 - 1) <= 1u)
  {
    goto LABEL_39;
  }

LABEL_40:
  v30 = atomic_load(v23 + 1);
  if (v30 == v24)
  {
    goto LABEL_41;
  }

  v45 = atomic_load(v23);
  v46 = *(a1 + 96);
  if (v45 == 1 && (*(v46 + 904) & 0x80) != 0)
  {
    v47 = 0;
    v48 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    memset(buf, 0, sizeof(buf));
    v49 = *(v46 + 25568);
    do
    {
      buf[v47] += v49[v48++];
      if (v48 == CA::WindowServer::Server::record_histograms(void)::bucket_upper_bounds[v47])
      {
        ++v47;
      }
    }

    while (v48 != 241);
    if (MEMORY[0x1EEE86518])
    {
      analytics_send_event_lazy();
      v49 = *(*(a1 + 96) + 25568);
    }

    bzero(v49, 0x788uLL);
    v46 = *(a1 + 96);
  }

  *(v46 + 904) |= 0x2000u;
  buf[0] = 0;
  *&buf[1] = vdupq_n_s64(0x800000uLL);
  (*(*a1 + 176))(a1, buf, 0.0);
  if (v24 > 1)
  {
    if (v29)
    {
      atomic_store(v24, v23 + 1);
      v62 = atomic_load(v23);
      v57 = *(a1 + 96);
      v58 = *v57;
      if (v62 != 1)
      {
        goto LABEL_79;
      }

      if ((*(v58 + 1824))(v57, v50, v51, v52, v53, v54))
      {
        v63 = 1;
      }

      else
      {
        v63 = (*(**(a1 + 96) + 2312))(*(a1 + 96));
      }

      if (v63 | (*(**(a1 + 96) + 2144))(*(a1 + 96)))
      {
        *(*(a1 + 96) + 904) |= 0x10000u;
        *(*(a1 + 96) + 904) |= 0x2000u;
        CA::WindowServer::Server::invalidate(a1, *(*(a1 + 96) + 216));
        buf[0] = 0;
        *&buf[1] = vdupq_n_s64(0x4000000uLL);
        (*(*a1 + 176))(a1, buf, 0.0);
      }

LABEL_114:
      v21 = 255;
      goto LABEL_42;
    }

LABEL_15:
    v21 = 5;
    goto LABEL_42;
  }

  v55 = *(a1 + 168);
  if (v55)
  {
    CA::Render::Context::will_commit(v55);
    v56 = -INFINITY;
    if (!v24)
    {
      v56 = INFINITY;
    }

    CA::Render::Context::order_level(*(a1 + 168), v56);
    CA::Render::Context::did_commit(*(a1 + 168), 1, 0, 1, 0, 0);
  }

  atomic_store(v24, v23 + 1);
  v57 = *(a1 + 96);
  v58 = *v57;
LABEL_79:
  v21 = (*(v58 + 2232))(v57, v50, v51, v52, v53, v54);
  if (!v21)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v33 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *(*(a1 + 96) + 24);
    v35 = atomic_load(v10);
    v36 = v35 - 1;
    if (v36 > 0xAu)
    {
      v37 = "off";
    }

    else
    {
      v37 = off_1E6DED748[v36];
    }

    v38 = atomic_load(v10 + 1);
    v39 = v38 - 1;
    if (v39 > 0xAu)
    {
      v40 = "off";
    }

    else
    {
      v40 = off_1E6DED748[v39];
    }

    if ((v21 + 1) > 6u)
    {
      v41 = "completed";
    }

    else
    {
      v41 = off_1E6DED7B8[(v21 + 1)];
    }

    LODWORD(buf[0]) = 67110146;
    HIDWORD(buf[0]) = v34;
    LOWORD(buf[1]) = 1024;
    *(&buf[1] + 2) = a3;
    HIWORD(buf[1]) = 2080;
    buf[2] = v37;
    LOWORD(buf[3]) = 2080;
    *(&buf[3] + 2) = v40;
    WORD1(buf[4]) = 2080;
    *(&buf[4] + 4) = v41;
    _os_log_impl(&dword_183AA6000, v33, OS_LOG_TYPE_DEFAULT, "Server::set_display_state display_id=%u seed=%u current_state=%s target_state=%s result=%s", buf, 0x2Cu);
  }

  if (a4)
  {
    if (v21 == 255)
    {
      if (*(v9 + 812))
      {
        __assert_rtn("reset", "windowserver-display.cpp", 3603, "!_reply_port");
      }

      *(v9 + 808) = a2;
      *(v9 + 816) = a3;
      *(v9 + 812) = a4;
    }

    else
    {
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v42 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(*(a1 + 96) + 24);
        if ((a2 - 1) > 0xA)
        {
          v44 = "off";
        }

        else
        {
          v44 = off_1E6DED748[(a2 - 1)];
        }

        LODWORD(buf[0]) = 67109378;
        HIDWORD(buf[0]) = v43;
        LOWORD(buf[1]) = 2080;
        *(&buf[1] + 2) = v44;
        _os_log_impl(&dword_183AA6000, v42, OS_LOG_TYPE_DEFAULT, "signal clients display %u state changed to %s", buf, 0x12u);
      }

      _CACDisplayStateDidChange(a4, *(*(a1 + 96) + 24), a2, a3, v21);
      mach_port_deallocate(*MEMORY[0x1E69E9A60], a4);
    }
  }

  kdebug_trace();
  os_unfair_lock_unlock(v8 + 189);
  return pthread_mutex_unlock((a1 + 24));
}

uint64_t CA::WindowServer::Server::set_display_state(CA::WindowServer::Server *this, CA::Render::Object *a2, unsigned __int8 *a3, void *a4)
{
  if (*a3 == *(*(a2 + 12) + 24))
  {
    a3[10] = 1;
    return CA::WindowServer::Server::set_display_state(a2, a3[8], a3[9], *(a3 + 1));
  }

  return result;
}

unsigned int *CA::WindowServer::Display::DisplayStateTransitionReply::_send(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result[9])
  {
    v7 = result;
    if (x_log_get_display_state(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
    }

    v8 = x_log_get_display_state(void)::log;
    if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v7;
      v10 = *(v7 + 1);
      v11 = (*(v7 + 2))(a3);
      v12 = 136315906;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "(%s) signal clients display %u %s changed to %s", &v12, 0x26u);
    }

    (*(v7 + 3))(v7[9], *v7, a3, *(v7 + 40), a4);
    result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v7[9]);
    v7[9] = 0;
  }

  return result;
}

atomic_uint *CA::WindowServer::Server::destroy_blank_context(CA::WindowServer::Server *this)
{
  result = *(this + 21);
  if (result)
  {
    CA::Render::Context::destroy(result);
    result = *(this + 21);
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }
    }

    *(this + 21) = 0;
  }

  return result;
}

void CA::Render::Context::destroy(CA::Render::Context *this)
{
  v63[1] = *MEMORY[0x1E69E9840];
  CA::Render::Context::run_scheduled_dependence_removals(this);
  pthread_mutex_lock((this + 72));
  v2 = *(this + 3);
  if ((v2 & 0x400) == 0)
  {
    *(this + 3) = v2 | 0x400;
    CA::Render::Context::set_layer_id(this, 0);
    pthread_mutex_unlock((this + 72));
    CA::Render::Fence::remove_context(this, 1);
    if (*(this + 56) || *(this + 57))
    {
      os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
      CA::Render::Context::update_backdrop_namespaces_locked(this, 0);
      v3 = *(this + 56);
      if (v3 && v3[11] == this)
      {
        CA::Render::Context::set_visible_locked(this, 0);
        v3[11] = 0;
        v5 = v3[6];
        if (v5)
        {
          if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v5 + 16))(v5);
          }

          v3[6] = 0;
        }

        *(this + 56) = 0;
        v4 = v3[12];
        if (v4)
        {
          v6 = (v4 + 8);
          if (!atomic_fetch_add((v4 + 8), 1u))
          {
            v4 = 0;
            atomic_fetch_add(v6, 0xFFFFFFFF);
          }

          v7 = *(v3[12] + 456);
          x_list_remove(v7, v3);
          *(v3[12] + 456) = v7;
          v3[12] = 0;
        }

        atomic_fetch_add(CA::Render::LayerHost::_seed, 1u);
      }

      else
      {
        v4 = 0;
      }

      v8 = *(this + 57);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v8;
          *(v10 + 96) = 0;
          v11 = *(v10 + 88);
          if (v11)
          {
            CA::Render::Context::set_visible_locked(*(v10 + 88), 0);
            *(v11 + 448) = 0;
            v12 = (v11 + 8);
            if (!atomic_fetch_add((v11 + 8), 1u))
            {
              v11 = 0;
              atomic_fetch_add(v12, 0xFFFFFFFF);
            }

            v9 = x_list_prepend(v9, v11);
            *(v10 + 88) = 0;
            v13 = *(v10 + 48);
            if (v13)
            {
              if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v13 + 16))(v13);
              }

              *(v10 + 48) = 0;
            }

            atomic_fetch_add(CA::Render::LayerHost::_seed, 1u);
          }

          v8 = v8[1];
        }

        while (v8);
        v14 = *(this + 57);
        if (v14)
        {
          do
          {
            v15 = v14[1];
            free(v14);
            v14 = v15;
          }

          while (v15);
        }

        *(this + 57) = 0;
        os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
        if (v9)
        {
          v17 = v9;
          do
          {
            CA::Render::invalidate_context(*v17, v16);
            v18 = *v17;
            if (atomic_fetch_add(*v17 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v18 + 16))(v18);
            }

            v17 = v17[1];
          }

          while (v17);
          do
          {
            v19 = v9[1];
            free(v9);
            v9 = v19;
          }

          while (v19);
        }

        if (!v4)
        {
          goto LABEL_49;
        }

        goto LABEL_41;
      }

      os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
      if (v4)
      {
LABEL_41:
        pthread_mutex_lock((v4 + 72));
        v20 = CA::Render::Context::root_layer_handle(v4);
        if (v20)
        {
          *&v20[13] |= 8uLL;
          CA::Render::Context::invalidate(v4, v20 + 15, v22);
        }

        v23 = CA::Render::Context::copy_dirty_shape(this, v21);
        if (v23)
        {
          v25 = v23;
          CA::Render::Context::invalidate(v4, v23, v24);
          CA::Shape::unref(v25);
          pthread_mutex_lock((this + 72));
          v26 = *(this + 76);
          if (v26)
          {
            CA::Shape::unref(v26);
          }

          *(this + 76) = 1;
          pthread_mutex_unlock((this + 72));
        }

        pthread_mutex_unlock((v4 + 72));
        CA::Render::Context::mark_changed(v4, 0, 0, 0, 0);
        if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 16))(v4);
        }
      }
    }

LABEL_49:
    CA::Render::post_notification(2u, this, 0, 1);
    CA::Render::remove_every_observer(this, v27);
    os_unfair_lock_lock(&CA::Render::Context::_context_lock);
    v28 = x_hash_table_remove(CA::Render::Context::_context_table, *(this + 4));
    v29 = *(this + 21);
    v30 = *(this + 22);
    v31 = v30 - v29;
    if (v30 == v29)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
    }

    else
    {
      if (v31 > 0x1000)
      {
        v32 = malloc_type_malloc(v30 - v29, 0x1D5207CuLL);
        v29 = *(this + 21);
        v30 = *(this + 22);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v28);
        v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v32, v30 - v29);
      }

      if (v29 == v30)
      {
        v34 = 0;
      }

      else
      {
        v35 = 0;
        v36 = v29;
        do
        {
          v37 = *v36;
          v36 += 2;
          v34 = v35 + 1;
          *&v32[8 * v35] = x_hash_table_remove(CA::Render::Context::_slot_table, v37);
          CA::Render::post_notification(0x39u, 0, v29, 0);
          ++v35;
          v29 = v36;
        }

        while (v36 != v30);
      }

      v33 = v31 > 0x1000;
    }

    v38 = *(this + 62);
    v39 = MEMORY[0x1E69E9A60];
    if (v38)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], v38, 1u, -1);
      mach_port_deallocate(*v39, *(this + 62));
      x_hash_table_remove(CA::Render::Context::_port_table, *(this + 62));
      *(this + 62) = 0;
    }

    v41 = (this + 252);
    v40 = *(this + 63);
    if (v40)
    {
      mach_port_destruct(*v39, v40, 0, this + 252);
      x_hash_table_remove(CA::Render::Context::_port_table, *v41);
      *v41 = 0;
    }

    os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
    os_unfair_lock_lock(&CA::Render::Context::_image_queues_lock);
    v42 = *(this + 45);
    v43 = *(this + 46);
    if (v42 != v43)
    {
      v44 = *(this + 45);
      do
      {
        v45 = *v44++;
        *(v45 + 512) = 0;
      }

      while (v44 != v43);
    }

    *(this + 46) = v42;
    os_unfair_lock_unlock(&CA::Render::Context::_image_queues_lock);
    pthread_mutex_lock((this + 72));
    if (v34)
    {
      v47 = v32;
      do
      {
        v48 = *v47;
        if (*v47 && atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v48 + 16))(v48);
        }

        ++v47;
        --v34;
      }

      while (v34);
    }

    CA::Render::Context::ResourceTable::remove_all((this + 136), v46);
    os_unfair_lock_lock(this + 13);
    for (i = *(this + 7); i; i = *(this + 7))
    {
      *(this + 7) = *i;
      mach_port_deallocate(*v39, i[2]);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, i);
    }

    os_unfair_lock_unlock(this + 13);
    os_unfair_lock_lock(this + 178);
    if (*(this + 94))
    {
      v50 = *(this + 93);
      if (v50)
      {
        do
        {
          v51 = *v50;
          operator delete(v50);
          v50 = v51;
        }

        while (v51);
      }

      *(this + 93) = 0;
      v52 = *(this + 92);
      if (v52)
      {
        for (j = 0; j != v52; ++j)
        {
          *(*(this + 91) + 8 * j) = 0;
        }
      }

      *(this + 94) = 0;
    }

    for (k = *(this + 90); k; k = *(this + 90))
    {
      *(this + 90) = *k;
      v55 = k[3];
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }

      v56 = k[1];
      if (v56)
      {
        v57 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v56);
        MEMORY[0x1865EA9A0](v57, 0x10A0C408EF24B1CLL);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, k);
    }

    os_unfair_lock_unlock(this + 178);
    v58 = *(this + 64);
    if (v58)
    {
      mach_port_deallocate(*v39, v58);
      *(this + 64) = 0;
    }

    v59 = *(this + 65);
    if (v59)
    {
      mach_port_deallocate(*v39, v59);
      *(this + 65) = 0;
    }

    v60 = *(this + 66);
    if (v60)
    {
      mach_port_deallocate(*v39, v60);
      *(this + 66) = 0;
    }

    v61 = *(this + 67);
    if (v61)
    {
      mach_port_deallocate(*v39, v61);
      *(this + 67) = 0;
    }

    pthread_mutex_unlock((this + 72));
    if (v33)
    {
      free(v32);
    }

    if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
    {
      v62 = *(*this + 16);

      v62(this);
    }

    return;
  }

  pthread_mutex_unlock((this + 72));
}