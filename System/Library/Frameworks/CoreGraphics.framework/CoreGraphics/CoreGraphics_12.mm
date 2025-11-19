void rip_adaptive_bitmap_context_update_content_info_from_image(uint64_t a1, CGImageRef image)
{
  ColorSpace = CGImageGetColorSpace(image);
  v5 = ColorSpace;
  if (image && (*(image + 39) & 2) != 0)
  {
    goto LABEL_6;
  }

  content_type_from_color_space = rip_adaptive_bitmap_context_get_content_type_from_color_space(ColorSpace);
  *(a1 + 116) |= content_type_from_color_space;
  if (content_type_from_color_space == 1)
  {
    goto LABEL_8;
  }

  if (content_type_from_color_space != 2)
  {
LABEL_6:
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 104) | CGColorSpaceIsWideGamutRGB(v5);
  }

  *(a1 + 104) = v7;
LABEL_8:
  ComponentType = CGImageGetComponentType(image);
  if (ComponentType)
  {
    *(a1 + 100) = CGPixelComponentMax(ComponentType, *(a1 + 100), v9, v10, v11, v12, v13, v14);
  }

  v15 = *(a1 + 108);
  if (v15 <= CGImageGetHeadroomInfo(image, 0))
  {
    HeadroomInfo = CGImageGetHeadroomInfo(image, 0);
  }

  else
  {
    HeadroomInfo = *(a1 + 108);
  }

  *(a1 + 108) = HeadroomInfo;
}

_DWORD *GRAYA8_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  if (!a2 || a3 <= 1)
  {
    a2 = malloc_type_malloc(0x32uLL, 0x1080040E00A32E4uLL);
    if (!a2)
    {
      return a2;
    }
  }

  v14 = (v13 + (a6 * v12));
  if (a5)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 4)
  {
    v26 = a5[4];
    v28 = *a5;
    v27 = a5[1];
    v29 = a5[2];
    if (v26 < v11)
    {
      v30 = v11;
    }

    else
    {
      v30 = a5[4];
    }

    if (v26 <= v10)
    {
      v31 = v30;
    }

    else
    {
      v31 = v10;
    }

    v32 = v10;
    if (v28 <= v10)
    {
      v32 = *a5;
      if (v28 < v11)
      {
        v32 = v11;
      }
    }

    if (v27 < v11)
    {
      v33 = v11;
    }

    else
    {
      v33 = a5[1];
    }

    if (v27 <= v10)
    {
      v34 = v33;
    }

    else
    {
      v34 = v10;
    }

    if (v29 < v11)
    {
      v35 = v11;
    }

    else
    {
      v35 = a5[2];
    }

    v36 = v29 <= v10;
    v37 = v10 - (v9[4] * v32);
    if (v36)
    {
      v38 = v35;
    }

    else
    {
      v38 = v10;
    }

    v39 = ((v37 - (v9[5] * v34)) - (v9[6] * v38)) - v31;
    if (v39 >= v11)
    {
      v25 = v13 + ((v39 * a6) * v12);
    }

    else
    {
      v25 = v11 * a6;
    }

    goto LABEL_54;
  }

  if (v15 == 3)
  {
    v18 = a5[1];
    v19 = a5[2];
    if (*a5 < v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = *a5;
    }

    if (*a5 <= v10)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = v10;
    if (v18 <= v10)
    {
      v22 = a5[1];
      if (v18 < v11)
      {
        v22 = v11;
      }
    }

    if (v19 < v11)
    {
      v23 = v11;
    }

    else
    {
      v23 = a5[2];
    }

    if (v19 <= v10)
    {
      v24 = v23;
    }

    else
    {
      v24 = v10;
    }

    v17 = ((v22 * v9[5]) + (v9[4] * v21)) + (v9[6] * v24);
    goto LABEL_29;
  }

  v16 = 0;
  if (v15 == 1)
  {
    v17 = v10;
    if (*a5 <= v10)
    {
      v17 = *a5;
      if (*a5 < v11)
      {
        v17 = v11;
      }
    }

LABEL_29:
    v25 = v13 + (a6 * (v12 * v17));
LABEL_54:
    v16 = v25;
  }

  *a2 = xmmword_18439CB30;
  a2[6] = 0;
  if (v16 >= 255)
  {
    v16 = 255;
  }

  *(a2 + 48) = v16 & ~(v16 >> 31);
  *(a2 + 2) = 1;
  if ((v10 * v12) <= v14)
  {
    v40 = 0;
  }

  else
  {
    v40 = (a2 + 12);
  }

  *(a2 + 4) = a2 + 12;
  *(a2 + 5) = v40;
  if (v14 >= 255)
  {
    v14 = 255;
  }

  *(a2 + 49) = v14 & ~(v14 >> 31);
  return a2;
}

uint64_t GRAYA8_mark_inner(uint64_t a1, __n128 a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v610 = *MEMORY[0x1E69E9840];
  v8 = *(v5 + 96);
  v9 = *(v5 + 48);
  v10 = *(v4 + 16 * *v5 + 8 * (v8 == 0) + 4 * (v9 == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v5;
  v13 = *(v5 + 4);
  v14 = v13 - 1;
  if (v13 < 1)
  {
    return 0;
  }

  v15 = *(v5 + 8);
  v16 = (v15 - 1);
  if (v15 < 1)
  {
    return 0;
  }

  v17 = *(v5 + 136);
  v529 = *(v4 + 16 * *v5 + 8 * (v8 == 0) + 4 * (v9 == 0));
  if ((*v5 & 0xFF0000) == 0x50000 || !v17)
  {
    v19 = *v5 & 0xFF00;
    v523 = v5;
    if (v19 == 1024)
    {
      v609[0] = *(v5 + 4);
      v599[0] = v15;
      v20 = *(v5 + 88);
      v7.i8[0] = *v20;
      v7.i8[4] = v20[1];
      *v21.i8 = vdup_lane_s8(v7, 0);
      v21.u64[1] = vdup_lane_s8(v7, 4);
      v22 = vqtbl1_s8(v21, 0xF060D040B020900);
      v571 = *v20;
      v23 = v7.u8[4];
      v563 = ~v7.i8[4];
      v24 = *(v5 + 12);
      v561 = *(v5 + 28);
      v25 = v561 >> 1;
      v26 = *(v5 + 40) + 2 * (v561 >> 1) * *(v5 + 16);
      v27 = v26 + 2 * v24;
      v565 = v27;
      if (v17)
      {
        shape_enum_clip_alloc(v4, v5, v17, 1, 1, 1, *(v5 + 104), *(v5 + 108), v13, v15);
        if (!v28)
        {
          return 1;
        }

        v29 = v28;
LABEL_302:
        if (!shape_enum_clip_next(v29, &v598 + 1, &v598, v609, v599))
        {
          v59 = v29;
          goto LABEL_958;
        }

        v52 = (v27 + 2 * v25 * v598 + 2 * SHIDWORD(v598));
        LODWORD(v13) = v609[0];
      }

      else
      {
        v29 = 0;
        v52 = (v26 + 2 * v24);
      }

      v573 = v25 - v13;
      v547 = v13;
      switch(v10)
      {
        case 0:
          v67 = v599[0];
          v68 = 2 * v13;
          v69 = v561 & 0xFFFFFFFE;
          goto LABEL_306;
        case 1:
          v116 = *(v523 + 88);
          if (v116)
          {
            CGSFillDRAM64(v52, v561 & 0xFFFFFFFE, 2 * v13, v599[0], v116, 2, 2, 1, 0, 0);
            if (v29)
            {
              goto LABEL_301;
            }

            return 1;
          }

          v67 = v599[0];
          v69 = v561 & 0xFFFFFFFE;
          v68 = 2 * v13;
LABEL_306:
          CGBlt_fillBytes(v68, v67, 0, v52, v69);
          if (!v29)
          {
            return 1;
          }

LABEL_301:
          v598 = 0;
          goto LABEL_302;
        case 2:
          v101 = v599[0];
          v102 = vdupq_n_s16(v563);
          do
          {
            if (v13 < 4)
            {
              v106 = v13;
            }

            else
            {
              v103 = (v13 >> 2) + 1;
              do
              {
                v104 = vmovl_u8(*v52);
                v105 = vmull_u16(*v102.i8, *v104.i8);
                *v52++ = vadd_s8(v22, vuzp1_s8(vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v105, v105, 8uLL)), 0x1000100010001), 8uLL), vshr_n_u16(vadd_s16(vmovn_s32(vmlal_high_u16(vshrq_n_u32(vmull_high_u16(v102, v104), 8uLL), v102, v104)), 0x1000100010001), 8uLL)));
                --v103;
              }

              while (v103 > 1);
              v106 = v13 & 3;
            }

            if (v106 >= 1)
            {
              v107 = v106 + 1;
              do
              {
                v52->i8[0] = v571 + ((v52->u8[0] * v563 + ((v52->u8[0] * v563) >> 8) + 1) >> 8);
                v52->i8[1] = v23 + ((v52->u8[1] * v563 + ((v52->u8[1] * v563) >> 8) + 1) >> 8);
                v52 = (v52 + 2);
                --v107;
              }

              while (v107 > 1);
            }

            v52 = (v52 + 2 * v573);
            --v101;
          }

          while (v101);
          goto LABEL_254;
        case 3:
          v111 = v599[0];
          do
          {
            v112 = v13;
            do
            {
              v113 = v52->u8[1];
              if (v113 == 255)
              {
                v52->i8[0] = v571;
                v52->i8[1] = v23;
              }

              else if (v52->i8[1])
              {
                v52->i8[0] = (v113 * v571 + ((v113 * v571) >> 8) + 1) >> 8;
                v52->i8[1] = (v113 * v23 + ((v113 * v23) >> 8) + 1) >> 8;
              }

              else
              {
                v52->i16[0] = 0;
              }

              v52 = (v52 + 2);
              --v112;
            }

            while (v112);
            v52 = (v52 + 2 * v573);
            --v111;
          }

          while (v111);
          goto LABEL_254;
        case 4:
          v85 = v599[0];
          do
          {
            v86 = v13;
            do
            {
              v87 = v52->i8[1];
              if (~v87 == 255)
              {
                v52->i8[0] = v571;
                v52->i8[1] = v23;
              }

              else if (v87 == -1)
              {
                v52->i16[0] = 0;
              }

              else
              {
                v88 = ~v87;
                v52->i8[0] = (v88 * v571 + ((v88 * v571) >> 8) + 1) >> 8;
                v52->i8[1] = (v88 * v23 + ((v88 * v23) >> 8) + 1) >> 8;
              }

              v52 = (v52 + 2);
              --v86;
            }

            while (v86);
            v52 = (v52 + 2 * v573);
            --v85;
          }

          while (v85);
          goto LABEL_254;
        case 5:
          v123 = v599[0];
          do
          {
            v124 = v13;
            do
            {
              v125 = v52->u8[1];
              v52->i8[0] = (v125 * v571 + v52->u8[0] * v563 + ((v125 * v571 + v52->u8[0] * v563) >> 8) + 1) >> 8;
              v52->i8[1] = ((v563 + v23) * v125 + (((v563 + v23) * v125) >> 8) + 1) >> 8;
              v52 = (v52 + 2);
              --v124;
            }

            while (v124);
            v52 = (v52 + 2 * v573);
            --v123;
          }

          while (v123);
          goto LABEL_254;
        case 6:
          v132 = v599[0];
          do
          {
            v133 = v13;
            do
            {
              v134 = v52->u8[1];
              if (v134 != 0xFF)
              {
                if ((v134 ^ 0xFF) == 0xFF)
                {
                  v52->i8[0] = v571;
                  LOBYTE(v135) = v23;
                }

                else
                {
                  v52->i8[0] += (v563 * v571 + ((v563 * v571) >> 8) + 1) >> 8;
                  v135 = v134 + ((v563 * v23 + ((v563 * v23) >> 8) + 1) >> 8);
                }

                v52->i8[1] = v135;
              }

              v52 = (v52 + 2);
              --v133;
            }

            while (v133);
            v52 = (v52 + 2 * v573);
            --v132;
          }

          while (v132);
          goto LABEL_254;
        case 7:
          v114 = v599[0];
          do
          {
            v115 = v13;
            do
            {
              v52->i8[0] = (v52->u8[0] * v23 + ((v52->u8[0] * v23) >> 8) + 1) >> 8;
              v52->i8[1] = (v52->u8[1] * v23 + ((v52->u8[1] * v23) >> 8) + 1) >> 8;
              v52 = (v52 + 2);
              --v115;
            }

            while (v115);
            v52 = (v52 + 2 * v573);
            --v114;
          }

          while (v114);
          goto LABEL_254;
        case 8:
          v142 = v599[0];
          do
          {
            v143 = v13;
            do
            {
              v52->i8[0] = (v52->u8[0] * v563 + ((v52->u8[0] * v563) >> 8) + 1) >> 8;
              v52->i8[1] = (v52->u8[1] * v563 + ((v52->u8[1] * v563) >> 8) + 1) >> 8;
              v52 = (v52 + 2);
              --v143;
            }

            while (v143);
            v52 = (v52 + 2 * v573);
            --v142;
          }

          while (v142);
          goto LABEL_254;
        case 9:
          v92 = v599[0];
          do
          {
            v93 = v13;
            do
            {
              v94 = v52->u8[1];
              v52->i8[0] = ((v94 ^ 0xFF) * v571 + v52->u8[0] * v23 + (((v94 ^ 0xFF) * v571 + v52->u8[0] * v23) >> 8) + 1) >> 8;
              v52->i8[1] = ((v94 + (v94 ^ 0xFF)) * v23 + (((v94 + (v94 ^ 0xFF)) * v23) >> 8) + 1) >> 8;
              v52 = (v52 + 2);
              --v93;
            }

            while (v93);
            v52 = (v52 + 2 * v573);
            --v92;
          }

          while (v92);
          goto LABEL_254;
        case 10:
          v139 = v599[0];
          do
          {
            v140 = v13;
            do
            {
              v141 = v52->u8[1];
              v52->i8[0] = ((v141 ^ 0xFF) * v571 + v52->u8[0] * v563 + (((v141 ^ 0xFF) * v571 + v52->u8[0] * v563) >> 8) + 1) >> 8;
              v52->i8[1] = ((v141 ^ 0xFF) * v23 + v141 * v563 + (((v141 ^ 0xFF) * v23 + v141 * v563) >> 8) + 1) >> 8;
              v52 = (v52 + 2);
              --v140;
            }

            while (v140);
            v52 = (v52 + 2 * v573);
            --v139;
          }

          while (v139);
          goto LABEL_254;
        case 11:
          v80 = v599[0];
          do
          {
            v81 = v13;
            do
            {
              if (v9)
              {
                v82 = v52->u8[1];
              }

              else
              {
                v82 = 255;
              }

              v83 = ((v23 - v571) | (v23 << 16)) + (v82 - v52->i8[0]) + (v82 << 16);
              v84 = (255 * ((v83 >> 8) & 0x10001)) | v83;
              v52->i8[0] = BYTE2(v84) - v84;
              v52->i8[1] = BYTE2(v84);
              v52 = (v52 + 2);
              --v81;
            }

            while (v81);
            v52 = (v52 + 2 * v573);
            --v80;
          }

          while (v80);
LABEL_254:
          v599[0] = 0;
          if (!v29)
          {
            return 1;
          }

          goto LABEL_301;
        case 12:
          do
          {
            v89 = v609[0];
            do
            {
              v90 = (v571 | (v23 << 16)) + v52->i16[0] + ((v52->u16[0] << 8) & 0xFF0000);
              v91 = (255 * ((v90 >> 8) & 0x10001)) | v90;
              v52->i8[0] = v91;
              v52->i8[1] = BYTE2(v91);
              v52 = (v52 + 2);
              --v89;
            }

            while (v89);
            v52 = (v52 + 2 * v573);
            --v599[0];
          }

          while (v599[0]);
          goto LABEL_300;
        case 13:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v129 = v599[0];
          while (1)
          {
            v130 = v13;
            do
            {
              if (v9)
              {
                v131 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_221;
                }
              }

              else
              {
                v131 = 255;
              }

              v589 = v589 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v592 = v571 | (v23 << 8) | v592 & 0xFFFFFFFFFFFF0000;
              v52->i16[0] = PDAmultiplyPDA(v52->i16[0], v131, v571, v23);
LABEL_221:
              v52 = (v52 + 2);
              --v130;
            }

            while (v130);
            v52 = (v52 + 2 * v573);
            v599[0] = --v129;
            LODWORD(v13) = v547;
            if (!v129)
            {
              goto LABEL_299;
            }
          }

        case 14:
          if (!v23)
          {
            goto LABEL_300;
          }

          v76 = v599[0];
          while (1)
          {
            v77 = v13;
            do
            {
              if (v9)
              {
                v78 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_83;
                }
              }

              else
              {
                v78 = 255;
              }

              v79 = (v52->u8[0] ^ 0xFF) * v571 - v52->u8[0] + (v52->u8[0] << 8);
              v52->i8[0] = (v79 + (v79 >> 8) + 1) >> 8;
              v52->i8[1] = (255 * (v78 + v23) - v78 * v23 + ((255 * (v78 + v23) - v78 * v23) >> 8) + 1) >> 8;
LABEL_83:
              v52 = (v52 + 2);
              --v77;
            }

            while (v77);
            v52 = (v52 + 2 * v573);
            v599[0] = --v76;
            if (!v76)
            {
              goto LABEL_300;
            }
          }

        case 15:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v108 = v599[0];
          while (1)
          {
            v109 = v13;
            do
            {
              if (v9)
              {
                v110 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_154;
                }
              }

              else
              {
                v110 = 255;
              }

              v595 = v571 | (v23 << 8) | v595 & 0xFFFFFFFFFFFF0000;
              v596 = v596 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAoverlayPDA(v596, v110, v571, v23);
LABEL_154:
              v52 = (v52 + 2);
              --v109;
            }

            while (v109);
            v52 = (v52 + 2 * v573);
            v599[0] = --v108;
            LODWORD(v13) = v547;
            if (!v108)
            {
              goto LABEL_299;
            }
          }

        case 16:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v73 = v599[0];
          while (1)
          {
            v74 = v13;
            do
            {
              if (v9)
              {
                v75 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_72;
                }
              }

              else
              {
                v75 = 255;
              }

              v590 = v571 | (v23 << 8) | v590 & 0xFFFFFFFFFFFF0000;
              v591 = v591 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAdarkenPDA(v591, v75, v571, v23);
LABEL_72:
              v52 = (v52 + 2);
              --v74;
            }

            while (v74);
            v52 = (v52 + 2 * v573);
            v599[0] = --v73;
            LODWORD(v13) = v547;
            if (!v73)
            {
              goto LABEL_299;
            }
          }

        case 17:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v117 = v599[0];
          while (1)
          {
            v118 = v13;
            do
            {
              if (v9)
              {
                v119 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_183;
                }
              }

              else
              {
                v119 = 255;
              }

              v593 = v571 | (v23 << 8) | v593 & 0xFFFFFFFFFFFF0000;
              v594 = v594 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAlightenPDA(v594, v119, v571, v23);
LABEL_183:
              v52 = (v52 + 2);
              --v118;
            }

            while (v118);
            v52 = (v52 + 2 * v573);
            v599[0] = --v117;
            LODWORD(v13) = v547;
            if (!v117)
            {
              goto LABEL_299;
            }
          }

        case 18:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v136 = v599[0];
          while (1)
          {
            v137 = v13;
            do
            {
              if (v9)
              {
                v138 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_242;
                }
              }

              else
              {
                v138 = 255;
              }

              v587 = v571 | (v23 << 8) | v587 & 0xFFFFFFFFFFFF0000;
              v588 = v588 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAcolordodgePDA(v588, v138, v571, v23);
LABEL_242:
              v52 = (v52 + 2);
              --v137;
            }

            while (v137);
            v52 = (v52 + 2 * v573);
            v599[0] = --v136;
            LODWORD(v13) = v547;
            if (!v136)
            {
LABEL_299:
              v10 = v529;
              v27 = v565;
              v25 = v561 >> 1;
              v29 = v569;
              goto LABEL_300;
            }
          }

        case 19:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v147 = v599[0];
          while (1)
          {
            v148 = v13;
            do
            {
              if (v9)
              {
                v149 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_275;
                }
              }

              else
              {
                v149 = 255;
              }

              v585 = v571 | (v23 << 8) | v585 & 0xFFFFFFFFFFFF0000;
              v586 = v586 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAcolorburnPDA(v586, v149, v571, v23);
LABEL_275:
              v52 = (v52 + 2);
              --v148;
            }

            while (v148);
            v52 = (v52 + 2 * v573);
            v599[0] = --v147;
            LODWORD(v13) = v547;
            if (!v147)
            {
              goto LABEL_299;
            }
          }

        case 20:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v120 = v599[0];
          while (1)
          {
            v121 = v13;
            do
            {
              if (v9)
              {
                v122 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_194;
                }
              }

              else
              {
                v122 = 255;
              }

              v581 = v571 | (v23 << 8) | v581 & 0xFFFFFFFFFFFF0000;
              v582 = v582 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAsoftlightPDA(v582, v122, v571, v23);
LABEL_194:
              v52 = (v52 + 2);
              --v121;
            }

            while (v121);
            v52 = (v52 + 2 * v573);
            v599[0] = --v120;
            LODWORD(v13) = v547;
            if (!v120)
            {
              goto LABEL_299;
            }
          }

        case 21:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v126 = v599[0];
          while (1)
          {
            v127 = v13;
            do
            {
              if (v9)
              {
                v128 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_210;
                }
              }

              else
              {
                v128 = 255;
              }

              v583 = v571 | (v23 << 8) | v583 & 0xFFFFFFFFFFFF0000;
              v584 = v584 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAhardlightPDA(v584, v128, v571, v23);
LABEL_210:
              v52 = (v52 + 2);
              --v127;
            }

            while (v127);
            v52 = (v52 + 2 * v573);
            v599[0] = --v126;
            LODWORD(v13) = v547;
            if (!v126)
            {
              goto LABEL_299;
            }
          }

        case 22:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v144 = v599[0];
          while (1)
          {
            v145 = v13;
            do
            {
              if (v9)
              {
                v146 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_264;
                }
              }

              else
              {
                v146 = 255;
              }

              v579 = v571 | (v23 << 8) | v579 & 0xFFFFFFFFFFFF0000;
              v580 = v580 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAdifferencePDA(v580, v146, v571, v23);
LABEL_264:
              v52 = (v52 + 2);
              --v145;
            }

            while (v145);
            v52 = (v52 + 2 * v573);
            v599[0] = --v144;
            LODWORD(v13) = v547;
            if (!v144)
            {
              goto LABEL_299;
            }
          }

        case 23:
          if (!v23)
          {
            goto LABEL_300;
          }

          v150 = v599[0];
          while (1)
          {
            v151 = v13;
            do
            {
              if (v9)
              {
                v152 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_286;
                }
              }

              else
              {
                v152 = 255;
              }

              v153 = 255 * (v52->u8[0] + v571) - 2 * v571 * v52->u8[0];
              v52->i8[0] = (v153 + (v153 >> 8) + 1) >> 8;
              v52->i8[1] = (255 * (v152 + v23) - v152 * v23 + ((255 * (v152 + v23) - v152 * v23) >> 8) + 1) >> 8;
LABEL_286:
              v52 = (v52 + 2);
              --v151;
            }

            while (v151);
            v52 = (v52 + 2 * v573);
            v599[0] = --v150;
            if (!v150)
            {
LABEL_300:
              if (v29)
              {
                goto LABEL_301;
              }

              return 1;
            }
          }

        case 24:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v98 = v599[0];
          while (1)
          {
            v99 = v13;
            do
            {
              if (v9)
              {
                v100 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_132;
                }
              }

              else
              {
                v100 = 255;
              }

              v577 = v571 | (v23 << 8) | v577 & 0xFFFFFFFFFFFF0000;
              v578 = v578 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAhuePDA(v578, v100, v571, v23);
LABEL_132:
              v52 = (v52 + 2);
              --v99;
            }

            while (v99);
            v52 = (v52 + 2 * v573);
            v599[0] = --v98;
            LODWORD(v13) = v547;
            if (!v98)
            {
              goto LABEL_299;
            }
          }

        case 25:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v95 = v599[0];
          while (1)
          {
            v96 = v13;
            do
            {
              if (v9)
              {
                v97 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_121;
                }
              }

              else
              {
                v97 = 255;
              }

              v575 = v571 | (v23 << 8) | v575 & 0xFFFFFFFFFFFF0000;
              v576 = v576 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v52->i16[0] = PDAhuePDA(v576, v97, v571, v23);
LABEL_121:
              v52 = (v52 + 2);
              --v96;
            }

            while (v96);
            v52 = (v52 + 2 * v573);
            v599[0] = --v95;
            LODWORD(v13) = v547;
            if (!v95)
            {
              goto LABEL_299;
            }
          }

        case 26:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v154 = v599[0];
          while (1)
          {
            v155 = v13;
            do
            {
              if (v9)
              {
                v156 = v52->u8[1];
                if (!v52->i8[1])
                {
                  v52->i8[0] = v571;
                  v52->i8[1] = v23;
                  goto LABEL_297;
                }
              }

              else
              {
                v156 = 255;
              }

              v2 = v2 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
              v574 = v571 | (v23 << 8) | v574 & 0xFFFFFFFFFFFF0000;
              v52->i16[0] = PDAhuePDA(v571, v23, v2, v156);
LABEL_297:
              v52 = (v52 + 2);
              --v155;
            }

            while (v155);
            v52 = (v52 + 2 * v573);
            v599[0] = --v154;
            LODWORD(v13) = v547;
            if (!v154)
            {
              goto LABEL_299;
            }
          }

        case 27:
          if (!v23)
          {
            goto LABEL_300;
          }

          v569 = v29;
          v70 = v599[0];
          break;
        default:
          goto LABEL_300;
      }

LABEL_55:
      v71 = v13;
      while (v9)
      {
        v72 = v52->u8[1];
        if (v52->i8[1])
        {
          goto LABEL_60;
        }

        v52->i8[0] = v571;
        v52->i8[1] = v23;
LABEL_61:
        v52 = (v52 + 2);
        if (!--v71)
        {
          v52 = (v52 + 2 * v573);
          v599[0] = --v70;
          LODWORD(v13) = v547;
          if (!v70)
          {
            goto LABEL_299;
          }

          goto LABEL_55;
        }
      }

      v72 = 255;
LABEL_60:
      v3 = v3 & 0xFFFFFFFFFFFF0000 | v52->u16[0];
      v12 = v571 | (v23 << 8) | v12 & 0xFFFFFFFFFFFF0000;
      v52->i16[0] = PDAhuePDA(v3, v72, v12, v23);
      goto LABEL_61;
    }

    v609[0] = *(v5 + 4);
    v599[0] = v15;
    v30 = *(v5 + 88);
    v31 = *(v5 + 28) >> 1;
    v32 = *(v5 + 40) + 2 * v31 * *(v5 + 16) + 2 * *(v5 + 12);
    v34 = *(v5 + 56);
    v33 = *(v5 + 60);
    v35 = *(v5 + 76) >> 1;
    if (v19 == 256)
    {
      v30 += 2 * v35 * v33 + 2 * v34;
      v524 = *(v5 + 60);
      if (v35 == v31)
      {
        v36 = (v32 - v30) >> 1;
        if (v36 < 1)
        {
          v43 = 1;
          v532 = *(v5 + 28) >> 1;
        }

        else if (v36 <= v13)
        {
          v32 += 2 * v14;
          v532 = *(v5 + 28) >> 1;
          v30 += 2 * v14;
          v43 = 0xFFFFFFFFLL;
        }

        else
        {
          v37 = v31 * v16;
          v38 = v30 + 2 * v31 * v16;
          v39 = v38 + 2 * v13 - 2;
          v40 = v32 + 2 * v37;
          v41 = v32 > v39;
          if (v32 > v39)
          {
            v42 = *(v5 + 28) >> 1;
          }

          else
          {
            v30 = v38;
            v32 = v40;
            v42 = -v31;
          }

          v532 = v42;
          if (!v41)
          {
            v31 = -v31;
          }

          v43 = 1;
        }
      }

      else
      {
        v43 = 1;
        v532 = *(v5 + 76) >> 1;
      }

      v525 = *(v5 + 56);
      v50 = v8 != 0;
      if (v17)
      {
        v530 = 0;
        v597 = 0;
        v51 = -1;
        v564 = 0;
        v566 = v532;
LABEL_46:
        v546 = v43;
        shape_enum_clip_alloc(v4, v5, v17, v43, v31, 1, *(v5 + 104), *(v5 + 108), v13, v15);
        if (!v64)
        {
          return 1;
        }

        v65 = v64;
        while (2)
        {
          if (!shape_enum_clip_next(v65, &v598 + 1, &v598, v609, v599))
          {
            v59 = v65;
            goto LABEL_958;
          }

          v531 = v65;
          if (v564)
          {
            v63 = (v32 + 2 * v31 * v598 + 2 * SHIDWORD(v598));
            LODWORD(v13) = v609[0];
            v516 = v30 + 2 * v566 * ((v598 + *(v12 + 60)) % v530);
            v62 = (v516 + 2 * ((HIDWORD(v598) + *(v12 + 56)) % v532));
            v51 = v516 + 2 * v532;
            v597 = v62;
            v517 = v609[0];
            v524 = (v598 + *(v12 + 60)) % v530;
            v525 = (HIDWORD(v598) + *(v12 + 56)) % v532;
          }

          else
          {
            LODWORD(v13) = v609[0];
            v517 = v609[0] * v546;
            v63 = (v32 + 2 * v31 * v598 + 2 * HIDWORD(v598) * v546);
            v62 = (v30 + 2 * v598 * v532 + 2 * HIDWORD(v598) * v546);
            v566 = v532 - v609[0] * v546;
          }

          v562 = v31 - v517;
          v43 = v546;
LABEL_308:
          v546 = v43;
          switch(v10)
          {
            case 0:
              v157 = &v63[-2 * v13 + 2];
              v158 = v562 + v13;
              if (v43 < 0)
              {
                v158 = v562 - v13;
              }

              else
              {
                v157 = v63;
              }

              v159 = (v157 + 2 * ((v158 * (v599[0] - 1)) & (v158 >> 63)));
              if (v158 < 0)
              {
                v158 = -v158;
              }

              CGBlt_fillBytes(2 * v13, v599[0], 0, v159, 2 * v158);
              goto LABEL_950;
            case 1:
              v320 = *(v12 + 1);
              if (v320 == 2)
              {
                if (v13 >= 16 && (2 * v532) <= 0x40)
                {
                  v6.i32[0] = 2 * v532;
                  v489 = vcnt_s8(v6);
                  v489.i16[0] = vaddlv_u8(v489);
                  if (v489.i32[0] <= 1u)
                  {
                    CGSFillDRAM64(v63, 2 * (v13 + v562), 2 * v13, v599[0], v30, 2 * v566, 2 * v532, v530, 2 * v525, v524);
                    goto LABEL_950;
                  }
                }

LABEL_903:
                v490 = v599[0];
                if (v9 == 0 || v50)
                {
                  do
                  {
                    v491 = v13;
                    do
                    {
                      *v63 = *v62;
                      v492 = &v62[2 * v43];
                      if (v492 >= v51)
                      {
                        v493 = -v532;
                      }

                      else
                      {
                        v493 = 0;
                      }

                      v62 = &v492[2 * v493];
                      v63 += 2 * v43;
                      --v491;
                    }

                    while (v491);
                    v63 += 2 * v562;
                    v494 = v597;
                    v495 = &v597[2 * v566];
                    if (v495 >= v564)
                    {
                      v496 = -(v566 * v530);
                    }

                    else
                    {
                      v496 = 0;
                    }

                    v497 = &v495[2 * v496];
                    v498 = v51 + 2 * v496 + 2 * v566;
                    if (v564)
                    {
                      v51 = v498;
                      v494 = v497;
                    }

                    v597 = v494;
                    if (v564)
                    {
                      v62 = v497;
                    }

                    else
                    {
                      v62 += 2 * v566;
                    }

                    --v490;
                  }

                  while (v490);
                }

                else
                {
                  do
                  {
                    v499 = v13;
                    do
                    {
                      *v63 = *v62;
                      v63[1] = -1;
                      v500 = &v62[2 * v43];
                      if (v500 >= v51)
                      {
                        v501 = -v532;
                      }

                      else
                      {
                        v501 = 0;
                      }

                      v62 = &v500[2 * v501];
                      v63 += 2 * v43;
                      --v499;
                    }

                    while (v499);
                    v63 += 2 * v562;
                    v502 = v597;
                    v503 = &v597[2 * v566];
                    if (v503 >= v564)
                    {
                      v504 = -(v566 * v530);
                    }

                    else
                    {
                      v504 = 0;
                    }

                    v505 = &v503[2 * v504];
                    v506 = v51 + 2 * v504 + 2 * v566;
                    if (v564)
                    {
                      v51 = v506;
                      v502 = v505;
                    }

                    v597 = v502;
                    if (v564)
                    {
                      v62 = v505;
                    }

                    else
                    {
                      v62 += 2 * v566;
                    }

                    --v490;
                  }

                  while (v490);
                }

                goto LABEL_949;
              }

              if (v320 != 1)
              {
                goto LABEL_903;
              }

              if (v9 != 0 && !v50)
              {
                v507 = v599[0];
                do
                {
                  v508 = v13;
                  do
                  {
                    *v63 = *v62;
                    v63[1] = -1;
                    v509 = &v62[2 * v43];
                    if (v509 >= v51)
                    {
                      v510 = -v532;
                    }

                    else
                    {
                      v510 = 0;
                    }

                    v62 = &v509[2 * v510];
                    v63 += 2 * v43;
                    --v508;
                  }

                  while (v508);
                  v63 += 2 * v562;
                  v511 = v597;
                  v512 = &v597[2 * v566];
                  if (v512 >= v564)
                  {
                    v513 = -(v566 * v530);
                  }

                  else
                  {
                    v513 = 0;
                  }

                  v514 = &v512[2 * v513];
                  v515 = v51 + 2 * v513 + 2 * v566;
                  if (v564)
                  {
                    v51 = v515;
                    v511 = v514;
                  }

                  v597 = v511;
                  if (v564)
                  {
                    v62 = v514;
                  }

                  else
                  {
                    v62 += 2 * v566;
                  }

                  --v507;
                }

                while (v507);
                goto LABEL_949;
              }

              if ((v43 & 0x80000000) != 0)
              {
                v321 = v566 - v13;
                v518 = 2 * v13 - 2;
                v62 -= v518;
                v322 = v562 - v13;
                v63 -= v518;
              }

              else
              {
                v321 = v566 + v13;
                v322 = v562 + v13;
              }

              v519 = v599[0] - 1;
              v520 = &v62[2 * ((v321 * v519) & (v321 >> 63))];
              if (v321 >= 0)
              {
                v521 = v321;
              }

              else
              {
                v521 = -v321;
              }

              if (v322 >= 0)
              {
                LODWORD(v522) = v322;
              }

              else
              {
                v522 = -v322;
              }

              v566 = v521;
              CGBlt_copyBytes(2 * v13, v599[0], v520, &v63[2 * ((v322 * v519) & (v322 >> 63))], 2 * v521, 2 * v522);
LABEL_950:
              v65 = v531;
              if (!v531)
              {
                return 1;
              }

              v598 = 0;
              continue;
            case 2:
              v275 = v599[0];
              do
              {
                v276 = v13;
                do
                {
                  v277 = v62[1];
                  if (v62[1])
                  {
                    if (v277 == 255)
                    {
                      *v63 = *v62;
                      v63[1] = -1;
                    }

                    else
                    {
                      *v63 = *v62 + ((*v63 * (v277 ^ 0xFF) + ((*v63 * (v277 ^ 0xFFu)) >> 8) + 1) >> 8);
                      v63[1] = v277 + ((v63[1] * (v277 ^ 0xFF) + ((v63[1] * (v277 ^ 0xFFu)) >> 8) + 1) >> 8);
                    }
                  }

                  v278 = &v62[2 * v43];
                  if (v278 >= v51)
                  {
                    v279 = -v532;
                  }

                  else
                  {
                    v279 = 0;
                  }

                  v62 = &v278[2 * v279];
                  v63 += 2 * v43;
                  --v276;
                }

                while (v276);
                v63 += 2 * v562;
                v280 = v597;
                v281 = &v597[2 * v566];
                if (v281 >= v564)
                {
                  v282 = -(v566 * v530);
                }

                else
                {
                  v282 = 0;
                }

                v283 = &v281[2 * v282];
                v284 = v51 + 2 * v282 + 2 * v566;
                if (v564)
                {
                  v51 = v284;
                  v280 = v283;
                }

                v597 = v280;
                if (v564)
                {
                  v62 = v283;
                }

                else
                {
                  v62 += 2 * v566;
                }

                --v275;
              }

              while (v275);
              goto LABEL_949;
            case 3:
              v298 = v599[0];
              while (1)
              {
                v299 = v13;
                do
                {
                  v300 = v63[1];
                  if (v300 == 255)
                  {
                    *v63 = *v62;
                    if (v50)
                    {
                      LOBYTE(v301) = v62[1];
                    }

                    else
                    {
                      LOBYTE(v301) = -1;
                    }
                  }

                  else
                  {
                    if (!v63[1])
                    {
                      *v63 = 0;
                      goto LABEL_572;
                    }

                    *v63 = (*v62 * v300 + ((*v62 * v300) >> 8) + 1) >> 8;
                    if (v50)
                    {
                      v302 = v62[1];
                    }

                    else
                    {
                      v302 = 255;
                    }

                    v301 = (v302 * v300 + ((v302 * v300) >> 8) + 1) >> 8;
                  }

                  v63[1] = v301;
LABEL_572:
                  v303 = &v62[2 * v43];
                  if (v303 >= v51)
                  {
                    v304 = -v532;
                  }

                  else
                  {
                    v304 = 0;
                  }

                  v62 = &v303[2 * v304];
                  v63 += 2 * v43;
                  --v299;
                }

                while (v299);
                v63 += 2 * v562;
                v305 = v597;
                v306 = &v597[2 * v566];
                if (v306 >= v564)
                {
                  v307 = -(v566 * v530);
                }

                else
                {
                  v307 = 0;
                }

                v308 = &v306[2 * v307];
                v309 = v51 + 2 * v307 + 2 * v566;
                if (v564)
                {
                  v51 = v309;
                  v305 = v308;
                }

                v597 = v305;
                if (v564)
                {
                  v62 = v308;
                }

                else
                {
                  v62 += 2 * v566;
                }

                if (!--v298)
                {
                  goto LABEL_949;
                }
              }

            case 4:
              v213 = v599[0];
              while (1)
              {
                v214 = v13;
                do
                {
                  v215 = v63[1];
                  if (~v215 == 255)
                  {
                    *v63 = *v62;
                    if (v50)
                    {
                      LOBYTE(v216) = v62[1];
                    }

                    else
                    {
                      LOBYTE(v216) = -1;
                    }
                  }

                  else
                  {
                    if (v215 == 0xFF)
                    {
                      *v63 = 0;
                      goto LABEL_421;
                    }

                    v217 = ~v215;
                    *v63 = (*v62 * v217 + ((*v62 * v217) >> 8) + 1) >> 8;
                    if (v50)
                    {
                      v218 = v62[1];
                    }

                    else
                    {
                      v218 = 255;
                    }

                    v216 = (v218 * v217 + ((v218 * v217) >> 8) + 1) >> 8;
                  }

                  v63[1] = v216;
LABEL_421:
                  v219 = &v62[2 * v43];
                  if (v219 >= v51)
                  {
                    v220 = -v532;
                  }

                  else
                  {
                    v220 = 0;
                  }

                  v62 = &v219[2 * v220];
                  v63 += 2 * v43;
                  --v214;
                }

                while (v214);
                v63 += 2 * v562;
                v221 = v597;
                v222 = &v597[2 * v566];
                if (v222 >= v564)
                {
                  v223 = -(v566 * v530);
                }

                else
                {
                  v223 = 0;
                }

                v224 = &v222[2 * v223];
                v225 = v51 + 2 * v223 + 2 * v566;
                if (v564)
                {
                  v51 = v225;
                  v221 = v224;
                }

                v597 = v221;
                if (v564)
                {
                  v62 = v224;
                }

                else
                {
                  v62 += 2 * v566;
                }

                if (!--v213)
                {
                  goto LABEL_949;
                }
              }

            case 5:
              v349 = v599[0];
              do
              {
                v350 = v13;
                do
                {
                  v351 = v63[1];
                  v352 = v62[1];
                  v353 = v351 * *v62 + (v352 ^ 0xFF) * *v63;
                  *v63 = (v353 + (v353 >> 8) + 1) >> 8;
                  v63[1] = (((v352 ^ 0xFF) + v352) * v351 + ((((v352 ^ 0xFFu) + v352) * v351) >> 8) + 1) >> 8;
                  v354 = &v62[2 * v43];
                  if (v354 >= v51)
                  {
                    v355 = -v532;
                  }

                  else
                  {
                    v355 = 0;
                  }

                  v62 = &v354[2 * v355];
                  v63 += 2 * v43;
                  --v350;
                }

                while (v350);
                v63 += 2 * v562;
                v356 = v597;
                v357 = &v597[2 * v566];
                if (v357 >= v564)
                {
                  v358 = -(v566 * v530);
                }

                else
                {
                  v358 = 0;
                }

                v359 = &v357[2 * v358];
                v360 = v51 + 2 * v358 + 2 * v566;
                if (v564)
                {
                  v51 = v360;
                  v356 = v359;
                }

                v597 = v356;
                if (v564)
                {
                  v62 = v359;
                }

                else
                {
                  v62 += 2 * v566;
                }

                --v349;
              }

              while (v349);
              goto LABEL_949;
            case 6:
              v387 = v599[0];
              do
              {
                v388 = v13;
                do
                {
                  v389 = v63[1];
                  if (v389 != 0xFF)
                  {
                    if (~v389 == 255)
                    {
                      *v63 = *v62;
                      if (v50)
                      {
                        LOBYTE(v390) = v62[1];
                      }

                      else
                      {
                        LOBYTE(v390) = -1;
                      }
                    }

                    else
                    {
                      v391 = ~v389;
                      *v63 += (*v62 * v391 + ((*v62 * v391) >> 8) + 1) >> 8;
                      if (v50)
                      {
                        v392 = v62[1];
                      }

                      else
                      {
                        v392 = 255;
                      }

                      v390 = v389 + ((v392 * v391 + ((v392 * v391) >> 8) + 1) >> 8);
                    }

                    v63[1] = v390;
                  }

                  v393 = &v62[2 * v43];
                  if (v393 >= v51)
                  {
                    v394 = -v532;
                  }

                  else
                  {
                    v394 = 0;
                  }

                  v62 = &v393[2 * v394];
                  v63 += 2 * v43;
                  --v388;
                }

                while (v388);
                v63 += 2 * v562;
                v395 = v597;
                v396 = &v597[2 * v566];
                if (v396 >= v564)
                {
                  v397 = -(v566 * v530);
                }

                else
                {
                  v397 = 0;
                }

                v398 = &v396[2 * v397];
                v399 = v51 + 2 * v397 + 2 * v566;
                if (v564)
                {
                  v51 = v399;
                  v395 = v398;
                }

                v597 = v395;
                if (v564)
                {
                  v62 = v398;
                }

                else
                {
                  v62 += 2 * v566;
                }

                --v387;
              }

              while (v387);
              goto LABEL_949;
            case 7:
              v310 = v599[0];
              do
              {
                v311 = v13;
                do
                {
                  v312 = v62[1];
                  if (v312 != 255)
                  {
                    if (v62[1])
                    {
                      *v63 = (*v63 * v312 + ((*v63 * v312) >> 8) + 1) >> 8;
                      v63[1] = (v63[1] * v312 + ((v63[1] * v312) >> 8) + 1) >> 8;
                    }

                    else
                    {
                      *v63 = 0;
                    }
                  }

                  v313 = &v62[2 * v43];
                  if (v313 >= v51)
                  {
                    v314 = -v532;
                  }

                  else
                  {
                    v314 = 0;
                  }

                  v62 = &v313[2 * v314];
                  v63 += 2 * v43;
                  --v311;
                }

                while (v311);
                v63 += 2 * v562;
                v315 = v597;
                v316 = &v597[2 * v566];
                if (v316 >= v564)
                {
                  v317 = -(v566 * v530);
                }

                else
                {
                  v317 = 0;
                }

                v318 = &v316[2 * v317];
                v319 = v51 + 2 * v317 + 2 * v566;
                if (v564)
                {
                  v51 = v319;
                  v315 = v318;
                }

                v597 = v315;
                if (v564)
                {
                  v62 = v318;
                }

                else
                {
                  v62 += 2 * v566;
                }

                --v310;
              }

              while (v310);
              goto LABEL_949;
            case 8:
              v425 = v599[0];
              do
              {
                v426 = v13;
                do
                {
                  v427 = v62[1];
                  if (~v427 != 255)
                  {
                    if (v427 == 0xFF)
                    {
                      *v63 = 0;
                    }

                    else
                    {
                      v428 = ~v427;
                      *v63 = (*v63 * v428 + ((*v63 * v428) >> 8) + 1) >> 8;
                      v63[1] = (v63[1] * v428 + ((v63[1] * v428) >> 8) + 1) >> 8;
                    }
                  }

                  v429 = &v62[2 * v43];
                  if (v429 >= v51)
                  {
                    v430 = -v532;
                  }

                  else
                  {
                    v430 = 0;
                  }

                  v62 = &v429[2 * v430];
                  v63 += 2 * v43;
                  --v426;
                }

                while (v426);
                v63 += 2 * v562;
                v431 = v597;
                v432 = &v597[2 * v566];
                if (v432 >= v564)
                {
                  v433 = -(v566 * v530);
                }

                else
                {
                  v433 = 0;
                }

                v434 = &v432[2 * v433];
                v435 = v51 + 2 * v433 + 2 * v566;
                if (v564)
                {
                  v51 = v435;
                  v431 = v434;
                }

                v597 = v431;
                if (v564)
                {
                  v62 = v434;
                }

                else
                {
                  v62 += 2 * v566;
                }

                --v425;
              }

              while (v425);
              goto LABEL_949;
            case 9:
              v237 = v599[0];
              do
              {
                v238 = v13;
                do
                {
                  v239 = v63[1];
                  v240 = v62[1];
                  v241 = (v239 ^ 0xFF) * *v62 + v240 * *v63;
                  *v63 = (v241 + (v241 >> 8) + 1) >> 8;
                  v63[1] = ((v239 + (v239 ^ 0xFF)) * v240 + (((v239 + (v239 ^ 0xFFu)) * v240) >> 8) + 1) >> 8;
                  v242 = &v62[2 * v43];
                  if (v242 >= v51)
                  {
                    v243 = -v532;
                  }

                  else
                  {
                    v243 = 0;
                  }

                  v62 = &v242[2 * v243];
                  v63 += 2 * v43;
                  --v238;
                }

                while (v238);
                v63 += 2 * v562;
                v244 = v597;
                v245 = &v597[2 * v566];
                if (v245 >= v564)
                {
                  v246 = -(v566 * v530);
                }

                else
                {
                  v246 = 0;
                }

                v247 = &v245[2 * v246];
                v248 = v51 + 2 * v246 + 2 * v566;
                if (v564)
                {
                  v51 = v248;
                  v244 = v247;
                }

                v597 = v244;
                if (v564)
                {
                  v62 = v247;
                }

                else
                {
                  v62 += 2 * v566;
                }

                --v237;
              }

              while (v237);
              goto LABEL_949;
            case 10:
              v413 = v599[0];
              do
              {
                v414 = v13;
                do
                {
                  v415 = v63[1];
                  v416 = v62[1];
                  v417 = (v415 ^ 0xFF) * *v62 + (v416 ^ 0xFF) * *v63;
                  *v63 = (v417 + (v417 >> 8) + 1) >> 8;
                  v63[1] = (v416 * (v415 ^ 0xFF) + (v416 ^ 0xFF) * v415 + ((v416 * (v415 ^ 0xFF) + (v416 ^ 0xFFu) * v415) >> 8) + 1) >> 8;
                  v418 = &v62[2 * v43];
                  if (v418 >= v51)
                  {
                    v419 = -v532;
                  }

                  else
                  {
                    v419 = 0;
                  }

                  v62 = &v418[2 * v419];
                  v63 += 2 * v43;
                  --v414;
                }

                while (v414);
                v63 += 2 * v562;
                v420 = v597;
                v421 = &v597[2 * v566];
                if (v421 >= v564)
                {
                  v422 = -(v566 * v530);
                }

                else
                {
                  v422 = 0;
                }

                v423 = &v421[2 * v422];
                v424 = v51 + 2 * v422 + 2 * v566;
                if (v564)
                {
                  v51 = v424;
                  v420 = v423;
                }

                v597 = v420;
                if (v564)
                {
                  v62 = v423;
                }

                else
                {
                  v62 += 2 * v566;
                }

                --v413;
              }

              while (v413);
              goto LABEL_949;
            case 11:
              v200 = v599[0];
              while (1)
              {
                v201 = v13;
                do
                {
                  if (v9)
                  {
                    v202 = v63[1];
                    if (v50)
                    {
                      goto LABEL_391;
                    }
                  }

                  else
                  {
                    v202 = 255;
                    if (v50)
                    {
LABEL_391:
                      v203 = v62[1];
                      goto LABEL_394;
                    }
                  }

                  v203 = 255;
LABEL_394:
                  v204 = ((v202 - *v63) | (v202 << 16)) + (v203 - *v62) + (v203 << 16);
                  v205 = (255 * ((v204 >> 8) & 0x10001)) | v204;
                  *v63 = BYTE2(v205) - v205;
                  v63[1] = BYTE2(v205);
                  v206 = &v62[2 * v43];
                  if (v206 >= v51)
                  {
                    v207 = -v532;
                  }

                  else
                  {
                    v207 = 0;
                  }

                  v62 = &v206[2 * v207];
                  v63 += 2 * v43;
                  --v201;
                }

                while (v201);
                v63 += 2 * v562;
                v208 = v597;
                v209 = &v597[2 * v566];
                if (v209 >= v564)
                {
                  v210 = -(v566 * v530);
                }

                else
                {
                  v210 = 0;
                }

                v211 = &v209[2 * v210];
                v212 = v51 + 2 * v210 + 2 * v566;
                if (v564)
                {
                  v51 = v212;
                  v208 = v211;
                }

                v597 = v208;
                if (v564)
                {
                  v62 = v211;
                }

                else
                {
                  v62 += 2 * v566;
                }

                if (!--v200)
                {
LABEL_949:
                  v599[0] = 0;
                  goto LABEL_950;
                }
              }

            case 12:
              do
              {
                v226 = v609[0];
                do
                {
                  if (v50)
                  {
                    v227 = v62[1] << 16;
                  }

                  else
                  {
                    v227 = 16711680;
                  }

                  v228 = ((*v62 + *v63) & 0xFF00FFFF | (HIBYTE(*v63) << 16)) + v227;
                  v229 = (255 * ((v228 >> 8) & 0x10001)) | v228;
                  *v63 = v229;
                  v63[1] = BYTE2(v229);
                  v230 = &v62[2 * v43];
                  if (v230 >= v51)
                  {
                    v231 = -v532;
                  }

                  else
                  {
                    v231 = 0;
                  }

                  v62 = &v230[2 * v231];
                  v63 += 2 * v43;
                  --v226;
                }

                while (v226);
                v63 += 2 * v562;
                v232 = v597;
                v233 = &v597[2 * v566];
                if (v233 >= v564)
                {
                  v234 = -(v566 * v530);
                }

                else
                {
                  v234 = 0;
                }

                v235 = &v233[2 * v234];
                v236 = v51 + 2 * v234 + 2 * v566;
                if (v564)
                {
                  v51 = v236;
                  v232 = v235;
                }

                v597 = v232;
                if (v564)
                {
                  v62 = v235;
                }

                else
                {
                  v62 += 2 * v566;
                }

                --v599[0];
              }

              while (v599[0]);
              goto LABEL_950;
            case 13:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v556 = v13;
              v374 = v43;
              v375 = v599[0];
              v376 = 2 * v43;
              while (1)
              {
                v541 = v375;
                v377 = v556;
                do
                {
                  if (v50)
                  {
                    v378 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_706;
                    }

                    if (!v9)
                    {
LABEL_704:
                      v379 = 255;
                      goto LABEL_705;
                    }
                  }

                  else
                  {
                    v378 = 255;
                    if (!v9)
                    {
                      goto LABEL_704;
                    }
                  }

                  v379 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v378;
                    goto LABEL_706;
                  }

LABEL_705:
                  v590 = v590 & 0xFFFFFFFFFFFF0000 | *v63;
                  v591 = v591 & 0xFFFFFFFFFFFF0000 | *v62;
                  *v63 = PDAmultiplyPDA(*v63, v379, *v62, v378);
LABEL_706:
                  v380 = &v62[2 * v374];
                  if (v380 >= v51)
                  {
                    v381 = -v532;
                  }

                  else
                  {
                    v381 = 0;
                  }

                  v62 = &v380[2 * v381];
                  v63 += v376;
                  --v377;
                }

                while (v377);
                v63 += 2 * v562;
                v382 = v597;
                v383 = &v597[2 * v566];
                v384 = -(v566 * v530);
                if (v383 < v564)
                {
                  v384 = 0;
                }

                v385 = &v383[2 * v384];
                v386 = v51 + 2 * v384 + 2 * v566;
                if (v564)
                {
                  v51 = v386;
                  v382 = v385;
                }

                v597 = v382;
                if (v564)
                {
                  v62 = v385;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v375 = v541 - 1;
                v599[0] = v541 - 1;
                if (v541 == 1)
                {
LABEL_898:
                  v31 = v528;
                  v10 = v529;
                  v12 = v523;
                  v32 = v526;
                  v30 = v527;
                  goto LABEL_950;
                }
              }

            case 14:
              v186 = v599[0];
              while (1)
              {
                v187 = v13;
                do
                {
                  if (v50)
                  {
                    v188 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_373;
                    }

                    if (!v9)
                    {
LABEL_370:
                      v189 = 255;
LABEL_371:
                      v191 = (*v63 ^ 0xFF) * *v62 - *v63 + (*v63 << 8);
                      v192 = 255 * (v189 + v188) - v189 * v188;
                      v190 = (v191 + (v191 >> 8) + 1) >> 8;
                      v188 = (v192 + (v192 >> 8) + 1) >> 8;
                      goto LABEL_372;
                    }
                  }

                  else
                  {
                    v188 = 255;
                    if (!v9)
                    {
                      goto LABEL_370;
                    }
                  }

                  v189 = v63[1];
                  if (v63[1])
                  {
                    goto LABEL_371;
                  }

                  LOBYTE(v190) = *v62;
LABEL_372:
                  *v63 = v190;
                  v63[1] = v188;
LABEL_373:
                  v193 = &v62[2 * v43];
                  if (v193 >= v51)
                  {
                    v194 = -v532;
                  }

                  else
                  {
                    v194 = 0;
                  }

                  v62 = &v193[2 * v194];
                  v63 += 2 * v43;
                  --v187;
                }

                while (v187);
                v63 += 2 * v562;
                v195 = v597;
                v196 = &v597[2 * v566];
                if (v196 >= v564)
                {
                  v197 = -(v566 * v530);
                }

                else
                {
                  v197 = 0;
                }

                v198 = &v196[2 * v197];
                v199 = v51 + 2 * v197 + 2 * v566;
                if (v564)
                {
                  v51 = v199;
                  v195 = v198;
                }

                v597 = v195;
                if (v564)
                {
                  v62 = v198;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v599[0] = --v186;
                if (!v186)
                {
                  goto LABEL_950;
                }
              }

            case 15:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v552 = v13;
              v285 = v43;
              v286 = v599[0];
              v287 = 2 * v43;
              while (1)
              {
                v537 = v286;
                v288 = v552;
                do
                {
                  if (v50)
                  {
                    v289 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_546;
                    }

                    if (!v9)
                    {
LABEL_544:
                      v290 = 255;
                      goto LABEL_545;
                    }
                  }

                  else
                  {
                    v289 = 255;
                    if (!v9)
                    {
                      goto LABEL_544;
                    }
                  }

                  v290 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v289;
                    goto LABEL_546;
                  }

LABEL_545:
                  v594 = v594 & 0xFFFFFFFFFFFF0000 | *v62;
                  v595 = v595 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAoverlayPDA(v595, v290, *v62, v289);
LABEL_546:
                  v291 = &v62[2 * v285];
                  if (v291 >= v51)
                  {
                    v292 = -v532;
                  }

                  else
                  {
                    v292 = 0;
                  }

                  v62 = &v291[2 * v292];
                  v63 += v287;
                  --v288;
                }

                while (v288);
                v63 += 2 * v562;
                v293 = v597;
                v294 = &v597[2 * v566];
                v295 = -(v566 * v530);
                if (v294 < v564)
                {
                  v295 = 0;
                }

                v296 = &v294[2 * v295];
                v297 = v51 + 2 * v295 + 2 * v566;
                if (v564)
                {
                  v51 = v297;
                  v293 = v296;
                }

                v597 = v293;
                if (v564)
                {
                  v62 = v296;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v286 = v537 - 1;
                v599[0] = v537 - 1;
                if (v537 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 16:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v549 = v13;
              v173 = v43;
              v174 = v599[0];
              v175 = 2 * v43;
              while (1)
              {
                v534 = v174;
                v176 = v549;
                do
                {
                  if (v50)
                  {
                    v177 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_349;
                    }

                    if (!v9)
                    {
LABEL_347:
                      v178 = 255;
                      goto LABEL_348;
                    }
                  }

                  else
                  {
                    v177 = 255;
                    if (!v9)
                    {
                      goto LABEL_347;
                    }
                  }

                  v178 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v177;
                    goto LABEL_349;
                  }

LABEL_348:
                  v588 = v588 & 0xFFFFFFFFFFFF0000 | *v62;
                  v589 = v589 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAdarkenPDA(v589, v178, *v62, v177);
LABEL_349:
                  v179 = &v62[2 * v173];
                  if (v179 >= v51)
                  {
                    v180 = -v532;
                  }

                  else
                  {
                    v180 = 0;
                  }

                  v62 = &v179[2 * v180];
                  v63 += v175;
                  --v176;
                }

                while (v176);
                v63 += 2 * v562;
                v181 = v597;
                v182 = &v597[2 * v566];
                v183 = -(v566 * v530);
                if (v182 < v564)
                {
                  v183 = 0;
                }

                v184 = &v182[2 * v183];
                v185 = v51 + 2 * v183 + 2 * v566;
                if (v564)
                {
                  v51 = v185;
                  v181 = v184;
                }

                v597 = v181;
                if (v564)
                {
                  v62 = v184;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v174 = v534 - 1;
                v599[0] = v534 - 1;
                if (v534 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 17:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v553 = v13;
              v323 = v43;
              v324 = v599[0];
              v325 = 2 * v43;
              while (1)
              {
                v538 = v324;
                v326 = v553;
                do
                {
                  if (v50)
                  {
                    v327 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_621;
                    }

                    if (!v9)
                    {
LABEL_619:
                      v328 = 255;
                      goto LABEL_620;
                    }
                  }

                  else
                  {
                    v327 = 255;
                    if (!v9)
                    {
                      goto LABEL_619;
                    }
                  }

                  v328 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v327;
                    goto LABEL_621;
                  }

LABEL_620:
                  v592 = v592 & 0xFFFFFFFFFFFF0000 | *v62;
                  v593 = v593 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAlightenPDA(v593, v328, *v62, v327);
LABEL_621:
                  v329 = &v62[2 * v323];
                  if (v329 >= v51)
                  {
                    v330 = -v532;
                  }

                  else
                  {
                    v330 = 0;
                  }

                  v62 = &v329[2 * v330];
                  v63 += v325;
                  --v326;
                }

                while (v326);
                v63 += 2 * v562;
                v331 = v597;
                v332 = &v597[2 * v566];
                v333 = -(v566 * v530);
                if (v332 < v564)
                {
                  v333 = 0;
                }

                v334 = &v332[2 * v333];
                v335 = v51 + 2 * v333 + 2 * v566;
                if (v564)
                {
                  v51 = v335;
                  v331 = v334;
                }

                v597 = v331;
                if (v564)
                {
                  v62 = v334;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v324 = v538 - 1;
                v599[0] = v538 - 1;
                if (v538 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 18:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v557 = v13;
              v400 = v43;
              v401 = v599[0];
              v402 = 2 * v43;
              while (1)
              {
                v542 = v401;
                v403 = v557;
                do
                {
                  if (v50)
                  {
                    v404 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_755;
                    }

                    if (!v9)
                    {
LABEL_753:
                      v405 = 255;
                      goto LABEL_754;
                    }
                  }

                  else
                  {
                    v404 = 255;
                    if (!v9)
                    {
                      goto LABEL_753;
                    }
                  }

                  v405 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v404;
                    goto LABEL_755;
                  }

LABEL_754:
                  v586 = v586 & 0xFFFFFFFFFFFF0000 | *v62;
                  v587 = v587 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAcolordodgePDA(v587, v405, *v62, v404);
LABEL_755:
                  v406 = &v62[2 * v400];
                  if (v406 >= v51)
                  {
                    v407 = -v532;
                  }

                  else
                  {
                    v407 = 0;
                  }

                  v62 = &v406[2 * v407];
                  v63 += v402;
                  --v403;
                }

                while (v403);
                v63 += 2 * v562;
                v408 = v597;
                v409 = &v597[2 * v566];
                v410 = -(v566 * v530);
                if (v409 < v564)
                {
                  v410 = 0;
                }

                v411 = &v409[2 * v410];
                v412 = v51 + 2 * v410 + 2 * v566;
                if (v564)
                {
                  v51 = v412;
                  v408 = v411;
                }

                v597 = v408;
                if (v564)
                {
                  v62 = v411;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v401 = v542 - 1;
                v599[0] = v542 - 1;
                if (v542 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 19:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v559 = v13;
              v449 = v43;
              v450 = v599[0];
              v451 = 2 * v43;
              while (1)
              {
                v544 = v450;
                v452 = v559;
                do
                {
                  if (v50)
                  {
                    v453 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_837;
                    }

                    if (!v9)
                    {
LABEL_835:
                      v454 = 255;
                      goto LABEL_836;
                    }
                  }

                  else
                  {
                    v453 = 255;
                    if (!v9)
                    {
                      goto LABEL_835;
                    }
                  }

                  v454 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v453;
                    goto LABEL_837;
                  }

LABEL_836:
                  v584 = v584 & 0xFFFFFFFFFFFF0000 | *v62;
                  v585 = v585 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAcolorburnPDA(v585, v454, *v62, v453);
LABEL_837:
                  v455 = &v62[2 * v449];
                  if (v455 >= v51)
                  {
                    v456 = -v532;
                  }

                  else
                  {
                    v456 = 0;
                  }

                  v62 = &v455[2 * v456];
                  v63 += v451;
                  --v452;
                }

                while (v452);
                v63 += 2 * v562;
                v457 = v597;
                v458 = &v597[2 * v566];
                v459 = -(v566 * v530);
                if (v458 < v564)
                {
                  v459 = 0;
                }

                v460 = &v458[2 * v459];
                v461 = v51 + 2 * v459 + 2 * v566;
                if (v564)
                {
                  v51 = v461;
                  v457 = v460;
                }

                v597 = v457;
                if (v564)
                {
                  v62 = v460;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v450 = v544 - 1;
                v599[0] = v544 - 1;
                if (v544 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 20:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v554 = v13;
              v336 = v43;
              v337 = v599[0];
              v338 = 2 * v43;
              while (1)
              {
                v539 = v337;
                v339 = v554;
                do
                {
                  if (v50)
                  {
                    v340 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_644;
                    }

                    if (!v9)
                    {
LABEL_642:
                      v341 = 255;
                      goto LABEL_643;
                    }
                  }

                  else
                  {
                    v340 = 255;
                    if (!v9)
                    {
                      goto LABEL_642;
                    }
                  }

                  v341 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v340;
                    goto LABEL_644;
                  }

LABEL_643:
                  v580 = v580 & 0xFFFFFFFFFFFF0000 | *v62;
                  v581 = v581 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAsoftlightPDA(v581, v341, *v62, v340);
LABEL_644:
                  v342 = &v62[2 * v336];
                  if (v342 >= v51)
                  {
                    v343 = -v532;
                  }

                  else
                  {
                    v343 = 0;
                  }

                  v62 = &v342[2 * v343];
                  v63 += v338;
                  --v339;
                }

                while (v339);
                v63 += 2 * v562;
                v344 = v597;
                v345 = &v597[2 * v566];
                v346 = -(v566 * v530);
                if (v345 < v564)
                {
                  v346 = 0;
                }

                v347 = &v345[2 * v346];
                v348 = v51 + 2 * v346 + 2 * v566;
                if (v564)
                {
                  v51 = v348;
                  v344 = v347;
                }

                v597 = v344;
                if (v564)
                {
                  v62 = v347;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v337 = v539 - 1;
                v599[0] = v539 - 1;
                if (v539 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 21:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v555 = v13;
              v361 = v43;
              v362 = v599[0];
              v363 = 2 * v43;
              while (1)
              {
                v540 = v362;
                v364 = v555;
                do
                {
                  if (v50)
                  {
                    v365 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_683;
                    }

                    if (!v9)
                    {
LABEL_681:
                      v366 = 255;
                      goto LABEL_682;
                    }
                  }

                  else
                  {
                    v365 = 255;
                    if (!v9)
                    {
                      goto LABEL_681;
                    }
                  }

                  v366 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v365;
                    goto LABEL_683;
                  }

LABEL_682:
                  v582 = v582 & 0xFFFFFFFFFFFF0000 | *v62;
                  v583 = v583 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAhardlightPDA(v583, v366, *v62, v365);
LABEL_683:
                  v367 = &v62[2 * v361];
                  if (v367 >= v51)
                  {
                    v368 = -v532;
                  }

                  else
                  {
                    v368 = 0;
                  }

                  v62 = &v367[2 * v368];
                  v63 += v363;
                  --v364;
                }

                while (v364);
                v63 += 2 * v562;
                v369 = v597;
                v370 = &v597[2 * v566];
                v371 = -(v566 * v530);
                if (v370 < v564)
                {
                  v371 = 0;
                }

                v372 = &v370[2 * v371];
                v373 = v51 + 2 * v371 + 2 * v566;
                if (v564)
                {
                  v51 = v373;
                  v369 = v372;
                }

                v597 = v369;
                if (v564)
                {
                  v62 = v372;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v362 = v540 - 1;
                v599[0] = v540 - 1;
                if (v540 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 22:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v558 = v13;
              v436 = v43;
              v437 = v599[0];
              v438 = 2 * v43;
              while (1)
              {
                v543 = v437;
                v439 = v558;
                do
                {
                  if (v50)
                  {
                    v440 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_814;
                    }

                    if (!v9)
                    {
LABEL_812:
                      v441 = 255;
                      goto LABEL_813;
                    }
                  }

                  else
                  {
                    v440 = 255;
                    if (!v9)
                    {
                      goto LABEL_812;
                    }
                  }

                  v441 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v440;
                    goto LABEL_814;
                  }

LABEL_813:
                  v578 = v578 & 0xFFFFFFFFFFFF0000 | *v62;
                  v579 = v579 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAdifferencePDA(v579, v441, *v62, v440);
LABEL_814:
                  v442 = &v62[2 * v436];
                  if (v442 >= v51)
                  {
                    v443 = -v532;
                  }

                  else
                  {
                    v443 = 0;
                  }

                  v62 = &v442[2 * v443];
                  v63 += v438;
                  --v439;
                }

                while (v439);
                v63 += 2 * v562;
                v444 = v597;
                v445 = &v597[2 * v566];
                v446 = -(v566 * v530);
                if (v445 < v564)
                {
                  v446 = 0;
                }

                v447 = &v445[2 * v446];
                v448 = v51 + 2 * v446 + 2 * v566;
                if (v564)
                {
                  v51 = v448;
                  v444 = v447;
                }

                v597 = v444;
                if (v564)
                {
                  v62 = v447;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v437 = v543 - 1;
                v599[0] = v543 - 1;
                if (v543 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 23:
              v462 = v599[0];
              while (1)
              {
                v463 = v13;
                do
                {
                  if (v50)
                  {
                    v464 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_861;
                    }

                    if (!v9)
                    {
LABEL_858:
                      v465 = 255;
LABEL_859:
                      v467 = 255 * (*v62 + *v63) - 2 * *v63 * *v62;
                      v468 = 255 * (v465 + v464) - v465 * v464;
                      v466 = (v467 + (v467 >> 8) + 1) >> 8;
                      v464 = (v468 + (v468 >> 8) + 1) >> 8;
                      goto LABEL_860;
                    }
                  }

                  else
                  {
                    v464 = 255;
                    if (!v9)
                    {
                      goto LABEL_858;
                    }
                  }

                  v465 = v63[1];
                  if (v63[1])
                  {
                    goto LABEL_859;
                  }

                  LOBYTE(v466) = *v62;
LABEL_860:
                  *v63 = v466;
                  v63[1] = v464;
LABEL_861:
                  v469 = &v62[2 * v43];
                  if (v469 >= v51)
                  {
                    v470 = -v532;
                  }

                  else
                  {
                    v470 = 0;
                  }

                  v62 = &v469[2 * v470];
                  v63 += 2 * v43;
                  --v463;
                }

                while (v463);
                v63 += 2 * v562;
                v471 = v597;
                v472 = &v597[2 * v566];
                if (v472 >= v564)
                {
                  v473 = -(v566 * v530);
                }

                else
                {
                  v473 = 0;
                }

                v474 = &v472[2 * v473];
                v475 = v51 + 2 * v473 + 2 * v566;
                if (v564)
                {
                  v51 = v475;
                  v471 = v474;
                }

                v597 = v471;
                if (v564)
                {
                  v62 = v474;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v599[0] = --v462;
                if (!v462)
                {
                  goto LABEL_950;
                }
              }

            case 24:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v551 = v13;
              v262 = v43;
              v263 = v599[0];
              v264 = 2 * v43;
              while (1)
              {
                v536 = v263;
                v265 = v551;
                do
                {
                  if (v50)
                  {
                    v266 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_503;
                    }

                    if (!v9)
                    {
LABEL_501:
                      v267 = 255;
                      goto LABEL_502;
                    }
                  }

                  else
                  {
                    v266 = 255;
                    if (!v9)
                    {
                      goto LABEL_501;
                    }
                  }

                  v267 = v63[1];
                  if (!v63[1])
                  {
                    *v63 = *v62;
                    v63[1] = v266;
                    goto LABEL_503;
                  }

LABEL_502:
                  v576 = v576 & 0xFFFFFFFFFFFF0000 | *v62;
                  v577 = v577 & 0xFFFFFFFFFFFF0000 | *v63;
                  *v63 = PDAhuePDA(v577, v267, *v62, v266);
LABEL_503:
                  v268 = &v62[2 * v262];
                  if (v268 >= v51)
                  {
                    v269 = -v532;
                  }

                  else
                  {
                    v269 = 0;
                  }

                  v62 = &v268[2 * v269];
                  v63 += v264;
                  --v265;
                }

                while (v265);
                v63 += 2 * v562;
                v270 = v597;
                v271 = &v597[2 * v566];
                v272 = -(v566 * v530);
                if (v271 < v564)
                {
                  v272 = 0;
                }

                v273 = &v271[2 * v272];
                v274 = v51 + 2 * v272 + 2 * v566;
                if (v564)
                {
                  v51 = v274;
                  v270 = v273;
                }

                v597 = v270;
                if (v564)
                {
                  v62 = v273;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v263 = v536 - 1;
                v599[0] = v536 - 1;
                if (v536 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 25:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v550 = v13;
              v249 = v43;
              v250 = v599[0];
              v251 = 2 * v43;
              while (1)
              {
                v535 = v250;
                v252 = v550;
                do
                {
                  if (v50)
                  {
                    v253 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_480;
                    }

                    if (!v9)
                    {
LABEL_477:
                      v254 = 255.0;
                      goto LABEL_478;
                    }
                  }

                  else
                  {
                    v253 = 255;
                    if (!v9)
                    {
                      goto LABEL_477;
                    }
                  }

                  if (v63[1])
                  {
                    v254 = v63[1];
LABEL_478:
                    v574 = v574 & 0xFFFFFFFFFFFF0000 | *v62;
                    v575 = v575 & 0xFFFFFFFFFFFF0000 | *v63;
                    *v63 = PDAhuePDA(v575, v254, *v62, v253);
                    goto LABEL_480;
                  }

                  *v63 = *v62;
                  v63[1] = v253;
LABEL_480:
                  v255 = &v62[2 * v249];
                  if (v255 >= v51)
                  {
                    v256 = -v532;
                  }

                  else
                  {
                    v256 = 0;
                  }

                  v62 = &v255[2 * v256];
                  v63 += v251;
                  --v252;
                }

                while (v252);
                v63 += 2 * v562;
                v257 = v597;
                v258 = &v597[2 * v566];
                v259 = -(v566 * v530);
                if (v258 < v564)
                {
                  v259 = 0;
                }

                v260 = &v258[2 * v259];
                v261 = v51 + 2 * v259 + 2 * v566;
                if (v564)
                {
                  v51 = v261;
                  v257 = v260;
                }

                v597 = v257;
                if (v564)
                {
                  v62 = v260;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v250 = v535 - 1;
                v599[0] = v535 - 1;
                if (v535 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 26:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v560 = v13;
              v476 = v43;
              v477 = v599[0];
              v478 = 2 * v43;
              while (1)
              {
                v545 = v477;
                v479 = v560;
                do
                {
                  if (v50)
                  {
                    v480 = v62[1];
                    if (!v62[1])
                    {
                      goto LABEL_886;
                    }

                    if (!v9)
                    {
LABEL_883:
                      v481 = 255.0;
                      goto LABEL_884;
                    }
                  }

                  else
                  {
                    v480 = 255;
                    if (!v9)
                    {
                      goto LABEL_883;
                    }
                  }

                  if (v63[1])
                  {
                    v481 = v63[1];
LABEL_884:
                    v572 = v572 & 0xFFFFFFFFFFFF0000 | *v62;
                    v570 = v570 & 0xFFFFFFFFFFFF0000 | *v63;
                    *v63 = PDAhuePDA(*v62, v480, *v63, v481);
                    goto LABEL_886;
                  }

                  *v63 = *v62;
                  v63[1] = v480;
LABEL_886:
                  v482 = &v62[2 * v476];
                  if (v482 >= v51)
                  {
                    v483 = -v532;
                  }

                  else
                  {
                    v483 = 0;
                  }

                  v62 = &v482[2 * v483];
                  v63 += v478;
                  --v479;
                }

                while (v479);
                v63 += 2 * v562;
                v484 = v597;
                v485 = &v597[2 * v566];
                v486 = -(v566 * v530);
                if (v485 < v564)
                {
                  v486 = 0;
                }

                v487 = &v485[2 * v486];
                v488 = v51 + 2 * v486 + 2 * v566;
                if (v564)
                {
                  v51 = v488;
                  v484 = v487;
                }

                v597 = v484;
                if (v564)
                {
                  v62 = v487;
                }

                else
                {
                  v62 += 2 * v566;
                }

                v477 = v545 - 1;
                v599[0] = v545 - 1;
                if (v545 == 1)
                {
                  goto LABEL_898;
                }
              }

            case 27:
              v526 = v32;
              v527 = v30;
              v528 = v31;
              v548 = v13;
              v160 = v43;
              v161 = v599[0];
              v162 = 2 * v43;
              break;
            default:
              goto LABEL_950;
          }

          break;
        }

LABEL_316:
        v533 = v161;
        v163 = v548;
        while (v50)
        {
          v164 = v62[1];
          if (v62[1])
          {
            if (v9)
            {
              goto LABEL_320;
            }

LABEL_323:
            v165 = 255.0;
            goto LABEL_324;
          }

LABEL_326:
          v166 = &v62[2 * v160];
          if (v166 >= v51)
          {
            v167 = -v532;
          }

          else
          {
            v167 = 0;
          }

          v62 = &v166[2 * v167];
          v63 += v162;
          if (!--v163)
          {
            v63 += 2 * v562;
            v168 = v597;
            v169 = &v597[2 * v566];
            v170 = -(v566 * v530);
            if (v169 < v564)
            {
              v170 = 0;
            }

            v171 = &v169[2 * v170];
            v172 = v51 + 2 * v170 + 2 * v566;
            if (v564)
            {
              v51 = v172;
              v168 = v171;
            }

            v597 = v168;
            if (v564)
            {
              v62 = v171;
            }

            else
            {
              v62 += 2 * v566;
            }

            v161 = v533 - 1;
            v599[0] = v533 - 1;
            if (v533 == 1)
            {
              goto LABEL_898;
            }

            goto LABEL_316;
          }
        }

        v164 = 255;
        if (!v9)
        {
          goto LABEL_323;
        }

LABEL_320:
        if (!v63[1])
        {
          *v63 = *v62;
          v63[1] = v164;
          goto LABEL_326;
        }

        v165 = v63[1];
LABEL_324:
        v567 = v567 & 0xFFFFFFFFFFFF0000 | *v62;
        v568 = v568 & 0xFFFFFFFFFFFF0000 | *v63;
        *v63 = PDAhuePDA(v568, v165, *v62, v164);
        goto LABEL_326;
      }

      v530 = 0;
      v66 = v43 * v13;
      v562 = v31 - v66;
      v51 = -1;
      v35 = v532;
    }

    else
    {
      LODWORD(v532) = *(v5 + 64);
      v530 = *(v5 + 68);
      v564 = v30 + 2 * v35 * v530;
      v50 = v8 != 0;
      if (v17)
      {
        v566 = *(v5 + 76) >> 1;
        v524 = *(v5 + 60);
        v525 = *(v5 + 56);
        v43 = 1;
        v597 = *(v5 + 88);
        v51 = v597;
        goto LABEL_46;
      }

      v562 = v31 - v13;
      if (v30)
      {
        v531 = 0;
        v60 = v34 % v532;
        v566 = *(v5 + 76) >> 1;
        v61 = v30 + 2 * v35 * (v33 % v530);
        v62 = (v61 + 2 * v60);
        v51 = v61 + 2 * v532;
        v43 = 1;
        v597 = v62;
        v63 = (*(v5 + 40) + 2 * v31 * *(v5 + 16) + 2 * *(v5 + 12));
        v524 = v33 % v530;
        v525 = v60;
        goto LABEL_308;
      }

      v524 = *(v5 + 60);
      v525 = *(v5 + 56);
      v51 = 0;
      v43 = 1;
      v66 = v13;
    }

    v531 = 0;
    v597 = 0;
    v564 = 0;
    v566 = v35 - v66;
    v62 = v30;
    v63 = v32;
    goto LABEL_308;
  }

  v18 = *(v5 + 128);
  if ((v18 | 8) == 8)
  {
    if ((*v5 & 0xFF00) == 0x400)
    {
      GRAYa8_mark_constmask(v5, v10, v6);
    }

    else
    {
      GRAYa8_mark_pixelmask(v5, v10);
    }

    return 1;
  }

  v44 = *(v5 + 112);
  v45 = *(v5 + 116);
  v46 = (v44 + 15) & 0xFFFFFFF0;
  v47 = v46 * v45;
  if (v47 <= 4096)
  {
    v49 = v609;
  }

  else
  {
    v48 = malloc_type_malloc(v47, 0x100004077774924uLL);
    if (!v48)
    {
      return 1;
    }

    v49 = v48;
    v17 = *(v12 + 136);
    v18 = *(v12 + 128);
  }

  CGSConvertBitsToMask(v17, *(v12 + 124), v49, v46, v44, v45, v18);
  v53 = *(v12 + 112);
  v605 = *(v12 + 96);
  v606 = v53;
  v54 = *(v12 + 144);
  v607 = *(v12 + 128);
  v608 = v54;
  v55 = *(v12 + 48);
  v601 = *(v12 + 32);
  v602 = v55;
  v56 = *(v12 + 80);
  v603 = *(v12 + 64);
  v604 = v56;
  v57 = *v12;
  v58 = *(v12 + 16);
  *v599 = *v12;
  v600 = v58;
  HIDWORD(v606) = (v44 + 15) & 0xFFFFFFF0;
  *(&v607 + 1) = v49;
  if (BYTE1(v599[0]) << 8 == 1024)
  {
    GRAYa8_mark_constmask(v599, v529, *&v57);
  }

  else
  {
    GRAYa8_mark_pixelmask(v599, v529);
  }

  if (v49 != v609)
  {
    v59 = v49;
LABEL_958:
    free(v59);
  }

  return 1;
}

void GRAYa8_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v357 = a3;
  v366 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 > 0x1FFFFFF)
  {
    return;
  }

  v7 = *(a1 + 28);
  v8 = *(a1 + 48);
  v363 = *(a1 + 40);
  v365 = v8;
  v9 = *(a2 + 184);
  v10 = *(a1 + 136);
  v11 = *(a2 + 96);
  v360 = *(a2 + 104);
  v361 = v11;
  v13 = *(a1 + 12);
  v12 = *(a1 + 16);
  v364 = *(a1 + 8);
  v356 = a2;
  v14 = *(a2 + 16);
  v15 = (v14 + 4) * v5;
  if (v15 > 65439)
  {
    v18 = malloc_type_calloc(1uLL, v15 + 96, 0xC5BCADE7uLL);
    v17 = v18;
    v20 = v18;
    v21 = v356;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a4);
    v17 = &v324 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v20 = 0;
    v21 = v356;
  }

  v326 = v20;
  v22 = ((v9 * 255.0) + 0.5);
  v23 = v7 >> 1;
  v24 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v24 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 2 * v5 + 15;
  v27 = v26 & 0xFFFFFFFFFFFFFFF0;
  if (v14)
  {
    v28 = v26 & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v28 = 0;
  }

  v29 = v25 + v28;
  v21[18] = v24;
  v21[19] = v25 + v28;
  v21[20] = v25;
  v30 = (v363 + 2 * v23 * v12 + 2 * v13);
  v327 = v4;
  v325 = v23;
  v359 = v23 - v4;
  v31 = *(a1 + 104);
  v32 = *(a1 + 108);
  v33 = *(a1 + 2);
  if (v33 == 6 || v33 == 1)
  {
    if (!v10)
    {
      goto LABEL_400;
    }

    v34 = 0;
    LODWORD(v363) = 0;
    v35 = *(a1 + 124);
    v36 = v10 + v35 * v32 + v31;
    v37 = v327;
    v358 = v35 - v327;
    v38 = v357;
    v39 = v356;
    goto LABEL_18;
  }

  if (!v10)
  {
    v358 = 0;
    v34 = 0;
    v36 = 0;
    LODWORD(v363) = 0;
    v38 = v357;
    v39 = v356;
    v37 = v327;
LABEL_18:
    v42 = v360;
    v41 = v361;
    goto LABEL_19;
  }

  shape_enum_clip_alloc(v18, v19, v10, 1, 1, 1, v31, v32, v4, v364);
  v42 = v360;
  v41 = v361;
  if (!v40)
  {
    goto LABEL_400;
  }

  v34 = v40;
  v43 = 0;
  v44 = ((v14 * v5 + 15) & 0xFFFFFFF0);
  if (!v14)
  {
    v44 = v27;
  }

  v358 = -v327;
  v36 = (v29 + v44 + 16);
  v39 = v356;
  while (1)
  {
LABEL_403:
    while (1)
    {
      v320 = *(v36 - 4);
      v321 = v320 - v43;
      if (v320 <= v43)
      {
        break;
      }

      v364 -= v321;
      if (v364 < 1)
      {
LABEL_399:
        free(v34);
        goto LABEL_400;
      }

      v41 += v39[16] * v321;
      v42 += v39[17] * v321;
      v30 += 2 * v325 * v321;
      v43 = v320;
    }

    if (v43 < *(v36 - 3) + v320)
    {
      break;
    }

    v322 = v34;
    v323 = shape_enum_clip_scan(v34, v36 - 4);
    v34 = v322;
    if (!v323)
    {
      goto LABEL_399;
    }
  }

  LODWORD(v363) = v43;
  v37 = v327;
  v38 = v357;
LABEL_19:
  v45 = v22 ^ 0xFF;
  v355 = (v4 - 1);
  v354 = -v37;
  v46 = v34;
  while (2)
  {
    v362 = v46;
    (*v39)(v39, v41, v42, v4);
    v50 = v39[20];
    v51 = v39[18];
    v52 = *(v39 + 2);
    if (v52 == *(v39 + 3))
    {
      if (v22 != 255)
      {
        v53 = v4;
        v54 = v39[18];
        do
        {
          if (*v54)
          {
            *v50 = (*v50 * v22 + ((*v50 * v22) >> 8) + 1) >> 8;
            v50[1] = (v50[1] * v22 + ((v50[1] * v22) >> 8) + 1) >> 8;
          }

          ++v54;
          v50 += 2;
          --v53;
        }

        while (v53);
        v50 += 2 * v354;
        v51 += v355 + v354 + 1;
      }
    }

    else
    {
      v55 = HIWORD(v52) & 0x3F;
      if (v55 == 32 || v55 == 16)
      {
        _CGHandleAssert("GRAYa8_image_pixel", 6877, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "bitdepth != 16 && bitdepth != 32", "Invalid bitdepth (%u)", v47, v48, v49, v55);
      }

      v57 = v39[19];
      if (v22 == 255)
      {
        v61 = 0;
        v62 = v50 + 1;
        do
        {
          if (v51[v61])
          {
            *(v62 - 1) = *(v57 + 2 * v61);
          }

          ++v61;
          v62 += 2;
        }

        while (v4 != v61);
      }

      else
      {
        v58 = 0;
        v59 = v50 + 1;
        do
        {
          if (v51[v58])
          {
            v60 = *(v57 + 2 * v58) * v45;
            *(v59 - 1) = *(v57 + 2 * v58) - ((v60 + (v60 >> 8) + 1) & 0xFF00 | ((HIBYTE(*(v57 + 2 * v58)) * v45 + ((HIBYTE(*(v57 + 2 * v58)) * v45) >> 8) + 1) >> 8));
          }

          ++v58;
          v59 += 2;
        }

        while (v4 != v58);
      }
    }

    switch(v38)
    {
      case 0:
        v63 = v4;
        v64 = v36;
        do
        {
          v65 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v65 = ((*v64 * v65 + ((*v64 * v65) >> 8) + 1) >> 8);
            }

            if (v65)
            {
              if (v65 == 255)
              {
                *v30 = 0;
              }

              else
              {
                v66 = v65 ^ 0xFF;
                *v30 = (*v30 * v66 + ((*v30 * v66) >> 8) + 1) >> 8;
                v30[1] = (v30[1] * v66 + ((v30[1] * v66) >> 8) + 1) >> 8;
              }
            }
          }

          ++v51;
          v64 += v36 != 0;
          v30 += 2;
          --v63;
        }

        while (v63);
        v36 = &v64[v358];
        goto LABEL_359;
      case 1:
        v189 = *v51;
        if (v36)
        {
          v152 = v30 - 2;
          v190 = v50 + 1;
          v191 = v51 + 1;
          v192 = v4;
          v156 = v363;
          do
          {
            if (v189)
            {
              v193 = *v36 * v189 + ((*v36 * v189) >> 8) + 1;
              if (BYTE1(v193))
              {
                if (BYTE1(v193) == 255)
                {
                  *(v152 + 1) = *(v190 - 1);
                }

                else
                {
                  v194 = v193 >> 8;
                  v195 = v194 * *(v190 - 1) + (v194 ^ 0xFF) * v152[2];
                  v152[2] = (v195 + (v195 >> 8) + 1) >> 8;
                  v152[3] = (v194 * *v190 + (v194 ^ 0xFF) * v152[3] + ((v194 * *v190 + (v194 ^ 0xFF) * v152[3]) >> 8) + 1) >> 8;
                }
              }
            }

            v196 = *v191++;
            v189 = v196;
            ++v36;
            v152 += 2;
            v190 += 2;
            --v192;
          }

          while (v192);
          goto LABEL_213;
        }

        v315 = v50 + 1;
        v316 = v51 + 1;
        v152 = v30 - 2;
        v317 = v4;
        v156 = v363;
        do
        {
          if (v189)
          {
            if (v189 == 255)
            {
              *(v152 + 1) = *(v315 - 1);
            }

            else
            {
              v318 = *(v315 - 1) * v189 + v152[2] * (v189 ^ 0xFF);
              v152[2] = (v318 + (v318 >> 8) + 1) >> 8;
              v152[3] = (*v315 * v189 + v152[3] * (v189 ^ 0xFF) + ((*v315 * v189 + v152[3] * (v189 ^ 0xFFu)) >> 8) + 1) >> 8;
            }
          }

          v319 = *v316++;
          v189 = v319;
          v315 += 2;
          v152 += 2;
          --v317;
        }

        while (v317);
        goto LABEL_396;
      case 2:
        v151 = *v51;
        if (v36)
        {
          v152 = v30 - 2;
          v153 = v50 + 1;
          v154 = v51 + 1;
          v155 = v4;
          v156 = v363;
          while (1)
          {
            if (!v151)
            {
              goto LABEL_168;
            }

            v157 = *v36 * v151 + ((*v36 * v151) >> 8) + 1;
            if (!BYTE1(v157))
            {
              goto LABEL_168;
            }

            if (BYTE1(v157) == 255)
            {
              v158 = *v153;
              if (*v153)
              {
                if (v158 == 255)
                {
                  v152[2] = *(v153 - 1);
                  LOBYTE(v159) = -1;
                }

                else
                {
                  v152[2] = *(v153 - 1) + ((v152[2] * (v158 ^ 0xFF) + ((v152[2] * (v158 ^ 0xFFu)) >> 8) + 1) >> 8);
                  v159 = v158 + ((v152[3] * (v158 ^ 0xFF) + ((v152[3] * (v158 ^ 0xFFu)) >> 8) + 1) >> 8);
                }

                goto LABEL_167;
              }
            }

            else
            {
              v160 = v157 >> 8;
              v161 = v160 * *v153 + ((v160 * *v153) >> 8) + 1;
              if (v161 >= 0x100)
              {
                v152[2] = ((((v161 >> 8) ^ 0xFF) * v152[2] + ((((v161 >> 8) ^ 0xFF) * v152[2]) >> 8) + 1) >> 8) + ((v160 * *(v153 - 1) + ((v160 * *(v153 - 1)) >> 8) + 1) >> 8);
                v159 = ((((v161 >> 8) ^ 0xFF) * v152[3] + ((((v161 >> 8) ^ 0xFF) * v152[3]) >> 8) + 1) >> 8) + (v161 >> 8);
LABEL_167:
                v152[3] = v159;
              }
            }

LABEL_168:
            v162 = *v154++;
            v151 = v162;
            ++v36;
            v152 += 2;
            v153 += 2;
            if (!--v155)
            {
LABEL_213:
              v36 += v358;
              goto LABEL_397;
            }
          }
        }

        v308 = v50 + 1;
        v309 = v51 + 1;
        v152 = v30 - 2;
        v310 = v4;
        v156 = v363;
        do
        {
          if (!v151)
          {
            goto LABEL_388;
          }

          if (v151 != 255)
          {
            v313 = *v308 * v151 + ((*v308 * v151) >> 8) + 1;
            if (v313 < 0x100)
            {
              goto LABEL_388;
            }

            v152[2] = ((((v313 >> 8) ^ 0xFF) * v152[2] + ((((v313 >> 8) ^ 0xFF) * v152[2]) >> 8) + 1) >> 8) + ((*(v308 - 1) * v151 + ((*(v308 - 1) * v151) >> 8) + 1) >> 8);
            v311 = (((v313 >> 8) ^ 0xFF) * v152[3] + ((((v313 >> 8) ^ 0xFF) * v152[3]) >> 8) + 1) >> 8;
            goto LABEL_386;
          }

          v311 = *v308;
          if (!*v308)
          {
            goto LABEL_388;
          }

          if (v311 != 255)
          {
            v152[2] = *(v308 - 1) + ((v152[2] * (v311 ^ 0xFF) + ((v152[2] * (v311 ^ 0xFF)) >> 8) + 1) >> 8);
            v313 = v152[3] * (v311 ^ 0xFF) + ((v152[3] * (v311 ^ 0xFF)) >> 8) + 1;
LABEL_386:
            v312 = v311 + (v313 >> 8);
            goto LABEL_387;
          }

          v152[2] = *(v308 - 1);
          LOBYTE(v312) = -1;
LABEL_387:
          v152[3] = v312;
LABEL_388:
          v314 = *v309++;
          v151 = v314;
          v308 += 2;
          v152 += 2;
          --v310;
        }

        while (v310);
LABEL_396:
        v36 = 0;
LABEL_397:
        v30 = &v152[2 * v359 + 2];
        v296 = v364;
LABEL_361:
        v297 = v296 - 1;
        if (v297)
        {
          v364 = v297;
          v46 = 0;
          LODWORD(v363) = v156 + 1;
          v41 += v39[16];
          v42 += v39[17];
          v34 = v362;
          if (v362)
          {
            v43 = v363;
            goto LABEL_403;
          }

          continue;
        }

        v34 = v362;
        if (v362)
        {
          goto LABEL_399;
        }

LABEL_400:
        if (v326)
        {
          free(v326);
        }

        return;
      case 3:
        v172 = v50 + 1;
        v173 = v30 + 1;
        v174 = v4;
        v109 = v36;
        do
        {
          v110 = v173;
          v175 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v175 = ((*v109 * v175 + ((*v109 * v175) >> 8) + 1) >> 8);
            }

            if (v175)
            {
              if (v175 == 255)
              {
                v176 = v30 + 1;
                v177 = *v110;
                *(v110 - 1) = (v177 * *(v172 - 1) + ((v177 * *(v172 - 1)) >> 8) + 1) >> 8;
                v178 = *v172 * v177;
              }

              else
              {
                v179 = *v110;
                v180 = (v179 * v175 + ((v179 * v175) >> 8) + 1) >> 8;
                v181 = v175 ^ 0xFF;
                v182 = *(v110 - 1) * v181 + v180 * *(v172 - 1);
                *(v110 - 1) = (v182 + (v182 >> 8) + 1) >> 8;
                v178 = v179 * v181 + v180 * *v172;
                v176 = v110;
              }

              *v176 = (v178 + (v178 >> 8) + 1) >> 8;
            }
          }

          ++v51;
          v109 += v36 != 0;
          v30 += 2;
          v172 += 2;
          v173 = v110 + 2;
          --v174;
        }

        while (v174);
        goto LABEL_193;
      case 4:
        v106 = v50 + 1;
        v107 = v30 + 1;
        v108 = v4;
        v109 = v36;
        do
        {
          v110 = v107;
          v111 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v111 = ((*v109 * v111 + ((*v109 * v111) >> 8) + 1) >> 8);
            }

            if (v111)
            {
              if (v111 == 255)
              {
                v112 = v30 + 1;
                v113 = *v110 ^ 0xFF;
                *(v110 - 1) = ((*v110 ^ 0xFF) * *(v106 - 1) + ((v113 * *(v106 - 1)) >> 8) + 1) >> 8;
                v114 = *v106 * v113;
              }

              else
              {
                v115 = *v110;
                v116 = ((v115 ^ 0xFF) * v111 + (((v115 ^ 0xFFu) * v111) >> 8) + 1) >> 8;
                v117 = v111 ^ 0xFF;
                v118 = *(v110 - 1) * v117 + v116 * *(v106 - 1);
                *(v110 - 1) = (v118 + (v118 >> 8) + 1) >> 8;
                v114 = v115 * v117 + v116 * *v106;
                v112 = v110;
              }

              *v112 = (v114 + (v114 >> 8) + 1) >> 8;
            }
          }

          ++v51;
          v109 += v36 != 0;
          v30 += 2;
          v106 += 2;
          v107 = v110 + 2;
          --v108;
        }

        while (v108);
LABEL_193:
        v36 = &v109[v358];
        v30 = &v110[2 * v359 + 1];
        goto LABEL_360;
      case 5:
        v215 = v50 + 1;
        v216 = v4;
        v89 = v36;
        while (1)
        {
          v217 = *v51;
          if (*v51)
          {
            if (!v36)
            {
              goto LABEL_245;
            }

            v218 = *v89 * v217 + ((*v89 * v217) >> 8) + 1;
            if (v218 >= 0x100)
            {
              break;
            }
          }

LABEL_246:
          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v215 += 2;
          if (!--v216)
          {
            goto LABEL_358;
          }
        }

        v217 = v218 >> 8;
LABEL_245:
        v217 = v217;
        v219 = (*(v215 - 1) * v217 + ((*(v215 - 1) * v217) >> 8) + 1) >> 8;
        v220 = *v215 * v217 + ((*v215 * v217) >> 8) + 1;
        v221 = v30[1];
        *v30 = (v219 * v221 + ((v220 >> 8) ^ 0xFF) * *v30 + ((v219 * v221 + ((v220 >> 8) ^ 0xFF) * *v30) >> 8) + 1) >> 8;
        v30[1] = ((((v220 >> 8) ^ 0xFF) + (v220 >> 8)) * v221 + (((((v220 >> 8) ^ 0xFF) + (v220 >> 8)) * v221) >> 8) + 1) >> 8;
        goto LABEL_246;
      case 6:
        v240 = v50 + 1;
        v241 = v4;
        v89 = v36;
        while (1)
        {
          v242 = *v51;
          if (*v51)
          {
            if (!v36)
            {
              goto LABEL_279;
            }

            v243 = *v89 * v242 + ((*v89 * v242) >> 8) + 1;
            if (v243 >= 0x100)
            {
              break;
            }
          }

LABEL_284:
          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v240 += 2;
          if (!--v241)
          {
            goto LABEL_358;
          }
        }

        v242 = v243 >> 8;
LABEL_279:
        v244 = v30[1];
        if (v244 != 0xFF)
        {
          if (~v244 == 255)
          {
            v242 = v242;
            *v30 = (*(v240 - 1) * v242 + ((*(v240 - 1) * v242) >> 8) + 1) >> 8;
            v245 = (*v240 * v242 + ((*v240 * v242) >> 8) + 1) >> 8;
          }

          else
          {
            v246 = (~v244 * v242 + ((~v244 * v242) >> 8) + 1) >> 8;
            *v30 += (v246 * *(v240 - 1) + ((v246 * *(v240 - 1)) >> 8) + 1) >> 8;
            v245 = v244 + ((v246 * *v240 + ((v246 * *v240) >> 8) + 1) >> 8);
          }

          v30[1] = v245;
        }

        goto LABEL_284;
      case 7:
        v183 = v50 + 1;
        v184 = v4;
        v89 = v36;
        do
        {
          v185 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v185 = ((*v89 * v185 + ((*v89 * v185) >> 8) + 1) >> 8);
            }

            if (v185)
            {
              if (v185 == 255)
              {
                v186 = *v183;
                *v30 = (v186 * *v30 + ((v186 * *v30) >> 8) + 1) >> 8;
                v187 = v30 + 1;
                v188 = v30[1];
              }

              else
              {
                v188 = (v185 ^ 0xFF) + ((*v183 * v185 + ((*v183 * v185) >> 8) + 1) >> 8);
                *v30 = (v188 * *v30 + ((v188 * *v30) >> 8) + 1) >> 8;
                v187 = v30 + 1;
                v186 = v30[1];
              }

              *v187 = (v188 * v186 + ((v188 * v186) >> 8) + 1) >> 8;
            }
          }

          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v183 += 2;
          --v184;
        }

        while (v184);
        goto LABEL_358;
      case 8:
        v263 = v50 + 1;
        v264 = v4;
        v89 = v36;
        do
        {
          v265 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v265 = ((*v89 * v265 + ((*v89 * v265) >> 8) + 1) >> 8);
            }

            if (v265)
            {
              if (v265 == 255)
              {
                v266 = *v263 ^ 0xFF;
                *v30 = ((*v263 ^ 0xFF) * *v30 + ((v266 * *v30) >> 8) + 1) >> 8;
                v267 = v30 + 1;
                v268 = v30[1];
              }

              else
              {
                v268 = (v265 ^ 0xFF) + (((*v263 ^ 0xFF) * v265 + (((*v263 ^ 0xFFu) * v265) >> 8) + 1) >> 8);
                *v30 = (v268 * *v30 + ((v268 * *v30) >> 8) + 1) >> 8;
                v267 = v30 + 1;
                v266 = v30[1];
              }

              *v267 = (v268 * v266 + ((v268 * v266) >> 8) + 1) >> 8;
            }
          }

          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v263 += 2;
          --v264;
        }

        while (v264);
        goto LABEL_358;
      case 9:
        v125 = v50 + 1;
        v126 = v4;
        v89 = v36;
        while (1)
        {
          v127 = *v51;
          if (*v51)
          {
            if (!v36)
            {
              goto LABEL_127;
            }

            v128 = *v89 * v127 + ((*v89 * v127) >> 8) + 1;
            if (v128 >= 0x100)
            {
              break;
            }
          }

LABEL_128:
          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v125 += 2;
          if (!--v126)
          {
            goto LABEL_358;
          }
        }

        v127 = v128 >> 8;
LABEL_127:
        v129 = *v125 * v127;
        v130 = v30[1];
        v131 = *(v125 - 1) * v127 * ~v130;
        v132 = v129 + ~v127;
        *v30 = v131 + v132 * *v30;
        v30[1] = v129 * ~v130 + v132 * v130;
        goto LABEL_128;
      case 10:
        v256 = v50 + 1;
        v257 = v4;
        v89 = v36;
        while (1)
        {
          v258 = *v51;
          if (*v51)
          {
            if (!v36)
            {
              goto LABEL_304;
            }

            v259 = *v89 * v258 + ((*v89 * v258) >> 8) + 1;
            if (v259 >= 0x100)
            {
              break;
            }
          }

LABEL_305:
          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v256 += 2;
          if (!--v257)
          {
            goto LABEL_358;
          }
        }

        v258 = v259 >> 8;
LABEL_304:
        v258 = v258;
        v260 = (*(v256 - 1) * v258 + ((*(v256 - 1) * v258) >> 8) + 1) >> 8;
        v261 = (*v256 * v258 + ((*v256 * v258) >> 8) + 1) >> 8;
        v262 = v30[1];
        *v30 = (v260 * (v262 ^ 0xFF) + (v261 ^ 0xFF) * *v30 + ((v260 * (v262 ^ 0xFF) + (v261 ^ 0xFF) * *v30) >> 8) + 1) >> 8;
        v30[1] = (v261 * (v262 ^ 0xFF) + (v261 ^ 0xFF) * v262 + ((v261 * (v262 ^ 0xFF) + (v261 ^ 0xFF) * v262) >> 8) + 1) >> 8;
        goto LABEL_305;
      case 11:
        v97 = v50 + 1;
        v98 = v4;
        v89 = v36;
        while (1)
        {
          v99 = *v51;
          if (*v51)
          {
            if (!v36)
            {
              goto LABEL_97;
            }

            v100 = *v89 * v99 + ((*v89 * v99) >> 8) + 1;
            if (v100 >= 0x100)
            {
              break;
            }
          }

LABEL_101:
          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v97 += 2;
          if (!--v98)
          {
            goto LABEL_358;
          }
        }

        v99 = v100 >> 8;
LABEL_97:
        if (v365)
        {
          v101 = v30[1];
        }

        else
        {
          v101 = 255;
        }

        v99 = v99;
        v102 = (*(v97 - 1) * v99 + ((*(v97 - 1) * v99) >> 8) + 1) >> 8;
        v103 = (*v97 * v99 + ((*v97 * v99) >> 8) + 1) >> 8;
        v104 = ((v103 - v102) | (v103 << 16)) + (v101 - *v30) + (v101 << 16);
        v105 = (255 * ((v104 >> 8) & 0x10001)) | v104;
        *v30 = BYTE2(v105) - v105;
        v30[1] = BYTE2(v105);
        goto LABEL_101;
      case 12:
        v119 = v50 + 1;
        v120 = v4;
        v89 = v36;
        while (1)
        {
          v121 = *v51;
          if (*v51)
          {
            if (!v36)
            {
              goto LABEL_119;
            }

            v122 = *v89 * v121 + ((*v89 * v121) >> 8) + 1;
            if (v122 >= 0x100)
            {
              break;
            }
          }

LABEL_120:
          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v119 += 2;
          if (!--v120)
          {
            goto LABEL_358;
          }
        }

        v121 = v122 >> 8;
LABEL_119:
        v123 = ((*v30 | (*v30 << 8)) & 0xFF00FF) + ((*(v119 - 1) * v121 + ((*(v119 - 1) * v121) >> 8) + 1) >> 8) + ((257 * *v119 * v121 + 256) & 0xFF0000);
        v124 = (255 * ((v123 >> 8) & 0x10001)) | v123;
        *v30 = v124;
        v30[1] = BYTE2(v124);
        goto LABEL_120;
      case 13:
        v360 = v42;
        v361 = v41;
        v231 = v50 + 1;
        v232 = v4;
        v79 = v36;
        while (1)
        {
          v233 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v234 = *v79 * v233 + ((*v79 * v233) >> 8) + 1;
              if (v234 < 0x100)
              {
                goto LABEL_272;
              }

              v233 = v234 >> 8;
            }

            v235 = v233;
            v236 = *v231 * v235 + ((*v231 * v235) >> 8) + 1;
            if (v236 >= 0x100)
            {
              v237 = (*(v231 - 1) * v235 + ((*(v231 - 1) * v235) >> 8) + 1) >> 8;
              if (!v365)
              {
                v238 = 255;
LABEL_271:
                v239 = *v30;
                v346 = v346 & 0xFFFFFFFFFFFF0000 | *v30;
                v347 = v347 & 0xFFFFFFFFFFFF0000 | v236 & 0xFF00 | v237;
                *v30 = PDAmultiplyPDA(v239, v238, v347, BYTE1(v236));
                goto LABEL_272;
              }

              v238 = v30[1];
              if (v30[1])
              {
                goto LABEL_271;
              }

              *v30 = v237;
              v30[1] = BYTE1(v236);
            }
          }

LABEL_272:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v231 += 2;
          if (!--v232)
          {
            goto LABEL_343;
          }
        }

      case 14:
        v87 = v50 + 1;
        v88 = v4;
        v89 = v36;
        while (1)
        {
          v90 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v91 = *v89 * v90 + ((*v89 * v90) >> 8) + 1;
              if (v91 < 0x100)
              {
                goto LABEL_90;
              }

              v90 = v91 >> 8;
            }

            v90 = v90;
            v92 = *v87 * v90 + ((*v87 * v90) >> 8) + 1;
            if (v92 >= 0x100)
            {
              v93 = (*(v87 - 1) * v90 + ((*(v87 - 1) * v90) >> 8) + 1) >> 8;
              v94 = v92 >> 8;
              if (v365)
              {
                v95 = v30[1];
                if (!v30[1])
                {
                  goto LABEL_89;
                }
              }

              else
              {
                v95 = 255;
              }

              v96 = (*v30 ^ 0xFF) * v93 - *v30 + (*v30 << 8);
              v93 = (v96 + (v96 >> 8) + 1) >> 8;
              v94 = (255 * (v94 + v95) - v94 * v95 + ((255 * (v94 + v95) - v94 * v95) >> 8) + 1) >> 8;
LABEL_89:
              *v30 = v93;
              v30[1] = v94;
            }
          }

LABEL_90:
          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v87 += 2;
          if (!--v88)
          {
            goto LABEL_358;
          }
        }

      case 15:
        v360 = v42;
        v361 = v41;
        v163 = v50 + 1;
        v164 = v4;
        v79 = v36;
        while (1)
        {
          v165 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v166 = *v79 * v165 + ((*v79 * v165) >> 8) + 1;
              if (v166 < 0x100)
              {
                goto LABEL_181;
              }

              v165 = v166 >> 8;
            }

            v167 = v165;
            v168 = *v163 * v167 + ((*v163 * v167) >> 8) + 1;
            if (v168 >= 0x100)
            {
              v169 = (*(v163 - 1) * v167 + ((*(v163 - 1) * v167) >> 8) + 1) >> 8;
              if (!v365)
              {
                v170 = 255;
LABEL_180:
                v171 = *v30;
                v352 = v352 & 0xFFFFFFFFFFFF0000 | *v30;
                v353 = v353 & 0xFFFFFFFFFFFF0000 | v168 & 0xFF00 | v169;
                *v30 = PDAoverlayPDA(v171, v170, v169, BYTE1(v168));
                goto LABEL_181;
              }

              v170 = v30[1];
              if (v30[1])
              {
                goto LABEL_180;
              }

              *v30 = v169;
              v30[1] = BYTE1(v168);
            }
          }

LABEL_181:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v163 += 2;
          if (!--v164)
          {
            goto LABEL_343;
          }
        }

      case 16:
        v360 = v42;
        v361 = v41;
        v77 = v50 + 1;
        v78 = v4;
        v79 = v36;
        while (1)
        {
          v80 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v81 = *v79 * v80 + ((*v79 * v80) >> 8) + 1;
              if (v81 < 0x100)
              {
                goto LABEL_76;
              }

              v80 = v81 >> 8;
            }

            v82 = v80;
            v83 = *v77 * v82 + ((*v77 * v82) >> 8) + 1;
            if (v83 >= 0x100)
            {
              v84 = (*(v77 - 1) * v82 + ((*(v77 - 1) * v82) >> 8) + 1) >> 8;
              if (!v365)
              {
                v85 = 255;
LABEL_75:
                v86 = v349 & 0xFFFFFFFFFFFF0000 | *v30;
                v348 = v348 & 0xFFFFFFFFFFFF0000 | v83 & 0xFF00 | v84;
                v349 = v86;
                *v30 = PDAdarkenPDA(v86, v85, v84, BYTE1(v83));
                goto LABEL_76;
              }

              v85 = v30[1];
              if (v30[1])
              {
                goto LABEL_75;
              }

              *v30 = v84;
              v30[1] = BYTE1(v83);
            }
          }

LABEL_76:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v77 += 2;
          if (!--v78)
          {
            goto LABEL_343;
          }
        }

      case 17:
        v360 = v42;
        v361 = v41;
        v197 = v50 + 1;
        v198 = v4;
        v79 = v36;
        while (1)
        {
          v199 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v200 = *v79 * v199 + ((*v79 * v199) >> 8) + 1;
              if (v200 < 0x100)
              {
                goto LABEL_225;
              }

              v199 = v200 >> 8;
            }

            v201 = v199;
            v202 = *v197 * v201 + ((*v197 * v201) >> 8) + 1;
            if (v202 >= 0x100)
            {
              v203 = (*(v197 - 1) * v201 + ((*(v197 - 1) * v201) >> 8) + 1) >> 8;
              if (!v365)
              {
                v204 = 255;
LABEL_224:
                v205 = v351 & 0xFFFFFFFFFFFF0000 | *v30;
                v350 = v350 & 0xFFFFFFFFFFFF0000 | v202 & 0xFF00 | v203;
                v351 = v205;
                *v30 = PDAlightenPDA(v205, v204, v203, BYTE1(v202));
                goto LABEL_225;
              }

              v204 = v30[1];
              if (v30[1])
              {
                goto LABEL_224;
              }

              *v30 = v203;
              v30[1] = BYTE1(v202);
            }
          }

LABEL_225:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v197 += 2;
          if (!--v198)
          {
            goto LABEL_343;
          }
        }

      case 18:
        v360 = v42;
        v361 = v41;
        v247 = v50 + 1;
        v248 = v4;
        v79 = v36;
        while (1)
        {
          v249 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v250 = *v79 * v249 + ((*v79 * v249) >> 8) + 1;
              if (v250 < 0x100)
              {
                goto LABEL_297;
              }

              v249 = v250 >> 8;
            }

            v251 = v249;
            v252 = *v247 * v251 + ((*v247 * v251) >> 8) + 1;
            if (v252 >= 0x100)
            {
              v253 = (*(v247 - 1) * v251 + ((*(v247 - 1) * v251) >> 8) + 1) >> 8;
              if (!v365)
              {
                v254 = 255;
LABEL_296:
                v255 = *v30;
                v345 = v345 & 0xFFFFFFFFFFFF0000 | *v30;
                v344 = v344 & 0xFFFFFFFFFFFF0000 | v252 & 0xFF00 | v253;
                *v30 = PDAcolordodgePDA(v255, v254, v344, BYTE1(v252));
                goto LABEL_297;
              }

              v254 = v30[1];
              if (v30[1])
              {
                goto LABEL_296;
              }

              *v30 = v253;
              v30[1] = BYTE1(v252);
            }
          }

LABEL_297:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v247 += 2;
          if (!--v248)
          {
            goto LABEL_343;
          }
        }

      case 19:
        v360 = v42;
        v361 = v41;
        v278 = v50 + 1;
        v279 = v4;
        v79 = v36;
        while (1)
        {
          v280 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v281 = *v79 * v280 + ((*v79 * v280) >> 8) + 1;
              if (v281 < 0x100)
              {
                goto LABEL_342;
              }

              v280 = v281 >> 8;
            }

            v282 = v280;
            v283 = *v278 * v282 + ((*v278 * v282) >> 8) + 1;
            if (v283 >= 0x100)
            {
              v284 = (*(v278 - 1) * v282 + ((*(v278 - 1) * v282) >> 8) + 1) >> 8;
              if (!v365)
              {
                v285 = 255;
LABEL_341:
                v286 = *v30;
                v343 = v343 & 0xFFFFFFFFFFFF0000 | *v30;
                v342 = v342 & 0xFFFFFFFFFFFF0000 | v283 & 0xFF00 | v284;
                *v30 = PDAcolorburnPDA(v286, v285, v342, BYTE1(v283));
                goto LABEL_342;
              }

              v285 = v30[1];
              if (v30[1])
              {
                goto LABEL_341;
              }

              *v30 = v284;
              v30[1] = BYTE1(v283);
            }
          }

LABEL_342:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v278 += 2;
          if (!--v279)
          {
            goto LABEL_343;
          }
        }

      case 20:
        v360 = v42;
        v361 = v41;
        v206 = v50 + 1;
        v207 = v4;
        v79 = v36;
        while (1)
        {
          v208 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v209 = *v79 * v208 + ((*v79 * v208) >> 8) + 1;
              if (v209 < 0x100)
              {
                goto LABEL_238;
              }

              v208 = v209 >> 8;
            }

            v210 = v208;
            v211 = *v206 * v210 + ((*v206 * v210) >> 8) + 1;
            if (v211 >= 0x100)
            {
              v212 = (*(v206 - 1) * v210 + ((*(v206 - 1) * v210) >> 8) + 1) >> 8;
              if (!v365)
              {
                v213 = 255;
LABEL_237:
                v214 = *v30;
                v339 = v339 & 0xFFFFFFFFFFFF0000 | *v30;
                v338 = v338 & 0xFFFFFFFFFFFF0000 | v211 & 0xFF00 | v212;
                *v30 = PDAsoftlightPDA(v214, v213, v338, BYTE1(v211));
                goto LABEL_238;
              }

              v213 = v30[1];
              if (v30[1])
              {
                goto LABEL_237;
              }

              *v30 = v212;
              v30[1] = BYTE1(v211);
            }
          }

LABEL_238:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v206 += 2;
          if (!--v207)
          {
            goto LABEL_343;
          }
        }

      case 21:
        v360 = v42;
        v361 = v41;
        v222 = v50 + 1;
        v223 = v4;
        v79 = v36;
        while (1)
        {
          v224 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v225 = *v79 * v224 + ((*v79 * v224) >> 8) + 1;
              if (v225 < 0x100)
              {
                goto LABEL_259;
              }

              v224 = v225 >> 8;
            }

            v226 = v224;
            v227 = *v222 * v226 + ((*v222 * v226) >> 8) + 1;
            if (v227 >= 0x100)
            {
              v228 = (*(v222 - 1) * v226 + ((*(v222 - 1) * v226) >> 8) + 1) >> 8;
              if (!v365)
              {
                v229 = 255;
LABEL_258:
                v230 = *v30;
                v341 = v341 & 0xFFFFFFFFFFFF0000 | *v30;
                v340 = v340 & 0xFFFFFFFFFFFF0000 | v227 & 0xFF00 | v228;
                *v30 = PDAhardlightPDA(v230, v229, v340, BYTE1(v227));
                goto LABEL_259;
              }

              v229 = v30[1];
              if (v30[1])
              {
                goto LABEL_258;
              }

              *v30 = v228;
              v30[1] = BYTE1(v227);
            }
          }

LABEL_259:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v222 += 2;
          if (!--v223)
          {
            goto LABEL_343;
          }
        }

      case 22:
        v360 = v42;
        v361 = v41;
        v269 = v50 + 1;
        v270 = v4;
        v79 = v36;
        while (1)
        {
          v271 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v272 = *v79 * v271 + ((*v79 * v271) >> 8) + 1;
              if (v272 < 0x100)
              {
                goto LABEL_329;
              }

              v271 = v272 >> 8;
            }

            v273 = v271;
            v274 = *v269 * v273 + ((*v269 * v273) >> 8) + 1;
            if (v274 >= 0x100)
            {
              v275 = (*(v269 - 1) * v273 + ((*(v269 - 1) * v273) >> 8) + 1) >> 8;
              if (!v365)
              {
                v276 = 255;
LABEL_328:
                v277 = *v30;
                v337 = v337 & 0xFFFFFFFFFFFF0000 | *v30;
                v336 = v336 & 0xFFFFFFFFFFFF0000 | v274 & 0xFF00 | v275;
                *v30 = PDAdifferencePDA(v277, v276, v336, BYTE1(v274));
                goto LABEL_329;
              }

              v276 = v30[1];
              if (v30[1])
              {
                goto LABEL_328;
              }

              *v30 = v275;
              v30[1] = BYTE1(v274);
            }
          }

LABEL_329:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v269 += 2;
          if (!--v270)
          {
            goto LABEL_343;
          }
        }

      case 23:
        v287 = v50 + 1;
        v288 = v4;
        v89 = v36;
        while (1)
        {
          v289 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v290 = *v89 * v289 + ((*v89 * v289) >> 8) + 1;
              if (v290 < 0x100)
              {
                goto LABEL_357;
              }

              v289 = v290 >> 8;
            }

            v289 = v289;
            v291 = *v287 * v289 + ((*v287 * v289) >> 8) + 1;
            if (v291 >= 0x100)
            {
              v292 = (*(v287 - 1) * v289 + ((*(v287 - 1) * v289) >> 8) + 1) >> 8;
              v293 = v291 >> 8;
              if (v365)
              {
                v294 = v30[1];
                if (!v30[1])
                {
                  goto LABEL_356;
                }
              }

              else
              {
                v294 = 255;
              }

              v295 = 255 * (v292 + *v30) - 2 * v292 * *v30;
              v292 = (v295 + (v295 >> 8) + 1) >> 8;
              v293 = (255 * (v293 + v294) - v293 * v294 + ((255 * (v293 + v294) - v293 * v294) >> 8) + 1) >> 8;
LABEL_356:
              *v30 = v292;
              v30[1] = v293;
            }
          }

LABEL_357:
          ++v51;
          v89 += v36 != 0;
          v30 += 2;
          v287 += 2;
          if (!--v288)
          {
LABEL_358:
            v36 = &v89[v358];
LABEL_359:
            v30 += 2 * v359;
            goto LABEL_360;
          }
        }

      case 24:
        v360 = v42;
        v361 = v41;
        v142 = v50 + 1;
        v143 = v4;
        v79 = v36;
        while (1)
        {
          v144 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v145 = *v79 * v144 + ((*v79 * v144) >> 8) + 1;
              if (v145 < 0x100)
              {
                goto LABEL_154;
              }

              v144 = v145 >> 8;
            }

            v146 = v144;
            v147 = *v142 * v146 + ((*v142 * v146) >> 8) + 1;
            if (v147 >= 0x100)
            {
              v148 = (*(v142 - 1) * v146 + ((*(v142 - 1) * v146) >> 8) + 1) >> 8;
              if (!v365)
              {
                v149 = 255;
LABEL_153:
                v150 = *v30;
                v335 = v335 & 0xFFFFFFFFFFFF0000 | *v30;
                v334 = v334 & 0xFFFFFFFFFFFF0000 | v147 & 0xFF00 | v148;
                *v30 = PDAhuePDA(v150, v149, v334, BYTE1(v147));
                goto LABEL_154;
              }

              v149 = v30[1];
              if (v30[1])
              {
                goto LABEL_153;
              }

              *v30 = v148;
              v30[1] = BYTE1(v147);
            }
          }

LABEL_154:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v142 += 2;
          if (!--v143)
          {
            goto LABEL_343;
          }
        }

      case 25:
        v360 = v42;
        v361 = v41;
        v133 = v50 + 1;
        v134 = v4;
        v79 = v36;
        while (1)
        {
          v135 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v136 = *v79 * v135 + ((*v79 * v135) >> 8) + 1;
              if (v136 < 0x100)
              {
                goto LABEL_141;
              }

              v135 = v136 >> 8;
            }

            v137 = v135;
            v138 = *v133 * v137 + ((*v133 * v137) >> 8) + 1;
            if (v138 >= 0x100)
            {
              v139 = (*(v133 - 1) * v137 + ((*(v133 - 1) * v137) >> 8) + 1) >> 8;
              if (!v365)
              {
                v140 = 255;
LABEL_140:
                v141 = *v30;
                v333 = v333 & 0xFFFFFFFFFFFF0000 | *v30;
                v332 = v332 & 0xFFFFFFFFFFFF0000 | v138 & 0xFF00 | v139;
                *v30 = PDAhuePDA(v141, v140, v332, BYTE1(v138));
                goto LABEL_141;
              }

              v140 = v30[1];
              if (v30[1])
              {
                goto LABEL_140;
              }

              *v30 = v139;
              v30[1] = BYTE1(v138);
            }
          }

LABEL_141:
          ++v51;
          v79 += v36 != 0;
          v30 += 2;
          v133 += 2;
          if (!--v134)
          {
LABEL_343:
            v36 = &v79[v358];
LABEL_344:
            v42 = v360;
            v30 += 2 * v359;
            v38 = v357;
            v39 = v356;
            v41 = v361;
LABEL_360:
            v296 = v364;
            v156 = v363;
            goto LABEL_361;
          }
        }

      case 26:
        v360 = v42;
        v361 = v41;
        v298 = v50 + 1;
        v299 = v4;
        v68 = v36;
        while (1)
        {
          v300 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v301 = *v68 * v300 + ((*v68 * v300) >> 8) + 1;
              if (v301 < 0x100)
              {
                goto LABEL_375;
              }

              v300 = v301 >> 8;
            }

            v302 = v300;
            v303 = *v298 * v302 + ((*v298 * v302) >> 8) + 1;
            if (v303 >= 0x100)
            {
              v304 = (*(v298 - 1) * v302 + ((*(v298 - 1) * v302) >> 8) + 1) >> 8;
              if (!v365)
              {
                v305 = 255;
LABEL_374:
                v306 = *v30;
                v307 = *v30;
                v331 = v331 & 0xFFFFFFFFFFFF0000 | v303 & 0xFF00 | v304;
                v330 = v330 & 0xFFFFFFFFFFFF0000 | v306;
                *v30 = PDAhuePDA(v331, BYTE1(v303), v307, v305);
                goto LABEL_375;
              }

              v305 = v30[1];
              if (v30[1])
              {
                goto LABEL_374;
              }

              *v30 = v304;
              v30[1] = BYTE1(v303);
            }
          }

LABEL_375:
          ++v51;
          v68 += v36 != 0;
          v30 += 2;
          v298 += 2;
          if (!--v299)
          {
            goto LABEL_376;
          }
        }

      case 27:
        v360 = v42;
        v361 = v41;
        v67 = v50 + 1;
        v68 = v36;
        v69 = v4;
        while (1)
        {
          v70 = *v51;
          if (*v51)
          {
            if (v36)
            {
              v71 = *v68 * v70 + ((*v68 * v70) >> 8) + 1;
              if (v71 < 0x100)
              {
                goto LABEL_63;
              }

              v70 = v71 >> 8;
            }

            v72 = v70;
            v73 = *v67 * v72 + ((*v67 * v72) >> 8) + 1;
            if (v73 >= 0x100)
            {
              v74 = (*(v67 - 1) * v72 + ((*(v67 - 1) * v72) >> 8) + 1) >> 8;
              if (!v365)
              {
                v75 = 255;
LABEL_62:
                v76 = *v30;
                v329 = v329 & 0xFFFFFFFFFFFF0000 | *v30;
                v328 = v328 & 0xFFFFFFFFFFFF0000 | v73 & 0xFF00 | v74;
                *v30 = PDAhuePDA(v76, v75, v328, BYTE1(v73));
                goto LABEL_63;
              }

              v75 = v30[1];
              if (v30[1])
              {
                goto LABEL_62;
              }

              *v30 = v74;
              v30[1] = BYTE1(v73);
            }
          }

LABEL_63:
          ++v51;
          v68 += v36 != 0;
          v30 += 2;
          v67 += 2;
          if (!--v69)
          {
LABEL_376:
            v36 = &v68[v358];
            goto LABEL_344;
          }
        }

      default:
        goto LABEL_360;
    }
  }
}

uint64_t GRAYa8_mark_constmask(uint64_t result, int a2, int8x8_t a3)
{
  v5 = *(result + 136);
  if (v5)
  {
    v7 = *(result + 4);
    v6 = *(result + 8);
    v8 = *(result + 48);
    v9 = *(result + 88);
    a3.i8[0] = *v9;
    a3.i8[4] = v9[1];
    v10 = *(result + 28) >> 1;
    v11 = (*(result + 40) + 2 * v10 * *(result + 16) + 2 * *(result + 12));
    v12 = *(result + 124);
    v13 = v5 + *(result + 108) * v12 + *(result + 104);
    v14 = v12 - v7;
    result = v10 - v7;
    v227 = v14;
    v228 = result;
    switch(a2)
    {
      case 0:
        do
        {
          v15 = v7;
          do
          {
            v16 = *v13;
            if (*v13)
            {
              if (v16 == 255)
              {
                v11->i16[0] = 0;
              }

              else
              {
                v17 = v16 ^ 0xFF;
                v11->i8[0] = (v11->u8[0] * v17 + ((v11->u8[0] * v17) >> 8) + 1) >> 8;
                v11->i8[1] = (v11->u8[1] * v17 + ((v11->u8[1] * v17) >> 8) + 1) >> 8;
              }
            }

            ++v13;
            v11 = (v11 + 2);
            --v15;
          }

          while (v15);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 1:
        v121 = -1;
        v122 = v13 & 3;
        if ((v13 & 3) != 0)
        {
          v7 += v122;
          v121 = -1 << (8 * v122);
          v123 = v13 & 3;
          v13 &= 0xFFFFFFFFFFFFFFFCLL;
          v11 = (v11 - 2 * v123);
        }

        v124 = (v7 + v13) & 3;
        if (((v7 + v13) & 3) != 0)
        {
          v125 = 4 - v124;
          v122 += v125;
          v126 = 0xFFFFFFFF >> (8 * v125);
          if (v7 >= 4)
          {
            v124 = v126;
          }

          else
          {
            v124 = 0;
          }

          if (v7 >= 4)
          {
            v126 = -1;
          }

          v121 &= v126;
        }

        v127 = v14 - v122;
        v128 = result - v122;
        v129 = *v9;
        v130 = v9[1];
        do
        {
          v131 = *v13 & v121;
          v132 = v7 >> 2;
          result = v124;
          if (!v131)
          {
            goto LABEL_173;
          }

LABEL_171:
          if (v131 == -1)
          {
            v11->i8[0] = a3.i8[0];
            v11->i8[1] = a3.i8[4];
            v11->i8[2] = a3.i8[0];
            v11->i8[3] = a3.i8[4];
            v11->i8[4] = a3.i8[0];
            v11->i8[5] = a3.i8[4];
LABEL_191:
            v11->i8[6] = a3.i8[0];
            v11->i8[7] = a3.i8[4];
            goto LABEL_173;
          }

          while (1)
          {
            if (v131)
            {
              if (v131 == 255)
              {
                v11->i8[0] = a3.i8[0];
                v11->i8[1] = a3.i8[4];
              }

              else
              {
                v134 = v131 ^ 0xFF;
                v11->i8[0] = ((v134 * v11->u8[0] + ((v134 * v11->u8[0]) >> 8) + 1) >> 8) + ((v131 * v129 + ((v131 * v129) >> 8) + 1) >> 8);
                v11->i8[1] = ((v134 * v11->u8[1] + ((v134 * v11->u8[1]) >> 8) + 1) >> 8) + ((v131 * v130 + ((v131 * v130) >> 8) + 1) >> 8);
              }
            }

            if (BYTE1(v131))
            {
              if (BYTE1(v131) == 255)
              {
                v11->i8[2] = a3.i8[0];
                v11->i8[3] = a3.i8[4];
              }

              else
              {
                v135 = BYTE1(v131) ^ 0xFF;
                v11->i8[2] = ((v135 * v11->u8[2] + ((v135 * v11->u8[2]) >> 8) + 1) >> 8) + ((BYTE1(v131) * v129 + ((BYTE1(v131) * v129) >> 8) + 1) >> 8);
                v11->i8[3] = ((v135 * v11->u8[3] + ((v135 * v11->u8[3]) >> 8) + 1) >> 8) + ((BYTE1(v131) * v130 + ((BYTE1(v131) * v130) >> 8) + 1) >> 8);
              }
            }

            if (BYTE2(v131))
            {
              if (BYTE2(v131) == 255)
              {
                v11->i8[4] = a3.i8[0];
                v11->i8[5] = a3.i8[4];
              }

              else
              {
                v136 = BYTE2(v131) ^ 0xFF;
                v11->i8[4] = ((v136 * v11->u8[4] + ((v136 * v11->u8[4]) >> 8) + 1) >> 8) + ((BYTE2(v131) * v129 + ((BYTE2(v131) * v129) >> 8) + 1) >> 8);
                v11->i8[5] = ((v136 * v11->u8[5] + ((v136 * v11->u8[5]) >> 8) + 1) >> 8) + ((BYTE2(v131) * v130 + ((BYTE2(v131) * v130) >> 8) + 1) >> 8);
              }
            }

            v137 = HIBYTE(v131);
            if (v137 == 255)
            {
              goto LABEL_191;
            }

            if (v137)
            {
              v138 = v137 * v129 + ((v137 * v129) >> 8) + 1;
              v139 = v137 * v130 + ((v137 * v130) >> 8) + 1;
              v140 = v137 ^ 0xFF;
              v11->i8[6] = ((v140 * v11->u8[6] + ((v140 * v11->u8[6]) >> 8) + 1) >> 8) + BYTE1(v138);
              v11->i8[7] = ((v140 * v11->u8[7] + ((v140 * v11->u8[7]) >> 8) + 1) >> 8) + BYTE1(v139);
            }

LABEL_173:
            while (1)
            {
              v133 = v132;
              ++v11;
              --v132;
              v13 += 4;
              if (v133 < 2)
              {
                break;
              }

              v131 = *v13;
              if (*v13)
              {
                goto LABEL_171;
              }
            }

            if (!result)
            {
              break;
            }

            result = 0;
            v131 = *v13 & v124;
          }

          v13 += v127;
          v11 = (v11 + 2 * v128);
          v101 = __OFSUB__(v6--, 1);
        }

        while (!((v6 < 0) ^ v101 | (v6 == 0)));
        return result;
      case 2:
        v76 = vdup_lane_s8(a3, 4);
        *v77.i8 = vdup_lane_s8(a3, 0);
        v78 = -1;
        v79 = v13 & 3;
        if ((v13 & 3) != 0)
        {
          v7 += v79;
          v78 = -1 << (8 * v79);
          v80 = v13 & 3;
          v13 &= 0xFFFFFFFFFFFFFFFCLL;
          v11 = (v11 - 2 * v80);
        }

        v77.u64[1] = v76;
        v81 = (v7 + v13) & 3;
        if (((v7 + v13) & 3) != 0)
        {
          v82 = 4 - v81;
          v79 += v82;
          v83 = 0xFFFFFFFF >> (8 * v82);
          if (v7 >= 4)
          {
            v81 = 0xFFFFFFFF >> (8 * v82);
          }

          else
          {
            v81 = 0;
          }

          if (v7 >= 4)
          {
            v83 = -1;
          }

          v78 &= v83;
        }

        v84 = vqtbl1_s8(v77, 0xF060D040B020900);
        v85 = v14 - v79;
        v86 = a3.u8[0];
        v87 = a3.u8[4];
        v88 = vdupq_n_s16(~a3.i8[4]);
        v89 = result - v79;
        do
        {
          v90 = *v13 & v78;
          v91 = (v7 >> 2);
          v92 = v81;
          if (!v90)
          {
            goto LABEL_114;
          }

LABEL_112:
          if (v90 == -1)
          {
            v93 = vmovl_u8(*v11);
            v94 = vmull_u16(*v88.i8, *v93.i8);
            *v11 = vadd_s8(v84, vuzp1_s8(vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v94, v94, 8uLL)), 0x1000100010001), 8uLL), vshr_n_u16(vadd_s16(vmovn_s32(vmlal_high_u16(vshrq_n_u32(vmull_high_u16(v88, v93), 8uLL), v88, v93)), 0x1000100010001), 8uLL)));
            goto LABEL_114;
          }

          while (1)
          {
            if (v90)
            {
              v95 = v90 * v87 + ((v90 * v87) >> 8) + 1;
              v11->i8[0] = ((~(v95 >> 8) * v11->u8[0] + ((~(v95 >> 8) * v11->u8[0]) >> 8) + 1) >> 8) + ((v90 * v86 + ((v90 * v86) >> 8) + 1) >> 8);
              v11->i8[1] = ((~(v95 >> 8) * v11->u8[1] + ((~(v95 >> 8) * v11->u8[1]) >> 8) + 1) >> 8) + BYTE1(v95);
            }

            if ((v90 & 0xFF00) != 0)
            {
              v96 = BYTE1(v90) * v87 + ((BYTE1(v90) * v87) >> 8) + 1;
              v11->i8[2] = ((~(v96 >> 8) * v11->u8[2] + ((~(v96 >> 8) * v11->u8[2]) >> 8) + 1) >> 8) + ((BYTE1(v90) * v86 + ((BYTE1(v90) * v86) >> 8) + 1) >> 8);
              v11->i8[3] = ((~(v96 >> 8) * v11->u8[3] + ((~(v96 >> 8) * v11->u8[3]) >> 8) + 1) >> 8) + BYTE1(v96);
            }

            if ((v90 & 0xFF0000) != 0)
            {
              v97 = BYTE2(v90) * v87 + ((BYTE2(v90) * v87) >> 8) + 1;
              v11->i8[4] = ((~(v97 >> 8) * v11->u8[4] + ((~(v97 >> 8) * v11->u8[4]) >> 8) + 1) >> 8) + ((BYTE2(v90) * v86 + ((BYTE2(v90) * v86) >> 8) + 1) >> 8);
              v11->i8[5] = ((~(v97 >> 8) * v11->u8[5] + ((~(v97 >> 8) * v11->u8[5]) >> 8) + 1) >> 8) + BYTE1(v97);
            }

            v98 = HIBYTE(v90);
            if (v98)
            {
              v99 = v98 * v86 + ((v98 * v86) >> 8) + 1;
              v100 = v98 * v87 + ((v98 * v87) >> 8) + 1;
              v11->i8[6] = ((~(v100 >> 8) * v11->u8[6] + ((~(v100 >> 8) * v11->u8[6]) >> 8) + 1) >> 8) + BYTE1(v99);
              v11->i8[7] = ((~(v100 >> 8) * v11->u8[7] + ((~(v100 >> 8) * v11->u8[7]) >> 8) + 1) >> 8) + BYTE1(v100);
            }

LABEL_114:
            while (1)
            {
              result = v91;
              ++v11;
              v91 = (v91 - 1);
              v13 += 4;
              if (result < 2)
              {
                break;
              }

              v90 = *v13;
              if (*v13)
              {
                goto LABEL_112;
              }
            }

            if (!v92)
            {
              break;
            }

            v92 = 0;
            v90 = *v13 & v81;
          }

          v13 += v85;
          v11 = (v11 + 2 * v89);
          v101 = __OFSUB__(v6--, 1);
        }

        while (!((v6 < 0) ^ v101 | (v6 == 0)));
        return result;
      case 3:
        do
        {
          v109 = v7;
          do
          {
            v110 = *v13;
            if (*v13)
            {
              if (v110 == 255)
              {
                v111 = v11->u8[1];
                v112 = (v111 * a3.u8[0] + ((v111 * a3.u8[0]) >> 8) + 1) >> 8;
                v113 = (v111 * a3.u8[4] + ((v111 * a3.u8[4]) >> 8) + 1) >> 8;
                v11->i8[0] = v112;
              }

              else
              {
                v114 = v11->u8[1];
                v115 = (v114 * v110 + ((v114 * v110) >> 8) + 1) >> 8;
                v116 = v110 ^ 0xFF;
                v11->i8[0] = ((v115 * a3.u8[0] + ((v115 * a3.u8[0]) >> 8) + 1) >> 8) + ((v11->u8[0] * v116 + ((v11->u8[0] * v116) >> 8) + 1) >> 8);
                v113 = ((v115 * a3.u8[4] + ((v115 * a3.u8[4]) >> 8) + 1) >> 8) + ((v114 * v116 + ((v114 * v116) >> 8) + 1) >> 8);
              }

              v11->i8[1] = v113;
            }

            ++v13;
            v11 = (v11 + 2);
            --v109;
          }

          while (v109);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 4:
        do
        {
          v45 = v7;
          do
          {
            v46 = *v13;
            if (*v13)
            {
              if (v46 == 255)
              {
                v47 = v11->u8[1] ^ 0xFF;
                v48 = (v47 * a3.u8[0] + ((v47 * a3.u8[0]) >> 8) + 1) >> 8;
                v49 = (v47 * a3.u8[4] + ((v47 * a3.u8[4]) >> 8) + 1) >> 8;
                v11->i8[0] = v48;
              }

              else
              {
                v50 = v11->u8[1];
                v51 = ((v50 ^ 0xFF) * v46 + (((v50 ^ 0xFFu) * v46) >> 8) + 1) >> 8;
                v52 = v46 ^ 0xFF;
                v11->i8[0] = ((v51 * a3.u8[0] + ((v51 * a3.u8[0]) >> 8) + 1) >> 8) + ((v11->u8[0] * v52 + ((v11->u8[0] * v52) >> 8) + 1) >> 8);
                v49 = ((v51 * a3.u8[4] + ((v51 * a3.u8[4]) >> 8) + 1) >> 8) + ((v50 * v52 + ((v50 * v52) >> 8) + 1) >> 8);
              }

              v11->i8[1] = v49;
            }

            ++v13;
            v11 = (v11 + 2);
            --v45;
          }

          while (v45);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 5:
        do
        {
          v155 = v7;
          do
          {
            v156 = *v13;
            if (*v13)
            {
              v157 = v156 * a3.u8[0] + ((v156 * a3.u8[0]) >> 8) + 1;
              v158 = v156 * a3.u8[4] + ((v156 * a3.u8[4]) >> 8) + 1;
              v159 = v158 >> 8;
              v160 = v11->u8[1];
              v161 = BYTE1(v158) ^ 0xFF;
              v11->i8[0] = (BYTE1(v157) * v160 + v161 * v11->u8[0] + ((BYTE1(v157) * v160 + v161 * v11->u8[0]) >> 8) + 1) >> 8;
              v11->i8[1] = ((v161 + v159) * v160 + (((v161 + v159) * v160) >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v155;
          }

          while (v155);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 6:
        do
        {
          v176 = v7;
          do
          {
            v177 = *v13;
            if (*v13)
            {
              v178 = v11->u8[1];
              if (v178 != 0xFF)
              {
                if (~v178 == 255)
                {
                  v179 = (v177 * a3.u8[4] + ((v177 * a3.u8[4]) >> 8) + 1) >> 8;
                  v11->i8[0] = (v177 * a3.u8[0] + ((v177 * a3.u8[0]) >> 8) + 1) >> 8;
                }

                else
                {
                  v180 = v177 * a3.u8[0] + ((v177 * a3.u8[0]) >> 8) + 1;
                  v181 = ~v178;
                  v11->i8[0] += (BYTE1(v180) * v181 + ((BYTE1(v180) * v181) >> 8) + 1) >> 8;
                  v182 = ((v177 * a3.u8[4] + ((v177 * a3.u8[4]) >> 8) + 1) >> 8) * v181;
                  v179 = v178 + ((v182 + (v182 >> 8) + 1) >> 8);
                }

                v11->i8[1] = v179;
              }
            }

            ++v13;
            v11 = (v11 + 2);
            --v176;
          }

          while (v176);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 7:
        do
        {
          v117 = v7;
          do
          {
            v118 = *v13;
            if (*v13)
            {
              if (v118 == 255)
              {
                v119 = v11->u8[0] * a3.u8[4];
                v120 = a3.u8[4];
              }

              else
              {
                v120 = (~v118 + ((v118 * a3.u8[4] + ((v118 * a3.u8[4]) >> 8) + 1) >> 8));
                v119 = v11->u8[0] * v120;
              }

              v11->i8[0] = (v119 + (v119 >> 8) + 1) >> 8;
              v11->i8[1] = (v120 * v11->u8[1] + ((v120 * v11->u8[1]) >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v117;
          }

          while (v117);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 8:
        v195 = ~a3.i8[4];
        do
        {
          v196 = v7;
          do
          {
            v197 = *v13;
            if (*v13)
            {
              if (v197 == 255)
              {
                v11->i8[0] = (v11->u8[0] * v195 + ((v11->u8[0] * v195) >> 8) + 1) >> 8;
                v198 = v11 + 1;
                v199 = v11->u8[1] * v195;
              }

              else
              {
                v200 = ~((v197 * a3.u8[4] + ((v197 * a3.u8[4]) >> 8) + 1) >> 8);
                v11->i8[0] = (v200 * v11->u8[0] + ((v200 * v11->u8[0]) >> 8) + 1) >> 8;
                v198 = v11 + 1;
                v199 = v200 * v11->u8[1];
              }

              *v198 = (v199 + (v199 >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v196;
          }

          while (v196);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 9:
        do
        {
          v56 = v7;
          do
          {
            v57 = *v13;
            if (*v13)
            {
              v58 = v57 * a3.u8[0] + ((v57 * a3.u8[0]) >> 8) + 1;
              v59 = v57 * a3.u8[4] + ((v57 * a3.u8[4]) >> 8) + 1;
              v60 = v11->u8[1];
              v61 = (~v57 + BYTE1(v59));
              v11->i8[0] = (BYTE1(v58) * (v60 ^ 0xFF) + v11->u8[0] * v61 + ((BYTE1(v58) * (v60 ^ 0xFF) + v11->u8[0] * v61) >> 8) + 1) >> 8;
              v11->i8[1] = (BYTE1(v59) * (v60 ^ 0xFF) + v60 * v61 + ((BYTE1(v59) * (v60 ^ 0xFFu) + v60 * v61) >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v56;
          }

          while (v56);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 10:
        do
        {
          v190 = v7;
          do
          {
            v191 = *v13;
            if (*v13)
            {
              v192 = v191 * a3.u8[0] + ((v191 * a3.u8[0]) >> 8) + 1;
              v193 = v11->u8[1];
              v194 = ((v191 * a3.u8[4] + ((v191 * a3.u8[4]) >> 8) + 1) >> 8);
              v11->i8[0] = (BYTE1(v192) * (v193 ^ 0xFF) + (v194 ^ 0xFF) * v11->u8[0] + ((BYTE1(v192) * (v193 ^ 0xFF) + (v194 ^ 0xFF) * v11->u8[0]) >> 8) + 1) >> 8;
              v11->i8[1] = (v194 * (v193 ^ 0xFF) + (v194 ^ 0xFF) * v193 + ((v194 * (v193 ^ 0xFF) + (v194 ^ 0xFFu) * v193) >> 8) + 1) >> 8;
            }

            ++v13;
            v11 = (v11 + 2);
            --v190;
          }

          while (v190);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 11:
        do
        {
          v41 = v7;
          do
          {
            if (*v13)
            {
              if (v8)
              {
                v42 = v11->u8[1];
              }

              else
              {
                v42 = 255;
              }

              v43 = ((*v13 * (a3.i8[4] - a3.i8[0])) | ((*v13 * a3.i8[4]) << 16)) + (v42 - v11->i8[0]) + (v42 << 16);
              v44 = (255 * ((v43 >> 8) & 0x10001)) | v43;
              v11->i8[0] = BYTE2(v44) - v44;
              v11->i8[1] = BYTE2(v44);
            }

            ++v13;
            v11 = (v11 + 2);
            --v41;
          }

          while (v41);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 12:
        do
        {
          v53 = v7;
          do
          {
            if (*v13)
            {
              v54 = ((*v13 * a3.i8[0]) | ((*v13 * a3.i8[4]) << 16)) + v11->i16[0] + ((v11->u16[0] << 8) & 0xFF0000);
              v55 = (255 * ((v54 >> 8) & 0x10001)) | v54;
              v11->i8[0] = v55;
              v11->i8[1] = BYTE2(v55);
            }

            ++v13;
            v11 = (v11 + 2);
            --v53;
          }

          while (v53);
          v13 += v14;
          v11 = (v11 + 2 * result);
          --v6;
        }

        while (v6);
        return result;
      case 13:
        v169 = a3.u8[0];
        v170 = v9[1];
        while (1)
        {
          v171 = v7;
          do
          {
            v172 = *v13;
            if (*v13)
            {
              v173 = v172 * v170 + ((v172 * v170) >> 8) + 1;
              if (v173 >= 0x100)
              {
                v174 = v172 * v169 + ((v172 * v169) >> 8) + 1;
                if (v8)
                {
                  v175 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v174);
                    v11->i8[1] = BYTE1(v173);
                    goto LABEL_248;
                  }
                }

                else
                {
                  v175 = 255;
                }

                v4 = v4 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v3 = v3 & 0xFFFFFFFFFFFF0000 | v173 & 0xFF00 | BYTE1(v174);
                result = PDAmultiplyPDA(v4, v175, v3, BYTE1(v173));
                v11->i16[0] = result;
              }
            }

LABEL_248:
            ++v13;
            v11 = (v11 + 2);
            --v171;
          }

          while (v171);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 14:
        while (1)
        {
          v32 = v7;
          do
          {
            v33 = *v13;
            if (*v13)
            {
              v34 = v33 * a3.u8[4] + ((v33 * a3.u8[4]) >> 8) + 1;
              if (v34 >= 0x100)
              {
                v35 = v33 * a3.u8[0] + ((v33 * a3.u8[0]) >> 8) + 1;
                if (v8)
                {
                  v36 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v37 = v34 >> 8;
                    v38 = v35 >> 8;
LABEL_43:
                    v11->i8[0] = v38;
                    v11->i8[1] = v37;
                    goto LABEL_44;
                  }
                }

                else
                {
                  v36 = 255;
                }

                v39 = (v11->u8[0] ^ 0xFF) * BYTE1(v35) - v11->u8[0] + (v11->u8[0] << 8);
                v40 = 255 * (v36 + BYTE1(v34)) - BYTE1(v34) * v36;
                v38 = (v39 + (v39 >> 8) + 1) >> 8;
                v37 = (v40 + (v40 >> 8) + 1) >> 8;
                goto LABEL_43;
              }
            }

LABEL_44:
            ++v13;
            v11 = (v11 + 2);
            --v32;
          }

          while (v32);
          v13 += v14;
          v11 = (v11 + 2 * result);
          if (!--v6)
          {
            return result;
          }
        }

      case 15:
        v102 = a3.u8[0];
        v103 = v9[1];
        while (1)
        {
          v104 = v7;
          do
          {
            v105 = *v13;
            if (*v13)
            {
              v106 = v105 * v103 + ((v105 * v103) >> 8) + 1;
              if (v106 >= 0x100)
              {
                v107 = v105 * v102 + ((v105 * v102) >> 8) + 1;
                if (v8)
                {
                  v108 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v107);
                    v11->i8[1] = BYTE1(v106);
                    goto LABEL_139;
                  }
                }

                else
                {
                  v108 = 255;
                }

                v4 = v4 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v3 = v3 & 0xFFFFFFFFFFFF0000 | v106 & 0xFF00 | BYTE1(v107);
                result = PDAoverlayPDA(v4, v108, v3, BYTE1(v106));
                v11->i16[0] = result;
              }
            }

LABEL_139:
            ++v13;
            v11 = (v11 + 2);
            --v104;
          }

          while (v104);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 16:
        v25 = a3.u8[0];
        v26 = v9[1];
        while (1)
        {
          v27 = v7;
          do
          {
            v28 = *v13;
            if (*v13)
            {
              v29 = v28 * v26 + ((v28 * v26) >> 8) + 1;
              if (v29 >= 0x100)
              {
                v30 = v28 * v25 + ((v28 * v25) >> 8) + 1;
                if (v8)
                {
                  v31 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v30);
                    v11->i8[1] = BYTE1(v29);
                    goto LABEL_32;
                  }
                }

                else
                {
                  v31 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v29 & 0xFF00 | BYTE1(v30);
                result = PDAdarkenPDA(v3, v31, v4, BYTE1(v29));
                v11->i16[0] = result;
              }
            }

LABEL_32:
            ++v13;
            v11 = (v11 + 2);
            --v27;
          }

          while (v27);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 17:
        v141 = a3.u8[0];
        v142 = v9[1];
        while (1)
        {
          v143 = v7;
          do
          {
            v144 = *v13;
            if (*v13)
            {
              v145 = v144 * v142 + ((v144 * v142) >> 8) + 1;
              if (v145 >= 0x100)
              {
                v146 = v144 * v141 + ((v144 * v141) >> 8) + 1;
                if (v8)
                {
                  v147 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v146);
                    v11->i8[1] = BYTE1(v145);
                    goto LABEL_206;
                  }
                }

                else
                {
                  v147 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v145 & 0xFF00 | BYTE1(v146);
                result = PDAlightenPDA(v3, v147, v4, BYTE1(v145));
                v11->i16[0] = result;
              }
            }

LABEL_206:
            ++v13;
            v11 = (v11 + 2);
            --v143;
          }

          while (v143);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 18:
        v183 = a3.u8[0];
        v184 = v9[1];
        while (1)
        {
          v185 = v7;
          do
          {
            v186 = *v13;
            if (*v13)
            {
              v187 = v186 * v184 + ((v186 * v184) >> 8) + 1;
              if (v187 >= 0x100)
              {
                v188 = v186 * v183 + ((v186 * v183) >> 8) + 1;
                if (v8)
                {
                  v189 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v188);
                    v11->i8[1] = BYTE1(v187);
                    goto LABEL_270;
                  }
                }

                else
                {
                  v189 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v187 & 0xFF00 | BYTE1(v188);
                result = PDAcolordodgePDA(v3, v189, v4, BYTE1(v187));
                v11->i16[0] = result;
              }
            }

LABEL_270:
            ++v13;
            v11 = (v11 + 2);
            --v185;
          }

          while (v185);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 19:
        v208 = *v9;
        v209 = v9[1];
        while (1)
        {
          v210 = v7;
          do
          {
            v211 = *v13 * v209;
            if (*v13)
            {
              v212 = (*v13 * v209) == 0;
            }

            else
            {
              v212 = 1;
            }

            if (!v212)
            {
              if (v8)
              {
                v213 = v11->u8[1];
                if (!v11->i8[1])
                {
                  v11->i8[0] = *v13 * v208;
                  v11->i8[1] = v211;
                  goto LABEL_312;
                }
              }

              else
              {
                v213 = 255;
              }

              v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
              v4 = (*v13 * v208) | ((*v13 * v209) << 8) | v4 & 0xFFFFFFFFFFFF0000;
              result = PDAcolorburnPDA(v3, v213, v4, (*v13 * v209));
              v11->i16[0] = result;
            }

LABEL_312:
            ++v13;
            v11 = (v11 + 2);
            --v210;
          }

          while (v210);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 20:
        v148 = a3.u8[0];
        v149 = v9[1];
        while (1)
        {
          v150 = v7;
          do
          {
            v151 = *v13;
            if (*v13)
            {
              v152 = v151 * v149 + ((v151 * v149) >> 8) + 1;
              if (v152 >= 0x100)
              {
                v153 = v151 * v148 + ((v151 * v148) >> 8) + 1;
                if (v8)
                {
                  v154 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v153);
                    v11->i8[1] = BYTE1(v152);
                    goto LABEL_218;
                  }
                }

                else
                {
                  v154 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v152 & 0xFF00 | BYTE1(v153);
                result = PDAsoftlightPDA(v3, v154, v4, BYTE1(v152));
                v11->i16[0] = result;
              }
            }

LABEL_218:
            ++v13;
            v11 = (v11 + 2);
            --v150;
          }

          while (v150);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 21:
        v162 = a3.u8[0];
        v163 = v9[1];
        while (1)
        {
          v164 = v7;
          do
          {
            v165 = *v13;
            if (*v13)
            {
              v166 = v165 * v163 + ((v165 * v163) >> 8) + 1;
              if (v166 >= 0x100)
              {
                v167 = v165 * v162 + ((v165 * v162) >> 8) + 1;
                if (v8)
                {
                  v168 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v167);
                    v11->i8[1] = BYTE1(v166);
                    goto LABEL_236;
                  }
                }

                else
                {
                  v168 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v166 & 0xFF00 | BYTE1(v167);
                result = PDAhardlightPDA(v3, v168, v4, BYTE1(v166));
                v11->i16[0] = result;
              }
            }

LABEL_236:
            ++v13;
            v11 = (v11 + 2);
            --v164;
          }

          while (v164);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 22:
        v201 = a3.u8[0];
        v202 = v9[1];
        while (1)
        {
          v203 = v7;
          do
          {
            v204 = *v13;
            if (*v13)
            {
              v205 = v204 * v202 + ((v204 * v202) >> 8) + 1;
              if (v205 >= 0x100)
              {
                v206 = v204 * v201 + ((v204 * v201) >> 8) + 1;
                if (v8)
                {
                  v207 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v206);
                    v11->i8[1] = BYTE1(v205);
                    goto LABEL_298;
                  }
                }

                else
                {
                  v207 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v205 & 0xFF00 | BYTE1(v206);
                result = PDAdifferencePDA(v3, v207, v4, BYTE1(v205));
                v11->i16[0] = result;
              }
            }

LABEL_298:
            ++v13;
            v11 = (v11 + 2);
            --v203;
          }

          while (v203);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 23:
        while (1)
        {
          v214 = v7;
          do
          {
            LOBYTE(v215) = *v13 * a3.i8[4];
            if (*v13)
            {
              v216 = (*v13 * a3.i8[4]) == 0;
            }

            else
            {
              v216 = 1;
            }

            if (!v216)
            {
              if (v8)
              {
                v217 = v11->u8[1];
                if (!v11->i8[1])
                {
                  v11->i8[0] = *v13 * a3.i8[0];
LABEL_325:
                  v11->i8[1] = v215;
                  goto LABEL_326;
                }
              }

              else
              {
                v217 = 255;
              }

              v218 = 255 * (v11->u8[0] + (*v13 * a3.i8[0])) - 2 * (*v13 * a3.i8[0]) * v11->u8[0];
              v219 = 255 * (v217 + (*v13 * a3.i8[4])) - v217 * (*v13 * a3.i8[4]);
              v215 = (v219 + (v219 >> 8) + 1) >> 8;
              v11->i8[0] = (v218 + (v218 >> 8) + 1) >> 8;
              goto LABEL_325;
            }

LABEL_326:
            ++v13;
            v11 = (v11 + 2);
            --v214;
          }

          while (v214);
          v13 += v14;
          v11 = (v11 + 2 * result);
          if (!--v6)
          {
            return result;
          }
        }

      case 24:
        v69 = a3.u8[0];
        v70 = v9[1];
        while (1)
        {
          v71 = v7;
          do
          {
            v72 = *v13;
            if (*v13)
            {
              v73 = v72 * v70 + ((v72 * v70) >> 8) + 1;
              if (v73 >= 0x100)
              {
                v74 = v72 * v69 + ((v72 * v69) >> 8) + 1;
                if (v8)
                {
                  v75 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v74);
                    v11->i8[1] = BYTE1(v73);
                    goto LABEL_98;
                  }
                }

                else
                {
                  v75 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v73 & 0xFF00 | BYTE1(v74);
                result = PDAhuePDA(v3, v75, v4, BYTE1(v73));
                v11->i16[0] = result;
              }
            }

LABEL_98:
            ++v13;
            v11 = (v11 + 2);
            --v71;
          }

          while (v71);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 25:
        v62 = a3.u8[0];
        v63 = v9[1];
        while (1)
        {
          v64 = v7;
          do
          {
            v65 = *v13;
            if (*v13)
            {
              v66 = v65 * v63 + ((v65 * v63) >> 8) + 1;
              if (v66 >= 0x100)
              {
                v67 = v65 * v62 + ((v65 * v62) >> 8) + 1;
                if (v8)
                {
                  v68 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v67);
                    v11->i8[1] = BYTE1(v66);
                    goto LABEL_86;
                  }
                }

                else
                {
                  v68 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v66 & 0xFF00 | BYTE1(v67);
                result = PDAhuePDA(v3, v68, v4, BYTE1(v66));
                v11->i16[0] = result;
              }
            }

LABEL_86:
            ++v13;
            v11 = (v11 + 2);
            --v64;
          }

          while (v64);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 26:
        v220 = a3.u8[0];
        v221 = v9[1];
        while (1)
        {
          v222 = v7;
          do
          {
            v223 = *v13;
            if (*v13)
            {
              v224 = v223 * v221 + ((v223 * v221) >> 8) + 1;
              if (v224 >= 0x100)
              {
                v225 = v223 * v220 + ((v223 * v220) >> 8) + 1;
                if (v8)
                {
                  v226 = v11->u8[1];
                  if (!v11->i8[1])
                  {
                    v11->i8[0] = BYTE1(v225);
                    v11->i8[1] = BYTE1(v224);
                    goto LABEL_338;
                  }
                }

                else
                {
                  v226 = 255;
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | v224 & 0xFF00 | BYTE1(v225);
                v4 = v4 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
                result = PDAhuePDA(v3, BYTE1(v224), v4, v226);
                v11->i16[0] = result;
              }
            }

LABEL_338:
            ++v13;
            v11 = (v11 + 2);
            --v222;
          }

          while (v222);
          v13 += v227;
          v11 = (v11 + 2 * v228);
          if (!--v6)
          {
            return result;
          }
        }

      case 27:
        v18 = a3.u8[0];
        v19 = v9[1];
        break;
      default:
        return result;
    }

LABEL_12:
    v20 = v7;
    while (1)
    {
      v21 = *v13;
      if (!*v13)
      {
        goto LABEL_20;
      }

      v22 = v21 * v19 + ((v21 * v19) >> 8) + 1;
      if (v22 < 0x100)
      {
        goto LABEL_20;
      }

      v23 = v21 * v18 + ((v21 * v18) >> 8) + 1;
      if (!v8)
      {
        break;
      }

      v24 = v11->u8[1];
      if (v11->i8[1])
      {
        goto LABEL_19;
      }

      v11->i8[0] = BYTE1(v23);
      v11->i8[1] = BYTE1(v22);
LABEL_20:
      ++v13;
      v11 = (v11 + 2);
      if (!--v20)
      {
        v13 += v227;
        v11 = (v11 + 2 * v228);
        if (!--v6)
        {
          return result;
        }

        goto LABEL_12;
      }
    }

    v24 = 255;
LABEL_19:
    v3 = v3 & 0xFFFFFFFFFFFF0000 | v11->u16[0];
    v4 = v4 & 0xFFFFFFFFFFFF0000 | v22 & 0xFF00 | BYTE1(v23);
    result = PDAhuePDA(v3, v24, v4, BYTE1(v22));
    v11->i16[0] = result;
    goto LABEL_20;
  }

  return result;
}

uint64_t GRAYA8_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v26, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 7) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v21, v26) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *a3;
  v22 = v19;
  v23 = v18;
  if (v19 != 67637672)
  {
    v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
    if (v20)
    {
      v21 = GRAYa8_image_sample[v20 + 1];
      if (v21)
      {
        goto LABEL_18;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!v25 && (~v24 & 0xC3) == 0)
  {
    v17.n128_u32[0] = *(a3 + 8);
    if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
    {
      if ((v24 & 4) != 0)
      {
        v17.n128_u64[0] = *(a3 + 32);
        *(a2 + 8) = v17.n128_u64[0];
      }

      GRAYA8_mark_inner(*(*a1 + 56), v17);
      return 1;
    }
  }

  v21 = GRAYA8_sample_W8_inner;
LABEL_18:
  GRAYa8_image_mark(a2, &v21, v8, v17);
  return 1;
}

uint64_t GRAYA8_sample_GRAYA8(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 8);
  if (v8 >> 6 != 2)
  {
    _CGHandleAssert("GRAYA8_sample_GRAYA8_inner", 10201, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "skip == LAST_SKIP", "skip = %d", a6, a7, a8, v8 >> 6);
  }

  if (((v8 >> 4) & 3) != 0)
  {
    _CGHandleAssert("GRAYA8_sample_GRAYA8_inner", 10202, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "reverse == NO_REVERSE", "reverse = %d", a6, a7, a8, (v8 >> 4) & 3);
  }

  v9 = *(result + 24);
  v10 = *(result + 112);
  v11 = *(result + 48);
  v12 = *(result + 56);
  if (v11)
  {
    v135 = *(result + 112);
    if (v10 > v11)
    {
      v135 = v10 % v11;
    }
  }

  else
  {
    v135 = 0;
  }

  v13 = *(result + 176);
  v14 = *(result + 120);
  v15 = *(result + 32);
  if (v12)
  {
    v134 = *(result + 120);
    if (v14 > v12)
    {
      v134 = v14 % v12;
    }
  }

  else
  {
    v134 = 0;
  }

  v130 = *(result + 80);
  v131 = *(result + 64);
  v132 = *(result + 88);
  v133 = *(result + 72);
  v129 = *(result + 188);
  v16 = *(result + 152) - 2;
  v17 = *(result + 144) - 1;
  v18 = *(result + 40);
  v19 = v15 + (2 * *(result + 256)) + ((*(result + 260) - 1) * v9) - 2;
  do
  {
    if (a3 >= v133)
    {
      v23 = a4;
      if (a3 <= v132)
      {
        v29 = 0;
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v132;
        v27 = v26 - a3 + (v25 >> 1);
        if (v27 < 1)
        {
          goto LABEL_52;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v31 = v28 | v129;
        v32 = v26 - 0x1000000;
        v29 = a3 - (v26 - 0x1000000);
        v30 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v133 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      v23 = a4;
      if (v22 < 1)
      {
        goto LABEL_52;
      }

      if (v22 >= v20)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v22) >> 32;
      }

      v31 = v24 | v129;
      v32 = v21 + 0x1000000;
      v29 = a3 - (v21 + 0x1000000);
      v30 = 512;
    }

    if (a2 >= v131)
    {
      if (a2 <= v130)
      {
        v37 = 0;
        v38 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v39 = *(result + 192);
        v40 = *(result + 200) + v130;
        v41 = v40 - a2 + (v39 >> 1);
        if (v41 < 1)
        {
          goto LABEL_52;
        }

        if (v41 < v39)
        {
          v31 = ((v31 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v129;
        }

        v36 = v40 - 0x1000000;
        v37 = a2 - (v40 - 0x1000000);
        v38 = 28;
      }
    }

    else
    {
      v33 = *(result + 192);
      v34 = v131 - *(result + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_52;
      }

      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v129;
      }

      v36 = v34 + 0x1000000;
      v37 = a2 - (v34 + 0x1000000);
      v38 = 32;
    }

    if (v31 >= 0x400000)
    {
      if (v11)
      {
        v42 = (v12 & ((v32 % v12) >> 63)) + v32 % v12;
        v43 = (v11 & ((v36 % v11) >> 63)) + v36 % v11;
        if (v42 >= v12)
        {
          v44 = v12;
        }

        else
        {
          v44 = 0;
        }

        v32 = v42 - v44;
        if (v43 >= v11)
        {
          v45 = v11;
        }

        else
        {
          v45 = 0;
        }

        v36 = v43 - v45;
        v29 += v32;
        v37 += v36;
      }

      v46 = v15 + SHIDWORD(v32) * v9 + 2 * (v36 >> 32);
      v47 = *(result + 32);
      if (v19 >= v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = v19;
      }

      if (v48 < v47)
      {
        v48 = *(result + 32);
      }

      if (v18)
      {
        v49 = v48[1];
      }

      else
      {
        v49 = 255;
      }

      v51 = *v48;
      if (!v13)
      {
        goto LABEL_58;
      }

      v52 = *(v13 + (v38 | v30));
      while (1)
      {
        v68 = v52 & 0xF;
        v69 = v52 >> 8;
        v70 = HIBYTE(v52) & 3;
        if (v68 == 1)
        {
          break;
        }

        if (v68 == 2)
        {
          v94 = SBYTE2(v52);
          if (v11)
          {
            v95 = v37 + (SBYTE2(v52) << 32);
            v96 = v11 & (v95 >> 63);
            if (v96 + v95 >= v11)
            {
              v97 = v11;
            }

            else
            {
              v97 = 0;
            }

            v94 = (v96 + ((HIWORD(v52) << 56) >> 24) - v97) >> 32;
          }

          v98 = (v46 + 2 * v94);
          if (v19 < v98)
          {
            v98 = v19;
          }

          if (v98 >= v47)
          {
            v99 = v98;
          }

          else
          {
            v99 = v47;
          }

          v100 = *v99;
          v101 = 255;
          if (v18)
          {
            v101 = v99[1];
          }

          v102 = (v52 >> 28) & 3;
          v103 = interpolate_graya[2 * v102 + 1];
          LOBYTE(v102) = v102 + 1;
          v104 = v51 - ((v103 & v51) >> v102);
          v105 = v49 - ((v103 & v49) >> v102);
          v106 = (v103 & v100) >> v102;
          v107 = (v103 & v101) >> v102;
LABEL_139:
          LOBYTE(v51) = v104 + v106;
          LOBYTE(v49) = v105 + v107;
          goto LABEL_58;
        }

        if (v68 == 3)
        {
          v128 = v23;
          LODWORD(v71) = SBYTE1(v52);
          v72 = SBYTE2(v52);
          if (v11)
          {
            v73 = v69 << 56;
            v74 = HIWORD(v52) << 56;
            v75 = v29 + (SBYTE1(v52) << 32);
            v76 = v37 + (v74 >> 24);
            v77 = v12 & (v75 >> 63);
            v78 = v11 & (v76 >> 63);
            v79 = v78 + v76;
            if (v77 + v75 >= v12)
            {
              v80 = v12;
            }

            else
            {
              v80 = 0;
            }

            if (v79 >= v11)
            {
              v81 = v11;
            }

            else
            {
              v81 = 0;
            }

            v82 = v77 + (v73 >> 24);
            v70 = HIBYTE(v52) & 3;
            v71 = (v82 - v80) >> 32;
            v72 = (v78 + (v74 >> 24) - v81) >> 32;
          }

          v83 = v71 * v9;
          v84 = 2 * v72;
          v85 = (v46 + 2 * v72);
          if (v19 < v85)
          {
            v85 = v19;
          }

          if (v85 >= v47)
          {
            v86 = v85;
          }

          else
          {
            v86 = v47;
          }

          v127 = *v86;
          if (v18)
          {
            v87 = v86[1];
            v88 = v46 + v83;
            if (v19 >= v88)
            {
              v89 = v88;
            }

            else
            {
              v89 = v19;
            }

            if (v89 >= v47)
            {
              v90 = v89;
            }

            else
            {
              v90 = v47;
            }

            v126 = v90[1];
            v91 = (v88 + v84);
            if (v19 < v91)
            {
              v91 = v19;
            }

            if (v91 >= v47)
            {
              v92 = v91;
            }

            else
            {
              v92 = v47;
            }

            v93 = v92[1];
          }

          else
          {
            v117 = v46 + v83;
            if (v19 >= v117)
            {
              v118 = v117;
            }

            else
            {
              v118 = v19;
            }

            if (v118 >= v47)
            {
              v90 = v118;
            }

            else
            {
              v90 = v47;
            }

            v119 = (v117 + v84);
            if (v19 < v119)
            {
              v119 = v19;
            }

            if (v119 >= v47)
            {
              v92 = v119;
            }

            else
            {
              v92 = v47;
            }

            v93 = 255;
            v126 = 255;
            v87 = 255;
          }

          v125 = v93;
          v120 = (v52 >> 28) & 3;
          v121 = interpolate_graya[2 * v70 + 1];
          v122 = v70 + 1;
          v123 = interpolate_graya[2 * v120 + 1];
          LOBYTE(v120) = v120 + 1;
          v51 = v51 - ((v121 & v51) >> v122) + ((v121 & *v90) >> v122) - (((v51 - ((v121 & v51) >> v122) + ((v121 & *v90) >> v122)) & v123) >> v120) + (((v127 - ((v121 & v127) >> v122) + ((v121 & *v92) >> v122)) & v123) >> v120);
          v124 = v49 - ((v121 & v49) >> v122) + ((v121 & v126) >> v122);
          v49 = v124 - ((v124 & v123) >> v120) + (((v87 - ((v121 & v87) >> v122) + ((v121 & v125) >> v122)) & v123) >> v120);
          v23 = v128;
        }

LABEL_58:
        *(v16 + 2) = v51;
        v16 += 2;
        *(v16 + 1) = v49;
        *(v17 + 1) = v31 >> 22;
        if (v23 == 1)
        {
          return result;
        }

        v53 = v23;
        v54 = 0;
        v55 = v23 - 1;
        a2 += v10;
        v56 = v130 - a2;
        a3 += v14;
        v57 = v132 - a3;
        while (1)
        {
          if (((a2 - v131) | v56 | (a3 - v133) | v57) < 0)
          {
            v17 += v54 + 1;
            v50 = ~v54 + v53;
            goto LABEL_53;
          }

          if (v11)
          {
            v58 = (v12 & ((v29 + v134) >> 63)) + v29 + v134;
            v59 = (v11 & ((v37 + v135) >> 63)) + v37 + v135;
            v60 = v58 >= v12 ? v12 : 0;
            v29 = v58 - v60;
            v61 = v59 >= v11 ? v11 : 0;
            v37 = v59 - v61;
            v62 = HIDWORD(v29);
            v63 = v59 - v61;
          }

          else
          {
            v62 = HIDWORD(a3);
            v63 = a2;
          }

          v64 = v15 + v62 * v9;
          v65 = v63 >> 32;
          v46 = v64 + 2 * v65;
          v47 = *(result + 32);
          if (v19 >= v46)
          {
            v66 = (v64 + 2 * v65);
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v47)
          {
            v66 = *(result + 32);
          }

          v49 = v18 ? v66[1] : 255;
          v51 = *v66;
          if (v13)
          {
            v52 = *(v13 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
            if ((v52 & 0xF) != 0)
            {
              break;
            }
          }

          *(v16 + 2) = v51;
          v16 += 2;
          v67 = v17 + v54++;
          a2 += v10;
          *(v16 + 1) = v49;
          *(v67 + 2) = -1;
          v56 -= v10;
          a3 += v14;
          v57 -= v14;
          if (v55 == v54)
          {
            return result;
          }
        }

        v17 += v54 + 1;
        v23 = ~v54 + v53;
        v31 = -1;
      }

      LODWORD(v108) = SBYTE1(v52);
      if (v11)
      {
        v109 = v69 << 56;
        v110 = v29 + (v109 >> 24);
        v111 = v12 & (v110 >> 63);
        if (v111 + v110 >= v12)
        {
          v112 = v12;
        }

        else
        {
          v112 = 0;
        }

        v108 = (v111 + (v109 >> 24) - v112) >> 32;
      }

      v113 = (v46 + v108 * v9);
      if (v19 < v113)
      {
        v113 = v19;
      }

      if (v113 >= v47)
      {
        v114 = v113;
      }

      else
      {
        v114 = v47;
      }

      v115 = 255;
      if (v18)
      {
        v115 = v114[1];
      }

      v116 = interpolate_graya[2 * interpolate_graya[2 * v70 + 1] + 1];
      v104 = v51 - ((v116 & v51) >> (interpolate_graya[2 * v70 + 1] + 1));
      v105 = v49 - ((v116 & v49) >> (interpolate_graya[2 * v70 + 1] + 1));
      v106 = (v116 & *v114) >> (interpolate_graya[2 * v70 + 1] + 1);
      v107 = (v116 & v115) >> (interpolate_graya[2 * v70 + 1] + 1);
      goto LABEL_139;
    }

LABEL_52:
    v50 = v23 - 1;
    a2 += v10;
    a3 += v14;
    v16 += 2;
    *++v17 = 0;
LABEL_53:
    a4 = v50;
  }

  while (v50);
  return result;
}

int *shape_union(uint64_t a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = a3;
  if (!a3)
  {
    return 0;
  }

  v5 = a2[1];
  if (v5 < 1)
  {
    return 0;
  }

  if (*a3 != 0x80000000)
  {
    return 0;
  }

  v6 = a3[1];
  if (v6 < 1)
  {
    return 0;
  }

  if (a2[v5] == 0x7FFFFFFF)
  {
    v7 = a3;
LABEL_11:

    return shape_copy(v7);
  }

  if (a3[v6] == 0x7FFFFFFF)
  {
    v7 = a2;
    goto LABEL_11;
  }

  v9 = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v47 = 0;
  v48 = 0;
  v12 = 512;
  v13 = v9;
  while (1)
  {
    v14 = v4;
    if (*v3 == 0x7FFFFFFF && *v4 == 0x7FFFFFFF)
    {
      break;
    }

    if (v10 - v13 + 4 <= v12)
    {
      v50 = v11;
    }

    else
    {
      v15 = 2 * v12;
      v16 = malloc_type_realloc(v13, (8 * v12 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
      v17 = (v11 + v16 - v13);
      if (!v11)
      {
        v17 = 0;
      }

      if (v16 != v13)
      {
        v10 = (v10 + v16 - v13);
        v11 = v17;
      }

      v50 = v11;
      if (v16 != v13)
      {
        v13 = v16;
      }

      v12 = v15;
    }

    if (!v13)
    {
      return 0;
    }

    v18 = *v3;
    v19 = *v14;
    if (*v14 >= *v3)
    {
      if (v18 == 0x7FFFFFFF)
      {
        v20 = v3;
        v3 = v48;
      }

      else
      {
        *v10 = v18;
        v20 = &v3[v3[1]];
      }

      if (v18 < v19 || (v19 = *v14, *v14 == 0x7FFFFFFF))
      {
        v21 = v3;
        v3 = v20;
        v4 = v14;
        v14 = v47;
        goto LABEL_37;
      }
    }

    else
    {
      v20 = v3;
      v3 = v48;
    }

    *v10 = v19;
    v4 = &v14[v14[1]];
    v21 = v3;
    v3 = v20;
LABEL_37:
    v47 = v14;
    v48 = v21;
    v22 = v21 + 2;
    v23 = v14 + 2;
    v49 = v10 + 1;
    v10 += 2;
    v24 = v14 + 2 != v4;
    v25 = v21 + 2 != v3;
    if (v21 + 2 != v3 || v23 != v4)
    {
      v26 = 0;
      while (1)
      {
        if (v10 - v13 + 4 > v12)
        {
          v27 = 2 * v12;
          v28 = malloc_type_realloc(v13, (8 * v12 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
          v29 = v28 - v13;
          if (v28 == v13)
          {
            v12 = v27;
          }

          else
          {
            v30 = (v50 + v29);
            if (!v50)
            {
              v30 = 0;
            }

            v50 = v30;
            if (!v28)
            {
              return 0;
            }

            v10 = (v10 + v29);
            v49 = (v49 + v29);
            v12 = v27;
            v13 = v28;
          }
        }

        v31 = *v22;
        v32 = *v23;
        v34 = *v22 <= *v23 || v23 == v4;
        if (v25 && v34)
        {
          v35 = v26 ^ 1;
          *v10 = v31;
          v36 = v22 + 1;
          v31 = *v22;
          v32 = *v23;
        }

        else
        {
          v35 = v26;
          v36 = v22;
        }

        v38 = v22 == v3 || v32 <= v31;
        if (v38 && v24)
        {
          v35 = v35 ^ 2;
          ++v23;
          *v10 = v32;
        }

        if (v26)
        {
          v39 = v35 == 0;
        }

        else
        {
          v39 = 1;
        }

        v40 = v39;
        v10 += v40;
        v24 = v23 != v4;
        v22 = v36;
        v26 = v35;
        v25 = v36 != v3;
        if (v36 == v3)
        {
          v22 = v36;
          v26 = v35;
          if (v23 == v4)
          {
            break;
          }
        }
      }
    }

    v11 = v50;
    v41 = ((v10 - v49) >> 2) + 1;
    *v49 = v41;
    if (v50 && v41 == *v50)
    {
      if (((v10 - v49) >> 2) != 1)
      {
        v42 = v50 + 1;
        v43 = v49 + 1;
        while (v43 != v10)
        {
          v45 = *v42++;
          v44 = v45;
          v46 = *v43++;
          if (v44 != v46)
          {
            goto LABEL_79;
          }
        }
      }

      v10 = v49 - 1;
      v41 = (((v49 - 1) - v50) >> 2) + 1;
    }

    else
    {
LABEL_79:
      v11 = v49;
    }

    *v11 = v41;
  }

  *v10 = 0x7FFFFFFF;

  return final_check(v13, v12, v10 - v13 + 1);
}

int *final_check(int *result, uint64_t a2, uint64_t a3)
{
  if (result == &the_empty_shape)
  {
    return &the_empty_shape;
  }

  if (result[result[1]] == 0x7FFFFFFF)
  {
    if (result)
    {
      free(result);
    }

    return &the_empty_shape;
  }

  else if ((a2 - a3) >= 0x400)
  {

    return malloc_type_realloc(result, (4 * a3 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
  }

  return result;
}

uint64_t rip_auto_context_draw_glyphs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = 120;
    pthread_mutex_lock(0x78);
    v4 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 288);
  v5 = v4 + 120;
  pthread_mutex_lock((v4 + 120));
  if (!v4)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(v4 + 88);
  if (!v6)
  {
    v6 = *(v4 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v4, a3);
  v14 = *(v4 + 112);
  v15 = *(a3 + 120);
  if (*(v15 + 48) >= v14)
  {
    v14 = *(v15 + 48);
  }

  *(v4 + 112) = v14;
  if (v6)
  {
    v16 = *(v6 + 40);
    if (v16)
    {
      v17 = *(v16 + 88);
      if (v17)
      {
        v18 = v17();
      }

      else
      {
        v18 = 1006;
      }
    }

    else
    {
      v18 = 0;
    }

    *(v4 + 105) |= rip_auto_context_contains_transparency(v4, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(v5);
  return v18;
}

void std::__hash_table<std::__hash_value_type<CGPDFFont *,unsigned long>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,unsigned long>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,unsigned long>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fe200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t dlRecorder_BeginLayer(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat x, double a10, CGFloat a11, CGFloat a12)
{
  if (!a1 || (v12 = a1, (v13 = *(a1 + 288)) == 0))
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_BeginLayer");
    return 0;
  }

  v22 = CG::DisplayListRecorder::currentDisplayList(*(a1 + 288));
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  if (!a5 || *(v13 + 16) || CFArrayGetCount(*(v13 + 8)) > 1)
  {
    Bounds = CGClipStackGetBounds(*(a3 + 112));
    y = v25;
    width = v26;
    height = v27;
    v32 = *(v23 + 40);
    v33 = *(v23 + 56);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v32, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v33, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v34 = *(v23 + 48);
      v35 = *(v23 + 64);
      v36 = Bounds;
      v69 = CGRectIntersection(*(&v25 - 1), *v32.f64);
      Bounds = v69.origin.x;
      y = v69.origin.y;
      width = v69.size.width;
      height = v69.size.height;
    }

    v37 = *(*(a3 + 120) + 16);
    if (v37)
    {
      v38 = *(a2 + 40);
      *&v67.a = *(a2 + 24);
      *&v67.c = v38;
      *&v67.tx = *(a2 + 56);
      Bounds = CGStyleGetDrawBoundingBoxWithMatrix(v37, &v67, Bounds, y, width, height);
      y = v39;
      width = v40;
      height = v41;
    }

    if (a4 && CGCFDictionaryGetRect(a4, @"kCGContextBoundingBox", &v68))
    {
      v70.origin.x = x;
      v70.origin.y = a10;
      v70.size.width = a11;
      v70.size.height = a12;
      v71 = CGRectIntersection(v70, v68);
      x = v71.origin.x;
      a10 = v71.origin.y;
      a11 = v71.size.width;
      a12 = v71.size.height;
      v68 = v71;
    }

    else
    {
      v68.origin.x = x;
      v68.origin.y = a10;
      v68.size.width = a11;
      v68.size.height = a12;
    }

    if (x != -8.98846567e307 || a10 != -8.98846567e307 || a11 != 1.79769313e308 || a12 != 1.79769313e308)
    {
      v42 = *(a3 + 40);
      *&v67.a = *(a3 + 24);
      *&v67.c = v42;
      *&v67.tx = *(a3 + 56);
      v43 = x;
      *&v42 = a10;
      v44 = a11;
      v45 = a12;
      v72 = CGRectApplyAffineTransform(*(&v42 - 8), &v67);
      DrawBoundingBoxWithMatrix = v72.origin.x;
      v47 = v72.origin.y;
      v48 = v72.size.width;
      v49 = v72.size.height;
      v68 = v72;
      v50 = *(*(a3 + 120) + 16);
      if (v50)
      {
        v51 = *(a2 + 40);
        *&v67.a = *(a2 + 24);
        *&v67.c = v51;
        *&v67.tx = *(a2 + 56);
        DrawBoundingBoxWithMatrix = CGStyleGetDrawBoundingBoxWithMatrix(v50, &v67, v72.origin.x, v47, v72.size.width, v72.size.height);
        v47 = v52;
        v48 = v53;
        v49 = v54;
        v68.origin.x = DrawBoundingBoxWithMatrix;
        v68.origin.y = v52;
        v68.size.width = v53;
        v68.size.height = v54;
      }

      v73.origin.x = Bounds;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v74 = CGRectIntersection(v73, *&DrawBoundingBoxWithMatrix);
      Bounds = v74.origin.x;
      y = v74.origin.y;
      width = v74.size.width;
      height = v74.size.height;
    }

    v75.origin.x = Bounds;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    v76 = CGRectIntegral(v75);
    v55 = v76.origin.x;
    v56 = v76.origin.y;
    v57 = v76.size.width;
    v58 = v76.size.height;
    v59 = CG::DisplayListRecorder::initializeGroupInfoDictionary(v23, a4);
    v67.a = v55;
    v67.b = v56;
    v67.c = v57;
    v67.d = v58;
    CGDisplayList = CG::DisplayList::createCGDisplayList(v59, &v67, v60, v61, v62, v63, v64, v65);
    if (v59)
    {
      CFRelease(v59);
    }

    if (CGDisplayList)
    {
      CFArrayAppendValue(*(v13 + 8), CGDisplayList);
      CFRelease(CGDisplayList);
      return v12;
    }

    return 0;
  }

  CG::DisplayListResourceColor::setColor(v13, a5);
  return v12;
}

uint64_t CGContextDelegateBeginLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 192)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

__CFDictionary *CG::DisplayListRecorder::initializeGroupInfoDictionary(uint64_t a1, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = 0;
      v11[0] = @"trackGlyphs";
      v11[1] = @"decodeImages";
      v11[2] = @"clipRecordingToFrame";
      v11[3] = @"evaluateShadingsOnRecord";
      do
      {
        v7 = v11[v6];
        Value = CFDictionaryGetValue(v5, v7);
        if (Value)
        {
          CFDictionarySetValue(Mutable, v7, Value);
        }

        ++v6;
      }

      while (v6 != 4);
    }

    if (a2)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = ___ZN2CG19DisplayListRecorder29initializeGroupInfoDictionaryEP13CGDisplayListPK14__CFDictionary_block_invoke;
      context[3] = &__block_descriptor_tmp_4951;
      context[4] = Mutable;
      CFDictionaryApplyFunction(a2, call_dict_block, context);
      CFDictionaryRemoveValue(Mutable, @"kCGContextBoundingBox");
    }

    if (!CFDictionaryContainsKey(Mutable, @"kCGContextGroup") && !CFDictionaryContainsKey(Mutable, @"kCGContextColorSpace") && *MEMORY[0x1E695E4D0])
    {
      CFDictionarySetValue(Mutable, @"kCGContextGroup", *MEMORY[0x1E695E4D0]);
    }
  }

  return Mutable;
}

void *dlRecorder_EndLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (v9 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_EndLayer");
    return 0;
  }

  result = CG::DisplayListRecorder::currentDisplayList(*(a1 + 288));
  if (!result)
  {
    return result;
  }

  v13 = result;
  CFRetain(result);
  if (CFArrayGetCount(*(v9 + 8)) >= 2)
  {
    Count = CFArrayGetCount(*(v9 + 8));
    if (Count)
    {
      CFArrayRemoveValueAtIndex(*(v9 + 8), Count - 1);
    }

    else
    {
      CGPostError("%s: displayListStack underflow", v15, v16, v17, v18, v19, v20, v21, "void CG::DisplayListRecorder::popDisplayListStack()");
    }

    v22 = 0;
    goto LABEL_13;
  }

  v22 = *(v9 + 16);
  if (!v22)
  {
    return 0;
  }

  CFRelease(*(v9 + 16));
  *(v9 + 16) = 0;
LABEL_13:
  if (*(v13 + 688) != *(v13 + 696) && *(v13 + 88) != INFINITY && *(v13 + 96) != INFINITY)
  {
    v24 = *(a3 + 24);
    v25 = *(a3 + 40);
    v26 = *(a3 + 56);
    *(a3 + 24) = CGAffineTransformIdentity;
    if (v22)
    {
      CGDisplayListDelegateDrawDisplayList(v22, a2, a3, v13);
    }

    else
    {
      CG::DisplayListRecorder::DrawDisplayList(v9, a2, a3, v13);
    }

    *(a3 + 24) = v24;
    *(a3 + 40) = v25;
    *(a3 + 56) = v26;
  }

  CFRelease(v13);
  if (v22)
  {
    return v22;
  }

  else
  {
    return a1;
  }
}

uint64_t CGContextDelegateEndLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 200)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CG::DisplayListRecorder::DrawDisplayList(CFArrayRef *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = CG::DisplayListRecorder::currentDisplayList(a1);
  if (!v8)
  {
    return 1000;
  }

  v9 = v8;
  if (v8[5] == INFINITY || v8[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v9[7] != 0.0 && v9[8] != 0.0)
  {
    if (a4)
    {
      v12 = *(a4 + 32);
      v13 = *(a3 + 40);
      *&v44.a = *(a3 + 24);
      *&v44.c = v13;
      *&v44.tx = *(a3 + 56);
      if (*(v9 + 73))
      {
        p_size = &CGRectNull.size;
        v15 = (a4 + 88);
        p_y = (a4 + 96);
        if (*(a4 + 688) == *(a4 + 696))
        {
          p_y = &CGRectNull.origin.y;
        }

        else
        {
          p_size = (a4 + 104);
        }

        if (*(a4 + 688) == *(a4 + 696))
        {
          v15 = &CGRectNull;
          p_height = &CGRectNull.size.height;
        }

        else
        {
          p_height = (a4 + 112);
        }

        height = *p_height;
        x = v15->origin.x;
        y = *p_y;
        width = p_size->width;
        if (v12 && CGCFDictionaryGetRect(v12, @"kCGContextBoundingBox", &v42))
        {
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          v46 = CGRectIntersection(v45, v42);
          x = v46.origin.x;
          y = v46.origin.y;
          width = v46.size.width;
          height = v46.size.height;
          v43.origin.x = v46.origin.x;
        }

LABEL_23:
        v41 = v44;
        v47.origin.x = x;
        v47.origin.y = y;
        v47.size.width = width;
        v47.size.height = height;
        v43 = CGRectApplyAffineTransform(v47, &v41);
        v43.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v43.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16));
        v43.origin.y = v23;
        v43.size.width = v24;
        v43.size.height = v25;
        if (v43.origin.x != INFINITY && v23 != INFINITY)
        {
          result = 0;
          if (v24 == 0.0 || v25 == 0.0)
          {
            return result;
          }

          goto LABEL_29;
        }

        return 0;
      }
    }

    else
    {
      v22 = *(a3 + 40);
      *&v44.a = *(a3 + 24);
      *&v44.c = v22;
      *&v44.tx = *(a3 + 56);
      if (*(v9 + 73) == 1)
      {
        v12 = 0;
        height = 0.0;
        y = INFINITY;
        width = 0.0;
        x = INFINITY;
        goto LABEL_23;
      }

      v12 = 0;
    }

LABEL_29:
    v26 = *(a4 + 688);
    v27 = *(a4 + 696);
    while (v26 != v27)
    {
      if (*(*v26 + 8) == 7 && (v28 = *(*v26 + 80)) != 0 && (v29 = *(v28 + 16)) != 0)
      {
        if (v29 == v9)
        {
          Image = CG::DisplayList::createImage((a4 + 16));
          if (!Image)
          {
            return 1000;
          }

          v40 = Image;
          CG::DisplayListRecorder::DrawImage(a1, a2, a3, Image, *(a4 + 40), *(a4 + 48), *(a4 + 56), *(a4 + 64));
          CFRelease(v40);
          return 0;
        }

        v26 = *(v29 + 688);
        v27 = *(v29 + 696);
      }

      else
      {
        v26 += 16;
      }
    }

    if (!CG::DisplayList::displayListResourceForDisplayList(v9 + 2, a4))
    {
      return 1000;
    }

    EntryDrawingState = CG::DisplayList::getEntryDrawingState((v9 + 2), a3, a2);
    v31 = EntryDrawingState[1];
    if (!v31)
    {
      return 1000;
    }

    v32 = *(v31 + 8);
    v33 = EntryDrawingState[2];
    if (v33)
    {
      v32 |= *(v33 + 8);
    }

    v34 = v32 & 0x1000;
    v35 = EntryDrawingState[3];
    if (v35)
    {
      v34 |= *(v35 + 8) & 0x3400;
    }

    v36 = *(a3 + 120);
    if (*(v36 + 8) >= 1.0)
    {
      if (a4)
      {
        v38 = *(a4 + 80) & 0x1000;
      }

      else
      {
        LOWORD(v38) = 0;
      }

      v37 = v38 | v34;
    }

    else
    {
      v37 = v34 | 0x1000;
    }

    if ((v37 & 0x1000) == 0 && (((*(v36 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
    {
      v37 |= 0x1000u;
    }

    if ((v37 & 0x1000) == 0 && v12 && (CFDictionaryContainsKey(v12, @"kCGContextGroup") || CFDictionaryContainsKey(v12, @"kCGContextColorSpace")))
    {
      v37 |= 0x1000u;
    }

    if ((v37 & 0x3000) != 0)
    {
      *(v9 + 20) |= v37 & 0x3000;
    }

    if (*(v9 + 74) == 1)
    {
      if ((v37 & 0x400) != 0)
      {
        CG::DisplayList::getEntryPatternState((v9 + 2), a3, a2);
      }

      operator new();
    }

    return 0;
  }

  return result;
}

uint64_t CG::DisplayList::displayListResourceForDisplayList(int8x8_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*&a1[99];
  v24 = a1 + 64;
  CG::DisplayList::getHash((a2 + 16));
  v11 = a1[65];
  if (!*&v11)
  {
    goto LABEL_27;
  }

  v12 = v4;
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v4;
    if (v4 >= *&v11)
    {
      v15 = v4 % *&v11;
    }
  }

  else
  {
    v15 = (*&v11 - 1) & v4;
  }

  v17 = *(*v24 + 8 * v15);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_27:
    CG::DisplayList::createCGDisplayList(a2, 0, v5, v6, v7, v8, v9, v10);
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v12)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v19 >= *&v11)
      {
        v19 %= *&v11;
      }
    }

    else
    {
      v19 &= *&v11 - 1;
    }

    if (v19 != v15)
    {
      goto LABEL_27;
    }

LABEL_26:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  v20 = v18[2];
  v21 = v18[3];
  if (!v21)
  {
    v22 = *(v20 + 16);
    if (v22 == a2)
    {
      return v18[2];
    }

    if (!v22)
    {
      goto LABEL_26;
    }

LABEL_23:
    isEqualTo = CG::DisplayList::isEqualTo((v22 + 16), (a2 + 16), 0);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
    }

    if (isEqualTo)
    {
      return v18[2];
    }

    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = *(v20 + 16);
  if (v22 != a2)
  {
    if (!v22)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v21);
  return v18[2];
}

void sub_183F30580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<CG::DisplayListResourceDisplayList>,void *>>>::operator()[abi:fe200100](1, v12);
  applesauce::CF::ObjectRef<CGDisplayList *>::~ObjectRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t CG::DisplayList::createCGDisplayList(uint64_t a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_ZZZ22CGDisplayListGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ22CGDisplayListGetTypeIDEUb_E4once, &__block_literal_global_171_15843);
  }

  Instance = CGTypeCreateInstance(CGDisplayListGetTypeID::display_list2_type_id, 920, a3, a4, a5, a6, a7, a8);
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 16) = &unk_1EF23F3D0;
    *(Instance + 24) = *(a1 + 24);
    v12 = *(a1 + 32);
    if (v12)
    {
      CFRetain(*(a1 + 32));
    }

    *(v11 + 32) = v12;
    *(v11 + 40) = *(a1 + 40);
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
    v15 = *(a1 + 88);
    *(v11 + 104) = *(a1 + 104);
    *(v11 + 88) = v15;
    *(v11 + 72) = v14;
    *(v11 + 56) = v13;
    *(v11 + 120) = *(a1 + 120);
    v16 = *(a1 + 128);
    *(v11 + 128) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(a1 + 136);
    *(v11 + 152) = *(a1 + 152);
    *(v11 + 136) = v17;
    v18 = *(a1 + 168);
    v19 = *(a1 + 184);
    v20 = *(a1 + 200);
    *(v11 + 216) = *(a1 + 216);
    *(v11 + 200) = v20;
    *(v11 + 184) = v19;
    *(v11 + 168) = v18;
    v21 = *(a1 + 224);
    *(v11 + 248) = 0;
    *(v11 + 224) = v21;
    *(v11 + 232) = 0;
    *(v11 + 256) = 0;
    *(v11 + 240) = v11 + 248;
    v22 = *(a1 + 240);
    if (v22 != (a1 + 248))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceClip>>((v11 + 240), (v11 + 248), &v112, &v111, v22 + 4))
        {
          operator new();
        }

        v23 = v22[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v22[2];
            v77 = *v24 == v22;
            v22 = v24;
          }

          while (!v77);
        }

        v22 = v24;
      }

      while (v24 != (a1 + 248));
    }

    v109 = a2;
    *(v11 + 272) = 0;
    *(v11 + 280) = 0;
    *(v11 + 264) = v11 + 272;
    v25 = *(a1 + 264);
    if (v25 != (a1 + 272))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColor>,CG::CompareResourceColor,std::allocator<std::shared_ptr<CG::DisplayListResourceColor>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColor>>((v11 + 264), (v11 + 272), &v112, &v111, (v25 + 4)))
        {
          operator new();
        }

        v26 = v25[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v25[2];
            v77 = *v27 == v25;
            v25 = v27;
          }

          while (!v77);
        }

        v25 = v27;
      }

      while (v27 != (a1 + 272));
    }

    *(v11 + 296) = 0;
    *(v11 + 304) = 0;
    *(v11 + 288) = v11 + 296;
    v28 = *(a1 + 288);
    if (v28 != (a1 + 296))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 288), (v11 + 296), &v112, &v111, v28 + 4))
        {
          operator new();
        }

        v29 = v28[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v28[2];
            v77 = *v30 == v28;
            v28 = v30;
          }

          while (!v77);
        }

        v28 = v30;
      }

      while (v30 != (a1 + 296));
    }

    *(v11 + 320) = 0;
    *(v11 + 328) = 0;
    *(v11 + 312) = v11 + 320;
    v31 = *(a1 + 312);
    if (v31 != (a1 + 320))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceDash>,CG::CompareResourceDash,std::allocator<std::shared_ptr<CG::DisplayListResourceDash>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceDash>>((v11 + 312), (v11 + 320), &v112, &v111, v31 + 4))
        {
          operator new();
        }

        v32 = v31[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v31[2];
            v77 = *v33 == v31;
            v31 = v33;
          }

          while (!v77);
        }

        v31 = v33;
      }

      while (v33 != (a1 + 320));
    }

    *(v11 + 344) = 0;
    *(v11 + 352) = 0;
    *(v11 + 336) = v11 + 344;
    v34 = *(a1 + 336);
    if (v34 != (a1 + 344))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 336), (v11 + 344), &v112, &v111, v34 + 4))
        {
          operator new();
        }

        v35 = v34[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v34[2];
            v77 = *v36 == v34;
            v34 = v36;
          }

          while (!v77);
        }

        v34 = v36;
      }

      while (v36 != (a1 + 344));
    }

    *(v11 + 368) = 0;
    *(v11 + 376) = 0;
    *(v11 + 360) = v11 + 368;
    v37 = *(a1 + 360);
    if (v37 != (a1 + 368))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 360), (v11 + 368), &v112, &v111, v37 + 4))
        {
          operator new();
        }

        v38 = v37[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v37[2];
            v77 = *v39 == v37;
            v37 = v39;
          }

          while (!v77);
        }

        v37 = v39;
      }

      while (v39 != (a1 + 368));
    }

    *(v11 + 392) = 0;
    *(v11 + 400) = 0;
    *(v11 + 384) = v11 + 392;
    v40 = *(a1 + 384);
    if (v40 != (a1 + 392))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 384), (v11 + 392), &v112, &v111, v40 + 4))
        {
          operator new();
        }

        v41 = v40[1];
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
            v42 = v40[2];
            v77 = *v42 == v40;
            v40 = v42;
          }

          while (!v77);
        }

        v40 = v42;
      }

      while (v42 != (a1 + 392));
    }

    *(v11 + 416) = 0;
    *(v11 + 424) = 0;
    *(v11 + 408) = v11 + 416;
    v43 = *(a1 + 408);
    if (v43 != (a1 + 416))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 408), (v11 + 416), &v112, &v111, v43 + 4))
        {
          operator new();
        }

        v44 = v43[1];
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = v43[2];
            v77 = *v45 == v43;
            v43 = v45;
          }

          while (!v77);
        }

        v43 = v45;
      }

      while (v45 != (a1 + 416));
    }

    *(v11 + 440) = 0;
    *(v11 + 448) = 0;
    *(v11 + 432) = v11 + 440;
    v46 = *(a1 + 432);
    if (v46 != (a1 + 440))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 432), (v11 + 440), &v112, &v111, v46 + 4))
        {
          operator new();
        }

        v47 = v46[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v46[2];
            v77 = *v48 == v46;
            v46 = v48;
          }

          while (!v77);
        }

        v46 = v48;
      }

      while (v48 != (a1 + 440));
    }

    *(v11 + 464) = 0;
    *(v11 + 472) = 0;
    *(v11 + 456) = v11 + 464;
    v49 = *(a1 + 456);
    if (v49 != (a1 + 464))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 456), (v11 + 464), &v112, &v111, v49 + 4))
        {
          operator new();
        }

        v50 = v49[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v49[2];
            v77 = *v51 == v49;
            v49 = v51;
          }

          while (!v77);
        }

        v49 = v51;
      }

      while (v51 != (a1 + 464));
    }

    *(v11 + 488) = 0;
    *(v11 + 496) = 0;
    *(v11 + 480) = v11 + 488;
    v52 = *(a1 + 480);
    if (v52 != (a1 + 488))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 480), (v11 + 488), &v112, &v111, v52 + 4))
        {
          operator new();
        }

        v53 = v52[1];
        if (v53)
        {
          do
          {
            v54 = v53;
            v53 = *v53;
          }

          while (v53);
        }

        else
        {
          do
          {
            v54 = v52[2];
            v77 = *v54 == v52;
            v52 = v54;
          }

          while (!v77);
        }

        v52 = v54;
      }

      while (v54 != (a1 + 488));
    }

    *(v11 + 512) = 0u;
    *(v11 + 504) = v11 + 512;
    v55 = *(a1 + 504);
    if (v55 != (a1 + 512))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 504), (v11 + 512), &v112, &v111, v55 + 4))
        {
          operator new();
        }

        v56 = v55[1];
        if (v56)
        {
          do
          {
            v57 = v56;
            v56 = *v56;
          }

          while (v56);
        }

        else
        {
          do
          {
            v57 = v55[2];
            v77 = *v57 == v55;
            v55 = v57;
          }

          while (!v77);
        }

        v55 = v57;
      }

      while (v57 != (a1 + 512));
    }

    *(v11 + 528) = 0u;
    *(v11 + 544) = 0u;
    *(v11 + 560) = *(a1 + 560);
    std::__hash_table<std::__hash_value_type<CGPDFFont *,unsigned long>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,unsigned long>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,unsigned long>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,unsigned long>>>::__rehash<true>(v11 + 528, *(a1 + 536));
    v110 = a1;
    v58 = *(a1 + 544);
    if (v58)
    {
      while (1)
      {
        v59 = v58[2];
        v60 = v58[3];
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v61 = *(v59 + 16);
        if (!v61)
        {
          break;
        }

        CG::DisplayList::getHash((v61 + 16));
        v63 = v62;
        if (v60)
        {
          goto LABEL_121;
        }

LABEL_122:
        v64 = *(v11 + 536);
        if (!*&v64)
        {
          goto LABEL_159;
        }

        v65 = vcnt_s8(v64);
        v65.i16[0] = vaddlv_u8(v65);
        v66 = v65.u32[0];
        if (v65.u32[0] > 1uLL)
        {
          v67 = v63;
          if (v63 >= *&v64)
          {
            v67 = v63 % *&v64;
          }
        }

        else
        {
          v67 = (*&v64 - 1) & v63;
        }

        v68 = *(*(v11 + 528) + 8 * v67);
        if (!v68 || (v69 = *v68) == 0)
        {
LABEL_159:
          operator new();
        }

        while (1)
        {
          v70 = v69[1];
          if (v70 == v63)
          {
            break;
          }

          if (v66 > 1)
          {
            if (v70 >= *&v64)
            {
              v70 %= *&v64;
            }
          }

          else
          {
            v70 &= *&v64 - 1;
          }

          if (v70 != v67)
          {
            goto LABEL_159;
          }

LABEL_155:
          v69 = *v69;
          if (!v69)
          {
            goto LABEL_159;
          }
        }

        v71 = v69[2];
        v72 = v69[3];
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v73 = v58[2];
        v74 = v58[3];
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v75 = *(v71 + 16);
        v76 = *(v73 + 16);
        if (v75 == v76)
        {
          v78 = 1;
          if (!v74)
          {
            goto LABEL_152;
          }

LABEL_151:
          std::__shared_weak_count::__release_shared[abi:fe200100](v74);
          goto LABEL_152;
        }

        if (v75)
        {
          v77 = v76 == 0;
        }

        else
        {
          v77 = 1;
        }

        if (v77)
        {
          v78 = 0;
          if (v74)
          {
            goto LABEL_151;
          }
        }

        else
        {
          isEqualTo = CG::DisplayList::isEqualTo((v75 + 16), (v76 + 16), 0);
          v78 = isEqualTo;
          if (v74)
          {
            goto LABEL_151;
          }
        }

LABEL_152:
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v72);
        }

        if ((v78 & 1) == 0)
        {
          goto LABEL_155;
        }

        v58 = *v58;
        if (!v58)
        {
          goto LABEL_161;
        }
      }

      v63 = 0;
      if (!v60)
      {
        goto LABEL_122;
      }

LABEL_121:
      std::__shared_weak_count::__release_shared[abi:fe200100](v60);
      goto LABEL_122;
    }

LABEL_161:
    *(v11 + 576) = 0u;
    *(v11 + 568) = v11 + 576;
    v80 = *(v110 + 568);
    if (v80 != (v110 + 576))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>((v11 + 568), (v11 + 576), &v112, &v111, v80 + 4))
        {
          operator new();
        }

        v81 = v80[1];
        if (v81)
        {
          do
          {
            v82 = v81;
            v81 = *v81;
          }

          while (v81);
        }

        else
        {
          do
          {
            v82 = v80[2];
            v77 = *v82 == v80;
            v80 = v82;
          }

          while (!v77);
        }

        v80 = v82;
      }

      while (v82 != (v110 + 576));
    }

    *(v11 + 600) = 0u;
    *(v11 + 592) = v11 + 600;
    v83 = *(v110 + 592);
    if (v83 != (v110 + 600))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListEntryStateDrawing const>,CG::CompareEntryStateDrawing,std::allocator<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>((v11 + 592), (v11 + 600), &v112, &v111, v83 + 4))
        {
          operator new();
        }

        v84 = v83[1];
        if (v84)
        {
          do
          {
            v85 = v84;
            v84 = *v84;
          }

          while (v84);
        }

        else
        {
          do
          {
            v85 = v83[2];
            v77 = *v85 == v83;
            v83 = v85;
          }

          while (!v77);
        }

        v83 = v85;
      }

      while (v85 != (v110 + 600));
    }

    *(v11 + 624) = 0u;
    *(v11 + 616) = v11 + 624;
    v86 = *(v110 + 616);
    if (v86 != (v110 + 624))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListEntryStateFill const>,CG::CompareEntryStateFill,std::allocator<std::shared_ptr<CG::DisplayListEntryStateFill const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateFill const>>((v11 + 616), (v11 + 624), &v112, &v111, v86 + 4))
        {
          operator new();
        }

        v87 = v86[1];
        if (v87)
        {
          do
          {
            v88 = v87;
            v87 = *v87;
          }

          while (v87);
        }

        else
        {
          do
          {
            v88 = v86[2];
            v77 = *v88 == v86;
            v86 = v88;
          }

          while (!v77);
        }

        v86 = v88;
      }

      while (v88 != (v110 + 624));
    }

    *(v11 + 648) = 0u;
    *(v11 + 640) = v11 + 648;
    v89 = *(v110 + 640);
    if (v89 != (v110 + 648))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListEntryStateStroke const>,CG::CompareEntryStateStroke,std::allocator<std::shared_ptr<CG::DisplayListEntryStateStroke const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateStroke const>>((v11 + 640), (v11 + 648), &v112, &v111, v89 + 4))
        {
          operator new();
        }

        v90 = v89[1];
        if (v90)
        {
          do
          {
            v91 = v90;
            v90 = *v90;
          }

          while (v90);
        }

        else
        {
          do
          {
            v91 = v89[2];
            v77 = *v91 == v89;
            v89 = v91;
          }

          while (!v77);
        }

        v89 = v91;
      }

      while (v91 != (v110 + 648));
    }

    *(v11 + 672) = 0u;
    *(v11 + 664) = v11 + 672;
    v92 = *(v110 + 664);
    if (v92 != (v110 + 672))
    {
      do
      {
        if (!*std::__tree<std::shared_ptr<CG::DisplayListEntryStatePattern const>,CG::CompareEntryStatePattern,std::allocator<std::shared_ptr<CG::DisplayListEntryStatePattern const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStatePattern const>>((v11 + 664), (v11 + 672), &v112, &v111, v92 + 4))
        {
          operator new();
        }

        v93 = v92[1];
        if (v93)
        {
          do
          {
            v94 = v93;
            v93 = *v93;
          }

          while (v93);
        }

        else
        {
          do
          {
            v94 = v92[2];
            v77 = *v94 == v92;
            v92 = v94;
          }

          while (!v77);
        }

        v92 = v94;
      }

      while (v94 != (v110 + 672));
    }

    *(v11 + 704) = 0;
    *(v11 + 688) = 0u;
    v95 = *(v110 + 688);
    v96 = *(v110 + 696);
    v112 = v11 + 688;
    v113 = 0;
    v97 = v96 - v95;
    if (v96 != v95)
    {
      if (!((v97 >> 4) >> 60))
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<CG::DisplayListEntry const>>>(v97 >> 4);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v98 = *(v110 + 728);
    *(v11 + 712) = *(v110 + 712);
    *(v11 + 728) = v98;
    v99 = *(v110 + 744);
    v100 = *(v110 + 760);
    v101 = *(v110 + 792);
    *(v11 + 776) = *(v110 + 776);
    *(v11 + 792) = v101;
    *(v11 + 744) = v99;
    *(v11 + 760) = v100;
    v102 = *(v110 + 808);
    v103 = *(v110 + 824);
    v104 = *(v110 + 856);
    *(v11 + 840) = *(v110 + 840);
    *(v11 + 856) = v104;
    *(v11 + 808) = v102;
    *(v11 + 824) = v103;
    v105 = *(v110 + 872);
    v106 = *(v110 + 888);
    v107 = *(v110 + 920);
    *(v11 + 904) = *(v110 + 904);
    *(v11 + 920) = v107;
    *(v11 + 872) = v105;
    *(v11 + 888) = v106;
    *(v11 + 24) = v11;
    if (v109)
    {
      CG::DisplayList::setAuxInfo((v11 + 16), v109);
    }
  }

  return v11;
}