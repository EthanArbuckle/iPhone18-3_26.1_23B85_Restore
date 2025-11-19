float32x2_t CA::OGL::anonymous namespace::desired_src_edge_replication(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5, uint64_t a6, _BYTE *a7, BOOL *a8, float32x2_t result)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v16 = a1[78];
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      if (*(*(v16 + 24) + 13))
      {
        goto LABEL_17;
      }

      v18 = 0;
      do
      {
        if (v17 - 1 == v18)
        {
          goto LABEL_8;
        }

        v19 = *(v16 + 8 * v18++ + 32);
      }

      while ((*(v19 + 13) & 1) == 0);
      if (v18 < v17)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_8:
  if (a1[10] - a1[9] == 192)
  {
    v20 = *(a2 + 136);
    if (v20)
    {
      v16 = *(v20 + 96);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          if (*(*(v16 + 24) + 13))
          {
            goto LABEL_17;
          }

          v21 = 0;
          do
          {
            if (v17 - 1 == v21)
            {
              return result;
            }

            v22 = *(v16 + 8 * v21++ + 32);
          }

          while ((*(v22 + 13) & 1) == 0);
          if (v21 < v17)
          {
LABEL_17:
            v23 = 0;
            v24 = 0;
            v25 = 8 * v17;
            for (i = (v16 + 24); ; ++i)
            {
              if ((*(*i + 12) & 0x40100) == 0x100)
              {
                v27 = *(*i + 24);
                if (v23)
                {
                  if ((v27 - 283) >= 2 && v27 != 97 && v27 != 202)
                  {
                    goto LABEL_31;
                  }

LABEL_30:
                  v24 = *i;
                  goto LABEL_31;
                }

                if (v27 <= 282)
                {
                  if (v27 != 97 && v27 != 202)
                  {
                    if (v27 != 280)
                    {
                      goto LABEL_31;
                    }

LABEL_34:
                    v23 = *i;
                    goto LABEL_31;
                  }

                  goto LABEL_30;
                }

                if ((v27 - 283) < 2)
                {
                  goto LABEL_30;
                }

                if (v27 == 737)
                {
                  goto LABEL_34;
                }
              }

LABEL_31:
              v25 -= 8;
              if (!v25)
              {
                if (v23)
                {
                  v28 = *(v23 + 48);
                  if (v28)
                  {
                    if ((*(*v28 + 72))(*(v23 + 48)))
                    {
                      *a7 = (*(*v28 + 144))(v28, v23, a2, a3, a4, a5, a6);
                    }
                  }
                }

                if (v24)
                {
                  v29 = *(v24 + 48);
                  if (v29)
                  {
                    if ((*(*v29 + 72))(*(v24 + 48)))
                    {
                      v32[0] = 0;
                      (*(*v29 + 144))(v29, v24, a2, a3, 0, v32, 0);
                      v30 = v32[0];
                      v31 = *v32 != 0.0;
                      if (*(v32 + 1) != 0.0)
                      {
                        v31 = 1;
                      }

                      *a8 = v31;
                      result = vadd_f32(*a5, v30);
                      *a5 = result;
                    }
                  }
                }

                return result;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CA::OGL::GlassBackgroundFilter::get_edge_info(uint64_t a1, CA::OGL::GlassBackgroundFilter **a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x2_t *a6)
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

  v15 = CA::OGL::GlassBackgroundFilter::max_range(a2[5], a2);
  v16.f64[0] = v19;
  v16.f64[1] = v18;
  *a6 = vmul_n_f32(vcvt_f32_f64(v16), v15);
  return 1;
}

uint64_t CA::OGL::anonymous namespace::filters_are_valid(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (*(*(result + 24) + 13))
      {
        return 1;
      }

      else
      {
        v2 = 0;
        while (v1 - 1 != v2)
        {
          v3 = *(result + 32 + 8 * v2++);
          if (*(v3 + 13))
          {
            return v2 < v1;
          }
        }

        v2 = *(result + 16);
        return v2 < v1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CA::Render::BackdropGroup::has_consistent_background_color(CA::Render::BackdropGroup *this, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - this) >> 6);
  if (v2 < 2)
  {
    return 1;
  }

  v4 = (this + 368);
  v5 = v2 - 1;
  while (*(v4 - 4) == *(this + 40) && *(v4 - 3) == *(this + 41) && *(v4 - 2) == *(this + 42) && *(v4 - 1) == *(this + 43) && *v4 == *(this + 44))
  {
    v4 += 48;
    if (!--v5)
    {
      return 1;
    }
  }

  return 0;
}

void CA::OGL::MetalContext::update_surface(uint64_t a1, unint64_t a2, CA::Render::Surface *a3, int a4, uint64_t a5)
{
  v149 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  if (!v6)
  {
    return;
  }

  v8 = a3;
  v9 = a2;
  if (*(a2 + 8))
  {
    v10 = (*(*v6 + 168))(v6);
    v11 = (*(**(v9 + 8) + 104))(*(v9 + 8));
    v12 = (*(**(v9 + 8) + 168))(*(v9 + 8));
    if (!v10)
    {
      return;
    }

    goto LABEL_8;
  }

  v12 = (*(*a3 + 168))(a3);
  v13 = *(v9 + 40);
  if (!v13)
  {
    v13 = *(v9 + 32);
  }

  v10 = (*(*v13 + 168))(v13);
  v11 = -1;
  if (v10)
  {
LABEL_8:
    v127 = v11;
    v120 = a5;
    v136 = 0;
    buffer = v10;
    PixelFormat = IOSurfaceGetPixelFormat(v10);
    v16 = PixelFormat;
    v126 = v9;
    v122 = v8;
    if (byte_1ED4E98BC == 1 && CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0) == PixelFormat)
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v106 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        ID = IOSurfaceGetID(buffer);
        Width = IOSurfaceGetWidth(buffer);
        Height = IOSurfaceGetHeight(buffer);
        v110 = v16 >> 24;
        if ((v16 & 0x80000000) != 0)
        {
          v111 = __maskrune(v110, 0x40000uLL);
        }

        else
        {
          v111 = *(MEMORY[0x1E69E9830] + 4 * v110 + 60) & 0x40000;
        }

        if (v111)
        {
          v112 = v16 >> 24;
        }

        else
        {
          v112 = 32;
        }

        if (BYTE2(v16) <= 0x7Fu)
        {
          v113 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v16) + 60) & 0x40000;
        }

        else
        {
          v113 = __maskrune(BYTE2(v16), 0x40000uLL);
        }

        if (v113)
        {
          v114 = SBYTE2(v16);
        }

        else
        {
          v114 = 32;
        }

        if (BYTE1(v16) <= 0x7Fu)
        {
          v115 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v16) + 60) & 0x40000;
        }

        else
        {
          v115 = __maskrune(BYTE1(v16), 0x40000uLL);
        }

        if (v115)
        {
          v116 = SBYTE1(v16);
        }

        else
        {
          v116 = 32;
        }

        if (v16 <= 0x7Fu)
        {
          v117 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
        }

        else
        {
          v117 = __maskrune(v16, 0x40000uLL);
        }

        if (v117)
        {
          v118 = v16;
        }

        else
        {
          v118 = 32;
        }

        *buf = 67110912;
        *&buf[4] = ID;
        *v138 = 2048;
        *&v138[2] = Width;
        *&v138[10] = 2048;
        *&v138[12] = Height;
        v139 = 1024;
        v140 = v112;
        v141 = 1024;
        v142 = v114;
        v143 = 1024;
        v144 = v116;
        v145 = 1024;
        v146 = v118;
        v147 = 2048;
        AllocSize = IOSurfaceGetAllocSize(buffer);
        _os_log_impl(&dword_183AA6000, v106, OS_LOG_TYPE_DEFAULT, "update_surface for IOSurface id=0x%x w=%zu h=%zu pixel_format=%c%c%c%c alloc_size=%zu bytes", buf, 0x3Eu);
        v9 = v126;
        v8 = v122;
      }
    }

    v17 = 0;
    v121 = 0;
    v119 = 0;
    LOBYTE(v125) = 0;
    is_420 = 0;
    v131 = 0;
    v18 = (v9 + 88);
    LOBYTE(v129) = 0;
    v130 = 1;
    while (1)
    {
      v20 = *(v8 + 4);
      v19 = *(v8 + 5);
      v21 = CA::Render::Surface::chroma_location(v8, v15) == 2 ? -1 : -2;
      v22 = v127 == -1 ? MTLPixelFormatInvalid : CA::OGL::MetalContext::image_parameters(a1, v127, v17, &v136);
      v23 = CA::Render::fourcc_compressed_of_type(v16, 0, 0);
      v16 = v23;
      if (v17)
      {
        break;
      }

      if (v20 < 2)
      {
        LOBYTE(v125) = 0;
      }

      else
      {
        v125 = CA::Render::fourcc_is_444(v23) ^ 1;
      }

      if (v19 < 2)
      {
        is_420 = 0;
        if (v22 == MTLPixelFormatInvalid)
        {
          goto LABEL_18;
        }
      }

      else
      {
        is_420 = CA::Render::fourcc_is_420(v16);
        if (v22 == MTLPixelFormatInvalid)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (v16 > 1936077361)
      {
        if (v16 <= 1983013175)
        {
          if (v16 <= 1952854575)
          {
            if (v16 <= 1937126451)
            {
              if (v16 > 1937125935)
              {
                if (v16 == 1937125936)
                {
                  goto LABEL_234;
                }

                v38 = 1937125938;
LABEL_159:
                if (v16 == v38)
                {
                  goto LABEL_234;
                }

                goto LABEL_208;
              }

              if (v16 == 1936077362)
              {
                goto LABEL_234;
              }

              v27 = 13364;
LABEL_141:
              v38 = v27 | 0x73660000;
              goto LABEL_159;
            }

            if (v16 <= 1949458802)
            {
              if (v16 == 1937126452)
              {
                goto LABEL_234;
              }

              v40 = 1949327731;
              goto LABEL_194;
            }

            if (v16 != 1949458803)
            {
              v40 = 1949589875;
LABEL_194:
              if (v16 != v40)
              {
                goto LABEL_208;
              }
            }

            if (IOSurfaceGetCompressionTypeOfPlane() != 3 || CA::Render::ycbcr_fourcc_depth(v16) != 12)
            {
              goto LABEL_234;
            }

            v136 = 45;
            LOBYTE(v121) = CA::Render::Surface::ycbcr_matrix(v8, v53);
            if (v17 > 1)
            {
              if ((v131 & 1) == 0)
              {
                v130 = 3;
                v131 = 0;
                v22 = MTLPixelFormatR16Unorm;
                goto LABEL_287;
              }

              v22 = MTLPixelFormatR16Unorm;
LABEL_336:
              v131 = 1;
LABEL_353:
              v130 = 3;
              goto LABEL_287;
            }

            switch(v16)
            {
              case 0x74346173:
                v130 = 3;
                if ((v131 & 1) == 0)
                {
                  v131 = 0;
                  v22 = MTLPixelFormatRGBA8Unorm|0x200;
                  goto LABEL_267;
                }

                v22 = MTLPixelFormatRGBA8Unorm|0x200;
                goto LABEL_235;
              case 0x74326173:
                v20 &= v21;
                v130 = 3;
                if ((v131 & 1) == 0)
                {
                  v131 = 0;
                  v22 = 581;
                  goto LABEL_267;
                }

                v22 = 581;
                goto LABEL_235;
              case 0x74306173:
                v20 &= v21;
                v19 &= v21;
                v130 = 3;
                if ((v131 & 1) == 0)
                {
                  v131 = 0;
                  v22 = 580;
                  goto LABEL_267;
                }

                v22 = 580;
                goto LABEL_235;
            }

            v55 = 3;
            goto LABEL_216;
          }

          if (v16 <= 1953903153)
          {
            if (v16 > 1952855091)
            {
              if (v16 == 1952855092)
              {
                goto LABEL_168;
              }

              v41 = 12848;
LABEL_166:
              v35 = v41 | 0x74760000;
            }

            else
            {
              if (v16 == 1952854576)
              {
                goto LABEL_168;
              }

              v35 = 1952854578;
            }

            if (v16 == v35)
            {
LABEL_168:
              if ((~*(a1 + 3316) & 0x90) == 0 && CA::Render::Surface::ycbcr_matrix(v8, v24) <= 6 && CA::Render::ycbcr_fourcc_depth(v16) == 12)
              {
                goto LABEL_226;
              }

              goto LABEL_234;
            }

            goto LABEL_208;
          }

          if (v16 <= 1982882103)
          {
            if (v16 == 1953903154)
            {
              goto LABEL_168;
            }

            v41 = 13364;
            goto LABEL_166;
          }

          if (v16 == 1982882104)
          {
LABEL_175:
            if ((v17 != 0) | v129 & 1)
            {
              if (((v17 != 0) & BYTE4(v121)) != 1)
              {
                HIDWORD(v121) = 0;
                goto LABEL_235;
              }
            }

            else if ((*(a1 + 3316) & 1) == 0 || (CA::Render::ycbcr_fourcc_is_triplanar(v16) & 1) != 0 || (*(v9 + 52) & 0xF0000) == 0x20000 || CA::Render::Surface::ycbcr_matrix(v8, v51) > 4 || (v16 & 0xFFFFFFEF) != 0x34323066 && (*(a1 + 3316) & 2) == 0)
            {
              v52 = v21;
              LOBYTE(v129) = 0;
              HIDWORD(v121) = 0;
              goto LABEL_248;
            }

            if (v125)
            {
              v49 = v21;
            }

            else
            {
              v49 = -1;
            }

            v20 &= v49;
            if (is_420)
            {
              v50 = v21;
            }

            else
            {
              v50 = -1;
            }

            v19 &= v50;
            HIDWORD(v121) = 1;
            goto LABEL_208;
          }

          if (v16 == 1983000886)
          {
            v136 = 44;
            if (v17)
            {
              v22 = MTLPixelFormatRGBA16Unorm;
            }

            else
            {
              v22 = MTLPixelFormatRG16Unorm;
            }

            v20 >>= v17 != 0;
            LOBYTE(v121) = CA::Render::Surface::ycbcr_matrix(v8, v24);
            v119 = CA::Render::Surface::chroma_location(v8, v54);
            LOBYTE(v125) = 1;
            v55 = 2;
LABEL_216:
            v130 = v55;
          }
        }

        else
        {
          if (v16 <= 2016687155)
          {
            if (v16 > 2016567607)
            {
              if (v16 > 2016686639)
              {
                if (v16 == 2016686640)
                {
                  goto LABEL_221;
                }

                v45 = 2016686642;
LABEL_220:
                if (v16 == v45)
                {
LABEL_221:
                  v56 = *(a1 + 3316);
                  if ((v56 & 2) != 0)
                  {
                    if (CA::Render::Surface::ycbcr_matrix(v8, v24) >= 5)
                    {
                      v56 = *(a1 + 3316);
                      goto LABEL_224;
                    }

LABEL_226:
                    if ((CA::Render::ycbcr_fourcc_is_triplanar(v16) & 1) == 0)
                    {
                      v57 = (v125 & 1) != 0 ? v21 : -1;
                      v20 &= v57;
                      v58 = (is_420 & 1) != 0 ? v21 : -1;
                      v19 &= v58;
                      HIDWORD(v121) = 1;
                      if ((v131 & 1) == 0)
                      {
                        v131 = 0;
                        LOBYTE(v129) = 1;
                        goto LABEL_267;
                      }
                    }
                  }

                  else
                  {
LABEL_224:
                    if ((v56 & 0x10) != 0 && CA::Render::Surface::ycbcr_matrix(v8, v24) <= 6)
                    {
                      goto LABEL_226;
                    }
                  }

LABEL_234:
                  LOBYTE(v129) = 1;
                  goto LABEL_235;
                }

                goto LABEL_208;
              }

              if (v16 == 2016567608)
              {
                goto LABEL_127;
              }

              v37 = 2016567667;
              goto LABEL_126;
            }

            if (v16 > 2016436535)
            {
              if (v16 == 2016436536)
              {
                goto LABEL_127;
              }

              v37 = 2016436595;
LABEL_126:
              if (v16 == v37)
              {
LABEL_127:
                if (v17 != 2 || (v129 = 0, v16 != 2016436536) && v16 != 2016567608 && v16 != 2016698680)
                {
                  v129 = 1;
                }

                if (IOSurfaceGetCompressionTypeOfPlane() != 3)
                {
                  goto LABEL_235;
                }

                v136 = 45;
                LOBYTE(v121) = CA::Render::Surface::ycbcr_matrix(v8, v44);
                if (v17 > 1)
                {
                  v87 = 10;
                  if (v129)
                  {
                    v87 = 20;
                  }

                  if (v17 == 2)
                  {
                    v22 = v87;
                  }

                  if (v131)
                  {
                    goto LABEL_336;
                  }

                  v131 = 0;
                  goto LABEL_353;
                }

                v130 = 3;
                if (v16 > 2016567666)
                {
                  if (v16 == 2016567667)
                  {
                    goto LABEL_359;
                  }

                  if (v16 == 2016698680 || v16 == 2016698739)
                  {
                    v130 = 3;
                    if ((v131 & 1) == 0)
                    {
                      v131 = 0;
                      v22 = MTLPixelFormatX24_Stencil8|MTLPixelFormatGBGR422|0x8;
                      goto LABEL_267;
                    }

                    v22 = MTLPixelFormatX24_Stencil8|MTLPixelFormatGBGR422|0x8;
                    goto LABEL_235;
                  }
                }

                else
                {
                  if (v16 == 2016436536 || v16 == 2016436595)
                  {
                    v20 &= v21;
                    v19 &= v21;
                    v130 = 3;
                    if ((v131 & 1) == 0)
                    {
                      v131 = 0;
                      v22 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422|0x8;
                      goto LABEL_267;
                    }

                    v22 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422|0x8;
                    goto LABEL_235;
                  }

                  if (v16 == 2016567608)
                  {
LABEL_359:
                    v20 &= v21;
                    v130 = 3;
                    if ((v131 & 1) == 0)
                    {
                      v131 = 0;
                      v22 = MTLPixelFormatX32_Stencil8|MTLPixelFormatGBGR422|0x8;
                      goto LABEL_267;
                    }

                    v22 = MTLPixelFormatX32_Stencil8|MTLPixelFormatGBGR422|0x8;
                    goto LABEL_235;
                  }
                }

                goto LABEL_208;
              }

              goto LABEL_208;
            }

            if (v16 == 1983013176)
            {
              goto LABEL_175;
            }

            v33 = 1983144248;
            goto LABEL_174;
          }

          if (v16 <= 2019963441)
          {
            if (v16 > 2016698738)
            {
              if (v16 == 2016698739)
              {
                goto LABEL_127;
              }

              v43 = 12848;
              goto LABEL_219;
            }

            if (v16 == 2016687156)
            {
              goto LABEL_221;
            }

            v37 = 2016698680;
            goto LABEL_126;
          }

          if (v16 <= 2033463605)
          {
            if (v16 == 2019963442)
            {
              goto LABEL_221;
            }

            v43 = 13364;
LABEL_219:
            v45 = v43 | 0x78660000;
            goto LABEL_220;
          }

          if (v16 == 2033463606)
          {
            v136 = 43;
            LOBYTE(v121) = CA::Render::Surface::ycbcr_matrix(v8, v24);
            goto LABEL_208;
          }

          if (v16 == 2037741158 || v16 == 2037741171)
          {
LABEL_147:
            if ((*(a1 + 3316) & 1) == 0 || ((v46 = CA::Render::Surface::ycbcr_matrix(v8, v24), (*(a1 + 3316) & 0x10) != 0) ? (v47 = 6) : (v47 = 4), v47 < v46 || !(*(a1 + 3316) & 1 | (v16 != 846624121))))
            {
              v136 = 36;
              LOBYTE(v121) = CA::Render::Surface::ycbcr_matrix(v8, v24);
              if (v16 == 846624121)
              {
                v22 = MTLPixelFormatBGRG422;
              }

              else
              {
                v22 = MTLPixelFormatGBGR422;
              }

              v20 &= v21;
            }
          }
        }
      }

      else if (v16 <= 1882468911)
      {
        if (v16 <= 875836533)
        {
          if (v16 > 875704437)
          {
            if (v16 <= 875704949)
            {
              if (v16 == 875704438)
              {
                goto LABEL_175;
              }

              v39 = 12902;
              goto LABEL_146;
            }

            if (v16 == 875704950)
            {
              goto LABEL_175;
            }

            v33 = 875836518;
          }

          else
          {
            if (v16 <= 846624120)
            {
              if (v16 != 843264104)
              {
                v26 = 843264310;
LABEL_205:
                if (v16 != v26)
                {
                  goto LABEL_208;
                }
              }

              goto LABEL_206;
            }

            if (v16 == 846624121)
            {
              goto LABEL_147;
            }

            v39 = 12390;
LABEL_146:
            v33 = v39 | 0x34320000;
          }

LABEL_174:
          if (v16 == v33)
          {
            goto LABEL_175;
          }

          goto LABEL_208;
        }

        if (v16 > 1278226741)
        {
          if (v16 <= 1279340599)
          {
            if (v16 != 1278226742)
            {
              if (v16 != 1278555445)
              {
                goto LABEL_208;
              }

              v34 = 1;
              goto LABEL_104;
            }

LABEL_163:
            v48 = 34;
LABEL_207:
            v136 = v48;
            goto LABEL_208;
          }

          if (v16 != 1279340600)
          {
            v26 = 1279342648;
            goto LABEL_205;
          }

LABEL_206:
          v48 = 35;
          goto LABEL_207;
        }

        if (v16 > 1278226487)
        {
          if (v16 == 1278226488 || v16 == 1278226536)
          {
            goto LABEL_163;
          }
        }

        else
        {
          if (v16 == 875836534)
          {
            goto LABEL_175;
          }

          if (v16 == 1093677112 && v127 != 8)
          {
            v34 = 25;
LABEL_104:
            v136 = v34;
          }
        }
      }

      else
      {
        if (v16 <= 1886680623)
        {
          if (v16 > 1885745713)
          {
            if ((v16 - 1886676528) <= 4 && ((1 << (v16 - 48)) & 0x15) != 0)
            {
              goto LABEL_56;
            }

            if (v16 != 1885745714)
            {
              v25 = 13364;
              goto LABEL_110;
            }

LABEL_112:
            v42 = *(a1 + 3316);
            if ((v42 & 0x10) != 0)
            {
              if (CA::Render::Surface::ycbcr_matrix(v8, v24) > 5)
              {
                goto LABEL_117;
              }

              v42 = *(a1 + 3316);
            }

            if ((v42 & 0x10) == 0 && CA::Render::Surface::ycbcr_matrix(v8, v24) >= 5)
            {
LABEL_117:
              v136 = 36;
              LOBYTE(v121) = CA::Render::Surface::ycbcr_matrix(v8, v24);
              if (v16 > 1885745711)
              {
                switch(v16)
                {
                  case 0x70663434:
                    goto LABEL_354;
                  case 0x70663232:
LABEL_356:
                    v20 &= v21;
                    if ((v131 & 1) == 0)
                    {
                      v131 = 0;
                      v22 = MTLPixelFormatRG8Sint|MTLPixelFormatA8Unorm|0x200;
                      goto LABEL_267;
                    }

                    v22 = MTLPixelFormatRG8Sint|MTLPixelFormatA8Unorm|0x200;
                    goto LABEL_235;
                  case 0x70663230:
LABEL_340:
                    v20 &= v21;
                    v19 &= v21;
                    if ((v131 & 1) == 0)
                    {
                      v131 = 0;
                      v22 = MTLPixelFormatRG8Sint|0x200;
                      goto LABEL_267;
                    }

                    v22 = MTLPixelFormatRG8Sint|0x200;
                    goto LABEL_235;
                }
              }

              else
              {
                switch(v16)
                {
                  case 0x70343230:
                    goto LABEL_340;
                  case 0x70343232:
                    goto LABEL_356;
                  case 0x70343434:
LABEL_354:
                    if ((v131 & 1) == 0)
                    {
                      v131 = 0;
                      v22 = 548;
                      goto LABEL_267;
                    }

                    v22 = 548;
                    goto LABEL_235;
                }
              }

              goto LABEL_208;
            }

            goto LABEL_208;
          }

          if (v16 > 1882469427)
          {
            if (v16 == 1882469428)
            {
              goto LABEL_112;
            }

            v25 = 12848;
LABEL_110:
            v36 = v25 | 0x70660000;
          }

          else
          {
            if (v16 == 1882468912)
            {
              goto LABEL_112;
            }

            v36 = 1882468914;
          }

          if (v16 != v36)
          {
            goto LABEL_208;
          }

          goto LABEL_112;
        }

        if (v16 > 1932550514)
        {
          if (v16 <= 1932812658)
          {
            if (v16 == 1932550515)
            {
              goto LABEL_234;
            }

            v38 = 1932681587;
            goto LABEL_159;
          }

          if (v16 == 1932812659)
          {
            goto LABEL_234;
          }

          v27 = 12848;
          goto LABEL_141;
        }

        if ((v16 - 1886680624) <= 4 && ((1 << (v16 - 48)) & 0x15) != 0)
        {
LABEL_56:
          CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
          if ((~*(a1 + 3316) & 0x110) != 0 || (v30 = CompressionTypeOfPlane, CA::Render::Surface::ycbcr_matrix(v122, v29) > 6) || v30 != 3)
          {
            v22 = MTLPixelFormatInvalid;
          }

          else
          {
            if (v125)
            {
              v31 = v21;
            }

            else
            {
              v31 = -1;
            }

            v20 &= v31;
            if (is_420)
            {
              v32 = v21;
            }

            else
            {
              v32 = -1;
            }

            v19 &= v32;
            HIDWORD(v121) = 1;
          }

          v8 = v122;
          goto LABEL_208;
        }

        if (v16 == 1919365992)
        {
          v136 = 40;
          v130 = 3;
          if ((v131 & 1) == 0)
          {
            v131 = 0;
            v22 = MTLPixelFormatR16Float;
            goto LABEL_267;
          }

          v22 = MTLPixelFormatR16Float;
          goto LABEL_235;
        }
      }

LABEL_208:
      if ((v131 & 1) == 0)
      {
        v131 = 0;
        goto LABEL_267;
      }

LABEL_235:
      if (!v17)
      {
        v52 = v21;
LABEL_248:
        is_triplanar = CA::Render::ycbcr_fourcc_is_triplanar(v16);
        if (is_triplanar)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        v130 = v64;
        if (is_triplanar)
        {
          v65 = 41;
        }

        else
        {
          v65 = 26;
        }

        v136 = v65;
        LOBYTE(v121) = CA::Render::Surface::ycbcr_matrix(v8, v63);
        v67 = CA::Render::Surface::chroma_location(v8, v66);
        if (v125)
        {
          v68 = v52;
        }

        else
        {
          v68 = -1;
        }

        v20 &= v68;
        if (is_420)
        {
          v69 = v52;
        }

        else
        {
          v69 = -1;
        }

        v19 &= v69;
        if ((v125 | is_420))
        {
          v70 = v67;
        }

        else
        {
          v70 = 2;
        }

        v119 = v70;
        if (v129)
        {
          v22 = MTLPixelFormatR16Unorm;
        }

        else
        {
          v22 = MTLPixelFormatR8Unorm;
        }

        v131 = 1;
LABEL_267:
        if (!v17 && ((HIDWORD(v121) ^ ((*(v9 + 123) & 0x20) >> 5)) & 1) != 0)
        {
          CA::OGL::MetalContext::delete_image(a1, v9);
        }

        goto LABEL_287;
      }

      if (v17 == 1)
      {
        WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, 1uLL);
        HeightOfPlane = IOSurfaceGetHeightOfPlane(buffer, 1uLL);
        if ((*(a1 + 3317) & 0x80) != 0)
        {
          v61 = v20 >> 1;
          if (v20 >> 1 >= WidthOfPlane)
          {
            v61 = WidthOfPlane;
          }

          if (v125)
          {
            WidthOfPlane = v61;
          }

          else
          {
            WidthOfPlane = v20;
          }

          if (is_420)
          {
            if (v19 >> 1 < HeightOfPlane)
            {
              HeightOfPlane = v19 >> 1;
            }
          }

          else
          {
            HeightOfPlane = v19;
          }
        }

        if (v129)
        {
          v22 = MTLPixelFormatRG16Unorm;
        }

        else
        {
          v22 = MTLPixelFormatRG8Unorm;
        }

        v131 = 1;
        v19 = HeightOfPlane;
        v20 = WidthOfPlane;
        v8 = v122;
      }

      else
      {
        if (v136 == 41)
        {
          if (v129)
          {
            v22 = MTLPixelFormatR16Unorm;
          }

          else
          {
            v22 = MTLPixelFormatR8Unorm;
          }

          if (v20 <= 1)
          {
            v71 = -1;
          }

          else
          {
            v71 = v21;
          }

          v20 &= v71;
          if (v19 <= 1)
          {
            v72 = -1;
          }

          else
          {
            v72 = v21;
          }

          v19 &= v72;
        }

        v131 = 1;
      }

LABEL_287:
      if (v22 == MTLPixelFormatInvalid || !v20 || !v19)
      {
LABEL_380:
        if (v130 != *(v9 + 122))
        {
          if (x_log_get_ogl_metal(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
          }

          v88 = x_log_get_ogl_metal(void)::log;
          if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
          {
            v96 = v16 >> 24;
            if ((v16 & 0x80000000) != 0)
            {
              v97 = __maskrune(v96, 0x40000uLL);
            }

            else
            {
              v97 = *(MEMORY[0x1E69E9830] + 4 * v96 + 60) & 0x40000;
            }

            if (v97)
            {
              v99 = v16 >> 24;
            }

            else
            {
              v99 = 32;
            }

            if (BYTE2(v16) <= 0x7Fu)
            {
              v100 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v16) + 60) & 0x40000;
            }

            else
            {
              v100 = __maskrune(BYTE2(v16), 0x40000uLL);
            }

            if (v100)
            {
              v101 = SBYTE2(v16);
            }

            else
            {
              v101 = 32;
            }

            if (BYTE1(v16) <= 0x7Fu)
            {
              v102 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v16) + 60) & 0x40000;
            }

            else
            {
              v102 = __maskrune(BYTE1(v16), 0x40000uLL);
            }

            if (v102)
            {
              v103 = SBYTE1(v16);
            }

            else
            {
              v103 = 32;
            }

            if (v16 <= 0x7Fu)
            {
              v104 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
            }

            else
            {
              v104 = __maskrune(v16, 0x40000uLL);
            }

            v9 = v126;
            *buf = 67109888;
            v105 = v16;
            *&buf[4] = v99;
            *v138 = 1024;
            if (!v104)
            {
              v105 = 32;
            }

            *&v138[2] = v101;
            *&v138[6] = 1024;
            *&v138[8] = v103;
            *&v138[12] = 1024;
            *&v138[14] = v105;
            _os_log_error_impl(&dword_183AA6000, v88, OS_LOG_TYPE_ERROR, "unsupported surface format: %c%c%c%c\n", buf, 0x1Au);
          }
        }

        v89 = *(v9 + 52) & 0xFFFFFFFFC0FFFFFFLL | ((v136 & 0x3F) << 24);
        *(v9 + 52) = v89;
        v90 = *(v9 + 123);
        v91 = v89 & 0xFF18F0FFFFFFFFFFLL | ((((*(v8 + 3) & 0x800000) >> 23) & 1) << 53) | ((v121 & 0xF) << 40) | ((v119 & 7) << 48);
        v92 = 0x40000000000000;
        if ((v125 & 1) == 0)
        {
          v92 = 0;
        }

        v93 = 0x80000000000000;
        if ((is_420 & 1) == 0)
        {
          v93 = 0;
        }

        *(v9 + 52) = v91 | v92 | v93;
        if ((v121 & 0x100000000) != 0)
        {
          v94 = 32;
        }

        else
        {
          v94 = 0;
        }

        *(v9 + 123) = v90 & 0xFF5B | v94 | ((v12 != 1.0) << 7) | 4;
        *(v9 + 16) = *(v8 + 9);
        return;
      }

      if (!v17)
      {
        v73 = CA::Render::ycbcr_fourcc_depth(v16);
        v74 = (v73 == 10) << 45;
        if (v73 == 8)
        {
          v74 = 0x100000000000;
        }

        *(v9 + 52) = v74 | *(v9 + 52) & 0xFFFFCFFFFFFFFFFFLL;
      }

      CA::OGL::MetalContext::update_texture_plane(a1, v9, a4, v17, v22, v20, v19);
      v75 = *(v18 - 3);
      if (!v75 || *(v9 + 16) != *(v8 + 9) && [*v18 mipmapLevelCount] >= 2)
      {
        *(v18 - 3) = 0;
        if (*(v9 + 120) != 1)
        {
          __assert_rtn("update_surface", "ogl-metal.mm", 13077, "tex->depth == 1 && surface textures must be 2D");
        }

        [*v18 setUsage:1];
        if (!CA::OGL::MetalContext::is_viable_texture_from_iosurface(a1, buffer, v22))
        {

          return;
        }

        [*v18 setMipmapLevelCount:1];
        [*v18 setProtectionOptions:IOSurfaceGetProtectionOptions()];
        if (v136 == 44)
        {
          v76 = 0;
        }

        else
        {
          v76 = v17;
        }

        v77 = [*(a1 + 3504) newTextureWithDescriptor:*v18 iosurface:buffer plane:v76];
        if (!v77)
        {

          if (x_log_get_ogl_metal(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
          }

          v95 = x_log_get_ogl_metal(void)::log;
          if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
          {
            v98 = IOSurfaceGetID(buffer);
            *buf = 67109120;
            *&buf[4] = v98;
            _os_log_error_impl(&dword_183AA6000, v95, OS_LOG_TYPE_ERROR, "Failed to allocate MTLTexture from IOSurface 0x%x.", buf, 8u);
          }

          return;
        }

        v78 = v77;
        v79 = 0;
        v135 = 0;
        if (v16 == 1983000886)
        {
          v79 = (*(a1 + 3317) >> 6) & 1;
        }

        v134 = v22;
        if ((*(v126 + 52) & 0xF0000) == 0x20000 && CA::OGL::MetalContext::can_generate_mipmaps_for_format(a1, &v134, &v135))
        {
          if (!(v79 & 1 | !v135))
          {
            goto LABEL_308;
          }

LABEL_310:
          if (v20 <= v19)
          {
            v80 = v19;
          }

          else
          {
            v80 = v20;
          }

          [*v18 setMipmapLevelCount:(floorf(log2f(v80)) + 1.0)];
          v81 = v75;
          if (v81)
          {
            v82 = v81;
            v9 = v126;
LABEL_317:
            [v78 setLabel:@"com.apple.coreanimation.surface-source"];
            if (CA::OGL::MetalContext::start_blit_encoder(a1, [*v18 protectionOptions]))
            {
              v84 = *(a1 + 3544);
              *buf = 0;
              *v138 = 0;
              *&v138[8] = 0;
              v133[0] = v20;
              v133[1] = v19;
              v133[2] = 1;
              memset(v132, 0, sizeof(v132));
              [v84 copyFromTexture:v78 sourceSlice:0 sourceLevel:0 sourceOrigin:buf sourceSize:v133 toTexture:v82 destinationSlice:0 destinationLevel:0 destinationOrigin:v132];
              if ((*(v9 + 52) & 0xF0000) == 0x20000)
              {
                if (v130 == *(v9 + 122))
                {
                  *(v9 + 123) |= 1u;
                }

                [*(a1 + 3544) generateMipmapsForTexture:v82];
              }
            }

            *(v18 - 3) = v82;
          }

          else
          {
            v83 = [*(a1 + 3504) newTextureWithDescriptor:*v18];
            v9 = v126;
            if (v83)
            {
              v82 = v83;
              goto LABEL_317;
            }

            [*v18 setMipmapLevelCount:1];
            *(v18 - 3) = v78;
          }
        }

        else
        {
          if (v79)
          {
            goto LABEL_310;
          }

LABEL_308:
          *(v18 - 3) = v78;
          v9 = v126;
        }

        v8 = v122;
        if (v120)
        {
          v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
          v86 = *(v18 - 3);
        }

        else
        {
          v86 = *(v18 - 3);
          v85 = @"com.apple.coreanimation.surface";
        }

        [v86 setLabel:v85];
        CA::OGL::MetalContext::update_texture_ownership(a1, *(v18 - 3), v122);
        if (v75)
        {
        }
      }

      ++v17;
      ++v18;
      if (v17 >= v130)
      {
        goto LABEL_380;
      }
    }

    if (v22)
    {
      goto LABEL_19;
    }

LABEL_18:
    v22 = CA::OGL::four_cc_to_mtl_format(v16, *(a1 + 3316));
    goto LABEL_19;
  }
}

void CA::OGL::MetalContext::update_texture_ownership(uint64_t a1, void *a2, uint64_t a3)
{
  {
    CA::OGL::MetalContext::update_texture_ownership(objc_object  {objcproto10MTLTexture}*,CA::Render::Texture *)::set_owner_sel = sel_setOwnerWithIdentity_;
  }

  if (*(a1 + 792) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [a2 setOwnerWithIdentity:*(a1 + 792)];
  }

  if (a2 && *(a3 + 40))
  {

    [a2 setResponsibleProcess:?];
  }
}

CA::WindowServer::Surface *CA::WindowServer::IOSurface::wrap_buffer(CA::WindowServer::IOSurface *this, IOSurfaceRef buffer, __IOSurface *a3, char a4)
{
  if (a3)
  {
    CFRetain(buffer);
  }

  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x148uLL, 0xDEEC3011uLL);
  v11 = v10;
  if (v10)
  {
    v12 = (v10 + 280);
    CA::WindowServer::Surface::Surface(v10, this, Width, Height, PixelFormat);
    *v11 = &unk_1EF1FCF78;
    *(v11 + 33) = buffer;
    *(v11 + 68) = IOSurfaceGetID(buffer);
    *(v11 + 69) = CA::Render::iosurface_get_edr_factor(buffer, v13);
    *v12 = xmmword_183E214C0;
    *(v11 + 74) = 0;
    *(v11 + 38) = 0;
    *(v11 + 156) = 256;
    *(v11 + 314) = a4;
    *(v11 + 79) = 0;
    *(v11 + 80) = 0;
    PlaneCount = IOSurfaceGetPlaneCount(buffer);
    v15 = 0;
    if (PlaneCount <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = PlaneCount;
    }

    do
    {
      *(v11 + 79) |= IOSurfaceGetBaseAddressOfPlane(buffer, v15);
      *(v11 + 80) |= IOSurfaceGetBytesPerRowOfPlane(buffer, v15++);
    }

    while (v16 != v15);
    if (!IOSurfaceGetBulkAttachments())
    {
      *(v11 + 313) = 1;
    }
  }

  return v11;
}

double CA::WindowServer::Surface::Surface(CA::WindowServer::Surface *this, CA::WindowServer::Display *a2, int a3, int a4, int a5)
{
  *this = &unk_1EF1F8D08;
  *(this + 1) = a2;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 14) = a3;
  *(this + 15) = a4;
  *(this + 16) = a5;
  *(this + 17) = 1065353216;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  *(this + 108) = xmmword_183E20F10;
  *(this + 124) = 1065353216;
  *(this + 136) = xmmword_183E20F20;
  *(this + 19) = 0;
  *(this + 159) = 0;
  *(this + 164) = 0x100000001;
  *(this + 172) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0;
  *(this + 52) = 1065353216;
  *(this + 212) = 0;
  *(this + 220) = 0;
  *(this + 57) = -1;
  *(this + 236) = *(this + 236) & 0xFFFFFF8038000000 | 0x140000001;
  *(this + 61) = 0;
  *(this + 248) = 0;
  *(this + 32) = 0;
  return result;
}

void std::vector<CA::WindowServer::Surface *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
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

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t CA::Render::Surface::chroma_location(__IOSurface **this, __IOSurface *a2)
{
  v2 = *(this + 361);
  if ((v2 & 0x70) == 0)
  {
    v4 = CA::Render::Surface::ycbcr_matrix(this, a2);
    v5 = this[16];
    if (v5)
    {
      v6 = 16 * CA::Render::iosurface_chroma_location(v5, v4);
    }

    else if (((v4 - 1) & 0xF9) != 0)
    {
      v6 = 32;
    }

    else
    {
      v6 = 16;
    }

    v2 = *(this + 361) & 0x8F | v6;
    *(this + 361) = *(this + 361) & 0x8F | v6;
    v7 = this[14];
    if (v7)
    {
      *(v7 + 361) = *(v7 + 361) & 0x8F | v6;
      v2 = *(this + 361);
    }
  }

  return (v2 >> 4) & 7;
}

uint64_t CA::OGL::MetalContext::image_parameters(uint64_t a1, int a2, int a3, char *a4)
{
  *a4 = 0;
  if (a3)
  {
    return 0;
  }

  result = 0;
  switch(a2)
  {
    case 0:
      v8 = 2;
      goto LABEL_26;
    case 1:
      return 80;
    case 2:
      v8 = 3;
      goto LABEL_26;
    case 3:
      v8 = 1;
LABEL_26:
      *a4 = v8;
      return 80;
    case 5:
      *a4 = 1;
      goto LABEL_29;
    case 6:
      if (*(a1 + 3316))
      {
        return 562;
      }

      *a4 = 36;
      return 241;
    case 7:
      if (*(a1 + 3316))
      {
        return 501;
      }

      *a4 = 36;
      return 240;
    case 8:
      return 1;
    case 9:
      *a4 = 25;
      return 1;
    case 10:
      *a4 = 34;
      return 10;
    case 11:
    case 29:
      return 70;
    case 12:
      v10 = 1;
      goto LABEL_40;
    case 13:
      return 115;
    case 14:
      return 125;
    case 15:
      v10 = 6;
      goto LABEL_40;
    case 16:
      v10 = 7;
      goto LABEL_40;
    case 17:
      *a4 = 1;
      return 115;
    case 18:
      v9 = 35;
      goto LABEL_43;
    case 19:
      v9 = 34;
LABEL_43:
      *a4 = v9;
      return 30;
    case 20:
LABEL_29:
      v6 = (*(a1 + 3316) & 2) == 0;
      v7 = 43;
      goto LABEL_35;
    case 21:
      return 110;
    case 22:
      *a4 = 1;
      return 110;
    case 23:
    case 25:
      *a4 = 24;
      return 25;
    case 24:
    case 26:
      *a4 = 24;
      return 55;
    case 27:
      *a4 = 35;
      return 60;
    case 28:
      *a4 = 35;
      return 65;
    case 30:
      v10 = 32;
LABEL_40:
      *a4 = v10;
      return 70;
    case 31:
      return 94;
    case 32:
      return 90;
    case 33:
      v6 = (*(a1 + 3316) & 2) == 0;
      v7 = 554;
      goto LABEL_35;
    case 34:
      v6 = (*(a1 + 3316) & 2) == 0;
      v7 = 552;
      goto LABEL_35;
    case 35:
      v6 = (*(a1 + 3316) & 4) == 0;
      v7 = 550;
LABEL_35:
      if (v6)
      {
        result = 0;
      }

      else
      {
        result = v7;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t CA::Render::fourcc_is_420(CA::Render *this)
{
  v1 = this;
  result = 1;
  if (v1 > 875704437)
  {
    if (v1 > 1952854575)
    {
      if (v1 > 2084070959)
      {
        if (v1 > 2088003119)
        {
          if (v1 > 2088265263)
          {
            if (v1 == 2088265264)
            {
              return result;
            }

            v3 = 2088269360;
          }

          else
          {
            if (v1 == 2088003120)
            {
              return result;
            }

            v3 = 2088007216;
          }
        }

        else if (v1 > 2087937583)
        {
          if (v1 == 2087937584)
          {
            return result;
          }

          v3 = 2087941680;
        }

        else
        {
          if (v1 == 2084070960)
          {
            return result;
          }

          v3 = 2084075056;
        }

        goto LABEL_90;
      }

      if (v1 > 2016436535)
      {
        if (v1 > 2016686639)
        {
          if (v1 == 2016686640)
          {
            return result;
          }

          v3 = 2019963440;
        }

        else
        {
          if (v1 == 2016436536)
          {
            return result;
          }

          v3 = 2016436595;
        }

        goto LABEL_90;
      }

      if (v1 != 1952854576 && v1 != 1953903152)
      {
        v3 = 1982882104;
        goto LABEL_90;
      }
    }

    else
    {
      if (v1 > 1882468911)
      {
        if (v1 > 1932550514)
        {
          if (v1 > 1937125935)
          {
            if (v1 == 1937125936)
            {
              return result;
            }

            v3 = 1949327731;
          }

          else
          {
            if (v1 == 1932550515)
            {
              return result;
            }

            v3 = 1936077360;
          }
        }

        else if (v1 > 1886676527)
        {
          if (v1 == 1886676528)
          {
            return result;
          }

          v3 = 1886680624;
        }

        else
        {
          if (v1 == 1882468912)
          {
            return result;
          }

          v3 = 1885745712;
        }

        goto LABEL_90;
      }

      if (v1 > 1534354991)
      {
        if (v1 > 1534617135)
        {
          if (v1 == 1534617136)
          {
            return result;
          }

          v3 = 1534621232;
        }

        else
        {
          if (v1 == 1534354992)
          {
            return result;
          }

          v3 = 1534359088;
        }

        goto LABEL_90;
      }

      if (v1 != 875704438 && v1 != 1530422832)
      {
        v3 = 1530426928;
        goto LABEL_90;
      }
    }
  }

  else if (v1 > 762537519)
  {
    if (v1 > 792229423)
    {
      if (v1 > 796161583)
      {
        if (v1 > 796423727)
        {
          if (v1 == 796423728)
          {
            return result;
          }

          v3 = 875704422;
        }

        else
        {
          if (v1 == 796161584)
          {
            return result;
          }

          v3 = 796419632;
        }
      }

      else if (v1 > 796096047)
      {
        if (v1 == 796096048)
        {
          return result;
        }

        v3 = 796157488;
      }

      else
      {
        if (v1 == 792229424)
        {
          return result;
        }

        v3 = 796091952;
      }

      goto LABEL_90;
    }

    if (v1 > 762607151)
    {
      if (v1 > 762869295)
      {
        if (v1 == 762869296)
        {
          return result;
        }

        v3 = 792225328;
      }

      else
      {
        if (v1 == 762607152)
        {
          return result;
        }

        v3 = 762865200;
      }

      goto LABEL_90;
    }

    if (v1 != 762537520 && v1 != 762541616)
    {
      v3 = 762603056;
      goto LABEL_90;
    }
  }

  else
  {
    if (v1 > 645166639)
    {
      if (v1 > 645424687)
      {
        if (v1 > 758670895)
        {
          if (v1 == 758670896)
          {
            return result;
          }

          v3 = 758674992;
          goto LABEL_90;
        }

        if (v1 == 645424688)
        {
          return result;
        }

        v5 = 30256;
      }

      else
      {
        if (v1 <= 645410871)
        {
          if (v1 == 645166640)
          {
            return result;
          }

          v3 = 645279800;
          goto LABEL_90;
        }

        if (v1 == 645410872)
        {
          return result;
        }

        v5 = 12403;
      }

      v3 = v5 | 0x26780000;
LABEL_90:
      if (v1 != v3)
      {
        return 0;
      }

      return result;
    }

    if (v1 > 645097007)
    {
      if (v1 > 645148786)
      {
        if (v1 == 645148787)
        {
          return result;
        }

        v3 = 645162544;
        goto LABEL_90;
      }

      if (v1 == 645097008)
      {
        return result;
      }

      v4 = 30256;
      goto LABEL_55;
    }

    if (v1 != 641230384 && v1 != 641234480)
    {
      v4 = 12403;
LABEL_55:
      v3 = v4 | 0x26730000;
      goto LABEL_90;
    }
  }

  return result;
}

unint64_t CA::SurfaceUtil::CASurfaceQuerySharedEvent(CA::SurfaceUtil *this, __IOSurface *a2)
{
  v2 = this;
  v40 = *MEMORY[0x1E69E9840];
  v3 = this + 32;
  bzero(this + 32, 0x3C0uLL);
  *v2 = v3;
  *(v2 + 1) = v3;
  *(v2 + 2) = v3;
  *(v2 + 3) = 30;
  v4 = IOSurfaceQueryTransactionList();
  for (i = 0; ; ++i)
  {
    result = [v4 length];
    if (i >= result)
    {
      break;
    }

    v7 = [v4 transactionAtIndex:i];
    if ([v7 event])
    {
      if ([v7 waitValue])
      {
        v8 = [v7 event];
        v9 = v2;
        v37 = [v7 event];
        v10 = [v4 eventPortAtIndex:i];
        v11 = [v7 waitValue];
        v12 = [v7 isWrite];
        v14 = *v2;
        v13 = *(v2 + 1);
        v15 = &v13[-*v2];
        v16 = (v15 >> 5) + 1;
        v17 = *(v2 + 3);
        if (v17 < v16)
        {
          v36 = &v13[-*v2];
          v18 = *(v2 + 2);
          v19 = (v17 + 1) | ((v17 + 1) >> 1) | (((v17 + 1) | ((v17 + 1) >> 1)) >> 2);
          v20 = v19 | (v19 >> 4) | ((v19 | (v19 >> 4)) >> 8);
          v21 = v20 | (v20 >> 16) | ((v20 | (v20 >> 16)) >> 32);
          if (v21 + 1 > v16)
          {
            v22 = v21 + 1;
          }

          else
          {
            v22 = (v15 >> 5) + 1;
          }

          v23 = malloc_type_malloc(32 * v22, 0x1020040E810300CuLL);
          v24 = v23;
          v25 = *v9;
          v26 = *(v9 + 1);
          if (*v9 != v26)
          {
            v27 = v23;
            do
            {
              v28 = *v25;
              v29 = v25[1];
              v25 += 2;
              *v27 = v28;
              v27[1] = v29;
              v27 += 2;
            }

            while (v25 != v26);
          }

          v30 = v14 == v18;
          v2 = v9;
          if (!v30)
          {
            free(*v9);
          }

          v13 = &v36[v24];
          *v9 = v24;
          *(v9 + 1) = &v36[v24];
          *(v9 + 3) = v22;
        }

        *v13 = v37;
        *(v13 + 2) = v10;
        *(v13 + 3) = 0;
        *(v13 + 2) = v11;
        v13[24] = v12;
        *(v13 + 25) = 0;
        *(v13 + 7) = 0;
        *(v2 + 1) += 32;
      }

      else
      {
        if (x_log_get_sharedevent(void)::once != -1)
        {
          dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
        }

        v35 = x_log_get_sharedevent(void)::log;
        if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v32 = buf;
          v33 = v35;
          v34 = "Shared Event Value in transaction null, skipping";
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v31 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
      {
        v39 = 0;
        v32 = &v39;
        v33 = v31;
        v34 = "Shared Event in transaction null, skipping";
LABEL_25:
        _os_log_error_impl(&dword_183AA6000, v33, OS_LOG_TYPE_ERROR, v34, v32, 2u);
        continue;
      }
    }
  }

  return result;
}

void sub_183B05D50(_Unwind_Exception *exception_object)
{
  if (*v1 != *(v1 + 16))
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::Render::ycbcr_fourcc_depth(CA::Render *this)
{
  v1 = CA::Render::fourcc_compressed_of_type(this, 0, 0);
  v2 = 8;
  if (v1 > 1949458802)
  {
    if (v1 > 2016567666)
    {
      if (v1 <= 2019963439)
      {
        if (v1 <= 2016687155)
        {
          if (v1 == 2016567667 || v1 == 2016686640)
          {
            return 10;
          }

          v9 = 12850;
        }

        else if (v1 > 2016698679)
        {
          if (v1 == 2016698680)
          {
            return 10;
          }

          v9 = 24947;
        }

        else
        {
          if (v1 == 2016687156)
          {
            return 10;
          }

          v9 = 13424;
        }

        v11 = v9 | 0x78340000;
      }

      else
      {
        if (v1 > 2033463605)
        {
          if (v1 > 2037741157)
          {
            if (v1 == 2037741158)
            {
              return v2;
            }

            v4 = 2037741171;
          }

          else
          {
            if (v1 == 2033463606)
            {
              return 16;
            }

            v4 = 2033463856;
          }

          goto LABEL_93;
        }

        if (v1 > 2019963955)
        {
          if (v1 == 2019963956)
          {
            return 10;
          }

          v5 = 13424;
        }

        else
        {
          if (v1 == 2019963440)
          {
            return 10;
          }

          v5 = 12850;
        }

        v11 = v5 | 0x78660000;
      }
    }

    else
    {
      if (v1 <= 1953903667)
      {
        if (v1 <= 1952854577)
        {
          if (v1 == 1949458803 || v1 == 1949589875)
          {
            return 12;
          }

          v8 = 12848;
        }

        else
        {
          if (v1 > 1953903151)
          {
            if (v1 == 1953903152)
            {
              return 12;
            }

            v12 = 1953903154;
            goto LABEL_97;
          }

          if (v1 == 1952854578)
          {
            return 12;
          }

          v8 = 13364;
        }

        v12 = v8 | 0x74660000;
LABEL_97:
        if (v1 != v12)
        {
          return 0;
        }

        return 12;
      }

      if (v1 <= 1983144247)
      {
        if (v1 > 1983000885)
        {
          if (v1 == 1983000886)
          {
            return 16;
          }

          v4 = 1983013176;
        }

        else
        {
          if (v1 == 1953903668)
          {
            return 12;
          }

          v4 = 1982882104;
        }

        goto LABEL_93;
      }

      if (v1 > 2016436594)
      {
        if (v1 == 2016436595)
        {
          return 10;
        }

        v11 = 2016567608;
      }

      else
      {
        if (v1 == 1983144248)
        {
          return v2;
        }

        v11 = 2016436536;
      }
    }

    goto LABEL_89;
  }

  if (v1 > 1886676527)
  {
    if (v1 <= 1932812658)
    {
      if (v1 <= 1886680623)
      {
        if ((v1 - 1886676528) > 4 || ((1 << (v1 - 48)) & 0x15) == 0)
        {
          return 0;
        }
      }

      else if ((v1 - 1886680624) > 4 || ((1 << (v1 - 48)) & 0x15) == 0)
      {
        if (v1 != 1932550515)
        {
          v3 = 1932681587;
          goto LABEL_85;
        }

        return 16;
      }

      return 12;
    }

    if (v1 <= 1937125935)
    {
      if (v1 > 1936077361)
      {
        if (v1 == 1936077362)
        {
          return 16;
        }

        v7 = 13364;
      }

      else
      {
        if (v1 == 1932812659)
        {
          return 16;
        }

        v7 = 12848;
      }

      v3 = v7 | 0x73660000;
LABEL_85:
      if (v1 == v3)
      {
        return 16;
      }

      return 0;
    }

    if (v1 <= 1937126451)
    {
      if (v1 == 1937125936)
      {
        return 16;
      }

      v3 = 1937125938;
      goto LABEL_85;
    }

    if (v1 == 1937126452)
    {
      return 16;
    }

    v12 = 1949327731;
    goto LABEL_97;
  }

  if (v1 > 1714696751)
  {
    if (v1 <= 1882469427)
    {
      if (v1 == 1714696752)
      {
        return v2;
      }

      if (v1 == 1882468912)
      {
        return 10;
      }

      v11 = 1882468914;
    }

    else
    {
      if (v1 > 1885745713)
      {
        if (v1 == 1885745714)
        {
          return 10;
        }

        v10 = 13364;
      }

      else
      {
        if (v1 == 1882469428)
        {
          return 10;
        }

        v10 = 12848;
      }

      v11 = v10 | 0x70660000;
    }

LABEL_89:
    if (v1 != v11)
    {
      return 0;
    }

    return 10;
  }

  if (v1 > 875704933)
  {
    if (v1 <= 875836517)
    {
      if (v1 != 875704934)
      {
        v6 = 12918;
LABEL_53:
        v4 = v6 | 0x34320000;
        goto LABEL_93;
      }

      return v2;
    }

    if (v1 == 875836518)
    {
      return v2;
    }

    v4 = 875836534;
LABEL_93:
    if (v1 == v4)
    {
      return v2;
    }

    return 0;
  }

  if (v1 != 846624121 && v1 != 875704422)
  {
    v6 = 12406;
    goto LABEL_53;
  }

  return v2;
}

uint64_t CA::Render::Surface::ogl_image_key(uint64_t this)
{
  if (*(this + 112))
  {
    return *(this + 112);
  }

  return this;
}

void CA::OGL::MetalContext::update_texture(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, __n128 a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 12);
  if (v10 == 57)
  {

    CA::OGL::MetalContext::update_surface(a1, a2, a3, a4, a5);
    return;
  }

  v11 = *(a2 + 8);
  if (v10 != 23 || v11 == 0)
  {
    if (v10 != 36 || v11 == 0)
    {
      if (v10 != 9 || v11 == 0)
      {
        return;
      }

      v15 = 204;
      v16 = 166;
      switch(*(a3 + 172))
      {
        case 1:
          v16 = 160;
          goto LABEL_42;
        case 2:
          v16 = 164;
          goto LABEL_42;
        case 3:
          v16 = 162;
          goto LABEL_42;
        case 4:
LABEL_42:
          v15 = v16;
          if ((*(a1 + 3316) & 1) == 0)
          {
            return;
          }

          goto LABEL_50;
        case 5:
          goto LABEL_49;
        case 6:
          v15 = 205;
          goto LABEL_49;
        case 7:
          v15 = 206;
          goto LABEL_49;
        case 8:
          v15 = 207;
          goto LABEL_49;
        case 9:
          v15 = 208;
          goto LABEL_49;
        case 0xA:
        case 0xB:
          v15 = 210;
          goto LABEL_49;
        case 0xC:
          v15 = 212;
          goto LABEL_49;
        case 0xD:
          v15 = 213;
          goto LABEL_49;
        case 0xE:
          v15 = 214;
          goto LABEL_49;
        case 0xF:
          v15 = 215;
          goto LABEL_49;
        case 0x10:
          v15 = 216;
          goto LABEL_49;
        case 0x11:
          v15 = 217;
          goto LABEL_49;
        case 0x12:
          v15 = 218;
LABEL_49:
          if ((*(a1 + 3316) & 2) == 0)
          {
            return;
          }

LABEL_50:
          v22 = *(a3 + 184);
          if (v22 == 2)
          {
            v23 = 0;
            v24 = *(a2 + 52) | 0x20000000000000;
          }

          else
          {
            v23 = (v22 == 0) << 24;
            v24 = *(a2 + 52);
          }

          v25 = v24 & 0xFFFFFFFFC0FFFFFFLL | v23;
          *(a2 + 52) = v25;
          a6.n128_u64[0] = *(a3 + 16);
          if (*(a3 + 168) >= 2)
          {
            *(a2 + 123) |= 1u;
            *(a2 + 52) = v25 & 0xFFFFFFFFC1F0FFFFLL | 0x20000;
          }

          v37 = a6;
          CA::OGL::MetalContext::update_texture_plane(a1, a2, a4, 0, v15, a6.n128_u32[0], a6.n128_u32[1]);
          [*(a2 + 88) setMipmapLevelCount:*(a3 + 168)];
          [*(a2 + 88) setUsage:1];
          if (*(a3 + 192))
          {
            v26 = [*(a1 + 3504) newTextureWithDescriptor:*(a2 + 88)];
            *(a2 + 64) = v26;
            if (v26)
            {
              [v26 setLabel:@"com.apple.coreanimation.compressed-image-linear"];
              v27 = v37;
              if (*(a3 + 168) >= 1)
              {
                v28 = 0;
                do
                {
                  v29 = *(a3 + 112);
                  v30 = *(*(a3 + 144) + 8 * v28);
                  v31 = *(a2 + 64);
                  memset(v39, 0, sizeof(v39));
                  *&v32 = v27.n128_u32[0];
                  *(&v32 + 1) = v27.n128_u32[1];
                  v40 = v32;
                  v41 = 1;
                  [v31 replaceRegion:v39 mipmapLevel:v28 slice:0 withBytes:v29 + v30 bytesPerRow:*(*(a3 + 160) + 8 * v28) bytesPerImage:{0, *&v27}];
                  v33 = vcgt_u32(v38, 0x100000001);
                  v27.n128_u64[0] = vsub_s32(vand_s8(vshr_n_u32(v38, 1uLL), v33), vmvn_s8(v33));
                  ++v28;
                }

                while (v28 < *(a3 + 168));
              }
            }
          }

          else
          {
            v34 = (*(*a3 + 184))(a3);
            v35 = *MEMORY[0x1E69E9AC8];
            if (*MEMORY[0x1E69E9AC8] >= *MEMORY[0x1E69E9AB0])
            {
              v35 = *MEMORY[0x1E69E9AB0];
            }

            v36 = [*(a1 + 3504) newTextureWithBytesNoCopy:*(a3 + 112) length:(v34 + v35 - 1) & -v35 descriptor:*(a2 + 88) deallocator:{0, *&v37}];
            *(a2 + 64) = v36;
            if (v36)
            {
              [v36 setLabel:@"com.apple.coreanimation.compressed-image"];
            }
          }

          CA::OGL::MetalContext::update_texture_ownership(a1, *(a2 + 64), a3);
          *(a1 + 1280) += (*(*a3 + 184))(a3);
          break;
        default:
          return;
      }
    }

    else
    {
      v17 = *(a3 + 112);
      if (!v17)
      {
        return;
      }

      if ([*(a3 + 112) device] != *(a1 + 3504))
      {
        __assert_rtn("update_metal_texture_", "ogl-metal.mm", 12240, "texture.device == _device");
      }

      if ([v17 pixelFormat] == 1 && (*(*a3 + 104))(a3) != 8)
      {
        v18 = *(a2 + 52) & 0xFFFFFFFFC0FFFFFFLL | 0x19000000;
      }

      else
      {
        v18 = *(a2 + 52) & 0xFFFFFFFFC0FFFFFFLL;
      }

      *(a2 + 52) = v18;
      v19 = [v17 mipmapLevelCount];
      v20 = *(a3 + 16);
      v21 = *(a3 + 20);
      if ((v19 & 0xFFFFFFFE) != 0)
      {
        *(a2 + 123) |= 1u;
        *(a2 + 52) = *(a2 + 52) & 0xFFFFFFFFFFF0FFFFLL | 0x20000;
      }

      CA::OGL::MetalContext::update_texture_plane(a1, a2, a4, 0, [v17 pixelFormat], v20, v21);
      *(a2 + 64) = v17;
    }

    *(a2 + 16) = *(a3 + 36);
    return;
  }

  CA::OGL::MetalContext::update_image(a1, a2, a3, a4, a5);
}

uint64_t CA::Render::fourcc_is_444(CA::Render *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 875836533)
  {
    if (v1 <= 762537523)
    {
      if (v1 > 645166643)
      {
        if (v1 > 645424691)
        {
          if (v1 > 758670899)
          {
            if (v1 == 758670900)
            {
              return result;
            }

            v3 = 758674996;
            goto LABEL_93;
          }

          if (v1 == 645424692)
          {
            return result;
          }

          v6 = 30260;
        }

        else
        {
          if (v1 <= 645411895)
          {
            if (v1 == 645166644)
            {
              return result;
            }

            v3 = 645280824;
            goto LABEL_93;
          }

          if (v1 == 645411896)
          {
            return result;
          }

          v6 = 13427;
        }

        v3 = v6 | 0x26780000;
        goto LABEL_93;
      }

      if (v1 <= 645097011)
      {
        if (v1 == 641230388 || v1 == 641234484)
        {
          return result;
        }

        v4 = 13427;
      }

      else
      {
        if (v1 > 645149810)
        {
          if (v1 == 645149811)
          {
            return result;
          }

          v3 = 645162548;
          goto LABEL_93;
        }

        if (v1 == 645097012)
        {
          return result;
        }

        v4 = 30260;
      }

      v3 = v4 | 0x26730000;
      goto LABEL_93;
    }

    if (v1 > 792229427)
    {
      if (v1 > 796161587)
      {
        if (v1 > 796423731)
        {
          if (v1 == 796423732)
          {
            return result;
          }

          v3 = 875836518;
        }

        else
        {
          if (v1 == 796161588)
          {
            return result;
          }

          v3 = 796419636;
        }
      }

      else if (v1 > 796096051)
      {
        if (v1 == 796096052)
        {
          return result;
        }

        v3 = 796157492;
      }

      else
      {
        if (v1 == 792229428)
        {
          return result;
        }

        v3 = 796091956;
      }

      goto LABEL_93;
    }

    if (v1 > 762607155)
    {
      if (v1 > 762869299)
      {
        if (v1 == 762869300)
        {
          return result;
        }

        v3 = 792225332;
      }

      else
      {
        if (v1 == 762607156)
        {
          return result;
        }

        v3 = 762865204;
      }

      goto LABEL_93;
    }

    if (v1 != 762537524 && v1 != 762541620)
    {
      v3 = 762603060;
      goto LABEL_93;
    }
  }

  else
  {
    if (v1 > 1952855091)
    {
      if (v1 > 2084070963)
      {
        if (v1 > 2088003123)
        {
          if (v1 > 2088265267)
          {
            if (v1 == 2088265268)
            {
              return result;
            }

            v3 = 2088269364;
          }

          else
          {
            if (v1 == 2088003124)
            {
              return result;
            }

            v3 = 2088007220;
          }
        }

        else if (v1 > 2087937587)
        {
          if (v1 == 2087937588)
          {
            return result;
          }

          v3 = 2087941684;
        }

        else
        {
          if (v1 == 2084070964)
          {
            return result;
          }

          v3 = 2084075060;
        }

        goto LABEL_93;
      }

      if (v1 > 2016698679)
      {
        if (v1 > 2019963955)
        {
          if (v1 == 2019963956)
          {
            return result;
          }

          v3 = 2033463606;
          goto LABEL_93;
        }

        if (v1 == 2016698680)
        {
          return result;
        }

        v5 = 24947;
      }

      else
      {
        if (v1 <= 1983144247)
        {
          if (v1 == 1952855092)
          {
            return result;
          }

          v3 = 1953903668;
          goto LABEL_93;
        }

        if (v1 == 1983144248)
        {
          return result;
        }

        v5 = 13364;
      }

      v3 = v5 | 0x78340000;
LABEL_93:
      if (v1 != v3)
      {
        return 0;
      }

      return result;
    }

    if (v1 > 1882469427)
    {
      if (v1 > 1932812658)
      {
        if (v1 > 1937126451)
        {
          if (v1 == 1937126452)
          {
            return result;
          }

          v3 = 1949589875;
        }

        else
        {
          if (v1 == 1932812659)
          {
            return result;
          }

          v3 = 1936077876;
        }
      }

      else if (v1 > 1886676531)
      {
        if (v1 == 1886676532)
        {
          return result;
        }

        v3 = 1886680628;
      }

      else
      {
        if (v1 == 1882469428)
        {
          return result;
        }

        v3 = 1885746228;
      }

      goto LABEL_93;
    }

    if (v1 > 1534354995)
    {
      if (v1 > 1534617139)
      {
        if (v1 == 1534617140)
        {
          return result;
        }

        v3 = 1534621236;
      }

      else
      {
        if (v1 == 1534354996)
        {
          return result;
        }

        v3 = 1534359092;
      }

      goto LABEL_93;
    }

    if (v1 != 875836534 && v1 != 1530422836)
    {
      v3 = 1530426932;
      goto LABEL_93;
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::find<CA::OGL::Context::RenderObjectSlice>(void *a1, unint64_t a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = (0x77FA823ACE0B5A40 * (v5 ^ (v5 >> 47)) + a3 + ((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) >> 2) - 0x61C8864680B583E9) ^ (0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47)));
  v7 = vcnt_s8(v3);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v3)
    {
      v8 = v6 % *&v3;
    }
  }

  else
  {
    v8 = v6 & (*&v3 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (result[2] == a2 && *(result + 24) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v3)
        {
          v11 %= *&v3;
        }
      }

      else
      {
        v11 &= *&v3 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CA::Render::Texture::set_pointer(uint64_t this, unint64_t a2, void *a3)
{
  v3 = 0;
  atomic_compare_exchange_strong((this + 104), &v3, a2);
  if (!v3)
  {
    *(this + 96) = a3;
  }

  return this;
}

void CA::WindowServer::IOMFBServer::frame_info_callback(const void *a1, int a2, const __CFDictionary *a3, uint64_t *a4)
{
  v363 = *MEMORY[0x1E69E9840];
  if (!(*(*a4 + 424))(a4))
  {
    __assert_rtn("frame_info_callback", "windowserver-iomfb-server.cpp", 1272, "run_loop != nullptr");
  }

  v338 = 0;
  CA::WindowServer::IOMFBDisplay::collect_frame_info(&v338, a4[12], a2);
  v8 = v338;
  if (!v338)
  {
    return;
  }

  if ((*(v338 + 110) & 0x10) != 0)
  {
LABEL_19:
    v338 = 0;
    goto LABEL_319;
  }

  v9 = *(v338 + 1);
  Int64 = CA_CFDictionaryGetInt64(a3, @"Presentation_time");
  v11 = CA_CFDictionaryGetInt64(a3, @"Requested_presentation");
  v12 = CA_CFDictionaryGetInt64(a3, @"Last_Fence_or_Event_Time");
  if (*(a4[12] + 29549) == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    mach_get_times();
    Int64 -= __p[1] - __p[0];
    v11 -= __p[1] - __p[0];
  }

  v13 = CATimeWithHostTime(Int64);
  v14 = mach_absolute_time();
  v15 = CATimeWithHostTime(v14);
  if (v15 < v13 && v13 < v15 + 0.0003)
  {
    usleep(((v13 - v15) * 1000000.0));
  }

  v336 = 0;
  v337 = 0;
  if ((*(v8 + 110) & 0x40) != 0)
  {
    kdebug_trace();
    v26 = (*(*a4 + 432))(a4);
    CA::WindowServer::IOMFBServer::collect_gpu_data(v26, *(v8 + 1), &v337, &v336, v27);
    CA::WindowServer::IOMFBDisplay::add_timing(a4[12], Int64);
    CA::WindowServer::IOMFBServer::forward_frame_info_callback(a4, a3, v8, v337, v336);
    goto LABEL_19;
  }

  v16 = CATimeWithHostTime(Int64);
  v17 = CATimeWithHostTime(v11);
  __p[0] = 0;
  __p[1] = 0;
  mach_get_times();
  v299 = __p[1] - __p[0];
  v18 = *(v8 + 4) - (__p[1] - __p[0]);
  kdebug_trace();
  v20 = a4[12];
  cf = a1;
  if ((*(v20 + 672) & 0x1C00) != 0 && (*(v20 + 656) & 0x8000000000000000) != 0 && (BYTE2(xmmword_1ED4E98AC) & 1) == 0)
  {
    v19.n128_f64[0] = v16 - *(v8 + 1);
    if (v19.n128_f64[0] < 0.0)
    {
      v19.n128_f64[0] = 0.0;
    }

    (*(*v20 + 2360))(v20, v19);
    v20 = a4[12];
  }

  v323 = v299 + Int64;
  v21 = *(v8 + 4);
  v22 = (*(*v20 + 760))(v20);
  v23 = CAHostTimeWithTime(v22);
  v24 = *(v8 + 110);
  if ((v24 & 8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = *(v8 + 196) - 1;
  }

  v318 = v323 - v21;
  if ((v24 & 4) != 0)
  {
    v28 = v23;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 + v25 * v23;
  v298 = v9;
  if (*(v8 + 4) >= *(v8 + 5))
  {
    v33 = 0;
    v32 = 0;
  }

  else if (*(v8 + 7) == -1)
  {
    v32 = 0;
    v33 = v23;
  }

  else
  {
    v30 = v23;
    v31 = a4[12];
    if ((v31[336] & 0x1C00) != 0)
    {
      v32 = 0;
      v23 = v30;
      v33 = v30;
    }

    else
    {
      v34 = (*(*v31 + 776))(v31);
      v35 = CAHostTimeWithTime(v34);
      if (*(v8 + 7) <= v18)
      {
        v36 = v18;
      }

      else
      {
        v36 = *(v8 + 7);
      }

      v24 = *(v8 + 110);
      if ((v24 & 4) != 0)
      {
        v37 = v30;
      }

      else
      {
        v37 = 0;
      }

      v38 = v36 + v35;
      v23 = v30;
      v32 = v38 + v37 < *(v8 + 5) - v299;
      v33 = v36 - v18;
    }
  }

  v39 = v29 + v33;
  v320 = v23;
  v40 = v318 > (v23 >> 1) + (v23 >> 6) + v39 || v32;
  v304 = v24 & 2;
  if (v40)
  {
    kdebug_trace();
    if (v304)
    {
      kdebug_trace();
    }
  }

  if (v12)
  {
    v41 = a4[12];
    if ((v41[29549] & 1) == 0)
    {
      __p[0] = 0;
      __p[1] = 0;
      mach_get_times();
      v12 += __p[1] - __p[0];
    }

    v42 = *(v8 + 5);
    if (v12 <= v42)
    {
      v12 = *(v8 + 5);
    }

    v43 = CATimeWithHostTime(v12 - v42);
    if ((*(v8 + 110) & 0x80) != 0)
    {
      *(a4 + 1444) = (v43 < (*(*v41 + 760))(v41) * 0.4375) | (2 * *(a4 + 1444));
    }
  }

  else
  {
    v43 = 0.0;
  }

  if ((*(v8 + 110) & 0x100) != 0)
  {
    v44 = (*(*a4[12] + 776))(a4[12]);
    v45 = CAHostTimeWithTime(v44);
    if ((*(a4[12] + 640) & 0x10) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = *(a4 + 172);
    if (Int64 >= v11 + (v45 >> 2) + v46)
    {
      v48 = v47 * 1.33333333;
      if (v48 > 10.0)
      {
        v48 = 10.0;
      }
    }

    else
    {
      v48 = v47 * 0.5;
      if (v48 < 0.25)
      {
        v48 = 0.25;
      }
    }

    *(a4 + 172) = v48;
  }

  if ((atomic_exchange(a4 + 488, 0) & 1) == 0 && (atomic_exchange(a4 + 489, 0) & 1) == 0 && (atomic_exchange(a4 + 490, 0) & 1) == 0)
  {
    v49 = *(a4 + 1446);
    if (BYTE14(xmmword_1ED4E988C) == ((v49 >> 4) & 1))
    {
      goto LABEL_68;
    }

    *(a4 + 1446) = v49 & 0xEF | (16 * BYTE14(xmmword_1ED4E988C));
  }

  pthread_mutex_lock((a4 + 107));
  CA::WindowServer::IOMFBServer::set_throttle_reason(a4, 1, *(a4 + 829));
  CA::WindowServer::IOMFBServer::set_throttle_reason(a4, 0, *(a4 + 828));
  CA::WindowServer::IOMFBServer::set_throttle_reason(a4, 2, *(a4 + 835));
  CA::WindowServer::IOMFBServer::update_throttle(a4);
  pthread_mutex_unlock((a4 + 107));
LABEL_68:
  v294 = v39;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v50 = *&dword_1ED4E9704;
  if (*(a4 + 342) != *&dword_1ED4E9704)
  {
    pthread_mutex_lock((a4 + 107));
    *(a4 + 342) = v50;
    CA::WindowServer::IOMFBServer::refresh_timer_interval(a4);
    CA::WindowServer::IOMFBDisplay::minimum_frame_duration_changed(a4[12]);
    pthread_mutex_unlock((a4 + 107));
  }

  CA::WindowServer::IOMFBDisplay::add_timing(a4[12], Int64);
  v51 = a4[12];
  v52 = 0.003;
  v292 = v12;
  if ((*(v51 + 640) & 0x10) != 0 && (*(v51 + 656) & 0x8000000000000000) != 0)
  {
    v52 = (*(*v51 + 776))(v51, 0.003) + 0.003;
  }

  v53 = v338;
  if (v16 < v17 - v52)
  {
    goto LABEL_318;
  }

  v54 = 0;
  v55 = a4[12];
  v293 = *(v55 + 27360);
  *(v55 + 27360) = v323;
  if (CA::WindowServer::IOMFBServer::frame_info_callback(__IOMobileFramebuffer *,unsigned int,__CFDictionary const*,void *)::previous_swap_id)
  {
    v56 = CA::WindowServer::IOMFBServer::frame_info_callback(__IOMobileFramebuffer *,unsigned int,__CFDictionary const*,void *)::previous_swap_id == a2;
  }

  else
  {
    v56 = 1;
  }

  v57 = Int64 - CA::WindowServer::IOMFBServer::frame_info_callback(__IOMobileFramebuffer *,unsigned int,__CFDictionary const*,void *)::mt_previous_pres;
  if (v56)
  {
    v57 = 0;
  }

  CA::WindowServer::IOMFBServer::frame_info_callback(__IOMobileFramebuffer *,unsigned int,__CFDictionary const*,void *)::previous_swap_id = a2;
  CA::WindowServer::IOMFBServer::frame_info_callback(__IOMobileFramebuffer *,unsigned int,__CFDictionary const*,void *)::mt_previous_pres = Int64;
  qword_1EA850F00 += v57;
  v58 = v11 - Int64;
  if ((v11 - Int64) < 0)
  {
    v58 = Int64 - v11;
  }

  *(&xmmword_1EA850F30 + 1) += v58;
  if (*(v53 + 221))
  {
    v54 = CAHostTimeWithTime(v43);
  }

  qword_1EA850F40 += v54;
  if (CADeviceSupportsBandwidthStatistics::once != -1)
  {
    dispatch_once(&CADeviceSupportsBandwidthStatistics::once, &__block_literal_global_390);
  }

  if (CADeviceSupportsBandwidthStatistics::bw_stats == 1)
  {
    v59 = CA_CFDictionaryGetInt64(a3, @"GP0_Max_BW");
    v60 = CA_CFDictionaryGetInt64(a3, @"GP1_Max_BW");
    v61 = CA_CFDictionaryGetInt64(a3, @"GP0_Obs_BW");
    v62 = CA_CFDictionaryGetInt64(a3, @"GP1_Obs_BW");
    atomic_store(COERCE_UNSIGNED_INT64(v61), (a4[12] + 28720));
    atomic_store(COERCE_UNSIGNED_INT64(v59), (a4[12] + 28728));
    atomic_store(COERCE_UNSIGNED_INT64(v62), (a4[12] + 28736));
    atomic_store(COERCE_UNSIGNED_INT64(v60), (a4[12] + 28744));
  }

  v291 = a3;
  v295 = a4;
  v296 = Int64;
  if (BYTE13(xmmword_1ED4E97EC) == 1)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v268 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109888;
      HIDWORD(__p[0]) = a2;
      LOWORD(__p[1]) = 2048;
      *(&__p[1] + 2) = *&v17;
      WORD1(__p[2]) = 2048;
      *(&__p[2] + 4) = *&v16;
      WORD2(__p[3]) = 2048;
      *(&__p[3] + 6) = v16 - v17;
      _os_log_impl(&dword_183AA6000, v268, OS_LOG_TYPE_DEFAULT, "swap %u : requested %.5f, presented at %.5f, diff %.5f\n", __p, 0x26u);
    }
  }

  v63 = *(v53 + 3);
  v64 = v320;
  if (v63 != 0.0)
  {
    v64 = CAHostTimeWithTime(v63);
  }

  v65 = *(v53 + 8);
  v289 = a2;
  if (v65 == 0.0)
  {
    CA::Render::invoke_presentation_handlers(v8 + 12, a2, v323, v320, *(v53 + 196), v16);
    v66 = 0;
    if (!v40)
    {
LABEL_96:
      v324 = 0;
      goto LABEL_99;
    }
  }

  else
  {
    v66 = CACFAbsoluteTimeToContinuousTime(v65);
    v67 = *(v53 + 4);
    CA::Render::invoke_presentation_handlers(v8 + 12, a2, v323, v320, *(v53 + 196), v16);
    if (!v40 && v67 <= (v66 + v64 * 2.1))
    {
      goto LABEL_96;
    }
  }

  kdebug_trace();
  v324 = 1;
LABEL_99:
  v290 = v66;
  v68 = a4[12];
  v69 = *(v53 + 4);
  v333 = 0;
  v334 = 0;
  v335 = 0;
  v70 = *(v8 + 12);
  v71 = (v8 + 104);
  v288 = v64;
  if (v70 == v71)
  {
    v322 = 0;
  }

  else
  {
    v322 = 0;
    v287 = v69;
    v72 = -1;
    v285 = vdupq_n_s64(0x7FFFFFFFuLL);
    v286 = vdupq_n_s64(v69);
    v284 = vdupq_n_s64(0xFFFFFFFF80000000);
    do
    {
      v73 = v70[4];
      v74 = v73[4];
      v75 = atomic_load(v73 + 57);
      if (!v75)
      {
        if (v73[64])
        {
          v76 = 0;
        }

        else
        {
          v76 = getpid();
        }

        v77 = 0;
        atomic_compare_exchange_strong(v73 + 57, &v77, v76);
        if (v77)
        {
          v75 = v77;
        }

        else
        {
          v75 = v76;
        }
      }

      v78 = v70[6];
      *buf = v74;
      __p[0] = buf;
      v79 = std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v68 + 27368), v74);
      v80 = v79[4];
      v81 = *(v70[4] + 44);
      if (v81 != *(v79 + 6))
      {
        *buf = v74;
        __p[0] = buf;
        v82 = std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v68 + 27368), v74);
        v82[3] = v81;
        v82[4] = v323;
      }

      if (v78 < v72)
      {
        v322 = CA::Render::Context::process_path(v70[4]);
        v72 = v78;
      }

      if ((v324 | HIBYTE(xmmword_1ED4E988C)))
      {
        kdebug_trace();
        v85.i64[0] = v78;
        v85.i64[1] = v80;
        v86 = vsubq_s64(v85, v286);
        v87 = vbslq_s8(vcgtq_s64(v285, v86), v86, v285);
        v283 = vmovn_s64(vbslq_s8(vcgtq_s64(v87, v284), v87, v284));
        v88 = CACFAbsoluteTimeToContinuousTime(*(v70[4] + 656));
        v89 = v88 - v287;
        if ((v88 - v287) >= 0x7FFFFFFF)
        {
          v89 = 0x7FFFFFFFLL;
        }

        if (v89 <= 0xFFFFFFFF80000000)
        {
          LODWORD(v89) = 0x80000000;
        }

        if (!v88)
        {
          LODWORD(v89) = 0x80000000;
        }

        v90 = v333;
        if (v333 != v334)
        {
          while (v75 != v90->i32[0])
          {
            v90 += 2;
            if (v90 == v334)
            {
              goto LABEL_134;
            }
          }
        }

        if (v90 == v334)
        {
LABEL_134:
          *(__p + 4) = v283;
          LODWORD(__p[0]) = v75;
          HIDWORD(__p[1]) = v89;
          std::vector<CA::Vec2<double>>::push_back[abi:nn200100](&v333, __p);
        }

        else
        {
          v91 = v90->i32[1];
          if (v91 >= v283)
          {
            v91 = v283;
          }

          v90->i32[1] = v91;
          v92.i32[0] = vdup_lane_s32(v283, 1).u32[0];
          v92.i32[1] = v89;
          v90[1] = vmax_s32(v90[1], v92);
        }
      }

      v83 = v70[1];
      if (v83)
      {
        do
        {
          v84 = v83;
          v83 = *v83;
        }

        while (v83);
      }

      else
      {
        do
        {
          v84 = v70[2];
          v56 = *v84 == v70;
          v70 = v84;
        }

        while (!v56);
      }

      v70 = v84;
    }

    while (v84 != v71);
    v53 = v338;
  }

  v332 = 0;
  v93 = (*(*a4 + 432))(a4);
  CA::WindowServer::IOMFBServer::collect_gpu_data(v93, *(v53 + 1), &v337, &v336, v94);
  v326 = 0u;
  v327 = 0u;
  v328 = v337;
  v329 = v336;
  v330 = *(v53 + 4);
  v331 = v323;
  v95 = *(v53 + 1);
  pthread_mutex_lock((a4 + 66));
  v96 = a4[74];
  v97 = a4[75];
  v98 = v96;
  if (v96 != v97)
  {
    v98 = a4[74];
    do
    {
      if (*(v98 + 6) == v95)
      {
        break;
      }

      v98 += 40;
    }

    while (v98 != v97);
  }

  if (v98 == v97)
  {
    v106 = 0;
    v108 = 0;
    v109 = 0;
    v107 = 0;
    v110 = 0;
  }

  else
  {
    v326 = *v98;
    v99 = v98 + 40;
    v100 = v98 + 40 - v96;
    if (v98 + 40 <= v96)
    {
      __assert_rtn("erase", "x-small-vector.h", 373, "end > begin && erase invalid iterator range");
    }

    v101 = v98[37];
    v102 = *(v98 + 16);
    v103 = v98[34];
    v104 = v98[35];
    v105 = v98[36];
    if (v97 != v99)
    {
      memmove(v96, v98 + 40, v97 - v99 - 2);
      v97 = a4[75];
    }

    v106 = 4 * v101;
    a4[75] = &v97[-v100];
    v107 = v104 << 56;
    v108 = v102 << 32;
    v109 = v103 << 48;
    v110 = v105 << 56;
  }

  pthread_mutex_unlock((a4 + 66));
  v111 = a4[12];
  if (v111)
  {
    (*(*v111 + 2296))(a4[12], *(v53 + 1), &v327, &v327 + 8, &v332);
    LODWORD(v112) = v111[6];
  }

  else
  {
    LODWORD(v112) = 0;
  }

  if (v112 >= 0xFF)
  {
    v112 = 255;
  }

  else
  {
    v112 = v112;
  }

  v113 = *(v53 + 48) | (((v106 | v304 | v332) & 0xFFFF0FFF | ((*(v53 + 196) & 0xF) << 12)) << 32) | (v112 << 48);
  if (v288 >= 0xFFFFFFFF)
  {
    v114 = 0xFFFFFFFFLL;
  }

  else
  {
    v114 = v288;
  }

  v115 = v110 | v108 | v109;
  if (v324)
  {
    if (x_log_get_iomfb_server_stalls(void)::once != -1)
    {
      dispatch_once(&x_log_get_iomfb_server_stalls(void)::once, &__block_literal_global_5_18058);
    }

    v116 = &x_log_get_iomfb_server_stalls(void)::log;
  }

  else
  {
    if (x_log_get_iomfb_server(void)::once != -1)
    {
      dispatch_once(&x_log_get_iomfb_server(void)::once, &__block_literal_global_18053);
    }

    v116 = &x_log_get_iomfb_server(void)::log;
  }

  v117 = (v113 | v107);
  v118 = (v115 | v114);
  v119 = *v116;
  v120 = *(v53 + 4);
  if (v330 <= v120)
  {
    v121 = 0;
  }

  else
  {
    v121 = (v330 - v120) << 32;
  }

  if (v331 <= v120)
  {
    v122 = 0;
  }

  else
  {
    v122 = (v331 - v120);
  }

  if (v328 <= v120)
  {
    v123 = 0;
  }

  else
  {
    v123 = (v328 - v120);
  }

  if (v329 <= v120)
  {
    v124 = 0;
  }

  else
  {
    v124 = (v329 - v120);
  }

  if (v327 <= v120)
  {
    v125 = 0;
  }

  else
  {
    v125 = (v327 - v120);
  }

  if (*(&v327 + 1) <= v120)
  {
    v126 = 0;
  }

  else
  {
    v126 = (DWORD2(v327) - v120);
  }

  if (v326 <= v120)
  {
    v127 = 0;
  }

  else
  {
    v127 = (v326 - v120) << 32;
  }

  if (*(&v326 + 1) <= v120)
  {
    v128 = 0;
  }

  else
  {
    v128 = (DWORD2(v326) - v120);
  }

  if (v126 == v125)
  {
    v129 = 4 * (v124 != v123);
  }

  else
  {
    v129 = (4 * (v124 != v123)) | 2;
  }

  if (v290)
  {
    v130 = v129 + 1;
  }

  else
  {
    v130 = v129;
  }

  v131 = *v53 - 1;
  if (v130 > 3)
  {
    if (v130 > 5)
    {
      if (v130 == 6)
      {
        if (v131 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_249;
        }

        v312 = v117;
        v300 = v118;
        v141 = v122;
        if (!os_signpost_enabled(v119))
        {
          goto LABEL_249;
        }

        v142 = v292 - v120;
        LODWORD(__p[0]) = 134220546;
        if (v292 <= v120)
        {
          v142 = 0;
        }

        *(__p + 4) = v120;
        WORD2(__p[1]) = 2050;
        *(&__p[1] + 6) = v312;
        HIWORD(__p[2]) = 2050;
        __p[3] = v300;
        LOWORD(__p[4]) = 1040;
        *(&__p[4] + 2) = (v334 - v333) & 0xFFFFFFF0;
        HIWORD(__p[4]) = 2098;
        __p[5] = v333;
        LOWORD(v341[0]) = 2048;
        *(v341 + 2) = v141 | v121;
        WORD5(v341[0]) = 2048;
        *(v341 + 12) = v128 | v127;
        WORD2(v341[1]) = 1024;
        *(&v341[1] + 6) = v142;
        WORD5(v341[1]) = 2048;
        *(&v341[1] + 12) = v293;
        WORD2(v341[2]) = 2048;
        *(&v341[2] + 6) = v124 | (v123 << 32);
        HIWORD(v341[2]) = 2048;
        v342 = v126 | (v125 << 32);
      }

      else
      {
        if (v131 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_249;
        }

        v315 = v117;
        v301 = v118;
        v155 = v122;
        if (!os_signpost_enabled(v119))
        {
          goto LABEL_249;
        }

        v156 = v292 - v120;
        LODWORD(__p[0]) = 134220802;
        if (v292 <= v120)
        {
          v156 = 0;
        }

        *(__p + 4) = v120;
        WORD2(__p[1]) = 2050;
        *(&__p[1] + 6) = v315;
        HIWORD(__p[2]) = 2050;
        if (v290 <= v120)
        {
          v157 = 0;
        }

        else
        {
          v157 = v290 - v120;
        }

        __p[3] = v301;
        LOWORD(__p[4]) = 1040;
        *(&__p[4] + 2) = (v334 - v333) & 0xFFFFFFF0;
        HIWORD(__p[4]) = 2098;
        __p[5] = v333;
        LOWORD(v341[0]) = 2048;
        *(v341 + 2) = v155 | v121;
        WORD5(v341[0]) = 2048;
        *(v341 + 12) = v128 | v127;
        WORD2(v341[1]) = 1024;
        *(&v341[1] + 6) = v156;
        WORD5(v341[1]) = 2048;
        *(&v341[1] + 12) = v293;
        WORD2(v341[2]) = 2048;
        *(&v341[2] + 6) = v124 | (v123 << 32);
        HIWORD(v341[2]) = 2048;
        v342 = v126 | (v125 << 32);
        v343 = 1024;
        v344 = v157;
      }
    }

    else if (v130 == 4)
    {
      if (v131 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_249;
      }

      v305 = v121;
      v310 = v117;
      v135 = v118;
      v136 = v122;
      if (!os_signpost_enabled(v119))
      {
        goto LABEL_249;
      }

      v137 = v292 - v120;
      LODWORD(__p[0]) = 134220290;
      if (v292 <= v120)
      {
        v137 = 0;
      }

      *(__p + 4) = v120;
      WORD2(__p[1]) = 2050;
      *(&__p[1] + 6) = v310;
      HIWORD(__p[2]) = 2050;
      __p[3] = v135;
      LOWORD(__p[4]) = 1040;
      *(&__p[4] + 2) = (v334 - v333) & 0xFFFFFFF0;
      HIWORD(__p[4]) = 2098;
      __p[5] = v333;
      LOWORD(v341[0]) = 2048;
      *(v341 + 2) = v136 | v305;
      WORD5(v341[0]) = 2048;
      *(v341 + 12) = v128 | v127;
      WORD2(v341[1]) = 1024;
      *(&v341[1] + 6) = v137;
      WORD5(v341[1]) = 2048;
      *(&v341[1] + 12) = v293;
      WORD2(v341[2]) = 2048;
      *(&v341[2] + 6) = v124 | (v123 << 32);
    }

    else
    {
      if (v131 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_249;
      }

      v307 = v121;
      v313 = v117;
      v147 = v118;
      v148 = v122;
      if (!os_signpost_enabled(v119))
      {
        goto LABEL_249;
      }

      v149 = v292 - v120;
      LODWORD(__p[0]) = 134220546;
      if (v292 <= v120)
      {
        v149 = 0;
      }

      *(__p + 4) = v120;
      WORD2(__p[1]) = 2050;
      v150 = v290 - v120;
      *(&__p[1] + 6) = v313;
      if (v290 <= v120)
      {
        v150 = 0;
      }

      HIWORD(__p[2]) = 2050;
      __p[3] = v147;
      LOWORD(__p[4]) = 1040;
      *(&__p[4] + 2) = (v334 - v333) & 0xFFFFFFF0;
      HIWORD(__p[4]) = 2098;
      __p[5] = v333;
      LOWORD(v341[0]) = 2048;
      *(v341 + 2) = v148 | v307;
      WORD5(v341[0]) = 2048;
      *(v341 + 12) = v128 | v127;
      WORD2(v341[1]) = 1024;
      *(&v341[1] + 6) = v149;
      WORD5(v341[1]) = 2048;
      *(&v341[1] + 12) = v293;
      WORD2(v341[2]) = 2048;
      *(&v341[2] + 6) = v124 | (v123 << 32);
      HIWORD(v341[2]) = 1024;
      LODWORD(v342) = v150;
    }
  }

  else if (v130 > 1)
  {
    if (v130 == 2)
    {
      if (v131 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_249;
      }

      v306 = v121;
      v311 = v117;
      v138 = v118;
      v139 = v122;
      if (!os_signpost_enabled(v119))
      {
        goto LABEL_249;
      }

      v140 = v292 - v120;
      LODWORD(__p[0]) = 134220290;
      if (v292 <= v120)
      {
        v140 = 0;
      }

      *(__p + 4) = v120;
      WORD2(__p[1]) = 2050;
      *(&__p[1] + 6) = v311;
      HIWORD(__p[2]) = 2050;
      __p[3] = v138;
      LOWORD(__p[4]) = 1040;
      *(&__p[4] + 2) = (v334 - v333) & 0xFFFFFFF0;
      HIWORD(__p[4]) = 2098;
      __p[5] = v333;
      LOWORD(v341[0]) = 2048;
      *(v341 + 2) = v139 | v306;
      WORD5(v341[0]) = 2048;
      *(v341 + 12) = v128 | v127;
      WORD2(v341[1]) = 1024;
      *(&v341[1] + 6) = v140;
      WORD5(v341[1]) = 2048;
      *(&v341[1] + 12) = v293;
      WORD2(v341[2]) = 2048;
      *(&v341[2] + 6) = v126 | (v125 << 32);
    }

    else
    {
      if (v131 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_249;
      }

      v308 = v121;
      v314 = v117;
      v151 = v118;
      v152 = v122;
      if (!os_signpost_enabled(v119))
      {
        goto LABEL_249;
      }

      v153 = v292 - v120;
      LODWORD(__p[0]) = 134220546;
      if (v292 <= v120)
      {
        v153 = 0;
      }

      *(__p + 4) = v120;
      WORD2(__p[1]) = 2050;
      v154 = v290 - v120;
      *(&__p[1] + 6) = v314;
      if (v290 <= v120)
      {
        v154 = 0;
      }

      HIWORD(__p[2]) = 2050;
      __p[3] = v151;
      LOWORD(__p[4]) = 1040;
      *(&__p[4] + 2) = (v334 - v333) & 0xFFFFFFF0;
      HIWORD(__p[4]) = 2098;
      __p[5] = v333;
      LOWORD(v341[0]) = 2048;
      *(v341 + 2) = v152 | v308;
      WORD5(v341[0]) = 2048;
      *(v341 + 12) = v128 | v127;
      WORD2(v341[1]) = 1024;
      *(&v341[1] + 6) = v153;
      WORD5(v341[1]) = 2048;
      *(&v341[1] + 12) = v293;
      WORD2(v341[2]) = 2048;
      *(&v341[2] + 6) = v126 | (v125 << 32);
      HIWORD(v341[2]) = 1024;
      LODWORD(v342) = v154;
    }
  }

  else if (v130)
  {
    if (v131 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_249;
    }

    v143 = v118;
    v144 = v122;
    if (!os_signpost_enabled(v119))
    {
      goto LABEL_249;
    }

    v145 = v292 - v120;
    LODWORD(__p[0]) = 134220290;
    if (v292 <= v120)
    {
      v145 = 0;
    }

    v146 = v290 - v120;
    *(__p + 4) = v120;
    WORD2(__p[1]) = 2050;
    if (v290 <= v120)
    {
      v146 = 0;
    }

    *(&__p[1] + 6) = v117;
    HIWORD(__p[2]) = 2050;
    __p[3] = v143;
    LOWORD(__p[4]) = 1040;
    *(&__p[4] + 2) = (v334 - v333) & 0xFFFFFFF0;
    HIWORD(__p[4]) = 2098;
    __p[5] = v333;
    LOWORD(v341[0]) = 2048;
    *(v341 + 2) = v144 | v121;
    WORD5(v341[0]) = 2048;
    *(v341 + 12) = v128 | v127;
    WORD2(v341[1]) = 1024;
    *(&v341[1] + 6) = v145;
    WORD5(v341[1]) = 2048;
    *(&v341[1] + 12) = v293;
    WORD2(v341[2]) = 1024;
    *(&v341[2] + 6) = v146;
  }

  else
  {
    if (v131 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_249;
    }

    v132 = v118;
    v133 = v122;
    if (!os_signpost_enabled(v119))
    {
      goto LABEL_249;
    }

    v134 = v292 - v120;
    LODWORD(__p[0]) = 134220034;
    if (v292 <= v120)
    {
      v134 = 0;
    }

    *(__p + 4) = v120;
    WORD2(__p[1]) = 2050;
    *(&__p[1] + 6) = v117;
    HIWORD(__p[2]) = 2050;
    __p[3] = v132;
    LOWORD(__p[4]) = 1040;
    *(&__p[4] + 2) = (v334 - v333) & 0xFFFFFFF0;
    HIWORD(__p[4]) = 2098;
    __p[5] = v333;
    LOWORD(v341[0]) = 2048;
    *(v341 + 2) = v133 | v121;
    WORD5(v341[0]) = 2048;
    *(v341 + 12) = v128 | v127;
    WORD2(v341[1]) = 1024;
    *(&v341[1] + 6) = v134;
    WORD5(v341[1]) = 2048;
    *(&v341[1] + 12) = v293;
  }

  _os_signpost_emit_unreliably_with_name_impl();
LABEL_249:
  v158 = v295;
  v159 = v295[12];
  v160 = (v159 + 27312);
  v161 = v291;
  if (*(v159 + 29531) != 1)
  {
    goto LABEL_278;
  }

  memset(v341, 0, sizeof(v341));
  memset(__p, 0, sizeof(__p));
  os_unfair_lock_lock((v159 + 408));
  CA::WindowServer::Display::ModeSet::ModeSet(__p, (v159 + 416));
  os_unfair_lock_unlock((v159 + 408));
  v162 = __p[0];
  if (__p[0] == __p[1])
  {
    goto LABEL_276;
  }

  for (i = (__p[0] + 8); i != __p[1]; ++i)
  {
    v164 = *i;
    if (((*v162 >> 54) & 1) == ((*i >> 54) & 1))
    {
      if (((*v162 >> 14) & 0x3FFF) * (*v162 & 0x3FFF) >= ((v164 >> 14) & 0x3FFF) * (v164 & 0x3FFF))
      {
        continue;
      }

LABEL_257:
      v162 = i;
      continue;
    }

    if ((v164 & 0x40000000000000) == 0)
    {
      goto LABEL_257;
    }
  }

  v165 = *v162;
  memset(v339, 0, 44);
  (*(*v159 + 1384))(v339, v159);
  if (x_log_get_display_perf(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_perf(void)::once, &__block_literal_global_9);
  }

  v166 = *(v159 + 24);
  if (v166)
  {
    v167 = x_log_get_display_perf(void)::log;
    if (os_signpost_enabled(x_log_get_display_perf(void)::log))
    {
      v168 = (*(v159 + 29495) & 1) == 0 && (*(v159 + 672) & 0x1C00) != 4096;
      if (LODWORD(v339[0]) > 3)
      {
        v169 = "Unspecified";
      }

      else
      {
        v169 = off_1E6DFA200[LODWORD(v339[0])];
      }

      v170 = v165 & 0x3FFF;
      v171 = (*(v159 + 672) >> 13) - 1;
      if (v171 > 4)
      {
        v172 = "Unspecified";
      }

      else
      {
        v172 = off_1E6DFA220[v171];
      }

      v173 = *(v159 + 29530);
      v174 = *v160;
      v175 = *(v159 + 27316);
      v176 = (v165 >> 14) & 0x3FFF;
      v177 = vcvtd_n_f64_u32((v165 >> 29) & 0x1FFFFFF, 0x10uLL);
      v178 = BYTE4(v339[1]);
      Count = *(v159 + 27336);
      if (Count)
      {
        v180 = v168;
        v181 = v169;
        v316 = v167;
        v182 = v172;
        v309 = BYTE4(v339[1]);
        v302 = v173;
        Count = CFArrayGetCount(Count);
        v173 = v302;
        v178 = v309;
        v172 = v182;
        v167 = v316;
        v169 = v181;
        v168 = v180;
      }

      *buf = 67243010;
      *&buf[4] = v166;
      *&buf[8] = 1026;
      *&buf[10] = v168;
      *&buf[14] = 1026;
      *v346 = v173;
      *&v346[4] = 1026;
      *&v346[6] = v174;
      v347 = 1026;
      v348 = v175;
      v349 = 1026;
      v350 = v170;
      v351 = 1026;
      v352 = v176;
      v353 = 2050;
      v354 = v177;
      v355 = 2082;
      v356 = v169;
      v357 = 1026;
      v358 = v178;
      v359 = 2082;
      v360 = v172;
      v361 = 2050;
      v362 = Count;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v167, OS_SIGNPOST_INTERVAL_END, v166, "HotPlug", "displayId=%{public, name=displayId}u isInternalPanel=%{public, BOOL, name=isInternalPanel}d state=%{public, BOOL, name=state}d vendorId=%{public, name=vendorId}u modelId=%{public, name=modelId}u bestWidth=%{public, name=bestWidth}d bestHeight=%{public, name=bestHeight}d bestRefreshRate=%{public, name=bestRefreshRate}.3f dolbyVision=%{public, name=dolbyVision}s legacyHDMI=%{public, BOOL, name=legacyHDMI}d preferredHdrType=%{public, name=preferredHdrType}s modeCount=%{public, name=modeCount}lu", buf, 0x5Au);
      v161 = v291;
    }
  }

  *(v160 + 2219) = 0;
  v158 = v295;
LABEL_276:
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v341);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(__p[4]);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_278:
  v183 = (v323 - v293) / v320;
  v184 = v183 >= 0.95;
  if (v183 > 1.05)
  {
    v184 = 0;
  }

  if ((v184 & v324) != 1)
  {
    v187 = 0;
    goto LABEL_287;
  }

  v185 = v318 - v294;
  LODWORD(v186) = v298;
  if (v318 == v294)
  {
    if (v185 <= v320)
    {
      v187 = v320;
    }

    else
    {
      v187 = v318 - v294;
    }

    v188 = 16;
  }

  else
  {
    if (v185 <= v320)
    {
      v187 = v320;
    }

    else
    {
      v187 = v318 - v294;
    }

    if (v293 >= *(v53 + 4))
    {
      v188 = 16;
    }

    else
    {
      v188 = 48;
    }
  }

  v189 = *(v53 + 110);
  if (os_variant_uses_ephemeral_storage())
  {
    goto LABEL_295;
  }

  v205 = mach_absolute_time();
  *&v206 = CATimeWithHostTime(v205);
  if (*&CATailspinLastDefaultCheckTimestamp != 0.0 && *&v206 - *&CATailspinLastDefaultCheckTimestamp <= 3600.0)
  {
    if (CATailspinCanGenerate)
    {
      goto LABEL_326;
    }

LABEL_287:
    LODWORD(v186) = v298;
    goto LABEL_295;
  }

  v282 = should_emit_tailspins();
  CATailspinCanGenerate = v282;
  CATailspinLastDefaultCheckTimestamp = v206;
  if (!v282)
  {
    goto LABEL_287;
  }

LABEL_326:
  v207 = v188 & 0xFFFFFFBF | (((v189 >> 1) & 1) << 6);
  v208 = *&CATailspinMinimumTimestamp == 0.0;
  if (*&v206 >= *&CATailspinMinimumTimestamp)
  {
    v208 = 1;
  }

  LODWORD(v186) = v298;
  if (v207 > 0x1F || !v208 || *&v206 - *&CATailspinLastRequestTimestamp < 1800.0)
  {
    goto LABEL_295;
  }

  v317 = v207;
  {
    operator new();
  }

  v209 = CATailspinGlitchHistory(void)::a;
  v210 = CAHostTimeWithTime(1.0);
  v211 = *(v209 + 32);
  v212 = (v211 >> 5) & 0x7FFFFFFFFFFFFF8;
  v213 = *(v209 + 8);
  v214 = *(v209 + 16);
  v215 = (v213 + v212);
  v216 = v211 >> 8;
  v325 = v213;
  if (v214 == v213)
  {
    v217 = 0;
    v319 = (v209 + 40);
    goto LABEL_353;
  }

  v217 = *v215 + 16 * v211;
  v319 = (v209 + 40);
  v218 = *(v209 + 40) + v211;
  v219 = (v218 >> 5) & 0x7FFFFFFFFFFFFF8;
  if (*(v325 + v219) + 16 * v218 == v217)
  {
    goto LABEL_353;
  }

  v220 = (*(v209 + 40) + v211) | (32 * (v219 - v212));
  v221 = v220 - *(v209 + 32);
  if (v220 == *(v209 + 32))
  {
    v230 = (v325 + 8 * v216);
  }

  else
  {
    v222 = v323 - v210;
    do
    {
      v223 = v221 >> 1;
      if (v221 == 1)
      {
        v224 = v215;
        v225 = v217;
      }

      else
      {
        v226 = v223 + ((v217 - *v215) >> 4);
        if (v226 < 1)
        {
          v227 = 255 - v226;
          LOBYTE(v226) = ~(-1 - v226);
          v224 = &v215[-(v227 >> 8)];
        }

        else
        {
          v224 = &v215[v226 >> 8];
        }

        v225 = (*v224 + 16 * v226);
      }

      if (*v225 >= v222)
      {
        v228 = 1;
      }

      else
      {
        v228 = 255;
      }

      if (*v225 != v222 && v228 >= 0x80)
      {
        v217 = (v225 + 2);
        if ((v225 - *v224 + 16) == 4096)
        {
          v229 = v224[1];
          ++v224;
          v217 = v229;
        }

        v223 = v221 + ~v223;
        v215 = v224;
      }

      v221 = v223;
    }

    while (v223);
LABEL_353:
    v230 = (v325 + 8 * v216);
    if (v214 == v325)
    {
      v231 = 0;
      goto LABEL_358;
    }
  }

  v231 = *v230 + 16 * v211;
LABEL_358:
  if (v217 == v231)
  {
    v232 = 0;
  }

  else
  {
    v232 = ((v217 - *v215) >> 4) + 32 * (v215 - v230) - ((v231 - *v230) >> 4);
  }

  if (v214 == v325)
  {
    v233 = 0;
  }

  else
  {
    v233 = *v230 + 16 * v211;
  }

  if (v231 == v233)
  {
    v234 = 0;
  }

  else
  {
    v234 = ((v231 - *v230) >> 4) - ((v233 - *v230) >> 4);
  }

  v235 = v230;
  v236 = std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long>*,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long>**,long,256l>::operator+[abi:nn200100](v230, v233, v234);
  v238 = *(v209 + 40);
  if (v232 < 1)
  {
    v161 = v291;
  }

  else
  {
    v239 = v236;
    v303 = v233;
    v321 = v237;
    v240 = std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long>*,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long>**,long,256l>::operator+[abi:nn200100](v236, v237, v232);
    if (v234 <= (v238 - v232) >> 1)
    {
      if (v239 == v235)
      {
        memset(__p, 0, 24);
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,unsigned long long> *,std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long> *,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long> **,long,256l>,0>(__p, v233, v321, v240, v241);
        v161 = v291;
      }

      else
      {
        v245 = *v239;
        v244 = v239 - 1;
        memset(__p, 0, 24);
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,unsigned long long> *,std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long> *,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long> **,long,256l>,0>(__p, v245, v321, v240, v241);
        v246 = __p[1];
        v247 = __p[2];
        if (v244 == v235)
        {
          v161 = v291;
        }

        else
        {
          v161 = v291;
          do
          {
            v248 = *v244--;
            memset(__p, 0, 24);
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,unsigned long long> *,std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long> *,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long> **,long,256l>,0>(__p, v248, v248 + 4096, v246, v247);
            v246 = __p[1];
            v247 = __p[2];
          }

          while (v244 != v235);
        }

        v259 = *v244;
        memset(__p, 0, 24);
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,unsigned long long> *,std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long> *,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long> **,long,256l>,0>(__p, v303, v259 + 4096, v246, v247);
      }

      *(v209 + 40) -= v232;
      while (1)
      {
        v211 = *(v209 + 32) + v232;
        *(v209 + 32) = v211;
        if (v211 < 0x200)
        {
          break;
        }

        operator delete(**(v209 + 8));
        *(v209 + 8) += 8;
        v232 = -256;
      }

      v238 = *(v209 + 40);
    }

    else
    {
      v242 = (v325 + 8 * ((v211 + v238) >> 8));
      if (v214 == v325)
      {
        v243 = 0;
      }

      else
      {
        v243 = *v242 + 16 * (v211 + v238);
      }

      if (v240 == v242)
      {
        memset(__p, 0, 24);
        v249 = v243;
        v250 = v239;
        v251 = v321;
      }

      else
      {
        v253 = (v240 + 1);
        v252 = *v240;
        memset(__p, 0, 24);
        v254 = (v252 + 4096);
        v250 = v239;
        v251 = v321;
        while (1)
        {
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,unsigned long long> *,std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long> *,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long> **,long,256l>,0>(__p, v241, v254, v250, v251);
          v250 = __p[1];
          v251 = __p[2];
          if (v253 == v242)
          {
            break;
          }

          v255 = *v253++;
          v241 = v255;
          memset(__p, 0, 24);
          v254 = v255 + 4096;
        }

        v241 = *v253;
        memset(__p, 0, 24);
        v249 = v243;
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,unsigned long long> *,std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long> *,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long> **,long,256l>,0>(__p, v241, v249, v250, v251);
      v238 = *(v209 + 40) - v232;
      *(v209 + 40) = v238;
      v256 = *(v209 + 16);
      v161 = v291;
      while (1)
      {
        v257 = *(v209 + 8);
        v258 = v256 == v257 ? 0 : 32 * (v256 - v257) - 1;
        v211 = *(v209 + 32);
        if (v258 - (v238 + v211) < 0x200)
        {
          break;
        }

        operator delete(*(v256 - 8));
        v256 = *(v209 + 16) - 8;
        *(v209 + 16) = v256;
        v238 = *(v209 + 40);
      }
    }
  }

  v260 = *(v209 + 16);
  v261 = *(v209 + 8);
  if (v260 == v261)
  {
    v262 = 0;
  }

  else
  {
    v262 = 32 * (v260 - v261) - 1;
  }

  v263 = v238 + v211;
  if (v262 == v238 + v211)
  {
    if (v211 < 0x100)
    {
      v264 = *(v209 + 24);
      v265 = v264 - *v209;
      if (v260 - v261 < v265)
      {
        operator new();
      }

      v266 = v265 >> 2;
      if (v264 == *v209)
      {
        v267 = 1;
      }

      else
      {
        v267 = v266;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Display::DisplayLinkItem *>>(v267);
    }

    *(v209 + 32) = v211 - 256;
    __p[0] = *v261;
    *(v209 + 8) = v261 + 1;
    std::__split_buffer<std::pair<unsigned long long,unsigned long long> *,std::allocator<std::pair<unsigned long long,unsigned long long> *>>::emplace_back<std::pair<unsigned long long,unsigned long long> *&>(v209, __p);
    v211 = *(v209 + 32);
    v238 = *(v209 + 40);
    v261 = *(v209 + 8);
    v260 = *(v209 + 16);
    v263 = v211 + v238;
  }

  v269 = (*(v261 + ((v263 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v263);
  *v269 = v323;
  v269[1] = v187;
  *(v209 + 40) = v238 + 1;
  if (v260 == v261)
  {
    v277 = 0;
    v158 = v295;
LABEL_423:
    v186 = v298;
    goto LABEL_424;
  }

  v270 = &v261[v211 >> 8];
  v271 = *v270;
  v272 = *v270 + 16 * v211;
  v273 = *(v261 + (((*v319 + v211) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*v319 + v211);
  v158 = v295;
  if (v272 == v273)
  {
    v277 = 0;
    goto LABEL_423;
  }

  v274 = 0;
  v186 = v298;
  do
  {
    v275 = v272 + 16;
    if (v272 + 16 - v271 == 4096)
    {
      v276 = v270[1];
      ++v270;
      v271 = v276;
      v275 = v276;
    }

    v274 += *(v272 + 8);
    v272 = v275;
  }

  while (v275 != v273);
  v277 = v274;
LABEL_424:
  v278 = (CATimeWithHostTime(v277) * 1000.0);
  if (arc4random_uniform(0xFAu) <= v278 && (![objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v322 + 7), "lastPathComponent"), "isEqual:", @"SpringBoard"}] || arc4random_uniform(0x64u) >= 0x55))
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v279 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_INFO))
    {
      v280 = *v319;
      LODWORD(__p[0]) = 134218240;
      *(__p + 4) = v280;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v278;
      _os_log_impl(&dword_183AA6000, v279, OS_LOG_TYPE_INFO, "Diagnostics (tailspin) allowed for %zu glitches with %d ms glitch time.", __p, 0x12u);
    }

    CATailspinLastRequestTimestamp = v206;
    if (CADeviceHasInternalBuild::once != -1)
    {
      dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
    }

    if (CADeviceHasInternalBuild::internal)
    {
      memset(__p, 0, 24);
      *buf = xmmword_183E21570;
      *v346 = __p;
      CA::Render::post_notification(0x2Fu, 0, buf, 0);
      v281 = x_stream_finish(__p);
      if (__p[0])
      {
        free(__p[0]);
      }

      CATailspinEmit(v289, v186, v317, (v322 + 7), v281);
      if (v281)
      {
        free(v281);
      }
    }

    else
    {
      CATailspinEmit(v289, v186, v317, (v322 + 7), 0);
    }
  }

LABEL_295:
  *&xmmword_1EA851010 = xmmword_1EA851010 + v187;
  __p[0] = cf;
  __p[1] = 0;
  __p[2] = 0;
  __p[3] = cf;
  *&v190 = -1;
  *(&v190 + 1) = -1;
  *&__p[4] = v190;
  v341[0] = v190;
  if (cf)
  {
    CFRetain(cf);
  }

  CA::IOMobileFramebuffer::swap_wait(__p);
  v53 = v338;
  v191 = *(v338 + 9);
  v192 = v338 + 80;
  if (v191 != v338 + 80)
  {
    v193 = v16 - v17;
    do
    {
      v194 = *(v191 + 4);
      if (*(v194 + 12) != 25)
      {
        __assert_rtn("frame_info_callback", "windowserver-iomfb-server.cpp", 1835, "obj->type () == Render::kTypeImageQueue");
      }

      v195 = *(v158 + 12);
      v196 = 0.0;
      if ((v195[160] & 0x10) != 0)
      {
        v196 = (*(*v195 + 776))(v195);
      }

      CA::Render::ImageQueue::did_display(v194, v186, v16, v193, v196);
      v197 = *(v191 + 1);
      if (v197)
      {
        do
        {
          v198 = v197;
          v197 = *v197;
        }

        while (v197);
      }

      else
      {
        do
        {
          v198 = *(v191 + 2);
          v56 = *v198 == v191;
          v191 = v198;
        }

        while (!v56);
      }

      v191 = v198;
    }

    while (v198 != v192);
  }

  v199 = CATimeWithHostTime(v296 - *(v158 + 170));
  v200 = fmax(round(v199 / (*(**(v158 + 12) + 776))(*(v158 + 12))) + -1.0, 0.0);
  v201 = *(v158 + 12);
  v202 = 240;
  if (v200 < 0xF0)
  {
    v202 = v200;
  }

  ++*(v201[3196] + 8 * v202);
  if (v200 + 1 == (*(*v201 + 784))())
  {
    v203 = *(v53 + 197) & 0xF;
    if (v203 >= 9)
    {
      v203 = 9;
    }

    v204 = *(v158 + 12) + 4 * v203;
    ++*(v204 + 25616);
  }

  *(v158 + 170) = v296;
  CA::WindowServer::IOMFBServer::forward_frame_info_callback(v158, v161, v53, v337, v336);
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (v333)
  {
    operator delete(v333);
  }

LABEL_318:
  v338 = 0;
  v8 = v53;
  if (v53)
  {
LABEL_319:
    CA::WindowServer::IOMFBDisplay::FrameInfo::~FrameInfo(v8);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v8);
  }
}

void CA::WindowServer::IOMFBDisplay::collect_frame_info(CA::WindowServer::IOMFBDisplay::FrameInfo **this, uint64_t a2, unsigned int a3)
{
  *this = 0;
  os_unfair_lock_lock((a2 + 26072));
  v6 = *(a2 + 26080);
  if (v6 == *(a2 + 26088))
  {
    v15 = 0;
  }

  else
  {
    do
    {
      v7 = **v6;
      v8 = v7 <= a3;
      if (!a3)
      {
        v8 = 1;
      }

      if (v7 == a3)
      {
        v9 = *this;
        *this = *v6;
        *v6 = v9;
      }

      if (v8)
      {
        v10 = v6 + 1;
        v11 = *(a2 + 26088);
        if (v6 + 1 == v11)
        {
          v12 = v6;
        }

        else
        {
          do
          {
            v12 = v10;
            v13 = v10 - 1;
            v14 = *v10;
            *v10++ = 0;
            std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](v13, v14);
          }

          while (v10 != v11);
          v11 = *(a2 + 26088);
        }

        while (v11 != v12)
        {
          std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](--v11, 0);
        }

        *(a2 + 26088) = v12;
      }

      else
      {
        ++v6;
        v12 = *(a2 + 26088);
      }
    }

    while (v6 != v12);
    v15 = *this != 0;
  }

  os_unfair_lock_unlock((a2 + 26072));
  if (!v15)
  {
    if (a3)
    {
      v16 = (a2 + 26280);
      v17 = atomic_load((a2 + 26280));
      if (v17 == a3)
      {
        pthread_mutex_lock((a2 + 26168));
        v18 = atomic_load(v16);
        if (v18 == a3)
        {
          do
          {
            pthread_cond_wait((a2 + 26232), (a2 + 26168));
            v19 = atomic_load(v16);
          }

          while (v19 == a3);
        }

        pthread_mutex_unlock((a2 + 26168));
        os_unfair_lock_lock((a2 + 26072));
        v20 = *(a2 + 26080);
        v21 = *(a2 + 26088);
        if (v20 != v21)
        {
          while (**v20 != a3)
          {
            if (++v20 == v21)
            {
              goto LABEL_34;
            }
          }
        }

        if (v20 != v21)
        {
          v22 = *this;
          *this = *v20;
          *v20 = v22;
          v23 = v20 + 1;
          v24 = *(a2 + 26088);
          if (v20 + 1 != v24)
          {
            do
            {
              v20 = v23;
              v25 = v23 - 1;
              v26 = *v23;
              *v23++ = 0;
              std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](v25, v26);
            }

            while (v23 != v24);
            v24 = *(a2 + 26088);
          }

          while (v24 != v20)
          {
            std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](--v24, 0);
          }

          *(a2 + 26088) = v20;
        }

LABEL_34:
        os_unfair_lock_unlock((a2 + 26072));
      }
    }
  }

  if ((*(a2 + 640) & 0x40) != 0)
  {
    if (a3)
    {
      v27 = *(a2 + 336);
      if (v27)
      {

        CA::WindowServer::FlipBook::swap_completed(v27, a3);
      }
    }
  }
}

void std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](CA::WindowServer::IOMFBDisplay::FrameInfo **a1, CA::WindowServer::IOMFBDisplay::FrameInfo *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    CA::WindowServer::IOMFBDisplay::FrameInfo::~FrameInfo(v2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v3 = malloc_zone;

    malloc_zone_free(v3, v2);
  }
}

void CA::WindowServer::FlipBook::swap_completed(os_unfair_lock_s *this, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 2);
  v4 = *&this[34]._os_unfair_lock_opaque;
  if (v4 != *&this[36]._os_unfair_lock_opaque)
  {
    do
    {
      if (*(v4 + 60) >= a2)
      {
        break;
      }

      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v5 = x_log_get_flipbook(void)::log;
      if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        ID = IOSurfaceGetID(*v4);
        v7 = *(v4 + 60);
        *buf = 67109632;
        v16 = a2;
        v17 = 1024;
        v18 = ID;
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, "swap %u completed, recycling surface 0x%x from swap %u", buf, 0x14u);
      }

      CA::WindowServer::FlipBook::reuse_frame(this, v4);
      v8 = *&this[36]._os_unfair_lock_opaque;
      if (v4 + 128 == v8)
      {
        v10 = v4;
      }

      else
      {
        v9 = v4;
        do
        {
          v10 = v9 + 128;
          v11 = *(v9 + 144);
          *v9 = *(v9 + 128);
          *(v9 + 16) = v11;
          v12 = *(v9 + 176);
          *(v9 + 32) = *(v9 + 160);
          *(v9 + 48) = v12;
          v13 = *(v9 + 208);
          *(v9 + 64) = *(v9 + 192);
          *(v9 + 80) = v13;
          *(v9 + 120) = *(v9 + 248);
          *(v9 + 112) = *(v9 + 240);
          v14 = v9 + 256;
          *(v9 + 96) = *(v9 + 224);
          v9 += 128;
        }

        while (v14 != v8);
      }

      *&this[36]._os_unfair_lock_opaque = v10;
    }

    while (v4 != v10);
  }

  CA::WindowServer::FlipBook::collect(this);
  os_unfair_lock_unlock(this + 2);
}

void CA::WindowServer::FlipBook::collect(CA::WindowServer::FlipBook *this)
{
  v1 = *(this + 15);
  v2 = ((*(this + 18) - *(this + 17)) >> 7) + ((v1 - *(this + 14)) >> 7) + ((*(this + 12) - *(this + 11)) >> 7);
  v3 = *(this + 9);
  v4 = v2 - v3;
  if (v2 > v3)
  {
    do
    {
      if (*(this + 14) == v1)
      {
        break;
      }

      *(this + 42) -= *(v1 - 16);
      CA::WindowServer::FlipBook::free_surface(this, (v1 - 128));
      v1 = *(this + 15) - 128;
      *(this + 15) = v1;
      --v4;
    }

    while (v4);
  }
}

uint64_t CA_CFDictionaryGetInt64(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  return CA_CFInt64Value(Value);
}

uint64_t CA_CFInt64Value(const void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    return *MEMORY[0x1E695E4C0] != a1;
  }

  if (v2 != CFNumberGetTypeID())
  {
    return 0;
  }

  v4[0] = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, v4);
  return v4[0];
}

void CA::WindowServer::IOMFBDisplay::add_timing(CA::WindowServer::IOMFBDisplay *this, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 6576);
  CA::WindowServer::IOMFBDisplay::initialize_timings(this);
  v4 = *(this + 3290);
  if (v4)
  {
    v5 = atomic_load(v4);
    if (v5 & 1) != 0 && ((*(this + 336) & 0x1C00) == 0 || (*(this + 82) & 0x8000000000000000) == 0 || (BYTE2(xmmword_1ED4E98AC)))
    {
      v6 = mach_absolute_time();
      v7 = v6;
      if (v6 < a2)
      {
        v39 = v6;
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v37 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = a2;
          v43 = 2048;
          v44 = v39;
          _os_log_error_impl(&dword_183AA6000, v37, OS_LOG_TYPE_ERROR, "unexpected presentation time %llu, now %llu", buf, 0x16u);
        }
      }

      else if (*(this + 3295))
      {
        v8 = atomic_load((*(this + 3290) + 32));
        *buf = v8;
        if (v8)
        {
          CA::WindowServer::IOMFBDisplay::flush_timings_locked(this, v6, buf);
        }

        v9 = *(this + 3295);
        v10 = (*(*this + 776))(this, v7);
        v11 = CAHostTimeWithTime(v10);
        v12 = *(this + 3295);
        if (v12 < a2 && (v13 = a2 - v9, (v14 = vcvtad_u64_f64((a2 - v9) / v11)) != 0))
        {
          v15 = v13 / v14;
          v16 = v11 - v13 / v14;
          v17 = v13 / v14 >= v11;
          v18 = v13 / v14 - v11;
          if (v18 != 0 && v17)
          {
            v16 = v18;
          }

          v19 = *(this + 3294) + v14;
          *(this + 3294) = v19;
          *(this + 3295) = a2;
          v20 = *(this + 3290);
          if (*buf)
          {
            v21 = atomic_load((v20 + 64));
            v22 = v19 - v21;
            v23 = atomic_load((*(this + 3290) + 72));
            v24 = v22 + v23;
            v20 = *(this + 3290);
            add = atomic_fetch_add((v20 + 28), 1u);
            atomic_store(*(this + 3294), (v20 + 64));
            atomic_store(v24, (v20 + 72));
          }

          else
          {
            add = atomic_fetch_add((v20 + 28), 1u);
            atomic_store(*(this + 3294), (v20 + 64));
          }

          atomic_store(a2, (v20 + 80));
          atomic_store(add + 2, (v20 + 28));
          if (byte_1ED4E9847 == 1)
          {
            v38 = v16;
            v40 = v11;
            CA::WindowServer::IOMFBDisplay::emit_server_timing_update_locked(this);
            v16 = v38;
            v11 = v40;
          }

          if (v16 > v11 >> 4)
          {
            *(this + 6582) = 0;
            *(this + 3292) = 0;
          }

          else
          {
            v26 = *(this + 6582);
            v27 = *(this + 3292);
            if (v26 > 0xFF)
            {
              v28 = v27 - (v27 >> 8) + v15;
              v30 = v28 >> 8;
            }

            else
            {
              v28 = v27 + v15;
              v29 = v26 + 1;
              *(this + 6582) = v29;
              v30 = v28 / v29;
            }

            *(this + 3292) = v28;
            atomic_store(v30, (*(this + 3290) + 16));
            *(this + 3293) = v15;
            v31 = *(this + 3296);
            if (v31)
            {
              *(this + 3296) = v31 - 1;
            }

            if ((*(this + 336) & 0x1C00) == 0)
            {
              v32 = (*(*this + 784))(this);
              v33 = atomic_load((*(this + 3290) + 16));
              v34 = v33 * v32;
              v35 = *(this + 3294);
              if (CA::OGL::AsynchronousDispatcher::dispatcher(void)::once[0] != -1)
              {
                v41 = *(this + 3294);
                dispatch_once(CA::OGL::AsynchronousDispatcher::dispatcher(void)::once, &__block_literal_global_1819);
                v35 = v41;
              }

              v36 = CA::OGL::AsynchronousDispatcher::dispatcher(void)::dispatcher;
              *(CA::OGL::AsynchronousDispatcher::dispatcher(void)::dispatcher + 72) = v35;
              *(v36 + 80) = a2 + (v34 >> 1);
              *(v36 + 88) = v34;
            }

            __dmb(0xBu);
          }
        }

        else if (v12 > a2 + (v11 >> 14))
        {
          *(this + 1647) = 0u;
        }
      }

      else
      {
        *(this + 3295) = a2;
      }
    }
  }

  os_unfair_lock_unlock(this + 6576);
}

void CA::Render::invoke_presentation_handlers(void *a1, int a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v46[0] = 0;
  v46[1] = 0;
  v6 = a1 + 1;
  v7 = *a1;
  if (*a1 == a1 + 1)
  {
    v43 = 0;
  }

  else
  {
    do
    {
      if (*(v7 + 40) == 1)
      {
        v11 = *(v7 + 11);
        v12 = v7[4];
        v13 = atomic_load((v12 + 228));
        if (!v13)
        {
          if (*(v12 + 256))
          {
            v14 = 0;
          }

          else
          {
            v14 = getpid();
          }

          v15 = 0;
          atomic_compare_exchange_strong((v12 + 228), &v15, v14);
          if (v15)
          {
            v13 = v15;
          }

          else
          {
            v13 = v14;
          }
        }

        v16 = v46[0];
        if (!v46[0])
        {
          goto LABEL_38;
        }

        v17 = v46;
        do
        {
          v18 = *(v16 + 28);
          v19 = v18 == v13;
          if (v18 >= v13)
          {
            v20 = 1;
          }

          else
          {
            v20 = -1;
          }

          if (v19)
          {
            v21 = *(v16 + 32);
            v22 = v21 == v11;
            v20 = v21 >= v11 ? 1 : -1;
            if (v22)
            {
              v20 = 0;
            }
          }

          v23 = v20 & 0x80;
          v19 = v23 == 0;
          v24 = v23 >> 4;
          if (v19)
          {
            v17 = v16;
          }

          v16 = *(v16 + v24);
        }

        while (v16);
        if (v46 == v17)
        {
          goto LABEL_38;
        }

        v25 = *(v17 + 7);
        v26 = v13 == v25;
        if (v13 >= v25)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (v26)
        {
          v28 = *(v17 + 8);
          v29 = v11 == v28;
          if (v11 >= v28)
          {
            v30 = 1;
          }

          else
          {
            v30 = -1;
          }

          if (v29)
          {
            v27 = 0;
          }

          else
          {
            v27 = v30;
          }
        }

        if (v27 < 0)
        {
LABEL_38:
          v31 = *(v7[4] + 260);
          v48 = *MEMORY[0x1E69E99E0];
          v49 = v11;
          v50 = a2;
          v51 = a6;
          v52 = a3;
          v53 = a4;
          v54 = a5;
          v55 = 0;
          v56 = 0;
          *&msg.msgh_bits = 19;
          msg.msgh_voucher_port = 0;
          msg.msgh_id = 40407;
          msg.msgh_remote_port = v31;
          msg.msgh_local_port = 0;
          if (MEMORY[0x1EEE9AC50])
          {
            voucher_mach_msg_set(&msg);
          }

          if ((mach_msg(&msg, 17, 0x44u, 0, 0, 0, 0) - 268435459) <= 1)
          {
            if ((msg.msgh_bits & 0x1F00) == 0x1100)
            {
              mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
            }

            mach_msg_destroy(&msg);
          }

          v32 = v46[0];
          if (!v46[0])
          {
LABEL_62:
            operator new();
          }

          while (1)
          {
            v33 = v32;
            v34 = *(v32 + 7);
            if (v13 == v34)
            {
              v35 = *(v33 + 8);
              if (v11 < v35)
              {
                goto LABEL_55;
              }

              v36 = v35 == v11;
              if (v35 >= v11)
              {
                v37 = 1;
              }

              else
              {
                v37 = -1;
              }

              if (v36)
              {
                v37 = 0;
              }

              if ((v37 & 0x80) == 0)
              {
                break;
              }
            }

            else
            {
              if (v13 < v34)
              {
LABEL_55:
                v32 = *v33;
                if (!*v33)
                {
                  goto LABEL_62;
                }

                continue;
              }

              if (v34 >= v13)
              {
                v38 = 1;
              }

              else
              {
                v38 = -1;
              }

              if ((v38 & 0x80) == 0)
              {
                break;
              }
            }

            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_62;
            }
          }
        }

        v39 = v7[4];
        pthread_mutex_lock((v39 + 72));
        v40 = v7[4];
        if (*(v40 + 292) && *(v40 + 296) <= *(v7 + 11))
        {
          *(v40 + 292) = 0;
        }

        pthread_mutex_unlock((v39 + 72));
      }

      v41 = v7[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v7[2];
          v19 = *v42 == v7;
          v7 = v42;
        }

        while (!v19);
      }

      v7 = v42;
    }

    while (v42 != v6);
    v43 = v46[0];
  }

  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v43);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::PreviousMCTRecord>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *X::small_vector_base<CA::OGL::MetalContext::ExecutionInterval>::erase(void *result, char *__dst)
{
  v2 = result;
  v3 = result[1];
  if (v3 != __dst + 24)
  {
    result = memmove(__dst, __dst + 24, v3 - (__dst + 24));
    v3 = v2[1];
  }

  if (v3 <= *v2)
  {
    __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
  }

  v2[1] = v3 - 24;
  return result;
}

_DWORD *CA::Render::Context::process_path(CA::Render::Context *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v9 = *MEMORY[0x1E69E9840];
  result = *(v1 + 232);
  if (!result)
  {
    bzero(buffer, 0x1000uLL);
    v3 = atomic_load((v1 + 228));
    if (!v3)
    {
      v3 = *(v1 + 256) ? 0 : getpid();
      v4 = 0;
      atomic_compare_exchange_strong((v1 + 228), &v4, v3);
      if (v4)
      {
        v3 = v4;
      }
    }

    v5 = proc_pidpath(v3, buffer, 0x1000u);
    result = CA::Render::String::new_string(v5, buffer, v6);
    v7 = *(v1 + 232);
    *(v1 + 232) = result;
    if (v7)
    {
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v7 + 16))(v7);
      }

      return *(v1 + 232);
    }
  }

  return result;
}

BOOL CA::OGL::MetalContext::collect_timing_info(CA::OGL::MetalContext *this, uint64_t a2, unint64_t *a3, unint64_t *a4, unsigned int a5)
{
  pthread_mutex_lock((this + 4768));
  v10 = *(this + 604);
  for (i = *(this + 605); v10 != i; v10 += 24)
  {
    if (*(v10 + 16) == (a5 | (a2 << 32)))
    {
      break;
    }
  }

  if (v10 != i)
  {
    *a3 = *v10;
    *a4 = *(v10 + 8);
    X::small_vector_base<CA::OGL::MetalContext::ExecutionInterval>::erase(this + 604, v10);
    if (a5)
    {
      v12 = *(this + 632);
      v13 = *(this + 633);
      if (v12 != v13)
      {
        while (*v12 != a2)
        {
          v12 += 4;
          if (v12 == v13)
          {
            goto LABEL_12;
          }
        }
      }

      if (v12 != v13)
      {
        X::small_vector_base<unsigned int>::erase(this + 632, v12);
      }
    }
  }

LABEL_12:
  pthread_mutex_unlock((this + 4768));
  return v10 != i;
}

void *CA::WindowServer::IOMFBServer::collect_gpu_data(void *this, CA::OGL::Renderer *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9[0] = 0;
  if (this)
  {
    this = (*(**this + 1184))(*this, a2, v9, &v8, 0);
    if (this)
    {
      v7 = v8;
      *a3 = v9[0];
      *a4 = v7;
    }
  }

  return this;
}

BOOL CA::WindowServer::IOMFBDisplay::collect_postprocess_timing_info(CA::WindowServer::IOMFBDisplay *this, int a2, unint64_t *a3, unint64_t *a4, BOOL *a5)
{
  pthread_mutex_lock((this + 29136));
  v10 = *(this + 3650);
  v11 = *(this + 3651);
  v12 = v10;
  if (v10 != v11)
  {
    v12 = *(this + 3650);
    do
    {
      if (*(v12 + 4) == a2)
      {
        break;
      }

      v12 += 24;
    }

    while (v12 != v11);
  }

  if (v12 != v11)
  {
    v13 = v12[20];
    *a5 = v13;
    if (v13 == 1)
    {
      *a3 = *v12;
      *a4 = *(v12 + 1);
    }

    else
    {
      v14 = *(this + 41);
      if (v14)
      {
        (*(**v14 + 1184))(*v14, *(v12 + 4), a3, a4, 1);
        v10 = *(this + 3650);
      }
    }

    v15 = v12 + 24;
    v16 = v12 + 24 - v10;
    if (v12 + 24 <= v10)
    {
      __assert_rtn("erase", "x-small-vector.h", 373, "end > begin && erase invalid iterator range");
    }

    v17 = *(this + 3651);
    if (v17 != v15)
    {
      memmove(v10, v12 + 24, v17 - v15);
      v17 = *(this + 3651);
    }

    *(this + 3651) = &v17[-v16];
  }

  pthread_mutex_unlock((this + 29136));
  return v12 != v11;
}

void CA::WindowServer::IOMFBServer::forward_frame_info_callback(CA::WindowServer::IOMFBServer *this, const __CFDictionary *a2, const __CFDictionary *a3, const CA::WindowServer::IOMFBDisplay::FrameInfo *a4, uint64_t a5)
{
  Int64 = CA_CFDictionaryGetInt64(a2, @"Presentation_time");
  v11 = CA_CFDictionaryGetInt64(a2, @"Requested_presentation");
  v12 = CA_CFDictionaryGetInt64(a2, @"Min_FrameTime");
  v13 = CA_CFDictionaryGetInt64(a2, @"Max_FrameTime");
  v14 = CA_CFDictionaryGetInt64(a2, @"Vbl_FrameTime");
  v15 = v14;
  v46 = a5;
  v47 = a4;
  if (*(*(this + 12) + 29549) == 1)
  {
    mach_get_times();
    v16 = v12;
    if (!v12)
    {
      v16 = 0;
    }

    v51 = v16;
    v17 = v13;
    if (!v13)
    {
      v17 = 0;
    }

    v48 = v11;
    v49 = v17;
    v45 = v15;
  }

  else
  {
    v49 = v13;
    v51 = v12;
    v45 = v14;
    v48 = v11;
  }

  v19 = *(a3 + 15);
  v18 = *(a3 + 16);
  v53 = a3;
  if (v19 == v18)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = 0;
    v21 = MEMORY[0x1E695E9D8];
    v22 = MEMORY[0x1E695E9E8];
    do
    {
      v23 = *v19;
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, v21, v22);
        CA_CFDictionarySetLongLong(Mutable, @"brightnessTransactionPresentationTime", Int64);
      }

      (*(v23 + 16))(v23, Mutable);
      ++v19;
    }

    while (v19 != v18);
  }

  os_unfair_lock_lock(this + 82);
  v24 = *(this + 1);
  os_unfair_lock_unlock(this + 82);
  if (v24 || (BYTE6(xmmword_1ED4E97EC) & 1) != 0)
  {
    if (v51)
    {
      v25 = v51 - Int64;
    }

    else
    {
      v25 = 0;
    }

    v26 = v49 - Int64;
    if (!v49)
    {
      v26 = 0;
    }

    v50 = v26;
    v52 = v25;
    Int = CA_CFDictionaryGetInt(a2, @"BrightOut_NoScale");
    v43 = CA_CFDictionaryGetInt(a2, @"Bright_ScalingFactor");
    v27 = CA_CFDictionaryGetInt(a2, @"Frame_APCE");
    Bool = CA_CFDictionaryGetBool(a2, @"RTPLC_RT_Trig");
    v29 = CA_CFDictionaryGetBool(a2, @"RTPLC_Bright_Capped");
    if (CADeviceSupportsRTPLC::once[0] != -1)
    {
      dispatch_once(CADeviceSupportsRTPLC::once, &__block_literal_global_356);
    }

    v30 = v53;
    v31 = vcvtd_n_f64_s32(v27, 0x10uLL);
    if (CADeviceSupportsRTPLC::rtplc == 1)
    {
      atomic_store(*&v31, (*(this + 12) + 28752));
      atomic_store(Bool, (*(this + 12) + 28760));
      atomic_store(v29, (*(this + 12) + 28761));
    }

    v32 = *(*(this + 12) + 24);
    v33 = *(v53 + 48);
    v34 = *(v53 + 110);
    v35 = *(v53 + 1);
    v54 = *v53;
    v36 = *(v30 + 54);
    os_unfair_lock_lock(this + 82);
    v37 = _Block_copy(*(this + 1));
    os_unfair_lock_unlock(this + 82);
    if (v37)
    {
      v38 = v31;
      v39 = vcvtd_n_f64_s32(v43, 0x10uLL);
      v40 = vcvtd_n_f64_s32(Int, 0x10uLL);
      BYTE4(v42) = (v34 & 0x200) != 0;
      LODWORD(v42) = v35;
      BYTE2(v41) = v29;
      BYTE1(v41) = Bool;
      LOBYTE(v41) = (v34 & 0x20) != 0;
      v37[2](v37, v32, v33, v48, Int64, v52, v50, v54, v40, v39, v38, v36, v41, v45, v42, v47, v46);
      _Block_release(v37);
    }
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

BOOL CA_CFDictionaryGetBool(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  return CA_CFBoolValue(Value);
}

BOOL CA_CFBoolValue(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    v3 = *MEMORY[0x1E695E4C0] == a1;
  }

  else
  {
    if (v2 != CFNumberGetTypeID())
    {
      return 0;
    }

    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v3 = valuePtr == 0;
  }

  return !v3;
}

void CA::WindowServer::IOMFBDisplay::FrameInfo::~FrameInfo(CA::WindowServer::IOMFBDisplay::FrameInfo *this)
{
  v2 = *(this + 9);
  v3 = this + 80;
  if (v2 != this + 80)
  {
    do
    {
      v4 = *(v2 + 4);
      if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  v8 = *(this + 15);
  v9 = *(this + 16);
  if (v8 != v9)
  {
    do
    {
      v10 = *v8++;
      _Block_release(v10);
    }

    while (v8 != v9);
    v8 = *(this + 15);
  }

  if (v8 != *(this + 17))
  {
    free(v8);
  }

  std::__tree<CA::Render::Update::ContextInfo>::destroy(*(this + 13));
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*(this + 10));
}

uint64_t CA_CFDictionaryGetInt(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  return CA_CFIntValue(Value);
}

void std::__tree<CA::Render::Update::ContextInfo>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<CA::Render::Update::ContextInfo>::destroy(*a1);
    std::__tree<CA::Render::Update::ContextInfo>::destroy(a1[1]);
    v2 = a1[4];
    if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    operator delete(a1);
  }
}

uint64_t CA::WindowServer::AccelServer::renderer(CA::WindowServer::AccelServer *this)
{
  result = *(this + 183);
  if (result)
  {
    goto LABEL_14;
  }

  v3 = *(this + 12);
  v4 = *(v3 + 312);
  if (!v4)
  {
    v4 = CAMetalContextCreate();
    *(v3 + 312) = v4;
    if (!v4)
    {
      result = *(this + 183);
      if (!result)
      {
        return result;
      }

      goto LABEL_14;
    }
  }

  *(this + 182) = CA::OGL::new_metal_context(v4, 0, 0, 0, 4, @"com.apple.coreanimation.AccelServer");
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
  v6 = v5;
  if (v5)
  {
    v7 = *(this + 182);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = v7;
    v5[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
    v6[7] = 0;
    *(v6 + 24) = 1;
    *(v6 + 50) = 0;
  }

  *(this + 183) = v6;
  if (CADeviceUseFramebufferCompression::once != -1)
  {
    dispatch_once(&CADeviceUseFramebufferCompression::once, &__block_literal_global_25);
  }

  v8 = CADeviceUseFramebufferCompression::enable_compression == 1 ? *(*(this + 12) + 29514) ^ 1 : 0;
  (*(**(this + 182) + 224))(*(this + 182), v8 & 1);
  result = *(this + 183);
  *(*(this + 12) + 328) = result;
  if (result)
  {
LABEL_14:
    if ((*(*(this + 12) + 904) & 0x20000) != 0)
    {
      v9 = 33685520;
    }

    else
    {
      v9 = 131088;
    }

    v10 = v9 | *(this + 46);
    v11 = *(this + 182);
    v12 = *(v11 + 632);
    *(v11 + 632) = v10;
    *(v11 + 872) = global_feature_flags | v10;
    if (((v12 ^ v10) & 0x2000200) != 0)
    {
      CA::OGL::Context::update_color_program_cache(v11);
      return *(this + 183);
    }
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::initialize_timings(CA::WindowServer::IOMFBDisplay *this)
{
  v1 = this + 26308;
  if ((*(this + 26308) & 1) == 0)
  {
    if (*(this + 29513))
    {
      goto LABEL_16;
    }

    if (!*(this + 3289))
    {
      v3 = CA::Render::Shmem::new_shmem(0x58);
      *(this + 3289) = v3;
      *(this + 3290) = *(v3 + 3);
    }

    (*(*this + 776))(this);
    if ((*(this + 336) & 0x1C00) != 0 && (*(this + 82) & 0x8000000000000000) != 0 && !BYTE2(xmmword_1ED4E98AC))
    {
      v4 = v4 * 1.0025;
    }

    atomic_store(CAHostTimeWithTime(v4), (*(this + 3290) + 16));
    if ((*(this + 160) & 0x100) == 0)
    {
      goto LABEL_14;
    }

    if (CAPrefers60HzAPT(void)::once != -1)
    {
      dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
    }

    if (CAPrefers60HzAPT(void)::enabled == 1)
    {
      v5 = (*(*this + 760))(this);
      v6 = CAHostTimeWithTime(v5);
    }

    else
    {
LABEL_14:
      v6 = 0;
    }

    atomic_store(v6, (*(this + 3290) + 8));
    if ((*(*this + 776))(this) != 0.0)
    {
LABEL_16:
      *v1 = 1;
    }
  }
}

double CA::WindowServer::AppleInternalDisplay::heartbeat_rate(CA::WindowServer::AppleInternalDisplay *this)
{
  result = *(this + 3747);
  if (result == 0.0)
  {
    v3 = getenv("CA_HEARTBEAT_RATE");
    if (v3)
    {
      result = 1.0 / atof(v3);
    }

    else
    {
      result = *(this + 3744);
      if (result == 0.0)
      {
        v4 = *(this + 3743);
        if (v4)
        {
          v5 = 1.16415322e-10;
          if ((*(this + 160) & 0x10) == 0)
          {
            v5 = 2.32830644e-10;
          }

          result = v5 * v4;
        }

        else
        {
          result = 0.0166666667;
        }
      }
    }

    *(this + 3747) = result;
  }

  v6 = *(this + 82);
  if (v6 != -1)
  {
    result = 65536.0 / ((v6 >> 29) & 0x1FFFFFF);
    if ((*(this + 160) & 0x10) != 0 && v6 < 0)
    {
      return result * 0.5;
    }
  }

  return result;
}

uint64_t CA::WindowServer::AppleInternalDisplay::minimum_frame_duration(CA::WindowServer::AppleInternalDisplay *this)
{
  if (*(this + 6852))
  {
    if ((*(this + 160) & 0x10) != 0)
    {
      if (*(this + 82) >= 0)
      {
        v2 = 1;
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 1;
    }

    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (v2 <= *&dword_1ED4E9704)
    {
      return *&dword_1ED4E9704;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    v3 = *(*this + 792);

    return v3();
  }
}

double CA::WindowServer::IOMFBDisplay::refresh_rate(CA::WindowServer::IOMFBDisplay *this)
{
  if (*(this + 652) == 1 && *(this + 82) == -1)
  {
    v4 = (*(*this + 784))(this);
    return (*(*this + 776))(this) * v4;
  }

  else
  {
    v2 = *(*this + 752);

    v2();
  }

  return result;
}

uint64_t CA_CFIntValue(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    return *MEMORY[0x1E695E4C0] != a1;
  }

  if (v2 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  return valuePtr;
}

uint64_t CA::IOMobileFramebuffer::swap_wait(CA::IOMobileFramebuffer *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = CATimeWithHostTime(v2);
  if (*(this + 8) == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v10 = 0;
    BMMonitorBlockExecutionWithSignature();
    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v4 = IOMobileFramebufferSwapWait();
  }

  v5 = mach_absolute_time();
  v6 = CATimeWithHostTime(v5) - v3;
  if (v6 > 3.0)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "IOMobileFramebufferSwapWait";
      *&buf[12] = 2048;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "%s took %.2f seconds", buf, 0x16u);
    }
  }

  return v4;
}

uint64_t CA::Render::fourcc_compressed_of_type(CA::Render *compressed_agx_universal_rgb_fourcc, int a2, int a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      return CA::Render::get_compressed_agx_universal_rgb_fourcc(compressed_agx_universal_rgb_fourcc);
    }

    if (a2 == 3)
    {
      v3 = 643969848;
      compressed_agx_universal_rgb_fourcc = CA::Render::get_compressed_agx_universal_rgb_fourcc(compressed_agx_universal_rgb_fourcc);
      if (compressed_agx_universal_rgb_fourcc <= 875704421)
      {
        if (compressed_agx_universal_rgb_fourcc <= 645162545)
        {
          if (compressed_agx_universal_rgb_fourcc <= 645097007)
          {
            if (compressed_agx_universal_rgb_fourcc <= 641234483)
            {
              if (compressed_agx_universal_rgb_fourcc > 641230387)
              {
                if (compressed_agx_universal_rgb_fourcc != 641230388)
                {
                  if (compressed_agx_universal_rgb_fourcc != 641234480)
                  {
                    if (compressed_agx_universal_rgb_fourcc != 641234482)
                    {
                      return compressed_agx_universal_rgb_fourcc;
                    }

                    goto LABEL_561;
                  }

                  goto LABEL_477;
                }

                goto LABEL_49;
              }

              if (compressed_agx_universal_rgb_fourcc != 641230384)
              {
                if (compressed_agx_universal_rgb_fourcc == 641230386)
                {
                  goto LABEL_474;
                }

                return compressed_agx_universal_rgb_fourcc;
              }

              goto LABEL_559;
            }

            if (compressed_agx_universal_rgb_fourcc > 645083250)
            {
              if (compressed_agx_universal_rgb_fourcc != 645083251)
              {
                if (compressed_agx_universal_rgb_fourcc != 645083763)
                {
                  v29 = 645084275;
LABEL_483:
                  if (compressed_agx_universal_rgb_fourcc != v29)
                  {
                    return compressed_agx_universal_rgb_fourcc;
                  }

                  v34 = 645083251;
                  return v34 | 0x400u;
                }

LABEL_556:
                v51 = 645083251;
                return v51 | 0x200u;
              }

              goto LABEL_258;
            }

            if (compressed_agx_universal_rgb_fourcc != 641234484)
            {
              v21 = 643969848;
              goto LABEL_625;
            }

            goto LABEL_560;
          }

          if (compressed_agx_universal_rgb_fourcc <= 645101107)
          {
            if (compressed_agx_universal_rgb_fourcc > 645097011)
            {
              if (compressed_agx_universal_rgb_fourcc != 645097012)
              {
                if (compressed_agx_universal_rgb_fourcc != 645101104)
                {
                  v16 = 645101106;
LABEL_506:
                  if (compressed_agx_universal_rgb_fourcc != v16)
                  {
                    return compressed_agx_universal_rgb_fourcc;
                  }

                  v32 = 30258;
                  return v32 | 0x26730000u;
                }

                goto LABEL_558;
              }

LABEL_581:
              v5 = 645097008;
              return v5 | 4u;
            }

            if (compressed_agx_universal_rgb_fourcc != 645097008)
            {
              if (compressed_agx_universal_rgb_fourcc != 645097010)
              {
                return compressed_agx_universal_rgb_fourcc;
              }

              goto LABEL_487;
            }

            goto LABEL_577;
          }

          if (compressed_agx_universal_rgb_fourcc > 645149298)
          {
            if (compressed_agx_universal_rgb_fourcc != 645149299)
            {
              if (compressed_agx_universal_rgb_fourcc != 645149811)
              {
                if (compressed_agx_universal_rgb_fourcc != 645162544)
                {
                  return compressed_agx_universal_rgb_fourcc;
                }

                goto LABEL_253;
              }

LABEL_557:
              v34 = 645148787;
              return v34 | 0x400u;
            }

LABEL_582:
            v51 = 645148787;
            return v51 | 0x200u;
          }

          if (compressed_agx_universal_rgb_fourcc != 645101108)
          {
            if (compressed_agx_universal_rgb_fourcc != 645148787)
            {
              return compressed_agx_universal_rgb_fourcc;
            }

            goto LABEL_510;
          }

          goto LABEL_579;
        }

        if (compressed_agx_universal_rgb_fourcc <= 645411383)
        {
          if (compressed_agx_universal_rgb_fourcc <= 645279799)
          {
            if (compressed_agx_universal_rgb_fourcc > 645166639)
            {
              if (compressed_agx_universal_rgb_fourcc != 645166640)
              {
                if (compressed_agx_universal_rgb_fourcc != 645166642)
                {
                  if (compressed_agx_universal_rgb_fourcc != 645166644)
                  {
                    return compressed_agx_universal_rgb_fourcc;
                  }

LABEL_564:
                  v33 = 645166642;
                  return (v33 + 2);
                }

                goto LABEL_571;
              }

LABEL_513:
              v37 = 645162544;
              return v37 | 0x1000u;
            }

            if (compressed_agx_universal_rgb_fourcc != 645162546)
            {
              if (compressed_agx_universal_rgb_fourcc != 645162548)
              {
                return compressed_agx_universal_rgb_fourcc;
              }

              goto LABEL_575;
            }

LABEL_565:
            v22 = 645162544;
            return v22 | 2u;
          }

          if (compressed_agx_universal_rgb_fourcc > 645280823)
          {
            if (compressed_agx_universal_rgb_fourcc != 645280824)
            {
              if (compressed_agx_universal_rgb_fourcc != 645410872)
              {
                if (compressed_agx_universal_rgb_fourcc != 645410931)
                {
                  return compressed_agx_universal_rgb_fourcc;
                }

                goto LABEL_567;
              }

              return 645410872;
            }

            goto LABEL_569;
          }

          if (compressed_agx_universal_rgb_fourcc != 645279800)
          {
            if (compressed_agx_universal_rgb_fourcc != 645280312)
            {
              return compressed_agx_universal_rgb_fourcc;
            }

LABEL_503:
            v51 = 645279800;
            return v51 | 0x200u;
          }

          return 645279800;
        }

        if (compressed_agx_universal_rgb_fourcc <= 645424689)
        {
          if (compressed_agx_universal_rgb_fourcc > 645411895)
          {
            if (compressed_agx_universal_rgb_fourcc != 645411896)
            {
              if (compressed_agx_universal_rgb_fourcc != 645411955)
              {
                if (compressed_agx_universal_rgb_fourcc != 645424688)
                {
                  return compressed_agx_universal_rgb_fourcc;
                }

                goto LABEL_566;
              }

LABEL_269:
              v34 = 645410931;
              return v34 | 0x400u;
            }

            return 645411896;
          }

          if (compressed_agx_universal_rgb_fourcc != 645411384)
          {
            if (compressed_agx_universal_rgb_fourcc != 645411443)
            {
              return compressed_agx_universal_rgb_fourcc;
            }

            goto LABEL_493;
          }

          return 645411384;
        }

        if (compressed_agx_universal_rgb_fourcc > 645428783)
        {
          if (compressed_agx_universal_rgb_fourcc != 645428784)
          {
            if (compressed_agx_universal_rgb_fourcc != 645428786)
            {
              v30 = 645428788;
              goto LABEL_263;
            }

            goto LABEL_555;
          }

          goto LABEL_583;
        }

        if (compressed_agx_universal_rgb_fourcc != 645424690)
        {
          if (compressed_agx_universal_rgb_fourcc != 645424692)
          {
            return compressed_agx_universal_rgb_fourcc;
          }

          goto LABEL_516;
        }

        goto LABEL_576;
      }

      if (compressed_agx_universal_rgb_fourcc > 1932681586)
      {
        if (compressed_agx_universal_rgb_fourcc <= 1949589874)
        {
          if (compressed_agx_universal_rgb_fourcc <= 1937125935)
          {
            if (compressed_agx_universal_rgb_fourcc <= 1936077359)
            {
              if (compressed_agx_universal_rgb_fourcc != 1932681587)
              {
                v29 = 1932812659;
                goto LABEL_483;
              }

              goto LABEL_556;
            }

            if (compressed_agx_universal_rgb_fourcc != 1936077360)
            {
              if (compressed_agx_universal_rgb_fourcc != 1936077362)
              {
                if (compressed_agx_universal_rgb_fourcc != 1936077876)
                {
                  return compressed_agx_universal_rgb_fourcc;
                }

                goto LABEL_581;
              }

LABEL_487:
              v22 = 645097008;
              return v22 | 2u;
            }

LABEL_577:
            v32 = 26160;
            return v32 | 0x26730000u;
          }

          if (compressed_agx_universal_rgb_fourcc <= 1937126451)
          {
            if (compressed_agx_universal_rgb_fourcc != 1937125936)
            {
              v16 = 1937125938;
              goto LABEL_506;
            }

LABEL_558:
            v37 = 645097008;
            return v37 | 0x1000u;
          }

          if (compressed_agx_universal_rgb_fourcc != 1937126452)
          {
            if (compressed_agx_universal_rgb_fourcc != 1949327731)
            {
              if (compressed_agx_universal_rgb_fourcc != 1949458803)
              {
                return compressed_agx_universal_rgb_fourcc;
              }

              goto LABEL_582;
            }

LABEL_510:
            v31 = 12403;
            return v31 | 0x26740000u;
          }

LABEL_579:
          v33 = 645101106;
          return (v33 + 2);
        }

        if (compressed_agx_universal_rgb_fourcc <= 2016436594)
        {
          if (compressed_agx_universal_rgb_fourcc > 1983013175)
          {
            if (compressed_agx_universal_rgb_fourcc != 1983013176)
            {
              if (compressed_agx_universal_rgb_fourcc != 1983144248)
              {
                if (compressed_agx_universal_rgb_fourcc != 2016436536)
                {
                  return compressed_agx_universal_rgb_fourcc;
                }

                return 645410872;
              }

LABEL_569:
              v34 = 645279800;
              return v34 | 0x400u;
            }

            goto LABEL_503;
          }

          if (compressed_agx_universal_rgb_fourcc == 1949589875)
          {
            goto LABEL_557;
          }

          if (compressed_agx_universal_rgb_fourcc != 1982882104)
          {
            return compressed_agx_universal_rgb_fourcc;
          }

          return 645279800;
        }

        if (compressed_agx_universal_rgb_fourcc > 2016567666)
        {
          if (compressed_agx_universal_rgb_fourcc != 2016567667)
          {
            if (compressed_agx_universal_rgb_fourcc != 2016698680)
            {
              if (compressed_agx_universal_rgb_fourcc != 2016698739)
              {
                return compressed_agx_universal_rgb_fourcc;
              }

              goto LABEL_269;
            }

            return 645411896;
          }

LABEL_493:
          v51 = 645410931;
          return v51 | 0x200u;
        }

        if (compressed_agx_universal_rgb_fourcc == 2016436595)
        {
LABEL_567:
          v55 = 12403;
          return v55 | 0x26780000u;
        }

        if (compressed_agx_universal_rgb_fourcc != 2016567608)
        {
          return compressed_agx_universal_rgb_fourcc;
        }

        return 645411384;
      }

      if (compressed_agx_universal_rgb_fourcc > 1885745711)
      {
        if (compressed_agx_universal_rgb_fourcc > 1886676531)
        {
          if (compressed_agx_universal_rgb_fourcc > 1886680625)
          {
            if (compressed_agx_universal_rgb_fourcc != 1886680626)
            {
              if (compressed_agx_universal_rgb_fourcc != 1886680628)
              {
                if (compressed_agx_universal_rgb_fourcc != 1932550515)
                {
                  return compressed_agx_universal_rgb_fourcc;
                }

LABEL_258:
                v32 = 12403;
                return v32 | 0x26730000u;
              }

              goto LABEL_564;
            }

LABEL_571:
            v31 = 30258;
            return v31 | 0x26740000u;
          }

          if (compressed_agx_universal_rgb_fourcc != 1886676532)
          {
            if (compressed_agx_universal_rgb_fourcc != 1886680624)
            {
              return compressed_agx_universal_rgb_fourcc;
            }

            goto LABEL_513;
          }

LABEL_575:
          v5 = 645162544;
          return v5 | 4u;
        }

        if (compressed_agx_universal_rgb_fourcc > 1885746227)
        {
          if (compressed_agx_universal_rgb_fourcc != 1885746228)
          {
            if (compressed_agx_universal_rgb_fourcc == 1886676528)
            {
LABEL_253:
              v31 = 26160;
              return v31 | 0x26740000u;
            }

            if (compressed_agx_universal_rgb_fourcc != 1886676530)
            {
              return compressed_agx_universal_rgb_fourcc;
            }

            goto LABEL_565;
          }

LABEL_516:
          v5 = 645424688;
          return v5 | 4u;
        }

        if (compressed_agx_universal_rgb_fourcc == 1885745712)
        {
LABEL_566:
          v55 = 26160;
          return v55 | 0x26780000u;
        }

        if (compressed_agx_universal_rgb_fourcc != 1885745714)
        {
          return compressed_agx_universal_rgb_fourcc;
        }

LABEL_576:
        v22 = 645424688;
        return v22 | 2u;
      }

      if (compressed_agx_universal_rgb_fourcc <= 875836533)
      {
        if (compressed_agx_universal_rgb_fourcc > 875704933)
        {
          switch(compressed_agx_universal_rgb_fourcc)
          {
            case 0x34323266:
LABEL_474:
              v22 = 641230384;
              return v22 | 2u;
            case 0x34323276:
LABEL_561:
              v56 = 30258;
              return v56 | 0x26380000u;
            case 0x34343466:
LABEL_49:
              v5 = 641230384;
              return v5 | 4u;
          }

          return compressed_agx_universal_rgb_fourcc;
        }

        if (compressed_agx_universal_rgb_fourcc != 875704422)
        {
          if (compressed_agx_universal_rgb_fourcc == 875704438)
          {
LABEL_477:
            v37 = 641230384;
            return v37 | 0x1000u;
          }

          return compressed_agx_universal_rgb_fourcc;
        }

LABEL_559:
        v56 = 26160;
        return v56 | 0x26380000u;
      }

      if (compressed_agx_universal_rgb_fourcc > 1882468911)
      {
        if (compressed_agx_universal_rgb_fourcc != 1882468912)
        {
          if (compressed_agx_universal_rgb_fourcc != 1882468914)
          {
            v30 = 1882469428;
LABEL_263:
            if (compressed_agx_universal_rgb_fourcc != v30)
            {
              return compressed_agx_universal_rgb_fourcc;
            }

            v33 = 645428786;
            return (v33 + 2);
          }

LABEL_555:
          v55 = 30258;
          return v55 | 0x26780000u;
        }

LABEL_583:
        v37 = 645424688;
        return v37 | 0x1000u;
      }

      if (compressed_agx_universal_rgb_fourcc == 875836534)
      {
LABEL_560:
        v33 = 641234482;
        return (v33 + 2);
      }

      v21 = 1647534392;
LABEL_625:
      if (compressed_agx_universal_rgb_fourcc == v21)
      {
        return v3;
      }

      return compressed_agx_universal_rgb_fourcc;
    }

    v4 = 759318337;
    if (compressed_agx_universal_rgb_fourcc > 796157491)
    {
      if (compressed_agx_universal_rgb_fourcc <= 1886676529)
      {
        if (compressed_agx_universal_rgb_fourcc <= 875704933)
        {
          if (compressed_agx_universal_rgb_fourcc <= 796419635)
          {
            if (compressed_agx_universal_rgb_fourcc <= 796161587)
            {
              if (compressed_agx_universal_rgb_fourcc != 796157492)
              {
                if (compressed_agx_universal_rgb_fourcc != 796161584)
                {
                  v3 = compressed_agx_universal_rgb_fourcc;
                  if (compressed_agx_universal_rgb_fourcc != 796161586)
                  {
                    return v3;
                  }

                  goto LABEL_403;
                }

                goto LABEL_431;
              }

              goto LABEL_448;
            }

            if (compressed_agx_universal_rgb_fourcc != 796161588)
            {
              if (compressed_agx_universal_rgb_fourcc != 796419632)
              {
                v3 = compressed_agx_universal_rgb_fourcc;
                if (compressed_agx_universal_rgb_fourcc != 796419634)
                {
                  return v3;
                }

                goto LABEL_464;
              }

              goto LABEL_461;
            }

            goto LABEL_402;
          }

          if (compressed_agx_universal_rgb_fourcc <= 796423731)
          {
            if (compressed_agx_universal_rgb_fourcc != 796419636)
            {
              if (compressed_agx_universal_rgb_fourcc != 796423728)
              {
                v3 = compressed_agx_universal_rgb_fourcc;
                if (compressed_agx_universal_rgb_fourcc != 796423730)
                {
                  return v3;
                }

                goto LABEL_426;
              }

              goto LABEL_436;
            }

            goto LABEL_458;
          }

          if (compressed_agx_universal_rgb_fourcc != 796423732)
          {
            if (compressed_agx_universal_rgb_fourcc != 875704422)
            {
              v25 = 875704438;
              goto LABEL_440;
            }

            goto LABEL_594;
          }

          goto LABEL_423;
        }

        if (compressed_agx_universal_rgb_fourcc <= 1882468913)
        {
          if (compressed_agx_universal_rgb_fourcc <= 875836533)
          {
            if (compressed_agx_universal_rgb_fourcc != 875704934)
            {
              if (compressed_agx_universal_rgb_fourcc != 875704950)
              {
                v13 = 875836518;
                goto LABEL_452;
              }

LABEL_412:
              v46 = 30258;
              goto LABEL_595;
            }

LABEL_586:
            v50 = 758670896;
            goto LABEL_587;
          }

          if (compressed_agx_universal_rgb_fourcc != 875836534)
          {
            if (compressed_agx_universal_rgb_fourcc == 1111970369)
            {
              goto LABEL_588;
            }

            v43 = 1882468912;
            goto LABEL_435;
          }

LABEL_413:
          v44 = 758674994;
          goto LABEL_424;
        }

        if (compressed_agx_universal_rgb_fourcc <= 1885745713)
        {
          if (compressed_agx_universal_rgb_fourcc != 1882468914)
          {
            if (compressed_agx_universal_rgb_fourcc != 1882469428)
            {
              v12 = 1885745712;
LABEL_212:
              v3 = compressed_agx_universal_rgb_fourcc;
              if (compressed_agx_universal_rgb_fourcc != v12)
              {
                return v3;
              }

              goto LABEL_461;
            }

LABEL_423:
            v44 = 762869298;
LABEL_424:
            v4 = (v44 + 2);
            if (a3)
            {
              goto LABEL_589;
            }

LABEL_596:
            LODWORD(v4) = v4 & 0x7E7777;
            v57 = 637534208;
            return v4 | v57;
          }

LABEL_426:
          v47 = 30258;
          goto LABEL_462;
        }

        if (compressed_agx_universal_rgb_fourcc != 1885745714)
        {
          if (compressed_agx_universal_rgb_fourcc != 1885746228)
          {
            v20 = 1886676528;
LABEL_417:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v20)
            {
              return v3;
            }

            goto LABEL_469;
          }

LABEL_458:
          v49 = 762865200;
LABEL_459:
          v4 = v49 | 4u;
          if (a3)
          {
            goto LABEL_589;
          }

          goto LABEL_596;
        }

        goto LABEL_464;
      }

      if (compressed_agx_universal_rgb_fourcc <= 2088003119)
      {
        if (compressed_agx_universal_rgb_fourcc <= 2084070961)
        {
          if (compressed_agx_universal_rgb_fourcc <= 1886680625)
          {
            if (compressed_agx_universal_rgb_fourcc != 1886676530)
            {
              if (compressed_agx_universal_rgb_fourcc != 1886676532)
              {
                v9 = 1886680624;
                goto LABEL_430;
              }

              goto LABEL_448;
            }

            goto LABEL_468;
          }

          if (compressed_agx_universal_rgb_fourcc != 1886680626)
          {
            if (compressed_agx_universal_rgb_fourcc != 1886680628)
            {
              v27 = 2084070960;
LABEL_393:
              v3 = compressed_agx_universal_rgb_fourcc;
              if (compressed_agx_universal_rgb_fourcc != v27)
              {
                return v3;
              }

              goto LABEL_594;
            }

LABEL_402:
            v44 = 762607154;
            goto LABEL_424;
          }

          goto LABEL_403;
        }

        if (compressed_agx_universal_rgb_fourcc <= 2084075057)
        {
          if (compressed_agx_universal_rgb_fourcc == 2084070962)
          {
            goto LABEL_586;
          }

          if (compressed_agx_universal_rgb_fourcc != 2084070964)
          {
            v25 = 2084075056;
            goto LABEL_440;
          }

          goto LABEL_453;
        }

        if (compressed_agx_universal_rgb_fourcc == 2084075058)
        {
          goto LABEL_412;
        }

        if (compressed_agx_universal_rgb_fourcc == 2084075060)
        {
          goto LABEL_413;
        }

        v8 = 2084718401;
LABEL_410:
        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != v8)
        {
          return v3;
        }

LABEL_588:
        if (a3)
        {
          goto LABEL_589;
        }

        goto LABEL_596;
      }

      if (compressed_agx_universal_rgb_fourcc <= 2088265263)
      {
        if (compressed_agx_universal_rgb_fourcc <= 2088007215)
        {
          if (compressed_agx_universal_rgb_fourcc != 2088003120)
          {
            if (compressed_agx_universal_rgb_fourcc == 2088003122)
            {
              goto LABEL_468;
            }

            v14 = 2088003124;
LABEL_447:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v14)
            {
              return v3;
            }

            goto LABEL_448;
          }

          goto LABEL_469;
        }

        if (compressed_agx_universal_rgb_fourcc != 2088007216)
        {
          if (compressed_agx_universal_rgb_fourcc == 2088007218)
          {
            goto LABEL_403;
          }

          v28 = 2088007220;
          goto LABEL_401;
        }

        goto LABEL_431;
      }

      if (compressed_agx_universal_rgb_fourcc <= 2088269359)
      {
        if (compressed_agx_universal_rgb_fourcc != 2088265264)
        {
          if (compressed_agx_universal_rgb_fourcc == 2088265266)
          {
            goto LABEL_464;
          }

          v26 = 2088265268;
LABEL_457:
          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != v26)
          {
            return v3;
          }

          goto LABEL_458;
        }

        goto LABEL_461;
      }

      if (compressed_agx_universal_rgb_fourcc != 2088269360)
      {
        if (compressed_agx_universal_rgb_fourcc == 2088269362)
        {
          goto LABEL_426;
        }

        v15 = 2088269364;
        goto LABEL_422;
      }

      goto LABEL_436;
    }

    if (compressed_agx_universal_rgb_fourcc <= 758674993)
    {
      if (compressed_agx_universal_rgb_fourcc > 645166641)
      {
        if (compressed_agx_universal_rgb_fourcc <= 645428785)
        {
          if (compressed_agx_universal_rgb_fourcc > 645424689)
          {
            if (compressed_agx_universal_rgb_fourcc != 645424690)
            {
              if (compressed_agx_universal_rgb_fourcc != 645424692)
              {
                v43 = 645428784;
LABEL_435:
                v3 = compressed_agx_universal_rgb_fourcc;
                if (compressed_agx_universal_rgb_fourcc != v43)
                {
                  return v3;
                }

                goto LABEL_436;
              }

              goto LABEL_458;
            }

LABEL_464:
            v50 = 762865200;
LABEL_587:
            v4 = v50 | 2u;
            goto LABEL_588;
          }

          if (compressed_agx_universal_rgb_fourcc != 645166642)
          {
            if (compressed_agx_universal_rgb_fourcc != 645166644)
            {
              v12 = 645424688;
              goto LABEL_212;
            }

            goto LABEL_402;
          }

LABEL_403:
          v45 = 30258;
          goto LABEL_470;
        }

        if (compressed_agx_universal_rgb_fourcc <= 758670897)
        {
          if (compressed_agx_universal_rgb_fourcc == 645428786)
          {
            goto LABEL_426;
          }

          if (compressed_agx_universal_rgb_fourcc == 645428788)
          {
            goto LABEL_423;
          }

          v27 = 758670896;
          goto LABEL_393;
        }

        if (compressed_agx_universal_rgb_fourcc == 758670898)
        {
          goto LABEL_586;
        }

        if (compressed_agx_universal_rgb_fourcc != 758670900)
        {
          v25 = 758674992;
LABEL_440:
          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != v25)
          {
            return v3;
          }

          goto LABEL_441;
        }

LABEL_453:
        v49 = 758670896;
        goto LABEL_459;
      }

      if (compressed_agx_universal_rgb_fourcc > 641234483)
      {
        if (compressed_agx_universal_rgb_fourcc <= 645162545)
        {
          if (compressed_agx_universal_rgb_fourcc == 641234484)
          {
            goto LABEL_413;
          }

          if (compressed_agx_universal_rgb_fourcc == 641877825)
          {
            goto LABEL_588;
          }

          v20 = 645162544;
          goto LABEL_417;
        }

        if (compressed_agx_universal_rgb_fourcc != 645162546)
        {
          if (compressed_agx_universal_rgb_fourcc != 645162548)
          {
            v9 = 645166640;
LABEL_430:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v9)
            {
              return v3;
            }

            goto LABEL_431;
          }

LABEL_448:
          v49 = 762603056;
          goto LABEL_459;
        }

LABEL_468:
        v50 = 762603056;
        goto LABEL_587;
      }

      if (compressed_agx_universal_rgb_fourcc <= 641230387)
      {
        if (compressed_agx_universal_rgb_fourcc != 641230384)
        {
          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != 641230386)
          {
            return v3;
          }

          goto LABEL_586;
        }

        goto LABEL_594;
      }

      if (compressed_agx_universal_rgb_fourcc == 641230388)
      {
        goto LABEL_453;
      }

      if (compressed_agx_universal_rgb_fourcc != 641234480)
      {
        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != 641234482)
        {
          return v3;
        }

        goto LABEL_412;
      }
    }

    else
    {
      if (compressed_agx_universal_rgb_fourcc <= 762869295)
      {
        if (compressed_agx_universal_rgb_fourcc <= 762607151)
        {
          if (compressed_agx_universal_rgb_fourcc <= 762603055)
          {
            if (compressed_agx_universal_rgb_fourcc == 758674994)
            {
              goto LABEL_412;
            }

            if (compressed_agx_universal_rgb_fourcc == 758674996)
            {
              goto LABEL_413;
            }

            v8 = 759318337;
            goto LABEL_410;
          }

          if (compressed_agx_universal_rgb_fourcc != 762603056)
          {
            if (compressed_agx_universal_rgb_fourcc == 762603058)
            {
              goto LABEL_468;
            }

            v14 = 762603060;
            goto LABEL_447;
          }

LABEL_469:
          v45 = 26160;
LABEL_470:
          v4 = v45 | 0x2D740000u;
          if (!a3)
          {
            goto LABEL_596;
          }

LABEL_589:
          if (a3 == 3)
          {
            return v4 & 0x7E7777 | 0x7C000000;
          }

          if (a3 != 2)
          {
            return v4;
          }

          v57 = 788529152;
          return v4 | v57;
        }

        if (compressed_agx_universal_rgb_fourcc <= 762865199)
        {
          if (compressed_agx_universal_rgb_fourcc != 762607152)
          {
            if (compressed_agx_universal_rgb_fourcc == 762607154)
            {
              goto LABEL_403;
            }

            v28 = 762607156;
LABEL_401:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v28)
            {
              return v3;
            }

            goto LABEL_402;
          }

LABEL_431:
          v48 = 762603056;
          goto LABEL_442;
        }

        if (compressed_agx_universal_rgb_fourcc != 762865200)
        {
          if (compressed_agx_universal_rgb_fourcc == 762865202)
          {
            goto LABEL_464;
          }

          v26 = 762865204;
          goto LABEL_457;
        }

LABEL_461:
        v47 = 26160;
LABEL_462:
        v4 = v47 | 0x2D780000u;
        if (a3)
        {
          goto LABEL_589;
        }

        goto LABEL_596;
      }

      if (compressed_agx_universal_rgb_fourcc <= 792229423)
      {
        if (compressed_agx_universal_rgb_fourcc <= 792225327)
        {
          if (compressed_agx_universal_rgb_fourcc != 762869296)
          {
            if (compressed_agx_universal_rgb_fourcc == 762869298)
            {
              goto LABEL_426;
            }

            v15 = 762869300;
LABEL_422:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v15)
            {
              return v3;
            }

            goto LABEL_423;
          }

LABEL_436:
          v48 = 762865200;
          goto LABEL_442;
        }

        if (compressed_agx_universal_rgb_fourcc != 792225328)
        {
          if (compressed_agx_universal_rgb_fourcc != 792225330)
          {
            v13 = 792225332;
LABEL_452:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v13)
            {
              return v3;
            }

            goto LABEL_453;
          }

          goto LABEL_586;
        }

LABEL_594:
        v46 = 26160;
LABEL_595:
        v4 = v46 | 0x2D380000u;
        if (a3)
        {
          goto LABEL_589;
        }

        goto LABEL_596;
      }

      if (compressed_agx_universal_rgb_fourcc > 792872768)
      {
        if (compressed_agx_universal_rgb_fourcc == 792872769)
        {
          goto LABEL_588;
        }

        if (compressed_agx_universal_rgb_fourcc != 796157488)
        {
          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != 796157490)
          {
            return v3;
          }

          goto LABEL_468;
        }

        goto LABEL_469;
      }

      if (compressed_agx_universal_rgb_fourcc != 792229424)
      {
        if (compressed_agx_universal_rgb_fourcc == 792229426)
        {
          goto LABEL_412;
        }

        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != 792229428)
        {
          return v3;
        }

        goto LABEL_413;
      }
    }

LABEL_441:
    v48 = 758670896;
LABEL_442:
    v4 = v48 | 0x1000u;
    if (a3)
    {
      goto LABEL_589;
    }

    goto LABEL_596;
  }

  if (a2)
  {
    if (compressed_agx_universal_rgb_fourcc <= 1534617135)
    {
      v3 = 1530426928;
      if (compressed_agx_universal_rgb_fourcc <= 1530426927)
      {
        if (compressed_agx_universal_rgb_fourcc > 875836517)
        {
          if (compressed_agx_universal_rgb_fourcc > 1530422831)
          {
            if (compressed_agx_universal_rgb_fourcc != 1530422832)
            {
              if (compressed_agx_universal_rgb_fourcc != 1530422834)
              {
                if (compressed_agx_universal_rgb_fourcc != 1530422836)
                {
                  return compressed_agx_universal_rgb_fourcc;
                }

                return 1530422836;
              }

              return 1530422834;
            }

            return 1530422832;
          }

          if (compressed_agx_universal_rgb_fourcc == 875836518)
          {
            return 1530422836;
          }

          if (compressed_agx_universal_rgb_fourcc != 875836534)
          {
            return compressed_agx_universal_rgb_fourcc;
          }

LABEL_325:
          v33 = 1530426930;
          return (v33 + 2);
        }

        if (compressed_agx_universal_rgb_fourcc <= 875704933)
        {
          if (compressed_agx_universal_rgb_fourcc != 875704422)
          {
            v21 = 875704438;
            goto LABEL_625;
          }

          return 1530422832;
        }

        if (compressed_agx_universal_rgb_fourcc == 875704934)
        {
          return 1530422834;
        }

        v23 = 875704950;
LABEL_311:
        if (compressed_agx_universal_rgb_fourcc == v23)
        {
          return 1530426930;
        }

        return compressed_agx_universal_rgb_fourcc;
      }

      if (compressed_agx_universal_rgb_fourcc > 1534354993)
      {
        if (compressed_agx_universal_rgb_fourcc > 1534359087)
        {
          if (compressed_agx_universal_rgb_fourcc != 1534359088)
          {
            if (compressed_agx_universal_rgb_fourcc != 1534359090)
            {
              if (compressed_agx_universal_rgb_fourcc != 1534359092)
              {
                return compressed_agx_universal_rgb_fourcc;
              }

              goto LABEL_339;
            }

            goto LABEL_198;
          }

          goto LABEL_344;
        }

        if (compressed_agx_universal_rgb_fourcc != 1534354994)
        {
          v7 = 1534354996;
LABEL_330:
          if (compressed_agx_universal_rgb_fourcc == v7)
          {
            v5 = 1534354992;
            return v5 | 4u;
          }

          return compressed_agx_universal_rgb_fourcc;
        }

        goto LABEL_340;
      }

      if (compressed_agx_universal_rgb_fourcc <= 1530426931)
      {
        if (compressed_agx_universal_rgb_fourcc == 1530426928)
        {
          return v3;
        }

        v23 = 1530426930;
        goto LABEL_311;
      }

      if (compressed_agx_universal_rgb_fourcc == 1530426932)
      {
        goto LABEL_325;
      }

      if (compressed_agx_universal_rgb_fourcc != 1534354992)
      {
        return compressed_agx_universal_rgb_fourcc;
      }

      goto LABEL_317;
    }

    if (compressed_agx_universal_rgb_fourcc > 1953903151)
    {
      if (compressed_agx_universal_rgb_fourcc <= 2016686641)
      {
        if (compressed_agx_universal_rgb_fourcc <= 1953903667)
        {
          if (compressed_agx_universal_rgb_fourcc != 1953903152)
          {
            if (compressed_agx_universal_rgb_fourcc != 1953903154)
            {
              return compressed_agx_universal_rgb_fourcc;
            }

LABEL_198:
            v24 = 30258;
            return v24 | 0x5B740000u;
          }

LABEL_344:
          v37 = 1534354992;
          return v37 | 0x1000u;
        }

        if (compressed_agx_universal_rgb_fourcc == 1953903668)
        {
LABEL_339:
          v33 = 1534359090;
          return (v33 + 2);
        }

        v36 = 2016686640;
LABEL_321:
        if (compressed_agx_universal_rgb_fourcc != v36)
        {
          return compressed_agx_universal_rgb_fourcc;
        }

        v37 = 1534617136;
        return v37 | 0x1000u;
      }

      if (compressed_agx_universal_rgb_fourcc <= 2019963439)
      {
        if (compressed_agx_universal_rgb_fourcc != 2016686642)
        {
          v38 = 2016687156;
          goto LABEL_334;
        }

        goto LABEL_337;
      }

      if (compressed_agx_universal_rgb_fourcc == 2019963440)
      {
        goto LABEL_342;
      }

      if (compressed_agx_universal_rgb_fourcc == 2019963442)
      {
LABEL_191:
        v22 = 1534617136;
        return v22 | 2u;
      }

      if (compressed_agx_universal_rgb_fourcc != 2019963956)
      {
        return compressed_agx_universal_rgb_fourcc;
      }
    }

    else
    {
      if (compressed_agx_universal_rgb_fourcc > 1534621233)
      {
        if (compressed_agx_universal_rgb_fourcc > 1952854575)
        {
          if (compressed_agx_universal_rgb_fourcc != 1952854576)
          {
            if (compressed_agx_universal_rgb_fourcc != 1952854578)
            {
              v7 = 1952855092;
              goto LABEL_330;
            }

LABEL_340:
            v22 = 1534354992;
            return v22 | 2u;
          }

LABEL_317:
          v24 = 26160;
          return v24 | 0x5B740000u;
        }

        if (compressed_agx_universal_rgb_fourcc != 1534621234)
        {
          v38 = 1534621236;
LABEL_334:
          if (compressed_agx_universal_rgb_fourcc != v38)
          {
            return compressed_agx_universal_rgb_fourcc;
          }

          v33 = 1534621234;
          return (v33 + 2);
        }

LABEL_337:
        v39 = 30258;
        return v39 | 0x5B780000u;
      }

      if (compressed_agx_universal_rgb_fourcc <= 1534617139)
      {
        if (compressed_agx_universal_rgb_fourcc != 1534617136)
        {
          if (compressed_agx_universal_rgb_fourcc != 1534617138)
          {
            return compressed_agx_universal_rgb_fourcc;
          }

          goto LABEL_191;
        }

LABEL_342:
        v39 = 26160;
        return v39 | 0x5B780000u;
      }

      if (compressed_agx_universal_rgb_fourcc != 1534617140)
      {
        v36 = 1534621232;
        goto LABEL_321;
      }
    }

    v5 = 1534617136;
    return v5 | 4u;
  }

  v3 = 1111970369;
  if (compressed_agx_universal_rgb_fourcc > 762865203)
  {
    if (compressed_agx_universal_rgb_fourcc > 1534354993)
    {
      if (compressed_agx_universal_rgb_fourcc <= 2084075057)
      {
        if (compressed_agx_universal_rgb_fourcc <= 1534617139)
        {
          if (compressed_agx_universal_rgb_fourcc > 1534359089)
          {
            if (compressed_agx_universal_rgb_fourcc > 1534617135)
            {
              if (compressed_agx_universal_rgb_fourcc == 1534617136)
              {
                return 2019963440;
              }

              v3 = compressed_agx_universal_rgb_fourcc;
              if (compressed_agx_universal_rgb_fourcc == 1534617138)
              {
                v22 = 2019963440;
                return v22 | 2u;
              }

              return v3;
            }

            if (compressed_agx_universal_rgb_fourcc == 1534359090)
            {
              return 1953903154;
            }

            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != 1534359092)
            {
              return v3;
            }

            v35 = 1953903154;
            return (v35 + 514);
          }

          if (compressed_agx_universal_rgb_fourcc == 1534354994)
          {
            v22 = 1952854576;
            return v22 | 2u;
          }

          if (compressed_agx_universal_rgb_fourcc != 1534354996)
          {
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != 1534359088)
            {
              return v3;
            }

            v54 = 1952854576;
            return v54 | 0x100000u;
          }

          v60 = 1952854576;
          return (v60 + 516);
        }

        if (compressed_agx_universal_rgb_fourcc <= 2084070959)
        {
          if (compressed_agx_universal_rgb_fourcc > 1534621233)
          {
            if (compressed_agx_universal_rgb_fourcc == 1534621234)
            {
              v22 = 2016686640;
              return v22 | 2u;
            }

            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != 1534621236)
            {
              return v3;
            }

            v60 = 2016686640;
            return (v60 + 516);
          }

          if (compressed_agx_universal_rgb_fourcc == 1534617140)
          {
            v60 = 2019963440;
            return (v60 + 516);
          }

          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != 1534621232)
          {
            return v3;
          }

          v11 = 12848;
          return v11 | 0x78340000u;
        }

        if (compressed_agx_universal_rgb_fourcc <= 2084070963)
        {
          if (compressed_agx_universal_rgb_fourcc != 2084070960)
          {
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != 2084070962)
            {
              return v3;
            }

            goto LABEL_638;
          }

          return 875704422;
        }

        if (compressed_agx_universal_rgb_fourcc == 2084070964)
        {
          return 875836518;
        }

        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != 2084075056)
        {
          return v3;
        }

        goto LABEL_658;
      }

      if (compressed_agx_universal_rgb_fourcc > 2088007217)
      {
        if (compressed_agx_universal_rgb_fourcc > 2088265267)
        {
          if (compressed_agx_universal_rgb_fourcc <= 2088269361)
          {
            if (compressed_agx_universal_rgb_fourcc != 2088265268)
            {
              v41 = 2088269360;
LABEL_383:
              v3 = compressed_agx_universal_rgb_fourcc;
              if (compressed_agx_universal_rgb_fourcc != v41)
              {
                return v3;
              }

              return 1882468912;
            }

LABEL_526:
            v35 = 1885745714;
            return (v35 + 514);
          }

          if (compressed_agx_universal_rgb_fourcc != 2088269362)
          {
            v61 = 2088269364;
LABEL_674:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v61)
            {
              return v3;
            }

            goto LABEL_675;
          }

LABEL_676:
          v22 = 1882468912;
          return v22 | 2u;
        }

        if (compressed_agx_universal_rgb_fourcc <= 2088265263)
        {
          if (compressed_agx_universal_rgb_fourcc != 2088007218)
          {
            v19 = 2088007220;
            goto LABEL_378;
          }

          goto LABEL_544;
        }

        if (compressed_agx_universal_rgb_fourcc == 2088265264)
        {
          return 1885745712;
        }

        v59 = 2088265266;
LABEL_669:
        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != v59)
        {
          return v3;
        }

        return 1885745714;
      }

      if (compressed_agx_universal_rgb_fourcc <= 2088003119)
      {
        if (compressed_agx_universal_rgb_fourcc == 2084075058)
        {
          return 875704950;
        }

        if (compressed_agx_universal_rgb_fourcc != 2084075060)
        {
          v21 = 2084718401;
          goto LABEL_625;
        }

        goto LABEL_665;
      }

      if (compressed_agx_universal_rgb_fourcc > 2088003123)
      {
        if (compressed_agx_universal_rgb_fourcc != 2088003124)
        {
          v58 = 2088007216;
LABEL_649:
          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != v58)
          {
            return v3;
          }

          v37 = 1886676528;
          return v37 | 0x1000u;
        }

LABEL_652:
        v5 = 1886676528;
        return v5 | 4u;
      }

      if (compressed_agx_universal_rgb_fourcc != 2088003120)
      {
        v17 = 2088003122;
        goto LABEL_358;
      }

LABEL_385:
      v42 = 26160;
      return v42 | 0x70740000u;
    }

    if (compressed_agx_universal_rgb_fourcc > 796161585)
    {
      if (compressed_agx_universal_rgb_fourcc > 796423731)
      {
        if (compressed_agx_universal_rgb_fourcc > 1530426927)
        {
          if (compressed_agx_universal_rgb_fourcc > 1530426931)
          {
            if (compressed_agx_universal_rgb_fourcc != 1530426932)
            {
              v3 = compressed_agx_universal_rgb_fourcc;
              if (compressed_agx_universal_rgb_fourcc == 1534354992)
              {
                return 1952854576;
              }

              return v3;
            }

            goto LABEL_665;
          }

          if (compressed_agx_universal_rgb_fourcc != 1530426928)
          {
            v6 = 1530426930;
LABEL_373:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v6)
            {
              return v3;
            }

            return 875704950;
          }

LABEL_658:
          v62 = 875704422;
          return v62 | 0x10u;
        }

        if (compressed_agx_universal_rgb_fourcc > 1530422833)
        {
          if (compressed_agx_universal_rgb_fourcc == 1530422834)
          {
            goto LABEL_638;
          }

          v52 = 1530422836;
          goto LABEL_636;
        }

        if (compressed_agx_universal_rgb_fourcc != 796423732)
        {
          v18 = 1530422832;
          goto LABEL_278;
        }

LABEL_675:
        v60 = 1882468912;
        return (v60 + 516);
      }

      if (compressed_agx_universal_rgb_fourcc <= 796419633)
      {
        if (compressed_agx_universal_rgb_fourcc == 796161586)
        {
          goto LABEL_544;
        }

        if (compressed_agx_universal_rgb_fourcc == 796161588)
        {
LABEL_546:
          v33 = 1886680626;
          return (v33 + 2);
        }

        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != 796419632)
        {
          return v3;
        }

        return 1885745712;
      }

      if (compressed_agx_universal_rgb_fourcc <= 796423727)
      {
        if (compressed_agx_universal_rgb_fourcc == 796419634)
        {
          return 1885745714;
        }

        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != 796419636)
        {
          return v3;
        }

        goto LABEL_526;
      }

      if (compressed_agx_universal_rgb_fourcc != 796423728)
      {
        v53 = 796423730;
LABEL_613:
        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != v53)
        {
          return v3;
        }

        goto LABEL_676;
      }
    }

    else
    {
      if (compressed_agx_universal_rgb_fourcc > 792229423)
      {
        if (compressed_agx_universal_rgb_fourcc <= 796157487)
        {
          if (compressed_agx_universal_rgb_fourcc > 792229427)
          {
            if (compressed_agx_universal_rgb_fourcc != 792229428)
            {
              v21 = 792872769;
              goto LABEL_625;
            }

            goto LABEL_665;
          }

          if (compressed_agx_universal_rgb_fourcc != 792229424)
          {
            v6 = 792229426;
            goto LABEL_373;
          }

          goto LABEL_658;
        }

        if (compressed_agx_universal_rgb_fourcc > 796157491)
        {
          if (compressed_agx_universal_rgb_fourcc != 796157492)
          {
            v58 = 796161584;
            goto LABEL_649;
          }

          goto LABEL_652;
        }

        if (compressed_agx_universal_rgb_fourcc != 796157488)
        {
          v17 = 796157490;
          goto LABEL_358;
        }

        goto LABEL_385;
      }

      if (compressed_agx_universal_rgb_fourcc > 762869299)
      {
        if (compressed_agx_universal_rgb_fourcc > 792225329)
        {
          if (compressed_agx_universal_rgb_fourcc == 792225330)
          {
            goto LABEL_638;
          }

          v52 = 792225332;
          goto LABEL_636;
        }

        if (compressed_agx_universal_rgb_fourcc != 762869300)
        {
          v18 = 792225328;
LABEL_278:
          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != v18)
          {
            return v3;
          }

          return 875704422;
        }

        goto LABEL_675;
      }

      if (compressed_agx_universal_rgb_fourcc == 762865204)
      {
        goto LABEL_526;
      }

      if (compressed_agx_universal_rgb_fourcc != 762869296)
      {
        v53 = 762869298;
        goto LABEL_613;
      }
    }

    return 1882468912;
  }

  if (compressed_agx_universal_rgb_fourcc > 645280823)
  {
    if (compressed_agx_universal_rgb_fourcc <= 758670895)
    {
      if (compressed_agx_universal_rgb_fourcc <= 645411895)
      {
        if (compressed_agx_universal_rgb_fourcc <= 645410871)
        {
          if (compressed_agx_universal_rgb_fourcc == 645280824)
          {
            v40 = 1982882104;
            return v40 | 0x40000u;
          }

          if (compressed_agx_universal_rgb_fourcc == 645346162)
          {
            return 1999843442;
          }

          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc == 645346401)
          {
            return 1999908961;
          }

          return v3;
        }

        if (compressed_agx_universal_rgb_fourcc > 645411383)
        {
          if (compressed_agx_universal_rgb_fourcc == 645411384)
          {
            v63 = 2016436536;
            return v63 | 0x20000u;
          }

          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc == 645411443)
          {
            return 2016567667;
          }

          return v3;
        }

        if (compressed_agx_universal_rgb_fourcc == 645410872)
        {
          return 2016436536;
        }

        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc != 645410931)
        {
          return v3;
        }

        v10 = 2016436536;
        return (v10 + 59);
      }

      if (compressed_agx_universal_rgb_fourcc <= 645424691)
      {
        if (compressed_agx_universal_rgb_fourcc <= 645424687)
        {
          if (compressed_agx_universal_rgb_fourcc != 645411896)
          {
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != 645411955)
            {
              return v3;
            }

            v10 = 2016698680;
            return (v10 + 59);
          }

          v11 = 24888;
          return v11 | 0x78340000u;
        }

        if (compressed_agx_universal_rgb_fourcc != 645424688)
        {
          v59 = 645424690;
          goto LABEL_669;
        }

        return 1885745712;
      }

      if (compressed_agx_universal_rgb_fourcc <= 645428785)
      {
        if (compressed_agx_universal_rgb_fourcc != 645424692)
        {
          v41 = 645428784;
          goto LABEL_383;
        }

        goto LABEL_526;
      }

      if (compressed_agx_universal_rgb_fourcc != 645428786)
      {
        v61 = 645428788;
        goto LABEL_674;
      }

      goto LABEL_676;
    }

    if (compressed_agx_universal_rgb_fourcc > 762603055)
    {
      if (compressed_agx_universal_rgb_fourcc <= 762607153)
      {
        if (compressed_agx_universal_rgb_fourcc <= 762603059)
        {
          if (compressed_agx_universal_rgb_fourcc != 762603056)
          {
            v17 = 762603058;
            goto LABEL_358;
          }

          goto LABEL_385;
        }

        if (compressed_agx_universal_rgb_fourcc != 762603060)
        {
          v58 = 762607152;
          goto LABEL_649;
        }

        goto LABEL_652;
      }

      if (compressed_agx_universal_rgb_fourcc <= 762865199)
      {
        if (compressed_agx_universal_rgb_fourcc != 762607154)
        {
          v19 = 762607156;
LABEL_378:
          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != v19)
          {
            return v3;
          }

          goto LABEL_546;
        }

LABEL_544:
        v42 = 30258;
        return v42 | 0x70740000u;
      }

      if (compressed_agx_universal_rgb_fourcc == 762865200)
      {
        return 1885745712;
      }

      v59 = 762865202;
      goto LABEL_669;
    }

    if (compressed_agx_universal_rgb_fourcc > 758674991)
    {
      if (compressed_agx_universal_rgb_fourcc > 758674995)
      {
        if (compressed_agx_universal_rgb_fourcc != 758674996)
        {
          v21 = 759318337;
          goto LABEL_625;
        }

        goto LABEL_665;
      }

      if (compressed_agx_universal_rgb_fourcc != 758674992)
      {
        v6 = 758674994;
        goto LABEL_373;
      }

      goto LABEL_658;
    }

    if (compressed_agx_universal_rgb_fourcc == 758670896)
    {
      return 875704422;
    }

    if (compressed_agx_universal_rgb_fourcc == 758670898)
    {
      goto LABEL_638;
    }

    v52 = 758670900;
LABEL_636:
    v3 = compressed_agx_universal_rgb_fourcc;
    if (compressed_agx_universal_rgb_fourcc != v52)
    {
      return v3;
    }

    return 875836518;
  }

  if (compressed_agx_universal_rgb_fourcc > 645097011)
  {
    if (compressed_agx_universal_rgb_fourcc > 645162543)
    {
      if (compressed_agx_universal_rgb_fourcc <= 645166641)
      {
        if (compressed_agx_universal_rgb_fourcc <= 645162547)
        {
          if (compressed_agx_universal_rgb_fourcc != 645162544)
          {
            v17 = 645162546;
LABEL_358:
            v3 = compressed_agx_universal_rgb_fourcc;
            if (compressed_agx_universal_rgb_fourcc != v17)
            {
              return v3;
            }

            v22 = 1886676528;
            return v22 | 2u;
          }

          goto LABEL_385;
        }

        if (compressed_agx_universal_rgb_fourcc != 645162548)
        {
          v58 = 645166640;
          goto LABEL_649;
        }

        goto LABEL_652;
      }

      if (compressed_agx_universal_rgb_fourcc > 645279799)
      {
        if (compressed_agx_universal_rgb_fourcc == 645279800)
        {
          return 1982882104;
        }

        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc == 645280312)
        {
          v63 = 1982882104;
          return v63 | 0x20000u;
        }

        return v3;
      }

      if (compressed_agx_universal_rgb_fourcc != 645166642)
      {
        v19 = 645166644;
        goto LABEL_378;
      }

      goto LABEL_544;
    }

    if (compressed_agx_universal_rgb_fourcc > 645101107)
    {
      if (compressed_agx_universal_rgb_fourcc > 645149298)
      {
        if (compressed_agx_universal_rgb_fourcc != 645149299)
        {
          v3 = compressed_agx_universal_rgb_fourcc;
          if (compressed_agx_universal_rgb_fourcc != 645149811)
          {
            return v3;
          }

          v40 = 1949327731;
          return v40 | 0x40000u;
        }

        v63 = 1949327731;
        return v63 | 0x20000u;
      }

      if (compressed_agx_universal_rgb_fourcc != 645101108)
      {
        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc == 645148787)
        {
          return 1949327731;
        }

        return v3;
      }

      v35 = 1937125938;
      return (v35 + 514);
    }

    if (compressed_agx_universal_rgb_fourcc != 645097012)
    {
      if (compressed_agx_universal_rgb_fourcc != 645101104)
      {
        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc == 645101106)
        {
          return 1937125938;
        }

        return v3;
      }

      v54 = 1936077360;
      return v54 | 0x100000u;
    }

    v60 = 1936077360;
    return (v60 + 516);
  }

  if (compressed_agx_universal_rgb_fourcc <= 642934848)
  {
    if (compressed_agx_universal_rgb_fourcc > 641234479)
    {
      if (compressed_agx_universal_rgb_fourcc <= 641234483)
      {
        if (compressed_agx_universal_rgb_fourcc != 641234480)
        {
          v6 = 641234482;
          goto LABEL_373;
        }

        goto LABEL_658;
      }

      if (compressed_agx_universal_rgb_fourcc != 641234484)
      {
        v21 = 641877825;
        goto LABEL_625;
      }

LABEL_665:
      v62 = 875836518;
      return v62 | 0x10u;
    }

    if (compressed_agx_universal_rgb_fourcc != 641230384)
    {
      if (compressed_agx_universal_rgb_fourcc != 641230386)
      {
        v52 = 641230388;
        goto LABEL_636;
      }

LABEL_638:
      v51 = 875704422;
      return v51 | 0x200u;
    }

    return 875704422;
  }

  if (compressed_agx_universal_rgb_fourcc <= 645083762)
  {
    if (compressed_agx_universal_rgb_fourcc > 644624753)
    {
      if (compressed_agx_universal_rgb_fourcc == 644624754)
      {
        return 1815162994;
      }

      else
      {
        v3 = compressed_agx_universal_rgb_fourcc;
        if (compressed_agx_universal_rgb_fourcc == 645083251)
        {
          return 1932550515;
        }
      }
    }

    else if (compressed_agx_universal_rgb_fourcc == 642934849)
    {
      return 1380411457;
    }

    else
    {
      v3 = compressed_agx_universal_rgb_fourcc;
      if (compressed_agx_universal_rgb_fourcc == 643969848)
      {
        return 1647534392;
      }
    }

    return v3;
  }

  if (compressed_agx_universal_rgb_fourcc <= 645097007)
  {
    if (compressed_agx_universal_rgb_fourcc != 645083763)
    {
      v3 = compressed_agx_universal_rgb_fourcc;
      if (compressed_agx_universal_rgb_fourcc != 645084275)
      {
        return v3;
      }

      v40 = 1932550515;
      return v40 | 0x40000u;
    }

    v63 = 1932550515;
    return v63 | 0x20000u;
  }

  if (compressed_agx_universal_rgb_fourcc == 645097008)
  {
    return 1936077360;
  }

  v3 = compressed_agx_universal_rgb_fourcc;
  if (compressed_agx_universal_rgb_fourcc == 645097010)
  {
    v22 = 1936077360;
    return v22 | 2u;
  }

  return v3;
}

void CA::Render::post_notification(unsigned int a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a1 > 0x4A)
  {
    return;
  }

  v8 = *MEMORY[0x1E69E9AC8];
  os_unfair_lock_lock(&CA::Render::notification_lock);
  if ((CA::Render::initialize_notifications(void)::initialized & 1) == 0)
  {
    v45 = CA::Render::notifications;
    v46 = 75;
    v47 = &dword_1ED4E99A0;
    do
    {
      *v45 = v45;
      v45[1] = v45;
      v45 += 2;
      *(v47 - 2) = 0uLL;
      *(v47 - 1) = 0uLL;
      *v47 = 1065353216;
      v47 += 10;
      --v46;
    }

    while (v46);
    CA::Render::initialize_notifications(void)::initialized = 1;
  }

  if (CA::Render::notifications[2 * a1 + 1] != &CA::Render::notifications[2 * a1])
  {
    v49 = a3;
    v9 = 40 * a1;
    v10 = std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>((&CA::Render::notifications_map_data + v9), 0);
    v11 = (v10 + 3);
    v12 = &CA::Render::post_notification(CA::Render::NotificationName,CA::Render::Object *,void *,BOOL)::empty_dummy;
    if (!v10)
    {
      v11 = &CA::Render::post_notification(CA::Render::NotificationName,CA::Render::Object *,void *,BOOL)::empty_dummy;
    }

    v56 = v11;
    if (a2)
    {
      v10 = std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>((&CA::Render::notifications_map_data + v9), a2);
      if (v10)
      {
        v12 = (v10 + 3);
      }

      else
      {
        v12 = &CA::Render::post_notification(CA::Render::NotificationName,CA::Render::Object *,void *,BOOL)::empty_dummy;
      }
    }

    v13 = v56[1];
    v14 = v12[1];
    v15 = v14 != v12;
    v16 = v13 != v56;
    if (v13 != v56 || v14 != v12)
    {
      v52 = 0;
      v53 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v54 = v8 >> 4;
      v55 = v12;
      v50 = a2;
      while (v16)
      {
        v21 = (v13 - 2);
        if (v15 && v13[2] >= v14[2])
        {
          v21 = (v14 - 2);
LABEL_24:
          v14 = v14[1];
          goto LABEL_25;
        }

        v13 = v13[1];
LABEL_25:
        v22 = *(v21 + 6);
        if (v22)
        {
          v23 = v22 == a2;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          if (!atomic_fetch_add(v21 + 18, 1u))
          {
            v10 = dispatch_semaphore_wait(*(v21 + 8), 0xFFFFFFFFFFFFFFFFLL);
            v12 = v55;
          }

          if (v20 >= v54)
          {
            if (v18 >= v53)
            {
              v24 = a4;
              v25 = v18 - v52;
              v26 = (v18 - v52) >> 3;
              v27 = v26 + 1;
              if ((v26 + 1) >> 61)
              {
                std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
              }

              v28 = v9;
              v29 = v53 - v52;
              if ((v53 - v52) >> 2 > v27)
              {
                v27 = v29 >> 2;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v27;
              }

              v51 = v20;
              if (v30)
              {
                if (!(v30 >> 61))
                {
                  operator new();
                }

                std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
              }

              v31 = (8 * v26);
              v53 = 0;
              *v31 = v21;
              v18 = (v31 + 1);
              v32 = v52;
              v10 = memcpy(0, v52, v25);
              if (v32)
              {
                operator delete(v32);
              }

              v52 = 0;
              a4 = v24;
              v9 = v28;
              a2 = v50;
              v12 = v55;
              v20 = v51;
            }

            else
            {
              *v18 = v21;
              v18 += 8;
            }
          }

          else
          {
            v10 = MEMORY[0x1EEE9AC00](v10);
            *(&v48 - 2) = v21;
            *(&v48 - 1) = v19;
            v19 = &v48 - 2;
          }

          ++v20;
          if (*(v21 + 76) == 1)
          {
            v33 = *(v21 + 6);
LABEL_52:
            *(v21 + 77) = 1;
            v35 = *v21;
            v34 = *(v21 + 1);
            *(v35 + 8) = v34;
            *v34 = v35;
            *v21 = v21;
            *(v21 + 1) = v21;
            v36 = *(v21 + 3);
            v37 = *(v21 + 2);
            *(v37 + 8) = v36;
            *v36 = v37;
            *(v21 + 2) = v21 + 4;
            *(v21 + 3) = v21 + 4;
            if (v33)
            {
              v10 = std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>((&CA::Render::notifications_map_data + v9), *(v21 + 6));
              if (v10 && v10[4] == v10 + 3)
              {
                std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::erase((&CA::Render::notifications_map_data + v9), v10);
              }

              v12 = v55;
            }

            goto LABEL_57;
          }
        }

        if (a4)
        {
          v33 = a2;
          if (*(v21 + 6) == a2)
          {
            goto LABEL_52;
          }
        }

LABEL_57:
        v15 = v14 != v12;
        v16 = v13 != v56;
        if (v13 == v56 && v14 == v12)
        {
          v38 = v52;
          os_unfair_lock_unlock(&CA::Render::notification_lock);
          for (i = v49; v19; v19 = v19[1])
          {
            v40 = *v19;
            (*(*v19 + 40))(a2, *(*v19 + 56), i);
            v41 = *(v40 + 77);
            if (atomic_fetch_add((v40 + 72), 0xFFFFFFFF) == 1)
            {
              dispatch_semaphore_signal(*(v40 + 64));
            }

            if (v41)
            {
              dispatch_release(*(v40 + 64));
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v40);
            }
          }

          if (v38 != v18)
          {
            v42 = v38;
            do
            {
              v43 = *v42;
              (*(*v42 + 40))(a2, *(*v42 + 56), i);
              v44 = *(v43 + 77);
              if (atomic_fetch_add((v43 + 72), 0xFFFFFFFF) == 1)
              {
                dispatch_semaphore_signal(*(v43 + 64));
              }

              if (v44)
              {
                dispatch_release(*(v43 + 64));
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                malloc_zone_free(malloc_zone, v43);
              }

              v42 += 8;
            }

            while (v42 != v18);
          }

          if (v38)
          {
            operator delete(v38);
          }

          return;
        }
      }

      if (!v14)
      {
        __assert_rtn("post_notification", "render-notification.cpp", 434, "0");
      }

      if (v15)
      {
        v21 = (v14 - 2);
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_24;
    }
  }

  os_unfair_lock_unlock(&CA::Render::notification_lock);
}