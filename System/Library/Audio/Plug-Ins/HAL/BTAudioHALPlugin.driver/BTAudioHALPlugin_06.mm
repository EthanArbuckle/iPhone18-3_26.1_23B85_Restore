unsigned __int16 *sub_744C4(unsigned __int16 *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, int a5, unsigned int a6, unsigned int a7)
{
  v7 = result[20];
  result[20] = result[19];
  if (a5 < 0)
  {
    v8 = -(a5 & 0x7FFF);
  }

  else
  {
    v8 = a5;
  }

  v9 = a7 ^ 0x8000;
  if (a7 < 0x4000)
  {
    v9 = a7;
  }

  v10 = v9 + v8;
  v11 = (v9 + v8);
  result[19] = (v10 >> 15) & 1;
  v12 = a6 ^ 0x8000;
  if (a6 < 0x4000)
  {
    v12 = a6;
  }

  *a4 = v12 + v8;
  v13 = result[19];
  v14 = result[5];
  v15 = result[6];
  v16 = (result[20] ^ v13);
  if (v13 == v7)
  {
    v17 = 0x4000;
  }

  else
  {
    v17 = 114688;
  }

  if (v14 > 0xE000)
  {
    v18 = 4 * (v14 & 0x7FFF);
  }

  else
  {
    v18 = 98308;
  }

  if (v14 >= 0x2000)
  {
    v19 = 32764;
  }

  else
  {
    v19 = 4 * v14;
  }

  if ((result[5] & 0x8000u) == 0)
  {
    v18 = v19;
  }

  if (v16 != 1)
  {
    v18 = -v18;
  }

  v20 = v18 + v17;
  if ((v20 & 0x10000) != 0)
  {
    v21 = (v20 >> 7) & 0x3FF | 0xFC00;
  }

  else
  {
    v21 = (v20 >> 7) & 0x3FF;
  }

  if (!v11)
  {
    LOWORD(v21) = 0;
  }

  if ((v15 & 0x8000u) == 0)
  {
    v22 = -(v15 >> 7);
  }

  else
  {
    v22 = -(v15 >> 7) & 0x1FF;
  }

  v23 = v22 + v15 + v21;
  if (v23 > 0xD000u)
  {
    v24 = v23;
  }

  else
  {
    v24 = -12288;
  }

  if (v23 >= 0x8000u)
  {
    v25 = v24;
  }

  else
  {
    v25 = 12288;
  }

  if (v23 >= 0x3000u)
  {
    v23 = v25;
  }

  *a3 = v23;
  v26 = result[5];
  if (v26 >= 0)
  {
    v27 = -(v26 >> 8);
  }

  else
  {
    LOWORD(v27) = (256 - (v26 >> 8)) & 0x1FF;
  }

  if (result[19] == result[20])
  {
    v28 = 192;
  }

  else
  {
    v28 = -192;
  }

  if (v11)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = (v26 + v29 + v27);
  v31 = (15360 - v23);
  if (v31 < v30)
  {
    LOWORD(v30) = v31;
  }

  *a2 = v30;
  return result;
}

uint64_t sub_74638(uint64_t result, unsigned int a2, unsigned int a3, int a4, double a5, double a6, int32x2_t a7)
{
  v7 = (7 - a2) & 7;
  if (a2 < 8)
  {
    v7 = a2;
  }

  if (v7 == 6)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7 > 2u;
  }

  if (v7 == 7)
  {
    v9 = 7;
  }

  else
  {
    v9 = v8;
  }

  if (*(result + 4) == 32000)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  a7.i16[0] = *(result + 48);
  a7.i16[2] = *(result + 50);
  v11 = vsub_s32(vshl_u32(vdup_n_s32(v10), 0xB00000009), a7);
  v12 = vand_s8(v11, 0xFFFF0000FFFFLL);
  v13 = vand_s8(v11, 0x7FFF00001FFFLL);
  v14 = vand_s8(vadd_s32(vbsl_s8(vcgt_u32(0x400000001000, v13), vshl_u32(v13, 0xFFFFFFF9FFFFFFFBLL), vorr_s8(vshl_u32(v12, 0xFFFFFFF9FFFFFFFBLL), 0x3F0000000F00)), a7), 0x3FFF00000FFFLL);
  *(result + 48) = v14.i16[0];
  *(result + 50) = v14.i16[2];
  if (((4 * v14.i16[0] - v14.i16[2]) & 0x4000) != 0)
  {
    v15 = (v14.i32[1] - 4 * v14.i32[0]) & 0x3FFF;
  }

  else
  {
    v15 = (4 * v14.i16[0] - v14.i16[2]) & 0x7FFF;
  }

  v17 = v15 < v14.i32[1] >> 3 && a3 >= 0x600 && *(result + 52) == 0;
  v18 = *(result + 46);
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = 512;
  }

  v20 = v19 - v18;
  v21 = (v20 >> 4) & 0x7F;
  if ((v20 & 0x400) != 0)
  {
    v22 = v21 | 0x380;
  }

  else
  {
    v22 = v21;
  }

  v23 = (v22 + v18) & 0x3FF;
  if (a4)
  {
    v23 = 256;
  }

  *(result + 46) = v23;
  return result;
}

uint64_t sub_74770(uint64_t result, unsigned int a2, int a3)
{
  if (*(result + 4) == 40000)
  {
    goto LABEL_18;
  }

  if ((a2 & 0x7FFF) != 0)
  {
    if (!a3)
    {
      v3 = (a2 >> 15) & 1;
      v4 = *(result + 14);
      v5 = vceq_s16(vdup_n_s16(v3), (*&vshr_n_u16(*(result + 26), 0xAuLL) & 0xFFC1FFC1FFC1FFC1));
      v6 = vshr_n_u16(v4, 8uLL);
      *(result + 14) = vadd_s16(vadd_s16(vbsl_s8(vcltz_s16(v4), (*&vneg_s16(v6) & 0xFF00FF00FF00FFLL), vneg_s16((*&v6 & 0xFF7FFF7FFF7FFF7FLL))), v4), vorr_s8(vand_s8(v5, 0x80008000800080), (*&vmvn_s8(v5) & 0xFF80FF80FF80FF80)));
      v7 = *(result + 22);
      if (v3 == ((*(result + 34) >> 10) & 1))
      {
        v8 = 128;
      }

      else
      {
        v8 = -128;
      }

      if ((v7 & 0x8000u) == 0)
      {
        v9 = -((v7 >> 8) & 0x7F);
      }

      else
      {
        LOWORD(v9) = -(v7 >> 8);
      }

      *(result + 22) = v9 + v7 + v8;
      v10 = *(result + 24);
      if (v3 == ((*(result + 36) >> 10) & 1))
      {
        v11 = 128;
      }

      else
      {
        v11 = -128;
      }

      if ((v10 & 0x8000u) == 0)
      {
        v12 = -((v10 >> 8) & 0x7F);
      }

      else
      {
        LOWORD(v12) = -(v10 >> 8);
      }

      *(result + 24) = v12 + v10 + v11;
      return result;
    }

LABEL_18:
    *(result + 22) = 0;
    *(result + 14) = 0;
    return result;
  }

  if (a3)
  {
    goto LABEL_18;
  }

  v13 = *(result + 14);
  v14 = vshr_n_u16(v13, 8uLL);
  *(result + 14) = vadd_s16(v13, vbsl_s8(vcltz_s16(v13), (*&vneg_s16(v14) & 0xFF00FF00FF00FFLL), vneg_s16((*&v14 & 0xFF7FFF7FFF7FFF7FLL))));
  v15 = *(result + 22);
  if ((v15 & 0x8000u) == 0)
  {
    v16 = -((v15 >> 8) & 0x7F);
  }

  else
  {
    LOWORD(v16) = -(v15 >> 8);
  }

  *(result + 22) = v15 + v16;
  v17 = *(result + 24);
  if ((v17 & 0x8000u) == 0)
  {
    v18 = -((v17 >> 8) & 0x7F);
  }

  else
  {
    LOWORD(v18) = -(v17 >> 8);
  }

  *(result + 24) = v17 + v18;
  return result;
}

uint64_t g726_decode_frame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = 0;
  v75 = 0;
  if (a3)
  {
    v5 = 0;
    v78 = 0;
    v77 = 0;
    do
    {
      sub_73FB0(a1, &v78, &v77);
      v8 = *(a1 + 46);
      v9 = v8 >> 2;
      if (v8 > 255)
      {
        LOWORD(v9) = 64;
      }

      v10 = *(a1 + 56) >> 6;
      v11 = (*(a1 + 60) - v10) & 0x3FFF;
      v12 = (v11 * v9) >> 6;
      v13 = -((((v10 - *(a1 + 60)) & 0x1FFFu) * v9) >> 6);
      if (v11 < 0x2000)
      {
        LOWORD(v13) = v12;
      }

      v14 = *(a2 + v5);
      if (*(a1 + 4) == 32000)
      {
        v15 = word_89CF0[*(a2 + v5)];
        v16 = (v14 << 12) & 0xF8000;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      v17 = v13 + v10;
      v73 = (v13 + v10) & 0x1FFF;
      v18 = v73 >> 2;
      v19 = (v15 + (v73 >> 2)) & 0xFFF;
      if (v19 <= 0x7FF)
      {
        v20 = ((((v15 + v18) & 0x7F) << 7) | 0x4000u) >> (14 - (v19 >> 7));
      }

      else
      {
        v20 = 0;
      }

      v21 = v20 + v16;
      v22 = v78;
      v23 = (v20 + v16);
      sub_744C4(a1, &v75, &v79, &v76, v23, v78, v77);
      v27 = *(a1 + 56);
      if (*(a1 + 4) == 32000)
      {
        v28 = (7 - v14) & 7;
        if (v14 < 8)
        {
          v28 = v14;
        }

        v29 = 32 * word_89CE0[v28];
      }

      else
      {
        v29 = 0;
      }

      v30 = v29 - (v17 & 0x1FFF);
      v31 = (v30 >> 5) & 0xFFF;
      if ((v30 & 0x10000) != 0)
      {
        v32 = v31 | 0x1000;
      }

      else
      {
        v32 = v31;
      }

      v33 = (v32 + v17) & 0x1FFF;
      v34 = v33 + 15840;
      if (((v33 + 11264) & 0x2000) == 0)
      {
        v33 = 5120;
      }

      if ((v34 & 0x2000) != 0)
      {
        v33 = 544;
      }

      *(a1 + 60) = v33;
      v35 = v33 + (-v27 >> 6);
      if ((v35 & 0x2000) != 0)
      {
        v36 = v35 | 0x7C000;
      }

      else
      {
        v36 = v35 & 0x3FFF;
      }

      *(a1 + 56) = (v36 + v27) & 0x7FFFF;
      if (v23 < 0)
      {
        v37 = -(v21 & 0x7FFF);
      }

      else
      {
        LOWORD(v37) = v21;
      }

      if (v22 >= 0x4000u)
      {
        v38 = v22 ^ 0x8000;
      }

      else
      {
        v38 = v22;
      }

      v39 = (v37 + v38);
      v74 = v21 & 0x7FFF;
      if (*a1 == 2)
      {
        if (v39 < 0x2000)
        {
          if (4 * v39 <= -32768)
          {
            LOWORD(v40) = 0x8000;
          }

          else
          {
            LOWORD(v40) = 4 * v39;
          }

          v41 = v73;
        }

        else
        {
          LOWORD(v40) = 0x7FFF;
          v41 = v73;
        }

        goto LABEL_76;
      }

      v40 = linear_to_alaw(v39);
      if (*a1 == 1)
      {
        v42 = 0;
      }

      else
      {
        v18 = v23;
        v43 = v21;
        v44 = v40;
        v45 = alaw_to_linear(v40);
        if ((v45 & 0x8000) != 0)
        {
          v42 = (v45 >> 2) | 0xC000;
        }

        else
        {
          v42 = v45 >> 2;
        }

        LOWORD(v40) = v44;
        v21 = v43;
        v23 = v18;
        LOWORD(v18) = v73 >> 2;
      }

      v46 = 0;
      v47 = v42 - v38;
      v48 = v47;
      if ((v47 & 0x8000u) != 0)
      {
        v47 = -v47 & 0x7FFF;
      }

      if (v47 >= 2u)
      {
        v46 = 0;
        v49 = 2;
        do
        {
          ++v46;
          v49 *= 2;
        }

        while (v49 <= v47);
      }

      if (*(a1 + 4) != 32000)
      {
        LOWORD(v40) = 0;
        v41 = v73;
        goto LABEL_76;
      }

      v50 = ((((v47 << 7) >> v46) & 0x7F | (v46 << 7)) - v18) & 0xFFF;
      v51 = v14 & 7;
      if (v14 < 8)
      {
        v51 = v14 + 8;
      }

      if (v48 < 0)
      {
        if (v50 > 0xF83)
        {
          v52 = 6;
          v41 = v73;
          goto LABEL_69;
        }

        v41 = v73;
        if (v50 > 0x7FF)
        {
LABEL_68:
          v52 = 7;
          goto LABEL_69;
        }

        if (v50 > 0x18F)
        {
          v52 = 0;
          goto LABEL_69;
        }

        if (v50 > 0x15C)
        {
          v52 = 1;
          goto LABEL_69;
        }

        if (v50 > 0x12B)
        {
          goto LABEL_113;
        }

        if (v50 <= 0xF5)
        {
          if (v50 <= 0xB1)
          {
            if (v50 > 0x4F)
            {
              v52 = 5;
            }

            else
            {
              v52 = 6;
            }
          }

          else
          {
            v52 = 4;
          }
        }

        else
        {
          v52 = 3;
        }
      }

      else
      {
        if (v50 > 0xF83)
        {
          v52 = 9;
          v41 = v73;
          goto LABEL_69;
        }

        v41 = v73;
        if (v50 > 0x7FF)
        {
          goto LABEL_68;
        }

        if (v50 > 0x18F)
        {
          v52 = 15;
          goto LABEL_69;
        }

        if (v50 > 0x15C)
        {
          v52 = 14;
          goto LABEL_69;
        }

        if (v50 > 0x12B)
        {
          v52 = 13;
          goto LABEL_69;
        }

        if (v50 > 0xF5)
        {
LABEL_113:
          v52 = 12;
          goto LABEL_69;
        }

        if (v50 <= 0xB1)
        {
          if (v50 <= 0x4F)
          {
            v52 = 9;
          }

          else
          {
            v52 = 10;
          }
        }

        else
        {
          v52 = 11;
        }
      }

LABEL_69:
      if (*a1 != 1)
      {
        if (v52 >= v51)
        {
          if (v52 <= v51)
          {
            goto LABEL_76;
          }

          if ((v40 & 0x80) == 0)
          {
LABEL_75:
            LOWORD(v40) = v40 + 1;
            goto LABEL_76;
          }
        }

        else if ((v40 & 0x80) != 0)
        {
          goto LABEL_75;
        }

        LOWORD(v40) = v40 - 1;
      }

LABEL_76:
      *(a4 + 2 * v5) = v40;
      v53 = (((v27 >> 10) & 0x1F | 0x20) << (v27 >> 15));
      if ((v27 >> 15) > 9)
      {
        v53 = 31744;
      }

      v54 = ((v53 + (v53 >> 1)) >> 1);
      v56 = *(a1 + 52) == 1 && v20 > v54;
      v57 = v79;
      *(a1 + 52) = ((v79 - 0x8000) >> 9 < 0x29) & ~v56;
      sub_74638(a1, v14, v41, v56, v24, v25, v26);
      sub_74770(a1, v23, v56);
      *(a1 + 44) = *(a1 + 42);
      if (v39 >= 0)
      {
        v58 = v39;
      }

      else
      {
        v58 = -v39 & 0x7FFF;
      }

      if (v58)
      {
        v59 = 0;
        v60 = 1;
        v61 = v74;
        do
        {
          ++v59;
          v60 *= 2;
        }

        while (v60 <= v58);
        v62 = (v58 << 6) >> v59;
        v63 = v59 << 6;
      }

      else
      {
        v63 = 0;
        v62 = 32;
        v61 = v74;
      }

      *(a1 + 42) = v63 + ((v39 >> 5) & 0x400) + v62;
      v64 = v75;
      if (v56)
      {
        v64 = 0;
      }

      *(a1 + 10) = v64;
      if (v56)
      {
        v65 = 0;
      }

      else
      {
        v65 = v57;
      }

      *(a1 + 12) = v65;
      v66 = *(a1 + 34);
      *(a1 + 28) = *(a1 + 26);
      *(a1 + 36) = v66;
      v67 = 0;
      if (v61)
      {
        v68 = 1;
        do
        {
          ++v67;
          v68 *= 2;
        }

        while (v68 <= v20);
        v67 = v67;
      }

      v6 = (v20 << 6) >> v67;
      v7 = ((v21 >> 5) & 0x400) + (v67 << 6);
      if (!v61)
      {
        LOWORD(v6) = 32;
      }

      *(a1 + 26) = v7 + v6;
      ++v5;
    }

    while (v5 != a3);
  }

  return a3;
}

uint64_t linear_to_alaw(int a1)
{
  v1 = a1 ^ (a1 >> 15);
  v2 = (a1 ^ (a1 >> 15)) >> 4;
  if (v1 >= 0x100)
  {
    if (v1 < 0x200)
    {
      v5 = 16;
    }

    else
    {
      v3 = 1;
      do
      {
        v4 = v2;
        v2 >>= 1;
        ++v3;
      }

      while (v4 > 0x3F);
      v5 = 16 * v3;
    }

    LOBYTE(v2) = v2 + v5 - 16;
  }

  if (a1 >= 0)
  {
    LOBYTE(v2) = v2 | 0x80;
  }

  return v2 ^ 0x55u;
}

uint64_t alaw_to_linear(int a1)
{
  if ((((a1 ^ 0x55u) >> 4) & 7) != 0)
  {
    v1 = ((16 * ((a1 ^ 0x55) & 0xF)) | 0x108) << ((((a1 ^ 0x55u) >> 4) & 7) - 1);
  }

  else
  {
    v1 = (16 * ((a1 ^ 0x55) & 0xF)) | 8;
  }

  if ((a1 & 0x80u) == 0)
  {
    v1 = -v1;
  }

  return v1;
}

uint64_t g722_encode_frame(__int128 *a1, __int16 *a2, int a3, _BYTE *a4, _WORD *a5)
{
  v5 = a3 >> (*(a1 + 25) != 4);
  if (v5 < 1)
  {
    *a5 = 0;
    return 0;
  }

  else
  {
    v34 = a3 >> (*(a1 + 25) != 4);
    v9 = v5;
    do
    {
      while (*(a1 + 25) == 4)
      {
        v32 = *a2++;
        *(a1 + 63) = v32;
        sub_75240(a1 + 126);
        *a4++ = (*(a1 + 132) >> 2) & 0xF;
        if (!--v9)
        {
          goto LABEL_28;
        }
      }

      v10 = *a1;
      v11 = a1[1];
      v12 = *(a1 + 4);
      *(a1 + 11) = *(a1 + 10);
      *(a1 + 36) = v12;
      *(a1 + 20) = v11;
      *(a1 + 4) = v10;
      *a1 = *a2;
      *(a1 + 1) = a2[1];
      v13 = vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(0x20016A000CFF64, *(a1 + 8)), 0xFFF500350003FFF5, *a1), 0x3B70F24FF2EFCDBLL, a1[1]), 0xFCDBFF2E0F2403B7, *(a1 + 24)), 0xFF64000C016A0020, a1[2]), 0xFFF500030035FFF5, *(a1 + 40));
      v14 = vadd_s32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
      v15 = (v14.i32[0] + v14.i32[1]) >> 14;
      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      if (v15 >= 0x7FFF)
      {
        LOWORD(v15) = 0x7FFF;
      }

      *(a1 + 63) = v15;
      v16 = (v14.i32[1] - v14.i32[0]) >> 14;
      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      if (v16 >= 0x7FFF)
      {
        v16 = 0x7FFF;
      }

      *(a1 + 26) = v16;
      v17 = *(a1 + 28);
      v18 = v16 - v17;
      v19 = v16 >= v17;
      if (v16 - v17 >= 0x7FFF)
      {
        v18 = 0x7FFF;
      }

      if (v18 <= -32768)
      {
        v18 = -32768;
      }

      a2 += 2;
      if (v16 >= v17)
      {
        v20 = v18;
      }

      else
      {
        v20 = ~v18;
      }

      *(a1 + 27) = v18;
      v21 = *(a1 + 31);
      v22 = word_89E4C[2 * v19 + (v20 >= (564 * v21) >> 12)];
      *(a1 + 29) = v22;
      v23 = (word_89E54[v22] * v21) >> 15;
      if (v23 >= 0x7FFF)
      {
        LOWORD(v23) = 0x7FFF;
      }

      *(a1 + 32) = v23;
      v24 = word_89E48[v22 & 1] + ((127 * *(a1 + 30)) >> 7);
      v25 = v24 & ~(v24 >> 31);
      if (v25 >= 22528)
      {
        v25 = 22528;
      }

      *(a1 + 30) = v25;
      v26 = (v25 >> 6) & 0x1F;
      v27 = v25 >> 11;
      v28 = word_89E08[v26];
      v29 = v28 << (v27 - 10);
      v30 = v28 >> (10 - v27);
      if (v24 <= 22527)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      *(a1 + 31) = 4 * v31;
      sub_75AEC(a1 + 52);
      sub_75240(a1 + 126);
      *a4++ = *(a1 + 132) | (*(a1 + 58) << 6);
      --v9;
    }

    while (v9);
LABEL_28:
    *a5 = v34;
    return 0;
  }
}

uint64_t sub_75240(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 4);
  v3 = v1 - v2;
  if (v1 - v2 >= 0x7FFF)
  {
    v3 = 0x7FFF;
  }

  if (v3 <= -32768)
  {
    v3 = -32768;
  }

  if (v1 >= v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = ~v3;
  }

  *(result + 2) = v3;
  v5 = *(result + 10);
  if (v4 >= (35 * v5) >> 12)
  {
    if (v4 >= (72 * v5) >> 12)
    {
      if (v4 >= (110 * v5) >> 12)
      {
        if (v4 >= (150 * v5) >> 12)
        {
          if (v4 >= (190 * v5) >> 12)
          {
            if (v4 >= (233 * v5) >> 12)
            {
              if (v4 >= (276 * v5) >> 12)
              {
                if (v4 >= (323 * v5) >> 12)
                {
                  if (v4 >= (370 * v5) >> 12)
                  {
                    if (v4 >= (422 * v5) >> 12)
                    {
                      if (v4 >= (473 * v5) >> 12)
                      {
                        if (v4 >= (530 * v5) >> 12)
                        {
                          if (v4 >= (587 * v5) >> 12)
                          {
                            if (v4 >= (650 * v5) >> 12)
                            {
                              if (v4 >= (714 * v5) >> 12)
                              {
                                if (v4 >= (786 * v5) >> 12)
                                {
                                  if (v4 >= (858 * v5) >> 12)
                                  {
                                    if (v4 >= (940 * v5) >> 12)
                                    {
                                      if (v4 >= (1023 * v5) >> 12)
                                      {
                                        if (v4 >= (1121 * v5) >> 12)
                                        {
                                          if (v4 >= (1219 * v5) >> 12)
                                          {
                                            if (v4 >= (1339 * v5) >> 12)
                                            {
                                              if (v4 >= (1458 * v5) >> 12)
                                              {
                                                if (v4 >= (1612 * v5) >> 12)
                                                {
                                                  if (v4 >= (1765 * v5) >> 12)
                                                  {
                                                    if (v4 >= (1980 * v5) >> 12)
                                                    {
                                                      if (v4 >= (2195 * v5) >> 12)
                                                      {
                                                        if (v4 >= (2557 * v5) >> 12)
                                                        {
                                                          v7 = v4 < (2919 * v5) >> 12;
                                                          v6 = 28;
                                                          if (!v7)
                                                          {
                                                            v6 = 29;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v6 = 27;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v6 = 26;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v6 = 25;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v6 = 24;
                                                  }
                                                }

                                                else
                                                {
                                                  v6 = 23;
                                                }
                                              }

                                              else
                                              {
                                                v6 = 22;
                                              }
                                            }

                                            else
                                            {
                                              v6 = 21;
                                            }
                                          }

                                          else
                                          {
                                            v6 = 20;
                                          }
                                        }

                                        else
                                        {
                                          v6 = 19;
                                        }
                                      }

                                      else
                                      {
                                        v6 = 18;
                                      }
                                    }

                                    else
                                    {
                                      v6 = 17;
                                    }
                                  }

                                  else
                                  {
                                    v6 = 16;
                                  }
                                }

                                else
                                {
                                  v6 = 15;
                                }
                              }

                              else
                              {
                                v6 = 14;
                              }
                            }

                            else
                            {
                              v6 = 13;
                            }
                          }

                          else
                          {
                            v6 = 12;
                          }
                        }

                        else
                        {
                          v6 = 11;
                        }
                      }

                      else
                      {
                        v6 = 10;
                      }
                    }

                    else
                    {
                      v6 = 9;
                    }
                  }

                  else
                  {
                    v6 = 8;
                  }
                }

                else
                {
                  v6 = 7;
                }
              }

              else
              {
                v6 = 6;
              }
            }

            else
            {
              v6 = 5;
            }
          }

          else
          {
            v6 = 4;
          }
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = word_89D70[30 * (v1 >= v2) + v6];
  *(result + 6) = v8;
  v9 = v8 >> 2;
  if ((word_89DE8[v9] * v5) >> 15 >= 0x7FFF)
  {
    v10 = 0x7FFF;
  }

  else
  {
    v10 = (word_89DE8[v9] * v5) >> 15;
  }

  *(result + 12) = v10;
  v11 = word_89D50[v9] + ((127 * *(result + 8)) >> 7);
  v12 = v11 & ~(v11 >> 31);
  if (v12 >= 18432)
  {
    v12 = 18432;
  }

  *(result + 8) = v12;
  v13 = (v12 >> 6) & 0x1F;
  v14 = v12 >> 11;
  v15 = word_89E08[v13];
  v16 = v15 << (v14 - 8);
  v17 = v15 >> (8 - v14);
  if (v11 <= 18431)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  *(result + 10) = 4 * v18;
  return sub_75AEC(result);
}

double g722_encoder_init(uint64_t a1, __int16 a2)
{
  *(a1 + 192) = 0;
  result = 0.0;
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
  *(a1 + 136) = 32;
  *(a1 + 62) = 8;
  *(a1 + 50) = a2;
  return result;
}

uint64_t g722_decode_frame(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, _WORD *a5)
{
  if (a3 < 1)
  {
    LOWORD(v8) = 0;
    goto LABEL_68;
  }

  v64 = a5;
  v8 = 0;
  v9 = a3;
  do
  {
    while (1)
    {
      v21 = *(a1 + 50);
      v22 = *a2;
      if (v21 != 6)
      {
        break;
      }

      v23 = v22 >> 6;
      *(a1 + 58) = v23;
      v24 = (*a2 >> 2) & 0xF;
LABEL_21:
      *(a1 + 132) = v24;
      v25 = (word_89E54[v23] * *(a1 + 62)) >> 15;
      if (v25 >= 0x7FFF)
      {
        LOWORD(v25) = 0x7FFF;
      }

      *(a1 + 64) = v25;
      v26 = *(a1 + 56) + v25;
      if (v26 >= 0x7FFF)
      {
        v26 = 0x7FFF;
      }

      if (v26 <= -32768)
      {
        LOWORD(v26) = 0x8000;
      }

      *(a1 + 54) = v26;
      v27 = word_89E48[v23 & 1] + ((127 * *(a1 + 60)) >> 7);
      v28 = v27 & ~(v27 >> 31);
      if (v28 >= 22528)
      {
        v28 = 22528;
      }

      *(a1 + 60) = v28;
      v29 = (v28 >> 6) & 0x1F;
      v30 = v28 >> 11;
      v31 = word_89E08[v29];
      v32 = v31 << (v30 - 10);
      v33 = v31 >> (10 - v30);
      if (v27 <= 22527)
      {
        v34 = v33;
      }

      else
      {
        v34 = v32;
      }

      *(a1 + 62) = 4 * v34;
      sub_75AEC(a1 + 52);
      v35 = *(a1 + 50);
      v36 = *(a1 + 132);
      LOWORD(v37) = *(a1 + 132);
      if (v35 == 7)
      {
        v38 = word_89EDC[v36];
        LODWORD(v37) = v37 >> 1;
      }

      else
      {
        if (v35 != 8)
        {
          v38 = word_89DE8[v36];
          goto LABEL_38;
        }

        v38 = word_89E5C[v36];
        LODWORD(v37) = v37 >> 2;
      }

      *(a1 + 132) = v37;
LABEL_38:
      v39 = *(a1 + 136);
      v40 = *(a1 + 130) + ((v39 * v38) >> 15);
      if (v40 <= -32768)
      {
        v40 = -32768;
      }

      if (v40 >= 0x7FFF)
      {
        LOWORD(v40) = 0x7FFF;
      }

      *(a1 + 128) = v40;
      v37 = v37;
      v41 = (word_89DE8[v37] * v39) >> 15;
      if (v41 >= 0x7FFF)
      {
        LOWORD(v41) = 0x7FFF;
      }

      *(a1 + 138) = v41;
      v42 = word_89D50[v37] + ((127 * *(a1 + 134)) >> 7);
      v43 = v42 & ~(v42 >> 31);
      if (v43 >= 18432)
      {
        v43 = 18432;
      }

      *(a1 + 134) = v43;
      v44 = (v43 >> 6) & 0x1F;
      v45 = v43 >> 11;
      v46 = word_89E08[v44];
      v47 = v46 << (v45 - 8);
      v48 = v46 >> (8 - v45);
      if (v42 <= 18431)
      {
        v49 = v48;
      }

      else
      {
        v49 = v47;
      }

      *(a1 + 136) = 4 * v49;
      sub_75AEC(a1 + 126);
      v50 = *(a1 + 32);
      v51 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(0x20016A000CFF64, *(a1 + 8)), 0xFFF500350003FFF5, *a1), 0x3B70F24FF2EFCDBLL, *(a1 + 16)), 0xFCDBFF2E0F2403B7, *(a1 + 24));
      v52 = *(a1 + 128);
      v53 = *(a1 + 54);
      v54 = v52 + v53;
      if (v52 + v53 >= 0x7FFF)
      {
        v54 = 0x7FFF;
      }

      if (v54 <= -32768)
      {
        LOWORD(v54) = 0x8000;
      }

      *(a1 + 44) = v54;
      v55 = v52 - v53;
      if (v55 >= 0x7FFF)
      {
        v55 = 0x7FFF;
      }

      if (v55 <= -32768)
      {
        LOWORD(v55) = 0x8000;
      }

      *(a1 + 46) = v55;
      v56 = vmlal_s16(vmlal_s16(v51, 0xFF64000C016A0020, v50), 0xFFF500030035FFF5, *(a1 + 40));
      v57 = (v56.i32[0] + v56.i32[2]) >> 11;
      if (v57 <= -32768)
      {
        v57 = -32768;
      }

      if (v57 >= 0x7FFF)
      {
        LOWORD(v57) = 0x7FFF;
      }

      *(a1 + 126) = v57;
      v58 = (v56.i32[1] + v56.i32[3]) >> 11;
      if (v58 <= -32768)
      {
        v58 = -32768;
      }

      if (v58 >= 0x7FFF)
      {
        LOWORD(v58) = 0x7FFF;
      }

      *(a1 + 52) = v58;
      v59 = *(a1 + 44);
      v60 = *(a1 + 4);
      v61 = *(a1 + 20);
      *(a1 + 32) = *(a1 + 36);
      *a1 = v60;
      *(a1 + 16) = v61;
      *(a1 + 40) = v59;
      v62 = (a4 + 2 * v8);
      *v62 = v57;
      v8 += 2;
      v62[1] = *(a1 + 52);
      ++a2;
      if (!--v9)
      {
        goto LABEL_66;
      }
    }

    if (v21 == 7)
    {
      v23 = v22 >> 6;
      *(a1 + 58) = v23;
      v24 = (*a2 >> 1) & 0x1F;
      goto LABEL_21;
    }

    if (v21 == 8)
    {
      v23 = v22 >> 6;
      *(a1 + 58) = v23;
      LOWORD(v24) = *a2 & 0x3F;
      goto LABEL_21;
    }

    v10 = v22 >> 4;
    *(a1 + 132) = v10;
    v11 = (*(a1 + 136) * word_89DE8[v10]) >> 15;
    v12 = v11 + *(a1 + 130);
    if (v12 <= -32768)
    {
      v12 = -32768;
    }

    if (v12 >= 0x7FFF)
    {
      LOWORD(v12) = 0x7FFF;
    }

    *(a1 + 128) = v12;
    if (v11 >= 0x7FFF)
    {
      LOWORD(v11) = 0x7FFF;
    }

    *(a1 + 138) = v11;
    v13 = word_89D50[v10] + ((127 * *(a1 + 134)) >> 7);
    v14 = v13 & ~(v13 >> 31);
    if (v14 >= 18432)
    {
      v14 = 18432;
    }

    *(a1 + 134) = v14;
    v15 = (v14 >> 6) & 0x1F;
    v16 = v14 >> 11;
    v17 = word_89E08[v15];
    v18 = v17 << (v16 - 8);
    v19 = v17 >> (8 - v16);
    if (v13 <= 18431)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    *(a1 + 136) = 4 * v20;
    sub_75AEC(a1 + 126);
    *(a4 + 2 * v8++) = *(a1 + 128);
    ++a2;
    --v9;
  }

  while (v9);
LABEL_66:
  a5 = v64;
LABEL_68:
  *a5 = v8;
  return 0;
}

double g722_decoder_init(uint64_t a1, __int16 a2)
{
  *(a1 + 192) = 0;
  result = 0.0;
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
  *(a1 + 136) = 32;
  *(a1 + 62) = 8;
  *(a1 + 50) = a2;
  *(a1 + 48) = 22;
  return result;
}

uint64_t sub_75AEC(uint64_t result)
{
  v1 = *(result + 12);
  v2 = *(result + 12) != 0;
  if ((v1 + *(result + 72)) >= 0x7FFF)
  {
    v3 = 0x7FFF;
  }

  else
  {
    v3 = v1 + *(result + 72);
  }

  if (v3 <= -32768)
  {
    v3 = -32768;
  }

  *(result + 54) = v3;
  v4 = v1 + *(result + 4);
  if (v4 >= 0x7FFF)
  {
    v4 = 0x7FFF;
  }

  if (v4 <= -32768)
  {
    LOWORD(v4) = 0x8000;
  }

  *(result + 60) = v4;
  v5 = v3 >> 15;
  v6 = *(result + 56);
  v7 = *(result + 68);
  v8 = 4 * v7;
  if (4 * v7 <= -32768)
  {
    v8 = -32768;
  }

  if (v8 >= 0x7FFF)
  {
    v8 = 0x7FFF;
  }

  v9 = v5 == v6 >> 15;
  if (v5 == v6 >> 15)
  {
    v10 = 192;
  }

  else
  {
    v10 = -192;
  }

  if (v9)
  {
    v8 = -v8;
  }

  if (v5 == *(result + 58) >> 15)
  {
    v11 = 128;
  }

  else
  {
    v11 = -128;
  }

  v12 = v11 + (v8 >> 7) + ((32512 * *(result + 70)) >> 15);
  if (v12 <= -12288)
  {
    v12 = -12288;
  }

  if (v12 >= 12288)
  {
    v12 = 12288;
  }

  *(result + 70) = v12;
  v13 = v10 + ((32640 * v7) >> 15);
  if (v13 <= -32768)
  {
    v13 = -32768;
  }

  if (v13 >= 0x7FFF)
  {
    v14 = 0x7FFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = 15360 - v12;
  if (v13 + v15 < 0 != __OFADD__(v13, v15))
  {
    v16 = -v15;
  }

  else
  {
    LOWORD(v16) = v14;
  }

  if (v15 >= v14)
  {
    LOWORD(v15) = v16;
  }

  *(result + 68) = v15;
  v17 = v2 << 7;
  v18 = -128 * v2;
  if (((*(result + 14) ^ v1) & 0x8000u) == 0)
  {
    v19 = v2 << 7;
  }

  else
  {
    v19 = -128 * v2;
  }

  *(result + 42) = v19 + ((32640 * *(result + 28)) >> 15);
  if (((*(result + 16) ^ v1) & 0x8000u) == 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = -v17;
  }

  v21 = v20 + ((32640 * *(result + 30)) >> 15);
  *(result + 44) = v21;
  v22 = *(result + 16);
  v23 = 2 * v22;
  if (2 * v22 <= -32768)
  {
    v23 = -32768;
  }

  if (v23 >= 0x7FFF)
  {
    v23 = 0x7FFF;
  }

  v24 = *(result + 18);
  v25 = vsraq_n_s32(vbslq_s8(vmovl_s16(vcltz_s16(veor_s8(v24, vdup_n_s16(v1)))), vdupq_n_s32(v18), vdupq_n_s32(v17)), vmull_s16(*(result + 32), vneg_f16(0x7F007F007F007FLL)), 0xFuLL);
  v26 = vmovn_s32(v25);
  *(result + 46) = v26;
  *(result + 24) = v24.i16[2];
  v27 = 2 * v24.i16[2];
  if (v27 <= -32768)
  {
    v27 = -32768;
  }

  if (v27 >= 0x7FFF)
  {
    v27 = 0x7FFF;
  }

  v28 = v27 * v25.i32[3];
  *(result + 22) = v24.i16[1];
  v29 = 2 * v24.i16[1];
  if (v29 <= -32768)
  {
    v29 = -32768;
  }

  if (v29 >= 0x7FFF)
  {
    v29 = 0x7FFF;
  }

  v30 = ((v29 * v25.i32[2]) >> 15) + (v28 >> 15);
  *(result + 20) = v24.i16[0];
  v31 = 2 * v24.i16[0];
  if (v31 <= -32768)
  {
    v31 = -32768;
  }

  if (v31 >= 0x7FFF)
  {
    v31 = 0x7FFF;
  }

  *(result + 18) = v22;
  *(result + 32) = v26;
  v32 = v30 + ((v31 * v25.i32[1]) >> 15) + ((v23 * v25.i32[0]) >> 15);
  v33 = *(result + 14);
  *(result + 16) = v33;
  v34 = 2 * v33;
  if (v34 <= -32768)
  {
    v34 = -32768;
  }

  if (v34 >= 0x7FFF)
  {
    v34 = 0x7FFF;
  }

  *(result + 30) = v21;
  v35 = v32 + ((v34 * v21) >> 15);
  v36 = *(result + 12);
  *(result + 14) = v36;
  v37 = 2 * v36;
  if (v37 <= -32768)
  {
    v37 = -32768;
  }

  if (v37 >= 0x7FFF)
  {
    v37 = 0x7FFF;
  }

  v38 = *(result + 42);
  *(result + 28) = *(result + 42);
  v39 = v35 + ((v37 * v38) >> 15);
  if (v39 <= -32768)
  {
    v39 = -32768;
  }

  if (v39 >= 0x7FFF)
  {
    v39 = 0x7FFF;
  }

  *(result + 72) = v39;
  *(result + 56) = *(result + 54);
  v40 = *(result + 62);
  *(result + 64) = v40;
  v41 = 2 * v40;
  if (v41 <= -32768)
  {
    v41 = -32768;
  }

  if (v41 >= 0x7FFF)
  {
    v41 = 0x7FFF;
  }

  v42 = v41 * *(result + 70);
  v43 = *(result + 60);
  *(result + 62) = v43;
  v44 = 2 * v43;
  if (v44 <= -32768)
  {
    v44 = -32768;
  }

  if (v44 >= 0x7FFF)
  {
    v44 = 0x7FFF;
  }

  v45 = ((v44 * *(result + 68)) >> 15) + (v42 >> 15);
  if (v45 <= -32768)
  {
    v45 = -32768;
  }

  if (v45 >= 0x7FFF)
  {
    v45 = 0x7FFF;
  }

  v46 = v45 + v39;
  if (v46 >= 0x7FFF)
  {
    v47 = 0x7FFF;
  }

  else
  {
    v47 = v46;
  }

  if (v47 <= -32768)
  {
    LOWORD(v47) = 0x8000;
  }

  *(result + 4) = v47;
  return result;
}

void sub_75F7C()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_75FB8(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "bufferSize <= GetFrameLength()";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
}

void sub_76008(uint8_t *buf, uint64_t a2, int a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "bufferSize (%lu) exceeds maxFrameSize (%d), not writing", buf, 0x12u);
}

void sub_76060()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7609C()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_760D8()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_76114(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Input Decode:: decodeInputSize=0 for non-frame based codec", buf, 2u);
}

void sub_76154()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_76190()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_761CC()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_76208()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_76244()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_76280()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_762BC()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_762F8()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_76334(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "StopIO returns noErr (%llu)", &v3, 0xCu);
}

void sub_763B0()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

double sub_76460(__int32 *a1, NSObject *a2, uint8x8_t a3)
{
  a3.i32[0] = *a1;
  v3 = vrev64_s16(*&vmovl_u8(a3));
  v5 = vuzp1_s8(v3, v3).u32[0];
  v6 = 0;
  *buf = 136446210;
  v8 = &v5;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error in sending property change for property %{public}s", buf, 0xCu);
  return result;
}

void sub_7656C(int *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 52);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed in dispatched config change for AudioObjectProperty %u on object %d", v5, 0xEu);
}

void sub_765FC(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "absolute volume set to %d", v2, 8u);
}

void sub_76678(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Latency change received from BTServer, latency %u", v2, 8u);
}

void sub_76A78(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "LEA Packet length is not valid %u", v2, 8u);
}

void sub_77014(float a1)
{
  sub_F618(a1);
  sub_F650();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_77094(float a1)
{
  sub_F618(a1);
  sub_F650();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_77114()
{
  sub_98D8();
  sub_F650();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_77274(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Request to get the volume for wrong catetory: %@", &v2, 0xCu);
}

void sub_77330()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7736C()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_773A8(int *a1)
{
  v6 = *a1;
  sub_98CC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_77420()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7745C()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_77498(int *a1)
{
  v6 = *a1;
  sub_98CC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_77510(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "GetPropertyInfo for kAudioFilePropertyPacketTableInfo error: %d, isWritable: %u\n", v3, 0xEu);
}

void sub_77598()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_776BC()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_776F8(int *a1)
{
  v6 = *a1;
  sub_98CC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_77770()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_777AC()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_777E8()
{
  sub_98D8();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_77824(int a1, NSObject *a2)
{
  v2[0] = HIBYTE(a1);
  v2[1] = BYTE2(a1);
  v2[2] = BYTE1(a1);
  v2[3] = a1;
  v2[4] = 0;
  *buf = 136446210;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "device type %{public}s", buf, 0xCu);
}

void sub_778C0(int *a1)
{
  v6 = *a1;
  sub_98CC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_77A20()
{
  sub_14DC4();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_77A90()
{
  sub_14DC4();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_77FAC()
{
  sub_14DC4();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "XPC Send Sco Data Source: %u, %u!", v2, 0xEu);
}

void sub_791EC(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "AudioSkywalk read loop is configured to an invalid audio interval (%llu). Defaulting to 22000us", &v3, 0xCu);
}

void sub_79268(uint64_t a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 4);
  sub_16190();
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%d bytes available skywalk slot %d", v4, 0xEu);
}

void sub_79318(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Unable to write %lu bytes into skywalk pipe, not enough free space (%lu bytes available)", &v3, 0x16u);
}

void sub_793D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 2);
  v4 = *(a2 + 184);
  sub_16190();
  v8 = 2048;
  v9 = v5;
  _os_log_debug_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "Syncing slot %d with length %hu, offset %lu", v7, 0x18u);
}

void sub_7958C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446466;
  v4 = a1;
  v5 = 2082;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error: %{public}s (%{public}s)\n", &v3, 0x16u);
}

void sub_79614(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446210;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Unknown arbitration message %{public}s receieved", buf, 0xCu);
}

void sub_79800(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BTAudioDetect input invalid decodedBytes %zu", &v2, 0xCu);
}

void sub_7999C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Not a valid codec type!", buf, 2u);
}

void sub_79AE0(uint64_t *a1)
{
  v6 = *a1;
  sub_F650();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_79B8C(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 134217984;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Input Decode: Bytes read is 0 bytesRead %lu", buf, 0xCu);
}

void sub_79C18(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "AMPAudioInput AMP chunktype invalid", buf, 2u);
}

void sub_79C90(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "AMPAudioInput decoded less data %zu : %zu bytes", &v3, 0x16u);
}

void sub_79D88(os_log_t log)
{
  v1 = 136446210;
  v2 = "deviceUid";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_79E0C(os_log_t log)
{
  v1 = 136446210;
  v2 = "theNumberItemsToFetch == 1";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_79E90(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No codec found for codecType %u", v2, 8u);
}

void sub_79F3C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = atomic_load((*a2 + 24));
  }

  sub_2588C();
  HIWORD(v8) = v4;
  sub_258A0(&dword_0, v5, v6, "AudioRingBuffer::readFrameInternal, frame length(%lu) bigger than available buffer length (%lu)", v7, v8);
}

void sub_79FF0(uint64_t **a1)
{
  v1 = **a1;
  atomic_load(*a1 + 3);
  sub_2588C();
  HIWORD(v5) = v2;
  sub_258A0(&dword_0, v2, v3, "Shared memory size (%lu bytes available) has less than requested buffer length (%lu), deferring write", v4, v5);
}

void sub_7A160(unsigned int *a1)
{
  v1 = *a1;
  sub_26450();
  sub_14DA8(&dword_0, v2, v3, "mOutputFormat.mBytesPerPacket %u", v4, v5, v6, v7, v8);
}

void sub_7A1CC(unsigned int *a1)
{
  v1 = *a1;
  sub_26450();
  sub_14DA8(&dword_0, v2, v3, "kAudioCodecPropertyMaximumPacketByteSize returned max packet size of %u bytes", v4, v5, v6, v7, v8);
}

void sub_7A2A4(unsigned int *a1)
{
  v1 = *a1;
  sub_26450();
  sub_14DA8(&dword_0, v2, v3, "Actual target Bitrate is set to %u", v4, v5, v6, v7, v8);
}

void sub_7A310(uint64_t a1)
{
  v1 = *(a1 + 152);
  v2 = *(a1 + 160);
  sub_26450();
  sub_26440();
  v7 = v3;
  v8 = v4;
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "mOutputBufferSize %u, outputSizePerPacket %u, mNumOutputPackets %u", v6, 0x14u);
}

void sub_7BF24(void *a1)
{
  [a1 identifier];
  sub_379D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_7BFA8(void *a1)
{
  [a1 name];
  [a1 identifier];
  sub_379E0();
  sub_379D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_7C04C(void *a1)
{
  [a1 identifier];
  sub_379D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_7C0D0(void *a1)
{
  [a1 name];
  [a1 identifier];
  sub_379E0();
  sub_379D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_7C230(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Wrong Heimdall codec type %d", v2, 8u);
}

void sub_7C2A8(os_log_t log)
{
  v1 = 136446210;
  v2 = "mInputFormat.mChannelsPerFrame <= kMaxInputBuffers";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_7C32C(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "kAudioConverterPropertyMaximumOutputPacketSize returned %u", v3, 8u);
}

void sub_7C41C()
{
  sub_98D8();
  sub_F650();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7C458()
{
  sub_98D8();
  sub_F650();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7C494()
{
  sub_98D8();
  sub_F650();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7C4D0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Encoder type (%d) is not valid", v2, 8u);
}

void sub_7CB60(_BYTE *a1, uint64_t a2, os_log_t log)
{
  v3 = "Immediate";
  v4 = *(a2 + 9124);
  v5 = *(a2 + 9168);
  if (*a1)
  {
    v3 = "Schedule Delayed";
  }

  v6 = 136446722;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  v10 = 1024;
  v11 = v5;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Dynamic Latency : %{public}s Frame Count Update %u -> %u", &v6, 0x18u);
}

void sub_7CC14(uint64_t a1)
{
  v1 = *(a1 + 9124);
  v2 = *(a1 + 9168);
  sub_16190();
  sub_F650();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_7CD28(uint64_t a1)
{
  v1 = *(a1 + 9124);
  v2 = *(a1 + 9168);
  sub_16190();
  sub_F650();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_7CDA0(uint64_t a1, NSObject *a2)
{
  if (*(a1 + 588) <= 1.0)
  {
    v3 = "Speed Up";
  }

  else
  {
    v3 = "Slow Down";
  }

  v4 = 136446466;
  v5 = v3;
  v6 = 1024;
  v7 = sub_3DDC8(a1);
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Dynamic Latency : Start Latency Targeted %{public}s initial in-ear-delay=%u", &v4, 0x12u);
}

void sub_7D764(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "eq setting id %d is not valid!", v2, 8u);
}

void sub_7D878(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, " SetStreamPropertyData sampling freq is %lf", &v3, 0xCu);
}

void sub_7DAFC()
{
  sub_58D98();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_7DB6C(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Audio Message %d from Audio Device UID: %@\n", v3, 0x12u);
}

void sub_7DBF4()
{
  sub_58D98();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_7DC64()
{
  sub_58D98();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_7DD08()
{
  sub_58D98();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_7DDAC()
{
  sub_58D98();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_7DE50()
{
  sub_14DC4();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_7DEC0()
{
  sub_58D98();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_7DF64(void *a1, NSObject *a2)
{
  [a1 UTF8String];
  sub_58D98();
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Found HAL device for UID: %s, handling msg\n", v3, 0xCu);
}

void sub_7DFEC()
{
  sub_58D98();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_7E160(os_log_t log)
{
  v1 = 136446210;
  v2 = "deviceAddress";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_7E1E4(uint64_t a1, uint64_t *a2)
{
  v7 = *(a1 + 136);
  v8 = *a2;
  sub_58DA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_7E2D4(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_58DA4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_7E354(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_58DA4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_7E774()
{
  sub_14DC4();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_7ECF8()
{
  sub_14DC4();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_7EE04()
{
  sub_14DC4();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_7F07C()
{
  sub_14DC4();
  sub_98CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_7F390(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_59588();
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Packed %x %x %x %x", v6, 0x1Au);
}

void sub_7F40C(unsigned __int8 *a1)
{
  v1 = a1[228];
  v2 = a1[229];
  v3 = a1[230];
  v4 = a1[231];
  sub_59588();
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unpacked %x %x %x %x", v6, 0x1Au);
}

void sub_7F58C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Wireless Splitter device is not an aggregate", buf, 2u);
}

void sub_81258(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 9080);
  if (*(*(a1 + 9280) + 228))
  {
    v4 = @"Supported";
  }

  else
  {
    v4 = @"Not-Supported";
  }

  v5 = 138543874;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Dropping Volume update becuase there is one already in flight %{public}@: manualVolumeUpdate: %@ Adaptive Volume: %@", &v5, 0x20u);
}

void sub_8130C(uint64_t a1)
{
  v6 = *(a1 + 9080);
  sub_98CC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_81420(uint64_t *a1)
{
  v6 = *a1;
  sub_98CC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_81550(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "mOutputFormat.mBytesPerPacket %u", v3, 8u);
}

void sub_81610(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "LC3Encoder, skip processing, ioOutputDataPackets(%u) is bigger than numMaxBuffers(%u)", v3, 0xEu);
}

void sub_81698()
{
  sub_14DC4();
  sub_70C44();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}