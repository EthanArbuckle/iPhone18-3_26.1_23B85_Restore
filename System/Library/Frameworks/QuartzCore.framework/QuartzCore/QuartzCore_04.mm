void CA::OGL::MetalContext::draw_elements(CA::OGL::Context *a1, int a2, unsigned int a3, unsigned __int16 *a4, char *a5, int a6, int a7, void *a8)
{
  if (!a2)
  {
    __assert_rtn("draw_elements", "ogl-metal.mm", 8829, "mode != OGL_PRIMITIVE_QUADS");
  }

  if (*(*(a1 + 2) + 16) - 104 <= 6)
  {
    __assert_rtn("draw_elements", "ogl-metal.mm", 8831, "get_texture_function() < OGL_TEX_PATH_FIRST || get_texture_function() > OGL_TEX_PATH_LAST");
  }

  if (a2 == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  if (a4)
  {
    CA::OGL::MetalContext::draw(a1, v8, a3, 1u, a5, 0x30uLL, 0x10u, a6, a7 - a6, a4, a8, 0);
  }

  else
  {
    CA::OGL::MetalContext::draw(a1, v8, a3, 1u, a5, 0x30uLL, 0x10u, 0, a3, 0, a8, 0);
  }
}

void *std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::find<CA::OGL::MetalContext::Pipeline::Spec>(void *a1, CA::Hasher64 *this)
{
  v4 = CA::Hasher64::hash(this, 0x20uLL);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (i[2] == *this && i[3] == *(this + 1) && i[4] == *(this + 2) && i[5] == *(this + 3))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t CA::OGL::MetalContext::Pipeline::Spec::lift_blend_function(uint64_t this)
{
  v1 = *(this + 14);
  if ((v1 & 0x4000000) != 0)
  {
    __assert_rtn("lift_blend_function", "ogl-metal.mm", 6265, "!fragment.generic");
  }

  v2 = (v1 >> 8) & 0x3F;
  if (v2 == 3 || v2 == 62)
  {
    goto LABEL_4;
  }

  v3 = (*(this + 23) >> 8) & 0x3FF;
  v5 = v3 == 115 || v3 == 125;
  v6 = (v1 & 0x3000000) != 0 || v5;
  v7 = *(this + 18);
  if ((v7 & 8) == 0 && (v1 & 0x80003F00) == 15360 && !v6)
  {
    v1 &= 0x78FFCCFFu;
    *(this + 14) = v1;
LABEL_17:
    if (v3 != 125 && v3 != 115)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((v1 & 0x3000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  if ((*(&CA::OGL::MetalContext::blend_function_info + 3 * ((v1 >> 8) & 0x3F)) & 0x20) != 0)
  {
    return this;
  }

LABEL_20:
  if ((v1 & 0x3E00) <= 0x1900 && (!v6 && (v7 & 8) == 0 || (v1 & 0x3F00) != 0xC00 && ((v7 & 8) == 0 || (*(&CA::OGL::MetalContext::blend_function_info + 3 * ((v1 >> 8) & 0x3F)) & 0x10) == 0)) && (v1 & 0x3F00) != 0 && ((v1 & 0x70000) == 0 || (*(&CA::OGL::MetalContext::blend_function_info + 3 * ((v1 >> 8) & 0x3F)) & 1) == 0))
  {
LABEL_4:
    if ((*&CA::OGL::MetalContext::texture_function_info[8 * (v1 & 0x7F) + 6] & 8) == 0)
    {
      *(this + 23) = *(this + 23) & 0xFF03FFFF | (((v1 >> 8) & 0x3F) << 18);
      *(this + 14) = v1 & 0xFFFFC0FF | 0x3E00;
    }
  }

  return this;
}

unint64_t CA::Hasher64::hash(CA::Hasher64 *this, unint64_t a2)
{
  v2 = 0xB492B66FBE98F273;
  v3 = a2;
  do
  {
    v4 = *this;
    this = (this + 8);
    v5 = v3;
    v2 = 5 * __ROR8__((461845907 * ((0xCBE41013C0000000 * v4) | ((0x9AE16A3B2F90404FLL * v4) >> 34))) ^ v2, 38) + 3864292196;
    v3 -= 8;
  }

  while (v3 > 7);
  v6 = 0;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  if (v5 > 11)
  {
    if (v5 > 13)
    {
      if (v5 != 14)
      {
        v6 = *(this + 6) << 48;
      }

      v6 |= *(this + 5) << 40;
    }

    else if (v5 == 12)
    {
      goto LABEL_16;
    }

    v6 ^= *(this + 4) << 32;
LABEL_16:
    v6 ^= *(this + 3) << 24;
LABEL_17:
    v6 ^= *(this + 2) << 16;
    goto LABEL_18;
  }

  if (v5 <= 9)
  {
    if (v5 == 8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v5 != 10)
  {
    goto LABEL_17;
  }

LABEL_18:
  v6 ^= *(this + 1) << 8;
LABEL_19:
  v2 = 5 * __ROR8__((461845907 * ((0xCBE41013C0000000 * (v6 ^ *this)) | ((0x9AE16A3B2F90404FLL * (v6 ^ *this)) >> 34))) ^ v2, 38) + 3864292196;
  v7 += 8;
LABEL_20:
  v8 = 0xBF58476D1CE4E5B9 * (v7 ^ v2 ^ ((v7 ^ v2) >> 30));
  return (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
}

void CA::OGL::MetalContext::Pipeline::wait_for_completion(CA::OGL::MetalContext::Pipeline *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_block_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    _Block_release(*(this + 1));
    *(this + 1) = 0;
  }
}

uint64_t CA::OGL::RenderSurface::set_dest(CA::OGL::RenderSurface *this, float a2, int a3, int32x4_t a4, int32x4_t a5, double a6, float64x2_t a7, float64x2_t a8)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    return 1;
  }

  v12 = *(this + 1);
  v13 = **(v12 + 8);
  v14 = *(this + 5);
  v81 = 0uLL;
  if ((*(v12 + 239) & 8) != 0)
  {
    v15 = *(v12 + 208);
    v81 = v15;
  }

  else
  {
    CA::Shape::get_bounds(v12 + 160, &v81);
    v15 = v81;
  }

  v16 = v15.u64[1];
  v80 = v15;
  if (a2 == 1.0)
  {
    goto LABEL_21;
  }

  v17 = v15.i32[3];
  if (v15.i32[2] <= v15.i32[3])
  {
    v18 = v15.i32[3];
  }

  else
  {
    v18 = v15.i32[2];
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v18;
  v19 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v20.i64[0] = v15.i32[0];
  v20.i64[1] = v15.i32[1];
  v21 = vcvtq_f64_s64(v20);
  v22 = v17;
  a7.f64[0] = 1.79769313e308;
  if (v18 <= 1073741822)
  {
    a8.f64[0] = v16.i32[0];
  }

  else
  {
    a8.f64[0] = 1.79769313e308;
  }

  if (v18 > 1073741822)
  {
    v22 = 1.79769313e308;
  }

  v23 = a2;
  v24 = vcgtq_f64(a7, a8).u64[0];
  a8.f64[1] = v22;
  v25 = vdupq_lane_s64(v24, 0);
  v26 = vbslq_s8(v19, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v21);
  *&v27.i64[1] = v22;
  *v27.i64 = a8.f64[0] * a2;
  v28 = vbslq_s8(v25, v27, a8);
  v29.i64[1] = v26.i64[1];
  *v29.i64 = a2 * *v26.i64;
  v30 = vbslq_s8(v25, v29, v26);
  if (v28.f64[1] < 1.79769313e308)
  {
    v30.f64[1] = vmuld_lane_f64(v23, v30, 1);
    v28.f64[1] = v28.f64[1] * v23;
  }

  v31 = vceqzq_f64(v28);
  if ((vorrq_s8(vdupq_laneq_s64(v31, 1), v31).u64[0] & 0x8000000000000000) == 0)
  {
    v32 = vceqq_f64(v28, v28);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v32), 1), v32).u64[0] & 0x8000000000000000) == 0)
    {
      v33 = vminnmq_f64(vaddq_f64(v30, v28), vdupq_n_s64(0x41C0000000000000uLL));
      v34 = vcvtmq_s64_f64(vmaxnmq_f64(v30, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v15 = vuzp1q_s32(v34, vsubq_s64(vcvtpq_s64_f64(v33), v34));
      v81 = v15;
      v16 = v15.u64[1];
LABEL_21:
      v35 = v16;
      goto LABEL_23;
    }
  }

  v81 = 0uLL;
  v35 = 0;
  v15.i64[0] = 0;
LABEL_23:
  v36 = *(this + 1);
  v37 = (*(v36 + 228) >> 10) & 0xF;
  v38 = 32 * v37;
  if (v37)
  {
    v39 = vadd_s32(vand_s8(*v15.i8, vdup_n_s32(v37 - 1)), vdup_n_s32(v37));
    *v81.i8 = vsub_s32(*v15.i8, v39);
    v81.u64[1] = vadd_s32(v39, vadd_s32(v35, vdup_n_s32(v38)));
  }

  v40 = 0;
  v41 = *(v36 + 136);
  if ((v41 & 0x200) == 0)
  {
    v42 = *(*(*(v36 + 16) + 16) + 208);
    if (v42)
    {
      v43 = CA::Shape::contains(v42, &v80);
      if (v43)
      {
        v14 = v14 & 0xFFFFFFF7;
      }

      else
      {
        v14 = v14;
      }

      if (v43)
      {
        v40 = 16;
      }

      else
      {
        v40 = 0;
      }
    }
  }

  result = (*(*v13 + 696))(v13, *(this + 4), &v81, v14, @"image-offscreen");
  *(this + 3) = result;
  if (result)
  {
    v45 = *(*(*(this + 1) + 16) + 24);
    if (v45)
    {
      layer_resource_text = CA::Render::create_layer_resource_text(v45, v44);
      v47 = *(*(*(this + 1) + 16) + 24);
      if (v47)
      {
        v48 = CA::Render::Layer::process_id(*(v47 + 152));
LABEL_39:
        (*(*v13 + 888))(v13, *(this + 3), 0, v48, @"image-offscreen", layer_resource_text);
        if (v37)
        {
          v49 = *(this + 3);
          v49[7] = vsub_s32(v49[7], vdup_n_s32(v38));
          v49[18].i32[0] = v49[18].i32[0] & 0xF0FFFFFF | ((v37 & 0xF) << 24);
        }

        v50 = v41 & 0x200;
        if ((*(*v13 + 232))(v13, 25))
        {
          v51 = vmax_s32(vsub_s32(vadd_s32(*(*(this + 1) + 216), *(*(this + 1) + 208)), vadd_s32(*v81.i8, v81.u64[1])), 0);
          if (v37)
          {
            v52.i64[0] = v51.u32[0];
            v52.i64[1] = v51.u32[1];
            v51 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vdupq_lane_s64(COERCE__INT64(v38), 0), vcvtq_f64_u64(v52))));
          }

          (*(*v13 + 760))(v13, *(this + 3), v51.u32[0], v51.u32[1]);
        }

        *(this + 8) = a2;
        *(*(this + 3) + 148) = *(*(this + 3) + 148) & 0xFFFB | (v50 >> 7);
        *(*(this + 3) + 148) = *(*(this + 3) + 148) & 0xFFEF | v40;
        v53 = *(*(this + 1) + 128);
        if (v53)
        {
          if (!v50)
          {
            __assert_rtn("set_dest", "ogl-imaging.cpp", 619, "space_change");
          }

          v54 = *v53;
          v55 = *(v53 + 8);
          v56 = fabsf(v54);
          v57 = fabsf(v55);
          v58 = 1.0;
          if (v54 >= 0.0)
          {
            v59 = 1.0;
          }

          else
          {
            v59 = -1.0;
          }

          if (v55 >= 0.0)
          {
            v60 = 1.0;
          }

          else
          {
            v60 = -1.0;
          }

          v61 = v56 <= v57;
          v62 = 0.0;
          if (v61)
          {
            v59 = 0.0;
          }

          else
          {
            v60 = 0.0;
          }

          v63 = *(v53 + 32);
          v64 = *(v53 + 40);
          v65 = fabsf(v63);
          v66 = fabsf(v64);
          if (v63 >= 0.0)
          {
            v67 = 1.0;
          }

          else
          {
            v67 = -1.0;
          }

          if (v64 < 0.0)
          {
            v58 = -1.0;
          }

          if (v65 > v66)
          {
            v58 = 0.0;
            v62 = v67;
          }

          if (fabsf((v62 * v59) + (v58 * v60)) <= 0.1)
          {
            v68 = v58;
          }

          else
          {
            v62 = -v60;
            v68 = v59;
          }

          if ((*(v53 + 144) & 0x10) != 0)
          {
            v70 = vaddvq_f64(vmulq_f64(*v53, *v53));
            v71 = vaddvq_f64(vmulq_f64(*(v53 + 32), *(v53 + 32)));
            v72 = *(v53 + 120);
            v69 = 1.0;
            if (v72 != 1.0)
            {
              v73 = 1.0 / (v72 * v72);
              v70 = v73 * v70;
              v71 = v73 * v71;
            }

            v74 = v71 == 1.0 && v70 == 1.0;
            v75 = (sqrt(v71) + sqrt(v70)) * 0.5;
            if (!v74)
            {
              v69 = v75;
            }
          }

          else
          {
            v69 = *(v53 + 128);
          }

          v76 = v69;
          v86 = 0;
          v84 = 0u;
          v85 = 0u;
          v83 = 0u;
          memset(v82, 0, sizeof(v82));
          CA::Transform::set_affine(v82, (v59 * v76), (v60 * v76), (v62 * v76), (v68 * v76), *(v53 + 96), *(v53 + 104));
          v77 = v85;
          v78 = v86 & 0xF;
          v79 = *(this + 3);
          *(v79 + 104) = v83;
          *(v79 + 120) = v77;
          *(v79 + 136) = v78;
        }

        CA::OGL::Context::push_surface(v13, *(this + 3), 1u, a3, 0);
        if (layer_resource_text)
        {
          CFRelease(layer_resource_text);
        }

        return 1;
      }
    }

    else
    {
      layer_resource_text = 0;
    }

    v48 = 0;
    goto LABEL_39;
  }

  return result;
}

void CA::OGL::MetalContext::update_texture_ownership(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = *(a2 + 8 * a3 + 168);
    if (a5)
    {
      [v6 setLabel:{objc_msgSend(@"com.apple.coreanimation.", "stringByAppendingString:", a5)}];
    }

    if (a4)
    {

      [v6 setResponsibleProcess:a4];
    }
  }
}

uint64_t CA::OGL::MetalContext::extend_surface(uint64_t a1, int32x2_t *a2, unsigned int a3, unsigned int a4)
{
  v4 = a2[34];
  if (!v4)
  {
    v4 = a2;
  }

  v5 = vmin_s32(vsub_s32(v4[7], vmvn_s8(__PAIR64__(a4, a3))), a2[5]);
  a2[32] = v5;
  result = v5.u32[0];
  v7 = v5.i32[1];
  if ((a2[38].i8[5] & 4) != 0)
  {
    a2[32] = vrev64_s32(v5);
    v8 = v5.i32[0];
  }

  else
  {
    v8 = v5.i32[1];
    v7 = v5.i32[0];
  }

  v9 = a2[18].i32[0];
  if ((v9 & 0x40000000) == 0 || v7 > a2[33].i32[0] || v8 > a2[33].i32[1])
  {
    a2[18].i32[0] = v9 & 0xBFFFFFFF;
  }

  return result;
}

uint64_t CA::OGL::emit_quad_indices(uint64_t a1, float64x2_t *a2, const unsigned __int16 *a3, unint64_t a4, unsigned int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0uLL;
  if (a2)
  {
    v9 = a2[1];
    v10 = vceqzq_f64(v9);
    if ((vorrq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0] & 0x8000000000000000) == 0)
    {
      v11 = vceqq_f64(v9, v9);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v11), 1), v11).u64[0] & 0x8000000000000000) == 0)
      {
        v12 = vcvtmq_s64_f64(vmaxnmq_f64(*a2, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v20 = vuzp1q_s32(v12, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(*a2, v9), vdupq_n_s64(0x41C0000000000000uLL))), v12));
      }
    }

    v13 = &v20;
  }

  else
  {
    v13 = 0;
  }

  v21 = 0u;
  if (*(a1 + 108))
  {
    v14 = 6;
  }

  else
  {
    v14 = 4;
  }

  v24 = 0uLL;
  v15 = *(*(a1 + 656) + 8);
  v22[0] = a1;
  v22[1] = v15;
  v23 = 0uLL;
  v22[2] = 0;
  WORD4(v23) = 256;
  *&v24 = v13;
  CA::OGL::Context::ClippedArray::start(v22);
  v16 = a5;
  while (1)
  {
    result = CA::OGL::Context::ClippedArray::next_rect(v22, &v21);
    if (!result)
    {
      break;
    }

    *(a1 + 144) = v16;
    if (a4)
    {
      v18 = 0;
      v19 = a3;
      do
      {
        if ((v14 + *(a1 + 120)) > *(a1 + 128))
        {
          *(a1 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(a1);
          *(a1 + 112) = a1 + 1386;
          *(a1 + 120) = xmmword_183E20E50;
          *(a1 + 144) = v16;
        }

        CA::OGL::Context::array_indices_vec(a1, v19);
        v18 += 4;
        v19 += 4;
      }

      while (v18 < a4);
    }
  }

  return result;
}

float64x2_t *CA::OGL::transform_vertices(float64x2_t *result, float32x4_t *a2, const double *a3, float64x2_t *this)
{
  v4 = a3;
  v6 = result;
  if ((LOBYTE(this[9].f64[0]) & 0x1F) != 0)
  {
    for (result = CA::Transform::apply_to_point4(this, result, result, a3); v4; v4 = (v4 - 1))
    {
      v8 = *v6;
      v7 = v6[1];
      v6 += 2;
      *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(v8), v7);
      a2 += 3;
    }
  }

  else if (a3)
  {
    v9 = this[6];
    v10 = result + 1;
    do
    {
      *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v10[-1], v9)), *v10);
      a2 += 3;
      v10 += 2;
      v4 = (v4 - 1);
    }

    while (v4);
  }

  return result;
}

uint64_t CA::Transform::apply_to_point4(uint64_t this, float64x2_t *a2, float64x2_t *a3, const double *a4)
{
  if ((*(this + 144) & 0x10) != 0)
  {
    for (; a4; a4 = (a4 - 1))
    {
      v7 = *a3;
      v8 = a3[1];
      a3 += 2;
      v9 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(this + 16), v7.f64[0]), *(this + 48), v7, 1), *(this + 80), v8.f64[0]), *(this + 112), v8, 1);
      *a2 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*this, v7.f64[0]), *(this + 32), v7, 1), *(this + 64), v8.f64[0]), *(this + 96), v8, 1);
      a2[1] = v9;
      a2 += 2;
    }
  }

  else
  {
    v4 = *(this + 96);
    v5.f64[0] = *this;
    v6.f64[1] = *(this + 40);
    if (a2 == a3)
    {
      if (a4)
      {
        v5.f64[1] = *(this + 8);
        v6.f64[0] = *(this + 32);
        do
        {
          *a2 = vmlaq_laneq_f64(vmlaq_n_f64(v4, v5, a2->f64[0]), v6, *a2, 1);
          a2 += 2;
          a4 = (a4 - 1);
        }

        while (a4);
      }
    }

    else if (a4)
    {
      v5.f64[1] = *(this + 8);
      v6.f64[0] = *(this + 32);
      do
      {
        *a2 = vmlaq_laneq_f64(vmlaq_n_f64(v4, v5, a3->f64[0]), v6, *a3, 1);
        a2[1] = a3[1];
        a3 += 2;
        a2 += 2;
        a4 = (a4 - 1);
      }

      while (a4);
    }
  }

  return this;
}

uint64_t CA::OGL::Context::array_indices_vec(uint64_t this, const unsigned __int16 *a2)
{
  v2 = *(this + 120);
  v3 = (*(this + 112) + 2 * v2);
  v4 = *(this + 108);
  if (v4 == 1)
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v7 = a2[2];
    v3[2] = v7;
    v3[3] = v7;
    v3[4] = a2[3];
    v5 = 6;
    v6 = 5;
  }

  else
  {
    if (v4)
    {
      return this;
    }

    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    a2 += 3;
    v5 = 4;
    v6 = 3;
  }

  v3[v6] = *a2;
  *(this + 120) = v2 + v5;
  return this;
}

BOOL CA::OGL::rect_intersects_clip_p(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = vceqzq_f64(a3);
  if ((vorrq_s8(vdupq_laneq_s64(v3, 1), v3).u64[0] & 0x8000000000000000) != 0 || (v4 = vceqq_f64(a3, a3), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v4), 1), v4).u64[0] & 0x8000000000000000) != 0))
  {
    v9 = 0uLL;
  }

  else
  {
    v5 = vmaxnmq_f64(a2, vdupq_n_s64(0xC1BFFFFFFF000000));
    v6 = vminnmq_f64(vaddq_f64(a2, a3), vdupq_n_s64(0x41C0000000000000uLL));
    v7 = vcvtmq_s64_f64(v5);
    v9 = vuzp1q_s32(v7, vsubq_s64(vcvtpq_s64_f64(v6), v7));
  }

  return CA::Shape::intersects(a1, &v9);
}

void *CA::OGL::MetalBufferPool::alloc_vertex_arg(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v6 = CA::OGL::MetalBufferPool::alloc_bytes(a1, a3, a4, 0, &v10);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 192);
    if (*(a1 + 64 + 8 * a2) == v7)
    {
      (*(a1 + 216))(v8, sel_setVertexBufferOffset_atIndex_, v10, a2);
    }

    else
    {
      (*(a1 + 200))(v8, sel_setVertexBuffer_offset_atIndex_, *(a1 + 8), v10, a2);
      *(a1 + 64 + 8 * a2) = v7;
    }
  }

  return v6;
}

void *CA::OGL::MetalBufferPool::alloc_bytes(CA::OGL::MetalBufferPool *this, unsigned int a2, unsigned int a3, void *a4, unsigned int *a5)
{
  if ((a3 & (a3 - 1)) != 0)
  {
    __assert_rtn("get_buffer", "ogl-metal.mm", 3452, "x_power_of_two (alignment)");
  }

  if (*(this + 1))
  {
    v9 = *(this + 11);
    if (v9 <= a3)
    {
      v9 = a3;
    }

    v10 = *(this + 6);
    v11 = *(this + 7);
    v12 = (v9 + v10 - 1) & -v9;
    if ((v11 == v12 || v11 < v12 + a2) && v10 != 0)
    {
      CA::OGL::MetalBufferPool::retire_metal_buffer(this);
    }
  }

  else
  {
    result = CA::OGL::MetalBufferPool::allocate_buffer(this, a2);
    *(this + 1) = result;
    if (!result)
    {
      return result;
    }

    ++*(this + 10);
    *(this + 4) = [result contents];
    v16 = [*(this + 1) length];
    v12 = 0;
    *(this + 7) = v16;
  }

  *(this + 6) = v12 + a2;
  if (a4)
  {
    *a4 = *(this + 1);
  }

  if (a5)
  {
    *a5 = v12;
  }

  return (*(this + 4) + v12);
}

void CA::OGL::MetalContext::stop_encoders(CA::OGL::MetalContext *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(this + 442);
  if ((BYTE2(xmmword_1ED4E97EC) & 1) == 0)
  {
    if (v2)
    {
      v3 = *(this + 589);
      if (v3 && *(v3 + 288) != *(v3 + 286))
      {
        __assert_rtn("stop_encoders", "ogl-metal.mm", 16002, "!memoryless_in_use ()");
      }

      goto LABEL_5;
    }

LABEL_26:
    v15 = 1;
    goto LABEL_27;
  }

  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_5:
  if (*(this + 457))
  {
    if (x_log_get_metal_trace(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_trace(void)::once, &__block_literal_global_13_8335);
    }

    v4 = *(this + 159);
    if (v4)
    {
      v5 = x_log_get_metal_trace(void)::log;
      if (os_signpost_enabled(x_log_get_metal_trace(void)::log))
      {
        v6 = *(this + 916);
        if (v6)
        {
          if (CA::OGL::layer_flags_str::once != -1)
          {
            dispatch_once(&CA::OGL::layer_flags_str::once, &__block_literal_global_5702);
          }

          v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
          v8 = [CA::OGL::layer_flags_str::str_cache objectForKeyedSubscript:v7];
          if (!v8)
          {
            v8 = [@"offscreen:" mutableCopy];
            for (i = 0; i != 32; ++i)
            {
              if ((v6 >> i))
              {
                if (i <= 0x10)
                {
                  v10 = CA::Render::offscreen_flag_names[i];
                }

                else
                {
                  v10 = 0;
                }

                [(__CFString *)v8 appendFormat:@" %s", v10];
              }
            }

            [CA::OGL::layer_flags_str::str_cache setObject:v8 forKeyedSubscript:v7];
          }
        }

        else
        {
          v8 = @"assembly";
        }

        v11 = *(this + 459);
        v12 = *(this + 920);
        v13 = *(this + 457);
        *buf = 138544130;
        v25 = v8;
        v26 = 2050;
        v27 = v11;
        v28 = 1026;
        v29 = v12;
        v30 = 2050;
        v31 = v13;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v5, OS_SIGNPOST_EVENT, v4, "RenderEncoder", "ID is update pass=%{public,name=pass}@ layerid=%{public,name=layerid}#lx contextid=%{public,name=contextid}#x begin=%{public,signpost.description:begin_time}llu", buf, 0x26u);
      }
    }
  }

  [*(this + 442) endEncoding];

  *(this + 442) = 0;
  CA::OGL::MetalContext::SharedEvent::encode_all((this + 2912), this, v14);
  v15 = 0;
  *(this + 449) = 0;
  *(this + 3560) = 0u;
  *(this + 3576) = 0u;
  *(this + 1968) &= ~1u;
LABEL_27:
  if (*(this + 443))
  {
    if (*(this + 457))
    {
      if (x_log_get_metal_trace(void)::once != -1)
      {
        dispatch_once(&x_log_get_metal_trace(void)::once, &__block_literal_global_13_8335);
      }

      v16 = *(this + 159);
      if (v16)
      {
        v17 = x_log_get_metal_trace(void)::log;
        if (os_signpost_enabled(x_log_get_metal_trace(void)::log))
        {
          v18 = *(this + 457);
          *buf = 134349056;
          v25 = v18;
          _os_signpost_emit_with_name_impl(&dword_183AA6000, v17, OS_SIGNPOST_EVENT, v16, "BlitEncoder", "ID is update begin=%{public,signpost.description:begin_time}llu", buf, 0xCu);
        }
      }
    }

    [*(this + 443) endEncoding];

    *(this + 443) = 0;
    CA::OGL::MetalContext::SharedEvent::encode_all((this + 2912), this, v19);
    if (!*(this + 444))
    {
      goto LABEL_44;
    }
  }

  else if (!*(this + 444))
  {
    if (v15)
    {
      return;
    }

    goto LABEL_44;
  }

  if (*(this + 457))
  {
    if (x_log_get_metal_trace(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_trace(void)::once, &__block_literal_global_13_8335);
    }

    v20 = *(this + 159);
    if (v20)
    {
      v21 = x_log_get_metal_trace(void)::log;
      if (os_signpost_enabled(x_log_get_metal_trace(void)::log))
      {
        v22 = *(this + 457);
        *buf = 134349056;
        v25 = v22;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v21, OS_SIGNPOST_EVENT, v20, "ComputeEncoder", "ID is update begin=%{public,signpost.description:begin_time}llu", buf, 0xCu);
      }
    }
  }

  [*(this + 444) endEncoding];

  *(this + 444) = 0;
  CA::OGL::MetalContext::SharedEvent::encode_all((this + 2912), this, v23);
LABEL_44:
  if (*(this + 3316) & 0x10) != 0 && *(this + 10) && (byte_1ED4E982B)
  {
    CA::OGL::MetalContext::issue_cache_drop_hints(this);
  }

  CA::OGL::MetalContext::purge_deferred_surfaces(this);
}

void CA::OGL::MetalContext::SharedEvent::encode_all(CA::OGL::MetalContext::SharedEvent *this, CA::OGL::MetalContext *a2, const char *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v3 == v4 || (*this & 1) == 0 && *(a2 + 2777) != 1)
  {
    return;
  }

  do
  {
    v10 = *v3;
    v11 = *(*v3 + 32);
    if (v11)
    {
      v13 = v3[2];
      v12 = v3[3];
      v14 = *this;
      if (*(a2 + 441) || (CA::OGL::MetalContext::start_command_buffer(a2, *(a2 + 455), a3) & 1) != 0)
      {
        if (v14)
        {
          [*(a2 + 441) encodeWaitForEvent:v11 value:{CA::CASharedEvent::get_wait_value(v10, v13, v12)}];
        }

        else
        {
          v15 = CA::CASharedEvent::inc_signal_value(v10, v13, v12);
          [*(a2 + 441) encodeSignalEvent:v11 value:v15];
          v16 = atomic_load(a2 + 593);
          CA::OGL::MetalContext::SharedEvent::add_encoded(this, v16, v10, v15);
        }
      }

      else
      {
        if (x_log_get_sharedevent(void)::once != -1)
        {
          dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
        }

        v7 = x_log_get_sharedevent(void)::log;
        if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
        {
          v17 = 0;
          v8 = "Invalid command buffer";
          v9 = &v17;
          goto LABEL_13;
        }
      }
    }

    else
    {
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v7 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v8 = "Invalid metal shared event";
        v9 = &v18;
LABEL_13:
        _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
      }
    }

    v3 += 4;
  }

  while (v3 != v4);
  if (*this)
  {
    *(this + 2) = *(this + 1);
  }

  *(this + 1) = 1;
}

uint64_t CA::OGL::MetalContext::set_surface(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(a2 + 93) & 8) != 0)
    {
      if (*(a2 + 272) == *(a1 + 4712))
      {
        v24 = *(a1 + 672);
        if ((v24[11].i8[5] & 8) != 0 && (v24[18].i8[3] & 0x20) != 0)
        {
          CA::OGL::MetalContext::clear_memoryless_texture_(a1, v24);
        }

        return 0;
      }

      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v23 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "Target of memoryless surface not bound, possible misuse.", v27, 2u);
      }

      return CA::OGL::MetalContext::set_surface(a1, *(v2 + 272));
    }

    if (*(a1 + 4712) == a2)
    {
      v4 = *(a1 + 672);
      if (v4)
      {
        LODWORD(v4) = (*(v4 + 144) >> 1) & 0x1F;
      }

      if (v4 == *(a1 + 668))
      {
        return 0;
      }
    }
  }

  if ((*(a1 + 3936) & 1) == 0 || *(a1 + 3880) != a2)
  {
    CA::OGL::MetalContext::stop_encoders(a1);
  }

  *(a1 + 4712) = 0;
  v5 = *(a1 + 1264);
  if (!v5 || (*(a1 + 3936) & 0x100) != 0)
  {
LABEL_17:
    if (v2)
    {
      goto LABEL_18;
    }

LABEL_48:
    v25 = a1 + 4680;
    do
    {
      [*(v25 + v2) setTexture:0];
      v2 += 8;
    }

    while (v2 != 24);
    return 0;
  }

  v6 = *(a1 + 3320);
  if (!v6 || v5 % v6)
  {
    v7 = *(a1 + 880);
    if (v7 && !(v5 % v7))
    {
      CA::OGL::MetalContext::flush(a1, 1);
    }

    goto LABEL_17;
  }

  CA::OGL::MetalContext::finish(a1);
  if (!v2)
  {
    goto LABEL_48;
  }

LABEL_18:
  v8 = *(a1 + 3536) == 0;
  *&v9 = CA::OGL::MetalContext::update_projection_matrix(a1);
  ++*(a1 + 664);
  v10 = (v2 + 256);
  v11 = (v2 + 260);
  if ((*(v2 + 94) & 4) != 0)
  {
    v10 = (v2 + 40);
    v11 = (v2 + 44);
  }

  v12 = *v11;
  v13 = *v10;
  v14 = *(a1 + 672);
  if (v14)
  {
    v15 = (*(v14 + 144) >> 1) & 0x1F;
    v16 = v13 >> v15;
    if (v13 >> v15 <= 1)
    {
      v16 = 1;
    }

    v17 = v12 >> v15;
    if (v12 >> v15 <= 1)
    {
      v17 = 1;
    }

    if (v15)
    {
      v13 = v16;
      v12 = v17;
    }
  }

  [*(a1 + 4672) setRenderTargetWidth:{v13, v9}];
  [*(a1 + 4672) setRenderTargetHeight:v12];
  for (i = 0; i != 3; ++i)
  {
    v19 = a1 + 4680;
    v20 = *(a1 + 4680 + 8 * i);
    if (i >= (*(v2 + 308) << 60) >> 60)
    {
      [*(v19 + 8 * i) setTexture:0];
      [v20 setLoadAction:0];
      v22 = 0;
    }

    else
    {
      v21 = v2 + 8 * i;
      [*(v19 + 8 * i) setTexture:*(v21 + 168)];
      v22 = [*(v21 + 168) storageMode] != 3;
    }

    [v20 setStoreAction:v22];
  }

  if (*(v2 + 286) && (*(a1 + 1384) & 1) == 0)
  {
    *(a1 + 4712) = v2;
  }

  if ((*(v2 + 147) & 0x20) != 0 && !CA::OGL::MetalContext::start_render_encoder(a1))
  {
    return 0;
  }

  return v8;
}

uint64_t CA::OGL::Context::prepare_destination_(CA::OGL::Context *this)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(this + 84);
  if (BYTE14(xmmword_1ED4E97DC) != 1)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

LABEL_3:
    v3 = *(v2 + 24);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = *(v3 + 388) & 0x1FFFF;
    if (!v4)
    {
      goto LABEL_10;
    }

    for (i = 0; i != 17; ++i)
    {
      if ((v4 >> i))
      {
        ++*(this + i + 324);
      }
    }

    if ((BYTE11(xmmword_1ED4E980C) & 1) == 0)
    {
      goto LABEL_10;
    }

    v21 = v4 << 32;
    *__dst = v21;
    if ((*(v2 + 93) & 8) != 0)
    {
      *__dst = v21 | 0x8000000000000000;
    }

    v22 = *(v3 + 24);
    if (v22 && (v23 = *(v22 + 16)) != 0)
    {
      v24 = (v23 + 28);
      *buf = 0;
      v25 = strlen((v23 + 28));
      v26 = 12;
      if (v25 < 0xC)
      {
        v26 = v25;
      }

      if (!v25)
      {
        goto LABEL_62;
      }

      v27 = &v24[v26];
      v28 = __dst;
      v29 = 1;
      v30 = 4;
      do
      {
        strncpy(v28, v24, v30);
        if ((v29 & 1) == 0)
        {
          break;
        }

        v29 = 0;
        v24 += v30;
        v28 = buf;
        v30 = 8;
      }

      while (v24 < v27);
    }

    else
    {
      *buf = 0;
    }

    if (!v22)
    {
LABEL_80:
      kdebug_trace();
      goto LABEL_10;
    }

LABEL_62:
    CA::Render::Object::render_id(v22);
    goto LABEL_80;
  }

  if ((byte_1ED4E9852 & 1) != 0 || ((v9 = *(this + 85), v2) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    if (!v2)
    {
      v11 = 0;
      v12 = 0;
LABEL_46:
      v14 = 0;
      v20 = 0;
      v17 = 1;
      goto LABEL_47;
    }
  }

  else if ((*(v2 + 93) & 8) != 0 || (*(v9 + 93) & 8) != 0)
  {
    goto LABEL_3;
  }

  v12 = *(v2 + 24);
  if (!v12)
  {
    v11 = 0;
    goto LABEL_46;
  }

  v13 = *(v12 + 388);
  v14 = v13 & 0x1FFFF;
  v11 = (v13 >> 17) & 0x7FF;
  v15 = *(v12 + 24);
  if (v15 && (v16 = *(v15 + 128)) != 0)
  {
    v17 = 0;
    v18 = *(v16 + 24);
    v19 = (v16 + 28);
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v17 = 0;
    v20 = 0;
  }

LABEL_47:
  *__dst = 0;
  v44 = 0;
  v45 = 0;
  X::Stream::printf(__dst, "[%u]", *(this + 159));
  if ((v17 & 1) == 0 && *(v12 + 24))
  {
    X::Stream::printf(__dst, " (%p)", *(v12 + 24));
  }

  if (v20)
  {
    X::Stream::printf(__dst, " %s", v20);
  }

  if (v14)
  {
    CA::Render::print_offscreen_flags(__dst, v14);
  }

  if (v11)
  {
    CA::Render::print_group_flags(__dst, v11);
  }

  v31 = *(this + 84);
  if ((*(*this + 864))(this))
  {
    X::Stream::printf(__dst, " s:framebuffer\n");
  }

  else
  {
    v32 = (*(*this + 1104))(this, v31);
    v33 = v32 * v31[10] * v31[11];
    v34 = v31[15];
    v35 = v32 * v31[14];
    if (!x_hash_table_lookup(*(this + 87), v31, 0))
    {
      hash_table_modify(*(this + 87), v31, v33, 0);
      *(this + 88) += v33;
    }

    v36 = v35 * v34;
    kdebug_trace();
    v37 = v33;
    if (v33 >= 0x400)
    {
      v39 = 1.0;
      do
      {
        v39 = v39 * 0.0009765625;
        v38 = v39 * v37;
      }

      while (v39 * v37 >= 1024.0);
    }

    else
    {
      v38 = v33;
    }

    if (v36 >= 0x400)
    {
      v40 = 1.0;
      do
      {
        v40 = v40 * 0.0009765625;
      }

      while (v40 * v36 >= 1024.0);
    }

    X::Stream::printf(__dst, " s:[%u x %u (%.2lf %s)] b:[%u x %u (%.2lf %s)] need-clear:%d%s, id:%p\n", v31[10], v31[11], *&v38);
  }

  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  v41 = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v42 = x_stream_get(__dst);
    *buf = 136315138;
    *&buf[4] = v42;
    _os_log_impl(&dword_183AA6000, v41, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (*__dst)
  {
    free(*__dst);
  }

  v2 = *(this + 84);
  if (v2)
  {
    goto LABEL_3;
  }

LABEL_10:
  result = (*(*this + 856))(this);
  if (result)
  {
    ++*(this + 316);
  }

  v7 = *(this + 84);
  *(this + 85) = v7;
  if (v7)
  {
    *(this + 167) = (*(v7 + 144) >> 1) & 0x1F;
    v8 = *(v7 + 24);
    if (v8)
    {
      ++*(v8 + 386);
      *(v7 + 24) = 0;
    }
  }

  else
  {
    *(this + 167) = 0;
  }

  return result;
}

void CA::OGL::Context::pop_surface(CA::OGL::Context *this)
{
  v1 = *(this + 84);
  if (!v1)
  {
    __assert_rtn("pop_surface", "ogl-context.cpp", 1399, "_current_surface != 0");
  }

  v3 = *(v1 + 144);
  if ((v3 & 0x20000000) != 0 && (*(this + 85) != v1 || *(this + 167) != ((v3 >> 1) & 0x1F)))
  {
    CA::OGL::Context::prepare_destination_(this);
    v1 = *(this + 84);
  }

  if (*(this + 225) && (BYTE2(xmmword_1ED4E97EC) & 1) == 0 && (*(v1 + 93) & 8) == 0)
  {
    CA::OGL::export_surface(this, v1, "pop");
    v1 = *(this + 84);
  }

  *(v1 + 24) = 0;
  *(v1 + 144) &= 0xFFFFFFC1;
  *(this + 84) = *(*(this + 84) + 8);
}

float16x4_t *CA::OGL::MetalContext::clear_memoryless_texture_(uint64_t a1, int32x2_t *a2)
{
  __dst[63] = *MEMORY[0x1E69E9840];
  a2[18].i32[0] &= ~0x20000000u;
  v18 = 1025;
  v14 = 0x3C003C003C003C00;
  v16 = 0u;
  v15 = 0u;
  v17 = 0;
  v12[0] = 0;
  v13 = 0u;
  DWORD2(v16) = 1065353216;
  v12[1] = &CA::Shape::_infinite_shape;
  v4 = *(a1 + 64);
  *(a1 + 64) = 0;
  v5 = *(a1 + 16);
  memcpy(__dst, v5, 0x1F8uLL);
  __dst[0] = v5;
  *(a1 + 16) = __dst;
  v12[0] = CA::OGL::Context::set_gstate(a1, v12);
  *(*(a1 + 16) + 497) &= ~1u;
  v6 = *(a1 + 1368);
  if (v6)
  {
    *(a1 + 1368) = 0;
    ++*(a1 + 664);
  }

  *(*(a1 + 16) + 16) = 116;
  v7 = a2[6];
  v8 = vcvt_f32_s32(v7);
  v9 = vcvt_f32_s32(vadd_s32(a2[7], v7));
  v11[0] = v8;
  v11[1] = v9;
  v11[2] = 0;
  CA::OGL::MetalContext::draw_axis_aligned_rects(a1, 1u, v11);
  if (v6)
  {
    *(a1 + 1368) = v6;
    ++*(a1 + 664);
  }

  result = CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  *(a1 + 16) = __dst[0];
  if (v4)
  {
    *(a1 + 64) = 1;
  }

  return result;
}

void sub_183ADDBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!a25)
  {
    _Unwind_Resume(a1);
  }

  __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
}

void CA::OGL::RenderSurface::~RenderSurface(CA::OGL::RenderSurface *this)
{
  *this = &unk_1EF1FD558;
  v1 = *(this + 3);
  if (v1)
  {
    *(v1 + 148) &= ~4u;
    CA::OGL::Context::pop_surface(**(*(this + 1) + 8));
  }
}

{
  CA::OGL::RenderSurface::~RenderSurface(this);

  JUMPOUT(0x1865EA9A0);
}

uint64_t CA::Render::Object::render_id(CA::Render::Object *this)
{
  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  if (this)
  {
    return this + CA::Render::_render_id_slide;
  }

  else
  {
    return 0;
  }
}

_DWORD *CA::OGL::ImagingNode::retain_surface(CA::OGL::ImagingNode *this, float *a2, unsigned int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = **(this + 1);
  v9 = 0.0;
  ++*(v4 + 1292);
  v5 = *(this + 228);
  if ((v5 & 0x100) != 0)
  {
    v6 = (*(**(this + 3) + 80))(*(this + 3), &v9);
    v7 = v9;
  }

  else
  {
    v10[0] = &unk_1EF1FD558;
    v10[1] = this;
    v11 = 1;
    v12 = HIDWORD(v5) & 0x7FFFFFF;
    v13 = 0;
    v14 = 0;
    CA::OGL::ImagingNode::render(this, v10, a3);
    v6 = v13;
    if (v13)
    {
      v7 = *&v14;
    }

    else
    {
      v6 = *(v4 + 688);
      if (v6 || (v6 = (*(*v4 + 792))(v4), (*(v4 + 688) = v6) != 0))
      {
        ++*v6;
      }

      v7 = 1.0;
    }

    CA::OGL::RenderSurface::~RenderSurface(v10);
  }

  --*(v4 + 1292);
  *a2 = v7;
  return v6;
}

uint64_t CA::OGL::Context::bind_surface(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, float a6)
{
  if (a2 && (*(a2 + 144) & 1) != 0)
  {
    v10 = result;
    if (a4 == 11)
    {
      v11 = 2;
    }

    else
    {
      v11 = a4;
    }

    if (v11 == 10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = CA::OGL::state_image_texture_unit(*(result + 16), a3);
    result = (*(*v10 + 840))(v10, a2, 0, v13, v12, a5, a6);
    v14 = v10[2];
    v15 = (v14 + 16 * a3);
    v16 = vcvt_f32_s32(*(a2 + 40));
    __asm { FMOV            V0.2S, #1.0 }

    v15[42] = v16;
    v15[43] = vdiv_f32(_D0, v16);
    *(v14 + a3 + 17) = *(a2 + 145) & 0x3F;
    if ((*(a2 + 147) & 0x10) != 0)
    {
      __asm { FMOV            V1.2S, #1.0 }

      _D0 = vdiv_f32(_D1, vcvt_f32_s32(*(a2 + 40)));
    }

    v22 = v10[2];
    v23 = (v22 + 16 * a3);
    v23[12] = _D0;
    v23[13] = 0;
    if ((*(a2 + 148) & 2) != 0)
    {
      *(v22 + 497) |= 2u;
      v22 = v10[2];
      *(v22 + 368) = 1065353216;
    }

    v24 = *(a2 + 88);
    if (v24 != 0.0 && v24 != 1.0)
    {
      *(v22 + 4 * a3 + 328) = 1.0 / v24;
      *(v22 + 321) |= 1 << a3;
    }
  }

  return result;
}

uint64_t CA::Render::Layer::process_id(uint64_t this)
{
  if (this)
  {
    v1 = *(this + 24);
    if (v1)
    {
      this = atomic_load((v1 + 228));
      if (!this)
      {
        if (*(v1 + 256))
        {
          LODWORD(this) = 0;
        }

        else
        {
          LODWORD(this) = getpid();
        }

        v2 = 0;
        atomic_compare_exchange_strong((v1 + 228), &v2, this);
        if (v2)
        {
          return v2;
        }

        else
        {
          return this;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

BOOL CA::Mat4Impl::mat4_is_rectilinear(CA::Mat4Impl *this, const double *a2)
{
  if (fabs(*(this + 3)) >= 0.000001 || fabs(*(this + 7)) >= 0.000001 || fabs(*(this + 15) + -1.0) >= 0.000001)
  {
    return 0;
  }

  if (fabs(*(this + 1)) < 0.000001 && fabs(*(this + 4)) < 0.000001)
  {
    return 1;
  }

  return fabs(*this) < 0.000001 && fabs(*(this + 5)) < 0.000001;
}

uint64_t CA::OGL::MetalContext::get(uint64_t a1, int a2)
{
  result = 0x10000;
  switch(a2)
  {
    case 0:
    case 8:
      return 0;
    case 1:
    case 2:
      return result;
    case 3:
      return *(a1 + 3280);
    case 4:
      return *(a1 + 3296);
    case 5:
      v6 = *(a1 + 3304);
      if (v6)
      {
        return v6;
      }

      else
      {
        return 0x2000;
      }

    case 6:
      return *(a1 + 3312);
    case 7:
      return *(a1 + 3288);
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 16:
    case 18:
    case 19:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 29:
    case 30:
    case 31:
    case 37:
    case 39:
      return 1;
    case 15:
      return 27;
    case 17:
      return (*(a1 + 3316) >> 1) & 1;
    case 21:
      return (*(a1 + 3316) >> 13) & 1;
    case 26:
    case 42:
      return *(a1 + 3316) & 1;
    case 27:
      return (*(a1 + 3936) & 8) != 0 && (*(a1 + 1384) & 1) == 0;
    case 32:
      return (*(a1 + 3936) >> 4) & 1;
    case 33:
      return BYTE13(xmmword_1ED4E988C) ^ 1u;
    case 34:
      v4 = byte_1ED4E9858 ^ 1;
      v5 = *(a1 + 3318) << 30;
      goto LABEL_9;
    case 35:
      return (*(a1 + 3316) >> 18) & 1;
    case 36:
      v4 = byte_1ED4E985A ^ 1;
      v5 = *(a1 + 3317) << 28;
LABEL_9:
      result = v4 & (v5 >> 31);
      break;
    case 38:
      if ((~*(a1 + 3316) & 0xA0000) != 0)
      {
        result = 0;
      }

      else
      {
        result = byte_1ED4E9858 ^ 1u;
      }

      break;
    case 40:
      result = (*(a1 + 3316) >> 5) & 1;
      break;
    case 41:
      result = (*(a1 + 3316) >> 3) & 1;
      break;
    default:
      result = a2 == 28 || a2 == 16;
      break;
  }

  return result;
}

void CA::OGL::Renderer::render(CA::OGL::Renderer *this, const CA::Render::Update *a2, unint64_t a3, CA::CASharedEvent *a4)
{
  v4 = MEMORY[0x1EEE9AC00](this);
  v554 = *MEMORY[0x1E69E9840];
  if (*(v4 + 8))
  {
    return;
  }

  v7 = v6;
  v8 = v5;
  v9 = v4;
  *(v4 + 8) = v5;
  *(v4 + 100) = 0;
  *(v4 + 88) = 0;
  v10 = *v4;
  *(v10 + 624) = v5;
  v11 = *(v5 + 280);
  *(v10 + 636) = *(v5 + 272);
  *(v10 + 640) = v11;
  v12 = mach_absolute_time();
  *(v10 + 648) = CATimeWithHostTime(v12);
  v13 = *v9;
  *(v13 + 157) = 0;
  x_hash_table_remove_all(*(v13 + 87));
  *(v13 + 88) = 0;
  *(v13 + 316) = *(v13 + 84) == *(v13 + 85);
  *(v13 + 634) = 0u;
  *(v13 + 321) = 0;
  v13[692] &= 0xFC7Fu;
  *(v13 + 81) = 0u;
  *(v13 + 82) = 0u;
  *(v13 + 83) = 0u;
  *(v13 + 84) = 0u;
  *(v13 + 340) = 0;
  v14 = *v9;
  v15 = *(*v9 + 600);
  if (v15 && (v14[692] & 2) == 0)
  {
    (*(*v15 + 80))(*(*v9 + 600), CA::OGL::Renderer::update_detached_layer, v9);
    v14 = *v9;
  }

  (*(*v14 + 232))(v14, 0);
  v17 = v9[2];
  v18 = *(*v9 + 600);
  if (v18)
  {
    v19 = (*(*v18 + 16))(v18);
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = *v9;
  }

  else
  {
    v17 = *(v8 + 16);
    v20 = *v9;
    if (!v17)
    {
      *v16.i64 = *(v20 + 620) * *(v20 + 616);
      v21 = *v16.i64;
LABEL_15:
      if (*(v17 + 4) == 6)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }
  }

  *v16.i64 = CA::Shape::area(v17);
  v21 = *v16.i64;
  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v22 = *(v20 + 864);
  *(v20 + 864) = 0;
  if (v22)
  {
    v23 = CA::Shape::Union(v17, v22);
    v17 = v23;
    if ((*(*v9 + 872) & 0x10) != 0)
    {
      if (v23)
      {
        if (v23 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (*(v23 + 4) != 12)
      {
LABEL_20:
        *buf = 0;
        *&buf[8] = 0;
        CA::Shape::get_bounds(v23, buf);
        CA::Shape::unref(v17);
        v17 = CA::Shape::new_shape(buf, v24);
      }
    }

LABEL_21:
    CA::Shape::unref(v22);
    v20 = *v9;
    v25 = 1;
    goto LABEL_23;
  }

LABEL_22:
  v25 = 0;
LABEL_23:
  if ((*(v20 + 874) & 2) != 0)
  {
    *buf = CA::Shape::map(v17, 0, CA::OGL::Renderer::render(CA::Render::Update const*,unsigned long,CA::CASharedEvent *)::$_0::__invoke, v16);
    CA::shape_intersect(buf, (*v9 + 608), v26);
    if (v25)
    {
      CA::Shape::unref(v17);
    }

    v17 = *buf;
    v25 = 1;
  }

  v9[3] = v17;
  v27 = v9 + 3;
  *buf = 0;
  *&buf[8] = 0;
  CA::Shape::get_bounds(v17, buf);
  *(v9 + 2) = *buf;
  if (v17)
  {
    if (v17 == 1)
    {
      goto LABEL_44;
    }
  }

  else if (*(v17 + 4) == 6)
  {
    goto LABEL_44;
  }

  if ((*(**v9 + 256))(*v9))
  {
    v474 = v21;
    v28 = v9[6];
    *v28 = 0;
    *(v28 + 8) = v28 + 32;
    *(v28 + 16) = xmmword_183E20F70;
    v9[7] = v28;
    bzero(v524, 0x3F0uLL);
    CA::OGL::Context::prepare_context(*v9, v524);
    v29 = *v9;
    v29[17] = buf;
    v29[19] = 128;
    v9[9] = 0;
    v9[10] = 0;
    v9[8] = 0;
    v522 = 1283;
    v516 = 0x3C003C003C003C00;
    v519 = 0;
    v520 = 1065353216;
    v517 = 0;
    v518 = 0;
    v521 = 0;
    v512 = 0;
    v515 = &CA::identity_transform;
    v513 = v17;
    v514 = 0;
    (*(*v29 + 1088))();
    (*(**v9 + 1040))();
    v34 = *v9;
    if ((*(*v9 + 873) & 4) == 0)
    {
      goto LABEL_40;
    }

    v35 = *(v34 + 672);
    if (v35 && (*(v35 + 92) & 0x30) != 0)
    {
      v36 = &CA::Shape::_infinite_shape;
      v37 = 1;
      if (&CA::Shape::_infinite_shape)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v37 = 0;
      if (*(v8 + 8))
      {
        v36 = *(v8 + 8);
      }

      else
      {
        v36 = &CA::Shape::_infinite_shape;
      }

      if (v36)
      {
LABEL_36:
        if (v36 == 1)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    if (*(v36 + 1) == 6)
    {
LABEL_38:
      if (v37)
      {
        CA::Shape::unref(v36);
      }

LABEL_40:
      if (*(v8 + 248) == v8 + 240)
      {
        goto LABEL_330;
      }

      v480 = v7;
      v475 = v25;
      v547 = 0u;
      v548 = 0u;
      v545 = 0u;
      v546 = 0u;
      v543 = 0u;
      v544 = 0u;
      v541 = 0u;
      v542 = 0u;
      v539 = 0u;
      v540 = 0u;
      v536 = 0u;
      v533 = 0u;
      v531 = 0u;
      v532 = 0u;
      v530 = 0u;
      v528 = 0uLL;
      memset(v526, 0, sizeof(v526));
      memset(v525, 0, sizeof(v525));
      DWORD2(v526[0]) = 50528320;
      v527 = 0uLL;
      v534 = 0;
      v535 = 0;
      v538 = 0;
      *&v539 = 0;
      v537 = 0;
      v529 = 0uLL;
      v549 = 0;
      v505 = 0;
      v38 = CA::OGL::prepare_layers(v9, v525, (v8 + 240), &v512, 0, &v505, &v505 + 1);
      if (!v38)
      {
        goto LABEL_329;
      }

      v39 = CA::OGL::prepare_layers_roi(v9, v38, &v512, 0);
      v41 = *v9;
      v40 = v9[1];
      if (*(v40 + 544))
      {
        v42 = *(v41 + 672) == 0;
      }

      else
      {
        v42 = 0;
      }

      v46 = *(v41 + 1384);
      if ((v46 & 2) != 0)
      {
        v47 = *(v41 + 672);
        if (v47)
        {
          if ((*(v47 + 92) & 8) == 0)
          {
            v42 |= (*(v40 + 305) & 0x20) >> 5;
          }
        }
      }

      v48 = *(v41 + 600);
      if (v48)
      {
        v49 = (*(*v48 + 16))(v48);
        v46 = *(v41 + 1384);
      }

      else
      {
        v49 = 0;
      }

      *(v41 + 1376) = v525;
      *(v41 + 1384) = v46 & 0xF7FF;
      v472 = v19;
      if ((v42 & 1) == 0)
      {
        CA::OGL::render_layers(v9, v39);
        goto LABEL_94;
      }

      v507[0] = 0;
      v507[1] = 0;
      CA::Shape::get_bounds(v513, v507);
      if (v39)
      {
        v50 = v39;
        do
        {
          v51 = v50[23];
          if (v51)
          {
            v510 = 0uLL;
            CA::Shape::get_bounds(v51 + 160, &v510);
            v52 = *&v510.f64[1];
            v53 = vclez_s32(v507[1]);
            v54 = vpmax_u32(v53, v53).u32[0];
            v55 = vclez_s32(*&v510.f64[1]);
            v56 = vpmax_u32(v55, v55).u32[0];
            if ((v54 & 0x80000000) != 0)
            {
              if ((v56 & 0x80000000) == 0)
              {
                v57 = *&v510.f64[0];
                goto LABEL_74;
              }
            }

            else if ((v56 & 0x80000000) == 0)
            {
              v57 = vmin_s32(v507[0], *&v510.f64[0]);
              v52 = vsub_s32(vmax_s32(vadd_s32(v507[0], v507[1]), vadd_s32(*&v510.f64[0], *&v510.f64[1])), v57);
LABEL_74:
              v507[0] = v57;
              v507[1] = v52;
            }
          }

          v50 = *v50;
        }

        while (v50);
      }

      v58 = vclez_s32(v507[1]);
      if ((vpmax_u32(v58, v58).u32[0] & 0x80000000) == 0)
      {
        v59 = *(v41 + 616);
        v60 = vclez_s32(v59);
        if ((vpmax_u32(v60, v60).u32[0] & 0x80000000) != 0 || (v61 = *(v41 + 608), *&v62 = vmax_s32(v507[0], v61), v63 = vsub_s32(vmin_s32(vadd_s32(v507[0], v507[1]), vadd_s32(v61, v59)), *&v62), v64 = vclez_s32(v63), (vpmax_u32(v64, v64).u32[0] & 0x80000000) != 0))
        {
          v507[1] = 0;
        }

        else
        {
          *(&v62 + 1) = v63;
          *v507 = v62;
        }
      }

      v65 = (*(*v41 + 696))(v41, 1, v507, 15, @"image-render-prepared-layers");
      if (*(&v525[1] + 1))
      {
        v66 = v17;
        v68 = CA::Render::Layer::process_id(*(*(&v525[1] + 1) + 152));
        if (*(&v525[1] + 1))
        {
          layer_resource_text = CA::Render::create_layer_resource_text(*(&v525[1] + 1), v67);
LABEL_87:
          (*(*v41 + 888))(v41, v65, 0, v68, @"image-render-prepared-layers", layer_resource_text);
          if (v65)
          {
            CA::OGL::Context::push_surface(v41, v65, 1u, 512, 0);
          }

          if (layer_resource_text)
          {
            CFRelease(layer_resource_text);
          }

          CA::OGL::render_layers(v9, v39);
          v17 = v66;
          if (v65)
          {
            if (BYTE1(xmmword_1ED4E97DC) == 1)
            {
              v405 = *(v65 + 56);
              v406 = *(v65 + 60);
              if (v405 <= v406)
              {
                v407 = *(v65 + 60);
              }

              else
              {
                v407 = *(v65 + 56);
              }

              v32.n128_u32[0] = 1073741822;
              v33.i32[0] = v407;
              v408 = vdupq_lane_s32(*&vcgtq_s32(v33, v32), 0);
              v409 = *(v65 + 48);
              v410.i64[0] = v409;
              v410.i64[1] = SHIDWORD(v409);
              v412 = vcvtq_f64_s64(v410);
              v411 = vbslq_s8(v408, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v412);
              *v412.i64 = v405;
              v510 = v411;
              v413 = 1.79769313e308;
              if (v407 <= 1073741822)
              {
                v413 = v406;
              }

              else
              {
                *v412.i64 = 1.79769313e308;
              }

              v511.i64[0] = v412.i64[0];
              *&v511.i64[1] = v413;
              v507[0] = &v510;
              v507[1] = &CA::identity_transform;
              v508 = 0u;
              v509 = 0u;
              CA::OGL::fill_color_rect(v41, v507, 0x80800080, 0.0, v412);
            }

            CA::OGL::Context::pop_surface(v41);
            v507[0] = 0;
            v507[1] = 0;
            CA::OGL::emit_combine(v41, 1u, v65, 0, v513, v507);
            CA::OGL::Context::release_surface(v41, v65);
          }

LABEL_94:
          v70 = v9[1];
          if (*(v70 + 1377) & 1) != 0 && (BYTE12(xmmword_1ED4E97EC))
          {
            v396 = *(v70 + 208);
            v397 = *(v70 + 212);
            if (v396 <= v397)
            {
              v398 = *(v70 + 212);
            }

            else
            {
              v398 = *(v70 + 208);
            }

            v32.n128_u32[0] = 1073741822;
            v33.i32[0] = v398;
            v399 = vdupq_lane_s32(*&vcgtq_s32(v33, v32), 0);
            v400 = *(v70 + 200);
            v401.i64[0] = v400;
            v401.i64[1] = SHIDWORD(v400);
            v403 = vcvtq_f64_s64(v401);
            v402 = vbslq_s8(v399, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v403);
            *v403.i64 = v396;
            v510 = v402;
            v404 = 1.79769313e308;
            if (v398 <= 1073741822)
            {
              v404 = v397;
            }

            else
            {
              *v403.i64 = 1.79769313e308;
            }

            v511.i64[0] = v403.i64[0];
            *&v511.i64[1] = v404;
            v507[0] = &v510;
            v507[1] = &CA::identity_transform;
            v508 = 0u;
            v509 = 0u;
            CA::OGL::fill_color_rect(v41, v507, 0x800040, 0.0, v403);
          }

          *(v41 + 1376) = 0;
          *(v41 + 1384) &= ~0x800u;
          v30 = v9[1];
          v71 = *(v30 + 172);
          if ((v71 & 1) != 0 || !v49)
          {
            if (!v49)
            {
              v19 = v472;
              goto LABEL_107;
            }
          }

          else if (((*(*v49 + 568))(v49) & 1) == 0)
          {
            v72 = *(v41 + 600);
            v19 = v472;
            if (v72)
            {
              (*(*v72 + 88))(v72, CA::OGL::composite_detached, v41);
            }

            goto LABEL_103;
          }

          v19 = v472;
LABEL_103:
          v73 = (*(*v49 + 1536))(v49);
          v30 = v9[1];
          if (v73)
          {
            v74 = 0;
LABEL_108:
            v75 = *(v30 + 6);
            if (v75)
            {
              _ZF = v75 == 1;
            }

            else
            {
              _ZF = *(v75 + 4) == 6;
            }

            v77 = _ZF;
            if (((v77 | v74) & 1) == 0)
            {
              *(*(v41 + 16) + 16) = 93;
              if ((*(*v41 + 1072))(v41))
              {
                v506 = 0uLL;
                v553 = 0;
                v552 = v75;
                v32.n128_u32[0] = 1073741822;
                v497 = v32;
                v484 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
                v489 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
                while (CA::ShapeIterator::iterate(&v552, &v506))
                {
                  v78 = v506.u64[1];
                  v79 = vclez_s32(v506.u64[1]);
                  *v33.i8 = vpmax_u32(v79, v79);
                  if ((v33.i32[0] & 0x80000000) == 0)
                  {
                    v33.i64[0] = *(v41 + 616);
                    v80 = vclez_s32(*v33.i8);
                    if ((vpmax_u32(v80, v80).u32[0] & 0x80000000) != 0 || (v81 = *(v41 + 608), v82 = vadd_s32(v81, *v33.i8), *v33.i8 = vmax_s32(*v506.i8, v81), v78 = vsub_s32(vmin_s32(vadd_s32(*v506.i8, v506.u64[1]), v82), *v33.i8), v83 = vclez_s32(v78), (vpmax_u32(v83, v83).u32[0] & 0x80000000) != 0))
                    {
                      v78 = 0;
                      v506.i64[1] = 0;
                    }

                    else
                    {
                      v33.u64[1] = v78;
                      v506 = v33;
                    }
                  }

                  v84 = v78.i32[0];
                  if (v78.i32[0] <= v78.i32[1])
                  {
                    v84 = v78.i32[1];
                  }

                  v33.i32[0] = v84;
                  v85.i64[0] = v506.i32[0];
                  v85.i64[1] = v506.i32[1];
                  v86 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v33, v497), 0), v489, vcvtq_f64_s64(v85));
                  v85.i64[0] = v78.i32[0];
                  v85.i64[1] = v78.i32[1];
                  v87 = vcvtq_f64_s64(v85);
                  v88 = vdup_n_s32(v84 > 1073741822);
                  v85.i64[0] = v88.u32[0];
                  v85.i64[1] = v88.u32[1];
                  v510 = v86;
                  v511 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v85, 0x3FuLL)), v484, v87);
                  v507[0] = &v510;
                  v507[1] = &CA::identity_transform;
                  v508 = 0u;
                  v509 = 0u;
                  CA::OGL::emit_one_part_rect(v41, v507, 0, 0, 0);
                }

                if (byte_1ED4E97FC == 1)
                {
                  v551 = 0;
                  v550 = v75;
                  v32.n128_u32[0] = 1073741822;
                  v504 = v32;
                  v495 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
                  while (CA::ShapeIterator::iterate(&v550, &v506))
                  {
                    CA::BoundsImpl::intersect(&v506, *(v41 + 608), *(v41 + 616));
                    if (v506.i32[2] <= v506.i32[3])
                    {
                      v415 = v506.i32[3];
                    }

                    else
                    {
                      v415 = v506.i32[2];
                    }

                    v414.i32[0] = v415;
                    v416.i64[0] = v506.i32[0];
                    v416.i64[1] = v506.i32[1];
                    v418 = vcvtq_f64_s64(v416);
                    v417 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v414, v504), 0), v495, v418);
                    *v418.i64 = v506.i32[2];
                    if (v415 > 1073741822)
                    {
                      *v418.i64 = 1.79769313e308;
                    }

                    v510 = v417;
                    if (v415 <= 1073741822)
                    {
                      v419 = v506.i32[3];
                    }

                    else
                    {
                      v419 = 1.79769313e308;
                    }

                    v511.i64[0] = v418.i64[0];
                    *&v511.i64[1] = v419;
                    v507[0] = &v510;
                    v507[1] = &CA::identity_transform;
                    v508 = 0u;
                    v509 = 0u;
                    CA::OGL::fill_color_rect(v41, v507, 0x800040, 0.0, v418);
                  }
                }

                v19 = v472;
              }
            }

            if ((byte_1ED4E97FE & 1) != 0 || (byte_1ED4E97FF) && (*(*v41 + 232))(v41, 18))
            {
              *(*(v41 + 16) + 497) &= ~1u;
              *(*(v41 + 16) + 16) = 94;
              if ((*(*v41 + 1072))(v41))
              {
                v332 = (*(*v41 + 1120))(v41);
                v333 = 1.0 / *(v41 + 576);
                v334 = powf(1.0 / v332, v333);
                v335 = powf(v332, v333);
                *(v41 + 160) = v334;
                *(v41 + 164) = v335;
                v336 = 0.0;
                if (byte_1ED4E97FF)
                {
                  v336 = 1.0;
                }

                *(v41 + 240) = v336;
                if (initialized[0] != -1)
                {
                  dispatch_once_f(initialized, 0, init_debug);
                }

                v337 = *&dword_1ED4E975C;
                if (*&dword_1ED4E975C == 0.0)
                {
                  v337 = 1.0;
                }

                *(v41 + 320) = v337;
                v338 = powf(v337, 1.0 / *(v41 + 576));
                v341 = *(v41 + 608);
                v342 = *(v41 + 616);
                if (SDWORD2(v341) <= SHIDWORD(v341))
                {
                  v343 = HIDWORD(*(v41 + 608));
                }

                else
                {
                  v343 = *(v41 + 616);
                }

                v339.i32[0] = 1073741822;
                v340.i32[0] = v343;
                *(v41 + 400) = v338;
                v344.i64[0] = v341;
                v344.i64[1] = SDWORD1(v341);
                v345 = v342;
                v510 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v340, v339), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v344));
                v346 = 1.79769313e308;
                if (v343 <= 1073741822)
                {
                  v346 = SHIDWORD(v341);
                }

                else
                {
                  v345 = 1.79769313e308;
                }

                *v511.i64 = v345;
                *&v511.i64[1] = v346;
                v507[0] = &v510;
                v507[1] = &CA::identity_transform;
                v508 = 0u;
                v509 = 0u;
                CA::OGL::emit_one_part_rect(v41, v507, 0, 0, 0);
              }

              *(*(v41 + 16) + 16) = 0;
            }

            if (byte_1ED4E97FD == 1 && (*(*v41 + 232))(v41, 18))
            {
              *(*(v41 + 16) + 497) &= ~1u;
              *(*(v41 + 16) + 16) = 95;
              if ((*(*v41 + 1072))(v41))
              {
                v365 = (*(*v41 + 1120))(v41);
                v366 = 1.0 / *(v41 + 576);
                v367 = powf(1.0 / v365, v366);
                v368 = powf(v365, v366);
                *(v41 + 160) = v367;
                *(v41 + 164) = v368;
                if (initialized[0] != -1)
                {
                  dispatch_once_f(initialized, 0, init_debug);
                }

                v369 = *&dword_1ED4E975C;
                if (*&dword_1ED4E975C == 0.0)
                {
                  v369 = 1.0;
                }

                *(v41 + 240) = v369;
                v370 = powf(v369, 1.0 / *(v41 + 576));
                v373 = *(v41 + 608);
                v374 = *(v41 + 616);
                if (SDWORD2(v373) <= SHIDWORD(v373))
                {
                  v375 = HIDWORD(*(v41 + 608));
                }

                else
                {
                  v375 = *(v41 + 616);
                }

                v371.i32[0] = 1073741822;
                v372.i32[0] = v375;
                *(v41 + 320) = v370;
                v376.i64[0] = v373;
                v376.i64[1] = SDWORD1(v373);
                v377 = v374;
                v510 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v372, v371), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v376));
                v378 = 1.79769313e308;
                if (v375 <= 1073741822)
                {
                  v378 = SHIDWORD(v373);
                }

                else
                {
                  v377 = 1.79769313e308;
                }

                *v511.i64 = v377;
                *&v511.i64[1] = v378;
                v507[0] = &v510;
                v507[1] = &CA::identity_transform;
                v508 = 0u;
                v509 = 0u;
                CA::OGL::emit_one_part_rect(v41, v507, 0, 0, 0);
              }

              *(*(v41 + 16) + 16) = 0;
            }

            if (v49)
            {
              if ((*(v41 + 1384) & 2) == 0)
              {
                v89 = (*(*v49 + 1008))(v49);
                if (v89 != 0.0)
                {
                  v90 = v89;
                  if (initialized[0] != -1)
                  {
                    dispatch_once_f(initialized, 0, init_debug);
                  }

                  v91 = *(&xmmword_1ED4E96DC + 1) * v90;
                  *_Q0.i32 = (*(*v41 + 1120))(v41);
                  if (*_Q0.i32 == 0.0 || *_Q0.i32 == 1.0)
                  {
                    __asm { FMOV            V0.2S, #1.0 }

                    v499 = _Q0;
                  }

                  else
                  {
                    v97 = *_Q0.i32;
                    v98 = 1.0 / *(v41 + 576);
                    *v99.i32 = powf(1.0 / *_Q0.i32, v98);
                    v498 = v99;
                    v100 = powf(v97, v98);
                    v101 = v498;
                    *&v101.i32[1] = v100;
                    v499 = v101;
                  }

                  *(*(v41 + 16) + 497) &= ~1u;
                  *(*(v41 + 16) + 16) = 99;
                  (*(*v41 + 552))(v41, 0);
                  *(v41 + 160) = v91;
                  v103 = v499;
                  *(v41 + 164) = v499.i64[0];
                  v104 = *(v41 + 616);
                  v105 = *(v41 + 620);
                  if (v104 <= v105)
                  {
                    v106 = *(v41 + 620);
                  }

                  else
                  {
                    v106 = *(v41 + 616);
                  }

                  v103.i32[0] = 1073741822;
                  v102.i32[0] = v106;
                  v107 = vdupq_lane_s32(*&vcgtq_s32(v102, v103), 0);
                  v108 = *(v41 + 608);
                  v109.i64[0] = v108;
                  v109.i64[1] = SHIDWORD(v108);
                  v110 = vbslq_s8(v107, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v109));
                  v111 = v104;
                  v112 = v105;
                  if (v106 > 1073741822)
                  {
                    v111 = 1.79769313e308;
                    v112 = 1.79769313e308;
                  }

                  v510 = v110;
                  *v511.i64 = v111;
                  *&v511.i64[1] = v112;
                  v507[0] = &v510;
                  v507[1] = &CA::identity_transform;
                  v508 = 0u;
                  v509 = 0u;
                  CA::OGL::emit_one_part_rect(v41, v507, 0, 0, 0);
                  (*(*v41 + 560))(v41, 0, 0);
                  *(*(v41 + 16) + 16) = 0;
                }
              }
            }

            else if ((*(v41 + 873) & 1) == 0)
            {
              goto LABEL_329;
            }

            if ((*(*v41 + 232))(v41, 18) && *(v41 + 576) != 1.0)
            {
              v32.n128_f32[0] = (*(*v41 + 1120))(v41);
              v113 = v32.n128_f32[0];
              if (v49)
              {
                v114 = 1.0 / *(v9[1] + 404);
                v115 = (*(*v49 + 1552))(v49);
                v116 = (*(*v49 + 1568))(v49);
                if (v116)
                {
                  LOBYTE(v116) = CA::WindowServer::Display::all_clones_support_edr_fixup(v49);
                }
              }

              else
              {
                v115 = 0;
                LOBYTE(v116) = 0;
                v114 = v32.n128_f32[0];
              }

              if (v114 == 1.0)
              {
                v117 = 1;
              }

              else
              {
                v117 = v115;
              }

              v118 = v116 ^ 1;
              if (v113 == 1.0)
              {
                v118 = 0;
              }

              if ((v118 & 1) != 0 || (v117 & 1) == 0)
              {
                *(*(v41 + 16) + 497) &= ~1u;
                *(*(v41 + 16) + 497) |= 2u;
                v119 = *(v41 + 16);
                *(v119 + 368) = 1065353216;
                *v120.i32 = powf(v113, -1.0 / *(v41 + 576));
                if (v115)
                {
                  v122 = v113;
                }

                else
                {
                  v122 = v114;
                }

                *(v119 + 16) = 96;
                *(v41 + 160) = v120.i32[0];
                *(v41 + 164) = v122;
                v123 = *(v41 + 616);
                v124 = *(v41 + 620);
                if (v123 <= v124)
                {
                  v125 = *(v41 + 620);
                }

                else
                {
                  v125 = *(v41 + 616);
                }

                v120.i32[0] = 1073741822;
                v121.i32[0] = v125;
                v126 = vdupq_lane_s32(*&vcgtq_s32(v121, v120), 0);
                v127 = *(v41 + 608);
                v128.i64[0] = v127;
                v128.i64[1] = SHIDWORD(v127);
                v510 = vbslq_s8(v126, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v128));
                if (v125 <= 1073741822)
                {
                  v129 = v123;
                }

                else
                {
                  v129 = 1.79769313e308;
                }

                if (v125 <= 1073741822)
                {
                  v130 = v124;
                }

                else
                {
                  v130 = 1.79769313e308;
                }

                *v511.i64 = v129;
                *&v511.i64[1] = v130;
                v507[0] = &v510;
                v507[1] = &CA::identity_transform;
                v508 = 0u;
                v509 = 0u;
                CA::OGL::emit_one_part_rect(v41, v507, 0, 0, 0);
                *(*(v41 + 16) + 497) &= ~2u;
                *(*(v41 + 16) + 16) = 0;
              }
            }

            if ((*(v41 + 1384) & 2) == 0 && v49 && (*(*v49 + 1584))(v49))
            {
              (*(*v49 + 640))(v507, v49);
              v131 = vceqzq_f64(v508);
              if ((vorrq_s8(vdupq_laneq_s64(v131, 1), v131).u64[0] & 0x8000000000000000) != 0 || (v132 = vceqq_f64(v508, v508), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v132), 1), v132).u64[0] & 0x8000000000000000) != 0))
              {
                v550 = 0uLL;
              }

              else
              {
                v133 = vcvtmq_s64_f64(vmaxnmq_f64(*v507, vdupq_n_s64(0xC1BFFFFFFF000000)));
                v550 = vuzp1q_s32(v133, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(*v507, v508), vdupq_n_s64(0x41C0000000000000uLL))), v133));
              }

              v134 = CA::Shape::intersect(*(v9[1] + 32), &v550);
              v506 = 0uLL;
              v553 = 0;
              v552 = v134;
              v136 = *(v41 + 16);
              v137 = *(v136 + 497);
              if (byte_1ED4E9845 == 1)
              {
                *(v136 + 497) = v137 | 1;
                *(*(v41 + 16) + 16) = 0;
                v135.i32[1] = 966393856;
                *(*(v41 + 16) + 8) = 0x399A00000000399ALL;
              }

              else
              {
                *(v136 + 497) = v137 & 0xFE;
                *(*(v41 + 16) + 16) = 100;
              }

              v135.i32[0] = 1073741822;
              v500 = v135;
              v490 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
              while (CA::ShapeIterator::iterate(&v552, &v506))
              {
                if (v506.i32[2] <= v506.i32[3])
                {
                  v139 = v506.i32[3];
                }

                else
                {
                  v139 = v506.i32[2];
                }

                v138.i32[0] = v139;
                v140.i64[0] = v506.i32[0];
                v140.i64[1] = v506.i32[1];
                v141 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v138, v500), 0), v490, vcvtq_f64_s64(v140));
                v142 = v506.i32[2];
                if (v139 > 1073741822)
                {
                  v142 = 1.79769313e308;
                }

                v510 = v141;
                if (v139 <= 1073741822)
                {
                  v143 = v506.i32[3];
                }

                else
                {
                  v143 = 1.79769313e308;
                }

                *v511.i64 = v142;
                *&v511.i64[1] = v143;
                v507[0] = &v510;
                v507[1] = &CA::identity_transform;
                v508 = 0u;
                v509 = 0u;
                CA::OGL::emit_one_part_rect(v41, v507, 0, 0, 0);
              }

              CA::Shape::unref(v134);
              *(*(v41 + 16) + 16) = 0;
              v19 = v472;
            }

            if ((*(v41 + 1384) & 2) == 0 && v49)
            {
              if ((*(v49 + 336) & 0x1C00) == 0x800 && (*(*v49 + 1504))(v49))
              {
                v144 = (*(*v49 + 1488))(v49);
                v32.n128_u32[0] = *v144;
                if (*v144 != 1.0)
                {
                  goto LABEL_202;
                }

                v181 = 1;
                do
                {
                  if (v181 == 16)
                  {
                    goto LABEL_209;
                  }

                  v182 = v181;
                  v32.n128_u32[0] = v144[v181];
                  v183 = CA::Mat4Impl::mat4_identity_float[v181++];
                }

                while (v32.n128_f32[0] == v183);
                if ((v182 - 1) <= 0xE)
                {
LABEL_202:
                  *(*(v41 + 16) + 497) &= ~1u;
                  *(*(v41 + 16) + 17) = 42;
                  *(*(v41 + 16) + 16) = 18;
                  v145 = (*(*v49 + 1488))(v49, v32);
                  v146 = *v145;
                  v147 = *(v145 + 16);
                  v148 = *(v145 + 32);
                  v149 = vuzp1q_s32(vuzp2q_s32(v147, v148), v147);
                  v150.i64[0] = vtrn1q_s32(*v145, v147).u64[0];
                  v150.i32[3] = HIDWORD(*v145);
                  v150.i32[2] = v148.i32[0];
                  v149.i32[2] = *(v145 + 8);
                  *(v41 + 192) = v148.i32[2];
                  *(v41 + 160) = v150;
                  *(v41 + 176) = v149;
                  v151 = *(v41 + 616);
                  v152 = *(v41 + 620);
                  if (v151 <= v152)
                  {
                    v153 = *(v41 + 620);
                  }

                  else
                  {
                    v153 = *(v41 + 616);
                  }

                  v146.i32[0] = 1073741822;
                  v150.i32[0] = v153;
                  v154 = vdupq_lane_s32(*&vcgtq_s32(v150, v146), 0);
                  v155 = *(v41 + 608);
                  v156.i64[0] = v155;
                  v156.i64[1] = SHIDWORD(v155);
                  v157 = vbslq_s8(v154, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v156));
                  v158 = v151;
                  v159 = v152;
                  if (v153 > 1073741822)
                  {
                    v158 = 1.79769313e308;
                    v159 = 1.79769313e308;
                  }

                  v510 = v157;
                  *v511.i64 = v158;
                  *&v511.i64[1] = v159;
                  v507[0] = &v510;
                  v507[1] = &CA::identity_transform;
                  v508 = 0u;
                  v509 = 0u;
                  CA::OGL::emit_one_part_rect(v41, v507, 0, 0, 0);
                  *(*(v41 + 16) + 16) = 0;
                  (*(*v49 + 1496))(v49, 1);
                }
              }

              goto LABEL_209;
            }

            if (v49)
            {
LABEL_209:
              v160 = v9[1];
              if (*(v160 + 1152))
              {
                v161 = *(v41 + 600);
                if (v161 && (v162 = (*(*v161 + 16))(v161)) != 0)
                {
                  v163 = (*(*v162 + 80))(v162);
                }

                else
                {
                  v163 = 0;
                }

                if (byte_1ED4E985C)
                {
                  goto LABEL_219;
                }

                if (CADeviceSupportsHWGainMap::once != -1)
                {
                  dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
                }

                if (v163 & 1 | ((CADeviceSupportsHWGainMap::supports_gain_map & 1) == 0) || (*(v160 + 1376) & 1) != 0)
                {
LABEL_219:
                  v552 = 0uLL;
                  CA::Shape::get_bounds(*(*(v41 + 656) + 8), &v552);
                  v165 = *(v41 + 672);
                  if (v165)
                  {
                    v166 = v165 + 6;
                  }

                  else
                  {
                    v166 = (v41 + 608);
                  }

                  v32.n128_u32[1] = HIDWORD(v552);
                  v167 = vclez_s32(*(&v552 + 8));
                  *v33.i8 = vpmax_u32(v167, v167);
                  if ((v33.i32[0] & 0x80000000) == 0)
                  {
                    *v33.i8 = v166[1];
                    v168 = vclez_s32(*v33.i8);
                    if ((vpmax_u32(v168, v168).u32[0] & 0x80000000) == 0)
                    {
                      *&v169 = vmax_s32(*&v552, *v166);
                      v32.n128_u64[0] = vsub_s32(vmin_s32(vadd_s32(*&v552, *(&v552 + 8)), vadd_s32(*v166, *v33.i8)), *&v169);
                      v170 = vclez_s32(v32.n128_u64[0]);
                      *v33.i8 = vpmax_u32(v170, v170);
                      if ((v33.i32[0] & 0x80000000) == 0)
                      {
                        *(&v169 + 1) = v32.n128_u64[0];
                        v552 = v169;
                        v171 = *(v160 + 1152);
                        v485 = v169;
                        if (v171)
                        {
                          v491 = 0uLL;
                          v501 = 0uLL;
                          do
                          {
                            v172 = v171[1];
                            v173 = *(v172 + 88);
                            *v507 = *(v172 + 72);
                            v508 = v173;
                            CA::Rect::apply_transform(v507, (v171 + 2), v164);
                            v174 = vclezq_f64(v501);
                            v175 = vclezq_f64(v508);
                            v176 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v175, v174), vzip2q_s64(v175, v174))));
                            if (v176.i8[4])
                            {
                              if (v176.i8[0])
                              {
                                v177 = -1;
                              }

                              else
                              {
                                v177 = 0;
                              }

                              v178 = vdupq_n_s64(v177);
                              v491 = vbslq_s8(v178, v491, *v507);
                              v501 = vbslq_s8(v178, v501, v508);
                            }

                            else if ((v176.i8[0] & 1) == 0)
                            {
                              v179 = vminnmq_f64(v491, *v507);
                              v180 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v491, v501), vaddq_f64(*v507, v508)), v179);
                              v491 = v179;
                              v501 = v180;
                            }

                            v171 = *v171;
                          }

                          while (v171);
                        }

                        else
                        {
                          v491 = 0uLL;
                          v501 = 0uLL;
                        }

                        v184 = vceqzq_f64(v501);
                        v33 = vdupq_laneq_s64(v184, 1);
                        if ((vorrq_s8(v33, v184).u64[0] & 0x8000000000000000) != 0 || (v185 = vceqq_f64(v501, v501), v33 = vdupq_laneq_s64(vmvnq_s8(v185), 1), (vornq_s8(v33, v185).u64[0] & 0x8000000000000000) != 0))
                        {
                          v188 = 0;
                          v187 = 0;
                          v550 = 0uLL;
                          v32 = 0uLL;
                          v33.i64[0] = 0x100000001;
                        }

                        else
                        {
                          v186 = vcvtmq_s64_f64(vmaxnmq_f64(v491, vdupq_n_s64(0xC1BFFFFFFF000000)));
                          v32 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v491, v501), vdupq_n_s64(0x41C0000000000000uLL))), v186);
                          v33 = vuzp1q_s32(v186, v32);
                          v550 = v33;
                          v187 = v33.i32[2];
                          v188 = v32.n128_i32[2];
                          v32.n128_u64[0] = v33.u64[1];
                          *v33.i8 = vmovn_s64(v186);
                          v33.i32[0] = v186.i32[0];
                          *v33.i8 = vadd_s32(*v33.i8, 0x100000001);
                        }

                        if (v187 <= v188)
                        {
                          v189 = v188;
                        }

                        else
                        {
                          v189 = v187;
                        }

                        if (v187 >= v188)
                        {
                          v190 = v188;
                        }

                        else
                        {
                          v190 = v187;
                        }

                        if (v189 <= 1073741822 && v190 >= 1)
                        {
                          v550.i64[0] = v33.i64[0];
                          v550.i32[2] = v187 + 4;
                          v191 = v188 + 4;
                          v550.i32[3] = v191;
                          if (v187 + 4 < 1 || v191 < 1)
                          {
                            v188 = 0;
                            v187 = 0;
                            v32 = 0uLL;
                            v550.i64[1] = 0;
                          }

                          else
                          {
                            v32.n128_u64[0] = v550.u64[1];
                            v187 = v550.i32[2];
                            v188 = v550.i32[3];
                          }
                        }

                        v192 = vclez_s32(v32.n128_u64[0]);
                        *v33.i8 = vpmax_u32(v192, v192);
                        if ((v33.i32[0] & 0x80000000) == 0)
                        {
                          v33.i32[1] = HIDWORD(v485);
                          v193 = vclez_s32(*(&v485 + 8));
                          if ((vpmax_u32(v193, v193).u32[0] & 0x80000000) != 0 || (v194 = vadd_s32(*v550.i8, v32.n128_u64[0]), v32.n128_u64[0] = vmax_s32(*v550.i8, *&v485), *v33.i8 = vsub_s32(vmin_s32(v194, vadd_s32(*&v485, *(&v485 + 8))), v32.n128_u64[0]), v195 = vclez_s32(*v33.i8), (vpmax_u32(v195, v195).u32[0] & 0x80000000) != 0))
                          {
                            v188 = 0;
                            v187 = 0;
                            v550.i64[1] = 0;
                          }

                          else
                          {
                            v32.n128_u64[1] = v33.i64[0];
                            v550 = v32;
                            v187 = v33.i32[0];
                            v188 = v33.i32[1];
                          }
                        }

                        if (v187 < v188)
                        {
                          v188 = v187;
                        }

                        if (v188 >= 1)
                        {
                          v196 = (*(*v41 + 696))(v41, 1, &v550, 2063, @"render-gain-map-layers");
                          if (v196)
                          {
                            v197 = v196;
                            CA::OGL::Context::push_surface(v41, v196, 1u, 256, 0);
                            v198 = *(v41 + 16);
                            *(v198 + 496) = 18;
                            *(v198 + 497) |= 1u;
                            *(*(v41 + 16) + 8) = 0x3C00000000000000;
                            v199 = *(v41 + 600);
                            if (v199)
                            {
                              v200 = (*(*v199 + 16))(v199);
                              if (v200)
                              {
                                if ((*(*v200 + 880))(v200))
                                {
                                  *(*(v41 + 16) + 8) = 0x3C003C003C003C00;
                                }
                              }
                            }

                            v201 = *(v160 + 1152);
                            if (v201)
                            {
                              do
                              {
                                if ((LOBYTE(v201[10].f64[0]) & 0x10) != 0)
                                {
                                  v203 = vaddvq_f64(vmulq_f64(v201[1], v201[1]));
                                  v204 = vaddvq_f64(vmulq_f64(v201[3], v201[3]));
                                  v205 = v201[8].f64[1];
                                  if (v205 != 1.0)
                                  {
                                    v206 = 1.0 / (v205 * v205);
                                    v203 = v206 * v203;
                                    v204 = v206 * v204;
                                  }

                                  v207 = v204 == 1.0 && v203 == 1.0;
                                  v208 = (sqrt(v204) + sqrt(v203)) * 0.5;
                                  if (v207)
                                  {
                                    v202 = 1.0;
                                  }

                                  else
                                  {
                                    v202 = v208;
                                  }
                                }

                                else
                                {
                                  v202 = v201[9].f64[0];
                                }

                                v510 = 0u;
                                v511 = 0u;
                                v209 = v201->f64[1];
                                v210 = *(*&v209 + 72);
                                v211 = *(*&v209 + 88);
                                v510 = v210;
                                v511 = v211;
                                v212 = *(*&v209 + 136);
                                if (v212)
                                {
                                  v213 = *(v212 + 232);
                                }

                                else
                                {
                                  v213 = 0.0;
                                }

                                if (*v211.i64 <= *&v211.i64[1])
                                {
                                  v214 = *&v211.i64[1];
                                }

                                else
                                {
                                  v214 = *v211.i64;
                                }

                                v215 = 0.25 / v202;
                                if (v214 < 1.79769313e308)
                                {
                                  v216 = *v211.i64 >= *&v211.i64[1] ? *&v211.i64[1] : *v211.i64;
                                  if (v216 > 0.0)
                                  {
                                    v510 = vaddq_f64(v210, vdupq_lane_s64(COERCE__INT64(-v215), 0));
                                    *v511.i64 = v215 + v215 + *v211.i64;
                                    *&v511.i64[1] = v215 + v215 + *&v211.i64[1];
                                    if (*v511.i64 <= 0.0 || v215 + v215 + *&v211.i64[1] <= 0.0)
                                    {
                                      v511 = 0uLL;
                                    }
                                  }
                                }

                                v507[0] = &v510;
                                v507[1] = &v201[1];
                                v508 = 0xFF0000003FuLL;
                                v509 = 0uLL;
                                CA::OGL::fill_round_rect(v41, v507, 0xF, *(*&v201->f64[1] + 44) & 3, v215 + v213, v215 + v213);
                                v201 = *&v201->f64[0];
                              }

                              while (v201);
                              v217 = *(v160 + 1152);
                              for (*(*(v41 + 16) + 496) = 9; v217; v217 = *&v217->f64[0])
                              {
                                if ((LOBYTE(v217[10].f64[1]) & 1) == 0)
                                {
                                  v510 = 0u;
                                  v511 = 0u;
                                  v218 = v217->f64[1];
                                  v219 = *(*&v218 + 72);
                                  v220 = *(*&v218 + 88);
                                  v510 = v219;
                                  v511 = v220;
                                  v221 = *(*&v218 + 136);
                                  v222 = 0.0;
                                  if (v221)
                                  {
                                    v222 = *(v221 + 232);
                                  }

                                  if ((LOBYTE(v217[10].f64[0]) & 0x10) != 0)
                                  {
                                    v224 = vaddvq_f64(vmulq_f64(v217[1], v217[1]));
                                    v225 = vaddvq_f64(vmulq_f64(v217[3], v217[3]));
                                    v226 = v217[8].f64[1];
                                    if (v226 != 1.0)
                                    {
                                      v227 = 1.0 / (v226 * v226);
                                      v224 = v227 * v224;
                                      v225 = v227 * v225;
                                    }

                                    v228 = v225 == 1.0 && v224 == 1.0;
                                    v223 = (sqrt(v225) + sqrt(v224)) * 0.5;
                                    if (v228)
                                    {
                                      v223 = 1.0;
                                    }
                                  }

                                  else
                                  {
                                    v223 = v217[9].f64[0];
                                  }

                                  if (*v220.i64 <= *&v220.i64[1])
                                  {
                                    v229 = *&v220.i64[1];
                                  }

                                  else
                                  {
                                    v229 = *v220.i64;
                                  }

                                  v230 = 4.0 / v223;
                                  if (v229 < 1.79769313e308)
                                  {
                                    v231 = *v220.i64 >= *&v220.i64[1] ? *&v220.i64[1] : *v220.i64;
                                    if (v231 > 0.0)
                                    {
                                      v510 = vaddq_f64(v219, vdupq_lane_s64(*&v230, 0));
                                      *v511.i64 = v230 * -2.0 + *v220.i64;
                                      *&v511.i64[1] = v230 * -2.0 + *&v220.i64[1];
                                      if (*v511.i64 <= 0.0 || v230 * -2.0 + *&v220.i64[1] <= 0.0)
                                      {
                                        v511 = 0uLL;
                                      }
                                    }
                                  }

                                  v232 = v222 - v230;
                                  if (v232 < 0.0)
                                  {
                                    v232 = 0.0;
                                  }

                                  v507[0] = &v510;
                                  v507[1] = &v217[1];
                                  v508 = 0xFF0000003FuLL;
                                  v509 = 0uLL;
                                  CA::OGL::fill_round_rect(v41, v507, 0xF, *(*&v217->f64[1] + 44) & 3, v232, v232);
                                }
                              }
                            }

                            else
                            {
                              *(*(v41 + 16) + 496) = 9;
                            }

                            CA::OGL::Context::pop_surface(v41);
                            *(*(v41 + 16) + 496) = 3;
                            v233 = *(*(v41 + 656) + 8);
                            v507[0] = 0;
                            v507[1] = 0;
                            CA::OGL::emit_combine(v41, 1u, v197, 0, v233, v507);
                            *(*(v41 + 16) + 497) &= ~1u;
                            CA::OGL::Context::release_surface(v41, v197);
                            v19 = v472;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_329:
            v25 = v475;
            v7 = v480;
LABEL_330:
            if (BYTE11(xmmword_1ED4E97EC) == 1)
            {
              v482 = v7;
              v477 = v25;
              if (v19 && (v299 = *(v8 + 32), (*(*v19 + 1576))(v19)))
              {
                memset(v526, 0, sizeof(v526));
                memset(v525, 0, sizeof(v525));
                if (CA::Shape::rect_count(v299) >= 32)
                {
                  v300 = 1;
                }

                else
                {
                  v300 = 4;
                }

                v301 = CA::Shape::coalesce(v299, v525, v300);
                v32.n128_u64[0] = *(*v9 + 616);
                v304 = v32.n128_u32[0];
                if (v32.n128_i32[0] <= v32.n128_i32[1])
                {
                  v304 = HIDWORD(*(*v9 + 616));
                }

                if (v301)
                {
                  v305 = v301;
                  v306 = *(*v9 + 608);
                  v307.i64[0] = v306;
                  v307.i64[1] = SHIDWORD(v306);
                  v302.i32[0] = v304;
                  v303.i32[0] = 1073741822;
                  v308 = vdupq_lane_s32(*&vcgtq_s32(v302, v303), 0);
                  v309 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
                  v486 = vbslq_s8(v308, v309, vcvtq_f64_s64(v307));
                  v492 = v309;
                  v307.i64[0] = v32.n128_i32[0];
                  v307.i64[1] = v32.n128_i32[1];
                  v310 = vcvtq_f64_s64(v307);
                  v311 = vdup_n_s32(v304 > 1073741822);
                  v307.i64[0] = v311.u32[0];
                  v307.i64[1] = v311.u32[1];
                  v32 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v307, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v310);
                  v469 = v32;
                  v312 = (v525 | 0xC);
                  v32.n128_u32[0] = 1073741822;
                  v468 = v32;
                  do
                  {
                    v313 = *(v312 - 1);
                    if (v313 <= *v312)
                    {
                      v314 = *v312;
                    }

                    else
                    {
                      v314 = *(v312 - 1);
                    }

                    v32.n128_u32[0] = v314;
                    v315 = *(v312 - 3);
                    v316.i64[0] = v315;
                    v316.i64[1] = SHIDWORD(v315);
                    v317 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v32, v468), 0), v492, vcvtq_f64_s64(v316));
                    if (v314 <= 1073741822)
                    {
                      v318 = v313;
                    }

                    else
                    {
                      v318 = 1.79769313e308;
                    }

                    if (v314 <= 1073741822)
                    {
                      v319 = *v312;
                    }

                    else
                    {
                      v319 = 1.79769313e308;
                    }

                    v510 = v317;
                    *v511.i64 = v318;
                    *&v511.i64[1] = v319;
                    CA::BoundsImpl::intersect(&v510, v486, v469);
                    v507[0] = &v510;
                    v507[1] = &CA::identity_transform;
                    v508 = 0u;
                    v509 = 0u;
                    CA::OGL::fill_color_rect(*v9, v507, 0x80408080, 0.0, v320);
                    v312 += 4;
                    --v305;
                  }

                  while (v305);
                }
              }

              else
              {
                v347 = *v9;
                v348 = *(*v9 + 616);
                v349 = *(*v9 + 620);
                if (v348 <= v349)
                {
                  v350 = *(*v9 + 620);
                }

                else
                {
                  v350 = *(*v9 + 616);
                }

                v32.n128_u32[0] = 1073741822;
                v33.i32[0] = v350;
                v351 = vdupq_lane_s32(*&vcgtq_s32(v33, v32), 0);
                v352 = *(v347 + 608);
                v353.i64[0] = v352;
                v353.i64[1] = SHIDWORD(v352);
                v354 = vcvtq_f64_s64(v353);
                *v507 = vbslq_s8(v351, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v354);
                if (v350 <= 1073741822)
                {
                  v355 = v348;
                }

                else
                {
                  v355 = 1.79769313e308;
                }

                if (v350 <= 1073741822)
                {
                  *v354.i64 = v349;
                }

                else
                {
                  *v354.i64 = 1.79769313e308;
                }

                v508.f64[0] = v355;
                *&v508.f64[1] = v354.i64[0];
                *&v525[0] = v507;
                *(&v525[0] + 1) = &CA::identity_transform;
                v525[1] = 0u;
                v526[0] = 0u;
                CA::OGL::fill_color_rect(v347, v525, 0x80408080, 0.0, v354);
              }

              v25 = v477;
              v7 = v482;
            }

            v234 = *v9;
            if ((*(*v9 + 1384) & 2) != 0)
            {
              v27 = v9 + 3;
              if (byte_1ED4E9800)
              {
                v235 = *(v234 + 616);
                v236 = *(v234 + 620);
                if (v235 <= v236)
                {
                  v237 = *(v234 + 620);
                }

                else
                {
                  v237 = *(v234 + 616);
                }

                v32.n128_u32[0] = 1073741822;
                v33.i32[0] = v237;
                v238 = vdupq_lane_s32(*&vcgtq_s32(v33, v32), 0);
                v239 = *(v234 + 608);
                v240.i64[0] = v239;
                v240.i64[1] = SHIDWORD(v239);
                v241 = vcvtq_f64_s64(v240);
                *v507 = vbslq_s8(v238, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v241);
                v242 = 1.79769313e308;
                if (v237 <= 1073741822)
                {
                  v243 = v235;
                }

                else
                {
                  v243 = 1.79769313e308;
                }

                if (v237 <= 1073741822)
                {
                  v242 = v236;
                }

                v508.f64[0] = v243;
                v508.f64[1] = v242;
                *&v525[0] = v507;
                *(&v525[0] + 1) = &CA::identity_transform;
                v525[1] = 0u;
                v526[0] = 0u;
                *v241.i64 = v236;
                CA::OGL::fill_color_rect(v234, v525, 0x80008080, 0.0, v241);
                v234 = *v9;
              }
            }

            else
            {
              v27 = v9 + 3;
            }

            if (byte_1ED4E9884 == 1)
            {
              if ((*(v234 + 1384) & 2) == 0)
              {
                v321 = *(v234 + 672);
                if (v321)
                {
                  v322 = *(v321 + 92);
                  v323 = *(v234 + 616);
                  v324 = *(v234 + 620);
                  if (v323 <= v324)
                  {
                    v325 = *(v234 + 620);
                  }

                  else
                  {
                    v325 = *(v234 + 616);
                  }

                  v32.n128_u32[0] = 1073741822;
                  v33.i32[0] = v325;
                  v326 = vdupq_lane_s32(*&vcgtq_s32(v33, v32), 0);
                  v327 = *(v234 + 608);
                  v328.i64[0] = v327;
                  v328.i64[1] = SHIDWORD(v327);
                  v329 = vcvtq_f64_s64(v328);
                  *v507 = vbslq_s8(v326, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v329);
                  if (v325 <= 1073741822)
                  {
                    v330 = v323;
                  }

                  else
                  {
                    v330 = 1.79769313e308;
                  }

                  if (v325 <= 1073741822)
                  {
                    *v329.i64 = v324;
                  }

                  else
                  {
                    *v329.i64 = 1.79769313e308;
                  }

                  v508.f64[0] = v330;
                  *&v508.f64[1] = v329.i64[0];
                  *&v525[0] = v507;
                  *(&v525[0] + 1) = &CA::identity_transform;
                  v525[1] = 0u;
                  v526[0] = 0u;
                  if ((v322 & 8) != 0)
                  {
                    v331 = 2147483776;
                  }

                  else
                  {
                    v331 = 8388736;
                  }

                  CA::OGL::fill_color_rect(v234, v525, v331, 0.0, v329);
                  v234 = *v9;
                }
              }

              v27 = v9 + 3;
            }

            if (*(v8 + 1380) & 1) != 0 && (byte_1ED4E9854)
            {
              v356 = *(v234 + 616);
              v357 = *(v234 + 620);
              if (v356 <= v357)
              {
                v358 = *(v234 + 620);
              }

              else
              {
                v358 = *(v234 + 616);
              }

              v32.n128_u32[0] = 1073741822;
              v33.i32[0] = v358;
              v359 = vdupq_lane_s32(*&vcgtq_s32(v33, v32), 0);
              v360 = *(v234 + 608);
              v361.i64[0] = v360;
              v361.i64[1] = SHIDWORD(v360);
              v363 = vcvtq_f64_s64(v361);
              v362 = vbslq_s8(v359, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v363);
              *v363.i64 = v356;
              *v507 = v362;
              v364 = 1.79769313e308;
              if (v358 <= 1073741822)
              {
                v364 = v357;
              }

              else
              {
                *v363.i64 = 1.79769313e308;
              }

              *&v508.f64[0] = v363.i64[0];
              v508.f64[1] = v364;
              *&v525[0] = v507;
              *(&v525[0] + 1) = &CA::identity_transform;
              v525[1] = 0u;
              v526[0] = 0u;
              CA::OGL::fill_color_rect(v234, v525, 0x80800080, 0.0, v363);
              v234 = *v9;
              if (!v19)
              {
                goto LABEL_357;
              }
            }

            else if (!v19)
            {
              goto LABEL_357;
            }

            if ((*(v234 + 1384) & 2) == 0)
            {
              v244 = (*(*v19 + 512))(v19, v8);
              v234 = *v9;
              if (v244)
              {
                v528.f64[0] = 0.0;
                v526[1] = 0u;
                v527 = 0u;
                v525[1] = 0u;
                v526[0] = 0u;
                v525[0] = 0u;
                v245 = *(v234 + 656);
                *(v525 + 8) = *(v245 + 8);
                v246 = *(v245 + 32);
                *(&v525[1] + 1) = *(v245 + 24);
                *&v526[0] = v246;
                *(v526 + 8) = *(v245 + 40);
                *(&v526[1] + 1) = *(v245 + 56);
                v247 = *(v245 + 80);
                LOWORD(v528.f64[0]) = v247;
                LODWORD(v527.f64[0]) = *(v245 + 64);
                LOWORD(v528.f64[0]) = *(v245 + 80) & 0x100 | v247;
                LOWORD(v528.f64[0]) |= *(v245 + 80) & 0x400;
                v527.f64[1] = *(v245 + 72);
                *(&v525[0] + 1) = v244;
                v248 = CA::OGL::Context::set_gstate(v234, v525);
                v251 = *v9;
                v252 = *(*v9 + 616);
                v253 = *(*v9 + 620);
                if (v252 <= v253)
                {
                  v254 = *(*v9 + 620);
                }

                else
                {
                  v254 = *(*v9 + 616);
                }

                v249.i32[0] = 1073741822;
                v250.i32[0] = v254;
                v255 = vdupq_lane_s32(*&vcgtq_s32(v250, v249), 0);
                *&v525[0] = v248;
                v256 = *(v251 + 608);
                v257.i64[0] = v256;
                v257.i64[1] = SHIDWORD(v256);
                v258 = vbslq_s8(v255, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v257));
                v259 = v252;
                v260 = v253;
                if (v254 > 1073741822)
                {
                  v259 = 1.79769313e308;
                  v260 = 1.79769313e308;
                }

                v510 = v258;
                *v511.i64 = v259;
                *&v511.i64[1] = v260;
                v507[0] = &v510;
                v507[1] = &CA::identity_transform;
                v508 = 0u;
                v509 = 0u;
                v261 = (*(*v19 + 520))(v19, v8);
                CA::OGL::fill_color_rect(v251, v507, v261, v262, v263);
                CA::OGL::Context::set_gstate(*v9, **(*v9 + 656));
                if ((BYTE3(ca_debug_options) & 1) == 0)
                {
                  usleep(0x186A0u);
                }

                v234 = *v9;
                v27 = v9 + 3;
              }
            }

LABEL_357:
            v264 = *(v8 + 1376);
            if ((*(v234 + 1384) & 1) == 0 && (v264 & 0x40000000) == 0 && (((v264 & 0x100000000) == 0) & v264) == 0)
            {
              *&v532 = 0;
              v266 = *v515;
              v265 = v515[1];
              v267 = v515[2];
              v268 = v515[3];
              v525[0] = *v515;
              v525[1] = v265;
              v526[0] = v267;
              v526[1] = v268;
              v269 = v515[4];
              v270 = v515[5];
              v271 = v515[6];
              v272 = v515[7];
              v527 = v269;
              v528 = v270;
              v529 = v271;
              v530 = v272;
              v273 = v515[8];
              v531 = v273;
              v274 = LOBYTE(v515[9].f64[0]);
              *&v532 = v274 & 0x1F;
              if (initialized[0] != -1)
              {
                v493 = v266;
                v503 = v267;
                v487 = v268;
                v478 = v270;
                v483 = v269;
                v473 = v265;
                v470 = v273;
                dispatch_once_f(initialized, 0, init_debug);
                v273 = v470;
                v265 = v473;
                v270 = v478;
                v269 = v483;
                v268 = v487;
                v266 = v493;
                v267 = v503;
              }

              if (*&dword_1ED4E96A8 > 0.0 && *&dword_1ED4E96A8 != 1.0)
              {
                *&v275 = *&dword_1ED4E96A8;
                if ((v274 & 0x10) != 0)
                {
                  v525[0] = vmulq_n_f64(v266, *&v275);
                  v525[1] = vmulq_n_f64(v265, *&v275);
                  v526[0] = vmulq_n_f64(v267, *&v275);
                  v526[1] = vmulq_n_f64(v268, *&v275);
                  v527 = v269;
                  v528 = v270;
                }

                else
                {
                  v276.f64[0] = vmulq_n_f64(v273, *&v275).f64[0];
                  v276.f64[1] = vdivq_f64(v273, vdupq_lane_s64(v275, 0)).f64[1];
                  v531 = v276;
                  LOBYTE(v532) = v274 & 7 | (8 * (v276.f64[0] != 1.0));
                  v525[0] = vmulq_n_f64(v266, *&v275);
                  v526[0] = vmulq_n_f64(v267, *&v275);
                }
              }

              v481 = v7;
              v471 = v17;
              v502 = v8;
              if (BYTE6(xmmword_1ED4E97EC) == 1)
              {
                v381 = v25;
                v382 = *v9;
                v383 = *(v502 + 272);
                v384 = *(*v9 + 888);
                if (v384 >= 0xC)
                {
                  v385 = 12;
                }

                else
                {
                  v385 = *(*v9 + 888);
                }

                v386 = CA::OGL::kDetailGroups[v385];
                v388 = v384 == 6 || *(*v9 + 892) != 0;
                v494 = v388;
                PerfHud = CA::OGL::GetPerfHud(v234);
                CA::OGL::update_perf_hud_pstate(PerfHud, v386);
                if (*(PerfHud + 1212))
                {
                  *(PerfHud + 1184) = *(v382 + 155) * *(v382 + 154);
                }

                v390 = 1.0 / *(v502 + 404);
                CA::Render::Update::render_edr_factor();
                v392 = *(v502 + 1180);
                if ((*(v502 + 305) & 0x180) != 0 && v392 <= *(v502 + 1184))
                {
                  v392 = *(v502 + 1184);
                }

                *(PerfHud + 544) = v390;
                *(PerfHud + 552) = v391;
                *(PerfHud + 560) = (1.0 / v392);
                v393 = v382[75];
                if (v393)
                {
                  v394 = (*(*v393 + 16))(v393);
                  if (CADeviceNeedsLumaBoost::once != -1)
                  {
                    dispatch_once(&CADeviceNeedsLumaBoost::once, &__block_literal_global_67);
                  }

                  v395 = v394 != 0;
                  if (CADeviceNeedsLumaBoost::needs_luma_bost == 1 && v394)
                  {
                    *(PerfHud + 576) = (*(*v394 + 1008))(v394);
                    v395 = 1;
                  }
                }

                else
                {
                  if (CADeviceNeedsLumaBoost::once != -1)
                  {
                    dispatch_once(&CADeviceNeedsLumaBoost::once, &__block_literal_global_67);
                  }

                  v395 = 0;
                  v394 = 0;
                }

                if (CADeviceSupportsTwilight::once != -1)
                {
                  dispatch_once(&CADeviceSupportsTwilight::once, &__block_literal_global_359);
                }

                if ((CADeviceSupportsTwilight::twilight & v395 & 1) != 0 && (byte_1ED4E9865 & 1) == 0)
                {
                  if ((*(*v394 + 1272))(v394) > 1.0 || (v425 = (*(*v394 + 1272))(v394), v426 = 0.0, v425 >= 0.0))
                  {
                    v427 = (*(*v394 + 1272))(v394);
                    v426 = 1.0;
                    if (v427 <= 1.0)
                    {
                      v426 = (*(*v394 + 1272))(v394);
                    }
                  }

                  *(PerfHud + 584) = v426;
                  if ((*(*v394 + 1288))(v394) > 1.0 || (v428 = (*(*v394 + 1288))(v394), v429 = 0.0, v428 >= 0.0))
                  {
                    v430 = (*(*v394 + 1288))(v394);
                    v429 = 1.0;
                    if (v430 <= 1.0)
                    {
                      v429 = (*(*v394 + 1288))(v394);
                    }
                  }

                  *(PerfHud + 592) = v429;
                }

                if (CADeviceSupportsGCP::once != -1)
                {
                  dispatch_once(&CADeviceSupportsGCP::once, &__block_literal_global_488);
                }

                if (CADeviceSupportsGCP::b & v395)
                {
                  *(PerfHud + 600) = (*(*v394 + 1304))(v394);
                }

                if (CADeviceSupportsBandwidthStatistics::once != -1)
                {
                  dispatch_once(&CADeviceSupportsBandwidthStatistics::once, &__block_literal_global_390);
                }

                if (CADeviceSupportsBandwidthStatistics::bw_stats & v395)
                {
                  v488 = (*(*v394 + 2080))(v394);
                  v479 = (*(*v394 + 2088))(v394);
                  v431 = (*(*v394 + 2096))(v394);
                  (*(*v394 + 2104))(v394);
                  v433.f64[0] = v488;
                  v434 = v488 / v479;
                  if (v479 == 0.0)
                  {
                    v434 = v479;
                  }

                  v433.f64[1] = v479;
                  *(PerfHud + 752) = vmulq_f64(v433, vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
                  *(PerfHud + 776) = v431 * 0.000001;
                  *(PerfHud + 784) = v432 * 0.000001;
                  if (v432 != 0.0)
                  {
                    v432 = v431 / v432;
                  }

                  *(PerfHud + 768) = v434;
                  *(PerfHud + 792) = v432;
                }

                if (v395)
                {
                  v435 = (*(*v394 + 952))(v394);
                  *(PerfHud + 568) = (CA::WindowServer::Display::edr_headroom(v394) * v435);
                  if (CADeviceSupportsRTPLC::once[0] != -1)
                  {
                    dispatch_once(CADeviceSupportsRTPLC::once, &__block_literal_global_356);
                  }

                  if (CADeviceSupportsRTPLC::rtplc == 1)
                  {
                    *(PerfHud + 800) = (*(*v394 + 2112))(v394);
                    *(PerfHud + 808) = (*(*v394 + 2120))(v394);
                    *(PerfHud + 816) = (*(*v394 + 2128))(v394);
                  }
                }

                else if (CADeviceSupportsRTPLC::once[0] != -1)
                {
                  dispatch_once(CADeviceSupportsRTPLC::once, &__block_literal_global_356);
                }

                v436 = (*(*v382 + 146))(v382) * 1000.0;
                *(PerfHud + 720) = (*&CA::OGL::PerformanceHUD::_scale_ms_to_ticks * v436);
                *(PerfHud + 4544) = v386 | 1;
                CA::OGL::PerformanceHUD::layout(PerfHud);
                v437 = 4496;
                if (v494)
                {
                  v437 = 4488;
                }

                *(PerfHud + 4536) = *(PerfHud + v437);
                v438 = CA::OGL::PerformanceHUD::calculate_fps(PerfHud, *(v502 + 80));
                v439 = *(PerfHud + 432);
                *(PerfHud + 424) += v438;
                *(PerfHud + 432) = v439 + *(v502 + 296);
                v440 = *(PerfHud + 464) + v474;
                *(PerfHud + 456) += *(v382 + 316);
                *(PerfHud + 464) = v440;
                *(PerfHud + 472) = v383;
                *(PerfHud + 656) = CA::OGL::thermal_level;
                *(PerfHud + 824) = *(v502 + 532);
                *(PerfHud + 832) = *(v502 + 528);
                *(PerfHud + 840) = *(v502 + 536);
                CA::OGL::update_perf_hud_memory(PerfHud, v386);
                CA::OGL::PerformanceHUD::update(PerfHud);
                CA::OGL::DebugRenderer::render((PerfHud + 4384), v382, v525, 0);
                v507[0] = 0;
                v507[1] = 0;
                CA::OGL::DebugRenderer::visible_bounds(v507, (PerfHud + 4384), v382[75], v525);
                if (v382[108])
                {
                  CA::shape_union(v382 + 108, v507, v442);
                }

                else
                {
                  v382[108] = CA::Shape::new_shape(v507, v441);
                }

                v25 = v381;
              }

              else
              {
                os_unfair_lock_lock(&CA::OGL::_perf_hud_list_lock);
                v278 = CA::OGL::_perf_hud_list[0];
                v277 = off_1EA84E7E0[0];
                if (CA::OGL::_perf_hud_list[0] != off_1EA84E7E0[0])
                {
                  v476 = v25;
                  do
                  {
                    v279 = *(v278 + 1);
                    if (v279)
                    {
                      CA::OGL::DebugRenderer::~DebugRenderer((v279 + 4384));
                      for (i = 4200; i != 808; i -= 64)
                      {
                        v281 = *(v279 + i);
                        if (v281)
                        {
                          if (*v281)
                          {
                            MEMORY[0x1865EA980](*v281, 0x1000C80F7F8B94BLL);
                          }

                          MEMORY[0x1865EA9A0](v281, 0x20C40960023A9);
                        }
                      }

                      MEMORY[0x1865EA9A0](v279, 0x1070C403D2E0347);
                    }

                    v278 += 4;
                  }

                  while (v278 != v277);
                  off_1EA84E7E0[0] = CA::OGL::_perf_hud_list[0];
                  notify_cancel(CA::OGL::thermal_level_register_token);
                  if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate)
                  {
                    v282 = CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_destroy == 0;
                  }

                  else
                  {
                    v282 = 1;
                  }

                  v25 = v476;
                  if (!v282)
                  {
                    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_current_options = 0;
                    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_destroy();
                    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate = 0;
                  }
                }

                os_unfair_lock_unlock(&CA::OGL::_perf_hud_list_lock);
              }

              v283 = *v9;
              v284 = CAGetDebugMessage();
              v8 = v502;
              v17 = v471;
              if (initialized[0] != -1)
              {
                dispatch_once_f(initialized, 0, init_debug);
              }

              v286 = debug_message_color;
              if (CA::OGL::Context::update_debug_message(CA::Transform const*)::once != -1)
              {
                dispatch_once(&CA::OGL::Context::update_debug_message(CA::Transform const*)::once, &__block_literal_global_3606);
              }

              if (CA::OGL::Context::update_debug_message(CA::Transform const*)::show_message == 1 && v284)
              {
                v379 = *(v283 + 600);
                if (v379)
                {
                  v380 = (*(*v379 + 16))(v379);
                }

                else
                {
                  v380 = 0;
                }

                if ((*(v380 + 672) & 0x1C00) != 0)
                {
                  v420 = 0;
                  v421 = 0;
                  v422 = *(v283 + 616);
                  v423 = 0.0;
                  v424 = 3.0;
                }

                else
                {
                  if (CADeviceIsPhone::once != -1)
                  {
                    dispatch_once(&CADeviceIsPhone::once, &__block_literal_global_227);
                  }

                  v424 = 3.0;
                  if (CADeviceIsPhone::phone == 1)
                  {
                    if (CADeviceHasNotch::once != -1)
                    {
                      dispatch_once(&CADeviceHasNotch::once, &__block_literal_global_335);
                    }

                    if (CADeviceHasNotch::has_notch)
                    {
                      v424 = 3.5;
                    }

                    else
                    {
                      v424 = 2.0;
                    }
                  }

                  if ((*(v380 + 672) | 2) == 3)
                  {
                    v422 = *(v283 + 620);
                    if (CADeviceIsPhone::once != -1)
                    {
                      dispatch_once(&CADeviceIsPhone::once, &__block_literal_global_227);
                    }

                    if (CADeviceIsPhone::phone)
                    {
                      v423 = 20.0;
                    }

                    else
                    {
                      v423 = 60.0;
                    }

                    if (CADeviceIsPhone::phone)
                    {
                      v421 = 1123024896;
                    }

                    else
                    {
                      v421 = 1101004800;
                    }
                  }

                  else
                  {
                    v422 = *(v283 + 616);
                    if (CADeviceHasNotch::once != -1)
                    {
                      dispatch_once(&CADeviceHasNotch::once, &__block_literal_global_335);
                    }

                    if (CADeviceHasNotch::has_notch)
                    {
                      v423 = 60.0;
                    }

                    else
                    {
                      v423 = 50.0;
                    }

                    v421 = 1101004800;
                  }

                  v420 = 0x3885000000000000;
                }

                v443 = v424 * 7.0;
                v444 = v424 * 8.0;
                _S11 = HIBYTE(v286) * 0.0039216;
                *v285.f32 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v286), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), vdup_n_s32(0x3B808081u));
                v496 = v285;
                _S13 = v286 * 0.0039216;
                v447 = strlen(v284);
                if (v447)
                {
                  v448 = 1;
                  v449 = v284;
                  v450 = v447;
                  do
                  {
                    v451 = *v449++;
                    if (v451 == 10)
                    {
                      ++v448;
                    }

                    --v450;
                  }

                  while (v450);
                  v452 = (v448 + 1);
                }

                else
                {
                  v452 = 2.0;
                }

                __asm { FCVT            H11, S11 }

                v453 = vcvt_f16_f32(v496);
                __asm { FCVT            H13, S13 }

                v454 = v444 * v452;
                v455 = v443 * v447;
                if (v422)
                {
                  v455 = v422;
                }

                *v510.f64 = v455;
                *(v510.f64 + 1) = v423 + truncf(v454);
                v456 = *(v510.f64 + 1);
                v457 = *(v283 + 856);
                if (!v457)
                {
                  operator new();
                }

                *(v457 + 24) = v443;
                *(v457 + 28) = v444;
                v458 = *(v283 + 856);
                v458[8] = v458[6];
                v458[10] = v420;
                v459 = *(v283 + 856);
                *v459 = 0;
                *(v459 + 8) = v455;
                *(v459 + 12) = v456;
                *(v459 + 16) = 0;
                CA::OGL::DebugRenderer::draw_rectangle_with_fill(*(v283 + 856), &v510, 0.0);
                v460 = vmovl_u16(v453).u64[0];
                v461.i64[0] = v460;
                v461.i64[1] = HIDWORD(v460);
                v462.i64[0] = 0xFFFFLL;
                v462.i64[1] = 0xFFFFLL;
                v463 = vshlq_u64(vandq_s8(v461, v462), xmmword_183E20F80);
                *(*(v283 + 856) + 80) = v463.i64[0] | (LODWORD(_S13) << 48) | LODWORD(_S11) | v463.i64[1];
                v464 = *(v283 + 856);
                *(v464 + 16) = v421;
                *(v464 + 20) = v423;
                v465 = strlen(v284);
                CA::OGL::DebugRenderer::draw_string(*(v283 + 856), v284, v465);
                CA::OGL::DebugRenderer::render(*(v283 + 856), v283, v525, 0);
                v507[0] = 0;
                v507[1] = 0;
                CA::OGL::DebugRenderer::visible_bounds(v507, *(v283 + 856), *(v283 + 600), v525);
                if (*(v283 + 864))
                {
                  CA::shape_union((v283 + 864), v507, v467);
                }

                else
                {
                  *(v283 + 864) = CA::Shape::new_shape(v507, v466);
                }

                v8 = v502;
                v17 = v471;
              }

              else if (*(v283 + 856))
              {
                std::unique_ptr<CA::OGL::DebugRenderer>::reset[abi:nn200100]((v283 + 856), 0);
              }

              v264 = *(v8 + 1376);
              v7 = v481;
              v27 = v9 + 3;
            }

            if ((v264 & 0x2000000) != 0)
            {
              CA::OGL::update_backdrop_luma(v9, v30);
            }

            (*(**v9 + 1048))(*v9, v7);
            (*(**v9 + 1096))();
            v287 = *v9;
            v287[17] = 0;
            v287[19] = 0;
            v287[2] = 0;
            v287[3] = 0;
            x_heap_free(v9[7]);
            v9[7] = 0;
            v288 = 504;
            while (!v524[v288 / 8])
            {
              v288 -= 504;
              if (v288 == -504)
              {
                goto LABEL_399;
              }
            }

LABEL_418:
            __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
          }

          v71 = *(v30 + 172);
LABEL_107:
          v74 = ((v71 & 0x4000000) == 0) & (v71 ^ 1);
          goto LABEL_108;
        }
      }

      else
      {
        v66 = v17;
        v68 = 0;
      }

      layer_resource_text = 0;
      goto LABEL_87;
    }

LABEL_37:
    *(*(v34 + 16) + 8) = 0;
    *(*(*v9 + 16) + 497) &= ~1u;
    LOWORD(v522) = v522 & 0xFBFF;
    CA::OGL::emit_shape(*v9, v36, v31);
    LOWORD(v522) = v522 | 0x400;
    goto LABEL_38;
  }

LABEL_44:
  if ((*(v8 + 1379) & 2) != 0)
  {
    bzero(buf, 0x3F0uLL);
    CA::OGL::Context::prepare_context(*v9, buf);
    v524[8] = 1065353216;
    v524[10] = 1025;
    v524[4] = 0x3C003C003C003C00;
    memset(&v524[5], 0, 24);
    v524[9] = 0;
    v524[0] = 0;
    v524[3] = &CA::identity_transform;
    v524[2] = 0;
    v524[1] = &CA::Shape::_infinite_shape;
    (*(**v9 + 1088))();
    CA::OGL::update_backdrop_luma(v9, v43);
    (*(**v9 + 1096))();
    v44 = *v9;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    v45 = 504;
    while (!*&buf[v45])
    {
      v45 -= 504;
      if (v45 == -504)
      {
        goto LABEL_399;
      }
    }

    goto LABEL_418;
  }

LABEL_399:
  v289 = *v9;
  v290 = *(*v9 + 1384);
  if ((v290 & 0x180) != 0 && (v290 & 1) == 0 && *(v8 + 272) != CA::OGL::Renderer::render(CA::Render::Update const*,unsigned long,CA::CASharedEvent *)::last_seed_recorded)
  {
    if (v17)
    {
      v291 = CA::Shape::area(v17);
    }

    else
    {
      v292 = *(v289 + 616);
      v293 = *(v289 + 620);
      if (v292 <= v293)
      {
        v294 = *(v289 + 620);
      }

      else
      {
        v294 = *(v289 + 616);
      }

      v291 = INFINITY;
      if (v294 <= 1073741822)
      {
        v291 = v293 * v292;
      }
    }

    CARecordFrame(*(v289 + 1256), *(v289 + 1264), *(v289 + 1268), 0, *(v289 + 648), v291, *(v289 + 1280));
    CA::OGL::Renderer::render(CA::Render::Update const*,unsigned long,CA::CASharedEvent *)::last_seed_recorded = *(v8 + 272);
    v289 = *v9;
  }

  *(v9 + 101) = 0;
  v295 = (*(*v289 + 232))(v289, 0);
  if (v295)
  {
    v296 = v295;
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v297 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
    {
      v298 = (*(**v9 + 240))(*v9, v296);
      *buf = 136315138;
      *&buf[4] = v298;
      _os_log_error_impl(&dword_183AA6000, v297, OS_LOG_TYPE_ERROR, "rendering error %s\n", buf, 0xCu);
    }
  }

  *(*v9 + 624) = 0;
  CA::Render::Update::mark_composited(v8);
  v9[1] = 0;
  v27[1] = 0;
  v27[2] = 0;
  *v27 = 0;
  if (v25)
  {
    CA::Shape::unref(v17);
  }
}

void CA::OGL::Context::push_surface(CA::OGL::Context *this, uint64_t a2, unsigned __int8 a3, int a4, char a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __assert_rtn("push_surface", "ogl-context.cpp", 1175, "surf != nullptr");
  }

  if (*(this + 84) == a2)
  {
    __assert_rtn("push_surface", "ogl-context.cpp", 1176, "_current_surface != surf");
  }

  v10 = *(a2 + 92);
  v11 = 96;
  if ((v10 & 0x400) == 0)
  {
    v11 = 88;
  }

  v12 = (this + v11);
  v13 = *(this + v11);
  if (v13)
  {
    v14 = v13 == a2;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    do
    {
      v15 = v13;
      v13 = *(v13 + 16);
      if (v13)
      {
        v16 = v13 == a2;
      }

      else
      {
        v16 = 1;
      }
    }

    while (!v16);
    v12 = (v15 + 16);
  }

  if (!v13)
  {
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v17 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
    {
      v21 = *(this + 2);
      v22 = "persistent";
      v23[0] = 67109634;
      if ((v10 & 0x400) == 0)
      {
        v22 = "transient";
      }

      v23[1] = v21;
      v24 = 2080;
      v25 = v22;
      v26 = 2048;
      v27 = a2;
      _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "context(%u) %s surface %p not found", v23, 0x1Cu);
    }

    CA::OGL::Context::dump_tracked_surfaces(this);
    if (!*v12)
    {
      __assert_rtn("push_surface", "ogl-context.cpp", 1188, "found != slist->end ()");
    }
  }

  if ((*(this + 692) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  v18 = *(a2 + 144);
  if ((((v18 & 0x40000000) == 0) & a3) != 0)
  {
    v19 = 0x20000000;
  }

  else
  {
    v19 = 0;
  }

  *(a2 + 144) = v19 | v18 & 0xDFFFFFFF;
  v20 = *(this + 172);
  if (v20)
  {
    *(v20 + 388) |= a4 & 0x1FFFF;
    *(a2 + 24) = v20;
  }

  *(a2 + 8) = *(this + 84);
  *(this + 84) = a2;
  *(a2 + 144) = *(a2 + 144) & 0xFFFFFFC1 | (2 * (a5 & 0x1F));
}

float64x2_t CA::Transform::translate(float64x2_t *this, float64x2_t a2, double a3, double a4)
{
  v4 = LOBYTE(this[9].f64[0]);
  if ((v4 & 0x10) != 0)
  {
    v15 = vmlaq_n_f64(vmlaq_n_f64(this[6], *this, a2.f64[0]), this[2], a3);
    v16 = vmlaq_n_f64(vmlaq_n_f64(this[7], this[1], a2.f64[0]), this[3], a3);
    result = this[4];
    v17 = vmlaq_n_f64(v16, this[5], a4);
    this[6] = vmlaq_n_f64(v15, result, a4);
    this[7] = v17;
  }

  else
  {
    a2.f64[1] = a3;
    if ((v4 & 8) != 0)
    {
      a2 = vmulq_n_f64(a2, this[8].f64[0]);
    }

    v5 = vdup_n_s32((v4 & 4) == 0);
    v6.i64[0] = v5.u32[0];
    v6.i64[1] = v5.u32[1];
    v7 = vdupq_lane_s64(*&a2.f64[0], 0);
    *v7.i64 = -a2.f64[1];
    v8 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v6, 0x3FuLL)), a2, v7);
    v9 = vceqz_s32(vand_s8(vdup_n_s32(v4), 0x100000002));
    v6.i64[0] = v9.i32[0];
    v6.i64[1] = v9.i32[1];
    result = vaddq_f64(vbslq_s8(v6, v8, vnegq_f64(v8)), this[6]);
    this[6] = result;
    if (a4 != 0.0)
    {
      this[7].f64[0] = this[7].f64[0] + a4;
      __asm { FMOV            V0.2D, #1.0 }

      this[8] = result;
      LOBYTE(this[9].f64[0]) = v4 & 0xE0 | 0x10;
    }
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::foreach_detached_layer(CA::WindowServer::IOMFBDisplay *this, void (*a2)(CA::Render::Handle *, uint64_t, CA::Render::Texture *, void *), void *a3)
{
  v3 = *(this + 3287);
  if (v3 && (*(v3 + 292) & 1) == 0)
  {
    if (*v3)
    {
      a2(*v3, *(v3 + 288), *(v3 + 8), a3);
    }

    else
    {
      CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
    }
  }
}

float64x2_t CA::Transform::scale_2d(CA::Transform *this, float64x2_t result)
{
  if (result.f64[0] != 1.0)
  {
    v2 = *(this + 144);
    if ((v2 & 0x10) != 0)
    {
      v5 = vmulq_n_f64(*this, result.f64[0]);
      v6 = vmulq_n_f64(*(this + 1), result.f64[0]);
      v7 = vmulq_n_f64(*(this + 2), result.f64[0]);
      result = vmulq_n_f64(*(this + 3), result.f64[0]);
      *this = v5;
      *(this + 1) = v6;
      *(this + 2) = v7;
      *(this + 3) = result;
    }

    else
    {
      v3 = *(this + 16) * result.f64[0];
      v4 = *(this + 17) / result.f64[0];
      *(this + 16) = v3;
      *(this + 17) = v4;
      *(this + 144) = v2 & 0xE7 | (8 * (v3 != 1.0));
      *this = vmulq_n_f64(*this, result.f64[0]);
      result = vmulq_n_f64(*(this + 2), result.f64[0]);
      *(this + 2) = result;
    }
  }

  return result;
}

int8x8_t CA::OGL::Context::unbind_image(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  if (a2 && (v6 = a2[3]) != 0)
  {
    CA::OGL::Context::unbind_surface(a1, v6, a3);
    CA::OGL::Context::release_surface(a1, a2[3]);
    a2[3] = 0;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_zone;

    malloc_zone_free(v7, a2);
  }

  else
  {
    CA::OGL::Context::color_program(a1, a3, 0);
    v9 = a1[2];
    v10 = CA::OGL::state_image_texture_unit(v9, v3);
    v12 = CA::OGL::image_plane_count[*(v9 + 17 + v3)];
    if (CA::OGL::image_plane_count[*(v9 + 17 + v3)])
    {
      do
      {
        *(v9 + 144 + 2 * v10) = 0;
        *(v9 + 176 + 8 * v10++) = 0;
        --v12;
      }

      while (v12);
    }

    *(v9 + 17 + v3) = 0;
    *(a1[2] + v3 + 19) = 0;
    v13 = a1[2];
    v11.i32[0] = *(v13 + 320);
    v14 = vand_s8(*&vmovl_u8(v11), vdup_n_s16(~(1 << v3)));
    result = vuzp1_s8(v14, v14);
    *(v13 + 320) = result.i32[0];
    *(v13 + 324) &= ~(1 << v3);
  }

  return result;
}

uint64_t CA::OGL::Context::array_indices(uint64_t this, __int16 a2)
{
  v2 = *(this + 120);
  v3 = *(this + 112) + 2 * v2;
  v4 = *(this + 108);
  if (v4 == 1)
  {
    *v3 = a2;
    *(v3 + 2) = vadd_s16(vdup_n_s16(a2), 0x3000200020001);
    v5 = 6;
    v6 = 10;
  }

  else
  {
    if (v4)
    {
      return this;
    }

    *v3 = a2;
    *(v3 + 2) = a2 + 1;
    *(v3 + 4) = a2 + 2;
    a2 += 3;
    v5 = 4;
    v6 = 6;
  }

  *(v3 + v6) = a2;
  *(this + 120) = v2 + v5;
  return this;
}

uint64_t CA::OGL::Context::color_program(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 16);
  v7 = a2;
  v8 = *(v6 + 40 + 8 * a2);
  if (v8)
  {
    result = CA::OGL::state_image_texture_unit(*(result + 16), a2 + 1);
    v9 = *(v8 + 80);
    v10 = v9 == 0;
    v11 = v9 != 0;
    if (v9)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v8 + 56);
    if (v10)
    {
      v14 = -1;
    }

    else
    {
      v14 = -2;
    }

    v15 = 1;
    if (!v10)
    {
      v15 = 2;
    }

    if (v13)
    {
      v12 = v14;
    }

    v16 = v12 + result;
    if (v13)
    {
      v11 = v15;
    }

    for (; v11; ++v16)
    {
      *(v6 + 144 + 2 * v16) = 0;
      *(v6 + 176 + 8 * v16) = 0;
      --v11;
    }
  }

  *(v6 + 40 + 8 * v7) = a3;
  if (a3)
  {
    result = CA::OGL::state_image_texture_unit(v5[2], a2 + 1);
    v17 = *(a3 + 80);
    if (v17)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = -2;
    }

    else
    {
      v19 = -1;
    }

    if (*(a3 + 56))
    {
      v18 = v19;
    }

    v20 = v18 + result;
    if (*(a3 + 64))
    {
      *(v6 + v7 + 56) = v20;
      v21 = v20 + 1;
      result = (*(*v5 + 576))(v5);
      v17 = *(a3 + 80);
      v20 = v21;
    }

    if (v17)
    {
      *(v6 + v7 + 58) = v20;
      v22 = *(*v5 + 568);

      return v22(v5);
    }
  }

  return result;
}

void CA::OGL::colormatched_layer_color(float16x4_t *a1, CA::OGL::Context **a2, uint64_t a3, float16x4_t *a4, float a5)
{
  v6 = *a4;
  if (*a4 == 0x3C003C003C003C00 || *&v6 == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a3 + 24);
  if (!v9)
  {
    goto LABEL_6;
  }

  if (byte_1ED4E9822)
  {
    goto LABEL_6;
  }

  v10 = *(v9 + 152);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v10 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

  v15 = a2[1];
  v16 = (v15 + 368);
  while (1)
  {
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    if (v16[1] == v11)
    {
      v17 = v16[2];
      goto LABEL_16;
    }
  }

  v17 = 0;
LABEL_16:
  v18 = *(*a2 + 70);
  v19 = (v17 ? v17 : *(*a2 + 70));
  if (!v19 || v18 == 0)
  {
    goto LABEL_6;
  }

  v21 = *(v15 + 101);
  if (v19 == v18)
  {
    v22 = 1;
  }

  else
  {
    v22 = CGColorSpaceEqualToColorSpaceIgnoringRange();
  }

  if (a5 <= 1.0 && v22 != 0)
  {
    v6 = *a4;
LABEL_6:
    *a1 = v6;
    return;
  }

  v24 = *(*(a3 + 24) + 40);
  v25 = CA::OGL::Context::color_program_cache(*a2);
  v26 = *(a3 + 24);
  v27 = *(v26 + 136);
  if (v27)
  {
    v28 = *(v27 + 264);
  }

  else
  {
    v28 = 0x3F80000000000000;
  }

  *(v25 + 9) = v28;
  if ((*(v26 + 44) & 0x800000C0) == 0)
  {
    v29 = *(v26 + 152);
    if (!v29 || (*(v29 + 104) & 0x8000000000000000) == 0)
    {
      v21 = 1.0;
    }
  }

  if ((v24 & 0x3000000000) == 0x1000000000)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v21;
  }

  v31 = *a2;
  v32 = *a4;

  CA::OGL::Context::device_color_from_premul_color(a1, v31, v19, v32, a5, v30);
}

void CA::OGL::Context::release_surface(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*a2)-- != 1)
  {
    return;
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  if (*(a2 + 80))
  {
    if (x_log_get_ogl_trace(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_trace(void)::once, &__block_literal_global_3773);
    }

    v6 = *(a1 + 159);
    if (v6)
    {
      v7 = x_log_get_ogl_trace(void)::log;
      if (os_signpost_enabled(x_log_get_ogl_trace(void)::log))
      {
        v8 = *(a2 + 56);
        v9 = *(a2 + 60);
        v10 = *(a2 + 92);
        v11 = (*(a2 + 148) >> 6) & 1;
        v12 = *(a2 + 80);
        v30 = 67241216;
        v31 = v8;
        v32 = 1026;
        *v33 = v9;
        *&v33[4] = 1026;
        *&v33[6] = v10;
        *v34 = 1026;
        *&v34[2] = v11;
        *v35 = 2050;
        *&v35[2] = v12;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v7, OS_SIGNPOST_EVENT, v6, "Surface", "ID is update width=%{public,name=width}d height=%{public,name=height}d features=%{public,name=features}#x recycled=%{public,name=recycled,BOOL}d begin=%{public,signpost.description:begin_time}llu", &v30, 0x24u);
      }
    }
  }

  if (a1[85] == a2)
  {
    (*(*a1 + 440))(a1);
  }

  v13 = *(a2 + 92);
  v14 = 12;
  if ((v13 & 0x400) == 0)
  {
    v14 = 11;
  }

  v15 = &a1[v14];
  v16 = a1[v14];
  if (!v16)
  {
    goto LABEL_26;
  }

  if (v16 != a2)
  {
    while (1)
    {
      v17 = v16;
      v16 = *(v16 + 16);
      if (!v16)
      {
        break;
      }

      if (v16 == a2)
      {
        if (!a2)
        {
          __assert_rtn("erase", "x-list-template.h", 211, "*itr._ptr != nullptr");
        }

        v15 = (v17 + 16);
        goto LABEL_21;
      }
    }

LABEL_26:
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v19 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_FAULT))
    {
      v22 = *(a1 + 2);
      v23 = "persistent";
      if ((v13 & 0x400) == 0)
      {
        v23 = "transient";
      }

      v24 = *(a2 + 40);
      v25 = *(a2 + 44);
      v30 = 67110146;
      v31 = v22;
      v32 = 2080;
      *v33 = v23;
      *&v33[8] = 1024;
      *v34 = v24;
      *&v34[4] = 1024;
      *v35 = v25;
      *&v35[4] = 2048;
      *&v35[6] = a2;
      _os_log_fault_impl(&dword_183AA6000, v19, OS_LOG_TYPE_FAULT, "context(%u) %s %ux%u surface %p was not tracked in", &v30, 0x28u);
    }

    goto LABEL_29;
  }

LABEL_21:
  *v15 = *(v16 + 16);
  *(v16 + 16) = 0;
  if (byte_1ED4E98C1 == 1)
  {
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v18 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 2);
      v27 = "persistent";
      if ((v13 & 0x400) == 0)
      {
        v27 = "transient";
      }

      v28 = *(a2 + 40);
      v29 = *(a2 + 44);
      v30 = 67110146;
      v31 = v26;
      v32 = 2080;
      *v33 = v27;
      *&v33[8] = 1024;
      *v34 = v28;
      *&v34[4] = 1024;
      *v35 = v29;
      *&v35[4] = 2048;
      *&v35[6] = a2;
      _os_log_debug_impl(&dword_183AA6000, v18, OS_LOG_TYPE_DEBUG, "context(%u) untracking %s %ux%u surface %p", &v30, 0x28u);
    }

    CA::OGL::Context::dump_tracked_surfaces(a1);
  }

LABEL_29:
  v20 = *(a2 + 148);
  if (v20)
  {
    (*(*a1 + 800))(a1, a2);
  }

  else
  {
    if ((v20 & 0x20) != 0)
    {
      v21 = 40;
    }

    else
    {
      v21 = 4;
    }

    *a2 = v21;
    *(a2 + 8) = a1[10];
    a1[10] = a2;
  }
}

uint64_t CA::OGL::Context::unbind_surface(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 848))(a1, a2, 0, a3);
  result = (*(*a1 + 560))(a1, 0, a3);
  if ((*(a2 + 148) & 2) != 0)
  {
    *(a1[2] + 497) &= ~2u;
  }

  return result;
}

CA::OGL::MetalContext *CA::OGL::MetalContext::bind_surface_impl(CA::OGL::MetalContext *result, uint64_t a2, int a3, int a4, int a5, char a6, float a7)
{
  v7 = a2 + 168;
  if (*(a2 + 168 + 8 * a3))
  {
    v13 = result;
    v14 = a3;
    v15 = a2 + 232;
    v16 = *(a2 + 232 + 8 * a3);
    if (!v16)
    {
      CA::OGL::MetalContext::new_image(result);
      *(v15 + 8 * v14) = v17;
      *(*(v15 + 8 * v14) + 64) = *(v7 + 8 * v14);
      *(*(v15 + 8 * v14) + 123) = *(*(v15 + 8 * v14) + 123) & 0xFFBF | (*(a2 + 308) >> 1) & 0x40;
      *(*(v15 + 8 * v14) + 123) = *(*(v15 + 8 * v14) + 123) & 0xFEFF | (*(a2 + 308) >> 1) & 0x100;
      v16 = *(v15 + 8 * v14);
      *(v16 + 122) = 1;
    }

    result = CA::OGL::MetalContext::update_texture_plane(v13, v16, a4, 0, *(a2 + 8 * v14 + 192), *(a2 + 40), *(a2 + 44));
    if (a5 == 11)
    {
      v18 = 2;
    }

    else
    {
      v18 = a5;
    }

    if (v18 == 2)
    {
      if ((*(a2 + 92) & 0x40) != 0)
      {
        if ((*(a2 + 308) & 0x100) != 0)
        {
          result = CA::OGL::MetalContext::generate_mipmaps_for_texture(v13, *(v15 + 8 * v14));
          *(a2 + 308) &= ~0x100u;
          *(*(v15 + 8 * v14) + 123) |= 1u;
          *(*(v15 + 8 * v14) + 123) |= 0x10u;
        }

        LOBYTE(v18) = 2;
      }

      else
      {
        LOBYTE(v18) = 1;
      }
    }

    *(*(v15 + 8 * v14) + 52) = *(*(v15 + 8 * v14) + 52) & 0xFFFFFFFFFFF0FFFFLL | ((v18 & 0xF) << 16);
    *(*(v15 + 8 * v14) + 52) = *(*(v15 + 8 * v14) + 52) & 0xFFFFFFFFFF0FFFFFLL | ((a6 & 0xF) << 20);
    *(*(v15 + 8 * v14) + 123) |= 8u;
    v19 = *(v15 + 8 * v14);
    *(v19 + 48) = a7;
    if (*(a2 + 272) || *(*(v13 + 84) + 272) == a2)
    {
      *(v19 + 123) &= ~8u;
      v20 = *(a2 + 284);
      v19 = *(v15 + 8 * v14);
    }

    else
    {
      v20 = -1;
    }

    *(v19 + 125) = v20;
  }

  return result;
}

void *CA::OGL::MetalContext::update_texture_plane(void *result, unint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v7 = a4;
  v8 = result[2];
  *(v8 + 2 * (a4 + a3) + 144) = *(a2 + 52);
  *(v8 + 8 * (a4 + a3) + 176) = a4 | a2;
  v9 = *(a2 + 122);
  if (v9 <= a4)
  {
    *(a2 + 122) = v9 + 1;
    v12 = a6;
    result = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a5 width:a6 height:a7 mipmapped:*(a2 + 123) & 1];
    v13 = a2 + 88;
    *(a2 + 88 + 8 * v7) = result;
    if ((*(a2 + 123) & 0x400) != 0)
    {
      [result setTextureType:7];
      v14 = *(v13 + 8 * v7);
      if (a7 == 1)
      {
        v15 = 1;
        [v14 setHeight:1];
      }

      else
      {
        [v14 setHeight:v12];
        v15 = *(a2 + 120);
      }

      v16 = *(v13 + 8 * v7);

      return [v16 setDepth:v15];
    }
  }

  return result;
}

void *CA::OGL::Context::array_rect(void *this, float a2, float a3, float a4, float a5)
{
  v6 = this[17];
  v5 = this[18];
  this[18] = v5 + 4;
  v7 = v6 + 48 * v5;
  *v7 = a2;
  *(v7 + 4) = a3;
  *(v7 + 8) = 0x3F80000000000000;
  *(v7 + 48) = a4;
  *(v7 + 52) = a3;
  *(v7 + 56) = 0x3F80000000000000;
  *(v7 + 96) = a4;
  *(v7 + 100) = a5;
  *(v7 + 104) = 0x3F80000000000000;
  *(v7 + 144) = a2;
  *(v7 + 148) = a5;
  *(v7 + 152) = 0x3F80000000000000;
  if (this[14])
  {
    return CA::OGL::Context::array_indices(this, v5);
  }

  return this;
}

double CA::OGL::MetalContext::new_image(CA::OGL::MetalContext *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v1 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x80uLL, 0xDEEC3011uLL);
  if (v1)
  {
    *(v1 + 14) = 0;
    result = 0.0;
    *(v1 + 5) = 0u;
    *(v1 + 6) = 0u;
    *(v1 + 4) = 0u;
    *(v1 + 60) = 1;
    v1[122] = 0;
    *(v1 + 123) |= 8u;
    v1[125] = -1;
    *(v1 + 52) |= 0x500000000000000uLL;
  }

  return result;
}

void CA::OGL::MetalContext::finalize_surface(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 296) && (byte_1ED4E9879 & 1) != 0)
  {
    if (x_log_get_metal_trace(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_trace(void)::once, &__block_literal_global_13_8335);
    }

    v4 = x_log_get_metal_trace(void)::log;
    if (os_signpost_enabled(x_log_get_metal_trace(void)::log))
    {
      v6 = *(a2 + 40);
      v7 = *(a2 + 44);
      v8 = *(a2 + 92);
      v9 = CA::OGL::MetalContext::metal_pixel_format_name(*(a2 + 192), v5);
      v10 = *(a2 + 296);
      v11 = *(a2 + 44) * *(a2 + 40) * (*(a2 + 146) & 0x1F);
      v12[0] = 67241474;
      v12[1] = v6;
      v13 = 1026;
      v14 = v7;
      v15 = 1026;
      v16 = v8;
      v17 = 2082;
      v18 = v9;
      v19 = 2050;
      v20 = v11;
      v21 = 2050;
      v22 = v10;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SurfaceLifetime", " width=%{public,name=width}d height=%{public,name=height}d features=%{public,name=features}#x format=%{public,name=format}s alloc_size=%{public,name=alloc_size}zu begin=%{public,signpost.description:begin_time}llu", v12, 0x32u);
    }
  }

  if (*(a1 + 3880) == a2)
  {
    *(a1 + 3880) = 0;
  }

  if ((*(a2 + 308) & 0x800) != 0)
  {
    if (*(a2 + 16))
    {
      __assert_rtn("push_front", "x-list-template.h", 197, "Next::get_next (obj) == nullptr");
    }

    *(a2 + 16) = *(a1 + 3928);
    *(a1 + 3928) = a2;
  }

  else
  {
    CA::OGL::MetalContext::finalize_surface_textures(a1, a2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, a2);
  }
}

void CA::OGL::MetalContext::finalize_surface_textures(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 272);
  if (v4)
  {
    *(v4 + 288) |= 1 << *(a2 + 284);
  }

  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  LOWORD(v5) = *(a2 + 308);
  if ((v5 << 12) >= 1)
  {
    v6 = a2 + 168;
    v7 = 21;
    do
    {
      if ([*v6 heap])
      {
        [*v6 makeAliasable];
      }

      *v6 = 0;
      v8 = *(v6 + 64);
      if (v8)
      {
        CA::OGL::MetalContext::delete_image(a1, v8);
        v9 = *(v6 + 64);
        if (v9)
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v9);
        }

        *(v6 + 64) = 0;
      }

      v5 = *(a2 + 308);
      v10 = v7 - 20;
      ++v7;
      v6 += 8;
    }

    while (v10 < v5 << 60 >> 60);
  }

  *(a2 + 308) = v5 & 0xFFF0;
}

void CA::OGL::MetalContext::delete_image(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v4 + 176;
    do
    {
      if ((*(v6 + v5) & 0xFFFFFFFFFFFFFFFCLL) == a2)
      {
        __assert_rtn("delete_image", "ogl-metal.mm", 13393, "state_image_binding (_state, tex_unit) != tex");
      }

      v5 += 8;
    }

    while (v5 != 104);
  }

  __dst = 0uLL;
  v21 = 0;
  memcpy(&__dst, (a2 + 64), 8 * *(a2 + 122));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CA3OGL12MetalContext12delete_imageEPNS0_5ImageE_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0ls32l24;
  v18 = __dst;
  v19 = v21;
  if (*(a2 + 125) < 0)
  {
    v8 = *(a1 + 3528);
    if (v8)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___ZN2CA3OGL12MetalContext12delete_imageEPNS0_5ImageE_block_invoke_2;
      v16[3] = &unk_1E6DF5340;
      v16[4] = block;
      v16[5] = a1;
      [v8 addScheduledHandler:v16];
    }

    else
    {
      dispatch_async(*(a1 + 4720), block);
    }
  }

  else
  {
    for (i = 0; i != 24; i += 8)
    {
    }
  }

  if (*(a2 + 122))
  {
    v9 = (a2 + 88);
    v10 = 8;
    do
    {
      *(v9 - 3) = 0;

      *v9++ = 0;
      v11 = v10 - 7;
      ++v10;
    }

    while (v11 < *(a2 + 122));
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    CA::WindowServer::Surface::unref(v12);
    *(a2 + 32) = 0;
  }

  v13 = *(a2 + 40);
  if (v13)
  {
    CA::WindowServer::Surface::unref(v13);
    *(a2 + 40) = 0;
  }

  v14 = *(a2 + 123);
  *(a2 + 122) = 0;
  v15 = *(a2 + 52);
  *(a2 + 16) = 0;
  *(a2 + 52) = v15 & 0xFFFFFFFFFF000000;
  *(a2 + 48) = 0;
  *(a2 + 123) = v14 & 0xFFD8;
}

uint64_t CA::Render::Texture::bit_depth(CA::Render::Texture *this)
{
  v1 = (*(*this + 104))(this);
  if (v1 - 33 < 3)
  {
    return 9;
  }

  if (v1 > 0x23)
  {
    return 0;
  }

  return dword_183E22728[v1];
}

float64_t CA::Render::Layer::append_contents_transform(uint64_t a1, CA::Transform *a2, float64x2_t *a3, _OWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 136);
  if (v8)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = *(v9 + 16);
      v11 = (v9 + 24);
      v12 = (v9 + 40);
      v13 = (v9 + 56);
      v14 = v10 >= 6;
      if (v10 < 6)
      {
        v13 = (MEMORY[0x1E695EFD0] + 32);
      }

      v15 = (MEMORY[0x1E695EFD0] + 16);
      if (v14)
      {
        v15 = v12;
      }

      if (!v14)
      {
        v11 = MEMORY[0x1E695EFD0];
      }

      CA::Transform::set_affine(v24, *v11, v11[1], *v15, v15[1], *v13, v13[1]);
      CA::Transform::concat_left(a2, v24, v16, v17);
    }
  }

  v24[0] = 0uLL;
  v23 = 0uLL;
  v18 = CA::Render::compute_gravity_transform(*(a1 + 40) >> 12, (a1 + 72), a3, v24, &v23);
  v19.f64[0] = v24[0].f64[0];
  v20 = CA::Transform::translate(a2, v19, v24[0].f64[1], 0.0);
  if ((v18 & 1) == 0)
  {
    *&v20.f64[0] = v23;
    if (*&v23 == *(&v23 + 1))
    {
      goto LABEL_13;
    }

    if (*&v23 >= 0.0 != *(&v23 + 1) < 0.0)
    {
      v21 = v23 - *(&v23 + 1);
      if ((v23 - *(&v23 + 1)) < 0)
      {
        v21 = *(&v23 + 1) - v23;
      }

      if (v21 <= 3)
      {
LABEL_13:
        *&v23 = *(&v23 + 1);
        v20.f64[0] = *(&v23 + 1);
      }
    }

    v20.f64[0] = CA::Transform::scale(a2, v20, *(&v23 + 1), 1.0);
  }

  if (a4)
  {
    *&v20.f64[0] = v23;
    *a4 = v23;
  }

  return v20.f64[0];
}

float64_t CA::Transform::scale(float64x2_t *this, float64x2_t a2, double a3, double a4)
{
  if (a2.f64[0] == a3 && a4 == 1.0)
  {
LABEL_12:
    *&v12.f64[0] = *&CA::Transform::scale_2d(this, a2);
    return v12.f64[0];
  }

  v5 = LOBYTE(this[9].f64[0]);
  if ((v5 & 0x10) == 0)
  {
    if (-a3 != a2.f64[0] || a4 != 1.0)
    {
      __asm { FMOV            V3.2D, #1.0 }

      this[8] = _Q3;
      LOBYTE(this[9].f64[0]) = v5 & 0xE0 | 0x10;
      goto LABEL_11;
    }

    if (a2.f64[0] >= 0.0)
    {
      if (a3 >= 0.0)
      {
        goto LABEL_18;
      }

      LOBYTE(this[9].f64[0]) = v5 ^ 1;
      v18 = this + 2;
      v17 = 5;
    }

    else
    {
      LOBYTE(this[9].f64[0]) = v5 ^ 2;
      v17 = 1;
      v18 = this;
    }

    v18->f64[0] = -v18->f64[0];
    this->f64[v17] = -this->f64[v17];
LABEL_18:
    if (a2.f64[0] < 0.0)
    {
      a2.f64[0] = -a2.f64[0];
    }

    goto LABEL_12;
  }

LABEL_11:
  v11 = vmulq_n_f64(*this, a2.f64[0]);
  v12 = vmulq_n_f64(this[1], a2.f64[0]);
  v13 = vmulq_n_f64(this[2], a3);
  v14 = vmulq_n_f64(this[3], a3);
  v15 = vmulq_n_f64(this[4], a4);
  v16 = vmulq_n_f64(this[5], a4);
  *this = v11;
  this[1] = v12;
  this[2] = v13;
  this[3] = v14;
  this[4] = v15;
  this[5] = v16;
  return v12.f64[0];
}

uint64_t CA::Render::Surface::bit_depth(CA::Render::Surface *this)
{
  v1 = *(this + 31);
  if (v1 == -1)
  {
    result = *(this + 36);
    if (result)
    {
      return CA::Render::ycbcr_fourcc_depth(result);
    }
  }

  else if ((v1 - 33) >= 3)
  {
    if (v1 > 0x23)
    {
      return 0;
    }

    else
    {
      return dword_183E22728[v1];
    }
  }

  else
  {
    return 9;
  }

  return result;
}

uint64_t CA::OGL::fill_rect(uint64_t result, uint64_t a2, double *a3)
{
  v4 = result;
  v177 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v6 = (v5 & 9) == 0 || (*(a2 + 20) & 0xF) == 0;
  if (v6 && (v5 & 0x100000) == 0)
  {
    goto LABEL_16;
  }

  v8 = *a2;
  v9 = *(*a2 + 16);
  if (v9 >= *(*a2 + 24))
  {
    v9 = *(*a2 + 24);
  }

  if (v9 > 0.0)
  {
    v10 = *(a2 + 8);
    if ((*(v10 + 144) & 0x10) != 0 && !CA::Mat4Impl::mat4_is_rectilinear(*(a2 + 8), a2) || *(a2 + 24) || *(a2 + 32))
    {
      if (!v6)
      {
        v168 = 0u;
        *v169 = 0u;
        memset(v166, 0, 32);
        v164[0] = 0;
        v165 = 0;
        v11 = *(v4 + 16);
        v12 = *(v11 + 16) & 0xFFFFFF00FF00FF00;
        if (*(v11 + 8) == 0x3C003C003C003C00)
        {
          v13 = 1;
        }

        else
        {
          v13 = 3;
        }

        *(v11 + 16) = v13 | v12;
        *(v11 + 20) = HIDWORD(v12);
        is_isotropic = CA::Transform::is_isotropic(*(a2 + 8), 0.0);
        (*(*v4 + 496))(v4, 0, !is_isotropic, 0, &v165);
        v15 = *&v165;
        v16 = *(a2 + 20);
        if (v16)
        {
          v17 = *&v165;
        }

        else
        {
          v17 = *&v165 + ((*(&v165 + 1) - *&v165) * 0.5);
        }

        *v175.f64 = v17;
        *(v175.f64 + 1) = *&v165 + ((*(&v165 + 1) - *&v165) * 0.5);
        if ((v16 & 2) != 0)
        {
          v18 = *(&v165 + 1);
        }

        else
        {
          v18 = *&v165 + ((*(&v165 + 1) - *&v165) * 0.5);
        }

        *&v175.f64[1] = *&v165 + ((*(&v165 + 1) - *&v165) * 0.5);
        *(&v175.f64[1] + 1) = v18;
        if ((v16 & 4) == 0)
        {
          v15 = *&v165 + ((*(&v165 + 1) - *&v165) * 0.5);
        }

        *v174.i32 = v15;
        *&v174.i32[1] = *&v165 + ((*(&v165 + 1) - *&v165) * 0.5);
        if ((v16 & 8) != 0)
        {
          v19 = *(&v165 + 1);
        }

        else
        {
          v19 = *&v165 + ((*(&v165 + 1) - *&v165) * 0.5);
        }

        *&v174.i32[2] = *&v165 + ((*(&v165 + 1) - *&v165) * 0.5);
        *&v174.i32[3] = v19;
        CA::OGL::emit_nine_part_rect(v4, a2, &v168, v166, &v175, &v174, 0, 0, (*v164 >= *(v4 + 72)) << 17);
        result = (*(*v4 + 560))(v4, 0, 0);
        goto LABEL_17;
      }

LABEL_16:
      *(*(v4 + 16) + 16) = 0;
      result = CA::OGL::emit_one_part_rect(v4, a2, 0, 0, 0);
      goto LABEL_17;
    }

    v20 = v8[1];
    v175 = *v8;
    v176 = v20;
    CA::Rect::apply_transform(&v175, v10, a3);
    v21 = *(v4 + 16);
    v22 = v21[1];
    v23 = vceqzq_f64(v176);
    v156 = v175;
    v151 = v176;
    if ((vorrq_s8(vdupq_laneq_s64(v23, 1), v23).u64[0] & 0x8000000000000000) != 0 || (v24 = vceqq_f64(v176, v176), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v24), 1), v24).u64[0] & 0x8000000000000000) != 0))
    {
      v174 = 0uLL;
      v154 = vaddq_f64(v176, v175);
    }

    else
    {
      v154 = vaddq_f64(v175, v176);
      v25 = vcvtmq_s64_f64(vmaxnmq_f64(v175, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v174 = vuzp1q_s32(v25, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(v154, vdupq_n_s64(0x41C0000000000000uLL))), v25));
    }

    result = CA::OGL::Context::need_transparent_source(v4);
    v26 = result | ((v5 & 0x40000u) >> 18);
    v21[2].i8[0] = 0;
    v27 = *(a2 + 20);
    if ((v27 & 0xF) != 0)
    {
      v28 = vdup_n_s32(v27);
      v29 = vceqz_s32(vand_s8(v28, 0x400000001));
      v30.i64[0] = v29.i32[0];
      v30.i64[1] = v29.i32[1];
      v31 = vrndaq_f64(v156);
      v32 = vbslq_s8(v30, v31, vrndmq_f64(v156));
      v33 = vbslq_s8(v30, v31, vrndpq_f64(v156));
      v34 = vceqz_s32(vand_s8(v28, 0x800000002));
      v30.i64[0] = v34.i32[0];
      v30.i64[1] = v34.i32[1];
      v35 = vrndaq_f64(v154);
      v36 = vbslq_s8(v30, v35, vrndmq_f64(v154));
      v37 = vbslq_s8(v30, v35, vrndpq_f64(v154));
      v38 = vceq_s32(vand_s8(v28, 0xC00000003), 0xC00000003);
      v30.i64[0] = v38.i32[0];
      v30.i64[1] = v38.i32[1];
      __asm { FMOV            V3.2D, #1.0 }

      v43 = vceqq_f64(v37, vaddq_f64(v32, _Q3));
      v44 = vand_s8(v38, vmovn_s64(v43));
      v45 = vandq_s8(v30, v43);
      v141 = v37;
      v142 = v32;
      v46 = *(v4 + 16);
      v149 = vbslq_s8(v45, v32, v33);
      v150 = vbslq_s8(v45, v37, v36);
      v47 = 1;
      if ((*(v46 + 497) & 1) != 0 && (*(a2 + 17) & 0x80) != 0 && (v44.i8[0] & 1) == 0 && (v44.i8[4] & 1) == 0)
      {
        *(v46 + 497) &= ~1u;
        v48 = vmovn_s64(vcgtq_f64(v150, v149));
        if (v48.i32[1] & v48.i32[0])
        {
          v49 = *(*(v4 + 656) + 8);
          *&v168.f64[0] = v4;
          v168.f64[1] = v49;
          memset(v169, 0, 40);
          *&v169[16] = 257;
          CA::OGL::Context::ClippedArray::start(&v168);
          *v166 = 0uLL;
          v50 = v149.f64[0];
          v163 = v50;
          v51 = v150.f64[0];
          v160 = v51;
          v52 = v149.f64[1];
          v53 = v150.f64[1];
          while (CA::OGL::Context::ClippedArray::next_rect(&v168, v166))
          {
            v54 = *(v4 + 1384);
            v55 = v150.f64[1];
            v56 = v149.f64[1];
            v57 = v160;
            v58 = v163;
            if ((v54 & 0x40) != 0)
            {
              v59 = (*&v166[8] + *v166);
              v60 = *&v166[4];
              v61 = (*&v166[12] + *&v166[4]);
              v58 = v163 <= *v166 ? *v166 : v163;
              v57 = v160 >= v59 ? (*&v166[8] + *v166) : v160;
              v56 = v52 <= v60 ? *&v166[4] : v149.f64[1];
              v55 = v53 >= v61 ? (*&v166[12] + *&v166[4]) : v150.f64[1];
              v62 = v160 > *v166 && v163 < v59;
              v63 = v62 && v53 > v60;
              if (!v63 || v52 >= v61)
              {
                continue;
              }
            }

            if (*(v4 + 108))
            {
              v65 = 6;
            }

            else
            {
              v65 = 4;
            }

            if ((*(v4 + 144) + 4) > *(v4 + 152) || (v66 = *(v4 + 128)) != 0 && *(v4 + 120) + v65 > v66)
            {
              *(v4 + 1384) = v54 | 0x20;
              CA::OGL::Context::array_flush(v4);
              *(v4 + 144) = 0;
              *(v4 + 112) = v4 + 1386;
              *(v4 + 120) = xmmword_183E20E50;
            }

            CA::OGL::Context::array_rect(v4, v58, v56, v57, v55);
            v67 = *(v4 + 136) + 48 * *(v4 + 144);
            *(v67 - 160) = v22;
            *(v67 - 112) = v22;
            *(v67 - 64) = v22;
            *(v67 - 16) = v22;
          }
        }

        v47 = 0;
        *(*(v4 + 16) + 497) |= 1u;
        v44 = 0;
      }

      v147 = v44;
      v140 = v26;
      v167 = 0u;
      v84 = *(*(v4 + 656) + 8);
      *v166 = v4;
      *&v166[8] = v84;
      memset(&v166[16], 0, 24);
      *&v166[32] = 256;
      *&v167 = &v174;
      CA::OGL::Context::ClippedArray::start(v166);
      v164[0] = 0;
      v164[1] = 0;
      v85 = v4 + 1386;
      v86 = v142.f64[0];
      v162 = v86;
      v87 = vmovn_s64(vcgtq_f64(v149, v142)).u8[0];
      v88 = v142.f64[1];
      v159 = v88;
      v89 = v149.f64[0];
      v90 = vcvt_f32_f64(vsubq_f64(v149, v156));
      v153 = vmuls_lane_f32(v90.f32[0], v90, 1);
      v91 = vmovn_s64(vcgtq_f64(v150, v149)).u32[0];
      v92 = v150.f64[0];
      v93 = vmovn_s64(vcgtq_f64(v141, v150)).u8[0];
      v94 = v141.f64[0];
      v157 = v94;
      v95 = vsubq_f64(v154, v150);
      __asm { FMOV            V4.2S, #1.0 }

      v97 = vbsl_s8(vcltz_s32(vshl_n_s32(v147, 0x1FuLL)), vcvt_f32_f64(v151), _D4);
      v152 = vmuls_lane_f32(v97.f32[0], v90, 1);
      LODWORD(v150.f64[0]) = vmuls_lane_f32(v90.f32[0], v97, 1);
      v98 = v47 & v91;
      LODWORD(v149.f64[0]) = vmuls_lane_f32(v97.f32[0], v97, 1);
      v99 = v141.f64[1];
      v155 = v99;
      *&v95.f64[0] = vcvt_f32_f64(v95);
      v148 = vmuls_lane_f32(*v95.f64, v90, 1);
      v145 = vmuls_lane_f32(v90.f32[0], *&v95.f64[0], 1);
      v146 = vmuls_lane_f32(*v95.f64, v97, 1);
      v144 = vmuls_lane_f32(v97.f32[0], *&v95.f64[0], 1);
      v143 = vmuls_lane_f32(*v95.f64, *&v95.f64[0], 1);
      while (1)
      {
        result = CA::OGL::Context::ClippedArray::next_rect(v166, v164);
        if (!result)
        {
          if (v140)
          {
            v136.f64[0] = v142.f64[0];
            v168 = v142;
            *v169 = xmmword_183E20E60;
            *&v137 = v141.f64[0];
            *(&v137 + 1) = *&v142.f64[1];
            *&v169[16] = v137;
            *&v169[32] = xmmword_183E20E60;
            v170 = v141;
            v136.f64[1] = v141.f64[1];
            v171 = xmmword_183E20E60;
            v172 = v136;
            v173 = xmmword_183E20E60;
            if ((*(a2 + 18) & 4) != 0)
            {
              v138 = *(*(v4 + 16) + 8);
            }

            else
            {
              v138 = 0;
            }

            v165 = v138;
            v139 = &v165;
            goto LABEL_155;
          }

          goto LABEL_17;
        }

        if (v149.f64[1] > v142.f64[1])
        {
          if (*(v4 + 108))
          {
            v100 = 18;
          }

          else
          {
            v100 = 12;
          }

          if ((*(v4 + 144) + 12) > *(v4 + 152) || (v101 = *(v4 + 128)) != 0 && *(v4 + 120) + v100 > v101)
          {
            *(v4 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v4);
            *(v4 + 144) = 0;
            *(v4 + 112) = v85;
            *(v4 + 120) = xmmword_183E20E50;
          }

          if (v87)
          {
            v113 = v149.f64[1];
            CA::OGL::Context::array_rect(v4, v162, v159, v89, v113);
            v114 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), v153));
            v115 = *(v4 + 136) + 48 * *(v4 + 144);
            *(v115 - 160) = v114;
            *(v115 - 112) = v114;
            *(v115 - 64) = v114;
            *(v115 - 16) = v114;
            if ((v91 & 1) == 0)
            {
LABEL_113:
              if ((v93 & 1) == 0)
              {
                goto LABEL_115;
              }

LABEL_114:
              v102 = v149.f64[1];
              CA::OGL::Context::array_rect(v4, v92, v159, v157, v102);
              v103 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), v148));
              v104 = *(v4 + 136) + 48 * *(v4 + 144);
              *(v104 - 160) = v103;
              *(v104 - 112) = v103;
              *(v104 - 64) = v103;
              *(v104 - 16) = v103;
              goto LABEL_115;
            }
          }

          else if ((v91 & 1) == 0)
          {
            goto LABEL_113;
          }

          v116 = v149.f64[1];
          CA::OGL::Context::array_rect(v4, v89, v159, v92, v116);
          v117 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), v152));
          v118 = *(v4 + 136) + 48 * *(v4 + 144);
          *(v118 - 160) = v117;
          *(v118 - 112) = v117;
          *(v118 - 64) = v117;
          *(v118 - 16) = v117;
          if (v93)
          {
            goto LABEL_114;
          }
        }

LABEL_115:
        if (v150.f64[1] > v149.f64[1])
        {
          if (*(v4 + 108))
          {
            v105 = 18;
          }

          else
          {
            v105 = 12;
          }

          if ((*(v4 + 144) + 12) > *(v4 + 152) || (v106 = *(v4 + 128)) != 0 && *(v4 + 120) + v105 > v106)
          {
            *(v4 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v4);
            *(v4 + 144) = 0;
            *(v4 + 112) = v85;
            *(v4 + 120) = xmmword_183E20E50;
          }

          if (v87)
          {
            v119 = v149.f64[1];
            v120 = v150.f64[1];
            CA::OGL::Context::array_rect(v4, v162, v119, v89, v120);
            v121 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), *v150.f64));
            v122 = *(v4 + 136) + 48 * *(v4 + 144);
            *(v122 - 160) = v121;
            *(v122 - 112) = v121;
            *(v122 - 64) = v121;
            *(v122 - 16) = v121;
            if (v98)
            {
LABEL_143:
              v123 = v149.f64[1];
              v124 = v150.f64[1];
              CA::OGL::Context::array_rect(v4, v89, v123, v92, v124);
              v125 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), *v149.f64));
              v126 = *(v4 + 136) + 48 * *(v4 + 144);
              *(v126 - 160) = v125;
              *(v126 - 112) = v125;
              *(v126 - 64) = v125;
              *(v126 - 16) = v125;
              if ((v93 & 1) == 0)
              {
                goto LABEL_127;
              }

LABEL_126:
              v107 = v149.f64[1];
              v108 = v150.f64[1];
              CA::OGL::Context::array_rect(v4, v92, v107, v157, v108);
              v109 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), v146));
              v110 = *(v4 + 136) + 48 * *(v4 + 144);
              *(v110 - 160) = v109;
              *(v110 - 112) = v109;
              *(v110 - 64) = v109;
              *(v110 - 16) = v109;
              goto LABEL_127;
            }
          }

          else if (v98)
          {
            goto LABEL_143;
          }

          if (v93)
          {
            goto LABEL_126;
          }
        }

LABEL_127:
        if (v141.f64[1] > v150.f64[1])
        {
          if (*(v4 + 108))
          {
            v111 = 18;
          }

          else
          {
            v111 = 12;
          }

          if ((*(v4 + 144) + 12) > *(v4 + 152) || (v112 = *(v4 + 128)) != 0 && *(v4 + 120) + v111 > v112)
          {
            *(v4 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v4);
            *(v4 + 144) = 0;
            *(v4 + 112) = v85;
            *(v4 + 120) = xmmword_183E20E50;
          }

          if (v87)
          {
            v127 = v150.f64[1];
            CA::OGL::Context::array_rect(v4, v162, v127, v89, v155);
            v128 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), v145));
            v129 = *(v4 + 136) + 48 * *(v4 + 144);
            *(v129 - 160) = v128;
            *(v129 - 112) = v128;
            *(v129 - 64) = v128;
            *(v129 - 16) = v128;
            if ((v91 & 1) == 0)
            {
              goto LABEL_137;
            }

LABEL_146:
            v130 = v150.f64[1];
            CA::OGL::Context::array_rect(v4, v89, v130, v92, v155);
            v131 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), v144));
            v132 = *(v4 + 136) + 48 * *(v4 + 144);
            *(v132 - 160) = v131;
            *(v132 - 112) = v131;
            *(v132 - 64) = v131;
            *(v132 - 16) = v131;
            if (v93)
            {
              goto LABEL_147;
            }
          }

          else
          {
            if (v91)
            {
              goto LABEL_146;
            }

LABEL_137:
            if (v93)
            {
LABEL_147:
              v133 = v150.f64[1];
              CA::OGL::Context::array_rect(v4, v92, v133, v157, v155);
              v134 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v22), v143));
              v135 = *(v4 + 136) + 48 * *(v4 + 144);
              *(v135 - 160) = v134;
              *(v135 - 112) = v134;
              *(v135 - 64) = v134;
              *(v135 - 16) = v134;
            }
          }
        }
      }
    }

    if ((*(a2 + 16) & 0x100000) != 0)
    {
      v68 = vrndmq_f64(vaddq_f64(v156, vdupq_n_s64(0x3F50624DD2F1A9FCuLL)));
      v69 = vrndpq_f64(vaddq_f64(v154, vdupq_n_s64(0xBF50624DD2F1A9FCLL)));
    }

    else
    {
      v68 = vrndaq_f64(v156);
      v69 = vrndaq_f64(v154);
    }

    v70 = vmovn_s64(vcgtq_f64(v69, v68));
    if (v70.i32[1] & v70.i32[0])
    {
      v158 = v69;
      v161 = v68;
      v71 = *(v4 + 16);
      v72 = *(v71 + 497);
      v73 = *&v72 & ((*(a2 + 16) & 0x8000u) >> 15);
      if (v73 == 1)
      {
        *(v71 + 497) = v72 & 0xFE;
      }

      *&v169[24] = 0u;
      v74 = *(*(v4 + 656) + 8);
      *&v168.f64[0] = v4;
      v168.f64[1] = v74;
      memset(v169, 0, 24);
      *&v169[16] = 256;
      *&v169[24] = &v174;
      CA::OGL::Context::ClippedArray::start(&v168);
      *v166 = 0uLL;
      while (1)
      {
        result = CA::OGL::Context::ClippedArray::next_rect(&v168, v166);
        if (!result)
        {
          break;
        }

        if (*(v4 + 108))
        {
          v79 = 6;
        }

        else
        {
          v79 = 4;
        }

        if ((*(v4 + 144) + 4) > *(v4 + 152) || (v80 = *(v4 + 128)) != 0 && *(v4 + 120) + v79 > v80)
        {
          *(v4 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(v4);
          *(v4 + 144) = 0;
          *(v4 + 112) = v4 + 1386;
          *(v4 + 120) = xmmword_183E20E50;
        }

        v75 = v161.f64[0];
        v76 = v161.f64[1];
        v77 = v158.f64[0];
        v78 = v158.f64[1];
        CA::OGL::Context::array_rect(v4, v75, v76, v77, v78);
        v81 = *(v4 + 136) + 48 * *(v4 + 144);
        *(v81 - 160) = v22;
        *(v81 - 112) = v22;
        *(v81 - 64) = v22;
        *(v81 - 16) = v22;
      }

      if (v73)
      {
        *(*(v4 + 16) + 497) |= 1u;
      }

      v69 = v158;
      v68 = v161;
    }

    if (v26)
    {
      v168 = v68;
      *v169 = xmmword_183E20E60;
      *&v82 = v69.f64[0];
      *(&v82 + 1) = *&v68.f64[1];
      *&v169[16] = v82;
      *&v169[32] = xmmword_183E20E60;
      v170 = v69;
      v68.f64[1] = v69.f64[1];
      v171 = xmmword_183E20E60;
      v172 = v68;
      v173 = xmmword_183E20E60;
      if ((*(a2 + 18) & 4) != 0)
      {
        v83 = *(*(v4 + 16) + 8);
      }

      else
      {
        v83 = 0;
      }

      *v166 = v83;
      v139 = v166;
LABEL_155:
      result = CA::OGL::emit_quad_surround(v4, v168.f64, v139);
    }

LABEL_17:
    *(*(v4 + 16) + 16) = 0;
  }

  return result;
}

void CA::OGL::render_contents_background(CA::OGL::Context **a1, uint64_t a2, uint64_t a3, const int *a4, double a5, double a6, int8x16_t a7)
{
  v330 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*a1 + 82);
  v277 = 0;
  v10 = 0.0;
  v276 = 0u;
  memset(v275, 0, sizeof(v275));
  v11 = *(v9 + 8);
  v12 = *(a2 + 32) & 0x200005020;
  v13 = v12 == 0;
  v14 = *(a2 + 16);
  v15 = *(v14 + 216);
  v16 = v11;
  v17 = v9;
  if (v15)
  {
    v18 = *(v9 + 80);
    v16 = *(v9 + 8);
    v17 = v9;
    if ((v18 & 0x100) != 0)
    {
      v16 = *(v9 + 8);
      v17 = v9;
      if (!*(v14 + 112))
      {
        v16 = *(v9 + 8);
        v17 = v9;
        if ((BYTE11(ca_debug_options) & 1) == 0)
        {
          v16 = *(v9 + 8);
          v17 = v9;
          if ((*(v14 + 25) & 0x1C0) == 0)
          {
            v19 = a1;
            *(v275 + 8) = *(v9 + 8);
            v20 = *(v9 + 32);
            *(&v275[1] + 1) = *(v9 + 24);
            *&v275[2] = v20;
            *(&v275[2] + 8) = *(v9 + 40);
            *(&v275[3] + 1) = *(v9 + 56);
            LODWORD(v276) = *(v9 + 64);
            LOWORD(v277) = v18 & 0x5FF;
            *(&v276 + 1) = *(v9 + 72);
            v21 = CA::Shape::subtract(*(&v275[0] + 1), v15, a3, a4);
            *(&v275[0] + 1) = v21;
            if ((*(v8 + 872) & 0x10) != 0)
            {
              v22 = *(v9 + 8);
              if (v22)
              {
                if (v22 != 1)
                {
                  goto LABEL_10;
                }

                goto LABEL_9;
              }

              if (*(v22 + 4) != 12)
              {
LABEL_9:
                v302[0] = 0uLL;
                CA::Shape::get_bounds(v21, v302);
                CA::Shape::unref(*(&v275[0] + 1));
                *(&v275[0] + 1) = CA::Shape::new_shape(v302, v23);
              }
            }

LABEL_10:
            v17 = v275;
            *&v275[0] = CA::OGL::Context::set_gstate(v8, v275);
            v16 = *(&v275[0] + 1);
            a1 = v19;
          }
        }
      }
    }
  }

  v267 = v11;
  v268 = v17;
  if (v16)
  {
    if (v16 == 1)
    {
      goto LABEL_26;
    }
  }

  else if (*(v16 + 4) == 6)
  {
    goto LABEL_26;
  }

  if ((*(a2 + 33) & 1) == 0)
  {
    goto LABEL_24;
  }

  v24 = *(a2 + 16);
  if ((*(v24 + 27) & 2) != 0)
  {
    __assert_rtn("render_contents_background", "ogl-layer.cpp", 3382, "!(l->node->flags & Render::kLayerNodeIgnoreContents)");
  }

  v25 = *(v24 + 48);
  if (!v25)
  {
    goto LABEL_24;
  }

  *v266 = a1;
  v26 = (*(*v25 + 80))(v25);
  if (!v26)
  {
    a1 = *v266;
    if (v25[1].i8[4] == 26)
    {
      CA::OGL::render_background(*v266, a2, v10, a6, a7);
      v31 = **v266;
      v32 = *(**v266 + 656);
      v34 = v25[3];
      v33 = v25[4];
      v264 = v33;
      if (v33)
      {
        v35 = (*(*v33 + 80))(v33);
      }

      else
      {
        v35 = 0;
      }

      v265.i64[0] = v34;
      if (!v34)
      {
        goto LABEL_26;
      }

      v57 = (*(*v265.i64[0] + 80))(v265.i64[0]);
      if (!v35)
      {
        goto LABEL_26;
      }

      v58 = v57;
      if (!v57)
      {
        goto LABEL_26;
      }

      v329 = 0;
      v327 = 0u;
      v328 = 0u;
      v325 = 0u;
      v326 = 0u;
      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v319 = 0u;
      v320 = 0u;
      v317 = 0u;
      v318 = 0u;
      v315 = 0u;
      v316 = 0u;
      v313 = 0u;
      v314 = 0u;
      v311 = 0u;
      v312 = 0u;
      v309 = 0u;
      v310 = 0u;
      v307 = 0u;
      v308 = 0u;
      v305 = 0u;
      v306 = 0u;
      v303 = 0u;
      v304 = 0u;
      memset(v302, 0, sizeof(v302));
      v263 = v32;
      CA::OGL::ContentsGeometry::ContentsGeometry(v302, a2, v32, v35, v264, v31);
      v59 = 0;
      if (v315 == 1)
      {
        DWORD1(v317) |= 0x100u;
        v59 = v35;
      }

      v301 = 0;
      v299 = 0u;
      v300 = 0u;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v293 = 0u;
      v294 = 0u;
      v291 = 0u;
      v292 = 0u;
      v289 = 0u;
      v290 = 0u;
      memset(v288, 0, sizeof(v288));
      v60 = v58;
      CA::OGL::ContentsGeometry::ContentsGeometry(v288, a2, v263, v58, v265.i64[0], v31);
      v61 = v288[34].u8[0];
      v262 = v31;
      if (v288[34].u8[0] == 1)
      {
        DWORD1(v289) |= 0x100u;
        v62 = v59 != 0;
      }

      else
      {
        if (!v59)
        {
          goto LABEL_26;
        }

        v60 = 0;
        v62 = 1;
      }

      v88 = *(&v302[2] + 8);
      v89 = *(&v302[3] + 8);
      *&v90.f64[1] = v288[8];
      v91 = vclezq_f64(*(&v302[3] + 8));
      v92 = vclezq_f64(*v288[7].i8);
      v93 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v92, v91), vzip2q_s64(v92, v91))));
      if (v93.i8[4])
      {
        if (v93.i8[0])
        {
          v94 = -1;
        }

        else
        {
          v94 = 0;
        }

        v95 = vdupq_n_s64(v94);
        v89 = vbslq_s8(v95, *(&v302[3] + 8), *v288[7].i8);
        v88 = vbslq_s8(v95, *(&v302[2] + 8), *v288[5].i8);
      }

      else if ((v93.i8[0] & 1) == 0)
      {
        v88 = vminnmq_f64(*(&v302[2] + 8), *v288[5].i8);
        v90 = vmaxnmq_f64(vaddq_f64(*(&v302[2] + 8), *(&v302[3] + 8)), vaddq_f64(*v288[5].i8, *v288[7].i8));
        v89 = vsubq_f64(v90, v88);
      }

      *&v90.f64[0] = v25[6];
      *v90.f64 = v90.f64[0];
      if (*v90.f64 > 1.0)
      {
        *v90.f64 = 1.0;
      }

      if (*v90.f64 < 0.0)
      {
        *v90.f64 = 0.0;
      }

      v261 = v90;
      v96 = vceqzq_f64(v89);
      v97 = vorrq_s8(vdupq_laneq_s64(v96, 1), v96).u64[0];
      v258 = v88;
      *v259 = v89;
      if ((v97 & 0x8000000000000000) != 0 || (v98 = vceqq_f64(v89, v89), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v98), 1), v98).u64[0] & 0x8000000000000000) != 0))
      {
        *v281 = 0;
        *&v281[8] = 0;
      }

      else
      {
        v99 = vcvtmq_s64_f64(vmaxnmq_f64(v88, vdupq_n_s64(0xC1BFFFFFFF000000)));
        *v281 = vuzp1q_s32(v99, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v88, v89), vdupq_n_s64(0x41C0000000000000uLL))), v99));
      }

      if (!CA::Shape::intersects(*(v263 + 8), v281))
      {
        v104 = v262;
        v106 = v60;
        v107 = v59;
LABEL_369:
        *&v241 = CA::OGL::ContentsGeometry::fill_debug(v302, v104, a2, v107, 0, v100, v101);
        CA::OGL::ContentsGeometry::fill_debug(v288, v104, a2, v106, 0, v241, v242);
        goto LABEL_26;
      }

      if (v62 && *(v59 + 12) == 57)
      {
        (*(*v59 + 304))(v59);
      }

      if (v61 && v60[1].i8[4] == 57)
      {
        (*(*v60 + 304))(v60);
      }

      v102 = *(a2 + 24);
      v103 = *(v102 + 40);
      v104 = v262;
      if ((v103 & 0xFu) > 0xAuLL)
      {
        v105 = 1;
      }

      else
      {
        v105 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v103 & 0xF];
      }

      v108 = v103 >> 4;
      if (v108 > 0xA)
      {
        v109 = 1;
      }

      else
      {
        v109 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v108];
      }

      v110 = v60;
      v111 = *(v102 + 136);
      v107 = v59;
      if (v111)
      {
        v112 = *(v111 + 312);
      }

      else
      {
        v112 = 0.0;
      }

      v119 = v263;
      v274 = v105;
      v273 = v105;
      if (v105 == 11)
      {
        v107 = CA::OGL::Context::tile_cache_load(v262, v302, v107, &v274);
        v110 = CA::OGL::Context::tile_cache_load(v262, v288, v110, &v273);
        v111 = *(*(a2 + 24) + 136);
      }

      if (v111)
      {
        v120 = *(v111 + 300);
        v121 = vcvt_f16_f32(*(v111 + 284));
      }

      else
      {
        v121 = 0x3C003C003C003C00;
        v120 = 0.0;
      }

      v122 = *(v263 + 32);
      v272 = 0;
      *v281 = v121;
      CA::OGL::colormatched_layer_color(&v272, *v266, a2, v281, v120);
      v123 = *(*(a2 + 24) + 136);
      if (v123)
      {
        v124 = *(v123 + 348);
        v256 = 1;
        if (v124)
        {
          BYTE4(v319) = 1;
          BYTE4(v291) = 1;
          v125 = 1;
          v126 = 1;
          v256 = 0;
        }

        else
        {
          v125 = 0;
          v126 = 0;
        }
      }

      else
      {
        v125 = 0;
        v126 = 0;
        v256 = 1;
      }

      if (*&v272 != 0x3C003C003C003C00)
      {
        v122 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v272), vcvtq_f32_f16(v122)));
      }

      v260 = v110;
      if (!v107 || !v110)
      {
        LODWORD(v263) = v125;
        v140 = v109;
        v141 = &v274;
        _ZF = v107 == 0;
        v143 = v107;
        if (v107)
        {
          v144 = v264;
        }

        else
        {
          v107 = v110;
          v144 = v265.i64[0];
        }

        if (_ZF)
        {
          v145 = (&v288[34] + 4);
        }

        else
        {
          v145 = (&v315 + 4);
        }

        if (_ZF)
        {
          v146 = v288;
        }

        else
        {
          v146 = v302;
        }

        if (_ZF)
        {
          v141 = &v273;
        }

        v257 = v143;
        if (v143)
        {
          v147 = ((*v261.f64 * 255.0) + 0.5);
        }

        else
        {
          v147 = 255 - ((*v261.f64 * 255.0) + 0.5);
        }

        v265.i32[0] = *v141;
        v148 = *(v262 + 2);
        if (*(v148 + 496) >= 2u)
        {
          *(v148 + 497) |= 1u;
        }

        CA::OGL::prepare_color_program_cache(*v266, a2, v107, v144);
        v104 = v262;
        v149 = CA::OGL::Context::bind_image(v262, 0, v107, v146[38].u32[1], v265.u32[0], v140, 0, v146, v112, v145, 0);
        if (v149)
        {
          v150 = v149;
          v151 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v122), v147));
          if ((*(v107 + 14) & 0x10) != 0)
          {
            v152 = *(v107 + 22);
            *&v278.f64[0] = vcvt_f16_f32(*(v107 + 72));
            CA::OGL::colormatched_layer_color(v281, *v266, a2, &v278, v152);
            v151 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*v281), vcvtq_f32_f16(v151)));
          }

          v104 = v262;
          v153 = v256;
          v154 = v263;
          *(*(v262 + 2) + 8) = v151;
          if ((v153 & 1) == 0)
          {
            if ((v154 & 1) == 0)
            {
              __assert_rtn("set_swizzle", "ogl-layer.cpp", 2356, "swizzle == Render::kLayerContentsSwizzleAAAA");
            }

            v155 = (*(*v104 + 232))(v104, 28);
            v156 = v104[2];
            if (v155)
            {
              v157 = CA::OGL::swizzle_to_image_function(CA::Render::LayerContentsSwizzle,CA::OGL::ImageFunction)::AAAA_functions[*(v156 + 17)];
              if (!v157)
              {
                v157 = 37;
              }
            }

            else
            {
              v157 = 25;
            }

            *(v156 + 17) = v157;
          }

          CA::OGL::ContentsGeometry::fill_and_unbind(v146, v104, v150, v265.i32[0], v112);
        }

        *(v104[2] + 497) &= ~1u;
        goto LABEL_243;
      }

      v254 = (&v315 + 4);
      v255 = (&v288[34] + 4);
      v253 = v126;
      if (((BYTE4(v289) | BYTE4(v317)) & 0x3F) != 0 && (*(a2 + 41) & 0xF) != 0)
      {
        goto LABEL_322;
      }

      if (*&v122 != 0x3C003C003C003C00)
      {
        goto LABEL_322;
      }

      if (BYTE1(v319))
      {
        goto LABEL_322;
      }

      if (BYTE1(v291))
      {
        goto LABEL_322;
      }

      if (*(v302 + 1) != *&v288[1])
      {
        goto LABEL_322;
      }

      if (*&v302[1] != *&v288[2])
      {
        goto LABEL_322;
      }

      if (*(&v302[1] + 1) != *&v288[3])
      {
        goto LABEL_322;
      }

      if (*&v302[2] != *&v288[4])
      {
        goto LABEL_322;
      }

      if (!CA::Transform::operator==(&v304 + 8, &v288[13]))
      {
        goto LABEL_322;
      }

      if (BYTE10(v328))
      {
        goto LABEL_322;
      }

      if (BYTE10(v300))
      {
        goto LABEL_322;
      }

      __asm { FMOV            V0.4S, #1.0 }

      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*(v107 + 72), _Q0)))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v260[9].i8, _Q0)))) & 1) != 0 || v264[1].i8[4] == 56 || *(v265.i64[0] + 12) == 56)
      {
LABEL_322:
        i = 0uLL;
        CA::Shape::get_bounds(*(v119 + 8), &i);
        v207 = 0uLL;
        if ((v97 & 0x8000000000000000) != 0)
        {
          v106 = v260;
        }

        else
        {
          v208 = vceqq_f64(*v259, *v259);
          v106 = v260;
          if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v208), 1), v208).u64[0] & 0x8000000000000000) == 0)
          {
            v209 = vcvtmq_s64_f64(vmaxnmq_f64(v258, vdupq_n_s64(0xC1BFFFFFFF000000)));
            v207 = vuzp1q_s32(v209, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v258, *v259), vdupq_n_s64(0x41C0000000000000uLL))), v209));
          }
        }

        v210 = vclez_s32(*&i.n128_i8[8]);
        if ((vpmax_u32(v210, v210).u32[0] & 0x80000000) == 0)
        {
          v211 = vextq_s8(v207, v207, 8uLL).u64[0];
          v212 = vclez_s32(v211);
          if ((vpmax_u32(v212, v212).u32[0] & 0x80000000) != 0 || (v213 = vadd_s32(v207.n128_u64[0], v211), v207.n128_u64[0] = vmax_s32(i.n128_u64[0], v207.n128_u64[0]), v214 = vsub_s32(vmin_s32(vadd_s32(i.n128_u64[0], *&i.n128_i8[8]), v213), v207.n128_u64[0]), v215 = vclez_s32(v214), (vpmax_u32(v215, v215).u32[0] & 0x80000000) != 0))
          {
            i.n128_u64[1] = 0;
          }

          else
          {
            *&v207.n128_i8[8] = v214;
            i = v207;
          }
        }

        if (*(*(a2 + 24) + 40) & 0x200000000000ELL) != 0 || (*(v107 + 14) & 4) == 0 && ((*(*v107 + 216))(v107, v207) || ((*(*v104 + 608))(v104, v107)) || (v106[1].i8[6] & 4) == 0 && ((*(*v106 + 216))(v106, v207) || (*(*v104 + 608))(v104, v106)))
        {
          v216 = 15;
        }

        else
        {
          v216 = 2063;
        }

        v217 = (*(*v104 + 696))(v104, 1, &i, v216, @"image-render-interpolator");
        if (!v217)
        {
          v225 = 2155872384;
LABEL_367:
          if (BYTE1(xmmword_1ED4E97DC))
          {
            *v281 = v302 + 8;
            *&v281[8] = &v304 + 8;
            *&v281[16] = *(&v317 + 4);
            v282 = 0uLL;
            *&v283 = &v302[2] + 8;
            CA::OGL::fill_color_rect(v104, v281, v225, *(&v317 + 4), v101);
          }

          goto LABEL_369;
        }

        v218 = v217;
        v257 = v107;
        v219 = *(a2 + 24);
        if (v219)
        {
          v221 = CA::Render::Layer::process_id(*(v219 + 152));
          v222 = *(a2 + 24);
          if (v222)
          {
            v223 = v109;
            layer_resource_text = CA::Render::create_layer_resource_text(v222, v220);
LABEL_348:
            v226 = *(*v104 + 888);
            v259[0] = layer_resource_text;
            v226(v104, v218, 0, v221, @"image-render-interpolator", layer_resource_text);
            LODWORD(v258.f64[0]) = v218[23];
            v287 = 0;
            *(&v282 + 1) = 0x3C003C003C003C00;
            v284 = 0;
            v285 = 0;
            v283 = 0uLL;
            v286 = 0;
            *&v281[8] = *(v119 + 8);
            v227 = *(v119 + 24);
            *v281 = 0;
            *&v282 = v227;
            LODWORD(v285) = *(v119 + 64);
            v228 = *(v119 + 80) & 0x500;
            v279 = 0u;
            v280 = 0u;
            v278 = 0u;
            CA::Shape::operator=(&v278, &i);
            *&v281[8] = &v278;
            v104 = v262;
            LOWORD(v287) = v228 | 0xC;
            *v281 = CA::OGL::Context::set_gstate(v262, v281);
            CA::OGL::Context::push_surface(v262, v218, 1u, 32, 0);
            v229 = *v266;
            CA::OGL::prepare_color_program_cache(*v266, a2, v257, v264);
            v230 = v223;
            v231 = CA::OGL::Context::bind_image(v262, 0, v257, DWORD1(v317), v274, v223, 0, v302, v112, v254, 0);
            v232 = v256;
            if (v231)
            {
              v233 = v231;
              v269[0] = 0;
              v270 = vcvt_f16_f32(*v257[9].i8);
              CA::OGL::colormatched_layer_color(v269, *v266, a2, &v270, *v257[11].i32);
              *(*(v262 + 2) + 8) = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v269[0]), *v261.f64));
              if ((v232 & 1) == 0)
              {
                CA::OGL::set_swizzle(v104, 0, v253);
              }

              CA::OGL::ContentsGeometry::fill_and_unbind(v302, v104, v233, v274, v112);
              v229 = *v266;
            }

            CA::OGL::prepare_color_program_cache(v229, a2, v260, v265.i64[0]);
            v234 = CA::OGL::Context::bind_image(v104, 0, v260, DWORD1(v289), v273, v230, 0, v288, v112, v255, 0);
            if (v234)
            {
              v236 = v234;
              *&v235 = 1.0 - *v261.f64;
              *v266 = v235;
              v269[0] = 0;
              v270 = vcvt_f16_f32(*v260[9].i8);
              CA::OGL::colormatched_layer_color(v269, v229, a2, &v270, *v260[11].i32);
              *(v104[2] + 8) = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v269[0]), v266[0]));
              if ((v232 & 1) == 0)
              {
                CA::OGL::set_swizzle(v104, 0, v253);
              }

              *(v104[2] + 497) |= 1u;
              CA::OGL::ContentsGeometry::fill_and_unbind(v288, v104, v236, v273, v112);
              *(v104[2] + 497) &= ~1u;
            }

            CA::OGL::Context::pop_surface(v104);
            CA::OGL::Context::set_gstate(v104, *v104[82]);
            if (*&v122 == 0x3C003C003C003C00)
            {
              v237 = 1;
            }

            else
            {
              *(v104[2] + 8) = v122;
              v237 = 3;
            }

            v107 = v257;
            v238 = v263;
            v239 = v104[2];
            if (*(v239 + 496) >= 2u)
            {
              *(v239 + 497) |= 1u;
            }

            v240 = *(v238 + 8);
            v269[0] = 0;
            v269[1] = 0;
            CA::OGL::emit_combine(v104, v237, v218, 0, v240, v269);
            *(v104[2] + 497) &= ~1u;
            CA::OGL::Context::release_surface(v104, v218);
            if (v259[0])
            {
              CFRelease(v259[0]);
            }

            if ((LOWORD(v258.f64[0]) & 0x800) != 0)
            {
              v225 = 8388736;
            }

            else
            {
              v225 = 2155872384;
            }

            v106 = v260;
            goto LABEL_367;
          }

          v223 = v109;
        }

        else
        {
          v223 = v109;
          v221 = 0;
        }

        layer_resource_text = 0;
        goto LABEL_348;
      }

      *(*(v262 + 2) + 16) = 7;
      CA::OGL::prepare_color_program_cache(*v266, a2, v107, v264);
      v131 = v109;
      v257 = v107;
      v132 = CA::OGL::Context::bind_image(v104, 0, v107, DWORD1(v317), v274, v109, 0, v302, v112, v254, 0);
      CA::OGL::prepare_color_program_cache(*v266, a2, v260, v265.i64[0]);
      v251 = v131;
      v133 = CA::OGL::Context::bind_image(v104, 1u, v260, DWORD1(v289), v273, v131, 0, v288, v112, v255, 0);
      v134 = v133;
      v252 = v132;
      if (v132 && v133)
      {
        if ((*(*v262 + 1072))(v262))
        {
          _D0 = *&v261.f64[0];
          __asm { FCVT            H0, S0 }

          *(*(v262 + 2) + 8) = vdup_lane_s16(_D0, 0);
          if ((v256 & 1) == 0)
          {
            CA::OGL::set_swizzle(v262, 0, v253);
            CA::OGL::set_swizzle(v262, 1u, v253);
          }

          v136 = *(v262 + 2);
          v137 = *(v136 + 496);
          if (v137 >= 2 && (v137 != 3 || !(v257[1].i32[1] & 0x1000 | WORD2(v317) & 0x200) || !(v260[1].i32[1] & 0x1000 | WORD2(v289) & 0x200)))
          {
            *(v136 + 497) |= 1u;
          }

          v278 = *(v302 + 8);
          v279 = vaddq_f64(*(&v302[1] + 8), *(v302 + 8));
          v283 = 0u;
          v138 = *(*(v262 + 82) + 8);
          *v281 = v262;
          *&v281[8] = v138;
          v282 = 0u;
          *&v281[16] = 0;
          BYTE8(v282) = ((BYTE8(v313) >> 4) & 1) == 0;
          BYTE9(v282) = 1;
          CA::OGL::Context::ClippedArray::start(v281);
            ;
          }

          v104 = v262;
          *(*(v262 + 2) + 497) &= ~1u;
          v247 = v104[2];
          *(v247 + 24) = 0;
          *(v247 + 32) = 0;
          (*(*v104 + 560))(v104, v134, 1);
          (*(*v104 + 560))(v104, v252, 0);
          *(v104[2] + 16) = 0;
LABEL_243:
          v106 = v260;
          v107 = v257;
          goto LABEL_369;
        }
      }

      else if (!v133)
      {
LABEL_319:
        if (v252)
        {
          (*(*v262 + 560))(v262, v252, 0);
        }

        v104 = v262;
        v119 = v263;
        *(*(v262 + 2) + 16) = 0;
        v107 = v257;
        v109 = v251;
        goto LABEL_322;
      }

      (*(*v262 + 560))(v262, v134, 1);
      goto LABEL_319;
    }

LABEL_24:
    if (!v12)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v27 = v26;
  if ((*(*v8 + 128))(v8))
  {
    v28 = (*(*v27 + 256))(v27);
    v29 = (*(*v8 + 144))(v8) & v28;
    v30 = v29 == (*(*v27 + 256))(v27);
  }

  else
  {
    v30 = 1;
  }

  LODWORD(v264) = v30;
  v37 = *v266;
  *(v27 + 3) = *(v27 + 3) & 0xFFF7FFFF | ((((*(*(a2 + 16) + 24) >> 20) >> 19) & 1) << 19);
  v38 = *(*(a2 + 24) + 104);
  CA::OGL::prepare_color_program_cache(v37, a2, v27, v38);
  v329 = 0;
  v327 = 0u;
  v328 = 0u;
  v325 = 0u;
  v326 = 0u;
  v323 = 0u;
  v324 = 0u;
  v321 = 0u;
  v322 = 0u;
  v319 = 0u;
  v320 = 0u;
  v317 = 0u;
  v318 = 0u;
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v307 = 0u;
  v308 = 0u;
  v305 = 0u;
  v306 = 0u;
  v303 = 0u;
  v304 = 0u;
  memset(v302, 0, sizeof(v302));
  CA::OGL::ContentsGeometry::ContentsGeometry(v302, a2, v268, v27, v25, v8);
  if (v315 == 1)
  {
    v39 = *(a2 + 24);
    v40 = *(v39 + 40);
    if ((v40 & 0xFu) > 0xAuLL)
    {
      v41 = 1;
    }

    else
    {
      v41 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v40 & 0xF];
    }

    i.n128_u8[0] = v41;
    v43 = v40 >> 4;
    if (v43 > 0xA)
    {
      v44 = 1;
    }

    else
    {
      v44 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v43];
    }

    v45 = *(v39 + 136);
    if (v45)
    {
      v46 = *(v45 + 312);
    }

    else
    {
      v46 = 0.0;
    }

    if (v41 == 11)
    {
      v27 = CA::OGL::Context::tile_cache_load(v8, v302, v27, &i);
      v45 = *(*(a2 + 24) + 136);
    }

    if (v45)
    {
      v47 = *(v45 + 300);
      v48 = vcvt_f16_f32(*(v45 + 284));
    }

    else
    {
      v48 = 0x3C003C003C003C00;
      v47 = 0.0;
    }

    a7.i64[0] = *(v268 + 4);
    v265 = a7;
    v278.f64[0] = 0.0;
    v288[0] = v48;
    CA::OGL::colormatched_layer_color(&v278, *v266, a2, v288, v47);
    if (*&v278.f64[0] == 0x3C003C003C003C00)
    {
      v54 = v265;
    }

    else
    {
      v52 = vcvtq_f32_f16(*v265.i8);
      v51 = vmulq_f32(vcvtq_f32_f16(*&v278.f64[0]), v52);
      *v54.i8 = vcvt_f16_f32(v51);
    }

    if ((*(v27 + 14) & 0x10) != 0)
    {
      v55 = *(v27 + 22);
      *v281 = vcvt_f16_f32(*(v27 + 72));
      v265 = v54;
      CA::OGL::colormatched_layer_color(v288, *v266, a2, v281, v55);
      v52 = vcvtq_f32_f16(v288[0]);
      v51 = vmulq_f32(v52, vcvtq_f32_f16(*v265.i8));
      *v54.i8 = vcvt_f16_f32(v51);
    }

    v51.n128_u16[0] = v54.u16[3];
    *v52.i16 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    v263 = v38;
    if (*&v54.i16[3] != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) || (*(a2 + 35) & 0x10) != 0)
    {
      goto LABEL_73;
    }

    if ((*(v27 + 13) & 0x10) != 0)
    {
      if (!v264)
      {
LABEL_73:
        v63 = 0;
        goto LABEL_74;
      }

      v56 = BYTE4(v317);
    }

    else
    {
      v56 = BYTE4(v317);
      if ((v264 & ((WORD2(v317) & 0x200) >> 9)) != 1)
      {
        goto LABEL_73;
      }
    }

    if ((v56 & 9) != 0)
    {
      v63 = 1;
      if ((*(a2 + 41) & 0xF) == 0 && (BYTE10(v328) & 1) == 0)
      {
        v64 = 1;
        v65 = 1;
        if (v12)
        {
LABEL_75:
          v265 = v54;
          v49 = CA::OGL::render_background(*v266, a2, v51.n128_f64[0], *v52.i64, v53);
          v54.i64[0] = v265.i64[0];
          v65 = v64;
        }

LABEL_76:
        if ((*(a2 + 35) & 0x10) != 0)
        {
          MEMORY[0x1EEE9AC00](v49);
          LODWORD(v250) = 0;
          v248 = 0;
          v249 = 0;
          LODWORD(v248) = v67[2].i32[0];
          BYTE4(v248) = v67[1].i8[5] & 1;
          v68 = v67[3];
          LODWORD(v250) = v67[4].i32[0];
          v66 = *(v8 + 2);
          *(v66 + 376) = &v248;
          v69.i32[0] = bswap32(v67[2].u32[1]);
          v69.i32[1] = v69.i32[0] >> 8;
          v249 = vrev64_s32(v68);
          v69.i32[2] = HIWORD(v69.i32[0]);
          v70.i64[0] = 0xFF000000FFLL;
          v70.i64[1] = 0xFF000000FFLL;
          v71 = vandq_s8(v69, v70);
          v71.i32[3] = vshrq_n_u32(vdupq_n_s32(*&v69), 0x18uLL).i32[3];
          v52 = vcvtq_f32_f16(*v54.i8);
          v51 = vmulq_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v71), vdupq_n_s32(0x3B808081u)))), v52);
          *v54.i8 = vcvt_f16_f32(v51);
        }

        else
        {
          v66 = *(v8 + 2);
        }

        v72 = v264;
        v73 = *(v66 + 496);
        if (v73 >= 2 && (v73 != 3 || (v65 & 1) == 0))
        {
          *(v66 + 497) |= 1u;
          v66 = *(v8 + 2);
          if (v63)
          {
            v74 = *(v66 + 496);
            if (v74 <= 3 && v74 != 2)
            {
              DWORD1(v317) |= 0x8000u;
            }
          }
        }

        *(v66 + 8) = v54.i64[0];
        v75 = *(a2 + 24);
        v76 = *(v75 + 136);
        if (v76)
        {
          v77 = *(v76 + 348) & 1;
        }

        else
        {
          v77 = 0;
        }

        v78 = v65;
        if (!v72)
        {
          v85 = v27;
          goto LABEL_245;
        }

        if (*(v27 + 12) != 57 || (*(v75 + 47) & 0x10) == 0 || v77)
        {
          v85 = v27;
          goto LABEL_102;
        }

        v265.i32[0] = 0;
        v79 = CA::OGL::Context::lookup_image(v8, v27, 1);
        v80 = CA::OGL::detach_contents(*v266, a2, v27, v79, v302, i.n128_u8[0], v44);
        v81 = (*(*v27 + 304))(v27);
        if (!v263 || !v81 || *(v263 + 12) != 25 || (v82 = *(*(a2 + 24) + 152)) == 0 || !*(v82 + 24))
        {
          if (v80)
          {
            v84 = v78;
            goto LABEL_112;
          }

          v85 = v27;
          goto LABEL_143;
        }

        v83 = *(v8 + 78);
        if (v80)
        {
          v84 = v78;
          ++*(v83 + 536);
LABEL_112:
          LODWORD(v42) = 1;
          v85 = v27;
LABEL_269:
          *(*(v8 + 2) + 497) &= ~1u;
          DWORD1(v317) &= ~0x8000u;
          *&v10 = CA::OGL::ContentsGeometry::fill_debug(v302, v8, a2, v85, v84, v51.n128_f64[0], v52);
          v13 = 1;
          v38 = v263;
          goto LABEL_270;
        }

        v85 = *(v27 + 22);
        v77 = v265.i32[0];
        if (v85)
        {
LABEL_102:
          if ((WORD2(v317) & 0x400) == 0 && *(*(v8 + 2) + 8) == 0x3C003C003C003C00 && (BYTE1(v319) & 1) == 0 && (BYTE2(v319) & 1) == 0 && ((BYTE4(v317) & 9) == 0 || (*(a2 + 40) & 0xF00) == 0))
          {
            v86 = v77;
            v87 = (*(*v85 + 216))(v85, v51);
            if (v87)
            {
              CA::OGL::draw_tiled_image(v8, v87, i.n128_i8[0], v44, v302, 0, v46);
              goto LABEL_267;
            }

            if ((*(*v8 + 608))(v8, v85))
            {
              v288[0].i32[0] = 0;
              *v281 = 0;
              if ((*(*v85 + 232))(v85, v288, v281))
              {
                v170 = (*(*v85 + 104))(v85);
                v171 = (*(*v8 + 248))(v8, v170, v288[0].u32[0], *v281);
                v172 = (*(*v85 + 224))(v85, v171, (DWORD1(v317) >> 11) & 1);
                if (v172)
                {
                  v173 = v172;
                  CA::OGL::draw_tiled_image(v8, v172, i.n128_i8[0], v44, v302, 0, v46);
                  if (atomic_fetch_add(v173 + 2, 0xFFFFFFFF) == 1)
                  {
                    (*(*v173 + 16))(v173);
                  }

                  goto LABEL_267;
                }
              }
            }

            DWORD1(v317) |= 0x1000u;
            v77 = v86;
          }

LABEL_245:
          if (BYTE2(v319) == 1 && (BYTE1(v319) & 1) == 0)
          {
            v184 = v77;
            v177 = (*(*v8 + 648))(v8, v85, 1, v51);
            v77 = v184;
            if (!v184)
            {
LABEL_248:
              if (v72)
              {
                goto LABEL_249;
              }

              goto LABEL_263;
            }
          }

          else
          {
            v177 = 0;
            if (!v77)
            {
              goto LABEL_248;
            }
          }

          BYTE4(v319) = 1;
          if (v72)
          {
LABEL_249:
            v178 = *(a2 + 24);
            if (v178 && (v178 = *(v178 + 128)) != 0)
            {
              v179 = v77;
              v180 = *(v178 + 24);
              v178 += 28;
              if (!v180)
              {
                v178 = 0;
              }
            }

            else
            {
              v179 = v77;
            }

            v42 = CA::OGL::Context::bind_image(v8, 0, v85, DWORD1(v317), i.n128_u8[0], v44, v177, v302, v46, (&v315 + 4), v178);
            if (!v42)
            {
              goto LABEL_268;
            }

            if (v179)
            {
              v181 = (*(*v8 + 232))(v8, 28);
              v182 = *(v8 + 2);
              if (v181)
              {
                v183 = CA::OGL::swizzle_to_image_function(CA::Render::LayerContentsSwizzle,CA::OGL::ImageFunction)::AAAA_functions[*(v182 + 17)];
                if (!v183)
                {
                  v183 = 37;
                }
              }

              else
              {
                v183 = 25;
              }

              *(v182 + 17) = v183;
            }

            CA::OGL::ContentsGeometry::fill_and_unbind(v302, v8, v42, i.n128_u8[0], v46);
LABEL_267:
            LODWORD(v42) = 0;
LABEL_268:
            v84 = v78;
            goto LABEL_269;
          }

LABEL_263:
          v288[0] = (v302 + 8);
          v288[1] = (&v304 + 8);
          *v288[2].i8 = *(&v317 + 4);
          v288[4] = 0;
          v288[5] = (&v302[2] + 8);
          CA::OGL::fill_color_rect(v8, v288, 0xFF, *(&v317 + 4), v52);
          goto LABEL_267;
        }

        v262 = (v27 + 176);
        if (byte_1ED4E983D == 1)
        {
          v243 = v83;
          if (x_log_get_ogl(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
          }

          v244 = x_log_get_ogl(void)::log;
          v245 = os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEBUG);
          v83 = v243;
          if (v245)
          {
            v246 = *(v27 + 30);
            v288[0].i32[0] = 67109120;
            v288[0].i32[1] = v246;
            _os_log_debug_impl(&dword_183AA6000, v244, OS_LOG_TYPE_DEBUG, "Cannot Display TM (did not detach), OnDemand MSR/GPU TM on surface (0x%x)", v288, 8u);
            v83 = v243;
          }
        }

        memset(v288, 0, 152);
        v158 = *(v27 + 23);
        if (v158)
        {
          atomic_fetch_add(v158 + 4, 1u);
          v159 = *(v27 + 12);
          *v288[3].i8 = *(v27 + 13);
          v160 = *(v27 + 15);
          *v288[5].i8 = *(v27 + 14);
          *v288[1].i8 = v159;
          v161 = *(v27 + 17);
          *v288[9].i8 = *(v27 + 16);
          *v288[7].i8 = v160;
          v162 = *(v27 + 19);
          *v288[17].i8 = *(v27 + 20);
          v163 = *(v27 + 18);
          *v288[15].i8 = v162;
          *v288[13].i8 = v163;
          v288[0] = v158;
          *v288[11].i8 = v161;
          v164 = v83;
          LODWORD(v261.f64[0]) = (*(*v158 + 56))(v158, v83);
          v165 = *&v288[18].i32[1];
          LODWORD(v260) = v288[18].u8[0];
          v166 = (*(*v27 + 280))(v27);
          v167 = (*(*v158 + 24))(v158, v27, v164, &v288[1], LODWORD(v261.f64[0]), 0, v260, v166, 1.0, v165, 1);
          if (v167)
          {
            v168 = v167;
            X::Ref<CA::Render::Surface>::operator=(v262, v167);
            add = atomic_fetch_add(v168 + 2, 0xFFFFFFFF);
            v72 = v264;
            if (add == 1)
            {
              (*(*v168 + 16))(v168);
            }

            goto LABEL_304;
          }

          if (x_log_get_ogl(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
          }

          v201 = x_log_get_ogl(void)::log;
          v202 = os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR);
          v72 = v264;
          if (!v202)
          {
LABEL_304:
            v203 = v288[0];
            if (*v288 && atomic_fetch_add((*v288 + 16), 0xFFFFFFFF) == 1)
            {
              (*(**&v203 + 8))(v203);
            }

            v85 = *v262;
            v77 = v265.i32[0];
            if (!*v262)
            {
              if (x_log_get_ogl(void)::once != -1)
              {
                dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
              }

              v204 = x_log_get_ogl(void)::log;
              if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
              {
                v205 = *(v27 + 30);
                v288[0].i32[0] = 67109120;
                v288[0].i32[1] = v205;
                _os_log_error_impl(&dword_183AA6000, v204, OS_LOG_TYPE_ERROR, "No valid tonemapped surface available for 0x%x", v288, 8u);
              }

              v85 = v27;
              v72 = v264;
LABEL_143:
              v77 = v265.i32[0];
              goto LABEL_102;
            }

            goto LABEL_102;
          }

          v206 = *(v27 + 30);
          *v281 = 67109120;
          *&v281[4] = v206;
          v198 = "Failed to tonemap surface 0x%x";
          v199 = v201;
          v200 = 8;
        }

        else
        {
          v192 = *(v27 + 16);
          *v288[11].i8 = *(v27 + 17);
          v193 = *(v27 + 19);
          *v288[13].i8 = *(v27 + 18);
          *v288[15].i8 = v193;
          *v288[17].i8 = *(v27 + 20);
          v194 = *(v27 + 12);
          *v288[3].i8 = *(v27 + 13);
          v195 = *(v27 + 15);
          *v288[5].i8 = *(v27 + 14);
          *v288[7].i8 = v195;
          *v288[9].i8 = v192;
          *v288[1].i8 = v194;
          if (x_log_get_ogl(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
          }

          v196 = x_log_get_ogl(void)::log;
          v197 = os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR);
          v72 = v264;
          if (!v197)
          {
            goto LABEL_304;
          }

          *v281 = 0;
          v198 = "Could not tonemap surface because of invalid configuration";
          v199 = v196;
          v200 = 2;
        }

        _os_log_error_impl(&dword_183AA6000, v199, OS_LOG_TYPE_ERROR, v198, v281, v200);
        goto LABEL_304;
      }

LABEL_74:
      v64 = 0;
      v65 = 0;
      DWORD1(v317) |= 0x100u;
      if (!v12)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    if (BYTE10(v328))
    {
      v63 = 1;
      goto LABEL_74;
    }

    if (!v12)
    {
      v63 = 1;
      v65 = 1;
      goto LABEL_76;
    }

    v265 = v54;
    *v281 = 0;
    *&v281[8] = 0;
    CA::Bounds::set_exterior(v281, v50, *(&v302[2] + 8), *(&v302[3] + 8));
    v113 = *(v268 + 1);
    v49 = CA::Bounds::contains(v281, v113);
    if (v49)
    {
LABEL_296:
      v63 = 1;
      v65 = 1;
      v54.i64[0] = v265.i64[0];
      goto LABEL_76;
    }

    v114 = CA::Shape::subtract(v113, v281);
    v118 = v114;
    if (v114)
    {
      if (v114 != 1)
      {
        goto LABEL_238;
      }
    }

    else if (*(v114 + 4) == 12)
    {
      goto LABEL_238;
    }

    if ((*(v8 + 872) & 0x10) != 0)
    {
      CA::OGL::render_background(*v266, a2, v115, v116, v117);
      goto LABEL_295;
    }

LABEL_238:
    memset(v288, 0, 88);
    CA::OGL::copy_gstate(v288, v268);
    v288[1] = v118;
    v288[0] = CA::OGL::Context::set_gstate(v8, v288);
    CA::OGL::render_background(*v266, a2, v174, v175, v176);
    CA::OGL::Context::set_gstate(v8, **(v8 + 82));
LABEL_295:
    CA::Shape::unref(v118);
    goto LABEL_296;
  }

  LODWORD(v42) = 0;
LABEL_270:
  a1 = *v266;
  if (v38 && *(v38 + 12) == 25)
  {
    v185 = *(*(v38 + 16) + 24);
    v186 = atomic_load((v185 + 8));
    if ((v186 & 0x800000000000000) != 0)
    {
      v187 = 0;
    }

    else
    {
      v187 = v42;
    }

    if (v187 == 1)
    {
      atomic_fetch_or((v185 + 8), 0x800000000000000uLL);
    }

    else
    {
      if ((v186 & 0x800000000000000) != 0)
      {
        v188 = v42;
      }

      else
      {
        v188 = 1;
      }

      if ((v188 & 1) == 0)
      {
        atomic_fetch_and((v185 + 8), 0xF7FFFFFFFFFFFFFFLL);
      }
    }

    if (v42)
    {
      v189 = *(*(v38 + 16) + 24);
      if (v189)
      {
        v190 = *(v38 + 444);
        if (v190)
        {
          v191 = (v189 + 544);
          do
          {
            if (*(v191 - 1))
            {
              atomic_fetch_or(v191, 0x1000000u);
            }

            v191 += 40;
            --v190;
          }

          while (v190);
        }
      }
    }

    if (!*(a1[1] + 72))
    {
      *(*(*(v38 + 16) + 24) + 68) = *(*(*(v38 + 16) + 24) + 64);
    }
  }

  *(*(v8 + 2) + 376) = 0;
  if (!v13)
  {
LABEL_25:
    CA::OGL::render_background(a1, a2, v10, a6, a7);
  }

LABEL_26:
  v36 = v268;
  if (v268 != v9)
  {
    CA::OGL::Context::set_gstate(v8, **(v8 + 82));
    CA::Shape::unref(*(v36 + 8));
  }

  *(v9 + 8) = v267;
}

uint64_t CA::OGL::rect_filter_bits(float64x2_t *this, uint64_t a2, double *a3, float64x2_t a4, float64x2_t a5, int8x16_t a6, double a7)
{
  v7 = a2;
  v22 = *MEMORY[0x1E69E9840];
  if ((~a2 & 9) == 0)
  {
    return v7;
  }

  v9 = vaddq_f64(a5, a4);
  v20 = v9;
  v21 = a4;
  if (!a2 && *a6.i64 == 1.0 && a7 == 1.0)
  {
    goto LABEL_9;
  }

  CA::Transform::apply_to_point2(this, v21.f64, a3);
  CA::Transform::apply_to_point2(this, v20.i64, v11);
  if ((v7 & 1) == 0)
  {
    a4.f64[0] = v21.f64[0];
    v9.i64[0] = v20.i64[0];
LABEL_9:
    a6.i64[0] = 0.5;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = vnegq_f64(v13);
    v12 = vbslq_s8(v14, a6, a4);
    v15 = vabdd_f64(trunc(*v12.i64 + a4.f64[0]), a4.f64[0]);
    v16 = vabdd_f64(trunc(*vbslq_s8(v14, a6, v9).i64 + *v9.i64), *v9.i64);
    if (v15 <= v16)
    {
      v15 = v16;
    }

    if (v15 < 0.001)
    {
      v7 = v7;
    }

    else
    {
      v7 = (v7 + 1);
    }
  }

  if ((v7 & 8) == 0)
  {
    a4.f64[0] = v21.f64[1];
    v9.i64[0] = 0.5;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v18 = vnegq_f64(v17);
    v12.i64[0] = v20.i64[1];
    a4.f64[0] = vabdd_f64(trunc(*vbslq_s8(v18, v9, a4).i64 + v21.f64[1]), v21.f64[1]);
    *v9.i64 = vabdd_f64(trunc(*vbslq_s8(v18, v9, v12).i64 + *&v20.i64[1]), *&v20.i64[1]);
    if (a4.f64[0] <= *v9.i64)
    {
      a4.f64[0] = *v9.i64;
    }

    if (a4.f64[0] >= 0.001)
    {
      return v7 | 8;
    }

    else
    {
      return v7;
    }
  }

  return v7;
}

uint64_t CA::OGL::transform_filter_bits(CA::Mat4Impl *this, const double *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *a4.i64;
  v6 = *a3.i64;
  v8 = *(this + 144);
  if ((v8 & 0x10) != 0)
  {
    v17 = *(this + 15);
    v18 = 1.0;
    v19 = 1.0;
    if (fabs(v17 + -1.0) >= 0.001)
    {
      v18 = 1.0 / (v17 * v17);
      v19 = 1.0 / v17;
    }

    if (CA::Mat4Impl::mat4_is_rectilinear(this, a2))
    {
      *v20.i64 = *(this + 12) * v19;
      *v21.i64 = *(this + 13) * v19;
      v22.i64[0] = 0.5;
      v23.f64[0] = NAN;
      v23.f64[1] = NAN;
      v24 = vnegq_f64(v23);
      v25 = vabdd_f64(trunc(*vbslq_s8(v24, v22, v20).i64 + *v20.i64), *v20.i64);
      v26 = v25 < 0.001;
      v27 = v25 >= 0.001;
      *v20.i64 = vabdd_f64(trunc(*vbslq_s8(v24, v22, v21).i64 + *v21.i64), *v21.i64);
      if (v26)
      {
        v28 = 8;
      }

      else
      {
        v28 = 9;
      }

      if (*v20.i64 >= 0.001)
      {
        v27 = v28;
      }
    }

    else
    {
      v27 = 9;
    }

    v31 = *this;
    v30 = *(this + 1);
    v32 = (v31 * v31 + v30 * v30) * v18;
    v33 = *(this + 4);
    v34 = *(this + 5);
    v35 = (v33 * v33 + v34 * v34) * v18;
    if (v32 >= v6 + -0.001)
    {
      if (v32 > v6 + 0.001)
      {
        result = v27 | 4;
      }

      else
      {
        result = v27;
      }
    }

    else
    {
      result = v27 | 2;
    }

    if (v35 >= v5 + -0.001)
    {
      if (v35 > v5 + 0.001)
      {
        result = result | 0x20;
      }
    }

    else
    {
      result = result | 0x10;
    }

    if (((result ^ (result >> 3)) & 7) != 0 && fabs(v31) < 0.001 && vabdd_f64(v31, v34) < 0.001 && fabs(v33 + v30) < 0.001)
    {
      return result | 0x40;
    }
  }

  else
  {
    a3.i64[0] = *(this + 12);
    a4.i64[0] = *(this + 13);
    a5.i64[0] = 0.5;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = vnegq_f64(v9);
    v11 = trunc(*vbslq_s8(v10, a5, a3).i64 + *a3.i64);
    v12 = trunc(*vbslq_s8(v10, a5, a4).i64 + *a4.i64);
    *v10.i64 = vabdd_f64(v11, *a3.i64);
    v13 = *v10.i64 >= 0.001;
    *a4.i64 = vabdd_f64(v12, *a4.i64);
    if (*v10.i64 < 0.001)
    {
      v14 = 8;
    }

    else
    {
      v14 = 9;
    }

    if (*a4.i64 >= 0.001)
    {
      v13 = v14;
    }

    v15 = v13 | (16 * v8) & 0x40 | (((v8 >> 1) & 1) << 7);
    v16 = *(this + 16);
    if (v16 >= v6 + -0.001)
    {
      if (v16 > v6 + 0.001)
      {
        v15 |= 4u;
      }
    }

    else
    {
      v15 |= 2u;
    }

    if (v16 >= v5 + -0.001)
    {
      if (v16 > v5 + 0.001)
      {
        return v15 | 0x20;
      }

      else
      {
        return v15;
      }
    }

    else
    {
      return v15 | 0x10;
    }
  }

  return result;
}

uint64_t CA::OGL::render_solid_background(CA::OGL::Context **a1, uint64_t a2, float16x4_t *a3, uint64_t a4, float a5)
{
  v160 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(*a1 + 82);
  v11 = *(v10 + 32);
  if (*&v11 == 0x3C003C003C003C00)
  {
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(vcvt_f16_f32(vcvtq_f32_f16(v11))), vcvtq_f32_f16(*a3)));
    *a3 = v13;
    v12 = v13;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  result = CA::OGL::Context::need_transparent_source(v9);
  if (!result)
  {
    return result;
  }

  v12 = 0;
LABEL_7:
  v157 = 0;
  *v152.i8 = v12;
  CA::OGL::colormatched_layer_color(&v157, a1, a2, &v152, a5);
  v15 = *(a2 + 24);
  v16 = v15 + 72;
  v17 = *(v15 + 88);
  v155 = *(v15 + 72);
  v156 = v17;
  CA::Rect::apply_transform(&v155, *(v10 + 24), v18);
  v19 = vceqzq_f64(v156);
  v20 = vorrq_s8(vdupq_laneq_s64(v19, 1), v19).u64[0];
  v149 = v156;
  v148 = v155;
  if ((v20 & 0x8000000000000000) != 0 || (v21 = vceqq_f64(v156, v156), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v21), 1), v21).u64[0] & 0x8000000000000000) != 0))
  {
    v152 = 0uLL;
  }

  else
  {
    v22 = vcvtmq_s64_f64(vmaxnmq_f64(v155, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v152 = vuzp1q_s32(v22, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v155, v156), vdupq_n_s64(0x41C0000000000000uLL))), v22));
  }

  result = CA::Shape::intersects(*(v10 + 8), &v152);
  if (result)
  {
    v27 = *(v10 + 24);
    v24.i64[0] = 1.0;
    v25.i64[0] = 1.0;
    v28 = CA::OGL::transform_filter_bits(v27, v23, v24, v25, v26);
    v29.i64[0] = 1.0;
    v31 = CA::OGL::rect_filter_bits(v27, v28, v30, *(v15 + 72), *(v15 + 88), v29, 1.0);
    v32 = v31;
    if (a4)
    {
      v33 = *(a2 + 24);
      v34 = *(v33 + 40);
      if ((v34 & 0xFu) > 0xAuLL)
      {
        v35 = 1;
      }

      else
      {
        v35 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v34 & 0xF];
      }

      v39 = v34 >> 4;
      if (v39 > 0xA)
      {
        v40 = 1;
      }

      else
      {
        v40 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v39];
      }

      v147 = v40;
      v41 = *(v33 + 136);
      if (v41)
      {
        v42 = *(v41 + 312);
      }

      else
      {
        v42 = 0.0;
      }

      v56 = *(*(a2 + 16) + 24);
      if ((*(a4 + 12) & 0x300) == 0x100 && (*(*v9 + 648))(v9, *(a4 + 128), 1))
      {
        v57 = (*(v9 + 872) << 10) & 0x800 ^ v32;
        if (v56)
        {
          v58 = v57 ^ 0x800;
        }

        else
        {
          v58 = v57;
        }

        v159 = 0uLL;
        v158 = 0uLL;
        v59 = CA::OGL::Context::bind_image(v9, 0, *(a4 + 128), v58, v35, v147, 1, 0, v42, &v159, 0);
        if (!v59)
        {
          v71 = 0;
LABEL_141:
          v122 = 0;
          goto LABEL_142;
        }

        v61 = 0;
        if (*&v157.i16[3] == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          v60 = *(a4 + 128);
          if (v60)
          {
            if ((*(v60 + 13) & 0x10) != 0 && *(a4 + 96) <= *(a4 + 80) && *(a4 + 104) <= *(a4 + 88))
            {
              v61 = 1;
            }
          }
        }

        if ((v58 & 9) != 0 && (*(a2 + 41) & 0xF) != 0 || (*(a2 + 32) & 0x10) != 0)
        {
          v61 = 0;
        }

        v62 = *(v9 + 16);
        v63 = v62[62].u8[0];
        *&v149.f64[0] = v59;
        LODWORD(v148.f64[0]) = v61;
        if (v63 >= 2 && (v63 != 3 || !v61))
        {
          v62[62].i8[1] |= 1u;
          v62 = *(v9 + 16);
        }

        v62[1] = v157;
        v64 = *(a2 + 24);
        v65 = *(v64 + 136);
        if (v65)
        {
          v66 = *(v65 + 152);
        }

        else
        {
          v66 = 0uLL;
        }

        CA::OGL::pattern_texcoords(a4, v159.i32, &v158, *(v15 + 72), *(v15 + 88), v66);
        v109 = *(a2 + 41);
        v110 = *(v10 + 24);
        v152.i64[0] = v15 + 72;
        *&v152.i64[1] = v110;
        v153 = __PAIR64__(v109, v58);
        v154 = 0uLL;
        v111 = 0.0;
        if (v65)
        {
          v112 = *(v65 + 72);
          if (v112)
          {
            CA::OGL::fill_uneven_round_rect_tex(v9, &v152, (v112 + 24), &v158, *(v64 + 44) & 3);
            v117 = v149.f64[0];
            v118 = LODWORD(v148.f64[0]);
            goto LABEL_140;
          }

          v113 = *(v65 + 56);
          if (v113)
          {
            v114 = (*(*v113 + 80))(v113, 0.0);
            v115 = *(a2 + 24);
            v116 = *(v115 + 136);
            v117 = v149.f64[0];
            v118 = LODWORD(v148.f64[0]);
            if (v116)
            {
              v119 = *(v116 + 64);
              if (v119)
              {
                if (*(v119 + 16) > 3u)
                {
                  v132 = vsubq_f64(*(v119 + 40), *(v119 + 24));
                  v150 = *(v119 + 24);
                  v151 = v132;
                }

                else
                {
                  v151 = 0u;
                  v150 = 0u;
                }
              }

              else
              {
                __asm { FMOV            V0.2D, #0.5 }

                v150 = _Q0;
                v151 = 0uLL;
              }

              v129 = *(v116 + 232);
            }

            else
            {
              __asm { FMOV            V0.2D, #0.5 }

              v150 = _Q0;
              v151 = 0uLL;
              v129 = 0.0;
            }

            CA::OGL::fill_corner_rect_tex(v9, &v152, v114, v150.f64, *(*(a2 + 16) + 24) & 1, HIWORD(*(v115 + 48)) & 1, &v158, *(v115 + 42) & 0xF, v129, v129, 0);
            goto LABEL_140;
          }

          v111 = *(v65 + 232);
        }

        v117 = v149.f64[0];
        v118 = LODWORD(v148.f64[0]);
        CA::OGL::fill_round_rect_tex(v9, &v152, v158.f32, *(v64 + 42) & 0xF, *(v64 + 44) & 3, 0, v111, v111);
LABEL_140:
        *(*(v9 + 16) + 497) &= ~1u;
        (*(*v9 + 560))(v9, COERCE_FLOAT64_T(*&v117), 0);
        v71 = v118 ^ 1;
        goto LABEL_141;
      }

      if ((*(a2 + 32) & 0x10) == 0 && ((*(a2 + 41) & 0xF) == 0 || (v32 & 9) == 0))
      {
        v67 = *(a4 + 32);
        v152 = *(a4 + 16);
        v153 = v67;
        v154 = *(a4 + 48);
        if (CGAffineTransformIsRectilinear())
        {
          v68 = *&v157.i16[3];
          *(*(v9 + 16) + 8) = v157;
          if (v68 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && (v69 = *(a4 + 128)) != 0 && (*(v69 + 13) & 0x10) != 0 && *(a4 + 96) <= *(a4 + 80))
          {
            v70 = v56;
            if (*(a4 + 104) <= *(a4 + 88))
            {
              v71 = 0;
LABEL_74:
              v72 = *(v9 + 16);
              v73 = *(v72 + 496);
              if (v73 >= 2 && (v73 != 3 || v71))
              {
                *(v72 + 497) |= 1u;
              }

              v74 = *(*(a2 + 24) + 136);
              if (v74)
              {
                v75 = *(v74 + 152);
              }

              else
              {
                v75 = 0uLL;
              }

              v152 = v75;
              CA::OGL::fill_pattern_rect(v9, a4, v16, &v152, *(*(v9 + 656) + 24), &v155, v35, v147, v42, v70 & 1, 0);
              v122 = 0;
              *(*(v9 + 16) + 497) &= ~1u;
              goto LABEL_142;
            }
          }

          else
          {
            v70 = v56;
          }

          v71 = 1;
          goto LABEL_74;
        }
      }

      v146 = v56;
      if ((v20 & 0x8000000000000000) != 0 || (v76 = vceqq_f64(v149, v149), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v76), 1), v76).u64[0] & 0x8000000000000000) != 0))
      {
        v159 = 0uLL;
      }

      else
      {
        v77 = vcvtmq_s64_f64(vmaxnmq_f64(v148, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v159 = vuzp1q_s32(v77, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v148, v149), vdupq_n_s64(0x41C0000000000000uLL))), v77));
      }

      v78 = CA::Shape::intersect(*(v10 + 8), &v159);
      CA::Shape::get_bounds(v78, &v159);
      v79 = (*(*v9 + 696))(v9, 1, &v159, 15, @"image-render-solid-background");
      if (!v79)
      {
        goto LABEL_131;
      }

      v80 = v79;
      v81 = *(a2 + 24);
      v145 = v35;
      if (v81)
      {
        v83 = CA::Render::Layer::process_id(*(v81 + 152));
        v84 = *(a2 + 24);
        if (v84)
        {
          layer_resource_text = CA::Render::create_layer_resource_text(v84, v82);
          goto LABEL_90;
        }
      }

      else
      {
        v83 = 0;
      }

      layer_resource_text = 0;
LABEL_90:
      v86 = (*(*v9 + 888))(v9, v80, 0, v83, @"image-render-solid-background", layer_resource_text);
      MEMORY[0x1EEE9AC00](v86);
      v144 = 0;
      v138 = 0x3C003C003C003C00;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      v143 = 0;
      v136 = *(v10 + 8);
      v137 = *(v10 + 24);
      LODWORD(v142) = *(v10 + 64);
      LOWORD(v144) = *(v10 + 80) & 0x500 | 4;
      v135 = 0;
      *&v136 = v78;
      v135 = CA::OGL::Context::set_gstate(v9, &v135);
      CA::OGL::Context::push_surface(v9, v80, 1u, 2, 0);
      *(*(v9 + 16) + 8) = 0x3C003C003C003C00;
      v87 = *(a2 + 41);
      v88 = *(v10 + 24);
      v152.i64[0] = v16;
      *&v152.i64[1] = v88;
      v153 = __PAIR64__(v87, v32);
      v154 = 0uLL;
      v89 = *(a2 + 24);
      v90 = *(v89 + 136);
      v91 = 0.0;
      if (v90)
      {
        v92 = *(v90 + 72);
        if (v92)
        {
          CA::OGL::fill_uneven_round_rect(v9, &v152, (v92 + 24), *(v89 + 44) & 3);
          goto LABEL_124;
        }

        v93 = *(v90 + 56);
        if (v93)
        {
          v94 = (*(*v93 + 80))(v93, 0.0);
          v95 = *(a2 + 24);
          v96 = *(v95 + 136);
          if (v96)
          {
            v97 = *(v96 + 64);
            if (v97)
            {
              if (*(v97 + 16) > 3u)
              {
                v123 = vsubq_f64(*(v97 + 40), *(v97 + 24));
                v150 = *(v97 + 24);
                v151 = v123;
              }

              else
              {
                v151 = 0u;
                v150 = 0u;
              }
            }

            else
            {
              __asm { FMOV            V0.2D, #0.5 }

              v150 = _Q0;
              v151 = 0uLL;
            }

            v108 = *(v96 + 232);
          }

          else
          {
            __asm { FMOV            V0.2D, #0.5 }

            v150 = _Q0;
            v151 = 0uLL;
            v108 = 0.0;
          }

          CA::OGL::fill_corner_rect(v9, &v152, v94, v150.f64, *(*(a2 + 16) + 24) & 1, HIWORD(*(v95 + 48)) & 1, *(v95 + 42) & 0xF, v108, v108);
          goto LABEL_124;
        }

        v91 = *(v90 + 232);
      }

      CA::OGL::fill_round_rect(v9, &v152, (*(v89 + 42) & 0xF), *(v89 + 44) & 3, v91, v91);
LABEL_124:
      *(*(v9 + 16) + 497) |= 1u;
      *(*(v9 + 16) + 8) = v157;
      v124 = *(*(a2 + 24) + 136);
      if (v124)
      {
        v125 = *(v124 + 152);
      }

      else
      {
        v125 = 0uLL;
      }

      v150 = v125;
      CA::OGL::fill_pattern_rect(v9, a4, v16, &v150, *(*(v9 + 656) + 24), &v155, v145, v147, v42, v146 & 1, 0);
      *(*(v9 + 16) + 497) &= ~1u;
      CA::OGL::Context::pop_surface(v9);
      CA::OGL::Context::set_gstate(v9, **(v9 + 656));
      v126 = *(v9 + 16);
      if (*(v126 + 496) >= 2u)
      {
        *(v126 + 497) |= 1u;
      }

      v127 = *(v10 + 8);
      v150 = 0uLL;
      CA::OGL::emit_combine(v9, 1u, v80, 0, v127, &v150);
      *(*(v9 + 16) + 497) &= ~1u;
      CA::OGL::Context::release_surface(v9, v80);
      if (layer_resource_text)
      {
        CFRelease(layer_resource_text);
      }

LABEL_131:
      CA::Shape::unref(v78);
      v122 = 1;
      v71 = 1;
LABEL_142:
      v133 = *(*(a2 + 24) + 152);
      if (v133)
      {
        v134 = (*(v133 + 104) >> 53) & 7;
      }

      else
      {
        LODWORD(v134) = 0;
      }

      return CA::OGL::fill_color_rect(v9, v16, v32, v122, v71, v134, v54, v55);
    }

    v36 = *&v157.i16[3] == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    if (*&v157.i16[3] == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && (v37 = *(*(v9 + 16) + 496), v37 <= 3))
    {
      v38 = dword_183E219A0[v37];
    }

    else
    {
      v38 = 0;
    }

    if ((v31 & 9) != 0 && (*(a2 + 41) & 0xF) != 0 || (*(a2 + 32) & 0x10) != 0)
    {
      v36 = 0;
    }

    v43 = *(*(a2 + 24) + 136);
    v44 = 0.0;
    if (v43)
    {
      v44 = *(v43 + 232);
    }

    v45 = v44;
    v46 = *(a2 + 176);
    if (v46 && (*(v46 + 238) & 0x40) != 0)
    {
      v45 = 0.0;
    }

    v47 = *(v9 + 16);
    v48 = v47[62].u8[0];
    if (v48 >= 2 && (v48 != 3 || !v36))
    {
      v47[62].i8[1] |= 1u;
      v47 = *(v9 + 16);
    }

    v47[1] = v157;
    v49 = *(a2 + 41);
    v50 = *(v10 + 24);
    v152.i64[0] = v15 + 72;
    *&v152.i64[1] = v50;
    LODWORD(v153) = v38 | v31;
    DWORD1(v153) = v49;
    v154 = 0uLL;
    *(&v153 + 1) = 0;
    v51 = *(a2 + 24);
    v52 = *(v51 + 136);
    if (v52)
    {
      v53 = *(v52 + 72);
      if (v53)
      {
        CA::OGL::fill_uneven_round_rect(v9, &v152, (v53 + 24), *(v51 + 44) & 3);
LABEL_135:
        v122 = 0;
        *(*(v9 + 16) + 497) &= ~1u;
        v71 = !v36;
        goto LABEL_142;
      }

      v98 = *(v52 + 56);
      if (v98)
      {
        v99 = (*(*v98 + 80))(v98);
        v100 = *(a2 + 24);
        v101 = *(v100 + 136);
        if (v101 && (v102 = *(v101 + 64)) != 0)
        {
          if (*(v102 + 16) > 3u)
          {
            v130 = vsubq_f64(*(v102 + 40), *(v102 + 24));
            v150 = *(v102 + 24);
            v151 = v130;
          }

          else
          {
            v151 = 0u;
            v150 = 0u;
          }
        }

        else
        {
          __asm { FMOV            V0.2D, #0.5 }

          v150 = _Q0;
          v151 = 0uLL;
        }

        CA::OGL::fill_corner_rect(v9, &v152, v99, v150.f64, *(*(a2 + 16) + 24) & 1, HIWORD(*(v100 + 48)) & 1, *(v100 + 42) & 0xF, v45, v45);
        goto LABEL_135;
      }
    }

    CA::OGL::fill_round_rect(v9, &v152, (*(v51 + 42) & 0xF), *(v51 + 44) & 3, v45, v45);
    goto LABEL_135;
  }

  return result;
}

uint64_t CA::OGL::ContentsGeometry::ContentsGeometry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5, uint64_t a6)
{
  v177 = *MEMORY[0x1E69E9840];
  v12 = *(a4 + 16);
  *a1 = v12;
  v13 = *(a4 + 20);
  *(a1 + 4) = v13;
  *(a1 + 8) = 0;
  v14 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  v15 = CA::Transform::operator=(a1 + 104, *(a3 + 24));
  *(a1 + 256) = 0x3FF0000000000000;
  v16 = *(a2 + 24);
  v17 = *(v16 + 136);
  if (v17)
  {
    v15.n128_u32[0] = *(v17 + 304);
  }

  else
  {
    v15.n128_u8[0] = *(v16 + 38);
    v15.n128_f32[0] = v15.n128_u32[0];
  }

  *(a1 + 264) = v15.n128_f32[0];
  *(a1 + 272) = 1;
  *(a1 + 308) = 0;
  *(a1 + 312) = *(a2 + 41);
  *(a1 + 316) = -1082130432;
  *(a1 + 336) = (*(*a4 + 112))(a4);
  *(a1 + 337) = 0;
  v20 = *(a2 + 24);
  *(a1 + 338) = (*(v20 + 40) & 0x2000000000000) != 0;
  *(a1 + 339) = (*(v20 + 40) & 0x1000000000000) == 0;
  *(a1 + 340) = 0;
  v21 = *(v20 + 136);
  v22 = 0.0;
  if (v21)
  {
    v22 = *(v21 + 232);
  }

  v23 = (a1 + 276);
  v24 = v22;
  *(a1 + 424) = v24;
  *(a1 + 432) = v24;
  *(a1 + 491) = 0;
  *(a1 + 492) = (*(*(a2 + 16) + 24) & 0x400) != 0;
  *(a1 + 493) = 0;
  *(a1 + 495) = 0;
  *(a1 + 496) = *(a4 + 56) == 0;
  __asm { FMOV            V7.2D, #1.0 }

  if (a5[1].i8[4] == 56)
  {
    *(a1 + 494) = 1;
    v30 = a5[3];
    v31 = a5[4];
    v32.i64[0] = v31.i32[0];
    v32.i64[1] = v31.i32[1];
    v33 = vcvtq_f64_s64(v32);
    v34 = vadd_s32(v31, v30);
    v32.i64[0] = v34.i32[0];
    v32.i64[1] = v34.i32[1];
    v35 = vcvtq_f64_s64(v32);
    v32.i64[0] = v30.i32[0];
    v32.i64[1] = v30.i32[1];
    __asm { FMOV            V5.2D, #1.0 }

    v37 = vdivq_f64(_Q5, *(a1 + 24));
    v38 = vmulq_f64(vcvtq_f64_s64(v32), v37);
    *(a1 + 408) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v33, v37)), v38);
    v39 = vcvtq_f64_f32(vdiv_f32(0x3F0000003F000000, vcvt_f32_u32(*(a4 + 16))));
    *(a1 + 392) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v38, v39)), vmlaq_f64(vnegq_f64(v39), v37, v35));
    *(a1 + 491) = 1;
    *a1 = v31;
    *v14 = 0;
    v14[1] = 0;
    *(a1 + 24) = v33;
    v20 = *(a2 + 24);
  }

  v176 = 0;
  v168[0] = xmmword_183E20E00;
  v168[1] = 0u;
  v169 = xmmword_183E20E60;
  v170 = 0u;
  v171 = 0u;
  v172 = xmmword_183E20E00;
  v173 = 0u;
  v174 = xmmword_183E20E60;
  v175 = _Q7;
  if ((*(v20 + 46) & 8) != 0)
  {
    *(a1 + 308) |= 0x200u;
  }

  v40 = *(a4 + 12);
  if ((v40 & 0x400) != 0)
  {
    *(a1 + 24) = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  }

  if ((v40 & 0x4000) != 0)
  {
    if (*(a4 + 24))
    {
      v41 = *(a4 + 26);
      goto LABEL_18;
    }

    if (*(a4 + 28) || *(a4 + 30))
    {
      v41 = 0;
LABEL_18:
      v42 = *(a4 + 16);
      *v43.f32 = vcvt_f32_u32(v42);
      v43.i64[1] = v43.i64[0];
      __asm { FMOV            V2.4S, #1.0 }

      v45 = vdivq_f32(_Q2, v43);
      *_Q2.f32 = vshl_n_s32(__PAIR64__(v41, *(a4 + 24)), 0x10uLL);
      *v46.i8 = vshr_n_s32(*_Q2.f32, 0x10uLL);
      *(a1 + 308) |= 0x400u;
      v47.i32[0] = *(a4 + 28);
      v47.i32[1] = *(a4 + 30);
      v48 = vsub_s32(v42, vsra_n_s32(v47, *_Q2.f32, 0x10uLL));
      v49.i64[0] = v48.i32[0];
      v49.i64[1] = v48.i32[1];
      v46.u64[1] = vsra_n_s32(v48, *_Q2.f32, 0x10uLL);
      v50 = vmulq_f32(v45, vcvtq_f32_s32(v46));
      *v23->f32 = v50;
      *(a1 + 24) = vcvtq_f64_s64(v49);
      _Q2.i64[0] = 0x3F0000003F000000;
      _Q2.i64[1] = 0x3F0000003F000000;
      v51 = vmulq_f32(v45, _Q2);
      _Q2.i64[0] = vaddq_f32(v50, v51).u64[0];
      _Q2.i64[1] = vsubq_f32(v50, v51).i64[1];
      *(a1 + 392) = _Q2;
      *(a1 + 491) = 1;
    }
  }

  v52 = 1.0;
  if ((v40 & 0x2000) != 0)
  {
    v53 = *(a4 + 32);
    *(a1 + 256) = v53;
    *(a1 + 24) = *(a1 + 24) * v53;
    v52 = 1.0 / v53;
    *_Q7.i64 = v52;
  }

  v54 = *(a1 + 264);
  if (v54 != 1.0)
  {
    *(a1 + 24) = vmulq_n_f64(*(a1 + 24), 1.0 / v54);
    *_Q7.i64 = v52 * v54;
    *&_Q7.i64[1] = v54;
  }

  v55 = *(v20 + 136);
  if (v55)
  {
    v56 = *(v55 + 40);
    if (v56)
    {
      v57 = *(a1 + 308);
      if ((v57 & 0x400) != 0)
      {
        v60 = vcvtq_f64_f32(*v23);
        v61 = vcvtq_f64_f32(vsub_f32(*(a1 + 284), *(a1 + 276)));
        v59 = *(v56 + 24);
        v58 = *(v56 + 40);
        *v23->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v60, v61, v59)), vmlaq_f64(v60, v61, v58));
      }

      else
      {
        v58 = *(v56 + 40);
        v59 = *(v56 + 24);
        *v23->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(v59), v58);
        *(a1 + 308) = v57 | 0x400;
      }

      v62 = *(a1 + 32);
      *(a1 + 24) = *(a1 + 24) * (v58.f64[0] - v59.f64[0]);
      *(a1 + 32) = v62 * (*(v56 + 48) - *(v56 + 32));
    }
  }

  v152 = _Q7;
  v155 = 0uLL;
  v64 = *(a1 + 24);
  v63 = *(a1 + 32);
  v154.f64[0] = v64;
  v154.f64[1] = v63;
  if ((*(v20 + 40) & 0xF000) == 0x9000 && *(v20 + 72) == 0.0 && *(v20 + 80) == 0.0 && (!v55 || !*(v55 + 32)) && *(v20 + 88) == v64 && *(v20 + 96) == v63)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v155 = _Q0;
    v65 = 1.0;
    v66 = 1.0;
  }

  else
  {
    CA::Render::Layer::append_contents_transform(v20, v168, &v154, &v155);
    v65 = *(&v155 + 1);
    v66 = *&v155;
  }

  *(a1 + 320) = v66;
  *(a1 + 328) = v65;
  if (v66 != 1.0 || v65 != 1.0)
  {
    v67 = *(a2 + 24);
    v68 = *(v67 + 136);
    if (v68)
    {
      v69 = *(v68 + 48);
      if (v69)
      {
        *(a1 + 337) = 1;
        v71 = v69[3];
        v70 = v69[4];
        v73 = v69[5];
        v72 = v69[6];
        if ((*(v67 + 49) & 0x80) == 0)
        {
          if (v73 <= v71)
          {
            v74 = 0.5 / *a1;
            v71 = v71 - v74;
            v73 = v74 + v73;
          }

          if (v72 <= v70)
          {
            v75 = 0.5 / *(a1 + 4);
            v70 = v70 - v75;
            v72 = v75 + v72;
          }
        }

        v76 = v71;
        *(a1 + 376) = v76;
        v77 = v70;
        *(a1 + 380) = v77;
        v78 = v73;
        *(a1 + 384) = v78;
        v79 = v72;
        *(a1 + 388) = v79;
        v80 = *(a1 + 24);
        v81 = *(a1 + 32);
        v82 = v80 / v66;
        v83 = v81 / v65;
        *(a1 + 344) = v82 * v71;
        *(a1 + 352) = v83 * v70;
        *(a1 + 360) = v80 + v82 * (v73 - 1.0);
        *(a1 + 368) = v81 + v83 * (v72 - 1.0);
      }
    }
  }

  if ((v40 & 0x700) != 0)
  {
    v167 = 0;
    v84.f64[1] = 0.0;
    v158 = xmmword_183E20E00;
    v159 = 0u;
    v160 = xmmword_183E20E60;
    v161 = 0u;
    v162 = 0u;
    v163 = xmmword_183E20E00;
    __asm { FMOV            V1.2D, #1.0 }

    v164 = 0u;
    v165 = xmmword_183E20E60;
    v86 = (v40 & 0x100) == 0;
    v166 = _Q1;
    if ((~v40 & 0x200400) != 0)
    {
      goto LABEL_51;
    }

    if ((~v40 & 0x300) == 0)
    {
      goto LABEL_53;
    }

    if ((v40 & 0x200) != 0)
    {
LABEL_51:
      v86 = (v40 >> 9) & 1;
      if ((v40 & 0x100) != 0)
      {
        goto LABEL_49;
      }
    }

    else if (v40 & 0x100) != 0 && ((v40 >> 8))
    {
LABEL_49:
      v84.f64[0] = 0.0;
      v87 = CA::Transform::translate(&v158, v84, *(a1 + 32), 0.0);
      v87.f64[0] = 1.0;
      CA::Transform::scale(&v158, v87, -1.0, 1.0);
      if ((v86 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (!v86)
    {
LABEL_54:
      if ((v40 & 0x400) != 0)
      {
        v84.f64[0] = *(a1 + 24);
        CA::Transform::translate(&v158, v84, 0.0, 0.0);
        CA::Transform::rotate90(&v158, v89, v90, v91);
      }

      CA::Transform::concat_left(v168, &v158, v18, v19);
      if ((*(a1 + 309) & 4) != 0)
      {
        CA::OGL::unrotate_texcoords((v40 >> 8), (a1 + 276), v18);
      }

      if (*(a1 + 337) == 1)
      {
        CA::OGL::unrotate_texcoords((v40 >> 8), (a1 + 376), v18);
      }

      if ((v40 & 0x400) != 0)
      {
        *(a1 + 24) = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
      }

      goto LABEL_62;
    }

LABEL_53:
    v84.f64[0] = *(a1 + 24);
    v88 = CA::Transform::translate(&v158, v84, 0.0, 0.0);
    v88.f64[0] = -1.0;
    CA::Transform::scale(&v158, v88, 1.0, 1.0);
    goto LABEL_54;
  }

LABEL_62:
  if ((~v40 & 0x104000) == 0 && (*(a1 + 337) & 1) == 0 && (*(a1 + 338) & 1) == 0)
  {
    v92 = *(*(a2 + 24) + 136);
    if ((!v92 || !*(v92 + 40)) && *&v155 == 1.0 && *(&v155 + 1) == 1.0)
    {
      v93 = *(a1 + 284);
      if (v93 > 1.0)
      {
        *(a1 + 24) = *(a1 + 24) * ((1.0 - *(a1 + 276)) / (v93 - *(a1 + 276)));
        *(a1 + 284) = 1065353216;
      }

      v94 = *(a1 + 288);
      v95 = *(a1 + 280);
      if (v94 > 1.0)
      {
        *(a1 + 32) = *(a1 + 32) * ((1.0 - v95) / (v94 - v95));
        *(a1 + 288) = 1065353216;
        v94 = 1.0;
      }

      if (v95 < 0.0)
      {
        v96 = *(a1 + 32);
        v97 = v96 * v95 / (v94 - v95);
        *(a1 + 16) = *(a1 + 16) - v97;
        *(a1 + 32) = v97 + v96;
        *(a1 + 280) = 0;
      }
    }
  }

  CA::Transform::concat_left((a1 + 104), v168, v18, v19);
  *(a1 + 40) = *(a1 + 8);
  *(a1 + 56) = *(a1 + 24);
  CA::Rect::apply_transform((a1 + 40), (a1 + 104), v98);
  if ((*(*(a2 + 24) + 46) & 4) != 0 && ((*(a1 + 248) & 0x10) == 0 || CA::Mat4Impl::mat4_is_rectilinear((a1 + 104), v99)))
  {
    v101.f64[0] = *(a1 + 40);
    if (v101.f64[0] == trunc(v101.f64[0]))
    {
      v103 = *(a1 + 48);
      v104 = *(a1 + 56);
      v102 = trunc(v103);
      if (v103 == v102 && v104 == trunc(v104))
      {
        v105 = *(a1 + 64);
        v102 = trunc(v105);
        if (v105 == v102)
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
      v104 = *(a1 + 56);
    }

    v106 = *(a1 + 64);
    if (v104 >= v106)
    {
      v107 = *(a1 + 64);
    }

    else
    {
      v107 = v104;
    }

    if (v107 > 0.0)
    {
      v108 = *(a1 + 48);
      v109 = round(v101.f64[0]);
      v110 = round(v108);
      v101.f64[0] = v109 - v101.f64[0];
      CA::Transform::translate_right((a1 + 104), v101, v110 - v108, v102);
      *(a1 + 40) = v109;
      *(a1 + 48) = v110;
      *(a1 + 56) = v104;
      *(a1 + 64) = v106;
    }
  }

LABEL_89:
  if (a6)
  {
    v111 = *(a1 + 56);
    v112 = vceqzq_f64(v111);
    if ((vorrq_s8(vdupq_laneq_s64(v112, 1), v112).u64[0] & 0x8000000000000000) != 0 || (v113 = vceqq_f64(v111, v111), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v113), 1), v113).u64[0] & 0x8000000000000000) != 0))
    {
      v158 = 0uLL;
    }

    else
    {
      v114 = *(a1 + 40);
      v115 = vcvtmq_s64_f64(vmaxnmq_f64(v114, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v158 = vuzp1q_s32(v115, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v114, v111), vdupq_n_s64(0x41C0000000000000uLL))), v115));
    }

    v116 = CA::Shape::intersects(*(a3 + 8), &v158);
    *(a1 + 272) = v116;
    if (v116)
    {
      v117.i64[0] = v152.i64[1];
      v119 = CA::OGL::transform_filter_bits((a1 + 104), v99, v152, v117, v118);
      v121 = *(a1 + 308) | CA::OGL::rect_filter_bits((a1 + 104), v119, v120, *(a1 + 8), *(a1 + 24), v152, *&v152.i64[1]);
      *(a1 + 308) = v121;
      if ((*(a6 + 872) & 2) != 0)
      {
        v121 ^= 0x800u;
        *(a1 + 308) = v121;
      }

      if (*(*(a2 + 16) + 24))
      {
        *(a1 + 308) = v121 ^ 0x800;
      }
    }
  }

  if (*(a1 + 491) == 1 && (*(a1 + 494) & 1) == 0 && (*(a1 + 308) & 0x800) == ((*(a4 + 12) >> 11) & 1))
  {
    v122 = 1.0 - *(a1 + 396);
    *(a1 + 396) = 1.0 - *(a1 + 404);
    *(a1 + 404) = v122;
  }

  if (*(a1 + 424) == 0.0 || (*(a2 + 32) & 0x8300007FE0) != 0x100 || (*(a1 + 337) & 1) != 0 || (*(a1 + 338) & 1) != 0 || (v123 = *(a2 + 24), v124 = *(v123 + 40), (v124 & 0x10000000000) == 0) || (v176 & 0x10) != 0 && !CA::Mat4Impl::mat4_is_rectilinear(v168, v99))
  {
LABEL_108:
    v125 = 0;
    goto LABEL_109;
  }

  if ((~v124 & 0xF0000) == 0 || (v125 = 0, v168[0].f64[0] > 0.0) && *(&v169 + 1) > 0.0)
  {
    v128 = *(v123 + 136);
    if (!v128 || !v128[9])
    {
      v129 = *(v123 + 88);
      v158 = *(v123 + 72);
      v159 = v129;
      CA::Transform::invert(v168, v99, v100);
      CA::Mat4Impl::mat4_apply_to_rect(v168, &v158, v130);
      v132 = v158;
      v133 = v159;
      v134 = v159.f64[1];
      if (v159.f64[0] <= v159.f64[1])
      {
        v135 = v159.f64[1];
      }

      else
      {
        v135 = v159.f64[0];
      }

      v136 = v159;
      v137 = v158;
      if (v135 < 1.79769313e308)
      {
        if (v159.f64[0] < v159.f64[1])
        {
          v134 = v159.f64[0];
        }

        v136 = v159;
        v137 = v158;
        if (v134 > 0.0)
        {
          v138 = vaddq_f64(v159, vdupq_n_s64(0xBF60624DD2F1A9FCLL));
          v139 = vmovn_s64(vmvnq_s8(vclezq_f64(v138)));
          v137 = vaddq_f64(v158, vdupq_n_s64(0x3F50624DD2F1A9FCuLL));
          v140 = vdup_lane_s32(vand_s8(v139, vdup_lane_s32(v139, 1)), 0);
          v141.i64[0] = v140.i32[0];
          v141.i64[1] = v140.i32[1];
          v136 = vandq_s8(v138, v141);
        }
      }

      v151 = v159;
      v153 = v158;
      if ((*(a1 + 312) & 0xF) == 0 || (v142 = CA::BoundsImpl::contains(*(a1 + 8), *(a1 + 24), v137, v136), v133 = v151, v132 = v153, v142))
      {
        v156 = 0.0;
        v157 = 0.0;
        if ((v176 & 0x10) != 0)
        {
          CA::Mat4Impl::mat4_get_scale(v168, &v157, &v156, v131);
          v133 = v151;
          v132 = v153;
          v143 = v156;
          v144.f64[0] = v157;
        }

        else
        {
          v143 = *v175.i64;
          *&v144.f64[0] = v175.i64[0];
        }

        v144.f64[1] = v143;
        *(a1 + 424) = vmulq_f64(*(a1 + 424), v144);
        v145 = *(a1 + 24);
        v146 = *(a1 + 8);
        v147 = vsubq_f64(v132, v146);
        *(a1 + 292) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v147, v145)), vdivq_f64(vaddq_f64(v147, v133), v145));
        *(a1 + 72) = v146;
        *(a1 + 88) = v145;
        *(a1 + 8) = v132;
        *(a1 + 24) = v133;
        *(a1 + 440) = *(v123 + 42) & 0xF;
        *(a1 + 444) = *(v123 + 44) & 3;
        if (v128)
        {
          *(a1 + 448) = v128[7];
          v148 = v128[8];
          if (v148)
          {
            v149 = 0uLL;
            _Q1 = 0uLL;
            if (*(v148 + 16) >= 4u)
            {
              _Q1 = *(v148 + 24);
              v149 = vsubq_f64(*(v148 + 40), _Q1);
            }

            goto LABEL_141;
          }
        }

        else
        {
          *(a1 + 448) = 0;
        }

        __asm { FMOV            V1.2D, #0.5 }

        v149 = 0uLL;
LABEL_141:
        *(a1 + 456) = _Q1;
        *(a1 + 472) = v149;
        *(a1 + 489) = *(v123 + 50) & 1;
        *(a1 + 488) = *(*(a2 + 16) + 24) & 1;
        v125 = 1;
        goto LABEL_109;
      }
    }

    goto LABEL_108;
  }

LABEL_109:
  *(a1 + 490) = v125;
  return a1;
}

void CA::OGL::emit_quad(CA::OGL *this, float64x2_t *a2, const double *a3, float64x2_t *a4, const CA::Transform *a5, float *a6, const float *a7)
{
  v160 = *MEMORY[0x1E69E9840];
  if ((LOBYTE(a4[9].f64[0]) & 0x1F) == 0)
  {
    v53 = a4[6];
    v54 = vcvt_f32_f64(vaddq_f64(v53, *a2));
    v55 = vcvt_f32_f64(vaddq_f64(a2[1], v53));
    *&v53.f64[0] = vcgt_f32(v55, v54);
    if ((LODWORD(v53.f64[0]) & HIDWORD(v53.f64[0]) & 1) == 0)
    {
      return;
    }

    v56 = 0.0;
    v57 = 0.0;
    v58 = 0.0;
    v59 = 0.0;
    v60 = 0.0;
    if (a5)
    {
      v60 = *a5;
      v59 = *(a5 + 1);
      v58 = *(a5 + 2);
      v57 = *(a5 + 3);
    }

    v61 = 0.0;
    v62 = 0.0;
    v63 = 0.0;
    if (a6)
    {
      v63 = *a6;
      v62 = a6[1];
      v56 = a6[2];
      v61 = a6[3];
    }

    v64 = *(this + 692);
    v65 = v55.f32[1];
    v66 = v54.f32[1];
    if ((v64 & 0x40) == 0)
    {
      v145 = v63;
LABEL_52:
      v146 = v61;
LABEL_53:
      v147 = v55.i32[0];
      v148 = v54.i32[0];
      v67 = 6;
      if (!*(this + 27))
      {
        v67 = 4;
      }

      v68 = *(this + 18);
      if ((v68 + 4) > *(this + 19) || (v69 = *(this + 16)) != 0 && *(this + 15) + v67 > v69)
      {
        *(this + 692) = v64 | 0x20;
        CA::OGL::Context::array_flush(this);
        v68 = 0;
        *(this + 14) = this + 1386;
        *(this + 120) = xmmword_183E20E50;
      }

      v41 = *(this + 17) + 48 * v68;
      *(this + 18) = v68 + 4;
      CA::OGL::Context::array_indices(this, v68);
      v42 = *(*(this + 2) + 8);
      *v41 = v148;
      *(v41 + 4) = v66;
      *(v41 + 8) = 0x3F80000000000000;
      *(v41 + 48) = v147;
      *(v41 + 52) = v66;
      *(v41 + 56) = 0x3F80000000000000;
      *(v41 + 96) = v147;
      *(v41 + 100) = v65;
      *(v41 + 104) = 0x3F80000000000000;
      *(v41 + 144) = v148;
      *(v41 + 148) = v65;
      *(v41 + 152) = 0x3F80000000000000;
      if (a5)
      {
        *(v41 + 16) = v60;
        *(v41 + 20) = v59;
        *(v41 + 64) = v58;
        *(v41 + 68) = v59;
        *(v41 + 112) = v58;
        *(v41 + 116) = v57;
        *(v41 + 160) = v60;
        *(v41 + 164) = v57;
      }

      if (a6)
      {
        *(v41 + 24) = v145;
        *(v41 + 28) = v62;
        *(v41 + 72) = v56;
        *(v41 + 76) = v62;
        *(v41 + 120) = v56;
        *(v41 + 124) = v146;
        *(v41 + 168) = v145;
        *(v41 + 172) = v146;
      }

      goto LABEL_63;
    }

    v97 = *a3;
    v96 = *(a3 + 1);
    v98 = *a3;
    v99 = v96;
    v100 = *(a3 + 2) + v98;
    v101 = *(a3 + 3) + v96;
    v102 = v55.f32[0];
    v103 = v54.f32[0];
    v104 = v55.f32[0] <= v98 || v100 <= v103;
    v105 = v55.f32[1];
    v106 = v104 || v105 <= v99;
    v107 = v54.f32[1];
    if (v106 || v101 <= v107)
    {
      return;
    }

    if (a6)
    {
      if (v103 < v98)
      {
        v109 = (v98 - v103) / vsub_f32(v55, v54).f32[0];
        v60 = v60 + ((v58 - v60) * v109);
        v63 = v63 + ((v56 - v63) * v109);
        v54.f32[0] = v97;
      }

      if (v100 < v102)
      {
        v110 = (v102 - v100) / (v55.f32[0] - v54.f32[0]);
        v58 = v58 + ((v60 - v58) * v110);
        v56 = v56 + ((v63 - v56) * v110);
        v55.f32[0] = v100;
      }

      if (v107 < v99)
      {
        v111 = (v99 - v107) / (v55.f32[1] - v54.f32[1]);
        v59 = v59 + ((v57 - v59) * v111);
        v62 = v62 + ((v61 - v62) * v111);
        v66 = v96;
      }

      v145 = v63;
      if (v101 >= v105)
      {
        goto LABEL_52;
      }

      v112 = (v105 - v101) / (v55.f32[1] - v66);
      v57 = v57 + ((v59 - v57) * v112);
      v146 = v61 + ((v62 - v61) * v112);
    }

    else
    {
      v145 = v63;
      v146 = v61;
      if (a5)
      {
        if (v103 < v98)
        {
          v141 = (v98 - v103) / vsub_f32(v55, v54).f32[0];
          v60 = v60 + ((v58 - v60) * v141);
          v54.f32[0] = v97;
        }

        if (v100 < v102)
        {
          v142 = (v102 - v100) / (v55.f32[0] - v54.f32[0]);
          v58 = v58 + ((v60 - v58) * v142);
          v55.f32[0] = v100;
        }

        if (v107 < v99)
        {
          v143 = (v99 - v107) / (v55.f32[1] - v54.f32[1]);
          v59 = v59 + ((v57 - v59) * v143);
          v66 = v96;
        }

        if (v101 >= v105)
        {
          goto LABEL_53;
        }

        v144 = (v105 - v101) / (v55.f32[1] - v66);
        v57 = v57 + ((v59 - v57) * v144);
      }

      else
      {
        if (v103 < v98)
        {
          v54.f32[0] = v97;
        }

        if (v100 < v102)
        {
          v55.f32[0] = v100;
        }

        if (v107 < v99)
        {
          v66 = v96;
        }

        if (v101 >= v105)
        {
          goto LABEL_53;
        }
      }
    }

    v65 = v101;
    goto LABEL_53;
  }

  if ((LOBYTE(a4[9].f64[0]) & 0x10) != 0)
  {
    v70 = a2[1].f64[0];
    v71 = a2->f64[0];
    if (v70 <= a2->f64[0])
    {
      return;
    }

    v72 = a2[1].f64[1];
    v73 = a2->f64[1];
    if (v72 <= v73)
    {
      return;
    }

    v149.f64[0] = a2->f64[0];
    v149.f64[1] = v73;
    v151.f64[0] = v70;
    v151.f64[1] = v73;
    v153.f64[0] = v71;
    v153.f64[1] = v72;
    v155.f64[0] = v70;
    v155.f64[1] = v72;
    v156 = xmmword_183E20E60;
    v154 = xmmword_183E20E60;
    v152 = xmmword_183E20E60;
    v150 = xmmword_183E20E60;
    CA::Transform::apply_to_point4(a4, &v149, &v149, 4);
    v74 = *(this + 692);
    if ((v74 & 0x40) != 0)
    {
      v116 = 1.0;
      v117 = 1.0;
      if (fabs(v150.f64[1] + -1.0) >= 0.001)
      {
        if (v150.f64[1] <= 0.0)
        {
          v117 = INFINITY;
        }

        else
        {
          v117 = 1.0 / v150.f64[1];
        }
      }

      if (fabs(v152.f64[1] + -1.0) >= 0.001)
      {
        if (v152.f64[1] <= 0.0)
        {
          v116 = INFINITY;
        }

        else
        {
          v116 = 1.0 / v152.f64[1];
        }
      }

      v120 = 1.0;
      v121 = 1.0;
      if (fabs(v154.f64[1] + -1.0) >= 0.001)
      {
        if (v154.f64[1] <= 0.0)
        {
          v121 = INFINITY;
        }

        else
        {
          v121 = 1.0 / v154.f64[1];
        }
      }

      if (fabs(*(&v156 + 1) + -1.0) >= 0.001)
      {
        if (*(&v156 + 1) <= 0.0)
        {
          v120 = INFINITY;
        }

        else
        {
          v120 = 1.0 / *(&v156 + 1);
        }
      }

      v124 = v149.f64[0] * v117;
      v125 = v149.f64[1] * v117;
      v126 = v151.f64[0] * v116;
      v127 = v151.f64[1] * v116;
      v128 = v153.f64[0] * v121;
      v129 = v153.f64[1] * v121;
      v130 = v155.f64[0] * v120;
      v131 = v155.f64[1] * v120;
      if (v124 >= v126)
      {
        v132 = v126;
      }

      else
      {
        v132 = v124;
      }

      if (v128 >= v130)
      {
        v133 = v130;
      }

      else
      {
        v133 = v128;
      }

      if (v132 >= v133)
      {
        v132 = v133;
      }

      if (v129 >= v131)
      {
        v134 = v131;
      }

      else
      {
        v134 = v129;
      }

      if (v129 > v131)
      {
        v131 = v129;
      }

      if (v125 >= v127)
      {
        v135 = v127;
      }

      else
      {
        v135 = v125;
      }

      if (v125 <= v127)
      {
        v125 = v127;
      }

      if (v135 >= v134)
      {
        v136 = v134;
      }

      else
      {
        v136 = v135;
      }

      if (v125 > v131)
      {
        v131 = v125;
      }

      v137 = *(a3 + 1);
      v138 = *a3;
      if (v132 >= v138)
      {
        if (*(a3 + 2) + v138 <= v132)
        {
          return;
        }
      }

      else
      {
        if (v124 > v126)
        {
          v126 = v124;
        }

        if (v128 <= v130)
        {
          v139 = v130;
        }

        else
        {
          v139 = v128;
        }

        if (v126 <= v139)
        {
          v126 = v139;
        }

        if (v126 <= v138)
        {
          return;
        }
      }

      v140 = v137;
      if (v136 >= v137)
      {
        if (*(a3 + 3) + v140 <= v136)
        {
          return;
        }
      }

      else if (v131 <= v140)
      {
        return;
      }
    }

    v75 = 6;
    if (!*(this + 27))
    {
      v75 = 4;
    }

    v76 = *(this + 18);
    if ((v76 + 4) > *(this + 19) || (v77 = *(this + 16)) != 0 && *(this + 15) + v75 > v77)
    {
      *(this + 692) = v74 | 0x20;
      CA::OGL::Context::array_flush(this);
      v76 = 0;
      *(this + 14) = this + 1386;
      *(this + 120) = xmmword_183E20E50;
    }

    v78 = *(this + 17) + 48 * v76;
    *(this + 18) = v76 + 4;
    v79 = vcvt_hight_f32_f64(vcvt_f32_f64(v151), v152);
    v80 = vcvt_hight_f32_f64(vcvt_f32_f64(v155), v156);
    v81 = vcvt_hight_f32_f64(vcvt_f32_f64(v153), v154);
    *v78 = vcvt_hight_f32_f64(vcvt_f32_f64(v149), v150);
    *(v78 + 48) = v79;
    *(v78 + 96) = v80;
    *(v78 + 144) = v81;
    if (*(this + 14))
    {
      CA::OGL::Context::array_indices(this, v76);
    }

    v83 = *(this + 17);
    v82 = *(this + 18);
    if (a5)
    {
      v84 = *a5;
      v85 = *(a5 + 1);
      v86 = *(a5 + 2);
      v87 = *(a5 + 3);
      v88 = v83 + 48 * v82;
      *(v88 - 176) = *a5;
      *(v88 - 172) = v85;
      *(v88 - 128) = v86;
      *(v88 - 124) = v85;
      *(v88 - 80) = v86;
      *(v88 - 76) = v87;
      *(v88 - 32) = v84;
      *(v88 - 28) = v87;
    }

    if (a6)
    {
      v89 = *a6;
      v90 = *(a6 + 1);
      v91 = *(a6 + 2);
      v92 = *(a6 + 3);
      v93 = v83 + 48 * v82;
      *(v93 - 168) = *a6;
      *(v93 - 164) = v90;
      *(v93 - 120) = v91;
      *(v93 - 116) = v90;
      *(v93 - 72) = v91;
      *(v93 - 68) = v92;
      *(v93 - 24) = v89;
      *(v93 - 20) = v92;
    }

    v94 = *(*(this + 2) + 8);
    v95 = v83 + 48 * v82;
    *(v95 - 160) = v94;
    *(v95 - 112) = v94;
    *(v95 - 64) = v94;
    *(v95 - 16) = v94;
    return;
  }

  v12 = a2->f64[0];
  v13 = a2->f64[1];
  v14 = a2[1].f64[0];
  v15 = a2[1].f64[1];
  if (v14 > a2->f64[0] && v15 > v13)
  {
    v17 = a4[8].f64[0];
    if ((LOBYTE(a4[9].f64[0]) & 8) != 0)
    {
      v13 = v17 * v13;
      v12 = v17 * v12;
    }

    v18 = -v13;
    v19 = v17 * v14;
    v20 = v17 * v15;
    if ((LOBYTE(a4[9].f64[0]) & 8) != 0)
    {
      v15 = v20;
      v14 = v19;
    }

    if ((LOBYTE(a4[9].f64[0]) & 4) != 0)
    {
      v13 = v12;
      v12 = v18;
    }

    v21 = -v15;
    if ((LOBYTE(a4[9].f64[0]) & 4) != 0)
    {
      v15 = v14;
      v14 = v21;
    }

    if ((LOBYTE(a4[9].f64[0]) & 2) != 0)
    {
      v12 = -v12;
      v14 = -v14;
    }

    if (LOBYTE(a4[9].f64[0]))
    {
      v13 = -v13;
    }

    v22 = a4[6].f64[0];
    v23 = a4[6].f64[1];
    v24 = v12 + v22;
    v25 = v13 + v23;
    if (LOBYTE(a4[9].f64[0]))
    {
      v15 = -v15;
    }

    v26 = v14 + v22;
    v27 = v15 + v23;
    if (v26 >= v24)
    {
      v28 = v26;
    }

    else
    {
      v28 = v24;
    }

    if (v26 >= v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = v26;
    }

    v149 = 0uLL;
    v159 = 0uLL;
    if (v27 >= v25)
    {
      v30 = v27;
    }

    else
    {
      v30 = v25;
    }

    v158 = 0uLL;
    if (v27 >= v25)
    {
      v31 = v25;
    }

    else
    {
      v31 = v27;
    }

    v157 = 0uLL;
    CA::OGL::simple_texcoords(a5, &v149, &v159, a4, a5);
    CA::OGL::simple_texcoords(a6, &v158, &v157, a4, v32);
    v33 = *(this + 692);
    if ((v33 & 0x40) == 0)
    {
      v34 = v30;
      v35 = v28;
      v36 = v31;
      v37 = v29;
LABEL_35:
      v38 = 6;
      if (!*(this + 27))
      {
        v38 = 4;
      }

      v39 = *(this + 18);
      if ((v39 + 4) > *(this + 19) || (v40 = *(this + 16)) != 0 && *(this + 15) + v38 > v40)
      {
        *(this + 692) = v33 | 0x20;
        CA::OGL::Context::array_flush(this);
        v39 = 0;
        *(this + 14) = this + 1386;
        *(this + 120) = xmmword_183E20E50;
      }

      v41 = *(this + 17) + 48 * v39;
      *(this + 18) = v39 + 4;
      CA::OGL::Context::array_indices(this, v39);
      v42 = *(*(this + 2) + 8);
      v43 = v37;
      v44 = v36;
      *v41 = v43;
      *(v41 + 4) = v44;
      *(v41 + 8) = 0x3F80000000000000;
      v45 = v35;
      *(v41 + 48) = v45;
      *(v41 + 52) = v44;
      *(v41 + 56) = 0x3F80000000000000;
      v46 = v34;
      *(v41 + 96) = v45;
      *(v41 + 100) = v46;
      *(v41 + 104) = 0x3F80000000000000;
      *(v41 + 144) = v43;
      *(v41 + 148) = v46;
      *(v41 + 152) = 0x3F80000000000000;
      if (a5)
      {
        v47 = v159;
        *(v41 + 16) = LODWORD(v149.f64[0]);
        *(v41 + 20) = v47;
        *(v41 + 64) = HIDWORD(v149.f64[0]);
        *(v41 + 68) = HIDWORD(v47);
        v48 = *(&v159 + 1);
        *(v41 + 112) = LODWORD(v149.f64[1]);
        *(v41 + 116) = v48;
        *(v41 + 160) = HIDWORD(v149.f64[1]);
        *(v41 + 164) = HIDWORD(v48);
      }

      if (a6)
      {
        v49 = DWORD1(v158);
        v50 = v157;
        *(v41 + 24) = v158;
        *(v41 + 28) = v50;
        *(v41 + 72) = v49;
        *(v41 + 76) = HIDWORD(v50);
        v51 = HIDWORD(v158);
        v52 = *(&v157 + 1);
        *(v41 + 120) = DWORD2(v158);
        *(v41 + 124) = v52;
        *(v41 + 168) = v51;
        *(v41 + 172) = HIDWORD(v52);
      }

LABEL_63:
      *(v41 + 32) = v42;
      *(v41 + 80) = v42;
      *(v41 + 128) = v42;
      *(v41 + 176) = v42;
      return;
    }

    v37 = *a3;
    v36 = *(a3 + 1);
    v35 = *(a3 + 2) + v37;
    v34 = *(a3 + 3) + v36;
    if (v28 > v37 && v29 < v35 && v30 > v36 && v31 < v34)
    {
      if (v29 >= v37)
      {
        v37 = v29;
      }

      else
      {
        v118 = (v37 - v29) / (v28 - v29);
        if (a5)
        {
          *v149.f64 = *v149.f64 + ((*(v149.f64 + 1) - *v149.f64) * v118);
          *(&v149.f64[1] + 1) = *(&v149.f64[1] + 1) + ((*&v149.f64[1] - *(&v149.f64[1] + 1)) * v118);
          *&v159 = *&v159 + ((*(&v159 + 1) - *&v159) * v118);
          *(&v159 + 3) = *(&v159 + 3) + ((*(&v159 + 2) - *(&v159 + 3)) * v118);
        }

        if (a6)
        {
          *(&v157 + 3) = *(&v157 + 3) + ((*(&v157 + 2) - *(&v157 + 3)) * v118);
          *&v158 = *&v158 + ((*(&v158 + 1) - *&v158) * v118);
          *(&v158 + 3) = *(&v158 + 3) + ((*(&v158 + 2) - *(&v158 + 3)) * v118);
          *&v157 = *&v157 + ((*(&v157 + 1) - *&v157) * v118);
        }
      }

      if (v28 <= v35)
      {
        v35 = v28;
      }

      else
      {
        v119 = (v28 - v35) / (v28 - v37);
        if (a5)
        {
          *(v149.f64 + 4) = vmla_n_f32(*(v149.f64 + 4), vsub_f32(__PAIR64__(HIDWORD(v149.f64[1]), LODWORD(v149.f64[0])), *(v149.f64 + 4)), v119);
          *(&v159 + 4) = vmla_n_f32(*(&v159 + 4), vsub_f32(__PAIR64__(HIDWORD(v159), v159), *(&v159 + 4)), v119);
        }

        if (a6)
        {
          *(&v158 + 4) = vmla_n_f32(*(&v158 + 4), vsub_f32(__PAIR64__(HIDWORD(v158), v158), *(&v158 + 4)), v119);
          *(&v157 + 4) = vmla_n_f32(*(&v157 + 4), vsub_f32(__PAIR64__(HIDWORD(v157), v157), *(&v157 + 4)), v119);
        }
      }

      if (v31 >= v36)
      {
        v36 = v31;
      }

      else
      {
        v122 = (v36 - v31) / (v30 - v31);
        if (a5)
        {
          *&v149.f64[0] = vmla_n_f32(*&v149.f64[0], vsub_f32(vrev64_s32(*&v149.f64[1]), *&v149.f64[0]), v122);
          *&v159 = vmla_n_f32(*&v159, vsub_f32(vrev64_s32(*(&v159 + 8)), *&v159), v122);
        }

        if (a6)
        {
          *&v158 = vmla_n_f32(*&v158, vsub_f32(vrev64_s32(*(&v158 + 8)), *&v158), v122);
          *&v157 = vmla_n_f32(*&v157, vsub_f32(vrev64_s32(*(&v157 + 8)), *&v157), v122);
        }
      }

      if (v30 <= v34)
      {
        v34 = v30;
      }

      else
      {
        v123 = (v30 - v34) / (v30 - v36);
        if (a5)
        {
          *&v149.f64[1] = vmla_n_f32(*&v149.f64[1], vsub_f32(vrev64_s32(*&v149.f64[0]), *&v149.f64[1]), v123);
          *(&v159 + 1) = vmla_n_f32(*(&v159 + 8), vsub_f32(vrev64_s32(*&v159), *(&v159 + 8)), v123);
        }

        if (a6)
        {
          *(&v158 + 1) = vmla_n_f32(*(&v158 + 8), vsub_f32(vrev64_s32(*&v158), *(&v158 + 8)), v123);
          *(&v157 + 1) = vmla_n_f32(*(&v157 + 8), vsub_f32(vrev64_s32(*&v157), *(&v157 + 8)), v123);
        }
      }

      goto LABEL_35;
    }
  }
}