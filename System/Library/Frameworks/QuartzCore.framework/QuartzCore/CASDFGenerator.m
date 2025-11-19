@interface CASDFGenerator
- (CASDFGenerator)init;
- (CGImage)generateSDFWithRequest:(id)a3 forImage:(CGImage *)a4;
- (void)dealloc;
@end

@implementation CASDFGenerator

- (CGImage)generateSDFWithRequest:(id)a3 forImage:(CGImage *)a4
{
  MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v130[4] = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  v11 = CAGetColorSpace(36);
  v12 = CA::Render::copy_image(v5, v11, 8, 0.0, 1.0);
  if (!v12)
  {
    v22 = 0;
    goto LABEL_104;
  }

  v13 = v12;
  v14 = [v7 includeGradient];
  [v7 padding];
  v15 = 0.0;
  if (v16 >= 0.0)
  {
    [v7 padding];
    v15 = v17;
  }

  v18 = [v7 outputBitDepth];
  v19 = 2;
  v20 = 1111970369;
  if (v18)
  {
    if (v18 == 1)
    {
      v21 = 0;
      v19 = v14 != 0;
      if (v14)
      {
        v20 = 1815491698;
      }

      else
      {
        v20 = 1278226742;
      }
    }

    else if (v18 == 2)
    {
      v19 = v14 != 0;
      if (v14)
      {
        v20 = 1380411457;
      }

      else
      {
        v20 = 1278226536;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    if (v14)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    if (v14)
    {
      v20 = 1111970369;
    }

    else
    {
      v20 = 1278226488;
    }
  }

  Width = CGImageGetWidth(v5);
  Height = CGImageGetHeight(v5);
  v102 = 0;
  v26.i64[0] = 0;
  v26.i64[1] = __PAIR64__(Height, Width);
  v103 = Width;
  v104 = Height;
  if (Width <= Height)
  {
    v27 = Height;
  }

  else
  {
    v27 = Width;
  }

  if (Width >= Height)
  {
    v28 = Height;
  }

  else
  {
    v28 = Width;
  }

  v97 = v21;
  if (v27 <= 1073741822 && v28 >= 1)
  {
    v29 = -v15;
    v30.i64[0] = vdupq_n_s32(v29).u64[0];
    v31.i64[0] = v30.i64[0];
    v31.i32[2] = Width - 2 * v29;
    v31.i32[3] = Height - 2 * v29;
    v32 = v31.i32[3] < 1 || (Width - 2 * v29) < 1;
    v30.i64[1] = 0;
    if (v32)
    {
      v33 = -1;
    }

    else
    {
      v33 = 0;
    }

    v26 = vbslq_s8(vdupq_n_s32(v33), v30, v31);
  }

  v34 = v26.i32[2];
  v99 = v26;
  v35 = v26.i32[3];
  iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v20, v26.i32[2], v26.u32[3], 0, 0, @"CA SDFGenerator Output", v25);
  if (iosurface_with_pixel_format)
  {
    v37 = iosurface_with_pixel_format;
    v38 = *(v9 + 16);
    [v7 gradientSmoothing];
    v40 = v39;
    [v7 maximumDistance];
    v42 = v41;
    if (v34 <= v35)
    {
      v43 = v35;
    }

    else
    {
      v43 = v34;
    }

    if (v42 >= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = v42;
    }

    [v7 oneValueDistance];
    v46 = v45;
    [v7 zeroValueDistance];
    v48 = v47;
    bzero(v111, 0x3F0uLL);
    *(v38 + 608) = v99;
    *(v38 + 1384) |= 2u;
    v109[4] = 0x3C003C003C003C00;
    memset(&v109[5], 0, 24);
    v109[9] = 0;
    v109[8] = 1065353216;
    v109[10] = 1025;
    v109[2] = 0;
    v109[3] = &CA::identity_transform;
    v109[0] = 0;
    v109[1] = &CA::Shape::_infinite_shape;
    (*(*v38 + 40))(v38, v37, 0, 0);
    *(*(v38 + 672) + 48) = v99;
    CA::OGL::Context::prepare_context(v38, v111);
    *(v38 + 136) = &v110;
    *(v38 + 152) = 128;
    (*(*v38 + 1088))(v38, v109);
    v98 = v19;
    *(*(v38 + 16) + 8) = 0x3C003C003C003C00;
    *(*(v38 + 16) + 497) &= ~1u;
    v49 = (*(*v38 + 696))(v38, 1, &v102, 8, @"generate-sdf-with-request");
    v50 = v49;
    if (!v49)
    {
      LODWORD(v72) = 0;
      goto LABEL_92;
    }

    (*(*v38 + 760))(v38, v49, *(v49 + 40), *(v49 + 44));
    CA::OGL::Context::push_surface(v38, v50, 1u, 0, 0);
    v51 = v13[2].u32[0];
    v52 = v13[2].u32[1];
    v125 = 0;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    memset(v112, 0, sizeof(v112));
    v53 = (*(*v13 + 104))(v13);
    v96 = v10;
    v129 = 0uLL;
    v130[0] = v51;
    v130[1] = v52;
    v107.i64[0] = 0;
    v107.i64[1] = __PAIR64__(v52, v51);
    CA::OGL::ContentsGeometry::ContentsGeometry(v112, v51, v52, v53, &v129, v107.i32, CA::Mat2Impl::mat2_identity_double, 2048, 0);
    *(&v115 + 3) = 257;
    v54 = CA::OGL::Context::bind_image(v38, 0, v13, DWORD1(v113), 0, 0, 0, v112, 0.0, &v112[17].i32[1], 0);
    if (v54)
    {
      CA::OGL::ContentsGeometry::fill_and_unbind(v112, v38, v54, 0, 0.0);
    }

    CA::OGL::Context::pop_surface(v38);
    v57 = *(v50 + 56);
    v58 = *(v50 + 60);
    if (v57 <= v58)
    {
      v59 = *(v50 + 60);
    }

    else
    {
      v59 = *(v50 + 56);
    }

    v55.i32[0] = v59;
    v60 = v57;
    v61 = v58;
    if (v59 > 1073741822)
    {
      v60 = 1.79769313e308;
      v61 = 1.79769313e308;
    }

    if (v34 <= v35)
    {
      v62 = v35;
    }

    else
    {
      v62 = v34;
    }

    v56.i32[0] = 1073741822;
    v63 = *(v50 + 48);
    v64.i64[0] = v63;
    v64.i64[1] = SHIDWORD(v63);
    v65 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v66 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v55, v56), 0), v65, vcvtq_f64_s64(v64));
    v101 = v99;
    v107 = v66;
    v108.f64[0] = v60;
    v108.f64[1] = v61;
    v66.i32[0] = v62;
    v64.i64[0] = v99.i32[0];
    v64.i64[1] = v99.i32[1];
    v67 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v66, v56), 0), v65, vcvtq_f64_s64(v64));
    if (v62 <= 1073741822)
    {
      v68 = v34;
    }

    else
    {
      v68 = 1.79769313e308;
    }

    if (v62 <= 1073741822)
    {
      v69 = v35;
    }

    else
    {
      v69 = 1.79769313e308;
    }

    v105 = v67;
    v106.f64[0] = v68;
    v106.f64[1] = v69;
    v70 = (*(*v38 + 696))(v38, 1, &v101, 0x200000, @"render-sdf-jump-surf-0");
    v71 = (*(*v38 + 696))(v38, 1, &v101, 0x200000, @"render-sdf-jump-surf-1");
    v72 = v71;
    if (v70 && v71)
    {
      (*(*v38 + 760))(v38, v70, *(v70 + 40), *(v70 + 44));
      (*(*v38 + 760))(v38, v72, *(v72 + 40), *(v72 + 44));
      if (!v14)
      {
        v100 = 0;
        v95 = 0;
LABEL_74:
        v75 = v46;
        v76 = v48;
        v77 = 1.0 / (v75 - v76);
        *&v78 = v40;
        v79 = -(v76 * v77);
        v80 = v15;
        v112[0].i64[0] = &v107;
        v112[0].i64[1] = &CA::identity_transform;
        memset(&v112[1].i32[1], 0, 28);
        v112[1].i32[0] = 63;
        *&v129 = 0;
        *(&v129 + 1) = vcvt_f32_f64(v108);
        *(*(v38 + 16) + 16) = 79;
        *(v38 + 160) = 0;
        CA::OGL::Context::bind_surface(v38, v50, 0, 0, 0, 0.0);
        CA::OGL::Context::push_surface(v38, v70, 1u, 64, 0);
        CA::OGL::emit_one_part_rect(v38, v112, &v129, 0, 0);
        CA::OGL::Context::pop_surface(v38);
        CA::OGL::Context::unbind_surface(v38, v50, 0);
        *&v129 = &v105;
        *(&v129 + 1) = &CA::identity_transform;
        memset(v130 + 4, 0, 28);
        LODWORD(v130[0]) = 63;
        v128[0] = 0;
        v128[1] = vcvt_f32_f64(v106);
        v126[0] = -v80;
        v126[1] = -v80;
        v127 = vcvt_f32_f64(vaddq_f64(v108, vdupq_lane_s64(COERCE__INT64(v80), 0)));
        *(*(v38 + 16) + 16) = 80;
        v81 = ((v44 + 1.0) - 1) | (((v44 + 1.0) - 1) >> 1);
        v82 = v81 | (v81 >> 2) | ((v81 | (v81 >> 2)) >> 4);
        v83 = v82 | (v82 >> 8) | ((v82 | (v82 >> 8)) >> 16);
        v84 = ((v83 | HIDWORD(v83)) + 1);
        *(v38 + 240) = v80;
        *(v38 + 320) = 0;
        CA::OGL::Context::bind_surface(v38, v50, 1u, 0, 0, 0.0);
        v94 = v72;
        v85 = v72;
        v86 = v70;
        do
        {
          v87 = v86;
          v86 = v85;
          v84 = v84 * 0.5;
          *(v38 + 160) = v84;
          CA::OGL::Context::bind_surface(v38, v87, 0, 0, 0, 0.0);
          CA::OGL::Context::push_surface(v38, v86, 1u, 64, 0);
          CA::OGL::emit_one_part_rect(v38, &v129, v128, v126, 0);
          CA::OGL::Context::pop_surface(v38);
          CA::OGL::Context::unbind_surface(v38, v87, 0);
          v85 = v87;
        }

        while (v84 > 1.0);
        CA::OGL::Context::unbind_surface(v38, v50, 1);
        if (v14)
        {
          CA::OGL::Context::push_surface(v38, v100, 1u, 0, 0);
          *(*(v38 + 16) + 16) = 81;
          *(v38 + 160) = 0;
          *(v38 + 164) = v80;
          *(v38 + 168) = 1065353216;
          CA::OGL::Context::bind_surface(v38, v86, 0, 0, 0, 0.0);
          CA::OGL::Context::bind_surface(v38, v50, 1u, 0, 0, 0.0);
          CA::OGL::emit_one_part_rect(v38, &v129, v128, v128, 0);
          CA::OGL::Context::unbind_surface(v38, v86, 0);
          CA::OGL::Context::unbind_surface(v38, v50, 1);
          CA::OGL::Context::pop_surface(v38);
          CA::OGL::Context::push_surface(v38, v95, 1u, 0, 0);
          *(*(v38 + 16) + 16) = 1;
          memset(&v112[3].u32[2], 0, 24);
          memset(&v112[0].u32[2], 0, 40);
          v112[0].i32[0] = v78;
          v112[0].i32[1] = v78;
          v112[3].i64[0] = 0xF00000002;
          v10 = v96;
          (*(*v38 + 928))(v38, v100, v112, 0, 1.0, 1.0);
          CA::OGL::Context::pop_surface(v38);
          v88 = 0.5;
          if (v97)
          {
            v89 = 1.0;
          }

          else
          {
            v89 = 0.5;
          }

          *(*(v38 + 16) + 16) = 82;
          if (v97)
          {
            v88 = 0.0;
          }

          *(v38 + 160) = v77;
          *(v38 + 164) = v79;
          *(v38 + 168) = v89;
          *(v38 + 172) = v88;
          CA::OGL::Context::bind_surface(v38, v100, 0, 0, 0, 0.0);
          CA::OGL::Context::bind_surface(v38, v95, 1u, 0, 0, 0.0);
          CA::OGL::emit_one_part_rect(v38, &v129, v128, v128, 0);
          CA::OGL::Context::unbind_surface(v38, v100, 0);
          CA::OGL::Context::unbind_surface(v38, v95, 1);
          CA::OGL::Context::release_surface(v38, v100);
          CA::OGL::Context::release_surface(v38, v95);
        }

        else
        {
          *(*(v38 + 16) + 16) = 81;
          *(v38 + 160) = 0;
          *(v38 + 164) = v80;
          *(v38 + 168) = v77;
          *(v38 + 172) = v79;
          CA::OGL::Context::bind_surface(v38, v86, 0, 0, 0, 0.0);
          CA::OGL::Context::bind_surface(v38, v50, 1u, 0, 0, 0.0);
          CA::OGL::emit_one_part_rect(v38, &v129, v128, v128, 0);
          CA::OGL::Context::unbind_surface(v38, v86, 0);
          CA::OGL::Context::unbind_surface(v38, v50, 1);
          v10 = v96;
        }

        CA::OGL::Context::release_surface(v38, v70);
        CA::OGL::Context::release_surface(v38, v94);
        LODWORD(v72) = 1;
        goto LABEL_91;
      }

      v100 = (*(*v38 + 696))(v38, 1, *(v38 + 672) + 48, 17, @"sdf-blur-source");
      v73 = (*(*v38 + 696))(v38, 1, *(v38 + 672) + 48, 17, @"sdf-blur-dst");
      v95 = v73;
      v74 = v73;
      if (v100 && v73)
      {
        (*(*v38 + 760))(v38, v73, *(v73 + 40), *(v73 + 44));
        (*(*v38 + 760))(v38, v100, *(v100 + 40), *(v100 + 44));
        goto LABEL_74;
      }

      if (v100)
      {
        CA::OGL::Context::release_surface(v38, v100);
        v74 = v95;
      }

      if (v74)
      {
        CA::OGL::Context::release_surface(v38, v74);
      }

      CA::OGL::Context::release_surface(v38, v70);
    }

    else
    {
      if (v70)
      {
        CA::OGL::Context::release_surface(v38, v70);
      }

      if (!v72)
      {
        goto LABEL_91;
      }
    }

    CA::OGL::Context::release_surface(v38, v72);
    LODWORD(v72) = 0;
LABEL_91:
    CA::OGL::Context::release_surface(v38, v50);
LABEL_92:
    (*(*v38 + 1096))(v38, v109);
    *(v38 + 136) = 0;
    *(v38 + 152) = 0;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    (*(*v38 + 456))(v38, 1);
    (*(*v38 + 40))(v38, 0, 0, 0);
    (*(*v38 + 48))(v38, v37);
    (*(*v38 + 264))(v38, 0);
    for (i = 504; i != -504; i -= 504)
    {
      if (*&v111[i])
      {
        __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
      }
    }

    if (v72)
    {
      if (v14)
      {
        v91 = 36;
      }

      else
      {
        v91 = 3;
      }

      v92 = CAGetColorSpace(v91);
      v22 = CACreateIOSurfaceBackedCGImage(v37, v98, v92);
    }

    else
    {
      v22 = 0;
    }

    CFRelease(v37);
    goto LABEL_102;
  }

  v22 = 0;
LABEL_102:
  if (atomic_fetch_add(&v13[1], 0xFFFFFFFF) == 1)
  {
    (*(*v13 + 16))(v13);
  }

LABEL_104:
  objc_autoreleasePoolPop(v10);
  return v22;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  renderer = self->_renderer;
  if (renderer)
  {
    CA::OGL::Renderer::~Renderer(self->_renderer);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, renderer);
  }

  (*(*self->_context + 272))(self->_context, 1);
  context = self->_context;
  if (context)
  {
    (*(*context + 8))(context);
  }

  v5.receiver = self;
  v5.super_class = CASDFGenerator;
  [(CASDFGenerator *)&v5 dealloc];
}

- (CASDFGenerator)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CASDFGenerator;
  v2 = [(CASDFGenerator *)&v9 init];
  if (v2)
  {
    v3 = CAMetalContextCreate();
    v4 = v3;
    if (v3)
    {
      v2->_context = CA::OGL::new_metal_context(v3, 0, 0, 0x22410, 2, @"com.apple.coreanimation.sdf_generator");
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v5 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
      v6 = v5;
      if (v5)
      {
        context = v2->_context;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = context;
        v5[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
        v6[7] = 0;
        *(v6 + 24) = 1;
        *(v6 + 50) = 0;
      }

      v2->_renderer = v6;
    }
  }

  return v2;
}

@end