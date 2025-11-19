void CA::OGL::SWContext::draw_elements(uint64_t this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = this;
  v164 = *MEMORY[0x1E69E9840];
  v161 = 0u;
  v162 = 0u;
  v160 = 0u;
  memset(v159, 0, sizeof(v159));
  v10 = *(this + 16);
  v11 = *(this + 680);
  v12 = *(this + 672);
  if (v11 != v12 || (!v11 ? (v13 = 0) : (v13 = (*(v12 + 144) >> 1) & 0x1F), *(this + 668) != v13))
  {
    this = CA::OGL::Context::prepare_destination_(this);
  }

  if ((*(v9 + 692) & 0x200) != 0)
  {
    this = CA::OGL::Context::flatten_detached_layers_(v9);
  }

  v14 = *(v9 + 624);
  LODWORD(v160) = v14;
  v15 = *(v9 + 626);
  DWORD1(v160) = v15;
  v16 = *(v9 + 625);
  DWORD2(v160) = v16;
  v17 = *(v9 + 627);
  HIDWORD(v160) = v17;
  if (*(v9 + 64) == 1)
  {
    v18 = *(v9 + 8);
    v19 = *(v9 + 9);
    v20 = *(v9 + 10) + v18;
    v21 = *(v9 + 11) + v19;
    if (v14 <= v18)
    {
      v14 = *(v9 + 8);
    }

    LODWORD(v160) = v14;
    if (v15 <= v19)
    {
      v15 = v19;
    }

    DWORD1(v160) = v15;
    if (v16 >= v20)
    {
      v16 = v20;
    }

    DWORD2(v160) = v16;
    if (v17 >= v21)
    {
      v17 = v21;
    }

    HIDWORD(v160) = v17;
  }

  v150 = a3;
  v158[0] = v14;
  v158[1] = v15;
  v158[2] = v16 - v14;
  v158[3] = v17 - v15;
  v151 = v10;
  if (*(v10 + 496))
  {
    v22 = CA::OGL::tex_image_count[*(v10 + 16)];
    v23 = ~(-1 << v22);
    DWORD1(v161) = v23;
    *&v159[0] = v9;
    LODWORD(v161) = 0;
    if (v22)
    {
      v24 = 0;
      bytesDeallocator = *MEMORY[0x1E695E498];
      __asm { FMOV            V8.2S, #1.0 }

      v143 = vdupq_n_s64(2uLL);
      v145 = v9;
      while ((v23 & 1) == 0)
      {
LABEL_175:
        ++v24;
        v77 = v23 > 1;
        v23 >>= 1;
        if (!v77)
        {
          goto LABEL_228;
        }
      }

      v30 = *(v151 + 144 + 2 * v24);
      v31 = v159 + 11 * v24 + 1;
      v32 = *(v151 + 176 + 8 * v24);
      v33 = *(v151 + 17 + v24);
      v31[9] = 0;
      v31[8].i16[0] = 0;
      v31[1].i32[0] = -1;
      if ((v30 - 1) >= 2)
      {
        if (v30 == 3)
        {
          *v31 = *(v32 + 160);
          v31[2] = *(v32 + 152);
          v31[8].i8[0] = 8 * ((*(v32 + 192) & 0xF) != 0);
          v31[8].i8[1] = 8 * (*(v32 + 192) > 0xFu);
          v31[3] = *(v32 + 56);
          if ((*(v32 + 92) & 7) != 0)
          {
            v37 = 1;
          }

          else
          {
            v37 = 9;
          }

          v31[1].i32[0] = v37;
          this = &CA::OGL::SW::sampler_functions::samplers[16 * v37];
          goto LABEL_120;
        }

        if (v30 == 4)
        {
          v31[3] = 0x100000001;
          if (v32 > 3)
          {
            switch(v32)
            {
              case 4:
                {
                  v101 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                  v102 = 0;
                  v103 = xmmword_183E20FF0;
                  do
                  {
                    *&v101[v102] = vbslq_s8(vceqzq_s64(vandq_s8(v103, vdupq_n_s64(4uLL))), vdupq_n_s64(CA::OGL::SW::uneven_circle_sampler<false,false>), vdupq_n_s64(CA::OGL::SW::uneven_circle_sampler<true,false>));
                    v103 = vaddq_s64(v103, vdupq_n_s64(2uLL));
                    v102 += 16;
                  }

                  while (v102 != 128);
                  CA::OGL::SW::uneven_circle_samplers(void)::s = v101;
                  v9 = v145;
                }

                this = CA::OGL::SW::uneven_circle_samplers(void)::s;
                goto LABEL_98;
              case 5:
                {
                  v107 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                  v108 = 0;
                  v109 = xmmword_183E20FF0;
                  do
                  {
                    *&v107[v108] = vbslq_s8(vceqzq_s64(vandq_s8(v109, vdupq_n_s64(4uLL))), vdupq_n_s64(CA::OGL::SW::uneven_circle_sampler<false,true>), vdupq_n_s64(CA::OGL::SW::uneven_circle_sampler<true,true>));
                    v109 = vaddq_s64(v109, vdupq_n_s64(2uLL));
                    v108 += 16;
                  }

                  while (v108 != 128);
                  CA::OGL::SW::uneven_supercircle_samplers(void)::s = v107;
                  v9 = v145;
                }

                this = CA::OGL::SW::uneven_supercircle_samplers(void)::s;
                goto LABEL_98;
              case 6:
                {
                  v95 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                  v96 = 0;
                  v97 = xmmword_183E20FF0;
                  do
                  {
                    *&v95[v96] = vbslq_s8(vceqzq_s64(vandq_s8(v97, vdupq_n_s64(4uLL))), vdupq_n_s64(CA::OGL::SW::gaussian_sampler<false>), vdupq_n_s64(CA::OGL::SW::gaussian_sampler<true>));
                    v97 = vaddq_s64(v97, vdupq_n_s64(2uLL));
                    v96 += 16;
                  }

                  while (v96 != 128);
                  CA::OGL::SW::gaussian_samplers(void)::s = v95;
                  v9 = v145;
                }

                this = CA::OGL::SW::gaussian_samplers(void)::s;
                v31[6] = CA::OGL::SW::gaussian_samplers(void)::s;
                *v31 = &CA::OGL::gaussian_table;
LABEL_121:
                v73 = v31[3];
                v31[4] = vadd_s32(vshl_n_s32(v73, 0x10uLL), -1);
                v31[5] = vdiv_f32(_D8, vcvt_f32_u32(v73));
                if (v31[8].u8[0] != v31[8].u8[1])
                {
                  LODWORD(v161) = v161 | 1;
                }

                if (v33 > 27)
                {
                  if ((v33 - 28) < 4)
                  {
                    if (v31[1].i32[0] == 25)
                    {
                      {
                        if (this)
                        {
                          v78 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                          v79 = 0;
                          v80 = xmmword_183E20FF0;
                          do
                          {
                            *&v78[v79] = vbslq_s8(vceqzq_s64(vandq_s8(v80, vdupq_n_s64(4uLL))), vdupq_n_s64(CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,CA::Vec4<float>,true,true,false,true>), vdupq_n_s64(CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,CA::Vec4<float>,true,true,true,true>));
                            v80 = vaddq_s64(v80, v143);
                            v79 += 16;
                          }

                          while (v79 != 128);
                          CA::OGL::SW::prepare_texture(CA::OGL::SWContext &,CA::OGL::SW::Texture *,unsigned int,unsigned long,CA::OGL::ImageFunction,CA::OGL::SW::Poly::Flags *)::Lh_samplers = v78;
                          v9 = v145;
                        }
                      }

                      if (v33 > 29)
                      {
                        if (v33 == 30)
                        {
                          {
                            v90 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                            memset_pattern16(v90, off_1EF1F9D00, 0x80uLL);
                            CA::OGL::SW::render_samplers<CA::Vec4<float>>(CA::OGL::ImageFunction)::s = v90;
                            v9 = v145;
                          }

                          this = CA::OGL::SW::render_samplers<CA::Vec4<float>>(CA::OGL::ImageFunction)::s;
                        }

                        else if (v33 == 31)
                        {
                          {
                            v86 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                            memset_pattern16(v86, off_1EF1F9CF0, 0x80uLL);
                            CA::OGL::SW::render_samplers<CA::Vec4<float>>(CA::OGL::ImageFunction)::s = v86;
                            v9 = v145;
                          }

                          this = CA::OGL::SW::render_samplers<CA::Vec4<float>>(CA::OGL::ImageFunction)::s;
                        }

                        else
                        {
                          this = CA::OGL::SW::incomplete_samplers(this);
                        }
                      }

                      else if (v33 == 28)
                      {
                        {
                          v88 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                          memset_pattern16(v88, off_1EF1F9D20, 0x80uLL);
                          CA::OGL::SW::render_samplers<CA::Vec4<float>>(CA::OGL::ImageFunction)::s = v88;
                          v9 = v145;
                        }

                        this = CA::OGL::SW::render_samplers<CA::Vec4<float>>(CA::OGL::ImageFunction)::s;
                      }

                      else
                      {
                        {
                          v84 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                          memset_pattern16(v84, off_1EF1F9D10, 0x80uLL);
                          CA::OGL::SW::render_samplers<CA::Vec4<float>>(CA::OGL::ImageFunction)::s = v84;
                          v9 = v145;
                        }

                        this = CA::OGL::SW::render_samplers<CA::Vec4<float>>(CA::OGL::ImageFunction)::s;
                      }

                      v76 = CA::OGL::SW::prepare_texture(CA::OGL::SWContext &,CA::OGL::SW::Texture *,unsigned int,unsigned long,CA::OGL::ImageFunction,CA::OGL::SW::Poly::Flags *)::Lh_samplers;
                      v31[6] = this;
                      v31[7] = v76;
                    }

                    else
                    {
                      v31[7] = this;
                      if (v33 > 29)
                      {
                        if (v33 == 30)
                        {
                          {
                            v91 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                            memset_pattern16(v91, off_1EF1F9D40, 0x80uLL);
                            CA::OGL::SW::render_samplers<unsigned int>(CA::OGL::ImageFunction)::s = v91;
                            v9 = v145;
                          }

                          this = CA::OGL::SW::render_samplers<unsigned int>(CA::OGL::ImageFunction)::s;
                        }

                        else if (v33 == 31)
                        {
                          {
                            v87 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                            memset_pattern16(v87, off_1EF1F9D30, 0x80uLL);
                            CA::OGL::SW::render_samplers<unsigned int>(CA::OGL::ImageFunction)::s = v87;
                            v9 = v145;
                          }

                          this = CA::OGL::SW::render_samplers<unsigned int>(CA::OGL::ImageFunction)::s;
                        }

                        else
                        {
                          this = CA::OGL::SW::incomplete_samplers(this);
                        }
                      }

                      else if (v33 == 28)
                      {
                        {
                          v89 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                          memset_pattern16(v89, off_1EF1F9D60, 0x80uLL);
                          CA::OGL::SW::render_samplers<unsigned int>(CA::OGL::ImageFunction)::s = v89;
                          v9 = v145;
                        }

                        this = CA::OGL::SW::render_samplers<unsigned int>(CA::OGL::ImageFunction)::s;
                      }

                      else
                      {
                        {
                          v85 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                          memset_pattern16(v85, off_1EF1F9D50, 0x80uLL);
                          CA::OGL::SW::render_samplers<unsigned int>(CA::OGL::ImageFunction)::s = v85;
                          v9 = v145;
                        }

                        this = CA::OGL::SW::render_samplers<unsigned int>(CA::OGL::ImageFunction)::s;
                      }

                      v31[6] = this;
                    }

                    goto LABEL_175;
                  }

                  if (v33 == 46)
                  {
                    {
                      if (this)
                      {
                        v83 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                        memset_pattern16(v83, off_1EF1F9D70, 0x80uLL);
                        CA::OGL::SW::prepare_texture(CA::OGL::SWContext &,CA::OGL::SW::Texture *,unsigned int,unsigned long,CA::OGL::ImageFunction,CA::OGL::SW::Poly::Flags *)::sdf_rgba_samplers = v83;
                        v9 = v145;
                      }
                    }

                    v75 = v31[1].u32[0];
                    if (v75 > 0x1C)
                    {
                      this = CA::OGL::SW::incomplete_samplers(this);
                    }

                    else
                    {
                      this = &CA::OGL::SW::sampler_functions::samplers[16 * v75];
                    }

                    v31[6] = CA::OGL::SW::prepare_texture(CA::OGL::SWContext &,CA::OGL::SW::Texture *,unsigned int,unsigned long,CA::OGL::ImageFunction,CA::OGL::SW::Poly::Flags *)::sdf_rgba_samplers;
                    v31[7] = this;
                    goto LABEL_175;
                  }

                  if (v33 == 42)
                  {
                    goto LABEL_149;
                  }

                  goto LABEL_141;
                }

                if (v33 > 20)
                {
                  if (v33 == 21)
                  {
                    {
                      if (this)
                      {
                        v82 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                        memset_pattern16(v82, off_1EF1F9D80, 0x80uLL);
                        CA::OGL::SW::prepare_texture(CA::OGL::SWContext &,CA::OGL::SW::Texture *,unsigned int,unsigned long,CA::OGL::ImageFunction,CA::OGL::SW::Poly::Flags *)::supercircle_sdf_samplers = v82;
                        v9 = v145;
                      }
                    }

                    v74 = CA::OGL::SW::prepare_texture(CA::OGL::SWContext &,CA::OGL::SW::Texture *,unsigned int,unsigned long,CA::OGL::ImageFunction,CA::OGL::SW::Poly::Flags *)::supercircle_sdf_samplers;
                    goto LABEL_148;
                  }

                  if (v33 != 25)
                  {
LABEL_141:
                    this = CA::OGL::SW::incomplete_samplers(this);
                    v31[6] = this;
                  }
                }

                else if (v33 >= 2)
                {
                  if (v33 == 20)
                  {
                    {
                      if (this)
                      {
                        v81 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                        memset_pattern16(v81, off_1EF1F9D90, 0x80uLL);
                        CA::OGL::SW::prepare_texture(CA::OGL::SWContext &,CA::OGL::SW::Texture *,unsigned int,unsigned long,CA::OGL::ImageFunction,CA::OGL::SW::Poly::Flags *)::rect_sdf_samplers = v81;
                        v9 = v145;
                      }
                    }

                    v74 = CA::OGL::SW::prepare_texture(CA::OGL::SWContext &,CA::OGL::SW::Texture *,unsigned int,unsigned long,CA::OGL::ImageFunction,CA::OGL::SW::Poly::Flags *)::rect_sdf_samplers;
LABEL_148:
                    v31[6] = v74;
                    goto LABEL_149;
                  }

                  goto LABEL_141;
                }

LABEL_149:
                v31[7] = 0;
                goto LABEL_175;
            }
          }

          else
          {
            switch(v32)
            {
              case 1:
                {
                  v98 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                  v99 = 0;
                  v100 = xmmword_183E20FF0;
                  do
                  {
                    *&v98[v99] = vbslq_s8(vceqzq_s64(vandq_s8(v100, vdupq_n_s64(4uLL))), vdupq_n_s64(CA::OGL::SW::square_sampler<false>), vdupq_n_s64(CA::OGL::SW::square_sampler<true>));
                    v100 = vaddq_s64(v100, vdupq_n_s64(2uLL));
                    v99 += 16;
                  }

                  while (v99 != 128);
                  CA::OGL::SW::square_samplers(void)::s = v98;
                  v9 = v145;
                }

                this = CA::OGL::SW::square_samplers(void)::s;
                goto LABEL_98;
              case 2:
                {
                  v104 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                  v105 = 0;
                  v106 = xmmword_183E20FF0;
                  do
                  {
                    *&v104[v105] = vbslq_s8(vceqzq_s64(vandq_s8(v106, vdupq_n_s64(4uLL))), vdupq_n_s64(CA::OGL::SW::circle_sampler<false,false>), vdupq_n_s64(CA::OGL::SW::circle_sampler<true,false>));
                    v106 = vaddq_s64(v106, vdupq_n_s64(2uLL));
                    v105 += 16;
                  }

                  while (v105 != 128);
                  CA::OGL::SW::circle_samplers(void)::s = v104;
                  v9 = v145;
                }

                this = CA::OGL::SW::circle_samplers(void)::s;
                goto LABEL_98;
              case 3:
                {
                  v92 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
                  v93 = 0;
                  v94 = xmmword_183E20FF0;
                  do
                  {
                    *&v92[v93] = vbslq_s8(vceqzq_s64(vandq_s8(v94, vdupq_n_s64(4uLL))), vdupq_n_s64(CA::OGL::SW::circle_sampler<false,true>), vdupq_n_s64(CA::OGL::SW::circle_sampler<true,true>));
                    v94 = vaddq_s64(v94, vdupq_n_s64(2uLL));
                    v93 += 16;
                  }

                  while (v93 != 128);
                  CA::OGL::SW::supercircle_samplers(void)::s = v92;
                  v9 = v145;
                }

                this = CA::OGL::SW::supercircle_samplers(void)::s;
LABEL_98:
                v31[6] = this;
                LODWORD(v161) = v161 | 1;
                goto LABEL_121;
            }
          }
        }

        else
        {
          v31[3] = 0x100000001;
        }

        goto LABEL_119;
      }

      v31[8].i8[0] = 8 * ((*(v32 + 52) & 0xF0000) != 0);
      v31[8].i8[1] = 8 * ((*(v32 + 52) & 0xF00000) != 0);
      v34 = *(v32 + 8);
      if (v34 && *(v32 + 112) == 1)
      {
        *v31 = *(v34 + 112);
        v35 = *(v34 + 168);
        v31[1].i32[0] = v35;
        v31[2] = *(v34 + 176);
        v31[3] = *(v34 + 16);
        if (v30 != 2 || (this = CA::Render::format_opaque_format(v35), (this & 0x80000000) != 0))
        {
          if (v35 > 0x1C)
          {
            this = CA::OGL::SW::incomplete_samplers(this);
            goto LABEL_89;
          }
        }

        else
        {
          v31[1].i32[0] = this;
          LODWORD(v35) = this;
        }

        this = &CA::OGL::SW::sampler_functions::samplers[(16 * v35)];
LABEL_89:
        v9 = v145;
        goto LABEL_120;
      }

      v36 = *(v32 + 72);
      if (v36)
      {
        this = IOSurfaceGetProtectionOptions();
        if (this)
        {
LABEL_39:
          this = CA::OGL::SW::incomplete_samplers(this);
          v31[6] = this;
          goto LABEL_121;
        }

        v47 = *(v32 + 80);
        v31[1].i32[0] = v47;
        if (v47 == -1)
        {
          if (*(v32 + 88))
          {
            goto LABEL_77;
          }

          v140 = *(v32 + 8);
          buffera = *(v32 + 72);
          PixelFormat = IOSurfaceGetPixelFormat(buffera);
          if ((PixelFormat | 0x10) == 0x34323076)
          {
            bytesPerRowa = PixelFormat;
            Width = IOSurfaceGetWidth(buffera);
            Height = IOSurfaceGetHeight(buffera);
            v132 = Width;
            v51 = CA::Render::format_rowbytes(1, Width);
            v52 = Height;
            v53 = v51;
            if (is_mul_ok(v51, v52))
            {
              v54 = (v51 * v52);
            }

            else
            {
              v54 = 0;
            }

            v152 = 0;
            v55 = CA::Render::aligned_malloc(v54, &v152, 0);
            if (v55)
            {
              v137 = v55;
              if (!IOSurfaceLock(buffera, 1u, 0))
              {
                if ((bytesPerRowa | 0x10) == 0x34323076)
                {
                  bytesPerRowb = IOSurfaceGetBaseAddressOfPlane(buffera, 0);
                  BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(buffera, 0);
                  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(buffera, 1uLL);
                  v127 = IOSurfaceGetBytesPerRowOfPlane(buffera, 1uLL);
                  v129 = CA::Render::Surface::ycbcr_matrix(v140, v56);
                  CA::Render::Surface::chroma_location(v140, v57);
                  if (bytesPerRowb)
                  {
                    if (BaseAddressOfPlane && v129 <= 6)
                    {
                      memset(&outInfo, 0, sizeof(outInfo));
                      vImageConvert_YpCbCrToARGB_GenerateConversion(&CA::convert_ycbcr420_to_argb8888_host(void const*,long,void const*,long,void *,long,long,long,int,int)::ycbcr_matrices + v129, &CA::convert_ycbcr420_to_argb8888_host(void const*,long,void const*,long,void *,long,long,long,int,int)::ycbcr_ranges + v129, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0);
                      srcYp.data = bytesPerRowb;
                      srcYp.height = v52;
                      srcYp.width = v132;
                      srcYp.rowBytes = BytesPerRowOfPlane;
                      srcCbCr.data = BaseAddressOfPlane;
                      srcCbCr.height = v52;
                      srcCbCr.width = v132;
                      srcCbCr.rowBytes = v127;
                      dest.data = v137;
                      dest.height = v52;
                      dest.width = v132;
                      dest.rowBytes = v53;
                      *permuteMap = 66051;
                      vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &outInfo, permuteMap, 0xFFu, 0x10u);
                    }
                  }
                }

                IOSurfaceUnlock(buffera, 1u, 0);
              }

              v58 = v152;
              *(v32 + 88) = v137;
              *(v32 + 96) = v58;
              *(v32 + 104) = v53;
            }

            v9 = v145;
          }

          if (*(v32 + 88))
          {
LABEL_77:
            if ((*(v32 + 59) & 2) == 0)
            {
              *(v9 + 97) = x_list_prepend(*(v9 + 97), v32);
              *(v32 + 52) |= 0x200000000000000uLL;
            }

            v31[1].i32[0] = 1;
          }
        }

        if (v30 == 2)
        {
          v59 = CA::Render::format_opaque_format(v31[1].u32[0]);
          if ((v59 & 0x80000000) == 0)
          {
            v31[1].i32[0] = v59;
          }
        }

        v60 = *(v32 + 88);
        if (v60)
        {
          *v31 = v60;
          v31[2] = *(v32 + 104);
          v31[9] = 0;
          v31[10] = 0;
        }

        else
        {
          this = IOSurfaceLock(v36, 1u, 0);
          if (this)
          {
            goto LABEL_39;
          }

          *v31 = IOSurfaceGetBaseAddress(v36);
          v31[2] = IOSurfaceGetBytesPerRow(v36);
          v31[9] = CA::OGL::SW::unlock_iosurface;
          v31[10] = v36;
        }

        v31[3].i32[0] = IOSurfaceGetWidth(v36);
        this = IOSurfaceGetHeight(v36);
        v31[3].i32[1] = this;
        v61 = v31[1].u32[0];
        if (v61 <= 0x1C)
        {
          this = &CA::OGL::SW::sampler_functions::samplers[16 * v61];
LABEL_120:
          v31[6] = this;
          goto LABEL_121;
        }
      }

      else
      {
        if (*(v34 + 12) != 9)
        {
          goto LABEL_39;
        }

        if (*(v34 + 192))
        {
          if (*(v32 + 88))
          {
            goto LABEL_109;
          }

          v38 = *(v34 + 20);
          v139 = *(v34 + 16);
          v39 = CA::Render::format_rowbytes(1, *(v34 + 16));
          v40 = (v39 * v38);
          buffer = v38;
          if (!is_mul_ok(v39, v38))
          {
            v40 = 0;
          }

          v131 = v40;
          bytesPerRow = v39;
          v41 = **(v34 + 152);
          v136 = *(v34 + 112);
          v42 = **(v34 + 144);
          v43 = malloc_type_malloc(v41 + 68, 0x100004077774924uLL);
          v44 = v43;
          *(v43 + 2) = 169478669;
          *v43 = 0xBB31312058544BABLL;
          *(v43 + 12) = xmmword_183E21390;
          v45 = *(v34 + 172) - 1;
          if (v45 > 0x1B)
          {
            v46 = 0;
          }

          else
          {
            v46 = dword_183E2FE78[v45];
          }

          *(v43 + 7) = v46;
          *(v43 + 8) = 6408;
          *(v43 + 9) = v139;
          *(v43 + 10) = buffer;
          *(v43 + 44) = xmmword_183E213A0;
          *(v43 + 15) = 0;
          *(v43 + 16) = v41;
          memcpy(v43 + 68, (v136 + v42), v41);
          *outInfo.opaque = 0;
          v62 = CFDataCreateWithBytesNoCopy(0, v44, v41 + 68, bytesDeallocator);
          v63 = CGImageSourceCreateWithData(v62, 0);
          CFRelease(v62);
          if (v63)
          {
            ImageAtIndex = CGImageSourceCreateImageAtIndex(v63, 0, 0);
            CFRelease(v63);
            if (ImageAtIndex)
            {
              v65 = CA::Render::aligned_malloc(v131, outInfo.opaque, 0);
              if (v65)
              {
                v66 = v65;
                ColorSpace = CGImageGetColorSpace(ImageAtIndex);
                v138 = v66;
                v68 = CGBitmapContextCreate(v66, v139, buffer, 8uLL, bytesPerRow, ColorSpace, 0x2002u);
                v165.size.width = v139;
                v165.size.height = buffer;
                v165.origin.x = 0.0;
                v165.origin.y = 0.0;
                v69 = v68;
                CGContextDrawImage(v68, v165, ImageAtIndex);
                CGImageRelease(ImageAtIndex);
                CGContextRelease(v69);
                v70 = *outInfo.opaque;
                *(v32 + 88) = v138;
                *(v32 + 96) = v70;
                *(v32 + 104) = bytesPerRow;
              }

              else
              {
                CGImageRelease(ImageAtIndex);
              }
            }
          }

          free(v44);
          v9 = v145;
          if (*(v32 + 88))
          {
LABEL_109:
            if ((*(v32 + 59) & 2) == 0)
            {
              this = x_list_prepend(*(v9 + 97), v32);
              *(v9 + 97) = this;
              *(v32 + 52) |= 0x200000000000000uLL;
            }

            v31[1].i32[0] = 1;
          }
        }

        if (v30 == 2)
        {
          this = CA::Render::format_opaque_format(v31[1].u32[0]);
          if ((this & 0x80000000) == 0)
          {
            v31[1].i32[0] = this;
          }
        }

        v71 = *(v32 + 88);
        if (!*&v71)
        {
          goto LABEL_39;
        }

        v31[3] = *(v34 + 16);
        *v31 = v71;
        v31[2] = *(v32 + 104);
        v72 = v31[1].u32[0];
        if (v72 <= 0x1C)
        {
          this = &CA::OGL::SW::sampler_functions::samplers[16 * v72];
          goto LABEL_120;
        }
      }

LABEL_119:
      this = CA::OGL::SW::incomplete_samplers(this);
      goto LABEL_120;
    }
  }

  else
  {
    *&v159[0] = v9;
    *&v161 = 0;
  }

LABEL_228:
  BYTE8(v162) = *(v151 + 497) & 1;
  if (BYTE8(v162))
  {
    v110 = *(v151 + 496);
    v111 = v150;
    if (v110 >= 0x3C)
    {
      v112 = 0;
      *(&v161 + 1) = 0;
      v113 = (v151 + 288);
    }

    else
    {
      v112 = *(&off_1EF1F9DA0 + *(v151 + 496));
      *(&v161 + 1) = v112;
      v113 = (v151 + 288);
      if (v110 - 57 <= 1)
      {
        *&v162 = *v113;
        goto LABEL_237;
      }
    }

    HIDWORD(v116) = bswap32(CA::Vec4<float>::word32(v113));
    LODWORD(v116) = HIDWORD(v116);
    LODWORD(v162) = v116 >> 8;
    HIDWORD(v116) = bswap32(CA::Vec4<float>::word32((v151 + 304)));
    LODWORD(v116) = HIDWORD(v116);
    DWORD1(v162) = v116 >> 8;
LABEL_237:
    v117 = a5;
    v118 = a8;
    v119 = a4;
    v120 = a2;
    if (!v112)
    {
      BYTE8(v162) = 0;
    }

    goto LABEL_243;
  }

  v111 = v150;
  if ((*(v151 + 16) & 0xFE) == 0x10)
  {
    v114 = *(v151 + 496);
    if (v114 > 0x3B)
    {
      v115 = 0;
    }

    else
    {
      v115 = *(&off_1EF1F9DA0 + v114);
    }

    *(&v161 + 1) = v115;
    HIDWORD(v121) = bswap32(CA::Vec4<float>::word32((v151 + 288)));
    LODWORD(v121) = HIDWORD(v121);
    LODWORD(v162) = v121 >> 8;
    v117 = a5;
    v118 = a8;
    v119 = a4;
    v120 = a2;
    if (!v115)
    {
      *(&v161 + 1) = CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Copy,false>::blend;
    }
  }

  else
  {
    *(&v161 + 1) = 0;
    v117 = a5;
    v118 = a8;
    v119 = a4;
    v120 = a2;
  }

LABEL_243:
  v122 = *(v9 + 171);
  v157[0] = &unk_1EF1F9CA8;
  v157[1] = v159;
  v157[3] = v157;
  CA::OGL::clip_primitives(v120, v111, v119, v117, v158, v118, v122, 0, 0, v157, 0);
  std::__function::__value_func<BOOL ()(CA::OGL::Vertex *,unsigned int)>::~__value_func[abi:nn200100](v157);
  v123 = DWORD1(v161);
  if (DWORD1(v161))
  {
    v124 = &v159[5] + 1;
    do
    {
      if (v123)
      {
        v125 = *(v124 - 1);
        if (v125)
        {
          v125(*v124);
        }
      }

      v124 += 11;
      v77 = v123 > 1;
      v123 >>= 1;
    }

    while (v77);
  }

  CA::OGL::Context::marked_destination(v9);
  v126.i32[0] = 1;
  v126.i32[1] = v111;
  *(v9 + 157) = vadd_s32(*(v9 + 1256), v126);
}

uint64_t CA::Vec4<float>::word32(float *a1)
{
  v1 = (*a1 * 255.0) + 0.5;
  v2 = v1 > 255.0 || v1 < 0.0;
  if (v1 < 0.0 && v1 <= 255.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 255;
  }

  if (!v2)
  {
    v3 = v1;
  }

  v4 = (a1[1] * 255.0) + 0.5;
  v5 = v4 > 255.0 || v4 < 0.0;
  if (v4 < 0.0 && v4 <= 255.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 65280;
  }

  if (!v5)
  {
    v6 = v4 << 8;
  }

  v7 = (a1[2] * 255.0) + 0.5;
  v8 = v7 > 255.0 || v7 < 0.0;
  if (v7 < 0.0 && v7 <= 255.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 16711680;
  }

  if (!v8)
  {
    v9 = v7 << 16;
  }

  v10 = (a1[3] * 255.0) + 0.5;
  v11 = v10 > 255.0 || v10 < 0.0;
  if (v10 < 0.0 && v10 <= 255.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = -16777216;
  }

  if (!v11)
  {
    v12 = v10 << 24;
  }

  return v6 | v3 | v9 | v12;
}

uint64_t std::__function::__value_func<BOOL ()(CA::OGL::Vertex *,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void CA::OGL::SW::draw_polygon(uint64_t a1, unsigned __int32 a2, int *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = *(*a3 + 16);
  v7 = a2 - 1;
  MEMORY[0x1EEE9AC00](a1);
  v10 = ((&v63[3] - v9 + 3) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    bzero(v63 - v9, v8 + 95);
    if (a3[73])
    {
      v12 = 779;
    }

    else
    {
      v12 = 11;
    }

    v10->i32[0] = a2;
    v10->i32[1] = v12;
    v13 = a3[73];
    v14 = v12 | 0xC00;
    if ((v13 & 2) == 0)
    {
      v14 = v12;
    }

    if ((v13 & 4) != 0)
    {
      v14 |= 0x3000u;
    }

    if ((v13 & 6) != 0)
    {
      v10->i32[1] = v14;
      v12 = v14;
    }

    v15 = *(a1 + 32);
    if (!*(v6 + 496))
    {
      v15 = 0;
    }

    if (!a2)
    {
      goto LABEL_35;
    }

    v16 = 0;
    v17 = (a1 + 20);
    v18 = &v10[3].f32[1];
    v11 = 80105;
    v19 = a2;
    do
    {
      v20 = (a1 + 48 * v16);
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = v20[3];
      v24 = 1.0;
      if (v23 != 1.0)
      {
        v12 = v14 | 4;
        v10->i32[1] = v14 | 4;
        v14 |= 4u;
        v24 = 1.0 / v23;
      }

      v25 = &v10[4 * v16 + 1];
      *v25 = v21;
      *(v25 + 4) = v22;
      *(v25 + 8) = v23;
      *(v25 + 12) = v24;
      *(v25 + 16) = 0uLL;
      *(v25 + 32) = 0uLL;
      *(v25 + 48) = 0uLL;
      if ((v14 & 0xF0) == 0 && *(v20 + 4) != v15 && *(v6 + 496) != 0)
      {
        v27 = *(v6 + 16);
        if (v27 <= 0x10 && ((1 << v27) & 0x138E9) != 0)
        {
          v12 = v14 | 0xF0;
          v10->i32[1] = v14 | 0xF0;
          v14 |= 0xF0u;
        }
      }

      v28 = a3[73];
      if (v28)
      {
        v29 = (v6 + 108);
        v30 = v18;
        v31 = v17;
        do
        {
          if (v28)
          {
            *(v30 - 1) = *(v29 - 1) + (*(v29 - 3) * *(v31 - 1));
            *v30 = *v29 + (*(v29 - 2) * *v31);
          }

          v31 += 2;
          v30 += 2;
          v29 += 4;
          v32 = v28 > 1;
          v28 >>= 1;
        }

        while (v32);
      }

      ++v16;
      v17 += 12;
      v18 += 16;
    }

    while (v16 != a2);
    if ((v14 & 0xF0) != 0)
    {
      v33 = v10 + 2;
      v34 = (a1 + 32);
      do
      {
        v35 = *v34;
        v34 += 6;
        *v33 = vcvtq_f32_f16(v35);
        v33 += 4;
        --v19;
      }

      while (v19);
    }

    else
    {
LABEL_35:
      v15 = v15 & 0xFFFF0000 | WORD2(v15) | (v15 << 32) | v15 & 0xFFFF000000000000;
    }

    v36 = CA::OGL::ExtendedColor::word32(v11, v15);
    f32 = v10[4 * v7 + 1].f32;
    v38 = *f32;
    v39 = f32[1];
    if ((v12 & 8) != 0)
    {
      v40 = f32[3];
      v38 = v40 * v38;
      v39 = v40 * v39;
    }

    if (a2)
    {
      v41 = 0;
      v42 = &v10[1].f32[3];
      v43 = 0.0;
      v44 = -1;
      v45 = -INFINITY;
      v46 = INFINITY;
      v47 = INFINITY;
      v48 = -INFINITY;
      do
      {
        v49 = *(v42 - 3);
        v50 = *(v42 - 2);
        if ((v12 & 8) != 0)
        {
          v49 = *v42 * v49;
          v50 = *v42 * v50;
        }

        v43 = (v43 - (v49 * v39)) + (v50 * v38);
        if (v50 < v47)
        {
          v44 = v41;
          v47 = v50;
        }

        if (v50 > v48)
        {
          v48 = v50;
        }

        if (v49 < v46)
        {
          v46 = v49;
        }

        ++v41;
        if (v49 > v45)
        {
          v45 = v49;
        }

        v42 += 16;
        v39 = v50;
        v38 = v49;
      }

      while (a2 != v41);
      v51 = v43 * 0.5;
    }

    else
    {
      v44 = -1;
      v51 = 0.0;
      v47 = INFINITY;
      v48 = -INFINITY;
      v45 = -INFINITY;
      v46 = INFINITY;
    }

    if (fabsf(v51) >= 0.00005)
    {
      v52 = a3[69];
      if (v48 >= v52)
      {
        v53 = a3[71];
        if (v47 < v53 && v45 >= a3[68] && v46 < a3[70])
        {
          if ((v12 & 4) != 0)
          {
            if (a2)
            {
              v55 = 0;
              do
              {
                if ((v12 & 0xFFFFFF03) != 0)
                {
                  v56 = v10[4 * v55 + 1].f32;
                  v57 = v56[3];
                  v58 = v12 & 0xFFFFFF03;
                  do
                  {
                    if (v58)
                    {
                      *v56 = *v56 * v57;
                    }

                    ++v56;
                    v32 = v58 > 1;
                    v58 >>= 1;
                  }

                  while (v32);
                }

                ++v55;
              }

              while (v55 != a2);
            }

            v12 &= ~4u;
            v10->i32[1] = v12;
            v54 = 1;
          }

          else
          {
            v54 = 0;
          }

          v59 = vcvtps_s32_f32(v47 + -0.5);
          if ((v47 - ceilf(v47 + -0.5)) == 0.5)
          {
            ++v59;
          }

          v63[2] = v59;
          v60 = vcvtms_s32_f32(v47);
          v61 = vcvtps_s32_f32(v48);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZN2CA3OGL2SW12scan_convertEPKNS1_11RenderStateEPNS1_4PolyEj_block_invoke;
          block[3] = &__block_descriptor_tmp_7105;
          block[4] = a3;
          block[5] = v10;
          if (v52 <= v60)
          {
            v52 = v60;
          }

          if (v53 >= v61)
          {
            v53 = v61;
          }

          v65 = v12 & 0xFFFFFFFD;
          v66 = v36;
          v67 = v51;
          if (v53 - v52 <= 7)
          {
            v62 = 1;
          }

          else
          {
            v62 = (v53 - v52) >> 2;
          }

          v68 = v44;
          v69 = v59;
          v70 = 4;
          v71 = v52;
          v72 = v53;
          v73 = v59;
          v74 = v54;
          v75 = 0;
          v76 = 0;
          dispatch_apply(v62, 0, block);
        }
      }
    }
  }
}

_DWORD *___ZN2CA3OGL2SW12scan_convertEPKNS1_11RenderStateEPNS1_4PolyEj_block_invoke(uint64_t a1, double a2, float32x4_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v140 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  result = (a1 + 32);
  v13.i32[1] = 0;
  v13.i64[1] = 0;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v14 = *v12;
  if (v14 >= 1)
  {
    v15 = result[8];
    v16 = result[11];
    if (v15 < v16)
    {
      v17 = result[4];
      v18 = v15 - 1;
      v19 = v12 + 4;
      v20 = *(a1 + 60);
      v21 = v17 & 0xFFFFFFFE;
      v22 = v17 & 0xFFFFFFFA | 4;
      v23 = 0uLL;
      v24 = result[8];
      v25 = v15 - 1;
      v26 = v20;
      v27 = v24;
      while (2)
      {
        if (v25 <= v27)
        {
          do
          {
            v29 = v26;
            if (v26 < 1)
            {
              v29 = *v12;
            }

            v30 = v29 - 1;
            v31 = &v19[16 * v26];
            v32 = &v19[16 * v30];
            v33 = v32[1];
            v34 = *(v31 + 1);
            *&a6 = 1.0 / (v33 - v34);
            if ((v33 - v34) == 0.0)
            {
              v35 = 1.0;
            }

            else
            {
              v35 = 1.0 / (v33 - v34);
            }

            if (v17)
            {
              v36 = (v27 + 0.5) - v34;
              v37 = &v132;
              v38 = &v124;
              v39 = v17;
              do
              {
                if (v39)
                {
                  LODWORD(a7) = *v31;
                  v40 = (*v32 - *v31) * v35;
                  v38->f32[0] = v40;
                  *&a6 = *&a7 + (v40 * v36);
                  v37->i32[0] = LODWORD(a6);
                }

                ++v31;
                ++v32;
                v37 = (v37 + 4);
                v38 = (v38 + 4);
                v41 = v39 > 1;
                v39 >>= 1;
              }

              while (v41);
            }

            v28 = (v14 - 1);
            v25 = vcvtms_s32_f32(v33 + 0.5);
            v41 = v27 < v25 || v14 <= 1;
            LODWORD(v14) = v14 - 1;
            v26 = v30;
          }

          while (!v41);
          v26 = v30;
        }

        else
        {
          v28 = v14;
        }

        if (v18 > v27 || v28 < 1)
        {
          v14 = v28;
        }

        else
        {
          v42 = *v12;
          v43 = *&v19[16 * v20 + 1];
          do
          {
            if (v20 + 1 < v42)
            {
              v44 = v20 + 1;
            }

            else
            {
              v44 = 0;
            }

            v45 = &v19[16 * v44];
            v46 = v45[1];
            *&a6 = 1.0 / (v46 - v43);
            if ((v46 - v43) == 0.0)
            {
              v47 = 1.0;
            }

            else
            {
              v47 = 1.0 / (v46 - v43);
            }

            if (v17)
            {
              v48 = (v27 + 0.5) - v43;
              v49 = &v19[16 * v20];
              v50 = &v128;
              v51 = &v120;
              v52 = v17;
              do
              {
                if (v52)
                {
                  LODWORD(a7) = *v49;
                  v53 = (*v45 - *v49) * v47;
                  v51->f32[0] = v53;
                  *&a6 = *&a7 + (v53 * v48);
                  v50->i32[0] = LODWORD(a6);
                }

                ++v49;
                ++v45;
                v50 = (v50 + 4);
                v51 = (v51 + 4);
                v41 = v52 > 1;
                v52 >>= 1;
              }

              while (v41);
            }

            v18 = vcvtms_s32_f32(v46 + 0.5);
            v14 = (v28 - 1);
            v54 = v27 < v18 || v28 <= 1;
            v43 = v46;
            LODWORD(v28) = v28 - 1;
            v20 = v44;
          }

          while (!v54);
          v20 = v44;
        }

        if (v25 >= v18)
        {
          v55 = v18;
        }

        else
        {
          v55 = v25;
        }

        if (v55 >= v16)
        {
          v56 = v16;
        }

        else
        {
          v56 = v55;
        }

        while (v27 < v56)
        {
          if (v27 >= v15)
          {
            do
            {
              v57 = *(a1 + 80);
              v58 = *(a1 + 76);
              if (v57 >= v58)
              {
                return result;
              }

              v59 = *(a1 + 68);
              if (v57 <= *(a1 + 72))
              {
                v24 = *(a1 + 72);
              }

              else
              {
                v24 = *(a1 + 80);
              }

              if (v24 + v59 >= v58)
              {
                v15 = *(a1 + 76);
              }

              else
              {
                v15 = v24 + v59;
              }

              v60 = *(a1 + 80);
              atomic_compare_exchange_strong((a1 + 80), &v60, v15);
            }

            while (v60 != v57);
          }

          if (v27 >= v24)
          {
            v115 = v27;
            a3.i32[0] = v132.i32[0];
            if (v132.f32[0] <= v128.f32[0])
            {
              v69 = v128.f32[0];
            }

            else
            {
              v69 = v132.f32[0];
            }

            if (v132.f32[0] <= v128.f32[0])
            {
              v70 = &v128;
            }

            else
            {
              v70 = &v132;
            }

            if (v132.f32[0] <= v128.f32[0])
            {
              v71 = &v132;
            }

            else
            {
              a3.f32[0] = v128.f32[0];
              v71 = &v128;
            }

            v72 = vcvtps_s32_f32(a3.f32[0] + -0.5);
            *&a5 = floorf(v69 + -0.5);
            v73 = vcvtms_s32_f32(v69 + -0.5) - ((v69 - *&a5) == 0.5);
            if (*(v11 + 272) <= v72)
            {
              v74 = v72;
            }

            else
            {
              v74 = *(v11 + 272);
            }

            v75 = *(v11 + 280);
            if (v73 >= v75)
            {
              v76 = v75 - 1;
            }

            else
            {
              v76 = v73;
            }

            v77 = __OFSUB__(v76, v74);
            v78 = v76 - v74;
            if (v78 < 0 == v77)
            {
              v107 = v56;
              v108 = v55;
              v119[2] = v23;
              v119[3] = v23;
              v119[0] = v23;
              v119[1] = v23;
              v118[2] = v23;
              v118[3] = v23;
              v118[0] = v23;
              v118[1] = v23;
              v117[2] = v23;
              v117[3] = v23;
              v117[0] = v23;
              v117[1] = v23;
              v116[2] = v23;
              v116[3] = v23;
              v116[0] = v23;
              v116[1] = v23;
              if (*(a1 + 84))
              {
                v79 = v22;
              }

              else
              {
                v79 = v21;
              }

              v80 = v69 - a3.f32[0];
              *&a4 = 1.0 / v80;
              if (v80 == 0.0)
              {
                *&a4 = 1.0;
              }

              *v13.i32 = v74 + 0.5;
              if (v79)
              {
                v81 = v119;
                a3.f32[0] = *v13.i32 - a3.f32[0];
                v82 = v118;
                v83 = v70;
                v84 = v71;
                v85 = v79;
                do
                {
                  if (v85)
                  {
                    LODWORD(a6) = v84->i32[0];
                    v86 = (*v83 - v84->f32[0]) * *&a4;
                    *v82 = v86;
                    *&a5 = *&a6 + (v86 * a3.f32[0]);
                    *v81 = LODWORD(a5);
                  }

                  v84 = (v84 + 4);
                  ++v83;
                  ++v81;
                  ++v82;
                  v41 = v85 > 1;
                  v85 >>= 1;
                }

                while (v41);
              }

              v112 = v12;
              v113 = v11;
              v110 = v21;
              v111 = v16;
              v109 = v22;
              if (*(v11 + 288))
              {
                v89 = 0;
                v139[2] = v23;
                v139[3] = v23;
                v139[0] = v23;
                v139[1] = v23;
                v90 = v79 | 1;
                v91 = v79 | 1;
                do
                {
                  if (v91)
                  {
                    *(v139 + v89 * 4) = v124.f32[v89] + v71->f32[v89];
                  }

                  ++v89;
                  v41 = v91 > 1;
                  v91 >>= 1;
                }

                while (v41);
                v92 = 0;
                v138[2] = v23;
                v138[3] = v23;
                v138[0] = v23;
                v138[1] = v23;
                do
                {
                  if (v90)
                  {
                    *(v138 + v92 * 4) = v120.f32[v92] + v70->f32[v92];
                  }

                  ++v92;
                  v41 = v90 > 1;
                  v90 >>= 1;
                }

                while (v41);
                LODWORD(a4) = v139[0];
                *&a5 = 1.0 / (*v138 - *v139);
                if ((*v138 - *v139) == 0.0)
                {
                  a3.f32[0] = 1.0;
                }

                else
                {
                  a3.f32[0] = 1.0 / (*v138 - *v139);
                }

                if (v79)
                {
                  *v13.i32 = *v13.i32 - *v139;
                  v137[2] = v23;
                  v137[3] = v23;
                  v137[0] = v23;
                  v137[1] = v23;
                  v136[0] = v23;
                  v136[1] = v23;
                  v93 = v139;
                  v94 = v138;
                  v95 = v137;
                  v96 = v136;
                  v97 = v79;
                  v136[2] = v23;
                  v136[3] = v23;
                  do
                  {
                    if (v97)
                    {
                      LODWORD(a5) = *v93;
                      v98 = (*v94 - *v93) * a3.f32[0];
                      *v96 = v98;
                      *&a4 = *&a5 + (v98 * *v13.i32);
                      *v95 = LODWORD(a4);
                    }

                    ++v93;
                    ++v94;
                    ++v95;
                    ++v96;
                    v41 = v97 > 1;
                    v97 >>= 1;
                  }

                  while (v41);
                  v99 = v117;
                  v100 = v137;
                  v101 = v119;
                  v102 = v79;
                  do
                  {
                    if (v102)
                    {
                      a3.i32[0] = *v101;
                      *v13.i32 = *v100 - *v101;
                      *v99 = v13.i32[0];
                    }

                    ++v99;
                    ++v100;
                    ++v101;
                    v41 = v102 > 1;
                    v102 >>= 1;
                  }

                  while (v41);
                  v103 = v116;
                  v104 = v136;
                  v105 = v118;
                  v106 = v79;
                  do
                  {
                    if (v106)
                    {
                      a3.i32[0] = *v105;
                      *v13.i32 = *v104 - *v105;
                      *v103 = v13.i32[0];
                    }

                    ++v103;
                    ++v104;
                    ++v105;
                    v41 = v106 > 1;
                    v106 >>= 1;
                  }

                  while (v41);
                }

                v88 = v116;
                v87 = v117;
              }

              else
              {
                v87 = 0;
                v88 = 0;
              }

              v114 = result;
              CA::OGL::SW::scanline(result, v74, v115, (v78 + 1), v119, v118, v87, v88, v13, *a3.i64, a4, a5, a6, a7, a8, a9, v79);
              v11 = v113;
              result = v114;
              v12 = v112;
              v21 = v110;
              v16 = v111;
              v55 = v108;
              v22 = v109;
              v23 = 0uLL;
              v56 = v107;
            }

            v132 = vaddq_f32(v132, v124);
            v133 = vaddq_f32(v133, v125);
            v134 = vaddq_f32(v134, v126);
            v135 = vaddq_f32(v135, v127);
            v128 = vaddq_f32(v128, v120);
            v129 = vaddq_f32(v129, v121);
            HIDWORD(a4) = v130.i32[1];
            HIDWORD(a5) = v131.i32[1];
            v13 = vaddq_f32(v130, v122);
            a3 = vaddq_f32(v131, v123);
            v27 = v115 + 1;
            v130 = v13;
            v131 = a3;
          }

          else
          {
            v13 = v132;
            a3 = v128;
            if (v55 > v27)
            {
              if (v55 >= v24)
              {
                v61 = v24;
              }

              else
              {
                v61 = v55;
              }

              HIDWORD(a4) = v124.i32[1];
              HIDWORD(a5) = v125.i32[1];
              a6 = *v126.i64;
              a7 = *v127.i64;
              a8 = *v120.i64;
              a9 = *v121.i64;
              v63 = v133;
              v62 = v134;
              v64 = v135;
              v66 = v129;
              v65 = v130;
              if (v61 <= v27 + 1)
              {
                v61 = v27 + 1;
              }

              v67 = v61 - v27;
              v68 = v131;
              do
              {
                v13 = vaddq_f32(v13, v124);
                v63 = vaddq_f32(v63, v125);
                v62 = vaddq_f32(v62, v126);
                v64 = vaddq_f32(v64, v127);
                a3 = vaddq_f32(a3, v120);
                v66 = vaddq_f32(v66, v121);
                v65 = vaddq_f32(v65, v122);
                v68 = vaddq_f32(v68, v123);
                --v67;
              }

              while (v67);
              v133 = v63;
              v134 = v62;
              v135 = v64;
              v129 = v66;
              v130 = v65;
              v27 = v61;
              v131 = v68;
            }

            v132 = v13;
            v128 = a3;
          }
        }

        if (v14 >= 1 && v27 < v16)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

void CA::OGL::SW::scanline(uint64_t a1, int a2, int a3, const CA::ColorProgram::Program *a4, float *a5, const float *a6, uint64_t a7, const unsigned int *a8, int32x4_t _Q0, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17)
{
  v434 = a7;
  v18 = a6;
  v436 = a5;
  v455 = *MEMORY[0x1E69E9840];
  v21 = *a1;
  v22 = **a1;
  v23 = *(v22 + 2456);
  if (v23)
  {
    v24 = (v23 + *(v22 + 2472) * (a3 - *(v22 + 2504)) + ((a2 - *(v22 + 2496)) * *(v22 + 2492)));
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v22 + 2464);
  if (v25)
  {
    _ZF = v25 == v23;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25 + *(v22 + 2480) * (a3 - *(v22 + 2504)) - *(v22 + 2496) + a2;
  }

  v438 = a17;
  v435 = *(v22 + 16);
  v440 = v22;
  if (v24 && (*(v22 + 2488) == 32 ? (v28 = v27 == 0) : (v28 = 0), v28))
  {
    v29 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v29 = v410;
    bzero(v410, 0x400uLL);
  }

  v30 = *(v21 + 73);
  if (v30)
  {
    v31 = v438;
    v32 = v435;
    if (v30)
    {
      v433 = (v21 + 1);
      if ((v21[39] & 1) == 0 && (v438 & 0xF0) == 0 && !v29 && v30 == 1)
      {
        v405 = *(v435 + 16);
        if (v405 == 1 || v405 == 3 && *(a1 + 20) == -1)
        {
          v406 = a8;
          v407 = v435;
          CA::OGL::SW::sample_texture(v440, v433, 0, v438, v436, v18, v434, v406, *(v435 + 19), a4, v24);
          v409 = *(v407 + 40);
          if (v409)
          {
            CA::OGL::SW::tex_color_match(v409, a4, v24, v408);
          }

          return;
        }
      }
    }

    else
    {
      v433 = 0;
    }
  }

  else
  {
    v433 = 0;
    v31 = v438;
    v32 = v435;
    if (!v29 && (v21[39] & 1) == 0 && *(v435 + 16) != 13)
    {
      if ((v438 & 0xF0) != 0)
      {
        CA::OGL::SW::sample_color(v438, v436, v18, a4, v24, _Q0);
      }

      else
      {
        CGBlt_fillBytes();
      }

      return;
    }
  }

  v431 = a8;
  v33 = &v21[11 * (*(v32 + 17) != 42) + 1];
  v426 = v33;
  if ((v30 & 2) != 0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v430 = v31 & 0xF0;
  if ((v31 & 0xF0) != 0)
  {
    MEMORY[0x1EEE9AC00](a1);
    bzero(&v411 - 130, 0x40FuLL);
    v35 = ((&v411 - 1025) & 0xFFFFFFFFFFFFFFF0);
  }

  else
  {
    v35 = (a1 + 20);
  }

  v428 = v35;
  v36 = v27;
  if (*(v21 + 312) == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v37 = v410;
    bzero(v410, 0x400uLL);
  }

  else
  {
    v37 = 0;
  }

  v38 = v433;
  if (v433)
  {
    MEMORY[0x1EEE9AC00](a1);
    bzero(&v411 - 130, 0x40FuLL);
    v38 = ((&v411 - 1025) & 0xFFFFFFFFFFFFFFF0);
  }

  v429 = v38;
  v425 = v34;
  if ((v30 & 2) != 0)
  {
    MEMORY[0x1EEE9AC00](a1);
    bzero(&v411 - 130, 0x40FuLL);
    v427 = ((&v411 - 1025) & 0xFFFFFFFFFFFFFFF0);
  }

  else
  {
    v427 = 0;
  }

  v39 = v438;
  v40 = v435;
  if (a4 >= 1)
  {
    v41 = a4;
    v42 = 0.16667;
    v43 = -0.5;
    v44 = -1.0;
    v424 = -0.33333;
    v423 = -0.66667;
    _Q0.i64[0] = 0x103F2AAAABLL;
    v422 = 0x1000000008;
    v417 = 1051372203;
    v416 = 1059760811;
    v45 = v37;
    while (1)
    {
      v46 = v41;
      v437 = v41 - 256;
      if (v41 >= 0x100)
      {
        v47 = 256;
      }

      else
      {
        v47 = v41;
      }

      if (v41 >= 0x100)
      {
        v48 = 256;
      }

      else
      {
        v48 = v41;
      }

      if (v29)
      {
        v49 = v29;
      }

      else
      {
        v49 = v24;
      }

      _ZF = *(v21 + 312) == 0;
      v432 = v49;
      if (_ZF)
      {
        v45 = v49;
      }

      v439 = v45;
      if (v433)
      {
        if (*(v21 + 73) == 1)
        {
          v50 = v40[16];
          if (v50 == 1 || !v430 && v50 == 3 && *v428 == -1)
          {
            v51 = v36;
            v52 = v40;
            CA::OGL::SW::sample_texture(v440, v433, 0, v39, v436, v18, v434, v431, v40[19], v48, v45);
            v54 = *(v52 + 5);
            v36 = v51;
            if (v54)
            {
              CA::OGL::SW::tex_color_match(v54, v48, v45, v53);
            }

            goto LABEL_90;
          }
        }

        v55 = v29;
        v56 = v21;
        v57 = v24;
        v58 = v30;
        v59 = v36;
        v60 = v40;
        if (v40[17] == 42)
        {
          memcpy(v429, v57, (4 * v48));
        }

        else
        {
          CA::OGL::SW::sample_texture(v440, v433, 0, v39, v436, v18, v434, v431, v40[19], v48, v429);
        }

        v62 = *(v60 + 5);
        v39 = v438;
        v40 = v60;
        v36 = v59;
        v30 = v58;
        v24 = v57;
        v21 = v56;
        v29 = v55;
        v45 = v439;
        if (v62)
        {
          CA::OGL::SW::tex_color_match(v62, v48, v429, v61);
          v40 = v435;
          v39 = v438;
        }
      }

      if ((v30 & 2) != 0)
      {
        v63 = v40[20];
        if (v63 != 4)
        {
          if (v40[18] == 42)
          {
            memcpy(v427, v24, (4 * v48));
          }

          else
          {
            CA::OGL::SW::sample_texture(v440, v426, 1u, v39, v436, v18, v434, v431, v63, v48, v427);
          }

          v40 = v435;
          v65 = *(v435 + 48);
          LOBYTE(v39) = v438;
          if (v65)
          {
            CA::OGL::SW::tex_color_match(v65, v48, v427, v64);
            v40 = v435;
            LOBYTE(v39) = v438;
          }
        }
      }

      v66 = v40[16];
      if (v66 == 13)
      {
        if (!v430)
        {
          v82 = *v428;
          v83 = ((((v82 | (v82 << 24)) & 0xFF00FF00FF00FFLL) + ((v82 | (v82 << 24)) & 0xFF00FF00FF00FFLL) * (v82 >> 24)) >> 8) & 0xFF00FF00FF00FFLL;
          LODWORD(__pattern4) = v82 & 0xFF000000 | ((v83 >> 24) | v83) & 0xFFFFFF;
          v81 = 4 * v48;
LABEL_89:
          memset_pattern4(v45, &__pattern4, v81);
          goto LABEL_90;
        }

        v67 = v428;
        _Q0 = CA::OGL::SW::sample_color(v39, v436, v18, v48, v428, _Q0);
        v68 = v48;
        v69 = v67;
        v45 = v439;
        v70 = v439;
        do
        {
          v71 = *v69++;
          v72 = (v71 | (v71 << 24)) & 0xFF00FF00FF00FFLL;
          v73 = ((v72 + v72 * (v71 >> 24)) >> 8) & 0xFF00FF00FF00FFLL;
          *v70++ = (v73 >> 24) | v73;
          --v68;
        }

        while (v68);
        v74 = v45;
        v75 = v428;
        v76 = v48;
        do
        {
          v77 = *v74;
          *v74 &= 0xFFFFFFu;
          *v74++ = v77 & 0xFFFFFF | (*(v75++ + 3) << 24);
          --v76;
        }

        while (v76);
      }

      else
      {
        if (!v40[16])
        {
          if (v430)
          {
            _Q0 = CA::OGL::SW::sample_color(v39, v436, v18, v48, v45, _Q0);
            goto LABEL_90;
          }

          LODWORD(__pattern4) = *v428;
          v81 = (4 * v48);
          goto LABEL_89;
        }

        if (*(v21 + 73))
        {
          if (v430)
          {
            _Q0 = CA::OGL::SW::sample_color(v438, v436, v18, v48, v428, _Q0);
            v66 = *(v435 + 16);
          }

          switch(v66)
          {
            case 1:
              v78 = (4 * v48);
              v79 = v45;
              v80 = v429;
              goto LABEL_218;
            case 2:
              v278 = 0;
              v80 = v429;
              do
              {
                v279 = v80->u32[v278];
                v280 = 1.0 / fmaxf(HIBYTE(v279) * 0.0039216, 0.001);
                v281 = (v280 * v279) & ~((v280 * v279) >> 31);
                if (v281 >= 255)
                {
                  v281 = 255;
                }

                v282 = vshl_u32(vmin_s32(vmax_s32(vcvt_u32_f32(vmul_n_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v279), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), v280)), 0), 0xFF000000FFLL), 0x800000010);
                v80->i32[v278++] = vorr_s8(v282, vdup_lane_s32(v282, 1)).u32[0] | v281 | 0xFF000000;
              }

              while (v47 != v278);
              v78 = (4 * v48);
              v79 = v45;
LABEL_218:
              memcpy(v79, v80, v78);
              break;
            case 3:
              if (v430)
              {
                v290 = v45;
                v291 = v429;
                goto LABEL_244;
              }

              v387 = *v428;
              v388 = v45;
              v291 = v429;
              goto LABEL_312;
            case 4:
              v311 = 0;
              v291 = v429;
              do
              {
                v312 = v291[v311];
                v313 = 1.0 / fmaxf(HIBYTE(v312) * 0.0039216, 0.001);
                v314 = (v313 * v312) & ~((v313 * v312) >> 31);
                if (v314 >= 255)
                {
                  v314 = 255;
                }

                v315 = vshl_u32(vmin_s32(vmax_s32(vcvt_u32_f32(vmul_n_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v312), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), v313)), 0), 0xFF000000FFLL), 0x800000010);
                v291[v311++] = vorr_s8(v315, vdup_lane_s32(v315, 1)).u32[0] | v314 | 0xFF000000;
              }

              while (v47 != v311);
              if (v430)
              {
                v290 = v45;
LABEL_244:
                CA::OGL::SW::tex_multiply_color(v290, v291, v428, v48);
              }

              else
              {
                v387 = *v428;
                v388 = v45;
LABEL_312:
                CA::OGL::SW::tex_multiply_color(v388, v291, v387, v48);
              }

              break;
            case 5:
              if (v430)
              {
                v300 = v45;
                v301 = v429;
                v302 = v427;
                v303 = v428;
                v304 = v48;
                do
                {
                  v306 = *v303++;
                  v305 = v306;
                  v307 = v301->i32[0];
                  v301 = (v301 + 4);
                  HIDWORD(a12) = 255;
                  *_Q0.i8 = vand_s8(vmul_s32(vand_s8(vdup_n_s32(v307 >> 8), 0xFF0000FF00), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v305), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), 0x100000001)), 0x1FF0001FF0000);
                  v308 = (((v307 >> 8) & 0xFF0000) + ((v307 >> 8) & 0xFF0000) * HIBYTE(v305)) & 0xFF000000 | ((v307 * v305 + v307) >> 8);
                  v309 = (v308 | _Q0.i32[0] | _Q0.i32[1] | ((v308 | _Q0.i32[0] | _Q0.i32[1]) << 24)) & 0xFF00FF00FF00FFLL;
                  v310 = ((v309 + v309 * v302[3]) >> 8) & 0xFF00FF00FF00FFLL;
                  *v300++ = (v310 >> 24) | v310;
                  v302 += 4;
                  --v304;
                }

                while (v304);
              }

              else
              {
                v394 = *v428 >> 8;
                v395 = *v428 + 1;
                v396 = (v394 & 0xFF0000) + 0x10000;
                *_Q0.i8 = vadd_s32(vand_s8(vdup_n_s32(v394), 0xFF0000FF00), 0x100000100);
                v397 = v45;
                v398 = v429;
                v399 = v427;
                v400 = v48;
                do
                {
                  v401 = *v398++;
                  v402 = vand_s8(vmul_s32(*_Q0.i8, vand_s8(vshl_u32(vdup_n_s32(v401), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), 0x1FF0001FF0000);
                  v403 = (v396 * HIBYTE(v401)) & 0xFF000000 | ((v401 * v395) >> 8) | v402.i32[0] | v402.i32[1];
                  v404 = ((((v403 | (v403 << 24)) & 0xFF00FF00FF00FFLL) + ((v403 | (v403 << 24)) & 0xFF00FF00FF00FFLL) * v399[3]) >> 8) & 0xFF00FF00FF00FFLL;
                  *v397++ = (v404 >> 24) | v404;
                  v399 += 4;
                  --v400;
                }

                while (v400);
              }

              break;
            case 6:
              if (v430)
              {
                v250 = v45;
                v251 = v429;
                v252 = v427;
                v253 = v428;
                v254 = v48;
                do
                {
                  v256 = v251->i32[0];
                  v251 = (v251 + 4);
                  v255 = v256;
                  v257 = *v253++;
                  *_Q0.i8 = vand_s8(vmul_s32(vand_s8(vdup_n_s32(v255 >> 8), 0xFF0000FF00), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v257), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), 0x100000001)), 0x1FF0001FF0000);
                  v258 = (((v255 >> 8) & 0xFF0000) + ((v255 >> 8) & 0xFF0000) * HIBYTE(v257)) & 0xFF000000 | ((v255 * v257 + v255) >> 8) | _Q0.i32[0] | _Q0.i32[1];
                  v259 = *v252++;
                  v260 = ((((v258 | (v258 << 24)) & 0xFF00FF00FF00FFLL) * ((~v259 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
                  *v250++ = (v260 >> 24) | v260;
                  --v254;
                }

                while (v254);
              }

              else
              {
                v369 = *v428 >> 8;
                v370 = *v428 + 1;
                v371 = (v369 & 0xFF0000) + 0x10000;
                *_Q0.i8 = vadd_s32(vand_s8(vdup_n_s32(v369), 0xFF0000FF00), 0x100000100);
                v372 = v45;
                v373 = v429;
                v374 = v427;
                v375 = v48;
                do
                {
                  v376 = *v373++;
                  v377 = vand_s8(vmul_s32(*_Q0.i8, vand_s8(vshl_u32(vdup_n_s32(v376), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), 0x1FF0001FF0000);
                  v378 = (v371 * HIBYTE(v376)) & 0xFF000000 | ((v376 * v370) >> 8) | v377.i32[0] | v377.i32[1];
                  v379 = *v374++;
                  v380 = ((((v378 | (v378 << 24)) & 0xFF00FF00FF00FFLL) * ((~v379 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
                  *v372++ = (v380 >> 24) | v380;
                  --v375;
                }

                while (v375);
              }

              break;
            case 7:
              _Q0.i8[0] = *(v428 + 3);
              v239 = ((_Q0.u32[0] * 1.0039) + 0.5);
              v240 = v45;
              v241 = &v456;
              goto LABEL_227;
            case 8:
              *_Q0.i32 = (*(v435 + 24) * 256.0) + 0.5;
              v239 = *_Q0.i32;
              if (v430)
              {
                v240 = v45;
                v241 = &v457;
LABEL_227:
                CA::OGL::SW::tex_interpolate(v240, *(v241 - 32), v429, v239, v48);
              }

              else
              {
                v357 = (*v428 >> 8) & 0xFF00FF;
                v358 = *v428 & 0xFF00FF;
                v359 = v45;
                v360 = v429;
                v361 = v48;
                do
                {
                  v362 = v360->i32[0];
                  v360 = (v360 + 4);
                  *v359++ = (v358 + ((((v362 & 0xFF00FF) - v358) * v239) >> 8)) & 0xFF00FF | ((v357 << 8) + (((v362 >> 8) & 0xFF00FF) - v357) * v239) & 0xFF00FF00;
                  --v361;
                }

                while (v361);
              }

              break;
            case 9:
              *_Q0.i32 = (*(v435 + 24) * 256.0) + 0.5;
              v261 = *_Q0.i32;
              if (v430)
              {
                v262 = v45;
                v263 = v428;
                v264 = v429;
                v265 = v48;
                do
                {
                  v267 = *v263++;
                  v266 = v267;
                  v268 = v264->i32[0];
                  v264 = (v264 + 4);
                  v269 = ((((v266 | (v266 << 24)) & 0xFF00FF00FF00FFLL) + ((v266 | (v266 << 24)) & 0xFF00FF00FF00FFLL) * (v268 >> 24)) >> 8) & 0xFF00FF00FF00FFLL;
                  LODWORD(v269) = (v269 >> 24) | v269;
                  *v262++ = ((v269 & 0xFF00FF) + ((((v268 & 0xFF00FF) - (v269 & 0xFF00FF)) * v261) >> 8)) & 0xFF00FF | ((((v268 >> 8) & 0xFF00FF) - ((v269 >> 8) & 0xFF00FF)) * v261 + (((v269 >> 8) & 0xFF00FF) << 8)) & 0xFF00FF00;
                  --v265;
                }

                while (v265);
              }

              else
              {
                v381 = (*v428 | (*v428 << 24)) & 0xFF00FF00FF00FFLL;
                v382 = v45;
                v383 = v429;
                v384 = v48;
                do
                {
                  v385 = v383->i32[0];
                  v383 = (v383 + 4);
                  v386 = ((v381 + v381 * (v385 >> 24)) >> 8) & 0xFF00FF00FF00FFLL;
                  LODWORD(v386) = (v386 >> 24) | v386;
                  *v382++ = ((v386 & 0xFF00FF) + ((((v385 & 0xFF00FF) - (v386 & 0xFF00FF)) * v261) >> 8)) & 0xFF00FF | ((((v385 >> 8) & 0xFF00FF) - ((v386 >> 8) & 0xFF00FF)) * v261 + (((v386 >> 8) & 0xFF00FF) << 8)) & 0xFF00FF00;
                  --v384;
                }

                while (v384);
              }

              break;
            case 10:
              v222 = v45;
              v223 = v427;
              v224 = v429;
              v225 = v48;
              do
              {
                v227 = *v223++;
                v226 = v227;
                v228 = v224->i32[0];
                v224 = (v224 + 4);
                v229 = (v228 & 0xFF00FF) + (v226 & 0xFF00FF);
                v230 = ((v228 >> 8) & 0xFF00FF) + ((v226 >> 8) & 0xFF00FF);
                *v222++ = (v230 << 8) & 0xFF00FF00 | v229 & 0xFF00FF | (15 * (v230 & 0x1000100 | (v229 >> 8) & 0x10001)) | (240 * (v230 & 0x1000100 | (v229 >> 8) & 0x10001));
                --v225;
              }

              while (v225);
              break;
            case 11:
              if (v430)
              {
                v293 = v45;
                v294 = v428;
                v295 = v48;
                v296 = v429;
                do
                {
                  v297 = *v294++;
                  v298 = (v297 | (v297 << 24)) & 0xFF00FF00FF00FFLL;
                  v299 = ((v298 + v298 * v296->u8[3]) >> 8) & 0xFF00FF00FF00FFLL;
                  *v293++ = (v299 >> 24) | v299;
                  v296 = (v296 + 4);
                  --v295;
                }

                while (v295);
              }

              else
              {
                v389 = (*v428 | (*v428 << 24)) & 0xFF00FF00FF00FFLL;
                v390 = v45;
                v391 = v429;
                v392 = v48;
                do
                {
                  v393 = ((v389 + v389 * v391->u8[3]) >> 8) & 0xFF00FF00FF00FFLL;
                  *v390++ = (v393 >> 24) | v393;
                  v391 = (v391 + 4);
                  --v392;
                }

                while (v392);
              }

              break;
            case 12:
              if (v430)
              {
                v242 = v45;
                v243 = v428;
                v244 = v48;
                v245 = v429;
                do
                {
                  v247 = *v243++;
                  v246 = v247;
                  v248 = v245->i32[0];
                  v245 = (v245 + 4);
                  v249 = ((((v246 | (v246 << 24)) & 0xFF00FF00FF00FFLL) * ((~v248 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
                  *v242++ = (v249 >> 24) | v249;
                  --v244;
                }

                while (v244);
              }

              else
              {
                v363 = (*v428 | (*v428 << 24)) & 0xFF00FF00FF00FFLL;
                v364 = v45;
                v365 = v429;
                v366 = v48;
                do
                {
                  v367 = v365->i32[0];
                  v365 = (v365 + 4);
                  v368 = ((v363 * ((~v367 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
                  *v364++ = (v368 >> 24) | v368;
                  --v366;
                }

                while (v366);
              }

              break;
            case 13:
            case 14:
            case 18:
            case 19:
            case 20:
            case 22:
            case 23:
            case 24:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 58:
              break;
            case 15:
              if (v29)
              {
                CA::OGL::SW::convert_in(v29, v24, v36, *(v440 + 2488), v48);
              }

              CA::OGL::SW::tex_blend_dest(v45, v432, v427, v429, v48);
              break;
            case 16:
              if (v29)
              {
                CA::OGL::SW::convert_in(v29, v24, v36, *(v440 + 2488), v48);
              }

              v288 = v429;
              if (v430)
              {
                v283 = v21[37];
                v284 = (v21 + 38);
                v285 = v45;
                v286 = v432;
                v287 = v428;
LABEL_256:
                CA::OGL::SW::tex_blend_image(v285, v286, v287, v288, v48, v283, v284, a8);
              }

              else
              {
                CA::OGL::SW::tex_blend_color(v45, v432, *v428, v429, v48, v21[37], (v21 + 38), a8);
              }

              break;
            case 17:
              if (v29)
              {
                CA::OGL::SW::convert_in(v29, v24, v36, *(v440 + 2488), v48);
              }

              v283 = v21[37];
              v284 = (v21 + 38);
              v285 = v45;
              v286 = v432;
              v287 = v427;
              v288 = v429;
              goto LABEL_256;
            case 21:
              v276 = (v440 + 160);
              v277 = v45;
              v271 = v429;
              goto LABEL_258;
            case 25:
              v270 = 0;
              v271 = v429;
              do
              {
                v272 = v271[v270];
                v273 = 1.0 / fmaxf(HIBYTE(v272) * 0.0039216, 0.001);
                v274 = (v273 * v272) & ~((v273 * v272) >> 31);
                if (v274 >= 255)
                {
                  v274 = 255;
                }

                v275 = vshl_u32(vmin_s32(vmax_s32(vcvt_u32_f32(vmul_n_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v272), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), v273)), 0), 0xFF000000FFLL), 0x800000010);
                v271[v270++] = vorr_s8(v275, vdup_lane_s32(v275, 1)).u32[0] | v274 | 0xFF000000;
              }

              while (v47 != v270);
              v276 = (v440 + 160);
              v277 = v45;
LABEL_258:
              CA::OGL::SW::tex_color_matrix_4x4_bias(v277, v271, v48, v276, a5);
              break;
            case 26:
              _Q0.i32[0] = *(v435 + 24);
              v231 = vdup_lane_s32(*_Q0.i8, 0);
              v232 = v45;
              v233 = v429;
              v234 = v48;
              do
              {
                v235 = *v233;
                if (*v233 + 1 >= 0x1000001)
                {
                  v236 = HIBYTE(v235);
                  *&a12 = v236 * 0.0039216;
                  v237 = vdup_lane_s32(*&a12, 0);
                  v238 = vmul_n_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v235), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), 1.0 / v236);
                  a12 = COERCE_DOUBLE(vshl_u32(vcvt_u32_f32(vadd_f32(vdiv_f32(vmul_f32(v238, vdup_n_s32(0x437F0000u)), vmla_f32(v237, v231, vsub_f32(v237, v238))), 0x3F0000003F000000)), 0x800000010));
                  v235 = (((((1.0 / v236) * *v233) * 255.0) / ((v236 * 0.0039216) + (((v236 * 0.0039216) - ((1.0 / v236) * *v233)) * *_Q0.i32))) + 0.5) | ((v236 + 0.5) << 24) | LODWORD(a12) | HIDWORD(a12);
                }

                *v232++ = v235;
                ++v233;
                --v234;
              }

              while (v234);
              break;
            case 52:
              v316 = v440;
              if (v29)
              {
                CA::OGL::SW::convert_in(v29, v24, v36, *(v440 + 2488), v48);
              }

              CA::OGL::SW::tex_vibrant_color_matrix(v45, v432, v429, v48, v316 + 20, a6);
              break;
            case 53:
              v289 = v440;
              if (v29)
              {
                CA::OGL::SW::convert_in(v29, v24, v36, *(v440 + 2488), v48);
              }

              CA::OGL::SW::tex_vibrant_dark(v45, v432, v429, v48, (v289 + 160), a6);
              break;
            case 54:
              v292 = v440;
              if (v29)
              {
                CA::OGL::SW::convert_in(v29, v24, v36, *(v440 + 2488), v48);
              }

              CA::OGL::SW::tex_vibrant_light(v45, v432, v429, v48, (v292 + 160), a6);
              break;
            case 55:
              v199 = v42;
              v420 = v21;
              v421 = v24;
              v413 = v30;
              v414 = v36;
              v415 = v18;
              v200 = v45;
              v201 = ((*(v435 + 24) * 256.0) + 0.5);
              v453 = 0;
              v451 = 0u;
              v452 = 0u;
              v449 = 0;
              v202 = v425;
              __pattern4 = v425;
              v444 = 0;
              v443 = 0;
              v445 = &CA::OGL::SW::tex_luminance_map(unsigned int *,unsigned int const*,CA::OGL::SW::Texture const*,unsigned long,unsigned int)::dummy;
              v446 = &CA::OGL::SW::tex_luminance_map(unsigned int *,unsigned int const*,CA::OGL::SW::Texture const*,unsigned long,unsigned int)::dummy;
              v447 = &CA::OGL::SW::tex_luminance_map(unsigned int *,unsigned int const*,CA::OGL::SW::Texture const*,unsigned long,unsigned int)::dummy;
              v448 = &CA::OGL::SW::tex_luminance_map(unsigned int *,unsigned int const*,CA::OGL::SW::Texture const*,unsigned long,unsigned int)::dummy;
              v454 = 0;
              v450 = 0;
              LODWORD(v451) = 0;
              v203 = v425[3].u32[0] * 0.0039216;
              v204 = v429;
              v205 = v48;
              do
              {
                v206 = v204->i32[0];
                v204 = (v204 + 4);
                HIDWORD(v449) = (v203 * (4725 * v206 + 46884 * BYTE1(v206) + 13926 * BYTE2(v206)));
                (*(*&v202[6] + 80))(&__pattern4, 1, v200, 10);
                *v200 = ((v206 & 0xFF00FF) + ((((*v200 & 0xFF00FF) - (v206 & 0xFF00FF)) * v201) >> 8)) & 0xFF00FF | ((((*v200 >> 8) & 0xFF00FF) - ((v206 >> 8) & 0xFF00FF)) * v201 + (((v206 >> 8) & 0xFF00FF) << 8)) & 0xFF00FF00;
                ++v200;
                --v205;
              }

              while (v205);
              v18 = v415;
              v36 = v414;
              v30 = v413;
              v24 = v421;
              v45 = v439;
              v21 = v420;
              v42 = v199;
              v43 = -0.5;
              break;
            case 56:
              _Q0.i32[0] = *(v435 + 24);
              v317 = *(v435 + 28);
              v318 = *(v435 + 32);
              v319 = *(v435 + 36);
              v320 = *v428 + 1;
              v321 = v45;
              v322 = v429;
              v323 = v48;
              do
              {
                v325 = v322->i32[0];
                v322 = (v322 + 4);
                v324 = v325;
                v326 = ((v325 * 0.00028275) + (BYTE1(v325) * 0.0028055)) + (BYTE2(v325) * 0.00083333);
                v327 = (v319 + ((v318 + ((v317 + (v326 * *_Q0.i32)) * v326)) * v326)) * 255.0;
                v328 = v327 & ~(v327 >> 31);
                if (v328 >= 255)
                {
                  v328 = 255;
                }

                *v321++ = ((v324 & 0xFF00FF) + (((v328 - (v324 & 0xFF00FF) + (v328 << 16)) * v320) >> 8)) & 0xFF00FF | ((v328 - ((v324 >> 8) & 0xFF00FF) + 16711680) * v320 + (((v324 >> 8) & 0xFF00FF) << 8)) & 0xFF00FF00;
                --v323;
              }

              while (v323);
              break;
            case 57:
              _Q0.i64[0] = *(v440 + 160);
              v174 = *(v440 + 176);
              v175 = *(v440 + 192);
              a12 = *(v440 + 208);
              v177 = *(v440 + 168);
              v176 = *(v440 + 172);
              v179 = *(v440 + 184);
              v178 = *(v440 + 188);
              v181 = *(v440 + 200);
              v180 = *(v440 + 204);
              v182 = v45;
              v183 = v429;
              v184 = v48;
              v186 = *(v440 + 216);
              v185 = *(v440 + 220);
              do
              {
                v187 = *v183++;
                v188 = HIBYTE(v187) * 0.0039216;
                v189 = 0.0039216 / fmaxf(v188, 0.005);
                v190 = vand_s8(vshl_u32(vdup_n_s32(v187), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                v191 = (v185 + ((v180 + ((v178 + (v188 * v176)) * v188)) * v188)) * 255.0;
                v192 = v189 * v187;
                v193 = v191 & ~(v191 >> 31);
                if (v193 >= 255)
                {
                  v193 = 255;
                }

                v194 = vmul_n_f32(vcvt_f32_u32(v190), v189);
                v195 = (((v186 + ((v181 + ((v179 + (v177 * v192)) * v192)) * v192)) * v193) + 0.5);
                v196 = v195 & ~(v195 >> 31);
                v197 = vshl_u32(vmin_s32(vmax_s32(vcvt_s32_f32(vmla_n_f32(0x3F0000003F000000, vmla_f32(*&a12, v194, vmla_f32(v175, v194, vmla_f32(v174, v194, *_Q0.i8))), v193)), 0), 0xFF000000FFLL), 0x800000010);
                if (v196 >= 255)
                {
                  v198 = 255;
                }

                else
                {
                  v198 = v196;
                }

                *v182++ = v198 | v197.i32[0] | (v193 << 24) | v197.i32[1];
                --v184;
              }

              while (v184);
              break;
            case 59:
              _Q0.i32[0] = *(v440 + 160);
              __asm { FCVT            H0, S0 }

              v209 = vcvt_f16_f32(*(v440 + 240));
              v210 = v45;
              v211 = v429;
              v212 = v48;
              do
              {
                if (v211->i32[0])
                {
                  HIWORD(v213) = 15360;
                  *&v213 = v211->i32[0] * COERCE_SHORT_FLOAT(8200);
                }

                else
                {
                  v213 = 0;
                }

                _H3 = *&v213 + *_Q0.i16;
                __asm { FCVT            S4, H3 }

                _S4 = 0.5 - _S4;
                if (_S4 > 1.0)
                {
                  _S4 = 1.0;
                }

                if (_S4 < 0.0)
                {
                  _S4 = 0.0;
                }

                __asm { FCVT            H4, S4 }

                v218 = *(&v213 + 3);
                if (_H3 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  v218 = COERCE_SHORT_FLOAT(0);
                }

                v219 = vmul_n_f16(v209, v218 * _H4);
                v220 = vbsl_s8(vcgt_f16(v219, 0x3C003C003C003C00), 0x3C003C003C003C00, v219);
                a12 = COERCE_DOUBLE(vdup_n_s16(0x5BF8u));
                v221 = vrev32_s16(vcvt_s16_f16(vmul_f16(vbic_s8(v220, vcltz_f16(v220)), *&a12)));
                *v210++ = vuzp1_s8(vext_s8(v221, v221, 6uLL), *_Q0.i8).u32[0];
                v211 = (v211 + 4);
                --v212;
              }

              while (v212);
              break;
            default:
              if (&xmmword_183E21000 == 74)
              {
                _Q0.i32[0] = *(v435 + 24);
                v329 = v45;
                v330 = v429;
                v331 = v48;
                do
                {
                  v332 = v330->i32[0];
                  v333 = HIBYTE(v330->i32[0]);
                  v334 = 1.0 / fmaxf(v333, 0.005);
                  v335 = v334 * BYTE2(v330->i32[0]);
                  v336 = v334 * BYTE1(v330->i32[0]);
                  v337 = v330->i32[0];
                  v338 = v334 * v337;
                  if (v336 <= v338)
                  {
                    v339 = v334 * v337;
                  }

                  else
                  {
                    v339 = v334 * BYTE1(v332);
                  }

                  if (v336 >= v338)
                  {
                    v340 = v338;
                  }

                  else
                  {
                    v340 = v336;
                  }

                  if (v335 > v339)
                  {
                    v339 = v335;
                  }

                  if (v335 < v340)
                  {
                    v340 = v335;
                  }

                  v341 = v339 - v340;
                  v342 = v42 / fmaxf(v341, 0.005);
                  if (v335 == v339)
                  {
                    v343 = v342 * (v336 - v338);
                  }

                  else
                  {
                    if (v336 == v339)
                    {
                      v344 = v338 - v335;
                      v345 = &v451 + 1;
                    }

                    else
                    {
                      v344 = v335 - v336;
                      v345 = &v451;
                    }

                    v343 = *(v345 - 64) + (v342 * v344);
                  }

                  v346 = v343 + *_Q0.i32;
                  v347 = v44 + (fabsf(fminf((v343 + *_Q0.i32) - floorf(v343 + *_Q0.i32), 1.0) + v43) * 6.0);
                  v348 = 0.0;
                  if (v347 >= 0.0)
                  {
                    v348 = v347;
                  }

                  if (v347 > 1.0)
                  {
                    v348 = 1.0;
                  }

                  v349 = v44 + (fabsf(fminf((v346 + v424) - floorf(v346 + v424), 1.0) + v43) * 6.0);
                  v350 = 1.0;
                  v351.i32[0] = 1.0;
                  if (v349 <= 1.0)
                  {
                    v351.i32[0] = 0;
                    if (v349 >= 0.0)
                    {
                      v351.f32[0] = v349;
                    }
                  }

                  v352 = v44 + (fabsf(fminf((v346 + v423) - floorf(v346 + v423), 1.0) + v43) * 6.0);
                  if (v352 <= 1.0)
                  {
                    v350 = 0.0;
                    if (v352 >= 0.0)
                    {
                      v350 = v352;
                    }
                  }

                  v353 = v341 / fmaxf(v339, 0.005);
                  v351.f32[1] = v348;
                  v354 = v339 * v333;
                  v355 = (v354 * ((1.0 - v353) + (v350 * v353))) & ~((v354 * ((1.0 - v353) + (v350 * v353))) >> 31);
                  if (v355 >= 255)
                  {
                    v355 = 255;
                  }

                  *&a16 = 1.0 - v353;
                  v356 = vshl_u32(vmin_s32(vmax_s32(vcvt_s32_f32(vmul_n_f32(vmla_n_f32(vdup_lane_s32(*&a16, 0), v351, v353), v354)), 0), 0xFF000000FFLL), v422);
                  *v329++ = v355 | v356.i32[0] | v332 & 0xFF000000 | v356.i32[1];
                  v330 = (v330 + 4);
                  --v331;
                }

                while (v331);
              }

              else if (&xmmword_183E21000 == 76)
              {
                v412 = v42;
                v415 = v18;
                v413 = v30;
                v414 = v36;
                v121 = ((*(v440 + 192) * 256.0) + 0.5);
                v122 = ((*(v440 + 176) * 256.0) + 0.5);
                v123 = ((*(v440 + 164) * 255.0) + 0.5);
                v124 = ((*(v440 + 160) * 255.0) + 0.5);
                v125 = *(v440 + 172);
                v126 = ((*(v440 + 168) * 255.0) + 0.5);
                v453 = 0;
                v451 = 0u;
                v452 = 0u;
                v449 = 0;
                __pattern4 = v425;
                v444 = 0;
                v443 = 0;
                v445 = &CA::OGL::SW::tex_home_affordance_map(unsigned int *,unsigned int const*,CA::OGL::SW::Texture const*,unsigned long,float const*)::dummy;
                v446 = &CA::OGL::SW::tex_home_affordance_map(unsigned int *,unsigned int const*,CA::OGL::SW::Texture const*,unsigned long,float const*)::dummy;
                v447 = &CA::OGL::SW::tex_home_affordance_map(unsigned int *,unsigned int const*,CA::OGL::SW::Texture const*,unsigned long,float const*)::dummy;
                v448 = &CA::OGL::SW::tex_home_affordance_map(unsigned int *,unsigned int const*,CA::OGL::SW::Texture const*,unsigned long,float const*)::dummy;
                v454 = 0;
                v450 = 0;
                LODWORD(v451) = 0;
                v127 = (v123 << 8) | (v124 << 16) | v126;
                v128 = v425[3].u32[0];
                LODWORD(v421) = v127 & 0xFF00FF;
                LODWORD(v420) = ((v127 | (((v125 * 255.0) + 0.5) << 24)) >> 8) & 0xFF00FF;
                v419 = v122 + 1;
                v129 = v128 * 0.0039216;
                v418 = v121 + 1;
                v130 = v429;
                v131 = v48;
                do
                {
                  v441 = 0;
                  v132 = v130->u32[0];
                  HIDWORD(v449) = (v129 * (4725 * v130->i32[0] + 46884 * BYTE1(v132) + 13926 * BYTE2(v132)));
                  (*(*&v425[6] + 80))(&__pattern4, 1, &v441, 10);
                  v133 = ((((v441 >> 8) & 0xFF00FF) + v420) << 8) & 0xFF00FF00 | ((v441 & 0xFF00FF) + v421) & 0xFF00FF | (15 * ((((v441 >> 8) & 0xFF00FF) + v420) & 0x1000100 | (((v441 & 0xFF00FF) + v421) >> 8) & 0x10001)) | (240 * ((((v441 >> 8) & 0xFF00FF) + v420) & 0x1000100 | (((v441 & 0xFF00FF) + v421) >> 8) & 0x10001));
                  v134 = ((((v133 | (v133 << 24)) & 0xFF00FF00FF00FFuLL) * v419) >> 8) & 0xFF00FF00FF00FFLL;
                  v135 = ((((v132 | (v132 << 24)) & 0xFF00FF00FF00FFLL) * ((~(v134 >> 24) >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
                  v136 = ((v135 >> 24) | v135) + ((v134 >> 24) | v134);
                  v137 = ((((v136 | (v136 << 24)) & 0xFF00FF00FF00FFuLL) * v418) >> 8) & 0xFF00FF00FF00FFLL;
                  v138 = v137 >> 24;
                  v139 = (v137 >> 24) | v137;
                  v140 = BYTE3(v138);
                  v141 = BYTE3(v136);
                  v142 = vand_s8(vshl_u32(vdup_n_s32(v136), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                  v143 = v136;
                  v144 = v140 + 1;
                  *_Q0.i8 = vand_s8(vshl_u32(vdup_n_s32(v139), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                  v145 = (BYTE3(v136) * (v140 + 1)) >> 8;
                  v146 = vadd_s32(*_Q0.i8, 0x100000001);
                  v147 = vdup_n_s32(BYTE3(v136) ^ 0xFF);
                  v148 = ((v141 ^ 0xFF) + (v141 ^ 0xFF) * v139) >> 8;
                  if (BYTE3(v136) == 255)
                  {
                    v148 = 0;
                  }

                  v149 = vmul_s32(v147, v146);
                  if (v141 != 255)
                  {
                    v145 += ((BYTE3(v136) ^ 0xFF) * (v140 + 1)) >> 8;
                  }

                  v150 = v140 ^ 0xFF;
                  v151 = v145 + ((v150 + v150 * v141) >> 8);
                  a12 = COERCE_DOUBLE(vadd_s32(v142, 0x100000001));
                  v152 = COERCE_DOUBLE(vshr_n_u32(v149, 8uLL));
                  v153 = vdup_n_s32(v140 ^ 0xFFu);
                  v154 = v150 + v150 * v136;
                  v155 = v142.u32[1];
                  if (v141 == 255)
                  {
                    v152 = 0.0;
                  }

                  v156 = v148 + (v154 >> 8);
                  v157 = v142.i32[0];
                  v158 = v141 + 1;
                  a5 = _Q0.u32[0];
                  a6 = _Q0.u32[1];
                  if (v140 != 255)
                  {
                    v148 = v156;
                  }

                  v159 = (((v141 + 1) * _Q0.i32[0]) >> 8) + ((v142.i32[0] * (v144 - _Q0.i32[0])) >> 8);
                  if (v140 == 255)
                  {
                    v160 = v145;
                  }

                  else
                  {
                    v160 = v151;
                  }

                  v161 = ((v158 * _Q0.i32[1]) >> 8) + ((v142.i32[1] * (v144 - _Q0.i32[1])) >> 8);
                  v162 = COERCE_DOUBLE(vsra_n_u32(*&v152, vmul_s32(*&a12, v153), 8uLL));
                  if (v140 == 255)
                  {
                    *&v163 = v152;
                  }

                  else
                  {
                    *&v163 = v162;
                  }

                  v164 = v136 >> 25;
                  v165 = v158 * v140;
                  v166 = 2 * v159 - (v165 >> 8);
                  v167 = 2 * v161;
                  if (v164 >= v157)
                  {
                    v166 = ((v157 + v157 * a5) >> 7) & 0x3FE;
                  }

                  v168 = v167 - (v165 >> 8);
                  v169 = 2 * (((v158 * v139) >> 8) + ((v143 * (v144 - v139)) >> 8));
                  if (v164 >= v155)
                  {
                    v168 = ((v155 + v155 * a6) >> 7) & 0x3FE;
                  }

                  v170 = v169 - (v165 >> 8);
                  v171 = ((v143 + v143 * v139) >> 7) & 0x3FE;
                  if (v164 < v143)
                  {
                    v171 = v170;
                  }

                  v172 = v171 + v148;
                  v173 = vadd_s32(__PAIR64__(v168, v166), v163);
                  if (v172 >= v160)
                  {
                    v172 = v160;
                  }

                  *_Q0.i8 = vshl_u32(vmax_s32(vmin_s32(v173, vdup_n_s32(v160)), 0), 0x800000010);
                  *v45++ = _Q0.i32[0] | (v160 << 24) | v172 & ~(v172 >> 31) | _Q0.i32[1];
                  v130 = (v130 + 4);
                  --v131;
                }

                while (v131);
                v36 = v414;
                v30 = v413;
                v45 = v439;
                v18 = v415;
                v42 = v412;
                v44 = -1.0;
              }

              break;
          }
        }
      }

LABEL_90:
      v84 = v440;
      if (*(v21 + 312) == 1)
      {
        if (v29)
        {
          CA::OGL::SW::convert_in(v29, v24, v36, *(v440 + 2488), v48);
        }

        (v21[37])(v432, v432, v45, v48, v21 + 38);
      }

      v39 = v438;
      v41 = v437;
      if (v29)
      {
        v85 = *(v84 + 2488);
        if (v85 <= 14)
        {
          if (v85)
          {
            if (v85 == 8)
            {
              v90 = v29;
              v91 = v24;
              v92 = v48;
              v93 = v36;
              v94 = v29;
              v95 = v24;
              v96 = v48;
              if (v36)
              {
                do
                {
                  *v93++ = *(v90 + 3);
                  v97 = *v90++;
                  *v91 = (21 * v97 + 173 * BYTE1(v97) + 62 * BYTE2(v97)) >> 8;
                  v91 = (v91 + 1);
                  --v92;
                }

                while (v92);
              }

              else
              {
                do
                {
                  v98 = *v94++;
                  *v95 = (21 * v98 + 173 * BYTE1(v98) + 62 * BYTE2(v98)) >> 8;
                  v95 = (v95 + 1);
                  --v96;
                }

                while (v96);
              }
            }
          }

          else
          {
            v110 = v29;
            v111 = v48;
            v112 = v36;
            do
            {
              *v112++ = *(v110++ + 3);
              --v111;
            }

            while (v111);
          }
        }

        else
        {
          v86 = v29;
          if (v85 == 15)
          {
            v99 = v48;
            v100 = v36;
            v101 = v24;
            v102 = v29;
            v103 = v48;
            v104 = v24;
            if (v36)
            {
              do
              {
                *v100++ = *(v86 + 3);
                v105 = *v86++;
                *v101 = (v105 >> 6) & 0x3E0 | (v105 >> 3) | (v105 >> 9) & 0x7C00;
                v101 = (v101 + 2);
                --v99;
              }

              while (v99);
            }

            else
            {
              do
              {
                v106 = *v102++;
                *v104 = (v106 >> 6) & 0x3E0 | (v106 >> 3) | (v106 >> 9) & 0x7C00;
                v104 = (v104 + 2);
                --v103;
              }

              while (v103);
            }
          }

          else if (v85 == 16)
          {
            v107 = v48;
            v108 = v24;
            do
            {
              v109 = *v86++;
              *v108 = HIWORD(v109) & 0xFF00 | ((21 * v109 + 173 * BYTE1(v109) + 62 * BYTE2(v109)) >> 8);
              v108 = (v108 + 2);
              --v107;
            }

            while (v107);
          }

          else
          {
            v87 = v24;
            v88 = v48;
            if (v85 == 32)
            {
              do
              {
                v89 = *v86++;
                *v87++ = v89;
                --v88;
              }

              while (v88);
            }
          }
        }
      }

      v40 = v435;
      if (v46 < 257)
      {
        return;
      }

      v24 = (v24 + (*(v440 + 2492) * v48));
      if (v36)
      {
        v36 += v48;
      }

      else
      {
        v36 = 0;
      }

      v45 = v439;
      if (v39)
      {
        *_Q0.i32 = v48;
        v113 = v18;
        v114 = v39;
        v115 = v436;
        do
        {
          if (v114)
          {
            *v115 = *v115 + (*v113 * *_Q0.i32);
          }

          ++v115;
          ++v113;
          v116 = v114 > 1;
          v114 >>= 1;
        }

        while (v116);
        if (v434)
        {
          v117 = v431;
          v118 = v39;
          v119 = v434;
          do
          {
            if (v118)
            {
              *v119 = *v119 + (*v117 * *_Q0.i32);
            }

            ++v119;
            ++v117;
            _CF = v118 >= 2;
            v118 >>= 1;
          }

          while (_CF);
        }
      }
    }
  }
}

int32x4_t CA::OGL::SW::sample_color(char a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int32x4_t result)
{
  v7 = vdup_n_s32(0x4B7F0000u);
  v8 = (*(a2 + 20) * 16712000.0);
  v9.i32[0] = *(a2 + 16);
  v10 = (*(a2 + 28) * 16712000.0);
  v11.i32[0] = *(a3 + 16);
  v12 = (*(a3 + 20) * 16712000.0);
  v9.i32[1] = *(a2 + 24);
  *result.i8 = vcvt_s32_f32(vmul_f32(v9, v7));
  v11.i32[1] = *(a3 + 24);
  v13 = vcvt_s32_f32(vmul_f32(v11, v7));
  v14 = (*(a3 + 28) * 16712000.0);
  if ((a1 & 4) != 0)
  {
    if (a4)
    {
      v27 = *(a3 + 12);
      v28 = (a2 + 12);
      v29 = (a4 + 3) & 0x1FFFFFFFCLL;
      v30 = vdupq_n_s32(4 * v14);
      v31 = vmlaq_s32(vdupq_n_s32(v10), vdupq_n_s32(v14), xmmword_183E210A0);
      v32 = vdupq_n_s32(4 * v13.i32[1]);
      v33 = vmlaq_lane_s32(vdupq_lane_s32(*result.i8, 1), xmmword_183E210A0, v13, 1);
      v34 = vmlaq_s32(vdupq_n_s32(v8), vdupq_n_s32(v12), xmmword_183E210A0);
      v35 = vdupq_n_s32(4 * v12);
      result = vmlaq_lane_s32(vdupq_lane_s32(*result.i8, 0), xmmword_183E210A0, v13, 0);
      v36 = vdupq_n_s32(4 * v13.i32[0]);
      v37 = vld1q_dup_f32(v28);
      *v6.i32 = v27 * 4.0;
      v38 = vdupq_lane_s32(v6, 0);
      v39 = vmlaq_n_f32(v37, xmmword_183E213B0, v27);
      v40 = vdupq_n_s64(a4 - 1);
      v41 = (a5 + 8);
      v42 = 1;
      __asm { FMOV            V21.4S, #1.0 }

      v48.i64[0] = 0xFF000000FF000000;
      v48.i64[1] = 0xFF000000FF000000;
      v49.i64[0] = 0xFFFF0000FFFF0000;
      v49.i64[1] = 0xFFFF0000FFFF0000;
      do
      {
        v50 = vdupq_n_s64(v42 - 1);
        v51 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v50, xmmword_183E20FF0)));
        v52 = vdivq_f32(_Q21, v39);
        v53 = vbslq_s8(vcgtq_f32(v52, _Q21), _Q21, v52);
        v54 = vbicq_s8(v53, vcltzq_f32(v53));
        v55 = vorrq_s8(vorrq_s8(vorrq_s8(vshrq_n_s32(vcvtq_s32_f32(vmulq_f32(v54, vcvtq_f32_s32(v33))), 0x10uLL), vandq_s8(vcvtq_s32_f32(vmulq_f32(v54, vcvtq_f32_s32(result))), v49)), vandq_s8(vshlq_n_s32(vcvtq_s32_f32(vmulq_f32(v54, vcvtq_f32_s32(v31))), 8uLL), v48)), (*&vshrq_n_s32(vcvtq_s32_f32(vmulq_f32(v54, vcvtq_f32_s32(v34))), 8uLL) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)));
        if (vuzp1_s16(v51, *result.i8).u8[0])
        {
          *(v41 - 2) = v55.i32[0];
        }

        if (vuzp1_s16(v51, *&result).i8[2])
        {
          *(v41 - 1) = v55.i32[1];
        }

        if (vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v50, xmmword_183E21240)))).i32[1])
        {
          *v41 = v55.i64[1];
        }

        v31 = vaddq_s32(v31, v30);
        v33 = vaddq_s32(v33, v32);
        v34 = vaddq_s32(v34, v35);
        v42 += 4;
        result = vaddq_s32(result, v36);
        v41 += 2;
        v39 = vaddq_f32(v39, v38);
        v29 -= 4;
      }

      while (v29);
    }
  }

  else if (a4)
  {
    v15 = 0;
    v16 = vdupq_n_s64(a4 - 1);
    v17 = vadd_s32(v13, v13);
    v18 = vmul_s32(v13, 0x300000003);
    v19 = v10 << 8;
    v20 = (a5 + 8);
    do
    {
      v21 = vmla_s32(*result.i8, vdup_n_s32(v15), v13);
      v22 = vdupq_n_s64(v15);
      v23 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v22, xmmword_183E20FF0)));
      if (vuzp1_s16(v23, *result.i8).u8[0])
      {
        *(v20 - 2) = v21.i32[0] & 0xFFFF0000 | (v8 >> 16 << 8) | (v21.i32[1] >> 16) | v19 & 0xFF000000;
      }

      if (vuzp1_s16(v23, *&result).i8[2])
      {
        v24 = vadd_s32(v21, v13);
        *(v20 - 1) = v24.i32[0] & 0xFFFF0000 | ((v12 + v8) >> 16 << 8) | (v24.i32[1] >> 16) | ((v14 << 8) + v19) & 0xFF000000;
      }

      if (vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v22, xmmword_183E21240)))).i32[1])
      {
        v25 = vadd_s32(v21, v17);
        *v20 = v25.i32[0] & 0xFFFF0000 | ((2 * v12 + v8) >> 16 << 8) | (v25.i32[1] >> 16) | ((v14 << 9) + v19) & 0xFF000000;
        v26 = vadd_s32(v21, v18);
        v20[1] = v26.i32[0] & 0xFFFF0000 | ((3 * v12 + v8) >> 16 << 8) | (v26.i32[1] >> 16) | (768 * v14 + v19) & 0xFF000000;
      }

      v15 += 4;
      v19 += v14 << 10;
      v20 += 4;
      v8 += 4 * v12;
    }

    while (((a4 + 3) & 0x1FFFFFFFCLL) != v15);
  }

  return result;
}

uint64_t CA::OGL::SW::sample_texture(uint64_t a1, uint32x2_t *a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned int a10, uint64_t a11)
{
  v77 = *MEMORY[0x1E69E9840];
  memset(v75, 0, sizeof(v75));
  v73 = 0u;
  v74 = 0u;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v72 = a8;
  LOBYTE(v73) = a9;
  v13 = *(a1 + 16);
  v76 = v13 + 400;
  if (a9 == 5 || a9 == 3)
  {
    *&v75[4] = *(v13 + 384);
  }

  v14 = a2[8].u8[0];
  if (v14 == a2[8].u8[1])
  {
    v15 = a2[3];
    v16 = 2 * a3;
    *_Q0.f32 = vcvt_f32_u32(v15);
    v18 = a4 & 4;
  }

  else
  {
    v16 = 2 * a3;
    v18 = a4 & 4;
    if ((a4 & 4) != 0)
    {
      v21 = 1.0 / *(a5 + 12);
      v20 = fabsf(*(a6 + 4 * v16 + 36) * v21);
      v19 = *(a7 + 4 * v16 + 36) * v21;
    }

    else
    {
      v19 = *(a7 + 4 * v16 + 36);
      v20 = fabsf(*(a6 + 4 * v16 + 36));
    }

    _S3 = fabsf(v19) + v20;
    v15 = a2[3];
    *_Q0.f32 = vcvt_f32_u32(v15);
    __asm { FMLA            S2, S3, V0.S[1] }

    v27 = 64;
    if ((_S2 * 0.5) < 0.99)
    {
      v27 = 65;
    }

    v14 = a2->u8[v27];
  }

  v28 = a11;
  v29 = a10;
  v30 = v15.i32[1];
  _Q0.i64[1] = _Q0.i64[0];
  v31.i64[0] = *(a5 + 4 * v16 + 32);
  v32 = *(a6 + 4 * v16 + 32);
  v31.i64[1] = v32;
  v33 = &v73 + 1;
  _Q0 = vmulq_f32(v31, _Q0);
  v35 = vcvtq_n_s32_f32(_Q0, 0x10uLL);
  v36 = vextq_s8(v35, v35, 8uLL).u64[0];
  vst2_f32(v33, v35);
  v38 = v30 != 1 && *(&v32 + 1) != 0.0;
  v39 = v14 | v38;
  if (v18 || a9)
  {
    v39 |= 6u;
  }

  else
  {
    v40 = a10 - 1;
    v41 = v35.val[0].i32[0];
    v42 = v35.val[0].i32[1];
    if (v35.val[1].i32[0] >= 0)
    {
      v43 = v35.val[0].i32[0];
    }

    else
    {
      v43 = v35.val[0].i32[0] + (a10 - 1) * v35.val[1].i32[0];
    }

    if (v35.val[1].i32[0] >= 0)
    {
      v41 = v35.val[0].i32[0] + (a10 - 1) * v35.val[1].i32[0];
    }

    if (v35.val[1].i32[1] >= 0)
    {
      v44 = v35.val[0].i32[1];
    }

    else
    {
      v44 = v35.val[0].i32[1] + (a10 - 1) * v35.val[1].i32[1];
    }

    if (v35.val[1].i32[1] >= 0)
    {
      v42 = v35.val[0].i32[1] + (a10 - 1) * v35.val[1].i32[1];
    }

    if ((v39 & 8) != 0)
    {
      v45 = v43 - 0x8000;
    }

    else
    {
      v45 = v43;
    }

    if ((v39 & 8) != 0)
    {
      v46 = v41 + 0x8000;
    }

    else
    {
      v46 = v41;
    }

    if ((v39 & 8) != 0)
    {
      v47 = v44 - 0x8000;
    }

    else
    {
      v47 = v44;
    }

    if ((v39 & 8) != 0)
    {
      v48 = v42 + 0x8000;
    }

    else
    {
      v48 = v42;
    }

    if (v45 < 0 || v46 > a2[4].i32[0] || v47 < 0 || v48 > a2[4].i32[1])
    {
      goto LABEL_58;
    }

    v49 = -_Q0.f32[0];
    if (_Q0.f32[0] >= 0.0)
    {
      v49 = _Q0.f32[0];
    }

    if (v49 > 8192.0)
    {
      goto LABEL_58;
    }

    v50 = -_Q0.f32[1];
    if (_Q0.f32[1] >= 0.0)
    {
      v50 = _Q0.f32[1];
    }

    if (v50 > 8192.0)
    {
      goto LABEL_58;
    }

    _S2 = v40;
    v52 = -(_Q0.f32[0] + (_Q0.f32[2] * v40));
    __asm { FMLA            S4, S2, V0.S[2] }

    if (_S4 >= 0.0)
    {
      v52 = _S4;
    }

    if (v52 > 8192.0)
    {
      goto LABEL_58;
    }

    __asm { FMLA            S4, S2, V0.S[3] }

    v55 = -(_Q0.f32[1] + (_Q0.f32[3] * _S2));
    if (_S4 >= 0.0)
    {
      v55 = _S4;
    }

    if (v55 > 8192.0)
    {
LABEL_58:
      v39 |= 2u;
    }
  }

  v56 = *(v13 + 376);
  if (v56)
  {
    v57 = 1.0;
    if (*(v56 + 4))
    {
      v57 = -1.0;
    }

    *(&v74 + 4) = __PAIR64__(*(v56 + 16), LODWORD(v57));
    v58 = *v56;
    if (*v56 > 2)
    {
      if (v58 == 3)
      {
        v59 = 0.0;
        v60 = -1.0;
      }

      else
      {
        if (v58 != 4)
        {
          goto LABEL_74;
        }

        v59 = 1.0;
        v60 = 0.0;
      }

      goto LABEL_72;
    }

    if (v58 == 1)
    {
      HIDWORD(v74) = *(v56 + 8);
      goto LABEL_74;
    }

    if (v58 == 2)
    {
      v59 = 0.5;
      v60 = -0.5;
LABEL_72:
      v61 = *(v56 + 8);
      v62 = *(v56 + 12);
      v63 = v61 + (v62 * v60);
      v64 = v61 + (v62 * v59);
      *(&v74 + 3) = v63;
      *v75 = v64;
      if (v64 <= v63)
      {
        *(&v74 + 3) = v64;
        *v75 = v63;
      }
    }
  }

LABEL_74:
  result = (*(*&a2[6] + 8 * v39))(&v66, a10, a11);
  if (*(*(a1 + 16) + a3 + 17) == 25 && a10)
  {
    do
    {
      *v28 = 16843009 * *(v28 + 3);
      v28 += 4;
      --v29;
    }

    while (v29);
  }

  return result;
}

void CA::OGL::SW::tex_color_match(float **this, const CA::ColorProgram::Program *a2, unsigned int *a3, unsigned int *a4)
{
  v150 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v9 = &v133 - v8;
  if (v6)
  {
    v10 = v6;
    v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    bzero(v9, v7 + 15);
    v13 = 0;
    v14.i32[1] = -16;
    *v15.i8 = vdup_n_s32(0x3B808081u);
    v16.i32[1] = 255;
    v17 = a3;
    v18 = v10;
    do
    {
      v20 = *v17++;
      v19 = v20;
      v21 = HIBYTE(v20);
      if (HIBYTE(v20))
      {
        v22 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v19), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), *v15.i8);
        v23 = v19 * 0.0039216;
        if (v21 != 255)
        {
          v24 = 255.0 / v21;
          v22 = vmul_n_f32(v22, v24);
          v23 = v23 * v24;
        }

        *(v11 + 4 * v13) = v22.i32[1];
        *(v11 + 4 * (v13 + 1)) = v22.i32[0];
        *(v11 + 4 * (v13 + 2)) = v23;
        v13 += 3;
      }

      --v18;
    }

    while (v18);
    if (v13)
    {
      v133 = v10;
      v134 = a3;
      v25 = *(this + 9) & 0x7FFFFFFF;
      if (v25)
      {
        v26 = this[6];
        v27.i64[0] = 0x8000000080000000;
        v27.i64[1] = 0x8000000080000000;
        v28 = 0.41667;
        v29 = -0.055;
        v30 = 1.055;
        v31 = 12.92;
        v148 = 0.052133;
        v32 = &qword_183E20000;
        v147 = 0.94787;
        v33 = &xmmword_183E21000;
        v146 = 2.4;
        v145 = 0.077399;
        v144 = -3.1309;
        v143 = 5.5918;
        v142 = 0.28467;
        v141 = v13;
        *&v135 = -0.055;
        v136 = 1054168405;
        *&v138 = 12.92;
        *&v139 = 1.055;
        while (1)
        {
          v34 = v25 & 0x1F;
          if (v34 <= 0xA)
          {
            break;
          }

          if ((v25 & 0x1F) <= 0xD)
          {
            v140 = v25;
            if (v34 == 11)
            {
              v70 = 0;
              do
              {
                v71 = v70;
                v72 = 3;
                do
                {
                  v15.i32[0] = *(v11 + 4 * v71);
                  v73 = fabsf(*v15.i32);
                  if (v73 <= 0.0031308)
                  {
                    *v14.i32 = *v15.i32 * v31;
                  }

                  else
                  {
                    v149 = v15;
                    v74 = powf(v73, v28);
                    v27.i64[0] = 0x8000000080000000;
                    v27.i64[1] = 0x8000000080000000;
                    *v75.i32 = v29 + (v74 * v30);
                    v15 = v149;
                    v14 = vbslq_s8(v27, v75, v149);
                  }

                  *(v11 + 4 * v71++) = v14.i32[0];
                  --v72;
                }

                while (v72);
                v70 += 3;
              }

              while (v70 < v13);
            }

            else
            {
              if (v34 != 12)
              {
                if (v34 == 13)
                {
                  v44 = 0;
                  do
                  {
                    v45 = v44;
                    v46 = 3;
                    do
                    {
                      v16.i32[0] = *(v11 + 4 * v45);
                      if (fabsf(*v16.i32) <= 0.5)
                      {
                        *v14.i32 = (*v16.i32 * *v16.i32) * *(v33 + 693);
                      }

                      else
                      {
                        v149 = v16;
                        *v14.i32 = expf(v144 + (*v16.i32 * v143));
                        v16 = v149;
                        v27.i64[0] = 0x8000000080000000;
                        v27.i64[1] = 0x8000000080000000;
                        v15.i64[0] = *v32;
                        *v14.i64 = (*v14.i32 + v142) * *v32;
                        *v14.i32 = *v14.i64;
                      }

                      *v14.i32 = *v14.i32 * 12.0;
                      v14 = vbslq_s8(v27, v14, v16);
                      *(v11 + 4 * v45++) = v14.i32[0];
                      --v46;
                    }

                    while (v46);
                    v44 += 3;
                    v13 = v141;
                  }

                  while (v44 < v141);
                }

                goto LABEL_108;
              }

              v94 = 0;
              do
              {
                v95 = v94;
                v96 = 3;
                do
                {
                  v15.i32[0] = *(v11 + 4 * v95);
                  v97 = fabsf(*v15.i32);
                  if (v97 <= 0.04045)
                  {
                    *v14.i32 = *v15.i32 * v145;
                  }

                  else
                  {
                    v149 = v15;
                    *v98.i32 = powf(v148 + (v97 * v147), v146);
                    v27.i64[0] = 0x8000000080000000;
                    v27.i64[1] = 0x8000000080000000;
                    v15 = v149;
                    v14 = vbslq_s8(v27, v98, v149);
                  }

                  *(v11 + 4 * v95++) = v14.i32[0];
                  --v96;
                }

                while (v96);
                v94 += 3;
              }

              while (v94 < v13);
            }

LABEL_93:
            v25 = v140;
            goto LABEL_102;
          }

          switch(v34)
          {
            case 0xEu:
              v86 = 0;
              do
              {
                v87 = v86;
                v88 = 3;
                do
                {
                  v15.i64[0] = *v32;
                  *v14.i64 = *(v11 + 4 * v87) * *v32;
                  *v16.i32 = *v14.i64;
                  *v14.i32 = fabsf(*v16.i32);
                  if (*v14.i32 <= 0.083333)
                  {
                    *v14.i32 = sqrtf(*v14.i32 * 3.0);
                  }

                  else
                  {
                    v149 = v16;
                    *v14.i64 = log(*v14.i32 * 12.0 + -0.284668922);
                    v27.i64[0] = 0x8000000080000000;
                    v27.i64[1] = 0x8000000080000000;
                    v15.i32[1] = 1071770313;
                    *v14.i64 = *v14.i64 * 0.178832769 + 0.559910715;
                    v16 = v149;
                    *v14.i32 = *v14.i64;
                  }

                  v14 = vbslq_s8(v27, v14, v16);
                  *(v11 + 4 * v87++) = v14.i32[0];
                  --v88;
                }

                while (v88);
                v86 += 3;
                v13 = v141;
              }

              while (v86 < v141);
              break;
            case 0x10u:
              v140 = v25;
              v137 = v26;
              v110 = 0;
              do
              {
                v111 = v110;
                v112 = 3;
                do
                {
                  *v14.i64 = *(v11 + 4 * v111) * 0.01;
                  *v14.i32 = *v14.i64;
                  v149 = v14;
                  v113 = powf(fabsf(*v14.i32), 0.1593);
                  *v114.i32 = powf(((v113 * 18.852) + 0.83594) / ((v113 * 18.688) + 1.0), 78.844);
                  v27.i64[0] = 0x8000000080000000;
                  v27.i64[1] = 0x8000000080000000;
                  v15 = v149;
                  v14 = vbslq_s8(v27, v114, v149);
                  *(v11 + 4 * v111++) = v14.i32[0];
                  --v112;
                }

                while (v112);
                v110 += 3;
                v13 = v141;
              }

              while (v110 < v141);
              v33 = &xmmword_183E21000;
              v32 = &qword_183E20000;
              v26 = v137;
LABEL_108:
              v25 = v140;
              goto LABEL_109;
            case 0xFu:
              v137 = v26;
              v140 = v25;
              v60 = 0;
              do
              {
                v61 = v60;
                v62 = 3;
                do
                {
                  v14.i32[0] = *(v11 + 4 * v61);
                  v149 = v14;
                  v63 = powf(fabsf(*v14.i32), 0.012683);
                  v64 = powf((v63 + -0.83594) / ((v63 * -18.688) + 18.852), 6.2774);
                  v27.i64[0] = 0x8000000080000000;
                  v27.i64[1] = 0x8000000080000000;
                  *v65.i32 = v64 * 100.0;
                  v15 = v149;
                  v14 = vbslq_s8(v27, v65, v149);
                  *(v11 + 4 * v61++) = v14.i32[0];
                  --v62;
                }

                while (v62);
                v60 += 3;
                v13 = v141;
              }

              while (v60 < v141);
              v25 = v140;
              v33 = &xmmword_183E21000;
              v26 = v137;
              v32 = &qword_183E20000;
              goto LABEL_109;
          }

LABEL_102:
          v33 = &xmmword_183E21000;
LABEL_109:
          v115 = v25 > 0x1F;
          v25 >>= 5;
          if (!v115)
          {
            goto LABEL_110;
          }
        }

        if ((v25 & 0x1F) > 3)
        {
          v140 = v25;
          switch(v34)
          {
            case 4u:
              v76 = 0;
              do
              {
                v77 = v26 + 6;
                v78 = v76;
                v79 = 3;
                do
                {
                  v80 = *(v77 - 6);
                  v81 = *(v77 - 3);
                  v82 = *v77;
                  v83 = v77[3];
                  v14.i32[0] = *(v11 + 4 * v78);
                  v149 = v14;
                  v84 = fabsf(*v14.i32);
                  *v85.i32 = powf(v82 + (v84 * v81), v80);
                  v27.i64[0] = 0x8000000080000000;
                  v27.i64[1] = 0x8000000080000000;
                  *v85.i32 = *v85.i32 + v83;
                  if (v84 < (-v82 / v81))
                  {
                    *v85.i32 = v83;
                  }

                  v15 = v149;
                  v14 = vbslq_s8(v27, v85, v149);
                  *(v11 + 4 * v78++) = v14.i32[0];
                  ++v77;
                  --v79;
                }

                while (v79);
                v76 += 3;
                v13 = v141;
              }

              while (v76 < v141);
              v26 += 12;
              v25 = v140;
LABEL_71:
              v28 = *&v136;
              goto LABEL_72;
            case 5u:
              v99 = 0;
              do
              {
                v100 = v26 + 6;
                v101 = v99;
                v102 = 3;
                do
                {
                  v103 = *(v100 - 6);
                  v104 = *(v100 - 3);
                  v105 = *v100;
                  v106 = v100[3];
                  v107 = v100[6];
                  v12.i32[0] = *(v11 + 4 * v101);
                  v149 = v12;
                  v108 = fabsf(*v12.i32);
                  *v109.i32 = powf(v105 + (v108 * v104), v103);
                  v27.i64[0] = 0x8000000080000000;
                  v27.i64[1] = 0x8000000080000000;
                  if (v108 < v107)
                  {
                    *v109.i32 = v108 * v106;
                  }

                  v15 = v149;
                  v14 = vbslq_s8(v27, v109, v149);
                  *(v11 + 4 * v101++) = v14.i32[0];
                  ++v100;
                  --v102;
                }

                while (v102);
                v99 += 3;
                v13 = v141;
              }

              while (v99 < v141);
              v26 += 15;
              v25 = v140;
              v28 = *&v136;
              goto LABEL_101;
            case 6u:
              v47 = 0;
              do
              {
                v48 = v26 + 9;
                v49 = v47;
                v50 = 3;
                do
                {
                  v51 = *(v48 - 9);
                  v52 = *(v48 - 6);
                  v53 = *(v48 - 3);
                  v54 = *v48;
                  v55 = v48[3];
                  v56 = v48[6];
                  v57 = v48[9];
                  v12.i32[0] = *(v11 + 4 * v49);
                  v149 = v12;
                  v58 = fabsf(*v12.i32);
                  *v59.i32 = powf(v53 + (v58 * v52), v51);
                  v27.i64[0] = 0x8000000080000000;
                  v27.i64[1] = 0x8000000080000000;
                  *v59.i32 = *v59.i32 + v56;
                  if (v58 < v55)
                  {
                    *v59.i32 = v57 + (v58 * v54);
                  }

                  v15 = v149;
                  v14 = vbslq_s8(v27, v59, v149);
                  *(v11 + 4 * v49++) = v14.i32[0];
                  ++v48;
                  --v50;
                }

                while (v50);
                v47 += 3;
                v13 = v141;
              }

              while (v47 < v141);
              v26 += 21;
              v25 = v140;
              goto LABEL_71;
          }
        }

        else
        {
          if (v34 == 1)
          {
            v66 = 0;
            do
            {
              v67 = *(v11 + 4 * v66);
              v68 = *(v11 + 4 * (v66 + 1));
              v69 = *(v11 + 4 * (v66 + 2));
              *(v11 + 4 * v66) = ((v26[9] + (*v26 * v67)) + (v26[3] * v68)) + (v26[6] * v69);
              *(v11 + 4 * (v66 + 1)) = ((v26[10] + (v26[1] * v67)) + (v26[4] * v68)) + (v26[7] * v69);
              *(v11 + 4 * (v66 + 2)) = ((v26[11] + (v26[2] * v67)) + (v26[5] * v68)) + (v26[8] * v69);
              v66 += 3;
            }

            while (v66 < v13);
            v26 += 12;
            goto LABEL_109;
          }

          v140 = v25;
          if (v34 == 2)
          {
            v89 = 0;
            do
            {
              v90 = 0;
              v91 = v89;
              do
              {
                v92 = v26[v90];
                v14.i32[0] = *(v11 + 4 * v91);
                v149 = v14;
                *v93.i32 = powf(fabsf(*v14.i32), v92);
                v27.i64[0] = 0x8000000080000000;
                v27.i64[1] = 0x8000000080000000;
                v15 = v149;
                v14 = vbslq_s8(v27, v93, v149);
                *(v11 + 4 * v91) = v14.i32[0];
                ++v90;
                ++v91;
              }

              while (v90 != 3);
              v89 += 3;
            }

            while (v89 < v13);
            v26 += 3;
          }

          else if (v34 == 3)
          {
            v35 = 0;
            do
            {
              v36 = v26 + 3;
              v37 = v35;
              v38 = 3;
              do
              {
                v39 = *(v36 - 3);
                v40 = *v36;
                v41 = v36[3];
                v14.i32[0] = *(v11 + 4 * v37);
                v149 = v14;
                v42 = fabsf(*v14.i32);
                *v43.i32 = powf(v41 + (v42 * v40), v39);
                v27.i64[0] = 0x8000000080000000;
                v27.i64[1] = 0x8000000080000000;
                if (v42 < (-v41 / v40))
                {
                  *v43.i32 = 0.0;
                }

                v15 = v149;
                v14 = vbslq_s8(v27, v43, v149);
                *(v11 + 4 * v37++) = v14.i32[0];
                ++v36;
                --v38;
              }

              while (v38);
              v35 += 3;
              v13 = v141;
            }

            while (v35 < v141);
            v26 += 9;
            v25 = v140;
LABEL_72:
            v29 = *&v135;
LABEL_101:
            v31 = *&v138;
            v30 = *&v139;
            goto LABEL_102;
          }
        }

        goto LABEL_93;
      }

LABEL_110:
      v116 = 0;
      __asm { FMOV            V2.2S, #1.0 }

      v122 = vdup_n_s32(0x437F0000u);
      v124 = v133;
      v123 = v134;
      do
      {
        v125 = *v123;
        if (v125)
        {
          v126 = *(v11 + 4 * (v116 + 2));
          if (v126 > 1.0)
          {
            v126 = 1.0;
          }

          if (v126 < 0.0)
          {
            v126 = 0.0;
          }

          v127.i32[0] = *(v11 + 4 * v116);
          v127.i32[1] = *(v11 + 4 * (v116 + 1));
          v128 = vbsl_s8(vcgt_f32(v127, _D2), _D2, v127);
          v129 = vshl_u32(vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v122, vbic_s8(v128, vcltz_f32(v128)))), 0x800000010);
          v130 = vorr_s8(v129, vdup_lane_s32(v129, 1)).u32[0] | ((v126 * 255.0) + 0.5) | 0xFF000000;
          v131 = v125 >> 24;
          if (v131 != 255)
          {
            v132 = ((((v130 | (v130 << 24)) & 0xFF00FF00FF00FFLL) + ((v130 | (v130 << 24)) & 0xFF00FF00FF00FFLL) * v131) >> 8) & 0xFF00FF00FF00FFLL;
            LODWORD(v130) = (v132 >> 24) | v132;
          }

          v116 += 3;
          *v123 = v130;
        }

        ++v123;
        --v124;
      }

      while (v124);
    }
  }
}

unsigned __int32 *CA::OGL::SW::tex_multiply_color(unsigned __int32 *this, unsigned int *a2, const unsigned int *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = vadd_s32(vand_s8(vdup_n_s32(a3 >> 8), 0xFF0000FF00), 0x100000100);
    do
    {
      v5 = *a2++;
      v6 = vand_s8(vmul_s32(v4, vand_s8(vshl_u32(vdup_n_s32(v5), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), 0x1FF0001FF0000);
      *this++ = ((((a3 >> 8) & 0xFF0000) + 0x10000) * HIBYTE(v5)) & 0xFF000000 | ((v5 * (a3 + 1)) >> 8) | v6.i32[0] | v6.i32[1];
      --a4;
    }

    while (a4);
  }

  return this;
}

unsigned __int32 *CA::OGL::SW::tex_multiply_color(unsigned __int32 *this, unsigned int *a2, unsigned int *a3, const unsigned int *a4)
{
  for (; a4; a4 = (a4 - 1))
  {
    v5 = *a2++;
    v4 = v5;
    v6 = *a3++;
    v7 = vand_s8(vmul_s32(vand_s8(vdup_n_s32(v4 >> 8), 0xFF0000FF00), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), 0x100000001)), 0x1FF0001FF0000);
    *this++ = (((v4 >> 8) & 0xFF0000) + ((v4 >> 8) & 0xFF0000) * HIBYTE(v6)) & 0xFF000000 | ((v4 * v6 + v4) >> 8) | v7.i32[0] | v7.i32[1];
  }

  return this;
}

unsigned int *CA::OGL::SW::tex_interpolate(unsigned int *this, unsigned int *a2, unsigned int *a3, const unsigned int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v6 = *a2++;
    v5 = v6;
    v7 = *a3++;
    *this++ = ((v5 & 0xFF00FF) + ((((v7 & 0xFF00FF) - (v5 & 0xFF00FF)) * a4) >> 8)) & 0xFF00FF | ((((v7 >> 8) & 0xFF00FF) - ((v5 >> 8) & 0xFF00FF)) * a4 + (((v5 >> 8) & 0xFF00FF) << 8)) & 0xFF00FF00;
  }

  return this;
}

unsigned int *CA::OGL::SW::convert_in(unsigned int *this, unsigned int *a2, unsigned __int8 *a3, void *a4, uint64_t a5)
{
  if (a4 <= 14)
  {
    if (a4)
    {
      if (a4 == 8)
      {
        if (a3)
        {
          for (; a5; --a5)
          {
            v7 = *a3++;
            v6 = v7;
            v8 = *a2;
            a2 = (a2 + 1);
            *this++ = (v8 << 8) | (v6 << 24) | v8 | (((v8 << 8) | (v6 << 24) | v8) << 8);
          }
        }

        else
        {
          for (; a5; --a5)
          {
            v18 = *a2;
            a2 = (a2 + 1);
            *this++ = (65793 * v18) | 0xFF000000;
          }
        }
      }
    }

    else
    {
      for (; a5; --a5)
      {
        v14 = *a3++;
        *this++ = v14 | (v14 << 8) | ((v14 | (v14 << 8)) << 16);
      }
    }
  }

  else if (a4 == 15)
  {
    if (a3)
    {
      for (; a5; --a5)
      {
        v10 = *a3++;
        v9 = v10;
        v11 = *a2;
        a2 = (a2 + 2);
        v12 = (v11 << 6) & 0xF800 | (8 * (v11 & 0x1F)) | (((v11 >> 10) & 0x1F) << 19);
        *this++ = (v12 >> 3) & 0x70707 | (v9 << 24) | v12;
      }
    }

    else
    {
      for (; a5; --a5)
      {
        v15 = *a2;
        a2 = (a2 + 2);
        v16 = (v15 << 6) & 0xF800 | (8 * (v15 & 0x1F)) | (((v15 >> 10) & 0x1F) << 19);
        *this++ = v16 | (v16 >> 3) & 0x70707 | 0xFF000000;
      }
    }
  }

  else if (a4 == 32)
  {
    if (a3)
    {
      for (; a5; --a5)
      {
        v13 = *a2++;
        *this++ = v13;
      }
    }

    else
    {
      for (; a5; --a5)
      {
        v17 = *a2++;
        *this++ = v17 | 0xFF000000;
      }
    }
  }

  else if (a4 == 16 && a5)
  {
    do
    {
      v5 = *a2;
      a2 = (a2 + 2);
      *this++ = (65792 * v5) | (v5 >> 8 << 24) | v5;
      --a5;
    }

    while (a5);
  }

  return this;
}

unsigned int *CA::OGL::SW::tex_blend_dest(CA::OGL::SW *this, unsigned int *a2, unsigned int *a3, const unsigned int *a4, const unsigned int *a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v10 = 4 * a5;
  MEMORY[0x1EEE9AC00](this);
  bzero(v13 - ((v10 + 30) & 0xFFFFFFFFFFFFFFF0), v10 + 15);
  v11 = &v13[1] - ((v10 + 30) & 0xFFFFFFFFFFFFFFF0) + 7;
  memcpy((v11 & 0xFFFFFFFFFFFFFFF0), a2, v10);
  return CA::OGL::SW::tex_mix(this, a3, (v11 & 0xFFFFFFFFFFFFFFF0), a4, a5);
}

unsigned int *CA::OGL::SW::tex_blend_color(CA::OGL::SW *this, unsigned int *a2, const unsigned int *a3, const unsigned int *a4, const unsigned int *a5, void (*a6)(unint64_t, unsigned int *, unint64_t, const unsigned int *, void), void (*a7)(unsigned int *, const unsigned int *, const unsigned int *, unint64_t, const unsigned int *), const unsigned int *a8)
{
  v12 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 4 * a5;
  MEMORY[0x1EEE9AC00](this);
  bzero(&v18[-((v15 + 30) & 0xFFFFFFFFFFFFFFF0)], v15 + 15);
  v16 = &v18[-((v15 + 30) & 0xFFFFFFFFFFFFFFF0) + 15];
  __pattern4 = v12;
  memset_pattern4((v16 & 0xFFFFFFFFFFFFFFF0), &__pattern4, v15);
  a6(v16 & 0xFFFFFFFFFFFFFFF0, a2, v16 & 0xFFFFFFFFFFFFFFF0, a5, a7);
  return CA::OGL::SW::tex_mix(this, a2, (v16 & 0xFFFFFFFFFFFFFFF0), a4, a5);
}

unsigned int *CA::OGL::SW::tex_blend_image(CA::OGL::SW *this, unsigned int *a2, const unsigned int *a3, const unsigned int *a4, const unsigned int *a5, void (*a6)(unint64_t, unsigned int *, const unsigned int *, const unsigned int *, void), void (*a7)(unsigned int *, const unsigned int *, const unsigned int *, unint64_t, const unsigned int *), const unsigned int *a8)
{
  v18[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v16 = v18 - ((v15 + 30) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, v15 + 15);
  v16 += 15;
  a6(v16 & 0xFFFFFFFFFFFFFFF0, a2, a3, a5, a7);
  return CA::OGL::SW::tex_mix(this, a2, (v16 & 0xFFFFFFFFFFFFFFF0), a4, a5);
}

unsigned __int32 *CA::OGL::SW::tex_color_matrix_4x4_bias(unsigned __int32 *this, unsigned int *a2, const unsigned int *a3, float32x2_t *a4, const float *a5)
{
  if (a3)
  {
    __asm { FMOV            V4.2S, #1.0 }

    v10 = vdup_n_s32(0x437F0000u);
    do
    {
      v11 = *a2;
      v12 = HIBYTE(*a2);
      if (v12)
      {
        v14 = v12 * 0.0039216;
        v15 = 1.0 / v12;
        v16 = v15 * BYTE2(v11);
        v17 = v15 * BYTE1(v11);
        v18 = v15 * *a2;
        v19 = vmla_n_f32(vmla_n_f32(a4[8], *a4, v16), a4[2], v17);
        v20 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(a4[9], a4[1], v16), a4[3], v17), a4[5], v18), a4[7], v14);
        v21 = v20.f32[1];
        v22 = vmuls_lane_f32(v20.f32[0], v20, 1);
        if (v22 > 1.0)
        {
          v22 = 1.0;
        }

        if (v22 < 0.0)
        {
          v22 = 0.0;
        }

        if (v20.f32[1] > 1.0)
        {
          v21 = 1.0;
        }

        if (v21 < 0.0)
        {
          v21 = 0.0;
        }

        v23 = vmul_lane_f32(vmla_n_f32(vmla_n_f32(v19, a4[4], v18), a4[6], v14), v20, 1);
        v24 = vbsl_s8(vcgt_f32(v23, _D4), _D4, v23);
        v25 = vshl_u32(vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v10, vbic_s8(v24, vcltz_f32(v24)))), 0x800000010);
        v13 = v25.i32[0] | (((v21 * 255.0) + 0.5) << 24) | v25.i32[1] | ((v22 * 255.0) + 0.5);
      }

      else
      {
        v13 = 0;
      }

      *this++ = v13;
      ++a2;
      a3 = (a3 - 1);
    }

    while (a3);
  }

  return this;
}

unsigned int *CA::OGL::SW::tex_vibrant_color_matrix(CA::OGL::SW *this, unsigned int *a2, unsigned int *a3, const unsigned int *a4, float32x2_t *a5, const float *a6)
{
  v15[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v12 = v15 - ((v11 + 30) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12, v11 + 15);
  v12 += 15;
  CA::OGL::SW::tex_color_matrix_4x4_bias((v12 & 0xFFFFFFFFFFFFFFF0), a2, a4, a5, v13);
  return CA::OGL::SW::tex_mix(this, a2, (v12 & 0xFFFFFFFFFFFFFFF0), a3, a4);
}

unsigned __int32 *CA::OGL::SW::tex_vibrant_dark(CA::OGL::SW *this, unsigned int *a2, unsigned int *a3, const unsigned int *a4, float *a5, const float *a6)
{
  v9 = this;
  v64 = *MEMORY[0x1E69E9840];
  v10 = ((((a5[1] * 255.0) + 0.5) << 8) | (((*a5 * 255.0) + 0.5) << 16) | ((a5[2] * 255.0) + 0.5) | (((a5[3] * 255.0) + 0.5) << 24));
  v11 = ((((a5[5] * 255.0) + 0.5) << 8) | (((a5[4] * 255.0) + 0.5) << 16) | ((a5[6] * 255.0) + 0.5) | (((a5[7] * 255.0) + 0.5) << 24));
  v12 = a5[8];
  MEMORY[0x1EEE9AC00](this);
  v14 = &v63 - ((v13 + 30) & 0xFFFFFFFFFFFFFFF0);
  bzero(v14, v13 + 15);
  v15 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == 0.0)
  {
    result = CA::OGL::SW::tex_multiply_color(v15, a3, v10, a4);
    if (a4)
    {
      v39 = 0;
      do
      {
        v40 = v15[v39];
        v41 = a2[v39];
        v42 = HIBYTE(v40);
        v43 = vand_s8(vshl_u32(vdup_n_s32(v40), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v44 = v40;
        v45 = HIBYTE(v41);
        v46 = HIBYTE(v40) + 1;
        v47 = (HIBYTE(v41) * v46) >> 8;
        if (HIBYTE(v41) == 255)
        {
          v48 = 0;
          v49 = 0;
        }

        else
        {
          v47 += ((v45 ^ 0xFF) * v46) >> 8;
          v49 = vshr_n_u32(vmul_s32(vdup_n_s32(v45 ^ 0xFF), vadd_s32(v43, 0x100000001)), 8uLL);
          v48 = ((v45 ^ 0xFF) + (v45 ^ 0xFF) * v44) >> 8;
        }

        v50 = vand_s8(vshl_u32(vdup_n_s32(v41), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v51 = a2[v39];
        if (v42 != 255)
        {
          v52 = v42 ^ 0xFF;
          v47 += (v52 + v52 * v45) >> 8;
          v49 = vsra_n_u32(v49, vmul_s32(vadd_s32(v50, 0x100000001), vdup_n_s32(v42 ^ 0xFF)), 8uLL);
          v48 += (v52 + v52 * v51) >> 8;
        }

        v53 = v46 * v42;
        v54 = v42;
        if (v42 > v43.i32[0])
        {
          v54 = (255 * ((v50.i32[0] + v50.i32[0] * (v53 >> 8)) >> 8)) / (v42 - v43.i32[0]);
          if (v54 >= v42)
          {
            v54 = v42;
          }
        }

        v55 = v42;
        if (v42 > v43.i32[1])
        {
          v55 = (255 * ((v50.i32[1] + v50.i32[1] * (v53 >> 8)) >> 8)) / (v42 - v43.i32[1]);
          if (v55 >= v42)
          {
            v55 = v42;
          }
        }

        v56 = (255 * ((v51 + v51 * (v53 >> 8)) >> 8)) / (v42 - v44);
        if (v56 >= v42)
        {
          v56 = v42;
        }

        if (v42 > v44)
        {
          v42 = v56;
        }

        v57 = vadd_s32(__PAIR64__(v55, v54), v49);
        v58 = v42 + v48;
        if (v58 >= v47)
        {
          v58 = v47;
        }

        v59 = vshl_u32(vmax_s32(vmin_s32(v57, vdup_n_s32(v47)), 0), 0x800000010);
        v9[v39] = v59.i32[0] | (v47 << 24) | v58 & ~(v58 >> 31) | v59.i32[1];
        v39 = (v39 + 1);
      }

      while (a4 != v39);
      CA::OGL::SW::tex_multiply_color(v15, a3, v11, a4);
      do
      {
        v62 = *v15++;
        HIDWORD(v63) = *v9;
        result = CA::OGL::SW::Blend::LightenSover::f(&v63 + 1, v62, v60, v61);
        *v9++ = HIDWORD(v63);
        a4 = (a4 - 1);
      }

      while (a4);
    }
  }

  else
  {
    result = CA::OGL::SW::tex_multiply_color(v15, a3, v11, a4);
    if (a4)
    {
      v19 = 0;
      do
      {
        v20 = v15[v19];
        HIDWORD(v63) = a2[v19];
        CA::OGL::SW::Blend::LightenSover::f(&v63 + 1, v20, v17, v18);
        v9[v19] = HIDWORD(v63);
        v19 = (v19 + 1);
      }

      while (a4 != v19);
      result = CA::OGL::SW::tex_multiply_color(v15, a3, v10, a4);
      do
      {
        v21 = HIBYTE(*v15);
        v22 = vand_s8(vshl_u32(vdup_n_s32(*v15), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v23 = *v15;
        v24 = HIBYTE(*v9);
        v25 = v21 + 1;
        v26 = (v24 * (v21 + 1)) >> 8;
        if (v24 == 255)
        {
          v27 = 0;
          v28 = 0;
        }

        else
        {
          v26 += ((v24 ^ 0xFF) * v25) >> 8;
          v28 = vshr_n_u32(vmul_s32(vdup_n_s32(v24 ^ 0xFF), vadd_s32(v22, 0x100000001)), 8uLL);
          v27 = ((v24 ^ 0xFF) + (v24 ^ 0xFF) * v23) >> 8;
        }

        v29 = vand_s8(vshl_u32(vdup_n_s32(*v9), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v30 = *v9;
        if (v21 != 255)
        {
          v31 = v21 ^ 0xFF;
          v26 += (v31 + v31 * v24) >> 8;
          v28 = vsra_n_u32(v28, vmul_s32(vadd_s32(v29, 0x100000001), vdup_n_s32(v21 ^ 0xFF)), 8uLL);
          v27 += (v31 + v31 * v30) >> 8;
        }

        v32 = v25 * v21;
        v33 = HIBYTE(*v15);
        if (v21 > v22.i32[0])
        {
          v33 = (255 * ((v29.i32[0] + v29.i32[0] * (v32 >> 8)) >> 8)) / (v21 - v22.i32[0]);
          if (v33 >= v21)
          {
            v33 = HIBYTE(*v15);
          }
        }

        v34 = HIBYTE(*v15);
        if (v21 > v22.i32[1])
        {
          v34 = (255 * ((v29.i32[1] + v29.i32[1] * (v32 >> 8)) >> 8)) / (v21 - v22.i32[1]);
          if (v34 >= v21)
          {
            v34 = HIBYTE(*v15);
          }
        }

        v35 = (255 * ((v30 + v30 * (v32 >> 8)) >> 8)) / (v21 - v23);
        if (v35 >= v21)
        {
          v35 = HIBYTE(*v15);
        }

        if (v21 > v23)
        {
          v21 = v35;
        }

        v36 = vadd_s32(__PAIR64__(v34, v33), v28);
        v37 = v21 + v27;
        if (v37 >= v26)
        {
          v37 = v26;
        }

        v38 = vshl_u32(vmax_s32(vmin_s32(v36, vdup_n_s32(v26)), 0), 0x800000010);
        *v9++ = v38.i32[0] | (v26 << 24) | v37 & ~(v37 >> 31) | v38.i32[1];
        ++v15;
        a4 = (a4 - 1);
      }

      while (a4);
    }
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::tex_vibrant_light(CA::OGL::SW *this, unsigned int *a2, unsigned int *a3, const unsigned int *a4, float *a5, const float *a6)
{
  v9 = this;
  v64 = *MEMORY[0x1E69E9840];
  v10 = ((((a5[1] * 255.0) + 0.5) << 8) | (((*a5 * 255.0) + 0.5) << 16) | ((a5[2] * 255.0) + 0.5) | (((a5[3] * 255.0) + 0.5) << 24));
  v11 = ((((a5[5] * 255.0) + 0.5) << 8) | (((a5[4] * 255.0) + 0.5) << 16) | ((a5[6] * 255.0) + 0.5) | (((a5[7] * 255.0) + 0.5) << 24));
  v12 = a5[8];
  MEMORY[0x1EEE9AC00](this);
  v14 = &v63 - ((v13 + 30) & 0xFFFFFFFFFFFFFFF0);
  bzero(v14, v13 + 15);
  v15 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == 0.0)
  {
    result = CA::OGL::SW::tex_multiply_color(v15, a3, v10, a4);
    if (a4)
    {
      v39 = 0;
      do
      {
        v40 = v15[v39];
        v41 = a2[v39];
        v42 = HIBYTE(v40);
        v43 = vand_s8(vshl_u32(vdup_n_s32(v40), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v44 = v40;
        v45 = HIBYTE(v41);
        v46 = HIBYTE(v40) + 1;
        v47 = (HIBYTE(v41) * v46) >> 8;
        if (HIBYTE(v41) == 255)
        {
          v48 = 0;
          v49 = 0;
          v50 = (HIBYTE(v41) * v46) >> 8;
        }

        else
        {
          v50 = v47 + (((v45 ^ 0xFF) * v46) >> 8);
          v49 = vshr_n_u32(vmul_s32(vdup_n_s32(v45 ^ 0xFF), vadd_s32(v43, 0x100000001)), 8uLL);
          v48 = ((v45 ^ 0xFF) + (v45 ^ 0xFF) * v44) >> 8;
        }

        v51 = vand_s8(vshl_u32(vdup_n_s32(v41), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v52 = a2[v39];
        if (v42 != 255)
        {
          v53 = v42 ^ 0xFF;
          v50 += (v53 + v53 * v45) >> 8;
          v49 = vsra_n_u32(v49, vmul_s32(vadd_s32(v51, 0x100000001), vdup_n_s32(v42 ^ 0xFF)), 8uLL);
          v48 += (v53 + v53 * v52) >> 8;
        }

        v54 = v49.i32[0];
        if (v43.i32[0])
        {
          v54 = v49.i32[0] + v47 - ((((v46 * v42) >> 8) * ((255 * (v45 - v51.i32[0])) / v43.i32[0]) + ((v46 * v42) >> 8)) >> 8);
        }

        v55 = v49.i32[1];
        if (v43.i32[1])
        {
          v55 = v49.i32[1] + v47 - ((((v46 * v42) >> 8) * ((255 * (v45 - v51.i32[1])) / v43.i32[1]) + ((v46 * v42) >> 8)) >> 8);
        }

        if (v15[v39])
        {
          v48 = v48 + v47 - ((((v46 * v42) >> 8) * ((255 * (v45 - v52)) / v44) + ((v46 * v42) >> 8)) >> 8);
        }

        if (v55 >= v50)
        {
          v56 = v50;
        }

        else
        {
          v56 = v55;
        }

        v57 = v56 & ~(v56 >> 31);
        if (v54 >= v50)
        {
          v58 = v50;
        }

        else
        {
          v58 = v54;
        }

        v59 = v58 & ~(v58 >> 31);
        if (v48 >= v50)
        {
          v48 = v50;
        }

        v9[v39] = (v59 << 16) | (v50 << 24) | (v57 << 8) | v48 & ~(v48 >> 31);
        v39 = (v39 + 1);
      }

      while (a4 != v39);
      CA::OGL::SW::tex_multiply_color(v15, a3, v11, a4);
      do
      {
        v62 = *v15++;
        HIDWORD(v63) = *v9;
        result = CA::OGL::SW::Blend::DarkenSover::f(&v63 + 1, v62, v60, v61);
        *v9++ = HIDWORD(v63);
        a4 = (a4 - 1);
      }

      while (a4);
    }
  }

  else
  {
    result = CA::OGL::SW::tex_multiply_color(v15, a3, v11, a4);
    if (a4)
    {
      v19 = 0;
      do
      {
        v20 = v15[v19];
        HIDWORD(v63) = a2[v19];
        CA::OGL::SW::Blend::DarkenSover::f(&v63 + 1, v20, v17, v18);
        v9[v19] = HIDWORD(v63);
        v19 = (v19 + 1);
      }

      while (a4 != v19);
      CA::OGL::SW::tex_multiply_color(v15, a3, v10, a4);
      do
      {
        v21 = HIBYTE(*v15);
        v22 = vand_s8(vshl_u32(vdup_n_s32(*v15), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v23 = *v15;
        v24 = HIBYTE(*v9);
        v25 = v21 + 1;
        v26 = (v24 * (v21 + 1)) >> 8;
        if (v24 == 255)
        {
          v27 = 0;
          v28 = 0;
          v29 = (255 * (v21 + 1)) >> 8;
        }

        else
        {
          v29 = v26 + (((v24 ^ 0xFF) * v25) >> 8);
          v28 = vshr_n_u32(vmul_s32(vdup_n_s32(v24 ^ 0xFF), vadd_s32(v22, 0x100000001)), 8uLL);
          v27 = ((v24 ^ 0xFF) + (v24 ^ 0xFF) * v23) >> 8;
        }

        v30 = vand_s8(vshl_u32(vdup_n_s32(*v9), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v31 = *v9;
        if (v21 != 255)
        {
          v32 = v21 ^ 0xFF;
          v29 += (v32 + v32 * v24) >> 8;
          v28 = vsra_n_u32(v28, vmul_s32(vadd_s32(v30, 0x100000001), vdup_n_s32(v21 ^ 0xFF)), 8uLL);
          v27 += (v32 + v32 * v31) >> 8;
        }

        v33 = v28.i32[0];
        if (v22.i32[0])
        {
          v33 = v28.i32[0] + v26 - ((((v25 * v21) >> 8) * ((255 * (v24 - v30.i32[0])) / v22.i32[0]) + ((v25 * v21) >> 8)) >> 8);
        }

        result = v22.u32[1];
        v34 = v28.i32[1];
        if (v22.i32[1])
        {
          result = (((v25 * v21) >> 8) * ((255 * (v24 - v30.i32[1])) / v22.i32[1]) + ((v25 * v21) >> 8));
          v34 = v28.i32[1] + v26 - (result >> 8);
        }

        if (*v15)
        {
          v27 = v27 + v26 - ((((v25 * v21) >> 8) * ((255 * (v24 - v31)) / v23) + ((v25 * v21) >> 8)) >> 8);
        }

        if (v34 >= v29)
        {
          v35 = v29;
        }

        else
        {
          v35 = v34;
        }

        v36 = v35 & ~(v35 >> 31);
        if (v33 >= v29)
        {
          v37 = v29;
        }

        else
        {
          v37 = v33;
        }

        v38 = v37 & ~(v37 >> 31);
        if (v27 >= v29)
        {
          v27 = v29;
        }

        *v9++ = (v38 << 16) | (v29 << 24) | (v36 << 8) | v27 & ~(v27 >> 31);
        ++v15;
        a4 = (a4 - 1);
      }

      while (a4);
    }
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::DarkenSover::f(_DWORD *this, unsigned int *a2, unsigned int a3, const unsigned int *a4)
{
  v4 = *this;
  v5 = 19 * *this + 183 * BYTE1(v4) + 54 * BYTE2(v4);
  v6 = (v5 >> 8) * (v5 >> 8) + (v5 >> 8);
  v7 = ((((a2 | (a2 << 24)) & 0xFF00FF00FF00FFLL) * ((((v6 >> 8) * (v6 >> 8) + (v6 >> 8)) >> 8) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
  v8 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * ((~(v7 >> 24) >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
  *this = ((v8 >> 24) | v8) + ((v7 >> 24) | v7);
  return this;
}

_DWORD *CA::OGL::SW::Blend::LightenSover::f(_DWORD *this, unsigned int *a2, unsigned int a3, const unsigned int *a4)
{
  v4 = *this;
  v5 = 19 * *this + 183 * BYTE1(v4) + 54 * BYTE2(v4);
  v6 = (255 - (v5 >> 8)) * (256 - (v5 >> 8));
  v7 = ((((a2 | (a2 << 24)) & 0xFF00FF00FF00FFLL) * ((((v6 >> 8) * (v6 >> 8) + (v6 >> 8)) >> 8) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
  v8 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * ((~(v7 >> 24) >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
  *this = ((v8 >> 24) | v8) + ((v7 >> 24) | v7);
  return this;
}

unsigned int *CA::OGL::SW::tex_mix(unsigned int *this, unsigned int *a2, unsigned int *a3, const unsigned int *a4, const unsigned int *a5)
{
  for (; a5; a5 = (a5 - 1))
  {
    v6 = *a2++;
    v5 = v6;
    v7 = *a3++;
    *this++ = ((v5 & 0xFF00FF) + (((*(a4 + 3) + 1) * ((v7 & 0xFF00FF) - (v5 & 0xFF00FF))) >> 8)) & 0xFF00FF | ((((v7 >> 8) & 0xFF00FF) - ((v5 >> 8) & 0xFF00FF)) * (*(a4 + 3) + 1) + (((v5 >> 8) & 0xFF00FF) << 8)) & 0xFF00FF00;
    ++a4;
  }

  return this;
}

uint64_t std::__function::__func<CA::OGL::SWContext::draw_elements(CA::OGL::PrimitiveMode,unsigned int,unsigned short const*,CA::OGL::Vertex const*,unsigned int,unsigned int,CA::OGL::ClipPlane const*)::$_0,std::allocator<CA::OGL::SWContext::draw_elements(CA::OGL::PrimitiveMode,unsigned int,unsigned short const*,CA::OGL::Vertex const*,unsigned int,unsigned int,CA::OGL::ClipPlane const*)::$_0>,BOOL ()(CA::OGL::Vertex*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF1F9CA8;
  a2[1] = v2;
  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::SoverMulDMulSa,false>::blend(_DWORD *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = BYTE3(v4);
    v8 = v6 >> 24;
    v9 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) + ((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * v8) >> 8) & 0xFF00FF00FF00FFLL;
    v10 = ((((v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL) * (256 - ((v8 + v8 * v7) >> 8))) >> 8) & 0xFF00FF00FF00FFLL;
    LODWORD(v9) = (v9 >> 24) | v9;
    LODWORD(v10) = (v10 >> 24) | v10;
    v11 = (v10 & 0xFF00FF) + (v9 & 0xFF00FF);
    LODWORD(v9) = ((v10 >> 8) & 0xFF00FF) + ((v9 >> 8) & 0xFF00FF);
    *result++ = v11 & 0xFF00FF | (v9 << 8) | (15 * (v9 & 0x1000100 | (v11 >> 8) & 0x10001)) | (240 * (v9 & 0x1000100 | (v11 >> 8) & 0x10001)) | 0xFF000000;
  }

  return result;
}

_WORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::SDFSubtraction,false>::blend(_WORD *result, unsigned int *a2, unsigned int *a3, uint64_t a4, int *a5)
{
  if (a4)
  {
    v5 = vdup_n_s16(0x2008u);
    v6 = vdup_n_s16(0x57F0u);
    do
    {
      v8 = *a3++;
      v7 = v8;
      v9 = *a2++;
      _H18 = v9 * COERCE_SHORT_FLOAT(8200);
      v11 = vshl_u32(vdup_n_s32(v9), 0xFFFFFFE8FFFFFFF0);
      *v11.i16 = v11.i8[0];
      v12 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFE8FFFFFFF0);
      *&v11.i16[1] = v11.i8[4];
      *v12.i16 = v12.i8[0];
      *&v12.i16[1] = v12.i8[4];
      v13 = vmul_f16(v11, v5);
      v14 = vmul_f16(v12, v5);
      _S22 = *a5;
      __asm { FCVT            H22, S22 }

      v20 = (COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(0.5)) + (vaddv_f16(vmul_f16(v13, v14)) * COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(0.5)))) * *&_S22;
      __asm { FCMP            H23, #0 }

      _H21 = -(v7 * COERCE_SHORT_FLOAT(8200));
      __asm { FCVT            S21, H21 }

      if (_NF)
      {
        _H8 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        _H8 = _H23;
      }

      __asm
      {
        FCVT            S18, H18
        FCVT            S23, H8
      }

      v27 = _S21 + ((_S18 - _S21) * _S23);
      _H21 = (_H8 * v20) * (COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) - _H8);
      __asm { FCVT            S21, H21 }

      _S18 = v27 + _S21;
      __asm { FCVT            H18, S18 }

      v31 = (*&_S18 * COERCE_SHORT_FLOAT(22512));
      v32 = vcvtq_s32_f32(vcvtq_f32_f16(vminnm_f16(vmaxnm_f16(vmul_f16(vmla_n_f16(vneg_f16(v14), vadd_f16(v14, v13), _H8), v6).u32[0], 3623933952).u32[0], 1475368944)));
      if (v31 >= 0x7FFF)
      {
        v31 = 0x7FFF;
      }

      HIBYTE(v33) = v32.i8[4];
      LOBYTE(v33) = v32.i8[0];
      if (v31 <= -32768)
      {
        LOWORD(v31) = 0x8000;
      }

      *result = v31;
      result[1] = v33;
      result += 2;
      --a4;
    }

    while (a4);
  }

  return result;
}

_WORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::SDFUnion,false>::blend(_WORD *result, unsigned int *a2, unsigned int *a3, uint64_t a4, int *a5)
{
  if (a4)
  {
    v5 = vdup_n_s16(0x2008u);
    v6 = vdup_n_s16(0x57F0u);
    do
    {
      v8 = *a3++;
      v7 = v8;
      v9 = *a2++;
      v10 = vshl_u32(vdup_n_s32(v9), 0xFFFFFFE8FFFFFFF0);
      *v10.i16 = v10.i8[0];
      v11 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFE8FFFFFFF0);
      *&v10.i16[1] = v10.i8[4];
      v12 = vmul_f16(v10, v5);
      *v11.i16 = v11.i8[0];
      *&v11.i16[1] = v11.i8[4];
      v13 = vmul_f16(v11, v5);
      _S23 = *a5;
      _H19 = v9 * COERCE_SHORT_FLOAT(8200);
      __asm { FCVT            H23, S23 }

      _H22 = v7 * COERCE_SHORT_FLOAT(8200);
      __asm { FCMP            H24, #0 }

      if (_NF)
      {
        _H24 = COERCE_SHORT_FLOAT(0);
      }

      v23 = _H24 * _H23;
      __asm { FCMP            H24, #0 }

      if (_NF)
      {
        _H8 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        _H8 = _H24;
      }

      __asm
      {
        FCVT            S19, H19
        FCVT            S22, H22
        FCVT            S24, H8
      }

      v29 = _S19 + ((_S22 - _S19) * _S24);
      *&_S22 = (_H8 * v23) * (_H8 - COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)));
      __asm { FCVT            S22, H22 }

      _S19 = v29 + _S22;
      __asm { FCVT            H19, S19 }

      v32 = (*&_S19 * COERCE_SHORT_FLOAT(22512));
      v33 = vcvtq_s32_f32(vcvtq_f32_f16(vminnm_f16(vmaxnm_f16(vmul_f16(vmla_n_f16(v12, vsub_f16(v13, v12), _H8), v6).u32[0], 3623933952).u32[0], 1475368944)));
      if (v32 >= 0x7FFF)
      {
        v32 = 0x7FFF;
      }

      HIBYTE(v34) = v33.i8[4];
      LOBYTE(v34) = v33.i8[0];
      if (v32 <= -32768)
      {
        LOWORD(v32) = 0x8000;
      }

      *result = v32;
      result[1] = v34;
      result += 2;
      --a4;
    }

    while (a4);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Luminosity,false>::blend(_DWORD *result, unsigned int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ((((v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL) * ((~v4 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = v4 + ((v7 >> 24) | v7);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Color,false>::blend(_DWORD *result, unsigned int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ((((v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL) * ((~v4 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = v4 + ((v7 >> 24) | v7);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Saturation,false>::blend(_DWORD *result, unsigned int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ((((v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL) * ((~v4 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = v4 + ((v7 >> 24) | v7);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Hue,false>::blend(_DWORD *result, unsigned int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ((((v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL) * ((~v4 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = v4 + ((v7 >> 24) | v7);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::LightenSover,false>::blend(_DWORD *result, int *a2, unsigned int *a3, const unsigned int *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = a4;
    v5 = a3;
    v7 = result;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v10 = *a2++;
      v11 = v10;
      result = CA::OGL::SW::Blend::LightenSover::f(&v11, v8, a3, a4);
      *v7++ = v11;
      v4 = (v4 - 1);
    }

    while (v4);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::DarkenSover,false>::blend(_DWORD *result, int *a2, unsigned int *a3, const unsigned int *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = a4;
    v5 = a3;
    v7 = result;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v10 = *a2++;
      v11 = v10;
      result = CA::OGL::SW::Blend::DarkenSover::f(&v11, v8, a3, a4);
      *v7++ = v11;
      v4 = (v4 - 1);
    }

    while (v4);
  }

  return result;
}

unint64_t CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::VibrantLightSoverRev,false>::blend(unint64_t result, unsigned int *a2, unsigned int *a3, const unsigned int *a4, _DWORD *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = a3;
    v7 = result;
    do
    {
      v34 = a4;
      v8 = *v5;
      v35 = *a2;
      v9 = (v8 >> 8) & 0xFF0000;
      v10 = (v8 >> 8) & 0xFF00;
      CA::OGL::SW::Blend::DarkenSover::f(&v35, ((v9 + v9 * HIBYTE(a5[1])) & 0xFF000000 | ((v8 * a5[1] + v8) >> 8) | (v10 + v10 * BYTE2(a5[1])) & 0x1FF0000 | (BYTE1(v8) * BYTE1(a5[1]) + BYTE1(v8)) & 0x1FF00), a3, a4);
      v11 = v8 * *a5 + v8;
      v12 = (v9 + v9 * HIBYTE(*a5)) & 0xFF000000 | (v10 + v10 * BYTE2(*a5)) & 0x1FF0000;
      v13 = (BYTE1(v8) * BYTE1(*a5) + BYTE1(v8)) & 0x1FF00 | (v11 >> 8) | v12;
      v14 = HIBYTE(v12);
      v15 = vand_s8(vshl_u32(vdup_n_s32(v13), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
      v16 = BYTE1(v11);
      v17 = HIBYTE(v35);
      v18 = v14 + 1;
      v19 = (HIBYTE(v35) * (v14 + 1)) >> 8;
      if (HIBYTE(v35) == 255)
      {
        v20 = 0;
        v21 = 0;
        v22 = (HIBYTE(v35) * (v14 + 1)) >> 8;
      }

      else
      {
        v22 = v19 + (((v17 ^ 0xFF) * v18) >> 8);
        v21 = vshr_n_u32(vmul_s32(vdup_n_s32(v17 ^ 0xFF), vadd_s32(v15, 0x100000001)), 8uLL);
        v20 = ((v17 ^ 0xFF) + (v17 ^ 0xFF) * v16) >> 8;
      }

      v23 = vand_s8(vshl_u32(vdup_n_s32(v35), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
      if (v14 != 255)
      {
        v24 = v14 ^ 0xFF;
        v22 += (v24 + v24 * v17) >> 8;
        v21 = vsra_n_u32(v21, vmul_s32(vadd_s32(v23, 0x100000001), vdup_n_s32(v14 ^ 0xFF)), 8uLL);
        v20 += (v24 + v24 * v35) >> 8;
      }

      v25 = v21.i32[0];
      if (v15.i32[0])
      {
        LODWORD(a3) = 255 * (v17 - v23.i32[0]);
        v25 = v21.i32[0] + v19 - ((((v18 * v14) >> 8) * (a3 / v15.i32[0]) + ((v18 * v14) >> 8)) >> 8);
      }

      result = v15.u32[1];
      v26 = v21.i32[1];
      if (v15.i32[1])
      {
        LODWORD(a3) = (v18 * v14) >> 8;
        result = (a3 * ((255 * (v17 - v23.i32[1])) / v15.i32[1]) + a3);
        v26 = v21.i32[1] + v19 - (result >> 8);
      }

      v27 = v20 + v19 - ((((v18 * v14) >> 8) * ((255 * (v17 - v35)) / v16) + ((v18 * v14) >> 8)) >> 8);
      if (v16)
      {
        v28 = v27;
      }

      else
      {
        v28 = v20;
      }

      if (v26 >= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 = v26;
      }

      v30 = v29 & ~(v29 >> 31);
      if (v25 >= v22)
      {
        v31 = v22;
      }

      else
      {
        v31 = v25;
      }

      v32 = v31 & ~(v31 >> 31);
      if (v28 >= v22)
      {
        v28 = v22;
      }

      *v7++ = (v32 << 16) | (v22 << 24) | (v30 << 8) | v28 & ~(v28 >> 31);
      ++a2;
      ++v5;
      a4 = (v34 - 1);
    }

    while (v34 != 1);
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::VibrantDarkSoverRev,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, const unsigned int *a4, _DWORD *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = a3;
    v7 = result;
    do
    {
      v35 = a4;
      v8 = *v5;
      v36 = *a2;
      v9 = (v8 >> 8) & 0xFF0000;
      v10 = (v8 >> 8) & 0xFF00;
      result = CA::OGL::SW::Blend::LightenSover::f(&v36, ((v9 + v9 * HIBYTE(a5[1])) & 0xFF000000 | ((v8 * a5[1] + v8) >> 8) | (v10 + v10 * BYTE2(a5[1])) & 0x1FF0000 | (BYTE1(v8) * BYTE1(a5[1]) + BYTE1(v8)) & 0x1FF00), a3, a4);
      v11 = v8 * *a5 + v8;
      v12 = (v9 + v9 * HIBYTE(*a5)) & 0xFF000000 | (v10 + v10 * BYTE2(*a5)) & 0x1FF0000;
      v13 = (BYTE1(v8) * BYTE1(*a5) + BYTE1(v8)) & 0x1FF00 | (v11 >> 8) | v12;
      v14 = HIBYTE(v12);
      v15 = vand_s8(vshl_u32(vdup_n_s32(v13), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
      v16 = BYTE1(v11);
      v17 = HIBYTE(v36);
      v18 = v14 + 1;
      v19 = (HIBYTE(v36) * (v14 + 1)) >> 8;
      if (HIBYTE(v36) == 255)
      {
        v20 = 0;
        v21 = 0.0;
      }

      else
      {
        v19 += ((v17 ^ 0xFF) * v18) >> 8;
        v21 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(v17 ^ 0xFF), vadd_s32(v15, 0x100000001)), 8uLL));
        v20 = ((v17 ^ 0xFF) + (v17 ^ 0xFF) * BYTE1(v11)) >> 8;
      }

      v22 = vand_s8(vshl_u32(vdup_n_s32(v36), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
      v23 = v14 ^ 0xFF;
      v24 = v19 + ((v23 + v23 * v17) >> 8);
      v25 = COERCE_DOUBLE(vsra_n_u32(*&v21, vmul_s32(vadd_s32(v22, 0x100000001), vdup_n_s32(v14 ^ 0xFF)), 8uLL));
      v26 = v20 + ((v23 + v23 * v36) >> 8);
      if (v14 == 255)
      {
        v26 = v20;
      }

      else
      {
        v19 = v24;
        v21 = v25;
      }

      v27 = v18 * v14;
      v28 = v14;
      if (v14 > v15.i32[0])
      {
        v28 = (255 * ((v22.i32[0] + v22.i32[0] * (v27 >> 8)) >> 8)) / (v14 - v15.i32[0]);
        if (v28 >= v14)
        {
          v28 = v14;
        }
      }

      v29 = v14;
      if (v14 > v15.i32[1])
      {
        v29 = (255 * ((v22.i32[1] + v22.i32[1] * (v27 >> 8)) >> 8)) / (v14 - v15.i32[1]);
        if (v29 >= v14)
        {
          v29 = v14;
        }
      }

      v30 = (255 * ((v36 + v36 * (v27 >> 8)) >> 8)) / (v14 - BYTE1(v11));
      if (v30 >= v14)
      {
        v30 = v14;
      }

      if (v14 > v16)
      {
        v14 = v30;
      }

      v31 = vadd_s32(__PAIR64__(v29, v28), *&v21);
      v32 = v14 + v26;
      if (v32 >= v19)
      {
        v32 = v19;
      }

      v33 = vshl_u32(vmax_s32(vmin_s32(v31, vdup_n_s32(v19)), 0), 0x800000010);
      *v7++ = v33.i32[0] | (v19 << 24) | v32 & ~(v32 >> 31) | v33.i32[1];
      ++a2;
      ++v5;
      a4 = (v35 - 1);
    }

    while (v35 != 1);
  }

  return result;
}

int *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::VibrantLightSover,false>::blend(int *result, unsigned int *a2, _DWORD *a3, uint64_t a4, _DWORD *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a4;
    v9 = result;
    do
    {
      v10 = *a3 >> 8;
      v11 = BYTE1(*a3);
      v12 = *a3;
      v13 = (v11 * BYTE1(*a5) + v10) & 0x1FF00;
      v14 = v12 * *a5 + v12;
      v15 = v10 & 0xFF0000;
      v16 = v10 & 0xFF00;
      v17 = (v15 + v15 * HIBYTE(*a5)) & 0xFF000000 | (v16 + v16 * BYTE2(*a5)) & 0x1FF0000;
      v18 = HIBYTE(v17);
      v19 = vand_s8(vshl_u32(vdup_n_s32(v13 | (v14 >> 8) | v17), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
      v20 = BYTE1(v14);
      v21 = HIBYTE(*a2);
      v22 = v18 + 1;
      v23 = (v21 * (v18 + 1)) >> 8;
      if (v21 == 255)
      {
        v24 = 0;
        v25 = 0;
        v26 = (255 * (v18 + 1)) >> 8;
      }

      else
      {
        v26 = v23 + (((v21 ^ 0xFF) * v22) >> 8);
        v25 = vshr_n_u32(vmul_s32(vdup_n_s32(v21 ^ 0xFF), vadd_s32(v19, 0x100000001)), 8uLL);
        v24 = ((v21 ^ 0xFF) + (v21 ^ 0xFF) * v20) >> 8;
      }

      v27 = vand_s8(vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
      v28 = *a2;
      if (v18 != 255)
      {
        v29 = v18 ^ 0xFF;
        v26 += (v29 + v29 * v21) >> 8;
        v25 = vsra_n_u32(v25, vmul_s32(vadd_s32(v27, 0x100000001), vdup_n_s32(v18 ^ 0xFF)), 8uLL);
        v24 += (v29 + v29 * v28) >> 8;
      }

      v30 = v25.i32[0];
      if (v19.i32[0])
      {
        v30 = v25.i32[0] + v23 - ((((v22 * v18) >> 8) * ((255 * (v21 - v27.i32[0])) / v19.i32[0]) + ((v22 * v18) >> 8)) >> 8);
      }

      v31 = v25.u32[1];
      if (v19.i32[1])
      {
        v31 = (v25.i32[1] + v23 - ((((v22 * v18) >> 8) * ((255 * (v21 - v27.i32[1])) / v19.i32[1]) + ((v22 * v18) >> 8)) >> 8));
      }

      v32 = v24 + v23 - ((((v22 * v18) >> 8) * ((255 * (v21 - v28)) / v20) + ((v22 * v18) >> 8)) >> 8);
      if (v20)
      {
        v33 = v32;
      }

      else
      {
        v33 = v24;
      }

      if (v31 >= v26)
      {
        v34 = v26;
      }

      else
      {
        v34 = v31;
      }

      v35 = v34 & ~(v34 >> 31);
      if (v30 >= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = v30;
      }

      v37 = v36 & ~(v36 >> 31);
      if (v33 >= v26)
      {
        v33 = v26;
      }

      v38 = (v37 << 16) | (v26 << 24) | (v35 << 8) | v33 & ~(v33 >> 31);
      result = CA::OGL::SW::Blend::DarkenSover::f(&v38, ((v15 + v15 * HIBYTE(a5[1])) & 0xFF000000 | ((v12 + v12 * a5[1]) >> 8) | (v16 + v16 * BYTE2(a5[1])) & 0x1FF0000 | (v11 + v11 * BYTE1(a5[1])) & 0x1FF00), v30, v31);
      *v9++ = v38;
      ++a2;
      ++a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::VibrantDarkSover,false>::blend(__int32 *result, unsigned int *a2, _DWORD *a3, const unsigned int *a4, _DWORD *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a4;
    v9 = result;
    do
    {
      v10 = *a3 >> 8;
      v11 = BYTE1(*a3);
      v12 = *a3;
      v13 = (v11 * BYTE1(*a5) + v10) & 0x1FF00;
      v14 = v12 * *a5 + v12;
      v15 = v10 & 0xFF0000;
      v16 = v10 & 0xFF00;
      v17 = (v15 + v15 * HIBYTE(*a5)) & 0xFF000000 | (v16 + v16 * BYTE2(*a5)) & 0x1FF0000;
      v18 = v13 | (v14 >> 8) | v17;
      v19 = HIBYTE(v17);
      v20 = vand_s8(vshl_u32(vdup_n_s32(v18), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
      v21 = BYTE1(v14);
      v22 = HIBYTE(*a2);
      v23 = v19 + 1;
      v24 = (v22 * (v19 + 1)) >> 8;
      if (v22 == 255)
      {
        v25 = 0;
        v26 = 0.0;
      }

      else
      {
        v24 += ((v22 ^ 0xFF) * v23) >> 8;
        v26 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(v22 ^ 0xFF), vadd_s32(v20, 0x100000001)), 8uLL));
        v25 = ((v22 ^ 0xFF) + (v22 ^ 0xFF) * v21) >> 8;
      }

      v27 = vand_s8(vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
      v28 = *a2;
      v29 = v19 ^ 0xFF;
      v30 = v24 + ((v29 + v29 * v22) >> 8);
      v31 = COERCE_DOUBLE(vsra_n_u32(*&v26, vmul_s32(vadd_s32(v27, 0x100000001), vdup_n_s32(v19 ^ 0xFF)), 8uLL));
      v32 = v25 + ((v29 + v29 * v28) >> 8);
      if (v19 == 255)
      {
        v33 = v25;
      }

      else
      {
        v33 = v32;
      }

      if (v19 == 255)
      {
        v34 = v24;
      }

      else
      {
        v34 = v30;
      }

      if (v19 != 255)
      {
        v26 = v31;
      }

      v35 = v23 * v19;
      v36 = v19;
      if (v19 > v20.i32[0])
      {
        v36 = (255 * ((v27.i32[0] + v27.i32[0] * (v35 >> 8)) >> 8)) / (v19 - v20.i32[0]);
        if (v36 >= v19)
        {
          v36 = v19;
        }
      }

      v37 = v19;
      v38 = v19 - v20.i32[1];
      if (v19 > v20.i32[1])
      {
        v39 = v27.i32[1] + v27.i32[1] * (v35 >> 8);
        a4 = (v39 >> 8 << 8);
        v37 = (255 * (v39 >> 8)) / v38;
        if (v37 >= v19)
        {
          v37 = v19;
        }
      }

      v40 = (255 * ((v28 + v28 * (v35 >> 8)) >> 8)) / (v19 - v21);
      if (v40 >= v19)
      {
        v40 = v19;
      }

      if (v19 > v21)
      {
        v19 = v40;
      }

      v41 = vadd_s32(__PAIR64__(v37, v36), *&v26);
      v42 = v19 + v33;
      if (v42 >= v34)
      {
        v42 = v34;
      }

      v43 = vshl_u32(vmax_s32(vmin_s32(v41, vdup_n_s32(v34)), 0), 0x800000010);
      v44 = v43.i32[0] | (v34 << 24) | v42 & ~(v42 >> 31) | v43.i32[1];
      result = CA::OGL::SW::Blend::LightenSover::f(&v44, ((v15 + v15 * HIBYTE(a5[1])) & 0xFF000000 | ((v12 + v12 * a5[1]) >> 8) | (v16 + v16 * BYTE2(a5[1])) & 0x1FF0000 | (v11 + v11 * BYTE1(a5[1])) & 0x1FF00), v38, a4);
      *v9++ = v44;
      ++a2;
      ++a3;
      v6 = (v6 - 1);
    }

    while (v6);
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::PinLight,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a2++;
    v5 = HIBYTE(*a3);
    v6 = *a3;
    v7 = HIBYTE(v4);
    v8 = v4;
    v9 = v5 + 1;
    v10 = (HIBYTE(v4) * (v5 + 1)) >> 8;
    v11 = vand_s8(vshl_u32(vdup_n_s32(*a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v12 = v10 + (((HIBYTE(v4) ^ 0xFF) * (v5 + 1)) >> 8);
    v13 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v14 = vmul_s32(vdup_n_s32(HIBYTE(v4) ^ 0xFF), vadd_s32(v11, 0x100000001));
    v15 = ((v7 ^ 0xFF) + (v7 ^ 0xFF) * v6) >> 8;
    if (HIBYTE(v4) == 255)
    {
      v15 = 0;
    }

    v16 = COERCE_DOUBLE(vshr_n_u32(v14, 8uLL));
    if (v7 == 255)
    {
      v12 = v10;
      v16 = 0.0;
    }

    v17 = v5 ^ 0xFF;
    v18 = v7 + 1;
    v19 = v5 == 255;
    v20 = v12 + (((v7 + 1) * (v5 ^ 0xFF)) >> 8);
    v21 = vmul_s32(vadd_s32(v13, 0x100000001), vdup_n_s32(v17));
    v22 = v15 + ((v17 + v17 * v8) >> 8);
    if (v19)
    {
      v23 = v15;
    }

    else
    {
      v18 = v7 + 1;
      v23 = v22;
    }

    if (v19)
    {
      v20 = v12;
    }

    v24 = COERCE_DOUBLE(vsra_n_u32(*&v16, v21, 8uLL));
    v25 = v13.i32[1];
    v26 = (v13.i32[0] * v9) >> 8;
    if (v19)
    {
      *&v27 = v16;
    }

    else
    {
      *&v27 = v24;
    }

    v28 = ((v18 * v11.i32[0]) >> 7) & 0x3FE;
    v29 = *a3 >> 25;
    v30 = v28 - v10;
    if (v26 > (v28 - v10))
    {
      v30 = v26;
    }

    if (v26 >= v28)
    {
      v26 = ((v18 * v11.i32[0]) >> 7) & 0x3FE;
    }

    v31 = (v25 * v9) >> 8;
    if (v29 <= v11.i32[0])
    {
      v26 = v30;
    }

    v32 = ((v18 * v11.i32[1]) >> 7) & 0x3FE;
    v33 = v32 - v10;
    if (v31 > (v32 - v10))
    {
      v33 = v31;
    }

    if (v31 >= v32)
    {
      v31 = ((v18 * v11.i32[1]) >> 7) & 0x3FE;
    }

    v34 = (v8 * v9) >> 8;
    if (v29 <= v11.i32[1])
    {
      v31 = v33;
    }

    v35 = ((v18 * v6) >> 7) & 0x3FE;
    v36 = v35 - v10;
    if (v34 > v36)
    {
      v36 = v34;
    }

    if (v34 >= v35)
    {
      v34 = ((v18 * v6) >> 7) & 0x3FE;
    }

    if (v29 > v6)
    {
      v37 = v34;
    }

    else
    {
      v37 = v36;
    }

    v38 = v37 + v23;
    v39 = vmin_u32(vadd_s32(__PAIR64__(v31, v26), v27), vdup_n_s32(v20));
    if (v38 >= v20)
    {
      v38 = v20;
    }

    v40 = vshl_u32(v39, 0x800000010);
    *result++ = v40.i32[0] | (v20 << 24) | v38 | v40.i32[1];
    ++a3;
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::LinearLight,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v9 = HIBYTE(v6);
    v10 = v6;
    v11 = HIBYTE(v4) + 1;
    v12 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v13 = (HIBYTE(v6) * v11) >> 8;
    v14 = v13 + (((HIBYTE(v6) ^ 0xFF) * v11) >> 8);
    v15 = ((v9 ^ 0xFF) + (v9 ^ 0xFF) * v4) >> 8;
    v16 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v8, 0x100000001)), 8uLL));
    if (HIBYTE(v6) == 255)
    {
      v15 = 0;
    }

    if (v9 == 255)
    {
      v16 = 0.0;
    }

    else
    {
      v13 = v14;
    }

    v17 = v7 ^ 0xFF;
    v18 = v7 == 255;
    v19 = v13 + ((v17 + v17 * v9) >> 8);
    v20 = vmul_s32(vadd_s32(v12, 0x100000001), vdup_n_s32(v17));
    v21 = v15 + ((v17 + v17 * v10) >> 8);
    if (v18)
    {
      v19 = v13;
    }

    else
    {
      v15 = v21;
    }

    v22 = v10 * v11;
    v23 = COERCE_DOUBLE(vsra_n_u32(*&v16, v20, 8uLL));
    v24 = v15 - ((v9 * (v11 - 2 * v4)) >> 8);
    v25 = vdup_n_s32(v11);
    if (!v18)
    {
      v16 = v23;
    }

    v26 = v24 + (v22 >> 8);
    v27 = vsub_s32(vshr_n_u32(vmul_s32(v12, v25), 8uLL), vshr_n_s32(vmul_s32(vdup_n_s32(v9), vsub_s32(v25, vadd_s32(v8, v8))), 8uLL));
    if (v26 >= v19)
    {
      v26 = v19;
    }

    v28 = vshl_u32(vmax_s32(vmin_s32(vadd_s32(v27, *&v16), vdup_n_s32(v19)), 0), 0x800000010);
    *result++ = v26 & ~(v26 >> 31) | (v19 << 24) | v28.i32[0] | v28.i32[1];
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::LinearBurn,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = v6;
    v10 = HIBYTE(v4) + 1;
    v11 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v12 = (HIBYTE(v6) * v10) >> 8;
    v13 = v12 + (((HIBYTE(v6) ^ 0xFF) * v10) >> 8);
    v14 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v15 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v11, 0x100000001)), 8uLL));
    v16 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v16 = 0;
    }

    if (v8 != 255)
    {
      v12 = v13;
    }

    v17 = v7 ^ 0xFF;
    if (v8 == 255)
    {
      v15 = 0.0;
    }

    v18 = vmul_s32(vadd_s32(v14, 0x100000001), vdup_n_s32(v17));
    v19 = v7 == 255;
    v20 = v16 + ((v17 + v17 * v9) >> 8);
    if (v19)
    {
      v20 = v16;
    }

    else
    {
      v12 += (v17 + v17 * v8) >> 8;
    }

    v21 = COERCE_DOUBLE(vsra_n_u32(*&v15, v18, 8uLL));
    v22 = v20 - ((v8 * (v10 - v4)) >> 8) + ((v9 * v10) >> 8);
    if (!v19)
    {
      v15 = v21;
    }

    v23 = vdup_n_s32(v10);
    v24 = vsub_s32(vshr_n_u32(vmul_s32(v14, v23), 8uLL), vshr_n_s32(vmul_s32(vdup_n_s32(v8), vsub_s32(v23, v11)), 8uLL));
    if (v22 >= v12)
    {
      v22 = v12;
    }

    v25 = vshl_u32(vmax_s32(vmin_s32(vadd_s32(v24, *&v15), vdup_n_s32(v12)), 0), 0x800000010);
    *result++ = v22 & ~(v22 >> 31) | (v12 << 24) | v25.i32[0] | v25.i32[1];
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Divide,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = v6;
    v10 = HIBYTE(v4) + 1;
    v11 = (HIBYTE(v6) * v10) >> 8;
    v12 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v13 = v11 + (((HIBYTE(v6) ^ 0xFF) * v10) >> 8);
    v14 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v12, 0x100000001)), 8uLL));
    v15 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    v16 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    if (HIBYTE(v6) == 255)
    {
      v15 = 0;
    }

    if (v8 != 255)
    {
      v11 = v13;
    }

    v17 = v7 ^ 0xFF;
    if (v8 == 255)
    {
      v14 = 0.0;
    }

    v18 = v11 + (((v8 + 1) * (v7 ^ 0xFF)) >> 8);
    v19 = vmul_s32(vadd_s32(v16, 0x100000001), vdup_n_s32(v17));
    v20 = v7 == 255;
    v21 = v15 + ((v17 + v17 * v9) >> 8);
    v22 = v8 + 1;
    if (v20)
    {
      v23 = v15;
    }

    else
    {
      v23 = v21;
    }

    v24 = COERCE_DOUBLE(vsra_n_u32(*&v14, v19, 8uLL));
    if (v20)
    {
      v25 = v11;
    }

    else
    {
      v25 = v18;
    }

    v26 = v12.i32[1];
    v27 = v22 * v12.i32[0];
    if (v20)
    {
      *&v28 = v14;
    }

    else
    {
      *&v28 = v24;
    }

    v29 = v16.i32[0] * v10;
    if (v27 <= 0xFF)
    {
      v30 = 0;
    }

    else
    {
      v30 = 255;
    }

    v31 = (255 * (v27 >> 8)) / (v29 >> 8);
    if (v29 < 0x100)
    {
      v31 = v30;
    }

    v32 = v22 * v26;
    v33 = v32 > 0xFF;
    v34 = (255 * (v32 >> 8)) / ((v16.i32[1] * v10) >> 8);
    if (v33)
    {
      v35 = 255;
    }

    else
    {
      v35 = 0;
    }

    if ((v16.i32[1] * v10) < 0x100)
    {
      v34 = v35;
    }

    v36 = v22 * v4;
    v37 = v9 * v10;
    v33 = v36 > 0xFF;
    v38 = (255 * (v36 >> 8)) / (v37 >> 8);
    if (v33)
    {
      v39 = 255;
    }

    else
    {
      v39 = 0;
    }

    if (v37 < 0x100)
    {
      v38 = v39;
    }

    v40 = v38 + v23;
    v41 = vmin_u32(vadd_s32(__PAIR64__(v34, v31), v28), vdup_n_s32(v25));
    if (v40 >= v25)
    {
      v40 = v25;
    }

    v42 = vshl_u32(v41, 0x800000010);
    *result++ = v42.i32[0] | (v25 << 24) | v40 | v42.i32[1];
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Subtract,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = v6;
    v10 = HIBYTE(v4) + 1;
    v11 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v12 = (HIBYTE(v6) * v10) >> 8;
    v13 = v12 + (((HIBYTE(v6) ^ 0xFF) * v10) >> 8);
    v14 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v11, 0x100000001)), 8uLL));
    v15 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v16 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v16 = 0;
    }

    if (v8 == 255)
    {
      v14 = 0.0;
    }

    else
    {
      v12 = v13;
    }

    v17 = v7 ^ 0xFF;
    v18 = v7 == 255;
    v19 = v8 + 1;
    v20 = v12 + (((v8 + 1) * v17) >> 8);
    v21 = vmul_s32(vadd_s32(v15, 0x100000001), vdup_n_s32(v17));
    v22 = v16 + ((v17 + v17 * v9) >> 8);
    if (!v18)
    {
      v19 = v8 + 1;
    }

    v23 = COERCE_DOUBLE(vsra_n_u32(*&v14, v21, 8uLL));
    if (v18)
    {
      v24 = v16;
    }

    else
    {
      v24 = v22;
    }

    if (!v18)
    {
      v12 = v20;
    }

    v25 = v19 * v4;
    v26 = v24 - ((v9 * v10) >> 8);
    if (!v18)
    {
      v14 = v23;
    }

    v27 = v26 + (v25 >> 8);
    if (v27 >= v12)
    {
      v27 = v12;
    }

    v28 = vshl_u32(vmax_s32(vmin_s32(vadd_s32(vsub_s32(vshr_n_u32(vmul_s32(vdup_n_s32(v19), v11), 8uLL), vshr_n_u32(vmul_s32(v15, vdup_n_s32(v10)), 8uLL)), *&v14), vdup_n_s32(v12)), 0), 0x800000010);
    *result++ = v27 & ~(v27 >> 31) | (v12 << 24) | v28.i32[0] | v28.i32[1];
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Difference,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = v6;
    v10 = HIBYTE(v4) + 1;
    v11 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v12 = (HIBYTE(v6) * v10) >> 8;
    v13 = v12 + (((HIBYTE(v6) ^ 0xFF) * v10) >> 8);
    v14 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v15 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v11, 0x100000001)), 8uLL));
    v16 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v16 = 0;
    }

    if (v8 == 255)
    {
      v15 = 0.0;
    }

    else
    {
      v12 = v13;
    }

    v17 = v7 ^ 0xFF;
    v18 = v7 == 255;
    v19 = v8 + 1;
    v20 = v12 + (((v8 + 1) * v17) >> 8);
    v21 = vmul_s32(vadd_s32(v14, 0x100000001), vdup_n_s32(v17));
    v22 = v16 + ((v17 + v17 * v9) >> 8);
    if (!v18)
    {
      v19 = v8 + 1;
    }

    v23 = COERCE_DOUBLE(vsra_n_u32(*&v15, v21, 8uLL));
    if (v18)
    {
      v24 = v16;
    }

    else
    {
      v24 = v22;
    }

    if (!v18)
    {
      v12 = v20;
    }

    v25 = (v9 * v10) >> 8;
    v26 = v19 * v4;
    if (!v18)
    {
      v15 = v23;
    }

    v27 = v25 - (v26 >> 8);
    if (v27 < 0)
    {
      v27 = -v27;
    }

    v28 = v24 + v27;
    v29 = vmin_u32(vaba_u32(*&v15, vshr_n_u32(vmul_s32(vdup_n_s32(v19), v11), 8uLL), vshr_n_u32(vmul_s32(v14, vdup_n_s32(v10)), 8uLL)), vdup_n_s32(v12));
    if (v28 >= v12)
    {
      v28 = v12;
    }

    v30 = vshl_u32(v29, 0x800000010);
    *result++ = v28 | (v12 << 24) | v30.i32[0] | v30.i32[1];
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::HardLight,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = v4;
    v9 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v10 = HIBYTE(v6);
    v11 = v6;
    v12 = HIBYTE(v4) + 1;
    v13 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v14 = (HIBYTE(v6) * v12) >> 8;
    v15 = v14 + (((HIBYTE(v6) ^ 0xFF) * v12) >> 8);
    v16 = vadd_s32(v9, 0x100000001);
    v17 = vdup_n_s32(HIBYTE(v6) ^ 0xFF);
    v18 = ((v10 ^ 0xFF) + (v10 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v18 = 0;
    }

    v19 = vmul_s32(v17, v16);
    if (v10 != 255)
    {
      v14 = v15;
    }

    v20 = v7 ^ 0xFF;
    v21 = vadd_s32(v13, 0x100000001);
    v22 = v9.u32[1];
    v23 = COERCE_DOUBLE(vshr_n_u32(v19, 8uLL));
    v24 = v9.i32[0];
    v25 = v13.i32[1];
    if (v10 == 255)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v23;
    }

    v27 = v13.i32[0];
    v28 = (v12 - v24) * (v10 - v13.i32[0]);
    v29 = v7 == 255;
    v30 = (v12 - v22) * (v10 - v13.i32[1]);
    if (v7 != 255)
    {
      v18 += (v20 + v20 * v11) >> 8;
    }

    v31 = vdup_n_s32(v20);
    v32 = v14 + ((v20 + v20 * v10) >> 8);
    v33 = vmul_s32(v21, v31);
    if (v7 != 255)
    {
      v14 = v32;
    }

    v34 = COERCE_DOUBLE(vsra_n_u32(*&v26, v33, 8uLL));
    v35 = v4 >> 25;
    v36 = (v7 + v7 * v10) >> 8;
    if (!v29)
    {
      v26 = v34;
    }

    v37 = v36 - (v28 >> 7);
    v38 = ((v27 + v27 * v24) >> 7) & 0x3FE;
    if (v35 >= v24)
    {
      v37 = v38;
    }

    v39 = 2 * (v12 - v8) * (v10 - v11);
    if (v35 >= v22)
    {
      v40 = ((v25 + v25 * v22) >> 7) & 0x3FE;
    }

    else
    {
      v40 = v36 - (v30 >> 7);
    }

    v41 = v36 - (v39 >> 8);
    v42 = ((v11 + v11 * v8) >> 7) & 0x3FE;
    if (v35 >= v8)
    {
      v43 = v42;
    }

    else
    {
      v43 = v41;
    }

    v44 = v43 + v18;
    v45 = vadd_s32(__PAIR64__(v40, v37), *&v26);
    if (v44 >= v14)
    {
      v44 = v14;
    }

    v46 = vshl_u32(vmax_s32(vmin_s32(v45, vdup_n_s32(v14)), 0), 0x800000010);
    *result++ = v46.i32[0] | (v14 << 24) | v44 & ~(v44 >> 31) | v46.i32[1];
  }

  return result;
}

int *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::SoftLight,false>::blend(int *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = HIBYTE(*a3);
    v5 = vand_s8(vshl_u32(vdup_n_s32(*a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v6 = *a3;
    v7 = HIBYTE(*a2);
    v8 = vand_s8(vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v9 = *a2;
    v10 = ((v7 * (v4 + 1)) >> 8) + (((v7 ^ 0xFF) * (v4 + 1)) >> 8);
    v11 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(v7 ^ 0xFF), vadd_s32(v5, 0x100000001)), 8uLL));
    v12 = ((v7 ^ 0xFF) + (v7 ^ 0xFF) * v6) >> 8;
    if (v7 == 255)
    {
      v12 = 0;
      v10 = (255 * (v4 + 1)) >> 8;
      v11 = 0.0;
    }

    v13 = v4 ^ 0xFF;
    v14 = v10 + ((v13 + v13 * v7) >> 8);
    v15 = COERCE_DOUBLE(vsra_n_u32(*&v11, vmul_s32(vadd_s32(v8, 0x100000001), vdup_n_s32(v4 ^ 0xFF)), 8uLL));
    v16 = v12 + ((v13 + v13 * v9) >> 8);
    if (v4 != 255)
    {
      v12 = v16;
      v10 = v14;
      v11 = v15;
    }

    v17 = LODWORD(v11) + (((v8.i32[0] + v8.i32[0] * v5.i32[0]) >> 7) & 0x3FE);
    v18 = v9 + v9 * v6;
    if (v7)
    {
      v17 -= ((255 * v8.i16[0]) / v7 + (255 * v8.i16[0]) / v7 * ((v8.i32[0] + v8.i32[0] * (2 * v5.i32[0] - v4)) >> 8)) >> 8;
      v19 = HIDWORD(v11) + (((v8.i32[1] + v8.i32[1] * v5.i32[1]) >> 7) & 0x3FE) - (((255 * v8.i16[2]) / v7 + (255 * v8.i16[2]) / v7 * ((v8.i32[1] + v8.i32[1] * (2 * v5.i32[1] - v4)) >> 8)) >> 8);
      v20 = v12 + ((v18 >> 7) & 0x3FE) - ((255 * v9 / v7 + 255 * v9 / v7 * ((v9 + v9 * (2 * v6 - v4)) >> 8)) >> 8);
    }

    else
    {
      v19 = HIDWORD(v11) + (((v8.i32[1] + v8.i32[1] * v5.i32[1]) >> 7) & 0x3FE);
      v20 = v12 + ((v18 >> 7) & 0x3FE);
    }

    if (v19 >= v10)
    {
      v21 = v10;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 & ~(v21 >> 31);
    if (v17 >= v10)
    {
      v23 = v10;
    }

    else
    {
      v23 = v17;
    }

    v24 = v23 & ~(v23 >> 31);
    if (v20 >= v10)
    {
      v20 = v10;
    }

    *result++ = (v24 << 16) | (v10 << 24) | (v22 << 8) | v20 & ~(v20 >> 31);
    ++a2;
    ++a3;
  }

  return result;
}

int *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::ColorBurn,false>::blend(int *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = HIBYTE(*a3);
    v5 = vand_s8(vshl_u32(vdup_n_s32(*a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v6 = *a3;
    v7 = HIBYTE(*a2);
    v8 = v4 + 1;
    v9 = (v7 * (v4 + 1)) >> 8;
    if (v7 == 255)
    {
      v10 = 0;
      v11 = 0;
      v12 = (255 * (v4 + 1)) >> 8;
    }

    else
    {
      v12 = v9 + (((v7 ^ 0xFF) * v8) >> 8);
      v11 = vshr_n_u32(vmul_s32(vdup_n_s32(v7 ^ 0xFF), vadd_s32(v5, 0x100000001)), 8uLL);
      v10 = ((v7 ^ 0xFF) + (v7 ^ 0xFF) * v6) >> 8;
    }

    v13 = vand_s8(vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v14 = *a2;
    if (v4 != 255)
    {
      v15 = v4 ^ 0xFF;
      v12 += (v15 + v15 * v7) >> 8;
      v11 = vsra_n_u32(v11, vmul_s32(vadd_s32(v13, 0x100000001), vdup_n_s32(v4 ^ 0xFF)), 8uLL);
      v10 += (v15 + v15 * v14) >> 8;
    }

    v16 = v11.i32[0];
    if (v5.i32[0])
    {
      v16 = v11.i32[0] + v9 - ((((v8 * v4) >> 8) * ((255 * (v7 - v13.i32[0])) / v5.i32[0]) + ((v8 * v4) >> 8)) >> 8);
    }

    v17 = v11.i32[1];
    if (v5.i32[1])
    {
      v17 = v11.i32[1] + v9 - ((((v8 * v4) >> 8) * ((255 * (v7 - v13.i32[1])) / v5.i32[1]) + ((v8 * v4) >> 8)) >> 8);
    }

    if (*a3)
    {
      v10 = v10 + v9 - ((((v8 * v4) >> 8) * ((255 * (v7 - v14)) / v6) + ((v8 * v4) >> 8)) >> 8);
    }

    if (v17 >= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v17;
    }

    v19 = v18 & ~(v18 >> 31);
    if (v16 >= v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 & ~(v20 >> 31);
    if (v10 >= v12)
    {
      v10 = v12;
    }

    *result++ = (v21 << 16) | (v12 << 24) | (v19 << 8) | v10 & ~(v10 >> 31);
    ++a2;
    ++a3;
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::ColorDodge,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = HIBYTE(*a3);
    v5 = vand_s8(vshl_u32(vdup_n_s32(*a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v6 = *a3;
    v7 = HIBYTE(*a2);
    v8 = v4 + 1;
    v9 = (v7 * (v4 + 1)) >> 8;
    if (v7 == 255)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v9 += ((v7 ^ 0xFF) * v8) >> 8;
      v11 = vshr_n_u32(vmul_s32(vdup_n_s32(v7 ^ 0xFF), vadd_s32(v5, 0x100000001)), 8uLL);
      v10 = ((v7 ^ 0xFF) + (v7 ^ 0xFF) * v6) >> 8;
    }

    v12 = vand_s8(vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v13 = *a2;
    if (v4 != 255)
    {
      v14 = v4 ^ 0xFF;
      v9 += (v14 + v14 * v7) >> 8;
      v11 = vsra_n_u32(v11, vmul_s32(vadd_s32(v12, 0x100000001), vdup_n_s32(v4 ^ 0xFF)), 8uLL);
      v10 += (v14 + v14 * v13) >> 8;
    }

    v15 = v8 * v4;
    v16 = HIBYTE(*a3);
    if (v4 > v5.i32[0])
    {
      v16 = (255 * ((v12.i32[0] + v12.i32[0] * (v15 >> 8)) >> 8)) / (v4 - v5.i32[0]);
      if (v16 >= v4)
      {
        v16 = HIBYTE(*a3);
      }
    }

    v17 = HIBYTE(*a3);
    if (v4 > v5.i32[1])
    {
      v17 = (255 * ((v12.i32[1] + v12.i32[1] * (v15 >> 8)) >> 8)) / (v4 - v5.i32[1]);
      if (v17 >= v4)
      {
        v17 = HIBYTE(*a3);
      }
    }

    v18 = (255 * ((v13 + v13 * (v15 >> 8)) >> 8)) / (v4 - v6);
    if (v18 >= v4)
    {
      v18 = HIBYTE(*a3);
    }

    if (v4 > v6)
    {
      v4 = v18;
    }

    v19 = vadd_s32(__PAIR64__(v17, v16), v11);
    v20 = v4 + v10;
    if (v20 >= v9)
    {
      v20 = v9;
    }

    v21 = vshl_u32(vmax_s32(vmin_s32(v19, vdup_n_s32(v9)), 0), 0x800000010);
    *result++ = v21.i32[0] | (v9 << 24) | v20 & ~(v20 >> 31) | v21.i32[1];
    ++a2;
    ++a3;
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Lighten,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0);
    v10 = v6;
    v11 = HIBYTE(v4) + 1;
    v12 = (HIBYTE(v6) * v11) >> 8;
    v13 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v14 = v12 + (((HIBYTE(v6) ^ 0xFF) * v11) >> 8);
    v15 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v13, 0x100000001)), 8uLL));
    v16 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v16 = 0;
    }

    if (v8 == 255)
    {
      v15 = 0.0;
    }

    else
    {
      v12 = v14;
    }

    v17 = v7 == 255;
    v18 = v7 ^ 0xFF;
    v19 = vand_s8(v9, 0xFF000000FFLL);
    v20 = v12 + (((v8 + 1) * v18) >> 8);
    v21 = vmul_s32(vadd_s32(v19, 0x100000001), vdup_n_s32(v18));
    v22 = v16 + ((v18 + v18 * v10) >> 8);
    v23 = v8 + 1;
    if (v17)
    {
      v22 = v16;
    }

    v24 = COERCE_DOUBLE(vsra_n_u32(*&v15, v21, 8uLL));
    if (!v17)
    {
      v12 = v20;
      v15 = v24;
    }

    v25 = (v23 * v4) >> 8;
    if (v25 <= (v10 * v11) >> 8)
    {
      v25 = (v10 * v11) >> 8;
    }

    v26 = v22 + v25;
    v27 = vmin_u32(vadd_s32(*&v15, vmax_u32(vshr_n_u32(vmul_s32(vdup_n_s32(v23), v13), 8uLL), vshr_n_u32(vmul_s32(v19, vdup_n_s32(v11)), 8uLL))), vdup_n_s32(v12));
    if (v26 >= v12)
    {
      v26 = v12;
    }

    v28 = vshl_u32(v27, 0x800000010);
    *result++ = v26 | (v12 << 24) | v28.i32[0] | v28.i32[1];
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Darken,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0);
    v10 = v6;
    v11 = HIBYTE(v4) + 1;
    v12 = (HIBYTE(v6) * v11) >> 8;
    v13 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v14 = v12 + (((HIBYTE(v6) ^ 0xFF) * v11) >> 8);
    v15 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v13, 0x100000001)), 8uLL));
    v16 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v16 = 0;
    }

    if (v8 == 255)
    {
      v15 = 0.0;
    }

    else
    {
      v12 = v14;
    }

    v17 = v7 == 255;
    v18 = v7 ^ 0xFF;
    v19 = vand_s8(v9, 0xFF000000FFLL);
    v20 = v12 + (((v8 + 1) * v18) >> 8);
    v21 = vmul_s32(vadd_s32(v19, 0x100000001), vdup_n_s32(v18));
    v22 = v16 + ((v18 + v18 * v10) >> 8);
    v23 = v8 + 1;
    if (v17)
    {
      v22 = v16;
    }

    v24 = COERCE_DOUBLE(vsra_n_u32(*&v15, v21, 8uLL));
    if (!v17)
    {
      v12 = v20;
      v15 = v24;
    }

    v25 = (v23 * v4) >> 8;
    if (v25 >= (v10 * v11) >> 8)
    {
      v25 = (v10 * v11) >> 8;
    }

    v26 = v22 + v25;
    v27 = vmin_u32(vadd_s32(*&v15, vmin_u32(vshr_n_u32(vmul_s32(vdup_n_s32(v23), v13), 8uLL), vshr_n_u32(vmul_s32(v19, vdup_n_s32(v11)), 8uLL))), vdup_n_s32(v12));
    if (v26 >= v12)
    {
      v26 = v12;
    }

    v28 = vshl_u32(v27, 0x800000010);
    *result++ = v26 | (v12 << 24) | v28.i32[0] | v28.i32[1];
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Overlay,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = HIBYTE(*a3);
    v5 = *a3;
    v6 = vand_s8(vshl_u32(vdup_n_s32(*a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v7 = HIBYTE(*a2);
    v8 = *a2;
    v9 = v4 + 1;
    v10 = vand_s8(vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v11 = (v7 * (v4 + 1)) >> 8;
    v12 = vadd_s32(v6, 0x100000001);
    v13 = vdup_n_s32(v7 ^ 0xFF);
    v14 = ((v7 ^ 0xFF) + (v7 ^ 0xFF) * v5) >> 8;
    if (v7 == 255)
    {
      v14 = 0;
    }

    v15 = vmul_s32(v13, v12);
    if (v7 != 255)
    {
      v11 += ((v7 ^ 0xFF) * (v4 + 1)) >> 8;
    }

    v16 = v4 ^ 0xFF;
    v17 = v11 + ((v16 + v16 * v7) >> 8);
    v18 = vadd_s32(v10, 0x100000001);
    v19 = COERCE_DOUBLE(vshr_n_u32(v15, 8uLL));
    v20 = vdup_n_s32(v4 ^ 0xFF);
    v21 = v16 + v16 * v8;
    v22 = v10.u32[1];
    if (v7 == 255)
    {
      v19 = 0.0;
    }

    v23 = v14 + (v21 >> 8);
    v24 = v10.i32[0];
    v25 = v7 + 1;
    v26 = v6.i32[0];
    v27 = v6.i32[1];
    if (v4 != 255)
    {
      v14 = v23;
    }

    v28 = ((v25 * v6.i32[0]) >> 8) + ((v10.i32[0] * (v9 - v6.i32[0])) >> 8);
    if (v4 != 255)
    {
      v11 = v17;
    }

    v29 = ((v25 * v6.i32[1]) >> 8) + ((v10.i32[1] * (v9 - v6.i32[1])) >> 8);
    v30 = COERCE_DOUBLE(vsra_n_u32(*&v19, vmul_s32(v18, v20), 8uLL));
    if (v4 == 255)
    {
      *&v31 = v19;
    }

    else
    {
      *&v31 = v30;
    }

    v32 = *a2 >> 25;
    v33 = v32 >= v24;
    v34 = v25 * v4;
    v35 = 2 * v28 - (v34 >> 8);
    v36 = ((v24 + v24 * v26) >> 7) & 0x3FE;
    v37 = 2 * v29;
    if (v33)
    {
      v35 = v36;
    }

    v38 = v37 - (v34 >> 8);
    v39 = 2 * (((v25 * v5) >> 8) + ((v8 * (v9 - v5)) >> 8));
    if (v32 >= v22)
    {
      v40 = ((v22 + v22 * v27) >> 7) & 0x3FE;
    }

    else
    {
      v40 = v38;
    }

    v41 = v39 - (v34 >> 8);
    v42 = ((v8 + v8 * v5) >> 7) & 0x3FE;
    if (v32 < v8)
    {
      v42 = v41;
    }

    v43 = v42 + v14;
    v44 = vadd_s32(__PAIR64__(v40, v35), v31);
    if (v43 >= v11)
    {
      v43 = v11;
    }

    v45 = vshl_u32(vmax_s32(vmin_s32(v44, vdup_n_s32(v11)), 0), 0x800000010);
    *result++ = v45.i32[0] | (v11 << 24) | v43 & ~(v43 >> 31) | v45.i32[1];
    ++a2;
    ++a3;
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Multiply,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = v4;
    v9 = HIBYTE(v6);
    v10 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v11 = v6;
    v12 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v13 = (HIBYTE(v6) * (v7 + 1)) >> 8;
    v14 = v13 + (((HIBYTE(v6) ^ 0xFF) * (v7 + 1)) >> 8);
    v15 = ((v9 ^ 0xFF) + (v9 ^ 0xFF) * v8) >> 8;
    v16 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v10, 0x100000001)), 8uLL));
    if (HIBYTE(v6) == 255)
    {
      v15 = 0;
    }

    if (v9 == 255)
    {
      v14 = v13;
      v16 = 0.0;
    }

    v17 = v7 ^ 0xFF;
    v18 = v7 == 255;
    v19 = v14 + ((v17 + v17 * v9) >> 8);
    v20 = vadd_s32(v12, 0x100000001);
    v21 = vmul_s32(v20, vdup_n_s32(v17));
    v22 = v15 + (((v11 + 1) * v17) >> 8);
    v23 = v11 + 1;
    if (v18)
    {
      v24 = v15;
    }

    else
    {
      v24 = v22;
    }

    v25 = COERCE_DOUBLE(vsra_n_u32(*&v16, v21, 8uLL));
    if (!v18)
    {
      v14 = v19;
      v16 = v25;
    }

    v26 = v24 + ((v23 * v8) >> 8);
    v27 = vmin_u32(vsra_n_u32(*&v16, vmul_s32(v20, v10), 8uLL), vdup_n_s32(v14));
    if (v26 >= v14)
    {
      v26 = v14;
    }

    v28 = vshl_u32(v27, 0x800000010);
    *result++ = v26 | (v14 << 24) | v28.i32[0] | v28.i32[1];
  }

  return result;
}

int *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::PlusD,true>::blend(int *result, unsigned int *a2, unsigned int *a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    do
    {
      v4 = *a3;
      v5 = *a2;
      if ((*a2 & *a3) >> 24 == 255)
      {
        v6 = ~BYTE1(v5);
        v7 = -2 - ((v4 | 0xFF00FF00) + (v5 | 0xFF00FF00));
        v8 = v6 + (~v4 >> 8);
        v9 = v8 & 0x100 | (v7 >> 8) & 0x100FF | (2 * (v8 & 0x100 | (v7 >> 8) & 0x100FF));
        v10 = ~((v8 << 8) | v7 & 0xFF00FF | (16 * (v9 | (4 * v9))) | v9 | (4 * v9));
      }

      else
      {
        v11 = HIBYTE(v4);
        v12 = vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0);
        v13 = vshl_u32(vdup_n_s32(v5), 0xFFFFFFF8FFFFFFF0);
        v14 = HIBYTE(v5) + HIBYTE(v4);
        v15 = v11 - (*a3 + v5) + HIBYTE(v5);
        if (v14 >= 0xFF)
        {
          v16 = 255;
        }

        else
        {
          v16 = v14;
        }

        v17 = v15 & ~(v15 >> 31);
        if (v17 >= 255)
        {
          v17 = 255;
        }

        v18 = vshl_u32(vsub_s32(vdup_n_s32(v16), vmin_s32(vmax_s32(vsub_s32(vdup_n_s32(v14), vadd_s32(vand_s8(v13, 0xFF000000FFLL), vand_s8(v12, 0xFF000000FFLL))), 0), 0xFF000000FFLL)), 0x800000010);
        v10 = (v16 - v17) | (v16 << 24) | v18.i32[0] | v18.i32[1];
      }

      v19 = a3[1];
      v20 = a2[1];
      if ((v20 & v19) >> 24 == 255)
      {
        v21 = ~BYTE1(v20);
        v22 = -2 - ((v19 | 0xFF00FF00) + (v20 | 0xFF00FF00));
        v23 = v21 + (~v19 >> 8);
        v24 = v23 & 0x100 | (v22 >> 8) & 0x100FF | (2 * (v23 & 0x100 | (v22 >> 8) & 0x100FF));
        v25 = ~((v23 << 8) | v22 & 0xFF00FF | (16 * (v24 | (4 * v24))) | v24 | (4 * v24));
      }

      else
      {
        v26 = HIBYTE(v19);
        v27 = vshl_u32(vdup_n_s32(v19), 0xFFFFFFF8FFFFFFF0);
        v28 = vshl_u32(vdup_n_s32(v20), 0xFFFFFFF8FFFFFFF0);
        v29 = HIBYTE(v20) + HIBYTE(v19);
        v30 = v26 - (a3[1] + v20) + HIBYTE(v20);
        if (v29 >= 0xFF)
        {
          v31 = 255;
        }

        else
        {
          v31 = v29;
        }

        v32 = v30 & ~(v30 >> 31);
        if (v32 >= 255)
        {
          v32 = 255;
        }

        v33 = vshl_u32(vsub_s32(vdup_n_s32(v31), vmin_s32(vmax_s32(vsub_s32(vdup_n_s32(v29), vadd_s32(vand_s8(v28, 0xFF000000FFLL), vand_s8(v27, 0xFF000000FFLL))), 0), 0xFF000000FFLL)), 0x800000010);
        v25 = (v31 - v32) | (v31 << 24) | v33.i32[0] | v33.i32[1];
      }

      a4 -= 2;
      *result = v10;
      result[1] = v25;
      result += 2;
      a2 += 2;
      a3 += 2;
    }

    while (a4 > 1);
  }

  if (a4)
  {
    v34 = *a3;
    v35 = *a2;
    if ((*a2 & *a3) >> 24 == 255)
    {
      v36 = ~BYTE1(v35);
      v37 = -2 - ((v34 | 0xFF00FF00) + (v35 | 0xFF00FF00));
      v38 = v36 + (~v34 >> 8);
      v39 = v38 & 0x100 | (v37 >> 8) & 0xFFFF00FF | (2 * (v38 & 0x100 | (v37 >> 8) & 0xFFFF00FF));
      v40 = ~(v37 & 0xFF00FF | (v38 << 8) | (16 * (v39 | (4 * v39))) | v39 | (4 * v39));
    }

    else
    {
      v41 = HIBYTE(v34);
      v42 = vshl_u32(vdup_n_s32(v34), 0xFFFFFFF8FFFFFFF0);
      v43 = vshl_u32(vdup_n_s32(v35), 0xFFFFFFF8FFFFFFF0);
      v44 = HIBYTE(v35) + HIBYTE(v34);
      v45 = v41 - (*a3 + v35) + HIBYTE(v35);
      if (v44 >= 0xFF)
      {
        v46 = 255;
      }

      else
      {
        v46 = v44;
      }

      v47 = v45 & ~(v45 >> 31);
      if (v47 >= 255)
      {
        v47 = 255;
      }

      v48 = vshl_u32(vsub_s32(vdup_n_s32(v46), vmin_s32(vmax_s32(vsub_s32(vdup_n_s32(v44), vadd_s32(vand_s8(v43, 0xFF000000FFLL), vand_s8(v42, 0xFF000000FFLL))), 0), 0xFF000000FFLL)), 0x800000010);
      v40 = (v46 - v47) | (v46 << 24) | v48.i32[0] | v48.i32[1];
    }

    *result = v40;
  }

  return result;
}

unsigned int *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::AlphaMul,false>::blend(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a2++;
    *result++ = (((*(a3 + 3) << 16) + 0x10000) * HIBYTE(v4)) & 0xFF000000 | v4 & 0xFFFFFF;
    a3 += 4;
  }

  return result;
}

int *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::AlphaCopy,false>::blend(int *result, int *a2, uint64_t a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a2++;
    *result++ = v4 & 0xFFFFFF | (*(a3 + 3) << 24);
    a3 += 4;
  }

  return result;
}

unsigned int *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::SoverMulD,false>::blend(unsigned int *result, unsigned int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    *result++ = ((v4 & 0xFF00FF) + ((((v6 & 0xFF00FF) - (v4 & 0xFF00FF)) * (HIBYTE(v6) + 1)) >> 8)) & 0xFF00FF | ((v4 & 0xFF00) + (BYTE1(v6) - BYTE1(v4)) * (HIBYTE(v6) + 1)) & 0xFF00 | 0xFF000000;
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Exclusion,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = v6;
    v10 = HIBYTE(v4) + 1;
    v11 = (HIBYTE(v6) * v10) >> 8;
    v12 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v13 = v11 + (((HIBYTE(v6) ^ 0xFF) * v10) >> 8);
    v14 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v15 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v12, 0x100000001)), 8uLL));
    v16 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v16 = 0;
    }

    if (v8 == 255)
    {
      v15 = 0.0;
    }

    else
    {
      v11 = v13;
    }

    v17 = v7 == 255;
    v18 = v7 ^ 0xFF;
    v19 = v11 + (((v8 + 1) * v18) >> 8);
    v20 = COERCE_DOUBLE(vsra_n_u32(*&v15, vmul_s32(vadd_s32(v14, 0x100000001), vdup_n_s32(v18)), 8uLL));
    v21 = v16 + ((v18 + v18 * v9) >> 8);
    v22 = v8 + 1;
    if (v17)
    {
      v21 = v16;
    }

    if (!v17)
    {
      v11 = v19;
      v15 = v20;
    }

    v23 = (((v22 - 2 * v9) * v4) >> 8) + ((v9 * v10) >> 8) + v21;
    v24 = vmul_s32(v14, vdup_n_s32(v10));
    v25 = vadd_s32(v14, v14);
    if (v23 >= v11)
    {
      v23 = v11;
    }

    v26 = vshl_u32(vmax_s32(vmin_s32(vadd_s32(vsra_n_u32(vshr_n_s32(vmul_s32(vsub_s32(vdup_n_s32(v22), v25), v12), 8uLL), v24, 8uLL), *&v15), vdup_n_s32(v11)), 0), 0x800000010);
    *result++ = v23 & ~(v23 >> 31) | (v11 << 24) | v26.i32[0] | v26.i32[1];
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::LinearDodge,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = v6;
    v10 = HIBYTE(v4) + 1;
    v11 = (HIBYTE(v6) * v10) >> 8;
    v12 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v13 = v11 + (((HIBYTE(v6) ^ 0xFF) * v10) >> 8);
    v14 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v15 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v12, 0x100000001)), 8uLL));
    v16 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v16 = 0;
    }

    if (v8 == 255)
    {
      v15 = 0.0;
    }

    else
    {
      v11 = v13;
    }

    v17 = v11 + (((v8 + 1) * (v7 ^ 0xFF)) >> 8);
    v18 = v7 == 255;
    v19 = COERCE_DOUBLE(vsra_n_u32(*&v15, vmul_s32(vadd_s32(v14, 0x100000001), vdup_n_s32(v7 ^ 0xFF)), 8uLL));
    v20 = v16 + (((v7 ^ 0xFF) + (v7 ^ 0xFF) * v9) >> 8);
    v21 = v8 + 1;
    if (v18)
    {
      v20 = v16;
    }

    if (!v18)
    {
      v11 = v17;
    }

    v22 = v9 * v10;
    if (!v18)
    {
      v15 = v19;
    }

    v23 = ((v21 * v4) >> 8) + (v22 >> 8) + v20;
    v24 = vmin_u32(vadd_s32(vsra_n_u32(vshr_n_u32(vmul_s32(v14, vdup_n_s32(v10)), 8uLL), vmul_s32(vdup_n_s32(v21), v12), 8uLL), *&v15), vdup_n_s32(v11));
    if (v23 >= v11)
    {
      v23 = v11;
    }

    v25 = vshl_u32(v24, 0x800000010);
    *result++ = v23 | (v11 << 24) | v25.i32[0] | v25.i32[1];
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Min,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    v8 = v4;
    v9 = HIBYTE(v7);
    v10 = v7;
    if (v4 >= v7)
    {
      v8 = v10;
    }

    v11 = vdup_n_s32(v4);
    if (HIBYTE(v4) >= HIBYTE(v6))
    {
      v12 = v9;
    }

    else
    {
      v12 = HIBYTE(v4);
    }

    v13 = vshl_u32(vmin_u32(vand_s8(vshl_u32(v11, 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), 0x800000010);
    *result++ = v13.i32[0] | (v12 << 24) | v8 | v13.i32[1];
  }

  return result;
}

__int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Screen,false>::blend(__int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = HIBYTE(v4);
    v8 = HIBYTE(v6);
    v9 = vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0);
    v10 = v6;
    v11 = HIBYTE(v4) + 1;
    v12 = (HIBYTE(v6) * v11) >> 8;
    v13 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v14 = v12 + (((HIBYTE(v6) ^ 0xFF) * v11) >> 8);
    v15 = COERCE_DOUBLE(vshr_n_u32(vmul_s32(vdup_n_s32(HIBYTE(v6) ^ 0xFF), vadd_s32(v13, 0x100000001)), 8uLL));
    v16 = ((v8 ^ 0xFF) + (v8 ^ 0xFF) * v4) >> 8;
    if (HIBYTE(v6) == 255)
    {
      v16 = 0;
    }

    if (v8 == 255)
    {
      v15 = 0.0;
    }

    else
    {
      v12 = v14;
    }

    v17 = v7 == 255;
    v18 = v7 ^ 0xFF;
    v19 = vand_s8(v9, 0xFF000000FFLL);
    v20 = v12 + (((v8 + 1) * v18) >> 8);
    v21 = vmul_s32(vadd_s32(v19, 0x100000001), vdup_n_s32(v18));
    v22 = v16 + ((v18 + v18 * v10) >> 8);
    v23 = v8 + 1;
    if (v17)
    {
      v22 = v16;
    }

    if (!v17)
    {
      v12 = v20;
    }

    v24 = COERCE_DOUBLE(vsra_n_u32(*&v15, v21, 8uLL));
    if (!v17)
    {
      v15 = v24;
    }

    v25 = (((v23 - v10) * v4) >> 8) + ((v10 * v11) >> 8) + v22;
    v26 = vmul_s32(v19, vdup_n_s32(v11));
    if (v25 >= v12)
    {
      v25 = v12;
    }

    v27 = vshl_u32(vmax_s32(vmin_s32(vadd_s32(vsra_n_u32(vshr_n_s32(vmul_s32(vsub_s32(vdup_n_s32(v23), v19), v13), 8uLL), v26, 8uLL), *&v15), vdup_n_s32(v12)), 0), 0x800000010);
    *result++ = v25 & ~(v25 >> 31) | (v12 << 24) | v27.i32[0] | v27.i32[1];
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Mul,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = vand_s8(vmul_s32(vand_s8(vdup_n_s32(v4 >> 8), 0xFF0000FF00), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), 0x100000001)), 0x1FF0001FF0000);
    *result++ = (((v4 >> 8) & 0xFF0000) + ((v4 >> 8) & 0xFF0000) * HIBYTE(v6)) & 0xFF000000 | ((v4 * v6 + v4) >> 8) | v7.i32[0] | v7.i32[1];
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::SubD,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = vshl_u32(vmax_s32(vsub_s32(vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), 0), 0x800000010);
    *result++ = (v4 - v6) & ~((v4 - v6) >> 31) | (((HIBYTE(v4) - HIBYTE(v6)) & ~((HIBYTE(v4) - HIBYTE(v6)) >> 31)) << 24) | v7.i32[0] | v7.i32[1];
  }

  return result;
}

unsigned __int32 *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::SubS,false>::blend(unsigned __int32 *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = vshl_u32(vmax_s32(vsub_s32(vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), 0), 0x800000010);
    *result++ = (v6 - v4) & ~((v6 - v4) >> 31) | (((HIBYTE(v6) - HIBYTE(v4)) & ~((HIBYTE(v6) - HIBYTE(v4)) >> 31)) << 24) | v7.i32[0] | v7.i32[1];
  }

  return result;
}

uint8x16_t *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Add,true>::blend(uint8x16_t *result, uint8x16_t *a2, uint8x16_t *a3, unint64_t a4)
{
  if (a4 >= 4)
  {
    do
    {
      v4 = *a3++;
      v5 = v4;
      v6 = *a2++;
      *result++ = vqaddq_u8(v5, v6);
      a4 -= 4;
    }

    while (a4 > 3);
  }

  for (; a4; --a4)
  {
    v8 = a3->i32[0];
    a3 = (a3 + 4);
    v7 = v8;
    v9 = a2->i32[0];
    a2 = (a2 + 4);
    v10 = (v9 & 0xFF00FF) + (v7 & 0xFF00FF);
    v11 = ((v9 >> 8) & 0xFF00FF) + ((v7 >> 8) & 0xFF00FF);
    result->i32[0] = (v11 << 8) & 0xFF00FF00 | v10 & 0xFF00FF | (15 * (v11 & 0x1000100 | (v10 >> 8) & 0x10001)) | (240 * (v11 & 0x1000100 | (v10 >> 8) & 0x10001));
    result = (result + 4);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Xor,false>::blend(_DWORD *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ~v4 >> 24;
    v8 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * ((~v6 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    v9 = ((((v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL) * (v7 + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = ((v9 >> 24) | v9) + ((v8 >> 24) | v8);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Datop,false>::blend(_DWORD *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = (v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL;
    v8 = ((v7 + v7 * (v4 >> 24)) >> 8) & 0xFF00FF00FF00FFLL;
    v9 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * ((~v6 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = ((v8 >> 24) | v8) + ((v9 >> 24) | v9);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Dout,false>::blend(_DWORD *result, unsigned int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ((((v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL) * ((~v4 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = (v7 >> 24) | v7;
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Din,false>::blend(_DWORD *result, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a2++;
    v5 = (v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL;
    v6 = ((v5 + v5 * *(a3 + 3)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = (v6 >> 24) | v6;
    a3 += 4;
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Dover,false>::blend(_DWORD *result, int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * ((~v6 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = v6 + ((v7 >> 24) | v7);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Satop,false>::blend(_DWORD *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ~v4 >> 24;
    v8 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) + ((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * (v6 >> 24)) >> 8) & 0xFF00FF00FF00FFLL;
    v9 = ((((v6 | (v6 << 24)) & 0xFF00FF00FF00FFLL) * (v7 + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = ((v9 >> 24) | v9) + ((v8 >> 24) | v8);
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Sout,false>::blend(_DWORD *result, int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a3++;
    v4 = v5;
    v6 = *a2++;
    v7 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * ((~v6 >> 24) + 1)) >> 8) & 0xFF00FF00FF00FFLL;
    *result++ = (v7 >> 24) | v7;
  }

  return result;
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Sin,true>::blend(_DWORD *result, uint64_t a2, unsigned int *a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    do
    {
      v4 = *a3;
      v5 = a3[1];
      a3 += 2;
      v6 = ((((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) + ((v4 | (v4 << 24)) & 0xFF00FF00FF00FFLL) * *(a2 + 3)) >> 8) & 0xFF00FF00FF00FFLL;
      v7 = ((((v5 | (v5 << 24)) & 0xFF00FF00FF00FFLL) + ((v5 | (v5 << 24)) & 0xFF00FF00FF00FFLL) * *(a2 + 7)) >> 8) & 0xFF00FF00FF00FFLL;
      *result = (v6 >> 24) | v6;
      result[1] = (v7 >> 24) | v7;
      result += 2;
      a4 -= 2;
      a2 += 8;
    }

    while (a4 > 1);
  }

  if (a4)
  {
    v8 = (*a3 | (*a3 << 24)) & 0xFF00FF00FF00FFLL;
    v9 = ((v8 + v8 * *(a2 + 3)) >> 8) & 0xFF00FF00FF00FFLL;
    *result = (v9 >> 24) | v9;
  }

  return result;
}

vImage_Error CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Sover,true>::blend(void *a1, void *a2, void *a3, vImagePixelCount a4)
{
  v8 = *MEMORY[0x1E69E9840];
  srcTop.data = a3;
  srcTop.height = 1;
  srcTop.width = a4;
  srcTop.rowBytes = 4 * a4;
  srcBottom.data = a2;
  srcBottom.height = 1;
  srcBottom.width = a4;
  srcBottom.rowBytes = 4 * a4;
  dest.data = a1;
  dest.height = 1;
  dest.width = a4;
  dest.rowBytes = 4 * a4;
  return vImagePremultipliedAlphaBlend_BGRA8888(&srcTop, &srcBottom, &dest, 0x10u);
}

_DWORD *CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Dest,false>::blend(_DWORD *result, int *a2, uint64_t a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

void CA::OGL::SW::Blend::Mode<CA::OGL::SW::Blend::Clear,false>::blend(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    bzero(a1, 4 * a4);
  }
}

__objc2_prop_list *CA::OGL::SW::incomplete_samplers(CA::OGL::SW *this)
{
  p_inst_props = &OBJC_PROTOCOL___MTLResource.inst_props;
  {
    v3 = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
    memset_pattern16(v3, off_1EF1F9CE0, 0x80uLL);
    CA::OGL::SW::incomplete_samplers(void)::samplers = v3;
    p_inst_props = (&OBJC_PROTOCOL___MTLResource + 56);
  }

  return p_inst_props[332];
}

uint64_t CA::OGL::SW::sdf_rgba_sampler(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v34[-v9];
  bzero(&v34[-v9], v11);
  result = (*(*(*a1 + 56) + 8 * a4))(a1, a2, v10, a4);
  if (a2)
  {
    v17 = *(a1 + 104) + 48 * v8;
    v13.i32[0] = *v17;
    v18 = *(v17 + 4);
    _D2.i32[0] = *(v17 + 8);
    _D3.i32[0] = *(v17 + 12);
    __asm { FCVT            H2, S2 }

    v23 = vdup_lane_s16(_D2, 0);
    __asm { FCVT            H3, S3 }

    v24 = vdup_lane_s16(_D3, 0);
    v25 = vdup_n_s16(0x1C04u);
    v26 = vdup_n_s16(0x57F0u);
    do
    {
      v27 = *v10++;
      *v16.i16 = BYTE2(v27);
      *&v16.i16[1] = BYTE1(v27);
      *&v16.i16[2] = v27;
      _D17 = vmul_f16(*v16.i8, v25);
      __asm { FCVT            S18, H17 }

      _S18 = v18 + (*v13.i32 * _S18);
      v31 = vmla_f16(v24, v23, vext_s8(_D17, v13, 2uLL));
      __asm { FCVT            H17, S18 }

      v32 = (*_D17.i16 * COERCE_SHORT_FLOAT(22512));
      *v16.i8 = vminnm_f16(vmaxnm_f16(vmul_f16(v31, v26).u32[0], 3623933952).u32[0], 1475368944);
      if (v32 >= 0x7FFF)
      {
        v32 = 0x7FFF;
      }

      v16 = vcvtq_s32_f32(vcvtq_f32_f16(*v16.i8));
      HIBYTE(v35) = v16.i8[4];
      LOBYTE(v35) = v16.i8[0];
      if (v32 <= -32768)
      {
        LOWORD(v32) = 0x8000;
      }

      v33 = v35;
      *a3 = v32;
      a3[1] = v33;
      a3 += 2;
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::supercircle_sdf_sampler(uint64_t result, int a2, _WORD *a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9, double a10, float32x4_t a11)
{
  if (a2)
  {
    v15 = *(result + 8);
    v16 = 2 * v15;
    _D0 = *(*(result + 24) + 4 * v16 + 32);
    v95 = _D0;
    v17 = *(result + 84);
    v18 = *(result + 92);
    v19 = *(*(result + 16) + 4 * v16 + 32);
    v20 = *(result + 104) + 48 * v15;
    _D0.i32[0] = *(v20 + 12);
    *v12.i32 = fabsf(*(v20 + 40));
    *v11.i32 = *v12.i32 * 1.5287;
    v92 = *(v20 + 36);
    v93 = *(v20 + 32);
    if (v93 >= v92)
    {
      v22 = *(v20 + 32);
    }

    else
    {
      v22 = *(v20 + 36);
    }

    *v12.i32 = *v11.i32 + ((*v12.i32 * -0.52866) * v22);
    v91 = *v11.i32;
    __asm { FCVT            H0, S0 }

    v89 = vdup_lane_s16(_D0, 0);
    v90 = vdup_lane_s32(v12, 0);
    a9.i32[1] = *(v20 + 16);
    a9.i32[0] = *(v20 + 28);
    v94 = a9;
    __asm { FMOV            V0.2S, #1.0 }

    v28 = *v20;
    v87 = vmul_lane_f32(*v20, vdiv_f32(_D0, *v20), 1);
    v88 = *(v20 + 20);
    v13.i32[0] = 5;
    v14.i32[0] = *(result + 48);
    v29 = vdup_lane_s8(vceq_s8(v14, v13), 0);
    v30 = vdup_lane_s32(v11, 0);
    v31 = vdiv_f32(_D0, v30);
    v32 = vdup_n_s32(0x3FC3AB4Bu);
    v33 = vdup_n_s32(0xBF075697);
    do
    {
      v34 = vbsl_s8(vcgt_f32(v19, v18), v18, v19);
      v35 = vbsl_s8(v29, vbsl_s8(vcgt_f32(v17, v34), v17, v34), v19);
      v36 = vsub_f32(vabs_f32(v35), v28);
      _D0 = vadd_f32(v90, v36);
      __asm { FCVT            H17, S0 }

      _S4 = _D0.i32[1];
      __asm { FCVT            H4, S4 }

      v41 = vmul_f32(vadd_f32(v30, v36), v31);
      if (_H17 >= _H4)
      {
        v42 = _H17;
      }

      else
      {
        v42 = _H4;
      }

      v43 = vmaxnm_f32(v41, 0);
      v44 = vabs_f32(v43);
      v45 = v44.f32[1];
      v46 = sqrtf(vaddv_f32(vmul_f32(v43, v43)));
      if (v44.f32[0] >= v44.f32[1])
      {
        v47 = v44.f32[0];
      }

      else
      {
        v47 = v44.f32[1];
      }

      if (v44.f32[0] < v44.f32[1])
      {
        v45 = v44.f32[0];
      }

      v48 = v45 / v47;
      if (v44.f32[0] >= v44.f32[1])
      {
        v49 = -1.0;
      }

      else
      {
        v49 = 1.0;
      }

      if (v48 > 1.0)
      {
        v48 = 1.0;
      }

      if (v47 == 0.0)
      {
        v48 = v47;
      }

      if (v46 <= 1.0)
      {
        v50 = v46;
      }

      else
      {
        v50 = 1.0;
      }

      v51 = (((v48 * v48) * v50) * ((((((((v48 * 0.92605) + -3.156) * v48) + 3.6412) * v48) + -1.268) * v48) + -0.26853)) + 1.0;
      v52 = vmla_f32(v33, v32, v44);
      v53 = vmaxnm_f32(_D0, 0);
      v54 = vmul_f32(v53, v53);
      v55 = -(v49 - (v48 * v49));
      v56 = vadd_f32(v54, vdup_lane_s32(v54, 1)).u32[0];
      v57 = vrsqrte_f32(v56);
      v58 = vmul_f32(vrsqrts_f32(v56, vmul_f32(v57, v57)), v57);
      LODWORD(v59) = vmul_f32(v58, vrsqrts_f32(v56, vmul_f32(v58, v58))).u32[0];
      v60 = v46 + 1.0;
      v61 = vmaxnm_f32(v52, 0);
      v62 = sqrtf(vaddv_f32(vmul_f32(v61, v61)));
      v63 = v55 + 0.5;
      if (v63 > 1.0)
      {
        v63 = 1.0;
      }

      *a9.f32 = vmul_n_f32(v53, v59);
      v64 = vdup_lane_s32(_D0, 1);
      if (v63 < 0.0)
      {
        v63 = 0.0;
      }

      v65 = vcvt_f16_f32(a9);
      v66 = vmovl_u16(vcgt_f32(_D0, v64)).u64[0];
      v67 = vbsl_s8(vuzp1_s16(v66, v66), 0x3C0000003C00, 0x3C0000003C000000);
      a11.f32[0] = -1.0 / v51;
      __asm { FCMP            H16, #0 }

      if (_NF ^ _VF | _ZF)
      {
        v69 = 0;
      }

      else
      {
        v69 = -1;
      }

      v70 = v60 + a11.f32[0];
      v71 = vbsl_s8(vdup_n_s16(v69), v65, v67);
      v72 = vbsl_s8(vuzp1_s16(vcgez_f32(v35), v71), v71, vneg_f16(v71));
      *a11.f32 = vzip1_s32(v35, vmul_lane_f32(v87, v35, 1));
      v73 = vmul_f32(*a11.f32, *a11.f32);
      v74 = (0.34583 - v70) + (v62 * 0.65417);
      v73.i32[0] = vadd_f32(v73, vdup_lane_s32(v73, 1)).u32[0];
      v75 = vrsqrte_f32(v73.u32[0]);
      v76 = vmul_f32(vrsqrts_f32(v73.u32[0], vmul_f32(v75, v75)), v75);
      *a11.f32 = vmul_n_f32(*a11.f32, vmul_f32(v76, vrsqrts_f32(v73.u32[0], vmul_f32(v76, v76))).f32[0]);
      v77 = vmla_f16(v72, v89, vsub_f16(vcvt_f16_f32(a11), v72));
      *&v78 = vaddv_f16(vmul_f16(v77, v77));
      _S4 = ((v70 + -1.0) + (v74 * v93)) + (-((v74 * v93) - (v74 * v92)) * v63);
      v80 = vrsqrte_f16(v78);
      v81 = vmul_f16(vrsqrts_f16(v78, vmul_f16(v80, v80)), v80);
      __asm
      {
        FCVT            H4, S4
        FCVT            S4, H4
      }

      _S4 = v91 * _S4;
      __asm { FCVT            H4, S4 }

      v84 = vrev64_s32(*&vcvtq_f32_f16(vmul_n_f16(v77, *vmul_f16(v81, vrsqrts_f16(v78, vmul_f16(v81, v81))).i16)));
      a9.i64[1] = v94.i64[1];
      *a9.f32 = vmla_f32(vrev64_s32(vmul_f32(*v94.f32, v84)), v84, v88);
      v85 = ((fminl(v42, COERCE_SHORT_FLOAT(0)) + *&_S4) * COERCE_SHORT_FLOAT(22512));
      v86 = vcvtq_s32_f32(vcvtq_f32_f16(vminnm_f16(vmaxnm_f16(vmul_f16(vcvt_f16_f32(a9), vdup_n_s16(0x57F0u)).u32[0], 3623933952).u32[0], 1475368944)));
      if (v85 >= 0x7FFF)
      {
        v85 = 0x7FFF;
      }

      HIBYTE(v96) = v86.i8[4];
      LOBYTE(v96) = v86.i8[0];
      if (v85 <= -32768)
      {
        LOWORD(v85) = 0x8000;
      }

      v19 = vadd_f32(v19, v95);
      *a3 = v85;
      a3[1] = v96;
      a3 += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::rect_sdf_sampler(uint64_t result, int a2, _WORD *a3, double a4, double a5, double a6, double a7, double a8, double a9, int16x4_t _D6)
{
  if (a2)
  {
    v14 = *(result + 8);
    v15 = 2 * v14;
    v16 = *(*(result + 24) + 4 * v15 + 32);
    v17 = *(result + 84);
    v18 = *(result + 92);
    v19 = *(*(result + 16) + 4 * v15 + 32);
    v20 = *(result + 104) + 48 * v14;
    v21 = *v20;
    _D6.i32[0] = *(v20 + 12);
    v22 = *(v20 + 20);
    __asm { FCVT            H6, S6 }

    v27 = vdup_lane_s16(_D6, 0);
    v28.i32[0] = *(v20 + 28);
    v28.i32[1] = *(v20 + 16);
    __asm { FMOV            V16.2S, #1.0 }

    v30 = vmul_lane_f32(*v20, vdiv_f32(_D16, *v20), 1);
    v10.i32[0] = 5;
    v11.i32[0] = *(result + 48);
    v31 = vdup_lane_s8(vceq_s8(v11, v10), 0);
    v32 = vdup_n_s16(0x57F0u);
    do
    {
      v33 = vbsl_s8(vcgt_f32(v19, v18), v18, v19);
      v34 = vbsl_s8(v31, vbsl_s8(vcgt_f32(v17, v33), v17, v33), v19);
      *v13.f32 = vzip1_s32(v34, vmul_lane_f32(v30, v34, 1));
      v35 = vmul_f32(*v13.f32, *v13.f32);
      *v12.f32 = vsub_f32(vabs_f32(v34), v21);
      v35.i32[0] = vadd_f32(v35, vdup_lane_s32(v35, 1)).u32[0];
      v12.i32[0] = vcvt_f16_f32(v12).u32[0];
      v36 = vrsqrte_f32(v35.u32[0]);
      v37 = vmul_f32(vrsqrts_f32(v35.u32[0], vmul_f32(v36, v36)), v36);
      v38 = vrsqrts_f32(v35.u32[0], vmul_f32(v37, v37));
      v39 = vuzp1_s16(vcgez_f32(v34), v16);
      if (*v12.i16 <= *&v12.i16[1])
      {
        v40 = 0;
      }

      else
      {
        v40 = -1;
      }

      LODWORD(v41) = vmul_f32(v37, v38).u32[0];
      v42 = vbsl_s8(vdup_n_s16(v40), 0x3C0000003C00, 0x3C0000003C000000);
      *v13.f32 = vmul_n_f32(*v13.f32, v41);
      v43 = vbsl_s8(v39, v42, vneg_f16(v42));
      v44 = vmla_f16(v43, v27, vsub_f16(vcvt_f16_f32(v13), v43));
      v45 = COERCE_UNSIGNED_INT16(vaddv_f16(vmul_f16(v44, v44)));
      *v13.f32 = vrsqrte_f16(v45);
      *v13.f32 = vmul_f16(vrsqrts_f16(v45, vmul_f16(*v13.f32, *v13.f32)), *v13.f32);
      v46 = vrev64_s32(*&vcvtq_f32_f16(vmul_n_f16(v44, *vmul_f16(*v13.f32, vrsqrts_f16(v45, vmul_f16(*v13.f32, *v13.f32))).i16)));
      *v13.f32 = vmla_f32(vrev64_s32(vmul_f32(v28, v46)), v46, v22);
      v47 = vmul_f16(vcvt_f16_f32(v13), v32).u32[0];
      if (*v12.i16 < *&v12.i16[1])
      {
        v12.i16[0] = v12.i16[1];
      }

      v48 = (*v12.i16 * COERCE_SHORT_FLOAT(22512));
      v49 = vcvtq_s32_f32(vcvtq_f32_f16(vminnm_f16(vmaxnm_f16(v47, 3623933952).u32[0], 1475368944)));
      if (v48 >= 0x7FFF)
      {
        v48 = 0x7FFF;
      }

      HIBYTE(v50) = v49.i8[4];
      LOBYTE(v50) = v49.i8[0];
      if (v48 <= -32768)
      {
        LOWORD(v48) = 0x8000;
      }

      v19 = vadd_f32(v19, v16);
      *a3 = v48;
      a3[1] = v50;
      a3 += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::render_sampler<unsigned int,true,true>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v29[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = v29 - v8;
  bzero(v29 - v8, v10);
  result = (*(*(*a1 + 56) + 8 * a4))(a1, a2, v9, a4);
  if (a2)
  {
    v14 = *(a1 + 76);
    *v12.i32 = 1.0 / *(a1 + 72);
    v15 = vdup_lane_s32(v12, 0);
    v16 = *(a1 + 68) * 0.0039216;
    __asm
    {
      FMOV            V4.2S, #1.0
      FMOV            V6.2S, #3.0
    }

    do
    {
      _D16.i8[0] = v9[2];
      *_D16.i32 = v16 * _D16.u32[0];
      v23 = vmla_f32(0x3F0000003F000000, v15, vsub_f32(v14, vdup_lane_s32(_D16, 0)));
      v24 = vbsl_s8(vcgt_f32(v23, _D4), _D4, v23);
      v25 = vbic_s8(v24, vcltz_f32(v24));
      v26 = vmla_f32(_D6, 0xC0000000C0000000, v25);
      v25.i32[1] = vmul_f32(v25, v25).i32[1];
      _D17 = vmul_f32(v25, v26);
      v25.i32[1] = 1132396544;
      _D16 = vmul_f32(_D17, v25);
      _D17.f32[0] = 1.0 - *_D16.i32;
      __asm { FMLA            S18, S17, V16.S[1] }

      *a3++ = _S18 | (_S18 << 8) | ((_S18 | (_S18 << 8)) << 16);
      v9 += 4;
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::render_sampler<unsigned int,true,false>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - v8;
  bzero(v22 - v8, v10);
  result = (*(*(*a1 + 56) + 8 * a4))(a1, a2, v9, a4);
  if (a2)
  {
    v13 = *(a1 + 76);
    v14 = *(a1 + 68) * 0.0039216;
    __asm { FMOV            V3.2S, #1.0 }

    do
    {
      v12.i8[0] = v9[2];
      *v12.i32 = v14 * v12.u32[0];
      v20 = vadd_f32(vsub_f32(v13, vdup_lane_s32(v12, 0)), 0x3F0000003F000000);
      v21 = vbsl_s8(vcgt_f32(v20, _D3), _D3, v20);
      v12 = vbic_s8(v21, vcltz_f32(v21));
      *v12.i32 = (vmuls_lane_f32(255.0, v12, 1) * (1.0 - *v12.i32)) + 0.5;
      *a3++ = *v12.i32 | (*v12.i32 << 8) | ((*v12.i32 | (*v12.i32 << 8)) << 16);
      v9 += 4;
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

float CA::OGL::SW::render_sampler<unsigned int,false,true>(float *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - v8;
  bzero(v16 - v8, v10);
  (*(*(*a1 + 56) + 8 * a4))(a1, a2, v9, a4);
  if (a2)
  {
    result = a1[19];
    v13 = a1[17] * 0.0039216;
    v14 = 1.0 / a1[18];
    do
    {
      LOBYTE(v12) = v9[2];
      v15 = ((result - (v13 * LODWORD(v12))) * v14) + 0.5;
      if (v15 > 1.0)
      {
        v15 = 1.0;
      }

      if (v15 < 0.0)
      {
        v15 = 0.0;
      }

      v12 = (((v15 * v15) * -255.0) * ((v15 * 2.0) + -3.0)) + 0.5;
      *a3++ = v12 | (v12 << 8) | ((v12 | (v12 << 8)) << 16);
      v9 += 4;
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

float CA::OGL::SW::render_sampler<unsigned int,false,false>(float *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = v15 - v8;
  bzero(v15 - v8, v10);
  (*(*(*a1 + 56) + 8 * a4))(a1, a2, v9, a4);
  if (a2)
  {
    result = a1[19];
    v13 = a1[17] * 0.0039216;
    do
    {
      LOBYTE(v12) = v9[2];
      v14 = (result - (v13 * LODWORD(v12))) + 0.5;
      if (v14 > 1.0)
      {
        v14 = 1.0;
      }

      if (v14 < 0.0)
      {
        v14 = 0.0;
      }

      v12 = (v14 * 255.0) + 0.5;
      *a3++ = v12 | (v12 << 8) | ((v12 | (v12 << 8)) << 16);
      v9 += 4;
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::render_sampler<CA::Vec4<float>,true,true>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v30[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v30[-2 * v8];
  bzero(v9, v10);
  result = (*(*(*a1 + 56) + 8 * a4))(a1, a2, v9, a4);
  if (a2)
  {
    v14 = *(a1 + 68);
    *v12.i32 = 1.0 / *(a1 + 72);
    v15 = vdup_lane_s32(v12, 0);
    v16 = *(a1 + 76);
    __asm
    {
      FMOV            V4.2S, #1.0
      FMOV            V6.2S, #3.0
    }

    do
    {
      v23 = *v9;
      v9 += 4;
      *_D16.i32 = v23 * v14;
      v24 = vmla_f32(0x3F0000003F000000, v15, vsub_f32(v16, vdup_lane_s32(_D16, 0)));
      v25 = vbsl_s8(vcgt_f32(v24, _D4), _D4, v24);
      v26 = vbic_s8(v25, vcltz_f32(v25));
      v27 = vmla_f32(_D6, 0xC0000000C0000000, v26);
      v26.i32[1] = vmul_f32(v26, v26).i32[1];
      _D17 = vmul_f32(v26, v27);
      v26.i32[1] = 1132396544;
      _D16 = vmul_f32(_D17, v26);
      _D17.f32[0] = 1.0 - *_D16.i32;
      __asm { FMLA            S18, S17, V16.S[1] }

      *a3++ = _S18 | (_S18 << 8) | ((_S18 | (_S18 << 8)) << 16);
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::render_sampler<CA::Vec4<float>,true,false>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24[-2 * v8];
  bzero(v9, v10);
  result = (*(*(*a1 + 56) + 8 * a4))(a1, a2, v9, a4);
  if (a2)
  {
    v13 = *(a1 + 68);
    v14 = *(a1 + 76);
    __asm { FMOV            V3.2S, #1.0 }

    do
    {
      v20 = *v9;
      v9 += 4;
      *v12.i32 = v20 * v13;
      v21 = vadd_f32(vsub_f32(v14, vdup_lane_s32(v12, 0)), 0x3F0000003F000000);
      v22 = vbsl_s8(vcgt_f32(v21, _D3), _D3, v21);
      v12 = vbic_s8(v22, vcltz_f32(v22));
      v23 = vmuls_lane_f32(255.0, v12, 1);
      *a3++ = ((v23 * (1.0 - *v12.i32)) + 0.5) | (((v23 * (1.0 - *v12.i32)) + 0.5) << 8) | ((((v23 * (1.0 - *v12.i32)) + 0.5) | (((v23 * (1.0 - *v12.i32)) + 0.5) << 8)) << 16);
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

float CA::OGL::SW::render_sampler<CA::Vec4<float>,false,true>(float *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17[-2 * v8];
  bzero(v9, v10);
  (*(*(*a1 + 56) + 8 * a4))(a1, a2, v9, a4);
  if (a2)
  {
    result = a1[19];
    v12 = a1[17];
    v13 = 1.0 / a1[18];
    do
    {
      v14 = *v9;
      v9 += 4;
      v15 = ((result - (v14 * v12)) * v13) + 0.5;
      if (v15 > 1.0)
      {
        v15 = 1.0;
      }

      if (v15 < 0.0)
      {
        v15 = 0.0;
      }

      v16 = (((v15 * v15) * -255.0) * ((v15 * 2.0) + -3.0)) + 0.5;
      *a3++ = v16 | (v16 << 8) | ((v16 | (v16 << 8)) << 16);
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::render_sampler<CA::Vec4<float>,false,false>(float *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16[-2 * v8];
  bzero(v9, v10);
  result = (*(*(*a1 + 56) + 8 * a4))(a1, a2, v9, a4);
  if (a2)
  {
    v12 = a1[17];
    v13 = a1[19];
    do
    {
      v14 = *v9;
      v9 += 4;
      v15 = (v13 - (v14 * v12)) + 0.5;
      if (v15 > 1.0)
      {
        v15 = 1.0;
      }

      if (v15 < 0.0)
      {
        v15 = 0.0;
      }

      *a3++ = ((v15 * 255.0) + 0.5) | (((v15 * 255.0) + 0.5) << 8) | ((((v15 * 255.0) + 0.5) | (((v15 * 255.0) + 0.5) << 8)) << 16);
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,CA::Vec4<float>,true,true,true,true>(uint64_t **a1, int a2, float32x4_t *a3)
{
  if (a2)
  {
    v4 = a2;
    v64 = (*a1)[2];
    v65 = **a1;
    v58 = *a1;
    v5 = *(a1[3] + 3);
    v6 = *(a1 + 48);
    v7 = *(a1[2] + 3);
    v8 = *(a1 + 15);
    v9 = *(a1 + 13);
    v59 = *(a1 + 14);
    v60 = *(a1 + 16);
    v62 = *(*a1 + 9);
    v63 = *(*a1 + 8);
    __asm { FMOV            V0.4S, #1.0 }

    v70 = _Q0;
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    v61 = v6;
    do
    {
      v18.f32[0] = (1.0 / v7) * v9;
      v18.f32[1] = (1.0 / v7) * v8;
      v19 = vcvt_s32_f32(v18);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v58 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v58 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v58 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v28 = vmul_f32(*(v58 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v58 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v20 = atan2f(v58[11] * v19.i32[1], v58[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v58 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0];
      v33 = v63 - 0x8000;
      if (v19.i32[0] < v63 - 0x8000)
      {
        v33 = v19.i32[0];
      }

      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      v34 = v33 + 0x8000;
      if (v19.i32[0] <= 0x8000)
      {
        v32 = 0x8000;
      }

      v35 = v32 - 0x8000;
      if (v35 >= v63)
      {
        v36 = v63;
      }

      else
      {
        v36 = v35;
      }

      v37 = v19.i32[1];
      v38 = v62 - 0x8000;
      if (v19.i32[1] < v62 - 0x8000)
      {
        v38 = v19.i32[1];
      }

      if (v38 <= -32768)
      {
        v38 = -32768;
      }

      v39 = v38 + 0x8000;
      if (v19.i32[1] <= 0x8000)
      {
        v37 = 0x8000;
      }

      v40 = v37 - 0x8000;
      if (v40 >= v62)
      {
        v41 = v62;
      }

      else
      {
        v41 = v40;
      }

      v42 = v65 + v64 * (v41 >> 16);
      v43 = v65 + v64 * HIWORD(v39);
      v44 = (v36 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v45 = (v34 >> 15) & 0x1FFFE;
      v67 = CA::HalfFloat::to_float(*(v42 + v44));
      v46 = v70;
      *v46.i32 = v67;
      v47 = vzip1q_s32(v46, v46);
      *&v47.i32[2] = v67;
      v69 = v47;
      v66 = CA::HalfFloat::to_float(*(v42 + v45));
      v48 = v70;
      *v48.i32 = v66;
      v49 = vzip1q_s32(v48, v48);
      *&v49.i32[2] = v66;
      v68 = v49;
      v50 = CA::HalfFloat::to_float(*(v43 + v44));
      v51 = CA::HalfFloat::to_float(*(v43 + v45));
      v52 = vcvts_n_f32_u32(BYTE1(v41), 8uLL);
      v53 = vzip1q_s32(COERCE_UNSIGNED_INT(v50 - v67), COERCE_UNSIGNED_INT(v50 - v67));
      v53.f32[2] = v50 - v67;
      *&v54 = v51 - v66;
      v55 = vmlaq_n_f32(v69, v53, v52);
      v56 = vzip1q_s32(v54, v54);
      v56.i32[2] = v54;
      v7 = v7 + v5;
      v9 += v59;
      v8 += v60;
      *a3++ = vmlaq_n_f32(v55, vmlaq_n_f32(vsubq_f32(v68, v55), v56, v52), vcvts_n_f32_u32(BYTE1(v36), 8uLL));
      v6 = v61;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,CA::Vec4<float>,true,true,false,true>(int *a1, int a2, float32x4_t *a3)
{
  if (a2)
  {
    v4 = a2;
    v41 = *(*a1 + 16);
    v42 = **a1;
    v5 = a1[15];
    v6 = a1[13];
    v37 = a1[14];
    v38 = a1[16];
    v39 = *(*a1 + 36);
    v40 = *(*a1 + 32);
    __asm { FMOV            V0.4S, #1.0 }

    v47 = _Q0;
    do
    {
      --v4;
      v12 = v40 - 0x8000;
      if (v6 < v40 - 0x8000)
      {
        v12 = v6;
      }

      if (v12 <= -32768)
      {
        v12 = -32768;
      }

      v13 = v12 + 0x8000;
      if (v6 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v6;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v40)
      {
        v16 = v40;
      }

      else
      {
        v16 = v15;
      }

      v17 = v39 - 0x8000;
      if (v5 < v39 - 0x8000)
      {
        v17 = v5;
      }

      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      v18 = v17 + 0x8000;
      if (v5 <= 0x8000)
      {
        v19 = 0x8000;
      }

      else
      {
        v19 = v5;
      }

      v20 = v19 - 0x8000;
      if (v20 >= v39)
      {
        v21 = v39;
      }

      else
      {
        v21 = v20;
      }

      v22 = v42 + v41 * (v21 >> 16);
      v23 = v42 + v41 * HIWORD(v18);
      v24 = (v16 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v25 = (v13 >> 15) & 0x1FFFE;
      v44 = CA::HalfFloat::to_float(*(v22 + v24));
      v26 = v47;
      *v26.i32 = v44;
      v27 = vzip1q_s32(v26, v26);
      *&v27.i32[2] = v44;
      v46 = v27;
      v43 = CA::HalfFloat::to_float(*(v22 + v25));
      v28 = v47;
      *v28.i32 = v43;
      v29 = vzip1q_s32(v28, v28);
      *&v29.i32[2] = v43;
      v45 = v29;
      v30 = CA::HalfFloat::to_float(*(v23 + v24));
      v31 = CA::HalfFloat::to_float(*(v23 + v25));
      v32 = vcvts_n_f32_u32(BYTE1(v21), 8uLL);
      v33 = vzip1q_s32(COERCE_UNSIGNED_INT(v30 - v44), COERCE_UNSIGNED_INT(v30 - v44));
      v33.f32[2] = v30 - v44;
      *&v34 = v31 - v43;
      v35 = vmlaq_n_f32(v46, v33, v32);
      v36 = vzip1q_s32(v34, v34);
      v36.i32[2] = v34;
      v6 += v37;
      *a3++ = vmlaq_n_f32(v35, vmlaq_n_f32(vsubq_f32(v45, v35), v36, v32), vcvts_n_f32_u32(BYTE1(v16), 8uLL));
      v5 += v38;
    }

    while (v4);
  }
}

uint64_t **CA::OGL::SW::gaussian_sampler<true>(uint64_t **result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = (2 * *(result + 2));
    v5 = result[2];
    v4 = result[3];
    v6 = *(v4 + 4 * v3 + 32);
    v7 = *(v4 + 3);
    v8 = **result;
    v9 = *(v5 + 3);
    v10 = *(v5 + 4 * v3 + 32);
    do
    {
      v11 = vmin_u32(vcvt_u32_f32(vmla_n_f32(0x3F0000003F000000, v10, 512.0 / v9)), 0x100000001);
      v12 = *(v8 + v11.u32[0]) + *(v8 + v11.u32[0]) * *(v8 + v11.u32[1]);
      v9 = v9 + v7;
      v10 = vadd_f32(v10, v6);
      *a3++ = v12 & 0x1FF00 | (v12 >> 8) | ((v12 & 0x1FF00 | (v12 >> 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::gaussian_sampler<false>(uint64_t **result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = (2 * *(result + 2));
    v4 = *(result[3] + 4 * v3 + 32);
    v5 = **result;
    v6 = *(result[2] + 4 * v3 + 32);
    do
    {
      v7 = vmin_u32(vcvt_u32_f32(vmla_f32(0x3F0000003F000000, 0x4400000044000000, v6)), 0x100000001);
      v8 = *(v5 + v7.u32[0]) + *(v5 + v7.u32[0]) * *(v5 + v7.u32[1]);
      v6 = vadd_f32(v6, v4);
      *a3++ = v8 & 0x1FF00 | (v8 >> 8) | ((v8 & 0x1FF00 | (v8 >> 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::uneven_circle_sampler<true,true>(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a2)
  {
    v23 = *(result + 8);
    v24 = (*(result + 104) + 48 * v23);
    LODWORD(a6) = v24[6];
    LODWORD(a5) = v24[7];
    *v17.i32 = 1.0 / *&a5;
    *v18.i32 = 1.0 / *&a6;
    LODWORD(a9) = v24[4];
    LODWORD(a8) = v24[5];
    *v19.i32 = 1.0 / *&a8;
    *v20.i32 = 1.0 / *&a9;
    LODWORD(a7) = v24[2];
    LODWORD(a10) = v24[3];
    *v21.i32 = 1.0 / *&a10;
    v11.i32[0] = *v24;
    LODWORD(a11) = v24[1];
    v26 = *(result + 16);
    v25 = *(result + 24);
    v13.i32[0] = *(v25 + 12);
    v23 *= 2;
    *v22.i32 = 1.0 / *&a11;
    v27 = *(result + 40) + 4 * v23;
    v16.i32[0] = *(v27 + 32);
    v15.i32[0] = *(v27 + 36);
    v28 = v25 + 4 * v23;
    v12.i32[0] = *(v28 + 32);
    v14.i32[0] = *(v28 + 36);
    v29 = &v26[v23];
    v30 = v29 + 8;
    v31 = v29 + 9;
    v32 = *(result + 32) + 4 * v23;
    v33 = (v32 + 32);
    v34 = (v32 + 36);
    v26 += 3;
    v35 = (a2 + 3) & 0x1FFFFFFFCLL;
    v36 = vld1q_dup_f32(v30);
    v37 = vmlaq_n_f32(v36, xmmword_183E213B0, *v12.i32);
    v151 = *v12.i32;
    v152 = *v14.i32;
    *v12.i32 = *v12.i32 * 4.0;
    v38 = vdupq_lane_s32(v12, 0);
    v39 = vld1q_dup_f32(v31);
    v40 = vmlaq_n_f32(v39, xmmword_183E213B0, *v14.i32);
    *v14.i32 = *v14.i32 * 4.0;
    v149 = vdupq_lane_s32(v14, 0);
    v150 = v38;
    v41 = vld1q_dup_f32(v33);
    v42 = vmlaq_n_f32(v41, xmmword_183E213B0, *v16.i32);
    *v16.i32 = *v16.i32 * 4.0;
    v43 = vdupq_lane_s32(v16, 0);
    v44 = vld1q_dup_f32(v34);
    v45 = vmlaq_n_f32(v44, xmmword_183E213B0, *v15.i32);
    *v15.i32 = *v15.i32 * 4.0;
    v147 = vdupq_lane_s32(v15, 0);
    v148 = v43;
    v46 = vld1q_dup_f32(v26);
    v47 = vmlaq_n_f32(v46, xmmword_183E213B0, *v13.i32);
    *v13.i32 = *v13.i32 * 4.0;
    v48 = vdupq_lane_s32(v13, 0);
    v49 = vdupq_n_s64(a2 - 1);
    v145 = v49;
    v146 = v48;
    *v49.i32 = 1.0 / *v11.i32;
    v144 = 1.0 / *v11.i32;
    v153 = 1.0 / *&a11;
    v142 = vdupq_lane_s32(v22, 0);
    v143 = vdupq_lane_s32(*v49.i8, 0);
    v140 = vdupq_lane_s32(*&a11, 0);
    v141 = vdupq_lane_s32(v11, 0);
    v138 = vdupq_lane_s32(*&a10, 0);
    v139 = vdupq_lane_s32(*&a7, 0);
    v136 = vdupq_lane_s32(*&a8, 0);
    v137 = vdupq_lane_s32(*&a9, 0);
    v134 = vdupq_lane_s32(*&a5, 0);
    v135 = vdupq_lane_s32(*&a6, 0);
    v50 = (a3 + 8);
    v51 = 1;
    *&a4 = 1.0 / *&a7;
    v133 = 1.0 / *&a7;
    v154 = 1.0 / *&a9;
    v131 = vdupq_lane_s32(v21, 0);
    v132 = vdupq_lane_s32(*&a4, 0);
    v155 = 1.0 / *&a8;
    v156 = 1.0 / *&a6;
    v129 = vdupq_lane_s32(v19, 0);
    v130 = vdupq_lane_s32(v20, 0);
    v128 = vdupq_lane_s32(v18, 0);
    v157 = 1.0 / *&a5;
    v127 = vdupq_lane_s32(v17, 0);
    v52.i64[0] = 0x3F0000003F000000;
    v52.i64[1] = 0x3F0000003F000000;
    v53.i64[0] = 0xFF000000FFLL;
    v53.i64[1] = 0xFF000000FFLL;
    do
    {
      __asm { FMOV            V21.4S, #1.0 }

      v59 = vdivq_f32(_Q21, v47);
      v60 = vmulq_f32(v37, v59);
      v61 = vmulq_f32(v40, v59);
      v62 = vaddq_f32(vabsq_f32(vmulq_f32(v42, v59)), vabsq_f32(vmulq_n_f32(v59, v151)));
      v63 = vaddq_f32(vabsq_f32(vmulq_n_f32(v59, v152)), vabsq_f32(vmulq_f32(v45, v59)));
      __asm { FMOV            V0.4S, #-1.0 }

      v65 = vminnmq_f32(vmlaq_f32(_Q0, v143, v60), 0);
      v66 = vsubq_f32(_Q21, v61);
      v67 = vminnmq_f32(vmlaq_f32(_Q0, v142, v66), 0);
      v68 = vsubq_f32(_Q21, v60);
      v69 = vminnmq_f32(vmlaq_f32(_Q0, v132, v68), 0);
      v70 = vminnmq_f32(vmlaq_f32(_Q0, v131, v66), 0);
      v71 = vminnmq_f32(vmlaq_f32(_Q0, v130, v68), 0);
      v72 = vminnmq_f32(vmlaq_f32(_Q0, v129, v61), 0);
      v73 = vminnmq_f32(vmlaq_f32(_Q0, v128, v60), 0);
      v74 = vminnmq_f32(vmlaq_f32(_Q0, v127, v61), 0);
      v75 = vminnmq_f32(v141, vmulq_n_f32(v62, v144));
      v76 = vminnmq_f32(v140, vmulq_n_f32(v63, v153));
      v77 = vbslq_s8(vcgtq_f32(v75, v76), v75, v76);
      v78 = vabsq_f32(v67);
      v79 = vabsq_f32(v65);
      v80 = vdivq_f32(vminnmq_f32(v79, v78), vmaxnmq_f32(v79, v78));
      v81 = vbslq_s8(vcgtq_f32(v80, _Q21), _Q21, v80);
      v82 = vdupq_n_s32(0x3F6D11E0u);
      v83 = vdupq_n_s32(0xC049FC11);
      v84 = vdupq_n_s32(0x406909C0u);
      v85 = vdupq_n_s32(0xBFA24ECF);
      v86 = vdupq_n_s32(0xBE897CE5);
      v87 = vmlaq_f32(_Q21, vmlaq_f32(v86, v81, vmlaq_f32(v85, v81, vmlaq_f32(v84, v81, vmlaq_f32(v83, v82, v81)))), vmulq_f32(v81, v81));
      v88 = vminnmq_f32(v139, vmulq_n_f32(v62, v133));
      v89 = vminnmq_f32(v138, vmulq_n_f32(v63, 1.0 / *&a10));
      v90 = vbslq_s8(vcgtq_f32(v88, v89), v88, v89);
      v91 = vabsq_f32(v70);
      v92 = vabsq_f32(v69);
      v93 = vdivq_f32(vminnmq_f32(v92, v91), vmaxnmq_f32(v92, v91));
      v94 = vbslq_s8(vcgtq_f32(v93, _Q21), _Q21, v93);
      v95 = vmlaq_f32(_Q21, vmlaq_f32(v86, v94, vmlaq_f32(v85, v94, vmlaq_f32(v84, v94, vmlaq_f32(v83, v82, v94)))), vmulq_f32(v94, v94));
      v96 = vminnmq_f32(v137, vmulq_n_f32(v62, v154));
      v97 = vminnmq_f32(v136, vmulq_n_f32(v63, v155));
      v98 = vbslq_s8(vcgtq_f32(v96, v97), v96, v97);
      v99 = vabsq_f32(v72);
      v100 = vabsq_f32(v71);
      v101 = vdivq_f32(vminnmq_f32(v100, v99), vmaxnmq_f32(v100, v99));
      v102 = vbslq_s8(vcgtq_f32(v101, _Q21), _Q21, v101);
      v103 = vmlaq_f32(_Q21, vmlaq_f32(v86, v102, vmlaq_f32(v85, v102, vmlaq_f32(v84, v102, vmlaq_f32(v83, v82, v102)))), vmulq_f32(v102, v102));
      v104 = vminnmq_f32(v135, vmulq_n_f32(v62, v156));
      v105 = vminnmq_f32(v134, vmulq_n_f32(v63, v157));
      v106 = vbslq_s8(vcgtq_f32(v104, v105), v104, v105);
      v107 = vabsq_f32(v74);
      v108 = vabsq_f32(v73);
      v109 = vdivq_f32(vminnmq_f32(v108, v107), vmaxnmq_f32(v108, v107));
      v110 = vbslq_s8(vcgtq_f32(v109, _Q21), _Q21, v109);
      v111 = vmlaq_f32(_Q21, vmlaq_f32(v86, v110, vmlaq_f32(v85, v110, vmlaq_f32(v84, v110, vmlaq_f32(v83, v82, v110)))), vmulq_f32(v110, v110));
      v112 = vdupq_n_s64(v51 - 1);
      v113 = vorrq_s8(v112, xmmword_183E20FF0);
      v114 = vcgeq_u64(v145, vorrq_s8(v112, xmmword_183E21240));
      v115 = vcgeq_u64(v145, v113);
      v116 = vmlaq_f32(vmulq_f32(v65, v65), v67, v67);
      v117 = vdupq_n_s32(0x437F0000u);
      v118 = vuzp1q_s32(v115, v114);
      v119 = vmlaq_f32(vmulq_f32(v70, v70), v69, v69);
      v120 = vbslq_s8(vandq_s8(v118, vcgtq_f32(vsubq_f32(_Q21, v90), v119)), v53, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vsqrtq_f32(v119)), v52, v90), vdivq_f32(_Q21, v95)), v117), v90), v52)), 0), v53));
      v121 = vmlaq_f32(vmulq_f32(v72, v72), v71, v71);
      v122 = vbslq_s8(vandq_s8(v118, vcgtq_f32(vsubq_f32(_Q21, v98), v121)), v53, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vsqrtq_f32(v121)), v52, v98), vdivq_f32(_Q21, v103)), v117), v98), v52)), 0), v53));
      v123 = vmlaq_f32(vmulq_f32(v74, v74), v73, v73);
      v124 = vminq_u32(vminq_u32(vbslq_s8(vandq_s8(v118, vcgtq_f32(vsubq_f32(_Q21, v77), v116)), v53, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vsqrtq_f32(v116)), v52, v77), vdivq_f32(_Q21, v87)), v117), v77), v52)), 0), v53)), v120), vminq_u32(v122, vbslq_s8(vandq_s8(v118, vcgtq_f32(vsubq_f32(_Q21, v106), v123)), v53, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vsqrtq_f32(v123)), v52, v106), vdivq_f32(_Q21, v111)), v117), v106), v52)), 0), v53))));
      if (vmovn_s32(v118).u8[0])
      {
        *(v50 - 2) = 16843009 * v124.i32[0];
      }

      if (vuzp1_s16(vmovn_s64(*&v115), *&v114).i8[2])
      {
        *(v50 - 1) = 16843009 * v124.i32[1];
      }

      v125 = vmovn_s64(v114);
      if (vuzp1_s16(v125, v125).i32[1])
      {
        *v50 = 16843009 * v124.i32[2];
      }

      v126 = vuzp1_s16(v125, v125);
      result = v126.u16[3];
      if (v126.i8[6])
      {
        result = (16843009 * v124.i32[3]);
        v50[1] = result;
      }

      v37 = vaddq_f32(v37, v150);
      v40 = vaddq_f32(v40, v149);
      v42 = vaddq_f32(v42, v148);
      v51 += 4;
      v45 = vaddq_f32(v45, v147);
      v50 += 4;
      v47 = vaddq_f32(v47, v146);
      v35 -= 4;
    }

    while (v35);
  }

  return result;
}

uint64_t CA::OGL::SW::uneven_circle_sampler<false,true>(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a2)
  {
    v25 = *(result + 8);
    v26 = (*(result + 104) + 48 * v25);
    LODWORD(a7) = v26[6];
    LODWORD(a5) = v26[7];
    *v20.i32 = 1.0 / *&a5;
    *v21.i32 = 1.0 / *&a7;
    LODWORD(a6) = v26[4];
    LODWORD(a8) = v26[5];
    *v22.i32 = 1.0 / *&a8;
    LODWORD(a11) = v26[2];
    LODWORD(a9) = v26[3];
    *v23.i32 = 1.0 / *&a9;
    *v24.i32 = 1.0 / *&a11;
    v15.i32[0] = *v26;
    v13.i32[0] = v26[1];
    LODWORD(v26) = 2 * v25;
    v27 = *(result + 40) + 8 * v25;
    *v11.i32 = 1.0 / *v13.i32;
    v17.i32[0] = *(v27 + 32);
    v28 = *(v27 + 36);
    v29 = *(result + 24) + 4 * v26;
    v14.i32[0] = *(v29 + 32);
    v16.i32[0] = *(v29 + 36);
    *v18.i32 = fabsf(*v16.i32);
    *v19.i32 = fabsf(*v14.i32);
    v30 = (*(result + 16) + 4 * v26);
    v31 = v30 + 8;
    v30 += 9;
    v32 = *(result + 32) + 4 * v26;
    v33 = (v32 + 32);
    v34 = (v32 + 36);
    v35 = (a2 + 3) & 0x1FFFFFFFCLL;
    v36 = vld1q_dup_f32(v31);
    *v12.i32 = *v14.i32 * 4.0;
    v146 = vdupq_lane_s32(v12, 0);
    v37 = vld1q_dup_f32(v30);
    v38 = vmlaq_n_f32(v36, xmmword_183E213B0, *v14.i32);
    *v14.i32 = *v16.i32 * 4.0;
    v145 = vdupq_lane_s32(v14, 0);
    v39 = vld1q_dup_f32(v33);
    v40 = vmlaq_n_f32(v37, xmmword_183E213B0, *v16.i32);
    *v16.i32 = *v17.i32 * 4.0;
    v144 = vdupq_lane_s32(v16, 0);
    v41 = vld1q_dup_f32(v34);
    v42 = vmlaq_n_f32(v39, xmmword_183E213B0, *v17.i32);
    *v17.i32 = v28 * 4.0;
    v43 = vdupq_lane_s32(v17, 0);
    v44 = vdupq_n_s64(a2 - 1);
    v45 = vmlaq_n_f32(v41, xmmword_183E213B0, v28);
    v46 = vdupq_lane_s32(v19, 0);
    v142 = v46;
    v143 = v43;
    *v46.i32 = 1.0 / *v15.i32;
    v140 = 1.0 / *v15.i32;
    v141 = vdupq_lane_s32(v18, 0);
    v147 = 1.0 / *v13.i32;
    v148 = 1.0 / *&a11;
    v138 = vdupq_lane_s32(v11, 0);
    v139 = vdupq_lane_s32(*v46.i8, 0);
    v136 = vdupq_lane_s32(v23, 0);
    v137 = vdupq_lane_s32(v24, 0);
    v134 = vdupq_lane_s32(v13, 0);
    v135 = vdupq_lane_s32(v15, 0);
    v132 = vdupq_lane_s32(*&a9, 0);
    v133 = vdupq_lane_s32(*&a11, 0);
    v130 = vdupq_lane_s32(*&a8, 0);
    v131 = vdupq_lane_s32(*&a6, 0);
    v128 = vdupq_lane_s32(*&a5, 0);
    v129 = vdupq_lane_s32(*&a7, 0);
    v47 = (a3 + 8);
    v48 = 1;
    *&a4 = 1.0 / *&a6;
    v127 = 1.0 / *&a6;
    v149 = 1.0 / *&a8;
    v150 = 1.0 / *&a7;
    v125 = vdupq_lane_s32(v22, 0);
    v126 = vdupq_lane_s32(*&a4, 0);
    v124 = vdupq_lane_s32(v21, 0);
    v151 = 1.0 / *&a5;
    v123 = vdupq_lane_s32(v20, 0);
    v49.i64[0] = 0x3F0000003F000000;
    v49.i64[1] = 0x3F0000003F000000;
    v50.i64[0] = 0xFF000000FFLL;
    v50.i64[1] = 0xFF000000FFLL;
    do
    {
      v51 = vaddq_f32(vabsq_f32(v42), v142);
      v52 = vaddq_f32(vabsq_f32(v45), v141);
      __asm { FMOV            V0.4S, #-1.0 }

      v58 = vminnmq_f32(vmlaq_f32(_Q0, v139, v38), 0);
      __asm { FMOV            V19.4S, #1.0 }

      v60 = vsubq_f32(_Q19, v40);
      v61 = vminnmq_f32(vmlaq_f32(_Q0, v138, v60), 0);
      v62 = vsubq_f32(_Q19, v38);
      v63 = vminnmq_f32(vmlaq_f32(_Q0, v137, v62), 0);
      v64 = vminnmq_f32(vmlaq_f32(_Q0, v136, v60), 0);
      v65 = vminnmq_f32(vmlaq_f32(_Q0, v126, v62), 0);
      v66 = vminnmq_f32(vmlaq_f32(_Q0, v125, v40), 0);
      v67 = vminnmq_f32(vmlaq_f32(_Q0, v124, v38), 0);
      v68 = vminnmq_f32(vmlaq_f32(_Q0, v123, v40), 0);
      v69 = vminnmq_f32(v135, vmulq_n_f32(v51, v140));
      v70 = vminnmq_f32(v134, vmulq_n_f32(v52, v147));
      v71 = vbslq_s8(vcgtq_f32(v69, v70), v69, v70);
      v72 = vabsq_f32(v61);
      v73 = vabsq_f32(v58);
      v74 = vdivq_f32(vminnmq_f32(v73, v72), vmaxnmq_f32(v73, v72));
      v75 = vbslq_s8(vcgtq_f32(v74, _Q19), _Q19, v74);
      v76 = vdupq_n_s32(0x3F6D11E0u);
      v77 = vdupq_n_s32(0xC049FC11);
      v78 = vdupq_n_s32(0x406909C0u);
      v79 = vdupq_n_s32(0xBFA24ECF);
      v80 = vdupq_n_s32(0xBE897CE5);
      v81 = vmlaq_f32(_Q19, vmlaq_f32(v80, v75, vmlaq_f32(v79, v75, vmlaq_f32(v78, v75, vmlaq_f32(v77, v76, v75)))), vmulq_f32(v75, v75));
      v82 = vminnmq_f32(v133, vmulq_n_f32(v51, v148));
      v83 = vminnmq_f32(v132, vmulq_n_f32(v52, 1.0 / *&a9));
      v84 = vbslq_s8(vcgtq_f32(v82, v83), v82, v83);
      v85 = vabsq_f32(v64);
      v86 = vabsq_f32(v63);
      v87 = vdivq_f32(vminnmq_f32(v86, v85), vmaxnmq_f32(v86, v85));
      v88 = vbslq_s8(vcgtq_f32(v87, _Q19), _Q19, v87);
      v89 = vmlaq_f32(_Q19, vmlaq_f32(v80, v88, vmlaq_f32(v79, v88, vmlaq_f32(v78, v88, vmlaq_f32(v77, v76, v88)))), vmulq_f32(v88, v88));
      v90 = vminnmq_f32(v131, vmulq_n_f32(v51, v127));
      v91 = vminnmq_f32(v130, vmulq_n_f32(v52, v149));
      v92 = vbslq_s8(vcgtq_f32(v90, v91), v90, v91);
      v93 = vabsq_f32(v66);
      v94 = vabsq_f32(v65);
      v95 = vdivq_f32(vminnmq_f32(v94, v93), vmaxnmq_f32(v94, v93));
      v96 = vbslq_s8(vcgtq_f32(v95, _Q19), _Q19, v95);
      v97 = vmlaq_f32(_Q19, vmlaq_f32(v80, v96, vmlaq_f32(v79, v96, vmlaq_f32(v78, v96, vmlaq_f32(v77, v76, v96)))), vmulq_f32(v96, v96));
      v98 = vminnmq_f32(v129, vmulq_n_f32(v51, v150));
      v99 = vminnmq_f32(v128, vmulq_n_f32(v52, v151));
      v100 = vbslq_s8(vcgtq_f32(v98, v99), v98, v99);
      v101 = vabsq_f32(v68);
      v102 = vabsq_f32(v67);
      v103 = vdivq_f32(vminnmq_f32(v102, v101), vmaxnmq_f32(v102, v101));
      v104 = vbslq_s8(vcgtq_f32(v103, _Q19), _Q19, v103);
      v105 = vmlaq_f32(_Q19, vmlaq_f32(v80, v104, vmlaq_f32(v79, v104, vmlaq_f32(v78, v104, vmlaq_f32(v77, v76, v104)))), vmulq_f32(v104, v104));
      v106 = vdupq_n_s64(v48 - 1);
      v107 = vorrq_s8(v106, xmmword_183E20FF0);
      v108 = vcgeq_u64(v44, vorrq_s8(v106, xmmword_183E21240));
      v109 = vcgeq_u64(v44, v107);
      v110 = vmlaq_f32(vmulq_f32(v58, v58), v61, v61);
      v111 = vcgtq_f32(vsubq_f32(_Q19, v71), v110);
      v112 = vdupq_n_s32(0x437F0000u);
      v113 = vdivq_f32(vmulq_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vsqrtq_f32(v110)), v49, v71), vdivq_f32(_Q19, v81)), v112), v71);
      v114 = vuzp1q_s32(v109, v108);
      v115 = vbslq_s8(vandq_s8(v114, v111), v50, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(v113, v49)), 0), v50));
      v116 = vmlaq_f32(vmulq_f32(v64, v64), v63, v63);
      v117 = vbslq_s8(vandq_s8(v114, vcgtq_f32(vsubq_f32(_Q19, v84), v116)), v50, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vsqrtq_f32(v116)), v49, v84), vdivq_f32(_Q19, v89)), v112), v84), v49)), 0), v50));
      v118 = vmlaq_f32(vmulq_f32(v66, v66), v65, v65);
      v119 = vmlaq_f32(vmulq_f32(v68, v68), v67, v67);
      v120 = vminq_u32(vminq_u32(v115, v117), vminq_u32(vbslq_s8(vandq_s8(v114, vcgtq_f32(vsubq_f32(_Q19, v92), v118)), v50, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vsqrtq_f32(v118)), v49, v92), vdivq_f32(_Q19, v97)), v112), v92), v49)), 0), v50)), vbslq_s8(vandq_s8(v114, vcgtq_f32(vsubq_f32(_Q19, v100), v119)), v50, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vsqrtq_f32(v119)), v49, v100), vdivq_f32(_Q19, v105)), v112), v100), v49)), 0), v50))));
      if (vmovn_s32(v114).u8[0])
      {
        *(v47 - 2) = 16843009 * v120.i32[0];
      }

      if (vuzp1_s16(vmovn_s64(*&v109), *&v108).i8[2])
      {
        *(v47 - 1) = 16843009 * v120.i32[1];
      }

      v121 = vmovn_s64(v108);
      if (vuzp1_s16(v121, v121).i32[1])
      {
        *v47 = 16843009 * v120.i32[2];
      }

      v122 = vuzp1_s16(v121, v121);
      result = v122.u16[3];
      if (v122.i8[6])
      {
        result = (16843009 * v120.i32[3]);
        v47[1] = result;
      }

      v38 = vaddq_f32(v38, v146);
      v40 = vaddq_f32(v40, v145);
      v42 = vaddq_f32(v42, v144);
      v48 += 4;
      v47 += 4;
      v45 = vaddq_f32(v45, v143);
      v35 -= 4;
    }

    while (v35);
  }

  return result;
}

uint64_t CA::OGL::SW::uneven_circle_sampler<true,false>(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a2)
  {
    v23 = *(result + 8);
    v24 = (*(result + 104) + 48 * v23);
    LODWORD(a6) = v24[6];
    LODWORD(a4) = v24[7];
    LODWORD(a8) = v24[4];
    LODWORD(a7) = v24[5];
    *v20.i32 = 1.0 / *&a8;
    LODWORD(a10) = v24[2];
    LODWORD(a9) = v24[3];
    *v21.i32 = 1.0 / *&a9;
    *v22.i32 = 1.0 / *&a10;
    v12.i32[0] = *v24;
    LODWORD(a11) = v24[1];
    v26 = *(result + 16);
    v25 = *(result + 24);
    v14.i32[0] = *(v25 + 12);
    v23 *= 2;
    *v11.i32 = 1.0 / *&a11;
    v27 = *(result + 40) + 4 * v23;
    v28 = *(v27 + 32);
    v16.i32[0] = *(v27 + 36);
    v29 = v25 + 4 * v23;
    v15.i32[0] = *(v29 + 32);
    v17.i32[0] = *(v29 + 36);
    v30 = &v26[v23];
    v31 = v30 + 8;
    v32 = v30 + 9;
    v33 = *(result + 32) + 4 * v23;
    v34 = (v33 + 32);
    v35 = (v33 + 36);
    v26 += 3;
    v36 = vld1q_dup_f32(v31);
    *v13.i32 = *v15.i32 * 4.0;
    v135 = vdupq_lane_s32(v13, 0);
    v136 = *v15.i32;
    v37 = vmlaq_n_f32(v36, xmmword_183E213B0, *v15.i32);
    v38 = vld1q_dup_f32(v32);
    *v15.i32 = *v17.i32 * 4.0;
    v39 = vdupq_lane_s32(v15, 0);
    v137 = *v17.i32;
    v40 = vmlaq_n_f32(v38, xmmword_183E213B0, *v17.i32);
    v41 = vld1q_dup_f32(v34);
    *v17.i32 = v28 * 4.0;
    v42 = vdupq_lane_s32(v17, 0);
    v133 = v42;
    v134 = v39;
    v43 = vmlaq_n_f32(v41, xmmword_183E213B0, v28);
    v44 = vld1q_dup_f32(v35);
    *v42.i32 = *v16.i32 * 4.0;
    v45 = vdupq_lane_s32(*v42.i8, 0);
    v46 = vmlaq_n_f32(v44, xmmword_183E213B0, *v16.i32);
    v47 = vld1q_dup_f32(v26);
    *v16.i32 = *v14.i32 * 4.0;
    v131 = vdupq_lane_s32(v16, 0);
    v132 = v45;
    v48 = vmlaq_n_f32(v47, xmmword_183E213B0, *v14.i32);
    v49 = vdupq_n_s64(a2 - 1);
    *v14.i32 = 1.0 / *v12.i32;
    v138 = 1.0 / *&a11;
    v129 = vdupq_lane_s32(v11, 0);
    v130 = vdupq_lane_s32(v14, 0);
    v127 = vdupq_lane_s32(v12, 0);
    v128 = vdupq_lane_s32(v22, 0);
    v125 = vdupq_lane_s32(*&a10, 0);
    v126 = vdupq_lane_s32(*&a11, 0);
    v123 = vdupq_lane_s32(*&a8, 0);
    v124 = vdupq_lane_s32(*&a9, 0);
    v121 = vdupq_lane_s32(*&a6, 0);
    v122 = vdupq_lane_s32(*&a7, 0);
    v50 = (a2 + 3) & 0x1FFFFFFFCLL;
    *&a5 = 1.0 / *&a4;
    v51 = (a3 + 8);
    v52 = 1;
    v118 = vdupq_lane_s32(v21, 0);
    v119 = vdupq_lane_s32(*&a4, 0);
    v120 = 1.0 / *&a8;
    *&a7 = 1.0 / *&a7;
    v19.i32[0] = SLODWORD(a7);
    v116 = vdupq_lane_s32(v19, 0);
    v117 = vdupq_lane_s32(v20, 0);
    *&a6 = 1.0 / *&a6;
    v18.i32[0] = SLODWORD(a6);
    v53 = 1.0 / *&a4;
    v114 = vdupq_lane_s32(*&a5, 0);
    v115 = vdupq_lane_s32(v18, 0);
    v54.i64[0] = 0x3F0000003F000000;
    v54.i64[1] = 0x3F0000003F000000;
    v55.i64[0] = 0xFF000000FFLL;
    v55.i64[1] = 0xFF000000FFLL;
    do
    {
      v56 = vdupq_n_s64(v52 - 1);
      v57 = vorrq_s8(v56, xmmword_183E20FF0);
      v58 = vcgeq_u64(v49, vorrq_s8(v56, xmmword_183E21240));
      v59 = vcgeq_u64(v49, v57);
      v60 = vmovn_s32(vuzp1q_s32(v59, v58));
      __asm { FMOV            V28.4S, #1.0 }

      v66 = vdivq_f32(_Q28, v48);
      v67 = vmulq_f32(v37, v66);
      v68 = vmulq_f32(v40, v66);
      v69 = vaddq_f32(vabsq_f32(vmulq_f32(v43, v66)), vabsq_f32(vmulq_n_f32(v66, v136)));
      v70 = vaddq_f32(vabsq_f32(vmulq_n_f32(v66, v137)), vabsq_f32(vmulq_f32(v46, v66)));
      __asm { FMOV            V29.4S, #-1.0 }

      v72 = vminnmq_f32(vmlaq_f32(_Q29, v130, v67), 0);
      v73 = vsubq_f32(_Q28, v68);
      v74 = vminnmq_f32(vmlaq_f32(_Q29, v129, v73), 0);
      v75 = vsubq_f32(_Q28, v67);
      v76 = vminnmq_f32(vmlaq_f32(_Q29, v128, v75), 0);
      v77 = vminnmq_f32(vmlaq_f32(_Q29, v118, v73), 0);
      v78 = vmlaq_f32(_Q29, v117, v75);
      v79 = vmlaq_f32(_Q29, v116, v68);
      v80 = vmlaq_f32(_Q29, v115, v67);
      v81 = vmlaq_f32(_Q29, v114, v68);
      v82 = vminnmq_f32(v127, vmulq_n_f32(v69, 1.0 / *v12.i32));
      v83 = vminnmq_f32(v126, vmulq_n_f32(v70, v138));
      v84 = vbslq_s8(vcgtq_f32(v82, v83), v82, v83);
      v85 = vmlaq_f32(vmulq_f32(v72, v72), v74, v74);
      *v72.f32 = vmovn_s32(vcgtq_f32(vsubq_f32(_Q28, v84), v85));
      v86 = vdupq_n_s32(0x437F0000u);
      v87 = vandq_s8(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(v60, *v72.f32)), 0x1FuLL)), v55, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(vmlaq_f32(_Q28, v54, v84), vsqrtq_f32(v85)), v86), v84), v54)), 0), v55)), vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vbic_s8(v60, *v72.f32), vmovn_s32(vcgtq_f32(v85, vaddq_f32(v84, _Q28))))), 0x1FuLL)));
      v88 = vminnmq_f32(v125, vmulq_n_f32(v69, 1.0 / *&a10));
      v89 = vminnmq_f32(v124, vmulq_n_f32(v70, 1.0 / *&a9));
      v90 = vbslq_s8(vcgtq_f32(v88, v89), v88, v89);
      v91 = vmlaq_f32(vmulq_f32(v77, v77), v76, v76);
      v92 = vminnmq_f32(v123, vmulq_n_f32(v69, v120));
      v93 = vminnmq_f32(v122, vmulq_n_f32(v70, *&a7));
      v94 = vbslq_s8(vcgtq_f32(v92, v93), v92, v93);
      v95 = vcgtq_f32(v91, vaddq_f32(v90, _Q28));
      *v74.f32 = vmovn_s32(vcgtq_f32(vsubq_f32(_Q28, v90), v91));
      v96 = vdivq_f32(vmulq_f32(vsubq_f32(vmlaq_f32(_Q28, v54, v90), vsqrtq_f32(v91)), v86), v90);
      *v90.f32 = vand_s8(vbic_s8(v60, *v74.f32), vmovn_s32(v95));
      v97 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(v60, *v74.f32)), 0x1FuLL)), v55, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(v96, v54)), 0), v55));
      v98 = vminnmq_f32(v78, 0);
      v99 = vminnmq_f32(v79, 0);
      v100 = vandq_s8(v97, vcgezq_s32(vshlq_n_s32(vmovl_u16(*v90.f32), 0x1FuLL)));
      v101 = vmlaq_f32(vmulq_f32(v99, v99), v98, v98);
      v102 = vminnmq_f32(v121, vmulq_n_f32(v69, *&a6));
      v103 = vminnmq_f32(v119, vmulq_n_f32(v70, v53));
      v104 = vbslq_s8(vcgtq_f32(v102, v103), v102, v103);
      *v90.f32 = vmovn_s32(vcgtq_f32(vsubq_f32(_Q28, v94), v101));
      *v103.f32 = vand_s8(vbic_s8(v60, *v90.f32), vmovn_s32(vcgtq_f32(v101, vaddq_f32(v94, _Q28))));
      v105 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(v60, *v90.f32)), 0x1FuLL)), v55, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(vmlaq_f32(_Q28, v54, v94), vsqrtq_f32(v101)), v86), v94), v54)), 0), v55));
      v106 = vminnmq_f32(v80, 0);
      v107 = vminnmq_f32(v81, 0);
      v108 = vmlaq_f32(vmulq_f32(v107, v107), v106, v106);
      *v106.f32 = vmovn_s32(vcgtq_f32(vsubq_f32(_Q28, v104), v108));
      v109 = vminq_u32(vminq_u32(v87, v100), vminq_u32(vandq_s8(v105, vcgezq_s32(vshlq_n_s32(vmovl_u16(*v103.f32), 0x1FuLL))), vandq_s8(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(v60, *v106.f32)), 0x1FuLL)), v55, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(vmlaq_f32(_Q28, v54, v104), vsqrtq_f32(v108)), v86), v104), v54)), 0), v55)), vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vbic_s8(v60, *v106.f32), vmovn_s32(vcgtq_f32(v108, vaddq_f32(v104, _Q28))))), 0x1FuLL)))));
      if (v60.i8[0])
      {
        *(v51 - 2) = 16843009 * v109.i32[0];
      }

      v110 = vmovn_s64(v59);
      v111 = vuzp1_s16(v110, v110);
      if (v111.i8[2])
      {
        *(v51 - 1) = 16843009 * v109.i32[1];
      }

      v112 = vmovn_s64(v58);
      v113 = vuzp1_s16(v111, v112);
      if (v113.i8[4])
      {
        *v51 = 16843009 * v109.i32[2];
      }

      if (vuzp1_s16(v113, v112).i8[6])
      {
        v51[1] = 16843009 * v109.i32[3];
      }

      v37 = vaddq_f32(v37, v135);
      v40 = vaddq_f32(v40, v134);
      v43 = vaddq_f32(v43, v133);
      v52 += 4;
      v46 = vaddq_f32(v46, v132);
      v51 += 4;
      v48 = vaddq_f32(v48, v131);
      v50 -= 4;
    }

    while (v50);
  }

  return result;
}

uint64_t CA::OGL::SW::uneven_circle_sampler<false,false>(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a2)
  {
    v26 = *(result + 8);
    v27 = (*(result + 104) + 48 * v26);
    LODWORD(a6) = v27[6];
    LODWORD(a4) = v27[7];
    *v20.i32 = 1.0 / *&a6;
    LODWORD(a8) = v27[4];
    LODWORD(a7) = v27[5];
    *v21.i32 = 1.0 / *&a7;
    *v22.i32 = 1.0 / *&a8;
    LODWORD(a11) = v27[2];
    LODWORD(a9) = v27[3];
    *v23.i32 = 1.0 / *&a9;
    *v24.i32 = 1.0 / *&a11;
    v15.i32[0] = *v27;
    v13.i32[0] = v27[1];
    LODWORD(v27) = 2 * v26;
    v28 = *(result + 40) + 8 * v26;
    *v25.i32 = 1.0 / *v13.i32;
    v16.i32[0] = *(v28 + 32);
    v29 = *(v28 + 36);
    v30 = *(result + 24) + 4 * v27;
    v12.i32[0] = *(v30 + 32);
    v14.i32[0] = *(v30 + 36);
    *v18.i32 = fabsf(*v14.i32);
    *v19.i32 = fabsf(*v12.i32);
    v31 = (*(result + 16) + 4 * v27);
    v32 = v31 + 8;
    v31 += 9;
    v33 = *(result + 32) + 4 * v27;
    v34 = (v33 + 32);
    v35 = (v33 + 36);
    v36 = vld1q_dup_f32(v32);
    v37 = vmlaq_n_f32(v36, xmmword_183E213B0, *v12.i32);
    *v12.i32 = *v12.i32 * 4.0;
    v125 = vdupq_lane_s32(v12, 0);
    v38 = vld1q_dup_f32(v31);
    v39 = vmlaq_n_f32(v38, xmmword_183E213B0, *v14.i32);
    *v14.i32 = *v14.i32 * 4.0;
    v124 = vdupq_lane_s32(v14, 0);
    v40 = vld1q_dup_f32(v34);
    v41 = vmlaq_n_f32(v40, xmmword_183E213B0, *v16.i32);
    *v16.i32 = *v16.i32 * 4.0;
    v123 = vdupq_lane_s32(v16, 0);
    v42 = vld1q_dup_f32(v35);
    *v17.i32 = v29 * 4.0;
    v122 = vdupq_lane_s32(v17, 0);
    v43 = vdupq_n_s64(a2 - 1);
    v44 = vmlaq_n_f32(v42, xmmword_183E213B0, v29);
    v45 = vdupq_lane_s32(v18, 0);
    v120 = v45;
    v121 = vdupq_lane_s32(v19, 0);
    *v45.i32 = 1.0 / *v15.i32;
    v119 = 1.0 / *v15.i32;
    v126 = 1.0 / *v13.i32;
    v127 = 1.0 / *&a11;
    v117 = vdupq_lane_s32(v25, 0);
    v118 = vdupq_lane_s32(*v45.i8, 0);
    v115 = vdupq_lane_s32(v23, 0);
    v116 = vdupq_lane_s32(v24, 0);
    v113 = vdupq_lane_s32(v15, 0);
    v114 = vdupq_lane_s32(v22, 0);
    v111 = vdupq_lane_s32(*&a11, 0);
    v112 = vdupq_lane_s32(v13, 0);
    v109 = vdupq_lane_s32(*&a8, 0);
    v110 = vdupq_lane_s32(*&a9, 0);
    v46 = (a2 + 3) & 0x1FFFFFFFCLL;
    v107 = vdupq_lane_s32(*&a6, 0);
    v108 = vdupq_lane_s32(*&a7, 0);
    *v11.i32 = 1.0 / *&a4;
    v106 = vdupq_lane_s32(*&a4, 0);
    v47 = (a3 + 8);
    v48 = 1;
    v49 = vdupq_lane_s32(v21, 0);
    v50 = 1.0 / *&a6;
    v51 = vdupq_lane_s32(v20, 0);
    v52 = vdupq_lane_s32(v11, 0);
    v53.i64[0] = 0x3F0000003F000000;
    v53.i64[1] = 0x3F0000003F000000;
    v54.i64[0] = 0xFF000000FFLL;
    v54.i64[1] = 0xFF000000FFLL;
    do
    {
      v55 = vdupq_n_s64(v48 - 1);
      v56 = vorrq_s8(v55, xmmword_183E20FF0);
      v57 = vcgeq_u64(v43, vorrq_s8(v55, xmmword_183E21240));
      v58 = vcgeq_u64(v43, v56);
      v59 = vmovn_s32(vuzp1q_s32(v58, v57));
      v60 = vaddq_f32(vabsq_f32(v41), v121);
      v61 = vaddq_f32(vabsq_f32(v44), v120);
      __asm { FMOV            V9.4S, #-1.0 }

      v67 = vminnmq_f32(vmlaq_f32(_Q9, v118, v37), 0);
      __asm { FMOV            V24.4S, #1.0 }

      v69 = vsubq_f32(_Q24, v39);
      v70 = vminnmq_f32(vmlaq_f32(_Q9, v117, v69), 0);
      v71 = vsubq_f32(_Q24, v37);
      v72 = vminnmq_f32(vmlaq_f32(_Q9, v116, v71), 0);
      v73 = vminnmq_f32(vmlaq_f32(_Q9, v115, v69), 0);
      v74 = vmlaq_f32(_Q9, v114, v71);
      v75 = vminnmq_f32(v113, vmulq_n_f32(v60, v119));
      v76 = vminnmq_f32(v112, vmulq_n_f32(v61, v126));
      v77 = vbslq_s8(vcgtq_f32(v75, v76), v75, v76);
      v78 = vmlaq_f32(vmulq_f32(v67, v67), v70, v70);
      *v76.f32 = vmovn_s32(vcgtq_f32(vsubq_f32(_Q24, v77), v78));
      v79 = vdupq_n_s32(0x437F0000u);
      v80 = vandq_s8(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(v59, *v76.f32)), 0x1FuLL)), v54, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(vmlaq_f32(_Q24, v53, v77), vsqrtq_f32(v78)), v79), v77), v53)), 0), v54)), vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vbic_s8(v59, *v76.f32), vmovn_s32(vcgtq_f32(v78, vaddq_f32(v77, _Q24))))), 0x1FuLL)));
      v81 = vminnmq_f32(v111, vmulq_n_f32(v60, v127));
      v82 = vminnmq_f32(v110, vmulq_n_f32(v61, 1.0 / *&a9));
      v83 = vbslq_s8(vcgtq_f32(v81, v82), v81, v82);
      v84 = vmlaq_f32(vmulq_f32(v73, v73), v72, v72);
      v85 = vminnmq_f32(v109, vmulq_n_f32(v60, 1.0 / *&a8));
      v86 = vminnmq_f32(v108, vmulq_n_f32(v61, 1.0 / *&a7));
      v87 = vbslq_s8(vcgtq_f32(v85, v86), v85, v86);
      v88 = vcgtq_f32(v84, vaddq_f32(v83, _Q24));
      *v72.f32 = vmovn_s32(vcgtq_f32(vsubq_f32(_Q24, v83), v84));
      v89 = vdivq_f32(vmulq_f32(vsubq_f32(vmlaq_f32(_Q24, v53, v83), vsqrtq_f32(v84)), v79), v83);
      *v83.f32 = vand_s8(vbic_s8(v59, *v72.f32), vmovn_s32(v88));
      v90 = vminnmq_f32(v74, 0);
      v91 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(v59, *v72.f32)), 0x1FuLL)), v54, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(v89, v53)), 0), v54));
      v92 = vminnmq_f32(vmlaq_f32(_Q9, v49, v39), 0);
      v93 = vmlaq_f32(vmulq_f32(v92, v92), v90, v90);
      v94 = vminnmq_f32(v107, vmulq_n_f32(v60, v50));
      v95 = vminnmq_f32(v106, vmulq_n_f32(v61, *v11.i32));
      v96 = vbslq_s8(vcgtq_f32(v94, v95), v94, v95);
      *v89.f32 = vmovn_s32(vcgtq_f32(vsubq_f32(_Q24, v87), v93));
      *v95.f32 = vand_s8(vbic_s8(v59, *v89.f32), vmovn_s32(vcgtq_f32(v93, vaddq_f32(v87, _Q24))));
      v97 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(v59, *v89.f32)), 0x1FuLL)), v54, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_f32(vsubq_f32(vmlaq_f32(_Q24, v53, v87), vsqrtq_f32(v93)), v79), v87), v53)), 0), v54));
      v98 = vminnmq_f32(vmlaq_f32(_Q9, v51, v37), 0);
      v99 = vminnmq_f32(vmlaq_f32(_Q9, v52, v39), 0);
      v100 = vandq_s8(v97, vcgezq_s32(vshlq_n_s32(vmovl_u16(*v95.f32), 0x1FuLL)));
      v101 = vmlaq_f32(vmulq_f32(v99, v99), v98, v98);
      v102 = vcgtq_f32(vsubq_f32(_Q24, v96), v101);
      v103 = vcgtq_f32(v101, vaddq_f32(v96, _Q24));
      v104 = vmulq_f32(vsubq_f32(vmlaq_f32(_Q24, v53, v96), vsqrtq_f32(v101)), v79);
      *v101.f32 = vmovn_s32(v102);
      v105 = vminq_u32(vminq_u32(v80, vandq_s8(v91, vcgezq_s32(vshlq_n_s32(vmovl_u16(*v83.f32), 0x1FuLL)))), vminq_u32(v100, vandq_s8(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(v59, *v101.f32)), 0x1FuLL)), v54, vminq_s32(vmaxq_s32(vcvtq_s32_f32(vaddq_f32(vdivq_f32(v104, v96), v53)), 0), v54)), vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vbic_s8(v59, *v101.f32), vmovn_s32(v103))), 0x1FuLL)))));
      if (v59.i8[0])
      {
        *(v47 - 2) = 16843009 * v105.i32[0];
      }

      if (vuzp1_s16(vmovn_s64(*&v58), *&v49).i8[2])
      {
        *(v47 - 1) = 16843009 * v105.i32[1];
      }

      if (vuzp1_s16(*&v49, vmovn_s64(*&v57)).i32[1])
      {
        *v47 = 16843009 * v105.i32[2];
        v47[1] = 16843009 * v105.i32[3];
      }

      v37 = vaddq_f32(v37, v125);
      v39 = vaddq_f32(v39, v124);
      v41 = vaddq_f32(v41, v123);
      v48 += 4;
      v47 += 4;
      v44 = vaddq_f32(v44, v122);
      v46 -= 4;
    }

    while (v46);
  }

  return result;
}

float CA::OGL::SW::circle_sampler<true,true>(uint64_t a1, int a2, int *a3, float result)
{
  if (a2)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    result = *(v4 + 12);
    v6 = 2 * *(a1 + 8);
    v7 = *(v4 + 4 * v6 + 32);
    v8 = *(v5 + 12);
    v10.i64[0] = *(v5 + 4 * v6 + 32);
    v9 = *(a1 + 48);
    v10.i64[1] = *(*(a1 + 32) + 4 * v6 + 32);
    v11.i64[0] = v7;
    v11.i64[1] = *(*(a1 + 40) + 4 * v6 + 32);
    do
    {
      v12 = 1.0 / v8;
      v13 = (1.0 / v8) * v10.f32[0];
      v14 = vmuls_lane_f32(1.0 / v8, *v10.f32, 1);
      if (v9 == 5)
      {
        if (*(a1 + 92) < v13)
        {
          v13 = *(a1 + 92);
        }

        if (*(a1 + 84) > v13)
        {
          v13 = *(a1 + 84);
        }

        if (*(a1 + 96) < v14)
        {
          v14 = *(a1 + 96);
        }

        if (*(a1 + 88) > v14)
        {
          v14 = *(a1 + 88);
        }
      }

      v15 = fabsf(vmuls_lane_f32(v12, v10, 2)) + fabsf(v12 * *&v7);
      v16 = fabsf(v12 * *(&v7 + 1)) + fabsf(vmuls_lane_f32(v12, v10, 3));
      if (v15 > v16)
      {
        v16 = v15;
      }

      v17 = (v14 * v14) + (v13 * v13);
      if (v17 >= (1.0 - v16))
      {
        v19 = fabsf(v14);
        v20 = fabsf(v13);
        v21 = sqrtf(v17);
        v22 = fminf(v20, v19) / fmaxf(v20, v19);
        if (v22 > 1.0)
        {
          v22 = 1.0;
        }

        v23 = ((((1.0 / (((v22 * v22) * ((((((((v22 * 0.92605) + -3.156) * v22) + 3.6412) * v22) + -1.268) * v22) + -0.26853)) + 1.0)) - (v21 - (v16 * 0.5))) * 255.0) / v16) + 0.5;
        v24 = v23 & ~(v23 >> 31);
        if (v24 >= 255)
        {
          v24 = 255;
        }

        v18 = 16843009 * v24;
      }

      else
      {
        v18 = -1;
      }

      v8 = v8 + result;
      v10 = vaddq_f32(v10, v11);
      *a3++ = v18;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::circle_sampler<false,true>(uint64_t result, int a2, int *a3)
{
  if (a2)
  {
    v3 = 2 * *(result + 8);
    v4 = *(*(result + 40) + 4 * v3 + 32);
    v9.i64[0] = *(*(result + 24) + 4 * v3 + 32);
    v7.i64[0] = *(*(result + 16) + 4 * v3 + 32);
    v5 = fabsf(v9.f32[0]);
    v6 = fabsf(v9.f32[1]);
    v7.i64[1] = *(*(result + 32) + 4 * v3 + 32);
    v8 = *(result + 48);
    v9.i64[1] = v4;
    do
    {
      v10 = v7.f32[1];
      if (v8 == 5)
      {
        v11 = *(result + 92);
        if (v11 >= v7.f32[0])
        {
          v11 = v7.f32[0];
        }

        if (*(result + 84) > v11)
        {
          v11 = *(result + 84);
        }

        if (*(result + 96) < v7.f32[1])
        {
          v10 = *(result + 96);
        }

        if (*(result + 88) > v10)
        {
          v10 = *(result + 88);
        }
      }

      else
      {
        v11 = v7.f32[0];
      }

      v12 = fabsf(v7.f32[2]) + v5;
      v13 = fabsf(v7.f32[3]) + v6;
      if (v12 <= v13)
      {
        v12 = v13;
      }

      v14 = (v11 * v11) + (v10 * v10);
      if (v14 >= (1.0 - v12))
      {
        v16 = fabsf(v10);
        v17 = fabsf(v11);
        v18 = sqrtf(v14);
        v19 = fminf(v17, v16) / fmaxf(v17, v16);
        if (v19 > 1.0)
        {
          v19 = 1.0;
        }

        v20 = ((((1.0 / (((v19 * v19) * ((((((((v19 * 0.92605) + -3.156) * v19) + 3.6412) * v19) + -1.268) * v19) + -0.26853)) + 1.0)) - (v18 - (v12 * 0.5))) * 255.0) / v12) + 0.5;
        v21 = v20 & ~(v20 >> 31);
        if (v21 >= 255)
        {
          v21 = 255;
        }

        v15 = 16843009 * v21;
      }

      else
      {
        v15 = -1;
      }

      v7 = vaddq_f32(v7, v9);
      *a3++ = v15;
      --a2;
    }

    while (a2);
  }

  return result;
}