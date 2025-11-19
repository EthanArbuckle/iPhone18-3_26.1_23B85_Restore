uint64_t (*__color_space_state_create_itur_709_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_itur_709_f = v1;
  return result;
}

void argb32_mark_image_XRGB32(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  v13 = *(a1 + 28);
  v14 = *(a1 + 4);
  v15 = *(a1 + 8);
  v26 = v15;
  v27 = v14;
  v16 = *(a1 + 136);
  if (v16)
  {
    v17 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v17;
    shape_enum_clip_alloc(a1, a2, v16, 1, 1, 1, v17, i, v14, v15);
    v19 = v18;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  for (i = 0; ; v20 = HIDWORD(i))
  {
    v22 = *(a1 + 76);
    v23 = (*(a1 + 88) + v22 * (a4 + v21 * a5) + 4 * (v20 + a3));
    v24 = (*(a1 + 40) + (*(a1 + 16) + v21) * v13 + 4 * (*(a1 + 12) + v20));
    v25 = v22 * a5;
    if (v11 == 2)
    {
      CGSBlend8888toRGBA8888(v23, v25, v24, v13, v27, v26, 0x39u, *(a1 + 48) != 0);
      if (!v19)
      {
        return;
      }
    }

    else if (*(a1 + 96))
    {
      CGSConvertABGR8888toRGBA8888(v23, v25, v24, v13, v27, v26, a7, a8);
      if (!v19)
      {
        return;
      }
    }

    else
    {
      CGSConvertXBGR8888toRGBA8888(v23, v25, v24, v13, v27, v26, a7, a8);
      if (!v19)
      {
        return;
      }
    }

LABEL_9:
    if (!shape_enum_clip_next(v19, &i + 1, &i, &v27, &v26))
    {
      break;
    }

    v21 = i;
  }

  free(v19);
}

char *color_space_state_create_itur_709()
{
  if (color_space_state_create_itur_709_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_itur_709_cglibrarypredicate, &__block_literal_global_147_1792);
  }

  v0 = color_space_state_create_itur_709_f;
  if (color_space_state_create_itur_709_cglibrarypredicate_148 != -1)
  {
    dispatch_once(&color_space_state_create_itur_709_cglibrarypredicate_148, &__block_literal_global_151);
  }

  v1 = v0(color_space_state_create_itur_709_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceITUR_709";
    *(icc_with_profile + 5) = 20;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.709-5";
  }

  return icc_with_profile;
}

void CGSConvertABGR8888toRGBA8888(char *a1, unsigned int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertABGR8888toRGBA8888", 363, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertABGR8888toRGBA8888", 363, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  v11 = &a1[v10 * a2];
  v12 = &a3[v10 * a4];
  if (a4 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  if (a4 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = -a4;
  }

  if (a4 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = -a2;
  }

  if (a4 < 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a1;
  }

  if ((v15 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v16, v13, v15, v14);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (a5)
        {
          v19 = &v13[i * v14];
          v20 = a5;
          do
          {
            v17.i32[0] = *v19;
            v21 = vrev64_s16(*&vmovl_u8(v17));
            v17 = vuzp1_s8(v21, v21);
            *v19++ = v17.i32[0];
            --v20;
          }

          while (v20);
        }
      }
    }
  }

  else
  {
    src.data = v16;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v15;
    dest.data = v13;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v14;
    *permuteMap = 66051;
    vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
  }
}

uint64_t *__color_space_state_create_itur_709_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncITUR709Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_itur_709_s = v1;
  return result;
}

uint64_t CGColorSpaceCreateITUR_2020()
{
  if (CGColorSpaceCreateITUR_2020_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_2020_predicate, &__block_literal_global_249);
  }

  v0 = CGColorSpaceCreateITUR_2020_space;
  if (CGColorSpaceCreateITUR_2020_space)
  {
    CFRetain(CGColorSpaceCreateITUR_2020_space);
  }

  return v0;
}

char *color_space_state_create_itur_2020()
{
  if (color_space_state_create_itur_2020_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_itur_2020_cglibrarypredicate, &__block_literal_global_180);
  }

  v0 = color_space_state_create_itur_2020_f;
  if (color_space_state_create_itur_2020_cglibrarypredicate_181 != -1)
  {
    dispatch_once(&color_space_state_create_itur_2020_cglibrarypredicate_181, &__block_literal_global_184);
  }

  v1 = v0(color_space_state_create_itur_2020_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceITUR_2020";
    *(icc_with_profile + 5) = 23;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.2020-1";
  }

  return icc_with_profile;
}

uint64_t decode_byte_8bpc(uint64_t result, int a2, char *__src, int a4, char *__dst, int a6, int a7, int a8, double a9, uint8x8_t a10)
{
  v13 = a8 * result;
  v14 = a6;
  if (a7 == 1)
  {
    while (v13 < 5)
    {
      if (v13 > 0)
      {
        v17 = __src - 1;
        v19 = __dst - 1;
        v18 = a8 * result;
LABEL_8:
        v20 = v17 + 1;
        v21 = v18 + 1;
        v22 = v19 + 1;
        do
        {
          v23 = *v20++;
          *v22++ = ~v23;
          --v21;
        }

        while (v21 > 1);
      }

      __src += a4;
      __dst += a6;
      if (!--a2)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = v13 + 4;
    do
    {
      a10.i32[0] = *&__src[v15];
      a10 = vuzp1_s8(veor_s8(*&vmovl_u8(a10), 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL);
      *&__dst[v15] = a10.i32[0];
      v15 += 4;
      v16 -= 4;
    }

    while (v16 > 8);
    v17 = &__src[v15 - 1];
    v18 = v13 - v15;
    v19 = &__dst[v15 - 1];
    goto LABEL_8;
  }

  v24 = v13;
  v25 = a4;
  do
  {
    result = memcpy(__dst, __src, v24);
    __src += v25;
    __dst += v14;
    --a2;
  }

  while (a2);
  return result;
}

uint64_t (*__color_space_state_create_itur_2020_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_itur_2020_f = v1;
  return result;
}

int *resample_horizontal<unsigned char,int,1,false>(int *result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int16x8_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t *a14, int *a15, int a16)
{
  if (a12 >= 1 && a16 >= 1)
  {
    v18 = 0;
    v19 = *a14;
    v20 = *a15;
    v21 = a12;
    v22 = 2 * a2 + 8;
    v23 = result + v22 * a12;
    v24 = *&v23[-v22 + 4] + *&v23[-v22];
    if (v20 < v24)
    {
      v24 = *a15;
    }

    if (a2 <= 3)
    {
      v25 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    else
    {
      v25 = 1;
    }

    v26 = a2 > 7;
    if ((a2 & 7) != 0)
    {
      v27 = a2 & 7;
    }

    else
    {
      v27 = 8;
    }

    if ((a2 & 7) != 0)
    {
      v26 = 0;
    }

    v28 = ((a2 + 8 * (v26 << 31 >> 31)) & 0xFFFFFFF8) + ((v27 + 7) & 0x18);
    v29 = v21 - v25;
    v30 = vdupq_n_s16(v27);
    if (a2 >= 8)
    {
      v31 = 8;
    }

    else
    {
      v31 = a2;
    }

    v32 = vdupq_n_s16(v31);
    v33 = a16;
    v35 = a2 == a2 && v21 > v25;
    v36 = vcgtq_u16(v32, xmmword_18439C5D0);
    v37 = vcgtq_u16(v30, xmmword_18439C5D0);
    v38.i64[0] = 0xFF000000FFLL;
    v38.i64[1] = 0xFF000000FFLL;
    do
    {
      v39 = *(a13 + 8 * v18);
      v40 = 0;
      if (v35)
      {
        v41 = result;
        while (1)
        {
          v42 = (v19 + *v41);
          v43 = (v42 + v28);
          if (v42 + v28 > v19 + v24)
          {
            break;
          }

          if (v42 >= v43)
          {
            v47 = 0uLL;
            v48 = 0uLL;
          }

          else
          {
            v44 = (v41 + 2);
            v45 = v41[1];
            v46 = &v43[-1];
            v47 = 0uLL;
            v48 = 0uLL;
            while (v42 < v46)
            {
              v49 = *v44++;
              v50 = v49;
              *v49.i8 = *v42++;
              a10 = vandq_s8(v50, v36);
              v16 = vmovl_u8(*v49.i8);
              v48 = vmlal_high_s16(v48, v16, a10);
              v47 = vmlal_s16(v47, *v16.i8, *a10.i8);
              v45 -= 8;
            }

            if (v45 >= 1)
            {
              a10 = vandq_s8(*v44, v37);
              v16 = vmovl_u8(*v42);
              v48 = vmlal_high_s16(v48, v16, a10);
              v47 = vmlal_s16(v47, *v16.i8, *a10.i8);
            }
          }

          *v39++ = vmaxq_s32(vminq_s32(((vaddvq_s32(vaddq_s32(v47, v48)) + 0x2000) >> 14), v38), 0).u32[0];
          ++v40;
          v41 = (v41 + v22);
          if (v40 == v29)
          {
            v40 = v29;
            break;
          }
        }
      }

      else
      {
        v41 = result;
      }

      if (v40 < v21)
      {
        do
        {
          v51 = v41[1];
          v52 = *v41;
          if (v52 >= v24)
          {
            v53 = v24;
          }

          else
          {
            v53 = *v41;
          }

          v54 = v24 - v53;
          if (v51 >= v54)
          {
            v51 = v54;
          }

          if (v51 < 1)
          {
            v58 = 0uLL;
            v60 = 0uLL;
          }

          else
          {
            v55 = (v19 + v52);
            v56 = &v55[-2] + v51;
            v57 = (v41 + 2);
            v58 = 0uLL;
            if (v55 >= v56)
            {
              v60 = 0uLL;
              goto LABEL_70;
            }

            v59 = v51 + 8;
            v60 = 0uLL;
            do
            {
              v61 = v59;
              v59 -= 8;
              if ((v23 - v57) < 0x10)
              {
                a10 = 0uLL;
                if (v61 != 8)
                {
                  if (v59 < 4)
                  {
                    if (v61 == 9)
                    {
                      a10.i16[0] = v57->i16[0];
                    }

                    else
                    {
                      if (v61 != 10)
                      {
                        a10.i16[0] = v57->i16[2];
                      }

                      v16.i16[0] = v57->i16[0];
                      v16.i16[2] = v57->i16[1];
                      *a10.i8 = vuzp1_s16(*v16.i8, *a10.i8);
                    }
                  }

                  else
                  {
                    if (v59 == 4)
                    {
                      v16.i64[0] = 0;
                    }

                    else if (v59 == 5)
                    {
                      v16.i16[0] = v57->i16[4];
                    }

                    else
                    {
                      if (v61 != 14)
                      {
                        if (v51)
                        {
                          v63 = 0;
                        }

                        else
                        {
                          v63 = v57->u16[7];
                        }

                        a10.i32[0] = v57->u16[6];
                        a10.i32[1] = v63;
                      }

                      v16.i16[0] = v57->i16[4];
                      v16.i16[2] = v57->i16[5];
                      *v16.i8 = vuzp1_s16(*v16.i8, *a10.i8);
                    }

                    a10.i64[0] = v57->i64[0];
                    a10.i64[1] = v16.i64[0];
                  }
                }
              }

              else
              {
                a10 = vandq_s8(*v57, v36);
              }

              ++v57;
              v62 = *v55++;
              v16 = vmovl_u8(v62);
              v60 = vmlal_high_s16(v60, v16, a10);
              v58 = vmlal_s16(v58, *v16.i8, *a10.i8);
            }

            while (v55 < v56);
            if (v59 >= 9)
            {
              v51 = v61 - 16;
LABEL_70:
              v64 = v51 << 16;
              v65 = v51;
              while (2)
              {
                if ((v23 - v57) < 0x10)
                {
                  if (v65 >= 4)
                  {
                    if (v65 == 4)
                    {
                      v16.i64[0] = 0;
                    }

                    else if (v65 == 5)
                    {
                      v16.i16[0] = v57->i16[4];
                    }

                    else
                    {
                      if (v65 == 6)
                      {
                        v70 = 0;
                      }

                      else
                      {
                        if (v51)
                        {
                          v72 = 0;
                        }

                        else
                        {
                          v72 = v57->u16[7];
                        }

                        v70.i32[0] = v57->u16[6];
                        v70.i32[1] = v72;
                      }

                      v16.i16[0] = v57->i16[4];
                      v16.i16[2] = v57->i16[5];
                      *v16.i8 = vuzp1_s16(*v16.i8, v70);
                    }

                    a10.i64[0] = v57->i64[0];
                    a10.i64[1] = v16.i64[0];
                    goto LABEL_75;
                  }

                  if (v65 == 1)
                  {
                    a10.i16[0] = v57->i16[0];
                  }

                  else
                  {
                    if (v65 == 2)
                    {
                      a10 = 0uLL;
                    }

                    else
                    {
                      a10 = v57->u16[2];
                    }

                    v16.i16[0] = v57->i16[0];
                    v16.i16[2] = v57->i16[1];
                    *a10.i8 = vuzp1_s16(*v16.i8, *a10.i8);
                  }

                  ++v57;
                }

                else
                {
                  v66 = v64 >> 16;
                  if (v64 >> 16 >= 8)
                  {
                    v66 = 8;
                  }

                  a10 = vandq_s8(*v57, vcgtq_s16(vdupq_n_s16(v66), xmmword_18439C5D0));
LABEL_75:
                  ++v57;
                  if (v65 >= 8)
                  {
                    v67 = *v55;
                    goto LABEL_77;
                  }

                  if (v65 >= 4)
                  {
                    if (v65 == 4)
                    {
                      v69 = 0;
                    }

                    else if (v65 == 5)
                    {
                      v69 = v55->u8[4];
                    }

                    else
                    {
                      if (v65 == 6)
                      {
                        v73 = 0;
                      }

                      else
                      {
                        v73 = v55->u8[6];
                      }

                      v17.i8[0] = v55->i8[4];
                      v17.i8[4] = v55->i8[5];
                      v69 = vuzp1_s16(v17, v73);
                    }

                    v17.i32[0] = v55->i32[0];
                    v17 = vmovl_u8(v17).u64[0];
                    v67 = vuzp1_s8(v17, v69);
                    goto LABEL_77;
                  }
                }

                if (v65)
                {
                  if (v65 == 1)
                  {
                    v17 = v55->u8[0];
                  }

                  else
                  {
                    if (v65 == 2)
                    {
                      v71 = 0;
                    }

                    else
                    {
                      v71 = v55->u8[2];
                    }

                    v17.i8[0] = v55->i8[0];
                    v17.i8[4] = v55->i8[1];
                    v17 = vuzp1_s16(v17, v71);
                  }
                }

                else
                {
                  v17 = 0;
                }

                v67.i32[1] = 0;
                v67.i8[0] = v17.i8[0];
                v67.i8[1] = v17.i8[2];
                v67.i8[2] = v17.i8[4];
                v67.i8[3] = v17.i8[6];
LABEL_77:
                ++v55;
                v16 = vmovl_u8(v67);
                v60 = vmlal_high_s16(v60, v16, a10);
                v58 = vmlal_s16(v58, *v16.i8, *a10.i8);
                v64 -= 0x80000;
                v68 = __OFSUB__(v65, 8);
                v65 -= 8;
                if (((v65 & 0x80000000) != 0) ^ v68 | (v65 == 0))
                {
                  break;
                }

                continue;
              }
            }
          }

          *v39++ = vmaxq_s32(vminq_s32(((vaddvq_s32(vaddq_s32(v58, v60)) + 0x2000) >> 14), v38), 0).u32[0];
          ++v40;
          v41 = (v41 + v22);
        }

        while (v40 != v21);
      }

      v19 += v20;
      ++v18;
    }

    while (v18 != v33);
  }

  return result;
}

uint64_t *__color_space_state_create_itur_2020_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncITUR2020Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_itur_2020_s = v1;
  return result;
}

uint64_t resample_vertical<int,unsigned char,1,(AlphaStyle)0>(uint64_t result, double a2, double a3, int32x4_t a4, int16x4_t a5, int16x4_t a6, uint64_t a7, uint64_t a8, int a9, int8x8_t **a10, uint64_t a11)
{
  v11 = *a10;
  v12 = *(result + 4);
  v13 = (result + 8);
  if (a9 >= 8)
  {
    v15 = 0;
    v16 = 8;
    v17.i64[0] = 0x200000002000;
    v17.i64[1] = 0x200000002000;
    do
    {
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = v13;
      if (v12 >= 2)
      {
        v21 = (a11 + 8);
        result = 2;
        v20 = v13;
        do
        {
          v22 = (*(v21 - 1) + 4 * v15);
          v23 = *v22;
          v24 = v22[1];
          v25 = (*v21 + 4 * v15);
          a6 = vmovn_s32(v24);
          v26 = *v20;
          v20 += 2;
          v27 = vdup_n_s16(v26);
          v28 = vmlal_s16(v18, vmovn_s32(v23), v27);
          a5 = vdup_n_s16(HIWORD(v26));
          v19 = vmlal_s16(vmlal_s16(v19, a6, v27), vmovn_s32(v25[1]), a5);
          v18 = vmlal_s16(v28, vmovn_s32(*v25), a5);
          result += 2;
          v21 += 2;
        }

        while (result <= v12);
      }

      if (v12)
      {
        v29 = (*(a11 - 8 + 8 * v12) + 4 * v15);
        a6 = vmovn_s32(*v29);
        a5 = vmovn_s32(v29[1]);
        v30 = vld1_dup_s16(v20);
        v19 = vmlal_s16(v19, a5, v30);
        v18 = vmlal_s16(v18, a6, v30);
      }

      a4 = vshrq_n_s32(vaddq_s32(v19, v17), 0xEuLL);
      *v11++ = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v18, v17), 0xEuLL)), a4));
      v16 += 8;
      v15 += 8;
    }

    while (v16 <= a9);
    v14 = a9 & 0x7FFFFFF8;
  }

  else
  {
    v14 = 0;
  }

  v31 = v14 | 4;
  if ((v14 | 4) <= a9)
  {
    v32.i64[0] = 0x200000002000;
    v32.i64[1] = 0x200000002000;
    do
    {
      v33 = 0uLL;
      v34 = 4 * v14;
      v35 = v13;
      if (v12 >= 2)
      {
        v36 = (a11 + 8);
        result = 2;
        v35 = v13;
        do
        {
          a5 = vmovn_s32(*(*v36 + v34));
          v37 = *v35;
          v35 += 2;
          a6 = vdup_n_s16(v37);
          *a4.i8 = vdup_n_s16(HIWORD(v37));
          v33 = vmlal_s16(vmlal_s16(v33, vmovn_s32(*(*(v36 - 1) + v34)), a6), a5, *a4.i8);
          result += 2;
          v36 += 2;
        }

        while (result <= v12);
      }

      if (v12)
      {
        *a4.i8 = vmovn_s32(*(*(a11 - 8 + 8 * v12) + v34));
        a5 = vld1_dup_s16(v35);
        v33 = vmlal_s16(v33, *a4.i8, a5);
      }

      v38 = vshrq_n_s32(vaddq_s32(v33, v32), 0xEuLL);
      *v38.i8 = vqmovn_s32(v38);
      v11->i32[0] = vqmovun_s16(v38).u32[0];
      v11 = (v11 + 4);
      v14 = v31;
      v31 += 4;
    }

    while (v31 <= a9);
  }

  for (; v14 < a9; ++v14)
  {
    v39 = 0uLL;
    if (v12 >= 2)
    {
      v41 = (a11 + 8);
      v42 = 2;
      v40 = v13;
      do
      {
        v43 = *v40++;
        a4.i32[0] = *(*(v41 - 1) + 4 * v14);
        result = HIWORD(v43);
        a5.i32[0] = v43;
        a6.i32[0] = *(*v41 + 4 * v14);
        v44 = vmlal_s16(v39, *a4.i8, a5);
        a4.i32[0] = HIWORD(v43);
        v39 = vmlal_s16(v44, a6, *a4.i8);
        v42 += 2;
        v41 += 2;
      }

      while (v42 <= v12);
    }

    else
    {
      v40 = v13;
    }

    if (v12)
    {
      a4.i32[0] = *(*(a11 - 8 + 8 * v12) + 4 * v14);
      a5.i16[0] = *v40;
      v39 = vmlal_s16(v39, *a4.i8, a5);
    }

    *v39.i8 = vshr_n_s32(vadd_s32(*v39.i8, 0x200000002000), 0xEuLL);
    *v39.i8 = vqmovn_s32(v39);
    v11->i8[0] = vqmovun_s16(v39).u8[0];
    v11 = (v11 + 1);
  }

  return result;
}

uint64_t CGColorSpaceCreateITUR_2020_sRGBGamma()
{
  if (CGColorSpaceCreateITUR_2020_sRGBGamma_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_2020_sRGBGamma_predicate, &__block_literal_global_252_6577);
  }

  v0 = CGColorSpaceCreateITUR_2020_sRGBGamma_space;
  if (CGColorSpaceCreateITUR_2020_sRGBGamma_space)
  {
    CFRetain(CGColorSpaceCreateITUR_2020_sRGBGamma_space);
  }

  return v0;
}

char *color_space_state_create_itur_2020_sRGB_gamma()
{
  if (color_space_state_create_itur_2020_sRGB_gamma_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_itur_2020_sRGB_gamma_cglibrarypredicate, &__block_literal_global_191);
  }

  v0 = color_space_state_create_itur_2020_sRGB_gamma_f;
  if (color_space_state_create_itur_2020_sRGB_gamma_cglibrarypredicate_192 != -1)
  {
    dispatch_once(&color_space_state_create_itur_2020_sRGB_gamma_cglibrarypredicate_192, &__block_literal_global_195);
  }

  v1 = v0(color_space_state_create_itur_2020_sRGB_gamma_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceITUR_2020_sRGBGamma";
    *(icc_with_profile + 5) = 27;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.2020-1; sRGB Gamma";
  }

  return icc_with_profile;
}

void CG::DisplayListExecutor::applyEntryStrokeState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CGGStateSetStrokeColor(a2, *(v4 + 16));
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 128);
  if (*(v6 + 8) != v5)
  {
    maybe_copy_stroke_state(a2);
    v6 = *(a2 + 128);
    *(v6 + 8) = v5;
  }

  v7 = *(a1 + 24);
  if (*(v6 + 24) != v7)
  {
    maybe_copy_stroke_state(a2);
    *(*(a2 + 128) + 24) = v7;
  }

  CGGStateSetLineCap(a2, *(a1 + 48));
  CGGStateSetLineJoin(a2, *(a1 + 49));
  v8 = *(a1 + 32);
  v9 = *(a2 + 128);
  if (*(v9 + 16) != v8)
  {
    maybe_copy_stroke_state(a2);
    v9 = *(a2 + 128);
    *(v9 + 16) = v8;
  }

  v10 = *(a1 + 50);
  if (*(v9 + 1) != v10)
  {
    maybe_copy_stroke_state(a2);
    *(*(a2 + 128) + 1) = v10;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  CGGStateSetLineDash(a2, v12);
}

uint64_t (*__color_space_state_create_itur_2020_sRGB_gamma_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_itur_2020_sRGB_gamma_f = v1;
  return result;
}

void CGGStateSetLineDash(uint64_t a1, atomic_uint *a2)
{
  if (!CGDashEqualToDash(*(*(a1 + 128) + 32), a2))
  {
    maybe_copy_stroke_state(a1);
    v4 = *(*(a1 + 128) + 32);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v4);
    }

    if (a2)
    {
      atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
    }

    *(*(a1 + 128) + 32) = a2;
  }
}

BOOL CGDashEqualToDash(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 8) == *(a2 + 8) && (v3 = *(a1 + 16), v3 == *(a2 + 16)))
    {
      return memcmp((a1 + 24), (a2 + 24), 8 * v3) == 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t *__color_space_state_create_itur_2020_sRGB_gamma_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncITUR2020_sRGBGammaProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_itur_2020_sRGB_gamma_s = v1;
  return result;
}

char *color_space_state_create_itur_2100_HLG()
{
  if (color_space_state_create_itur_2100_HLG_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_itur_2100_HLG_cglibrarypredicate, &__block_literal_global_229);
  }

  v0 = color_space_state_create_itur_2100_HLG_f;
  if (color_space_state_create_itur_2100_HLG_cglibrarypredicate_230 != -1)
  {
    dispatch_once(&color_space_state_create_itur_2100_HLG_cglibrarypredicate_230, &__block_literal_global_233);
  }

  v1 = v0(color_space_state_create_itur_2100_HLG_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceITUR_2100_HLG";
    *(icc_with_profile + 5) = 29;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.2020 HLG";
    if (should_allow_as_output_space_predicate != -1)
    {
      dispatch_once(&should_allow_as_output_space_predicate, &__block_literal_global_304_1763);
    }

    if ((should_allow_as_output_space_should_allow & 1) == 0)
    {
      icc_with_profile[10] = 0;
    }
  }

  return icc_with_profile;
}

uint64_t CGColorSpaceCreateITUR_2100_HLG()
{
  if (CGColorSpaceCreateITUR_2100_HLG_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_2100_HLG_predicate, &__block_literal_global_267_6568);
  }

  v0 = CGColorSpaceCreateITUR_2100_HLG_space;
  if (CGColorSpaceCreateITUR_2100_HLG_space)
  {
    CFRetain(CGColorSpaceCreateITUR_2100_HLG_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateITUR_2100_PQ()
{
  if (CGColorSpaceCreateITUR_2100_PQ_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_2100_PQ_predicate, &__block_literal_global_264_6571);
  }

  v0 = CGColorSpaceCreateITUR_2100_PQ_space;
  if (CGColorSpaceCreateITUR_2100_PQ_space)
  {
    CFRetain(CGColorSpaceCreateITUR_2100_PQ_space);
  }

  return v0;
}

char *color_space_state_create_itur_2100_PQ()
{
  if (color_space_state_create_itur_2100_PQ_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_itur_2100_PQ_cglibrarypredicate, &__block_literal_global_218_1816);
  }

  v0 = color_space_state_create_itur_2100_PQ_f;
  if (color_space_state_create_itur_2100_PQ_cglibrarypredicate_219 != -1)
  {
    dispatch_once(&color_space_state_create_itur_2100_PQ_cglibrarypredicate_219, &__block_literal_global_222);
  }

  v1 = v0(color_space_state_create_itur_2100_PQ_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceITUR_2100_PQ";
    *(icc_with_profile + 5) = 28;
    *(*(icc_with_profile + 12) + 40) = @"Rec. ITU-R BT.2100 PQ";
    if (should_allow_as_output_space_predicate != -1)
    {
      dispatch_once(&should_allow_as_output_space_predicate, &__block_literal_global_304_1763);
    }

    if ((should_allow_as_output_space_should_allow & 1) == 0)
    {
      icc_with_profile[10] = 0;
    }
  }

  return icc_with_profile;
}

CGPatternRef CGPatternCreate(void *info, CGRect bounds, CGAffineTransform *matrix, CGFloat xStep, CGFloat yStep, CGPatternTiling tiling, BOOL isColored, const CGPatternCallbacks *callbacks)
{
  if (!callbacks)
  {
    return 0;
  }

  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (kCGPatternWillDeallocate_block_invoke_once != -1)
  {
    dispatch_once(&kCGPatternWillDeallocate_block_invoke_once, &__block_literal_global_6_18603);
  }

  Instance = CGTypeCreateInstance(CGPatternGetTypeID_pattern_type_id, 176, *&tiling, isColored, callbacks, v8, v9, v10);
  v23 = Instance;
  if (Instance)
  {
    *(Instance + 16) = atomic_fetch_add_explicit(identifier_18604, 1u, memory_order_relaxed) + 1;
    v24 = *&matrix->a;
    v25 = *&matrix->c;
    *(Instance + 56) = *&matrix->tx;
    *(Instance + 40) = v25;
    *(Instance + 24) = v24;
    *(Instance + 72) = 1;
    *(Instance + 184) = 0;
    *(Instance + 80) = info;
    *&v24 = x;
    *&v25 = y;
    v26 = width;
    v27 = height;
    *(Instance + 104) = CGRectStandardize(*&v24);
    *(v23 + 136) = fabs(xStep);
    *(v23 + 144) = fabs(yStep);
    *(v23 + 152) = tiling;
    *(v23 + 185) = isColored;
    *(v23 + 186) = 0;
    releaseInfo = callbacks->releaseInfo;
    *(v23 + 160) = *&callbacks->version;
    *(v23 + 176) = releaseInfo;
    *(v23 + 88) = 0;
    *(v23 + 96) = 0;
  }

  return v23;
}

CGPatternRef CGPatternCreateWithImage2(unint64_t *cf, _OWORD *a2, CGPatternTiling a3)
{
  if (cf)
  {
    v6 = cf[5];
    v7 = cf[6];
    v8 = (*(cf + 9) & 0x2000000) == 0;
    CFRetain(cf);
  }

  else
  {
    v6 = 0.0;
    v8 = 1;
    v7 = 0.0;
  }

  v9 = a2[1];
  *&v15.a = *a2;
  *&v15.c = v9;
  *&v15.tx = a2[2];
  v10 = 0;
  *&v9 = 0;
  v11 = v6;
  v12 = v7;
  result = CGPatternCreate(cf, *(&v9 - 8), &v15, v6, v7, a3, v8, &image_callbacks_18620);
  if (cf)
  {
    v14 = (*(cf + 39) & 0xE) == 0;
  }

  else
  {
    v14 = 0;
  }

  *(result + 186) = v14;
  *(result + 184) = 1;
  return result;
}

uint64_t __CGPatternGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGPatternGetTypeID_class);
  CGPatternGetTypeID_pattern_type_id = result;
  return result;
}

CGColorSpaceRef CGColorSpaceCreatePattern(CGColorSpaceRef baseSpace)
{
  v34 = *MEMORY[0x1E69E9840];
  if (baseSpace && CGColorSpaceGetType(baseSpace) == 9)
  {
    goto LABEL_18;
  }

  v9 = malloc_type_calloc(0x78uLL, 1uLL, 0x1C9609B4uLL);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  *v9 = 1;
  v9[4] = 0;
  *(v9 + 10) = 0;
  if (baseSpace)
  {
    v11 = CGColorSpaceIgnoresIntent(baseSpace);
    *(v10 + 24) = 9;
    v12 = (v10 + 24);
    *(v10 + 12) = v11;
    *(v10 + 11) = 0;
    *(v10 + 14) = 0;
    *(v10 + 48) = *(*(baseSpace + 3) + 48);
    *(v10 + 80) = 0;
    *(v10 + 112) = color_space_state_create_pattern_pattern_vtable;
    ProcessColorModel = CGColorSpaceGetProcessColorModel(baseSpace);
    *(v10 + 28) = 6;
    *(v10 + 32) = ProcessColorModel;
    *(v10 + 88) = 0;
    DefaultColorComponents = CGColorSpaceGetDefaultColorComponents(baseSpace);
  }

  else
  {
    *(v9 + 6) = 9;
    v12 = v9 + 12;
    *(v9 + 11) = 256;
    v9[7] = 0;
    *(v9 + 6) = 0;
    v15 = CFRetain(@"kCGColorSpaceColoredPattern");
    *(v10 + 112) = color_space_state_create_pattern_pattern_vtable;
    *(v10 + 28) = -4294967290;
    *(v10 + 80) = v15;
    *(v10 + 88) = 0;
    DefaultColorComponents = &pattern_get_default_color_components_default_colored_pattern;
  }

  *(v10 + 40) = DefaultColorComponents;
  v16 = malloc_type_calloc(0x90uLL, 1uLL, 0xF2421CD3uLL);
  *(v10 + 96) = v16;
  if (!v16)
  {
    free(v10);
LABEL_18:
    v28 = CGColorSpaceCreateWithState(0, v2, v3, v4, v5, v6, v7, v8);
    goto LABEL_19;
  }

  v24 = v16;
  v25 = v16;
  if (baseSpace)
  {
    CFRetain(baseSpace);
    v25 = *(v10 + 96);
  }

  *v24 = baseSpace;
  memset(md, 0, 16);
  if (!*v25)
  {
    v31 = xmmword_18439D020;
    goto LABEL_27;
  }

  v26 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v26);
  if (v26)
  {
    CC_MD5_Update(v26, v12, 4u);
  }

  if (!*v25 || (v27 = *(*v25 + 3)) == 0)
  {
    if (v26)
    {
      goto LABEL_23;
    }

LABEL_25:
    v30 = 0uLL;
    goto LABEL_26;
  }

  if (!v26)
  {
    goto LABEL_25;
  }

  CC_MD5_Update(v26, (v27 + 64), 0x10u);
LABEL_23:
  CC_MD5_Final(md, v26);
  v30 = *md;
LABEL_26:
  v32 = v30;
  free(v26);
  v31 = v32;
LABEL_27:
  *(v10 + 64) = v31;
  v28 = CGColorSpaceCreateWithState(v10, v17, v18, v19, v20, v21, v22, v23);
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v10);
  }

LABEL_19:
  if (v28)
  {
    *(v28 + 3) = color_space_state_register(*(v28 + 3));
  }

  return v28;
}

uint64_t CGColorSpaceCreateROMMRGB()
{
  if (CGColorSpaceCreateROMMRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateROMMRGB_predicate, &__block_literal_global_270_6565);
  }

  v0 = CGColorSpaceCreateROMMRGB_space;
  if (CGColorSpaceCreateROMMRGB_space)
  {
    CFRetain(CGColorSpaceCreateROMMRGB_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateROMMRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_romm_rgb);
  CGColorSpaceCreateROMMRGB_space = result;
  return result;
}

uint64_t CG::stroker::end_contour(uint64_t this)
{
  v1 = this;
  v2 = *(this + 80);
  if (v2 == 4)
  {
    CG::stroker::add_cap(this, (this + 136), (this + 168));
    CG::stroker::unroll_path(v1);
    v8 = vnegq_f64(*(v1 + 120));
    this = CG::stroker::add_cap(v1, (v1 + 88), v8.f64);
    v4 = *(v1 + 72);
    if (v4)
    {
      v5 = v4[3];
      v6 = v4[1];
      v7 = v4[6];

      return v5(v6, 4, 0, v7);
    }
  }

  else if (v2 == 3)
  {
    v3 = vsubq_f64(*(this + 184), *(this + 88));

    return CG::stroker::add_point(this, (this + 88), v3.f64[0], v3.f64[1]);
  }

  return this;
}

char *color_space_state_create_romm_rgb()
{
  if (color_space_state_create_romm_rgb_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_romm_rgb_cglibrarypredicate, &__block_literal_global_240);
  }

  v0 = color_space_state_create_romm_rgb_f;
  if (color_space_state_create_romm_rgb_cglibrarypredicate_241 != -1)
  {
    dispatch_once(&color_space_state_create_romm_rgb_cglibrarypredicate_241, &__block_literal_global_244);
  }

  v1 = v0(color_space_state_create_romm_rgb_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceROMMRGB";
    *(icc_with_profile + 5) = 30;
    *(*(icc_with_profile + 12) + 40) = @"ROMM RGB: ISO 22028-2:2013";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_romm_rgb_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_romm_rgb_f = v1;
  return result;
}

uint64_t CG::stroker::add_cap(uint64_t result, float64x2_t *a2, double *a3)
{
  v4 = result;
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = *(result + 16);
  v7 = vmlsq_lane_f64(vmulq_n_f64(v6, *a3), *result, v5, 0);
  v8 = *(result + 40);
  if (!v8 || COERCE_DOUBLE(*&vmulq_f64(v7, v7).f64[1]) + v7.f64[0] * v7.f64[0] <= 0.0025)
  {
    v15 = *(result + 72);
    v16 = vsubq_f64(*a2, v7);
    goto LABEL_9;
  }

  v9 = vmlaq_f64(vmulq_n_f64(v6, v5), *result, vdupq_lane_s64(*a3, 0));
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      abort();
    }

    v10 = *(result + 72);
    if (v10)
    {
      v11 = vdupq_n_s64(0x3FE1AC5111534A22uLL);
      v21 = vmulq_f64(v7, v11);
      v22 = vmulq_f64(v9, v11);
      v12 = vaddq_f64(v9, *a2);
      v27 = vaddq_f64(v22, vaddq_f64(v7, *a2));
      v28 = vaddq_f64(v21, v12);
      v29 = v12;
      v23 = v9;
      v25 = v7;
      result = (*(v10 + 24))(*(v10 + 8), 3, &v27, *(v10 + 48));
      v13 = *(v4 + 72);
      if (v13)
      {
        v14 = vsubq_f64(*a2, v25);
        v27 = vsubq_f64(vaddq_f64(v23, *a2), v21);
        v28 = vaddq_f64(v22, v14);
        v29 = v14;
        return (*(v13 + 24))(*(v13 + 8), 3, &v27, *(v13 + 48));
      }
    }

    return result;
  }

  v17 = *a2;
  v18 = *(result + 72);
  v27 = vaddq_f64(v9, vaddq_f64(v7, *a2));
  if (!v18)
  {
    v20 = vsubq_f64(v17, v7);
    v27 = vaddq_f64(v9, v20);
    goto LABEL_16;
  }

  v24 = v9;
  v26 = v7;
  result = (*(v18 + 24))(*(v18 + 8), 1, &v27, *(v18 + 48));
  v19 = *(v4 + 72);
  v20 = vsubq_f64(*a2, v26);
  v27 = vaddq_f64(v24, v20);
  if (!v19)
  {
LABEL_16:
    v27 = v20;
    return result;
  }

  result = (*(v19 + 24))(*(v19 + 8), 1, &v27, *(v19 + 48));
  v15 = *(v4 + 72);
  v16 = vsubq_f64(*a2, v26);
LABEL_9:
  v27 = v16;
  if (v15)
  {
    return (*(v15 + 24))(*(v15 + 8), 1, &v27, *(v15 + 48));
  }

  return result;
}

CGColorRef CGColorCreateWithPattern(CGColorSpaceRef space, CGPatternRef pattern, const CGFloat *components)
{
  color = 0;
  if (!pattern || !space || !components)
  {
    return color;
  }

  if (CGColorSpaceGetType(space) != 9)
  {
    return 0;
  }

  v14 = *(pattern + 185);
  v15 = *(*(space + 3) + 48);
  if (v14 == 1 && v15)
  {
    CGPostError("Invalid color: colored pattern specified with uncolored pattern color space.", v7, v8, v9, v10, v11, v12, v13, v23);
    v16 = CGColorSpaceCreatePattern(0);
    color = create_color(v16, components, 0.0);
    v17 = v16;
  }

  else
  {
    if ((v14 & 1) != 0 || v15)
    {
      HeadroomInfo = 0.0;
      if (*(pattern + 185))
      {
        if (*(pattern + 184) == 1)
        {
          HeadroomInfo = CGImageGetHeadroomInfo(*(pattern + 10), 0);
        }

        else if (*(pattern + 5) == 1)
        {
          HeadroomInfo = CGShadingGetContentHeadroom(*(pattern + 10));
        }
      }

      color = create_color(space, components, HeadroomInfo);
      if (color)
      {
        goto LABEL_13;
      }

      return color;
    }

    CGPostError("Invalid color: uncolored pattern specified with colored pattern color space.", v7, v8, v9, v10, v11, v12, v13, v23);
    DeviceGray = CGColorSpaceCreateDeviceGray();
    DefaultColorComponents = CGColorSpaceGetDefaultColorComponents(DeviceGray);
    v20 = CGColorSpaceCreatePattern(DeviceGray);
    color = create_color(v20, DefaultColorComponents, 0.0);
    CGColorSpaceRelease(v20);
    v17 = DeviceGray;
  }

  CGColorSpaceRelease(v17);
  if (color)
  {
LABEL_13:
    CFRetain(pattern);
    *(color + 4) = pattern;
  }

  return color;
}

uint64_t *__color_space_state_create_romm_rgb_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncROMMRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_romm_rgb_s = v1;
  return result;
}

void color_space_state_unregister(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&colorspace_state_lock);
  if (*(a1 + 11) != 1)
  {
    os_unfair_lock_unlock(&colorspace_state_lock);
    if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (get_states_cache_predicate != -1)
    {
      dispatch_once(&get_states_cache_predicate, &__block_literal_global_7716);
    }

    CFSetRemoveValue(get_states_cache_states, a1);
    os_unfair_lock_unlock(&colorspace_state_lock);
LABEL_8:

    color_space_state_dealloc(a1);
    return;
  }

  os_unfair_lock_unlock(&colorspace_state_lock);
}

void color_space_state_dealloc(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    CFStringGetCStringPtr(*(a1 + 80), 0x8000100u);
    _CGHandleAssert("color_space_state_dealloc", 111, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/color-space-state.c", "!state->is_singleton", "tried to deallocate a singleton color_space_state (%p %s)", v5, v6, v7, a1);
  }

  v2 = **(a1 + 112);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  CGPropertiesRelease(*(a1 + 88));
  free(*(a1 + 96));

  free(a1);
}

void icc_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (v8 != 6)
  {
    _CGHandleAssert("icc_finalize", 91, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "state->type == kCGColorSpaceICCBased", "Colorspace not ICC based. type = %d", a6, a7, a8, v8);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CGColorSpaceRelease(*(v9 + 48));
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(v9 + 32);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(v9 + 56);

    free(v12);
  }
}

uint64_t RGBAf16_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v37, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v31, v37) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = *v6;
  v26 = *a3;
  v32 = v26;
  v33 = v25;
  if (v26 != 269497257)
  {
    v27 = SAMPLEINDEX(v26, v10, v11, v12, v13, v14, v15, v16);
    if (v27)
    {
      if (v27 <= 0x1B)
      {
        _CGHandleAssert("RGBAf16_image_inner", 13913, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "index > SAMPLEF", "index = %u", v28, v29, v30, v27);
      }

      v31 = RGBF16_image_sample[v27 + 1];
      if (v31)
      {
        v32 = 269497257;
        goto LABEL_20;
      }

      if ((HIWORD(*a3) & 0x3Fu) > 8)
      {
        if ((*a3 & 0x3F0000u) >> 16 > 0x10)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v31 = *&RGB8_image_sample[2 * v27 + 2];
        if (v31)
        {
          v34 = 4;
          v32 = 134755224;
          goto LABEL_20;
        }
      }

      v31 = *&RGB16_image_sample[2 * v27 + 2];
      if (v31)
      {
        v32 = 269497256;
        goto LABEL_20;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!v36 && (~v35 & 0xC3) == 0)
  {
    v17.n128_u32[0] = *(a3 + 8);
    v18.n128_u32[0] = 1.0;
    if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
    {
      if ((v35 & 4) != 0)
      {
        v17.n128_u64[0] = *(a3 + 32);
        *(a2 + 8) = v17.n128_u64[0];
      }

      RGBAf16_mark_inner(a1, a2, v17, v18, v19, v20, v21, v22, v23, v24, v11, v12, v13, v14, v15, v16);
      return 1;
    }
  }

  v31 = RGBAf16_sample_RGBAf_inner;
LABEL_20:
  RGBAf16_image_mark(a2, &v31, v8, v17);
  return 1;
}

CGImageRef CGImageCreateCopyWithColorSpace(CGImageRef image, CGColorSpaceRef space)
{
  v2 = 0;
  if (!image || !space)
  {
    return v2;
  }

  if ((*(image + 39) & 2) != 0)
  {
    return 0;
  }

  v5 = *(image + 18);
  if (v5)
  {
    v5 = *(*(v5 + 24) + 48);
  }

  if (*(*(space + 3) + 48) != v5)
  {
    return 0;
  }

  if ((valid_image_colorspace(space, *(image + 8)) & 1) == 0)
  {
    CGPostError("%s: invalid image colorspace: NULL.", v6, v7, v8, v9, v10, v11, v12, "CGImageCreateCopyWithColorSpace");
    return 0;
  }

  if (CGColorSpaceEqualToColorSpace(space, *(image + 18)))
  {
    CFRetain(image);
    return image;
  }

  else
  {
    Copy = CGImageCreateCopy(image);
    v2 = Copy;
    if (Copy)
    {
      CGColorSpaceRelease(*(Copy + 18));
      CFRetain(space);
      *(v2 + 18) = space;
      v22 = *(v2 + 26);
      if (v22)
      {
        CGImageProviderSetProperty(v22, @"kCGImageProviderColorSpaceChangedOnImageCopy", space);
      }

      if (*(v2 + 28))
      {
        CGPostError("%s: image headroom and conversion info not copied", v15, v16, v17, v18, v19, v20, v21, "CGImageCreateCopyWithColorSpace");
        CGPropertiesRelease(*(v2 + 28));
      }

      *(v2 + 28) = 0;
    }
  }

  return v2;
}

void RGBAf16_mark_constmask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, __n128 _Q1, __n128 _Q2, double _D3, double _D4, double _D5, double _D6, float32x4_t _Q7, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(a1 + 48);
  v18 = *(a1 + 136);
  v19 = v17 != 0;
  if (v18)
  {
    v21 = *(a1 + 4);
    v20 = *(a1 + 8);
    v22 = *(a1 + 28);
    v23 = *(a1 + 88);
    _Q7.i32[0] = *v23;
    _H16 = *(v23 + 4);
    _H8 = *(v23 + 6);
    __asm { FCVT            S22, H8 }

    v31 = *(a1 + 40) + 8 * (v22 >> 3) * *(a1 + 16) + 8 * *(a1 + 12);
    v32 = *(a1 + 124);
    v33 = v18 + *(a1 + 108) * v32 + *(a1 + 104);
    v34 = v32 - v21;
    v35 = (v22 >> 3) - v21;
    v435 = _S22;
    switch(a2)
    {
      case 0:
        do
        {
          v36 = v21;
          do
          {
            v37 = *v33;
            if (*v33)
            {
              if (v37 == 255)
              {
                *v31 = 0;
              }

              else
              {
                *v31 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v31), (v37 ^ 0xFFu) * 0.0039216));
              }
            }

            ++v33;
            v31 += 8;
            --v36;
          }

          while (v36);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 1:
        if (use_vImage_fp16_compositing(void)::predicate != -1)
        {
          v419 = *(v23 + 4);
          v421 = _Q7.i64[0];
          dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
          _H16 = v419;
          _Q7.i64[0] = v421;
          _S22 = v435;
        }

        if (use_vImage_fp16_compositing(void)::status == 1)
        {
          goto LABEL_163;
        }

        v400 = -1;
        v401 = v33 & 3;
        if ((v33 & 3) != 0)
        {
          v21 += v401;
          v400 = -1 << (8 * v401);
          v402 = v33 & 3;
          v33 &= 0xFFFFFFFFFFFFFFFCLL;
          v31 -= 8 * v402;
        }

        v403 = (v21 + v33) & 3;
        if (((v21 + v33) & 3) != 0)
        {
          v404 = 4 - v403;
          v401 += v404;
          v405 = 0xFFFFFFFF >> (8 * v404);
          if (v21 >= 4)
          {
            v403 = 0xFFFFFFFF >> (8 * v404);
          }

          else
          {
            v403 = 0;
          }

          if (v21 >= 4)
          {
            v405 = -1;
          }

          v400 &= v405;
        }

        v406 = v34 - v401;
        v407 = v35 - v401;
        v409.i64[0] = vcvtq_f32_f16(*_Q7.f32).u64[0];
        __asm { FCVT            S2, H16 }

        v409.i64[1] = __PAIR64__(LODWORD(_S22), _S2);
        do
        {
          v410 = *v33 & v400;
          v411 = v21 >> 2;
          v412 = v403;
          if (!v410)
          {
            goto LABEL_366;
          }

LABEL_364:
          if (v410 == -1)
          {
            *v31 = _Q7.i32[0];
            *(v31 + 4) = _H16;
            *(v31 + 6) = _H8;
            *(v31 + 8) = _Q7.i32[0];
            *(v31 + 12) = _H16;
            *(v31 + 14) = _H8;
            *(v31 + 16) = _Q7.i32[0];
            *(v31 + 20) = _H16;
            *(v31 + 22) = _H8;
LABEL_384:
            *(v31 + 24) = _Q7.i32[0];
            *(v31 + 28) = _H16;
            *(v31 + 30) = _H8;
            goto LABEL_366;
          }

          while (1)
          {
            if (v410)
            {
              if (v410 == 255)
              {
                *v31 = _Q7.i32[0];
                *(v31 + 4) = _H16;
                *(v31 + 6) = _H8;
              }

              else
              {
                *v31 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v409, v410 * 0.0039216))), vcvtq_f32_f16(*v31), 1.0 - (v410 * 0.0039216)));
              }
            }

            if (BYTE1(v410))
            {
              if (BYTE1(v410) == 255)
              {
                *(v31 + 8) = _Q7.i32[0];
                *(v31 + 12) = _H16;
                *(v31 + 14) = _H8;
              }

              else
              {
                *(v31 + 8) = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v409, BYTE1(v410) * 0.0039216))), vcvtq_f32_f16(*(v31 + 8)), 1.0 - (BYTE1(v410) * 0.0039216)));
              }
            }

            if (BYTE2(v410))
            {
              if (BYTE2(v410) == 255)
              {
                *(v31 + 16) = _Q7.i32[0];
                *(v31 + 20) = _H16;
                *(v31 + 22) = _H8;
              }

              else
              {
                *(v31 + 16) = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v409, BYTE2(v410) * 0.0039216))), vcvtq_f32_f16(*(v31 + 16)), 1.0 - (BYTE2(v410) * 0.0039216)));
              }
            }

            v414 = HIBYTE(v410);
            if (v414 == 255)
            {
              goto LABEL_384;
            }

            if (v414)
            {
              *(v31 + 24) = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v409, v414 * 0.0039216))), vcvtq_f32_f16(*(v31 + 24)), 1.0 - (v414 * 0.0039216)));
            }

LABEL_366:
            while (1)
            {
              v413 = v411;
              v31 += 32;
              --v411;
              v33 += 4;
              if (v413 < 2)
              {
                break;
              }

              v410 = *v33;
              if (*v33)
              {
                goto LABEL_364;
              }
            }

            if (!v412)
            {
              break;
            }

            v412 = 0;
            v410 = *v33 & v403;
          }

          v33 += v406;
          v31 += 8 * v407;
          --v20;
        }

        while (v20);
        return;
      case 2:
        if (use_vImage_fp16_compositing(void)::predicate != -1)
        {
          v418 = *(v23 + 4);
          v420 = _Q7.i64[0];
          dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
          _H16 = v418;
          _Q7.i64[0] = v420;
          _S22 = v435;
        }

        if (use_vImage_fp16_compositing(void)::status == 1)
        {
LABEL_163:
          vImageCGCompositeConstMask_ARGB16F();
          return;
        }

        v353 = -1;
        v354 = v33 & 3;
        if ((v33 & 3) != 0)
        {
          v21 += v354;
          v353 = -1 << (8 * v354);
          v355 = v33 & 3;
          v33 &= 0xFFFFFFFFFFFFFFFCLL;
          v31 -= 8 * v355;
        }

        *&a5 = 1.0 - _S22;
        v356 = (v21 + v33) & 3;
        if (((v21 + v33) & 3) != 0)
        {
          v357 = 4 - v356;
          v354 += v357;
          v358 = 0xFFFFFFFF >> (8 * v357);
          if (v21 >= 4)
          {
            v356 = 0xFFFFFFFF >> (8 * v357);
          }

          else
          {
            v356 = 0;
          }

          if (v21 >= 4)
          {
            v358 = -1;
          }

          v353 &= v358;
        }

        v359 = v34 - v354;
        v360 = v35 - v354;
        v361 = vcvtq_f32_f16(*_Q7.f32).u64[0];
        __asm { FCVT            S2, H16 }

        v363.i64[0] = v361;
        v363.i64[1] = __PAIR64__(LODWORD(_S22), LODWORD(_S2));
        v364 = vdupq_lane_s32(*&a5, 0);
        while (1)
        {
          v365 = *v33 & v353;
          v366 = v21 >> 2;
          v367 = v356;
          if (!v365)
          {
            goto LABEL_337;
          }

LABEL_335:
          if (v365 == -1)
          {
            break;
          }

          while (1)
          {
            if (v365)
            {
              v378 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v363, v365 * 0.0039216)));
              *v31 = vcvt_f16_f32(vmlaq_n_f32(v378, vcvtq_f32_f16(*v31), 1.0 - v378.f32[3]));
            }

            if ((v365 & 0xFF00) != 0)
            {
              v379 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v363, BYTE1(v365) * 0.0039216)));
              *(v31 + 8) = vcvt_f16_f32(vmlaq_n_f32(v379, vcvtq_f32_f16(*(v31 + 8)), 1.0 - v379.f32[3]));
            }

            if ((v365 & 0xFF0000) != 0)
            {
              v380 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v363, BYTE2(v365) * 0.0039216)));
              *(v31 + 16) = vcvt_f16_f32(vmlaq_n_f32(v380, vcvtq_f32_f16(*(v31 + 16)), 1.0 - v380.f32[3]));
            }

            v381 = HIBYTE(v365);
            if (v381)
            {
              v382 = v381 * 0.0039216;
              _S17 = v382 * *&v361;
              __asm { FCVT            H17, S17 }

              _S18 = v382 * *(&v361 + 1);
              __asm { FCVT            H18, S18 }

              _S19 = v382 * _S2;
              __asm { FCVT            H19, S19 }

              _S16 = v382 * _S22;
              __asm
              {
                FCVT            H16, S16
                FCVT            S16, H16
                FCVT            S17, H17
              }

              _H21 = *(v31 + 24);
              __asm { FCVT            S21, H21 }

              _S17 = _S17 + (_S21 * (1.0 - _S16));
              __asm { FCVT            H17, S17 }

              *(v31 + 24) = LOWORD(_S17);
              __asm { FCVT            S17, H18 }

              LOWORD(_S18) = *(v31 + 26);
              __asm { FCVT            S18, H18 }

              _S17 = _S17 + (_S18 * (1.0 - _S16));
              __asm { FCVT            H17, S17 }

              *(v31 + 26) = LOWORD(_S17);
              __asm { FCVT            S17, H19 }

              LOWORD(_S18) = *(v31 + 28);
              __asm { FCVT            S18, H18 }

              _S17 = _S17 + (_S18 * (1.0 - _S16));
              __asm { FCVT            H17, S17 }

              *(v31 + 28) = LOWORD(_S17);
              LOWORD(_S17) = *(v31 + 30);
              __asm { FCVT            S17, H17 }

              _S16 = _S16 + (_S17 * (1.0 - _S16));
              goto LABEL_350;
            }

LABEL_337:
            while (1)
            {
              v377 = v366;
              v31 += 32;
              --v366;
              v33 += 4;
              if (v377 < 2)
              {
                break;
              }

              v365 = *v33;
              if (*v33)
              {
                goto LABEL_335;
              }
            }

            if (!v367)
            {
              break;
            }

            v367 = 0;
            v365 = *v33 & v356;
          }

          v33 += v359;
          v31 += 8 * v360;
          if (!--v20)
          {
            return;
          }
        }

        *v31 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(v363, v364, vcvtq_f32_f16(*v31))), vmlaq_f32(v363, v364, vcvt_hight_f32_f16(*v31)));
        *(v31 + 16) = vcvt_f16_f32(vmlaq_f32(v363, v364, vcvtq_f32_f16(*(v31 + 16))));
        _H16 = *(v31 + 24);
        __asm { FCVT            S16, H16 }

        _S16 = *&v361 + (_S16 * *&a5);
        __asm { FCVT            H16, S16 }

        *(v31 + 24) = LOWORD(_S16);
        LOWORD(_S16) = *(v31 + 26);
        __asm { FCVT            S16, H16 }

        _S16 = *(&v361 + 1) + (_S16 * *&a5);
        __asm { FCVT            H16, S16 }

        *(v31 + 26) = LOWORD(_S16);
        LOWORD(_S16) = *(v31 + 28);
        __asm { FCVT            S16, H16 }

        _S16 = _S2 + (_S16 * *&a5);
        __asm { FCVT            H16, S16 }

        *(v31 + 28) = LOWORD(_S16);
        LOWORD(_S16) = *(v31 + 30);
        __asm { FCVT            S16, H16 }

        _S16 = _S22 + (_S16 * *&a5);
LABEL_350:
        __asm { FCVT            H16, S16 }

        *(v31 + 30) = _H16;
        goto LABEL_337;
      case 3:
        v187.i64[0] = vcvtq_f32_f16(*_Q7.f32).u64[0];
        __asm { FCVT            S1, H16 }

        _Q7.i16[2] = *(v23 + 4);
        _Q7.i16[3] = *(v23 + 6);
        v187.i64[1] = __PAIR64__(LODWORD(_S22), _S1);
        do
        {
          v188 = v21;
          do
          {
            v189 = *v33;
            if (*v33)
            {
              if (v189 == 255)
              {
                v190 = vmul_n_f16(*_Q7.f32, *(v31 + 6));
              }

              else
              {
                v191 = vcvtq_f32_f16(*v31);
                v190 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v187, vmuls_lane_f32(v189 * 0.0039216, v191, 3)))), v191, 1.0 - (v189 * 0.0039216)));
              }

              *v31 = v190;
            }

            ++v33;
            v31 += 8;
            --v188;
          }

          while (v188);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 4:
        v123.i64[0] = vcvtq_f32_f16(*_Q7.f32).u64[0];
        __asm { FCVT            S1, H16 }

        v123.i64[1] = __PAIR64__(LODWORD(_S22), _S1);
        do
        {
          v124 = v21;
          do
          {
            v125 = *v33;
            if (*v33)
            {
              if (v125 == 255)
              {
                _H3 = *(v31 + 6);
                __asm { FCVT            S3, H3 }

                v128 = vmulq_n_f32(v123, 1.0 - _S3);
              }

              else
              {
                v129 = vcvtq_f32_f16(*v31);
                v128 = vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v123, (v125 * 0.0039216) * (1.0 - v129.f32[3])))), v129, 1.0 - (v125 * 0.0039216));
              }

              *v31 = vcvt_f16_f32(v128);
            }

            ++v33;
            v31 += 8;
            --v124;
          }

          while (v124);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 5:
        v217.i64[0] = vcvtq_f32_f16(*_Q7.f32).u64[0];
        __asm { FCVT            S1, H16 }

        v217.i64[1] = __PAIR64__(LODWORD(_S22), _S1);
        do
        {
          v218 = v21;
          do
          {
            if (*v33)
            {
              v219 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v217, *v33 * 0.0039216)));
              v220 = vcvtq_f32_f16(*v31);
              *v31 = vcvt_f16_f32(vmlaq_laneq_f32(vmulq_n_f32(v220, 1.0 - v219.f32[3]), v219, v220, 3));
            }

            ++v33;
            v31 += 8;
            --v218;
          }

          while (v218);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 6:
        __asm { FCVT            S0, H7; jumptable 0000000183F53CA8 case 6 }

        _H1 = HIWORD(*v23);
        __asm
        {
          FCVT            S1, H1
          FCVT            S2, H16
        }

        while (1)
        {
          v247 = v21;
          do
          {
            v248 = *v33;
            if (!*v33)
            {
              goto LABEL_235;
            }

            _H5 = *(v31 + 6);
            __asm { FCVT            S5, H5 }

            v251 = 1.0 - _S5;
            if ((1.0 - _S5) >= 1.0)
            {
              v269 = v248 * 0.0039216;
              _S6 = v269 * _S0;
              __asm { FCVT            H6, S6 }

              _S7 = v269 * _S1;
              __asm { FCVT            H7, S7 }

              _S16 = v269 * _S2;
              __asm { FCVT            H16, S16 }

              *v31 = LOWORD(_S6);
              _S5 = v269 * _S22;
              *(v31 + 2) = LOWORD(_S7);
              *(v31 + 4) = LOWORD(_S16);
            }

            else
            {
              if (v251 <= 0.0)
              {
                goto LABEL_235;
              }

              v252 = v248 * 0.0039216;
              _S16 = v252 * _S0;
              __asm { FCVT            H16, S16 }

              _S17 = v252 * _S1;
              __asm { FCVT            H17, S17 }

              _S18 = v252 * _S2;
              __asm { FCVT            H18, S18 }

              _S7 = v252 * _S22;
              __asm { FCVT            H7, S7 }

              _H19 = *v31;
              __asm
              {
                FCVT            S19, H19
                FCVT            S16, H16
              }

              _S16 = _S19 + (_S16 * v251);
              __asm { FCVT            H16, S16 }

              *v31 = LOWORD(_S16);
              LOWORD(_S16) = *(v31 + 2);
              __asm
              {
                FCVT            S16, H16
                FCVT            S17, H17
              }

              _S16 = _S16 + (_S17 * v251);
              __asm { FCVT            H16, S16 }

              *(v31 + 2) = LOWORD(_S16);
              LOWORD(_S16) = *(v31 + 4);
              __asm
              {
                FCVT            S16, H16
                FCVT            S17, H18
              }

              _S16 = _S16 + (_S17 * v251);
              __asm { FCVT            H16, S16 }

              *(v31 + 4) = LOWORD(_S16);
              __asm { FCVT            S7, H7 }

              _S5 = _S5 + (_S7 * v251);
            }

            __asm { FCVT            H5, S5 }

            *(v31 + 6) = _H5;
LABEL_235:
            ++v33;
            v31 += 8;
            --v247;
          }

          while (v247);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 7:
        do
        {
          v192 = v21;
          do
          {
            v193 = *v33;
            if (*v33)
            {
              if (v193 == 255)
              {
                v194 = vmul_n_f16(*v31, _H8);
              }

              else
              {
                v194 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v31), ((v193 * 0.0039216) * _S22) + (1.0 - (v193 * 0.0039216))));
              }

              *v31 = v194;
            }

            ++v33;
            v31 += 8;
            --v192;
          }

          while (v192);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 8:
        do
        {
          v290 = v21;
          do
          {
            v291 = *v33;
            if (*v33)
            {
              _H3 = *v31;
              if (v291 == 255)
              {
                __asm { FCVT            S3, H3 }

                _S4 = (1.0 - _S22) * _S3;
                v295 = 1.0 - _S22;
              }

              else
              {
                __asm { FCVT            S4, H3 }

                v295 = ((v291 * -0.0039216) * _S22) + 1.0;
                _S4 = v295 * _S4;
              }

              __asm { FCVT            H4, S4 }

              *v31 = _H4;
              _H4 = *(v31 + 2);
              __asm { FCVT            S4, H4 }

              _S4 = v295 * _S4;
              __asm { FCVT            H4, S4 }

              *(v31 + 2) = LOWORD(_S4);
              LOWORD(_S4) = *(v31 + 4);
              __asm { FCVT            S4, H4 }

              _S4 = v295 * _S4;
              __asm { FCVT            H4, S4 }

              *(v31 + 4) = LOWORD(_S4);
              LOWORD(_S4) = *(v31 + 6);
              __asm { FCVT            S4, H4 }

              _S3 = v295 * _S4;
              __asm { FCVT            H3, S3 }

              *(v31 + 6) = LOWORD(_S3);
            }

            ++v33;
            v31 += 8;
            --v290;
          }

          while (v290);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 9:
        v147.i64[0] = vcvtq_f32_f16(*_Q7.f32).u64[0];
        __asm { FCVT            S1, H16 }

        v147.i64[1] = __PAIR64__(LODWORD(_S22), _S1);
        do
        {
          v148 = v21;
          do
          {
            if (*v33)
            {
              v149 = *v33 * 0.0039216;
              v150 = 1.0 - v149;
              v151 = vcvtq_f32_f16(*v31);
              v152 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v147, v149)));
              *v31 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v151, v150 + v152.f32[3]), v152, 1.0 - v151.f32[3]));
            }

            ++v33;
            v31 += 8;
            --v148;
          }

          while (v148);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 10:
        v286.i64[0] = vcvtq_f32_f16(*_Q7.f32).u64[0];
        __asm { FCVT            S1, H16 }

        v286.i64[1] = __PAIR64__(LODWORD(_S22), _S1);
        do
        {
          v287 = v21;
          do
          {
            if (*v33)
            {
              v288 = vcvtq_f32_f16(*v31);
              v289 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v286, *v33 * 0.0039216)));
              *v31 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v288, 1.0 - v289.f32[3]), v289, 1.0 - v288.f32[3]));
            }

            ++v33;
            v31 += 8;
            --v287;
          }

          while (v287);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 11:
        __asm { FCVT            S0, H7; jumptable 0000000183F53CA8 case 11 }

        _H1 = HIWORD(*v23);
        __asm
        {
          FCVT            S1, H1
          FCVT            S2, H16
        }

        do
        {
          v94 = v21;
          do
          {
            if (*v33)
            {
              _S5 = 1.0;
              _S16 = 1.0;
              if (v17)
              {
                _H4 = *(v31 + 6);
                __asm { FCVT            S16, H4 }
              }

              v98 = *v33 * 0.0039216;
              _S4 = v98 * _S22;
              __asm
              {
                FCVT            H4, S4
                FCVT            S6, H4
              }

              _S4 = _S16 + _S6;
              if ((_S16 + _S6) > 1.0)
              {
                _S4 = 1.0;
              }

              if (v17)
              {
                _H5 = *(v31 + 6);
                __asm { FCVT            S5, H5 }
              }

              _S17 = v98 * _S0;
              __asm { FCVT            H17, S17 }

              _H18 = *v31;
              __asm
              {
                FCVT            S18, H18
                FCVT            S17, H17
              }

              v107 = (_S6 - _S17) + (_S16 - _S18);
              _H16 = *(v31 + 2);
              _S17 = _S4 - v107;
              __asm { FCVT            H17, S17 }

              *v31 = LOWORD(_S17);
              if (v17)
              {
                _H17 = *(v31 + 6);
                __asm { FCVT            S17, H17 }
              }

              else
              {
                _S17 = 1.0;
              }

              _S18 = v98 * _S1;
              __asm { FCVT            H18, S18 }

              _S7 = v98 * _S2;
              __asm
              {
                FCVT            H7, S7
                FCVT            S16, H16
              }

              v115 = _S5 - _S16;
              __asm { FCVT            S16, H18 }

              v117 = (_S6 - _S16) + v115;
              LOWORD(_S16) = *(v31 + 4);
              __asm
              {
                FCVT            S16, H16
                FCVT            S7, H7
              }

              _S5 = _S4 - v117;
              __asm { FCVT            H5, S5 }

              *(v31 + 2) = LOWORD(_S5);
              __asm { FCVT            H5, S4 }

              *(v31 + 6) = LOWORD(_S5);
              _S4 = _S4 - ((_S6 - _S7) + (_S17 - _S16));
              __asm { FCVT            H4, S4 }

              *(v31 + 4) = LOWORD(_S4);
            }

            ++v33;
            v31 += 8;
            --v94;
          }

          while (v94);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 12:
        __asm { FCVT            S0, H7; jumptable 0000000183F53CA8 case 12 }

        _H1 = HIWORD(*v23);
        __asm
        {
          FCVT            S1, H1
          FCVT            S2, H16
        }

        do
        {
          v134 = v21;
          do
          {
            if (*v33)
            {
              v135 = *v33 * 0.0039216;
              _S6 = v135 * _S0;
              __asm { FCVT            H6, S6 }

              _S7 = v135 * _S1;
              __asm { FCVT            H7, S7 }

              _S16 = v135 * _S2;
              __asm { FCVT            H16, S16 }

              _S5 = v135 * _S22;
              __asm { FCVT            H5, S5 }

              v141 = *(v31 + 2);
              *v31 = *v31 + *&_S6;
              *(v31 + 2) = v141 + *&_S7;
              LOWORD(_S6) = *(v31 + 6);
              __asm
              {
                FCVT            S6, H6
                FCVT            S5, H5
              }

              _S5 = _S5 + _S6;
              if (_S5 > 1.0)
              {
                _S5 = 1.0;
              }

              *(v31 + 4) = *(v31 + 4) + _H16;
              __asm { FCVT            H5, S5 }

              *(v31 + 6) = _H5;
            }

            ++v33;
            v31 += 8;
            --v134;
          }

          while (v134);
          v33 += v34;
          v31 += 8 * v35;
          --v20;
        }

        while (v20);
        return;
      case 13:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v430 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v234 = v21;
          do
          {
            if (*v33)
            {
              v235 = *v33 * 0.0039216;
              _S1 = v235 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v238.n128_u64[1] = v430.n128_u64[1];
                v238.n128_u64[0] = vmul_n_f32(v430.n128_u64[0], v235);
                v239 = COERCE_DOUBLE(vcvt_f16_f32(v238));
                _Q0.n128_f32[0] = v235 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v239);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_223:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_224;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v238.n128_u16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAmultiplyPDA(_Q0, v238, _Q2, _D3, _S4, _D5, v239, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v239), SWORD1(v239), _Q7.i16[0], _S16);
                *(v31 + 2) = v242;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_223;
              }
            }

LABEL_224:
            ++v33;
            v31 += 8;
            --v234;
          }

          while (v234);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 14:
        __asm { FCVT            S0, H7; jumptable 0000000183F53CA8 case 14 }

        _H1 = HIWORD(*v23);
        __asm
        {
          FCVT            S1, H1
          FCVT            S2, H16
        }

        while (1)
        {
          v64 = v21;
          do
          {
            if (*v33)
            {
              v65 = *v33 * 0.0039216;
              _S5 = v65 * _S22;
              __asm
              {
                FCVT            H5, S5
                FCMP            H5, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                _S6 = v65 * _S0;
                __asm { FCVT            H6, S6 }

                _S7 = v65 * _S1;
                __asm { FCVT            H7, S7 }

                _S16 = v65 * _S2;
                __asm { FCVT            H16, S16 }

                if (v17)
                {
                  __asm { FCMP            H17, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = _H6;
                    *(v31 + 2) = _H7;
LABEL_49:
                    *(v31 + 4) = _H16;
                    *(v31 + 6) = _H5;
                    goto LABEL_50;
                  }

                  __asm { FCVT            S17, H17 }
                }

                else
                {
                  _S17 = 1.0;
                }

                __asm { FCVT            S5, H5 }

                _H18 = *v31;
                _H19 = *(v31 + 2);
                _H20 = *(v31 + 4);
                __asm
                {
                  FCVT            S18, H18
                  FCVT            S19, H19
                  FCVT            S20, H20
                  FCVT            S6, H6
                  FCVT            S7, H7
                  FCVT            S16, H16
                }

                _S6 = _S18 + (_S6 * (1.0 - _S18));
                _S7 = _S19 + (_S7 * (1.0 - _S19));
                _S16 = _S20 + (_S16 * (1.0 - _S20));
                _S5 = (_S17 + _S5) - (_S17 * _S5);
                __asm
                {
                  FCVT            H6, S6
                  FCVT            H7, S7
                  FCVT            H16, S16
                }

                *v31 = LOWORD(_S6);
                *(v31 + 2) = LOWORD(_S7);
                __asm { FCVT            H5, S5 }

                goto LABEL_49;
              }
            }

LABEL_50:
            ++v33;
            v31 += 8;
            --v64;
          }

          while (v64);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 15:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v426 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v177 = v21;
          do
          {
            if (*v33)
            {
              v178 = *v33 * 0.0039216;
              _S1 = v178 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v181.n128_u64[1] = v426.n128_u64[1];
                v181.n128_u64[0] = vmul_n_f32(v426.n128_u64[0], v178);
                v182 = COERCE_DOUBLE(vcvt_f16_f32(v181));
                _Q0.n128_f32[0] = v178 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v182);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_137:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_138;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v181.n128_u16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAoverlayPDA(_Q0, v181, _Q2, _D3, _S4, _D5, v182, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v182), SWORD1(v182), _Q7.i16[0], _S16);
                *(v31 + 2) = v185;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_137;
              }
            }

LABEL_138:
            ++v33;
            v31 += 8;
            --v177;
          }

          while (v177);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 16:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v423 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v51 = v21;
          do
          {
            if (*v33)
            {
              v52 = *v33 * 0.0039216;
              _S1 = v52 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v55.i64[1] = v423.n128_i64[1];
                *v55.f32 = vmul_n_f32(v423.n128_u64[0], v52);
                v56 = COERCE_DOUBLE(vcvt_f16_f32(v55));
                _Q0.n128_f32[0] = v52 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v56);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_35:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_36;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v55.i16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                HIWORD(v415) = LOWORD(_D3);
                LOWORD(v415) = _Q7.i16[0];
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAdarkenPDA(_Q0, *v55.i64, _Q2.n128_f64[0], _D3, _S4, _D5, v56, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v56), v415, _S16);
                *(v31 + 2) = v59;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_35;
              }
            }

LABEL_36:
            ++v33;
            v31 += 8;
            --v51;
          }

          while (v51);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 17:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v427 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v197 = v21;
          do
          {
            if (*v33)
            {
              v198 = *v33 * 0.0039216;
              _S1 = v198 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v201.i64[1] = v427.n128_i64[1];
                *v201.f32 = vmul_n_f32(v427.n128_u64[0], v198);
                v202 = COERCE_DOUBLE(vcvt_f16_f32(v201));
                _Q0.n128_f32[0] = v198 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v202);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_174:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_175;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v201.i16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                HIWORD(v416) = LOWORD(_D3);
                LOWORD(v416) = _Q7.i16[0];
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAlightenPDA(_Q0, *v201.i64, _Q2.n128_f64[0], _D3, _S4, _D5, v202, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v202), v416, _S16);
                *(v31 + 2) = v205;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_174;
              }
            }

LABEL_175:
            ++v33;
            v31 += 8;
            --v197;
          }

          while (v197);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 18:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v431 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v276 = v21;
          do
          {
            if (*v33)
            {
              v277 = *v33 * 0.0039216;
              _S1 = v277 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v280.n128_u64[1] = v431.n128_u64[1];
                v280.n128_u64[0] = vmul_n_f32(v431.n128_u64[0], v277);
                v281 = COERCE_DOUBLE(vcvt_f16_f32(v280));
                _Q0.n128_f32[0] = v277 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v281);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_248:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_249;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v280.n128_u16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAcolordodgePDA(_Q0, v280, _Q2, _D3, _S4, _D5, v281, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v281), SWORD1(v281), _Q7.i16[0], _S16);
                *(v31 + 2) = v284;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_248;
              }
            }

LABEL_249:
            ++v33;
            v31 += 8;
            --v276;
          }

          while (v276);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 19:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v433 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v318 = v21;
          do
          {
            if (*v33)
            {
              v319 = *v33 * 0.0039216;
              _S1 = v319 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v322.n128_u64[1] = v433.n128_u64[1];
                v322.n128_u64[0] = vmul_n_f32(v433.n128_u64[0], v319);
                v323 = COERCE_DOUBLE(vcvt_f16_f32(v322));
                _Q0.n128_f32[0] = v319 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v323);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_292:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_293;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v322.n128_u16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAcolorburnPDA(_Q0, v322, _Q2, _D3, _S4, _D5, v323, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v323), SWORD1(v323), _Q7.i16[0], _S16);
                *(v31 + 2) = v326;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_292;
              }
            }

LABEL_293:
            ++v33;
            v31 += 8;
            --v318;
          }

          while (v318);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 20:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v428 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v208 = v21;
          do
          {
            if (*v33)
            {
              v209 = *v33 * 0.0039216;
              _S1 = v209 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v212.i64[1] = v428.n128_i64[1];
                *v212.f32 = vmul_n_f32(v428.n128_u64[0], v209);
                v213 = vcvt_f16_f32(v212);
                _Q0.n128_f32[0] = v209 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = v213.i32[0];
                    *(v31 + 4) = _Q7.i16[0];
LABEL_188:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_189;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  LODWORD(_D4) = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v212.i16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAsoftlightPDA(_Q0, *v212.f32, _Q2, *&_D3, _D4, _D5, v213, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, v213.i16[0], v213.i16[1], _Q7.i16[0], _S16);
                *(v31 + 2) = v215;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_188;
              }
            }

LABEL_189:
            ++v33;
            v31 += 8;
            --v208;
          }

          while (v208);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 21:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v429 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v223 = v21;
          do
          {
            if (*v33)
            {
              v224 = *v33 * 0.0039216;
              _S1 = v224 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v227.n128_u64[1] = v429.n128_u64[1];
                v227.n128_u64[0] = vmul_n_f32(v429.n128_u64[0], v224);
                v228 = COERCE_DOUBLE(vcvt_f16_f32(v227));
                _Q0.n128_f32[0] = v224 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v228);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_209:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_210;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v227.n128_u16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAhardlightPDA(_Q0, v227, _Q2, _D3, _S4, _D5, v228, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v228), SWORD1(v228), _Q7.i16[0], _S16);
                *(v31 + 2) = v231;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_209;
              }
            }

LABEL_210:
            ++v33;
            v31 += 8;
            --v223;
          }

          while (v223);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 22:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v432 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v307 = v21;
          do
          {
            if (*v33)
            {
              v308 = *v33 * 0.0039216;
              _S1 = v308 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v311.i64[1] = v432.n128_i64[1];
                *v311.f32 = vmul_n_f32(v432.n128_u64[0], v308);
                v312 = COERCE_DOUBLE(vcvt_f16_f32(v311));
                _Q0.n128_f32[0] = v308 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v312);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_278:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_279;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v311.i16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                HIWORD(v417) = LOWORD(_D3);
                LOWORD(v417) = _Q7.i16[0];
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAdifferencePDA(_Q0, *v311.i64, _Q2.n128_f64[0], _D3, _S4, _D5, v312, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v312), v417, _S16);
                *(v31 + 2) = v315;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_278;
              }
            }

LABEL_279:
            ++v33;
            v31 += 8;
            --v307;
          }

          while (v307);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 23:
        v327 = vcvtq_f32_f16(*_Q7.f32).u64[0];
        __asm { FCVT            S1, H16 }

        while (1)
        {
          v329 = v21;
          do
          {
            if (*v33)
            {
              v330 = *v33 * 0.0039216;
              _S6 = v330 * _S22;
              __asm
              {
                FCVT            H6, S6
                FCMP            H6, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                *_Q7.f32 = vmul_n_f32(v327, v330);
                *_Q7.f32 = vcvt_f16_f32(_Q7);
                _S5 = v330 * _S1;
                __asm { FCVT            H5, S5 }

                if (v17)
                {
                  __asm { FCMP            H16, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = _Q7.i32[0];
                    *(v31 + 4) = _H5;
LABEL_306:
                    *(v31 + 6) = _H6;
                    goto LABEL_307;
                  }

                  __asm { FCVT            S16, H16 }
                }

                else
                {
                  _S16 = 1.0;
                }

                __asm { FCVT            S6, H6 }

                _H17 = *v31;
                v16.i32[0] = *(v31 + 2);
                __asm
                {
                  FCVT            S17, H17
                  FCVT            S19, H7
                }

                _S17 = (_S17 + _S19) + ((_S17 * _S19) * -2.0);
                _S6 = (_S16 + _S6) - (_S16 * _S6);
                __asm { FCVT            H16, S17 }

                v344 = vcvtq_f32_f16(v16).u64[0];
                *_Q7.f32 = vdup_lane_s16(*_Q7.f32, 1);
                _Q7.i16[1] = _H5;
                v345 = vcvtq_f32_f16(*_Q7.f32).u64[0];
                *_Q7.f32 = vmla_f32(vadd_f32(v344, v345), 0xC0000000C0000000, vmul_f32(v344, v345));
                *v31 = _H16;
                __asm { FCVT            H6, S6 }

                *(v31 + 2) = vcvt_f16_f32(_Q7).u32[0];
                goto LABEL_306;
              }
            }

LABEL_307:
            ++v33;
            v31 += 8;
            --v329;
          }

          while (v329);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 24:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v425 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v166 = v21;
          do
          {
            if (*v33)
            {
              v167 = *v33 * 0.0039216;
              _S1 = v167 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v170.n128_u64[1] = v425.n128_u64[1];
                v170.n128_u64[0] = vmul_n_f32(v425.n128_u64[0], v167);
                v171 = COERCE_DOUBLE(vcvt_f16_f32(v170));
                _Q0.n128_f32[0] = v167 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v171);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_119:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_120;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v170.n128_u16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAhuePDA(_Q0, v170, _Q2, _D3, _S4, _D5, v171, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v171), SWORD1(v171), _Q7.i16[0], _S16);
                *(v31 + 2) = v174;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_119;
              }
            }

LABEL_120:
            ++v33;
            v31 += 8;
            --v166;
          }

          while (v166);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 25:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v424 = _Q0;
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v155 = v21;
          do
          {
            if (*v33)
            {
              v156 = *v33 * 0.0039216;
              _S1 = v156 * _S22;
              __asm
              {
                FCVT            H3, S1
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v159.n128_u64[1] = v424.n128_u64[1];
                v159.n128_u64[0] = vmul_n_f32(v424.n128_u64[0], v156);
                v160 = COERCE_DOUBLE(vcvt_f16_f32(v159));
                _Q0.n128_f32[0] = v156 * _S8;
                __asm { FCVT            H7, S0 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = LODWORD(v160);
                    *(v31 + 4) = _Q7.i16[0];
LABEL_105:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_106;
                  }

                  __asm { FCVT            S4, H5 }
                }

                else
                {
                  _S4 = 1.0;
                }

                __asm { FCVT            S16, H3 }

                _Q0.n128_u16[0] = *v31;
                v159.n128_u16[0] = *(v31 + 2);
                _Q2.n128_u16[0] = *(v31 + 4);
                LODWORD(_D3) = LODWORD(_D5);
                *v31 = PDAsaturationPDA(_Q0, v159, _Q2, _D3, _S4, _D5, v160, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v160), SWORD1(v160), _Q7.i16[0], _S16);
                *(v31 + 2) = v163;
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_105;
              }
            }

LABEL_106:
            ++v33;
            v31 += 8;
            --v155;
          }

          while (v155);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 26:
        v434 = vcvtq_f32_f16(*_Q7.f32);
        __asm { FCVT            S8, H16 }

        while (1)
        {
          v347 = v21;
          do
          {
            if (*v33)
            {
              v348 = *v33 * 0.0039216;
              _S0 = v348 * _S22;
              __asm
              {
                FCVT            H3, S0
                FCMP            H3, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v351.n128_u64[1] = v434.u64[1];
                v351.n128_u64[0] = vmul_n_f32(*v434.f32, v348);
                v351.n128_u64[0] = vcvt_f16_f32(v351);
                _Q1.n128_f32[0] = v348 * _S8;
                __asm { FCVT            H2, S1 }

                LOWORD(_D5) = *(v31 + 6);
                if (v17)
                {
                  __asm { FCMP            H5, #0 }

                  if (!(!_ZF & _CF))
                  {
                    *v31 = v351.n128_u32[0];
                    *(v31 + 4) = _Q2.n128_u16[0];
LABEL_320:
                    *(v31 + 6) = LOWORD(_D3);
                    goto LABEL_321;
                  }

                  __asm { FCVT            S6, H5 }
                }

                else
                {
                  LODWORD(_D6) = 1.0;
                }

                __asm { FCVT            S4, H3 }

                _Q7.i16[0] = *v31;
                _Q1.n128_u16[0] = v351.n128_u16[1];
                *v31 = PDAluminosityPDA(v351, _Q1, _Q2, _D3, _S4, _D5, _D6, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, *v31, *(v31 + 2), HIWORD(*(v31 + 2)), *&_D6);
                *(v31 + 2) = _Q1.n128_u16[0];
                *(v31 + 4) = _Q2.n128_u16[0];
                _S22 = v435;
                goto LABEL_320;
              }
            }

LABEL_321:
            ++v33;
            v31 += 8;
            --v347;
          }

          while (v347);
          v33 += v34;
          v31 += 8 * v35;
          if (!--v20)
          {
            return;
          }
        }

      case 27:
        _Q0 = vcvtq_f32_f16(*_Q7.f32);
        v422 = _Q0;
        __asm { FCVT            S8, H16 }

        break;
      default:
        return;
    }

LABEL_12:
    v40 = v21;
    while (1)
    {
      if (!*v33)
      {
        goto LABEL_22;
      }

      v41 = *v33 * 0.0039216;
      _S1 = v41 * _S22;
      __asm
      {
        FCVT            H3, S1
        FCMP            H3, #0
      }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_22;
      }

      v44.n128_u64[1] = v422.n128_u64[1];
      v44.n128_u64[0] = vmul_n_f32(v422.n128_u64[0], v41);
      v45 = COERCE_DOUBLE(vcvt_f16_f32(v44));
      _Q0.n128_f32[0] = v41 * _S8;
      __asm { FCVT            H7, S0 }

      LOWORD(_D5) = *(v31 + 6);
      if (!v17)
      {
        break;
      }

      __asm { FCMP            H5, #0 }

      if (!_ZF & _CF)
      {
        __asm { FCVT            S4, H5 }

LABEL_20:
        __asm { FCVT            S16, H3 }

        _Q0.n128_u16[0] = *v31;
        v44.n128_u16[0] = *(v31 + 2);
        _Q2.n128_u16[0] = *(v31 + 4);
        LODWORD(_D3) = LODWORD(_D5);
        *v31 = PDAluminosityPDA(_Q0, v44, _Q2, _D3, _S4, _D5, v45, *_Q7.i64, a1, a2, a3, a4, v19, a14, a15, a16, SLOWORD(v45), SWORD1(v45), _Q7.i16[0], _S16);
        *(v31 + 2) = v48;
        *(v31 + 4) = _Q2.n128_u16[0];
        _S22 = v435;
        goto LABEL_21;
      }

      *v31 = LODWORD(v45);
      *(v31 + 4) = _Q7.i16[0];
LABEL_21:
      *(v31 + 6) = LOWORD(_D3);
LABEL_22:
      ++v33;
      v31 += 8;
      if (!--v40)
      {
        v33 += v34;
        v31 += 8 * v35;
        if (!--v20)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    _S4 = 1.0;
    goto LABEL_20;
  }
}

uint64_t CGPDFObjectSetAssociation(uint64_t a1, const void *a2, const char *a3)
{
  v5 = *(a1 + 8);
  switch(v5)
  {
    case 9:
      v11 = *(*(a1 + 32) + 48);
      break;
    case 8:
      v11 = *(a1 + 32);
      break;
    case 7:
      v6 = *(a1 + 32);
      if (!v6)
      {
        return 0;
      }

      pthread_mutex_lock((v6 + 72));
      v7 = *(v6 + 64);
      if (v7)
      {
        *(v6 + 64) = 0;
        CGPDFAssociationRelease(v7);
      }

      v8 = CGPDFAssociationCreate(a2, a3);
      *(v6 + 64) = v8;
      Object = CGPDFAssociationGetObject(v8, a3);
      pthread_mutex_unlock((v6 + 72));
      return Object;
    default:
      return 0;
  }

  return CGPDFDictionarySetAssociation(v11, a2, a3);
}

void pattern_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    _CGHandleAssert("pattern_finalize", 500, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGPattern.c", "pattern->should_free", "Method to free pattern missing", a6, a7, a8, v13);
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    CFRelease(v10);
  }

  if (pattern_notification_center)
  {
    CGNotificationCenterPostNotification(pattern_notification_center, @"kCGPatternWillDeallocate", a1);
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 80);

    v11(v12);
  }
}

void *CGPDFAssociationCreate(const void *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0xD00404125883CuLL);
  __CFSetLastAllocationEventName();
  if (v4)
  {
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    *v4 = v5;
    v4[1] = a2;
  }

  return v4;
}

void release_image(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void CGPDFGStateSynchronizeColorRendering(uint64_t a1, CGContextRef c)
{
  v91 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 192) - 1) >= 4)
    {
      v4 = kCGRenderingIntentRelativeColorimetric;
    }

    else
    {
      v4 = *(a1 + 192);
    }

    CGContextSetRenderingIntent(c, v4);
    CGContextSetImageRenderingIntent(c, v4, v5, v6, v7, v8, v9, v10);
    CGContextSetFillOverprint(c, *(a1 + 233), v11, v12, v13, v14, v15, v16);
    CGContextSetStrokeOverprint(c, *(a1 + 234), v17, v18, v19, v20, v21, v22);
    CGContextSetOverprintMode(c, *(a1 + 236), v23, v24, v25, v26, v27, v28);
    CGContextSetBlackGeneration(c, *(a1 + 240), v29, v30, v31, v32, v33, v34);
    CGContextSetUndercolorRemoval(c, *(a1 + 248), v35, v36, v37, v38, v39, v40);
    v41 = *(a1 + 256);
    if (v41)
    {
      memset(v90, 0, sizeof(v90));
      v42 = 4;
      v43 = v90;
      v93.location = 0;
      v93.length = 4;
      CFArrayGetValues(v41, v93, v90);
      v51 = MEMORY[0x1E695E738];
      v52 = vld1q_dup_f64(v51);
      do
      {
        v53 = vmovn_s64(vceqq_s64(*v43, v52));
        if (v53.i8[0])
        {
          v43->i64[0] = 0;
        }

        if (v53.i8[4])
        {
          v43->i64[1] = 0;
        }

        ++v43;
        v42 -= 2;
      }

      while (v42);
      CGContextSetTransferFunctions(c, v44, v45, v46, v47, v48, v49, v50);
    }
  }

  else
  {
    CGContextSetRenderingIntent(c, kCGRenderingIntentRelativeColorimetric);
    CGContextSetImageRenderingIntent(c, 2, v54, v55, v56, v57, v58, v59);
    CGContextSetFillOverprint(c, 0, v60, v61, v62, v63, v64, v65);
    CGContextSetStrokeOverprint(c, 0, v66, v67, v68, v69, v70, v71);
    CGContextSetOverprintMode(c, 0, v72, v73, v74, v75, v76, v77);
    CGContextSetBlackGeneration(c, 0, v78, v79, v80, v81, v82, v83);

    CGContextSetUndercolorRemoval(c, 0, v84, v85, v86, v87, v88, v89);
  }
}

void CGContextSetRenderingIntent(CGContextRef c, CGColorRenderingIntent intent)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetRenderingIntent(*(c + 12), intent);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetRenderingIntent", v8, v2, v3, v4, v5, v6, v7);
}

void CGContextSetImageRenderingIntent(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetImageRenderingIntent(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetImageRenderingIntent", v8, a3, a4, a5, a6, a7, a8);
}

void CGContextSetFillOverprint(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = 0;

    goto LABEL_8;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v11 = a1;

LABEL_8:
    handle_invalid_context("CGContextSetFillOverprint", v11, a3, a4, a5, a6, a7, a8);
    return;
  }

  v9 = *(a1 + 96);
  v10 = a2 != 0;
  if (*(*(v9 + 144) + 24) != v10)
  {
    maybe_copy_device_state(v9);
    *(*(v9 + 144) + 24) = v10;
  }
}

void CGContextSetOverprintMode(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v9 = *(a1 + 96);
    if (*(*(v9 + 144) + 28) != a2)
    {
      maybe_copy_device_state(*(a1 + 96));
      *(*(v9 + 144) + 28) = a2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetOverprintMode", a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t CGPathCreateDashedPath(char *cf, _anonymous_namespace_ *this, const double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v14 = CFGetTypeID(cf);
    if (v14 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128, v16, v17, v18, v19, v20, v21);
  v26 = Instance;
  if (Instance)
  {
    CG::Path::Path((Instance + 16), (cf + 16), a9, a3, a4, this, v23, v24, v25);
  }

  return v26;
}

void CGContextSetStrokeOverprint(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = 0;

    goto LABEL_8;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v11 = a1;

LABEL_8:
    handle_invalid_context("CGContextSetStrokeOverprint", v11, a3, a4, a5, a6, a7, a8);
    return;
  }

  v9 = *(a1 + 96);
  v10 = a2 != 0;
  if (*(*(v9 + 144) + 25) != v10)
  {
    maybe_copy_device_state(v9);
    *(*(v9 + 144) + 25) = v10;
  }
}

CG::Path *CG::Path::Path(CG::Path *this, const CG::Path *a2, double a3, const double *a4, uint64_t a5, const CGAffineTransform *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *this = 8;
  if (a5 && a4 && (*a2 - 10) > 0xFFFFFFF6)
  {
    operator new();
  }

  CG::Path::append(this, a2, a6, a5, a6, a7, a8, a9);
  return this;
}

void CGContextSetUndercolorRemoval(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetUndercolorRemoval(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetUndercolorRemoval", v8, a3, a4, a5, a6, a7, a8);
}

void CGContextSetBlackGeneration(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetBlackGeneration(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetBlackGeneration", v8, a3, a4, a5, a6, a7, a8);
}

uint64_t path_iterator_dasher_create(double *a1)
{
  if (!a1 || *a1 * a1[3] - a1[1] * a1[2] != 0.0)
  {
    operator new();
  }

  return 0;
}

void sub_183F56568(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
  }

  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  MEMORY[0x1865EE610](v1, v2);
  _Unwind_Resume(a1);
}

void CGContextSetAlphaIsShape(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetAlphaIsShape(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetAlphaIsShape", v8, a3, a4, a5, a6, a7, a8);
}

void std::vector<unsigned long>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(a2);
  }

  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void CGPDFGStateSynchronizeRendering(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = *(a1 + 200);
    if (v10 <= 0xF)
    {
      CGContextSetCompositeOperation(a2, dword_1844DC604[v10], a3, a4, a5, a6, a7, a8);
    }

    CGContextSetAlphaIsShape(a2, *(a1 + 232), a3, a4, a5, a6, a7, a8);
    CGContextSetSoftMask(a2, *(a1 + 208), v11, v12, v13, v14, v15, v16);
    CGContextSetSmoothness(a2, *(a1 + 272), v17, v18, v19, v20, v21, v22, v23);
    v30 = *(a1 + 280);
  }

  else
  {
    CGContextSetCompositeOperation(a2, 2, a3, a4, a5, a6, a7, a8);
    CGContextSetAlphaIsShape(a2, 0, v31, v32, v33, v34, v35, v36);
    CGContextSetSoftMask(a2, 0, v37, v38, v39, v40, v41, v42);
    CGContextSetSmoothness(a2, 0.0, v43, v44, v45, v46, v47, v48, v49);
    v30 = 0;
  }

  CGContextSetStyle(a2, v30, v24, v25, v26, v27, v28, v29);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStateStroke *,std::shared_ptr<CG::DisplayListEntryStateStroke const>::__shared_ptr_default_delete<CG::DisplayListEntryStateStroke const,CG::DisplayListEntryStateStroke>,std::allocator<CG::DisplayListEntryStateStroke>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CGContextSetSmoothness(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v11 = *(a1 + 96);
    if (*(*(v11 + 144) + 16) != a2)
    {
      maybe_copy_device_state(*(a1 + 96));
      *(*(v11 + 144) + 16) = a2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetSmoothness", a1, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t CG::dasher::dash_path_element<CG::LineSegment>(uint64_t this, float64x2_t *a2)
{
  v2 = a2->f64[1];
  v3 = a2[1].f64[0];
  v4 = a2[1].f64[1];
  v5 = *(this + 48);
  v6 = *(this + 56);
  v7 = *(this + 32);
  v8 = *(this + 40);
  v9 = sqrt((v4 * v6 + v3 * v8 - (v2 * v6 + a2->f64[0] * v8)) * (v4 * v6 + v3 * v8 - (v2 * v6 + a2->f64[0] * v8)) + (v4 * v5 + v3 * v7 - (v2 * v5 + a2->f64[0] * v7)) * (v4 * v5 + v3 * v7 - (v2 * v5 + a2->f64[0] * v7)));
  if (v9 >= 0.0 && ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v9 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v13 = this;
    v14 = *(this + 120);
    if (v9 <= v14)
    {
      if (*(this + 104) == 1)
      {
        this = CG::dasher::add_path_dash_segment<CG::LineSegment>(this, a2, 0.0, v9);
        *(v13 + 144) = 0;
        v14 = *(v13 + 120);
      }

      v17 = v14 - v9;
      goto LABEL_20;
    }

    v15 = 0.0;
    v16 = v14 + 0.0;
    do
    {
      if (*(v13 + 104) == 1)
      {
        CG::dasher::add_path_dash_segment<CG::LineSegment>(v13, a2, v15, v16);
        v14 = *(v13 + 120);
      }

      v15 = v15 + v14;
      this = CG::dasher::advance_dash_index(v13);
      v14 = *(v13 + 120);
      v16 = v15 + v14;
    }

    while (v15 + v14 < v9);
    if (v15 < v9)
    {
      if (*(v13 + 104) == 1)
      {
        this = CG::dasher::add_path_dash_segment<CG::LineSegment>(v13, a2, v15, v9);
        *(v13 + 144) = 0;
        v14 = *(v13 + 120);
      }

      v17 = v14 - (v9 - v15);
LABEL_20:
      *(v13 + 120) = v17;
    }
  }

  return this;
}

uint64_t CG::dasher::add_path_dash_segment<CG::LineSegment>(uint64_t result, float64x2_t *a2, double a3, double a4)
{
  v6 = result;
  v7 = 0.0;
  if (a3 > 0.0)
  {
    v8 = a2[1].f64[0];
    v9 = a2[1].f64[1];
    v11 = *(result + 48);
    v10 = *(result + 56);
    v13 = *(result + 32);
    v12 = *(result + 40);
    v14 = a2->f64[1];
    v15 = sqrt((v9 * v10 + v8 * v12 - (v14 * v10 + a2->f64[0] * v12)) * (v9 * v10 + v8 * v12 - (v14 * v10 + a2->f64[0] * v12)) + (v9 * v11 + v8 * v13 - (v14 * v11 + a2->f64[0] * v13)) * (v9 * v11 + v8 * v13 - (v14 * v11 + a2->f64[0] * v13)));
    v16 = a3 / v15;
    v17 = v15 > a3;
    v7 = 1.0;
    if (v17)
    {
      v7 = v16;
    }
  }

  v18 = a2[1];
  v19 = vaddq_f64(*a2, vmulq_n_f64(vsubq_f64(v18, *a2), v7));
  if (*(result + 144) == 1)
  {
    v20 = *result;
    v37 = v19;
    if (v20)
    {
      v35 = v18;
      v36 = v19;
      result = (*(v20 + 24))(*(v20 + 8), 0, &v37, *(v20 + 48));
      v18 = v35;
      v19 = v36;
    }
  }

  if (a3 == a4)
  {
    v21 = vsubq_f64(v18, v19);
    if (v21.f64[0] != 0.0 || v21.f64[1] != 0.0)
    {
      v21 = vdivq_f64(v21, vdupq_lane_s64(COERCE__INT64(sqrt(v21.f64[1] * v21.f64[1] + v21.f64[0] * v21.f64[0])), 0));
    }

    v22 = vmulq_f64(v21, vdupq_n_s64(0x3EF0000000000000uLL));
  }

  else
  {
    v23 = a4 - a3;
    v24 = 0.0;
    if (a4 - a3 > 0.0)
    {
      v26 = *(v6 + 48);
      v25 = *(v6 + 56);
      v28 = *(v6 + 32);
      v27 = *(v6 + 40);
      v29 = vmuld_lane_f64(v25, v18, 1) + v18.f64[0] * v27;
      v30 = vmuld_lane_f64(v26, v18, 1) + v18.f64[0] * v28;
      v31 = vmuld_lane_f64(v25, v19, 1);
      v32 = vmuld_lane_f64(v26, v19, 1);
      v33 = sqrt((v29 - (v31 + v19.f64[0] * v27)) * (v29 - (v31 + v19.f64[0] * v27)) + (v30 - (v32 + v19.f64[0] * v28)) * (v30 - (v32 + v19.f64[0] * v28)));
      if (v33 <= v23)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v23 / v33;
      }
    }

    v22 = vmulq_n_f64(vsubq_f64(v18, v19), v24);
  }

  v34 = *v6;
  v37 = vaddq_f64(v19, v22);
  if (v34)
  {
    return (*(v34 + 24))(*(v34 + 8), 1, &v37, *(v34 + 48));
  }

  return result;
}

void *CGPDFContentStreamCreateResolvedColorSpace(uint64_t a1, void *cf)
{
  v2 = cf;
  if (a1)
  {
    v3 = *(a1 + 64);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __CGColorSpaceCreateResolved_block_invoke;
    v5[3] = &__block_descriptor_tmp_39_23493;
    v6 = *(a1 + 48);
    v7 = v3;
    return CGColorSpaceCreateResolvedColorSpace(cf, v5);
  }

  else if (cf)
  {
    CFRetain(cf);
  }

  return v2;
}

void CGCFDictionarySetRect(__CFDictionary *a1, const void *a2, double a3, double a4, double a5, double a6)
{
  *v10 = a3;
  *&v10[1] = a4;
  *&v10[2] = a5;
  *&v10[3] = a6;
  if (a1 && a2)
  {
    v8 = CFDataCreate(0, v10, 32);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(a1, a2, v8);
      CFRelease(v9);
    }
  }
}

uint64_t CG::dasher::advance_dash_index(uint64_t this)
{
  *(this + 104) ^= 1u;
  v1 = *(this + 112);
  v2 = *(this + 8);
  v3 = (*(this + 16) - v2) >> 3;
  if (v1 == v3 - 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1 + 1;
  }

  *(this + 112) = v4;
  if (v3 <= v4)
  {
    __break(1u);
  }

  else
  {
    *(this + 120) = *(v2 + 8 * v4);
    *(this + 144) = 1;
  }

  return this;
}

void CGContextConcatCTM(CGContextRef c, CGAffineTransform *transform)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v8 = *(c + 12);
      v9 = *(v8 + 24);
      v10 = *(v8 + 40);
      v11 = vmlaq_n_f64(vmulq_n_f64(v10, transform->d), v9, transform->c);
      v12 = vaddq_f64(*(v8 + 56), vmlaq_n_f64(vmulq_n_f64(v10, transform->ty), v9, transform->tx));
      *(v8 + 24) = vmlaq_n_f64(vmulq_n_f64(v10, transform->b), v9, transform->a);
      *(v8 + 40) = v11;
      *(v8 + 56) = v12;
      return;
    }

    v13 = c;
  }

  else
  {
    v13 = 0;
  }

  handle_invalid_context("CGContextConcatCTM", v13, v2, v3, v4, v5, v6, v7);
}

void *CGPDFDrawingContextCreateWithStream(CGPDFStream *a1, CGPDFDictionary *a2, CGPDFContentStreamRef *a3)
{
  if (a3)
  {
    v4 = CGPDFContentStreamCreateWithStream(a1, a2, *a3);
    v5 = v4;
    v6 = a3;
  }

  else
  {
    v4 = CGPDFContentStreamCreateWithStream(a1, a2, 0);
    v5 = v4;
    v6 = 0;
  }

  v7 = CGPDFDrawingContextCreateWithContentStream(v4, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

void CGPathAddRect(CGMutablePathRef path, const CGAffineTransform *m, CGRect rect)
{
  if (path)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v15 = CFGetTypeID(path), v15 == CGPathGetTypeID()))
    {
      {
        v17.origin.x = x;
        v17.origin.y = y;
        v17.size.width = width;
        v17.size.height = height;
        v16 = CGRectStandardize(v17);
        CG::Path::append_rect((path + 16), &v16, m);
      }
    }
  }
}

uint64_t CGPathCreateStrokedPath(char *cf, _anonymous_namespace_ *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  if (!cf)
  {
    return 0;
  }

  v14 = a3;
  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v18 = CFGetTypeID(cf);
    if (v18 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128, v20, v21, v22, v23, v24, v25);
  v30 = Instance;
  if (Instance)
  {
    CG::Path::Path((Instance + 16), (cf + 16), a9, v14, a4, a10, a11, this, v27, v28, v29);
  }

  return v30;
}

CGPDFContentStreamRef CGPDFContentStreamCreateWithStream(CGPDFStreamRef stream, CGPDFDictionaryRef streamResources, CGPDFContentStreamRef parent)
{
  v6 = pdf_content_stream_create(1);
  CFArrayAppendValue(*(v6 + 24), stream);
  if (parent)
  {
    *(v6 + 16) = *(parent + 2);
    if (!streamResources)
    {
      CFRetain(parent);
      goto LABEL_6;
    }
  }

  else
  {
    *(v6 + 16) = 0;
    if (!streamResources)
    {
      goto LABEL_6;
    }
  }

  parent = 0;
LABEL_6:
  *(v6 + 40) = parent;
  v7 = CGPDFResourcesCreate();
  v8 = v7;
  if (v7)
  {
    os_unfair_lock_lock(v7 + 20);
    v9 = *&v8[4]._os_unfair_lock_opaque;
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    *v10 = v9;
    v10[1] = streamResources;
    *&v8[4]._os_unfair_lock_opaque = v10;
    os_unfair_lock_unlock(v8 + 20);
  }

  *(v6 + 32) = v8;
  set_default_color_spaces(v6);
  return v6;
}

void *CGPDFDrawingContextCreateWithContentStream(const void *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E00405DBFE06EuLL);
  __CFSetLastAllocationEventName();
  if (v4)
  {
    *(v4 + 8) = 0;
    v4[13] = 0;
    *(v4 + 112) = 1;
    if (a1)
    {
      CFRetain(a1);
    }

    *v4 = a1;
    *(v4 + 5) = xmmword_18439C640;
    v4[7] = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
    if (a2)
    {
      Copy = CGPDFGStateCreateCopy(*(a2 + 32));
    }

    else
    {
      Copy = CGPDFGStateCreate();
    }

    v6 = v4[6];
    *v4[7] = Copy;
    if (v6 >= 2)
    {
      for (i = 1; i < v9; ++i)
      {
        v8 = CGPDFGStateCreate();
        v9 = v4[6];
        *(v4[7] + 8 * i) = v8;
      }
    }

    v4[4] = *v4[7];
    if (a2)
    {
      v4[2] = *(a2 + 16);
      v4[11] = *(a2 + 88);
      v10 = _Block_copy(*(a2 + 184));
      v11 = 23;
    }

    else
    {
      v10 = 0;
      v4[2] = 0;
      v11 = 11;
    }

    v4[v11] = v10;
    if (*v4 && (v12 = v4[4]) != 0)
    {
      v4[3] = CGPDFGStateCreateCopy(v12);
    }

    else
    {
      CGPDFDrawingContextRelease(v4);
      return 0;
    }
  }

  return v4;
}

void CG::Path::append_rect(CG::Path *this, const CGRect *a2, float64x2_t *a3)
{
  if (*this)
  {
    CG::Path::reserve_space(this, 5, 5);
    origin = a2->origin;
    v19 = vaddq_f64(a2->size, a2->origin);
    CG::Path::move_to_point(this, a3, v6, a2->origin);
    v7.f64[0] = v19.f64[0];
    v7.f64[1] = origin.y;
    CG::Path::add_line_to_point(this, a3, v8, v7);
    CG::Path::add_line_to_point(this, a3, v9, v19);
    v10.f64[0] = origin.x;
    v10.f64[1] = v19.f64[1];
    CG::Path::add_line_to_point(this, a3, v11, v10);

    CG::Path::close_subpath(this);
  }

  else
  {
    v12 = a2->origin;
    width = a2->size.width;
    height = a2->size.height;
    *this = 1;
    if (a3)
    {
      v15 = a3[1];
      v16 = vmlaq_n_f64(vmulq_f64(v15, 0), *a3, width);
      v17 = vmlaq_f64(vmulq_n_f64(v15, height), 0, *a3);
      v12 = vaddq_f64(a3[2], vmlaq_n_f64(vmulq_laneq_f64(v15, v12, 1), *a3, v12.x));
    }

    else
    {
      v17.f64[0] = 0.0;
      v16 = *&width;
      v17.f64[1] = height;
    }

    *(this + 8) = v16;
    *(this + 24) = v17;
    *(this + 40) = v12;
  }
}

uint64_t CGPDFDocumentFinalize(char *a1)
{
  v2 = *(a1 + 3);
  if (v2)
  {
    if (*(a1 + 4))
    {
      v3 = 0;
      do
      {
        v4 = *(*(a1 + 3) + 8 * v3);
        if (v4)
        {
          if ((*(v4 + 24) & 1) != 0 || (*(v4 + 16) = 0, (v4 = *(*(a1 + 3) + 8 * v3)) != 0))
          {
            CFRelease(v4);
          }
        }

        ++v3;
      }

      while (v3 < *(a1 + 4));
      v2 = *(a1 + 3);
    }

    free(v2);
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 6);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a1, @"CGPDFDocumentLowMemoryNotificationName", 0);
  os_unfair_lock_lock(a1 + 52);
  v10 = *(a1 + 25);
  if (v10)
  {
    v11 = v10[5];
    if (v11)
    {
      do
      {
        v12 = *v11;
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    v13 = v10[3];
    v10[3] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    if (v10[2])
    {
      v14 = v10[1];
      v15 = *(*v10 + 8);
      v16 = *v14;
      *(v16 + 8) = v15;
      *v15 = v16;
      v10[2] = 0;
      if (v14 != v10)
      {
        do
        {
          v17 = v14[1];
          operator delete(v14);
          v14 = v17;
        }

        while (v17 != v10);
      }
    }

    MEMORY[0x1865EE610](v10, 0x10A0C404B5732FELL);
  }

  *(a1 + 25) = 0;
  os_unfair_lock_unlock(a1 + 52);
  os_unfair_lock_lock(a1 + 53);
  v18 = *(a1 + 27);
  if (v18)
  {
    CFRelease(*(v18 + 16));
    v19 = *(v18 + 24);
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = *(v18 + 32);
    if (v20)
    {
      CFRelease(v20);
    }

    free(v18);
  }

  os_unfair_lock_unlock(a1 + 53);
  os_unfair_lock_lock(a1 + 56);
  v21 = *(a1 + 29);
  if (v21)
  {
    CFRelease(v21);
  }

  os_unfair_lock_unlock(a1 + 56);
  pthread_mutex_destroy(a1 + 2);

  return pthread_mutex_destroy((a1 + 56));
}

void pdf_page_release(uint64_t a1)
{
  if (a1)
  {
    CGColorSpaceRelease(*(a1 + 56));
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    free(*(a1 + 64));
    CGPropertiesRelease(*(a1 + 72));
    v3 = *(a1 + 80);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 96);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 104);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

uint64_t *CGPDFPageFinalize(unint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    if (v2 && a1 != 0)
    {
      os_unfair_lock_lock((v2 + 208));
      v4 = *(v2 + 200);
      if (v4)
      {
        v5 = std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::find<CGPDFPage *>((v4 + 24), a1);
        if (v5)
        {
          v6 = v5;
          result = v5[3];
          if (result == v4)
          {
            __break(1u);
            return result;
          }

          v9 = *result;
          v8 = result[1];
          *(v9 + 8) = v8;
          *v8 = v9;
          --*(v4 + 16);
          operator delete(result);
          std::__hash_table<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::__unordered_map_hasher<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::hash<CGPDFPage *>,std::equal_to<CGPDFPage *>,true>,std::__unordered_map_equal<CGPDFPage *,std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>,std::equal_to<CGPDFPage *>,std::hash<CGPDFPage *>,true>,std::allocator<std::__hash_value_type<CGPDFPage *,std::__list_iterator<CGPDFPage *,void *>>>>::erase((v4 + 24), v6);
          if (*(v4 + 72) == 1)
          {
            printf("LRUCache: removed page: %lu\n", *(*(a1 + 40) + 8));
            putchar(9);
            LRUCache::print(v4);
          }
        }
      }

      os_unfair_lock_unlock((v2 + 208));
    }
  }

  pdf_page_release(*(a1 + 40));
  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  if (*(a1 + 24) == 1)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  os_unfair_lock_lock((a1 + 336));
  v12 = *(a1 + 344);
  if (v12)
  {
    CFRelease(v12);
  }

  os_unfair_lock_unlock((a1 + 336));
  v13 = *(a1 + 368);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 296);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 312);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 328);
  if (v16)
  {
    CFRelease(v16);
  }

  return pthread_mutex_destroy((a1 + 216));
}

BOOL get_value_from_data(const __CFData *a1, UInt8 *a2, CFIndex a3)
{
  Length = CFDataGetLength(a1);
  v8 = Length >= 0 && Length == a3;
  if (a2 && v8)
  {
    v10.location = 0;
    v10.length = a3;
    CFDataGetBytes(a1, v10, a2);
  }

  return v8;
}

void CGRectDivide(CGRect rect, CGRect *slice, CGRect *remainder, CGFloat amount, CGRectEdge edge)
{
  v8 = fabs(rect.origin.x) != INFINITY;
  v9 = fabs(rect.origin.y) != INFINITY;
  v11 = rect.origin.x == INFINITY || rect.origin.y == INFINITY || !v8;
  if (v11 || !v9)
  {
    *slice = CGRectNull;
    *remainder = CGRectNull;
  }

  else
  {
    if (rect.size.width < 0.0 || rect.size.height < 0.0)
    {
      rect = CGRectStandardize(rect);
    }

    *remainder = rect;
    size = remainder->size;
    slice->origin = remainder->origin;
    slice->size = size;
    width = 0.0;
    if (amount >= 0.0)
    {
      width = amount;
    }

    if ((edge | 2) == 2)
    {
      if (width > rect.size.width)
      {
        width = rect.size.width;
      }

      slice->size.width = width;
      v15 = remainder->size.width - width;
      remainder->size.width = v15;
      if (edge)
      {
        slice->origin.x = v15 + slice->origin.x;
      }

      else
      {
        remainder->origin.x = width + remainder->origin.x;
      }
    }

    else
    {
      if (width > rect.size.height)
      {
        width = rect.size.height;
      }

      slice->size.height = width;
      v16 = remainder->size.height - width;
      remainder->size.height = v16;
      if (edge == CGRectMinYEdge)
      {
        remainder->origin.y = width + remainder->origin.y;
      }

      else
      {
        slice->origin.y = v16 + slice->origin.y;
      }
    }
  }
}

void set_initial_group_gstate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 280);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 280) = 0;
    }

    CGPDFGStateSetFillAlpha(a1, 1.0);
    CGPDFGStateSetStrokeAlpha(a1, 1.0);
    v3 = *(a1 + 208);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 208) = 0;
    }

    *(a1 + 200) = 0;
  }

  else
  {
    CGPDFGStateSetFillAlpha(0, 1.0);

    CGPDFGStateSetStrokeAlpha(0, 1.0);
  }
}

void *CGPDFResourcesFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[9];
  if (v8)
  {
    CFRelease(v8);
  }

  result = a1[2];
  if (result)
  {
    do
    {
      v10 = *result;
      free(result);
      result = v10;
    }

    while (v10);
  }

  return result;
}

void CGPDFGStateSetStrokeAlpha(uint64_t a1, CGFloat a2)
{
  if (a1)
  {
    *(a1 + 224) = a2;
    StrokeColor = CGPDFGStateGetStrokeColor(a1);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(StrokeColor, a2);
    CGPDFGStateSetStrokeColor(a1, CopyWithAlpha);
    if (CopyWithAlpha)
    {

      CFRelease(CopyWithAlpha);
    }
  }
}

void pdf_document_finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
  }

  free(*(a1 + 24));
  CGPropertiesRelease(*(a1 + 32));
  CGColorSpaceRelease(*(a1 + 40));
  CGColorSpaceRelease(*(a1 + 48));
  CGColorSpaceRelease(*(a1 + 56));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::condition_variable::~condition_variable((v3 + 20));
    std::condition_variable::~condition_variable((v3 + 14));
    std::mutex::~mutex((v3 + 6));
    v4 = v3[3];
    if (v4)
    {
      v3[4] = v4;
      operator delete(v4);
    }

    v5 = *v3;
    *v3 = 0;
    if (v5)
    {
      (v3[1])();
    }

    JUMPOUT(0x1865EE610);
  }
}

uint64_t CGPDFGStateGetStrokeColor(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 64);
    if (!result)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      *(v1 + 64) = CGColorSpaceCopyDefaultColor(DeviceGray);
      CGColorSpaceRelease(DeviceGray);
      return *(v1 + 64);
    }
  }

  return result;
}

void CGPDFGStateSetStrokeColor(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 64);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 64) = cf;
    }
  }
}

void pdf_xref_release(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      v3 = (*(a1 + 168) + 32);
      do
      {
        if ((*(v3 - 20) & 1) != 0 && *(v3 - 6) == 9)
        {
          v4 = *v3;
          if (*v3)
          {
            if (*(v4 + 16) == a1)
            {
              *(v4 + 16) = 0;
            }
          }
        }

        v3 += 5;
        --v2;
      }

      while (v2);
    }

    if (*(a1 + 176))
    {
      pthread_mutex_lock((a1 + 96));
      if (*(a1 + 160))
      {
        v5 = 0;
        v6 = 0;
        while (1)
        {
          v7 = *(a1 + 168);
          v8 = v7 + v5;
          if (*(v7 + v5 + 12))
          {
            break;
          }

LABEL_26:
          ++v6;
          v5 += 40;
          if (v6 >= *(a1 + 160))
          {
            goto LABEL_27;
          }
        }

        v9 = *(v8 + 8);
        if (v9 == 9)
        {
          v12 = *(*(v7 + v5 + 32) + 48);
        }

        else
        {
          if (v9 != 8)
          {
            if (v9 == 7)
            {
              v10 = *(v7 + v5 + 32);
              if (v10)
              {
                pthread_mutex_lock((v10 + 72));
                v11 = *(v10 + 64);
                if (v11)
                {
                  *(v10 + 64) = 0;
                  CGPDFAssociationRelease(v11);
                }

                pthread_mutex_unlock((v10 + 72));
              }
            }

            goto LABEL_24;
          }

          v12 = *(v7 + v5 + 32);
        }

        CGPDFDictionaryRemoveAssociation(v12);
LABEL_24:
        if ((*(v8 + 8) - 5) <= 4)
        {
          pdf_object_release_compound_value(v8);
        }

        goto LABEL_26;
      }

LABEL_27:
      pthread_mutex_unlock((a1 + 96));
    }

    CGPDFSecurityManagerRelease(*(a1 + 40));
    CGPDFXRefStreamRelease(*(a1 + 8));
    CGPDFXRefTableRelease(*(a1 + 16));
    v13 = *(a1 + 24);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    pthread_mutex_destroy((a1 + 96));
    free(*(a1 + 168));

    free(a1);
  }
}

uint64_t CGPDFDictionaryRemoveAssociation(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock((result + 88));
    v2 = *(v1 + 40);
    if (v2)
    {
      *(v1 + 40) = 0;
      CGPDFAssociationRelease(v2);
    }

    return pthread_mutex_unlock((v1 + 88));
  }

  return result;
}

void CGContextBeginTransparencyLayer(CGContextRef c, CFDictionaryRef auxiliaryInfo)
{
  if (auxiliaryInfo && ((Value = CFDictionaryGetValue(auxiliaryInfo, @"kCGTransparencyLayerContentBounds"), v14 = 0u, v15 = 0u, Value) && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFDictionaryGetTypeID()) && (get_point_from_dict(v5, &v14), v7) && (get_size_from_dict(v5, &v15), (v8 & 1) != 0) || CGCFDictionaryGetRect(auxiliaryInfo, @"kCGContextBoundingBox", &v14)))
  {
    v10 = *(&v14 + 1);
    v9 = v14;
    v12 = *(&v15 + 1);
    v11 = v15;
    v13 = c;
  }

  else
  {
    v9 = 0xFFDFFFFFFFFFFFFFLL;
    v11 = 0x7FEFFFFFFFFFFFFFLL;
    v13 = c;
    v10 = 0xFFDFFFFFFFFFFFFFLL;
    v12 = 0x7FEFFFFFFFFFFFFFLL;
  }

  CGContextBeginTransparencyLayerWithRect(v13, *&v9, auxiliaryInfo);
}

void CGPDFDictionaryFinalize(char *a1)
{
  CGPDFAssociationRelease(*(a1 + 5));
  for (i = *(a1 + 8); i; i = *i)
  {
    v4 = i[2];
    v3 = i[3];
    if ((v4[2] - 5) <= 4)
    {
      pdf_object_release_compound_value(i[2]);
    }

    free(v4);
    if ((v3[2] - 5) <= 4)
    {
      pdf_object_release_compound_value(v3);
    }

    free(v3);
  }

  pthread_mutex_destroy((a1 + 88));
  v5 = *(a1 + 8);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v7)
  {

    operator delete(v7);
  }
}

void CGPDFAssociationRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t CGPDFArrayFinalize(char *a1)
{
  CGPDFAssociationRelease(*(a1 + 8));
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if ((*(*v2 + 8) - 5) <= 4)
      {
        pdf_object_release_compound_value(*v2);
      }

      free(v4);
      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 2);
  }

  if (v2)
  {
    *(a1 + 3) = v2;
    operator delete(v2);
  }

  return pthread_mutex_destroy((a1 + 72));
}

void CGPDFStreamFinalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    CFRelease(v3);
  }
}

void CGPDFXRefStreamRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      do
      {
        xref_stream_release(v2[1]);
        v2 = *v2;
      }

      while (v2);
      v3 = *(a1 + 8);
      if (v3)
      {
        do
        {
          v4 = *v3;
          free(v3);
          v3 = v4;
        }

        while (v4);
      }
    }

    pdf_object_scanner_release(*(a1 + 16));

    free(a1);
  }
}

void CGPDFSecurityManagerRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      free(v3);
    }

    free(*(a1 + 16));

    free(a1);
  }
}

void CGPDFXRefTableRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      do
      {
        xref_table_release(v2[1]);
        v2 = *v2;
      }

      while (v2);
      v3 = *(a1 + 8);
      if (v3)
      {
        do
        {
          v4 = *v3;
          free(v3);
          v3 = v4;
        }

        while (v4);
      }
    }

    pdf_object_scanner_release(*(a1 + 16));

    free(a1);
  }
}

void xref_table_release(uint64_t a1)
{
  if (a1)
  {
    xref_section_list_release(*(a1 + 40));
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    CGPDFXRefStreamRelease(*(a1 + 32));

    free(a1);
  }
}

void xref_section_list_release(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        free(v3[2]);
        free(v3);
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

void pdf_object_scanner_release(uint64_t *a1)
{
  if (a1)
  {
    pdf_lexer_release(a1[2]);

    free(a1);
  }
}

void pdf_lexer_release(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    free(*(a1 + 40));

    free(a1);
  }
}

void unmap_file(int a1, void *a2, size_t a3)
{
  v3 = a2;
  if (munmap(a2, a3) < 0)
  {
    v4 = __error();
    strerror(*v4);
    CGPostError("Failed to unmap data (%p; 0x%lx): %s.\n", v5, v6, v7, v8, v9, v10, v11, v3);
  }
}

uint64_t CGPatternNotificationCenter()
{
  if (CGPatternNotificationCenter_once != -1)
  {
    dispatch_once_f(&CGPatternNotificationCenter_once, 0, pattern_notification_center_create);
  }

  return pattern_notification_center;
}

uint64_t pattern_notification_center_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = CGNotificationCenterCreate(a1, a2, a3, a4, a5, a6, a7, a8);
  pattern_notification_center = result;
  return result;
}

uint64_t sub_183F5831C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1843902E8();
  sub_183F58A9C(v1, v2, v3, v4);
  return sub_184390348();
}

uint64_t RGBA32_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  memset(v50, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v33, v50) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = *v6;
  v22 = *v6 != 134755208 || v8 <= 23;
  v23 = *a3;
  if (v22)
  {
    v24 = v8;
  }

  else
  {
    v24 = (v8 + 4);
  }

  DWORD2(v33) = *a3;
  HIDWORD(v33) = v21;
  if (v23 != 134755208)
  {
    v25 = SAMPLEINDEX(v23, v10, v11, v12, v13, v14, v15, v16);
    if (!v25)
    {
      return 0xFFFFFFFFLL;
    }

    if (v25 > 0xB)
    {
      if (v25 > 0x13)
      {
LABEL_35:
        v30 = 0;
        goto LABEL_37;
      }

      if (v25 - 14 < 4)
      {
LABEL_36:
        v30 = 1;
LABEL_37:
        *&v33 = argb32_image_sample[v25 + 1];
        if (v33)
        {
          v31 = 134755160;
          goto LABEL_48;
        }

        if ((HIWORD(*a3) & 0x3Fu) > 8)
        {
          if ((*a3 & 0x3F0000u) >> 16 > 0x10)
          {
LABEL_45:
            *&v33 = *&RGBF_image_sample[2 * v25 + 2];
            if (v33)
            {
              v31 = 538981289;
              v32 = 16;
              goto LABEL_47;
            }

            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          *&v33 = *&RGB8_image_sample[2 * v25 + 2];
          if (v33)
          {
            v31 = 134755224;
            goto LABEL_48;
          }
        }

        *&v33 = *&RGB16_image_sample[2 * v25 + 2];
        if (v33)
        {
          v31 = 269497256;
          v32 = 8;
LABEL_47:
          LODWORD(v34) = v32;
LABEL_48:
          DWORD2(v33) = v31;
          if (v44)
          {
            v30 = 0;
          }

          if (v30 == 1 && (BYTE4(v34) & 0x77) == 0x73 && (v24 - 1) <= 1 && (a2[2] == 5 || !a2[2]))
          {
            if (v25 > 0xB)
            {
              if (v25 <= 0x13)
              {
                if (v25 == 12 && v24 == 1)
                {
                  v17.n128_u32[0] = *(a3 + 8);
                  if (v17.n128_f32[0] == 1.0)
                  {
                    argb32_mark_image_W16(a2, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v26, v27, v28, v29);
                    return 1;
                  }
                }

                else if (v25 == 13 && v24 == 1)
                {
                  v17.n128_u32[0] = *(a3 + 8);
                  if (v17.n128_f32[0] == 1.0)
                  {
                    argb32_mark_image_w16(a2, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v26, v27, v28, v29);
                    return 1;
                  }
                }

                else if (v25 == 14 && v24 == 1)
                {
                  v17.n128_u32[0] = *(a3 + 8);
                  if (v17.n128_f32[0] == 1.0)
                  {
                    RGBA32_mark_image_RGB48(a2, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v26, v27, v28, v29);
                    return 1;
                  }
                }

                else if (v25 == 15 && v24 == 1)
                {
                  v17.n128_u32[0] = *(a3 + 8);
                  if (v17.n128_f32[0] == 1.0)
                  {
                    RGBA32_mark_image_rgb48(a2, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v26, v27, v28, v29);
                    return 1;
                  }
                }

                else if (v25 == 17)
                {
                  v17.n128_u32[0] = *(a3 + 8);
                  if (v17.n128_f32[0] == 1.0)
                  {
                    RGBA32_mark_image_rgba64(a2, v24, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v27, v28, v29);
                    return 1;
                  }
                }

                else if (v25 == 16)
                {
                  v17.n128_u32[0] = *(a3 + 8);
                  if (v17.n128_f32[0] == 1.0)
                  {
                    RGBA32_mark_image_RGBA64(a2, v24, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v27, v28, v29);
                    return 1;
                  }
                }
              }
            }

            else if (v25 == 2 && v24 == 1)
            {
              v17.n128_u32[0] = *(a3 + 8);
              if (v17.n128_f32[0] == 1.0)
              {
                argb32_mark_image_W8(a2, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v26, v27, v28, v29);
                return 1;
              }
            }

            else if (v25 == 5 && v24 == 1)
            {
              v17.n128_u32[0] = *(a3 + 8);
              if (v17.n128_f32[0] == 1.0)
              {
                RGBA32_mark_image_RGB24(a2, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v26, v27, v28, v29);
                return 1;
              }
            }

            else if (v25 > 7)
            {
              if (v25 == 8)
              {
                v17.n128_u32[0] = *(a3 + 8);
                if (v17.n128_f32[0] == 1.0)
                {
                  argb32_mark_image_rgbx32(a2, v24, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v27, v28, v29);
                  return 1;
                }
              }

              else if (v25 == 9)
              {
                v17.n128_u32[0] = *(a3 + 8);
                if (v17.n128_f32[0] == 1.0)
                {
                  argb32_mark_image_RGBX32(a2, v24, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v27, v28, v29);
                  return 1;
                }
              }
            }

            else if (v25 == 6)
            {
              v17.n128_u32[0] = *(a3 + 8);
              if (v17.n128_f32[0] == 1.0)
              {
                argb32_mark_image_xrgb32(a2, v24, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v27, v28, v29);
                return 1;
              }
            }

            else if (v25 == 7)
            {
              v17.n128_u32[0] = *(a3 + 8);
              if (v17.n128_f32[0] == 1.0)
              {
                argb32_mark_image_XRGB32(a2, v24, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v27, v28, v29);
                return 1;
              }
            }
          }

LABEL_63:
          argb32_image_mark(a2, &v33, v24, v17);
          return 1;
        }

        goto LABEL_45;
      }

      if (v25 != 13 && v25 != 12)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v25 - 5 < 5)
      {
        goto LABEL_36;
      }

      if (v25 != 2)
      {
        goto LABEL_35;
      }
    }

    if (*(a2 + 12))
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v44 || (~DWORD1(v34) & 0xC3) != 0)
  {
    goto LABEL_62;
  }

  v17.n128_u32[0] = *(a3 + 8);
  if ((BYTE4(v34) & 4) != 0 || (v24 - 1) > 1 || (LODWORD(v18) = 1.0, v17.n128_f32[0] != 1.0))
  {
    LODWORD(v18) = 1.0;
    if (v17.n128_f32[0] >= 1.0)
    {
      goto LABEL_61;
    }

LABEL_62:
    *&v33 = argb32_sample_argb32;
    goto LABEL_63;
  }

  if (a2[2] != 5 && a2[2])
  {
LABEL_61:
    if (!*(a3 + 24))
    {
      if ((BYTE4(v34) & 4) != 0)
      {
        v17.n128_u64[0] = *(a3 + 32);
        *(a2 + 8) = v17.n128_u64[0];
      }

      argb32_mark(a1, a2, v17, v18, v19, v20, v11, v12, v13, v14, v15, v16);
      return 1;
    }

    goto LABEL_62;
  }

  argb32_mark_image(a2, v24, v39 >> SBYTE6(v34), *(&v39 + 1) >> SBYTE7(v34), *(&v41 + 1) >> SBYTE7(v34), v14, v15, v16);
  return 1;
}

uint64_t sub_183F58A9C(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1865ECC40](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1865ECC40](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1865ECC40](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1865ECC40](*&v9);
}

dispatch_once_t RIPLayerDepthForModel(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = WORD1(a2) & 0x3F;
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      if (v8 > 0x10)
      {
        v9 = 20;
        return RIPGetDepthForLayerFormat(v9, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v8 >= 9 && (a2 & 1) == 0)
      {
        v9 = 14;
        return RIPGetDepthForLayerFormat(v9, a2, a3, a4, a5, a6, a7, a8);
      }

      v11 = (a2 & 1) != 0 && v8 >= 9;
      v12 = 24;
      v13 = 6;
    }

    else
    {
      if (a1 != 2)
      {
        return 0;
      }

      if (v8 > 0x10)
      {
        v9 = 22;
        return RIPGetDepthForLayerFormat(v9, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v8 >= 9 && (a2 & 1) == 0)
      {
        v9 = 16;
        return RIPGetDepthForLayerFormat(v9, a2, a3, a4, a5, a6, a7, a8);
      }

      v11 = (a2 & 1) != 0 && v8 >= 9;
      v12 = 25;
      v13 = 10;
    }

    if (v11)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    return RIPGetDepthForLayerFormat(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a1 == -1)
  {
    v9 = 0;
    return RIPGetDepthForLayerFormat(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!a1)
  {
    if (v8 <= 0x10)
    {
      if (v8 < 9 || (a2 & 1) != 0)
      {
        v9 = 1;
        if (v8 >= 9 && (a2 & 1) != 0)
        {
          v9 = 23;
        }
      }

      else
      {
        v9 = 12;
      }
    }

    else
    {
      v9 = 18;
    }

    return RIPGetDepthForLayerFormat(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

BOOL CGPDFScannerPopNumber(CGPDFScannerRef scanner, CGPDFReal *value)
{
  v2 = *(scanner + 18);
  if (v2 <= 0)
  {
    pdf_error("stack underflow.", value);
    return 0;
  }

  else
  {
    v3 = *(scanner + 10) + 40 * v2;
    *(scanner + 18) = v2 - 1;
    if (v3 != 40)
    {
      v4 = *(v3 - 32);
      switch(v4)
      {
        case 12:
          goto LABEL_6;
        case 4:
          v5 = *(v3 - 8);
          if (!value)
          {
            return 1;
          }

          goto LABEL_7;
        case 3:
LABEL_6:
          v5 = *(v3 - 8);
          if (!value)
          {
            return 1;
          }

LABEL_7:
          *value = v5;
          return 1;
      }
    }

    return 0;
  }
}

CGPathRef CGPathCreateWithRect(CGRect rect, const CGAffineTransform *transform)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 88, v15, v16, v17, v18, v19, v20);
  if (Instance)
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v23 = CGRectStandardize(v24);
    CG::Path::append_rect((Instance + 16), &v23, transform);
  }

  return Instance;
}

void CGContextAddRect(CGContextRef c, CGRect rect)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
      {
        v14 = *(c + 12);
        v15 = *(c + 21);
        if (v15)
        {

          CGPathAddRect(v15, (v14 + 24), rect);
        }

        else
        {
          *(c + 21) = CGPathCreateWithRect(rect, (v14 + 24));
        }
      }

      return;
    }

    v16 = c;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGContextAddRect", v16, v2, v3, v4, v5, v6, v7);
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  v2 = 0.0;
  v3 = INFINITY;
  box_rect = INFINITY;
  v5 = 0.0;
  if (page && box <= kCGPDFArtBox)
  {
    v6 = (page + 32 * box);
    box_rect = v6[7];
    v3 = v6[8];
    v7 = (v6 + 7);
    if (box_rect == INFINITY || v3 == INFINITY)
    {
      box_rect = pdf_page_get_box_rect(*(page + 5), box);
    }

    else
    {
      v2 = *(v7 + 2);
      v5 = *(v7 + 3);
    }
  }

  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v3;
  result.origin.x = box_rect;
  return result;
}

CGPathRef CGContextCopyPath(CGContextRef c)
{
  if (c && *(c + 4) == 1129601108)
  {
    v7 = *(c + 21);
    if (v7)
    {
      v8 = *(c + 12);
      v9 = *(v8 + 40);
      *&v11.a = *(v8 + 24);
      *&v11.c = v9;
      *&v11.tx = *(v8 + 56);
      memset(&transform, 0, sizeof(transform));
      CGAffineTransformInvert(&transform, &v11);
      return CGPathCreateMutableCopyByTransformingPath(v7, &transform);
    }
  }

  else
  {
    handle_invalid_context("CGContextCopyPath", c, v1, v2, v3, v4, v5, v6);
  }

  return 0;
}

CGPathRef copy_clip_path(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 48) == 1)
    {
      *a2 = 0;
      *(v2 + 48) = 0;
      return CGContextCopyPath(*(a1 + 88));
    }

    if (*(v2 + 49) == 1)
    {
      *a2 = 1;
      *(v2 + 49) = 0;
      return CGContextCopyPath(*(a1 + 88));
    }
  }

  return 0;
}

void CGContextBeginPath(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v8 = *(c + 21);
      if (v8)
      {
        CFRelease(v8);
        *(c + 21) = 0;
      }

      return;
    }

    v9 = c;
  }

  else
  {
    v9 = 0;
  }

  handle_invalid_context("CGContextBeginPath", v9, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_183F58FCC()
{
  v0 = sub_18438FDD8();
  MEMORY[0x1865EC630](v0);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v1 = sub_18438FDD8();
  MEMORY[0x1865EC630](v1);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 40;
}

void set_color(CGPDFScanner *a1, uint64_t a2, CGColorSpace *a3, int a4, __n128 a5)
{
  ColorSpace = a3;
  value[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    goto LABEL_2;
  }

  v10 = *(a2 + 32);
  if (!a4)
  {
    StrokeColor = CGPDFGStateGetStrokeColor(v10);
    if (StrokeColor)
    {
      goto LABEL_5;
    }

LABEL_9:
    ColorSpace = 0;
    goto LABEL_11;
  }

  StrokeColor = CGPDFGStateGetFillColor(v10);
  if (!StrokeColor)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((StrokeColor & 0x8000000000000000) != 0)
  {
    ColorSpace = CGTaggedColorGetColorSpace(StrokeColor, v12, v13, v14, v15, v16, v17, v18);
    if (!ColorSpace)
    {
      goto LABEL_11;
    }

LABEL_2:
    v9 = *(*(ColorSpace + 3) + 48);
    goto LABEL_12;
  }

  ColorSpace = *(StrokeColor + 24);
  if (ColorSpace)
  {
    goto LABEL_2;
  }

LABEL_11:
  v9 = 0;
LABEL_12:
  v19 = MEMORY[0x1EEE9AC00](8 * (v9 + 1), a5);
  v22 = (value - v21);
  if (v20 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v23 = (value - v21);
  }

  else
  {
    v23 = 0;
  }

  if (v20 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000000ELL)
  {
    v23 = malloc_type_malloc(v19, 0x908E9000uLL);
  }

  value[0] = 0.0;
  if (v23)
  {
    if (v9)
    {
      v24 = v9 - 1;
      while (CGPDFScannerPopNumber(a1, value))
      {
        v23[v24--] = value[0];
        if (v24 == -1)
        {
          goto LABEL_22;
        }
      }

      pdf_error("missing or invalid arguments for color operator.");
      goto LABEL_34;
    }

LABEL_22:
    v25 = *(a2 + 32);
    if (a4)
    {
      if (v25)
      {
        v26 = *(v25 + 216);
      }

      else
      {
        v26 = 1.0;
      }

      v23[v9] = v26;
      v28 = CGColorCreate(ColorSpace, v23);
      CGPDFGStateSetFillColor(*(a2 + 32), v28);
      if (!v28)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v25)
      {
        v27 = *(v25 + 224);
      }

      else
      {
        v27 = 1.0;
      }

      v23[v9] = v27;
      v28 = CGColorCreate(ColorSpace, v23);
      CGPDFGStateSetStrokeColor(*(a2 + 32), v28);
      if (!v28)
      {
        goto LABEL_34;
      }
    }

    CFRelease(v28);
LABEL_34:
    if (v23 != v22)
    {
      free(v23);
    }
  }
}

void CGContextAddCurveToPoint(CGContextRef c, CGFloat cp1x, CGFloat cp1y, CGFloat cp2x, CGFloat cp2y, CGFloat x, CGFloat y)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v15 = *(c + 21);
      if (v15 && !CGPathIsEmpty(v15))
      {
        v23 = *(c + 21);
        v24 = (*(c + 12) + 24);

        CGPathAddCurveToPoint(v23, v24, cp1x, cp1y, cp2x, cp2y, x, y);
      }

      else
      {
        CGPostError("%s: no current point.", v7, v8, v9, v10, v11, v12, v13, "CGContextAddCurveToPoint");
      }

      return;
    }

    v22 = c;
  }

  else
  {
    v22 = 0;
  }

  handle_invalid_context("CGContextAddCurveToPoint", v22, v8, v9, v10, v11, v12, v13);
}

void CGContextClosePath(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v9 = *(c + 21);
      if (v9 && !CGPathIsEmpty(v9))
      {
        v11 = *(c + 21);

        CGPathCloseSubpath(v11);
      }

      else
      {
        CGPostError("%s: no current point.", v1, v2, v3, v4, v5, v6, v7, "CGContextClosePath");
      }

      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextClosePath", v10, v2, v3, v4, v5, v6, v7);
}

void CGPDFDrawingContextDrawPath(uint64_t a1, unsigned int a2, int a3)
{
  if (a3)
  {
    CGContextClosePath(*(a1 + 88));
  }

  v33 = 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 88);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    CGContextSetAlpha(*(a1 + 88), 1.0);
    v35.width = 0.0;
    v35.height = 0.0;
    CGContextSetPatternPhase(v6, v35);
    if (a2 < 2)
    {
      MappedFillColor = CGPDFGStateGetMappedFillColor(v5);
      CGContextSetFillColorWithColor(v6, MappedFillColor);
    }

    else
    {
      if (a2 - 3 < 2)
      {
        v8 = CGPDFGStateGetMappedFillColor(v5);
        CGContextSetFillColorWithColor(v6, v8);
      }

      MappedStrokeColor = CGPDFGStateGetMappedStrokeColor(v5);
      CGContextSetStrokeColorWithColor(v6, MappedStrokeColor);
      CGPDFGStateSynchronizeStroke(v5, v6);
    }

    CGPDFGStateSynchronizeColorRendering(v5, v6);
    CGPDFGStateSynchronizeRendering(v5, v6, v11, v12, v13, v14, v15, v16);
  }

  v17 = copy_clip_path(a1, &v33);
  if (a2 == 2)
  {
    v18 = *(a1 + 88);
    v19 = kCGPathStroke;
    goto LABEL_25;
  }

  memset(&rect, 0, sizeof(rect));
  if (CGPathIsRect(*(*(a1 + 88) + 168), &rect))
  {
    width = rect.size.width;
    height = rect.size.height;
LABEL_19:
    if (height * width / (*(a1 + 152) * *(a1 + 160)) >= 0.98)
    {
      FillColor = CGPDFGStateGetFillColor(*(a1 + 32));
      if (FillColor)
      {
        v25 = FillColor;
        v26 = *(a1 + 128);
        if (v26)
        {
          CFRelease(v26);
        }

        CFRetain(v25);
        *(a1 + 128) = v25;
      }
    }

    goto LABEL_24;
  }

  if (*(a1 + 168) == 4)
  {
    *(&width - 2) = CGPathGetBoundingBox(*(*(a1 + 88) + 168));
    rect.origin.x = v22;
    rect.origin.y = v23;
    rect.size.width = width;
    rect.size.height = height;
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 88);
  v19 = a2;
LABEL_25:
  CGContextDrawPath(v18, v19);
  *(a1 + 168) = 0;
  if (v17)
  {
    CGContextAddPath(*(a1 + 88), v17);
    clip(*(a1 + 88), v33, v27, v28, v29, v30, v31, v32);
    CFRelease(v17);
  }
}

const void *CGPDFGStateGetMappedFillColor(uint64_t a1)
{
  result = CGPDFGStateGetFillColor(a1);
  if (*(a1 + 72))
  {

    return map_color(a1, result);
  }

  return result;
}

void CGContextSetPatternPhase(CGContextRef c, CGSize phase)
{
  if (c && *(c + 4) == 1129601108)
  {
    height = phase.height;
    width = phase.width;
    v11 = *(c + 12);
    v12 = *(v11 + 120);
    if (*(v12 + 24) != phase.width || *(v12 + 32) != phase.height)
    {
      maybeCopyRenderingState(*(c + 12));
      v14 = *(v11 + 120);
      *(v14 + 24) = width;
      *(v14 + 32) = height;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetPatternPhase", c, v2, v3, v4, v5, v6, v7);
  }
}

void *CGPDFScannerFinalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if ((v2 & 0x80000000) != 0)
  {
    pdf_error("Fatal: Attempted to remove more than args stack count. Argument stack is inconsistent.");
  }

  else if (v2)
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 80) + v3;
      if ((*(v4 + 8) - 5) <= 4)
      {
        pdf_object_release_compound_value(v4);
      }

      v3 += 40;
    }

    while (40 * v2 != v3);
  }

  *(a1 + 72) -= v2;
  free(*(a1 + 80));
  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_release(*(a1 + 120));
  v6 = *(a1 + 32);
  if (v6)
  {
    do
    {
      free(v6[1]);
      v6 = *v6;
    }

    while (v6);
    v7 = *(a1 + 32);
    if (v7)
    {
      do
      {
        v8 = *v7;
        free(v7);
        v7 = v8;
      }

      while (v8);
    }
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    do
    {
      v10 = *v9;
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    pdf_lexer_release(v11);
  }

  result = *(a1 + 136);
  if (result)
  {
    do
    {
      v13 = *result;
      free(result);
      result = v13;
    }

    while (v13);
  }

  return result;
}

uint64_t CGSImageDataLockPixels(size_t a1, size_t a2, uint64_t a3, int *a4, _DWORD *a5, CGColorSpace *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, void *cf, int a12, int *a13)
{
  v124 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    _CGHandleAssert("CGSImageDataLockPixels", 5886, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "destination != NULL && CFGetTypeID(destination) == CGColorTransformGetTypeID()", "color transform (%p) invalid (%s)", a6, a7, a8, 0);
  }

  v28 = CFGetTypeID(cf);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v28 != CGColorTransformGetTypeID_type_id)
  {
    v86 = CFGetTypeID(cf);
    v87 = CFCopyTypeIDDescription(v86);
    CFStringGetCStringPtr(v87, 0x8000100u);
    _CGHandleAssert("CGSImageDataLockPixels", 5886, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "destination != NULL && CFGetTypeID(destination) == CGColorTransformGetTypeID()", "color transform (%p) invalid (%s)", v88, v89, v90, cf);
  }

  v96 = a7;
  v97 = a8;
  if (!a4)
  {
    goto LABEL_53;
  }

  if (!a3)
  {
    goto LABEL_53;
  }

  if (!a5)
  {
    goto LABEL_53;
  }

  v29 = *a3;
  if (!*a3)
  {
    goto LABEL_53;
  }

  v30 = *a4;
  if (!v30)
  {
    goto LABEL_53;
  }

  memset(v98 + 8, 0, 144);
  *&v98[0] = a1;
  if (!a1)
  {
    goto LABEL_53;
  }

  *(&v98[0] + 1) = a2;
  if (!a2)
  {
    goto LABEL_53;
  }

  v31 = *a5;
  if (!*(a3 + 8))
  {
    goto LABEL_16;
  }

  v32 = (v31 >> 2) & 3;
  if (v32 == 2)
  {
    v34 = v31 >> 6;
    if (v34 == 1)
    {
      v33 = 2;
    }

    else
    {
      v33 = v34 == 2;
    }

    goto LABEL_20;
  }

  if (v32 != 1)
  {
LABEL_16:
    v94 = 0;
    goto LABEL_21;
  }

  v33 = 8;
LABEL_20:
  v94 = v33;
LABEL_21:
  v95 = (v31 >> 16) & 0x3F;
  bitsPerPixel = v31 >> 22;
  check_clients_buffer("CGDataProviderCreateWithData", v29, v30 * a2);
  v35 = CGDataProviderCreateWithDataInternal(0, v29, v30 * a2, 0, 0);
  if (a6)
  {
    v36 = bitmap_info_from_depth(*a5, v95);
    if (v94 == 8)
    {
      v37 = 0;
    }

    else
    {
      v37 = v94;
    }

    v92 = v36;
    v38 = CGImageCreate(a1, a2, v95, bitsPerPixel, v30, a6, v36 | v37, v35, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v35);
    if (v94 == 8)
    {
      v39 = a4[1];
      v40 = (v95 + 7) & 0x78;
      v41 = *(a3 + 8);
      check_clients_buffer("CGDataProviderCreateWithData", v41, v39 * a2);
      v42 = CGDataProviderCreateWithDataInternal(0, v41, v39 * a2, 0, 0);
      DeviceGray = CGColorSpaceCreateDeviceGray();
      if (v40 <= 8)
      {
        v44 = 0;
      }

      else
      {
        v44 = v92 & 0x3100;
      }

      v45 = CGImageCreate(a1, a2, v40, v40, v39, DeviceGray, v44, v42, 0, 0, kCGRenderingIntentDefault);
      memset(__src, 0, 32);
      CGColorSpaceRelease(DeviceGray);
      CGDataProviderRelease(v42);
      v46 = CGImageCreateWithMaskAndMatte(v38, v45, __src);
      if (v45)
      {
        CFRelease(v45);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      v38 = v46;
    }
  }

  else
  {
    __src[0] = xmmword_184562A30;
    v38 = mask_create(a1, a2, v95, bitsPerPixel, v30, v35, __src, 1, 4);
    CGDataProviderRelease(v35);
    if (v94 == 8)
    {
      _CGHandleAssert("img_pixels_for_destination", 4029, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "cs != NULL", "colorspace missing", v25, v26, v27, decode);
    }
  }

  if (!v38)
  {
    goto LABEL_52;
  }

  Cache = CGColorTransformGetCache(cf);
  if (Cache && (v55 = Cache[2]) != 0)
  {
    v56 = *(*(v55 + 24) + 48);
  }

  else
  {
    v56 = 0;
  }

  v57 = (*a13 >> 2) & 3;
  if (v57 == 2)
  {
    v59 = *a13 >> 6;
    v58 = v59 == 1 ? 2 : v59 == 2;
  }

  else
  {
    v58 = v57 == 1 ? 8 : 0;
  }

  BitsPerComponent = CGPixelComponentGetBitsPerComponent(a12, v48, v49, v50, v51, v52, v53, v54);
  v61 = *a13;
  v69 = CGPixelComponentGetBitsPerComponent(a12, v62, v63, v64, v65, v66, v67, v68);
  if (!v69)
  {
    _CGHandleAssert("CGBitmapPixelInfoInitialize", 56, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "bits_per_component > 0 && bits_per_component <= 32", "bpc: %zu", v70, v71, v72, 0);
  }

  v73 = v69;
  v74 = bitmap_info_from_depth(v61, BitsPerComponent) & 0x3000;
  memset(__src, 0, sizeof(__src));
  CGBitmapPixelInfoInitializeWithImage(__src, __src, v38);
  v100 = a12;
  v101 = 0;
  v102 = v73;
  v103 = v56;
  v104 = v58;
  v105 = v74;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  memcpy(__dst, __src, sizeof(__dst));
  v75 = data_conversion_required(cf, v38, &v100, __dst);
  v76 = v75;
  v100 = a12;
  v101 = 0;
  v102 = v73;
  v103 = v56;
  v104 = v58;
  v105 = v74;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v77 = img_image(v98, a13, cf, v75, &v100, v38, a10);
  if (v77)
  {
    v79 = *(v77 + 112);
    v78 = *(v77 + 128);
    v80 = *(v77 + 144);
    v98[6] = *(v77 + 96);
    v81 = *(v77 + 16);
    v98[0] = *v77;
    v98[1] = v81;
    v82 = *(v77 + 32);
    v83 = *(v77 + 48);
    v84 = *(v77 + 80);
    v98[4] = *(v77 + 64);
    v98[5] = v84;
    v98[2] = v82;
    v98[3] = v83;
    *&v98[9] = v80;
    v98[7] = v79;
    v98[8] = v78;
    BYTE8(v98[6]) = 1;
    if (*&v98[0] && *(&v98[0] + 1))
    {
      return img_data_lock("CGSImageDataLockPixels", v78, v98, v96, v97, a9, 1, a10, cf, v76, a13, a12, 1u, 3u);
    }
  }

  else
  {
LABEL_52:
    v98[0] = 0uLL;
  }

LABEL_53:
  CGPostError("%s: Bad pixel image source", v21, v22, v23, v24, v25, v26, v27, "CGSImageDataLockPixels");
  return 0;
}

uint64_t bitmap_info_from_depth(char a1, uint64_t a2)
{
  v2 = (a1 & 0x30) == 32;
  v3 = v2 << 13;
  v4 = v2 << 12;
  v5 = ((a1 & 0x30) == 16) << 13;
  if (a2 != 8)
  {
    v5 = 0;
  }

  if (a2 == 16)
  {
    v5 = v4;
  }

  if (a2 == 32)
  {
    v5 = v3;
  }

  return v5 | ((a1 & 1) << 8);
}

BOOL RIPImageDataInitialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  initialize_skipping_conditional_var(a1, a2, 0, a3, a5, a6, a7, a8);
  *(a1 + 240) = 0;
  *(a1 + 192) = xmmword_1844DF7D0;
  *(a1 + 208) = unk_1844DF7E0;
  *(a1 + 224) = xmmword_1844DF7F0;
  *(a1 + 128) = CGConditionalVarInitializer;
  *(a1 + 144) = unk_1844DF7A0;
  *(a1 + 160) = xmmword_1844DF7B0;
  *(a1 + 176) = unk_1844DF7C0;

  return CGConditionalVarPost(a1 + 128, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t rgba32_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(v49, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v32, v49) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 134755224;
  v19 = *a3;
  *(&v32 + 1) = __PAIR64__(*v6, *a3);
  if (v19 != 134755224)
  {
    v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
    if (!v20)
    {
      return 0xFFFFFFFFLL;
    }

    if (v20 > 0xB)
    {
      if (v20 <= 0x13)
      {
        if ((v20 - 14) < 4)
        {
LABEL_28:
          LOBYTE(v21) = 0;
LABEL_29:
          v22 = 0;
          goto LABEL_43;
        }

        if (v20 == 13 || v20 == 12)
        {
          v21 = *(a2 + 12);
          if (!v21)
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      if (v20 > 6)
      {
        if (v20 == 7)
        {
          LOBYTE(v21) = 0;
          v22 = 32;
          goto LABEL_43;
        }

        if (v20 == 9)
        {
          LOBYTE(v21) = 0;
          v22 = 40;
          goto LABEL_43;
        }

        if (v20 != 8)
        {
          goto LABEL_42;
        }

        LOBYTE(v21) = 0;
        v22 = 8;
LABEL_43:
        *&v32 = *&RGB8_image_sample[2 * v20 + 2];
        if (v32)
        {
          goto LABEL_50;
        }

        if ((HIWORD(*a3) & 0x3Fu) <= 0x10)
        {
          *&v32 = *&RGB16_image_sample[2 * v20 + 2];
          if (v32)
          {
            v18 = 269497256;
            v23 = 8;
LABEL_49:
            LODWORD(v33) = v23;
LABEL_50:
            DWORD2(v32) = v18;
            if (v21)
            {
              goto LABEL_94;
            }

LABEL_51:
            if ((BYTE4(v33) & 7) != 3 || (v8 - 1) > 1 || a2[2] != 5 && a2[2])
            {
              goto LABEL_94;
            }

            if (v20 > 0xB)
            {
              if (v20 > 0x13)
              {
                goto LABEL_94;
              }

              if (v20 > 14)
              {
                switch(v20)
                {
                  case 15:
                    if (v8 == 1 && (BYTE4(v33) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                    {
                      rgba32_mark_image_rgb48(a2, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v13, v14, v15, v16);
                      return 1;
                    }

                    DWORD2(v32) = *a3;
                    v26 = rgba32_image_mark_rgb48;
                    break;
                  case 16:
                    if ((~DWORD1(v33) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                    {
                      rgba32_mark_image_RGBA64(a2, v8, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v14, v15, v16);
                      return 1;
                    }

                    DWORD2(v32) = *a3;
                    v26 = rgba32_image_mark_RGBA64;
                    break;
                  case 17:
                    if ((~DWORD1(v33) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                    {
                      rgba32_mark_image_rgba64(a2, v8, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v14, v15, v16);
                      return 1;
                    }

                    DWORD2(v32) = *a3;
                    v26 = rgba32_image_mark_rgba64;
                    break;
                  default:
                    goto LABEL_94;
                }
              }

              else if (v20 == 12)
              {
                if (v8 == 1 && (BYTE4(v33) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                {
                  rgba32_mark_image_W16(a2, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v13, v14, v15, v16);
                  return 1;
                }

                DWORD2(v32) = *a3;
                v26 = rgba32_image_mark_W16;
              }

              else if (v20 == 13)
              {
                if (v8 == 1 && (BYTE4(v33) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                {
                  rgba32_mark_image_w16(a2, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v13, v14, v15, v16);
                  return 1;
                }

                DWORD2(v32) = *a3;
                v26 = rgba32_image_mark_w16;
              }

              else
              {
                if (v8 == 1 && (BYTE4(v33) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                {
                  rgba32_mark_image_RGB48(a2, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v13, v14, v15, v16);
                  return 1;
                }

                DWORD2(v32) = *a3;
                v26 = rgba32_image_mark_RGB48;
              }
            }

            else
            {
              HIDWORD(v25) = v22;
              LODWORD(v25) = v22;
              v24 = v25 >> 3;
              if (v24 > 2)
              {
                switch(v24)
                {
                  case 3:
                    if (v8 == 1 && (BYTE4(v33) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                    {
                      rgba32_mark_image_RGB24(a2, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v13, v14, v15, v16);
                      return 1;
                    }

                    DWORD2(v32) = *a3;
                    v26 = rgba32_image_mark_RGB24;
                    break;
                  case 4:
                    if ((~DWORD1(v33) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                    {
                      rgba32_mark_image_rgbx32(a2, v8, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v14, v15, v16);
                      return 1;
                    }

                    DWORD2(v32) = *a3;
                    v26 = rgba32_image_mark_rgba32;
                    break;
                  case 5:
                    if ((~DWORD1(v33) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                    {
                      rgba32_mark_image_xrgb32(a2, v8, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v14, v15, v16);
                      return 1;
                    }

                    DWORD2(v32) = *a3;
                    v27 = rgba32_image_mark_rgb32;
                    goto LABEL_118;
                  default:
                    goto LABEL_94;
                }
              }

              else
              {
                if (v24)
                {
                  if (v24 != 1)
                  {
                    if (v24 == 2)
                    {
                      if (v8 == 1 && (BYTE4(v33) & 0x70) == 0x70 && !v43 && *(a3 + 8) == 1.0)
                      {
                        rgba32_mark_image_W8(a2, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v13, v14, v15, v16);
                        return 1;
                      }

                      DWORD2(v32) = *a3;
                      v26 = rgba32_image_mark_W8;
                      goto LABEL_146;
                    }

LABEL_94:
                    rgba32_image_mark(a2, &v32, v8, v17);
                    return 1;
                  }

                  if ((~DWORD1(v33) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                  {
                    rgba32_mark_image_XRGB32(a2, v8, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v14, v15, v16);
                    return 1;
                  }

                  DWORD2(v32) = *a3;
                  v27 = rgba32_image_mark_RGB32;
LABEL_118:
                  v28 = v27;
                  v29 = a2;
                  v30 = v8;
                  v31 = 8;
LABEL_147:
                  argb32_image_mark_image(v29, &v32, v30, v31, v28);
                  return 1;
                }

                if ((~DWORD1(v33) & 0x70) == 0 && !v43 && *(a3 + 8) == 1.0)
                {
                  rgba32_mark_image_RGBX32(a2, v8, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v14, v15, v16);
                  return 1;
                }

                DWORD2(v32) = *a3;
                v26 = rgba32_image_mark_RGB32;
              }
            }

LABEL_146:
            v28 = v26;
            v29 = a2;
            v30 = v8;
            v31 = 0;
            goto LABEL_147;
          }
        }

        *&v32 = *&RGBF_image_sample[2 * v20 + 2];
        if (v32)
        {
          v18 = 538981289;
          v23 = 16;
          goto LABEL_49;
        }

        return 0xFFFFFFFFLL;
      }

      if (v20 != 2)
      {
        if (v20 == 5)
        {
          LOBYTE(v21) = 0;
          v22 = 24;
          goto LABEL_43;
        }

        if (v20 != 6)
        {
          goto LABEL_42;
        }

        goto LABEL_28;
      }

      v21 = *(a2 + 12);
      if (!v21)
      {
        v22 = 16;
        goto LABEL_43;
      }
    }

LABEL_42:
    v22 = 255;
    LOBYTE(v21) = 1;
    goto LABEL_43;
  }

  if (v43 || (~DWORD1(v33) & 0xC3) != 0)
  {
    goto LABEL_36;
  }

  v17.n128_u32[0] = *(a3 + 8);
  if ((v8 - 1) > 1 || (BYTE4(v33) & 4) != 0 || v17.n128_f32[0] != 1.0)
  {
    if (v17.n128_f32[0] >= 1.0)
    {
      goto LABEL_35;
    }

LABEL_36:
    *&v32 = rgba32_sample_rgba32;
    v20 = 7;
    v22 = 32;
    goto LABEL_51;
  }

  if (a2[2] != 5 && a2[2])
  {
LABEL_35:
    if (!*(a3 + 24))
    {
      if ((BYTE4(v33) & 4) != 0)
      {
        v17.n128_u64[0] = *(a3 + 32);
        *(a2 + 8) = v17.n128_u64[0];
      }

      rgba32_mark(a1, v17);
      return 1;
    }

    goto LABEL_36;
  }

  rgba32_mark_image(a2, v8, v38 >> SBYTE6(v33), *(&v38 + 1) >> SBYTE7(v33), *(&v40 + 1) >> SBYTE7(v33), v14, v15, v16);
  return 1;
}

void argb32_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
{
  v69[1] = *MEMORY[0x1E69E9840];
  v8.n128_u64[1] = 0;
  v59 = 0u;
  v60 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v58[0] = a3;
  v58[1] = a4;
  v8.n128_u64[0] = *(a2 + 184);
  v8.n128_f32[0] = (v8.n128_f32[0] * 255.0) + 0.5;
  LOBYTE(v59) = v8.n128_f32[0];
  v9 = *(a1 + 28) >> 2;
  *&v60 = v9;
  v10 = *(a2 + 120);
  v11 = *(a2 + 20);
  v12 = HIBYTE(v11);
  v13 = BYTE2(v11);
  if (v10)
  {
    v14 = *(a2 + 24);
    v15 = (a2 + 104);
    v16 = (a2 + 72);
    v17 = (a2 + 88);
    v18 = v12;
  }

  else
  {
    v14 = *(a2 + 8) >> 25;
    v15 = (a2 + 96);
    v16 = (a2 + 64);
    v17 = (a2 + 80);
    v10 = *(a2 + 112);
    v18 = v13;
  }

  v19 = *v17;
  v20 = *v16;
  v21 = *v15;
  v22 = v18;
  *(&v61 + 1) = v18;
  *(&v60 + 1) = v21;
  *(&v65 + 1) = v14;
  *(&v64 + 1) = v19;
  *(&v63 + 1) = v20;
  *(&v62 + 1) = v10;
  v23 = *(a2 + 128);
  if (v23)
  {
    v24 = *(a2 + 8) >> 25;
    v25 = (a2 + 96);
    v26 = (a2 + 64);
    v27 = (a2 + 80);
    v12 = v13;
  }

  else
  {
    v24 = *(a2 + 24);
    v25 = (a2 + 104);
    v26 = (a2 + 72);
    v27 = (a2 + 88);
    v23 = *(a2 + 136);
  }

  v57 = &v55;
  v28 = *v27;
  v29 = *v26;
  v30 = *v25;
  *&v62 = v12;
  *&v61 = v30;
  *&v66 = v24;
  *&v65 = v28;
  *&v64 = v29;
  *&v63 = v23;
  v31 = *(a1 + 4);
  v32 = MEMORY[0x1EEE9AC00](16 * v31, v8);
  v56 = &v55 - v34 - 15;
  if (v35 <= 0xFFFFFFFFFFFFFFELL)
  {
    v37 = (&v55 - v34 - 15);
  }

  else
  {
    v37 = 0;
  }

  if (v35 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000402)
  {
    v55 = a5;
    v38 = v33;
    v39 = v36;
    v32 = malloc_type_malloc(v32, 0xC166A778uLL);
    v33 = v38;
    a5 = v55;
    v36 = v39;
    v37 = v32;
  }

  *(&v66 + 1) = v37;
  if (v37)
  {
    if (*(a2 + 176))
    {
      if (v31 >= 1)
      {
        v40 = v37 + 1;
        v41 = v36 - v21;
        do
        {
          if (((v21 - v33) | v41) < 0)
          {
            v45 = 0;
          }

          else
          {
            v42 = ((v21 & ~(-1 << v22)) >> (v22 - 4)) & 0xF;
            v43 = weights_21890[v42];
            if (v42 - 7 >= 9)
            {
              v44 = -v14;
            }

            else
            {
              v44 = v14;
            }

            v45 = v43 & 0xF | (16 * v44);
          }

          *(v40 - 1) = v14 * (v21 >> v22);
          *v40 = v45;
          v40 += 2;
          v21 += v10;
          v41 -= v10;
          --v31;
        }

        while (v31);
      }
    }

    else if (v31 >= 1)
    {
      v46 = v37 + 1;
      do
      {
        *(v46 - 1) = v14 * (v21 >> v22);
        *v46 = 0;
        v46 += 2;
        v21 += v10;
        --v31;
      }

      while (v31);
    }

    v47 = *(a1 + 4);
    v48 = *(a1 + 8);
    v67 = v48;
    v68 = v47;
    v49 = *(a1 + 136);
    if (v49)
    {
      v50 = *(a1 + 104);
      LODWORD(v69[0]) = *(a1 + 108);
      HIDWORD(v69[0]) = v50;
      shape_enum_clip_alloc(v32, v33, v49, 1, 1, 1, v50, v69[0], v47, v48);
      v52 = v51;
      if (v51)
      {
        goto LABEL_31;
      }
    }

    v53 = 0;
    v54 = 0;
    v52 = 0;
    v69[0] = 0;
    while (1)
    {
      *(&v59 + 1) = *(a1 + 40) + 4 * v9 * (*(a1 + 16) + v54) + 4 * (v53 + *(a1 + 12));
      a5(a2, v58);
      if (!v52)
      {
        break;
      }

LABEL_31:
      if (!shape_enum_clip_next(v52, v69 + 1, v69, &v68, &v67))
      {
        free(v52);
        break;
      }

      v54 = v69[0];
      v53 = HIDWORD(v69[0]);
      v9 = v60;
    }

    if (v37 != v56)
    {
      free(v37);
    }
  }
}

unint64_t rgba32_image_mark_rgba32(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v87 = *a2;
  v7 = *(result + 32);
  if (*(result + 40))
  {
    v8 = 0;
  }

  else
  {
    v8 = 255;
  }

  v9 = *(a2 + 2);
  v86 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  v12 = *(a2 + 7);
  v83 = *(a2 + 9);
  v13 = *(a2 + 5) + v83 * a4;
  v14 = v7 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v93 = result;
  v88 = a5;
  v84 = v12;
  v85 = v11;
  if (*(result + 176))
  {
    v82 = *(a2 + 11);
    v80 = ~(-1 << v12);
    v81 = *(a2 + 13);
    v79 = v12 - 4;
    v15 = (v14 - 4);
    v77 = a5;
    v78 = -v11;
    v76 = v10 + 16 * a3 + 8;
    while (1)
    {
      if (((v81 - v13) | (v13 - v82)) < 0)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v16 = ((v13 & v80) >> v79) & 0xF;
        v17 = (v16 - 7) >= 9 ? v78 : v11;
        v18 = weights_21890[v16] & 0xF;
      }

      v19 = *(v93 + 32) + (v13 >> v12) * v11;
      v91 = a6;
      v89 = v13;
      if (v87 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v20 = v76;
        v21 = v77;
        while (1)
        {
          v22 = *(v20 - 1);
          v23 = *v20;
          v24 = v19 + v22;
          if (v15 >= v19 + v22)
          {
            v25 = (v19 + v22);
          }

          else
          {
            v25 = v15;
          }

          if (v25 < v7)
          {
            v25 = v7;
          }

          v26 = *v25;
          v27 = v23 & 0xF;
          if ((v23 & 0xF) != 0)
          {
            break;
          }

          if (v18)
          {
            v38 = (v24 + v17);
            if (v15 < v24 + v17)
            {
              v38 = v15;
            }

            if (v38 < v7)
            {
              v38 = v7;
            }

            v39 = BLEND8_21892[v18];
            v36 = v26 - ((v39 & v26) >> v18);
            v37 = (v39 & *v38) >> v18;
            goto LABEL_43;
          }

LABEL_44:
          result = v26 | v8;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          v20 += 2;
          *v9++ = result;
          if (!--v21)
          {
            goto LABEL_86;
          }
        }

        v28 = (v24 + (v23 >> 4));
        if (v15 < v28)
        {
          v28 = v15;
        }

        if (v28 < v7)
        {
          v28 = v7;
        }

        v29 = *v28;
        if (v18)
        {
          v30 = (v24 + v17);
          if (v15 >= v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = v15;
          }

          if (v31 < v7)
          {
            v31 = v7;
          }

          v32 = *v31;
          v33 = (v30 + (v23 >> 4));
          if (v15 < v33)
          {
            v33 = v15;
          }

          if (v33 < v7)
          {
            v33 = v7;
          }

          v34 = BLEND8_21892[v18];
          v26 = v26 - ((v34 & v26) >> v18) + ((v34 & v32) >> v18);
          v29 = v29 - ((v34 & v29) >> v18) + ((v34 & *v33) >> v18);
        }

        v35 = BLEND8_21892[*v20 & 0xF];
        v36 = v26 - ((v35 & v26) >> v27);
        v37 = (v35 & v29) >> v27;
LABEL_43:
        v26 = v36 + v37;
        goto LABEL_44;
      }

LABEL_86:
      v11 = v85;
      v9 += v86;
      LOBYTE(v12) = v84;
      v13 = v89 + v83;
      a6 = v91 - 1;
      a5 = v88;
      if (v91 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_86;
    }

    v40 = v76;
    v41 = v77;
    while (1)
    {
      v42 = *(v40 - 1);
      v43 = *v40;
      v44 = v19 + v42;
      if (v15 >= v19 + v42)
      {
        v45 = (v19 + v42);
      }

      else
      {
        v45 = v15;
      }

      if (v45 < v7)
      {
        v45 = v7;
      }

      v46 = *v45;
      v47 = v43 & 0xF;
      if ((v43 & 0xF) != 0)
      {
        break;
      }

      if (v18)
      {
        v58 = (v44 + v17);
        if (v15 < v44 + v17)
        {
          v58 = v15;
        }

        if (v58 < v7)
        {
          v58 = v7;
        }

        v59 = BLEND8_21892[v18];
        v56 = v46 - ((v59 & v46) >> v18);
        v57 = (v59 & *v58) >> v18;
        goto LABEL_78;
      }

LABEL_79:
      v60 = v46 | v8;
      if (v6 != 255)
      {
        result = PDM_21869(v46 | v8, v6);
        v60 = result;
      }

      if (v60)
      {
        if (v60 == 255)
        {
          *v9 = v60;
        }

        else
        {
          result = DplusDM_21871(v9, v60, *v9, ~v60);
        }
      }

      v40 += 2;
      ++v9;
      if (!--v41)
      {
        goto LABEL_86;
      }
    }

    v48 = (v44 + (v43 >> 4));
    if (v15 < v48)
    {
      v48 = v15;
    }

    if (v48 < v7)
    {
      v48 = v7;
    }

    v49 = *v48;
    if (v18)
    {
      v50 = (v44 + v17);
      if (v15 >= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = v15;
      }

      if (v51 < v7)
      {
        v51 = v7;
      }

      v52 = *v51;
      v53 = (v50 + (v43 >> 4));
      if (v15 < v53)
      {
        v53 = v15;
      }

      if (v53 < v7)
      {
        v53 = v7;
      }

      v54 = BLEND8_21892[v18];
      v46 = v46 - ((v54 & v46) >> v18) + ((v54 & v52) >> v18);
      v49 = v49 - ((v54 & v49) >> v18) + ((v54 & *v53) >> v18);
    }

    v55 = BLEND8_21892[*v40 & 0xF];
    v56 = v46 - ((v55 & v46) >> v47);
    v57 = (v55 & v49) >> v47;
LABEL_78:
    v46 = v56 + v57;
    goto LABEL_79;
  }

  v92 = (v10 + 16 * a3);
  v61 = v14 - 4;
  v90 = a5;
  do
  {
    v62 = *(v93 + 32);
    v63 = &v62[(v13 >> v12) * v11];
    v64 = v13;
    v65 = a6;
    if (v87 == 1)
    {
      if (a5 >= 1)
      {
        v66 = v92;
        v67 = v90;
        do
        {
          v68 = *v66;
          v66 += 2;
          v69 = &v63[v68];
          if (v61 < &v63[v68])
          {
            v69 = v61;
          }

          if (v69 < v62)
          {
            v69 = v62;
          }

          result = *v69 | v8;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          *v9++ = result;
          --v67;
        }

        while (v67);
      }
    }

    else
    {
      v70 = v92;
      v71 = v90;
      if (a5 >= 1)
      {
        do
        {
          v72 = *v70;
          v70 += 2;
          v73 = &v63[v72];
          if (v61 < &v63[v72])
          {
            v73 = v61;
          }

          if (v73 < *(v93 + 32))
          {
            v73 = *(v93 + 32);
          }

          v74 = *v73;
          v75 = v74 | v8;
          if (v6 != 255)
          {
            result = PDM_21869(v74 | v8, v6);
            v75 = result;
          }

          if (v75)
          {
            if (v75 == 255)
            {
              *v9 = v75;
            }

            else
            {
              result = DplusDM_21871(v9, v75, *v9, ~v75);
            }
          }

          ++v9;
          --v71;
        }

        while (v71);
      }
    }

    v11 = v85;
    v9 += v86;
    LOBYTE(v12) = v84;
    v13 = v64 + v83;
    a6 = v65 - 1;
    a5 = v88;
  }

  while (v65 != 1);
  return result;
}

void CGPDFDrawingContextRelease(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 3);
    if (v3)
    {
      CGPDFGStateReleaseProperties(*(a1 + 3));
      free(v3);
    }

    v4 = *(a1 + 5);
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(a1 + 7);
        v7 = *(v6 + 8 * i);
        if (v7)
        {
          CGPDFGStateReleaseProperties(*(v6 + 8 * i));
          free(v7);
          v4 = *(a1 + 5);
        }
      }
    }

    while (v4 < *(a1 + 6))
    {
      free(*(*(a1 + 7) + 8 * v4++));
    }

    free(*(a1 + 7));
    v8 = *(a1 + 8);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 9);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a1 + 16);
    if (v10)
    {
      CFRelease(v10);
    }

    _Block_release(*(a1 + 23));
    _Block_release(*(a1 + 24));
    _Block_release(*(a1 + 25));

    free(a1);
  }
}

void CGPDFContentStreamFinalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    CFRelease(v4);
  }
}

void CGContextRestoreToGStateMark(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      if (!a2 || (v10 = *(a1 + 104), v10 == a2))
      {
        CGPostError("%s: invalid gstate mark.", a2, a3, a4, a5, a6, a7, a8, "CGContextRestoreToGStateMark");
      }

      else
      {
        if (v10)
        {
          CGGStackReset(*(a1 + 104));
          free(v10);
        }

        *(a1 + 104) = a2;
        v11 = *(a2 + 8);
        if (v11 == a2)
        {
          v12 = CGGStateCreate();
          v13 = *(a2 + 8);
          *(a2 + 8) = v12;
          *v12 = a2;
          *v13 = v12;
          *(v12 + 1) = v13;
          v11 = *(a2 + 8);
        }

        *(a1 + 96) = v11;
      }

      return;
    }

    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  handle_invalid_context("CGContextRestoreToGStateMark", v14, a3, a4, a5, a6, a7, a8);
}

void pdf_error(char *a1, ...)
{
  va_start(va, a1);
  if (pdf_is_verbose_onceToken != -1)
  {
    dispatch_once(&pdf_is_verbose_onceToken, &__block_literal_global_5_6709);
  }

  if (pdf_is_verbose_isVerbose)
  {
    v2 = MEMORY[0x1E69E9848];
    vfprintf_l(*MEMORY[0x1E69E9848], 0, a1, va);
    fprintf_l(*v2, 0, "\n");
  }

  else if (pdf_error_onceToken != -1)
  {

    dispatch_once(&pdf_error_onceToken, &__block_literal_global_6710);
  }
}

int8x8_t *decode_swap(uint64_t a1, int8x8_t *a2, int8x8_t *a3, int a4)
{
  if (a1 == 2)
  {
    v8 = a2;
    if (a4 < 8)
    {
      v10 = a4;
    }

    else
    {
      do
      {
        v9 = *a3++;
        v10 = a4 - 8;
        *v8++ = vrev16_s8(v9);
        v7 = a4 > 0xF;
        a4 -= 8;
      }

      while (v7);
    }

    if (v10 >= 1)
    {
      v13 = v10 + 2;
      do
      {
        v14 = a3->u16[0];
        a3 = (a3 + 2);
        v8->i16[0] = bswap32(v14) >> 16;
        v8 = (v8 + 2);
        v13 -= 2;
      }

      while (v13 > 2);
    }

    return a2;
  }

  if (a1 == 4)
  {
    v4 = a2;
    if (a4 < 16)
    {
      v6 = a4;
    }

    else
    {
      do
      {
        v5 = *a3->i8;
        a3 += 2;
        v6 = a4 - 16;
        *v4++ = vrev32q_s8(v5);
        v7 = a4 > 0x1F;
        a4 -= 16;
      }

      while (v7);
    }

    if (v6 >= 1)
    {
      v11 = v6 + 4;
      do
      {
        v12 = a3->i32[0];
        a3 = (a3 + 4);
        v4->i32[0] = bswap32(v12);
        v4 = (v4 + 4);
        v11 -= 4;
      }

      while (v11 > 4);
    }

    return a2;
  }

  return a3;
}

uint64_t decode_byte_8bpc_3(uint64_t result, int a2, int a3, int a4, uint64_t a5, int a6, _BYTE *a7, int a8, uint64_t a9, void *a10, int a11)
{
  v11 = a6 - (a3 * result);
  v12 = -3 * result + a8;
  if (a9)
  {
    if (a9 == 2)
    {
      v17 = *a10 + 20;
      v18 = a10[1] + 20;
      v19 = a11 + a4;
      v20 = a10[2] + 20;
      v21 = 2 * a4 + a11;
      v22 = result + 1;
      do
      {
        LODWORD(result) = v22;
        do
        {
          v23 = *(v18 + *(a5 + v19));
          v24 = *(v20 + *(a5 + v21));
          *a7 = *(v17 + *(a5 + a11));
          a7[1] = v23;
          a7[2] = v24;
          a5 += a3;
          a7 += 3;
          result = (result - 1);
        }

        while (result > 1);
        a5 += v11;
        a7 += v12;
        v16 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v16 | (a2 == 0)));
    }

    else if (a9 == 1)
    {
      v13 = result + 1;
      do
      {
        v14 = v13;
        do
        {
          v15 = *(a5 + a11 + a4);
          result = *(a5 + 2 * a4 + a11);
          *a7 = ~*(a5 + a11);
          a7[1] = ~v15;
          a7[2] = ~result;
          a5 += a3;
          a7 += 3;
          --v14;
        }

        while (v14 > 1);
        a5 += v11;
        a7 += v12;
        v16 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v16 | (a2 == 0)));
    }
  }

  else
  {
    v25 = result + 1;
    do
    {
      v26 = v25;
      do
      {
        v27 = *(a5 + a11 + a4);
        result = *(a5 + 2 * a4 + a11);
        *a7 = *(a5 + a11);
        a7[1] = v27;
        a7[2] = result;
        a5 += a3;
        a7 += 3;
        --v26;
      }

      while (v26 > 1);
      a5 += v11;
      a7 += v12;
      v16 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v16 | (a2 == 0)));
  }

  return result;
}

int *resample_horizontal<unsigned char,int,3,false>(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v11 = 0;
    v12 = *a6;
    v13 = *a7;
    v14 = v13 / 3;
    v15 = a4;
    v16 = 2 * a2;
    v17 = v16 + 8;
    v18 = result + (v16 + 8) * a4;
    if (v13 / 3 >= *&v18[-v16 - 4] + *&v18[-v16 - 8])
    {
      v14 = *&v18[-v16 - 4] + *&v18[-v16 - 8];
    }

    if (a2 <= 3)
    {
      v19 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    else
    {
      v19 = 1;
    }

    v20 = a2 % 5;
    v21 = a2 > 4;
    if (a2 % 5)
    {
      v21 = 0;
    }

    v22 = 15 * (a2 / 5 - v21);
    if (!v20)
    {
      v20 = 5;
    }

    v23 = vdupq_n_s16(v20);
    v24 = (3 * v20 + 15) & 0x1FFFFFFF0;
    if (a2 >= 5)
    {
      v25 = 5;
    }

    else
    {
      v25 = a2;
    }

    v26 = vdupq_n_s16(v25);
    v27 = v24 + v22;
    v28 = a8;
    v29 = a2 == a2 && v15 > v19;
    v30 = !v29;
    v31 = vcgtq_u16(v26, xmmword_18439C5D0);
    v32.i64[0] = 0x200000002000;
    v32.i64[1] = 0x200000002000;
    v33.i64[0] = 0xFF000000FFLL;
    v33.i64[1] = 0xFF000000FFLL;
    v34 = vcgtq_s16(v23, xmmword_18439C5D0);
    do
    {
      v35 = *(a5 + 8 * v11);
      v36 = 0;
      if (v30)
      {
        v37 = result;
      }

      else
      {
        v37 = result;
        while (1)
        {
          v38 = (v12 + 3 * *v37);
          v39 = (v38 + v27);
          if (v38->u64 + v27 > 3 * v14 + v12)
          {
            break;
          }

          if (v38 >= v39)
          {
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            v46 = 0uLL;
          }

          else
          {
            v40 = (v37 + 2);
            v41 = v37[1];
            v42 = &v39[-1];
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            v46 = 0uLL;
            while (v38 < v42)
            {
              v47 = *v40;
              v40 = (v40 + 10);
              v48 = vandq_s8(v47, v31);
              v49 = *v38;
              v38 = (v38 + 15);
              v10 = vmovl_high_u8(v49);
              v9 = vmovl_u8(*v49.i8);
              v50 = vqtbl1q_s8(v48, xmmword_18439C5E0);
              v51 = vqtbl1q_s8(v48, xmmword_18439C5F0);
              v46 = vmlal_high_s16(v46, v10, v50);
              v44 = vmlal_high_s16(v44, v9, v51);
              v45 = vmlal_s16(v45, *v10.i8, *v50.i8);
              v43 = vmlal_s16(v43, *v9.i8, *v51.i8);
              v41 -= 5;
            }

            if (v41 >= 1)
            {
              v52 = vandq_s8(*v40, v34);
              v10 = vmovl_high_u8(*v38);
              v9 = vmovl_u8(*v38->i8);
              v53 = vqtbl1q_s8(v52, xmmword_18439C5E0);
              v54 = vqtbl1q_s8(v52, xmmword_18439C5F0);
              v46 = vmlal_high_s16(v46, v10, v53);
              v44 = vmlal_high_s16(v44, v9, v54);
              v45 = vmlal_s16(v45, *v10.i8, *v53.i8);
              v43 = vmlal_s16(v43, *v9.i8, *v54.i8);
            }
          }

          v8 = vextq_s8(v45, v46, 4uLL);
          v55 = vaddq_s32(v8, v43);
          v56 = vaddq_s32(vextq_s8(v46, v46, 4uLL).u64[0], v44);
          v57 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v55, vextq_s8(v55, v56, 0xCuLL)), vaddq_s32(vextq_s8(v56, v45, 8uLL), v32)), 0xEuLL), v33), 0);
          *v35 = v57.i64[0];
          *(v35 + 8) = v57.i32[2];
          v35 += 12;
          ++v36;
          v37 = (v37 + v17);
          if (v36 == v15 - v19)
          {
            v36 = v15 - v19;
            break;
          }
        }
      }

      if (v36 < v15)
      {
        do
        {
          v58 = *v37;
          if (v58 >= v14)
          {
            v59 = v14;
          }

          else
          {
            v59 = *v37;
          }

          v60 = v14 - v59;
          if (v37[1] >= v60)
          {
            v61 = v60;
          }

          else
          {
            v61 = v37[1];
          }

          if (v61 < 1)
          {
            v66 = 0uLL;
            v67 = 0uLL;
            v68 = 0uLL;
            v69 = 0uLL;
          }

          else
          {
            v62 = (v12 + 3 * v58);
            v63 = &v62[3 * v61 - 16];
            v64 = (v37 + 2);
            if (v62 >= v63)
            {
              v66 = 0uLL;
              v67 = 0uLL;
              v68 = 0uLL;
              v69 = 0uLL;
              goto LABEL_70;
            }

            v65 = v61 + 5;
            v66 = 0uLL;
            v67 = 0uLL;
            v68 = 0uLL;
            v69 = 0uLL;
            do
            {
              v70 = v65;
              v65 -= 5;
              if ((v18 - v64) < 0x10)
              {
                v71 = 0uLL;
                if (v70 != 5)
                {
                  if (v65 < 4)
                  {
                    if (v70 == 6)
                    {
                      v71.i16[0] = v64->i16[0];
                    }

                    else
                    {
                      if (v70 != 7)
                      {
                        v71.i16[0] = v64->i16[2];
                      }

                      v9.i16[0] = v64->i16[0];
                      v9.i16[2] = v64->i16[1];
                      *v71.i8 = vuzp1_s16(*v9.i8, *v71.i8);
                    }
                  }

                  else
                  {
                    if (v65 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v65 == 5)
                    {
                      v9.i16[0] = v64->i16[4];
                    }

                    else
                    {
                      if (v70 != 11)
                      {
                        if (v65)
                        {
                          v74 = 0;
                        }

                        else
                        {
                          v74 = v64->u16[7];
                        }

                        v71.i32[0] = v64->u16[6];
                        v71.i32[1] = v74;
                      }

                      v9.i16[0] = v64->i16[4];
                      v9.i16[2] = v64->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, *v71.i8);
                    }

                    v71.i64[0] = v64->i64[0];
                    v71.i64[1] = v9.i64[0];
                  }
                }
              }

              else
              {
                v71 = vandq_s8(*v64, v31);
              }

              v64 = (v64 + 10);
              v72 = *v62;
              v62 += 15;
              v10 = vmovl_high_u8(v72);
              v9 = vmovl_u8(*v72.i8);
              v73 = vqtbl1q_s8(v71, xmmword_18439C5E0);
              v8 = vqtbl1q_s8(v71, xmmword_18439C5F0);
              v69 = vmlal_high_s16(v69, v10, v73);
              v68 = vmlal_s16(v68, *v10.i8, *v73.i8);
              v67 = vmlal_high_s16(v67, v9, v8);
              v66 = vmlal_s16(v66, *v9.i8, *v8.i8);
            }

            while (v62 < v63);
            if (v65 >= 6)
            {
              v61 = v70 - 10;
LABEL_70:
              v75 = 0;
              v76 = v61;
              v77 = 3 * v61;
              v78 = v61 << 16;
              v79 = 3 * v61;
              while (2)
              {
                v80 = v77 + v75;
                if ((v18 - v64) < 0x10)
                {
                  if (v76 >= 4)
                  {
                    if (v76 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v76 == 5)
                    {
                      v9.i16[0] = v64->i16[4];
                    }

                    else
                    {
                      if (v80 == 18)
                      {
                        v88 = 0;
                      }

                      else
                      {
                        if (v76)
                        {
                          v84 = 0;
                        }

                        else
                        {
                          v84 = v64->u16[7];
                        }

                        v88.i32[0] = v64->u16[6];
                        v88.i32[1] = v84;
                      }

                      v9.i16[0] = v64->i16[4];
                      v9.i16[2] = v64->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, v88);
                    }

                    v8.i64[0] = v64->i64[0];
                    v8.i64[1] = v9.i64[0];
                    goto LABEL_75;
                  }

                  if (v80 == 3)
                  {
                    v8.i16[0] = v64->i16[0];
                  }

                  else
                  {
                    if (v77 + v75 == 6)
                    {
                      v8 = 0uLL;
                    }

                    else
                    {
                      v8 = v64->u16[2];
                    }

                    v9.i16[0] = v64->i16[0];
                    v9.i16[2] = v64->i16[1];
                    *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                  }

                  v64 = (v64 + 10);
                }

                else
                {
                  v81 = v78 >> 16;
                  if (v78 >> 16 >= 8)
                  {
                    v81 = 8;
                  }

                  v9 = *v64;
                  v8 = vandq_s8(*v64, vcgtq_s16(vdupq_n_s16(v81), xmmword_18439C5D0));
LABEL_75:
                  v64 = (v64 + 10);
                  if (v76 >= 6)
                  {
                    v82 = *v62;
                    goto LABEL_77;
                  }
                }

                if (v76 < 3)
                {
                  if (v77 + v75 == 6)
                  {
                    v9.i32[0] = *v62;
                    v86 = vmovl_u8(*v9.i8);
                    v82.i8[7] = 0;
                    v82.i64[1] = 0;
                    v82.i8[0] = v86.i8[0];
                    v82.i8[1] = v86.i8[2];
                    v82.i8[2] = v86.i8[4];
                    v82.i8[3] = v86.i8[6];
                    v82.i8[4] = v62[4];
                    *(&v82.i16[2] + 1) = v62[5];
                  }

                  else
                  {
                    if (v79 + v75)
                    {
                      if (v79 + v75 == 1)
                      {
                        v85 = *v62;
                      }

                      else
                      {
                        LOBYTE(v85) = *v62;
                        BYTE2(v85) = v62[1];
                        HIDWORD(v85) = v62[2];
                      }
                    }

                    else
                    {
                      v85 = 0;
                    }

                    v82.i32[1] = 0;
                    v82.i64[1] = 0;
                    v82.i8[0] = v85;
                    v82.i8[1] = BYTE2(v85);
                    v82.i8[2] = BYTE4(v85);
                    v82.i8[3] = BYTE6(v85);
                  }
                }

                else
                {
                  if (v77 + v75 == 8)
                  {
                    v10.i64[0] = 0;
                  }

                  else if ((v77 + v75 - 8) < 4)
                  {
                    if (v79 + v75 == 8)
                    {
                      v87 = 0;
                    }

                    else if (v79 + v75 == 9)
                    {
                      v87 = v62[8];
                    }

                    else
                    {
                      LOBYTE(v87) = v62[8];
                      BYTE2(v87) = v62[9];
                      HIDWORD(v87) = v62[10];
                    }

                    v10.i32[1] = 0;
                    v10.i8[0] = v87;
                    v10.i8[1] = BYTE2(v87);
                    v10.i8[2] = BYTE4(v87);
                    v10.i8[3] = BYTE6(v87);
                  }

                  else
                  {
                    if (v79 + v75 == 12)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v79 + v75 == 13)
                    {
                      v9.i64[0] = v62[12];
                    }

                    else
                    {
                      if ((v77 + v75))
                      {
                        v89 = 0;
                      }

                      else
                      {
                        v89 = v62[15];
                      }

                      v9.i8[0] = v62[12];
                      v9.i8[4] = v62[13];
                      v9.i16[1] = v9.i16[2];
                      v9.i16[2] = v62[14];
                      v9.i16[3] = v89;
                    }

                    v10.i32[0] = *(v62 + 2);
                    *v10.i8 = vuzp1_s8(*&vmovl_u8(*v10.i8), *v9.i8);
                  }

                  v82.i64[0] = *v62;
                  v82.i64[1] = v10.i64[0];
                }

LABEL_77:
                v62 += 15;
                v10 = vmovl_high_u8(v82);
                v9 = vmovl_u8(*v82.i8);
                v83 = vqtbl1q_s8(v8, xmmword_18439C5E0);
                v8 = vqtbl1q_s8(v8, xmmword_18439C5F0);
                v67 = vmlal_high_s16(v67, v9, v8);
                v69 = vmlal_high_s16(v69, v10, v83);
                v68 = vmlal_s16(v68, *v10.i8, *v83.i8);
                v66 = vmlal_s16(v66, *v9.i8, *v8.i8);
                v75 -= 15;
                v78 -= 327680;
                v29 = v76 <= 5;
                v76 -= 5;
                if (v29)
                {
                  break;
                }

                continue;
              }
            }
          }

          v8 = vextq_s8(v68, v69, 4uLL);
          v90 = vaddq_s32(v8, v66);
          v91 = vaddq_s32(vextq_s8(v69, v69, 4uLL).u64[0], v67);
          v92 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vextq_s8(v90, v91, 0xCuLL), v90), vaddq_s32(vextq_s8(v91, v68, 8uLL), v32)), 0xEuLL), v33), 0);
          *v35 = v92.i64[0];
          *(v35 + 8) = v92.i32[2];
          v35 += 12;
          ++v36;
          v37 = (v37 + v17);
        }

        while (v36 != v15);
      }

      v12 += v13;
      ++v11;
    }

    while (v11 != v28);
  }

  return result;
}