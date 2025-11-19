uint64_t GRAYA8_sample_W8_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v90 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 2;
  v12 = *(result + 144) - 1;
  v13 = *(result + 260) - 1;
  v14 = *(result + 256);
  v15 = v4 + v14 + (v13 * v6);
  v16 = (v5 + v14 + (v13 * v7));
  v17 = (v15 - 1);
  v87 = *(result + 188);
  v86 = (v15 - 4);
  v89 = *(result + 64);
  v91 = *(result + 72);
  while (1)
  {
LABEL_2:
    if (a3 >= v91)
    {
      if (a3 <= v90)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v90;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_39;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v27 = v87 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v91 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_39;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v27 = v87 | v21;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v89)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v89 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v87;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 2;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_26;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v88;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_39;
  }

  if (v36 < v34)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v87;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_26:
  if (v27 < 0x400000)
  {
    goto LABEL_39;
  }

  v37 = v28 >> 32;
  v38 = v4 + SHIDWORD(v28) * v6;
  v39 = v38 + (v32 >> 32);
  v40 = *(result + 32);
  if (v17 >= v39)
  {
    v41 = (v38 + (v32 >> 32));
  }

  else
  {
    v41 = v17;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v37 * v7 + (v32 >> 32);
    v43 = *(result + 40);
    if (v16 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v16;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = *v43;
  }

  else
  {
    v42 = 0;
    v45 = 255;
  }

  v46 = *v41;
  if (v8)
  {
    v47 = *(v8 + (v33 | v26));
LABEL_67:
    v56 = v47 & 0xF;
    v57 = HIBYTE(v47) & 3;
    if (v56 == 1)
    {
      v79 = (v39 + SBYTE1(v47) * v6);
      if (v86 < v79)
      {
        v79 = v86;
      }

      if (v79 < v40)
      {
        v79 = v40;
      }

      v76 = *v79;
      v77 = 255;
      if (v5)
      {
        v80 = (v42 + SBYTE1(v47) * v7);
        if (v16 < v80)
        {
          v80 = v16;
        }

        if (v80 < *(result + 40))
        {
          v80 = *(result + 40);
        }

        v77 = *v80;
      }
    }

    else
    {
      if (v56 != 2)
      {
        if (v56 == 3)
        {
          v58 = (v39 + SBYTE2(v47));
          if (v17 < v58)
          {
            v58 = v17;
          }

          if (v58 < v40)
          {
            v58 = v40;
          }

          v85 = *v58;
          v59 = v39 + SBYTE1(v47) * v6;
          if (v17 >= v59)
          {
            v60 = (v39 + SBYTE1(v47) * v6);
          }

          else
          {
            v60 = v17;
          }

          if (v60 < v40)
          {
            v60 = v40;
          }

          v84 = *v60;
          v61 = (v59 + SBYTE2(v47));
          if (v17 < v61)
          {
            v61 = v17;
          }

          if (v61 < v40)
          {
            v61 = v40;
          }

          v62 = 255;
          v63 = 255;
          v64 = 255;
          if (v5)
          {
            v65 = (v42 + SBYTE2(v47));
            v66 = *(result + 40);
            if (v16 < v65)
            {
              v65 = v16;
            }

            if (v65 < v66)
            {
              v65 = *(result + 40);
            }

            v64 = *v65;
            v67 = v42 + SBYTE1(v47) * v7;
            if (v16 >= v67)
            {
              v68 = (v42 + SBYTE1(v47) * v7);
            }

            else
            {
              v68 = v16;
            }

            if (v68 < v66)
            {
              v68 = *(result + 40);
            }

            v63 = *v68;
            v69 = (v67 + SBYTE2(v47));
            if (v16 < v69)
            {
              v69 = v16;
            }

            if (v69 < v66)
            {
              v69 = *(result + 40);
            }

            v62 = *v69;
          }

          v83 = v62;
          v70 = (v47 >> 28) & 3;
          v71 = interpolate_graya[2 * v57 + 1];
          v72 = v57 + 1;
          v73 = interpolate_graya[2 * v70 + 1];
          LOBYTE(v70) = v70 + 1;
          v46 = v46 - ((v71 & v46) >> v72) + ((v71 & v84) >> v72) - (((v46 - ((v71 & v46) >> v72) + ((v71 & v84) >> v72)) & v73) >> v70) + (((v85 - ((v71 & v85) >> v72) + ((v71 & *v61) >> v72)) & v73) >> v70);
          v74 = v45 - ((v71 & v45) >> v72) + ((v63 & v71) >> v72);
          v45 = v74 + (((v64 - ((v64 & v71) >> v72) + ((v83 & v71) >> v72)) & v73) >> v70) - ((v74 & v73) >> v70);
        }

        goto LABEL_44;
      }

      v75 = (v39 + SBYTE2(v47));
      if (v17 < v75)
      {
        v75 = v17;
      }

      if (v75 < v40)
      {
        v75 = v40;
      }

      v76 = *v75;
      v77 = 255;
      if (v5)
      {
        v78 = (v42 + SBYTE2(v47));
        if (v16 < v78)
        {
          v78 = v16;
        }

        if (v78 < *(result + 40))
        {
          v78 = *(result + 40);
        }

        v77 = *v78;
      }

      v57 = (v47 >> 28) & 3;
    }

    v81 = interpolate_graya[2 * v57 + 1];
    v82 = v57 + 1;
    v46 = v46 - ((v81 & v46) >> v82) + ((v81 & v76) >> v82);
    v45 = v45 - ((v81 & v45) >> v82) + ((v77 & v81) >> v82);
  }

LABEL_44:
  *(v11 + 2) = v46;
  v11 += 2;
  *(v11 + 1) = v45;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    a2 += v10;
    v49 = v88 - a2;
    a3 += v9;
    v50 = v90 - a3;
    while (((v50 | v49 | (a3 - v91) | (a2 - v89)) & 0x8000000000000000) == 0)
    {
      v51 = v4 + SHIDWORD(a3) * v6;
      v39 = v51 + (a2 >> 32);
      v40 = *(result + 32);
      if (v17 >= v39)
      {
        v52 = (v51 + (a2 >> 32));
      }

      else
      {
        v52 = v17;
      }

      if (v52 < v40)
      {
        v52 = *(result + 32);
      }

      if (v5)
      {
        v42 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        v53 = *(result + 40);
        if (v16 >= v42)
        {
          v54 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        }

        else
        {
          v54 = v16;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v45 = *v53;
      }

      else
      {
        v45 = 255;
      }

      v46 = *v52;
      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v48 + 1;
          a4 += ~v48;
          v27 = -1;
          goto LABEL_67;
        }
      }

      *(v11 + 2) = v46;
      v11 += 2;
      v55 = v12 + v48++;
      a2 += v10;
      *(v11 + 1) = v45;
      *(v55 + 2) = -1;
      v49 -= v10;
      a3 += v9;
      v50 -= v9;
      if (a4 - 1 == v48)
      {
        return result;
      }
    }

    v12 += v48 + 1;
    a4 += ~v48;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

void GRAYA8_shade_custom_Gray(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, int32x4_t a7)
{
  v8 = *(a1 + 280);
  *a7.i8 = vadd_f32(*(a1 + 296), vmla_n_f32(vmul_n_f32(*(a1 + 288), *(*(a1 + 272) + 4) * a3), v8, *(*(a1 + 272) + 4) * a2));
  v32 = *(a1 + 304);
  v9 = *(a1 + 336);
  v10 = *(a1 + 348);
  v11 = *(a1 + 344);
  v12 = *(a1 + 356);
  v14 = *(a1 + 144);
  v13 = *(a1 + 152);
  v15 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v16 = *(a1 + 392);
  }

  else
  {
    v16 = *(a1 + 272);
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = *(a1 + 48);
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = *(a1 + 40);
  }

  else
  {
    v20 = *(a1 + 272);
  }

  v21 = 3 * *(a1 + 48);
  do
  {
    v22 = vzip1q_s32(a7, a7);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v32, v22))), vmovn_s32(vcgtq_f32(v22, v32)))) & 1) == 0)
    {
      v26 = (v12 * (*&a7.i32[1] - v10));
      v27 = (v11 * (*a7.i32 - v9));
      v28 = v17 + 4 * v21 * v26;
      v29 = v27;
      v30 = v20 + 4 * v19 * v26;
      if (!v18)
      {
        v29 = 0;
      }

      v23 = *(v30 + 4 * v29);
      v24 = *(v28 + 4 * v27);
      v33 = a7;
      if (v18)
      {
        v24 = v23 * v24;
      }

      v25 = v13;
      goto LABEL_19;
    }

    if (v15)
    {
      v23 = *v16;
      v24 = *v16 * *v15;
      v25 = v13;
      v33 = a7;
LABEL_19:
      SHADE(v25, v24, v23);
      a7 = v33;
      v31 = -1;
      goto LABEL_21;
    }

    v31 = 0;
LABEL_21:
    *a7.i8 = vadd_f32(v8, *a7.i8);
    v13 += 2;
    *v14++ = v31;
    --a4;
  }

  while (a4);
}

void GRAYA8_shade_conic_Gray(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, double a5, __n128 a6)
{
  v7 = a1[35];
  a6.n128_u64[0] = vadd_f32(a1[37], vmla_n_f32(vmul_n_f32(a1[36], *(*&a1[34] + 4) * a3), v7, *(*&a1[34] + 4) * a2));
  v8 = a1[42].f32[0];
  v9 = a1[43].f32[0];
  v10 = a1[38].f32[0];
  v12 = a1[18];
  v11 = a1[19];
  v13 = a1[4];
  v14 = a1[5];
  if (v14)
  {
    v15 = a1[5];
  }

  else
  {
    v15 = a1[34];
  }

  v16 = a1[38].f32[1] - v10;
  do
  {
    v32 = a6;
    v17 = v9 * ((v10 + (((atan2f(a6.n128_f32[1], a6.n128_f32[0]) * 0.15915) + 0.5) * v16)) - v8);
    v18 = vcvtms_s32_f32(v17);
    v19 = ceilf(v17);
    v20 = vcvtms_s32_f32(v9 + v17);
    v21 = v17 - floorf(v17);
    if (v17 < 0.0)
    {
      v18 = v20;
    }

    v22 = ceilf(v17 - v9);
    if (v17 <= v9)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23;
    v25 = v18;
    if (!*&v14)
    {
      v25 = 0;
    }

    v26 = *(*&v15 + 4 * v25);
    v27 = *(*&v13 + 4 * v18);
    v28 = v24;
    if (!*&v14)
    {
      v28 = 0;
    }

    v29 = *(*&v15 + 4 * v28);
    v30 = *(*&v13 + 4 * v24);
    v31 = v26 * v27;
    if (v14)
    {
      v30 = v29 * v30;
    }

    else
    {
      v31 = v27;
    }

    SHADE(v11, v31 + (v21 * (v30 - v31)), v26 + (v21 * (v29 - v26)));
    a6.n128_u64[1] = v32.n128_u64[1];
    a6.n128_u64[0] = vadd_f32(v7, v32.n128_u64[0]);
    v11 += 2;
    *v12++ = -1;
    --a4;
  }

  while (a4);
}

uint64_t GRAYA8_sample_RGB24(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, int8x8_t a7, int8x8_t a8, double a9, int32x2_t a10, uint32x2_t a11)
{
  v11 = *(result + 32);
  v12 = *(result + 24);
  v13 = *(result + 176);
  v14 = *(result + 72);
  v85 = *(result + 80);
  v86 = *(result + 64);
  v87 = *(result + 88);
  v15 = *(result + 112);
  v16 = *(result + 120);
  v84 = *(result + 188);
  v17 = *(result + 152) - 2;
  v18 = *(result + 144) - 1;
  v19 = v11 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v12) - 3;
  while (1)
  {
LABEL_2:
    if (a3 >= v14)
    {
      if (a3 <= v87)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        HIDWORD(v30) = HIDWORD(a3);
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v87;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_34;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v29 = v27 | v84;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v14 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      if (v22 < 1)
      {
        goto LABEL_34;
      }

      if (v22 >= v20)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v22) >> 32;
      }

      v29 = v23 | v84;
      v30 = v21 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v86)
    {
      break;
    }

    v31 = *(result + 192);
    v32 = v86 - *(result + 200);
    v33 = a2 - v32 + (v31 >> 1);
    if (v33 >= 1)
    {
      if (v33 < v31)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v84;
      }

      v34 = v32 + 0x1000000;
      v35 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v15;
    a3 += v16;
    v17 += 2;
    *++v18 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v85)
  {
    v35 = (a2 >> 26) & 0x3C;
    v34 = a2;
    goto LABEL_26;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v85;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_34;
  }

  if (v38 < v36)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v84;
  }

  v34 = v37 - 0x1000000;
  v35 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_34;
  }

  v39 = v11 + SHIDWORD(v30) * v12;
  v40 = 3 * (v34 >> 32);
  v41 = v39 + v40;
  v42 = *(result + 32);
  if (v19 >= v39 + v40)
  {
    v43 = (v39 + v40);
  }

  else
  {
    v43 = v19;
  }

  if (v43 < v42)
  {
    v43 = *(result + 32);
  }

  a7.i8[0] = *v43;
  a7.i8[4] = v43[1];
  v44 = v43[2];
  if (!v13)
  {
    goto LABEL_36;
  }

  v45 = *(v13 + (v35 | v28));
LABEL_51:
  v53 = v45 & 0xF;
  v54 = HIBYTE(v45) & 3;
  switch(v53)
  {
    case 1:
      v81 = (v41 + SBYTE1(v45) * v12);
      if (v19 < v81)
      {
        v81 = v19;
      }

      if (v81 < v42)
      {
        v81 = v42;
      }

      v82 = interpolate_rgba[4 * interpolate_rgba[4 * v54 + 3] + 3];
      v75 = (v82 & v81[2]) >> (interpolate_rgba[4 * v54 + 3] + 1);
      a8.i8[0] = *v81;
      a8.i8[4] = v81[1];
      v83 = vdup_n_s32(v82);
      a11 = vneg_s32(vdup_n_s32(interpolate_rgba[4 * v54 + 3] + 1));
      a10 = vshl_u32(vand_s8(v83, vand_s8(a7, 0xFF000000FFLL)), a11);
      v80 = vsub_s32(a7, a10);
      v79 = vand_s8(v83, 0xFF000000FFLL);
      goto LABEL_81;
    case 2:
      v76 = (v41 + 3 * SBYTE2(v45));
      if (v19 < v76)
      {
        v76 = v19;
      }

      if (v76 < v42)
      {
        v76 = v42;
      }

      v77 = (v45 >> 28) & 3;
      v78 = interpolate_rgba[4 * v77++ + 3];
      v75 = (v78 & v76[2]) >> v77;
      a8.i8[0] = *v76;
      a8.i8[4] = v76[1];
      v79 = vand_s8(vdup_n_s32(v78), 0xFF000000FFLL);
      a11 = vneg_s32(vdup_n_s32(v77));
      a10 = vshl_u32(vand_s8(v79, a7), a11);
      v80 = vsub_s32(a7, a10);
LABEL_81:
      a8 = vshl_u32(vand_s8(v79, a8), a11);
      a7 = vadd_s32(v80, a8);
      LOBYTE(v74) = a7.i8[0];
      goto LABEL_82;
    case 3:
      v55 = 3 * SBYTE2(v45);
      v56 = (v41 + v55);
      if (v19 < v41 + v55)
      {
        v56 = v19;
      }

      if (v56 >= v42)
      {
        v57 = v56;
      }

      else
      {
        v57 = v42;
      }

      v58 = v41 + SBYTE1(v45) * v12;
      if (v19 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v19;
      }

      if (v59 >= v42)
      {
        v60 = v59;
      }

      else
      {
        v60 = v42;
      }

      v61 = (v58 + v55);
      if (v19 < v61)
      {
        v61 = v19;
      }

      if (v61 >= v42)
      {
        v62 = v61;
      }

      else
      {
        v62 = v42;
      }

      v63 = (v45 >> 28) & 3;
      v64 = interpolate_rgba[4 * v54 + 3];
      v65 = interpolate_rgba[4 * v63 + 3];
      v66 = v54 + 1;
      a8.i8[0] = *v62;
      a8.i8[4] = v62[1];
      v67 = v63 + 1;
      v68 = vdup_n_s32(v64);
      a10.i8[0] = *v57;
      a10.i8[4] = v57[1];
      a11.i8[0] = *v60;
      a11.i8[4] = v60[1];
      v69 = vneg_s32(vdup_n_s32(v66));
      v70 = vadd_s32(vsub_s32(a7, vshl_u32(vand_s8(v68, a7), v69)), vshl_u32(vand_s8(v68, a11), v69));
      v71 = vadd_s32(vsub_s32(a10, vshl_u32(vand_s8(v68, a10), v69)), vshl_u32(vand_s8(v68, a8), v69));
      v72 = vand_s8(vdup_n_s32(v65), 0xFF000000FFLL);
      a11 = vneg_s32(vdup_n_s32(v63 + 1));
      a10 = vshl_u32(vand_s8(v70, v72), a11);
      a8 = vshl_u32(vand_s8(v71, v72), a11);
      a7 = vadd_s32(vsub_s32(v70, a10), a8);
      v73 = v44 - ((v64 & v44) >> v66) + ((v64 & v60[2]) >> v66);
      v74 = v73 - ((v73 & v65) >> v67);
      v75 = ((v57[2] - ((v64 & v57[2]) >> v66) + ((v64 & v62[2]) >> v66)) & v65) >> v67;
LABEL_82:
      LOBYTE(v44) = v74 + v75;
      break;
  }

LABEL_36:
  a7 = vmul_s32(vand_s8(a7, 0xFF000000FFLL), 0x500000002);
  *(v17 + 2) = ((a7.i32[0] + v44 + a7.i32[1]) >> 3) | 0xFF00;
  *(v18 + 1) = v29 >> 22;
  if (a4 != 1)
  {
    v46 = 0;
    a2 += v15;
    v47 = v85 - a2;
    a3 += v16;
    v48 = v87 - a3;
    v49 = -2;
    while (((v48 | v47 | (a3 - v14) | (a2 - v86)) & 0x8000000000000000) == 0)
    {
      v50 = v11 + SHIDWORD(a3) * v12;
      v51 = 3 * (a2 >> 32);
      v41 = v50 + v51;
      v42 = *(result + 32);
      if (v19 >= v50 + v51)
      {
        v52 = (v50 + v51);
      }

      else
      {
        v52 = v19;
      }

      if (v52 < v42)
      {
        v52 = *(result + 32);
      }

      a7.i8[0] = *v52;
      a7.i8[4] = v52[1];
      v44 = v52[2];
      if (v13)
      {
        v45 = *(v13 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v45 & 0xF) != 0)
        {
          v18 += v46 + 1;
          v17 -= v49;
          a4 += ~v46;
          v29 = -1;
          goto LABEL_51;
        }
      }

      *(v17 + 2 * v46 + 4) = ((v44 + 2 * a7.u8[0] + 5 * a7.u8[4]) >> 3) | 0xFF00;
      *(v18 + v46++ + 2) = -1;
      v49 -= 2;
      a2 += v15;
      v47 -= v15;
      a3 += v16;
      v48 -= v16;
      if (a4 - 1 == v46)
      {
        return result;
      }
    }

    v18 += v46 + 1;
    v17 -= v49;
    a4 += ~v46;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t GRAYA8_sample_CMYK32_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (*(result + 8) >> 4) & 3;
  if (v8 >= 2)
  {
    _CGHandleAssert("GRAYA8_sample_CMYK32_inner", 9662, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "reverse == NO_REVERSE || reverse == PIXEL_REVERSE", "reverse = %d", a6, a7, a8, v8);
  }

  v10 = v8 == 0;
  v11 = 3;
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = 3;
  }

  v13 = 1;
  if (v10)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v13 = 2;
  }

  v15 = *(result + 40);
  v16 = *(result + 24);
  v17 = *(result + 176);
  v140 = *(result + 80);
  v142 = *(result + 88);
  v18 = *(result + 112);
  v19 = *(result + 120);
  v138 = *(result + 188);
  v144 = *(result + 152) - 2;
  v143 = *(result + 144) - 1;
  v20 = *(result + 260) - 1;
  v21 = *(result + 256);
  v146 = *(result + 32);
  v145 = *(result + 28);
  v22 = (v15 + v21 + (v20 * v145));
  v23 = v146 + (4 * v21) + (v20 * v16) - 4;
  v141 = *(result + 72);
  v139 = *(result + 64);
  while (1)
  {
    if (a3 >= v141)
    {
      if (a3 <= v142)
      {
        v33 = (a3 >> 22) & 0x3C0;
        v34 = 0x3FFFFFFF;
        v35 = a3;
        v27 = a4;
        v36 = v139;
      }

      else
      {
        v29 = *(result + 216);
        v30 = *(result + 224) + v142;
        v31 = v30 - a3 + (v29 >> 1);
        v27 = a4;
        if (v31 < 1)
        {
          goto LABEL_49;
        }

        if (v31 >= v29)
        {
          LODWORD(v32) = 0x3FFFFFFF;
        }

        else
        {
          v32 = (*(result + 232) * v31) >> 32;
        }

        v36 = v139;
        v34 = v138 | v32;
        v35 = v30 - 0x1000000;
        v33 = 448;
      }
    }

    else
    {
      v24 = *(result + 216);
      v25 = v141 - *(result + 224);
      v26 = a3 - v25 + (v24 >> 1);
      v27 = a4;
      if (v26 < 1)
      {
        goto LABEL_49;
      }

      if (v26 >= v24)
      {
        LODWORD(v28) = 0x3FFFFFFF;
      }

      else
      {
        v28 = (*(result + 232) * v26) >> 32;
      }

      v36 = v139;
      v34 = v138 | v28;
      v35 = v25 + 0x1000000;
      v33 = 512;
    }

    if (a2 >= v36)
    {
      if (a2 <= v140)
      {
        v41 = (a2 >> 26) & 0x3C;
        v40 = a2;
      }

      else
      {
        v42 = *(result + 192);
        v43 = *(result + 200) + v140;
        v44 = v43 - a2 + (v42 >> 1);
        if (v44 < 1)
        {
          goto LABEL_49;
        }

        if (v44 < v42)
        {
          v34 = ((v34 >> 15) * (((*(result + 208) * v44) >> 32) >> 15)) | v138;
        }

        v40 = v43 - 0x1000000;
        v41 = 28;
      }
    }

    else
    {
      v37 = *(result + 192);
      v38 = v36 - *(result + 200);
      v39 = a2 - v38 + (v37 >> 1);
      if (v39 < 1)
      {
        goto LABEL_49;
      }

      if (v39 < v37)
      {
        v34 = ((v34 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v138;
      }

      v40 = v38 + 0x1000000;
      v41 = 32;
    }

    if (v34 >= 0x400000)
    {
      break;
    }

LABEL_49:
    v54 = v27 - 1;
    a2 += v18;
    a3 += v19;
    *++v143 = 0;
    v144 += 2;
LABEL_50:
    a4 = v54;
    if (!v54)
    {
      return result;
    }
  }

  v45 = v35 >> 32;
  v46 = v40 >> 32;
  v47 = v146 + SHIDWORD(v35) * v16 + 4 * (v40 >> 32);
  v48 = *(result + 32);
  if (v23 >= v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = v23;
  }

  if (v49 < v48)
  {
    v49 = *(result + 32);
  }

  if (v15)
  {
    v50 = v15 + v45 * v145 + v46;
    v51 = *(result + 40);
    if (v22 >= v50)
    {
      v52 = (v15 + v45 * v145 + v46);
    }

    else
    {
      v52 = v22;
    }

    if (v52 >= v51)
    {
      v51 = v52;
    }

    v53 = *v51;
  }

  else
  {
    v50 = 0;
    v53 = 255;
  }

  v55.i16[0] = *(v49 + v11);
  v55.i16[1] = *(v49 + v13);
  v55.i16[2] = *(v49 + v14);
  v55.i16[3] = *(v49 + v12);
  if (!v17)
  {
    goto LABEL_55;
  }

  v56 = *(v17 + (v41 | v33));
LABEL_77:
  v72 = v56 & 0xF;
  v73 = (v56 >> 28) & 3;
  if (v72 == 1)
  {
    v116 = v47 + SBYTE1(v56) * v16;
    if (v23 < v116)
    {
      v116 = v23;
    }

    if (v116 < v48)
    {
      v116 = v48;
    }

    v117 = *(v116 + v14);
    v118 = *(v116 + v13);
    v119 = *(v116 + v12);
    v120 = 255;
    if (v15)
    {
      v121 = (v50 + SBYTE1(v56) * v145);
      if (v22 < v121)
      {
        v121 = v22;
      }

      if (v121 < *(result + 40))
      {
        v121 = *(result + 40);
      }

      v120 = *v121;
    }

    v122 = interpolate_cmyka8[(v73 | (4 * v73)) + 4];
    v123 = v73 + 1;
    v124 = vdup_n_s16(v122);
    v125 = vdupq_n_s32(v123);
    v126.i16[0] = v117;
    v126.i16[1] = v118;
    v126.i16[2] = v117;
    v126.i16[3] = v119;
    v55 = vadd_s16(vsub_s16(v55, vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v124, v55)), vnegq_s32(v125)))), vshl_u16(vand_s8(v124, v126), vneg_s16(vmovn_s32(v125))));
    v53 = v53 - ((v122 & v53) >> v123) + ((v120 & v122) >> v123);
LABEL_55:
    v57 = v140;
    goto LABEL_56;
  }

  if (v72 != 2)
  {
    if (v72 == 3)
    {
      v74 = v27;
      v75 = HIWORD(v56) << 56;
      v76 = v47 + (v75 >> 54);
      if (v23 < v76)
      {
        v76 = v23;
      }

      if (v76 < v48)
      {
        v76 = v48;
      }

      v77 = *(v76 + v11);
      v78 = *(v76 + v13);
      v127 = *(v76 + v14);
      v128 = *(v76 + v12);
      v79 = v47 + SBYTE1(v56) * v16;
      if (v23 >= v79)
      {
        v80 = v47 + SBYTE1(v56) * v16;
      }

      else
      {
        v80 = v23;
      }

      if (v80 < v48)
      {
        v80 = v48;
      }

      v129 = *(v80 + v11);
      v130 = *(v80 + v13);
      v131 = *(v80 + v14);
      v132 = *(v80 + v12);
      v81 = v79 + (v75 >> 54);
      if (v23 < v81)
      {
        v81 = v23;
      }

      if (v81 < v48)
      {
        v81 = v48;
      }

      v133 = *(v81 + v11);
      v134 = *(v81 + v13);
      v135 = *(v81 + v14);
      v137 = *(v81 + v12);
      v82 = 255;
      v83 = 255;
      v84 = 255;
      if (v15)
      {
        v85 = (v50 + SBYTE2(v56));
        v86 = *(result + 40);
        if (v22 < v85)
        {
          v85 = v22;
        }

        if (v85 < v86)
        {
          v85 = *(result + 40);
        }

        v84 = *v85;
        v87 = v50 + SBYTE1(v56) * v145;
        if (v22 >= v87)
        {
          v88 = (v50 + SBYTE1(v56) * v145);
        }

        else
        {
          v88 = v22;
        }

        if (v88 < v86)
        {
          v88 = *(result + 40);
        }

        v83 = *v88;
        v89 = (v87 + SBYTE2(v56));
        if (v22 < v89)
        {
          v89 = v22;
        }

        if (v89 >= v86)
        {
          v86 = v89;
        }

        v82 = *v86;
      }

      v90 = HIBYTE(v56) & 3;
      v91 = interpolate_cmyka8[(v90 | (4 * v90)) + 4];
      v92 = interpolate_cmyka8[(v73 | (4 * v73)) + 4];
      v93 = v90 + 1;
      v94 = vdup_n_s16(v91);
      v95 = v73 + 1;
      v96.i16[0] = v77;
      v96.i16[1] = v78;
      v96.i16[2] = v127;
      v96.i16[3] = v128;
      v97 = vdupq_n_s32(v90 + 1);
      v98 = vnegq_s32(v97);
      v99.i16[0] = v129;
      v99.i16[1] = v130;
      v99.i16[2] = v131;
      v99.i16[3] = v132;
      v100 = vadd_s16(vsub_s16(v55, vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v94, v55)), v98))), vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v94, v99)), v98)));
      v99.i16[0] = v133;
      v99.i16[1] = v134;
      v99.i16[2] = v135;
      v99.i16[3] = v137;
      v101 = vadd_s16(vsub_s16(v96, vshl_u16(vand_s8(v94, v96), vneg_s16(vmovn_s32(v97)))), vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v94, v99)), v98)));
      v102 = vdup_n_s16(v92);
      v103 = vnegq_s32(vdupq_n_s32(v95));
      v55 = vadd_s16(vsub_s16(v100, vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v100, v102)), v103))), vmovn_s32(vshlq_u32(vmovl_u16(vand_s8(v101, v102)), v103)));
      LODWORD(v90) = v53 - ((v91 & v53) >> (v90 + 1)) + ((v83 & v91) >> (v90 + 1));
      v53 = v90 + (((v84 - ((v84 & v91) >> v93) + ((v82 & v91) >> v93)) & v92) >> v95) - ((v90 & v92) >> v95);
      v27 = v74;
    }

    goto LABEL_55;
  }

  v104 = v47 + ((HIWORD(v56) << 56) >> 54);
  if (v23 < v104)
  {
    v104 = v23;
  }

  if (v104 < v48)
  {
    v104 = v48;
  }

  v105 = *(v104 + v11);
  v106 = *(v104 + v13);
  v107 = *(v104 + v14);
  v108 = *(v104 + v12);
  v109 = 255;
  v57 = v140;
  if (v15)
  {
    v110 = (v50 + SBYTE2(v56));
    if (v22 < v110)
    {
      v110 = v22;
    }

    if (v110 < *(result + 40))
    {
      v110 = *(result + 40);
    }

    v109 = *v110;
  }

  v111 = interpolate_cmyka8[(v73 | (4 * v73)) + 4];
  v112 = v73 + 1;
  v113 = vdup_n_s16(v111);
  v114 = vneg_s16(vdup_n_s16(v112));
  v115.i16[0] = v105;
  v115.i16[1] = v106;
  v115.i16[2] = v107;
  v115.i16[3] = v108;
  v55 = vadd_s16(vsub_s16(v55, vshl_u16(vand_s8(v113, v55), v114)), vshl_u16(vand_s8(v113, v115), v114));
  v53 = v53 - ((v111 & v53) >> v112) + ((v109 & v111) >> v112);
LABEL_56:
  v58 = 0;
  v59 = 0;
  v60 = v34 >> 22;
  v136 = v27;
  v61 = v27 - 1;
  a3 += v19;
  v62 = v142 - a3;
  a2 += v18;
  v63 = v57 - a2;
  while (1)
  {
    v64 = v55.u8[6];
    v65 = v55.u8[4];
    v66 = vmovl_u16(v55);
    v67 = v53 - (v65 + v64);
    *v66.i8 = vmax_s32(vsub_s32(vdup_n_s32(v53), vadd_s32(vdup_lane_s32(vand_s8(*&vextq_s8(v66, v66, 8uLL), 0xFF000000FFLL), 1), vand_s8(*v66.i8, 0xFF000000FFLL))), 0);
    v68 = vshl_u32(*v66.i8, 0x200000001);
    *(v144 + 2 + 2 * v59) = (((v67 & ~(v67 >> 31)) + v68.i16[0] + v66.i16[2] + v68.i16[2]) >> 3) + (v53 << 8);
    *(v143 + 1 + v59) = v60;
    if (v61 == v59)
    {
      return result;
    }

    if ((v62 | v63 | (a3 - v141) | (a2 - v139)) < 0)
    {
      v143 += v59 + 1;
      v144 = v144 - v58 + 2;
      v54 = ~v59 + v136;
      goto LABEL_50;
    }

    v47 = v146 + SHIDWORD(a3) * v16 + 4 * (a2 >> 32);
    v48 = *(result + 32);
    if (v23 >= v47)
    {
      v69 = v146 + SHIDWORD(a3) * v16 + 4 * (a2 >> 32);
    }

    else
    {
      v69 = v23;
    }

    if (v69 < v48)
    {
      v69 = *(result + 32);
    }

    if (v15)
    {
      v50 = v15 + SHIDWORD(a3) * v145 + (a2 >> 32);
      v70 = *(result + 40);
      if (v22 >= v50)
      {
        v71 = v15 + SHIDWORD(a3) * v145 + (a2 >> 32);
      }

      else
      {
        v71 = v22;
      }

      if (v71 >= v70)
      {
        v70 = v71;
      }

      v53 = *v70;
    }

    else
    {
      v53 = 255;
    }

    v55.i16[0] = *(v69 + v11);
    v55.i16[1] = *(v69 + v13);
    v55.i16[2] = *(v69 + v14);
    v55.i16[3] = *(v69 + v12);
    if (v17)
    {
      v56 = *(v17 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v56 & 0xF) != 0)
      {
        v143 += v59 + 1;
        v144 = v144 - v58 + 2;
        v27 = ~v59 + v136;
        v34 = -1;
        goto LABEL_77;
      }
    }

    ++v59;
    v58 -= 2;
    a3 += v19;
    v62 -= v19;
    a2 += v18;
    v63 -= v18;
    LOBYTE(v60) = -1;
  }
}

void CoonsMeshFree(void **a1)
{
  free(a1[1]);
  free(a1[3]);
  free(a1[5]);

  free(a1);
}

__n128 AllocateCoonsMeshTriangle(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == -1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 52);
    v6 = *(a1 + 40);
    if (v4 == v5)
    {
      v6 = malloc_type_realloc(v6, 48 * (v4 + 50), 0x1000040EED21634uLL);
      *(a1 + 40) = v6;
      if (!v6)
      {
        return result;
      }

      v4 = *(a1 + 48);
      *(a1 + 52) += 50;
    }

    *(a1 + 48) = v4 + 1;
    v3 = &v6[48 * v4];
  }

  else
  {
    v3 = (*(a1 + 40) + 48 * v2);
    *(a1 + 64) = v3[2].n128_u32[1];
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v3 = result;
  v3[1] = result;
  v3[2].n128_u64[0] = -1;
  v3[2].n128_u64[1] = 1;
  return result;
}

void *AllocateCoonsMeshEdge(uint64_t a1)
{
  v2 = *(a1 + 68);
  if (v2 == -1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 36);
    result = *(a1 + 24);
    if (v4 == v5)
    {
      result = malloc_type_realloc(result, 20 * (v4 + 50), 0x1000040A86A77D5uLL);
      *(a1 + 24) = result;
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 32);
      *(a1 + 36) += 50;
    }

    *(a1 + 32) = v4 + 1;
    result = (result + 20 * v4);
  }

  else
  {
    result = (*(a1 + 24) + 20 * v2);
    *(a1 + 68) = *(result + 4);
  }

  *result = -1;
  result[1] = -1;
  *(result + 4) = -1;
  return result;
}

BOOL TriangleGreater(uint64_t a1, int *a2, int *a3)
{
  v3 = a1 + 72 * *a2;
  v4 = a1 + 72 * a2[1];
  v5 = a1 + 72 * a2[2];
  v6 = (*(v3 + 24) + *(v4 + 24) + *(v5 + 24)) * 0.333330005;
  v7 = a1 + 72 * *a3;
  v8 = a1 + 72 * a3[1];
  v9 = a1 + 72 * a3[2];
  v10 = (*(v7 + 24) + *(v8 + 24) + *(v9 + 24)) * 0.333330005;
  if (v10 < v6)
  {
    return 1;
  }

  if (v10 <= v6)
  {
    return (*(v7 + 16) + *(v8 + 16) + *(v9 + 16)) * 0.333330005 < (*(v3 + 16) + *(v4 + 16) + *(v5 + 16)) * 0.333330005;
  }

  return 0;
}

char *CGBacktraceCreate(uint64_t a1)
{
  v13[128] = *MEMORY[0x1E69E9840];
  bzero(v13, 0x400uLL);
  memset(&v11, 0, sizeof(v11));
  v2 = backtrace(v13, 128);
  if (a1)
  {
    v3 = a1 + 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = malloc_type_calloc(0x81uLL, v4, 0xA07044AEuLL);
  if (v5)
  {
    v6 = v4 >= 3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = 3;
    v8 = 2;
    do
    {
      if (dladdr(v13[v8], &v11))
      {
        snprintf(__str, 0x80uLL, "%1.*s<%s+%ld>");
      }

      else
      {
        snprintf(__str, 0x80uLL, "%1.*s%8lx");
      }

      strcat(v5, __str);
      if (v4 - 2 > v8)
      {
        *&v5[strlen(v5)] = 10;
      }

      v8 = v7;
    }

    while (v4 > v7++);
  }

  return v5;
}

void CGTextClippingRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    while (1)
    {
      v2 = a1[1];
      if (!v2)
      {
        break;
      }

      a1[1] = *v2;
      v3 = v2[1];
      if (v3)
      {
        CFRelease(v3);
      }

      free(v2);
    }

    free(a1);
  }
}

uint64_t CGTextClippingEqualToTextClipping(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (a1 != a2 && a1 && a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    v5 = v4 != 0;
    v6 = v3 != 0;
    if (v4 && v3)
    {
      while (1)
      {
        v7 = v4[1];
        if (v7)
        {
          v8 = *(v7 + 24);
          if (!v8)
          {
            atomic_compare_exchange_strong_explicit((v7 + 24), &v8, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
            v8 = *(v7 + 24);
          }
        }

        else
        {
          v8 = 0;
        }

        v9 = v3[1];
        if (v9)
        {
          v10 = *(v9 + 24);
          if (!v10)
          {
            atomic_compare_exchange_strong_explicit((v9 + 24), &v10, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
            v10 = *(v9 + 24);
          }
        }

        else
        {
          v10 = 0;
        }

        if (v8 != v10 || *(v4 + 2) == *(v3 + 2) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 3), *(v3 + 3)), vceqq_f64(*(v4 + 5), *(v3 + 5))))) & 1) != 0 && *(v4 + 7) == *(v3 + 7))
        {
          break;
        }

        v11 = v4[8];
        if (v11 != v3[8])
        {
          break;
        }

        if (v11)
        {
          v12 = (v3 + 11);
          v13 = (v4 + 11);
          while (*v13 == *v12)
          {
            if (*(v13 - 2) != *(v12 - 2) || *(v13 - 1) != *(v12 - 1))
            {
              break;
            }

            v12 += 3;
            v13 += 3;
            if (!--v11)
            {
              goto LABEL_28;
            }
          }

          break;
        }

LABEL_28:
        v3 = *v3;
        v4 = *v4;
        v5 = v4 != 0;
        v6 = v3 != 0;
        if (!v4 || !v3)
        {
          goto LABEL_30;
        }
      }

      v2 = 0;
    }

    else
    {
LABEL_30:
      v2 = !v5 && !v6;
    }
  }

  return v2 & 1;
}

void *CGTextClippingCreateCopyByApplyingTransform(uint64_t a1, float64x2_t *a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  *v4 = 1;
  v4[1] = 0;
  v4[2] = 0;
  if (!a2)
  {
    a2 = &CGAffineTransformIdentity;
  }

  for (i = *(a1 + 8); i; i = *i)
  {
    *&v15.tx = 0uLL;
    v6 = *a2;
    *&v15.c = a2[1];
    v7 = vmlaq_n_f64(vmulq_n_f64(*&v15.c, i[3]), v6, i[2]);
    v8 = vmlaq_n_f64(vmulq_n_f64(*&v15.c, i[5]), v6, i[4]);
    v9 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(*&v15.c, i[7]), v6, i[6]), 0);
    *&v15.a = v7;
    *&v15.c = v8;
    *&v15.tx = v9;
    v10 = add_glyph_clip(v4, *(i + 1), &v15, *(i + 8));
    if (v10)
    {
      v11 = *(i + 8);
      if (v11)
      {
        v12 = (v10 + 11);
        v13 = i + 11;
        do
        {
          LOWORD(v12->f64[0]) = *v13;
          v12[-1] = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_n_f64(a2[1], *(v13 - 1)), *a2, *(v13 - 2)));
          v12 = (v12 + 24);
          v13 += 3;
          --v11;
        }

        while (v11);
      }
    }
  }

  return v4;
}

void *add_glyph_clip(uint64_t a1, const void *a2, const CGAffineTransform *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 24 * a4 + 72, 0x10200409514FCE9uLL);
  if (v8)
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v8[1] = a2;
    v9 = &CGAffineTransformIdentity;
    if (a3)
    {
      v9 = a3;
    }

    v10 = *&v9->a;
    v11 = *&v9->tx;
    *(v8 + 2) = *&v9->c;
    *(v8 + 3) = v11;
    *(v8 + 1) = v10;
    v8[8] = a4;
    v12 = (a1 + 8);
    if (*(a1 + 8))
    {
      v12 = *(a1 + 16);
    }

    *v12 = v8;
    *(a1 + 16) = v8;
  }

  return v8;
}

double CGTextClippingAppendGlyphs(uint64_t a1, const void *a2, const CGAffineTransform *a3, __int16 *a4, __int128 *a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      v6 = a4;
      if (a4)
      {
        v7 = a5;
        if (a5)
        {
          v8 = a6;
          v9 = add_glyph_clip(a1, a2, a3, a6);
          if (v9)
          {
            v11 = v9 + 11;
            do
            {
              v12 = *v6++;
              *v11 = v12;
              v13 = *v7++;
              result = *&v13;
              *(v11 - 1) = v13;
              v11 += 12;
              --v8;
            }

            while (v8);
          }
        }
      }
    }
  }

  return result;
}

CGPath *CGTextClippingCreatePath(uint64_t a1)
{
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      memset(&m, 0, sizeof(m));
      do
      {
        font_info = get_font_info(v3[1]);
        if (font_info)
        {
          v5 = font_info[2];
        }

        else
        {
          v5 = 0.0;
        }

        if (v3[8])
        {
          v6 = 0;
          v7 = *(v3 + 2);
          v8 = *(v3 + 1);
          v9 = vmulq_f64(v7, 0);
          v10 = vaddq_f64(*(v3 + 3), vmlaq_f64(v9, 0, v8));
          v11 = 1.0 / v5;
          v12 = vmlaq_f64(vmulq_n_f64(v7, v11), 0, v8);
          v13 = vmlaq_n_f64(v9, v8, v11);
          v20 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v12, 1), xmmword_18439C630, v12.f64[0]);
          v21 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v13, 1), xmmword_18439C630, v13.f64[0]);
          v19 = vmlaq_n_f64(vmulq_laneq_f64(xmmword_18439C780, v10, 1), xmmword_18439C630, v10.f64[0]);
          v14 = (v3 + 11);
          do
          {
            v15 = v3[1];
            if (v15)
            {
              v16 = (*(*(v15 + 16) + 408))(*(v15 + 112), 0, LOWORD(v14->f64[0]));
            }

            else
            {
              v16 = 0;
            }

            v17 = vaddq_f64(v14[-1], v19);
            *&m.a = v21;
            *&m.c = v20;
            *&m.tx = v17;
            CGPathAddPath(Mutable, &m, v16);
            if (v16)
            {
              CFRelease(v16);
            }

            ++v6;
            v14 = (v14 + 24);
          }

          while (v6 < v3[8]);
        }

        v3 = *v3;
      }

      while (v3);
    }
  }

  return Mutable;
}

size_t data_get_bytes_at_position(uint64_t a1, void *__dst, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    _CGHandleAssert("data_get_bytes_at_position", 64, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderData.c", "offset >= 0", "offset %lld", a6, a7, a8, a3);
  }

  v8 = a4;
  if ((a4 + a3) >= 1)
  {
    v9 = *(a1 + 8);
    if (v9 > a3)
    {
      if (a4 + a3 > v9)
      {
        v8 = v9 - a3;
      }

      memcpy(__dst, (*(a1 + 16) + a3), v8);
    }
  }

  return v8;
}

CGDataProviderRef CGDataProviderCreateWithDataNoCopy(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  check_clients_buffer("CGDataProviderCreateWithDataNoCopy", a2, a3);
  v7 = malloc_type_malloc(0x20uLL, 0x10C0040176BE1E5uLL);
  *v7 = 0;
  v7[1] = a3;
  v7[2] = a2;
  v7[3] = a4;
  v12.version = 0;
  memset(&v12.retain, 0, 40);
  v12.info = v7;
  v12.deallocate = no_copy_deallocator_deallocate;
  v12.preferredSize = 0;
  v8 = CFAllocatorCreate(0, &v12);
  v9 = CFDataCreateWithBytesNoCopy(0, a2, a3, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (!v9)
  {
    return 0;
  }

  v10 = CGDataProviderCreateWithCFData(v9);
  CFRelease(v9);
  return v10;
}

size_t cf_get_bytes_at_position(const __CFData *a1, void *a2, uint64_t a3, size_t a4)
{
  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (a3 < 0)
  {
    _CGHandleAssert("cf_get_bytes_at_position", 292, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderData.c", "offset >= 0", "offset %lld", v10, v11, v12, a3);
  }

  if ((a4 + a3) >= 1 && Length > a3)
  {
    if ((a4 + a3) > Length)
    {
      a4 = Length - a3;
    }

    memcpy(a2, &BytePtr[a3], a4);
  }

  return a4;
}

void no_copy_deallocator_deallocate(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    v3(*a2, a1, a2[1]);
  }

  free(a2);
}

__CFData *CGDataProviderCopyPixelData(CFIndex *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = (a4 * a2 + 7) >> 3;
  v7 = v6 * a3;
  if (a5 != v6)
  {
    v14 = CGAccessSessionCreate(a1);
    if (v14)
    {
      v18 = a5 - v6;
      if (a5 <= v6)
      {
        _CGHandleAssert("CGDataProviderCopyPixelData", 782, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderData.c", "bytes_per_row > pixel_bytes_per_row", "bpr %zu  pbpr %zu", v15, v16, v17, a5);
      }

      v19 = v14;
      Mutable = CFDataCreateMutable(0, 0);
      if (CGCFDataIncreaseLength(Mutable, v7))
      {
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        CGAccessSessionGetChunksAtPosition(v19, 0, v6, v18, a3, MutableBytePtr, 0, v21);
        CFDataGetLength(Mutable);
        v22 = v19;
LABEL_9:
        CGAccessSessionRelease(v22);
        return Mutable;
      }

      CFRelease(Mutable);
      v23 = v19;
      goto LABEL_11;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v8 = CGDataProviderRetainBytePtr(a1);
  if (!v8)
  {
    v25 = CGAccessSessionCreate(a1);
    CGDataProviderReleaseBytePtr(a1);
    if (!v25)
    {
      return 0;
    }

    if (*v25)
    {
      v26 = *(*v25 + 32);
      v27 = v7 == 0;
      v28 = v26;
      if (v26 != -1)
      {
LABEL_20:
        if (v27)
        {
          v29 = v28;
        }

        else
        {
          v29 = v7;
        }

        Mutable = CFDataCreateMutable(0, 0);
        if (CGCFDataIncreaseLength(Mutable, v29))
        {
          v30 = CFDataGetMutableBytePtr(Mutable);
          v36 = 0;
          v37 = 0;
          v38 = v7 - 1;
          while (1)
          {
            Bytes = CGAccessSessionGetBytes(v25, v30, v29, v31, v32, v33, v34, v35);
            if (!Bytes)
            {
              break;
            }

            v40 = Bytes;
            v41 = v29 - Bytes;
            if (v29 <= Bytes)
            {
              if (Bytes == v26)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v46.location = CFDataGetLength(Mutable) - v41;
              v46.length = v41;
              CFDataDeleteBytes(Mutable, v46);
            }

            v42 = v29 == v40 && v37 <= v29;
            v43 = 2 * v29;
            if (!v42)
            {
              v43 = v40;
            }

            if (v43 >= 0x4000000)
            {
              v43 = 0x4000000;
            }

            if (v43 <= 0x4000)
            {
              v29 = 0x4000;
            }

            else
            {
              v29 = v43;
            }

            if ((CGCFDataIncreaseLength(Mutable, v29) & 1) == 0)
            {
              CGAccessSessionRelease(v25);
              CFRelease(Mutable);
              return 0;
            }

            v36 += v40;
            v44 = CFDataGetMutableBytePtr(Mutable);
            if (v44)
            {
              v30 = &v44[v36];
            }

            else
            {
              CFRelease(Mutable);
              Mutable = 0;
              v30 = 0;
            }

            v37 = v29;
            if (v38 < v36)
            {
              goto LABEL_51;
            }
          }

          if (CGAccessSessionHasError(v25) || !v36)
          {
            CFRelease(Mutable);
            Mutable = 0;
          }

          else
          {
            v47.location = CFDataGetLength(Mutable) - v29;
            v47.length = v29;
            CFDataDeleteBytes(Mutable, v47);
          }

LABEL_51:
          v22 = v25;
          goto LABEL_9;
        }

        CFRelease(Mutable);
        v23 = v25;
LABEL_11:
        CGAccessSessionRelease(v23);
        return 0;
      }
    }

    else
    {
      v27 = v7 == 0;
      v26 = -1;
    }

    v28 = 0x10000;
    goto LABEL_20;
  }

  v9 = v8;
  CGDataProviderRetainBytePtr(a1);
  context.version = 0;
  memset(&context.retain, 0, 40);
  context.info = a1;
  context.deallocate = provider_allocator_deallocate;
  context.preferredSize = 0;
  v10 = CFAllocatorCreate(0, &context);
  Mutable = CFDataCreateWithBytesNoCopy(0, v9, a1[4], v10);
  CGDataProviderReleaseBytePtr(a1);
  CFRelease(v10);
  return Mutable;
}

void CGGStateClipToPath(uint64_t *a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v6 = CFGetTypeID(cf), v6 == CGPathGetTypeID()))
    {
      if (a3 == 2)
      {
        v7 = CGClipStrokeCreateWithGState(a1);
        v8 = CGClipCreateWithStrokedPath(cf, v7);
        CGClipStrokeRelease(v7);
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v8 = CGClipCreateWithPath(cf, a3, HIBYTE(*(a1[15] + 4)) & 1, *(a1[18] + 8));
        if (!v8)
        {
          return;
        }
      }

      maybeCopyClipState(a1);
      CGClipStackAddClip(a1[14], v8);

      CGClipRelease(v8);
    }
  }
}

void CGGStateClipToTextClipping(uint64_t a1, uint64_t a2)
{
  CopyByApplyingTransform = CGTextClippingCreateCopyByApplyingTransform(a2, (a1 + 24));
  if (CopyByApplyingTransform)
  {
    v4 = CopyByApplyingTransform;
    v5 = CGClipCreateWithTextClipping(CopyByApplyingTransform);
    if (v5)
    {
      v6 = v5;
      maybeCopyClipState(a1);
      CGClipStackAddClip(*(a1 + 112), v6);
      CGClipRelease(v6);
    }

    CGTextClippingRelease(v4);
  }
}

double CGGStateGetClipBoundingBox(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    return CGClipStackGetBounds(v1);
  }

  else
  {
    return -8.98846567e307;
  }
}

uint64_t CGSConvertAlphaByteInterleved(int a1, int a2, int a3, int a4, unsigned __int8 *a5, _BYTE *a6, int a7, int a8, int a9, unsigned __int8 *a10, _BYTE *a11, int a12, int a13, int a14)
{
  v14 = a6;
  v15 = a5;
  if (a9 < 1)
  {
    result = a4 + 1;
    if (a9 < 0)
    {
      v17 = a4 + 1;
    }

    else
    {
      v17 = 1;
    }

    if (a9 < 0)
    {
      v15 = a5 + 1;
    }

    else
    {
      result = a4;
    }
  }

  else
  {
    v14 = &a6[a4];
    v17 = a4 + 1;
    result = v17;
  }

  v19 = a7 - result * a2;
  v20 = a4;
  v21 = 1;
  v22 = a4 + 1;
  if (a14 >= 0)
  {
    v23 = a10;
  }

  else
  {
    v21 = v22;
    v20 = v22;
    v23 = a10 + 1;
  }

  if (a14 >= 1)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  if (a14 >= 1)
  {
    v25 = v22;
  }

  else
  {
    v25 = v20;
  }

  if (a14 >= 1)
  {
    v26 = &a11[a4];
  }

  else
  {
    v26 = a11;
  }

  if (a14 >= 1)
  {
    v27 = a10;
  }

  else
  {
    v27 = v23;
  }

  if (a4 != 3)
  {
    v36 = (a4 - 1);
    v55 = a4;
    v56 = v24;
    v52 = v19;
    v53 = a2;
    v50 = a12 - v25 * a2;
    v51 = a8 - v17 * a2;
    v57 = a4;
    v58 = result;
    v49 = a13 - v24 * a2;
    while (1)
    {
      v54 = a3;
      if (a2 >= 1)
      {
        break;
      }

LABEL_74:
      a3 = v54 - 1;
      v15 += v52;
      v14 += v51;
      v27 += v50;
      v26 += v49;
      a2 = v53;
      if (v54 <= 1)
      {
        return result;
      }
    }

    v37 = a2;
    while (1)
    {
      v38 = *v14;
      if (v38 == 255)
      {
        LOBYTE(v39) = v15[v36];
        if (a4 >= 2)
        {
          v40 = v36;
          do
          {
            v41 = v15[v40 - 1];
            v27[v40] = v39;
            LOBYTE(v39) = v41;
            v35 = v40-- <= 1;
          }

          while (!v35);
          goto LABEL_65;
        }
      }

      else
      {
        if (!*v14)
        {
          if (a4 >= 1)
          {
            bzero(v27, v55);
            v24 = v56;
            a4 = v57;
            result = v58;
          }

          goto LABEL_72;
        }

        v39 = v15[v36];
        if (a1)
        {
          if (a1 < 1)
          {
            v46 = inverted_8bit_alpha[v38];
            if (a4 > 1)
            {
              v47 = v36;
              do
              {
                v48 = v39 * v46;
                LOWORD(v39) = v15[v47 - 1];
                v27[v47] = HIBYTE(v48);
                v35 = v47-- <= 1;
              }

              while (!v35);
            }

            LOWORD(v44) = v39 * v46;
          }

          else
          {
            if (a4 >= 2)
            {
              v42 = v36;
              do
              {
                v43 = v39 * v38;
                v39 = v15[v42 - 1];
                v27[v42] = (v43 + (v43 >> 8) + 1) >> 8;
                v35 = v42-- <= 1;
              }

              while (!v35);
            }

            v44 = v39 * v38 + ((v39 * v38) >> 8) + 1;
          }

          *v27 = BYTE1(v44);
          goto LABEL_72;
        }

        if (a4 >= 2)
        {
          v45 = v36;
          do
          {
            v41 = v15[v45 - 1];
            v27[v45] = v39;
            LOBYTE(v39) = v41;
            v35 = v45-- <= 1;
          }

          while (!v35);
          goto LABEL_65;
        }
      }

      v41 = v39;
LABEL_65:
      *v27 = v41;
LABEL_72:
      v14 += v17;
      v15 += result;
      *v26 = v38;
      v27 += v25;
      v26 += v24;
      v35 = v37-- <= 1;
      if (v35)
      {
        goto LABEL_74;
      }
    }
  }

  do
  {
    if (a2 >= 1)
    {
      v28 = a2 + 1;
      do
      {
        v29 = *v14;
        if (*v14)
        {
          if (v29 == 255 || !a1)
          {
            *v27 = *v15;
            LOBYTE(v32) = v15[2];
          }

          else
          {
            if (a1 < 1)
            {
              v33 = inverted_8bit_alpha[v29];
              v34 = v15[1] * v33;
              *v27 = (*v15 * v33) >> 8;
              v27[1] = HIBYTE(v34);
              v31 = v15[2] * v33;
            }

            else
            {
              v30 = v15[1] * v29 + ((v15[1] * v29) >> 8) + 1;
              *v27 = (*v15 * v29 + ((*v15 * v29) >> 8) + 1) >> 8;
              v27[1] = BYTE1(v30);
              v31 = v15[2] * v29 + ((v15[2] * v29) >> 8) + 1;
            }

            v32 = v31 >> 8;
          }
        }

        else
        {
          LOBYTE(v32) = 0;
          *v27 = 0;
        }

        v14 += v17;
        v27[2] = v32;
        v15 += result;
        *v26 = v29;
        v27 += v25;
        v26 += v24;
        --v28;
      }

      while (v28 > 1);
    }

    v15 += v19;
    v14 += a8 - v17 * a2;
    v27 += a12 - v25 * a2;
    v26 += a13 - v24 * a2;
    v35 = a3-- <= 1;
  }

  while (!v35);
  return result;
}

void CGSConvertAlphaByteMeshed(int a1, int a2, int a3, int a4, uint64_t *a5, int a6, _BYTE **a7, int a8, int a9)
{
  v11 = a2;
  v13 = (a4 + 1) * a2;
  v32 = a6 - v13;
  v31 = a8 - v13;
  if (a9 <= 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = a4;
  }

  if (v14 >= 1)
  {
    v15 = *a7;
  }

  else
  {
    v15 = *a7 + 1;
  }

  if (v14 >= 1)
  {
    v16 = *a5;
  }

  else
  {
    v16 = *a5 + 1;
  }

  v17 = (a4 - 1);
  v18 = a4 + 1;
  v34 = a4;
  do
  {
    if (v11 >= 1)
    {
      do
      {
        v19 = *(v16 + v14);
        if (v19 == 255)
        {
          LOBYTE(v20) = *(v16 + v17);
          if (a4 >= 2)
          {
            v21 = v17;
            do
            {
              v22 = *(v16 + v21 - 1);
              v15[v21] = v20;
              LOBYTE(v20) = v22;
              v23 = v21-- <= 1;
            }

            while (!v23);
            goto LABEL_34;
          }
        }

        else
        {
          if (!*(v16 + v14))
          {
            if (a4 >= 1)
            {
              bzero(v15, v34);
            }

            goto LABEL_41;
          }

          v20 = *(v16 + v17);
          if (a1)
          {
            if (a1 < 1)
            {
              v28 = inverted_8bit_alpha[v19];
              if (a4 > 1)
              {
                v29 = v17;
                do
                {
                  v30 = v20 * v28;
                  LOWORD(v20) = *(v16 + v29 - 1);
                  v15[v29] = HIBYTE(v30);
                  v23 = v29-- <= 1;
                }

                while (!v23);
              }

              LOWORD(v26) = v20 * v28;
            }

            else
            {
              if (a4 >= 2)
              {
                v24 = v17;
                do
                {
                  v25 = v20 * v19;
                  v20 = *(v16 + v24 - 1);
                  v15[v24] = (v25 + (v25 >> 8) + 1) >> 8;
                  v23 = v24-- <= 1;
                }

                while (!v23);
              }

              v26 = v20 * v19 + ((v20 * v19) >> 8) + 1;
            }

            *v15 = BYTE1(v26);
            goto LABEL_41;
          }

          if (a4 >= 2)
          {
            v27 = v17;
            do
            {
              v22 = *(v16 + v27 - 1);
              v15[v27] = v20;
              LOBYTE(v20) = v22;
              v23 = v27-- <= 1;
            }

            while (!v23);
            goto LABEL_34;
          }
        }

        v22 = v20;
LABEL_34:
        *v15 = v22;
LABEL_41:
        v16 += v18;
        v15[v14] = v19;
        v15 += v18;
        v23 = v11-- <= 1;
      }

      while (!v23);
    }

    v16 += v32;
    v15 += v31;
    v23 = a3-- <= 1;
    v11 = a2;
  }

  while (!v23);
}

uint64_t CGSConvertAlphaByteMeshedXXXX(uint64_t result, int a2, int a3, unsigned int *a4, int a5, unsigned int *a6, int a7, int a8)
{
  v8 = a5;
  v9 = a7;
  if (a8 <= 0)
  {
    do
    {
      v29 = a2;
      v30 = a6;
      v31 = a4;
      if (a2 >= 4)
      {
        v32 = 0;
        v29 = a2;
        do
        {
          v33 = v29;
          v34 = &a4[v32];
          v35 = a4[v32];
          v36 = a4[v32 + 1];
          if (result)
          {
            v37 = a4[v32 + 1];
            if ((a4[v32 + 1] & v35) != 0xFF)
            {
              if (a4[v32])
              {
                if (a4[v32] != 255)
                {
                  v38 = a4[v32];
                  if (result < 1)
                  {
                    v46 = inverted_8bit_alpha[v38];
                    v47 = v35 >> 8;
                    v42 = ((BYTE1(v35) * v46) | (((v35 >> 8) & 0xFF0000) * v46)) & 0xFF00FF00;
                    v41 = ((v47 & 0xFF00) * v46) & 0xFF0000 | v38;
                  }

                  else
                  {
                    v39 = ((v35 >> 8) & 0xFF00FF) * v38;
                    v40 = (v35 & 0xFF0000 | 0xFF) * v38;
                    v41 = (v39 + 65537 + ((v39 >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v42 = ((v40 + 65537 + ((v40 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }

                  v35 = v42 | v41;
                }
              }

              else
              {
                v35 = 0;
              }

              if (a4[v32 + 1])
              {
                if (a4[v32 + 1] != 255)
                {
                  if (result < 1)
                  {
                    v52 = inverted_8bit_alpha[v37];
                    v53 = v36 >> 8;
                    v51 = ((BYTE1(v36) * v52) | (((v36 >> 8) & 0xFF0000) * v52)) & 0xFF00FF00;
                    v50 = ((v53 & 0xFF00) * v52) & 0xFF0000 | v37;
                  }

                  else
                  {
                    v48 = ((v36 >> 8) & 0xFF00FF) * v37;
                    v49 = (v36 & 0xFF0000 | 0xFF) * v37;
                    v50 = (v48 + 65537 + ((v48 >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v51 = ((v49 + 65537 + ((v49 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }

                  v36 = v51 | v50;
                }
              }

              else
              {
                v36 = 0;
              }
            }

            v54 = &a6[v32];
            *v54 = v35;
            v54[1] = v36;
            v44 = a4[v32 + 2];
            v45 = a4[v32 + 3];
            v55 = v45;
            if ((v45 & v44) != 0xFF)
            {
              if (a4[v32 + 2])
              {
                if (a4[v32 + 2] != 255)
                {
                  v56 = a4[v32 + 2];
                  if (result < 1)
                  {
                    v61 = inverted_8bit_alpha[v56];
                    v62 = v44 >> 8;
                    v60 = ((BYTE1(v44) * v61) | (((v44 >> 8) & 0xFF0000) * v61)) & 0xFF00FF00;
                    v59 = ((v62 & 0xFF00) * v61) & 0xFF0000 | v56;
                  }

                  else
                  {
                    v57 = ((v44 >> 8) & 0xFF00FF) * v56;
                    v58 = (v44 & 0xFF0000 | 0xFF) * v56;
                    v59 = (v57 + 65537 + ((v57 >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v60 = ((v58 + 65537 + ((v58 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }

                  v44 = v60 | v59;
                }
              }

              else
              {
                v44 = 0;
              }

              if (v45)
              {
                if (v45 != 255)
                {
                  if (result < 1)
                  {
                    v65 = inverted_8bit_alpha[v45];
                    v66 = v45 >> 8;
                    v64 = ((BYTE1(v45) * v65) | (((v45 >> 8) & 0xFF0000) * v65)) & 0xFF00FF00;
                    v63 = ((v66 & 0xFF00) * v65) & 0xFF0000 | v55;
                  }

                  else
                  {
                    v63 = (((v45 >> 8) & 0xFF00FF) * v45 + 65537 + (((((v45 >> 8) & 0xFF00FF) * v45) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v64 = (((v45 & 0xFF0000 | 0xFF) * v45 + 65537 + ((((v45 & 0xFF0000 | 0xFF) * v45) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }

                  v45 = v64 | v63;
                }
              }

              else
              {
                v45 = 0;
              }
            }
          }

          else
          {
            v43 = &a6[v32];
            *v43 = v35;
            v43[1] = v36;
            v44 = v34[2];
            v45 = v34[3];
          }

          v67 = &a6[v32];
          v67[2] = v44;
          v67[3] = v45;
          v29 = v33 - 4;
          v32 += 4;
        }

        while (v33 > 7);
        v31 = &a4[v32];
        v30 = &a6[v32];
      }

      if (v29 >= 1)
      {
        v68 = v29 + 1;
        do
        {
          v69 = *v31;
          if (result)
          {
            if (*v31)
            {
              if (*v31 != 255)
              {
                v70 = *v31;
                if (result < 1)
                {
                  v75 = inverted_8bit_alpha[v70];
                  v76 = v69 >> 8;
                  v74 = ((BYTE1(v69) * v75) | (((v69 >> 8) & 0xFF0000) * v75)) & 0xFF00FF00;
                  v73 = ((v76 & 0xFF00) * v75) & 0xFF0000 | v70;
                }

                else
                {
                  v71 = ((v69 >> 8) & 0xFF00FF) * v70;
                  v72 = (v69 & 0xFF0000 | 0xFF) * v70;
                  v73 = (v71 + 65537 + ((v71 >> 8) & 0xFF00FF)) & 0xFF00FF00;
                  v74 = ((v72 + 65537 + ((v72 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                }

                v69 = v74 | v73;
              }
            }

            else
            {
              v69 = 0;
            }
          }

          *v30++ = v69;
          ++v31;
          --v68;
        }

        while (v68 > 1);
      }

      a4 = (a4 + v8);
      a6 = (a6 + v9);
      v28 = a3-- <= 1;
    }

    while (!v28);
  }

  else
  {
    do
    {
      v10 = a2;
      v11 = a6;
      v12 = a4;
      if (a2 >= 4)
      {
        v13 = 0;
        v10 = a2;
        do
        {
          v14 = v10;
          v15 = &a4[v13];
          v16 = a4[v13];
          v17 = a4[v13 + 1];
          if (result)
          {
            v18 = v16 >> 24;
            v19 = v17 >> 24;
            if ((HIBYTE(a4[v13 + 1]) & HIBYTE(a4[v13])) != 0xFF)
            {
              if (v18 != 255)
              {
                if (BYTE3(v16))
                {
                  if (result < 1)
                  {
                    LODWORD(v16) = (BYTE1(v16) * inverted_8bit_alpha[v18]) & 0xFF00 | v16 & 0xFF000000 | (((v16 >> 8) & 0xFF00) * inverted_8bit_alpha[v18]) & 0xFF0000 | ((v16 * inverted_8bit_alpha[v18]) >> 8);
                  }

                  else
                  {
                    LODWORD(v16) = ((BYTE1(v16) | 0xFF0000) * v18 + 65537 + ((((BYTE1(v16) | 0xFF0000) * v18) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v16 & 0xFF00FF) * v18 + 65537 + ((((v16 & 0xFF00FF) * v18) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }
                }

                else
                {
                  LODWORD(v16) = 0;
                }
              }

              if (v19 != 255)
              {
                if (BYTE3(v17))
                {
                  if (result < 1)
                  {
                    LODWORD(v17) = (BYTE1(v17) * inverted_8bit_alpha[v19]) & 0xFF00 | v17 & 0xFF000000 | (((v17 >> 8) & 0xFF00) * inverted_8bit_alpha[v19]) & 0xFF0000 | ((v17 * inverted_8bit_alpha[v19]) >> 8);
                  }

                  else
                  {
                    LODWORD(v17) = ((BYTE1(v17) | 0xFF0000) * v19 + 65537 + ((((BYTE1(v17) | 0xFF0000) * v19) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v17 & 0xFF00FF) * v19 + 65537 + ((((v17 & 0xFF00FF) * v19) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }
                }

                else
                {
                  LODWORD(v17) = 0;
                }
              }
            }

            v21 = &a6[v13];
            *v21 = v16;
            v21[1] = v17;
            v16 = a4[v13 + 2];
            v17 = a4[v13 + 3];
            v22 = v16 >> 24;
            v23 = v17 >> 24;
            if ((HIBYTE(a4[v13 + 3]) & HIBYTE(a4[v13 + 2])) != 0xFF)
            {
              if (v22 != 255)
              {
                if (BYTE3(v16))
                {
                  if (result < 1)
                  {
                    LODWORD(v16) = (BYTE1(v16) * inverted_8bit_alpha[v22]) & 0xFF00 | v16 & 0xFF000000 | (((v16 >> 8) & 0xFF00) * inverted_8bit_alpha[v22]) & 0xFF0000 | ((v16 * inverted_8bit_alpha[v22]) >> 8);
                  }

                  else
                  {
                    LODWORD(v16) = ((BYTE1(v16) | 0xFF0000) * v22 + 65537 + ((((BYTE1(v16) | 0xFF0000) * v22) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v16 & 0xFF00FF) * v22 + 65537 + ((((v16 & 0xFF00FF) * v22) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }
                }

                else
                {
                  LODWORD(v16) = 0;
                }
              }

              if (v23 != 255)
              {
                if (BYTE3(v17))
                {
                  if (result < 1)
                  {
                    LODWORD(v17) = (BYTE1(v17) * inverted_8bit_alpha[v23]) & 0xFF00 | v17 & 0xFF000000 | (((v17 >> 8) & 0xFF00) * inverted_8bit_alpha[v23]) & 0xFF0000 | ((v17 * inverted_8bit_alpha[v23]) >> 8);
                  }

                  else
                  {
                    LODWORD(v17) = ((BYTE1(v17) | 0xFF0000) * v23 + 65537 + ((((BYTE1(v17) | 0xFF0000) * v23) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v17 & 0xFF00FF) * v23 + 65537 + ((((v17 & 0xFF00FF) * v23) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                  }
                }

                else
                {
                  LODWORD(v17) = 0;
                }
              }
            }
          }

          else
          {
            v20 = &a6[v13];
            *v20 = v16;
            v20[1] = v17;
            LODWORD(v16) = v15[2];
            LODWORD(v17) = v15[3];
          }

          v24 = &a6[v13];
          v24[2] = v16;
          v24[3] = v17;
          v10 = v14 - 4;
          v13 += 4;
        }

        while (v14 > 7);
        v12 = &a4[v13];
        v11 = &a6[v13];
      }

      if (v10 >= 1)
      {
        v25 = v10 + 1;
        do
        {
          v26 = *v12;
          if (result)
          {
            v27 = v26 >> 24;
            if (HIBYTE(*v12) != 255)
            {
              if (BYTE3(v26))
              {
                if (result < 1)
                {
                  LODWORD(v26) = (BYTE1(v26) * inverted_8bit_alpha[v27]) & 0xFF00 | v26 & 0xFF000000 | (((v26 >> 8) & 0xFF00) * inverted_8bit_alpha[v27]) & 0xFF0000 | ((v26 * inverted_8bit_alpha[v27]) >> 8);
                }

                else
                {
                  LODWORD(v26) = ((BYTE1(v26) | 0xFF0000) * v27 + 65537 + ((((BYTE1(v26) | 0xFF0000) * v27) >> 8) & 0xFF00FF)) & 0xFF00FF00 | (((v26 & 0xFF00FF) * v27 + 65537 + ((((v26 & 0xFF00FF) * v27) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
                }
              }

              else
              {
                LODWORD(v26) = 0;
              }
            }
          }

          *v11++ = v26;
          ++v12;
          --v25;
        }

        while (v25 > 1);
      }

      a4 = (a4 + v8);
      a6 = (a6 + v9);
      v28 = a3-- <= 1;
    }

    while (!v28);
  }

  return result;
}

void CGSConvertAlphaWordInterleved(int a1, int a2, int a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6, int a7, int a8, int a9, unsigned __int16 *a10, _WORD *a11, int a12, int a13, int a14)
{
  v14 = a6;
  v15 = a5;
  if (a9 < 1)
  {
    if (a9 < 0)
    {
      v17 = a4 + 1;
    }

    else
    {
      v17 = 1;
    }

    if (a9 < 0)
    {
      v18 = a4 + 1;
    }

    else
    {
      v18 = a4;
    }

    if (a9 < 0)
    {
      v15 = a5 + 1;
    }
  }

  else
  {
    v14 = &a6[a4];
    v17 = a4 + 1;
    v18 = v17;
  }

  v19 = 2 * a2;
  v20 = a7 - v19 * v18;
  v21 = a8 - v19 * v17;
  v22 = a4;
  v23 = 1;
  v24 = a10 + 1;
  v25 = a4 + 1;
  if (a14 >= 0)
  {
    v24 = a10;
  }

  else
  {
    v23 = v25;
    v22 = v25;
  }

  if (a14 >= 1)
  {
    v26 = v25;
  }

  else
  {
    v26 = v23;
  }

  if (a14 < 1)
  {
    v27 = a11;
  }

  else
  {
    v22 = v25;
    v27 = &a11[a4];
  }

  if (a14 >= 1)
  {
    v28 = a10;
  }

  else
  {
    v28 = v24;
  }

  v29 = a12 - v19 * v22;
  v30 = a13 - v19 * v26;
  if (a4 != 3)
  {
    v39 = (a4 - 1);
    v64 = 2 * a4;
    v65 = v17;
    v40 = 2 * v22;
    v41 = 2 * v18;
    v59 = v20;
    v60 = a2;
    v57 = v29;
    v58 = v21;
    v56 = a13 - v19 * v26;
    v63 = a1;
    v62 = v41;
    while (1)
    {
      v61 = a3;
      if (a2 >= 1)
      {
        break;
      }

LABEL_74:
      a3 = v61 - 1;
      v15 = (v15 + v59);
      v14 = (v14 + v58);
      v28 = (v28 + v57);
      v27 = (v27 + v56);
      a2 = v60;
      if (v61 <= 1)
      {
        return;
      }
    }

    v42 = a2;
    while (1)
    {
      v43 = *v14;
      if (v43 == 0xFFFF)
      {
        LOWORD(v46) = v15[v39];
        if (a4 >= 2)
        {
          v47 = v39;
          do
          {
            v48 = v15[v47 - 1];
            v28[v47] = v46;
            LOWORD(v46) = v48;
            v38 = v47-- <= 1;
          }

          while (!v38);
          goto LABEL_65;
        }
      }

      else
      {
        if (!*v14)
        {
          if (a4 >= 1)
          {
            v44 = a4;
            v45 = v40;
            bzero(v28, v64);
            v41 = v62;
            v40 = v45;
            a4 = v44;
            v17 = v65;
            a1 = v63;
          }

          goto LABEL_72;
        }

        v46 = v15[v39];
        if (a1)
        {
          if (a1 < 1)
          {
            v53 = 0xFFFFFFFF / v43;
            if (a4 > 1)
            {
              v54 = v39;
              do
              {
                v55 = v46 * v53;
                v46 = v15[v54 - 1];
                v28[v54] = HIWORD(v55);
                v38 = v54-- <= 1;
              }

              while (!v38);
            }

            v51 = v46 * v53;
          }

          else
          {
            if (a4 >= 2)
            {
              v49 = v39;
              do
              {
                v50 = v46 * v43;
                v46 = v15[v49 - 1];
                v28[v49] = (v50 + HIWORD(v50) + 1) >> 16;
                v38 = v49-- <= 1;
              }

              while (!v38);
            }

            v51 = v46 * v43 + ((v46 * v43) >> 16) + 1;
          }

          *v28 = HIWORD(v51);
          goto LABEL_72;
        }

        if (a4 >= 2)
        {
          v52 = v39;
          do
          {
            v48 = v15[v52 - 1];
            v28[v52] = v46;
            LOWORD(v46) = v48;
            v38 = v52-- <= 1;
          }

          while (!v38);
          goto LABEL_65;
        }
      }

      v48 = v46;
LABEL_65:
      *v28 = v48;
LABEL_72:
      v14 += v17;
      v15 = (v15 + v41);
      *v27 = v43;
      v28 = (v28 + v40);
      v27 += v26;
      v38 = v42-- <= 1;
      if (v38)
      {
        goto LABEL_74;
      }
    }
  }

  v31 = 2 * v22;
  do
  {
    if (a2 >= 1)
    {
      v32 = a2 + 1;
      do
      {
        v33 = *v14;
        if (*v14)
        {
          if (v33 == 0xFFFF || !a1)
          {
            *v28 = *v15;
            LOWORD(v36) = v15[2];
          }

          else
          {
            if (a1 < 1)
            {
              v37 = 0xFFFFFFFF / v33 * v15[1];
              *v28 = (0xFFFFFFFF / v33 * *v15) >> 16;
              v28[1] = HIWORD(v37);
              v35 = 0xFFFFFFFF / v33 * v15[2];
            }

            else
            {
              v34 = v15[1] * v33 + ((v15[1] * v33) >> 16) + 1;
              *v28 = (*v15 * v33 + ((*v15 * v33) >> 16) + 1) >> 16;
              v28[1] = HIWORD(v34);
              v35 = v15[2] * v33 + ((v15[2] * v33) >> 16) + 1;
            }

            v36 = HIWORD(v35);
          }
        }

        else
        {
          LOWORD(v36) = 0;
          *v28 = 0;
        }

        --v32;
        v15 += v18;
        v28[2] = v36;
        *v27 = v33;
        v27 += v26;
        v14 += v17;
        v28 = (v28 + v31);
      }

      while (v32 > 1);
    }

    v15 = (v15 + v20);
    v14 = (v14 + v21);
    v28 = (v28 + v29);
    v27 = (v27 + v30);
    v38 = a3-- <= 1;
  }

  while (!v38);
}

void CGSConvertAlphaWordMeshed(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9)
{
  v9 = a2;
  v11 = (a4 + 1) * a2;
  v12 = a6 - 2 * v11;
  if (a9 <= 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = a4;
  }

  v14 = a8 - 2 * v11;
  v15 = a5 + 2 * (v13 < 1);
  v16 = (a7 + 2 * (v13 < 1));
  v17 = v13;
  if (a4 != 3)
  {
    v32 = (a4 - 1);
    v49 = 2 * a4;
    v33 = 2 * (a4 + 1);
    v45 = v14;
    v46 = a6 - 2 * v11;
    while (1)
    {
      v48 = a3;
      if (v9 >= 1)
      {
        break;
      }

LABEL_55:
      v9 = a2;
      a3 = v48 - 1;
      v15 += v46;
      v16 = (v16 + v45);
      if (v48 <= 1)
      {
        return;
      }
    }

    while (1)
    {
      v34 = *(v15 + 2 * v17);
      if (v34 == 0xFFFF)
      {
        LOWORD(v35) = *(v15 + 2 * v32);
        if (a4 >= 2)
        {
          v36 = v32;
          do
          {
            v37 = *(v15 + 2 * v36 - 2);
            v16[v36] = v35;
            LOWORD(v35) = v37;
            v30 = v36-- <= 1;
          }

          while (!v30);
          goto LABEL_46;
        }
      }

      else
      {
        if (!*(v15 + 2 * v17))
        {
          if (a4 >= 1)
          {
            bzero(v16, v49);
          }

          goto LABEL_53;
        }

        v35 = *(v15 + 2 * v32);
        if (a1)
        {
          if (a1 < 1)
          {
            v42 = 0xFFFFFFFF / v34;
            if (a4 > 1)
            {
              v43 = v32;
              do
              {
                v44 = v35 * v42;
                v35 = *(v15 + 2 * v43 - 2);
                v16[v43] = HIWORD(v44);
                v30 = v43-- <= 1;
              }

              while (!v30);
            }

            v40 = v35 * v42;
          }

          else
          {
            if (a4 >= 2)
            {
              v38 = v32;
              do
              {
                v39 = v35 * v34;
                v35 = *(v15 + 2 * v38 - 2);
                v16[v38] = (v39 + HIWORD(v39) + 1) >> 16;
                v30 = v38-- <= 1;
              }

              while (!v30);
            }

            v40 = v35 * v34 + ((v35 * v34) >> 16) + 1;
          }

          *v16 = HIWORD(v40);
          goto LABEL_53;
        }

        if (a4 >= 2)
        {
          v41 = v32;
          do
          {
            v37 = *(v15 + 2 * v41 - 2);
            v16[v41] = v35;
            LOWORD(v35) = v37;
            v30 = v41-- <= 1;
          }

          while (!v30);
          goto LABEL_46;
        }
      }

      v37 = v35;
LABEL_46:
      *v16 = v37;
LABEL_53:
      v15 += v33;
      v16[v17] = v34;
      v16 = (v16 + v33);
      v30 = v9-- <= 1;
      if (v30)
      {
        goto LABEL_55;
      }
    }
  }

  v18 = v13;
  do
  {
    if (a2 >= 1)
    {
      v19 = 0;
      v20 = v15 + v18 * 2;
      v21 = a2 + 1;
      do
      {
        v22 = *(v20 + v19);
        if (*(v20 + v19))
        {
          if (v22 == 0xFFFF || !a1)
          {
            *&v16[v19 / 2] = *(v15 + v19);
            LOWORD(v27) = *(v15 + v19 + 4);
          }

          else
          {
            if (a1 < 1)
            {
              v28 = 0xFFFFFFFF / v22 * *(v15 + v19 + 2);
              v29 = &v16[v19 / 2];
              *v29 = (0xFFFFFFFF / v22 * *(v15 + v19)) >> 16;
              v29[1] = HIWORD(v28);
              v26 = 0xFFFFFFFF / v22 * *(v15 + v19 + 4);
            }

            else
            {
              v23 = *(v15 + v19 + 2) * v22;
              v24 = &v16[v19 / 2];
              *v24 = (*(v15 + v19) * v22 + ((*(v15 + v19) * v22) >> 16) + 1) >> 16;
              v24[1] = (v23 + HIWORD(v23) + 1) >> 16;
              v25 = *(v15 + v19 + 4) * v22;
              v26 = v25 + HIWORD(v25) + 1;
            }

            v27 = HIWORD(v26);
          }
        }

        else
        {
          LOWORD(v27) = 0;
          *&v16[v19 / 2] = 0;
        }

        v16[v19 / 2 + 2] = v27;
        v16[v18 + v19 / 2] = v22;
        --v21;
        v19 += 8;
      }

      while (v21 > 1);
      v15 += v19;
      v16 = (v16 + v19);
    }

    v15 += v12;
    v16 = (v16 + v14);
    v30 = a3-- <= 1;
  }

  while (!v30);
}

void CGSConvertAlphaFloatInterleved(int a1, int a2, int a3, int a4, uint64_t a5, float *a6, int a7, int a8, int a9, float *a10, float *a11, int a12, int a13, int a14)
{
  v14 = a6;
  v15 = a5;
  if (a9 < 1)
  {
    if (a9 < 0)
    {
      v18 = a4 + 1;
    }

    else
    {
      v18 = 1;
    }

    if (a9 >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = a4 + 1;
    }

    if (a9 < 0)
    {
      v15 = (a5 + 4);
    }
  }

  else
  {
    v14 = &a6[a4];
    v18 = a4 + 1;
    v19 = a4 + 1;
  }

  v20 = a7 - 4 * v19 * a2;
  v21 = a10 + 1;
  if (a14 < 0)
  {
    v22 = a4 + 1;
  }

  else
  {
    v22 = 1;
  }

  if (a14 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = a4 + 1;
  }

  if (a14 >= 0)
  {
    v21 = a10;
  }

  if (a14 < 1)
  {
    v24 = v23;
  }

  else
  {
    v22 = a4 + 1;
    v24 = a4 + 1;
  }

  if (a14 >= 1)
  {
    v25 = &a11[a4];
  }

  else
  {
    v25 = a11;
  }

  if (a14 >= 1)
  {
    v26 = a10;
  }

  else
  {
    v26 = v21;
  }

  v27 = a12 - 4 * v24 * a2;
  v28 = v18;
  if (a4 == 3)
  {
    v29 = 4 * v19;
    v30 = 4 * v24;
    while (a2 < 1)
    {
LABEL_42:
      v15 = (v15 + v20);
      v14 = (v14 + a8 - 4 * v18 * a2);
      v26 = (v26 + v27);
      v25 = (v25 + a13 - 4 * v22 * a2);
      v34 = a3-- <= 1;
      if (v34)
      {
        return;
      }
    }

    v31 = a2 + 1;
    while (1)
    {
      v32 = *v14;
      if (*v14 != 1.0)
      {
        if (v32 == 0.0)
        {
          *v26 = 0;
          v33 = 0.0;
          goto LABEL_36;
        }

        if (a1)
        {
          if (a1 < 1)
          {
            *v26 = vmul_n_f32(*v15, 1.0 / v32);
            v33 = (1.0 / v32) * v15[1].f32[0];
          }

          else
          {
            *v26 = vmul_n_f32(*v15, v32);
            v33 = v32 * v15[1].f32[0];
          }

          goto LABEL_36;
        }
      }

      *v26 = *v15;
      v33 = v15[1].f32[0];
LABEL_36:
      --v31;
      v15 = (v15 + v29);
      v26[2] = v33;
      *v25 = v32;
      v14 += v18;
      v26 = (v26 + v30);
      v25 += v22;
      if (v31 <= 1)
      {
        goto LABEL_42;
      }
    }
  }

  v56 = (a4 - 1);
  v35 = v22;
  v57 = 4 * a4;
  v36 = 4 * v24;
  v37 = 4 * v19;
  v54 = a2;
  v52 = a8 - 4 * v18 * a2;
  v53 = a7 - 4 * v19 * a2;
  v50 = a13 - 4 * v22 * a2;
  v51 = v27;
  do
  {
    v55 = a3;
    if (a2 >= 1)
    {
      v38 = a2;
      do
      {
        v39 = *v14;
        if (*v14 == 0.0)
        {
          if (a4 >= 1)
          {
            v40 = v37;
            v58 = v38;
            bzero(v26, v57);
            v38 = v58;
            v37 = v40;
          }
        }

        else
        {
          v41 = v15->f32[v56];
          if (!a1 || v39 == 1.0)
          {
            if (a4 < 2)
            {
              v46 = v15->i32[v56];
            }

            else
            {
              v45 = v56;
              do
              {
                v46 = v15->i32[v45 - 1];
                v26[v45] = v41;
                v41 = *&v46;
                v34 = v45-- <= 1;
              }

              while (!v34);
            }

            *v26 = v46;
          }

          else
          {
            if (a1 < 1)
            {
              v47 = 1.0 / v39;
              if (a4 > 1)
              {
                v48 = v56;
                do
                {
                  v49 = v47 * v41;
                  v41 = v15->f32[v48 - 1];
                  v26[v48] = v49;
                  v34 = v48-- <= 1;
                }

                while (!v34);
              }

              v44 = v47 * v41;
            }

            else
            {
              if (a4 >= 2)
              {
                v42 = v56;
                do
                {
                  v43 = v39 * v41;
                  v41 = v15->f32[v42 - 1];
                  v26[v42] = v43;
                  v34 = v42-- <= 1;
                }

                while (!v34);
              }

              v44 = v39 * v41;
            }

            *v26 = v44;
          }
        }

        v14 += v28;
        v15 = (v15 + v37);
        *v25 = v39;
        v26 = (v26 + v36);
        v25 += v35;
        v34 = v38-- <= 1;
      }

      while (!v34);
    }

    a2 = v54;
    a3 = v55 - 1;
    v15 = (v15 + v53);
    v14 = (v14 + v52);
    v26 = (v26 + v51);
    v25 = (v25 + v50);
  }

  while (v55 > 1);
}

void CGSConvertAlphaFloatMeshed(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9)
{
  v10 = a2;
  v12 = (a4 + 1) * a2;
  if (a9 <= 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = a4;
  }

  v14 = (a5 + 4 * (v13 < 1));
  v15 = (a7 + 4 * (v13 < 1));
  v16 = v13;
  if (a4 == 3)
  {
    while (a2 < 1)
    {
LABEL_17:
      v14 = (v14 + a6 - 4 * v12);
      v15 = (v15 + a8 - 4 * v12);
      v20 = a3-- <= 1;
      if (v20)
      {
        return;
      }
    }

    v17 = a2 + 1;
    while (1)
    {
      v18 = v14->f32[v16];
      if (v18 != 1.0)
      {
        if (v18 == 0.0)
        {
          *v15 = 0;
          v19 = 0.0;
          goto LABEL_11;
        }

        if (a1)
        {
          if (a1 < 1)
          {
            *v15 = vmul_n_f32(*v14, 1.0 / v18);
            v19 = (1.0 / v18) * v14[1].f32[0];
          }

          else
          {
            *v15 = vmul_n_f32(*v14, v18);
            v19 = v18 * v14[1].f32[0];
          }

          goto LABEL_11;
        }
      }

      *v15 = *v14;
      v19 = v14[1].f32[0];
LABEL_11:
      v15[2] = v19;
      v14 += 2;
      v15[v16] = v18;
      v15 += 4;
      if (--v17 <= 1)
      {
        goto LABEL_17;
      }
    }
  }

  v37 = (a4 - 1);
  v22 = 4 * a4;
  v23 = 4 * (a4 + 1);
  v34 = a8 - 4 * v12;
  v35 = a6 - 4 * v12;
  do
  {
    if (v10 >= 1)
    {
      do
      {
        v24 = v14->f32[v16];
        if (v24 == 0.0)
        {
          if (a4 >= 1)
          {
            bzero(v15, v22);
          }
        }

        else
        {
          v25 = v14->f32[v37];
          if (!a1 || v24 == 1.0)
          {
            if (a4 < 2)
            {
              v30 = v14->i32[v37];
            }

            else
            {
              v29 = v37;
              do
              {
                v30 = v14->i32[v29 - 1];
                v15[v29] = v25;
                v25 = *&v30;
                v20 = v29-- <= 1;
              }

              while (!v20);
            }

            *v15 = v30;
          }

          else
          {
            if (a1 < 1)
            {
              v31 = 1.0 / v24;
              if (a4 > 1)
              {
                v32 = v37;
                do
                {
                  v33 = v31 * v25;
                  v25 = v14->f32[v32 - 1];
                  v15[v32] = v33;
                  v20 = v32-- <= 1;
                }

                while (!v20);
              }

              v28 = v31 * v25;
            }

            else
            {
              if (a4 >= 2)
              {
                v26 = v37;
                do
                {
                  v27 = v24 * v25;
                  v25 = v14->f32[v26 - 1];
                  v15[v26] = v27;
                  v20 = v26-- <= 1;
                }

                while (!v20);
              }

              v28 = v24 * v25;
            }

            *v15 = v28;
          }
        }

        v14 = (v14 + v23);
        v15[v16] = v24;
        v15 = (v15 + v23);
        v20 = v10-- <= 1;
      }

      while (!v20);
    }

    v14 = (v14 + v35);
    v15 = (v15 + v34);
    v20 = a3-- <= 1;
    v10 = a2;
  }

  while (!v20);
}

void convert_alpha_float16_interleved(int a1, int a2, int a3, int a4, short float *a5, short float *a6, int a7, int a8, float _S0, float _S1, int a11, char *a12, short float *a13, int a14, int a15, int a16)
{
  v16 = a6;
  v17 = a5;
  if (a11 < 1)
  {
    if (a11 < 0)
    {
      v20 = a4 + 1;
    }

    else
    {
      v20 = 1;
    }

    if (a11 >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = a4 + 1;
    }

    if (a11 < 0)
    {
      v17 = a5 + 1;
    }
  }

  else
  {
    v16 = &a6[a4];
    v20 = a4 + 1;
    v21 = a4 + 1;
  }

  v22 = a7 - 2 * v21 * a2;
  v23 = a12 + 2;
  if (a16 < 0)
  {
    v24 = a4 + 1;
  }

  else
  {
    v24 = 1;
  }

  if (a16 >= 0)
  {
    v25 = a4;
  }

  else
  {
    v25 = a4 + 1;
  }

  if (a16 >= 0)
  {
    v23 = a12;
  }

  if (a16 < 1)
  {
    v26 = v25;
  }

  else
  {
    v24 = a4 + 1;
    v26 = a4 + 1;
  }

  if (a16 >= 1)
  {
    v27 = &a13[a4];
  }

  else
  {
    v27 = a13;
  }

  if (a16 >= 1)
  {
    v28 = a12;
  }

  else
  {
    v28 = v23;
  }

  v29 = a14 - 2 * v26 * a2;
  v30 = v20;
  if (a4 == 3)
  {
    v31 = 2 * v21;
    v32 = 2 * v26;
    while (a2 < 1)
    {
LABEL_43:
      v17 = (v17 + v22);
      v16 = (v16 + a8 - 2 * v20 * a2);
      v28 += v29;
      v27 = (v27 + a15 - 2 * v24 * a2);
      v51 = a3-- <= 1;
      if (v51)
      {
        return;
      }
    }

    v33 = a2 + 1;
    while (1)
    {
      _H2 = *v16;
      if (*v16 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        __asm { FCMP            H2, #0 }

        if (_ZF)
        {
          *v28 = 0;
          LOWORD(_H3) = 0;
          goto LABEL_37;
        }

        if (a1)
        {
          if (a1 < 1)
          {
            __asm { FCVT            S3, H2 }

            v42 = 1.0 / _S3;
            _H4 = *v17;
            __asm { FCVT            S4, H4 }

            _H5 = *(v17 + 1);
            __asm { FCVT            S5, H5 }

            _S4 = v42 * _S4;
            _S5 = v42 * _S5;
            __asm { FCVT            H4, S4 }

            *v28 = LOWORD(_S4);
            __asm { FCVT            H4, S5 }

            *(v28 + 1) = LOWORD(_S4);
            *&_S4 = v17[2];
            __asm { FCVT            S4, H4 }

            _S3 = v42 * _S4;
            __asm { FCVT            H3, S3 }
          }

          else
          {
            v40 = v17[1];
            *v28 = _H2 * *v17;
            *(v28 + 1) = _H2 * v40;
            _H3 = _H2 * v17[2];
          }

          goto LABEL_37;
        }
      }

      *v28 = *v17;
      _H3 = v17[2];
LABEL_37:
      --v33;
      v17 = (v17 + v31);
      *(v28 + 2) = _H3;
      *v27 = _H2;
      v27 += v24;
      v16 += v20;
      v28 += v32;
      if (v33 <= 1)
      {
        goto LABEL_43;
      }
    }
  }

  v74 = (a4 - 1);
  v52 = v24;
  v73 = 2 * a4;
  v53 = 2 * v26;
  v54 = 2 * v21;
  v71 = a2;
  v69 = a8 - 2 * v20 * a2;
  v70 = a7 - 2 * v21 * a2;
  v67 = a15 - 2 * v24 * a2;
  v68 = v29;
  do
  {
    v72 = a3;
    if (a2 >= 1)
    {
      v55 = a2;
      do
      {
        __asm { FCMP            H10, #0 }

        if (_ZF)
        {
          if (a4 >= 1)
          {
            v57 = v54;
            v75 = v55;
            bzero(v28, v73);
            v55 = v75;
            v54 = v57;
          }
        }

        else
        {
          *&_S0 = v17[v74];
          if (!a1 || _H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
          {
            if (a4 < 2)
            {
              _S1 = _S0;
            }

            else
            {
              v62 = v74;
              do
              {
                *&_S1 = v17[v62 - 1];
                *&v28[2 * v62] = LOWORD(_S0);
                _S0 = _S1;
                v51 = v62-- <= 1;
              }

              while (!v51);
            }

            *v28 = LOWORD(_S1);
          }

          else
          {
            __asm
            {
              FCVT            S1, H10
              FCVT            S0, H0
            }

            if (a1 < 1)
            {
              _S1 = 1.0 / _S1;
              if (a4 > 1)
              {
                v63 = v74;
                do
                {
                  _S2 = _S1 * _S0;
                  _H0 = v17[v63 - 1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            H2, S2
                  }

                  *&v28[2 * v63] = LOWORD(_S2);
                  v51 = v63-- <= 1;
                }

                while (!v51);
              }

              _S0 = _S1 * _S0;
            }

            else
            {
              if (a4 >= 2)
              {
                v59 = v74;
                do
                {
                  _S2 = _S0 * _S1;
                  _H0 = v17[v59 - 1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            H2, S2
                  }

                  *&v28[2 * v59] = LOWORD(_S2);
                  v51 = v59-- <= 1;
                }

                while (!v51);
              }

              _S0 = _S0 * _S1;
            }

            __asm { FCVT            H0, S0 }

            *v28 = _H0;
          }
        }

        v16 += v30;
        v17 = (v17 + v54);
        *v27 = _H10;
        v28 += v53;
        v27 += v52;
        v51 = v55-- <= 1;
      }

      while (!v51);
    }

    a2 = v71;
    a3 = v72 - 1;
    v17 = (v17 + v70);
    v16 = (v16 + v69);
    v28 += v68;
    v27 = (v27 + v67);
  }

  while (v72 > 1);
}

void convert_alpha_float16_meshed(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, float _S0, float _S1, int a11)
{
  v12 = a2;
  v14 = a4 + 1;
  if (a11 <= 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = a4;
  }

  v16 = v14 * a2;
  v17 = (a5 + 2 * (v15 < 1));
  v18 = (a7 + 2 * (v15 < 1));
  if (a4 == 3)
  {
    while (a2 < 1)
    {
LABEL_18:
      v17 = (v17 + a6 - 2 * v14 * a2);
      v18 += a8 - 2 * v14 * a2;
      v37 = a3-- <= 1;
      if (v37)
      {
        return;
      }
    }

    v19 = a2 + 1;
    while (1)
    {
      _H2 = v17[v15];
      if (_H2 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        __asm { FCMP            H2, #0 }

        if (_ZF)
        {
          *v18 = 0;
          LOWORD(_H3) = 0;
          goto LABEL_12;
        }

        if (a1)
        {
          if (a1 < 1)
          {
            __asm { FCVT            S3, H2 }

            v28 = 1.0 / _S3;
            _H4 = *v17;
            __asm { FCVT            S4, H4 }

            _H5 = *(v17 + 1);
            __asm { FCVT            S5, H5 }

            _S4 = v28 * _S4;
            _S5 = v28 * _S5;
            __asm { FCVT            H4, S4 }

            *v18 = LOWORD(_S4);
            __asm { FCVT            H4, S5 }

            *(v18 + 1) = LOWORD(_S4);
            *&_S4 = v17[2];
            __asm { FCVT            S4, H4 }

            _S3 = v28 * _S4;
            __asm { FCVT            H3, S3 }
          }

          else
          {
            v26 = v17[1];
            *v18 = _H2 * *v17;
            *(v18 + 1) = _H2 * v26;
            _H3 = _H2 * v17[2];
          }

          goto LABEL_12;
        }
      }

      *v18 = *v17;
      _H3 = v17[2];
LABEL_12:
      *(v18 + 2) = _H3;
      v17 += 4;
      *&v18[2 * v15] = _H2;
      v18 += 8;
      if (--v19 <= 1)
      {
        goto LABEL_18;
      }
    }
  }

  v39 = (a4 - 1);
  v40 = 2 * a4;
  v41 = 2 * v14;
  v52 = a8 - 2 * v16;
  v53 = a6 - 2 * v16;
  do
  {
    if (v12 >= 1)
    {
      do
      {
        __asm { FCMP            H10, #0 }

        if (_ZF)
        {
          if (a4 >= 1)
          {
            bzero(v18, v40);
          }
        }

        else
        {
          *&_S0 = v17[v39];
          if (!a1 || _H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
          {
            if (a4 < 2)
            {
              _S1 = _S0;
            }

            else
            {
              v47 = v39;
              do
              {
                *&_S1 = v17[v47 - 1];
                *&v18[2 * v47] = LOWORD(_S0);
                _S0 = _S1;
                v37 = v47-- <= 1;
              }

              while (!v37);
            }

            *v18 = LOWORD(_S1);
          }

          else
          {
            __asm
            {
              FCVT            S1, H10
              FCVT            S0, H0
            }

            if (a1 < 1)
            {
              _S1 = 1.0 / _S1;
              if (a4 > 1)
              {
                v48 = v39;
                do
                {
                  _S2 = _S1 * _S0;
                  _H0 = v17[v48 - 1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            H2, S2
                  }

                  *&v18[2 * v48] = LOWORD(_S2);
                  v37 = v48-- <= 1;
                }

                while (!v37);
              }

              _S0 = _S1 * _S0;
            }

            else
            {
              if (a4 >= 2)
              {
                v44 = v39;
                do
                {
                  _S2 = _S0 * _S1;
                  _H0 = v17[v44 - 1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            H2, S2
                  }

                  *&v18[2 * v44] = LOWORD(_S2);
                  v37 = v44-- <= 1;
                }

                while (!v37);
              }

              _S0 = _S0 * _S1;
            }

            __asm { FCVT            H0, S0 }

            *v18 = _H0;
          }
        }

        v17 = (v17 + v41);
        *&v18[2 * v15] = _H10;
        v18 += v41;
        v37 = v12-- <= 1;
      }

      while (!v37);
    }

    v17 = (v17 + v53);
    v18 += v52;
    v37 = a3-- <= 1;
    v12 = a2;
  }

  while (!v37);
}

BOOL CGPDFCountElementsInCPChunk(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [a1 anchoringTextLine] == 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = [a1 count];
  v5 = v4;
  if ((isKindOfClass & 1) == 0)
  {
    if (v4)
    {
      v34 = 0;
      v2 = 0;
      do
      {
        v2 += CGPDFCountElementsInCPChunk([a1 childAtIndex:v34]);
        v34 = (v34 + 1);
      }

      while (v5 != v34);
      return v2;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v2 = 0;
  v6 = 0;
  v36 = v4;
  v37 = a1;
  do
  {
    v38 = v6;
    v40 = [a1 childAtIndex:{v36, v37}];
    v7 = [v40 count];
    if (v7)
    {
      v8 = 0;
      v39 = v7;
      do
      {
        v41 = v8;
        v43 = [v40 childAtIndex:?];
        v9 = [v43 count];
        if (v9)
        {
          v10 = 0;
          v42 = v9;
          do
          {
            v44 = v10;
            v11 = [v43 childAtIndex:?];
            v12 = [v11 charSequence];
            v13 = [v11 wordCount];
            v14 = v13;
            if (v13)
            {
              v15 = 0;
              v45 = v11;
              do
              {
                v16 = [v11 wordAtIndex:v15];
                v17 = *(v16 + 4);
                if (v17)
                {
                  v18 = v16;
                  v19 = 0;
                  v20 = 0;
                  do
                  {
                    v21 = [v12 charAtIndex:(v19 + *v18)];
                    v48 = 0;
                    v22 = *(v21 + 72);
                    if (!v20 || !isCharacterOverlay(v20, v21))
                    {
                      if (v22 || (v24 = *(*(v21 + 160) + 64)) == 0)
                      {
                        v46 = 0;
                        if (decomposes(v22, &v47, &v46))
                        {
                          v23 = v46;
                        }

                        else
                        {
                          v23 = 1;
                        }
                      }

                      else
                      {
                        [v24 uniCharsFor:*(v21 + 74) count:&v48 toArray:v49 maxChars:256];
                        v23 = v48;
                        if (v48 <= 1)
                        {
                          v23 = 1;
                        }
                      }

                      v2 += v23;
                    }

                    ++v19;
                    v20 = v21;
                  }

                  while (v17 != v19);
                }

                ++v2;
                ++v15;
                v11 = v45;
              }

              while (v15 != v14);
            }

            v25 = [v11 inlineList];
            if (v25)
            {
              v26 = v25;
              do
              {
                v27 = *(v26 + 8);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = 1;
                }

                else
                {
                  v28 = CGPDFCountElementsInCPChunk(v27);
                }

                v2 += v28 + 1;
                v26 = *(v26 + 16);
              }

              while (v26);
            }

            if ([objc_msgSend(v11 "parent")])
            {
              v29 = 0;
              if (v14)
              {
                for (i = 0; i != v14; ++i)
                {
                  v31 = [v11 spacesBeforeWordAtIndex:i];
                  if (i)
                  {
                    v32 = v31 == 0;
                  }

                  else
                  {
                    v32 = 1;
                  }

                  v33 = !v32;
                  v29 = v29 + v31 - v33;
                }
              }

              v2 += v29;
            }

            v10 = v44 + 1;
          }

          while (v44 + 1 != v42);
        }

        v8 = v41 + 1;
      }

      while (v41 + 1 != v39);
    }

    a1 = v37;
    v6 = v38 + 1;
  }

  while (v38 + 1 != v36);
  return v2;
}

char *CGPDFNodeMakeFromCPChunk(void *a1, uint64_t a2, uint64_t a3, CFDictionaryRef *a4, CFDictionaryRef *a5)
{
  v10 = CGPDFNodeTypeFromCPChunk();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (!a3)
  {
    v12 = [a1 count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      do
      {
        v15 = [a1 childAtIndex:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 anchoringTextLine];
        }

        v14 = (v14 + 1);
      }

      while (v13 != v14);
    }
  }

  if (a2)
  {
    v16 = *(a2 + 104);
  }

  else
  {
    v16 = 0;
  }

  if (v11 != 517 || v16)
  {
    v22 = [a1 conformsToProtocol:&unk_1EF257608];
    if (a4 && v22)
    {
      if (*a4)
      {
        Value = CFDictionaryGetValue(*a4, a1);
        if (Value)
        {
          return Value;
        }
      }

      else
      {
        *a4 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
      }

      CGPDFNodeInitInPage(v11);
      Value = v29;
      CFDictionaryAddValue(*a4, a1, v29);
    }

    else
    {
      CGPDFNodeInitInPage(v11);
      Value = v23;
    }
  }

  else
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    CGPDFNodeSizeFromCPChunk(a1, Mutable);
    context = [a1 clipBuffer];
    CFSetApplyFunction(Mutable, countClips, &context);
    CFRelease(Mutable);
    v18 = malloc_type_calloc(0x98uLL, 1uLL, 0x85D9E9A1uLL);
    *v18 = 517;
    v18[10] = 1;
    *(v18 + 1) = CPRangeNull;
    *(v18 + 4) = 0;
    *(v18 + 7) = 0;
    *(v18 + 11) = 0;
    *(v18 + 52) = 0;
    *(v18 + 2) = CGRectNull;
    *(v18 + 13) = a2;
    if (a2)
    {
      v18[10] = 2;
      *(a2 + 104) = v18;
      CGPDFNodeRelease(v18);
      v16 = *(a2 + 104);
      if (v16)
      {
        v19 = DWORD2(context);
        v20 = *(a2 + 104);
        while (*v20 != 517)
        {
          v20 = *(v20 + 8);
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        v24 = *(v20 + 112);
        if (v24)
        {
          v25 = 0;
          v26 = 8;
          do
          {
            v27 = *(*(v20 + 120) + v26);
            if (v27)
            {
              CFRelease(v27);
              v24 = *(v20 + 112);
            }

            ++v25;
            v26 += 32;
          }

          while (v25 < v24);
        }

        free(*(v20 + 120));
        if (v19)
        {
          v28 = malloc_type_calloc(v19, 0x20uLL, 0x1060040A9AB1A44uLL);
        }

        else
        {
          v28 = 0;
        }

        *(v20 + 120) = v28;
        *(v20 + 112) = 0;
      }
    }

    else
    {
      CGPDFNodeRelease(v18);
      v16 = 0;
    }

LABEL_37:
    Value = v16;
  }

  if (!Value)
  {
    return Value;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 zoneBounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = [a1 newBackgroundColor];
    if (*Value == 1538)
    {
      v39 = *(Value + 14);
      if (v39 != v38)
      {
        if (v39)
        {
          CFRelease(v39);
        }

        if (v38)
        {
          CFRetain(v38);
        }

        *(Value + 14) = v38;
      }
    }

    if (v38)
    {
      CFRelease(v38);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 cellBounds];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 tableBounds];
      }

      else
      {
        [a1 renderedBounds];
      }
    }

    v31 = v40;
    v33 = v41;
    v35 = v42;
    v37 = v43;
  }

  if ((Value[1] & 3) != 0)
  {
    *(Value + 8) = v31;
    *(Value + 9) = v33;
    *(Value + 10) = v35;
    *(Value + 11) = v37;
  }

  v44 = [a1 zOrder];
  if ((Value[1] & 3) != 0)
  {
    *(Value + 12) = v44;
  }

  if (v11 > 513)
  {
    switch(v11)
    {
      case 514:
        v56 = [a1 lineBreakAfter];
        v57 = Value;
        while (*v57 != 514)
        {
          v57 = *(v57 + 1);
          if (!v57)
          {
            goto LABEL_94;
          }
        }

        v57[104] = v56;
LABEL_94:
        [a1 rotationAngle];
        *(Value + 4) = v67;
        return Value;
      case 516:
        v65 = [a1 hasRotatedCharacters];
        v66 = Value;
        while (*v66 != 516)
        {
          v66 = *(v66 + 1);
          if (!v66)
          {
            return Value;
          }
        }

        v66[104] = v65;
        return Value;
      case 1537:
        *&context = 0;
        if ([a1 isPreformattedWithUnitWidth:&context])
        {
          v45 = Value;
          while (*v45 != 1537)
          {
            v45 = *(v45 + 1);
            if (!v45)
            {
              goto LABEL_105;
            }
          }

          *(v45 + 14) = context;
        }

LABEL_105:
        if (!a1)
        {
          return Value;
        }

        goto LABEL_127;
    }

LABEL_85:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_111;
  }

  if (v11 == 257)
  {
    v46 = [a1 imageData];
    if (!v46)
    {
      goto LABEL_111;
    }

    v47 = v46;
    v48 = *(v46 + 80);
    v49 = *(v46 + 96);
    v50 = *(v46 + 160);
    v51 = *(v46 + 168);
    v52 = *(v46 + 120);
    context = *(v46 + 104);
    v127 = v52;
    v128 = *(v46 + 136);
    if (*Value == 257)
    {
      *(Value + 15) = v48;
      if (v49)
      {
        CFRetain(v49);
      }

      *(Value + 16) = v49;
      v53 = v127;
      *(Value + 136) = context;
      *(Value + 152) = v53;
      *(Value + 168) = v128;
      *(Value + 23) = v50;
      if (v51)
      {
        CFRetain(v51);
      }

      *(Value + 24) = v51;
    }

    if (*(v47 + 176) == -1)
    {
      goto LABEL_111;
    }

    v54 = *([objc_msgSend(a1 "page")] + 2344);
    v55 = *(v47 + 176);
    goto LABEL_110;
  }

  if (v11 != 258)
  {
    if (v11 == 259)
    {
      CGPDFNodeSetCGPDFAnnotation(Value, [a1 cgAnnotation]);
      return Value;
    }

    goto LABEL_85;
  }

  v124 = [a1 pdfObjectID];
  v123 = [a1 windingRule];
  [a1 lineWidth];
  v59 = v58;
  [a1 miterLimit];
  v61 = v60;
  v122 = [a1 lineCap];
  v121 = [a1 lineJoin];
  v62 = [a1 fillColor];
  v63 = [a1 strokeColor];
  v125 = [a1 fillObject];
  v64 = [a1 strokeObject];
  if (a1)
  {
    [a1 paintTransform];
  }

  else
  {
    v127 = 0u;
    v128 = 0u;
    context = 0u;
  }

  if (*Value == 258)
  {
    *(Value + 30) = v124;
    *(Value + 16) = 0;
    Value[136] = v123 == 1;
    *(Value + 18) = v59;
    *(Value + 19) = v61;
    *(Value + 40) = v122;
    *(Value + 41) = v121;
    if (v62)
    {
      CFRetain(v62);
    }

    *(Value + 21) = v62;
    if (v63)
    {
      CFRetain(v63);
    }

    *(Value + 22) = v63;
    if (v125 | v64)
    {
      v68 = malloc_type_malloc(0x40uLL, 0x1020040038FC326uLL);
      *(Value + 23) = v68;
      *v68 = v125;
      v68[1] = v64;
      v69 = v128;
      *(v68 + 2) = v127;
      *(v68 + 3) = v69;
      *(v68 + 1) = context;
    }

    else
    {
      *(Value + 23) = 0;
    }
  }

  if (([a1 mcid] & 0x8000000000000000) == 0)
  {
    v70 = *([objc_msgSend(a1 "page")] + 2344);
    v55 = [a1 mcid];
    v54 = v70;
LABEL_110:
    CGPDFTaggedContextAddNode(v54, v55, Value);
  }

LABEL_111:
  if ([a1 user])
  {
    v71 = CGPDFNodeMakeFromCPChunk();
    v72 = v71;
    if (Value[1])
    {
      *(Value + 14) = v71;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v72)
      {
        if (*v72 == 1538 && (Value[1] & 1) != 0)
        {
          v73 = *(v72 + 104);
          if (v73)
          {
            if (*v73 == 3)
            {
              v74 = *(v73 + 32);
              *(*(v73 + 40) + 8 * v74) = Value;
              *(v73 + 32) = v74 + 1;
            }
          }
        }
      }
    }
  }

  v75 = [a1 clipIndex];
  if (v75)
  {
    v76 = v75;
    v77 = [objc_msgSend(a1 "page")];
    v78 = CGPDFNodeClipMakeFromClipIndex(v77 + 2208, v76, *(v77 + 2112), v16, a5);
    if (v78)
    {
      if (Value[1])
      {
        *(Value + 13) = v78;
      }
    }
  }

LABEL_125:
  if (!a1 || v11 < 0x400)
  {
    return Value;
  }

LABEL_127:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CGPDFNodeMakeSubType(Value, 3);
    v79 = [a1 rowCount];
    v80 = [a1 rowY];
    if (v79)
    {
      v81 = v80;
      if (v80)
      {
        if (*Value == 1538)
        {
          v82 = *(Value + 13);
          if (v82)
          {
            if (*v82 == 3)
            {
              free(*(v82 + 8));
              v83 = malloc_type_malloc(8 * (v79 + 1), 0x100004000313F17uLL);
              *(v82 + 8) = v83;
              if (v83)
              {
                *(v82 + 4) = v79;
                memcpy(v83, v81, 8 * (v79 + 1));
              }

              else
              {
                *(v82 + 4) = 0;
              }
            }
          }
        }
      }
    }

    v110 = [a1 columnCount];
    v111 = [a1 columnX];
    if (v110)
    {
      v112 = v111;
      if (v111)
      {
        if (*Value == 1538)
        {
          v113 = *(Value + 13);
          if (v113)
          {
            if (*v113 == 3)
            {
              free(*(v113 + 24));
              v114 = malloc_type_malloc(8 * (v110 + 1), 0x100004000313F17uLL);
              *(v113 + 24) = v114;
              if (v114)
              {
                *(v113 + 16) = v110;
                memcpy(v114, v112, 8 * (v110 + 1));
              }

              else
              {
                *(v113 + 16) = 0;
              }
            }
          }
        }
      }
    }

    v115 = [a1 usedGraphicCount];
    if (*Value == 1538)
    {
      v116 = *(Value + 13);
      if (v116)
      {
        if (*v116 == 3)
        {
          v117 = v115;
          free(*(v116 + 40));
          *(v116 + 40) = malloc_type_calloc(v117, 8uLL, 0x2004093837F09uLL);
          *(v116 + 32) = 0;
        }
      }
    }

    v108 = [a1 backgroundColor];
    if (*Value == 1538)
    {
      v109 = *(Value + 13);
      if (v109)
      {
        if (*v109 == 3)
        {
          goto LABEL_180;
        }
      }
    }

    return Value;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return Value;
  }

  CGPDFNodeMakeSubType(Value, 2);
  v84 = [a1 rowSpan];
  if (*Value == 1538)
  {
    v86 = *(Value + 13);
    if (v86)
    {
      if (*v86 == 2)
      {
        *(v86 + 8) = v84;
        *(v86 + 16) = v85;
      }
    }
  }

  v87 = [a1 columnSpan];
  if (*Value == 1538)
  {
    v89 = *(Value + 13);
    if (v89)
    {
      if (*v89 == 2)
      {
        *(v89 + 24) = v87;
        *(v89 + 32) = v88;
      }
    }
  }

  for (i = 0; i != 4; ++i)
  {
    v91 = sideMap[i];
    [a1 boundsOfBorder:i];
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v100 = [a1 colorOfBorder:i];
    if (*Value == 1538)
    {
      v101 = *(Value + 13);
      if (v101)
      {
        if (*v101 == 2)
        {
          v102 = v100;
          v103 = *(v101 + 40);
          if (!v103)
          {
            v104 = malloc_type_calloc(4uLL, 0x28uLL, 0x10200405CE47BF4uLL);
            if (!v104)
            {
              continue;
            }

            v103 = v104;
            for (j = 0; j != 160; j += 40)
            {
              *&v104[j] = CGRectNull;
            }
          }

          v106 = &v103[40 * v91];
          *v106 = v93;
          *(v106 + 1) = v95;
          *(v106 + 2) = v97;
          *(v106 + 3) = v99;
          v107 = *(v106 + 4);
          if (v107 != v102)
          {
            if (v107)
            {
              CFRelease(v107);
            }

            if (v102)
            {
              CFRetain(v102);
            }

            *(v106 + 4) = v102;
          }

          *(v101 + 40) = v103;
        }
      }
    }
  }

  v108 = [a1 backgroundColor];
  if (*Value != 1538)
  {
    return Value;
  }

  v109 = *(Value + 13);
  if (!v109 || *v109 != 2)
  {
    return Value;
  }

LABEL_180:
  v118 = v108;
  v119 = *(v109 + 48);
  if (v119 != v118)
  {
    if (v119)
    {
      CFRelease(v119);
    }

    if (v118)
    {
      CFRetain(v118);
    }

    *(v109 + 48) = v118;
  }

  return Value;
}

uint64_t CGPDFNodePopulateFromCPChunk(int *a1, void *a2, uint64_t a3, unsigned int *a4, CFDictionaryRef *a5, CFDictionaryRef *a6)
{
  v289 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_13:
    v19 = [a2 count];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = [a2 childAtIndex:v21];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v23 anchoringTextLine])
        {
          result = CGPDFNodeMakeFromCPChunk(v23, a3, 0, a5, a6);
          if (!result)
          {
            return result;
          }

          v24 = result;
          CGPDFNodeAddChild(a1, result, v22);
          CGPDFNodeRelease(v24);
          result = CGPDFNodePopulateFromCPChunk(v24, v23, a3, a4, a5, a6);
          if (!result)
          {
            return result;
          }

          ++v22;
        }

        v21 = (v21 + 1);
      }

      while (v20 != v21);
    }

    return 1;
  }

  v8 = *a1;
  if ((*a1 & 0x100) == 0)
  {
    if (v8 != 516)
    {
      if (v8 == 513)
      {
        result = CGPDFNodePopulateFromCPGraphicObject(a1, a2, a3, a4);
        if (!result)
        {
          return result;
        }

        TextRange = CGPDFNodeGetTextRange(a1);
        v12 = v11;
        v13 = [a2 count];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = [a2 childAtIndex:v16];
            if (![v17 anchoringTextLine])
            {
              result = CGPDFNodeMakeFromCPChunk(v17, a3, 0, a5, a6);
              if (!result)
              {
                return result;
              }

              v18 = result;
              CGPDFNodeAddChild(a1, result, v15);
              CGPDFNodeRelease(v18);
              *(v18 + 16) = TextRange;
              *(v18 + 24) = v12;
              ++v15;
            }

            v16 = (v16 + 1);
          }

          while (v14 != v16);
        }

        return 1;
      }

      goto LABEL_13;
    }

    v25 = a3;
    if (a3)
    {
      v26 = [a2 count];
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v238 = v26;
      v30 = a5;
      while (1)
      {
        v240 = v28;
        v243 = v27;
        v244 = v29;
        v248 = [a2 childAtIndex:?];
        v247 = CGPDFNodeMakeFromCPChunk(v248, v25, 0, v30, a6);
        if (!v247)
        {
          break;
        }

        CGPDFNodeAddChild(a1, v247, v244);
        CGPDFNodeRelease(v247);
        v31 = [v248 count];
        if (v31)
        {
          v242 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 84;
          v245 = v31;
          do
          {
            v246 = v32;
            v35 = [v248 childAtIndex:v33];
            v36 = CGPDFNodeMakeFromCPChunk(v35, v25, 0, v30, a6);
            if (!v36)
            {
LABEL_266:
              if (!v246)
              {
                goto LABEL_269;
              }

              break;
            }

            v37 = v36;
            CGPDFNodeAddChild(v247, v36, v33);
            CGPDFNodeRelease(v37);
            v38 = [v35 listItem];
            v249 = v33;
            if (v38)
            {
              v39 = v38;
              if ([v38 paragraphCount])
              {
                if ([v39 paragraphAtIndex:0] == v35)
                {
                  v214 = [v39 list];
                  v215 = [v214 itemCount];
                  if (v215)
                  {
                    v216 = v215;
                    if ([v214 itemAtIndex:0] != v39)
                    {
                      if (!v242)
                      {
                        v242 = 0;
                        goto LABEL_34;
                      }

                      v217 = *v242;
                      v218 = [v39 paragraphCount];
                      if (v217)
                      {
LABEL_251:
                        if (*v217 == 1537)
                        {
                          if (v218)
                          {
                            if (*v37 == 1537)
                            {
                              v232 = *(v217 + 104);
                              if (v232)
                              {
                                if (*v232 == 1)
                                {
                                  v233 = *(v232 + 24);
                                  if (v233)
                                  {
                                    v234 = *(v232 + 20);
                                    if (v234)
                                    {
                                      v235 = *(v233 + 4 * (v234 - 1)) + v218;
                                    }

                                    else
                                    {
                                      *(v232 + 8) = v37;
                                      v235 = v218 - 1;
                                    }

                                    *(v232 + 20) = v234 + 1;
                                    *(v233 + 4 * v234) = v235;
                                    if (v217 != v37)
                                    {
                                      CGPDFNodeRemoveSubType(v37);
                                      *(v37 + 104) = v232;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      if ([v214 itemAtIndex:v216 - 1] == v39)
                      {
                        v236 = v242[1];
                        free(v242);
                        v242 = v236;
                      }

                      goto LABEL_34;
                    }

                    CGPDFNodeMakeSubType(v37, 1);
                    if (*v37 == 1537)
                    {
                      v219 = *(v37 + 104);
                      if (v219)
                      {
                        if (*v219 == 1)
                        {
                          free(*(v219 + 24));
                          *(v219 + 24) = malloc_type_calloc(v216, 4uLL, 0x100004052888210uLL);
                          *(v219 + 20) = 0;
                        }
                      }
                    }

                    v220 = [v214 type];
                    if (*v37 == 1537)
                    {
                      v221 = *(v37 + 104);
                      if (v221)
                      {
                        if (*v221 == 1)
                        {
                          v221[1] = listStyleFromOrdinalType[v220];
                        }
                      }
                    }

                    v222 = [v39 number];
                    if (*v37 == 1537)
                    {
                      v223 = *(v37 + 104);
                      if (v223)
                      {
                        if (*v223 == 1)
                        {
                          v223[4] = v222;
                        }
                      }
                    }

                    v224 = [v214 ordinalPrefixLength];
                    if (*v37 == 1537)
                    {
                      v225 = *(v37 + 104);
                      if (v225)
                      {
                        if (*v225 == 1)
                        {
                          v225[8] = v224;
                        }
                      }
                    }

                    v226 = [v214 ordinalSuffixLength];
                    if (*v37 == 1537)
                    {
                      v227 = *(v37 + 104);
                      if (v227)
                      {
                        if (*v227 == 1)
                        {
                          v227[9] = v226;
                        }
                      }
                    }

                    v228 = [v214 isMultilevel];
                    if (*v37 == 1537)
                    {
                      v229 = *(v37 + 104);
                      if (v229)
                      {
                        if (*v229 == 1)
                        {
                          *(v229 + 40) = v228;
                        }
                      }
                    }

                    v230 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
                    if (v230)
                    {
                      v231 = v230;
                      *v230 = v37;
                      v230[1] = v242;
                      v218 = [v39 paragraphCount];
                      v242 = v231;
                      v217 = v37;
                      goto LABEL_251;
                    }
                  }
                }
              }
            }

LABEL_34:
            v25 = a3;
            v40 = [v35 count];
            if (v40)
            {
              v41 = 0;
              v42 = 0;
              v250 = v40;
              v251 = v37;
              v252 = v35;
              do
              {
                v274 = v34;
                v43 = v30;
                v44 = [v35 childAtIndex:v42];
                v259 = *(v25 + 48);
                [v44 baseline];
                v268 = v45;
                v270 = [v44 charSequence];
                v265 = [objc_msgSend(v44 "page")];
                v46 = [v44 inlineList];
                v47 = v25;
                v48 = [v44 wordCount];
                v277 = [v44 inlineCount] + v48;
                v49 = CGPDFNodeMakeFromCPChunk(v44, v47, &v277, v43, a6);
                if (!v49)
                {
                  *(v27 + 16) |= 0x20u;
                  v25 = a3;
                  v30 = v43;
                  if (!v41)
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_218;
                }

                v50 = v49;
                v253 = v42;
                CGPDFNodeAddChild(v37, v49, v42);
                v263 = v50;
                CGPDFNodeRelease(v50);
                v51 = [v44 parent];
                v276 = 0.0;
                v257 = [v51 isPreformattedWithUnitWidth:&v276];
                v262 = v44;
                if (!v277)
                {
                  v25 = a3;
                  v59 = v259;
                  goto LABEL_178;
                }

                v56 = 0;
                v57 = 0;
                v58 = v274 | 1;
                v261 = v48;
                v25 = a3;
                v59 = v259;
                do
                {
                  if (v46 && v57 >= *v46)
                  {
                    v267 = v57;
                    v80 = v46;
                    v81 = *(v46 + 1);
                    v282 = v263;
                    v283 = v25;
                    v284 = v27;
                    v285[0] = v58;
                    v285[1] = 0;
                    v286 = v268;
                    v287 = a5;
                    v288 = a6;
                    v82 = malloc_type_calloc(0x48uLL, 1uLL, 0x85D9E9A1uLL);
                    v83 = v56;
                    v84 = v82;
                    *v82 = 1;
                    *(v82 + 10) = 1;
                    *(v82 + 1) = CPRangeNull;
                    *(v82 + 4) = 0;
                    *(v82 + 7) = 0;
                    *(v82 + 44) = 0;
                    v82[52] = 0;
                    v85 = v83;
                    CGPDFNodeAddChild(v263, v82, v83);
                    CGPDFNodeRelease(v84);
                    v86 = *(v25 + 48);
                    v87 = CGPDFNodeMakeFromCPChunk(v81, v25, 0, a5, a6);
                    if (v87)
                    {
                      v88 = v87;
                      if (*v84 == 1)
                      {
                        v89 = *(v84 + 8);
                        if (v89)
                        {
                          *(v89 + 8) = 0;
                          v84[52] = 0;
                          CGPDFNodeRelease(v89);
                        }

                        else
                        {
                          v84[52] = 0;
                        }

                        *(v84 + 8) = v88;
                        v84[52] = 1;
                        ++*(v88 + 10);
                        *(v88 + 1) = v84;
                      }

                      CGPDFNodeRelease(v88);
                      v90 = v88;
                      v25 = a3;
                      v59 = v259;
                      if (!CGPDFNodePopulateFromCPChunk(v90, v81, a3, v285, a5, a6))
                      {
                        goto LABEL_173;
                      }

                      v91 = v283;
                      if (v283)
                      {
                        v92 = *(v283 + 48);
                      }

                      else
                      {
                        v92 = 0;
                      }

                      *(v84 + 2) = v86;
                      *(v84 + 3) = v92 - v86;
                      v93 = *(v91 + 24) + 24 * *(v91 + 32);
                      v27 = v93 - 24;
                      v284 = v93 - 24;
                      *(v93 - 8) |= 2u;
                      v94 = closestCharacter(v81);
                      v95 = v94;
                      v96 = &CGRectZero;
                      if (v94)
                      {
                        v96 = v94;
                      }

                      height = v96->size.height;
                      [v81 renderedBounds];
                      v108 = v104;
                      v109 = v105;
                      v110 = v106;
                      v111 = v107;
                      if (v106 < 0.0 || v107 < 0.0)
                      {
                        v291 = CGRectStandardize(*&v104);
                        v112 = v291.origin.x + v291.size.width;
                        v291.origin.x = v108;
                        v291.origin.y = v109;
                        v291.size.width = v110;
                        v291.size.height = v111;
                        v292 = CGRectStandardize(v291);
                        y = v292.origin.y;
                        if (!v95)
                        {
                          v293.origin.x = v108;
                          v293.origin.y = v109;
                          v293.size.width = v110;
                          v293.size.height = v111;
                          v294 = CGRectStandardize(v293);
                          v109 = v294.origin.y;
                          goto LABEL_165;
                        }
                      }

                      else
                      {
                        v112 = v104 + v106;
                        y = v105;
                        if (!v95)
                        {
LABEL_165:
                          v184 = CGPDFCharacterCreate(32, 0, v112, y, 0.0, height, 0.0, 0.0, 0.0, 0.0, v98, v99, v100, v101, v102, v103, *&v109);
                          if (v95)
                          {
                            v185 = [*(*&v95[5].origin.x + 64) cgPDFFont];
                            v186 = CGPDFTextStyleCreate(v185, **&v95[5].origin.x, *(*&v95[5].origin.x + 96), *(*&v95[5].origin.x + 72), v95[5].origin.y * 0.0174532925, v95[2].size.height - v286);
                            CGPDFLayoutAppendTextElement(v91, v184, v186, 0x400u);
                            if (v186)
                            {
                              CGPDFTextStyleRelease(v186);
                            }
                          }

                          else
                          {
                            CGPDFLayoutAppendTextElement(v91, v184, 0, 0x400u);
                          }

                          v25 = a3;
                          if (v184)
                          {
                            v61 = (*v184)-- == 1;
                            if (v61)
                            {
                              free(v184);
                            }
                          }

                          goto LABEL_173;
                        }
                      }

                      v109 = v95[2].size.height;
                      goto LABEL_165;
                    }

                    v25 = a3;
                    v59 = v259;
LABEL_173:
                    v46 = *(v80 + 2);
                    v56 = v85;
                    v57 = v267;
                    goto LABEL_174;
                  }

                  if (v57 >= v261)
                  {
                    goto LABEL_174;
                  }

                  v266 = v57;
                  v264 = v56;
                  v260 = v46;
                  if (v257)
                  {
                    v60 = [v262 spacesBeforeWordAtIndex:v57];
                    v61 = !v57 || v60 == 0;
                    v62 = !v61;
                    v63 = v60 - v62;
                    if (v60 != v62)
                    {
                      v64 = [v262 wordAtIndex:v57];
                      v65 = v276;
                      v72 = [v270 charAtIndex:*v64];
                      v73 = *(v72 + 24);
                      v74 = *(v72 + 8);
                      v75 = *v72 - v63 * v65;
                      do
                      {
                        v76 = CGPDFCharacterCreate(32, 0, v75, v74, v65, v73, 0.0, 0.0, 0.0, 0.0, v66, v67, v68, v69, v70, v71, *(v72 + 88));
                        if (!v76)
                        {
                          break;
                        }

                        v77 = v76;
                        v78 = CGPDFTextStyleCreate([*(*(v72 + 160) + 64) cgPDFFont], **(v72 + 160), *(*(v72 + 160) + 96), *(*(v72 + 160) + 72), *(v72 + 168) * 0.0174532925, *(v72 + 88) - v268);
                        if (!v78)
                        {
                          v61 = (*v77)-- == 1;
                          if (v61)
                          {
                            free(v77);
                          }

                          break;
                        }

                        v79 = v78;
                        CGPDFLayoutAppendTextElement(a3, v77, v78, 0x400u);
                        v61 = (*v77)-- == 1;
                        if (v61)
                        {
                          free(v77);
                        }

                        --v63;
                        CGPDFTextStyleRelease(v79);
                        v75 = v65 + v75;
                      }

                      while (v63);
                    }
                  }

                  v271 = [v262 wordAtIndex:v57];
                  v114 = v271[1];
                  v115 = malloc_type_calloc(0x48uLL, 1uLL, 0x85D9E9A1uLL);
                  *v115 = 1;
                  *(v115 + 10) = 1;
                  *(v115 + 1) = CPRangeNull;
                  *(v115 + 4) = 0;
                  *(v115 + 7) = 0;
                  *(v115 + 44) = 0;
                  v115[52] = 0;
                  v56 = v264;
                  CGPDFNodeAddChild(v263, v115, v264);
                  CGPDFNodeRelease(v115);
                  v116 = a3;
                  v117 = *(a3 + 48);
                  v275 = v114;
                  if (!v114)
                  {
                    goto LABEL_156;
                  }

                  v255 = *(a3 + 48);
                  v256 = v115;
                  v118 = 0;
                  v119 = 0;
                  v120 = 0;
                  do
                  {
                    v121 = [v270 charAtIndex:(*v271 + v119)];
                    if (!v118 || !isCharacterOverlay(v118, v121))
                    {
                      v122 = *(v121 + 72);
                      v123 = *v121;
                      v124 = *(v121 + 8);
                      v125 = *(v121 + 16);
                      v126 = *(v121 + 24);
                      v127 = *(v121 + 32);
                      v128 = *(v121 + 40);
                      v129 = *(v121 + 48);
                      v130 = *(v121 + 56);
                      v272 = *(v121 + 168);
                      if (*(v121 + 72))
                      {
                        LODWORD(v282) = 0;
                        LODWORD(v278) = 0;
                        if (decomposes(v122, &v282, &v278))
                        {
                          v131 = v278;
                          v132 = 2 * v278;
                          v133 = malloc_type_malloc(v132, 0x1000040BDFB0063uLL);
                          v134 = v133;
                          if (v133 && v131)
                          {
                            v135 = 0;
                            v136 = v282;
                            do
                            {
                              v137 = ds[v136];
                              if (HIWORD(v137))
                              {
                                LOWORD(v137) = 0;
                              }

                              *(v133 + v135) = v137;
                              v135 += 2;
                              ++v136;
                            }

                            while (v132 != v135);
                          }

                          else
                          {
                            v131 = 0;
                          }
                        }

                        else
                        {
                          v131 = 0;
                          v134 = 0;
                        }

                        v149 = v134;
                      }

                      else
                      {
                        v138 = v265[258];
                        v139 = v265[259];
                        v140 = 0xAAAAAAAAAAAAAAABLL * ((v139 - v138) >> 6) + 0xFFFFFFFF;
                        if (v138 >= v139)
                        {
                          LODWORD(v140) = 0;
                        }

                        if (v139 > v121)
                        {
                          v141 = 0xAAAAAAAAAAAAAAABLL * ((v121 - v138) >> 6);
                        }

                        else
                        {
                          LODWORD(v141) = v140;
                        }

                        if (v138 <= v121)
                        {
                          v142 = v141;
                        }

                        else
                        {
                          v142 = 0;
                        }

                        v134 = v265[287];
                        if (v134)
                        {
                          v143 = v134[3];
                          if (v143)
                          {
                            Count = CFArrayGetCount(v143);
                            if (Count >= 1)
                            {
                              v145 = Count;
                              v146 = v142;
                              v147 = -1;
                              do
                              {
                                ValueAtIndex = CFArrayGetValueAtIndex(v134[3], (v145 + v147) >> 1);
                                if (!ValueAtIndex)
                                {
                                  break;
                                }

                                if (*ValueAtIndex == v146)
                                {
                                  v149 = 0;
                                  v131 = ValueAtIndex[2];
                                  v134 = ValueAtIndex[3];
                                  goto LABEL_116;
                                }

                                if (*ValueAtIndex >= v146)
                                {
                                  v145 = (v145 + v147) >> 1;
                                }

                                else
                                {
                                  v147 = (v145 + v147) >> 1;
                                }
                              }

                              while (v147 + 1 < v145);
                            }
                          }

                          v131 = 0;
                          v134 = 0;
                        }

                        else
                        {
                          v131 = 0;
                        }

                        v149 = 0;
LABEL_116:
                        v116 = a3;
                      }

                      v150 = MEMORY[0x1865EFD70](v122);
                      if (v150 == 13 || v150 == 1)
                      {
                        *(v116 + 72) = 1;
                      }

                      v157 = CGPDFCharacterCreate(v122, *(v121 + 74), v123, v124, v125, v126, v127, v128, v129, v130, v151, v152, v153, v154, v155, v156, *(v121 + 88));
                      if (!v157)
                      {
                        goto LABEL_128;
                      }

                      v158 = v157;
                      v159 = CGPDFTextStyleCreate([*(*(v121 + 160) + 64) cgPDFFont], **(v121 + 160), *(*(v121 + 160) + 96), *(*(v121 + 160) + 72), v272 * 0.0174532925, *(v121 + 88) - v268);
                      if (v159)
                      {
                        v160 = v159;
                        CGPDFLayoutAppendTextElement(v116, v158, v159, v58);
                        if (v131)
                        {
                          v161 = *(v116 + 56);
                          if (!v161)
                          {
                            v161 = CPMultiUnicodesCreate();
                            *(v116 + 56) = v161;
                          }

                          CPMultiUnicodesAppend(v161, *(v116 + 48) - 1, v131, v134);
                        }

                        CGPDFTextStyleRelease(v160);
                      }

                      v61 = (*v158)-- == 1;
                      if (v61)
                      {
                        free(v158);
                        if (v149)
                        {
LABEL_129:
                          free(v149);
                        }
                      }

                      else
                      {
LABEL_128:
                        if (v149)
                        {
                          goto LABEL_129;
                        }
                      }

                      v27 = *(v116 + 24) + 24 * *(v116 + 32) - 24;
                    }

                    v162 = *(v121 + 184);
                    if (v162 != -1)
                    {
                      if (!v120)
                      {
                        v120 = [objc_alloc(MEMORY[0x1E696AB50]) initWithCapacity:v275];
                        v162 = *(v121 + 184);
                      }

                      [v120 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v162)}];
                    }

                    v58 = (v27 == 0) << 8;
                    ++v119;
                    v118 = v121;
                  }

                  while (v119 != v275);
                  if (!v120)
                  {
                    goto LABEL_153;
                  }

                  v280 = 0u;
                  v281 = 0u;
                  v278 = 0u;
                  v279 = 0u;
                  v163 = [v120 countByEnumeratingWithState:&v278 objects:&v282 count:16];
                  if (!v163)
                  {

LABEL_153:
                    v59 = v259;
                    v56 = v264;
                    goto LABEL_154;
                  }

                  v164 = v163;
                  v165 = 0;
                  v166 = *v279;
                  v167 = -1;
                  do
                  {
                    for (i = 0; i != v164; ++i)
                    {
                      if (*v279 != v166)
                      {
                        objc_enumerationMutation(v120);
                      }

                      v169 = *(*(&v278 + 1) + 8 * i);
                      v170 = [v120 countForObject:v169];
                      if (v170 > v165)
                      {
                        v171 = v170;
                        v167 = [v169 longLongValue];
                        v165 = v171;
                      }
                    }

                    v164 = [v120 countByEnumeratingWithState:&v278 objects:&v282 count:16];
                  }

                  while (v164);

                  v59 = v259;
                  v56 = v264;
                  if (v167 != -1)
                  {
                    v115 = v256;
                    CGPDFTaggedContextAddNode(v265[293], v167, v256);
                    v116 = a3;
                    goto LABEL_155;
                  }

                  v116 = a3;
LABEL_154:
                  v115 = v256;
LABEL_155:
                  v117 = v255;
LABEL_156:
                  v172 = *(v116 + 48) - v117;
                  *(v115 + 2) = v117;
                  *(v115 + 3) = v172;
                  *(v27 + 16) |= 2u;
                  v173 = [v270 charAtIndex:(*v271 + v271[1] - 1)];
                  v180 = CGPDFCharacterCreate(32, 0, *v173 + *(v173 + 16), *(v173 + 8), 0.0, *(v173 + 24), 0.0, 0.0, 0.0, 0.0, v174, v175, v176, v177, v178, v179, *(v173 + 88));
                  if (v180)
                  {
                    v181 = v180;
                    v182 = CGPDFTextStyleCreate([*(*(v173 + 160) + 64) cgPDFFont], **(v173 + 160), *(*(v173 + 160) + 96), *(*(v173 + 160) + 72), *(v173 + 168) * 0.0174532925, *(v173 + 88) - v268);
                    if (v182)
                    {
                      v183 = v182;
                      CGPDFLayoutAppendTextElement(a3, v181, v182, 0x400u);
                      CGPDFTextStyleRelease(v183);
                    }

                    v61 = (*v181)-- == 1;
                    if (v61)
                    {
                      free(v181);
                    }
                  }

                  v57 = v266 + 1;
                  v25 = a3;
                  v46 = v260;
LABEL_174:
                  ++v56;
                  v58 = 1;
                }

                while (v56 < v277);
LABEL_178:
                *(v27 + 16) |= 8u;
                v187 = *(v25 + 48);
                v188 = v257;
                if (v187 <= v59)
                {
                  v188 = 0;
                }

                if (v188 == 1)
                {
                  *(v263 + 16) = v59;
                  *(v263 + 24) = v187 + ~v59;
                }

                v189 = v187 - 1;
                v30 = a5;
                v37 = v251;
                v35 = v252;
                if (v59 < v187 - 1)
                {
                  while (v59 < 0 || *(v25 + 48) <= v59)
                  {
                    v191 = 0;
                    if (++v59 >= 0)
                    {
                      goto LABEL_188;
                    }

                    p_height = &CGRectNull.size.height;
                    p_size = &CGRectNull.size;
                    p_y = &CGRectNull.origin.y;
                    v195 = 1;
                    v202 = 0.0;
                    v203 = INFINITY;
                    v201 = 0.0;
                    v200 = INFINITY;
                    v209 = &CGRectNull;
LABEL_199:
                    x = v209->origin.x;
                    v55 = *p_height;
                    width = p_size->width;
                    if (p_size->width < 0.0 || v55 < 0.0)
                    {
                      v211 = *p_y;
                      v212 = v209->origin.x;
                      *(&v53 - 1) = CGRectStandardize(*(&width - 2));
                      x = v213;
                    }

                    if (v202 < 0.0 || (v52 = v200, v201 < 0.0))
                    {
                      v295.origin.x = v200;
                      v295.origin.y = v203;
                      v295.size.width = v202;
                      v295.size.height = v201;
                      *&v52 = CGRectStandardize(v295);
                    }

                    if (!v195)
                    {
                      v52 = x - v52;
                      *(v191 + 16) = v200;
                      *(v191 + 24) = v203;
                      *(v191 + 32) = v52;
                      *(v191 + 40) = v201;
                    }

                    v25 = a3;
                    if (v59 == v189)
                    {
                      goto LABEL_213;
                    }
                  }

                  v190 = *(v25 + 24);
                  if (v190)
                  {
                    v191 = *(v190 + 24 * v59);
                  }

                  else
                  {
                    v191 = 0;
                  }

                  ++v59;
LABEL_188:
                  if (*(a3 + 48) <= v59)
                  {
                    v192 = 0;
                  }

                  else
                  {
                    v192 = *(a3 + 24);
                    if (v192)
                    {
                      v192 = *(v192 + 24 * v59);
                    }
                  }

                  p_height = &CGRectNull.size.height;
                  p_size = &CGRectNull.size;
                  v195 = v191 == 0;
                  v196 = (v191 + 16);
                  v197 = (v191 + 24);
                  v198 = (v191 + 32);
                  v199 = (v191 + 40);
                  if (!v191)
                  {
                    v197 = &CGRectNull.origin.y;
                    v198 = &CGRectNull.size;
                    v199 = &CGRectNull.size.height;
                    v196 = &CGRectNull;
                  }

                  v200 = v196->origin.x;
                  v201 = *v199;
                  v202 = v198->width;
                  v203 = *v197;
                  v204 = (v192 + 16);
                  v205 = (v192 + 32);
                  v206 = (v192 + 40);
                  v207 = v192 == 0;
                  if (v192)
                  {
                    p_y = (v192 + 24);
                  }

                  else
                  {
                    p_y = &CGRectNull.origin.y;
                  }

                  if (v207)
                  {
                    v209 = &CGRectNull;
                  }

                  else
                  {
                    p_size = v205;
                    p_height = v206;
                    v209 = v204;
                  }

                  goto LABEL_199;
                }

LABEL_213:
                if ([v262 lineBreakAfter])
                {
                  *(*(*(v25 + 24) + 24 * *(v25 + 48) - 24) + 8) = 10;
                }

                v42 = v253 + 1;
                v34 = 4;
                v41 = v253 + 1 >= v250;
              }

              while (v253 + 1 != v250);
            }

            *(v27 + 16) |= 0x20u;
LABEL_218:
            *(*(*(v25 + 24) + 24 * *(v25 + 48) - 24) + 8) = 10;
            v33 = v249 + 1;
            v34 = 20;
            v32 = v249 + 1 >= v245;
          }

          while (v249 + 1 != v245);
        }

        v237 = *(v27 + 16) | 0x80;
        *(v27 + 16) = v237;
        v29 = v244 + 1;
        v28 = v244 + 1 >= v238;
        if (v244 + 1 == v238)
        {
          goto LABEL_271;
        }
      }

LABEL_269:
      if (v240)
      {
        v27 = v243;
        v237 = *(v243 + 16);
LABEL_271:
        *(v27 + 16) = v237 | 0x200;
        return 1;
      }
    }

    return 0;
  }

  return CGPDFNodePopulateFromCPGraphicObject(a1, a2, a3, a4);
}

uint64_t CGPDFNodePopulateFromCPGraphicObject(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = closestCharacter(a2);
  v9 = v8;
  if (!v8 || (result = CGPDFTextStyleCreate([*(*(v8 + 20) + 64) cgPDFFont], **(v8 + 20), *(*(v8 + 20) + 96), *(*(v8 + 20) + 72), 0.0, 0.0), (v9 = result) != 0))
  {
    v11 = *(a3 + 48);
    [a2 renderedBounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [a2 anchoringTextLine];
    v27 = *&v15;
    if (v20)
    {
      [v20 baseline];
    }

    v28 = CGPDFCharacterCreate(65532, 0, v13, v15, v17, v19, 0.0, 0.0, 0.0, 0.0, v21, v22, v23, v24, v25, v26, v27);
    CGPDFLayoutAppendTextElement(a3, v28, v9, *a4);
    *a4 = 0;
    if (v28)
    {
      if ((*v28)-- == 1)
      {
        free(v28);
      }
    }

    if (v9)
    {
      CGPDFTextStyleRelease(v9);
    }

    result = 1;
    *(a1 + 16) = v11;
    *(a1 + 24) = 1;
  }

  return result;
}

void *closestCharacter(void *a1)
{
LABEL_1:
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [a1 anchoringTextLine];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 inlineList];
        if (v4)
        {
          v5 = v4;
          while (*(v5 + 1) != a1)
          {
            v5 = *(v5 + 2);
            if (!v5)
            {
              goto LABEL_15;
            }
          }

          v6 = [v3 charSequence];
          v7 = [v6 length];
          if (v7)
          {
            v8 = v7;
            v9 = *v5;
            if (v9 >= [v3 wordCount])
            {
              v11 = (v8 - 1);
            }

            else
            {
              v10 = [v3 wordAtIndex:*v5];
              v11 = *v10 ? (*v10 - 1) : 0;
            }

            result = [v6 charAtIndex:v11];
            if (result)
            {
              return result;
            }
          }
        }
      }
    }

LABEL_15:
    result = [a1 parent];
    if (!result)
    {
      return result;
    }

    v13 = result;
    v14 = [result indexOf:a1];
    v15 = [v13 count];
    v16 = v15;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 != 0;
    v19 = (v17 + 1);
    v20 = v19 < v15;
    if (!v17)
    {
      a1 = v13;
      if (v19 >= v15)
      {
        continue;
      }
    }

    LODWORD(v21) = v17;
    while (1)
    {
      if (v18)
      {
        v21 = (v21 - 1);
        result = rightDescendantCharacter([v13 childAtIndex:v21]);
        if (result)
        {
          return result;
        }

        if (v20)
        {
LABEL_27:
          result = leftDescendantCharacter([v13 childAtIndex:v19]);
          v17 = v19;
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
        LODWORD(v21) = 0;
        if (v20)
        {
          goto LABEL_27;
        }
      }

      v18 = v21 != 0;
      v19 = (v17 + 1);
      v20 = v19 < v16;
      if (!v21 && v19 >= v16)
      {
        a1 = v13;
        goto LABEL_1;
      }
    }
  }
}

uint64_t rightDescendantCharacter(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v2 = [a1 charSequence]) != 0 && (v3 = v2, (v4 = objc_msgSend(v2, "length")) != 0))
  {

    return [v3 charAtIndex:(v4 - 1)];
  }

  else
  {
    v6 = [a1 count] - 1;
    while (v6 != -1)
    {
      result = rightDescendantCharacter([a1 childAtIndex:v6]);
      v6 = (v6 - 1);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }
}

uint64_t leftDescendantCharacter(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v2 = [a1 charSequence]) != 0 && (v3 = v2, objc_msgSend(v2, "length")))
  {

    return [v3 charAtIndex:0];
  }

  else
  {
    v5 = [a1 count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      while (1)
      {
        result = leftDescendantCharacter([a1 childAtIndex:v7]);
        if (result)
        {
          break;
        }

        v7 = (v7 + 1);
        if (v6 == v7)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFNodeTypeFromCPChunk()
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 257;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 258;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 259;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 513;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 514;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1537;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 515;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 516;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1538;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 517;
  }

  else
  {
    return 0;
  }
}

unint64_t CGPDFNodeSizeFromCPChunk(void *a1, const __CFSet *a2)
{
  v4 = CGPDFNodeTypeFromCPChunk();
  if (v4 != 514)
  {
    v10 = v4;
    if ((v4 & 0x100) != 0)
    {
      v11 = [objc_msgSend(a1 "page")];
      for (i = [a1 clipIndex]; i; i = *(*(v11 + 16) + 52 * v13))
      {
        v13 = i;
        if (CFSetContainsValue(a2, i))
        {
          break;
        }

        CFSetAddValue(a2, v13);
      }
    }

    v14 = [a1 count];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = 0;
      v18 = v14;
      do
      {
        v19 = [a1 childAtIndex:v16];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 anchoringTextLine])
        {
          --v18;
        }

        else
        {
          v17 += CGPDFNodeSizeFromCPChunk(v19, a2);
        }

        v16 = (v16 + 1);
      }

      while (v15 != v16);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    if (v10 <= 513)
    {
      if (v10 > 256)
      {
        if (v10 == 257)
        {
          v20 = 200;
          goto LABEL_47;
        }

        if (v10 == 258)
        {
          v20 = 192;
          goto LABEL_47;
        }
      }

      else
      {
        if (!v10)
        {
          v20 = 0;
          goto LABEL_47;
        }

        if (v10 == 1)
        {
          v21 = 72;
          if (!v18)
          {
            v21 = 64;
          }

          return v21 + v17;
        }
      }
    }

    else if (v10 <= 516)
    {
      if (v10 == 516)
      {
        v20 = 112;
        goto LABEL_47;
      }
    }

    else
    {
      switch(v10)
      {
        case 517:
          v20 = 144;
          goto LABEL_47;
        case 1537:
          v20 = 136;
          goto LABEL_47;
        case 1538:
          v20 = 120;
LABEL_47:
          v21 = v20 + 8 * v18;
          return v21 + v17;
      }
    }

    v20 = 112;
    if (v10 < 0x400)
    {
      v20 = 104;
    }

    if ((v10 & 0x200) == 0)
    {
      v20 = 120;
    }

    if ((v10 & 0x300) == 0)
    {
      v20 = 64;
    }

    goto LABEL_47;
  }

  v5 = [a1 wordCount];
  v6 = [a1 inlineCount];
  v7 = (v5 << 6) + 8 * (v6 + v5) + 112;
  if (v6)
  {
    v7 += 72 * v6;
    v8 = [a1 inlineList];
    if (v8)
    {
      v9 = v8;
      do
      {
        v7 += CGPDFNodeSizeFromCPChunk(*(v9 + 8), a2);
        v9 = *(v9 + 16);
      }

      while (v9);
    }
  }

  return v7;
}

const void *CGPDFNodeClipMakeFromClipIndex(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, CFDictionaryRef *a5)
{
  if (!a2)
  {
    return 0;
  }

  if (a5)
  {
    if (*a5)
    {
      Value = CFDictionaryGetValue(*a5, a2);
      if (Value)
      {
        return Value;
      }
    }

    else
    {
      *a5 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    }
  }

  v11 = (*(a1 + 16) + 52 * a2);
  v12 = *v11;
  if (v12 == a2)
  {
    Value = 0;
  }

  else
  {
    Value = CGPDFNodeClipMakeFromClipIndex(a1, v12, a3, a4, a5);
  }

  v15 = v11[2];
  v14 = v11 + 2;
  v13 = v15;
  if (v15)
  {
    v16 = v13;
    do
    {
      if (a4 && *a4 == 517)
      {
        v17 = a3 + 216 * v14[v16];
        v18 = *(v17 + 72);
        v19 = *(v17 + 96);
        v20 = *(v17 + 104);
        v21 = *(a4 + 112);
        v22 = *(a4 + 120) + 32 * v21;
        *v22 = v18;
        if (v19)
        {
          CFRetain(v19);
          LODWORD(v21) = *(a4 + 112);
        }

        *(v22 + 8) = v19;
        *(v22 + 16) = (v20 & 1) == 0;
        *(v22 + 24) = Value;
        *(a4 + 112) = v21 + 1;
        Value = v22;
      }

      else
      {
        Value = 0;
      }

      --v16;
    }

    while (v16 * 4);
  }

  if (a5 && *a5 && Value && *v14)
  {
    CFDictionaryAddValue(*a5, a2, Value);
  }

  return Value;
}

uint64_t cmap_create_with_name(const void *a1)
{
  v2 = &off_1E6E199F8;
  v3 = 5;
  while (1)
  {
    v4 = bsearch(a1, *(v2 - 1), **v2, 0x20uLL, CMapEntry_compare);
    if (v4)
    {
      break;
    }

    v2 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  v6 = v4;
  v7 = *MEMORY[0x1E695E498];
  v8 = CFDataCreateWithBytesNoCopy(0, *(v4 + 2), *(v4 + 3), *MEMORY[0x1E695E498]);
  v9 = v8;
  if (v8 && (BytePtr = CFDataGetBytePtr(v8), Length = CFDataGetLength(v9), (v12 = CFReadStreamCreateWithBytesNoCopy(0, BytePtr, Length, v7)) != 0))
  {
    v13 = v12;
    CFReadStreamOpen(v12);
    v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x10300405646078BuLL);
    v5 = v14;
    if (v14)
    {
      *v14 = 1;
      v14[41] = 0;
      *(v14 + 1) = read_string(v13);
      *(v5 + 16) = read_string(v13);
      buffer[0] = 0;
      v15 = CFReadStreamRead(v13, buffer, 1);
      v16 = buffer[0];
      if (!v15)
      {
        v16 = 0;
      }

      *(v5 + 24) = v16;
      buffer[0] = 0;
      v17 = CFReadStreamRead(v13, buffer, 1);
      if (buffer[0])
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      *(v5 + 40) = v19;
      if (v18)
      {
        *buffer = 0;
        v20 = CFReadStreamRead(v13, buffer, 4);
        v21 = bswap32(*buffer);
        if (v20)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200404BE0E0E6uLL);
        if (v23)
        {
          buffer[0] = 0;
          v24 = CFReadStreamRead(v13, buffer, 1);
          v25 = buffer[0];
          if (!v24)
          {
            v25 = 0;
          }

          *v23 = v25;
          buffer[0] = 0;
          v26 = CFReadStreamRead(v13, buffer, 1);
          v27 = buffer[0];
          if (!v26)
          {
            v27 = 0;
          }

          *(v23 + 1) = v27;
          if (v22)
          {
            Mutable = CFArrayCreateMutable(0, v22, 0);
            *(v23 + 1) = Mutable;
            if (Mutable)
            {
              do
              {
                buffer[0] = 0;
                if (CFReadStreamRead(v13, buffer, 1))
                {
                  v29 = buffer[0];
                }

                else
                {
                  v29 = 0;
                }

                *buffer = 0;
                v30 = CFReadStreamRead(v13, buffer, 4);
                v31 = bswap32(*buffer);
                if (v30)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = 0;
                }

                *buffer = 0;
                v33 = CFReadStreamRead(v13, buffer, 4);
                v34 = bswap32(*buffer);
                if (v33)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = 0;
                }

                v36 = csr_create(v29, v32, v35);
                v36[3] = cmap_cid_set_create_with_stream(v13);
                v36[2] = cmap_cid_set_create_with_stream(v13);
                CFArrayAppendValue(*(v23 + 1), v36);
                --v22;
              }

              while (v22);
              *buffer = 0;
              if (CFReadStreamRead(v13, buffer, 4) && *buffer)
              {
                operator new();
              }

              *(v23 + 2) = 0;
            }

            else
            {
              cmap_csr_set_release(v23);
              v23 = 0;
            }
          }
        }

        *(v5 + 48) = v23;
      }
    }

    CFReadStreamClose(v13);
    CFRelease(v13);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v9);
  if (v6[1])
  {
    v37 = cmap_create_with_name();
    cmap_set_used_cmap(v5, v37);
    cmap_release(v37);
  }

  return v5;
}

void function_evaluate_float(uint64_t a1, float *a2, float *a3, __n128 a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = MEMORY[0x1EEE9AC00](8 * (v8 + v7), a4);
  v13 = v20 - v11;
  if (v10 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v14 = v20 - v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000012)
  {
    v14 = malloc_type_malloc(v9, 0x4D5B39ACuLL);
  }

  v15 = &v14[8 * v7];
  if (v7)
  {
    v16 = v14;
    do
    {
      v17 = *a2++;
      v12.n128_f64[0] = v17;
      *v16++ = v17;
      --v7;
    }

    while (v7);
  }

  CGFunctionEvaluate(a1, v14, v15, v12);
  for (; v8; --v8)
  {
    v18 = *v15++;
    v19 = v18;
    *a3++ = v19;
  }

  if (v14 != v13)
  {
    free(v14);
  }
}

BOOL __lookup_function_entry_block_invoke(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a2 + 88) == *(a1 + 64) && *(a2 + 96) >= *(a1 + 48))
  {
    v2 = *(a1 + 40);
    if (*(a2 + 112) <= *v2 && *(a2 + 116) >= v2[1] && *(a2 + 104) >= *(a1 + 56) && *(a2 + 120) <= v2[2] && *(a2 + 124) >= v2[3])
    {
      v3 = *(a1 + 32);
      if (*(a2 + 64) == *(v3 + 132))
      {
        return 1;
      }

      v5 = *(v3 + 136);
      v4 = *(v3 + 144);
      if (*(a2 + 68) == v5 && *(a2 + 76) == v4)
      {
        return 1;
      }
    }
  }

  return result;
}

void *rip_function_convert_color_components(void *a1, CGColorSpace *a2, uint64_t a3, vImagePixelCount a4, char *a5, uint64_t a6, int a7, uint64_t a8, float a9, uint64_t a10, int a11)
{
  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v22 = Cache[2];
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + 120);
  if (a9 >= 1.0)
  {
    v24 = *(v23 + 48);
    if (v24 > 0.0 && v24 < a9)
    {
      v26 = *(v23 + 56);
      v27 = *(v23 + 64);
      err = 0;
      v28 = CGColorConversionInfoCreateForToneMapping(a2, v22, v26, v27, &err, a9, v24);
      if (err)
      {
        v29 = CFErrorCopyDescription(err);
        CGLog(2, "convert_color_components failed: %@", v30, v31, v32, v33, v34, v35, v29);
        CFRelease(v29);
        CFRelease(err);
        v36 = 0;
        if (!v28)
        {
          return v36;
        }
      }

      else
      {
        *&v43 = 0x210000000000;
        *(&v43 + 1) = 32;
        v44 = a10;
        v45 = a11;
        *&v40 = 0x210000000000;
        *(&v40 + 1) = 32;
        v41 = a6;
        v42 = a7;
        v36 = CGColorConversionInfoConvertData(v28, a4, 1, a8, &v43, a5, &v40);
        if (!v28)
        {
          return v36;
        }
      }

      CFRelease(v28);
      return v36;
    }
  }

  return CGColorTransformConvertComponentData(a1, a2, 4, (*(v23 + 4) << 12) >> 28, a4, 1, v21, a5, v38, a7, a8, v39, a11);
}

char *color_space_state_create_icc_with_profile(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v45 = 0;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  memset(v42, 0, sizeof(v42));
  LODWORD(v42[0]) = -1;
  CGCMSUtilsGetICCProfileInfo(a1, v42, a2, a4, a5, a6, a7, a8);
  if (BYTE13(v44) != a2)
  {
    return 0;
  }

  if (SLODWORD(v42[0]) <= 2)
  {
    if (!LODWORD(v42[0]))
    {
      v10 = 1;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      goto LABEL_13;
    }

    if (LODWORD(v42[0]) != 1)
    {
      if (LODWORD(v42[0]) == 2)
      {
        v10 = 4;
        DeviceGray = CGColorSpaceCreateDeviceCMYK();
LABEL_13:
        v12 = DeviceGray;
        goto LABEL_14;
      }

      return 0;
    }

LABEL_11:
    v10 = 3;
    DeviceGray = CGColorSpaceCreateDeviceRGB();
    goto LABEL_13;
  }

  if (LODWORD(v42[0]) == 3)
  {
    goto LABEL_11;
  }

  if (LODWORD(v42[0]) != 4)
  {
    if (LODWORD(v42[0]) != 7)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v10 = v45;
  if ((v45 - 16) < 0xFFFFFFFFFFFFFFF1)
  {
    return 0;
  }

  v12 = 0;
LABEL_14:
  v13 = malloc_type_calloc(0x78uLL, 1uLL, 0x72249CC1uLL);
  v21 = v13;
  if (!v13)
  {
    return v21;
  }

  *v13 = 1;
  *(v13 + 4) = 0;
  v13[10] = BYTE8(v44);
  v13[12] = BYTE9(v44);
  v13[11] = 0;
  v13[14] = BYTE10(v44);
  v13[15] = BYTE14(v44);
  *(v13 + 8) = *(&v44 + 11);
  v13[13] = BYTE13(v44);
  *(v13 + 6) = 6;
  *(v13 + 6) = v10;
  *(v13 + 14) = icc_vtable;
  v22 = v42[0];
  *(v13 + 7) = v42[0];
  *(v13 + 8) = v22;
  *(v13 + 10) = 0;
  *(v13 + 11) = 0;
  *(v13 + 5) = icc_get_default_color_components(v10, v14, v15, v16, v17, v18, v19, v20);
  v23 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F2040408F26EBuLL);
  *(v21 + 12) = v23;
  if (!v23)
  {
    goto LABEL_39;
  }

  v24 = v23;
  *v23 = 0;
  if (color_space_state_create_icc_with_profile_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_icc_with_profile_cglibrarypredicate, &__block_literal_global_7539);
  }

  if (color_space_state_create_icc_with_profile_f() >> 17 < 0x781)
  {
    icc_with_profile_f_12 = CFRetain(a1);
  }

  else
  {
    if (color_space_state_create_icc_with_profile_cglibrarypredicate_13 != -1)
    {
      dispatch_once(&color_space_state_create_icc_with_profile_cglibrarypredicate_13, &__block_literal_global_16_7540);
    }

    icc_with_profile_f_12 = color_space_state_create_icc_with_profile_f_12(a1);
  }

  *(v24 + 1) = icc_with_profile_f_12;
  *(v24 + 6) = v12;
  v26 = malloc_type_malloc(16 * v10, 0x100004000313F17uLL);
  *(v24 + 7) = v26;
  if (!v26)
  {
    free(*(v21 + 12));
LABEL_39:
    free(v21);
    return 0;
  }

  v30 = v26 + 8;
  v31 = v43;
  do
  {
    *(v30 - 1) = *(v31 - 1);
    v32 = *v31;
    v31 += 2;
    *v30 = v32;
    v30 += 2;
    --v10;
  }

  while (v10);
  *(v24 + 1) = *(v42 + 4);
  md = 0uLL;
  if (*(v21 + 6) != 6)
  {
    _CGHandleAssert("icc_get_md5", 43, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "state->type == kCGColorSpaceICCBased", "Colorspace not ICC based. type = %d", v27, v28, v29, *(v21 + 6));
  }

  v33 = *(v21 + 12);
  v34 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v34);
  if (v34)
  {
    CC_MD5_Update(v34, v21 + 24, 4u);
    CC_MD5_Update(v34, (v33 + 16), 0x10u);
    CC_MD5_Update(v34, v21 + 18, 1u);
    CC_MD5_Update(v34, v21 + 19, 1u);
  }

  v35 = 2 * *(v21 + 6);
  if (v35)
  {
    for (i = 0; i != v35; ++i)
    {
      v37 = *(*(v33 + 56) + 8 * i);
      data = v37;
      if (v34)
      {
        CC_MD5_Update(v34, &data, 4u);
      }
    }
  }

  if (v34)
  {
    CC_MD5_Final(&md, v34);
    v38 = md;
  }

  else
  {
    v38 = 0uLL;
  }

  v40 = v38;
  free(v34);
  *(v21 + 4) = v40;
  return v21;
}

uint64_t (*__color_space_state_create_icc_with_profile_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateImmutableCopy");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  color_space_state_create_icc_with_profile_f_12 = v1;
  return result;
}

uint64_t (*__color_space_state_create_icc_with_profile_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncPrivateAPIVersion");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  color_space_state_create_icc_with_profile_f = v1;
  return result;
}

CFTypeRef icc_create_icc_profile_ascii_description(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (*(v8 + 24) != 6)
  {
    _CGHandleAssert("icc_create_icc_profile_ascii_description", 193, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased", "Colorspace must be ICC based. type = %d", a6, a7, a8, *(v8 + 24));
  }

  v9 = *(v8 + 96);
  result = *(v9 + 40);
  if (result)
  {
    goto LABEL_10;
  }

  v11 = *(v9 + 8);
  if (copy_icc_profile_ascii_description_cglibrarypredicate != -1)
  {
    dispatch_once(&copy_icc_profile_ascii_description_cglibrarypredicate, &__block_literal_global_62_7554);
  }

  v12 = copy_icc_profile_ascii_description_f(v11);
  v13 = 0;
  if (!v12)
  {
    v12 = @"<no description>";
  }

  atomic_compare_exchange_strong_explicit((v9 + 40), &v13, v12, memory_order_relaxed, memory_order_relaxed);
  if (v13)
  {
    CFRelease(v12);
  }

  result = *(v9 + 40);
  if (result)
  {
LABEL_10:

    return CFRetain(result);
  }

  return result;
}

uint64_t (*__copy_icc_profile_ascii_description_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyASCIIDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  copy_icc_profile_ascii_description_f = v1;
  return result;
}

CGColorSpace *create_colorspace_with_colorSync_profile(const void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (create_colorspace_with_colorSync_profile_cglibrarypredicate != -1)
  {
    dispatch_once(&create_colorspace_with_colorSync_profile_cglibrarypredicate, &__block_literal_global_66_7586);
  }

  if (v4 == create_colorspace_with_colorSync_profile_f())
  {
    v5 = CFRetain(a1);
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = 0;
  if (a2)
  {
LABEL_9:
    LODWORD(a2) = CFDictionaryGetValue(a2, @"kCGColorSpaceExtendedRange") == *MEMORY[0x1E695E4D0];
  }

LABEL_10:
  if (create_colorspace_with_colorSync_profile_cglibrarypredicate_69 != -1)
  {
    dispatch_once(&create_colorspace_with_colorSync_profile_cglibrarypredicate_69, &__block_literal_global_72_7587);
  }

  v6 = 0;
  if (create_colorspace_with_colorSync_profile_f_68(v5, 0, 0))
  {
    if (system_colorspace_for_profile_cglibrarypredicate != -1)
    {
      dispatch_once(&system_colorspace_for_profile_cglibrarypredicate, &__block_literal_global_75_7588);
    }

    switch(system_colorspace_for_profile_f(v5))
    {
      case 1:
        v13 = @"kCGColorSpaceGenericGray";
        goto LABEL_48;
      case 2:
        if (a2)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_70;
      case 3:
        if (a2)
        {
          v14 = 4;
        }

        else
        {
          v14 = 3;
        }

        goto LABEL_70;
      case 4:
        v14 = 19;
        goto LABEL_70;
      case 5:
        v14 = 14;
        goto LABEL_70;
      case 6:
        v14 = 32;
        goto LABEL_70;
      case 7:
        v14 = 31;
        goto LABEL_70;
      case 8:
        if (a2)
        {
          v14 = 8;
        }

        else
        {
          v14 = 7;
        }

        goto LABEL_70;
      case 9:
        if (a2)
        {
          goto LABEL_75;
        }

        v14 = 12;
        goto LABEL_70;
      case 10:
        v14 = 13;
        goto LABEL_70;
      case 11:
        if (a2)
        {
          v14 = 10;
        }

        else
        {
          v14 = 9;
        }

        goto LABEL_70;
      case 12:
        if (a2)
        {
          goto LABEL_75;
        }

        v14 = 11;
        goto LABEL_70;
      case 13:
        v13 = @"kCGColorSpaceGenericRGB";
        goto LABEL_48;
      case 14:
        v13 = @"kCGColorSpaceGenericRGBLinear";
        goto LABEL_48;
      case 15:
        if (a2)
        {
          v14 = 25;
        }

        else
        {
          v14 = 23;
        }

        goto LABEL_70;
      case 16:
        if (a2)
        {
          v14 = 26;
        }

        else
        {
          v14 = 24;
        }

        goto LABEL_70;
      case 17:
        v14 = 27;
        goto LABEL_70;
      case 18:
        if (a2)
        {
          goto LABEL_75;
        }

        v14 = 29;
        goto LABEL_70;
      case 19:
        if (a2)
        {
          goto LABEL_75;
        }

        v14 = 28;
        goto LABEL_70;
      case 20:
        v14 = 20;
        goto LABEL_70;
      case 21:
        if (a2)
        {
          goto LABEL_75;
        }

        v14 = 22;
        goto LABEL_70;
      case 22:
        if (a2)
        {
          goto LABEL_75;
        }

        v14 = 21;
        goto LABEL_70;
      case 23:
        v14 = 30;
        goto LABEL_70;
      case 24:
        if (a2)
        {
          v14 = 16;
        }

        else
        {
          v14 = 15;
        }

        goto LABEL_70;
      case 25:
        if (a2)
        {
          v14 = 18;
        }

        else
        {
          v14 = 17;
        }

        goto LABEL_70;
      case 26:
        if (a2)
        {
          goto LABEL_75;
        }

        v13 = @"kCGColorSpaceGenericCMYK";
LABEL_48:
        v15 = CGColorSpaceCreateWithName(v13);
        goto LABEL_71;
      case 27:
        if (a2)
        {
          goto LABEL_75;
        }

        v14 = 5;
        goto LABEL_70;
      case 28:
        if (a2)
        {
          goto LABEL_75;
        }

        v14 = 6;
LABEL_70:
        v15 = CGColorSpaceCreateWithID(v14);
LABEL_71:
        v6 = v15;
        if (v15)
        {
          if (!CGColorSpaceUsesExtendedRange(v15) && ((a2 ^ 1) & 1) == 0)
          {
            registered_colorspace = create_registered_colorspace(v5, 1, v16, v17, v18, v19, v20, v21);
            CGColorSpaceRelease(v6);
            v6 = registered_colorspace;
          }
        }

        else
        {
LABEL_75:
          v6 = create_registered_colorspace(v5, a2, v7, v8, v9, v10, v11, v12);
        }

        break;
      default:
        goto LABEL_75;
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t create_registered_colorspace(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  icc_with_profile = color_space_state_create_icc_with_profile(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = CGColorSpaceCreateWithState(icc_with_profile, v10, v11, v12, v13, v14, v15, v16);
  if (icc_with_profile && atomic_fetch_add_explicit(icc_with_profile, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(icc_with_profile);
  }

  if (create_registered_colorspace_cglibrarypredicate != -1)
  {
    dispatch_once(&create_registered_colorspace_cglibrarypredicate, &__block_literal_global_79_7589);
  }

  if ((create_registered_colorspace_f(a1, @"hdgm") & 1) == 0 && v17)
  {
    *(v17 + 24) = color_space_state_register(*(v17 + 24));
  }

  return v17;
}

uint64_t (*__create_registered_colorspace_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileContainsTag");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  create_registered_colorspace_f = v1;
  return result;
}

uint64_t (*__system_colorspace_for_profile_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  system_colorspace_for_profile_f = v1;
  return result;
}

uint64_t (*__create_colorspace_with_colorSync_profile_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileVerify");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  create_colorspace_with_colorSync_profile_f_68 = v1;
  return result;
}

uint64_t (*__create_colorspace_with_colorSync_profile_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetTypeID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  create_colorspace_with_colorSync_profile_f = v1;
  return result;
}

uint64_t CGColorSpaceICCGetPlatformProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  v9 = *(v8 + 24);
  if (v9 != 6)
  {
    _CGHandleAssert("CGColorSpaceICCGetPlatformProfile", 675, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased", "Colorspace not ICC based. type = %d", a6, a7, a8, v9);
  }

  return *(*(v8 + 96) + 8);
}

CGColorSpaceRef CGColorSpaceCreateFromCICP(__int16 a1)
{
  if ((a1 & 0xF7) != 1 && a1 != 12)
  {
    return 0;
  }

  if (a1 == 12)
  {
    if (HIBYTE(a1) > 0xFu)
    {
      if (HIBYTE(a1) == 16)
      {
        v2 = &kCGColorSpaceDisplayP3_PQ;
        return CGColorSpaceCreateWithName(*v2);
      }

      if (HIBYTE(a1) == 18)
      {
        v2 = &kCGColorSpaceDisplayP3_HLG;
        return CGColorSpaceCreateWithName(*v2);
      }
    }

    else
    {
      if (HIBYTE(a1) == 8)
      {
        v2 = &kCGColorSpaceLinearDisplayP3;
        return CGColorSpaceCreateWithName(*v2);
      }

      if (HIBYTE(a1) == 13)
      {
        v2 = &kCGColorSpaceDisplayP3;
        return CGColorSpaceCreateWithName(*v2);
      }
    }

    return 0;
  }

  if (a1 == 9)
  {
    if (HIBYTE(a1) - 8) < 0xBu && ((0x5E1u >> (HIBYTE(a1) - 8)))
    {
      v2 = off_1E6E1A2F8[(HIBYTE(a1) - 8)];
      return CGColorSpaceCreateWithName(*v2);
    }

    return 0;
  }

  if (a1 != 1)
  {
    return 0;
  }

  if (HIBYTE(a1) <= 0xCu)
  {
    if (HIBYTE(a1) == 1)
    {
      v2 = &kCGColorSpaceITUR_709;
      return CGColorSpaceCreateWithName(*v2);
    }

    if (HIBYTE(a1) == 8)
    {
      v2 = &kCGColorSpaceLinearSRGB;
      return CGColorSpaceCreateWithName(*v2);
    }

    return 0;
  }

  if (HIBYTE(a1) == 13)
  {
    v2 = &kCGColorSpaceSRGB;
    return CGColorSpaceCreateWithName(*v2);
  }

  if (HIBYTE(a1) == 16)
  {
    v2 = &kCGColorSpaceITUR_709_PQ;
    return CGColorSpaceCreateWithName(*v2);
  }

  if (HIBYTE(a1) != 18)
  {
    return 0;
  }

  v2 = &kCGColorSpaceITUR_709_HLG;
  return CGColorSpaceCreateWithName(*v2);
}

CGColorSpaceRef CGColorSpaceCreateFromAttachments(CGColorSpaceRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    if (CFDictionaryContainsKey(v1, @"kCGColorSpaceAttachment_CICP_data"))
    {
      Value = CFDictionaryGetValue(v1, @"kCGColorSpaceAttachment_CICP_data");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFDataGetTypeID() && CFDataGetLength(v4) >= 4)
        {
          BytePtr = CFDataGetBytePtr(v4);
          result = CGColorSpaceCreateFromCICP(*BytePtr);
          if (result)
          {
            return result;
          }
        }
      }
    }

    if (!CFDictionaryContainsKey(v1, @"kCGColorSpace_Attachment_ICC_Data"))
    {
      return 0;
    }

    v7 = CFDictionaryGetValue(v1, @"kCGColorSpace_Attachment_ICC_Data");

    return CGColorSpaceCreateWithICCData(v7);
  }

  return result;
}

uint64_t CGColorSpaceGetColorSyncProfile(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    v2 = *(v1 + 24);
    if (v2 == 11)
    {
      v3 = *(v1 + 96);
    }

    else
    {
      if (v2 != 6)
      {
        return 0;
      }

      v3 = *(v1 + 96) + 8;
    }

    return *v3;
  }

  return result;
}

uint64_t xt_copy_url_for_name(uint64_t a1, const __CFString *a2)
{
  Copy = CFStringCreateCopy(0, a2);
  if (xt_copy_url_for_name_predicate != -1)
  {
    dispatch_once(&xt_copy_url_for_name_predicate, &__block_literal_global_7763);
  }

  v3 = xt_copy_url_for_name_f(Copy, 7, 0);
  CFRelease(Copy);
  return v3;
}

uint64_t (*__xt_copy_url_for_name_block_invoke())()
{
  if (CGLibraryLoadlibFontRegistryDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadlibFontRegistryDYLD_once, &__block_literal_global_13_22113);
  }

  result = CGLibraryLoadlibFontRegistryDYLD_handle;
  if (CGLibraryLoadlibFontRegistryDYLD_handle)
  {
    result = dlsym(CGLibraryLoadlibFontRegistryDYLD_handle, "XTCopyFontWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = font_registry_smart_null;
  }

  xt_copy_url_for_name_f = v1;
  return result;
}

uint64_t xt_copy_all_urls()
{
  if (xt_copy_all_urls_predicate != -1)
  {
    dispatch_once(&xt_copy_all_urls_predicate, &__block_literal_global_4_7768);
  }

  v1 = xt_copy_all_urls_f;

  return v1(7);
}

uint64_t (*__xt_copy_all_urls_block_invoke())()
{
  if (CGLibraryLoadlibFontRegistryDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadlibFontRegistryDYLD_once, &__block_literal_global_13_22113);
  }

  result = CGLibraryLoadlibFontRegistryDYLD_handle;
  if (CGLibraryLoadlibFontRegistryDYLD_handle)
  {
    result = dlsym(CGLibraryLoadlibFontRegistryDYLD_handle, "XTCopyAvailableFontURLs");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = font_registry_smart_null;
  }

  xt_copy_all_urls_f = v1;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateIndexed(CGColorSpaceRef baseSpace, size_t lastIndex, const unsigned __int8 *colorTable)
{
  v40 = *MEMORY[0x1E69E9840];
  if (lastIndex > 0xFF)
  {
    goto LABEL_23;
  }

  if (!baseSpace)
  {
    goto LABEL_23;
  }

  if (!colorTable)
  {
    goto LABEL_23;
  }

  Type = CGColorSpaceGetType(baseSpace);
  if (Type == 7)
  {
    goto LABEL_23;
  }

  if (Type == 9)
  {
    goto LABEL_23;
  }

  v12 = malloc_type_calloc(0x78uLL, 1uLL, 0x84A4B3CEuLL);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  *v12 = 1;
  v12[4] = 0;
  *(v12 + 10) = 0;
  v14 = CGColorSpaceIgnoresIntent(baseSpace);
  *(v13 + 24) = 7;
  *(v13 + 12) = v14;
  *(v13 + 11) = 0;
  *(v13 + 14) = 0;
  *(v13 + 48) = 1;
  *(v13 + 80) = 0;
  *(v13 + 112) = color_space_state_create_indexed_indexed_vtable;
  ProcessColorModel = CGColorSpaceGetProcessColorModel(baseSpace);
  *(v13 + 28) = 5;
  *(v13 + 32) = ProcessColorModel;
  *(v13 + 88) = 0;
  *(v13 + 40) = &indexed_get_default_color_components_default_indexed;
  v16 = malloc_type_calloc(0x90uLL, 1uLL, 0xF8EFB10uLL);
  *(v13 + 96) = v16;
  if (!v16)
  {
LABEL_22:
    free(v13);
LABEL_23:
    v28 = CGColorSpaceCreateWithState(0, lastIndex, colorTable, v3, v4, v5, v6, v7);
    goto LABEL_24;
  }

  v17 = v16;
  CFRetain(baseSpace);
  *v17 = baseSpace;
  v17[1] = lastIndex;
  v18 = *(*(baseSpace + 3) + 48) + *(*(baseSpace + 3) + 48) * lastIndex;
  v19 = malloc_type_malloc(v18, 0xA90C8377uLL);
  v17[2] = v19;
  if (!v19)
  {
    free(*(v13 + 96));
    goto LABEL_22;
  }

  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      *(v17[2] + i) = colorTable[i];
    }
  }

  memset(md, 0, 16);
  v21 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v21);
  if (v21)
  {
    CC_MD5_Update(v21, (v13 + 24), 4u);
  }

  v22 = *(v13 + 96);
  v23 = *v22;
  if (*v22)
  {
    v24 = *(v23 + 24);
    if (v24)
    {
      v25 = v21 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v27 = v22 + 1;
      v26 = v22[1];
    }

    else
    {
      CC_MD5_Update(v21, (v24 + 64), 0x10u);
      v23 = *v22;
      v27 = v22 + 1;
      v26 = v22[1];
      if (!*v22)
      {
        goto LABEL_31;
      }
    }

    v23 = *(*(v23 + 24) + 48);
  }

  else
  {
    v27 = v22 + 1;
    v26 = v22[1];
  }

  if (v21)
  {
LABEL_31:
    md5_update(v21, v22[2], v23 + v23 * v26);
    CC_MD5_Update(v21, v27, 8u);
    CC_MD5_Final(md, v21);
    v30 = *md;
    goto LABEL_33;
  }

  v30 = 0uLL;
LABEL_33:
  v38 = v30;
  free(v21);
  *(v13 + 64) = v38;
  v28 = CGColorSpaceCreateWithState(v13, v31, v32, v33, v34, v35, v36, v37);
  if (atomic_fetch_add_explicit(v13, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v13);
  }

LABEL_24:
  if (v28)
  {
    *(v28 + 3) = color_space_state_register(*(v28 + 3));
  }

  return v28;
}

size_t CGColorSpaceGetColorTableCount(size_t space)
{
  if (space)
  {
    v1 = *(space + 24);
    if (*(v1 + 28) == 5)
    {
      return *(*(v1 + 96) + 8) + 1;
    }

    else
    {
      return 0;
    }
  }

  return space;
}

CFDataRef CGColorSpaceCopyColorTable(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (*(v1 + 28) != 5)
  {
    return 0;
  }

  v2 = *(v1 + 96);
  v3 = *v2;
  if (*v2)
  {
    v3 = *(*(v3 + 24) + 48);
  }

  return CFDataCreate(0, v2[2], v3 * (v2[1] + 1));
}

void CGColorSpaceGetColorTable(CGColorSpaceRef space, uint8_t *table)
{
  if (space)
  {
    if (table)
    {
      v2 = *(space + 3);
      if (*(v2 + 28) == 5)
      {
        v3 = *(v2 + 96);
        v4 = *v3;
        if (*v3)
        {
          v4 = *(*(v4 + 24) + 48);
        }

        v5 = v4 * (v3[1] + 1);
        if (v5)
        {
          for (i = 0; i != v5; ++i)
          {
            table[i] = *(v3[2] + i);
          }
        }
      }
    }
  }
}

CGFloat *CGClipCreateWithPath(CFTypeRef cf, __int16 a2, char a3, double a4)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  memset(&v13, 0, sizeof(v13));
  if (CGPathIsRect(cf, &v13))
  {
    return CGClipCreateWithRect(0, a3, v13.origin.x, v13.origin.y, v13.size.width, v13.size.height);
  }

  v10 = CGClipCreate(a2, a3);
  v9 = v10;
  if (v10)
  {
    v10[4] = a4;
    MutableCopy = CGPathCreateMutableCopy(cf);
    *(v9 + 3) = MutableCopy;
    if (!MutableCopy)
    {
      CGClipRelease(v9);
      return 0;
    }
  }

  return v9;
}

char *CGClipCreateWithStrokedPath(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    return 0;
  }

  if (CGPathDisableTypeValidation)
  {
    v4 = 1;
  }

  else
  {
    v5 = CFGetTypeID(cf);
    v4 = v5 == CGPathGetTypeID();
  }

  v6 = 0;
  if (a2)
  {
    if (v4)
    {
      v7 = *(a2 + 67);
      v8 = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
      v6 = v8;
      if (v8)
      {
        *v8 = 1;
        *(v8 + 1) = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
        *(v8 + 4) = 514;
        *(v8 + 2) = 0;
        v8[10] = v7;
        *(v8 + 4) = *(a2 + 88);
        MutableCopy = CGPathCreateMutableCopy(cf);
        *(v6 + 3) = MutableCopy;
        if (MutableCopy)
        {
          atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
          *(v6 + 2) = a2;
          return v6;
        }

        CGClipRelease(v6);
        return 0;
      }
    }
  }

  return v6;
}

atomic_uint *CGClipCreateWithTextClipping(atomic_uint *result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
    if (result)
    {
      *result = 1;
      result[1] = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
      *(result + 4) = 4;
      *(result + 2) = 0;
      *(result + 10) = 1;
      atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
      *(result + 3) = v1;
    }
  }

  return result;
}

atomic_uint *CGClipRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t CGClipEqualToClip(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    return 0;
  }

  result = CGClipStrokeEqualToClipStroke(*(a1 + 16), *(a2 + 16));
  if (!result)
  {
    return result;
  }

  if (*(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  v6 = v5;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        return 1;
      }

      result = CGTextClippingEqualToTextClipping(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        return 1;
      }

      return result;
    }

    return CGClipMaskEqualToClipMask(*(a1 + 24), *(a2 + 24));
  }

  if (!v5)
  {
    return CGRectEqualToRect(*(a1 + 24), *(a2 + 24));
  }

  if (v6 != 2)
  {
    return 1;
  }

  result = CGPathEqualToPath(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

double CGClipGetFlatness(uint64_t a1)
{
  result = 1.0;
  if (*(a1 + 8) == 2)
  {
    return *(a1 + 32);
  }

  return result;
}

CGFloat CGClipGetRect(uint64_t a1)
{
  v1 = &CGRectNull;
  if (!*(a1 + 8))
  {
    v1 = (a1 + 24);
  }

  return v1->origin.x;
}

uint64_t CGClipGetPath(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t CGClipGetStroke(uint64_t a1)
{
  if (*(a1 + 9) << 8 == 512)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGClipGetTextClipping(uint64_t a1)
{
  if (*(a1 + 8) == 4)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t CGClipGetMask(uint64_t a1)
{
  if (*(a1 + 8) == 3)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t CGClipCreateClipPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 8))
  {
    Path = CGPathCreateWithRect(*(a1 + 24), 0);
LABEL_10:
    v20 = Path;
    v21 = *(a1 + 16);
    if (!v21)
    {
      return v20;
    }

    StrokedPath = CGClipStrokeCreateStrokedPath(v21, v20, v14, v15, v16, v17, v18, v19);
    if (v20)
    {
      CFRelease(v20);
    }

    return StrokedPath;
  }

  v9 = *(a1 + 8);
  if (v9 == 4)
  {
    Path = CGTextClippingCreatePath(*(a1 + 24));
    goto LABEL_10;
  }

  if (v9 != 2)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  StrokedPath = *(a1 + 24);
  if (!v10)
  {
    if (StrokedPath)
    {
      CFRetain(StrokedPath);
    }

    return StrokedPath;
  }

  return CGClipStrokeCreateStrokedPath(v10, StrokedPath, a3, a4, a5, a6, a7, a8);
}

uint64_t CGRenderingBufferProviderCreate(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    CGPostError("%s: Invalid size = %jd", 0, a3, a4, a5, a6, a7, a8, "CGRenderingBufferProviderCreate");
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  if (_block_invoke_once_7898 != -1)
  {
    dispatch_once(&_block_invoke_once_7898, &__block_literal_global_14_7899);
  }

  Instance = CGTypeCreateInstance(CGRenderingBufferProviderGetTypeID_id, 128, a3, a4, a5, a6, a7, a8);
  if (!Instance)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v16.__sig) = 136315138;
      *(&v16.__sig + 4) = "create_buffer_provider";
      _os_log_impl(&dword_183EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s failed", &v16, 0xCu);
    }

    return 0;
  }

  v14 = Instance;
  *(Instance + 16) = a1;
  *(Instance + 24) = -1;
  *(Instance + 120) = 1;
  v16.__sig = 0;
  *v16.__opaque = 0;
  pthread_mutexattr_init(&v16);
  pthread_mutexattr_settype(&v16, 2);
  pthread_mutex_init((v14 + 56), &v16);
  pthread_mutexattr_destroy(&v16);
  *(v14 + 24) = a2;
  *(v14 + 32) = _Block_copy(a3);
  *(v14 + 40) = _Block_copy(a4);
  *(v14 + 48) = _Block_copy(a5);
  return v14;
}

uint64_t __CGRenderingBufferProviderGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGRenderingBufferProviderGetTypeID_runtime_class);
  CGRenderingBufferProviderGetTypeID_id = result;
  return result;
}

uint64_t buffer_provider_retain_count(uint64_t a1, atomic_uint *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case -1:
      if (atomic_fetch_add_explicit(a2 + 30, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        buffer_provider_finalize(a2, a2, a3, a4, a5, a6, a7, a8);
        v10 = CFGetAllocator(a2);
        CFAllocatorDeallocate(v10, a2);
      }

      break;
    case 0:
      return a2[30];
    case 1:
      return atomic_fetch_add_explicit(a2 + 30, 1u, memory_order_relaxed) + 1;
  }

  return 0;
}

void buffer_provider_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 128))
  {
    _CGHandleAssert("buffer_provider_finalize", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGRenderingBufferProvider.c", "provider->byte_pointer == NULL", "provider byte pointer method missing", a6, a7, a8, v12);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 16));
  }

  pthread_mutex_destroy((a1 + 56));
  v10 = *(a1 + 136);
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_release(*(a1 + 32));
  _Block_release(*(a1 + 40));
  v11 = *(a1 + 48);

  _Block_release(v11);
}

__CFString *buffer_provider_copy_format_description(CFStringRef a1)
{
  if (!os_variant_has_internal_content())
  {
    return @"CGRenderingBufferProvider";
  }

  if (a1)
  {
    v3 = 0;
    asprintf(&v3, "CGRenderingBufferProvider: %p size: %zu retain count: %d retained pointer: %p", a1, a1->length, LODWORD(a1[3].length), a1[4].isa);
    a1 = CFStringCreateWithFormat(0, 0, @"%s\n%@", v3, &stru_1EF244DC0);
    free(v3);
  }

  return a1;
}

uint64_t CGRenderingBufferProviderCreateWithCFData(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDataGetTypeID())
  {
    return 0;
  }

  CFRetain(a1);
  Length = CFDataGetLength(a1);

  return CGRenderingBufferProviderCreate(a1, Length, &__block_literal_global_7917, 0, &__block_literal_global_5_7918, v4, v5, v6);
}

uint64_t CGRenderingBufferProviderGetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t CGRenderingBufferProviderGetTypeID()
{
  if (_block_invoke_once_7898 != -1)
  {
    dispatch_once(&_block_invoke_once_7898, &__block_literal_global_14_7899);
  }

  return CGRenderingBufferProviderGetTypeID_id;
}

char *CGRenderingBufferLockBytePtr(char *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    pthread_mutex_lock((v1 + 56));
    result = *(v1 + 16);
    if (*(v1 + 5))
    {
      if (result)
      {
        _CGHandleAssert("CGRenderingBufferLockBytePtr", 283, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGRenderingBufferProvider.c", "provider->byte_pointer == NULL", "provider byte pointer method missing", v2, v3, v4, v5);
      }

      goto LABEL_4;
    }

    if (!result)
    {
LABEL_4:
      *(v1 + 16) = (*(*(v1 + 4) + 16))();
      v6 = 0;
      asprintf(&v6, "CGRenderingBufferProvider: %p\n", v1);
      qword_1ED4E0528 = v6;
      ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
      ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
      qword_1ED4E0528 = 0;
      free(v6);
      return *(v1 + 16);
    }
  }

  return result;
}

void CGRenderingBufferUnlockBytePtr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!*(a1 + 128))
    {
      _CGHandleAssert("CGRenderingBufferUnlockBytePtr", 306, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGRenderingBufferProvider.c", "provider->byte_pointer != NULL", "provider byte pointer method missing", a6, a7, a8, v10);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 16));
    }

    *(a1 + 128) = 0;
    pthread_mutex_unlock((a1 + 56));

    CFRelease(a1);
  }
}

void op_EMC_8069(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    v5 = *v4;
    free(v4);
    *(a1 + 136) = v5;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = v6[2];
    v8 = *v6;
    free(v6);
    *(a1 + 96) = v8;
    switch(v7)
    {
      case 1:
        CGPDFDrawingContextRestoreGState(a2);

        CGPDFDrawingContextRestoreGState(a2);
        break;
      case 3:
        if (*(a2 + 96))
        {
          v12 = *(a2 + 88);

          CGPDFContextEndTag(v12);
        }

        break;
      case 2:
        free(*(a1 + 24));
        v9 = *(a1 + 32);
        if (v9 && (v10 = *v9, free(v9), (*(a1 + 32) = v10) != 0))
        {
          v11 = *(v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        *(a1 + 24) = v11;
        break;
    }
  }
}