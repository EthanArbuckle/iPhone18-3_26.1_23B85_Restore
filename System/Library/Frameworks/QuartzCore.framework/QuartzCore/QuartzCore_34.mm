double CA::OGL::GlassBackgroundFilter::opaque_shape(CA::OGL::GlassBackgroundFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, CA::Rect *a4)
{
  result = 0.0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  return result;
}

void CA::OGL::GlassForegroundFilter::render(float a1, double a2, int32x4_t a3, int32x2_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, float *a10, uint64_t a11)
{
  v86 = *MEMORY[0x1E69E9840];
  v11 = *a9;
  if (*a9)
  {
    v13 = a9[1];
    if (a11 | v13)
    {
      a4.i32[0] = *a10;
      v64 = a10[1];
      v15 = *(a6 + 40);
      v16 = *(*(a8 + 656) + 24);
      v17.f64[0] = *v16;
      v18.f64[0] = v16[1];
      v74 = *a10;
      *a3.i8 = vdiv_f32(vdup_lane_s32(a4, 0), vcvt_f32_s32(*(v11 + 40)));
      v18.f64[1] = v16[5];
      v17.f64[1] = v16[4];
      v71 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v18);
      v19 = vmulq_f32(v71, 0);
      v76 = vzip1q_s32(a3, a3);
      v79 = vextq_s8(v19, v19, 8uLL);
      float_key = CA::Render::KeyValueArray::get_float_key(v15, 403, -150.0);
      v21 = 1.0 / CA::Render::KeyValueArray::get_float_key(v15, 407, 100.0);
      v22 = CA::Render::KeyValueArray::get_float_key(v15, 408, -10.0);
      v68 = CA::Render::KeyValueArray::get_float_key(v15, 316, -15.0);
      v67 = 1.0 / CA::Render::KeyValueArray::get_float_key(v15, 318, 20.0);
      v23 = CA::Render::KeyValueArray::get_float_key(v15, 319, 0.0);
      v24 = CA::Render::KeyValueArray::get_float_key(v15, 317, 0.0);
      v25 = __sincosf_stret(v24);
      v26 = CA::Render::KeyValueArray::get_float_key(v15, 370, -4.5);
      v66 = CA::Render::KeyValueArray::get_float_key(v15, 367, -3.0);
      v65 = CA::Render::KeyValueArray::get_float_key(v15, 369, 0.0);
      v27 = CA::Render::KeyValueArray::get_float_key(v15, 368, 1.0);
      v28 = CA::Render::KeyValueArray::get_float_key(v15, 404, 0.0);
      v29 = __sincosf_stret(v28);
      if (*(a8 + 672) == v11)
      {
        *(*(a8 + 16) + 17) = 42;
      }

      else
      {
        CA::OGL::Context::bind_surface(a8, v11, 0, 0, 0, 0.0);
      }

      v30 = vmlaq_f32(v79, v71, v76);
      v31 = float_key;
      v32 = v21;
      v33 = v22;
      v34 = v68;
      v35 = v67;
      v36 = v23;
      v37 = v26;
      if (a11 && *(a11 + 200))
      {
        *(*(a8 + 16) + 16) = 73;
        *(a8 + 240) = v30;
        *(a8 + 256) = v31;
        *(a8 + 260) = v32;
        *(a8 + 264) = v33;
        *(a8 + 268) = v34;
        *(a8 + 272) = v35;
        *(a8 + 276) = v36;
        *(a8 + 280) = v25.__cosval;
        *(a8 + 284) = v25.__sinval;
        *(a8 + 288) = v37;
        v38 = v66;
        *(a8 + 292) = v38;
        v39 = v65;
        *(a8 + 296) = v39;
        v40 = v27;
        *(a8 + 300) = v40;
        *(a8 + 304) = v29.__cosval;
        *(a8 + 308) = v29.__sinval;
        *(a8 + 312) = 0;
        CA::OGL::emit_sdf_bounds(a8, *(a11 + 200), v11, 0, 0.0, v74, 0.0, 0.0, 0.0);
      }

      else
      {
        *(*(a8 + 16) + 16) = 72;
        v80 = v30;
        v77 = v27;
        v72 = v65;
        v69 = v66;
        v41 = v33;
        v42 = v32;
        CA::OGL::Context::bind_surface(a8, v13, 1u, 1u, 1, 0.0);
        *(a8 + 160) = v80;
        *(a8 + 176) = v31;
        *(a8 + 180) = v42;
        *(a8 + 184) = v41;
        *(a8 + 188) = v34;
        *(a8 + 192) = v35;
        *(a8 + 196) = v36;
        *(a8 + 200) = v25.__cosval;
        *(a8 + 204) = v25.__sinval;
        *(a8 + 208) = v37;
        *(a8 + 212) = v69;
        *(a8 + 216) = v72;
        *(a8 + 220) = v77;
        *(a8 + 224) = v29.__cosval;
        *(a8 + 228) = v29.__sinval;
        *(a8 + 232) = 0;
        v43 = *(v11 + 48);
        v44 = *(v11 + 52);
        v45 = *(v11 + 56);
        v46 = *(v11 + 60);
        v47 = v43;
        v81 = (a1 / v74) * v43;
        v48 = v44;
        v78 = (a1 / v74) * v44;
        v49 = (v45 + v43);
        v50 = (a1 / v74) * v49;
        v73 = (v46 + v44);
        v51 = (a1 / v74) * v73;
        v52 = v64 / v74;
        v70 = *(v13 + 48);
        v75 = *(v13 + 52);
        v85 = 0u;
        v53 = *(*(a8 + 656) + 8);
        v83[0] = a8;
        v83[1] = v53;
        v84 = 0u;
        v83[2] = 0;
        WORD4(v84) = 256;
        CA::OGL::Context::ClippedArray::start(v83);
        v82[0] = 0;
        v82[1] = 0;
        v54 = v45;
        v55 = v46;
        v56 = -(v70 - (v52 * v47));
        v57 = -(v75 - (v52 * v48));
        v58 = -(v70 - (v52 * v49));
        v59 = -(v75 - (v52 * v73));
        while (CA::OGL::Context::ClippedArray::next_rect(v83, v82))
        {
          if (*(a8 + 108))
          {
            v60 = 6;
          }

          else
          {
            v60 = 4;
          }

          if ((*(a8 + 144) + 4) > *(a8 + 152) || (v61 = *(a8 + 128)) != 0 && *(a8 + 120) + v60 > v61)
          {
            *(a8 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(a8);
            *(a8 + 144) = 0;
            *(a8 + 112) = a8 + 1386;
            *(a8 + 120) = xmmword_183E20E50;
          }

          CA::OGL::Context::array_rect(a8, v81, v78, v50, v51);
          v62 = *(a8 + 136) + 48 * *(a8 + 144);
          *(v62 - 176) = 0;
          *(v62 - 128) = v54;
          *(v62 - 124) = 0;
          *(v62 - 80) = v54;
          *(v62 - 76) = v55;
          *(v62 - 32) = 0;
          *(v62 - 168) = v56;
          *(v62 - 164) = v57;
          *(v62 - 120) = v58;
          *(v62 - 116) = v57;
          *(v62 - 72) = v58;
          *(v62 - 68) = v59;
          *(v62 - 28) = v55;
          *(v62 - 24) = v56;
          *(v62 - 20) = v59;
        }

        CA::OGL::Context::unbind_surface(a8, v13, 1);
      }

      if (*(a8 + 672) != v11)
      {
        CA::OGL::Context::unbind_surface(a8, v11, 0);
      }

      *(*(a8 + 16) + 16) = 0;
      *(*(a8 + 16) + 19) = 0;
    }
  }
}

void CA::OGL::GlassForegroundFilter::ROI(CA::OGL::GlassForegroundFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v5 = *(a2 + 5);
  float_key = CA::Render::KeyValueArray::get_float_key(v5, 403, -150.0);
  v7 = CA::Render::KeyValueArray::get_float_key(v5, 316, -15.0);
  v8 = fabsf(float_key);
  v9 = fabsf(v7);
  if (v8 >= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v12 = a4[1].f64[0];
  v11 = a4[1].f64[1];
  if (v12 <= v11)
  {
    v13 = a4[1].f64[1];
  }

  else
  {
    v13 = a4[1].f64[0];
  }

  if (v13 < 1.79769313e308)
  {
    if (v12 >= v11)
    {
      v14 = a4[1].f64[1];
    }

    else
    {
      v14 = a4[1].f64[0];
    }

    if (v14 > 0.0)
    {
      *&v15 = -v10;
      *a4 = vaddq_f64(*a4, vdupq_lane_s64(v15, 0));
      v16 = *&v15 * -2.0;
      v17 = v16 + v12;
      v18 = v16 + v11;
      a4[1].f64[0] = v17;
      a4[1].f64[1] = v18;
      if (v17 <= 0.0 || v18 <= 0.0)
      {
        a4[1].f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }
    }
  }
}

double CA::OGL::GlassForegroundFilter::opaque_shape(CA::OGL::GlassForegroundFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, CA::Rect *a4)
{
  result = 0.0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  return result;
}

void CA::OGL::GlassForegroundFilter::DOD(CA::OGL::GlassForegroundFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v5 = *(a2 + 5);
  float_key = CA::Render::KeyValueArray::get_float_key(v5, 403, -150.0);
  v7 = CA::Render::KeyValueArray::get_float_key(v5, 316, -15.0);
  v8 = fabsf(float_key);
  v9 = fabsf(v7);
  if (v8 >= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v12 = a4[1].f64[0];
  v11 = a4[1].f64[1];
  if (v12 <= v11)
  {
    v13 = a4[1].f64[1];
  }

  else
  {
    v13 = a4[1].f64[0];
  }

  if (v13 < 1.79769313e308)
  {
    if (v12 >= v11)
    {
      v14 = a4[1].f64[1];
    }

    else
    {
      v14 = a4[1].f64[0];
    }

    if (v14 > 0.0)
    {
      *&v15 = -v10;
      *a4 = vaddq_f64(*a4, vdupq_lane_s64(v15, 0));
      v16 = *&v15 * -2.0;
      v17 = v16 + v12;
      v18 = v16 + v11;
      a4[1].f64[0] = v17;
      a4[1].f64[1] = v18;
      if (v17 <= 0.0 || v18 <= 0.0)
      {
        a4[1].f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }
    }
  }
}

uint64_t CA::OGL::SampleMapFilter::render(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t **a5, float *a6, float a7)
{
  v133 = *MEMORY[0x1E69E9840];
  if (*a5)
  {
    v13 = result;
    v14 = *(a2 + 40);
    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = *(v14 + 16);
    if (!v15)
    {
      goto LABEL_11;
    }

    v16 = 0;
    v17 = v14 + 24;
    while (1)
    {
      v18 = *(v17 + 8 * v16);
      if (*(v18 + 16) == 390)
      {
        break;
      }

      if (v15 == ++v16)
      {
        goto LABEL_11;
      }
    }

    if ((v16 & 0x80000000) != 0 || (result = *(v18 + 24)) == 0 || (result = (*(*result + 80))(result), (v19 = result) == 0))
    {
LABEL_11:
      if (!a5[1])
      {
        return result;
      }

      v19 = 0;
    }

    v20 = *(a2 + 40);
    float_key = CA::Render::KeyValueArray::get_float_key(v20, 325, 1.0);
    v23 = 0;
    if (v20)
    {
      v24 = v20[4];
      if (v24)
      {
        v25 = 0;
        while (1)
        {
          v26 = *&v20[2 * v25 + 6];
          if (*(v26 + 16) == 394)
          {
            break;
          }

          if (v24 == ++v25)
          {
            goto LABEL_26;
          }
        }

        if ((v25 & 0x80000000) == 0)
        {
          v27 = *(v26 + 24);
          if (v27)
          {
            if (*(v27 + 12) == 62)
            {
              v28 = *(v27 + 16);
              if (v28)
              {
                if (v28 == 1)
                {
                  v29 = *(v27 + 24);
                  *&v29 = v29;
                  v23 = vdup_lane_s32(*&v29, 0);
                }

                else
                {
                  v23 = vcvt_f32_f64(*(v27 + 24));
                }
              }
            }
          }
        }
      }
    }

LABEL_26:
    v30 = *a6;
    v31 = *(*(a4 + 656) + 24);
    v33.f64[0] = v31->f64[0];
    v32.f64[0] = v31->f64[1];
    v34 = (*a5)[5];
    v32.f64[1] = v31[2].f64[1];
    v33.f64[1] = v31[2].f64[0];
    v108 = v33;
    v110 = v32;
    v35 = *v31;
    v36 = v31[1];
    v37 = v31[2];
    v38 = v31[3];
    v40 = v31[4];
    v39 = v31[5];
    v41 = v31[6];
    v42 = v31[7];
    v122 = v41;
    v123 = v42;
    v44 = *(a3 + 16);
    v43 = *(a3 + 24);
    v45 = *(v43 + 88);
    v46 = *(v43 + 96);
    v47 = vmulq_n_f64(v35, v45);
    v48 = vmulq_n_f64(v36, v45);
    v49 = vmulq_n_f64(v37, v46);
    v50 = vmulq_n_f64(v38, v46);
    v116 = v47;
    v117 = v48;
    v118 = v49;
    v119 = v50;
    v120 = v40;
    v121 = v39;
    if (((*(a4 + 872) & 2) == 0) != (*(v44 + 24) & 1))
    {
      v122 = vmlaq_f64(vaddq_f64(vmlaq_f64(v41, 0, v47), v49), 0, v40);
      v123 = vmlaq_f64(vaddq_f64(vmlaq_f64(v42, 0, v48), v50), 0, v39);
      v117 = v48;
      v118 = vnegq_f64(v49);
      v119 = vnegq_f64(v50);
      v121 = v39;
    }

    memset(v115, 0, sizeof(v115));
    CA::Mat4Impl::mat4_invert(v115, &v116, v21);
    result = (*(*v13 + 152))(v13);
    v53 = *a5;
    if (*a5)
    {
      v54 = result;
      *v52.i32 = float_key;
      *v52.i32 = v30 * *v52.i32;
      *v52.i8 = vdiv_f32(vdup_lane_s32(*v52.i8, 0), vcvt_f32_s32(v34));
      v55 = vcvt_hight_f32_f64(vcvt_f32_f64(v108), v110);
      v56 = vmulq_f32(v55, 0);
      v57 = vzip1q_s32(v52, v52);
      v58 = vextq_s8(v56, v56, 8uLL);
      v59 = a5[1];
      v60 = *a6;
      v61 = a6[1];
      if (*(a4 + 672) == v53)
      {
        *(*(a4 + 16) + 17) = 42;
      }

      else
      {
        v103 = v57;
        v106 = v55;
        v111 = v58;
        CA::OGL::Context::bind_surface(a4, v53, 0, 0, 0, 0.0);
        v57 = v103;
        v55 = v106;
        v58 = v111;
      }

      v62 = vmlaq_f32(v58, v55, v57);
      v132 = 0uLL;
      v63 = a7 / v30;
      if (v19)
      {
        v112 = v62;
        v64 = CA::OGL::Context::bind_image(a4, 1u, v19, 256, 1u, 1, 2, 0, 0.0, &v132, 0);
        v62 = v112;
        v98 = v64;
      }

      else
      {
        if (v59)
        {
          v113 = v62;
          CA::OGL::Context::bind_surface(a4, v59, 1u, 1u, 1, 0.0);
          v62 = v113;
        }

        v98 = 0;
      }

      v65 = 0;
      *(*(a4 + 16) + 16) = v54;
      v66 = *(v53 + 56);
      v67.i64[0] = v66;
      v67.i64[1] = SHIDWORD(v66);
      __asm { FMOV            V1.2D, #-0.5 }

      v73 = vaddq_f64(vcvtq_f64_s64(v67), _Q1);
      _Q1.f64[0] = *(v53 + 40);
      v67.i64[0] = SLODWORD(_Q1.f64[0]);
      v67.i64[1] = SHIDWORD(_Q1.f64[0]);
      *(a4 + 160) = v62;
      *(a4 + 240) = vcvt_f32_f64(vdivq_f64(v73, vcvtq_f64_s64(v67)));
      *(a4 + 248) = v23;
      v74 = *(v53 + 48);
      v75 = *(v53 + 52);
      v76 = *(v53 + 56);
      v77 = *(v53 + 60);
      v102 = v53;
      v114 = v74;
      v78 = v63 * v74;
      v104 = v75;
      v79 = v63 * v75;
      v80 = v63 * (v76 + v74);
      v100 = (v77 + v75);
      v101 = (v76 + v74);
      v81 = v63 * v100;
      v128 = __PAIR64__(LODWORD(v79), LODWORD(v78));
      v129 = __PAIR64__(LODWORD(v79), LODWORD(v80));
      v130 = __PAIR64__(LODWORD(v81), LODWORD(v80));
      v131 = __PAIR64__(LODWORD(v81), LODWORD(v78));
      do
      {
        CA::Mat4Impl::mat4_apply_to_point2(v115, (&v128 + v65), v51);
        v65 += 8;
      }

      while (v65 != 32);
      v109 = v59;
      if (v59)
      {
        v82 = *(v59 + 48);
        v83 = *(v59 + 52);
      }

      else
      {
        v82 = 0.0;
        v83 = 0.0;
      }

      v99 = v83;
      v127 = 0u;
      v84 = *(*(a4 + 656) + 8);
      v85 = v61 / v60;
      v125[0] = a4;
      v125[1] = v84;
      v126 = 0u;
      v125[2] = 0;
      WORD4(v126) = 256;
      CA::OGL::Context::ClippedArray::start(v125);
      v124[0] = 0;
      v124[1] = 0;
      v86 = v76;
      v87 = v77;
      v107 = -(v82 - (v85 * v114));
      v105 = -(v99 - (v85 * v104));
      v88 = -(v82 - (v85 * v101));
      v89 = -(v99 - (v85 * v100));
      v90 = v128;
      v91 = v129;
      v92 = v130;
      v93 = v131;
      while (1)
      {
        result = CA::OGL::Context::ClippedArray::next_rect(v125, v124);
        if (!result)
        {
          break;
        }

        if (*(a4 + 108))
        {
          v94 = 6;
        }

        else
        {
          v94 = 4;
        }

        if ((*(a4 + 144) + 4) > *(a4 + 152) || (v95 = *(a4 + 128)) != 0 && *(a4 + 120) + v94 > v95)
        {
          *(a4 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(a4);
          *(a4 + 144) = 0;
          *(a4 + 112) = a4 + 1386;
          *(a4 + 120) = xmmword_183E20E50;
        }

        CA::OGL::Context::array_rect(a4, v78, v79, v80, v81);
        v96 = *(a4 + 136) + 48 * *(a4 + 144);
        *(v96 - 176) = 0;
        *(v96 - 128) = v86;
        *(v96 - 124) = 0;
        *(v96 - 80) = v86;
        *(v96 - 76) = v87;
        *(v96 - 32) = 0;
        *(v96 - 28) = v87;
        if (v19)
        {
          *(v96 - 168) = v90;
          *(v96 - 120) = v91;
          *(v96 - 72) = v92;
          *(v96 - 24) = v93;
        }

        else if (v109)
        {
          *(v96 - 168) = v107;
          *(v96 - 164) = v105;
          *(v96 - 120) = v88;
          *(v96 - 116) = v105;
          *(v96 - 72) = v88;
          *(v96 - 68) = v89;
          *(v96 - 24) = v107;
          *(v96 - 20) = v89;
        }
      }

      if (v19)
      {
        result = (*(*a4 + 560))(a4, v98, 1);
        v97 = v102;
      }

      else
      {
        v97 = v102;
        if (v109)
        {
          result = CA::OGL::Context::unbind_surface(a4, v109, 1);
        }
      }

      if (*(a4 + 672) != v97)
      {
        result = CA::OGL::Context::unbind_surface(a4, v97, 0);
      }

      *(*(a4 + 16) + 16) = 0;
      *(*(a4 + 16) + 19) = 0;
    }
  }

  return result;
}

void CA::OGL::SampleMapFilter::opaque_shape(CA::OGL::SampleMapFilter *this, CA::OGL::SampleMapFilter **a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  *&v5 = CA::OGL::SampleMapFilter::max_range(a2[5], a2);
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
      *a4 = vaddq_f64(*a4, vdupq_lane_s64(v5, 0));
      v10 = *&v5 * -2.0;
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

float64_t CA::OGL::LayerDODFilter::ROI(CA::OGL::LayerDODFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v4 = a4[1];
  v5 = vclezq_f64(v4);
  if ((vorrq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) != 0 || (v6 = *(a3 + 88), v7 = vclezq_f64(v6), (vorrq_s8(vdupq_laneq_s64(v7, 1), v7).u64[0] & 0x8000000000000000) != 0) || (v8 = *(a3 + 72), v9 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(*a4, v4), vaddq_f64(v8, v6)), vmaxnmq_f64(*a4, v8))), (vorrq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) != 0))
  {
    v10.f64[0] = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    *a4 = v8;
    v10 = *(a3 + 88);
    a4[1] = v10;
  }

  return v10.f64[0];
}

float64_t CA::OGL::LayerDODFilter::DOD(CA::OGL::LayerDODFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v4 = a4[1];
  v5 = vclezq_f64(v4);
  if ((vorrq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) != 0 || (v6 = *(a3 + 88), v7 = vclezq_f64(v6), (vorrq_s8(vdupq_laneq_s64(v7, 1), v7).u64[0] & 0x8000000000000000) != 0) || (v8 = *(a3 + 72), v9 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(*a4, v4), vaddq_f64(v8, v6)), vmaxnmq_f64(*a4, v8))), (vorrq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) != 0))
  {
    v10.f64[0] = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    *a4 = v8;
    v10 = *(a3 + 88);
    a4[1] = v10;
  }

  return v10.f64[0];
}

float32x2_t *CA::OGL::get_filter_apl_params(float32x2_t *this, const CA::Render::Filter *a2, int a3, int a4)
{
  this[2] = 0;
  *this = 0;
  this[1] = 0x3E851EB83E5A1CACLL;
  this[2].i32[0] = 1057417593;
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  this[2].i8[4] = v4;
  if (a2 && *(a2 + 6) == 477)
  {
    v6 = this;
    v7 = *(a2 + 5);
    float_key = CA::Render::KeyValueArray::get_float_key(v7, 325, 1.0);
    v6->f32[0] = float_key;
    v9 = CA::Render::KeyValueArray::get_float_key(v7, 416, 0.0);
    v6->f32[1] = v9;
    v10 = CA::Render::KeyValueArray::get_int_key(v7, 435, 0) != 0;
    this = CA::Render::KeyValueArray::get_int_key(v7, 365, 1);
    if (v7)
    {
      v11 = v7[4];
      if (v11)
      {
        v12 = 0;
        while (1)
        {
          v13 = *&v7[2 * v12 + 6];
          if (*(v13 + 16) == 436)
          {
            break;
          }

          if (v11 == ++v12)
          {
            goto LABEL_17;
          }
        }

        if ((v12 & 0x80000000) == 0)
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            if (*(v14 + 12) == 62 && *(v14 + 16) >= 3u)
            {
              v6[1] = vcvt_f32_f64(*(v14 + 24));
              v15 = *(v14 + 40);
              v6[2].f32[0] = v15;
            }
          }
        }
      }
    }

LABEL_17:
    if (a4)
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    v6[2].i8[4] = (4 * (this != 0)) | (8 * v10) | v4 | v16 | 1;
  }

  return this;
}

float CA::OGL::edr_gain_filter_gain(CA::OGL *this, const CA::Render::Filter *a2, const CA::Render::Update *a3, float a4, float a5)
{
  v8 = 1.0;
  v9 = 1.0 / a4;
  if (CA::Render::KeyValueArray::get_int_key(this, 320, 0))
  {
    if ((byte_1ED4E98A7 & 1) == 0)
    {
      if (*(a2 + 296) >= 1.0)
      {
        v10 = *(a2 + 296);
      }

      else
      {
        v10 = 1.0;
      }

      float_key = CA::Render::KeyValueArray::get_float_key(this, 325, 2.0);
      if (float_key >= 1.0)
      {
        v12 = float_key;
      }

      else
      {
        v12 = 2.0;
      }

      v13 = CA::Render::KeyValueArray::get_float_key(this, 432, 1.0);
      v14 = CA::Render::KeyValueArray::get_float_key(this, 371, 6.0);
      if (v13 >= 1.0)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1.0;
      }

      if (v15 >= v14)
      {
        v14 = v15;
      }

      if (v10 > v15)
      {
        if (v10 >= v14)
        {
          v8 = v12;
        }

        else
        {
          v8 = (((v10 - v15) * (v12 + -1.0)) / (v14 - v15)) + 1.0;
        }
      }
    }
  }

  else
  {
    v8 = CA::Render::KeyValueArray::get_float_key(this, 325, v9);
  }

  if (v8 >= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v8;
  }

  v17 = v16 + -1.0;
  if (v17 >= 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = CA::Render::KeyValueArray::get_float_key(this, 416, 1.0);
  if (v19 > 1.0)
  {
    v19 = 1.0;
  }

  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  return powf(v19, a5) * v18;
}

uint64_t CA::OGL::render_distance_field_filter(void *a1, unsigned int *a2, int32x2_t *a3, float a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0;
  if (!a2)
  {
    goto LABEL_14;
  }

  v8 = a2[4];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
  while (1)
  {
    v10 = *&a2[2 * v9 + 6];
    if (*(v10 + 16) == 602)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_14;
    }
  }

  if ((v9 & 0x80000000) == 0 && (v11 = *(v10 + 24)) != 0 && *(v11 + 12) == 54)
  {
    LODWORD(v26) = 1;
    if (!strcmp((v11 + 28), "stroke"))
    {
      v12 = 2;
    }

    else if (!strcmp((v11 + 28), "innerStroke"))
    {
      v12 = 3;
    }

    else
    {
      if (strcmp((v11 + 28), "outerStroke"))
      {
        goto LABEL_16;
      }

      v12 = 4;
    }
  }

  else
  {
LABEL_14:
    v12 = 1;
  }

  LODWORD(v26) = v12;
LABEL_16:
  BYTE4(v26) = CA::Render::KeyValueArray::get_int_key(a2, 452, 0) != 0;
  float_key = CA::Render::KeyValueArray::get_float_key(a2, 534, 0.5);
  v27 = float_key;
  v14 = CA::Render::KeyValueArray::get_float_key(a2, 483, 0.0);
  v28 = v14;
  v15 = CA::Render::KeyValueArray::get_float_key(a2, 648, 0.0);
  v29 = v15;
  *(a1[2] + 376) = &v26;
  v30 = 0uLL;
  if (CA::Render::KeyValueArray::get_float_color_key(a2, 360, &v30))
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17 = COERCE_DOUBLE(vbsl_s8(vdup_n_s16(v16), vcvt_f16_f32(v30), 0x3C003C003C003C00));
  v18 = a1[2];
  v19 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v18[1]), vcvtq_f32_f16(*&v17))));
  if (*&v18[1] != 0x3C003C003C003C00)
  {
    v17 = v19;
  }

  *&v18[1] = v17;
  v20 = a1[2];
  v21 = *(v20 + 376);
  v22 = *(v20 + 8);
  if (v22 == 0x3C003C003C003C00)
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

  *(v20 + 16) = v23;
  CA::OGL::Context::bind_surface(a1, a3, 0, a4 != 1.0, a4 != 1.0, 0.0);
  if (*v21 == 1)
  {
    v24 = 28;
  }

  else
  {
    v24 = 30;
  }

  if (*(v21 + 16) > 0.0)
  {
    ++v24;
  }

  *(a1[2] + 17) = v24;
  v30.i64[0] = v22;
  CA::OGL::emit_filter_quads_color(a1, a3, &v30, a4);
  result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  *(a1[2] + 16) = 0;
  *(a1[2] + 376) = 0;
  return result;
}

void CA::OGL::emit_filter(int8x16_t **a1, uint64_t a2, uint64_t a3, int32x2_t **a4, float *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a4;
  if (*a4)
  {
    v18 = *a1;
    v19 = (*a1)[41].i64[0];
    v20 = *(a2 + 16);
    v21 = a9 / *a5;
    if (v20)
    {
      *(v18[1].i64[0] + 8) = *(v19 + 32);
      v22 = *(v20 + 48);
      if (v22)
      {
        v27 = v18;
        if ((*(*v22 + 72))(v22))
        {
          (*(*v22 + 104))(v22, v20, a3, v27, a4, a5, a6, a7, a9, *(a2 + 48), a8, a10, a11, a12);
        }
      }

      else
      {
        v30 = *(v20 + 24);
        if (v30 > 494)
        {
          if (v30 > 626)
          {
            if (v30 <= 740)
            {
              if (v30 == 627)
              {

                CA::OGL::emit_sdr_normalize_filter(v18, v20, v13, v21);
              }

              else if (v30 == 679)
              {
                v40 = *(v20 + 40);

                CA::OGL::render_srl_filter(v18, v40, v13, v21);
              }
            }

            else if (v30 == 741)
            {

              CA::OGL::render_vibrant_color_matrix(a1, v20, v13, a3, v21);
            }

            else if (v30 == 743 || v30 == 746)
            {

              CA::OGL::render_vibrant_filter(v18, v20, v13, v21);
            }
          }

          else if (v30 <= 498)
          {
            if (v30 == 495)
            {
              v56 = *(v20 + 40);

              CA::OGL::render_luminance_curve_map(v18, v56, v13, v21);
            }

            else if (v30 == 496)
            {

              CA::OGL::render_luminance_map(v18, v20, v13, v21);
            }
          }

          else
          {
            switch(v30)
            {
              case 499:

                CA::OGL::render_3d_lut_filter(v18, v20, v13, v21);
                break;
              case 516:
                v42 = v13;
                v43 = v18;
                CA::Render::Update::render_edr_factor();
                v45 = *(v20 + 40);

                CA::OGL::render_meteor_filter(v43, v45, v42, v44, v21);
                break;
              case 540:
                v35 = *(v20 + 40);

                CA::OGL::render_opacity_pair_filter(v18, v35, v13, v21);
                break;
            }
          }
        }

        else if (v30 > 176)
        {
          if (v30 <= 214)
          {
            if (v30 == 177)
            {
              v57 = *(v20 + 40);

              CA::OGL::render_curves(v18, v57, v13, v21);
            }

            else if (v30 == 204)
            {
              v39 = *(v20 + 40);

              CA::OGL::render_distance_field_filter(v18, v39, v13, v21);
            }
          }

          else
          {
            v36 = v18;
            v37 = v13;
            switch(v30)
            {
              case 215:
                CA::Render::Update::render_edr_factor();
                v53 = a1[1];
                v54 = *(v20 + 40);

                CA::OGL::render_edr_gain_filter(v36, v54, v53, v37, v52, v21);
                break;
              case 216:
                CA::Render::Update::render_edr_factor();
                v47 = a1[1];
                v48 = *(v20 + 40);

                CA::OGL::render_edr_gain_multiply_filter(v36, v48, v47, v37, v46, v21);
                break;
              case 304:

                CA::OGL::render_home_affordance_base(v18, v20, v13, v21);
                break;
            }
          }
        }

        else if (v30 <= 66)
        {
          if (v30 == 28)
          {
            v55 = *(v20 + 40);

            CA::OGL::render_alpha_smooth_threshold_filter(v18, v55, v13, v21);
          }

          else if (v30 == 30)
          {
            v38 = *(v20 + 40);

            CA::OGL::render_alpha_threshold_filter(v18, v38, v13, v21);
          }
        }

        else
        {
          switch(v30)
          {
            case 'C':
              v49 = v13;
              v50 = v18;
              float_key = CA::Render::KeyValueArray::get_float_key(*(v20 + 40), 325, 1.0);

              CA::OGL::emit_bias(v50, v49, float_key, v21);
              break;
            case 'm':
              v41 = *(v20 + 40);

              CA::OGL::render_hue_rotate(v18, v41, v13, v21);
              break;
            case '}':
              v31 = v13;
              v32 = v18;
              CA::Render::Update::render_edr_factor();
              v34 = *(v20 + 40);

              CA::OGL::render_compress_luminance_filter(v32, v34, v31, v33, v21);
              break;
          }
        }
      }
    }

    else if (*(a2 + 48))
    {
      *(v18[1].i64[0] + 8) = *(v19 + 32);
      v28 = *(a2 + 48);
      v29 = *(a2 + 56);

      CA::OGL::emit_color_matrix(v18, v28, v13, v29, v21);
    }
  }
}

uint64_t CA::OGL::render_hue_rotate(void *a1, CA::Render::KeyValueArray *this, int32x2_t *a3, float a4)
{
  *&v7 = CA::Render::KeyValueArray::get_float_key(this, 326, 0.0) * 0.159154937;
  *v7.i32 = *v7.i32;
  v9 = v7;
  CA::OGL::bind_filter_surface(a1, a3, 0, a4);
  *(a1[2] + 16) = 74;
  *(a1[2] + 24) = vdupq_lane_s32(v9, 0);
  result = CA::OGL::emit_filter_quads(a1, a3, a4);
  if (a1[84] != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(a1[2] + 16) = 0;
  *(a1[2] + 19) = 0;
  return result;
}

uint64_t CA::OGL::render_luminance_map(uint64_t result, uint64_t a2, int32x2_t *a3, float a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v9 = result;
      v10 = 0;
      v11 = v4 + 24;
      while (1)
      {
        v12 = *(v11 + 8 * v10);
        if (*(v12 + 16) == 363)
        {
          break;
        }

        if (v5 == ++v10)
        {
          return result;
        }
      }

      if ((v10 & 0x80000000) == 0)
      {
        result = *(v12 + 24);
        if (result)
        {
          result = (*(*result + 80))(result);
          if (result)
          {
            v13 = result;
            float_key = CA::Render::KeyValueArray::get_float_key(*(a2 + 40), 325, 1.0);
            CA::OGL::bind_filter_surface(v9, a3, 0, a4);
            *(*(v9 + 16) + 16) = 55;
            v27 = 0uLL;
            result = CA::OGL::Context::bind_image(v9, 1u, v13, 256, 1u, 1, 0, 0, 0.0, &v27, 0);
            if (result)
            {
              v16 = result;
              *v15.i32 = float_key;
              *(*(v9 + 16) + 20) = 4;
              *(*(v9 + 16) + 24) = vdupq_lane_s32(v15, 0);
              v26 = 0u;
              v17 = *(*(v9 + 656) + 8);
              v24[0] = v9;
              v24[1] = v17;
              v25 = 0u;
              v24[2] = 0;
              WORD4(v25) = 256;
              CA::OGL::Context::ClippedArray::start(v24);
              v23[0] = 0;
              v23[1] = 0;
              while (CA::OGL::Context::ClippedArray::next_rect(v24, v23))
              {
                if (*(v9 + 108))
                {
                  v18 = 6;
                }

                else
                {
                  v18 = 4;
                }

                if ((*(v9 + 144) + 4) > *(v9 + 152) || (v19 = *(v9 + 128)) != 0 && *(v9 + 120) + v18 > v19)
                {
                  *(v9 + 1384) |= 0x20u;
                  CA::OGL::Context::array_flush(v9);
                  *(v9 + 144) = 0;
                  *(v9 + 112) = v9 + 1386;
                  *(v9 + 120) = xmmword_183E20E50;
                }

                CA::OGL::Context::array_rect(v9, a3[6].i32[0] * a4, a3[6].i32[1] * a4, (a3[7].i32[0] + a3[6].i32[0]) * a4, (a3[7].i32[1] + a3[6].i32[1]) * a4);
                v20 = *(v9 + 136) + 48 * *(v9 + 144);
                *(v20 - 176) = 0;
                *(v20 - 124) = 0;
                v21 = vcvt_f32_s32(a3[7]);
                *(v20 - 128) = v21.i32[0];
                *(v20 - 80) = v21;
                *(v20 - 32) = 0;
                *(v20 - 28) = v21.i32[1];
                v21.i32[0] = v27.i32[0];
                v22 = v27.i32[2];
                *(v20 - 168) = v27.i32[0];
                *(v20 - 164) = v22;
                *(v20 - 120) = v21.i32[0];
                *(v20 - 116) = v22;
                *(v20 - 72) = v21.i32[0];
                *(v20 - 68) = v22;
                *(v20 - 24) = v21.i32[0];
                *(v20 - 20) = v22;
              }

              *(*(v9 + 16) + 20) = 0;
              result = (*(*v9 + 560))(v9, v16, 1);
            }

            if (*(v9 + 672) != a3)
            {
              result = CA::OGL::Context::unbind_surface(v9, a3, 0);
            }

            *(*(v9 + 16) + 16) = 0;
            *(*(v9 + 16) + 19) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CA::OGL::render_curves(uint64_t a1, unsigned int *a2, int32x2_t *a3, float a4)
{
  if (!a2)
  {
    v10 = a4;
    v12 = CA::OGL::curve_horner_coeffecients(0, 0);
    v14 = v13;
    v16 = v15;
    v17 = 0;
    v68 = v12;
    v69 = v13;
    v70 = v15;
    v71 = v18;
    v72 = v12;
    v73 = v13;
    v74 = v15;
    v75 = v18;
    v76 = v18;
    goto LABEL_18;
  }

  v7 = a2[4];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = *&a2[2 * v8 + 6];
      if (*(v9 + 16) == 402)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_11;
      }
    }

    if ((v8 & 0x80000000) == 0)
    {
      v10 = a4;
      v23 = *(v9 + 24);
      goto LABEL_12;
    }

LABEL_11:
    v10 = a4;
    v23 = 0;
LABEL_12:
    v25 = CA::OGL::curve_horner_coeffecients(v23, a2);
    v14 = v26;
    v16 = v27;
    v29 = v28;
    v67 = v25;
    v30 = 0;
    while (1)
    {
      v31 = *&a2[2 * v30 + 6];
      if (*(v31 + 16) == 383)
      {
        break;
      }

      if (v7 == ++v30)
      {
        goto LABEL_23;
      }
    }

    if ((v30 & 0x80000000) == 0)
    {
      v48 = *(v31 + 24);
      goto LABEL_24;
    }

LABEL_23:
    v48 = 0;
LABEL_24:
    v50 = CA::OGL::curve_horner_coeffecients(v48, v24);
    v54 = 0;
    while (1)
    {
      v55 = *&a2[2 * v54 + 6];
      if (*(v55 + 16) == 345)
      {
        break;
      }

      if (v7 == ++v54)
      {
        goto LABEL_30;
      }
    }

    if ((v54 & 0x80000000) == 0)
    {
      v56 = v50;
      v57 = v51;
      v58 = v52;
      v59 = v53;
      v60 = *(v55 + 24);
      goto LABEL_31;
    }

LABEL_30:
    v56 = v50;
    v57 = v51;
    v58 = v52;
    v59 = v53;
    v60 = 0;
LABEL_31:
    v61 = CA::OGL::curve_horner_coeffecients(v60, v49);
    v75 = v62;
    v76 = v29;
    v73 = v63;
    v74 = v64;
    v71 = v59;
    v72 = v61;
    v69 = v57;
    v70 = v58;
    v68 = v56;
    v65 = 0;
    while (1)
    {
      v66 = *&a2[2 * v65 + 6];
      if (*(v66 + 16) == 324)
      {
        break;
      }

      if (v7 == ++v65)
      {
        goto LABEL_16;
      }
    }

    if ((v65 & 0x80000000) == 0)
    {
      v17 = *(v66 + 24);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a4;
    v67 = CA::OGL::curve_horner_coeffecients(0, a2);
    v14 = v19;
    v16 = v20;
    v22 = v21;
    v68 = CA::OGL::curve_horner_coeffecients(0, v32);
    v69 = v33;
    v70 = v34;
    v71 = v35;
    v76 = v22;
    v72 = CA::OGL::curve_horner_coeffecients(0, v36);
    v73 = v37;
    v74 = v38;
    v75 = v39;
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  v12 = v67;
LABEL_18:
  v40 = CA::OGL::curve_horner_coeffecients(v17, v11);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  CA::OGL::bind_filter_surface(a1, a3, 0, v10);
  *(*(a1 + 16) + 16) = 57;
  *(a1 + 160) = v12;
  *(a1 + 164) = v68;
  *(a1 + 168) = v72;
  *(a1 + 172) = v40;
  *(a1 + 176) = v14;
  *(a1 + 180) = v69;
  *(a1 + 184) = v73;
  *(a1 + 188) = v42;
  *(a1 + 192) = v16;
  *(a1 + 196) = v70;
  *(a1 + 200) = v74;
  *(a1 + 204) = v44;
  *(a1 + 208) = v76;
  *(a1 + 212) = v71;
  *(a1 + 216) = v75;
  *(a1 + 220) = v46;
  result = CA::OGL::emit_filter_quads(a1, a3, v10);
  if (*(a1 + 672) != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  *(*(a1 + 16) + 19) = 0;
  return result;
}

uint64_t CA::OGL::render_compress_luminance_filter(uint64_t a1, CA::Render::KeyValueArray *this, int32x2_t *a3, float a4, float a5)
{
  v24 = *MEMORY[0x1E69E9840];
  float_key = CA::Render::KeyValueArray::get_float_key(this, 325, 0.5);
  if (float_key > 1.0)
  {
    float_key = 1.0;
  }

  if (float_key >= 0.0)
  {
    v10 = float_key;
  }

  else
  {
    v10 = 0.0;
  }

  CA::OGL::bind_filter_surface(a1, a3, 0, a5);
  v11 = *(*(a1 + 16) + 8);
  v23 = 0;
  *&v21[16] = 0u;
  v22 = 0u;
  *&v20[16] = 0u;
  *v21 = 0u;
  *v20 = 0u;
  v12 = *(a1 + 656);
  *&v20[8] = *(v12 + 8);
  v13 = *(v12 + 32);
  *&v20[24] = *(v12 + 24);
  *v21 = v13;
  *&v21[8] = *(v12 + 40);
  *&v21[24] = *(v12 + 56);
  v14 = *(v12 + 80);
  LODWORD(v22) = *(v12 + 64);
  v23 = v14 & 0x5FF;
  *(&v22 + 1) = *(v12 + 72);
  *v20 = CA::OGL::Context::set_gstate(a1, v20);
  *(*(a1 + 16) + 16) = 75;
  v15 = *(a1 + 16);
  *(v15 + 496) = 62;
  v16 = (1.0 / a4) - v10;
  if (v16 <= 0.0019531)
  {
    v17 = v10 * 511.0;
  }

  else
  {
    v17 = ((1.0 / a4) * v10) / v16;
  }

  *(v15 + 24) = v17;
  *(v15 + 32) = 0;
  *(v15 + 28) = 0;
  v19 = v11;
  CA::OGL::emit_filter_quads_color(a1, a3, &v19, a5);
  result = CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  if (*(a1 + 672) != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  *(*(a1 + 16) + 19) = 0;
  return result;
}

void CA::OGL::render_opacity_pair_filter(void *a1, CA::Render::KeyValueArray *this, int32x2_t *a3, float a4)
{
  float_key = CA::Render::KeyValueArray::get_float_key(this, 325, 0.0);
  if (float_key > 1.0)
  {
    float_key = 1.0;
  }

  v8 = 0;
  if (float_key >= 0.0)
  {
    *v8.i32 = float_key;
  }

  if (*v8.i32 <= 0.99804)
  {
    v9 = v8;
    CA::OGL::bind_filter_surface(a1, a3, 0, a4);
    *(a1[2] + 16) = 85;
    *(a1[2] + 24) = vdupq_lane_s32(v9, 0);
    CA::OGL::emit_filter_quads(a1, a3, a4);
    if (a1[84] != a3)
    {
      CA::OGL::Context::unbind_surface(a1, a3, 0);
    }

    *(a1[2] + 16) = 0;
    *(a1[2] + 19) = 0;
  }
}

uint64_t CA::OGL::render_alpha_smooth_threshold_filter(uint64_t a1, CA::Render::KeyValueArray *this, int32x2_t *a3, float a4)
{
  v33 = *MEMORY[0x1E69E9840];
  float_key = CA::Render::KeyValueArray::get_float_key(this, 325, 0.5);
  v9 = CA::Render::KeyValueArray::get_float_key(this, 432, 0.25);
  v10 = CA::Render::KeyValueArray::get_float_key(this, 371, 0.75);
  v11.i32[0] = 1065353048;
  if (float_key <= 0.99999)
  {
    v11.f32[0] = float_key;
  }

  if (v11.f32[0] < 0.00001)
  {
    v11.f32[0] = 0.00001;
  }

  v12 = v10;
  v13 = v9;
  v14 = v12 - v13;
  v15 = 1.0 / v14;
  v16 = -v13 / v14;
  v11.f32[1] = 1.0 - v11.f32[0];
  v17 = vdiv_f32(0x4000000040000000, v11);
  __asm { FMOV            V1.2S, #-4.0 }

  v23 = vadd_f32(v17, _D1);
  v28.i64[0] = 0;
  v28.i64[1] = 0x3F80000000000000;
  CA::Render::KeyValueArray::get_float_color_key(this, 360, &v28);
  CA::OGL::bind_filter_surface(a1, a3, 0, a4);
  v32 = 0;
  *&v30[16] = 0u;
  v31 = 0u;
  *&v29[16] = 0u;
  *v30 = 0u;
  *v29 = 0u;
  v24 = *(a1 + 656);
  *&v29[8] = *(v24 + 8);
  v25 = *(v24 + 32);
  *&v29[24] = *(v24 + 24);
  *v30 = v25;
  *&v30[8] = *(v24 + 40);
  *&v30[24] = *(v24 + 56);
  v26 = *(v24 + 80);
  LODWORD(v31) = *(v24 + 64);
  v32 = v26 & 0x5FF;
  *(&v31 + 1) = *(v24 + 72);
  *v29 = CA::OGL::Context::set_gstate(a1, v29);
  *(*(a1 + 16) + 16) = 91;
  *(a1 + 160) = v15;
  *(a1 + 164) = v16;
  *(a1 + 168) = v23;
  *(a1 + 240) = v28;
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

uint64_t CA::OGL::render_meteor_filter(uint64_t a1, CA::Render::KeyValueArray *this, int32x2_t *a3, float a4, float a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = 1.0 / a4;
  v10 = 4.0;
  v11 = v9 > 4.0 || v9 < 1.0;
  if (v9 < 1.0 && v9 <= 4.0)
  {
    v10 = 1.0;
  }

  if (v11)
  {
    v9 = v10;
  }

  v12 = v9;
  float_key = CA::Render::KeyValueArray::get_float_key(this, 325, v9);
  v14 = CA::Render::KeyValueArray::get_float_key(this, 416, 1.0);
  if (v14 > 1.0)
  {
    v14 = 1.0;
  }

  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = log2f(float_key);
  v17 = exp2f(v15 * v16);
  CA::OGL::bind_filter_surface(a1, a3, 0, a5);
  v18 = *(*(a1 + 16) + 8);
  v31 = 0;
  *&v29[16] = 0u;
  v30 = 0u;
  *&v28[16] = 0u;
  *v29 = 0u;
  *v28 = 0u;
  v19 = *(a1 + 656);
  *&v28[8] = *(v19 + 8);
  v20 = *(v19 + 32);
  *&v28[24] = *(v19 + 24);
  *v29 = v20;
  *&v29[8] = *(v19 + 40);
  *&v29[24] = *(v19 + 56);
  v21 = *(v19 + 80);
  LODWORD(v30) = *(v19 + 64);
  v31 = v21 & 0x5FF;
  *(&v30 + 1) = *(v19 + 72);
  *v28 = CA::OGL::Context::set_gstate(a1, v28);
  *(*(a1 + 16) + 16) = 86;
  v22 = v17 * 0.333333333 + -0.333333333;
  if (v22 >= v12 * 0.487804878 + -0.487804878)
  {
    v22 = v12 * 0.487804878 + -0.487804878;
  }

  v23 = v22;
  v24 = powf(3.2185, 1.0 / *(a1 + 576));
  v25 = *(a1 + 16);
  *(v25 + 24) = v23;
  *(v25 + 28) = v24;
  *(v25 + 32) = 0x3F80000000000000;
  v27 = v18;
  CA::OGL::emit_filter_quads_color(a1, a3, &v27, a5);
  result = CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  if (*(a1 + 672) != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  *(*(a1 + 16) + 19) = 0;
  return result;
}

uint64_t CA::OGL::render_srl_filter(uint64_t a1, CA::Render::KeyValueArray *this, int32x2_t *a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  float_key = CA::Render::KeyValueArray::get_float_key(this, 325, 0.5);
  CA::OGL::bind_filter_surface(a1, a3, 0, a4);
  v8 = *(*(a1 + 16) + 8);
  v18 = 0;
  *&v16[16] = 0u;
  v17 = 0u;
  *&v15[16] = 0u;
  *v16 = 0u;
  *v15 = 0u;
  v9 = *(a1 + 656);
  *&v15[8] = *(v9 + 8);
  v10 = *(v9 + 32);
  *&v15[24] = *(v9 + 24);
  *v16 = v10;
  *&v16[8] = *(v9 + 40);
  *&v16[24] = *(v9 + 56);
  v11 = *(v9 + 80);
  LODWORD(v17) = *(v9 + 64);
  v18 = v11 & 0x5FF;
  *(&v17 + 1) = *(v9 + 72);
  v14 = v8;
  *v15 = CA::OGL::Context::set_gstate(a1, v15);
  *(*(a1 + 16) + 16) = 87;
  v12 = *(a1 + 16);
  *(v12 + 24) = float_key;
  *(v12 + 32) = 0;
  *(v12 + 28) = 0;
  CA::OGL::emit_filter_quads_color(a1, a3, &v14, a4);
  result = CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  if (*(a1 + 672) != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  *(*(a1 + 16) + 19) = 0;
  return result;
}

uint64_t CA::OGL::render_edr_gain_filter(uint64_t a1, CA::OGL *this, CA::Render::Filter *a3, int32x2_t *a4, float a5, float a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = CA::OGL::edr_gain_filter_gain(this, a3, a3, a5, *(a1 + 576));
  CA::OGL::bind_filter_surface(a1, a4, 0, a6);
  v10 = *(*(a1 + 16) + 8);
  v21 = 0;
  *&v19[16] = 0u;
  v20 = 0u;
  *&v18[16] = 0u;
  *v19 = 0u;
  *v18 = 0u;
  v11 = *(a1 + 656);
  *&v18[8] = *(v11 + 8);
  v12 = *(v11 + 32);
  *&v18[24] = *(v11 + 24);
  *v19 = v12;
  *&v19[8] = *(v11 + 40);
  *&v19[24] = *(v11 + 56);
  v13 = *(v11 + 80);
  LODWORD(v20) = *(v11 + 64);
  v21 = v13 & 0x5FF;
  *(&v20 + 1) = *(v11 + 72);
  v17 = v10;
  *v18 = CA::OGL::Context::set_gstate(a1, v18);
  *(*(a1 + 16) + 16) = 88;
  v14 = *(a1 + 576);
  v15 = *(a1 + 16);
  *(v15 + 24) = v9;
  *(v15 + 28) = v14;
  *(v15 + 32) = 1.0 / v14;
  *(v15 + 36) = 0;
  CA::OGL::emit_filter_quads_color(a1, a4, &v17, a6);
  result = CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  if (*(a1 + 672) != a4)
  {
    result = CA::OGL::Context::unbind_surface(a1, a4, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  *(*(a1 + 16) + 19) = 0;
  return result;
}

uint64_t CA::OGL::render_edr_gain_multiply_filter(uint64_t a1, CA::OGL *this, CA::Render::Filter *a3, int32x2_t *a4, float a5, float a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = CA::OGL::edr_gain_filter_gain(this, a3, a3, a5, *(a1 + 576));
  CA::OGL::bind_filter_surface(a1, a4, 0, a6);
  v10 = *(*(a1 + 16) + 8);
  v21 = 0;
  *&v19[16] = 0u;
  v20 = 0u;
  *&v18[16] = 0u;
  *v19 = 0u;
  *v18 = 0u;
  *v11.i32 = powf(v9 + 1.0, 1.0 / *(a1 + 576));
  v16 = v11;
  v12 = *(a1 + 656);
  *&v18[8] = *(v12 + 8);
  v13 = *(v12 + 32);
  *&v18[24] = *(v12 + 24);
  *v19 = v13;
  *&v19[8] = *(v12 + 40);
  *&v19[24] = *(v12 + 56);
  v14 = *(v12 + 80);
  LODWORD(v20) = *(v12 + 64);
  v21 = v14 & 0x5FF;
  *(&v20 + 1) = *(v12 + 72);
  v17 = v10;
  *v18 = CA::OGL::Context::set_gstate(a1, v18);
  *(*(a1 + 16) + 16) = 89;
  *(*(a1 + 16) + 24) = vdupq_lane_s32(v16, 0);
  CA::OGL::emit_filter_quads_color(a1, a4, &v17, a6);
  result = CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  if (*(a1 + 672) != a4)
  {
    result = CA::OGL::Context::unbind_surface(a1, a4, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  *(*(a1 + 16) + 19) = 0;
  return result;
}

void CA::OGL::render_3d_lut_filter(void *a1, uint64_t a2, int32x2_t *a3, float a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 40);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  while (1)
  {
    v11 = *&v7[2 * v10 + 6];
    if (*(v11 + 16) == 436)
    {
      break;
    }

    if (v8 == ++v10)
    {
      goto LABEL_12;
    }
  }

  if ((v10 & 0x80000000) == 0 && (v12 = *(v11 + 24)) != 0 && *(v12 + 12) == 62)
  {
    v13 = (*(*a1 + 584))(a1);
    v7 = *(a2 + 40);
    float_key = CA::Render::KeyValueArray::get_float_key(v7, 416, 1.0);
    if (v13)
    {
      v15 = 0.0;
LABEL_23:
      CA::OGL::bind_filter_surface(a1, a3, 0, a4);
      *(a1[2] + 16) = 119;
      v20 = (*(*a1 + 600))(a1, 1, v13);
      v22 = 1.0;
      if (v15 <= 1.0)
      {
        v22 = v15;
      }

      v23 = a1[2];
      *v21.i32 = *(v13 + 16);
      v23[3] = vdiv_f32((COERCE_UNSIGNED_INT((*v21.i32 + -1.0) * float_key) | 0x3F00000000000000), vdup_lane_s32(v21, 0));
      if (v22 >= 0.0)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0.0;
      }

      v23[4].f32[0] = v24;
      v23[4].i32[1] = 0;
      CA::OGL::emit_filter_quads(a1, a3, a4);
      (*(*a1 + 560))(a1, v20, 1);
      if (a1[84] != a3)
      {
        CA::OGL::Context::unbind_surface(a1, a3, 0);
      }

      *(a1[2] + 16) = 0;
      *(a1[2] + 19) = 0;
      return;
    }
  }

  else
  {
LABEL_12:
    float_key = CA::Render::KeyValueArray::get_float_key(v7, 416, 1.0);
  }

  if (v7)
  {
    v16 = v7[4];
    if (v16)
    {
      v17 = 0;
      while (1)
      {
        v18 = *&v7[2 * v17 + 6];
        if (*(v18 + 16) == 363)
        {
          break;
        }

        if (v16 == ++v17)
        {
          return;
        }
      }

      if ((v17 & 0x80000000) == 0)
      {
        v19 = *(v18 + 24);
        if (v19)
        {
          if ((*(*v19 + 80))(*(v18 + 24)))
          {
            v13 = (*(*v19 + 80))(v19);
            v15 = 0.0;
            if (*(v13 + 20) == *(v13 + 16) * *(v13 + 16))
            {
              goto LABEL_23;
            }

            if (x_log_get_ogl(void)::once != -1)
            {
              dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
            }

            v27 = x_log_get_ogl(void)::log;
            if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
            {
              v28 = *(v13 + 16);
              v29 = *(v13 + 20);
              v41 = 67109376;
              v42 = v28;
              v43 = 1024;
              v44 = v29;
              v30 = "Invalid 3D lut image %ux%u";
              v31 = v27;
              v32 = 14;
LABEL_57:
              _os_log_error_impl(&dword_183AA6000, v31, OS_LOG_TYPE_ERROR, v30, &v41, v32);
            }
          }

          else
          {
            if (*(v19 + 12) != 26)
            {
              return;
            }

            v25 = *(v19 + 24);
            if (v25)
            {
              v26 = (*(*v25 + 80))(v25);
            }

            else
            {
              v26 = 0;
            }

            v33 = *(v19 + 32);
            if (v33)
            {
              v33 = (*(*v33 + 80))(v33);
            }

            if (v26)
            {
              v35 = *(v26 + 16);
              v34 = *(v26 + 20);
            }

            else
            {
              v34 = 0;
              v35 = 0;
            }

            if (v33)
            {
              v36 = v33[4];
              v37 = v33[5];
              if (v26 && v34 == v35 * v35 && v35 == v36 && v37 == v36 * v36)
              {
                v38 = *(v19 + 48);
                v39 = (*(*a1 + 592))(a1, v19, 3);
                if (!v39)
                {
                  return;
                }

                v13 = v39;
                v15 = v38;
                goto LABEL_23;
              }
            }

            else
            {
              v36 = 0;
              v37 = 0;
            }

            if (x_log_get_ogl(void)::once != -1)
            {
              dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
            }

            v40 = x_log_get_ogl(void)::log;
            if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
            {
              v41 = 67109888;
              v42 = v35;
              v43 = 1024;
              v44 = v34;
              v45 = 1024;
              v46 = v36;
              v47 = 1024;
              v48 = v37;
              v30 = "Invalid 3D lut images %ux%u %ux%u";
              v31 = v40;
              v32 = 26;
              goto LABEL_57;
            }
          }
        }
      }
    }
  }
}

uint64_t CA::OGL::render_vibrant_filter(int8x16_t *a1, uint64_t a2, int32x2_t *a3, float a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v23 = 0uLL;
  float_color_key = CA::Render::KeyValueArray::get_float_color_key(*(a2 + 40), 360, &v23);
  v22 = vcvtq_f32_f16(vcvt_f16_f32(v23));
  v23 = 0uLL;
  v9 = CA::Render::KeyValueArray::get_float_color_key(*(a2 + 40), 360, &v23);
  v21 = vcvtq_f32_f16(vcvt_f16_f32(v23));
  int_key = CA::Render::KeyValueArray::get_int_key(*(a2 + 40), 410, 0);
  if (*(a2 + 24) == 743)
  {
    v11 = 53;
  }

  else
  {
    v11 = 54;
  }

  *(a1[1].i64[0] + 16) = v11;
  CA::OGL::Context::bind_surface(a1, a3, 0, a4 != 1.0, a4 != 1.0, 0.0);
  if (float_color_key)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  __asm { FMOV            V1.4S, #1.0 }

  a1[10] = vbslq_s8(vdupq_n_s32(v12), v22, _Q1);
  if (v9)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  a1[15] = vbslq_s8(vdupq_n_s32(v18), v21, _Q1);
  if (int_key)
  {
    v19 = 1065353216;
  }

  else
  {
    v19 = 0;
  }

  a1[20].i32[0] = v19;
  CA::OGL::emit_filter_quads(a1, a3, a4);
  result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  *(a1[1].i64[0] + 16) = 0;
  return result;
}

uint64_t CA::OGL::LimitAPL::render(float a1, uint64_t a2, const CA::Render::Filter *a3, uint64_t a4, void *a5, int32x2_t **a6, float *a7)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v9 = *a6;
  v10 = *a7;
  CA::OGL::get_filter_apl_params(v13, a3, 0, ((*a6)[18].u16[2] >> 4) & 1);
  result = (*(*a5 + 960))(a5, v9, v13);
  if (result)
  {
    v12 = result;
    CA::OGL::emit_limit_apl_dimming(a5, v9, result, a1 / v10, 0.0, 0.0);
    return (*(*a5 + 912))(a5, v12);
  }

  return result;
}

uint64_t CA::OGL::AverageColorFilter::render(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int32x2_t **a6, float *a7)
{
  v8 = *a6;
  v9 = *a7;
  *(a5[2] + 16) = 2;
  v10 = a1 / v9;
  CA::OGL::Context::bind_surface(a5, v8, 0, 2u, 1, 32.0);
  CA::OGL::emit_filter_quads(a5, v8, v10);
  result = CA::OGL::Context::unbind_surface(a5, v8, 0);
  *(a5[2] + 16) = 0;
  return result;
}

double CA::Render::Updater::MeshOp::unmap_rect(CA::Render::Updater::MeshOp *this, float64x2_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  CA::Rect::unapply_transform(a2->f64, *(this + 3));
  CA::Render::MeshTransform::unapply_rect(v8, *(this + 4), v4, *(this + 40), *(this + 56), *a2, a2[1]);
  v5 = v8[1];
  *a2 = v8[0];
  a2[1] = v5;
  v6 = *(this + 3);

  return CA::Rect::apply_transform(a2->f64, v6);
}

double CA::Render::Updater::MeshOp::map_rect(CA::Render::Updater::MeshOp *this, float64x2_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  CA::Rect::unapply_transform(a2->f64, *(this + 3));
  CA::Render::MeshTransform::apply_rect(v8, *(this + 4), v4, *(this + 40), *(this + 56), *a2, a2[1]);
  v5 = v8[1];
  *a2 = v8[0];
  a2[1] = v5;
  v6 = *(this + 3);

  return CA::Rect::apply_transform(a2->f64, v6);
}

double CA::Render::Updater::MeshOp::map_crop(CA::Render::Updater::MeshOp *this, CA::Rect *a2, float64x2_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  CA::Rect::unapply_transform(a3->f64, *(this + 3));
  CA::Render::MeshTransform::apply_rect(v9, *(this + 4), v6, *(this + 40), *(this + 56), *a3, a3[1]);
  v7 = v9[1];
  *a3 = v9[0];
  a3[1] = v7;
  CA::Rect::apply_transform(a3->f64, *(this + 3));
  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

void CA::Render::Updater::MeshOp::map_bounds(CA::Render::Updater::MeshOp *this, CA::Render::Updater::LayerShapes *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v19, 0, sizeof(v19));
  CA::Rect::unapply_transform(a2, *(this + 3));
  CA::Render::MeshTransform::apply_volume(v19, *(this + 4), v4, *(this + 40), *(this + 56), *a2, *(a2 + 1));
  v5 = *(this + 3);
  *v20 = v19[0];
  v21 = vsubq_f64(*(&v19[1] + 8), v19[0]);
  CA::Rect::apply_transform(v20, v5);
  v7 = v21;
  v8 = v21.f64[1];
  if (v21.f64[0] >= v21.f64[1])
  {
    v9 = v21.f64[1];
  }

  else
  {
    v9 = v21.f64[0];
  }

  if (v9 <= 0.0)
  {
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  else
  {
    if (v21.f64[0] > v21.f64[1])
    {
      v8 = v21.f64[0];
    }

    if (v8 >= 1.79769313e308)
    {
      *a2 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *(a2 + 1) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      *a2 = *v20;
      *(a2 + 1) = v7;
    }
  }

  v10 = *(a2 + 8);
  v11 = v19[2].f64[1];
  *(a2 + 4) = *&v19[1].f64[0];
  *(a2 + 5) = v11;
  if (v10)
  {
    v12 = *(a2 + 1);
    v13 = vceqzq_f64(v12);
    if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0 || (v14 = vceqq_f64(v12, v12), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0))
    {
      v20[0] = 0;
      v20[1] = 0;
    }

    else
    {
      v15 = vcvtmq_s64_f64(vmaxnmq_f64(*a2, vdupq_n_s64(0xC1BFFFFFFF000000)));
      *v20 = vuzp1q_s32(v15, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(*a2, v12), vdupq_n_s64(0x41C0000000000000uLL))), v15));
    }

    CA::shape_union(a2 + 8, v20, v6);
  }

  v16 = *(a2 + 7);
  if (v16)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        goto LABEL_23;
      }
    }

    else if (*(v16 + 1) == 6)
    {
      goto LABEL_23;
    }

    CA::Shape::unref(v16);
    *(a2 + 7) = 1;
  }

LABEL_23:
  v17 = *(a2 + 6);
  if (v17)
  {
    *(v17 + 16) = 1;
    v18 = *(v17 + 8);
    if (v18)
    {
      CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v17, v18);
      *(v17 + 8) = 0;
    }
  }
}

uint64_t CA::Render::Updater::MeshOp::copy(uint64_t a1, uint64_t *a2)
{
  v4 = x_heap_malloc_small_(a2, 0x48uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = 1;
    *(v4 + 18) = 0;
    *v4 = &unk_1EF1F81E0;
  }

  v6 = x_heap_malloc_small_(a2, 0x28uLL);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *v7;
    v9 = v7[1];
    *(v6 + 32) = *(v7 + 4);
    *v6 = v8;
    *(v6 + 16) = v9;
  }

  *(v5 + 24) = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = (v10 + 8);
    if (!atomic_fetch_add((v10 + 8), 1u))
    {
      v10 = 0;
      atomic_fetch_add(v11, 0xFFFFFFFF);
    }
  }

  *(v5 + 32) = v10;
  *(v5 + 40) = *(a1 + 40);
  *(v5 + 56) = *(a1 + 56);
  return v5;
}

void CA::Render::Updater::MeshOp::~MeshOp(CA::Render::Updater::MeshOp *this)
{
  *this = &unk_1EF1F81E0;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 4);
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 16))(v1);
      }
    }
  }

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1F81E0;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 4);
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 16))(v1);
      }
    }
  }
}

void CA::Render::Updater::FilterOp::map_rect(CA::Render::Updater::FilterOp *this, Rect *a2)
{
  if (*(this + 5))
  {
    CA::Render::Updater::FilterOp::apply_filter(this, a2, 0);
  }
}

BOOL CA::Render::TreeWalkingUpdateDelegate::should_decontainer_layer(CA::Render::Context **this, CA::Render::Context *a2, CA::Render::LayerNode *a3, const CA::Render::Layer *a4)
{
  if (this[3] != a2)
  {
    return 0;
  }

  v5 = this[5];
  return v5 != this[6] && *v5 == *(a4 + 19);
}

BOOL CA::Render::TreeWalkingUpdateDelegate::update_layer(CA::Render::TreeWalkingUpdateDelegate *this, CA::Render::Context *a2, atomic_uint *a3, const CA::Render::Layer *a4)
{
  v5 = *(a4 + 19);
  if (*(this + 3) == a2 && **(this + 5) == v5)
  {
    v13 = *(this + 4);
    if (v13 != a3)
    {
      if (v13 && atomic_fetch_add(v13 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v13, a2);
      }

      if (a3)
      {
        atomic_fetch_add(a3 + 4, 1u);
      }

      *(this + 4) = a3;
    }

    return 1;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = *(this + 5);
  v6 = *(this + 6);
  if (v7 == v6)
  {
    return 0;
  }

  v8 = v7 + 8;
  do
  {
    v9 = *(v8 - 8);
    result = v9 == v5;
    v11 = v9 == v5 || v8 == v6;
    v8 += 8;
  }

  while (!v11);
  return result;
}

void CA::Render::TreeWalkingUpdateDelegate::~TreeWalkingUpdateDelegate(CA::Render::TreeWalkingUpdateDelegate *this)
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

void std::vector<X::Ref<CA::Render::Handle>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

float64x2_t CA::Render::Updater::TransformOp::map_scale(uint64_t a1, float64x2_t *a2)
{
  if ((*(a1 + 168) & 0x10) != 0)
  {
    v2.f64[0] = vaddvq_f64(vmulq_f64(*(a1 + 24), *(a1 + 24)));
    v3 = vaddvq_f64(vmulq_f64(*(a1 + 56), *(a1 + 56)));
    v4 = *(a1 + 144);
    if (v4 != 1.0)
    {
      v5 = 1.0 / (v4 * v4);
      v2.f64[0] = v5 * v2.f64[0];
      v3 = v5 * v3;
    }

    v6 = v2.f64[0] != 1.0;
    if (v3 != 1.0)
    {
      v6 = 1;
    }

    v7 = sqrt(v2.f64[0]);
    v8 = sqrt(v3);
    if (v6)
    {
      v3 = v8;
      v2.f64[0] = v7;
    }
  }

  else
  {
    v2.f64[0] = *(a1 + 152);
    v3 = v2.f64[0];
  }

  v2.f64[1] = v3;
  result = vmulq_f64(*a2, v2);
  *a2 = result;
  return result;
}

uint64_t CA::Render::Updater::FlattenZOp::copy(uint64_t a1, uint64_t *a2)
{
  result = x_heap_malloc_small_(a2, 0x18uLL);
  if (result)
  {
    *(result + 16) = 257;
    *result = &unk_1EF1F8338;
    *(result + 18) = 1;
  }

  return result;
}

uint64_t CA::Render::Updater::RasterizationOp::unmap_rect(uint64_t this, float64x2_t *a2)
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
      v6 = *(this + 20);
      *a2 = vaddq_f64(*a2, vdupq_lane_s64(COERCE__INT64(v6), 0));
      v7 = v6 * -2.0;
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

uint64_t CA::Render::Updater::RasterizationOp::map_rect(uint64_t this, float64x2_t *a2)
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
      v6 = -*(this + 20);
      *a2 = vaddq_f64(*a2, vdupq_lane_s64(COERCE__INT64(v6), 0));
      v7 = v6 * -2.0;
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

uint64_t CA::Render::Updater::SDFOp::copy(uint64_t a1, uint64_t *a2)
{
  v4 = x_heap_malloc_small_(a2, 0x30uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = 1;
    *(v4 + 18) = 0;
    *v4 = &unk_1EF1F8470;
  }

  v6 = x_heap_malloc_small_(a2, 0x28uLL);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *v7;
    v9 = v7[1];
    *(v6 + 32) = *(v7 + 4);
    *v6 = v8;
    *(v6 + 16) = v9;
  }

  *(v5 + 24) = v6;
  *(v5 + 32) = *(a1 + 32);
  *(v5 + 36) = *(a1 + 36);
  return v5;
}

os_log_t ___Z27x_log_get_security_analysisv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "SecurityAnalysis");
  x_log_get_security_analysis(void)::log = result;
  return result;
}

uint64_t CA::Render::Updater::count_sdf_element_layers(uint64_t result, const CA::Render::Layer *a2, CA::Render::SDFState *a3)
{
  while ((*(result + 45) & 4) == 0 && *(result + 36))
  {
    v4 = *(result + 136);
    if (v4)
    {
      v5 = *v4;
      if (v5)
      {
        if (*(v5 + 12) == 47)
        {
          ++*(a2 + 188);
        }
      }
    }

    v6 = *(result + 112);
    if ((*(result + 13) & 0x20) == 0)
    {
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          v8 = (v6 + 24);
          do
          {
            result = *v8;
            if (*v8)
            {
              result = CA::Render::Updater::count_sdf_element_layers(result, a2, a3);
            }

            ++v8;
            --v7;
          }

          while (v7);
        }
      }

      return result;
    }

    result = *(result + 112);
    if (!v6)
    {
      return result;
    }
  }

  return result;
}

void *std::__hash_table<CA::Render::Layer const*,std::hash<CA::Render::Layer const*>,std::equal_to<CA::Render::Layer const*>,std::allocator<CA::Render::Layer const*>>::__emplace_unique_key_args<CA::Render::Layer const*,CA::Render::Layer const* const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void X::small_vector_base<CA::Render::Update::EDRRequest>::grow(uint64_t a1, unint64_t a2)
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

  v11 = malloc_type_malloc(16 * v10, 0x100004094CA146DuLL);
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

void CA::Render::Updater::prepare_layer_contents(CA::Render::Updater::GlobalState &,CA::Render::Updater::LocalState &,CA::Render::Object *,CA::Render::Updater::LayerShapes &)::$_0::operator()(uint64_t a1, uint64_t a2, double *a3, int32x4_t a4, int32x4_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  if (v6 <= v7)
  {
    v8 = *(a2 + 12);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v8;
  v9.i64[0] = *a2;
  v9.i64[1] = HIDWORD(*a2);
  v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v9));
  if (v8 <= 1073741822)
  {
    v11 = v6;
  }

  else
  {
    v11 = 1.79769313e308;
  }

  if (v8 <= 1073741822)
  {
    v12 = v7;
  }

  else
  {
    v12 = 1.79769313e308;
  }

  v44 = v10;
  v45.f64[0] = v11;
  v45.f64[1] = v12;
  if (fmax(v11, v12) < 1.79769313e308)
  {
    v13 = v11 >= v12 ? v12 : v11;
    if (v13 > 0.0)
    {
      __asm { FMOV            V3.2D, #-1.0 }

      v44 = vaddq_f64(v10, _Q3);
      v45.f64[0] = v11 + 2.0;
      v45.f64[1] = v12 + 2.0;
      if (v11 + 2.0 <= 0.0 || v12 + 2.0 <= 0.0)
      {
        v45 = 0uLL;
      }
    }
  }

  CA::Rect::apply_transform(&v44, *a1, a3);
  v20 = v45;
  v21 = vclezq_f64(v45);
  if ((vorrq_s8(vdupq_laneq_s64(v21, 1), v21).u64[0] & 0x8000000000000000) == 0)
  {
    v22 = *(a1 + 8);
    v23 = v22[1];
    v24 = vclezq_f64(v23);
    if ((vorrq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) != 0 || (v25 = vaddq_f64(*v22, v23), v26 = vmaxnmq_f64(v44, *v22), v20 = vsubq_f64(vminnmq_f64(vaddq_f64(v44, v45), v25), v26), v27 = vclezq_f64(v20), (vorrq_s8(vdupq_laneq_s64(v27, 1), v27).u64[0] & 0x8000000000000000) != 0))
    {
      v45 = 0uLL;
      v20 = 0uLL;
    }

    else
    {
      v44 = v26;
      v45 = v20;
    }
  }

  v28 = **(a1 + 16);
  if (v28)
  {
    do
    {
      (*(*v28 + 64))(v28, &v44);
      v28 = v28[1];
    }

    while (v28);
    v20 = v45;
  }

  v29 = vclezq_f64(v20);
  if ((vorrq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) == 0)
  {
    v30 = *(a1 + 24);
    v31 = *(v30 + 104);
    v32 = vclezq_f64(v31);
    if ((vorrq_s8(vdupq_laneq_s64(v32, 1), v32).u64[0] & 0x8000000000000000) != 0 || (v33 = *(v30 + 88), v34 = vaddq_f64(v33, v31), v35 = vmaxnmq_f64(v44, v33), v20 = vsubq_f64(vminnmq_f64(vaddq_f64(v44, v20), v34), v35), v36 = vclezq_f64(v20), (vorrq_s8(vdupq_laneq_s64(v36, 1), v36).u64[0] & 0x8000000000000000) != 0))
    {
      v45 = 0uLL;
      v20 = 0uLL;
    }

    else
    {
      v44 = v35;
      v45 = v20;
    }
  }

  v37 = *(a1 + 32);
  v38 = *v37;
  v39 = *(v37 + 64);
  v40 = vceqzq_f64(v20);
  if ((vorrq_s8(vdupq_laneq_s64(v40, 1), v40).u64[0] & 0x8000000000000000) != 0 || (v41 = vceqq_f64(v20, v20), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v41), 1), v41).u64[0] & 0x8000000000000000) != 0))
  {
    v43 = 0uLL;
  }

  else
  {
    v42 = vcvtmq_s64_f64(vmaxnmq_f64(v44, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v43 = vuzp1q_s32(v42, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v44, v20), vdupq_n_s64(0x41C0000000000000uLL))), v42));
  }

  CA::Render::Context::invalidate(v39, &v43, v19);
  CA::Render::Update::invalidate_backdrops(v38, &v43, 0, 0xFFFFFFFF);
}

const void **X::CFRef<__CFData const*>::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *a1 = cf;
    CFRetain(cf);
  }

  return a1;
}

void X::small_vector_base<unsigned int>::grow(int **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = (a1[3] + 1) | ((a1[3] + 1) >> 1);
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

  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v14 = v11;
    v15 = *a1;
    do
    {
      v16 = *v15++;
      *v14++ = v16;
    }

    while (v15 != v13);
  }

  if (v3 != v5)
  {
    free(v12);
  }

  *a1 = v11;
  a1[1] = (v11 + v4 - v3);
  a1[3] = v10;
}

void std::vector<CA::Render::Update::SecureIndicator>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x492492492492492)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x249249249249249)
    {
      v12 = 0x492492492492492;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::Update::SecureIndicator>>(v12);
    }

    v13 = 56 * v9;
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    *(v13 + 48) = *(a2 + 6);
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    v8 = 56 * v9 + 56;
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
  }

  *(a1 + 8) = v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::Update::SecureIndicator>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void ___ZN2CA6Render6Update20add_secure_indicatorENS1_15SecureIndicatorE_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v0 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_183AA6000, v0, OS_LOG_TYPE_FAULT, "SIL being dropped due to non finite property", v1, 2u);
  }
}

void CA::Render::Updater::UnionRectOp::map_bounds(CA::Render::Updater::UnionRectOp *this, CA::Render::Updater::LayerShapes *a2, const CA::Bounds *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v4 = *(this + 40);
  v5 = vclezq_f64(v3);
  v6 = vclezq_f64(v4);
  v7 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v6, v5), vzip2q_s64(v6, v5))));
  if (v7.i8[4])
  {
    if (v7.i8[0])
    {
      goto LABEL_7;
    }

    v8 = *(this + 24);
  }

  else
  {
    if (v7.i8[0])
    {
      goto LABEL_7;
    }

    v9 = *(this + 24);
    v10 = vaddq_f64(*a2, v3);
    v8 = vminnmq_f64(*a2, v9);
    v4 = vsubq_f64(vmaxnmq_f64(v10, vaddq_f64(v9, v4)), v8);
  }

  *a2 = v8;
  *(a2 + 1) = v4;
LABEL_7:
  if (*(a2 + 8))
  {
    v11 = *(this + 40);
    v12 = vceqzq_f64(v11);
    if ((vorrq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0] & 0x8000000000000000) != 0 || (v13 = vceqq_f64(v11, v11), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v13), 1), v13).u64[0] & 0x8000000000000000) != 0))
    {
      v16 = 0uLL;
    }

    else
    {
      v14 = *(this + 24);
      v15 = vcvtmq_s64_f64(vmaxnmq_f64(v14, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v16 = vuzp1q_s32(v15, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v14, v11), vdupq_n_s64(0x41C0000000000000uLL))), v15));
    }

    CA::shape_union(a2 + 8, &v16, a3);
  }
}

__n128 CA::Render::Updater::UnionRectOp::copy(uint64_t a1, uint64_t *a2)
{
  v3 = x_heap_malloc_small_(a2, 0x38uLL);
  *(v3 + 16) = 1;
  *(v3 + 18) = 0;
  *v3 = &unk_1EF1F84D8;
  *(v3 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v3 + 40) = result;
  return result;
}

void CA::Render::Update::invalidate(CA::Shape **this, const CA::Bounds *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  CA::Shape::operator=(v4, a2);
  CA::shape_union(this + 2, v4, v3);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

CA::Shape *CA::Render::Update::set_color_flush_shape(CA::Render::Update *this, const CA::Shape *a2)
{
  result = *(this + 9);
  if (result != a2)
  {
    CA::Shape::unref(result);
    result = CA::Shape::ref(a2, v5);
    *(this + 9) = result;
  }

  return result;
}

void CA::Render::Update::print_trees(CA::Render::Update *this)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  *buf = 0uLL;
  CA::Shape::get_bounds(*(this + 2), buf);
  X::Stream::printf(v5, "\n** Render tree at time %f (bounds %d,%d %dx%d) **\n\n", *(this + 10), *buf, *&buf[4], *&buf[8], *&buf[12]);
  for (i = *(this + 31); i != (this + 240); i = i[1])
  {
    CA::Render::show_object(v5, i[4]);
    X::Stream::printf(v5, "\n");
  }

  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  v3 = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = x_stream_get(v5);
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v5[0])
  {
    free(v5[0]);
  }
}

void CA::Render::Update::set_display_attributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E96B4 != 0.0)
  {
    *(a1 + 12) = dword_1ED4E96B4;
  }

  if (*&dword_1ED4E96B8 != 0.0)
  {
    *(a1 + 16) = dword_1ED4E96B8;
  }

  if (*&dword_1ED4E968C != 0.0)
  {
    *(a1 + 20) = dword_1ED4E968C;
  }

  v10 = *&dword_1ED4E96D4;
  if (*&dword_1ED4E96D4 != 0.0)
  {
    v11 = *(a1 + 12);
    v12 = *(a2 + 20);
    if (*&dword_1ED4E96D4 >= v12)
    {
      v10 = *(a2 + 20);
    }

    *(a1 + 20) = v10;
    *(a1 + 12) = (v10 * v11) / v12;
  }

  if (*&dword_1ED4E972C != 0.0)
  {
    *(a1 + 32) = dword_1ED4E972C;
  }

  v13 = *&dword_1ED4E96BC;
  if (*&dword_1ED4E96BC)
  {
    *(a1 + 68) = v13;
  }

  else
  {
    v13 = *(a1 + 68);
  }

  if (v13 != 2 && v13 != 5)
  {
    if (v13 == 6)
    {
      if ((*(a1 + 62) & 1) == 0)
      {
        return;
      }
    }

    else if (v13 - 3 > 1)
    {
      return;
    }
  }

  *(a1 + 60) = 1;
}

uint64_t CA::Render::Update::subtract_corner_radii_clipping_from_shape(uint64_t this, CA::Shape **a2, CA::Shape **a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = this;
    v4 = *(this + 40);
    if ((v4 & 0x10000000000) == 0)
    {
      return 0;
    }

    v6 = *(this + 136);
    v7 = 0.0;
    v8 = 0.0;
    if (v6)
    {
      v8 = *(v6 + 232);
    }

    if ((v4 & 0xF0000) != 0)
    {
      v7 = v8;
    }

    if (v6 && *(v6 + 72))
    {
      CA::Render::Layer::max_corner_radii(v6);
      v7 = v11;
    }

    if (v7 <= 0.0)
    {
      return 0;
    }

    v9 = *(v3 + 88);
    v10 = v7;
    if (v9 >= *(v3 + 96))
    {
      v9 = *(v3 + 96);
    }

    if (v9 * 0.5 < v10)
    {
      v12[0] = 0;
      v12[1] = 0;
      CA::shape_intersect(a2, v12, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t CA::Render::LayerNode::hit_test_sublayers_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1 + 96;
  v4 = *(a1 + 104);
  if (v4 == a1 + 96)
  {
    return 0;
  }

  while (1)
  {
    if (*(*(v4 + 32) + 152) || (*(v4 + 27) & 4) != 0)
    {
      result = CA::Render::LayerNode::hit_test_(v4, a2, a3);
      if (result)
      {
        break;
      }
    }

    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      return 0;
    }
  }

  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    v9 = *(a1 + 32);
    v10 = result;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v11 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v12 = *(v9 + 128);
        if (v12)
        {
          v13 = *(v12 + 6);
          v12 += 28;
          if (!v13)
          {
            v12 = 0;
          }
        }
      }

      else
      {
        v12 = "";
      }

      v14 = 136316162;
      v15 = "accepting";
      v16 = 2048;
      v17 = v9;
      v18 = 2080;
      v19 = v12;
      v20 = 2080;
      v21 = " - ";
      v22 = 2080;
      v23 = "hit sublayer";
      _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "HitTest: %s layer %p %s%s%s", &v14, 0x34u);
    }

    return v10;
  }

  return result;
}

uint64_t CA::Render::LayerNode::hit_test_(uint64_t a1, float64x2_t *a2, uint64_t a3, const char *a4)
{
  v5 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *a2;
  v67 = *a2;
  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v51 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v52 = *(v6 + 128);
        if (v52)
        {
          v53 = *(v52 + 6);
          v52 += 28;
          if (!v53)
          {
            v52 = 0;
          }
        }
      }

      else
      {
        v52 = "";
      }

      *buf = 136316162;
      *&buf[4] = "entering";
      *&buf[12] = 2048;
      *&buf[14] = v6;
      *&buf[22] = 2080;
      *&buf[24] = v52;
      v69 = 2080;
      v70 = "";
      v71 = 2080;
      v72 = "";
      _os_log_impl(&dword_183AA6000, v51, OS_LOG_TYPE_DEFAULT, "HitTest: %s layer %p %s%s%s", buf, 0x34u);
    }
  }

  v8 = *(v5 + 24);
  if ((v8 & 0x200) != 0)
  {
    if (BYTE4(xmmword_1ED4E982C) != 1)
    {
      return 0;
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v10 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    if (v6)
    {
      v55 = *(v6 + 128);
      if (v55)
      {
        v56 = *(v55 + 6);
        v55 += 28;
        if (!v56)
        {
          v55 = 0;
        }
      }
    }

    else
    {
      v55 = "";
    }

    *buf = 136316162;
    *&buf[4] = "rejecting";
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2080;
    *&buf[24] = v55;
    v69 = 2080;
    v70 = " - ";
    v71 = 2080;
    v13 = "kCAContextIgnoresHitTest";
    goto LABEL_127;
  }

  v9 = *(v6 + 48);
  if ((v9 & 0x10) == 0)
  {
    if (BYTE4(xmmword_1ED4E982C) != 1)
    {
      return 0;
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v10 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v11 = *(v6 + 128);
    if (v11)
    {
      v12 = *(v11 + 24);
      v11 += 28;
      if (!v12)
      {
        v11 = 0;
      }
    }

    *buf = 136316162;
    *&buf[4] = "rejecting";
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2080;
    *&buf[24] = v11;
    v69 = 2080;
    v70 = " - ";
    v71 = 2080;
    v13 = "allowsHitTesting = NO";
    goto LABEL_127;
  }

  if ((v9 & 0x20) != 0)
  {
    if (BYTE4(xmmword_1ED4E982C) == 1)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v57 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(v6 + 128);
        if (v58)
        {
          v59 = *(v58 + 24);
          v58 += 28;
          if (!v59)
          {
            v58 = 0;
          }
        }

        *buf = 136316162;
        *&buf[4] = "skipping";
        *&buf[12] = 2048;
        *&buf[14] = v6;
        *&buf[22] = 2080;
        *&buf[24] = v58;
        v69 = 2080;
        v70 = " - ";
        v71 = 2080;
        v72 = "skipHitTesting = YES";
        _os_log_impl(&dword_183AA6000, v57, OS_LOG_TYPE_DEFAULT, "HitTest: %s layer %p %s%s%s", buf, 0x34u);
      }
    }

    return CA::Render::LayerNode::hit_test_sublayers_(v5, &v67, a3);
  }

  v15 = ((*(v5 + 24) & 0x18) != 0) | a3;
  if (((*(v5 + 24) & 0x18) != 0) | a3 & 1)
  {
    if ((v8 & 0x400000) != 0)
    {
      v16 = 0;
      goto LABEL_31;
    }

    if (BYTE4(xmmword_1ED4E982C) != 1)
    {
      return 0;
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v10 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v18 = *(v6 + 128);
    if (v18)
    {
      v19 = *(v18 + 24);
      v18 += 28;
      if (!v19)
      {
        v18 = 0;
      }
    }

    *buf = 136316162;
    *&buf[4] = "rejecting";
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2080;
    *&buf[24] = v18;
    v69 = 2080;
    v70 = " - ";
    v71 = 2080;
    v13 = "culled above and hitTestsAsOpaque = NO";
LABEL_127:
    v72 = v13;
    _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "HitTest: %s layer %p %s%s%s", buf, 0x34u);
    return 0;
  }

  v16 = (a3 >> 1) & 1;
LABEL_31:
  v20 = *(v6 + 40);
  if ((v20 & 0x40000000000) != 0 || (LOBYTE(v7.f64[0]) = *(v6 + 36), (LODWORD(v7.f64[0]) * 0.0039216) <= 0.0))
  {
    if (BYTE4(xmmword_1ED4E982C) != 1)
    {
      return 0;
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v10 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v23 = *(v6 + 128);
    if (v23)
    {
      v24 = *(v23 + 24);
      v23 += 28;
      if (!v24)
      {
        v23 = 0;
      }
    }

    *buf = 136316162;
    *&buf[4] = "rejecting";
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2080;
    *&buf[24] = v23;
    v69 = 2080;
    v70 = " - ";
    v71 = 2080;
    v13 = "hidden = YES or opacity = 0";
    goto LABEL_127;
  }

  v21 = *(v5 + 56);
  if (v21)
  {
    CA::Mat4Impl::mat4_invert(buf, v21, a3);
    CA::Mat4Impl::mat4_unapply_inverse_to_point2(buf, v67.f64, v22);
  }

  else
  {
    v67 = vsubq_f64(v67, *(v5 + 64));
  }

  v25 = *(v6 + 88);
  *buf = *(v6 + 72);
  *&buf[16] = v25;
  v61 = v25;
  v62 = *buf;
  v26 = *(v6 + 136);
  v27 = 0.0;
  if (v26)
  {
    v27 = *(v26 + 232);
  }

  v28 = v27;
  if ((v20 & 0x10000000000) != 0 && !CA_CGRoundRectContainsPoint(buf, v27, v67.f64[0], v67.f64[1]))
  {
    v30 = "masksToBounds = YES and not in bounds";
    goto LABEL_105;
  }

  v29 = *(v5 + 128);
  if (!v29 || (CA::Render::LayerNode::hit_test_(v29, &v67, 0) == 0) == (*(v6 + 45) & 2) >> 1)
  {
    if ((v16 & 1) == 0)
    {
      v17 = CA::Render::LayerNode::hit_test_sublayers_(v5, &v67, v15);
      if (v17)
      {
        return v17;
      }
    }

    v31 = *(v6 + 48);
    if ((v31 & 0x4000) != 0)
    {
      v32 = vaddq_f64(v61, v62);
      v33 = vmovn_s64(vcgtq_f64(v32, v62));
      if (v33.i32[0] & v33.i32[1])
      {
        v34 = vmovn_s64(vmvnq_s8(vcgeq_f64(v67, v32)));
        v35 = vuzp1_s16(v34, v34);
        v35.i32[1] = vuzp1_s16(v35, vmovn_s64(vmvnq_s8(vcgtq_f64(*&v62, v67)))).i32[1];
        if (vminv_u16(v35))
        {
          v37 = "hitTestsAsOpaque = YES and in bounds";
          goto LABEL_115;
        }
      }
    }

    if (v15)
    {
      v30 = "culled above";
      goto LABEL_105;
    }

    if ((v31 & 0x20000) == 0)
    {
      v36 = *(v6 + 136);
      if (!v36)
      {
        goto LABEL_76;
      }

      if (!v36[10])
      {
        goto LABEL_130;
      }
    }

    if (CA_CGRoundRectContainsPoint(buf, v28, v67.f64[0], v67.f64[1]))
    {
      v37 = "within background color";
LABEL_115:
      CA::Render::print_hit_test(v6, "accepting", v37, a4);
      return v5;
    }

    v36 = *(v6 + 136);
    if (v36)
    {
LABEL_130:
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v36 + 244))))) & 1) != 0 || v36[16])
      {
        v38 = *(v36 + 60);
        if (v38 > 0.0)
        {
          v39 = v38;
          v40 = *(v36 + 59);
          v74.size.width = v61.f64[0];
          v74.origin = v62;
          v74.size.height = v61.f64[1];
          v75 = CGRectInset(v74, -v40, -v40);
          v64.f64[0] = v75.origin.x;
          v64.f64[1] = v75.origin.y;
          width = v75.size.width;
          height = v75.size.height;
          v63 = CGRectInset(v75, v39, v39);
          v41 = v40 + v28;
          if (v41 >= 0.0)
          {
            v42 = v41;
          }

          else
          {
            v42 = 0.0;
          }

          v43 = v67.f64[1];
          v60 = v67.f64[0];
          if (CA_CGRoundRectContainsPoint(v64.f64, v42, v67.f64[0], v67.f64[1]))
          {
            v44 = v41 - v39;
            if (v41 - v39 < 0.0)
            {
              v44 = 0.0;
            }

            if (!CA_CGRoundRectContainsPoint(&v63.origin.x, v44, v60, v43))
            {
              v37 = "within border";
              goto LABEL_115;
            }
          }

          v36 = *(v6 + 136);
        }
      }
    }

LABEL_76:
    v45 = *(v5 + 48);
    if (v45)
    {
      if (v36)
      {
        v46 = *v36;
        if (*v36)
        {
          if (*(v46 + 12) == 47 && *(v46 + 16) == 1)
          {
            goto LABEL_99;
          }
        }
      }

      if ((*(v6 + 40) & 0xF000) != 0x9000 || (*(v6 + 48) & 0x40) != 0)
      {
        if (CA::Render::hit_test_contents(v6, v45, *(v5 + 24) & 1, v67.f64[0], v67.f64[1]))
        {
LABEL_87:
          v37 = "within contents";
          goto LABEL_115;
        }

        v36 = *(v6 + 136);
      }

      else
      {
        v47 = vaddq_f64(v61, v62);
        v48 = vmovn_s64(vcgtq_f64(v47, v62));
        if (v48.i32[0] & v48.i32[1])
        {
          v49 = vmovn_s64(vmvnq_s8(vcgeq_f64(v67, v47)));
          v50 = vuzp1_s16(v49, v49);
          v50.i32[1] = vuzp1_s16(v50, vmovn_s64(vmvnq_s8(vcgtq_f64(*&v62, v67)))).i32[1];
          if (vminv_u16(v50))
          {
            goto LABEL_87;
          }
        }
      }
    }

    if (!v36)
    {
LABEL_102:
      if (!v16 || (v17 = CA::Render::LayerNode::hit_test_sublayers_(v5, &v67, v15)) == 0)
      {
        v30 = "no hits";
        goto LABEL_105;
      }

      return v17;
    }

LABEL_99:
    v54 = *v36;
    if (*v36)
    {
      v64 = v67;
      if ((*(*v54 + 224))(v54, v6, &v64))
      {
        v37 = "subclass";
        goto LABEL_115;
      }
    }

    goto LABEL_102;
  }

  v30 = "mask not hit";
LABEL_105:
  CA::Render::print_hit_test(v6, "rejecting", v30, a4);
  return 0;
}

double CA::TransformDetails::unapply<CA::Transform,double>(uint64_t a1, double *a2, double *a3)
{
  *a2 = *a2 - *(a1 + 96);
  result = *a3 - *(a1 + 104);
  *a3 = result;
  v4 = *(a1 + 144);
  if (v4)
  {
    result = -result;
    *a3 = result;
    v4 = *(a1 + 144);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a1 + 144) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = -*a2;
  *a2 = result;
  v4 = *(a1 + 144);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    *a2 = *a2 * *(a1 + 136);
    result = *a3 * *(a1 + 136);
    *a3 = result;
    return result;
  }

LABEL_8:
  v5 = *a2;
  *a2 = *a3;
  result = -v5;
  *a3 = result;
  if ((*(a1 + 144) & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

unsigned int *CA::Render::HitTestTree::get_secure_superlayers_validation_start_node(uint64_t a1, unsigned int *a2)
{
  while (1)
  {
    v3 = a2[8];
    if (v3)
    {
      break;
    }

    v4 = *a2;
    a2 = (a2 - v4);
    if (!v4)
    {
      return 0;
    }
  }

  if (std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>((a1 + 24), v3))
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t CA::Render::HitTestTree::Node::subtree_occludes_slot(int32x2_t *this, unsigned int a2, int32x2_t *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = this[6];
  v4 = vclez_s32(v3);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = a3[1];
  v7 = vclez_s32(v6);
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = this;
  v9 = this[5];
  v10 = vadd_s32(v9, v3);
  v11 = vadd_s32(*a3, v6);
  v12 = vclez_s32(vsub_s32(vmin_s32(v10, v11), vmax_s32(v9, *a3)));
  if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = this[1];
  if ((*&v13 & 0x200000000000000) != 0)
  {
    return 0;
  }

  if ((*&v13 & 0x400000000000000) != 0)
  {
    v15 = this[8];
    v16 = vclez_s32(v15);
    if ((vpmax_u32(v16, v16).u32[0] & 0x80000000) != 0 || (v17 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(this[7], v15), v11), vmax_s32(this[7], *a3))), (vpmax_u32(v17, v17).u32[0] & 0x80000000) != 0))
    {
      if ((*&v13 & 0xFFFFFFLL) != 0)
      {
        v19 = 0;
        v20 = (this + ((*&v13 >> 30) & 0x3FCLL));
        do
        {
          result = CA::Render::HitTestTree::Node::subtree_occludes_slot(v20, a2, a3);
          if (result)
          {
            break;
          }

          v20 = (v20 + v20[1]);
          ++v19;
        }

        while (v19 < (v8[1].i32[0] & 0xFFFFFFu));
        return result;
      }

      return 0;
    }
  }

  if (BYTE4(xmmword_1ED4E982C) != 1)
  {
    return 1;
  }

  v21 = this[2];
  if (v21)
  {
    v23 = v21[9];
    v22 = v21[10];
    v25 = v21[11];
    v24 = v21[12];
    v26 = v21[7];
    v27 = v21[8];
  }

  else
  {
    v24 = 0xBFF0000000000000;
    v25 = 0xBFF0000000000000;
    v22 = 0xBFF0000000000000;
    v23 = 0xBFF0000000000000;
    v26 = 0xBFF0000000000000;
    v27 = 0xBFF0000000000000;
  }

  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v28 = x_log_get_render(void)::log;
  v29 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_INFO);
  result = 1;
  if (v29)
  {
    v30 = v8[2];
    v31 = "No Name";
    if (v30)
    {
      v32 = *(*&v30 + 128);
      if (v32)
      {
        v31 = (v32 + 28);
      }
    }

    v33 = a3->i32[0];
    v34 = a3->i32[1];
    v36 = a3[1].i32[0];
    v35 = a3[1].i32[1];
    v37 = v8[5].i32[0];
    v38 = v8[5].i32[1];
    v39 = v8[6].i32[0];
    v40 = v8[6].i32[1];
    do
    {
      LODWORD(v41) = v8[4].i32[0];
      if (v41)
      {
        break;
      }

      v41 = v8->u32[0];
      v8 = (v8 - v41);
    }

    while (v41);
    v42[0] = 67113474;
    v42[1] = a2;
    v43 = 1024;
    v44 = v33;
    v45 = 1024;
    v46 = v34;
    v47 = 1024;
    v48 = v36;
    v49 = 1024;
    v50 = v35;
    v51 = 2048;
    v52 = v30;
    v53 = 2080;
    v54 = v31;
    v55 = 1024;
    v56 = v37;
    v57 = 1024;
    v58 = v38;
    v59 = 1024;
    v60 = v39;
    v61 = 1024;
    v62 = v40;
    v63 = 2048;
    v64 = v26;
    v65 = 2048;
    v66 = v27;
    v67 = 2048;
    v68 = v23;
    v69 = 2048;
    v70 = v22;
    v71 = 2048;
    v72 = v25;
    v73 = 2048;
    v74 = v24;
    v75 = 1024;
    v76 = v41;
    _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_INFO, "Slot <%d> [%d %d %d %d] occluded by layer <%p> (%s) [%d %d %d %d] [%f %f] [%f %f %f %f] from context 0x%x", v42, 0x8Eu);
    return 1;
  }

  return result;
}

uint64_t CA::Render::HitTestTree::Node::subtract_subtree_occlusion_from_shape(int32x2_t *this, int32x2_t *a2, CA::Shape **a3, int (*a4)[13])
{
  v62 = *MEMORY[0x1E69E9840];
  if ((*a3 & 1) == 0 && *(*a3 + 1) > 256)
  {
    return 1;
  }

  v9 = this[6];
  v10 = vclez_s32(v9);
  if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v11 = a2[1];
  v12 = vclez_s32(v11);
  if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(this[5], v9), vadd_s32(*a2, v11)), vmax_s32(this[5], *a2)));
  LODWORD(v14) = vpmax_u32(v13, v13).u32[0];
  if ((LODWORD(v14) & 0x80000000) != 0)
  {
    return 0;
  }

  v15 = this[1];
  if ((*&v15 & 0x2200000000000000) != 0)
  {
    return 0;
  }

  if ((*&v15 & 0x8000000000000000) == 0 || (v23 = this[2]) == 0)
  {
LABEL_10:
    v16 = this[8];
    v17 = vclez_s32(v16);
    if ((vpmax_u32(v17, v17).u32[0] & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    v18 = vclez_s32(v11);
    if ((vpmax_u32(v18, v18).u32[0] & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    v19 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(this[7], v16), vadd_s32(*a2, v11)), vmax_s32(this[7], *a2)));
    if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    CA::shape_subtract(a3, &this[7], a3);
    if (byte_1ED4E988A == 1)
    {
      if (x_log_get_security_analysis(void)::once != -1)
      {
        dispatch_once(&x_log_get_security_analysis(void)::once, &__block_literal_global_6065);
      }

      v27 = x_log_get_security_analysis(void)::log;
      if (os_log_type_enabled(x_log_get_security_analysis(void)::log, OS_LOG_TYPE_INFO))
      {
        v28 = this[2];
        v29 = "No Name";
        if (v28)
        {
          v30 = *(*&v28 + 128);
          if (v30)
          {
            v29 = (v30 + 28);
          }
        }

        v31 = this[7].i32[0];
        v32 = this[7].i32[1];
        v33 = this[8].i32[0];
        v35 = this[8].i32[1];
        v36 = a2->i32[0];
        v37 = a2->i32[1];
        v38 = a2[1].i32[0];
        v39 = a2[1].i32[1];
        v34 = CA::Shape::area(*a3);
        *buf = 136317698;
        v41 = v29;
        v42 = 2048;
        v43 = v28;
        v44 = 1024;
        v45 = v31;
        v46 = 1024;
        v47 = v32;
        v48 = 1024;
        v49 = v33;
        v50 = 1024;
        v51 = v35;
        v52 = 1024;
        v53 = v36;
        v54 = 1024;
        v55 = v37;
        v56 = 1024;
        v57 = v38;
        v58 = 1024;
        v59 = v39;
        v60 = 2048;
        v61 = v34;
        _os_log_impl(&dword_183AA6000, v27, OS_LOG_TYPE_INFO, "Layer (%s) <%p> [%d %d %d %d] occludes view [%d %d %d %d] unoccluded area is now %ld", buf, 0x50u);
      }
    }

    if (this[7].i32[0] != this[5].i32[0] || this[7].i32[1] != this[5].i32[1] || this[8].i32[0] != this[6].i32[0] || this[8].i32[1] != this[6].i32[1])
    {
LABEL_18:
      v20 = this[1];
      if ((*&v20 & 0xFFFFFFLL) != 0)
      {
        v21 = 0;
        v22 = (this + ((*&v20 >> 30) & 0x3FCLL));
        do
        {
          CA::Render::HitTestTree::Node::subtract_subtree_occlusion_from_shape(v22, a2, a3, a4);
          v22 = (v22 + v22[1]);
          ++v21;
        }

        while (v21 < (this[1].i32[0] & 0xFFFFFFu));
      }
    }

    return 1;
  }

  valid_occlusion = CA::Render::Layer::get_valid_occlusion(v23, *v11.i32, v14);
  v25 = (*a4)[valid_occlusion];
  if (!v25)
  {
    v11 = a2[1];
    goto LABEL_10;
  }

  v26 = valid_occlusion;
  result = 0;
  (*a4)[v26] = v25 - 1;
  return result;
}

void std::vector<X::Ref<CA::Render::Handle>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
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

    v11 = (8 * v7);
    v12 = &v11[-((v4 - *a1) >> 3)];
    *v11 = *a2;
    v5 = v11 + 1;
    *a2 = 0;
    if (v6 != v4)
    {
      v13 = v6;
      v14 = v12;
      do
      {
        *v14++ = *v13;
        *v13++ = 0;
      }

      while (v13 != v4);
      do
      {
        v15 = *v6;
        if (*v6 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v15 + 16))(v15);
        }

        ++v6;
      }

      while (v6 != v4);
      v6 = *a1;
    }

    *a1 = v12;
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
    *a2 = 0;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void CARenderUpdateBegin2(double a1, double a2, float64x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *(a9 + 16);
  a3.f64[0] = 0.0;
  v10 = vdupq_lane_s64(vcgtq_f64(a3, v9).i64[0], 0);
  v11.i64[1] = *(a9 + 24);
  *v11.i64 = -v9.f64[0];
  v12 = vbslq_s8(v10, v11, v9);
  v13 = vdupq_lane_s64(vcgtq_f64(a3, vdupq_laneq_s64(v9, 1)).i64[0], 0);
  v14.i64[0] = v12.i64[0];
  v14.i64[1] = *&vnegq_f64(v9).f64[1];
  v15 = vbslq_s8(v13, v14, v12);
  v16 = vceqzq_f64(v15);
  if ((vorrq_s8(vdupq_laneq_s64(v16, 1), v16).u64[0] & 0x8000000000000000) != 0 || (v17 = vceqq_f64(v15, v15), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v17), 1), v17).u64[0] & 0x8000000000000000) != 0))
  {
    v23 = 0uLL;
  }

  else
  {
    v18 = vaddq_f64(v9, *a9);
    v19.i64[0] = vbslq_s8(v10, v18, *a9).u64[0];
    v20.i64[0] = v19.i64[0];
    v20.i64[1] = *(a9 + 8);
    v19.i64[1] = v18.i64[1];
    v21 = vbslq_s8(v13, v19, v20);
    v22 = vcvtmq_s64_f64(vmaxnmq_f64(v21, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v23 = vuzp1q_s32(v22, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v21, v15), vdupq_n_s64(0x41C0000000000000uLL))), v22));
  }

  operator new();
}

uint64_t CARenderPresentAcquire(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = 0;
  v2 = &v3;
  std::__tree<CA::Render::Object *>::swap((a1 + 960), &v2);
  if (v4)
  {
    operator new();
  }

  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v3);
  return 0;
}

uint64_t CARenderPresentRelease(uint64_t result, double a2, double a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);
    v5 = (result + 24);
    if (v4 != (result + 24))
    {
      v7 = *result;
      v8 = a2 - a3;
      do
      {
        v9 = v4[4];
        if (*(v9 + 12) != 25)
        {
          __assert_rtn("CARenderPresentRelease", "render-updater.cpp", 18714, "obj->type () == Render::kTypeImageQueue");
        }

        CA::Render::ImageQueue::did_display(v9, v7, a2, v8, 0.0);
        v10 = v4[4];
        if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v10 + 16))(v10);
        }

        v11 = v4[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v4[2];
            v13 = *v12 == v4;
            v4 = v12;
          }

          while (!v13);
        }

        v4 = v12;
      }

      while (v12 != v5);
    }

    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*(v3 + 24));

    JUMPOUT(0x1865EA9A0);
  }

  return result;
}

uint64_t CARenderUpdateSetAllowsHostedContexts(uint64_t result, int a2)
{
  v2 = 0x2000;
  if (!a2)
  {
    v2 = 0;
  }

  *(result + 1376) = *(result + 1376) & 0xFFFFFFFFFFFFDFFFLL | v2;
  return result;
}

uint64_t CARenderUpdateSetSkipsBackdropCollect(uint64_t result, int a2)
{
  v2 = 0x4000;
  if (!a2)
  {
    v2 = 0;
  }

  *(result + 1376) = *(result + 1376) & 0xFFFFFFFFFFFFBFFFLL | v2;
  return result;
}

void CARenderUpdateSetExcludedLayerIdentifiers(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 1016);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 1016) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void CARenderUpdateAddContext(CA::Render::Update *a1, CA::Render::Context *this)
{
  v4 = CA::Render::Context::root_layer_handle(this);
  if (v4)
  {
    v5 = *(v4 + 2);
  }

  else
  {
    v5 = 0;
  }

  CA::Render::Update::add_context(a1, this, v5, 0);

  CA::Render::Update::added_all_contexts(a1, v6, v7);
}

void CARenderUpdateAddContext3(CA::Render::Update *a1, CA::Render::Context *this)
{
  v4 = CA::Render::Context::root_layer_handle(this);
  if (v4)
  {
    v5 = *(v4 + 2);
  }

  else
  {
    v5 = 0;
  }

  CA::Render::Update::add_context(a1, this, v5, 0);
}

void CARenderUpdateRemoveContextNode(uint64_t a1, CA::Render::Context *this)
{
  v3 = CA::Render::Context::root_layer_handle(this);
  if (v3)
  {
    v5 = *(v3 + 2);
    if (v5)
    {
      if ((*(a1 + 1376) & 1) == 0)
      {
        v6 = *(v5 + 152);
        if (v6)
        {
          v7 = *(v6 + 40);
          if (v7)
          {
            for (i = *(a1 + 248); i != (a1 + 240); i = i[1])
            {
              if (i == v7)
              {
                v10 = *v7;
                v9 = *(v7 + 1);
                *(v10 + 8) = v9;
                *v9 = v10;
                *v7 = v7;
                *(v7 + 1) = v7;
                if (atomic_fetch_add(v7 + 4, 0xFFFFFFFF) == 1)
                {

                  CA::Render::LayerNode::delete_node(v7, v4);
                }

                return;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t CARenderUpdateGetFlags(uint64_t a1)
{
  v1 = *(a1 + 304);
  v2 = v1 & 6 | ((v1 & 1) << 22) | (v1 >> 5) & 8 | (16 * ((v1 >> 3) & 3)) | 0x40;
  if ((v1 & 0x38000) == 0)
  {
    v2 = v1 & 6 | ((v1 & 1) << 22) | (v1 >> 5) & 8 | (16 * ((v1 >> 3) & 3));
  }

  return (v1 >> 6) & 0x100 | (v1 >> 5) & 0x80 | (v1 >> 11) & 0x1000 | (v1 >> 5 << 13) | (v1 >> 9) & 0x70000 | (v1 >> 29 << 19) & 0xFF7FFFFF | (((v1 >> 19) & 1) << 23) | (v1 >> 8) & 0x3000000 | (v1 << 8) & 0x4000000 | v2;
}

int8x8_t CARenderUpdateAddFlags(uint64_t a1, unsigned int a2)
{
  v2 = vdupq_n_s32(a2);
  v3.i64[0] = vshlq_u32(v2, xmmword_183E21300).u64[0];
  v5 = vshlq_u32(v2, xmmword_183E21310);
  v3.i64[1] = vshlq_u32(v2, xmmword_183E21320).i64[1];
  v4 = vshlq_u32(v2, xmmword_183E21330);
  v5.i32[3] = v4.i32[3];
  v6 = v5.i16[2] & 0x100 | a2 & 6 | (a2 >> 1) & 0x18;
  if ((a2 & 0x40) != 0)
  {
    v6 |= 0x38000uLL;
  }

  v7 = v4.i32[3] & 0x40000;
  v8 = vorrq_s8(vandq_s8(v5, xmmword_183E21350), vandq_s8(v3, xmmword_183E21340));
  result = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  *(a1 + 304) |= (result.i32[0] | result.i32[1]) | ((((a2 & 0x3000000) >> 24) & 3) << 32) | v7 | v6;
  return result;
}

void CARenderUpdateAddRect(uint64_t a1, uint64_t a2, double a3, double a4, float64x2_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  a5.f64[0] = 0.0;
  v7 = vdupq_lane_s64(vcgtq_f64(a5, v6).i64[0], 0);
  v8.i64[1] = *(a2 + 24);
  *v8.i64 = -v6.f64[0];
  v9 = vbslq_s8(v7, v8, v6);
  v10 = vdupq_lane_s64(vcgtq_f64(a5, vdupq_laneq_s64(v6, 1)).i64[0], 0);
  v11.i64[0] = v9.i64[0];
  v11.i64[1] = *&vnegq_f64(v6).f64[1];
  v12 = vbslq_s8(v10, v11, v9);
  v13 = vceqzq_f64(v12);
  if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0 || (v14 = vceqq_f64(v12, v12), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0))
  {
    v21 = 0uLL;
  }

  else
  {
    v15 = vaddq_f64(v6, *a2);
    v16.i64[0] = vbslq_s8(v7, v15, *a2).u64[0];
    v17.i64[0] = v16.i64[0];
    v17.i64[1] = *(a2 + 8);
    v16.i64[1] = v15.i64[1];
    v18 = vbslq_s8(v10, v16, v17);
    v19 = vcvtmq_s64_f64(vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v21 = vuzp1q_s32(v19, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v18, v12), vdupq_n_s64(0x41C0000000000000uLL))), v19));
  }

  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  CA::Shape::operator=(v22, v21.i32);
  CA::shape_union((a1 + 16), v22, v20);
}

unint64_t CARenderUpdateSetRect(uint64_t a1, uint64_t a2, double a3, double a4, float64x2_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  a5.f64[0] = 0.0;
  v7 = vdupq_lane_s64(vcgtq_f64(a5, v6).i64[0], 0);
  v8.i64[1] = *(a2 + 24);
  *v8.i64 = -v6.f64[0];
  v9 = vbslq_s8(v7, v8, v6);
  v10 = vdupq_lane_s64(vcgtq_f64(a5, vdupq_laneq_s64(v6, 1)).i64[0], 0);
  v11.i64[0] = v9.i64[0];
  v11.i64[1] = *&vnegq_f64(v6).f64[1];
  v12 = vbslq_s8(v10, v11, v9);
  v13 = vceqzq_f64(v12);
  if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0 || (v14 = vceqq_f64(v12, v12), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0))
  {
    v22 = 0uLL;
  }

  else
  {
    v15 = vaddq_f64(v6, *a2);
    v16.i64[0] = vbslq_s8(v7, v15, *a2).u64[0];
    v17.i64[0] = v16.i64[0];
    v17.i64[1] = *(a2 + 8);
    v16.i64[1] = v15.i64[1];
    v18 = vbslq_s8(v10, v16, v17);
    v19 = vcvtmq_s64_f64(vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v22 = vuzp1q_s32(v19, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v18, v12), vdupq_n_s64(0x41C0000000000000uLL))), v19));
  }

  CA::Shape::unref(*(a1 + 16));
  result = CA::Shape::new_shape(&v22, v20);
  *(a1 + 16) = result;
  return result;
}

void CARenderUpdateAddRegion(uint64_t a1)
{
  v2 = CA::Shape::new_shape();
  if (v2)
  {
    v4 = v2;
    CA::shape_union((a1 + 16), v2, v3);

    CA::Shape::unref(v4);
  }
}

void CARenderUpdateSetRegion(CA::Render::Update *a1)
{
  v2 = CA::Shape::new_shape();
  if (v2)
  {
    v3 = v2;
    CA::Render::Update::set_shape(a1, v2);

    CA::Shape::unref(v3);
  }
}

uint64_t CARenderUpdateCopyRegion(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_6;
    }

LABEL_7:
    CGSNewRegionWithRect();
    return 0;
  }

  v2 = *(v1 + 4);
  if (v2 == 12)
  {
    goto LABEL_7;
  }

  if (v2 == 6)
  {
LABEL_6:
    CGSNewEmptyRegion();
    return 0;
  }

  CGSNewRegionWithData();
  return 0;
}

int8x16_t CARenderUpdateGetBounds(uint64_t a1, int32x4_t a2, int32x4_t a3)
{
  if (*(a1 + 208) <= *(a1 + 212))
  {
    v3 = *(a1 + 212);
  }

  else
  {
    v3 = *(a1 + 208);
  }

  a2.i32[0] = 1073741822;
  a3.i32[0] = v3;
  v4 = vdupq_lane_s32(*&vcgtq_s32(a3, a2), 0);
  v5 = *(a1 + 200);
  v6.i64[0] = v5;
  v6.i64[1] = SHIDWORD(v5);
  return vbslq_s8(v4, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v6));
}

void *CARenderUpdateResetNextTime(void *result)
{
  result[12] = 0;
  result[13] = 0;
  result[11] = 0x7FF0000000000000;
  return result;
}

double CARenderUpdateGetBeginTime(uint64_t a1)
{
  result = *(a1 + 824);
  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

CA::Render::Update *CARenderUpdateFinish(CA::Render::Update *result, CA::Render::LayerNode *a2)
{
  if (result)
  {
    CA::Render::Update::~Update(result, a2);

    JUMPOUT(0x1865EA9A0);
  }

  return result;
}

void CARenderUpdateSetEDRAttributes(uint64_t a1, float a2, float a3, float a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 400);
  v8 = *(a1 + 384);
  v9 = v4;
  v5 = *(a1 + 496);
  v14 = *(a1 + 480);
  v15 = v5;
  v16 = *(a1 + 512);
  v6 = *(a1 + 432);
  v10 = *(a1 + 416);
  v11 = v6;
  v7 = *(a1 + 464);
  v12 = *(a1 + 448);
  v13 = v7;
  *&v9 = __PAIR64__(LODWORD(a2), LODWORD(a4));
  *(&v8 + 3) = a3;
  CA::Render::Update::set_display_attributes(a1 + 384, &v8);
}

__n128 CARenderUpdateSetDisplayType(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 464);
  v8 = *(a1 + 448);
  v9 = v2;
  v3 = *(a1 + 496);
  v10 = *(a1 + 480);
  v11 = v3;
  v12 = *(a1 + 512);
  v4 = *(a1 + 432);
  v7[2] = *(a1 + 416);
  v7[3] = v4;
  v5 = *(a1 + 400);
  v7[0] = *(a1 + 384);
  v7[1] = v5;
  DWORD1(v8) = a2;
  CA::Render::Update::set_display_attributes(a1 + 384, v7);
  return result;
}

void CARenderUpdateSetDisplayAttributes(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v3 = *a2;
    if ((*a2 - 6) > 0xFFFFFFFA)
    {
      *v8 = 0u;
      v10 = 0;
      v16 = 0;
      *&v8[12] = xmmword_183E20F10;
      v9 = 1.0;
      v11 = xmmword_183E20F20;
      memset(v12, 0, sizeof(v12));
      v13 = 0x100000001;
      v14 = 0u;
      v15 = 0u;
      *v17 = 1065353216;
      *&v17[4] = 0uLL;
      v18 = -1;
      *v8 = *(a2 + 4);
      v6 = *(a2 + 12);
      *&v8[12] = v6;
      LODWORD(v13) = *(a2 + 28);
      if (*&v6 > 0.0 && *(&v6 + 2) > 0.0)
      {
        v7 = *&v6 / (*(&v6 + 2) * 100.0);
        v9 = v7;
      }

      if (v3 != 1)
      {
        v12[6] = *(a2 + 32);
        if (v3 >= 3)
        {
          HIDWORD(v13) = *(a2 + 36);
          if (v3 != 3)
          {
            *v17 = *(a2 + 40);
            if (v3 >= 5)
            {
              v12[10] = *(a2 + 56);
            }
          }
        }
      }

      CA::Render::Update::set_display_attributes(a1 + 384, v8);
    }

    else
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v4 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v5 = *a2;
        *v8 = 67109120;
        *&v8[4] = v5;
        _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "Invalid display attributes version %d", v8, 8u);
      }
    }
  }
}

void CARenderUpdateSetGlobalLightAngle(uint64_t a1, int a2, float a3)
{
  v5 = __sincosf_stret(a3);
  *(a1 + 1188) = v5.__cosval;
  *(a1 + 1192) = v5.__sinval;
  v6 = 0x800000000000;
  if (!a2)
  {
    v6 = 0;
  }

  *(a1 + 1376) = *(a1 + 1376) & 0xFFFF7FFFFFFFFFFFLL | v6;
}

void CARenderUpdateSetGlobalLightParameters(uint64_t a1, const __CFDictionary *a2, int a3)
{
  Float = CA_CFDictionaryGetFloat(a2, @"angle");
  v7 = __sincosf_stret(*&Float);
  *(a1 + 1188) = v7.__cosval;
  *(a1 + 1192) = v7.__sinval;
  v8 = CA_CFDictionaryGetFloat(a2, @"opacity");
  *(a1 + 1196) = LODWORD(v8);
  v9 = CA_CFDictionaryGetFloat(a2, @"spread");
  *(a1 + 1200) = LODWORD(v9);
  v10 = CA_CFDictionaryGetFloat(a2, @"height");
  *(a1 + 1204) = LODWORD(v10);
  v11 = 0x800000000000;
  if (!a3)
  {
    v11 = 0;
  }

  *(a1 + 1376) = *(a1 + 1376) & 0xFFFF7FFFFFFFFFFFLL | v11;
}

uint64_t CAMachPortCreate(int a1)
{
  if (!a1)
  {
    return 0;
  }

  if (CAMachPortGetTypeID::once[0] != -1)
  {
    dispatch_once(CAMachPortGetTypeID::once, &__block_literal_global_6212);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = a1;
  }

  return result;
}

CFStringRef caMachPortCopyDebugDescription(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    return CFStringCreateWithFormat(v2, 0, @"<CAMachPort %p mach_port = %u>", v1, LODWORD(v1->data));
  }

  return result;
}

uint64_t caMachPortFinalize(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
    }
  }

  return result;
}

uint64_t CAMachPortGetTypeID()
{
  if (CAMachPortGetTypeID::once[0] != -1)
  {
    dispatch_once(CAMachPortGetTypeID::once, &__block_literal_global_6212);
  }

  return CAMachPortGetTypeID::type;
}

uint64_t CAMachPortGetPort(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

os_log_t ___Z16x_log_get_renderv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Render");
  x_log_get_render(void)::log = result;
  return result;
}

uint32x2_t CA::Render::convert_cgcolor(CA::Render *this, CGColor *a2, CGColorSpace *a3, float *a4, CA::Render::Pattern **a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0uLL;
  CA::Render::convert_cgcolor_to_float(this, a2, &v10, a4, a5);
  v6 = vdup_n_s32(0x437F0000u);
  v7 = ((*&v10 * 255.0) + 0.5) & ~(((*&v10 * 255.0) + 0.5) >> 31);
  v8 = ((*(&v10 + 3) * 255.0) + 0.5) & ~(((*(&v10 + 3) * 255.0) + 0.5) >> 31);
  if (v7 >= 255)
  {
    v7 = 255;
  }

  if (v8 >= 255)
  {
    v8 = 255;
  }

  result = vshl_u32(vmin_s32(vmax_s32(vcvt_s32_f32(vmla_f32(0x3F0000003F000000, v6, *(&v10 + 4))), 0), 0xFF000000FFLL), 0x800000010);
  *a3 = result.i32[0] | (v7 << 24) | v8 | result.i32[1];
  return result;
}

atomic_uint *anonymous namespace::render_object_finalize(_anonymous_namespace_ *this, const void *a2)
{
  result = *(this + 2);
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

void CARenderCollect(int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    v2 = mach_absolute_time();
    v3 = CATimeWithHostTime(v2);

    CA::Render::collect((a1 != 0), v3);
  }
}

uint64_t CA::fo_removed_context(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a3 || !a4)
  {
    __assert_rtn("fo_removed_context", "CAContextInternal.mm", 366, "server_id != 0 && client_id != 0");
  }

  v7 = mach_absolute_time();
  v8 = CATimeWithHostTime(v7);

  return CA::Context::send_deferrals(a3, a4, a2, 0, v8);
}

CFArrayRef CA::Context::retain_objc_contexts(CA::Context *this)
{
  v14[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Context::_lock);
  if ((CA::all_contexts(void)::contexts_data_initialized & 1) == 0)
  {
    v12 = 0;
    CA::all_contexts(void)::contexts_data = 0uLL;
    qword_1ED4E9310 = 0;
    CA::all_contexts(void)::contexts_data_initialized = 1;
    goto LABEL_18;
  }

  v2 = *(&CA::all_contexts(void)::contexts_data + 1);
  v3 = CA::all_contexts(void)::contexts_data;
  if (CA::all_contexts(void)::contexts_data == *(&CA::all_contexts(void)::contexts_data + 1))
  {
    goto LABEL_17;
  }

  v4 = 0;
  v5 = CA::all_contexts(void)::contexts_data;
  do
  {
    v6 = *v5++;
    if (*v6)
    {
      ++v4;
    }
  }

  while (v5 != *(&CA::all_contexts(void)::contexts_data + 1));
  if (!v4)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  MEMORY[0x1EEE9AC00](v1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  v9 = 0;
  do
  {
    v10 = *v3;
    if (!**v3)
    {
      goto LABEL_13;
    }

    if (*(v10 + 88) == 1)
    {
      Weak = objc_loadWeak(v10 + 10);
      if (!Weak)
      {
        goto LABEL_13;
      }

LABEL_12:
      *&v8[8 * v9++] = Weak;
      goto LABEL_13;
    }

    Weak = v10[10];
    if (Weak)
    {
      goto LABEL_12;
    }

LABEL_13:
    ++v3;
  }

  while (v3 != v2);
  v12 = CFArrayCreate(0, v8, v9, MEMORY[0x1E695E9C0]);
LABEL_18:
  os_unfair_lock_unlock(&CA::Context::_lock);
  return v12;
}

CFTypeRef CA::Context::retain_layer(CA::Context *this)
{
  pthread_mutex_lock((this + 16));
  v2 = *(this + 12);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 16));
  return v3;
}

void CA::record_layer(CA *this, CA::Transaction *a2, double a3, CA::Context *a4, CA::Layer *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a2 + 1);
    v11 = [(CA::Context *)a4 name];
    if (!v11)
    {
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
    }

    v13 = -[NSString stringByTrimmingCharactersInSet:](v11, "stringByTrimmingCharactersInSet:", [objc_msgSend(MEMORY[0x1E696AB08] "alphanumericCharacterSet")]);
    v14 = -[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [MEMORY[0x1E696AEC0] stringWithFormat:@"tx-%.6f-%u-%#x-%@.caar", *&a3, *(*(this + 15) + 200), v10, v13]);
    v18 = 0;
    [CAEncodeLayerTreeWithInfo(a4 0)];
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v15 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(this + 15) + 200);
      v17 = v18;
      if (!v18)
      {
        v17 = @"success";
      }

      *buf = 67110402;
      v20 = v16;
      v21 = 2048;
      v22 = a3;
      v23 = 1024;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_183AA6000, v15, OS_LOG_TYPE_DEFAULT, "Recorded tx %u @%.6f ctx=%#x %@ (%@)\n%@", buf, 0x36u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t CA::WindowServer::IOMFBFlipBook::get_destination_surface(CA::WindowServer::IOMFBFlipBook *this, unsigned int a2)
{
  result = 0;
  if (a2 <= 1)
  {
    v4 = *(this + 44);
    if (v4)
    {
      return *(v4 + 8 * a2 + 16);
    }
  }

  return result;
}

__n128 CA::WindowServer::IOMFBFlipBook::debug_surface_bounds@<Q0>(CA::WindowServer::IOMFBFlipBook *this@<X0>, __n128 *a2@<X8>)
{
  result = *(*(this + 2) + 168);
  *a2 = result;
  return result;
}

uint64_t CA::WindowServer::IOMFBFlipBook::needs_debug_surface(CA::WindowServer::IOMFBFlipBook *this)
{
  v1 = *(this + 87);
  if (byte_1ED4E9824 == 1 && !v1)
  {
    goto LABEL_8;
  }

  if (v1 != 1)
  {
    goto LABEL_6;
  }

  if (use_dcp_blitter(void)::once != -1)
  {
    dispatch_once(&use_dcp_blitter(void)::once, &__block_literal_global_6352);
  }

  if (use_dcp_blitter(void)::ret != 1)
  {
LABEL_8:
    v2 = 1;
  }

  else
  {
LABEL_6:
    v2 = byte_1ED4E986A;
  }

  return v2 & 1;
}

void ___ZL15use_dcp_blitterv_block_invoke()
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  use_dcp_blitter(void)::ret = (*&dword_1ED4E971C != 3) & (byte_1ED4E9824 ^ 1);
}

void CA::WindowServer::IOMFBFlipBook::cancel_all_swaps(CA::WindowServer::IOMFBFlipBook *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v3 = IOMobileFramebufferSwapCancelAll();
  kdebug_trace();
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218240;
    v6 = a2;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "IOMFBFlipBook::cancel_all_swaps(swap_size %zu) = 0x%x", &v5, 0x12u);
  }
}

BOOL CA::WindowServer::IOMFBFlipBook::cancel_all_swaps_get_current(CA::WindowServer::IOMFBFlipBook *this, unsigned int *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  Current = IOMobileFramebufferSwapCancelAllGetCurrent();
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v6 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v9[0] = 67109632;
    v9[1] = v7;
    v10 = 2048;
    v11 = a3;
    v12 = 1024;
    v13 = Current;
    _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "IOMFBFlipBook::cancel_all_swaps_get_current(swap_id %u / swap_size %zu) = 0x%x", v9, 0x18u);
  }

  kdebug_trace();
  return Current == 0;
}

BOOL CA::WindowServer::IOMFBFlipBook::cancel_frame(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 60))
  {
    __assert_rtn("cancel_frame", "windowserver-iomfb-flipbook.cpp", 411, "frame.swap_id != 0");
  }

  v3 = IOMobileFramebufferSwapCancel();
  IOSurfaceGetID(*a2);
  kdebug_trace();
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 60);
    v7[0] = 67109376;
    v7[1] = v5;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "IOMFBFlipBook::cancel_frame(swap_id %u) = 0x%x", v7, 0xEu);
  }

  return v3 == 0;
}

CA::WindowServer::IOMFBDisplay::FrameInfo **CA::WindowServer::IOMFBFlipBook::swap_frame(uint64_t a1, uint64_t a2, uint64_t a3, int32x4_t a4, int32x4_t a5)
{
  v129 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  if ((*(v5 + 29528) & 1) == 0)
  {
    __assert_rtn("swap_frame", "windowserver-iomfb-flipbook.cpp", 223, "display_iomfb ()->frame_info_enabled ()");
  }

  v9 = *(v5 + 160);
  v10 = *(v5 + 164);
  if (v9 <= v10)
  {
    v11 = *(v5 + 164);
  }

  else
  {
    v11 = *(v5 + 160);
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v11;
  v12 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v13 = *(v5 + 152);
  v14.i64[0] = v13;
  v14.i64[1] = SHIDWORD(v13);
  v15 = vbslq_s8(v12, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v14));
  v16 = v9;
  if (v11 > 1073741822)
  {
    v16 = 1.79769313e308;
  }

  v123 = v15;
  if (v11 <= 1073741822)
  {
    v17 = v10;
  }

  else
  {
    v17 = 1.79769313e308;
  }

  v124 = v16;
  v125 = v17;
  v122 = 0;
  CA::IOMobileFramebuffer::swap_begin((v5 + 25696), &v122);
  *(a2 + 60) = v122;
  v18 = *(a2 + 40);
  LODWORD(v116[0]) = 1;
  *buf = v18;
  IOMobileFramebufferSwapSetTimestamps();
  v27 = *(a1 + 348);
  if (v27)
  {
    if (v27 == 1)
    {
      v121 = 0;
      if (!*(a3 + 8))
      {
        v29 = 0;
        goto LABEL_28;
      }

      v121 = CA::Shape::new_shape((a2 + 64), v19);
      CA::shape_subtract(&v121, (a2 + 80), v28);
      v29 = v121;
      if (v121)
      {
        if (v121 == 1)
        {
          goto LABEL_28;
        }
      }

      else if (*(v121 + 1) == 6)
      {
        goto LABEL_28;
      }

      v116[0] = 0uLL;
      *&buf[8] = 0;
      v127.n128_u64[0] = 0;
      *buf = v121;
      while (CA::ShapeIterator::iterate(buf, v116))
      {
        v39 = *&v116[0];
        v40 = *(a2 + 64);
        v42 = DWORD2(v116[0]);
        v41 = HIDWORD(v116[0]);
        if (use_dcp_blitter(void)::once != -1)
        {
          v114 = *&v116[0];
          dispatch_once(&use_dcp_blitter(void)::once, &__block_literal_global_6352);
          v39 = v114;
        }

        v43 = vsub_s32(v39, v40);
        if (use_dcp_blitter(void)::ret == 1)
        {
          IOMobileFramebufferSwapSetBlit();
        }

        else
        {
          v44 = *(a1 + 352);
          v45 = *(a3 + 8);
          v118 = v43;
          v119 = v42;
          v120 = v41;
          v117 = v116[0];
          CA::WindowServer::IOMFBFlipBook::Blitter::blit(v44, v45, &v118, &v117);
        }
      }

LABEL_28:
      if (use_dcp_blitter(void)::once != -1)
      {
        dispatch_once(&use_dcp_blitter(void)::once, &__block_literal_global_6352);
      }

      if (use_dcp_blitter(void)::ret == 1)
      {
        IOMobileFramebufferSwapSetBlit();
        v53 = *(a1 + 16);
        if (byte_1ED4E986A == 1)
        {
          CA::WindowServer::IOMFBFlipBook::draw_debug_overlay(a1, a2, *(a2 + 16), v122);
          v94 = *(v53 + 176);
          memset(buf, 0, sizeof(buf));
          v127.n128_f64[0] = v94;
          v127.n128_u64[1] = 0x4041000000000000;
          CA::IOMobileFramebuffer::swap_set_blit(*(v5 + 25696), *(a2 + 16), buf, buf);
        }

        memset(buf, 0, sizeof(buf));
        v54 = *(v53 + 176);
        v55.i64[0] = v54;
        v55.i64[1] = SHIDWORD(v54);
        v127 = vcvtq_f64_s64(v55);
        CA::IOMobileFramebuffer::swap_set_layer((v5 + 25696), 0, *(*(a1 + 352) + 8 * *(*(a1 + 352) + 8) + 16), buf, &v123, 256, v127, v46, v47, v48, v49, v50, v51, v52);
        *(a2 + 120) = *(a2 + 120) & 0xFE | *(*(a1 + 352) + 8) & 1;
        if (!v29)
        {
          goto LABEL_35;
        }

LABEL_34:
        CA::Shape::unref(v29);
LABEL_35:
        *(*(a1 + 352) + 8) = (*(*(a1 + 352) + 8) & 1) == 0;
        goto LABEL_36;
      }

      v81 = *(a1 + 352);
      v82 = *(a2 + 8);
      *buf = 0;
      v83 = *(a2 + 80);
      *&buf[8] = vextq_s8(v83, v83, 8uLL).u64[0];
      v116[0] = v83;
      CA::WindowServer::IOMFBFlipBook::Blitter::blit(v81, v82, buf, v116);
      CA::WindowServer::IOMFBFlipBook::Blitter::present_to(*(a1 + 352), *(a2 + 24));
      *(a2 + 120) = *(a2 + 120) & 0xFE | *(*(a1 + 352) + 8) & 1;
      if (byte_1ED4E9824 != 1)
      {
LABEL_61:
        v91 = *(a1 + 16);
        memset(buf, 0, sizeof(buf));
        v92 = *(v91 + 176);
        v93.i64[0] = v92;
        v93.i64[1] = SHIDWORD(v92);
        v127 = vcvtq_f64_s64(v93);
        CA::IOMobileFramebuffer::swap_set_layer((v5 + 25696), 0, *(a2 + 16), buf, &v123, 0, v127, v84, v85, v86, v87, v88, v89, v90);
        if (!v29)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v113 = v5;
      v95 = objc_autoreleasePoolPush();
      v96 = (*(*a1 + 88))(a1);
      v97 = *v96;
      v97[173].i16[0] = *(*v96 + 1384) | 2;
      (*(*v97 + 40))(v97, *(a2 + 16), 0, 0);
      if (!v29)
      {
        v103 = CA::Shape::new_shape((a2 + 80), v98);
        goto LABEL_75;
      }

      v99 = CA::Shape::intersect(v29, (a2 + 80));
      *buf = 0x3804000038043804;
      CA::OGL::Context::paint_region(v97, v99, buf, 1);
      CA::shape_subtract(&v121, v99, v100, v101);
      v29 = v121;
      if (v121)
      {
        if (v121 == 1)
        {
          goto LABEL_73;
        }
      }

      else if (*(v121 + 1) == 6)
      {
        goto LABEL_73;
      }

      v116[0] = 0uLL;
      *&buf[8] = 0;
      v127.n128_u64[0] = 0;
      *buf = v121;
      v104 = 939786240;
      v115 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
      while (CA::ShapeIterator::iterate(buf, v116))
      {
        v105 = CA::Shape::new_shape(v116, v102);
        v106 = vmovl_u16(v104);
        v118.i16[0] = v106.i16[0];
        v118.i16[1] = v106.i16[2];
        v118.i32[1] = 939786240;
        CA::OGL::Context::paint_region(v97, v105, &v118, 1);
        v107 = vmulq_f64(vcvtq_f64_f32(*&vcvtq_f32_f16(v104)), v115);
        *&v107.f64[0] = vcvt_f32_f64(v107);
        v104 = vcvt_f16_f32(v107);
        CA::Shape::unref(v105);
      }

LABEL_73:
      v103 = CA::Shape::new_shape((a2 + 80), v102);
      *&v116[0] = v103;
      if (v99)
      {
        CA::shape_subtract(v116, v99, v108, v109);
        v110 = *&v116[0];
        *buf = 0x3804000000003804;
        CA::OGL::Context::paint_region(v97, *&v116[0], buf, 1);
        CA::Shape::unref(v110);
        v111 = v99;
LABEL_76:
        CA::Shape::unref(v111);
        (*(*v97 + 456))(v97, 1);
        (*(*v97 + 40))(v97, 0, 0, 0);
        v97[173].i16[0] &= ~2u;
        objc_autoreleasePoolPop(v95);
        v5 = v113;
        goto LABEL_61;
      }

LABEL_75:
      v112 = v103;
      *buf = 0x3804000000003804;
      CA::OGL::Context::paint_region(v97, v103, buf, 1);
      v111 = v112;
      goto LABEL_76;
    }
  }

  else
  {
    if (byte_1ED4E986A == 1)
    {
      CA::WindowServer::IOMFBFlipBook::draw_debug_overlay(a1, a2, *a2, v122);
    }

    Width = IOSurfaceGetWidth(*a2);
    v31.n128_f64[0] = IOSurfaceGetHeight(*a2);
    memset(buf, 0, sizeof(buf));
    v127.n128_f64[0] = Width;
    v127.n128_f64[1] = v31.n128_f64[0];
    CA::IOMobileFramebuffer::swap_set_layer((v5 + 25696), 0, *a2, buf, &v123, 0, v31, v32, v33, v34, v35, v36, v37, v38);
  }

LABEL_36:
  v56 = -2;
  do
  {
    *buf = 0u;
    v127 = 0u;
    memset(v116, 0, sizeof(v116));
    CA::IOMobileFramebuffer::swap_set_layer((v5 + 25696), (v56 + 3), 0, buf, v116, 0, 0, v20, v21, v22, v23, v24, v25, v26);
  }

  while (!__CFADD__(v56++, 1));
  v58 = IOMobileFramebufferSwapEnd();
  ID = IOSurfaceGetID(*a2);
  kdebug_trace();
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v60 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v61 = *(a2 + 60);
    *buf = 67109632;
    *&buf[4] = ID;
    *&buf[8] = 1024;
    *&buf[10] = v61;
    *&buf[14] = 1024;
    v127.n128_u32[0] = v58;
    _os_log_impl(&dword_183AA6000, v60, OS_LOG_TYPE_DEFAULT, "swapped surface 0x%x in swap %u, ret %u", buf, 0x14u);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v62 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xE0uLL, 0xDEEC3011uLL);
  v63 = v62;
  if (v62)
  {
    v62[10] = 0;
    v62[9] = v62 + 10;
    v62[13] = 0;
    v62[11] = 0;
    v62[12] = v62 + 13;
    v62[14] = 0;
    v62[15] = v62 + 19;
    v62[16] = v62 + 19;
    v62[17] = v62 + 19;
    v62[18] = 4;
  }

  *v62 = *(a2 + 60);
  *(v62 + 110) &= ~0x10u;
  v64 = *(a1 + 16);
  os_unfair_lock_lock(v64 + 6518);
  v65 = *(a1 + 16);
  v66 = v65[3261];
  v67 = v65[3262];
  if (v66 >= v67)
  {
    v69 = v65[3260];
    v70 = v66 - v69;
    v71 = (v66 - v69) >> 3;
    v72 = v71 + 1;
    if ((v71 + 1) >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v73 = v67 - v69;
    if (v73 >> 2 > v72)
    {
      v72 = v73 >> 2;
    }

    if (v73 >= 0x7FFFFFFFFFFFFFF8)
    {
      v74 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v74 = v72;
    }

    v128 = v65 + 3260;
    if (v74)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Display::DisplayLinkItem *>>(v74);
    }

    v75 = (v66 - v69) >> 3;
    v76 = (8 * v71);
    *&v116[0] = 0;
    v77 = (8 * v71 - 8 * v75);
    *v76 = v63;
    v68 = v76 + 1;
    memcpy(v77, v69, v70);
    v78 = v65[3260];
    v65[3260] = v77;
    v65[3261] = v68;
    v79 = v65[3262];
    v65[3262] = 0;
    v127.n128_u64[0] = v78;
    v127.n128_u64[1] = v79;
    *buf = v78;
    *&buf[8] = v78;
    std::__split_buffer<std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>>::~__split_buffer(buf);
  }

  else
  {
    *&v116[0] = 0;
    *v66 = v63;
    v68 = v66 + 8;
  }

  v65[3261] = v68;
  os_unfair_lock_unlock(v64 + 6518);
  return std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::~unique_ptr[abi:nn200100](v116);
}

void CA::WindowServer::IOMFBFlipBook::draw_debug_overlay(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v34[126] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = (*(*a1 + 88))(a1);
  v10 = *v9;
  *(v10 + 1384) = *(*v9 + 1384) | 2;
  (*(*v10 + 40))(v10, a3, 0, 0);
  *(v10 + 600) = CA::WindowServer::Display::ogl_display(*(a1 + 16));
  v34[0] = 0;
  v34[63] = 0;
  CA::OGL::Context::prepare_context(v10, v34);
  v33[4] = 0x3C003C003C003C00;
  memset(&v33[5], 0, 24);
  v33[9] = 0;
  v33[0] = 0;
  v33[10] = 1025;
  v33[8] = 1065353216;
  v33[2] = 0;
  v33[3] = &CA::identity_transform;
  v33[1] = &CA::Shape::_infinite_shape;
  (*(*v10 + 1088))(v10, v33);
  v11 = CACreateDateStringFromHostContinuousTime(*(a2 + 40), @"HH:mm:ss");
  v32 = 0;
  v31 = 0;
  v30 = 0;
  memset(__str, 0, sizeof(__str));
  CString = CA_CFStringGetCString(v11, &v31, 10);
  snprintf(__str, 0x32uLL, "TIME %s  SWAP %x", CString, a4);
  v27[0] = xmmword_183E20E00;
  v27[1] = 0u;
  v27[2] = xmmword_183E20E60;
  memset(&v27[3], 0, 32);
  v27[5] = xmmword_183E20E00;
  v27[6] = 0u;
  v27[7] = xmmword_183E20E60;
  __asm { FMOV            V0.2D, #1.0 }

  v27[8] = _Q0;
  v18 = *(*(a1 + 16) + 176);
  *&v19 = (v18 + (strnlen(__str, 0x32uLL) * -28.0)) * 0.5;
  v20 = *&v19;
  v21 = *(a1 + 360);
  if (!v21)
  {
    operator new();
  }

  v28 = 0;
  v21[8] = v21[6];
  v21[10] = 0x3C002A662A662A66;
  *(*(a1 + 360) + 16) = 0;
  v22 = *(a1 + 360);
  v26 = LODWORD(v18) | 0x4208000000000000;
  CA::OGL::DebugRenderer::draw_rectangle_with_fill(v22, &v26, v19);
  *(*(a1 + 360) + 24) = 0x4200000041E00000;
  *(*(a1 + 360) + 80) = 0x3C00366636663666;
  v23 = *(a1 + 360);
  *(v23 + 16) = v20;
  *(v23 + 20) = 1065353216;
  v24 = strlen(__str);
  CA::OGL::DebugRenderer::draw_string(*(a1 + 360), __str, v24);
  CA::OGL::DebugRenderer::render(*(a1 + 360), v10, v27, 0);
  (*(*v10 + 1096))(v10, v33);
  (*(*v10 + 464))(v10);
  (*(*v10 + 40))(v10, 0, 0, 0);
  *(v10 + 1384) &= ~2u;
  *(v10 + 600) = 0;
  (*(*v10 + 48))(v10, a3);
  if (v11)
  {
    CFRelease(v11);
  }

  for (i = 63; i != -63; i -= 63)
  {
    if (v34[i])
    {
      __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t CA::IOMobileFramebuffer::swap_set_layer(CA::IOMobileFramebuffer *this, uint64_t a2, IOSurfaceRef buffer, const CA::Rect *a4, const CA::Rect *a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14)
{
  if (buffer)
  {
    ID = IOSurfaceGetID(buffer);
  }

  else
  {
    ID = 0;
  }

  if (*(this + a2 + 4) != ID)
  {
    *(this + 16) = 1;
    *(this + a2 + 4) = ID;
  }

  v21 = *(this + 3);
  a7.n128_u64[0] = *a4;
  a8.n128_u64[0] = *(a4 + 1);
  a9.n128_u64[0] = *(a4 + 2);
  a10.n128_u64[0] = *(a4 + 3);
  a11.n128_u64[0] = *a5;
  a12.n128_u64[0] = *(a5 + 1);
  a13.n128_u64[0] = *(a5 + 2);
  a14.n128_u64[0] = *(a5 + 3);

  return MEMORY[0x1EEE11BA8](v21, a2, buffer, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void CA::WindowServer::IOMFBFlipBook::Blitter::blit(uint64_t a1, uint64_t a2, CA::Shape *a3, CA::Shape *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = (*(**a1 + 88))();
  if (*(a3 + 2) != *(a4 + 2))
  {
    __assert_rtn("blit", "windowserver-iomfb-flipbook.cpp", 644, "src_bounds.w == dst_bounds.w");
  }

  if (*(a3 + 3) != *(a4 + 3))
  {
    __assert_rtn("blit", "windowserver-iomfb-flipbook.cpp", 645, "src_bounds.h == dst_bounds.h");
  }

  v10 = *v8;
  v11 = CA::Shape::new_shape(a4, v9);
  v13 = CA::Shape::new_shape(a3, v12);
  CA::OGL::Context::copy_surface_region(v10);
  (*(*v10 + 456))(v10, 1);
  CA::Shape::unref(v11);
  CA::Shape::unref(v13);

  objc_autoreleasePoolPop(v7);
}

void CA::WindowServer::IOMFBFlipBook::Blitter::present_to(unsigned __int8 *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = (*(**a1 + 88))();
  v6 = *v5;
  (*(**v5 + 776))(*v5, a2, *&a1[8 * a1[8] + 32], 0, 0, 0, 0);
  (*(*v6 + 456))(v6, 1);

  objc_autoreleasePoolPop(v4);
}

uint64_t std::__split_buffer<std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::~unique_ptr[abi:nn200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CA::WindowServer::IOMFBDisplay::FrameInfo **std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::~unique_ptr[abi:nn200100](CA::WindowServer::IOMFBDisplay::FrameInfo **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CA::WindowServer::IOMFBDisplay::FrameInfo::~FrameInfo(v2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v2);
  }

  return a1;
}

void CA::WindowServer::IOMFBFlipBook::resume_completed(CA::WindowServer::IOMFBFlipBook *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(this + 44);
  v2 = *(*v1 + 16);
  v3 = v1[8];
  v1[8] = (v3 & 1) == 0;
  v4 = *&v1[8 * v3 + 32];
  v5 = v2[43];
  v8[0] = v2[42];
  v8[1] = v5;
  v6 = v2[44];
  LODWORD(v2) = v2[45];
  v8[2] = v6;
  v8[3] = v2;
  v7[0] = v8[0];
  v7[1] = v5;
  v7[2] = v6;
  v7[3] = v2;
  CA::WindowServer::IOMFBFlipBook::Blitter::blit(v1, v4, v8, v7);
  v1[8] = v3;
}

void CA::WindowServer::IOMFBFlipBook::resume_frame(uint64_t a1, int8x16_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2[2].i64[0];
    v6 = a2[2].i64[1];
    *buf = 134218240;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "resume frame seed %llu timestamp %llu", buf, 0x16u);
  }

  if (use_dcp_blitter(void)::once != -1)
  {
    dispatch_once(&use_dcp_blitter(void)::once, &__block_literal_global_6352);
  }

  if (use_dcp_blitter(void)::ret == 1)
  {
    v7 = *(a1 + 352);
    v8 = a2->i64[1];
    *buf = 0;
    v9 = a2[5];
    *&buf[8] = vextq_s8(v9, v9, 8uLL).u64[0];
    v13 = v9;
  }

  else
  {
    v10 = *(a1 + 16);
    v7 = *(a1 + 352);
    v8 = a2[1].i64[1];
    v11 = v10[43];
    *buf = v10[42];
    *&buf[4] = v11;
    v12 = v10[44];
    LODWORD(v10) = v10[45];
    *&buf[8] = v12;
    *&buf[12] = v10;
    v13.i64[0] = __PAIR64__(v11, *buf);
    v13.i64[1] = __PAIR64__(v10, v12);
  }

  CA::WindowServer::IOMFBFlipBook::Blitter::blit(v7, v8, buf, &v13);
}

uint64_t CA::WindowServer::IOMFBFlipBook::suspended_on_frame(uint64_t this, char a2)
{
  v2 = *(this + 352);
  if (v2)
  {
    *(v2 + 8) = a2;
  }

  return this;
}

void CA::WindowServer::IOMFBFlipBook::_resume(CA::WindowServer::IOMFBDisplay **a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "IOMFBFlipBook::_resume", &v5, 2u);
  }

  v6 = 0;
  v5 = 0;
  CA::WindowServer::FlipBookStateChangeNotifier::FlipBookStateChangeNotifier(&v5, a2);
  if ((a2 & 0xFF00) == 0x100)
  {
    CA::IOMobileFramebuffer::swap_wait((a1[2] + 25696));
    CA::WindowServer::IOMFBDisplay::set_aot_service_property(a1[2], 1);
    if (*(a1[2] + 29584) == 1)
    {
      CA::WindowServer::IOMFBFlipBook::apply_dbv_flash_workaround(a1);
    }
  }

  CA::WindowServer::FlipBook::_resume(a1, a2 & 0xFFFFFF);
  if (v6 == 1)
  {
    BYTE4(v5) = 0;
    CA::Render::post_notification(0x3Cu, 0, &v5, 0);
  }
}

uint64_t CA::WindowServer::FlipBookStateChangeNotifier::FlipBookStateChangeNotifier(uint64_t a1, __int16 a2)
{
  *(a1 + 8) = 0;
  v3 = HIBYTE(a2) - a2;
  if (v3 < 0)
  {
    v3 = a2 - HIBYTE(a2);
  }

  if (v3 == 1)
  {
    *a1 = 0;
    *(a1 + 4) = 1;
    *(a1 + 6) = HIBYTE(a2) == 1;
    *(a1 + 8) = 1;
    CA::Render::post_notification(0x3Cu, 0, a1, 0);
  }

  return a1;
}

void CA::WindowServer::IOMFBFlipBook::apply_dbv_flash_workaround(CA::WindowServer::IOMFBFlipBook *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(**(this + 2) + 2264))(*(this + 2)))
  {
    v13 = 0;
    v2 = *(this + 2);
    CA::IOMobileFramebuffer::swap_begin((v2 + 25696), &v13);
    *buf = mach_continuous_time();
    IOMobileFramebufferSwapSetTimestamps();
    *buf = 0u;
    v15 = 0u;
    memset(v12, 0, sizeof(v12));
    CA::IOMobileFramebuffer::swap_set_layer((v2 + 25696), 0, 0, buf, v12, 0, 0, v3, v4, v5, v6, v7, v8, v9);
    v10 = IOMobileFramebufferSwapEnd();
    if (x_log_get_flipbook(void)::once != -1)
    {
      dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
    }

    v11 = x_log_get_flipbook(void)::log;
    if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v10;
      _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: swapped blank aod swap %u, ret %u", buf, 0xEu);
    }

    *(*(this + 2) + 29585) = 257;
  }
}

void CA::WindowServer::IOMFBFlipBook::_suspend(uint64_t a1, __int16 a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "IOMFBFlipBook::_suspend", &v5, 2u);
  }

  v6 = 0;
  v5 = 0;
  CA::WindowServer::FlipBookStateChangeNotifier::FlipBookStateChangeNotifier(&v5, a2);
  CA::WindowServer::FlipBook::_suspend(a1);
  CA::WindowServer::IOMFBDisplay::set_aot_service_property(*(a1 + 16), 0);
  if (v6 == 1)
  {
    BYTE4(v5) = 0;
    CA::Render::post_notification(0x3Cu, 0, &v5, 0);
  }
}

void CA::WindowServer::IOMFBFlipBook::_exit(uint64_t a1, __int16 a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "IOMFBFlipBook::_exit", &v13, 2u);
  }

  v14 = 0;
  v13 = 0;
  CA::WindowServer::FlipBookStateChangeNotifier::FlipBookStateChangeNotifier(&v13, a2);
  CA::WindowServer::FlipBook::_exit(a1);
  v5 = *(a1 + 352);
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 16;
    v8 = v5 + 32;
    v9 = 1;
    do
    {
      v10 = v9;
      v11 = *(v7 + 8 * v6);
      if (v11)
      {
        CFRelease(v11);
        v12 = (*(**v5 + 88))();
        CA::OGL::Context::release_surface(*v12, *(v8 + 8 * v6));
        *(v7 + 8 * v6) = 0;
        *(v8 + 8 * v6) = 0;
      }

      v9 = 0;
      v6 = 1;
    }

    while ((v10 & 1) != 0);
  }

  CA::WindowServer::IOMFBDisplay::set_aot_service_property(*(a1 + 16), 0);
  if (v14 == 1)
  {
    BYTE4(v13) = 0;
    CA::Render::post_notification(0x3Cu, 0, &v13, 0);
  }
}

void CA::WindowServer::IOMFBFlipBook::_enter(uint64_t a1, __int16 a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "IOMFBFlipBook::_enter", &v14, 2u);
  }

  v15 = 0;
  v14 = 0;
  CA::WindowServer::FlipBookStateChangeNotifier::FlipBookStateChangeNotifier(&v14, a2);
  if ((a2 & 0xFF00) == 0x100)
  {
    CA::IOMobileFramebuffer::swap_wait((*(a1 + 16) + 25696));
    CA::WindowServer::IOMFBDisplay::set_aot_service_property(*(a1 + 16), 1);
    if (*(*(a1 + 16) + 29584) == 1)
    {
      CA::WindowServer::IOMFBFlipBook::apply_dbv_flash_workaround(a1);
    }
  }

  v6 = *(a1 + 352);
  if (v6)
  {
    if (CADeviceUseCIF10::once != -1)
    {
      dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
    }

    v7 = 0;
    if (CADeviceUseCIF10::enable_cif10)
    {
      v8 = 1999843442;
    }

    else
    {
      v8 = 1111970369;
    }

    v9 = *(*v6 + 16);
    v10 = 1;
    do
    {
      v11 = v10;
      *(v6 + 16 + 8 * v7) = CA::Render::create_iosurface_with_pixel_format(v8, *(v9 + 176), *(v9 + 180), 4u, 0, @"CA Server Flipbook Framebuffer", v5);
      v12 = **(*(**v6 + 88))();
      v13 = (*(v12 + 728))();
      v10 = 0;
      *(v6 + 32 + 8 * v7) = v13;
      v7 = 1;
    }

    while ((v11 & 1) != 0);
  }

  CA::WindowServer::FlipBook::_enter(a1, a2);
  if (v15 == 1)
  {
    BYTE4(v14) = 0;
    CA::Render::post_notification(0x3Cu, 0, &v14, 0);
  }
}

void CA::WindowServer::IOMFBFlipBook::~IOMFBFlipBook(CA::WindowServer::IOMFBFlipBook *this)
{
  CA::WindowServer::IOMFBFlipBook::~IOMFBFlipBook(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1F86F0;
  CA::Render::remove_observer(0x47u, 0, CA::WindowServer::IOMFBFlipBook::get_display_debug_properties, this);
  v2 = *(this + 44);
  if (v2)
  {
    MEMORY[0x1865EA9A0](v2, 0x1020C4007B5AB7FLL);
  }

  v3 = *(this + 45);
  if (v3)
  {
    CA::OGL::DebugRenderer::~DebugRenderer(v3);
    MEMORY[0x1865EA9A0]();
  }

  *this = &unk_1EF1FA910;
  CA::WindowServer::FlipBook::free_surfaces(this);
  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }
}

void CA::WindowServer::IOMFBFlipBook::get_display_debug_properties(CA::WindowServer::IOMFBFlipBook *this, CA::Render::Object *a2, __CFDictionary **a3, void *a4)
{
  if (*a3 == *(*(a2 + 2) + 24))
  {
    if (*(a2 + 87))
    {
      v5 = "DirtyRegionOnly";
    }

    else
    {
      v5 = "FullSize";
    }

    CA_CFDictionarySetCString(a3[1], @"flipBookType", v5);
    if (use_dcp_blitter(void)::once != -1)
    {
      dispatch_once(&use_dcp_blitter(void)::once, &__block_literal_global_6352);
    }

    if (use_dcp_blitter(void)::ret == 1)
    {
      v6 = a3[1];
      v7 = *MEMORY[0x1E695E4D0];

      CFDictionarySetValue(v6, @"flipBookUsesDCPBlitter", v7);
    }
  }
}

void CA::CG::IOSurfaceDataProvider::~IOSurfaceDataProvider(CA::CG::IOSurfaceDataProvider *this, uint64_t a2, void *a3)
{
  CA::CG::AccelDataProvider::~AccelDataProvider(this, a2, a3);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

void CA::CG::IOSurfaceDataProvider::copy_data(CA::CG::IOSurfaceDataProvider *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = BYTE11(xmmword_1ED4E980C);
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  v3 = (*(**(this + 2) + 24))(*(this + 2));
  v4 = *(this + 4);
  if (!v4)
  {
    __assert_rtn("copy_data", "cg-iosurface-data-provider.cpp", 39, "data_size > 0");
  }

  v5 = v3;
  v15 = 0;
  v6 = CA::Render::aligned_malloc(v4, &v15, 0);
  v7 = v15;
  *(this + 3) = v6;
  *(this + 5) = v7;
  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = v6;
  PixelFormat = IOSurfaceGetPixelFormat(v5);
  if (CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0) == PixelFormat)
  {
    if (!IOSurfaceLock(v5, 1u, 0))
    {
      BaseAddress = IOSurfaceGetBaseAddress(v5);
      memcpy(v8, BaseAddress, v4);
      IOSurfaceUnlock(v5, 1u, 0);
      if (!v2)
      {
        return;
      }

      goto LABEL_20;
    }

    if (x_log_get_cg(void)::once != -1)
    {
      dispatch_once(&x_log_get_cg(void)::once, &__block_literal_global_453);
    }

    v10 = x_log_get_cg(void)::log;
    if (os_log_type_enabled(x_log_get_cg(void)::log, OS_LOG_TYPE_ERROR))
    {
      ID = IOSurfaceGetID(v5);
      *buf = 67109120;
      v17 = ID;
      v12 = "failed to lock IOSurface %x\n";
      goto LABEL_23;
    }

LABEL_19:
    if (!v2)
    {
      return;
    }

    goto LABEL_20;
  }

  if (CAGetBytesFromCompressedIOSurface(v5, v8, *(this + 12)))
  {
    *(this + 3) = v8;
    *(this + 5) = v7;
    if (!v2)
    {
      return;
    }

    goto LABEL_20;
  }

  if (x_log_get_cg(void)::once != -1)
  {
    dispatch_once(&x_log_get_cg(void)::once, &__block_literal_global_453);
  }

  v10 = x_log_get_cg(void)::log;
  if (!os_log_type_enabled(x_log_get_cg(void)::log, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

  v14 = IOSurfaceGetID(v5);
  *buf = 67109120;
  v17 = v14;
  v12 = "failed to copy bytes from compressed IOSurface 0x%x";
LABEL_23:
  _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, v12, buf, 8u);
  if (v2)
  {
LABEL_20:
    kdebug_trace();
  }
}

CGAffineTransform *CAML::parse_affine_matrix(CGAffineTransform *this, CAML::Context *a2, char *a3, CAML *a4, const char *a5)
{
  v49 = this;
  v56 = *MEMORY[0x1E69E9840];
  __src = a2;
  v5 = *MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 32);
  *(a3 + 1) = *(MEMORY[0x1E695EFD0] + 16);
  *(a3 + 2) = v6;
  *a3 = v5;
  if (a2 < a4)
  {
    v10 = MEMORY[0x1E69E9830];
    memset(__dst, 0, sizeof(__dst));
    memset(&angle, 0, sizeof(angle));
    v11 = a2;
    do
    {
      if (!*v11)
      {
        return this;
      }

      v12 = CAML::skip_whitespace(v11, a4, a3);
      v13 = 0;
      __src = v12;
      do
      {
        if (__src < a4)
        {
          v14 = *(__src + v13);
          if (!*(__src + v13))
          {
            break;
          }

          if ((v14 & 0x80000000) != 0)
          {
            if (!__maskrune(v14, 0x100uLL))
            {
              break;
            }
          }

          else if ((*(v10 + 4 * v14 + 60) & 0x100) == 0)
          {
            break;
          }
        }

        ++v13;
      }

      while (v13 != 31);
      v15 = __src;
      memcpy(__dst, __src, v13);
      *(__dst + v13) = 0;
      __src = &v15[v13];
      v17 = CAML::skip_whitespace(&v15[v13], a4, v16);
      v11 = v17;
      __src = v17;
      if (v17 < a4 && *v17 == 40)
      {
        v11 = CAML::skip_whitespace((v17 + 1), a4, v18);
        __src = v11;
      }

      if (v11 >= a4)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v21 = *v11;
          if (!*v11)
          {
            break;
          }

          if (v21 == 41 || v20 > 5)
          {
            if (v21 == 41)
            {
              v11 = CAML::skip_whitespace((v11 + 1), a4, v18);
              __src = v11;
            }

            break;
          }

          *(&angle.a + v20) = CAML::parse_real(v11, &__src, a4, v19);
          v24 = CAML::skip_whitespace(__src, a4, v23);
          v11 = v24;
          __src = v24;
          if (v24 < a4)
          {
            v25 = *v24;
            if (v25 == 59 || v25 == 44)
            {
              v11 = CAML::skip_whitespace((v24 + 1), a4, v18);
              __src = v11;
            }
          }

          ++v20;
        }

        while (v11 < a4);
      }

      if (v11 < a4)
      {
        v26 = *v11;
        if (v26 == 59 || v26 == 44)
        {
          v11 = CAML::skip_whitespace((v11 + 1), a4, v18);
          __src = v11;
        }
      }

      if (LODWORD(__dst[0]) == 1920229741 && *(__dst + 3) == 7891314)
      {
        if (v20 != 6)
        {
          return CAML::Context::error(v49, "Invalid transform: %s (position %ld)", a2, v11 - a2);
        }

        t1 = angle;
      }

      else
      {
        v29 = *&__dst[0] != 0x74616C736E617274 || WORD4(__dst[0]) != 101;
        v30 = v20 - 1;
        if (!v29 && v30 <= 1)
        {
          if (v20 >= 2)
          {
            b = angle.b;
          }

          else
          {
            angle.b = 0.0;
            b = 0.0;
          }

          v38 = *(a3 + 1);
          *&t1.a = *a3;
          *&t1.c = v38;
          *&t1.tx = *(a3 + 2);
          this = CGAffineTransformTranslate(&v52, &t1, angle.a, b);
          goto LABEL_90;
        }

        v32 = LODWORD(__dst[0]) == 1818321779 && WORD2(__dst[0]) == 101;
        if (v32 && v30 <= 1)
        {
          if (v20 == 1)
          {
            angle.b = angle.a;
            a = angle.a;
          }

          else
          {
            a = angle.b;
          }

          v46 = *(a3 + 1);
          *&t1.a = *a3;
          *&t1.c = v46;
          *&t1.tx = *(a3 + 2);
          this = CGAffineTransformScale(&v52, &t1, angle.a, a);
          goto LABEL_90;
        }

        v36 = LODWORD(__dst[0]) == 1635020658 && *(__dst + 3) == 6648929;
        if (v36 && v20 == 1)
        {
          v37 = *(a3 + 1);
          *&t1.a = *a3;
          *&t1.c = v37;
          *&t1.tx = *(a3 + 2);
          this = CGAffineTransformRotate(&v52, &t1, angle.a);
          goto LABEL_90;
        }

        if ((LODWORD(__dst[0]) != 2003135347 || WORD2(__dst[0]) != 88) && (LODWORD(__dst[0]) != 2003135347 || WORD2(__dst[0]) != 89))
        {
          return CAML::Context::error(v49, "Invalid transform: %s (position %ld)", a2, v11 - a2);
        }

        if (v20 != 1)
        {
          return CAML::Context::error(v49, "Invalid transform: %s (position %ld)", a2, v11 - a2);
        }

        v41 = *MEMORY[0x1E695EFD0];
        v42 = *(MEMORY[0x1E695EFD0] + 8);
        v48 = *(MEMORY[0x1E695EFD0] + 24);
        v43 = *(MEMORY[0x1E695EFD0] + 40);
        v44 = tan(angle.a);
        if (BYTE4(__dst[0]) == 89)
        {
          v45 = v44;
        }

        else
        {
          v45 = v42;
        }

        if (BYTE4(__dst[0]) == 89)
        {
          v44 = 0.0;
        }

        t1.a = v41;
        t1.b = v45;
        t1.c = v44;
        *&t1.d = v48;
        t1.ty = v43;
      }

      v34 = *(a3 + 1);
      *&t2.a = *a3;
      *&t2.c = v34;
      *&t2.tx = *(a3 + 2);
      this = CGAffineTransformConcat(&v52, &t1, &t2);
LABEL_90:
      v47 = *&v52.c;
      *a3 = *&v52.a;
      *(a3 + 1) = v47;
      *(a3 + 2) = *&v52.tx;
    }

    while (v11 < a4);
  }

  return this;
}

CGImageSource *CAML::create_image_from_url(CFURLRef url, const __CFURL *a2)
{
  v2 = a2;
  if (CAML::create_image_from_url(__CFURL const*,BOOL)::once != -1)
  {
    dispatch_once(&CAML::create_image_from_url(__CFURL const*,BOOL)::once, &__block_literal_global_6469);
  }

  v4 = &CAML::create_image_from_url(__CFURL const*,BOOL)::options_hdr;
  if (!v2)
  {
    v4 = &CAML::create_image_from_url(__CFURL const*,BOOL)::options_sdr;
  }

  v5 = *v4;
  result = CGImageSourceCreateWithURL(url, *v4);
  if (result)
  {
    v7 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, v5);
    CFRelease(v7);
    return ImageAtIndex;
  }

  return result;
}

CFDictionaryRef ___ZN4CAML21create_image_from_urlEPK7__CFURLb_block_invoke()
{
  keys[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696E0E8];
  keys[0] = *MEMORY[0x1E696E070];
  keys[1] = v0;
  keys[2] = *MEMORY[0x1E696E018];
  values[0] = *MEMORY[0x1E695E4D0];
  values[1] = values[0];
  values[2] = *MEMORY[0x1E696E028];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  CAML::create_image_from_url(__CFURL const*,BOOL)::options_hdr = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(0, keys, values, 2, v1, v2);
  CAML::create_image_from_url(__CFURL const*,BOOL)::options_sdr = result;
  return result;
}

double CA::Transform::Transform(CA::Transform *this)
{
  CA::Transform::rotate90(void)::t = xmmword_183E20E00;
  *algn_1EA84F870 = 0u;
  xmmword_1EA84F880 = xmmword_183E20E60;
  unk_1EA84F890 = 0u;
  xmmword_1EA84F8A0 = 0u;
  unk_1EA84F8B0 = xmmword_183E20E00;
  xmmword_1EA84F8C0 = 0u;
  unk_1EA84F8D0 = xmmword_183E20E60;
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EA84F8E0 = _Q0;
  byte_1EA84F8F0 = byte_1EA84F8F0 & 0xE0 | 4;
  return CA::Transform::set_2x2(&CA::Transform::rotate90(void)::t);
}

float64x2_t CA::Transform::translate_right(float64x2_t *this, float64x2_t result, float64_t a3, double a4)
{
  result.f64[1] = a3;
  if ((LOBYTE(this[9].f64[0]) & 0x10) != 0)
  {
    v4 = this[1];
    v5 = this[3];
    v6 = this[5];
    v7 = this[7];
    v8 = vmlaq_laneq_f64(this[2], result, v5, 1);
    v9 = vmlaq_laneq_f64(this[4], result, v6, 1);
    v10 = vmlaq_laneq_f64(this[6], result, v7, 1);
    *this = vmlaq_laneq_f64(*this, result, v4, 1);
    this[1] = vmlaq_laneq_f64(v4, 0, v4, 1);
    this[2] = v8;
    this[3] = vmlaq_laneq_f64(v5, 0, v5, 1);
    this[4] = v9;
    this[5] = vmlaq_laneq_f64(v6, 0, v6, 1);
    this[6] = v10;
    this[7] = vmlaq_laneq_f64(v7, 0, v7, 1);
  }

  else
  {
    result = vaddq_f64(this[6], result);
    this[6] = result;
  }

  return result;
}

float64_t CA::Transform::rotate90(CA::Transform *this, uint64_t a2, uint64_t a3, const double *a4)
{
  {
    v7 = this;
    this = v7;
    if (v6)
    {
      CA::Transform::Transform(v7);
      this = v7;
    }
  }

  return CA::Transform::concat_left(this, &CA::Transform::rotate90(void)::t, a3, a4);
}

CA::OGL::Context *sw_new_context(void *a1, void *a2)
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

  return v3;
}

CA::OGL::Context *new_null_context(void *a1, void *a2)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x9A0uLL, 0xDEEC3011uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, 0x9A0uLL);
    CA::OGL::Context::Context(v3);
    *v3 = &unk_1EF1F8830;
  }

  return v3;
}

void CA::OGL::NullContext::~NullContext(CA::OGL::NullContext *this)
{
  CA::OGL::Context::~Context(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

id *gles_new_context(void **a1, void *a2)
{
  if (*a1 != 3)
  {
    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xB00uLL, 0xDEEC3011uLL);
  if (result)
  {
    return CA::OGL::GLESContext::GLESContext(result, a1[1]);
  }

  return result;
}

void *CARenderOGLNew_(uint64_t (**a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*a1)(a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  *(v4 + 1384) |= 2u;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
  v7 = v6;
  if (v6)
  {
    v6[1] = 0;
    v6[2] = 0;
    *v6 = v5;
    v6[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
    v7[7] = 0;
    *(v7 + 24) = 1;
    *(v7 + 50) = 0;
  }

  return v7;
}

void *CARenderOGLSetGLContext(void *result, uint64_t a2)
{
  v2 = *result;
  if (*(*result + 592) != a2)
  {
    result = (*(*v2 + 1192))(*result);
    v2[74] = a2;
  }

  return result;
}

uint64_t CARenderOGLSetFeatureFlags(uint64_t *a1, int a2)
{
  result = *a1;
  v3 = *(result + 632);
  *(result + 632) = a2;
  *(result + 872) = global_feature_flags | a2;
  if (((v3 ^ a2) & 0x2000200) != 0)
  {
    return CA::OGL::Context::update_color_program_cache(result);
  }

  return result;
}

CGColorSpace *CARenderOGLSetColorSpace(CA::OGL::Context **a1, CGColorSpace *a2)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E96F8)
  {
    a2 = CAGetColorSpace(*&dword_1ED4E96F8);
  }

  v4 = *a1;

  return CA::OGL::Context::set_colorspace(v4, a2);
}

uint64_t CARenderOGLCollect(CA::OGL::Renderer *a1, const CA::Render::Update *a2)
{
  v4 = mach_absolute_time();
  v5 = CATimeWithHostTime(v4);
  CA::Render::collect(0, v5);

  return CA::OGL::Renderer::collect(a1, a2, v5);
}

void CARenderOGLDestroy(CA::OGL::Renderer *a1)
{
  v2 = *a1;
  (*(**a1 + 272))(*a1, 1);
  (*(*v2 + 8))(v2);
  CA::OGL::Renderer::~Renderer(a1);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, a1);
}

void CARenderOGLSetUpdateRect(CA::OGL::Renderer *a1, uint64_t a2, double a3, double a4, float64x2_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *(a2 + 16);
    a5.f64[0] = 0.0;
    v7 = vdupq_lane_s64(vcgtq_f64(a5, v6).i64[0], 0);
    v8.i64[1] = *(a2 + 24);
    *v8.i64 = -v6.f64[0];
    v9 = vbslq_s8(v7, v8, v6);
    v10 = vdupq_lane_s64(vcgtq_f64(a5, vdupq_laneq_s64(v6, 1)).i64[0], 0);
    v11.i64[0] = v9.i64[0];
    v11.i64[1] = *&vnegq_f64(v6).f64[1];
    v12 = vbslq_s8(v10, v11, v9);
    v13 = vceqzq_f64(v12);
    if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0 || (v14 = vceqq_f64(v12, v12), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0))
    {
      v21 = 0uLL;
    }

    else
    {
      v15 = vaddq_f64(v6, *a2);
      v16.i64[0] = vbslq_s8(v7, v15, *a2).u64[0];
      v17.i64[0] = v16.i64[0];
      v17.i64[1] = *(a2 + 8);
      v16.i64[1] = v15.i64[1];
      v18 = vbslq_s8(v10, v16, v17);
      v19 = vcvtmq_s64_f64(vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v21 = vuzp1q_s32(v19, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v18, v12), vdupq_n_s64(0x41C0000000000000uLL))), v19));
    }

    memset(v22, 0, sizeof(v22));
    CA::Shape::operator=(v22, v21.i32);
    CA::OGL::Renderer::set_clip_shape(a1, v22);
  }

  else
  {
    v20 = *(a1 + 2);
    if (v20)
    {
      CA::Shape::unref(v20);
      *(a1 + 2) = 0;
    }
  }
}

uint64_t CARenderOGLRender(CA::OGL *a1, CA::OGL::Renderer *a2)
{
  kdebug_trace();
  CA::OGL::render(a1, a2, v4);
  CA::Render::collect(0, *(*a1 + 648));
  CA::OGL::Renderer::collect(a1, a2, *(*a1 + 648));

  return kdebug_trace();
}

__CFDictionary *CARenderOGLCopyStats(uint64_t a1)
{
  v2 = MEMORY[0x1E695E9D8];
  v3 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CA_CFDictionarySetInt(Mutable, @"draw_call_count", *(*a1 + 1256));
  CA_CFDictionarySetInt(Mutable, @"draw_count", *(*a1 + 1260));
  CA_CFDictionarySetInt(Mutable, @"uploaded_bytes", *(*a1 + 1280));
  CA_CFDictionarySetInt(Mutable, @"pass_count", *(*a1 + 1264));
  CA_CFDictionarySetInt(Mutable, @"cache_misses", *(*a1 + 1268));
  CA_CFDictionarySetInt(Mutable, @"compile_count", *(*a1 + 1272));
  CA_CFDictionarySetInt(Mutable, @"fallback_draws", *(*a1 + 1276));
  v5 = CFDictionaryCreateMutable(0, 0, v2, v3);
  CA_CFDictionarySetInt(v5, @"Shadow", *(*a1 + 1296));
  CA_CFDictionarySetInt(v5, @"Pattern", *(*a1 + 1300));
  CA_CFDictionarySetInt(v5, @"TiledImage", *(*a1 + 1304));
  CA_CFDictionarySetInt(v5, @"BackdropCopy", *(*a1 + 1308));
  CA_CFDictionarySetInt(v5, @"Blending", *(*a1 + 1312));
  CA_CFDictionarySetInt(v5, @"Transition", *(*a1 + 1316));
  CA_CFDictionarySetInt(v5, @"Filter", *(*a1 + 1320));
  CA_CFDictionarySetInt(v5, @"Transform", *(*a1 + 1324));
  CA_CFDictionarySetInt(v5, @"Mask", *(*a1 + 1328));
  CA_CFDictionarySetInt(v5, @"Group", *(*a1 + 1332));
  CA_CFDictionarySetInt(v5, @"Scaling", *(*a1 + 1336));
  CA_CFDictionarySetInt(v5, @"Plugin", *(*a1 + 1340));
  CA_CFDictionarySetInt(v5, @"Cache", *(*a1 + 1344));
  CA_CFDictionarySetInt(v5, @"Mesh", *(*a1 + 1348));
  CA_CFDictionarySetInt(v5, @"SDF", *(*a1 + 1352));
  CA_CFDictionarySetInt(v5, @"DestinationCopy", *(*a1 + 1356));
  CA_CFDictionarySetInt(v5, @"Asynchronous", *(*a1 + 1360));
  CFDictionarySetValue(Mutable, @"offscreen_reasons_count", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

uint64_t CARenderOGLPassStatistics(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *result;
    *(a2 + 2) = *(*result + 1264);
    *(a2 + 6) = v3[318];
    *(a2 + 7) = v3[319];
    *(a2 + 8) = v3[317];
  }

  *a2 = v2 != 0;
  return result;
}

float CARenderOGLComputeSurfaceAPL(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 1057417593;
  v16 = 0;
  v17 = 0x3E851EB83E5A1CACLL;
  if (a4)
  {
    v17 = *a4;
    LODWORD(v18) = *(a4 + 8);
  }

  if (a3)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  BYTE4(v18) = v5;
  v6 = (*(**a1 + 728))(*a1, 1, 0, 0);
  v8 = (*(**a1 + 960))(*a1, v6, &v16, v7);
  (*(**a1 + 464))(*a1, v9, v10, v11);
  CA::OGL::Context::release_surface(*a1, v6);
  v12 = *(*v8 + 32);
  (*(**a1 + 912))(*a1, v8, v13, v14);
  return v12;
}

uint64_t CARenderOGLSetHDRScalingFactor(uint64_t a1, float a2)
{
  v2 = *a1;
  v3.n128_f32[0] = powf(a2, *(*a1 + 576));
  v4 = v2[84];
  if (v4)
  {
    *(v4 + 88) = v3.n128_u32[0];
  }

  v5 = *(*v2 + 1128);

  return v5(v2, v3);
}

uint64_t CARenderOGLSetEDRScalingFactor(void **a1, float a2)
{
  v2 = *a1;
  v3 = v2[84];
  if (v3)
  {
    *(v3 + 88) = a2;
  }

  return (*(*v2 + 1128))();
}

int32x4_t **CARenderGLESSetBounds(int32x4_t **result, uint64_t a2, double a3, double a4, float64x2_t a5)
{
  v5 = *(a2 + 16);
  a5.f64[0] = 0.0;
  v6 = vdupq_lane_s64(vcgtq_f64(a5, v5).i64[0], 0);
  v7.i64[1] = *(a2 + 24);
  *v7.i64 = -v5.f64[0];
  v8 = vdupq_lane_s64(vcgtq_f64(a5, vdupq_laneq_s64(v5, 1)).i64[0], 0);
  v9 = vbslq_s8(v6, v7, v5);
  v10.i64[0] = v9.i64[0];
  v10.i64[1] = *&vnegq_f64(v5).f64[1];
  v11 = vbslq_s8(v8, v10, v9);
  v12 = vceqzq_f64(v11);
  v13 = vorrq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0];
  v14 = 0uLL;
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = vceqq_f64(v11, v11);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v15), 1), v15).u64[0] & 0x8000000000000000) == 0)
    {
      v16 = vaddq_f64(v5, *a2);
      v17.i64[0] = vbslq_s8(v6, v16, *a2).u64[0];
      v18.i64[0] = v17.i64[0];
      v18.i64[1] = *(a2 + 8);
      v17.i64[1] = v16.i64[1];
      v19 = vbslq_s8(v8, v17, v18);
      v20 = vcvtmq_s64_f64(vmaxnmq_f64(v19, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v14 = vuzp1q_s32(v20, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v19, v11), vdupq_n_s64(0x41C0000000000000uLL))), v20));
    }
  }

  (*result)[38] = v14;
  return result;
}

uint64_t CARenderOGLSetTuningParameters(uint64_t *a1, const __CFDictionary *a2)
{
  v4 = *a1;
  Int64 = CA_CFDictionaryGetInt64(a2, @"transient_heap_size");
  (*(*v4 + 80))(v4, Int64);
  v6 = *a1;
  v7 = CA_CFDictionaryGetInt64(a2, @"persistent_heap_size");
  v8 = *(*v6 + 88);

  return v8(v6, v7);
}

uint64_t anonymous namespace::_CARenderServerSnapshotDisplay(_anonymous_namespace_ *this, const __CFString *a2, void *cf, void *a4, const void *a5, int a6, int a7, __int128 *a8, const CATransform3D *a9, uint64_t a10, unint64_t a11, unsigned int *a12, unsigned int a13)
{
  v26 = a5;
  v15 = this;
  v16 = CFGetTypeID(cf);
  TypeID = IOSurfaceGetTypeID();
  v18 = v16 == TypeID;
  if (a4)
  {
    v19 = TypeID;
    v20 = CFGetTypeID(a4);
    v18 = v20 == IOSurfaceGetTypeID() && v16 == v19;
  }

  v22 = CFGetTypeID(cf);
  if (v22 == CFNumberGetTypeID())
  {
    v23 = [cf intValue];

    return CARenderServerCaptureDisplayWithTransform_(v15, a2, v23, v26, a6, a7, a8, a9, a10, a11, a12);
  }

  else if (v18)
  {

    return CARenderServerRenderDisplay_(v15, a2, cf, a4, v26, a6, a7, a8, a9, a10, a11, a12);
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::get_context_list_info(_anonymous_namespace_ *this, NSArray *a2, unsigned int *a3, CATransform3D *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  result = [(_anonymous_namespace_ *)this countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *v27;
    do
    {
      v10 = 0;
      v11 = &a3[32 * v8];
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(this);
        }

        v12 = *(*(&v26 + 1) + 8 * v10);
        *(&a2->super.isa + v8) = [objc_msgSend(v12 objectForKey:{@"contextId", "unsignedIntValue"}];
        if (a3)
        {
          v13 = [v12 objectForKey:@"transform"];
          if (v13)
          {
            [v13 CATransform3DValue];
            *(v11 + 4) = v21;
            *(v11 + 5) = v22;
            *(v11 + 6) = v23;
            *(v11 + 7) = v24;
            *v11 = v17;
            *(v11 + 1) = v18;
            v14 = v19;
            v15 = v20;
          }

          else
          {
            *(v11 + 4) = *&CATransform3DIdentity.m31;
            *(v11 + 5) = *&CATransform3DIdentity.m33;
            *(v11 + 6) = *&CATransform3DIdentity.m41;
            *(v11 + 7) = *&CATransform3DIdentity.m43;
            *v11 = *&CATransform3DIdentity.m11;
            *(v11 + 1) = *&CATransform3DIdentity.m13;
            v14 = *&CATransform3DIdentity.m21;
            v15 = *&CATransform3DIdentity.m23;
          }

          *(v11 + 2) = v14;
          *(v11 + 3) = v15;
        }

        ++v8;
        ++v10;
        v11 += 32;
      }

      while (v7 != v10);
      result = [(_anonymous_namespace_ *)this countByEnumeratingWithState:&v26 objects:v25 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t CARenderServerCreateSnapshots(mach_port_t a1, unint64_t a2, __IOSurface **a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [objc_msgSend(a4 objectForKey:{@"sizeWidth", "unsignedIntValue"}];
  v10 = [objc_msgSend(a4 objectForKey:{@"sizeHeight", "unsignedIntValue"}];
  v11 = 0;
  if (!v9)
  {
    goto LABEL_30;
  }

  v12 = v10;
  if (!v10)
  {
    goto LABEL_30;
  }

  if (!(a2 | a3))
  {
    v11 = 0;
    goto LABEL_30;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if ([objc_msgSend(a4 objectForKey:{@"formatWideGamut", "BOOLValue"}])
  {
    if ([objc_msgSend(a4 objectForKey:{@"formatOpaque", "BOOLValue"}])
    {
      v13 = 1999843442;
    }

    else
    {
      v13 = 1647534392;
    }
  }

  else
  {
    v13 = 1111970369;
  }

  v14 = [objc_msgSend(a4 objectForKey:{@"mapCacheAttribute", "unsignedIntValue"}];
  v16 = v14;
  if (v14)
  {
    if (v14 == 1)
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    if (v14 == 2)
    {
      v16 = v17 | 0x10;
    }

    else
    {
      v16 = v17;
    }
  }

  if (!a2)
  {
LABEL_29:
    v11 = 1;
    goto LABEL_30;
  }

  v26 = v13;
  iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v13, v9, v12, v16, 0, @"CA Snapshot (Unprotected)", v15);
  if (!iosurface_with_pixel_format)
  {
    *a2 = 0;
    goto LABEL_29;
  }

  v19 = iosurface_with_pixel_format;
  v27 = a1;
  v20 = [a4 mutableCopy];
  [(NSDictionary *)v20 setObject:v19 forKey:@"destination"];
  v21 = CARenderServerSnapshot_(a1, v20);

  *a2 = v19;
  v11 = 1;
  if (a3 && (v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = CA::Render::create_iosurface_with_pixel_format(v26, v9, v12, v16 | 2, v21 & 0x7FFFFFFFFFFFFFFFLL, @"CA Snapshot (Protected)", v22);
    if (v23)
    {
      v24 = [a4 mutableCopy];
      [(NSDictionary *)v24 setObject:v23 forKey:@"destination"];
      CARenderServerSnapshot_(v27, v24);
    }

    *a3 = v23;
  }

LABEL_30:
  objc_autoreleasePoolPop(v8);
  return v11;
}

void CARenderServerDumpVMRegions(void)
{
  v39 = *MEMORY[0x1E69E9840];
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v0 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "Dumping VM regions!", buf, 2u);
  }

  v1 = VMUGetFlagsForAllVMRegionStatistics();
  v2 = [objc_alloc(MEMORY[0x1E69D4F48]) initWithTask:*MEMORY[0x1E69E9A60] options:v1 | 0x90181];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = v2;
  v3 = [v2 regions];
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    v7 = MEMORY[0x1E69D4F70];
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        if (([v9 isSubmap] & 1) == 0 && (objc_msgSend(objc_msgSend(v9, "type"), "hasPrefix:", *v7) & 1) == 0)
        {
          v10 = &v9[*MEMORY[0x1E69D4F60]];
          v11 = *v10;
          v12 = *(v10 + 1) + *v10;
          v13 = v11 >> 31 < 3 || v12 > 0x300000000;
          if (v13 || *&v9[*MEMORY[0x1E69D4F58]] + *&v9[*MEMORY[0x1E69D4F68]])
          {
            v14 = [v9 descriptionWithOptions:v1 | 0x90181 maximumLength:0];
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v15 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
            {
              v16 = [v14 UTF8String];
              *buf = 136315138;
              v33 = v16;
              _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
            }
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v5);
  }

  v17 = [objc_msgSend(v26 descriptionForRegionTotals:{v1 | 0x90181), "componentsSeparatedByString:", @"\n"}];
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v18 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "SUMMARY:\n", buf, 2u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = [v17 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v28 + 1) + 8 * v22);
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v24 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          v25 = [v23 UTF8String];
          *buf = 136315138;
          v33 = v25;
          _os_log_error_impl(&dword_183AA6000, v24, OS_LOG_TYPE_ERROR, "%s\n", buf, 0xCu);
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v17 countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v20);
  }
}

void CA::WindowServer::Surface::set_display(CA::WindowServer::Surface *this, os_unfair_lock_s *a2)
{
  v3 = *(this + 1);
  if (v3 != a2)
  {
    if (a2)
    {
      CA::WindowServer::Display::add_shared_surface(a2, this);
      v3 = *(this + 1);
    }

    if (v3)
    {
      CA::WindowServer::Display::remove_shared_surface(v3, this);
    }

    *(this + 1) = a2;
  }
}

uint64_t CA::WindowServer::Surface::bits_per_pixel(CA::WindowServer::Surface *this)
{
  if (this > 1534354995)
  {
    if (this <= 1886680623)
    {
      if (this > 1647534391)
      {
        if (this > 1885745711)
        {
          if (this <= 1886676527)
          {
            if (this != 1885745712)
            {
              if (this != 1885745714)
              {
                v2 = 1885746228;
                goto LABEL_126;
              }

              return 22;
            }

            return 16;
          }

          if (this == 1886676528)
          {
            return 20;
          }

          if (this == 1886676530)
          {
            return 26;
          }

          if (this != 1886676532)
          {
            return 0;
          }

          return 39;
        }

        if (this > 1882468911)
        {
          if (this != 1882468912)
          {
            if (this != 1882468914)
            {
              v2 = 1882469428;
              goto LABEL_126;
            }

            return 22;
          }

          return 16;
        }

        if (this == 1647534392)
        {
          return 40;
        }

        v2 = 1815162994;
        goto LABEL_126;
      }

      if (this <= 1534617137)
      {
        if (this <= 1534359089)
        {
          if (this != 1534354996)
          {
            v6 = 1534359088;
            goto LABEL_134;
          }
        }

        else
        {
          if (this == 1534359090)
          {
            return 32;
          }

          if (this != 1534359092)
          {
            v6 = 1534617136;
            goto LABEL_134;
          }
        }

        return 48;
      }

      if (this <= 1534621231)
      {
        if (this == 1534617138)
        {
          return 32;
        }

        v7 = 26164;
        goto LABEL_110;
      }

      if (this == 1534621232)
      {
        return 24;
      }

      if (this != 1534621234)
      {
        v7 = 30260;
LABEL_110:
        v4 = v7 | 0x5B780000;
LABEL_111:
        if (this != v4)
        {
          return 0;
        }

        return 48;
      }

      return 32;
    }

    if (this <= 1999908960)
    {
      if (this <= 1952855091)
      {
        if (this <= 1886680627)
        {
          if (this != 1886680624)
          {
            v10 = 1886680626;
            goto LABEL_121;
          }

          return 20;
        }

        if (this == 1886680628)
        {
          return 39;
        }

        if (this != 1952854576)
        {
          v2 = 1952854578;
          goto LABEL_126;
        }

        return 24;
      }

      if (this <= 1953903153)
      {
        if (this != 1952855092)
        {
          v6 = 1953903152;
          goto LABEL_134;
        }
      }

      else
      {
        if (this == 1953903154)
        {
          return 32;
        }

        if (this != 1953903668)
        {
          v2 = 1999843442;
          goto LABEL_126;
        }
      }
    }

    else
    {
      if (this > 2019963439)
      {
        if (this > 2019964015)
        {
          if (this != 2019964016)
          {
            if (this == 2037741171)
            {
              return 16;
            }

            v9 = 2037741158;
            goto LABEL_130;
          }

          return 32;
        }

        if (this == 2019963440)
        {
          return 24;
        }

        if (this != 2019963442)
        {
          v4 = 2019963956;
          goto LABEL_111;
        }

        return 32;
      }

      if (this <= 2016686641)
      {
        if (this == 1999908961)
        {
          return 64;
        }

        v6 = 2016686640;
        goto LABEL_134;
      }

      if (this == 2016686642)
      {
        return 32;
      }

      if (this != 2016687156)
      {
        v2 = 2016687216;
        goto LABEL_126;
      }
    }

    return 48;
  }

  v1 = 12;
  if (this > 645428783)
  {
    if (this > 1111970368)
    {
      if (this <= 1530422835)
      {
        if (this <= 1380411456)
        {
          if (this == 1111970369)
          {
            return 32;
          }

          v9 = 1278555701;
LABEL_130:
          if (this != v9)
          {
            return 0;
          }

          return 16;
        }

        if (this == 1380411457)
        {
          return 64;
        }

        if (this == 1530422832)
        {
          return v1;
        }

        v3 = 26162;
      }

      else
      {
        if (this > 1530426931)
        {
          if (this == 1530426932 || this == 1534354992)
          {
            return 24;
          }

          v2 = 1534354994;
          goto LABEL_126;
        }

        if (this == 1530422836)
        {
          return 24;
        }

        if (this == 1530426928)
        {
          return v1;
        }

        v3 = 30258;
      }

      v9 = v3 | 0x5B380000;
      goto LABEL_130;
    }

    if (this <= 875704933)
    {
      if (this <= 645428787)
      {
        if (this != 645428784)
        {
          if (this != 645428786)
          {
            return 0;
          }

          return 22;
        }

        return 16;
      }

      if (this != 645428788)
      {
        if (this != 875704422 && this != 875704438)
        {
          return 0;
        }

        return v1;
      }

      return 32;
    }

    if (this <= 875836467)
    {
      if (this == 875704934)
      {
        return 16;
      }

      v9 = 875704950;
      goto LABEL_130;
    }

    if (this == 875836468)
    {
      return 16;
    }

    if (this == 875836518)
    {
      return 24;
    }

    v6 = 875836534;
LABEL_134:
    if (this != v6)
    {
      return 0;
    }

    return 24;
  }

  if (this > 645162543)
  {
    if (this > 645166643)
    {
      if (this <= 645424687)
      {
        if (this != 645166644)
        {
          if (this != 645346162)
          {
            if (this != 645346401)
            {
              return 0;
            }

            return 64;
          }

          return 32;
        }

        return 39;
      }

      if (this != 645424688)
      {
        if (this != 645424690)
        {
          v2 = 645424692;
          goto LABEL_126;
        }

        return 22;
      }

      return 16;
    }

    if (this <= 645162547)
    {
      if (this != 645162544)
      {
        v8 = 26162;
        goto LABEL_120;
      }

      return 20;
    }

    if (this != 645162548)
    {
      if (this != 645166640)
      {
        v8 = 30258;
LABEL_120:
        v10 = v8 | 0x26740000;
LABEL_121:
        if (this != v10)
        {
          return 0;
        }

        return 26;
      }

      return 20;
    }

    return 39;
  }

  if (this > 641234483)
  {
    if (this > 642934848)
    {
      if (this != 642934849)
      {
        if (this != 643969848)
        {
          v2 = 644624754;
          goto LABEL_126;
        }

        return 40;
      }

      return 64;
    }

    if (this == 641234484)
    {
      return 24;
    }

    v2 = 641877825;
LABEL_126:
    if (this == v2)
    {
      return 32;
    }

    return 0;
  }

  if (this <= 641230387)
  {
    if (this == 641230384)
    {
      return v1;
    }

    v5 = 26162;
    goto LABEL_98;
  }

  if (this == 641230388)
  {
    return 24;
  }

  if (this != 641234480)
  {
    v5 = 30258;
LABEL_98:
    v9 = v5 | 0x26380000;
    goto LABEL_130;
  }

  return v1;
}

uint64_t ___ZN2CA12WindowServer19accelerator_runloopEv_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  memset(&v4, 0, sizeof(v4));
  pthread_mutex_init(&v4, 0);
  memset(&v3, 0, sizeof(v3));
  pthread_cond_init(&v3, 0);
  v2[0] = &v4;
  v2[1] = &v3;
  v0 = x_thread_create(_ZZZN2CA12WindowServer19accelerator_runloopEvEUb_EN3__08__invokeEPv, v2, 0);
  CA::Render::Server::set_thread_priority(v0, 0xFFFFFFFFLL);
  pthread_mutex_lock(&v4);
  while (!CA::WindowServer::accelerator_runloop(void)::runloop)
  {
    pthread_cond_wait(&v3, &v4);
  }

  pthread_mutex_unlock(&v4);
  pthread_cond_destroy(&v3);
  return pthread_mutex_destroy(&v4);
}

void _ZZZN2CA12WindowServer19accelerator_runloopEvEUb_EN3__08__invokeEPv(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = pthread_setname_np("com.apple.coreanimation.msr_runloop");
  if (v2)
  {
    v3 = v2;
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v4 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "com.apple.coreanimation.msr_runloop";
      v9 = 1024;
      v10 = v3;
      _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "pthread_setname_np(%s) returned %d\n", &v7, 0x12u);
    }
  }

  pthread_mutex_lock(*a1);
  CA::WindowServer::accelerator_runloop(void)::runloop = CFRunLoopGetCurrent();
  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFRunLoopTimerCreate(0, Current + 3153600000.0, 3153600000.0, 0, 0, _ZZZZN2CA12WindowServer19accelerator_runloopEvEUb_ENK3__0clEPvENUlP16__CFRunLoopTimerS2_E_8__invokeES4_S2_, 0);
  CFRunLoopAddTimer(CA::WindowServer::accelerator_runloop(void)::runloop, v6, *MEMORY[0x1E695E8E0]);
  pthread_cond_signal(*(a1 + 8));
  pthread_mutex_unlock(*a1);
  CFRunLoopRun();
}

uint64_t CA::OGL::SWContext::set_destination(CA::OGL::SWContext *this, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, int a8, int a9, int a10)
{
  if (a2)
  {
    if (*(this + 218))
    {
      v10 = 0;
    }

    else
    {
      v10 = (a10 - 1) * a3;
    }

    v11 = &a2[v10];
    if (*(this + 218))
    {
      v12 = a3;
    }

    else
    {
      v12 = -a3;
    }

    v13 = (a4 + 7) >> 3;
  }

  else
  {
    LODWORD(v13) = 0;
    LODWORD(a4) = 0;
    v12 = 0;
    v11 = 0;
  }

  *(this + 314) = v11;
  *(this + 316) = v12;
  *(this + 636) = a4;
  *(this + 637) = v13;
  if (a5)
  {
    if (a5 == a2)
    {
      *(this + 315) = v11;
      a6 = v12;
      a5 = v11;
    }

    else if (*(this + 872))
    {
      *(this + 315) = a5;
    }

    else
    {
      a5 += (a10 - 1) * a6;
      *(this + 315) = a5;
      a6 = -a6;
    }
  }

  else
  {
    a6 = 0;
    *(this + 315) = 0;
  }

  *(this + 317) = a6;
  *(this + 638) = a7;
  *(this + 639) = a8;
  *(this + 640) = a9;
  *(this + 641) = a10;
  *(this + 307) = v11;
  *(this + 308) = a5;
  *(this + 309) = v12;
  *(this + 310) = a6;
  *(this + 622) = a4;
  *(this + 623) = v13;
  *(this + 624) = a7;
  *(this + 626) = a8;
  *(this + 625) = a9 + a7;
  *(this + 627) = a10 + a8;
  return 1;
}

uint64_t CA::OGL::SWContext::function_supported(CA::OGL::SWContext *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 16);
  v3 = v2 > 0x39 || ((1 << v2) & 0x3F000000423BFEBLL) == 0;
  if (!v3 || v2 == 76 || v2 == 74)
  {
    result = 0;
    v5 = v1 + 17;
    v6 = v1 + 19;
    for (i = 1; ; i = 0)
    {
      v8 = i;
      v9 = *(v5 + result);
      v10 = v9 > 0x2A;
      v11 = (1 << v9) & 0x40002000003;
      if (v10 || v11 == 0)
      {
        break;
      }

      v13 = *(v6 + result);
      v10 = v13 > 5;
      v14 = (1 << v13) & 0x2B;
      if (v10 || v14 == 0)
      {
        break;
      }

      result = 1;
      if ((v8 & 1) == 0)
      {
        return result;
      }
    }
  }

  return 0;
}

BOOL CA::OGL::SWContext::make_buffer_current(CA::OGL::SWContext *this, CA::WindowServer::Surface *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(this + 321);
  if (v3 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  if (v3)
  {
    (*(*v3 + 152))(v3);
    *(this + 321) = 0;
  }

  if (!a2 || !(*(*a2 + 144))(a2, &v22, &v21))
  {
    return 1;
  }

  v5 = *(a2 + 16);
  if (v5 <= 1278226487)
  {
    if (v5 == 1093677112)
    {
      return 0;
    }

    if (v5 == 1111970369)
    {
      v7 = v21;
      v6 = v22;
      v8 = 32;
      goto LABEL_16;
    }
  }

  else
  {
    switch(v5)
    {
      case 1278226488:
        v6 = 0;
        v7 = 0;
        v8 = 8;
        goto LABEL_16;
      case 1278555445:
        v6 = 0;
        v7 = 0;
        v8 = 15;
        goto LABEL_16;
      case 1278555701:
        v6 = 0;
        v7 = 0;
        v8 = 16;
LABEL_16:
        CA::OGL::SWContext::set_destination(this, v22, v21, v8, v6, v7, *(this + 152), *(this + 153), *(this + 154), *(this + 155));
        *(this + 321) = a2;
        return 1;
    }
  }

  if (x_log_get_ogl(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
  }

  v10 = x_log_get_ogl(void)::log;
  result = os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v11 = *(a2 + 16);
    v12 = v11 >> 24;
    if ((v11 & 0x80000000) != 0)
    {
      v13 = __maskrune(v12, 0x40000uLL);
      LODWORD(v11) = *(a2 + 16);
    }

    else
    {
      v13 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    if (v13)
    {
      v14 = v11 >> 24;
    }

    else
    {
      v14 = 32;
    }

    if (BYTE2(v11) <= 0x7Fu)
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v11) + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(BYTE2(v11), 0x40000uLL);
      LODWORD(v11) = *(a2 + 16);
    }

    if (v15)
    {
      v16 = (v11 << 8) >> 24;
    }

    else
    {
      v16 = 32;
    }

    if (BYTE1(v11) <= 0x7Fu)
    {
      v17 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v11) + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(BYTE1(v11), 0x40000uLL);
      LODWORD(v11) = *(a2 + 16);
    }

    if (v17)
    {
      v18 = v11 >> 8;
    }

    else
    {
      v18 = 32;
    }

    if (v11 <= 0x7Fu)
    {
      v19 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(v11, 0x40000uLL);
    }

    if (v19)
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = 32;
    }

    *buf = 67109888;
    v24 = v14;
    v25 = 1024;
    v26 = v16;
    v27 = 1024;
    v28 = v18;
    v29 = 1024;
    v30 = v20;
    _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "SW renderer invalid destination format %c%c%c%c", buf, 0x1Au);
    return 0;
  }

  return result;
}

uint64_t CA::OGL::SWContext::clear_region(uint64_t a1, uint64_t a2, float16x4_t *a3)
{
  v5 = a1;
  v23[3] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 680);
  v7 = *(a1 + 672);
  if (v6 != v7 || (!v6 ? (v8 = 0) : (v8 = (*(v7 + 144) >> 1) & 0x1F), *(a1 + 668) != v8))
  {
    a1 = CA::OGL::Context::prepare_destination_(a1);
  }

  CA::OGL::ExtendedColor::word32(a1, *a3);
  v9 = v5[312];
  v10.i32[0] = vsub_s32(vdup_lane_s32(v9, 1), v9).u32[0];
  v9.i32[1] = v5[313].i32[0];
  v10.i32[1] = v5[313].i32[1] - v9.i32[1];
  v22 = 0uLL;
  v23[1] = 0;
  v23[2] = 0;
  v23[0] = a2;
  v11 = vclez_s32(v10);
  v12 = vadd_s32(v9, v10);
  v20 = v9;
  v21 = vpmax_u32(v11, v11).u32[0];
  while (1)
  {
    result = CA::ShapeIterator::iterate(v23, &v22);
    if (!result)
    {
      break;
    }

    v14 = vclez_s32(*(&v22 + 8));
    if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) == 0)
    {
      if ((v21 & 0x80000000) != 0 || (v15 = vmax_s32(*&v22, v20), v16 = vsub_s32(vmin_s32(vadd_s32(*&v22, *(&v22 + 8)), v12), v15), v17 = vclez_s32(v16), (vpmax_u32(v17, v17).u32[0] & 0x80000000) != 0))
      {
        *(&v22 + 1) = 0;
      }

      else
      {
        *&v18 = v15;
        *(&v18 + 1) = v16;
        v22 = v18;
        if (v5[307])
        {
          CGBlt_fillBytes();
        }

        v19 = v5[308];
        if (v19)
        {
          if (*&v19 != *&v5[307])
          {
            CGBlt_fillBytes();
          }
        }
      }
    }
  }

  return result;
}

void CA::OGL::SWContext::blur_surface(CA::OGL::Context *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, double a7, double a8, float64x2_t a9)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16) == 0 && !a4 && ((LODWORD(a7) = 1.0, a5 == 1.0) ? (v12 = a6 == 1.0) : (v12 = 0), v12 ? (v13 = *(a3 + 32) == 0) : (v13 = 0), v13))
  {
    v14 = vand_s8(vcvt_s32_f32(vrndp_f32(vmla_f32(0x3F0000003F000000, vdup_n_s32(0x40347A2Bu), *a3))), vmovn_s64(vcgtq_f64(vcvtq_f64_f32(*a3), vdupq_n_s64(0x3FE3333333333333uLL))));
    v15 = v14.i32[0];
    if ((v14.i32[0] & 0x80000000) == 0)
    {
      v16 = v14.u32[1];
      if ((v14.i32[1] & 0x80000000) == 0)
      {
        v17 = *(a2 + 48);
        v45 = v17;
        v18 = v17.i32[2];
        if (v17.i32[2] <= v17.i32[3])
        {
          v19 = v17.i32[3];
        }

        else
        {
          v19 = v17.i32[2];
        }

        if (v17.i32[2] >= v17.i32[3])
        {
          v18 = v17.i32[3];
        }

        if (v19 <= 1073741822 && v18 >= 1)
        {
          v21 = vsub_s32(*v17.i8, v14);
          v22 = vadd_s32(vadd_s32(v14, v14), *&vextq_s8(v17, v17, 8uLL));
          v23 = vclez_s32(v22);
          if (vorr_s8(v23, vdup_lane_s32(v23, 1)).u8[0])
          {
            v24 = -1;
          }

          else
          {
            v24 = 0;
          }

          *v45.i8 = v21;
          v45.u64[1] = vbic_s8(v22, vdup_n_s32(v24));
        }

        v25 = 8;
        if (*(*(a1 + 2) + 16) - 11 >= 2)
        {
          if ((*(a2 + 92) & 7) != 0)
          {
            v25 = 15;
          }

          else
          {
            v25 = 8;
          }
        }

        v46 = 0.0;
        v47 = 0.0;
        *&v48 = 0;
        v26 = (*(*a1 + 704))(a1, 1, &v45, v25, &v46, @"software-temp-surface");
        if (v26)
        {
          v27 = v26;
          CA::OGL::Context::push_surface(a1, v26, 1u, 64, 0);
          v28 = *(a1 + 85);
          v29 = *(a1 + 84);
          if (v28 != v29 || (!v28 ? (v30 = 0) : (v30 = (*(v29 + 144) >> 1) & 0x1F), *(a1 + 167) != v30))
          {
            CA::OGL::Context::prepare_destination_(a1);
          }

          if ((*(a1 + 692) & 0x200) != 0)
          {
            CA::OGL::Context::flatten_detached_layers_(a1);
          }

          if ((*(v27 + 92) & 7) != 0)
          {
            CGBlt_copyBytes();
            v31 = 4;
          }

          else
          {
            if ((*(a2 + 92) & 7) != 0)
            {
              CA::convert_bgra8888_to_mask(*(a2 + 160), *(a2 + 152), (*(v27 + 160) + *(v27 + 152) * v16 + v15), *(v27 + 152), *(a2 + 56), *(a2 + 60));
            }

            else
            {
              CGBlt_copyBytes();
            }

            v31 = 1;
          }

          CA::OGL::Context::marked_destination(a1);
          CA::OGL::Context::pop_surface(a1);
          v32 = *(a3 + 8);
          v33 = *(a3 + 12);
          v34 = v32 + v45.i32[0];
          v35 = v33 + v45.i32[1];
          v36 = v32 + (v45.i32[2] + v45.i32[0]);
          v37 = v33 + (v45.i32[3] + v45.i32[1]);
          CA::OGL::Context::bind_surface(a1, v27, 0, 0, 0, 0.0);
          v60 = 0u;
          v38 = *(*(a1 + 82) + 8);
          v58[0] = a1;
          v58[1] = v38;
          v59 = 0u;
          v58[2] = 0;
          WORD4(v59) = 256;
          CA::OGL::Context::ClippedArray::start(v58);
          while (CA::OGL::Context::ClippedArray::next_rect(v58, &v45))
          {
            CA::OGL::Context::array_rect(a1, v34, v35, v36, v37);
            v39 = *(*(a1 + 2) + 8);
            v40 = *(a1 + 17) + 48 * *(a1 + 18);
            *(v40 - 160) = v39;
            *(v40 - 112) = v39;
            *(v40 - 64) = v39;
            *(v40 - 16) = v39;
            v41 = *(a1 + 17) + 48 * *(a1 + 18);
            *(v41 - 176) = 0;
            *(v41 - 124) = 0;
            v42 = vcvt_f32_s32(*(v27 + 56));
            *(v41 - 128) = v42.i32[0];
            *(v41 - 80) = v42;
            *(v41 - 32) = 0;
            *(v41 - 28) = v42.i32[1];
          }

          CA::OGL::Context::unbind_surface(a1, v27, 0);
          CA::OGL::Context::release_surface(a1, v27);
          v43 = *(a1 + 2);
          if (*(v43 + 16) == 12)
          {
            v46 = v34;
            v47 = v35;
            v48 = xmmword_183E20E60;
            v49 = v36;
            v50 = v35;
            v51 = xmmword_183E20E60;
            v52 = v36;
            v53 = v37;
            v54 = xmmword_183E20E60;
            v55 = v34;
            v56 = v37;
            v57 = xmmword_183E20E60;
            v44 = *(v43 + 8);
            CA::OGL::emit_quad_surround(a1, &v46, &v44);
          }
        }
      }
    }
  }

  else
  {

    CA::OGL::Context::blur_surface(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t CA::OGL::SWContext::set_surface(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 92);
    if ((v3 & 7) != 0)
    {
      v5 = *(a2 + 152);
      v4 = *(a2 + 160);
      *(a1 + 2456) = v4;
      *(a1 + 2472) = v5;
      v6 = (v3 & 8) == 0;
      if ((v3 & 8) != 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5;
      }

      v9 = 0x400000020;
    }

    else
    {
      *(a1 + 2456) = 0;
      *(a1 + 2472) = 0;
      v9 = 0;
      v8 = *(a2 + 152);
      v7 = *(a2 + 160);
    }

    *(a1 + 2464) = v7;
    *(a1 + 2480) = v8;
    *(a1 + 2488) = v9;
    v13 = *(a2 + 48);
    v14 = *(a2 + 52);
    *(a1 + 2496) = v13;
    *(a1 + 2504) = v14;
    v15 = *(a2 + 60);
    *(a1 + 2500) = *(a2 + 56) + v13;
    *(a1 + 2508) = v15 + v14;
    if ((*(a2 + 147) & 0x20) != 0)
    {
      bzero(*(a2 + 160), *(a2 + 176));
      *(a2 + 144) = *(a2 + 144) & 0x1FFFFFFF | 0xC0000000;
    }
  }

  else
  {
    v10 = *(a1 + 2528);
    *(a1 + 2456) = *(a1 + 2512);
    *(a1 + 2472) = v10;
    *(a1 + 2488) = *(a1 + 2544);
    v11 = *(a1 + 2552);
    *(a1 + 2496) = v11;
    v12 = *(a1 + 2556);
    *(a1 + 2504) = v12;
    *(a1 + 2500) = *(a1 + 2560) + v11;
    *(a1 + 2508) = *(a1 + 2564) + v12;
  }

  return 1;
}

uint64_t CA::OGL::SWContext::bind_surface_impl(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v6 = *(result + 16);
  *(v6 + 2 * a4 + 144) = 3;
  *(v6 + 8 * a4 + 176) = a2;
  *(a2 + 192) = (a5 != 0) | (16 * (a6 != 0));
  return result;
}

void CA::OGL::SWContext::finalize_surface(int a1, void *ptr, void *a3)
{
  v4 = *(ptr + 21);
  if (v4)
  {
    CA::Render::aligned_free(*(ptr + 20), v4, a3);
  }

  v5 = *(ptr + 23);
  if (v5)
  {
    IOSurfaceUnlock(v5, 0, 0);
    CFRelease(*(ptr + 23));
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, ptr);
}

char *CA::OGL::SWContext::create_null_surface(CA::OGL::SWContext *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC8uLL, 0x10B0040D31CE8C3uLL);
  *v2 = 1;
  *(v2 + 40) = xmmword_183E21380;
  *(v2 + 7) = 0x100000001;
  *(v2 + 23) = 1039;
  v3 = *(v2 + 36);
  *(v2 + 21) = 0;
  *(v2 + 22) = 0;
  *(v2 + 19) = 4;
  *(v2 + 20) = &CA::OGL::SWContext::create_null_surface(void)::pixel;
  v2[192] = 0;
  *(v2 + 36) = v3 | 0x80000001;
  *(v2 + 74) |= 1u;
  CA::OGL::Context::track_surface(this, v2);
  return v2;
}

void CA::OGL::SWContext::copy_destination(CA::OGL::Context *this, uint64_t a2, int32x2_t *a3, uint64_t a4, int32x2_t *a5, int32x2_t *a6, _BYTE *a7)
{
  v13 = *(this + 85);
  v14 = *(this + 84);
  if (v13 != v14 || (!v13 ? (v15 = 0) : (v15 = (*(v14 + 144) >> 1) & 0x1F), *(this + 167) != v15))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  if ((*(this + 692) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  if (a4)
  {
    v16 = a5 + 1;
    do
    {
      v17.i32[0] = *(this + 624);
      v17.i32[1] = *(this + 626);
      v18 = vsub_s32(v16[-1], v17);
      v19 = vmax_s32(v18, 0);
      v20 = vmin_s32(v18, 0);
      v21 = vsub_s32(*a6, v20);
      v22 = vmin_s32(v21, 0);
      v23 = vsub_s32(v19, v22);
      v24 = vsub_s32(*v16, vadd_s32(v20, v22));
      v25 = vmax_s32(v21, 0);
      v21.i32[0] = *(this + 625);
      v21.i32[1] = *(this + 627);
      v26 = vsub_s32(v21, v17);
      v27 = vbsl_s8(vcgt_s32(vadd_s32(v23, v24), v26), vsub_s32(v26, v23), v24);
      v28 = vclez_s32(vbsl_s8(vcgt_s32(vadd_s32(v27, v25), a3[5]), vsub_s32(a3[5], v25), v27));
      if (((v28.i32[0] | v28.i32[1]) & 1) == 0)
      {
        if (*(this + 622) != 32 || !*(this + 307))
        {
          break;
        }

        CGBlt_copyBytes();
      }

      ++a6;
      v16 += 2;
      --a4;
    }

    while (a4);
  }

  CA::OGL::Context::marked_surface(this, a3);
  *a7 = 0;
}

void CA::OGL::SWContext::reuse_surface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 48) = *a3;
  *(a2 + 96) = 0;
  *(a2 + 144) &= 0xF0FFFFFF;
  *(a2 + 148) &= 0xFE7Fu;
  v3 = *(a3 + 8);
  *(a2 + 40) = v3;
  if ((*(a2 + 92) & 0xF) == 8)
  {
    v4 = v3;
  }

  else
  {
    v4 = 4 * v3;
  }

  *(a2 + 152) = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
}

_DWORD *CA::OGL::SWContext::create_surface_from_iosurface(CA::OGL::SWContext *this, int a2, int a3, int a4, IOSurfaceRef buffer)
{
  if (a2 != 1 || IOSurfaceLock(buffer, 0, 0))
  {
    return 0;
  }

  BaseAddress = IOSurfaceGetBaseAddress(buffer);
  BytesPerRow = IOSurfaceGetBytesPerRow(buffer);
  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  surface_from_data = CA::OGL::SWContext::create_surface_from_data(Height, BaseAddress, BytesPerRow, a3, a4, Width, Height, 0);
  v8 = surface_from_data;
  if (surface_from_data)
  {
    *(surface_from_data + 23) = buffer;
    CFRetain(buffer);
  }

  return v8;
}

_DWORD *CA::OGL::SWContext::create_surface_from_data(CA::OGL::SWContext *this, void *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  result = 0;
  if (a6 >= 1)
  {
    v10 = (a7 - 1);
    if (a7 >= 1)
    {
      result = 0;
      if (a6 <= 0x4000 && a7 <= 0x4000)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC8uLL, 0x10B0040D31CE8C3uLL);
        if (result)
        {
          *result = 1;
          result[10] = a6;
          result[11] = a7;
          result[12] = a4;
          result[13] = a5;
          result[14] = a6;
          result[15] = a7;
          if (a8)
          {
            v17 = 8;
          }

          else
          {
            v17 = 15;
          }

          result[23] = v17;
          v18 = result[36];
          if (a8)
          {
            v19 = 0;
          }

          else
          {
            v19 = 2;
          }

          *(result + 21) = 0;
          *(result + 22) = (a6 << v19) + v10 * a3;
          *(result + 19) = a3;
          *(result + 20) = a2;
          result[36] = v18 | 0x90000001;
          *(result + 74) |= 1u;
        }
      }
    }
  }

  return result;
}

uint64_t CA::OGL::SWContext::create_surface_with_properties(void *a1, int a2, int8x16_t *a3, __int16 a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3->i32[2];
  if (v4 < 1)
  {
    return 0;
  }

  v6 = a3->i32[3];
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  if (a2 == 1 && v4 <= 0x4000 && v6 <= 0x4000)
  {
    v25[0] = 0;
    v9 = a4 | 7;
    if ((a4 & 7) == 0)
    {
      v9 = a4;
    }

    v10 = v9 & 0x40F;
    if ((v9 & 0xF) != 8)
    {
      v4 *= 4;
    }

    v11 = (v4 + 15) & 0x3FFF0;
    v12 = v6 * v11;
    v13 = a1 + 10;
    v7 = a1[10];
    if (v7)
    {
      if (v12 <= *(v7 + 176))
      {
LABEL_15:
        *v13 = *(v7 + 8);
        *v7 = 1;
        v15 = vextq_s8(*a3, *a3, 8uLL);
        *(v7 + 40) = v15;
        *(v7 + 56) = v15.i64[0];
        *(v7 + 64) = 0;
        *(v7 + 148) &= ~2u;
        *(v7 + 96) = 0;
        *(v7 + 152) = v11;
        *(v7 + 92) = v10;
        v16 = *(v7 + 144) | 1;
LABEL_21:
        *(v7 + 144) = v16;
        CA::OGL::Context::track_surface(a1, v7);
        return v7;
      }

      while (1)
      {
        v14 = v7;
        v7 = *(v7 + 8);
        if (!v7)
        {
          break;
        }

        if (v12 <= *(v7 + 176))
        {
          v13 = (v14 + 8);
          goto LABEL_15;
        }
      }
    }

    v17 = CA::Render::aligned_malloc(v12, v25, 0);
    if (v17)
    {
      v18 = v17;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v19 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC8uLL, 0x10B0040D31CE8C3uLL);
      v7 = v19;
      if (!v19)
      {
        CA::Render::aligned_free(v18, v25[0], v20);
        return v7;
      }

      *v19 = 1;
      v21 = vextq_s8(*a3, *a3, 8uLL);
      *(v19 + 40) = v21;
      *(v19 + 7) = v21.i64[0];
      *(v19 + 8) = 0;
      *(v19 + 23) = v10;
      v19[96] = 0;
      v22 = *(v19 + 36);
      v23 = v25[0];
      *(v19 + 21) = v25[0];
      *(v19 + 22) = v23;
      *(v19 + 19) = v11;
      *(v19 + 20) = v18;
      v16 = v22 & 0x2FE0FFFE | 0xD0040001;
      goto LABEL_21;
    }

    return 0;
  }

  return v7;
}

void CA::OGL::SWContext::delete_image(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 72) = 0;
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    CA::Render::aligned_free(v5, *(a2 + 96), a3);
    *(a2 + 88) = 0;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    CA::WindowServer::Surface::unref(v6);
    *(a2 + 32) = 0;
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    CA::WindowServer::Surface::unref(v7);
    *(a2 + 40) = 0;
  }

  *(a2 + 112) = 0;
}

double CA::OGL::SWContext::new_image(CA::OGL::SWContext *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v1 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x78uLL, 0xDEEC3011uLL);
  if (v1)
  {
    v1[14] = 0;
    result = 0.0;
    *(v1 + 5) = 0u;
    *(v1 + 6) = 0u;
    *(v1 + 3) = 0u;
    *(v1 + 4) = 0u;
    *(v1 + 1) = 0u;
    *(v1 + 2) = 0u;
    *v1 = 0u;
  }

  return result;
}

void *CA::OGL::SWContext::image_surface(uint64_t a1, uint64_t a2, atomic_uint **this)
{
  result = CA::OGL::SWContext::retain_image(a2, this);
  if (result)
  {
    v6 = result;
    result = *(a2 + 32);
    if (!result)
    {
      v7 = *(v6 + 12);
      if (v7 == 23)
      {
        v8 = CA::Render::Image::retain_iosurface(v6);
        if (!v8)
        {
          return *(a2 + 32);
        }
      }

      else
      {
        if (v7 != 57)
        {
          return 0;
        }

        v8 = *(v6 + 128);
        if (!v8)
        {
          return 0;
        }

        CFRetain(*(v6 + 128));
      }

      v9 = *(a1 + 600);
      if (v9)
      {
        v9 = (*(*v9 + 16))(v9);
      }

      result = CA::WindowServer::IOSurface::wrap_buffer(v9, v8, 0, 1);
      *(a2 + 32) = result;
    }
  }

  return result;
}

atomic_uint **CA::OGL::SWContext::retain_image(uint64_t a1, atomic_uint **this)
{
  while (1)
  {
    v4 = *(this + 12);
    if (v4 != 40)
    {
      break;
    }

    this = CA::Render::PixelBuffer::image(this);
    if (!this)
    {
      return this;
    }
  }

  switch(v4)
  {
    case 9:
      if (!*(a1 + 8))
      {
        *(a1 + 8) = this;
        (*(*this + 24))(this);
      }

      break;
    case 23:
      *(a1 + 112) = 1;
      if (!*(a1 + 8))
      {
        *(a1 + 8) = this;
        atomic_fetch_add(this + 41, 1u);
      }

      break;
    case 57:
      if (!*(a1 + 8))
      {
        *(a1 + 8) = this;
        (*(*this + 24))(this);
      }

      if (!*(a1 + 72))
      {
        v5 = this[16];
        if (v5)
        {
          CFRetain(this[16]);
        }

        *(a1 + 72) = v5;
        *(a1 + 80) = (*(*this + 13))(this);
      }

      break;
  }

  return this;
}

uint64_t *CA::OGL::SWContext::bind_image_impl(uint64_t a1, unsigned int a2, CA::Render::Texture *a3, __int16 a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = CA::OGL::Context::lookup_image(a1, a3, 1);
  v16 = v15;
  if (!v15)
  {
    return v16;
  }

  v17 = CA::OGL::SWContext::retain_image(v15, a3);
  if (!v17)
  {
    return 0;
  }

  v18 = v16[8];
  if (!v18)
  {
    v20 = *(v17 + 4);
    v19 = *(v17 + 5);
    if (v20 <= 0x4000 && v19 <= 0x4000)
    {
      v16[8] = v16;
      v18 = v16;
      goto LABEL_7;
    }

    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v23 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 67109376;
      v25[1] = v20;
      v26 = 1024;
      v27 = v19;
      _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "%d by %d image is too large for software renderer, ignoring\n", v25, 0xEu);
    }

    return 0;
  }

LABEL_7:
  v21 = 1;
  if (*(v17 + 3) & 0x1000 | a4 & 0x200)
  {
    v21 = 2;
  }

  *(v16 + 52) = *(v16 + 52) & 0xFFFFFFFFFFFF0000 | v21 | 0x100000000000000;
  v22 = *(a1 + 16);
  *(v22 + 2 * a2 + 144) = v21;
  *(v22 + 8 * a2 + 176) = v18;
  *(v16 + 54) = (((a5 != 0) << 16) | ((a6 != 0) << 20)) >> 16;
  *a8 = xmmword_183E21100;
  if (((a4 & 0x800) == 0) != (*(v17 + 13) & 8) >> 3)
  {
    *(a8 + 4) = 1065353216;
    *(a8 + 12) = 0;
  }

  return v16;
}

double CA::OGL::SWContext::bind_gaussian(CA::OGL::SWContext *this, unsigned int a2, float *a3)
{
  v5 = *(this + 2);
  v6 = CA::OGL::state_image_texture_unit(v5, a2);
  *(v5 + 2 * v6 + 144) = 4;
  *(v5 + 8 * v6 + 176) = 6;
  *a3 = 0x3F80000000000000;
  result = 0.00781250185;
  *(v5 + 16 * a2 + 96) = xmmword_183E21110;
  return result;
}

__n128 CA::OGL::SWContext::bind_uneven_supercircle(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 16);
  v8 = CA::OGL::state_image_texture_unit(v7, a2);
  *(v7 + 2 * v8 + 144) = 4;
  *(v7 + 8 * v8 + 176) = 5;
  *a4 = 0x3F80000000000000;
  *(v7 + 16 * a2 + 96) = xmmword_183E21110;
  v9 = v7 + 48 * a2;
  *(v9 + 400) = *a3;
  result = *(a3 + 16);
  *(v9 + 416) = result;
  return result;
}

__n128 CA::OGL::SWContext::bind_uneven_circle(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 16);
  v8 = CA::OGL::state_image_texture_unit(v7, a2);
  *(v7 + 2 * v8 + 144) = 4;
  *(v7 + 8 * v8 + 176) = 4;
  *a4 = 0x3F80000000000000;
  *(v7 + 16 * a2 + 96) = xmmword_183E21110;
  v9 = v7 + 48 * a2;
  *(v9 + 400) = *a3;
  result = *(a3 + 16);
  *(v9 + 416) = result;
  return result;
}

double CA::OGL::SWContext::bind_supercircle(CA::OGL::SWContext *this, unsigned int a2, int a3, BOOL a4, BOOL a5, double *a6, unsigned int a7, float *a8)
{
  v10 = *(this + 2);
  v11 = CA::OGL::state_image_texture_unit(v10, a2);
  *(v10 + 2 * v11 + 144) = 4;
  *(v10 + 8 * v11 + 176) = 3;
  __asm { FMOV            V0.2S, #-1.0 }

  *a6 = -_D0;
  result = 0.00781250185;
  *(v10 + 16 * a2 + 96) = xmmword_183E21110;
  return result;
}

double CA::OGL::SWContext::bind_circle(CA::OGL::SWContext *this, unsigned int a2, int a3, BOOL a4, BOOL a5, double *a6)
{
  v8 = *(this + 2);
  v9 = CA::OGL::state_image_texture_unit(v8, a2);
  *(v8 + 2 * v9 + 144) = 4;
  *(v8 + 8 * v9 + 176) = 2;
  __asm { FMOV            V0.2S, #-1.0 }

  *a6 = -_D0;
  result = 0.00781250185;
  *(v8 + 16 * a2 + 96) = xmmword_183E21110;
  return result;
}

double CA::OGL::SWContext::bind_square(CA::OGL::SWContext *this, unsigned int a2, BOOL a3, BOOL a4, double *a5)
{
  v7 = *(this + 2);
  v8 = CA::OGL::state_image_texture_unit(v7, a2);
  *(v7 + 2 * v8 + 144) = 4;
  *(v7 + 8 * v8 + 176) = 1;
  __asm { FMOV            V0.2S, #-1.0 }

  *a5 = -_D0;
  result = 0.00781250185;
  *(v7 + 16 * a2 + 96) = xmmword_183E21110;
  return result;
}