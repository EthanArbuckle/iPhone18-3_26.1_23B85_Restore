uint64_t sub_1E541C7F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4 == 4)
  {
    *(a1 + 480) = 17;
    v5 = *(a2 + 68);
    if (v5 != 2)
    {
      goto LABEL_7;
    }

LABEL_20:
    *(a2 + 50) = sub_1E54789D8(*a2, *(a2 + 4));
    goto LABEL_26;
  }

  if (v4 == 11)
  {
    *(a1 + 480) = 32;
    v5 = *(a2 + 68);
    if (v5 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (v4 != 10)
  {
    return 0;
  }

  *(a1 + 480) = 29;
  v5 = *(a2 + 68);
  if (v5 == 2)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v5 != 1)
  {
    return 0;
  }

  v6 = *(a1 + 352);
  if (v6 != *(a1 + 356))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 98, "hal_.minSupportedWidthFlow1 == hal_.minSupportedHeightFlow1 && min supported width and height should match", 108, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_58;
    }

    v6 = *(a1 + 352);
  }

  v7 = sub_1E545A1B0(*a2, *(a2 + 4), *(a2 + 50), v6);
  v8 = v7;
  *(a2 + 50) = v7;
  if (v7 >= 7u)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 103, "config.numberOfOctaves <= kMaxNumOctaves && Number of octaves has to be smaller than the maximum possible", 107, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_58;
    }

    v8 = *(a2 + 50);
  }

  if (!v8)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 105, "config.numberOfOctaves > 0 && Number of octaves should be greater than 0", 74, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_58;
    }

    LOWORD(v8) = *(a2 + 50) - 1;
    if (*a2 >> (*(a2 + 50) - 1) < *(a1 + 352))
    {
      goto LABEL_16;
    }

LABEL_24:
    if (*(a2 + 4) >> v8 >= *(a1 + 356))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  LOBYTE(v8) = v8 - 1;
  if (*a2 >> v8 >= *(a1 + 352))
  {
    goto LABEL_24;
  }

LABEL_16:
  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 108, "(config.inputImageWidth >> (config.numberOfOctaves - 1)) >= hal_.minSupportedWidthFlow1 && Min supported width violation", 122, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_58;
  }

  if (*(a2 + 4) >> (*(a2 + 50) - 1) >= *(a1 + 356))
  {
    goto LABEL_26;
  }

LABEL_25:
  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 111, "(config.inputImageHeight >> (config.numberOfOctaves - 1)) >= hal_.minSupportedHeightFlow1 && Min supported height violation", 125, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_58:
    abort();
  }

LABEL_26:
  result = sub_1E541DFEC(a1 + 344, a2);
  if (!result)
  {
    return result;
  }

  *(a1 + 8) = *a2;
  v10 = *(a2 + 50);
  *(a1 + 16) = v10;
  v11 = *(a2 + 72);
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = v11;
  v12 = *(a2 + 68);
  *(a1 + 28) = v12;
  sub_1E54202DC((a1 + 32), v10, v12);
  v13 = *(a1 + 28);
  if (v13 == 2)
  {
    v17 = *(a1 + 456);
    v18 = (*(a1 + 464) - v17) >> 10;
    if (*(a1 + 464) == v17)
    {
      sub_1E541DEB0(a1 + 456, 1 - v18);
      v17 = *(a1 + 456);
    }

    else if (v18 >= 2)
    {
      *(a1 + 464) = v17 + 1024;
    }

    sub_1E541ECFC(a1 + 344, a2, v17);
    v21 = *(a2 + 50);
    v22 = 2 * v21;
    v23 = 2 * v21 - 1;
    if (v23 >= 4 && ((v24 = v17 + 432, v17 + 432 >= (a2 + 48)) || a2 + 43 >= (v17 + 8 * v21 + 428)))
    {
      if (v23 >= 0x10)
      {
        v25 = v23 & 0xFFFFFFFFFFFFFFF0;
        v26.i64[0] = 0xFFFFFF00FFFFFF00;
        v26.i64[1] = 0xFFFFFF00FFFFFF00;
        v27 = v23 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v28 = vqtbl1q_s8(*(a2 + 43), v26);
          v29.i64[0] = __PAIR64__(HIDWORD(*v24), *v24) & 0xFFFFFFFEFFFFFFFELL;
          v29.i32[2] = *(v24 + 8) & 0xFFFFFFFE;
          v29.i32[3] = HIDWORD(*v24) & 0xFFFFFFFE;
          v30 = vorrq_s8((*(v24 + 16) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v28);
          v31 = vorrq_s8(v29, v28);
          v32 = vorrq_s8((*(v24 + 48) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v28);
          v33 = vorrq_s8((*(v24 + 32) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v28);
          *(v24 + 32) = v33;
          *(v24 + 48) = v32;
          *v24 = v31;
          *(v24 + 16) = v30;
          _Q6 = vdupq_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0);
          __asm { SHLL2           V7.4S, V6.8H, #0x10 }

          v40 = vshll_n_s16(*_Q6.i8, 0x10uLL);
          *(v24 + 32) = vorrq_s8(v40, (*&v33 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
          *(v24 + 48) = vorrq_s8(_Q7, (*&v32 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
          *v24 = vorrq_s8(v40, (*&v31 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
          *(v24 + 16) = vorrq_s8(_Q7, (*&v30 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
          v24 += 64;
          v27 -= 16;
        }

        while (v27);
        if ((v23 & 0xC) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v25 = 0;
      }

      v41 = v25;
      v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v42 = (v17 + 4 * v41 + 432);
      v43 = v41 - v25;
      v44.i64[0] = 0xFF000000FFLL;
      v44.i64[1] = 0xFF000000FFLL;
      do
      {
        v45.i64[0] = __PAIR64__(HIDWORD(*v42), *v42) & 0xFFFFFFFEFFFFFFFELL;
        v45.i32[2] = v42[1] & 0xFFFFFFFE;
        v45.i32[3] = HIDWORD(*v42) & 0xFFFFFFFE;
        v46 = vorrq_s8(v45, vandq_s8(vmovl_u16(vdup_n_s16(*(a2 + 43))), v44));
        *v42 = v46;
        *v42 = vorrq_s8(vshll_n_s16(vdup_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0), 0x10uLL), (*&v46 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
        v42 += 2;
        v43 += 4;
      }

      while (v43);
    }

    else
    {
      v25 = 0;
    }

LABEL_54:
    v47 = v25 - v22 + 1;
    v48 = (v17 + 4 * v25 + 432);
    do
    {
      v49 = *v48 & 0xFFFFFFFE | *(a2 + 43);
      *v48 = v49;
      *v48++ = v49 & 0xFFC0FFFF | ((*(a2 + 46) & 0x3F) << 16);
    }

    while (!__CFADD__(v47++, 1));
    *(v17 + 704) |= 0x180uLL;
    return 1;
  }

  if (v13 != 1)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 456);
  v16 = (*(a1 + 464) - v15) >> 10;
  if (v14 <= v16)
  {
    if (v14 < v16)
    {
      *(a1 + 464) = v15 + (v14 << 10);
    }
  }

  else
  {
    sub_1E541DEB0(a1 + 456, v14 - v16);
    LODWORD(v14) = *(a1 + 16);
  }

  if (v14)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      sub_1E541E748(a1 + 344, a2, v20++, (*(a1 + 456) + v19));
      v19 += 1024;
    }

    while (v20 < *(a1 + 16));
  }

  return 1;
}

void sub_1E541CD38(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) != *a2 || *(a1 + 12) != *(a2 + 4)) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 160, "input_width_ == config.inputImageWidth && input_height_ == config.inputImageHeight", 82, &unk_1E549A011, 0, sub_1E548FDE0) || *(a1 + 20) != *(a2 + 24) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 161, "max_keypoints_ == config.maxNumberOfKeypoints", 45, &unk_1E549A011, 0, sub_1E548FDE0) || (*(a1 + 28) == 2 ? (_ZF = *(a2 + 68) == 2) : (_ZF = 0), !_ZF && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 162, "flow_ == config.flow && flow_ == FlowType::kFlow2", 49, &unk_1E549A011, 0, sub_1E548FDE0)))
  {
    abort();
  }

  v5 = *(a1 + 456);
  sub_1E541ECFC(a1 + 344, a2, v5);
  v6 = *(a2 + 50);
  v7 = 2 * v6;
  v8 = 2 * v6 - 1;
  if (v8 < 4 || (v9 = v5 + 432, v5 + 432 < (a2 + 48)) && a2 + 43 < (v5 + 8 * v6 + 428))
  {
    v10 = 0;
    goto LABEL_22;
  }

  if (v8 < 0x10)
  {
    v10 = 0;
LABEL_20:
    v25 = v10;
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = (v5 + 4 * v25 + 432);
    v27 = v25 - v10;
    v28.i64[0] = 0xFF000000FFLL;
    v28.i64[1] = 0xFF000000FFLL;
    do
    {
      v29.i64[0] = __PAIR64__(HIDWORD(*v26), *v26) & 0xFFFFFFFEFFFFFFFELL;
      v29.i32[2] = v26[1] & 0xFFFFFFFE;
      v29.i32[3] = HIDWORD(*v26) & 0xFFFFFFFE;
      v30 = vorrq_s8(v29, vandq_s8(vmovl_u16(vdup_n_s16(*(a2 + 43))), v28));
      *v26 = v30;
      *v26 = vorrq_s8(vshll_n_s16(vdup_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0), 0x10uLL), (*&v30 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
      v26 += 2;
      v27 += 4;
    }

    while (v27);
    goto LABEL_22;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFF0;
  v11.i64[0] = 0xFFFFFF00FFFFFF00;
  v11.i64[1] = 0xFFFFFF00FFFFFF00;
  v12 = v8 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v13 = vqtbl1q_s8(*(a2 + 43), v11);
    v14.i64[0] = __PAIR64__(HIDWORD(*v9), *v9) & 0xFFFFFFFEFFFFFFFELL;
    v14.i32[2] = *(v9 + 8) & 0xFFFFFFFE;
    v14.i32[3] = HIDWORD(*v9) & 0xFFFFFFFE;
    v15 = vorrq_s8((*(v9 + 16) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v13);
    v16 = vorrq_s8(v14, v13);
    v17 = vorrq_s8((*(v9 + 48) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v13);
    v18 = vorrq_s8((*(v9 + 32) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v13);
    *(v9 + 32) = v18;
    *(v9 + 48) = v17;
    *v9 = v16;
    *(v9 + 16) = v15;
    _Q6 = vdupq_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0);
    __asm { SHLL2           V7.4S, V6.8H, #0x10 }

    v24 = vshll_n_s16(*_Q6.i8, 0x10uLL);
    *(v9 + 32) = vorrq_s8(v24, (*&v18 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
    *(v9 + 48) = vorrq_s8(_Q7, (*&v17 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
    *v9 = vorrq_s8(v24, (*&v16 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
    *(v9 + 16) = vorrq_s8(_Q7, (*&v15 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
    v9 += 64;
    v12 -= 16;
  }

  while (v12);
  if ((v8 & 0xC) != 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  v31 = v10 - v7 + 1;
  v32 = (v5 + 4 * v10 + 432);
  do
  {
    v33 = *v32 & 0xFFFFFFFE | *(a2 + 43);
    *v32 = v33;
    *v32++ = v33 & 0xFFC0FFFF | ((*(a2 + 46) & 0x3F) << 16);
  }

  while (!__CFADD__(v31++, 1));
  *(v5 + 704) |= 0x180uLL;
}

uint64_t sub_1E541D018(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 28);
  v7 = *(a1 + 16);
  v8 = (*(*a1 + 72))(a1);
  v9 = (a1 + 456);
  v10 = (a1 + 32);
  if (v6 == 1)
  {

    return sub_1E54204F4(v9, v7, v8, a2, a3, v10);
  }

  else
  {

    return sub_1E5420750(v9, v7, v8, a2, a3, v10);
  }
}

uint64_t sub_1E541D0D0(uint64_t a1, int a2)
{
  if (*(a1 + 28) == 1)
  {
    return ((24 * a2 + 63) & 0xFFFFFFC0) + (a2 << 6) + 576;
  }

  else
  {
    return 576;
  }
}

void *sub_1E541D100(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 12);
  v10 = *(a1 + 480);
  if (*(a1 + 28) == 1)
  {
    *a2 = -1;
    *(a2 + 4) = v10;
    bzero((a2 + 16), 0x440uLL);
    *(a2 + 12) = 0x200000440;
    *(a2 + 20) = v9 >> a3;
    *(a2 + 24) = v8 >> a3;
    *(a2 + 28) = a4;
    *(a2 + 32) = 1;
    v11 = (*(a1 + 456) + (a3 << 10));
    v12 = v11[169] & 0xFFFFFFFE;
    if (a4 == 4)
    {
      ++v12;
    }

    v11[169] = v12;

    return memcpy((a2 + 80), v11, 0x400uLL);
  }

  else
  {

    return sub_1E5421358(a2, (a1 + 456), v9, v8, a3, v10, a4);
  }
}

uint64_t sub_1E541D1F8(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  if (*(a1 + 28) == 1)
  {
    if (*(a1 + 16) > a7 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 216, "octave < number_of_octaves_ && Attempting to process invalid octave", 69, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      v14 = (*(*a1 + 56))(a1);
      return sub_1E5420A84(a2, v14, a3, a4, a5, a6, a7, *(a1 + 24), (a1 + 32));
    }

LABEL_10:
    abort();
  }

  if (a7 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 220, "octave == 0 && Action buffer is only programmed once for flow2", 64, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  v16 = (*(*a1 + 56))(a1);
  v17 = *(a1 + 24);

  return sub_1E5420E08(a2, v16, a3, a4, a5, a6, v17, (a1 + 32));
}

__n128 sub_1E541D3B0@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 456);
  v3 = v2[90];
  v4.n128_u64[0] = v3;
  v4.n128_u64[1] = HIDWORD(v3);
  v5 = v4;
  v6 = v2[91];
  v4.n128_u64[0] = v6;
  v4.n128_u64[1] = HIDWORD(v6);
  *a2 = v5;
  a2[1] = v4;
  v5.n128_u64[0] = v2[92];
  v4.n128_u64[0] = v5.n128_u32[0];
  v4.n128_u64[1] = v5.n128_u32[1];
  result = v4;
  v8 = v2[93];
  v4.n128_u64[0] = v8;
  v4.n128_u64[1] = HIDWORD(v8);
  a2[2] = result;
  a2[3] = v4;
  return result;
}

uint32x4_t sub_1E541D3E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  *(a3 + 92) = *(a2 + 92);
  v4 = *a2;
  *(a3 + 8) = *(a2 + 4);
  *a3 = v4;
  v5 = *(a2 + 10);
  *(a3 + 18) = *(a2 + 9);
  *(a3 + 10) = v5;
  v6 = *(a2 + 20);
  *(a3 + 28) = *(a2 + 14);
  *(a3 + 20) = v6;
  v7 = *(a2 + 30);
  *(a3 + 38) = *(a2 + 19);
  *(a3 + 30) = v7;
  v8 = a2[5];
  *(a3 + 48) = *(a2 + 24);
  *(a3 + 40) = v8;
  v9 = *(a2 + 52);
  v10 = *(a2 + 68);
  *(a3 + 84) = *(a2 + 84);
  *(a3 + 68) = v10;
  *(a3 + 52) = v9;
  v11 = *(a2 + 126);
  *(a3 + 124) = *(a2 + 71);
  *(a3 + 108) = v11;
  v12 = (a2 + 49);
  do
  {
    v13 = *(a3 + 240 + v3);
    v14 = vmovl_u16(v12[-14]);
    *v13 = vmovl_u16(v12[-15]);
    v13[1] = v14;
    v15 = vmovl_u16(v12[-12]);
    v13[2] = vmovl_u16(v12[-13]);
    v13[3] = v15;
    v16 = vmovl_u16(v12[-10]);
    v13[4] = vmovl_u16(v12[-11]);
    v13[5] = v16;
    v17 = vmovl_u16(v12[-8]);
    v13[6] = vmovl_u16(v12[-9]);
    v13[7] = v17;
    v18 = vmovl_u16(v12[-6]);
    v13[8] = vmovl_u16(v12[-7]);
    v13[9] = v18;
    v19 = vmovl_u16(v12[-4]);
    v13[10] = vmovl_u16(v12[-5]);
    v13[11] = v19;
    v20 = vmovl_u16(v12[-2]);
    v13[12] = vmovl_u16(v12[-3]);
    v13[13] = v20;
    result = vmovl_u16(v12[-1]);
    v22 = vmovl_u16(*v12);
    v3 += 24;
    v12 += 16;
    v13[14] = result;
    v13[15] = v22;
  }

  while (v3 != 192);
  return result;
}

uint64_t sub_1E541D504(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          if (*(a1 + 28) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 306, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0) || a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 307, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_60;
          }

          return a1 + 260;
        case 10:
          if (*(a1 + 28) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 310, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0) || a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 311, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_60;
          }

          return a1 + 288;
        case 11:
          if (*(a1 + 28) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 314, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0) || a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 315, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_60;
          }

          return a1 + 316;
        default:
          goto LABEL_61;
      }
    }

    else if (a2 == 6)
    {
      if (*(a1 + 28) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 294, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0) || a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 295, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_60;
      }

      return a1 + 176;
    }

    else if (a2 == 7)
    {
      if (*(a1 + 28) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 298, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0) || a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 299, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_60;
      }

      return a1 + 204;
    }

    else
    {
      if (*(a1 + 28) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 302, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0) || a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 303, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_60;
      }

      return a1 + 232;
    }
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      return *(a1 + 104) + 28 * a3;
    }

    else if (a2 == 4)
    {
      if (*(a1 + 28) != 1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 287, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_60;
      }

      return *(a1 + 128) + 28 * a3;
    }

    else
    {
      v6 = *(a1 + 28);
      if (v6 != 1 && (a3 || v6 != 2) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 291, "(FlowType::kFlow1 == flow_) || ((FlowType::kFlow2 == flow_) && octave == 0) && Invalid request", 96, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_60;
      }

      return *(a1 + 152) + 28 * a3;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (*(a1 + 28) == 1 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 282, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          return *(a1 + 80) + 28 * a3;
        }

LABEL_60:
        abort();
      }

LABEL_61:
      sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 318, &unk_1E549A011, 0, "Unsupported buffer type", 23, sub_1E548FDE0);
      abort();
    }

    if (*(a1 + 28) != 1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 279, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_60;
    }

    return *(a1 + 56) + 28 * a3;
  }

  else
  {
    return *(a1 + 32) + 28 * a3;
  }
}

uint64_t sub_1E541DB1C(uint64_t result, int32x4_t *a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 324, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  v4 = *(v3 + 16);
  v5 = 2 * v4 - 2;
  if (2 * v4 != 2)
  {
    v6 = *(v3 + 456);
    if (v5 < 4)
    {
      v7 = 0;
      goto LABEL_15;
    }

    if (v5 >= 0x10)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFF0;
      v8 = (v6 + 936);
      v9 = a2 + 4;
      v10 = v5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v11 = vuzp1q_s16(vuzp1q_s32(v9[-4], v9[-3]), vuzp1q_s32(v9[-2], v9[-1]));
        v12 = vuzp1q_s16(vuzp1q_s32(*v9, v9[1]), vuzp1q_s32(v9[2], v9[3]));
        v8[-1] = v11;
        *v8 = v12;
        *(v8 - 34) = v11;
        *(v8 - 18) = v12;
        v8 += 2;
        v9 += 8;
        v10 -= 16;
      }

      while (v10);
      if (v7 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
LABEL_15:
        v19 = v7 - 2 * v4 + 2;
        v20 = (v6 + 2 * v7 + 902);
        v21 = &a2->i16[4 * v7];
        do
        {
          v22 = *v21;
          v21 += 4;
          v20[9] = v22;
          *v20++ = v22;
        }

        while (!__CFADD__(v19++, 1));
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    v13 = v7;
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v6 + 2 * v13 + 902);
    v15 = (a2 + 8 * v13);
    v16 = v13 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v18 = *v15;
      v17 = v15[1];
      v15 += 2;
      *v17.i8 = vmovn_s32(vuzp1q_s32(v18, v17));
      *(v14 + 18) = v17.i64[0];
      *v14++ = v17.i64[0];
      v16 += 4;
    }

    while (v16);
    if (v7 != v5)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1E541DC98()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgen.cpp", 338, "0 && Update TID counter init value is not supported", 53, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

void *sub_1E541DCEC(void *a1)
{
  *a1 = &unk_1F5F0A2C0;
  v2 = a1[57];
  if (v2)
  {
    a1[58] = v2;
    MEMORY[0x1E6928640]();
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    a1[11] = v6;
    operator delete(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    a1[8] = v7;
    operator delete(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_1E541DDA0(void *a1)
{
  *a1 = &unk_1F5F0A2C0;
  v2 = a1[57];
  if (v2)
  {
    a1[58] = v2;
    MEMORY[0x1E6928640]();
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    a1[11] = v6;
    operator delete(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    a1[8] = v7;
    operator delete(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  JUMPOUT(0x1E6928650);
}

void sub_1E541DEB0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 10)
  {
    if (a2)
    {
      v12 = a2 << 10;
      bzero(*(a1 + 8), a2 << 10);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 10) + a2;
    if (v7 >> 54)
    {
      sub_1E5415338();
    }

    v8 = v3 - v5;
    if (v8 >> 9 > v7)
    {
      v7 = v8 >> 9;
    }

    if (v8 >= 0x7FFFFFFFFFFFFC00)
    {
      v9 = 0x3FFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 54)
      {
        sub_1E53E5340();
      }

      v10 = a2;
      v11 = operator new(v9 << 10, 0x40uLL);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = a2 << 10;
    bzero(&v11[1024 * (v6 >> 10)], a2 << 10);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[1024 * (v6 >> 10) + v13];
    *(a1 + 16) = &v11[1024 * v9];
    if (v5)
    {

      JUMPOUT(0x1E6928640);
    }
  }
}

uint64_t sub_1E541DFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 68);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v3 = *(a2 + 50);
      if (v3 > 6 || *(a1 + 16) > v3)
      {
        return 0;
      }

      v11 = *a2;
      if (*a2 <= *a1)
      {
        v12 = *(a2 + 4);
        if (v12 <= *(a1 + 4))
        {
          LOBYTE(v6) = 0;
          v13 = *(a2 + 16);
          if (v12 < v13)
          {
            return v6 & 1;
          }

          v14 = *(a2 + 12);
          if (v14 > v13)
          {
            return v6 & 1;
          }

          v15 = *(a2 + 14);
          v16 = *(a2 + 18);
          if (v15 > v16 || v14 < 0 || v15 < 0 || v11 < v16)
          {
            return v6 & 1;
          }

          if (v11 >> (v3 - 1) >= *(a1 + 8) && v12 >> (v3 - 1) >= *(a1 + 12))
          {
            if (*(a2 + 42) == 1)
            {
              LOBYTE(v6) = 0;
              v17 = *(a2 + 40);
              if (v12 < 2 * v17)
              {
                return v6 & 1;
              }

              v18 = *(a2 + 38);
              if (2 * v18 > v11 || *(a1 + 20) > v18 || *(a1 + 28) < v18 || *(a1 + 24) > v17 || *(a1 + 32) < v17 || *(a2 + 113))
              {
                return v6 & 1;
              }
            }

            else if (*(a2 + 113))
            {
              return 0;
            }

            v8 = 0;
            LOBYTE(v6) = 0;
            if ((*(a2 + 64) - 5) < 7)
            {
              return v6 & 1;
            }

            goto LABEL_14;
          }
        }
      }

      return 0;
    }

    v8 = 0;
LABEL_14:
    LOBYTE(v6) = 0;
    if (v8)
    {
      return v6 & 1;
    }

    v9 = *(a2 + 24);
    if (*(a2 + 28) > v9 || v9 > *(a1 + 76))
    {
      return v6 & 1;
    }

    if (*(a2 + 68) - 1 <= 1 && *(a1 + 72) >= *(a2 + 46))
    {
      return (*(a2 + 76) ^ 1) & 1 | (*(a2 + 77) == 0);
    }

    return 0;
  }

  v6 = *(a2 + 44);
  if (*(a2 + 44))
  {
    v7 = *(a2 + 64);
    if (v7 - 5 > 1)
    {
      if (v7 - 7 <= 4)
      {
        v19 = *a2;
        if (*a2 > *(a1 + 48))
        {
          return 0;
        }

LABEL_45:
        v20 = *(a2 + 4);
        if (v20 > *(a1 + 52))
        {
          return 0;
        }

        LOBYTE(v6) = 0;
        if (v19 < *(a1 + 56) || v20 < *(a1 + 60))
        {
          return v6 & 1;
        }

        v21 = *(a2 + 50);
        if ((v21 & 0xFFFE) != 4 || v20 >= 0x141 && v19 >= 0x141 && v21 != 5)
        {
          return 0;
        }

        v22 = v20 > 0x140 && v19 > 0x140;
        if (!v22 && v21 != 4)
        {
          return 0;
        }

        v23 = *(a2 + 86);
        if (v23 == 1)
        {
          if (*(a2 + 89))
          {
            return 0;
          }
        }

        v24 = *(a2 + 87);
        if (v24 == 1)
        {
          if (*(a2 + 89))
          {
            return 0;
          }
        }

        v25 = *(a2 + 84);
        if (v25 == 1)
        {
          if (*(a2 + 85))
          {
            return 0;
          }
        }

        if ((v23 & 1) == 0 && (v24 & 1) == 0 && (v25 & 1) == 0 && (*(a2 + 85) & 1) == 0 && (*(a2 + 88) & 1) == 0 && (*(a2 + 89) & 1) == 0 && (*(a2 + 173) & 1) == 0)
        {
          LOBYTE(v6) = *(a2 + 113);
          if (!v6)
          {
            return v6 & 1;
          }
        }

        if (*(a2 + 113))
        {
          if (v7 == 4)
          {
            return 0;
          }
        }

        else
        {
          if (v7 == 4 && (*(a2 + 173) & 1) != 0)
          {
            return 0;
          }

          if (!*(a2 + 173))
          {
LABEL_86:
            v33 = a1;
            v34 = a2;
            v31 = *(a2 + 4);
            v32 = v19;
            if (v7 < 7)
            {
              v8 = 0;
              LOBYTE(v6) = 0;
              if (*(a2 + 176))
              {
                return v6 & 1;
              }
            }

            else
            {
              if (*(a2 + 88) == 1 && *(a2 + 89) || *(a2 + 88) && *(a2 + 112) == 2)
              {
                return 0;
              }

              v29 = a2;
              if (*(a2 + 176) == 1)
              {
                LOBYTE(v6) = 0;
                if (*(a2 + 113))
                {
                  return v6 & 1;
                }

                v29 = a2;
                if (*(a2 + 173))
                {
                  return v6 & 1;
                }
              }

              if (*(v29 + 42) == 1)
              {
                bzero(v35, 0x828uLL);
                if (v32 <= 0x280)
                {
                  v35[0] = 1;
                }

                sub_1E5478B6C(640, v32, v31, 1, v35);
                v30 = sub_1E5479908(v35);
                a2 = v34;
                v8 = v30 > *(v34 + 24);
                a1 = v33;
              }

              else
              {
                v8 = 0;
              }
            }

            goto LABEL_14;
          }
        }

        LOBYTE(v6) = 0;
        v26 = *(a2 + 156);
        if (v26 < *(a1 + 80))
        {
          return v6 & 1;
        }

        if (v26 > *(a1 + 84))
        {
          return v6 & 1;
        }

        LOBYTE(v6) = 0;
        v27 = *(a2 + 160);
        if (v27 < *(a1 + 88))
        {
          return v6 & 1;
        }

        if (v27 > *(a1 + 92))
        {
          return v6 & 1;
        }

        LOBYTE(v6) = 0;
        v28 = *(a2 + 164);
        if (v28 < *(a1 + 96) || v28 > *(a1 + 100))
        {
          return v6 & 1;
        }

        if (*(a2 + 168) > *(a1 + 104))
        {
          return 0;
        }

        goto LABEL_86;
      }
    }

    else if (*(a2 + 42) | v6 ^ 1)
    {
      return 0;
    }

    v19 = *a2;
    if (*a2 > *(a1 + 44))
    {
      return 0;
    }

    goto LABEL_45;
  }

  return v6 & 1;
}

uint64_t sub_1E541E498(uint64_t result, int a2, int *a3, int *a4, int a5, int a6)
{
  v11 = result;
  if (a2 <= 0)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 434, "dimension > 0 && Input dimension should be greater than 0", 59, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      goto LABEL_30;
    }
  }

  v12 = *(v11 + 68);
  v13 = *(v11 + 64);
  if ((a6 & a5) == 0xFFFFFFFF || !a5 && a6 == a2)
  {
    *a3 = 0;
    *a4 = (a2 + v12 - 1) / v12;
LABEL_7:
    a5 = *a3;
    goto LABEL_8;
  }

  if (a6 > a2 || a5 < 0 || a6 <= a5)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 445, "expected_start >= 0 && expected_end > expected_start && expected_end <= dimension", 81, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
LABEL_30:
      abort();
    }
  }

  v15 = (~a5 + a6 + v12) / v12;
  if (v15 <= v13)
  {
    v15 = v13;
  }

  if (v15 >= (a2 / v12))
  {
    v15 = (a2 / v12);
  }

  *a4 = v15;
  *a3 = a5;
  v16 = a5 + *a4 * v12;
  if (v16 >= a2)
  {
    a5 = a2 - *a4 * v12;
    *a3 = a5;
    v16 = a5 + *a4 * v12;
  }

  if (v16 < a6)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 460, "(expected_end <= start + num_blocks * block_size) && User requested end of ROI should be in the HW ROI", 104, &unk_1E549A011, 0, sub_1E548FDE0);
    if (!result)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_8:
  if (a5 < 0)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 463, "start >= 0 && Start should be greater than or equal to 0", 58, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      goto LABEL_30;
    }

    v14 = *a4;
    if (*a3 + *a4 * v12 < *a4 + a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *a4;
    if (a5 + *a4 * v12 < *a4 + a2)
    {
LABEL_10:
      if (v14 >= v13)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 465, "(start + block_size * num_blocks <= dimension + block_size - 1) && Only the last block can extend beyond the image boundary", 125, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_30;
  }

  if (*a4 >= v13)
  {
    return result;
  }

LABEL_16:
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 466, "block_size >= min_block_size && Each block has to be at least 4 pixels big", 76, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_30;
  }

  return result;
}

void sub_1E541E748(uint64_t a1, int *a2, int a3, char *a4)
{
  v8 = *(a2 + 19);
  v9 = *(a1 + 20) <= v8 && *(a1 + 28) >= v8;
  if (!v9 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 473, "(input_cfg.numberOfBinsHardwareX >= hal.minNumberOfBinsHardwareXFlow1 && input_cfg.numberOfBinsHardwareX <= hal.maxNumberOfBinsHardwareXFlow1) && numberOfBinsHardwareX has to be between 1 and 64", 196, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_48;
  }

  v10 = *(a2 + 20);
  v11 = *(a1 + 24) <= v10 && *(a1 + 32) >= v10;
  if (!v11 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 476, "(input_cfg.numberOfBinsHardwareY >= hal.minNumberOfBinsHardwareYFlow1 && input_cfg.numberOfBinsHardwareY <= hal.maxNumberOfBinsHardwareYFlow1) && numberOfBinsHardwareY has to be between 1 and 64", 196, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_48;
  }

  bzero(a4, 0x400uLL);
  *a4 = 4368;
  v12 = a2[1];
  *(a4 + 2) = *a2 >> a3;
  *(a4 + 3) = v12 >> a3;
  *(a4 + 33) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *&v13 = 0x300000003;
  *(&v13 + 1) = 0x300000003;
  *(a4 + 17) = v13;
  *(a4 + 72) = 196611;
  v14 = *(a1 + 68);
  if (*(a1 + 68))
  {
    v15 = 0;
    v16 = *(a2 + 10);
    v17 = a4 + 312;
    v18 = vdupq_n_s32(v16);
    v19 = (a4 + 328);
    while (1)
    {
      v20 = v14 & 0xFFF8;
      v21 = v19;
      if (v14 >= 8)
      {
        do
        {
          v21[-1] = v18;
          *v21 = v18;
          v21 += 2;
          v20 -= 8;
        }

        while (v20);
        v22 = v14 & 0xFFF8;
        if (v22 == v14)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v14 - v22;
      v24 = &v17[4 * v22];
      do
      {
        *v24++ = v16;
        --v23;
      }

      while (v23);
LABEL_13:
      ++v15;
      v19 = (v19 + 20);
      v17 += 20;
      if (v15 == v14)
      {
        v25 = *(a4 + 108) & 0xFFFFFFFE;
        LODWORD(v14) = *(a4 + 109) & 0xFFFFFFFE;
        goto LABEL_23;
      }
    }
  }

  v25 = 0;
LABEL_23:
  if ((*(a4 + 103) = 2097168, v26 = v25 | *(a2 + 43), *(a4 + 108) = v26, *(a4 + 108) = v26 & 0xFFC0FFFF | ((*(a2 + 23) & 0x3F) << 16), v27 = v14 | *(a2 + 43), *(a4 + 109) = v27, *(a4 + 109) = v27 & 0xFFC0FFFF | ((*(a2 + 23) & 0x3F) << 16), v29 = *a2, v28 = a2[1], v62 = *(a2 + 7), v30 = *(a2 + 9), v31 = *(a2 + 6), v32 = *(a2 + 8), *(a1 + 64) != 4) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 420, "hal.minBlockSize == feature_detection::kMinBlockSize", 52, &unk_1E549A011, 0, sub_1E548FDE0) || *(a1 + 68) != 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 421, "hal.numberOfGridElements == feature_detection::kNumRegionOfInterestBlocks", 73, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_48:
    abort();
  }

  v33 = v28 >> a3;
  if (v32)
  {
    v34 = v32 >> a3;
  }

  else
  {
    v34 = v33;
  }

  v63 = 0;
  v64 = 0;
  if (v30)
  {
    v35 = v30 >> a3;
  }

  else
  {
    v35 = v29 >> a3;
  }

  sub_1E5459ED4(v29 >> a3, &v64 + 1, &v64, v62 >> a3, v35);
  sub_1E5459ED4(v33, &v63 + 1, &v63, v31 >> a3, v34);
  v36 = WORD2(v64);
  v37 = WORD2(v63);
  *(a4 + 117) = *(a4 + 117) & 0xE000F800 | ((WORD2(v63) & 0x1FFF) << 16) | WORD2(v64) & 0x7FF;
  v38 = v64 & 0x3FF;
  v39 = v63;
  *(a4 + 122) = *(a4 + 122) & 0xE000FC00 | ((v63 & 0x1FFF) << 16) | v38;
  v40 = *(a4 + 508) & 0xF000F800FFFFFFFFLL | ((v36 & 0x7FF) << 32) | ((v37 & 0xFFF) << 48);
  *(a4 + 508) = v40;
  v41 = *(a2 + 19) & 0x7F;
  v42 = *(a4 + 516) & 0xFFFFFF80FFFFFFFFLL | (v41 << 32);
  *(a4 + 516) = v42;
  v43 = a2[10] & 0x7F;
  v44 = v42 & 0xFFFF80FFFFFFFFFFLL | (v43 << 40);
  *(a4 + 516) = v44;
  v45 = (v41 + v38 * *(a1 + 68) - 1) / v41;
  if (v45 <= 2)
  {
    LOWORD(v45) = 2;
  }

  v46 = v44 & 0xFFFFFFFFFFFFF000 | v45 & 0xFFF;
  *(a4 + 516) = v46;
  v47 = (v43 + (v39 & 0x1FFF) * *(a1 + 68) - 1) / v43;
  if (v47 <= 2)
  {
    LOWORD(v47) = 2;
  }

  v48 = v46 & 0xFFFFFFFFE000FFFFLL | ((v47 & 0x1FFF) << 16);
  *(a4 + 516) = v48;
  v49 = v40 & 0xFFFFFFFFFFFFFFFELL | *(a2 + 42);
  if (*(a2 + 42))
  {
    v50 = v48 & 0xFFF;
    v51 = WORD1(v48) & 0x1FFF;
    v52 = log2f(256.0 / v41);
    v53 = log2f((v51 * v50));
    v54 = log2f(v50) + -1.0;
    v55 = fmin(fmin(fmin((v52 + -1.0), (v53 + -1.0)), (v54 - (v54 == v54))), 4.0);
    if (v55 >= 0)
    {
      v56 = 1 << v55;
    }

    else
    {
      v56 = 0;
    }

    v49 = v49 & 0xFFFFFFFFFFFFF0FFLL | ((log2(v56) & 0xF) << 8);
  }

  *(a4 + 508) = v49;
  *(a4 + 131) = a2[13];
  *(a4 + 132) = *a2 >> a3;
  *(a4 + 141) &= 0x8000E000;
  v57 = 204;
  v58 = 0x7C001C00020000;
  if (a3)
  {
    v59 = 8;
    v60 = 2;
  }

  else
  {
    *(a4 + 572) = 0x7C001C00020000;
    *(a4 + 290) = 204;
    v58 = 0x710035000F0003;
    v59 = 12;
    v57 = 144;
    v60 = 3;
  }

  *(a4 + 142) = v60;
  *(a4 + 582) = v58;
  *(a4 + 295) = v57;
  if (a3)
  {
    ++v59;
  }

  v61 = v59 | *(a4 + 169) & 0xFFFFFFF0;
  *(a4 + 169) = v61;
  *(a4 + 169) = v61 & 0xFFFFFFED | (16 * (*(a2 + 25) - 1 != a3));
}

void sub_1E541ECFC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v91 = a1;
  v5 = *(a2 + 50);
  if ((v5 & 0xFFFE) != 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 595, "(input_cfg.numberOfOctaves == 4 || input_cfg.numberOfOctaves == 5) && Number of octaves can only be 4 or 5.", 109, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_109;
    }

    v5 = *(a2 + 50);
  }

  if (sub_1E54789D8(*a2, *(a2 + 4)) != v5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 600, "(input_cfg.numberOfOctaves == hw::desgen::ComputeNumOctavesFlow2( input_cfg.inputImageWidth, input_cfg.inputImageHeight)) && If width and height are > 320 then number of octaves should be 5 else, number of octaves should be 4.", 230, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_109;
  }

  v6 = *(a2 + 50);
  bzero(a3, 0x400uLL);
  *a3 = 4384;
  *(a3 + 2) = *a2;
  *(a3 + 3) = *(a2 + 4);
  *(a3 + 33) = 0;
  *(a3 + 62) = 0u;
  *(a3 + 58) = 0u;
  *(a3 + 54) = 0u;
  *(a3 + 50) = 0u;
  *(a3 + 46) = 0u;
  *(a3 + 42) = 0u;
  *(a3 + 38) = 0u;
  *(a3 + 34) = 0u;
  *(a3 + 30) = 0u;
  *(a3 + 26) = 0u;
  *(a3 + 22) = 0u;
  *(a3 + 18) = 0u;
  *(a3 + 14) = 0u;
  *(a3 + 10) = 0u;
  *(a3 + 6) = 0u;
  *(a3 + 2) = 0u;
  if (*(a2 + 50) == 5)
  {
    v7 = 1023;
  }

  else
  {
    v7 = 255;
  }

  if (*(a2 + 84))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  a3[68] = v8;
  if (*(a2 + 50) == 5)
  {
    v9 = 1023;
  }

  else
  {
    v9 = 255;
  }

  if (*(a2 + 85))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  a3[69] = v10;
  v11 = *(a2 + 86);
  if (*(a2 + 50) == 5)
  {
    v12 = 510;
  }

  else
  {
    v12 = 126;
  }

  if (*(a2 + 86))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  a3[70] = v13;
  if ((v11 & 1) == 0 && (*(a2 + 87) & 1) == 0 && (*(a2 + 88) & 1) == 0 && (*(a2 + 89) & 1) == 0 && (*(a2 + 173) & 1) == 0 && *(a2 + 113) != 1)
  {
    v12 = 0;
  }

  v14 = 2 * v6;
  a3[71] = v12;
  if (!v6)
  {
    goto LABEL_43;
  }

  if (v6 > 3)
  {
    v16 = (a3 + 103);
    v17 = xmmword_1E5491C90;
    v18 = xmmword_1E5491CA0;
    v19 = xmmword_1E5491CB0;
    v20 = xmmword_1E5491CC0;
    v15 = v14 & 0x1FFF8;
    v21.i64[0] = 0x3000300030003;
    v21.i64[1] = 0x3000300030003;
    v22 = vdupq_n_s64(1uLL);
    v23.i64[0] = 0x20002000200020;
    v23.i64[1] = 0x20002000200020;
    v24.i64[0] = 0x10001000100010;
    v24.i64[1] = 0x10001000100010;
    v25 = vdupq_n_s64(8uLL);
    v26 = v14 & 0x1FFF8;
    do
    {
      *(v16 - 124) = v21;
      *v16++ = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v20, v22)), vceqzq_s64(vandq_s8(v19, v22))), vuzp1q_s32(vceqzq_s64(vandq_s8(v18, v22)), vceqzq_s64(vandq_s8(v17, v22)))), v24, v23);
      v18 = vaddq_s64(v18, v25);
      v19 = vaddq_s64(v19, v25);
      v20 = vaddq_s64(v20, v25);
      v17 = vaddq_s64(v17, v25);
      v26 -= 8;
    }

    while (v26);
    if (v14 == v15)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v15 = 0;
  }

  v27 = v15 - v14;
  v28 = a3 + v15 + 206;
  do
  {
    *(v28 - 62) = 3;
    if (v15)
    {
      v29 = 32;
    }

    else
    {
      v29 = 16;
    }

    *v28++ = v29;
    LOBYTE(v15) = v15 + 1;
    v30 = __CFADD__(v27++, 1);
  }

  while (!v30);
LABEL_43:
  a3[77] = 0;
  v31 = *(v91 + 68);
  if (*(v91 + 68))
  {
    v32 = 0;
    v33 = *(a2 + 20);
    v34 = a3 + 78;
    v35 = vdupq_n_s32(v33);
    v36 = a3 + 82;
    do
    {
      v37 = v31 & 0xFFF8;
      v38 = v36;
      if (v31 >= 8)
      {
        do
        {
          v38[-1] = v35;
          *v38 = v35;
          v38 += 2;
          v37 -= 8;
        }

        while (v37);
        v39 = v31 & 0xFFF8;
        if (v39 == v31)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v39 = 0;
      }

      v40 = v31 - v39;
      v41 = &v34[v39];
      do
      {
        *v41++ = v33;
        --v40;
      }

      while (v40);
LABEL_45:
      ++v32;
      v36 = (v36 + 20);
      v34 += 5;
    }

    while (v32 != v31);
  }

  if (*(v91 + 64) != 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 35, "hal.minBlockSize == feature_detection::kMinBlockSize", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_109;
    }

    LODWORD(v31) = *(v91 + 68);
  }

  v90 = 2 * v6;
  if (v31 != 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 36, "hal.numberOfGridElements == feature_detection::kNumRegionOfInterestBlocks", 73, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_109:
    abort();
  }

  if (*(a2 + 50))
  {
    v42 = 0;
    do
    {
      v44 = sub_1E5478AA8(*a2, v42);
      v45 = sub_1E5478AA8(*(a2 + 4), v42);
      v46 = *(a2 + 14);
      v47 = v44;
      if (*(a2 + 18))
      {
        v47 = sub_1E5478AA8(*(a2 + 18), v42);
      }

      v48 = *(a2 + 12);
      v49 = v45;
      if (*(a2 + 16))
      {
        v49 = sub_1E5478AA8(*(a2 + 16), v42);
      }

      LODWORD(v92[0]) = 0;
      v95 = 0;
      v94 = 0;
      sub_1E541E498(v91, v44, v92, &v95 + 1, v46 >> v42, v47);
      sub_1E541E498(v91, v45, &v95, &v94, v48 >> v42, v49);
      v43 = &a3[v42];
      v43[117] = v43[117] & 0xE000F800 | v92[0] & 0x7FF | ((v95 & 0x1FFF) << 16);
      v43[122] = v43[122] & 0xE000FC00 | WORD2(v95) & 0x3FF | ((v94 & 0x1FFF) << 16);
      ++v42;
    }

    while (v42 < *(a2 + 50));
  }

  *(a3 + 127) = vorrq_s8(vandq_s8(*(a3 + 127), xmmword_1E5492000), xmmword_1E5492010);
  a3[131] = *(a2 + 24);
  a3[132] = 2047;
  a3[133] = sub_1E5478AA8(*a2, 0);
  v50 = sub_1E5478AA8(*a2, 1u);
  a3[134] = v50;
  a3[135] = v50;
  v51 = sub_1E5478AA8(*a2, 2u);
  a3[136] = v51;
  a3[137] = v51;
  v52 = sub_1E5478AA8(*a2, 3u);
  a3[138] = v52;
  if (*(a2 + 50) == 5)
  {
    a3[139] = v52;
    a3[140] = sub_1E5478AA8(*a2, 4u);
  }

  a3[141] &= 0x8000E000;
  a3[142] = 1023;
  *(a3 + 143) = xmmword_1E5491CD0;
  a3[147] = 9437297;
  if (v6 >= 2)
  {
    v53 = a3 + 610;
    v54 = 2;
    do
    {
      *(v53 - 18) = xmmword_1E5491CE0;
      *(v53 - 2) = 9830514;
      v54 += 2;
      v53 += 20;
    }

    while (v54 < v90);
  }

  v55 = *(a3 + 88) & 0xFFFFFFFFFFFFFFF0 | *(a2 + 89);
  *(a3 + 88) = v55;
  if (*(a2 + 88))
  {
    v56 = v55 | 8;
    if (*(a2 + 112) == 1)
    {
      v55 |= 4uLL;
    }

    if (!*(a2 + 112))
    {
      v55 = v56;
    }
  }

  *(a3 + 88) = v55 & 0x7FF00000FFE0018FLL | 0x88000;
  if (*(a2 + 50) == 5)
  {
    v57 = 510;
  }

  else
  {
    v57 = 126;
  }

  if (*(a2 + 87))
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  a3[178] = v58;
  v59 = *(a2 + 28);
  v92[0] = v59;
  v92[1] = v59;
  v92[2] = v59;
  v92[3] = v59;
  v93[0] = v59;
  v93[1] = v59;
  v93[2] = v59;
  v93[3] = v59;
  if (*(a2 + 76) == 1)
  {
    sub_1E5478504(v59, v90, v92);
  }

  v60 = v90 - 1;
  if (v90 != 2)
  {
    v61 = 2;
    if (v60 > 2)
    {
      v61 = v90 - 1;
    }

    if (v60 <= 8)
    {
      v62 = 1;
LABEL_91:
      v71 = v61 - v62;
      v72 = &a3[v62 + 179];
      v73 = &v92[v62 - 1];
      do
      {
        v74 = *v73++;
        *v72++ = v74;
        --v71;
      }

      while (v71);
      goto LABEL_93;
    }

    v63 = (v61 - 1) & 0xFFFFFFFFFFFFFFF8;
    v62 = v63 | 1;
    v64 = v93;
    v65 = (a3 + 184);
    v66 = v63;
    do
    {
      v68 = v64[-2];
      v67 = v64[-1];
      v70 = *v64;
      v69 = v64[1];
      v64 += 4;
      v65[-1] = vuzp1q_s32(v68, v67);
      *v65 = vuzp1q_s32(v70, v69);
      v65 += 2;
      v66 -= 8;
    }

    while (v66);
    if (v61 - 1 != v63)
    {
      goto LABEL_91;
    }
  }

LABEL_93:
  memset_pattern16(a3 + 188, &unk_1E5492030, 8 * v6 - 4);
  v75 = a3[197] & 0xFFFFFC00 | *a2 & 0x3FF;
  a3[197] = v75;
  a3[197] = v75 & 0xE000FFFF | ((*(a2 + 4) & 0x1FFF) << 16);
  *(a3 + 198) = xmmword_1E5491CF0;
  *(a3 + 202) = xmmword_1E5491D00;
  *(a3 + 206) = xmmword_1E5491D10;
  *(a3 + 210) = xmmword_1E5491D20;
  *(a3 + 107) = 0x1D002E00230039;
  v76 = (a2 + 20);
  if (v60 > 7 && ((a3 + 216) >= a2 + 22 || v76 >= &a3[v6 + 229]))
  {
    v78 = (a3 + 918);
    v77 = v60 & 0xFFFFFFFFFFFFFFF8;
    v79.i64[0] = 0x1000100010001;
    v79.i64[1] = 0x1000100010001;
    v80.i64[0] = -1;
    v80.i64[1] = -1;
    v81 = v60 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      *(v78 - 54) = v79;
      *(v78 - 36) = v80;
      v82 = vld1q_dup_s16(v76);
      *v78 = v82;
      *(v78++ - 18) = v82;
      v81 -= 8;
    }

    while (v81);
  }

  else
  {
    v77 = 0;
  }

  v83 = v77 - v90 + 1;
  v84 = a3 + v77 + 459;
  do
  {
    *(v84 - 27) = 1;
    *(v84 - 18) = -1;
    v85 = *v76;
    *v84 = *v76;
    *(v84 - 9) = v85;
    ++v84;
    v30 = __CFADD__(v83++, 1);
  }

  while (!v30);
  *(a3 + 234) = xmmword_1E5492020;
  *(a3 + 119) = 640;
  a3[240] = 0;
  v86 = *(a2 + 50);
  if (v86 == 5)
  {
    v87 = 15;
  }

  else
  {
    v87 = 7;
  }

  a3[241] = v87;
  if (v86 != 1)
  {
    v88 = 0;
    v89 = a3 + 970;
    do
    {
      *(v89 - 2) = 19267693;
      ++v88;
      v89 += 4;
    }

    while (v88 < *(a2 + 50) - 1);
  }
}

uint64_t sub_1E541F5EC(unsigned int a1)
{
  if ((((vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(a1, 9uLL)) + 1.0, 9uLL) >> 9) + 7) & 0xFFFFF8) >= 0x19 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 917, "set_pointer_num <= kSetPointerMaxNum", 36, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return 24;
}

void sub_1E541F66C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v136 = a1;
  v8 = *(a2 + 50);
  if ((v8 & 0xFFFE) != 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 595, "(input_cfg.numberOfOctaves == 4 || input_cfg.numberOfOctaves == 5) && Number of octaves can only be 4 or 5.", 109, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_140;
    }

    v8 = *(a2 + 50);
  }

  if (sub_1E54789D8(*a2, *(a2 + 4)) != v8 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 600, "(input_cfg.numberOfOctaves == hw::desgen::ComputeNumOctavesFlow2( input_cfg.inputImageWidth, input_cfg.inputImageHeight)) && If width and height are > 320 then number of octaves should be 5 else, number of octaves should be 4.", 230, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_140;
  }

  v9 = *(a2 + 50);
  bzero(a3, 0x440uLL);
  *a3 = 4384;
  *(a3 + 2) = *a2;
  *(a3 + 3) = *(a2 + 4);
  *(a3 + 33) = 0;
  *(a3 + 62) = 0u;
  *(a3 + 58) = 0u;
  *(a3 + 54) = 0u;
  *(a3 + 50) = 0u;
  *(a3 + 46) = 0u;
  *(a3 + 42) = 0u;
  *(a3 + 38) = 0u;
  *(a3 + 34) = 0u;
  *(a3 + 30) = 0u;
  *(a3 + 26) = 0u;
  *(a3 + 22) = 0u;
  *(a3 + 18) = 0u;
  *(a3 + 14) = 0u;
  *(a3 + 10) = 0u;
  *(a3 + 6) = 0u;
  *(a3 + 2) = 0u;
  if (*(a2 + 50) == 5)
  {
    v10 = 1023;
  }

  else
  {
    v10 = 255;
  }

  if (*(a2 + 84))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  a3[68] = v11;
  if (*(a2 + 50) == 5)
  {
    v12 = 1023;
  }

  else
  {
    v12 = 255;
  }

  if (*(a2 + 85))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  a3[69] = v13;
  v14 = *(a2 + 86);
  if (*(a2 + 50) == 5)
  {
    v15 = 510;
  }

  else
  {
    v15 = 126;
  }

  if (*(a2 + 86))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  a3[70] = v16;
  if ((v14 & 1) == 0 && (*(a2 + 87) & 1) == 0 && (*(a2 + 88) & 1) == 0 && (*(a2 + 89) & 1) == 0 && (*(a2 + 173) & 1) == 0 && *(a2 + 113) != 1)
  {
    v15 = 0;
  }

  v17 = 2 * v9;
  a3[71] = v15;
  if (v9)
  {
    if (v9 > 3)
    {
      v19 = (a3 + 103);
      v20 = xmmword_1E5491C90;
      v21 = xmmword_1E5491CA0;
      v22 = xmmword_1E5491CB0;
      v23 = xmmword_1E5491CC0;
      v18 = v17 & 0x1FFF8;
      v24.i64[0] = 0x3000300030003;
      v24.i64[1] = 0x3000300030003;
      v25 = vdupq_n_s64(1uLL);
      v26.i64[0] = 0x20002000200020;
      v26.i64[1] = 0x20002000200020;
      v27.i64[0] = 0x10001000100010;
      v27.i64[1] = 0x10001000100010;
      v28 = vdupq_n_s64(8uLL);
      v29 = v17 & 0x1FFF8;
      do
      {
        *(v19 - 124) = v24;
        *v19++ = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v23, v25)), vceqzq_s64(vandq_s8(v22, v25))), vuzp1q_s32(vceqzq_s64(vandq_s8(v21, v25)), vceqzq_s64(vandq_s8(v20, v25)))), v27, v26);
        v21 = vaddq_s64(v21, v28);
        v22 = vaddq_s64(v22, v28);
        v23 = vaddq_s64(v23, v28);
        v20 = vaddq_s64(v20, v28);
        v29 -= 8;
      }

      while (v29);
      if (v17 == v18)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v18 = 0;
    }

    v30 = v18 - v17;
    v31 = a3 + v18 + 206;
    do
    {
      *(v31 - 62) = 3;
      if (v18)
      {
        v32 = 32;
      }

      else
      {
        v32 = 16;
      }

      *v31++ = v32;
      LOBYTE(v18) = v18 + 1;
      _CF = __CFADD__(v30++, 1);
    }

    while (!_CF);
  }

LABEL_43:
  a3[77] = 0;
  v34 = *(v136 + 68);
  if (*(v136 + 68))
  {
    v35 = 0;
    v36 = *(a2 + 20);
    v37 = a3 + 78;
    v38 = vdupq_n_s32(v36);
    v39 = a3 + 82;
    do
    {
      v40 = v34 & 0xFFF8;
      v41 = v39;
      if (v34 >= 8)
      {
        do
        {
          v41[-1] = v38;
          *v41 = v38;
          v41 += 2;
          v40 -= 8;
        }

        while (v40);
        v42 = v34 & 0xFFF8;
        if (v42 == v34)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = v34 - v42;
      v44 = &v37[v42];
      do
      {
        *v44++ = v36;
        --v43;
      }

      while (v43);
LABEL_45:
      ++v35;
      v39 = (v39 + 20);
      v37 += 5;
    }

    while (v35 != v34);
  }

  if (*(v136 + 64) != 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 35, "hal.minBlockSize == feature_detection::kMinBlockSize", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_140;
    }

    LODWORD(v34) = *(v136 + 68);
  }

  v132 = 2 * v9;
  v133 = a3 + 82;
  v134 = v9;
  v135 = a4;
  if (v34 != 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 36, "hal.numberOfGridElements == feature_detection::kNumRegionOfInterestBlocks", 73, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_140;
  }

  if (*(a2 + 50))
  {
    v45 = 0;
    do
    {
      v47 = a3;
      v48 = sub_1E5478AA8(*a2, v45);
      v49 = sub_1E5478AA8(*(a2 + 4), v45);
      v50 = *(a2 + 14);
      v51 = v48;
      if (*(a2 + 18))
      {
        v51 = sub_1E5478AA8(*(a2 + 18), v45);
      }

      v52 = *(a2 + 12);
      v53 = v49;
      if (*(a2 + 16))
      {
        v53 = sub_1E5478AA8(*(a2 + 16), v45);
      }

      LODWORD(v137[0]) = 0;
      v140 = 0;
      v139 = 0;
      sub_1E541E498(v136, v48, v137, &v140 + 1, v50 >> v45, v51);
      sub_1E541E498(v136, v49, &v140, &v139, v52 >> v45, v53);
      a3 = v47;
      v46 = &v47[v45];
      v46[117] = v46[117] & 0xE000F800 | v137[0] & 0x7FF | ((v140 & 0x1FFF) << 16);
      v46[122] = v46[122] & 0xE000FC00 | WORD2(v140) & 0x3FF | ((v139 & 0x1FFF) << 16);
      ++v45;
    }

    while (v45 < *(a2 + 50));
  }

  *(v133 + 45) = vorrq_s8(vandq_s8(*(v133 + 45), xmmword_1E5492000), xmmword_1E5492010);
  a3[131] = *(a2 + 24);
  a3[132] = 2047;
  a3[133] = sub_1E5478AA8(*a2, 0);
  v54 = sub_1E5478AA8(*a2, 1u);
  a3[134] = v54;
  a3[135] = v54;
  v55 = sub_1E5478AA8(*a2, 2u);
  a3[136] = v55;
  a3[137] = v55;
  v56 = sub_1E5478AA8(*a2, 3u);
  a3[138] = v56;
  if (*(a2 + 50) == 5)
  {
    a3[139] = v56;
    a3[140] = sub_1E5478AA8(*a2, 4u);
  }

  a3[141] &= 0x8000E000;
  a3[142] = 1023;
  *(v133 + 61) = xmmword_1E5491CD0;
  a3[147] = 9437297;
  if (v134 >= 2)
  {
    v57 = a3 + 610;
    v58 = 2;
    do
    {
      *(v57 - 18) = xmmword_1E5491CE0;
      *(v57 - 2) = 9830514;
      v58 += 2;
      v57 += 20;
    }

    while (v58 < v132);
  }

  v59 = *(a3 + 88) & 0xFFFFFFFFFFFFFFF0 | *(a2 + 89);
  *(a3 + 88) = v59;
  if (*(a2 + 88))
  {
    v60 = v59 | 8;
    if (*(a2 + 112) == 1)
    {
      v59 |= 4uLL;
    }

    if (!*(a2 + 112))
    {
      v59 = v60;
    }
  }

  *(a3 + 88) = v59 & 0x7FF00000FFE0018FLL | 0x88000;
  if (*(a2 + 50) == 5)
  {
    v61 = 510;
  }

  else
  {
    v61 = 126;
  }

  if (*(a2 + 87))
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  a3[178] = v62;
  v63 = *(a2 + 28);
  v137[0] = v63;
  v137[1] = v63;
  v137[2] = v63;
  v137[3] = v63;
  v138[0] = v63;
  v138[1] = v63;
  v138[2] = v63;
  v138[3] = v63;
  if (*(a2 + 76) == 1)
  {
    sub_1E5478504(v63, v132, v137);
  }

  v64 = v132 - 1;
  if (v132 != 2)
  {
    v65 = 2;
    if (v64 > 2)
    {
      v65 = v132 - 1;
    }

    if (v64 <= 8)
    {
      v66 = 1;
LABEL_91:
      v75 = v65 - v66;
      v76 = &a3[v66 + 179];
      v77 = &v137[v66 - 1];
      do
      {
        v78 = *v77++;
        *v76++ = v78;
        --v75;
      }

      while (v75);
      goto LABEL_93;
    }

    v67 = (v65 - 1) & 0xFFFFFFFFFFFFFFF8;
    v66 = v67 | 1;
    v68 = v138;
    v69 = (a3 + 184);
    v70 = v67;
    do
    {
      v72 = v68[-2];
      v71 = v68[-1];
      v74 = *v68;
      v73 = v68[1];
      v68 += 4;
      v69[-1] = vuzp1q_s32(v72, v71);
      *v69 = vuzp1q_s32(v74, v73);
      v69 += 2;
      v70 -= 8;
    }

    while (v70);
    if (v65 - 1 != v67)
    {
      goto LABEL_91;
    }
  }

LABEL_93:
  memset_pattern16(a3 + 188, &unk_1E5492030, 8 * v134 - 4);
  v79 = a3[197] & 0xFFFFFC00 | *a2 & 0x3FF;
  a3[197] = v79;
  a3[197] = v79 & 0xE000FFFF | ((*(a2 + 4) & 0x1FFF) << 16);
  *(v133 + 29) = xmmword_1E5491CF0;
  *(v133 + 30) = xmmword_1E5491D00;
  *(v133 + 31) = xmmword_1E5491D10;
  *(v133 + 32) = xmmword_1E5491D20;
  *(a3 + 107) = 0x1D002E00230039;
  v80 = (a2 + 20);
  if (v64 > 7 && ((v81 = v133 + 139, (v133 + 139) >= a2 + 22) || v80 >= &a3[v134 + 234]))
  {
    v82 = v64 & 0xFFFFFFFFFFFFFFF8;
    *&v83 = 0x1000100010001;
    *(&v83 + 1) = 0x1000100010001;
    *&v84 = -1;
    *(&v84 + 1) = -1;
    v85 = v64 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      *v81 = v83;
      *(v81 + 18) = v84;
      v86 = vld1q_dup_s16(v80);
      *(v81 + 54) = v86;
      *(v81++ + 36) = v86;
      v85 -= 8;
    }

    while (v85);
  }

  else
  {
    v82 = 0;
  }

  v87 = v82 - v132 + 1;
  v88 = a3 + v82 + 469;
  do
  {
    *(v88 - 27) = 1;
    *(v88 - 18) = -1;
    v89 = *v80;
    *v88 = *v80;
    *(v88 - 9) = v89;
    ++v88;
    _CF = __CFADD__(v87++, 1);
  }

  while (!_CF);
  *(v133 + 157) = xmmword_1E5492020;
  a3[243] = 640;
  *(a3 + 122) = 0;
  v90 = *(a2 + 50);
  if (v90 == 5)
  {
    v91 = 15;
  }

  else
  {
    v91 = 7;
  }

  a3[246] = v91;
  if (v90 == 1)
  {
    v92 = 0;
  }

  else
  {
    v93 = 0;
    v94 = a3 + 990;
    do
    {
      *(v94 - 2) = 19267693;
      ++v93;
      v95 = *(a2 + 50);
      v94 += 4;
    }

    while (v93 < v95 - 1);
    v92 = 2 * v95 - 2;
    if (v92 >= 3)
    {
      v96 = (a3 + 108);
      if ((a3 + 108) >= a2 + 48 || a2 + 43 >= &a3[v92 + 109])
      {
        v110 = v92 + 1;
        if (v92 >= 0xF)
        {
          v97 = v110 & 0xFFFFFFFFFFFFFFF0;
          v111.i64[0] = 0xFFFFFF00FFFFFF00;
          v111.i64[1] = 0xFFFFFF00FFFFFF00;
          v112 = v110 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v113 = vqtbl1q_s8(*(a2 + 43), v111);
            v114.i64[0] = __PAIR64__(HIDWORD(v96->i64[0]), *v96) & 0xFFFFFFFEFFFFFFFELL;
            v114.i32[2] = v96->i64[1] & 0xFFFFFFFE;
            v114.i32[3] = HIDWORD(v96->i64[0]) & 0xFFFFFFFE;
            v115 = vorrq_s8((*&v96[1] & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v113);
            v116 = vorrq_s8(v114, v113);
            v117 = vorrq_s8((*&v96[3] & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v113);
            v118 = vorrq_s8((*&v96[2] & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v113);
            v96[2] = v118;
            v96[3] = v117;
            *v96 = v116;
            v96[1] = v115;
            _Q6 = vdupq_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0);
            __asm { SHLL2           V7.4S, V6.8H, #0x10 }

            v124 = vshll_n_s16(*_Q6.i8, 0x10uLL);
            v96[2] = vorrq_s8(v124, (*&v118 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            v96[3] = vorrq_s8(_Q7, (*&v117 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            *v96 = vorrq_s8(v124, (*&v116 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            v96[1] = vorrq_s8(_Q7, (*&v115 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            v96 += 4;
            v112 -= 16;
          }

          while (v112);
          if (v110 == v97)
          {
            goto LABEL_115;
          }

          if ((v110 & 0xC) == 0)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v97 = 0;
        }

        v125 = v97;
        v97 = v110 & 0xFFFFFFFFFFFFFFFCLL;
        v126 = &a3[v125 + 108];
        v127 = v125 - (v110 & 0xFFFFFFFFFFFFFFFCLL);
        v128.i64[0] = 0xFF000000FFLL;
        v128.i64[1] = 0xFF000000FFLL;
        do
        {
          v129.i64[0] = __PAIR64__(HIDWORD(*v126), *v126) & 0xFFFFFFFEFFFFFFFELL;
          v129.i32[2] = v126[1] & 0xFFFFFFFE;
          v129.i32[3] = HIDWORD(*v126) & 0xFFFFFFFE;
          v130 = vorrq_s8(v129, vandq_s8(vmovl_u16(vdup_n_s16(*(a2 + 43))), v128));
          *v126 = v130;
          *v126 = vorrq_s8(vshll_n_s16(vdup_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0), 0x10uLL), (*&v130 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
          v126 += 2;
          v127 += 4;
        }

        while (v127);
        if (v110 == v97)
        {
          goto LABEL_115;
        }

        goto LABEL_113;
      }
    }
  }

  v97 = 0;
LABEL_113:
  v98 = v92 - v97 + 1;
  v99 = &a3[v97 + 108];
  do
  {
    v100 = *v99 & 0xFFFFFFFE | *(a2 + 43);
    *v99 = v100;
    *v99++ = v100 & 0xFFC0FFFF | ((*(a2 + 46) & 0x3F) << 16);
    --v98;
  }

  while (v98);
LABEL_115:
  if (*(a2 + 113))
  {
    v101 = 1;
  }

  else
  {
    v101 = *(a2 + 173);
  }

  v102 = a3[251] & 0xFFFFFFFE | v101;
  a3[251] = v102;
  if ((*(a2 + 113) & 1) != 0 || *(a2 + 173) == 1)
  {
    v103 = v102 & 0xFFFE00FF | (((vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) >> 5) & 0x1FF) << 8);
    a3[251] = v103;
    a3[251] = v103 & 0xF8FFFFFF | ((*(a2 + 152) & 3) << 24);
    v104 = *(a2 + 24);
    if ((((vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(v104, 9uLL)) + 1.0, 9uLL) >> 9) + 7) & 0xFFFFF8) >= 0x19)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 917, "set_pointer_num <= kSetPointerMaxNum", 36, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_140;
      }

      v104 = *(a2 + 24);
    }

    a3[256] = 24;
    v105 = *(v135 + 72);
    v106 = *(v135 + 64) + v105;
    a3[252] = v106 & 0xFFFFF;
    a3[253] = v106 >> 20;
    *(a5 + 360) = 1;
    *(a5 + 364) = v105;
    v107 = *(a2 + 152);
    if (v107 > 2)
    {
      v108 = 12;
    }

    else
    {
      v108 = dword_1E5492040[v107];
    }

    if (sub_1E544E3D8(v108 * vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(v104, 9uLL)) + 1.0, 9uLL), 0, 64, a5 + 340) < 0x42401 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 966, "curr_desc_size <= kCurrDescriptorDTCMSize", 41, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      v109 = *(v135 + 72) + 271360;
      a3[254] = (v106 + 271360) & 0xFFFFF;
      a3[255] = (v106 + 271360) >> 20;
      *(v135 + 72) = v109 + (a3[256] << 6);
      return;
    }

LABEL_140:
    abort();
  }
}

void sub_1E54202DC(void *a1, unsigned int a2, int a3)
{
  if (!a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 982, "FlowType::kFlow0 != flow && Flow 0 not supported", 50, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2);
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      a1[1] = *a1 + 28 * a2;
    }
  }

  else
  {
    sub_1E541C3F8(a1, a2 - v6);
  }

  v7 = a1[9];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((a1[10] - v7) >> 2);
  if (a2 <= v8)
  {
    if (a2 < v8)
    {
      a1[10] = v7 + 28 * a2;
    }
  }

  else
  {
    sub_1E541C3F8((a1 + 9), a2 - v8);
  }

  if (a3 == 2)
  {
    v12 = a1[15];
    v11 = (a1 + 15);
    v13 = 0x6DB6DB6DB6DB6DB7 * ((a1[16] - v12) >> 2);
    if (a1[16] != v12)
    {
      if (v13 < 2)
      {
        return;
      }

      v14 = v12 + 28;
LABEL_31:
      a1[16] = v14;
      return;
    }

    v21 = 1 - v13;
  }

  else
  {
    if (a3 != 1)
    {
      return;
    }

    v9 = a1[3];
    v10 = 0x6DB6DB6DB6DB6DB7 * ((a1[4] - v9) >> 2);
    if (a2 <= v10)
    {
      if (a2 < v10)
      {
        a1[4] = v9 + 28 * a2;
      }
    }

    else
    {
      sub_1E541C3F8((a1 + 3), a2 - v10);
    }

    v15 = a1[6];
    v16 = 0x6DB6DB6DB6DB6DB7 * ((a1[7] - v15) >> 2);
    if (a2 <= v16)
    {
      if (a2 < v16)
      {
        a1[7] = v15 + 28 * a2;
      }
    }

    else
    {
      sub_1E541C3F8((a1 + 6), a2 - v16);
    }

    v17 = a1[12];
    v18 = 0x6DB6DB6DB6DB6DB7 * ((a1[13] - v17) >> 2);
    if (a2 <= v18)
    {
      if (a2 < v18)
      {
        a1[13] = v17 + 28 * a2;
      }
    }

    else
    {
      sub_1E541C3F8((a1 + 12), a2 - v18);
    }

    v19 = a1[15];
    v11 = (a1 + 15);
    v20 = 0x6DB6DB6DB6DB6DB7 * ((a1[16] - v19) >> 2);
    v21 = a2 - v20;
    if (a2 <= v20)
    {
      if (a2 >= v20)
      {
        return;
      }

      v14 = v19 + 28 * a2;
      goto LABEL_31;
    }
  }

  sub_1E541C3F8(v11, v21);
}

uint64_t sub_1E54204F4(void *a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(*a1 + 524);
  if (*a1 != v10)
  {
    while (*(v9 + 524) == v11)
    {
      v9 += 1024;
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    v12 = a2;
    v13 = a3;
    v14 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 1006, "(std::all_of(desgen_cfg.begin(), desgen_cfg.end(), [key_out_max](const HwStatenDesgenCfg& config) { return config.keyFrameMax == key_out_max; })) && keyOutMax for all octaves needs to be the same", 197, &unk_1E549A011, 0, sub_1E548FDE0);
    a2 = v12;
    a3 = v13;
    if (v14)
    {
      abort();
    }
  }

LABEL_6:
  if (a2)
  {
    v15 = 0;
    v16 = 0;
    LODWORD(v17) = 0;
    v38 = 4 * v11;
    v18 = (a3 + 63) & 0xFFFFFFC0;
    v19 = 28 * a2;
    for (i = 676; ; i += 1024)
    {
      v23 = *a1;
      v24 = *(*a1 + i - 404);
      v25 = a4 >> v15;
      v26 = a5 >> v15;
      if (v24)
      {
        v27 = *a6 + v16;
        *v27 = 1;
        *(v27 + 4) = v25;
        *(v27 + 8) = v26;
        v28 = (v25 + 63) & 0xFFFFFFC0;
        *(v27 + 12) = v28;
        *(v27 + 16) = v17;
        LODWORD(v17) = v17 + v28 * v26;
        if ((v24 & 2) == 0)
        {
LABEL_11:
          if ((*(v23 + i) & 0x10) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }
      }

      else if ((v24 & 2) == 0)
      {
        goto LABEL_11;
      }

      v29 = a6[3] + v16;
      *v29 = 1;
      *(v29 + 4) = v25;
      *(v29 + 8) = v26;
      v30 = (v25 + 63) & 0xFFFFFFC0;
      *(v29 + 12) = v30;
      *(v29 + 16) = v17;
      LODWORD(v17) = v17 + v30 * v26;
      if ((*(v23 + i) & 0x10) == 0)
      {
LABEL_12:
        if ((*(v23 + i - 400) & 3) == 0)
        {
          goto LABEL_8;
        }

LABEL_17:
        v35 = a6[9] + v16;
        *v35 = 1;
        *(v35 + 4) = 2 * v25;
        *(v35 + 8) = v26;
        v36 = (4 * v25 + 63) & 0xFFFFFFC0;
        *(v35 + 12) = v36;
        *(v35 + 16) = v17;
        LODWORD(v17) = v17 + v36 * v26;
        goto LABEL_8;
      }

LABEL_16:
      v31 = a6[6] + v16;
      v32 = a4 >> (v15 + 1);
      v33 = a5 >> (v15 + 1);
      *v31 = 1;
      *(v31 + 4) = v32;
      *(v31 + 8) = v33;
      v34 = (2 * v32 + 63) & 0xFFFFFFC0;
      *(v31 + 12) = v34;
      *(v31 + 16) = v17;
      LODWORD(v17) = v17 + v34 * v33;
      if ((*(v23 + i - 400) & 3) != 0)
      {
        goto LABEL_17;
      }

LABEL_8:
      v21 = sub_1E544E3D8(v38, v17, 64, a6[12] + v16);
      v22 = a6[15] + v16;
      *v22 = 1;
      *(v22 + 4) = v18;
      *(v22 + 8) = 1;
      *(v22 + 12) = v18;
      *(v22 + 16) = v21 + v17;
      v17 = v21 + v17 + v18;
      v16 += 28;
      ++v15;
      if (v19 == v16)
      {
        return v17;
      }
    }
  }

  return 0;
}

uint64_t sub_1E5420750(void *a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  if (a1[1] - *a1 != 1024 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 1056, "desgen_cfg.size() == 1 && Make sure we are only populating one config for Flow2", 81, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v44 = a3;
  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 28 * a2;
    v15 = a6;
    do
    {
      v16 = *a1;
      v17 = 3 << (v10 & 0xFE);
      if ((v17 & *(*a1 + 272)) != 0)
      {
        v18 = *a6 + v12;
        v19 = sub_1E5478AA8(a4, v11);
        v20 = sub_1E5478AA8(a5, v11);
        *v18 = 1;
        *(v18 + 4) = 2 * v19;
        *(v18 + 8) = v20;
        v21 = (2 * v19 + 63) & 0xFFFFFFC0;
        *(v18 + 12) = v21;
        *(v18 + 16) = v13;
        v13 += v21 * v20;
        v16 = *a1;
      }

      a6 = v15;
      if ((v17 & *(v16 + 276)) != 0)
      {
        v22 = *(v15 + 72) + v12;
        v23 = sub_1E5478AA8(a4, v11);
        v24 = sub_1E5478AA8(a5, v11);
        *v22 = 1;
        *(v22 + 4) = 2 * v23;
        *(v22 + 8) = v24;
        v25 = (4 * v23 + 63) & 0xFFFFFFC0;
        *(v22 + 12) = v25;
        *(v22 + 16) = v13;
        v13 += v25 * v24;
      }

      v12 += 28;
      ++v11;
      v10 += 2;
    }

    while (v14 != v12);
  }

  else
  {
    v13 = 0;
  }

  v26 = *(a6 + 120);
  v27 = (v44 + 63) & 0xFFFFFFC0;
  *v26 = 1;
  *(v26 + 4) = v27;
  *(v26 + 8) = 1;
  *(v26 + 12) = v27;
  *(v26 + 16) = v13;
  v28 = v13 + v27;
  v29 = *a1;
  if (*(*a1 + 712))
  {
    v28 = sub_1E544E3D8(0x186A00u, v28, 64, a6 + 256) + v28;
    v29 = *a1;
  }

  if (*(v29 + 280))
  {
    v28 = sub_1E544E3D8(8 * *(v29 + 524), v28, 64, a6 + 284) + v28;
    v29 = *a1;
  }

  v30 = *(v29 + 704);
  if (v30)
  {
    v31 = 72 * *(v29 + 524);
    v32 = (v31 + 65471) / 0xFFC0;
    if (v31 >= 0xFFC1)
    {
      v33 = (v31 + 65471) / 0xFFC0;
    }

    else
    {
      v33 = 1;
    }

    if (v31 >= 0xFFC1)
    {
      v34 = 65472;
    }

    else
    {
      v34 = (v31 + 63) & 0x1FFC0;
    }

    *(a6 + 172) = 1;
    *(a6 + 176) = v34;
    *(a6 + 180) = v33;
    *(a6 + 184) = v34;
    *(a6 + 188) = v28;
    v35 = v28 + v34 * v33;
    if (v31 >= 0xFFC1)
    {
      v36 = 65472;
    }

    else
    {
      v32 = 1;
      v36 = (v31 + 63) & 0x1FFC0;
    }

    *(a6 + 144) = 1;
    *(a6 + 148) = v36;
    *(a6 + 152) = v32;
    *(a6 + 156) = v36;
    *(a6 + 160) = v35;
    v28 = v35 + v36 * v32;
    v30 = *(v29 + 704);
  }

  if ((v30 & 0xC) != 0)
  {
    v37 = 72 * *(v29 + 524);
    v38 = (v37 + 65471) / 0xFFC0;
    if (v37 >= 0xFFC1)
    {
      v39 = (v37 + 65471) / 0xFFC0;
    }

    else
    {
      v39 = 1;
    }

    if (v37 >= 0xFFC1)
    {
      v40 = 65472;
    }

    else
    {
      v40 = (v37 + 63) & 0x1FFC0;
    }

    *(a6 + 228) = 1;
    *(a6 + 232) = v40;
    *(a6 + 236) = v39;
    *(a6 + 240) = v40;
    *(a6 + 244) = v28;
    v41 = v28 + v40 * v39;
    if (v37 >= 0xFFC1)
    {
      v42 = 65472;
    }

    else
    {
      v38 = 1;
      v42 = (v37 + 63) & 0x1FFC0;
    }

    *(a6 + 200) = 1;
    *(a6 + 204) = v42;
    *(a6 + 208) = v38;
    *(a6 + 212) = v42;
    *(a6 + 216) = v41;
    return v41 + v42 * v38;
  }

  return v28;
}

uint64_t sub_1E5420A84(_DWORD *a1, size_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, uint64_t *a9)
{
  bzero(a1, a2);
  *a1 = -1;
  a1[1] = a3 | 0x80000000;
  *(a1 + 1) = 0;
  v16 = (a1 + 38);
  a1[38] |= 0x7FFFFFFFu;
  v17 = a1[59];
  *(a1 + 18) = 0x10000000BLL;
  a1[59] = v17 | 0x7FFFFFFF;
  a1[80] |= 0x7FFFFFFFu;
  a1[101] |= 0x7FFFFFFFu;
  a1[122] |= 0x7FFFFFFFu;
  a1[143] |= 0x7FFFFFFFu;
  a1[164] |= 0x7FFFFFFFu;
  a1[185] |= 0x7FFFFFFFu;
  a1[206] |= 0x7FFFFFFFu;
  a1[227] |= 0x7FFFFFFFu;
  a1[248] |= 0x7FFFFFFFu;
  if (a7)
  {
    v18 = a9[6];
    if ((*(v18 + 28 * (a7 - 1)) & 1) == 0)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 1150, "output_info.info_gp2[octave - 1].enabled && GP2 of previous octave has to be enabled, as it is the input to the current octave", 130, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        abort();
      }

      v18 = a9[6];
      v16 = (a1 + 38);
    }

    result = sub_1E544DF60(v16, *(v18 + 28 * (a7 - 1) + 4), *(v18 + 28 * (a7 - 1) + 8), *(v18 + 28 * (a7 - 1) + 12), 4, 1, *(v18 + 28 * (a7 - 1) + 16) + a8);
    v20 = *a9 + 28 * a7;
    if (*v20 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = sub_1E544DF60(v16, a4, a5, a6, 8, 0, 0);
    a7 = 0;
    v20 = *a9;
    if (**a9 == 1)
    {
LABEL_6:
      result = sub_1E544DF60((a1 + 122), *(v20 + 4), *(v20 + 8), *(v20 + 12), 8, 1, *(v20 + 16) + a8);
    }
  }

  v21 = a9[3] + 28 * a7;
  if (*v21 == 1)
  {
    result = sub_1E544DF60((a1 + 143), *(v21 + 4), *(v21 + 8), *(v21 + 12), 8, 1, *(v21 + 16) + a8);
    v22 = a9[6] + 28 * a7;
    if (*v22 != 1)
    {
LABEL_9:
      v23 = a9[9] + 28 * a7;
      if (*v23 != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v22 = a9[6] + 28 * a7;
    if (*v22 != 1)
    {
      goto LABEL_9;
    }
  }

  result = sub_1E544DF60((a1 + 59), *(v22 + 4), *(v22 + 8), *(v22 + 12), 4, 1, *(v22 + 16) + a8);
  v23 = a9[9] + 28 * a7;
  if (*v23 != 1)
  {
LABEL_10:
    v24 = a9[12] + 28 * a7;
    if (*v24 != 1)
    {
      goto LABEL_11;
    }

LABEL_18:
    result = sub_1E544DF60((a1 + 80), *(v24 + 4), *(v24 + 8), *(v24 + 12), 8, 1, *(v24 + 16) + a8);
    v25 = a9[15] + 28 * a7;
    if (*v25 != 1)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_17:
  result = sub_1E544DF60((a1 + 101), *(v23 + 4), *(v23 + 8), *(v23 + 12), 4, 1, *(v23 + 16) + a8);
  v24 = a9[12] + 28 * a7;
  if (*v24 == 1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v25 = a9[15] + 28 * a7;
  if (*v25 != 1)
  {
    return result;
  }

LABEL_12:
  v26 = *(v25 + 4);
  v27 = *(v25 + 8);
  v28 = *(v25 + 12);
  v29 = *(v25 + 16) + a8;

  return sub_1E544DF60((a1 + 248), v26, v27, v28, 8, 1, v29);
}

uint64_t sub_1E5420E08(_DWORD *a1, size_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, uint64_t *a8)
{
  bzero(a1, a2);
  *a1 = -1;
  a1[1] = a3 | 0x80000000;
  *(a1 + 1) = 0;
  *(a1 + 18) = 0x10000000BLL;
  a1[38] |= 0x7FFFFFFFu;
  a1[59] |= 0x7FFFFFFFu;
  a1[80] |= 0x7FFFFFFFu;
  a1[101] |= 0x7FFFFFFFu;
  a1[122] |= 0x7FFFFFFFu;
  a1[143] |= 0x7FFFFFFFu;
  a1[164] |= 0x7FFFFFFFu;
  a1[185] |= 0x7FFFFFFFu;
  a1[206] |= 0x7FFFFFFFu;
  a1[227] |= 0x7FFFFFFFu;
  a1[248] |= 0x7FFFFFFFu;
  v15 = a8[1] - *a8;
  if (((0x6DB6DB6DB6DB6DB7 * (v15 >> 2)) & 0xFFFFFFFFFFFFFFFELL) != 4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 1235, "num_octaves == 4 || num_octaves == 5 && number of octaves can only be 4 or 5", 78, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  result = sub_1E544DF60((a1 + 38), a4, a5, a6, 8, 0, 0);
  v17 = *a8;
  if (**a8 == 1)
  {
    result = sub_1E544DF60((a1 + 101), *(v17 + 4), *(v17 + 8), *(v17 + 12), 8, 1, *(v17 + 16) + a7);
    v17 = *a8;
    if (*(*a8 + 28) != 1)
    {
LABEL_5:
      if (*(v17 + 56) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if (*(v17 + 28) != 1)
  {
    goto LABEL_5;
  }

  result = sub_1E544DF60((a1 + 59), *(v17 + 32), *(v17 + 36), *(v17 + 40), 8, 1, *(v17 + 44) + a7);
  v17 = *a8;
  if (*(*a8 + 56) != 1)
  {
LABEL_6:
    if (*(v17 + 84) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_1E544DF60((a1 + 122), *(v17 + 60), *(v17 + 64), *(v17 + 68), 8, 1, *(v17 + 72) + a7);
  v17 = *a8;
  if (*(*a8 + 84) != 1)
  {
LABEL_7:
    v18 = a8[9];
    if (*v18 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = sub_1E544DF60((a1 + 143), *(v17 + 88), *(v17 + 92), *(v17 + 96), 8, 1, *(v17 + 100) + a7);
  v18 = a8[9];
  if (*v18 != 1)
  {
LABEL_8:
    if (*(v18 + 28) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = sub_1E544DF60((a1 + 101), *(v18 + 4), *(v18 + 8), *(v18 + 12), 4, 1, *(v18 + 16) + a7);
  v18 = a8[9];
  if (*(v18 + 28) != 1)
  {
LABEL_9:
    if (*(v18 + 56) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_1E544DF60((a1 + 59), *(v18 + 32), *(v18 + 36), *(v18 + 40), 4, 1, *(v18 + 44) + a7);
  v18 = a8[9];
  if (*(v18 + 56) != 1)
  {
LABEL_10:
    if (*(v18 + 84) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_1E544DF60((a1 + 122), *(v18 + 60), *(v18 + 64), *(v18 + 68), 4, 1, *(v18 + 72) + a7);
  v18 = a8[9];
  if (*(v18 + 84) != 1)
  {
LABEL_11:
    if (v15 != 140)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_1E544DF60((a1 + 143), *(v18 + 88), *(v18 + 92), *(v18 + 96), 4, 1, *(v18 + 100) + a7);
  if (v15 != 140)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (*(*a8 + 112) == 1)
  {
    result = sub_1E544DF60((a1 + 227), *(*a8 + 116), *(*a8 + 120), *(*a8 + 124), 8, 1, *(*a8 + 128) + a7);
  }

  v19 = a8[9];
  if (*(v19 + 112) == 1)
  {
    result = sub_1E544DF60((a1 + 227), *(v19 + 116), *(v19 + 120), *(v19 + 124), 4, 1, *(v19 + 128) + a7);
  }

LABEL_25:
  v20 = a8[15];
  if (*v20 == 1)
  {
    result = sub_1E544DF60((a1 + 248), *(v20 + 4), *(v20 + 8), *(v20 + 12), 8, 1, *(v20 + 16) + a7);
    if (*(a8 + 256) != 1)
    {
LABEL_27:
      if (*(a8 + 284) != 1)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }
  }

  else if (*(a8 + 256) != 1)
  {
    goto LABEL_27;
  }

  result = sub_1E544DF60((a1 + 80), *(a8 + 65), *(a8 + 66), *(a8 + 67), 8, 1, *(a8 + 68) + a7);
  if (*(a8 + 284) != 1)
  {
LABEL_28:
    if (*(a8 + 144) != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = sub_1E544DF60((a1 + 164), *(a8 + 72), *(a8 + 73), *(a8 + 74), 8, 1, *(a8 + 75) + a7);
  if (*(a8 + 144) != 1)
  {
LABEL_29:
    if (*(a8 + 172) != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = sub_1E544DF60((a1 + 80), *(a8 + 37), *(a8 + 38), *(a8 + 39), 8, 1, *(a8 + 40) + a7);
  if (*(a8 + 172) != 1)
  {
LABEL_30:
    if (*(a8 + 200) != 1)
    {
      goto LABEL_31;
    }

LABEL_40:
    result = sub_1E544DF60((a1 + 185), *(a8 + 51), *(a8 + 52), *(a8 + 53), 8, 1, *(a8 + 54) + a7);
    if (*(a8 + 228) != 1)
    {
      return result;
    }

    goto LABEL_32;
  }

LABEL_39:
  result = sub_1E544DF60((a1 + 164), *(a8 + 44), *(a8 + 45), *(a8 + 46), 8, 1, *(a8 + 47) + a7);
  if (*(a8 + 200) == 1)
  {
    goto LABEL_40;
  }

LABEL_31:
  if (*(a8 + 228) != 1)
  {
    return result;
  }

LABEL_32:
  v21 = *(a8 + 58);
  v22 = *(a8 + 59);
  v23 = *(a8 + 60);
  v24 = *(a8 + 61) + a7;

  return sub_1E544DF60((a1 + 206), v21, v22, v23, 8, 1, v24);
}

void *sub_1E5421358(uint64_t a1, const void **a2, int a3, int a4, int a5, int a6, int a7)
{
  if ((a5 || a2[1] - *a2 != 1024) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenConfigurationUtils.cpp", 1429, "desgen_cfg.size() == 1 && octave == 0 && Operation buffer is only programmed once for flow2", 93, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *a1 = -1;
  *(a1 + 4) = a6;
  bzero((a1 + 16), 0x440uLL);
  *(a1 + 12) = 0x200000440;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = a7;
  *(a1 + 32) = 1;
  v13 = *a2;

  return memcpy((a1 + 80), v13, 0x400uLL);
}

void sub_1E5421438(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a1)
  {
    v5 = a2;
    v6 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenUtils.cpp", 36, "kpdesc != nullptr", 17, &unk_1E549A011, 0, sub_1E548FDE0);
    a2 = v5;
    if (v6)
    {
      abort();
    }
  }

  v7 = *a3;
  v8 = a3[1];
  v9 = &v8[-*a3] >> 3;
  v10 = a2 >= v9;
  v11 = a2 - v9;
  if (v11 != 0 && v10)
  {
    sub_1E5421990(a3, v11);
    v7 = *a3;
    v8 = a3[1];
  }

  else if (!v10)
  {
    v8 = &v7->n128_i8[8 * a2];
    a3[1] = v8;
  }

  if (v7 != v8)
  {
    v12 = v8 - v7 - 8;
    if (v12 < 0x18)
    {
      v13 = 0;
      v14 = v7;
      do
      {
LABEL_14:
        v14->n128_u64[0] = v13;
        v14 = (v14 + 8);
        ++v13;
      }

      while (v14 != v8);
      goto LABEL_15;
    }

    v15 = (v12 >> 3) + 1;
    v13 = v15 & 0x3FFFFFFFFFFFFFFCLL;
    v14 = (v7 + 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL));
    v16 = xmmword_1E5491CC0;
    v17 = &v7[1];
    v18 = vdupq_n_s64(2uLL);
    v19 = vdupq_n_s64(4uLL);
    v20 = v15 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17[-1] = v16;
      *v17 = vaddq_s64(v16, v18);
      v16 = vaddq_s64(v16, v19);
      v17 += 2;
      v20 -= 4;
    }

    while (v20);
    if (v15 != v13)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v27 = a1;
  if ((v8 - v7) >> 3 < 129)
  {
    v24 = 0;
LABEL_21:
    sub_1E5421AE4(v7, v8, &v27, (v8 - v7) >> 3, 0, v24);
  }

  else
  {
    v21 = MEMORY[0x1E69E5398];
    v22 = (v8 - v7) >> 3;
    while (1)
    {
      v23 = operator new(8 * v22, v21);
      if (v23)
      {
        break;
      }

      v24 = v22 >> 1;
      v25 = v22 > 1;
      v22 >>= 1;
      if (!v25)
      {
        goto LABEL_21;
      }
    }

    v26 = v23;
    sub_1E5421AE4(v7, v8, &v27, (v8 - v7) >> 3, v23, v22);
    operator delete(v26);
  }
}

uint64_t sub_1E5421618(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = kdebug_trace();
  if (*(a3 + 68) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDesgenUtils.cpp", 57, "config.flow == FlowType::kFlow2 && This function is only valid in flow2", 73, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      goto LABEL_29;
    }
  }

  if (*(a3 + 89) != 1)
  {
    return result;
  }

  if (*(a3 + 175) != 1)
  {
    v7 = *(a1 + 176);
    v8 = *(a1 + 152);
    if (v7 >= v8 && a3[6])
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 56, "(full_desc_max_data.offset < full_desc_min_data.offset || config.maxNumberOfKeypoints == 0) && Full desc maxima offset should be lower than Full desc minima offset.", 166, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_29;
      }

      v8 = *(a1 + 152);
      v7 = *(a1 + 176);
    }

    if (v8 == *(a1 + 180) + v7 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 60, "full_desc_min_data.offset == full_desc_max_data.offset + full_desc_max_data.max_size && Full desc maxima and Full desc minima should be contiguous in memory", 158, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      __p = 0;
      v24 = 0;
      v25 = 0;
      v9 = *(a1 + 184);
      v10 = *(a1 + 160);
      if (!(v10 + v9))
      {
        goto LABEL_20;
      }

      sub_1E5421990(&__p, (v10 + v9));
      v11 = v24;
      if (__p == v24)
      {
        goto LABEL_20;
      }

      v12 = v24 - __p - 8;
      if (v12 >= 0x18)
      {
        v15 = (v12 >> 3) + 1;
        v13 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        v14 = __p + 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
        v16 = xmmword_1E5491CC0;
        v17 = (__p + 16);
        v18 = vdupq_n_s64(2uLL);
        v19 = vdupq_n_s64(4uLL);
        v20 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17[-1] = v16;
          *v17 = vaddq_s64(v16, v18);
          v16 = vaddq_s64(v16, v19);
          v17 += 2;
          v20 -= 4;
        }

        while (v20);
        if (v15 == v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = 0;
        v14 = __p;
      }

      do
      {
        *v14++ = v13++;
      }

      while (v14 != v11);
LABEL_20:
      sub_1E5419E50(a1);
      if (*(a3 + 77) == 1)
      {
        sub_1E541A31C(*(a1 + 288), *(a1 + 284), *(a1 + 168), *(a1 + 160), *(a3 + 16), *(a3 + 17), *(a3 + 18), a3[6], *a3, a3[1], &__p);
      }

      sub_1E5419F90(a1, &__p);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      goto LABEL_24;
    }

LABEL_29:
    abort();
  }

  sub_1E5419BDC(a1, a3);
LABEL_24:
  if (*(a3 + 76) == 1 && *(a3 + 90) == 1)
  {
    v21 = 2 * *(a3 + 25);
    v22[0] = *(a3 + 10);
    v22[1] = v22[0];
    v22[2] = v22[0];
    v22[3] = v22[0];
    v22[4] = v22[0];
    v22[5] = v22[0];
    v22[6] = v22[0];
    v22[7] = v22[0];
    (*(*a2 + 96))(&__p, a2);
    sub_1E5478704(&__p, *(a1 + 296) + 240, v21, v22[0], v22, *(a3 + 20));
    (*(*a2 + 112))(a2, v22);
  }

  return kdebug_trace();
}

void sub_1E5421968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E5421990(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_1E5415338();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

double sub_1E5421AE4(__n128 *a1, char *a2, uint64_t *a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = a1->n128_u64[0];
      v8 = *(*a3 + 72 * v6 + 64);
      v9 = BYTE5(v8);
      v10 = v8;
      v11 = HIWORD(v8) & 0x7FFF;
      v12 = BYTE4(v8);
      v13 = *(*a3 + 72 * a1->n128_u64[0] + 64);
      v14 = v13 >> 40;
      v15 = v13;
      v16 = HIWORD(v13) & 0x7FFF;
      v17 = BYTE4(v13);
      v18 = v13 >> 16;
      v19 = WORD1(v8);
      v20 = v12 >= v17;
      v21 = v12 == v17;
      v22 = -1;
      if (v20)
      {
        v22 = 1;
      }

      if (v21)
      {
        v22 = 0;
      }

      v20 = v11 >= v16;
      v23 = v11 == v16;
      v24 = -1;
      if (v20)
      {
        v24 = 1;
      }

      if (v23)
      {
        v24 = v22;
      }

      v20 = v10 >= v15;
      v25 = v10 == v15;
      v26 = -1;
      if (v20)
      {
        v26 = 1;
      }

      if (v25)
      {
        v26 = v24;
      }

      v20 = v19 >= v18;
      v27 = v19 == v18;
      v28 = -1;
      if (v20)
      {
        v28 = 1;
      }

      if (v27)
      {
        v28 = v26;
      }

      v20 = v9 >= v14;
      v29 = v9 == v14;
      v30 = -1;
      if (v20)
      {
        v30 = 1;
      }

      if (!v29)
      {
        v28 = v30;
      }

      if (v28 < 0)
      {
        a1->n128_u64[0] = v6;
        *(a2 - 1) = v7;
      }
    }

    else if (a4 > 128)
    {
      v84 = a4 >> 1;
      v85 = &a1->n128_i8[8 * (a4 >> 1)];
      v86 = a4 - (a4 >> 1);
      v87 = a1;
      if (a4 <= a6)
      {
        v94 = a5;
        sub_1E5421FF4(a1, v85, a3, a4 >> 1, a5);
        v95 = &v94[v84];
        sub_1E5421FF4(v85, a2, a3, v86, v95);
        v96 = *a3;
        v97 = v95;
        v98 = v87;
        v99 = &v94[a4];
        do
        {
          if (v97 == v99)
          {
            if (v94 == v95)
            {
              return v91.n128_f64[0];
            }

            v135 = v95 - v94 - 8;
            if (v135 >= 0x38)
            {
              if ((v87 - v94) >= 0x20)
              {
                v137 = v98 + 1;
                v138 = (v135 >> 3) + 1;
                v139 = v138 & 0x3FFFFFFFFFFFFFFCLL;
                v136 = &v94[v139];
                v98 = (v98 + v139 * 8);
                v140 = (v94 + 2);
                v141 = v138 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v91 = v140[-1];
                  v142 = *v140;
                  v137[-1] = v91;
                  *v137 = v142;
                  v137 += 2;
                  v140 += 2;
                  v141 -= 4;
                }

                while (v141);
                if (v138 == (v138 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v91.n128_f64[0];
                }
              }

              else
              {
                v136 = v94;
              }
            }

            else
            {
              v136 = v94;
            }

            do
            {
              v143 = *v136++;
              v98->n128_u64[0] = v143;
              v98 = (v98 + 8);
            }

            while (v136 != v95);
            return v91.n128_f64[0];
          }

          v100 = v97;
          v101 = *v97;
          v102 = *v94;
          v103 = *(v96 + 72 * v101 + 64);
          v104 = BYTE5(v103);
          v105 = v103;
          v106 = HIWORD(v103) & 0x7FFF;
          v107 = BYTE4(v103);
          v108 = *(v96 + 72 * *v94 + 64);
          v109 = v108 >> 40;
          v110 = v108;
          v111 = HIWORD(v108) & 0x7FFF;
          v112 = BYTE4(v108);
          v113 = v108 >> 16;
          v114 = WORD1(v103);
          v115 = v107 == v112;
          if (v107 >= v112)
          {
            v116 = 1;
          }

          else
          {
            v116 = 255;
          }

          if (v115)
          {
            v116 = 0;
          }

          v117 = v106 == v111;
          if (v106 >= v111)
          {
            v118 = 1;
          }

          else
          {
            v118 = 255;
          }

          if (v117)
          {
            v118 = v116;
          }

          v119 = v105 == v110;
          if (v105 >= v110)
          {
            v120 = 1;
          }

          else
          {
            v120 = 255;
          }

          if (v119)
          {
            v120 = v118;
          }

          v121 = v114 == v113;
          if (v114 >= v113)
          {
            v122 = 1;
          }

          else
          {
            v122 = 255;
          }

          if (v121)
          {
            v122 = v120;
          }

          v123 = v104 == v109;
          if (v104 >= v109)
          {
            v124 = 1;
          }

          else
          {
            v124 = 255;
          }

          if (!v123)
          {
            v122 = v124;
          }

          v125 = v122 & 0x80;
          if ((v122 & 0x80) != 0)
          {
            v102 = v101;
          }

          v94 = (v94 + ((v125 >> 4) ^ 8));
          v97 = (v100 + (v125 >> 4));
          v98->n128_u64[0] = v102;
          v98 = (v98 + 8);
          v87 = (v87 + 8);
        }

        while (v94 != v95);
        if (v97 != v99)
        {
          v126 = (v122 >> 4) & 8;
          v127 = v99 - v100 - v126 - 8;
          if (v127 <= 0x77)
          {
            goto LABEL_159;
          }

          if ((v87 - v100 - v126) < 0x20)
          {
            goto LABEL_159;
          }

          v128 = v98 + 1;
          v129 = (v127 >> 3) + 1;
          v130 = 8 * (v129 & 0x3FFFFFFFFFFFFFFCLL);
          v97 = (v97 + v130);
          v98 = (v98 + v130);
          v131 = (v100 + v126 + 16);
          v132 = v129 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v91 = v131[-1];
            v133 = *v131;
            v128[-1] = v91;
            *v128 = v133;
            v128 += 2;
            v131 += 2;
            v132 -= 4;
          }

          while (v132);
          if (v129 != (v129 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_159:
            do
            {
              v134 = *v97++;
              v98->n128_u64[0] = v134;
              v98 = (v98 + 8);
            }

            while (v97 != v99);
          }
        }
      }

      else
      {
        sub_1E5421AE4(a1, v85, a3, a4 >> 1, a5, a6);
        sub_1E5421AE4(v85, a2, a3, v86, a5, a6);

        v91.n128_u64[0] = sub_1E54224B8(v87, v85, a2, a3, v84, v86, a5, a6).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v31 = &a1->n128_u64[1];
      if (&a1->n128_i8[8] != a2)
      {
        v32 = 0;
        v33 = *a3;
        v34 = a1;
        do
        {
          v36 = v34->n128_u64[0];
          v34 = v31;
          v37 = *v31;
          v38 = v33 + 72 * v37;
          v40 = *(v38 + 64);
          v39 = (v38 + 64);
          v41 = BYTE5(v40);
          v42 = v40;
          v43 = HIWORD(v40) & 0x7FFF;
          v44 = *(v33 + 72 * v36 + 64);
          v45 = v44 >> 40;
          v46 = v44;
          v47 = HIWORD(v44) & 0x7FFF;
          v48 = BYTE4(v44);
          v49 = v44 >> 16;
          v50 = WORD1(v40);
          v51 = BYTE4(v40) == v48;
          if (BYTE4(v40) >= v48)
          {
            v52 = 1;
          }

          else
          {
            v52 = -1;
          }

          if (v51)
          {
            v52 = 0;
          }

          v53 = v43 == v47;
          if (v43 >= v47)
          {
            v54 = 1;
          }

          else
          {
            v54 = -1;
          }

          if (v53)
          {
            v54 = v52;
          }

          v55 = v42 == v46;
          if (v42 >= v46)
          {
            v56 = 1;
          }

          else
          {
            v56 = -1;
          }

          if (v55)
          {
            v56 = v54;
          }

          v57 = v50 == v49;
          if (v50 >= v49)
          {
            v58 = 1;
          }

          else
          {
            v58 = -1;
          }

          if (v57)
          {
            v58 = v56;
          }

          v59 = v41 == v45;
          if (v41 >= v45)
          {
            v60 = 1;
          }

          else
          {
            v60 = -1;
          }

          if (!v59)
          {
            v58 = v60;
          }

          if (v58 < 0)
          {
            v61 = v32;
            do
            {
              *(&a1->n128_u64[1] + v61) = v36;
              if (!v61)
              {
                v35 = a1;
                goto LABEL_39;
              }

              v36 = *(&a1->n128_u64[-1] + v61);
              v62 = (WORD2(*v39) >> 8);
              v63 = *v39;
              v64 = HIWORD(*v39) & 0x7FFFLL;
              v65 = BYTE4(*v39);
              v66 = *(v33 + 72 * v36 + 64);
              v67 = v66 >> 40;
              v68 = v66;
              v69 = HIWORD(v66) & 0x7FFF;
              v70 = BYTE4(v66);
              v71 = v66 >> 16;
              v72 = WORD1(*v39);
              v73 = v65 == v70;
              if (v65 >= v70)
              {
                v74 = 1;
              }

              else
              {
                v74 = -1;
              }

              if (v73)
              {
                v74 = 0;
              }

              v75 = v64 == v69;
              if (v64 >= v69)
              {
                v76 = 1;
              }

              else
              {
                v76 = -1;
              }

              if (v75)
              {
                v76 = v74;
              }

              v77 = v63 == v68;
              if (v63 >= v68)
              {
                v78 = 1;
              }

              else
              {
                v78 = -1;
              }

              if (v77)
              {
                v78 = v76;
              }

              v79 = v72 == v71;
              if (v72 >= v71)
              {
                v80 = 1;
              }

              else
              {
                v80 = -1;
              }

              if (v79)
              {
                v80 = v78;
              }

              v81 = v62 == v67;
              if (v62 >= v67)
              {
                v82 = 1;
              }

              else
              {
                v82 = -1;
              }

              if (!v81)
              {
                v80 = v82;
              }

              v61 -= 8;
            }

            while (v80 < 0);
            v35 = &a1->n128_i8[v61 + 8];
LABEL_39:
            v35->n128_u64[0] = v37;
          }

          v31 = &v34->n128_u64[1];
          v32 += 8;
        }

        while (&v34->n128_i8[8] != a2);
      }
    }
  }

  return v91.n128_f64[0];
}

uint64_t sub_1E5421FF4(uint64_t result, char *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_36:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = (a2 - 8);
      v6 = v7;
      v8 = *(*a3 + 72 * v7 + 64);
      v9 = BYTE5(v8);
      v10 = v8;
      v11 = HIWORD(v8) & 0x7FFF;
      v12 = BYTE4(v8);
      v13 = *(*a3 + 72 * *result + 64);
      v14 = v13 >> 40;
      v15 = v13;
      v16 = HIWORD(v13) & 0x7FFF;
      v17 = BYTE4(v13);
      v18 = v13 >> 16;
      v19 = WORD1(v8);
      v20 = v12 >= v17;
      v21 = v12 == v17;
      v22 = -1;
      if (v20)
      {
        v22 = 1;
      }

      if (v21)
      {
        v22 = 0;
      }

      v20 = v11 >= v16;
      v23 = v11 == v16;
      v24 = -1;
      if (v20)
      {
        v24 = 1;
      }

      if (v23)
      {
        v24 = v22;
      }

      v20 = v10 >= v15;
      v25 = v10 == v15;
      v26 = -1;
      if (v20)
      {
        v26 = 1;
      }

      if (v25)
      {
        v26 = v24;
      }

      v20 = v19 >= v18;
      v27 = v19 == v18;
      v28 = -1;
      if (v20)
      {
        v28 = 1;
      }

      if (v27)
      {
        v28 = v26;
      }

      v20 = v9 >= v14;
      v29 = v9 == v14;
      v30 = -1;
      if (v20)
      {
        v30 = 1;
      }

      if (!v29)
      {
        v28 = v30;
      }

      if ((v28 & 0x80) == 0)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if ((v28 & 0x80) == 0)
      {
        result = v5;
      }

      goto LABEL_36;
    }

    if (a4 > 8)
    {
      v86 = a4 >> 1;
      v87 = a4 >> 1;
      v88 = (v87 * 8 + result);
      v89 = result;
      v93 = a5;
      (sub_1E5421AE4)();
      result = sub_1E5421AE4(v88, a2, a3, a4 - v86, &v93[v87], a4 - v86);
      v94 = *a3;
      v95 = v93;
      v96 = v88;
      do
      {
        if (v96 == a2)
        {
          if (v89 == v88)
          {
            return result;
          }

          v133 = v88 - v89 - 8;
          if (v133 >= 0x38)
          {
            if ((v95 - v89) >= 0x20)
            {
              v135 = v93 + 2;
              v136 = (v133 >> 3) + 1;
              v137 = 8 * (v136 & 0x3FFFFFFFFFFFFFFCLL);
              v93 = (v93 + v137);
              v134 = &v89[v137];
              v138 = (v89 + 16);
              v139 = v136 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v140 = *v138;
                *(v135 - 1) = *(v138 - 1);
                *v135 = v140;
                v138 += 2;
                v135 += 2;
                v139 -= 4;
              }

              while (v139);
              if (v136 == (v136 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v134 = v89;
            }
          }

          else
          {
            v134 = v89;
          }

          do
          {
            v141 = *v134++;
            *v93++ = v141;
          }

          while (v134 != v88);
          return result;
        }

        v97 = v96;
        v98 = *v96;
        v99 = *v89;
        v100 = *(v94 + 72 * v98 + 64);
        v101 = BYTE5(v100);
        v102 = v100;
        v103 = HIWORD(v100) & 0x7FFF;
        v104 = BYTE4(v100);
        v105 = *(v94 + 72 * *v89 + 64);
        v106 = v105 >> 40;
        v107 = v105;
        v108 = HIWORD(v105) & 0x7FFF;
        v109 = BYTE4(v105);
        v110 = v105 >> 16;
        v111 = WORD1(v100);
        v112 = v104 == v109;
        if (v104 >= v109)
        {
          v113 = 1;
        }

        else
        {
          v113 = 255;
        }

        if (v112)
        {
          v113 = 0;
        }

        v114 = v103 == v108;
        if (v103 >= v108)
        {
          result = 1;
        }

        else
        {
          result = 255;
        }

        if (v114)
        {
          result = v113;
        }

        v115 = v102 == v107;
        if (v102 >= v107)
        {
          v116 = 1;
        }

        else
        {
          v116 = 255;
        }

        if (v115)
        {
          v116 = result;
        }

        v117 = v111 == v110;
        if (v111 >= v110)
        {
          v118 = 1;
        }

        else
        {
          v118 = 255;
        }

        if (v117)
        {
          v118 = v116;
        }

        v119 = v101 == v106;
        if (v101 >= v106)
        {
          v120 = 1;
        }

        else
        {
          v120 = 255;
        }

        if (!v119)
        {
          v118 = v120;
        }

        if ((v118 & 0x80) != 0)
        {
          v99 = v98;
        }

        v121 = (v118 & 0x80) >> 4;
        v96 = &v97[v121];
        v89 += v121 ^ 8;
        *v93++ = v99;
        v95 += 8;
      }

      while (v89 != v88);
      if (v96 != a2)
      {
        v122 = (v118 >> 4) & 8;
        v123 = a2 - v97 - v122 - 8;
        if (v123 < 0x78)
        {
          goto LABEL_159;
        }

        if ((v95 - v97 - v122) < 0x20)
        {
          goto LABEL_159;
        }

        v124 = 0;
        v125 = (v123 >> 3) + 1;
        v126 = v125 & 0x3FFFFFFFFFFFFFFCLL;
        v127 = &v93[v126];
        v96 += v126 * 8;
        v128 = &v97[v122 + 16];
        v129 = v125 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v130 = &v93[v124];
          v131 = *v128;
          *v130 = *(v128 - 1);
          *(v130 + 1) = v131;
          v128 += 32;
          v124 += 4;
          v129 -= 4;
        }

        while (v129);
        v93 = v127;
        if (v125 != (v125 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_159:
          do
          {
            v132 = *v96;
            v96 += 8;
            *v93++ = v132;
          }

          while (v96 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v31 = *a3;
      v32 = *result;
      result += 8;
      *a5 = v32;
      if (result != a2)
      {
        v33 = 0;
        v34 = a5;
        v35 = a5;
        do
        {
          while (1)
          {
            v37 = *v35++;
            v36 = v37;
            v38 = *(v31 + 72 * *result + 64);
            v39 = BYTE5(v38);
            v40 = v38;
            v41 = HIWORD(v38) & 0x7FFF;
            v42 = BYTE4(v38);
            v43 = *(v31 + 72 * v37 + 64);
            v44 = v43 >> 40;
            v45 = v43;
            v46 = HIWORD(v43) & 0x7FFF;
            v47 = BYTE4(v43);
            v48 = v43 >> 16;
            v49 = WORD1(v38);
            v50 = v42 == v47;
            if (v42 >= v47)
            {
              v51 = 1;
            }

            else
            {
              v51 = -1;
            }

            if (v50)
            {
              v51 = 0;
            }

            v52 = v41 == v46;
            if (v41 >= v46)
            {
              v53 = 1;
            }

            else
            {
              v53 = -1;
            }

            if (v52)
            {
              v53 = v51;
            }

            v54 = v40 == v45;
            if (v40 >= v45)
            {
              v55 = 1;
            }

            else
            {
              v55 = -1;
            }

            if (v54)
            {
              v55 = v53;
            }

            v56 = v49 == v48;
            if (v49 >= v48)
            {
              v57 = 1;
            }

            else
            {
              v57 = -1;
            }

            if (v56)
            {
              v57 = v55;
            }

            v58 = v39 == v44;
            if (v39 >= v44)
            {
              v59 = 1;
            }

            else
            {
              v59 = -1;
            }

            if (!v58)
            {
              v57 = v59;
            }

            if (v57 < 0)
            {
              break;
            }

            *v35 = *result;
            result += 8;
            v33 += 8;
            v34 = v35;
            if (result == a2)
            {
              return result;
            }
          }

          v34[1] = v36;
          v60 = a5;
          if (v34 != a5)
          {
            v61 = v33;
            while (1)
            {
              v60 = (a5 + v61);
              v62 = *(a5 + v61 - 8);
              v63 = *(v31 + 72 * *result + 64);
              v64 = BYTE5(v63);
              v65 = v63;
              v66 = HIWORD(v63) & 0x7FFF;
              v67 = BYTE4(v63);
              v68 = *(v31 + 72 * v62 + 64);
              v69 = v68 >> 40;
              v70 = v68;
              v71 = HIWORD(v68) & 0x7FFF;
              v72 = BYTE4(v68);
              v73 = v68 >> 16;
              v74 = WORD1(v63);
              v75 = v67 == v72;
              if (v67 >= v72)
              {
                v76 = 1;
              }

              else
              {
                v76 = -1;
              }

              if (v75)
              {
                v76 = 0;
              }

              v77 = v66 == v71;
              if (v66 >= v71)
              {
                v78 = 1;
              }

              else
              {
                v78 = -1;
              }

              if (v77)
              {
                v78 = v76;
              }

              v79 = v65 == v70;
              if (v65 >= v70)
              {
                v80 = 1;
              }

              else
              {
                v80 = -1;
              }

              if (v79)
              {
                v80 = v78;
              }

              v81 = v74 == v73;
              if (v74 >= v73)
              {
                v82 = 1;
              }

              else
              {
                v82 = -1;
              }

              if (v81)
              {
                v82 = v80;
              }

              v83 = v64 == v69;
              if (v64 >= v69)
              {
                v84 = 1;
              }

              else
              {
                v84 = -1;
              }

              if (!v83)
              {
                v82 = v84;
              }

              if ((v82 & 0x80) == 0)
              {
                break;
              }

              *v60 = v62;
              v61 -= 8;
              if (!v61)
              {
                v60 = a5;
                break;
              }
            }
          }

          v85 = *result;
          result += 8;
          *v60 = v85;
          v33 += 8;
          v34 = v35;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 sub_1E54224B8(__n128 *a1, char *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a5 > a8 && a6 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v10 = 0;
    v11 = *a4;
    v12 = *(*a4 + 72 * *a2 + 64);
    v13 = BYTE5(v12);
    v14 = HIWORD(v12) & 0x7FFF;
    v15 = v12;
    v16 = BYTE4(v12);
    v17 = WORD1(v12);
    v18 = -a5;
    while (1)
    {
      v19 = a1->n128_i64[v10 / 8];
      v20 = *(v11 + 72 * v19 + 64);
      v21 = v20 >> 40;
      v22 = v20;
      v23 = HIWORD(v20) & 0x7FFF;
      v24 = BYTE4(v20);
      v25 = v20 >> 16;
      v26 = v16 == v24;
      if (v16 >= v24)
      {
        v27 = 1;
      }

      else
      {
        v27 = -1;
      }

      if (v26)
      {
        v27 = 0;
      }

      v28 = v14 == v23;
      if (v14 >= v23)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

      if (v28)
      {
        v29 = v27;
      }

      if (v15 >= v22)
      {
        v30 = 1;
      }

      else
      {
        v30 = -1;
      }

      if (v15 != v22)
      {
        v29 = v30;
      }

      v31 = v17 == v25;
      if (v17 >= v25)
      {
        v32 = 1;
      }

      else
      {
        v32 = -1;
      }

      if (v31)
      {
        v32 = v29;
      }

      v33 = v13 == v21;
      if (v13 >= v21)
      {
        v34 = 1;
      }

      else
      {
        v34 = -1;
      }

      if (!v33)
      {
        v32 = v34;
      }

      if (v32 < 0)
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v18++, 1))
      {
        return result;
      }
    }

    v36 = -v18;
    v218 = (a1 + v10);
    v219 = a8;
    if (-v18 < a6)
    {
      v37 = a6 / 2;
      v38 = &a2[8 * (a6 / 2)];
      v39 = a2;
      if (a2 - a1 != v10)
      {
        v40 = (a2 - a1 - v10) >> 3;
        v41 = *(v11 + 72 * *v38 + 64);
        v42 = BYTE5(v41);
        v43 = v41;
        v44 = HIWORD(v41) & 0x7FFF;
        v45 = BYTE4(v41);
        v46 = WORD1(v41);
        v39 = a1 + v10;
        do
        {
          v47 = v40 >> 1;
          v48 = &v39[8 * (v40 >> 1)];
          v50 = *v48;
          v49 = v48 + 8;
          v51 = *(v11 + 72 * v50 + 64);
          v52 = v51 >> 40;
          v53 = v51;
          v54 = HIWORD(v51) & 0x7FFF;
          v55 = BYTE4(v51);
          v56 = v51 >> 16;
          v57 = v45 == v55;
          if (v45 >= v55)
          {
            v58 = 1;
          }

          else
          {
            v58 = -1;
          }

          if (v57)
          {
            v58 = 0;
          }

          v59 = v44 == v54;
          if (v44 >= v54)
          {
            v60 = 1;
          }

          else
          {
            v60 = -1;
          }

          if (v59)
          {
            v60 = v58;
          }

          v61 = v43 == v53;
          if (v43 >= v53)
          {
            v62 = 1;
          }

          else
          {
            v62 = -1;
          }

          if (v61)
          {
            v62 = v60;
          }

          v63 = v46 == v56;
          if (v46 >= v56)
          {
            v64 = 1;
          }

          else
          {
            v64 = -1;
          }

          if (v63)
          {
            v64 = v62;
          }

          if (v42 >= v52)
          {
            v65 = 1;
          }

          else
          {
            v65 = -1;
          }

          if (v42 != v52)
          {
            v64 = v65;
          }

          v40 += ~v47;
          if (v64 < 0)
          {
            v40 = v47;
          }

          else
          {
            v39 = v49;
          }
        }

        while (v40);
        v37 = a6 / 2;
      }

      v66 = (v39 - a1 - v10) >> 3;
      v67 = &a2[8 * (a6 / 2)];
      v68 = a2 - v39;
      if (a2 == v39)
      {
        goto LABEL_134;
      }

LABEL_112:
      v67 = v39;
      if (a2 != v38)
      {
        if (v39 + 8 == a2)
        {
          v208 = *v39;
          v210 = v66;
          v96 = v38 - a2;
          v214 = a3;
          v216 = a1;
          v97 = a6;
          v212 = a4;
          v98 = v37;
          memmove(v39, a2, v38 - a2);
          v66 = v210;
          a4 = v212;
          v37 = v98;
          a6 = v97;
          a3 = v214;
          a1 = v216;
          v67 = &v39[v96];
          *v67 = v208;
        }

        else if (a2 + 8 == v38)
        {
          v99 = *(v38 - 1);
          v67 = v39 + 8;
          if (v38 - 8 != v39)
          {
            v215 = a3;
            v217 = a1;
            v209 = a6;
            v211 = v66;
            v213 = a4;
            v100 = v37;
            memmove(v39 + 8, v39, v38 - 8 - v39);
            v66 = v211;
            a4 = v213;
            v37 = v100;
            a6 = v209;
            a3 = v215;
            a1 = v217;
          }

          *v39 = v99;
        }

        else
        {
          v101 = v68 >> 3;
          v102 = (v38 - a2) >> 3;
          if (v68 >> 3 == v102)
          {
            v103 = v39 + 8;
            v104 = a2 + 8;
            do
            {
              v105 = *(v103 - 1);
              *(v103 - 1) = *(v104 - 1);
              *(v104 - 1) = v105;
              if (v103 == a2)
              {
                break;
              }

              v103 += 8;
              v26 = v104 == v38;
              v104 += 8;
            }

            while (!v26);
            v67 = a2;
          }

          else
          {
            v106 = v68 >> 3;
            do
            {
              v107 = v106;
              v106 = v102;
              v102 = v107 % v102;
            }

            while (v102);
            v108 = &v39[8 * v106];
            do
            {
              v110 = *(v108 - 1);
              v108 -= 8;
              v109 = v110;
              v111 = &v108[v68];
              v112 = v108;
              do
              {
                v113 = v111;
                *v112 = *v111;
                v114 = (v38 - v111) >> 3;
                v115 = __OFSUB__(v101, v114);
                v117 = v101 - v114;
                v116 = (v117 < 0) ^ v115;
                v111 = &v39[8 * v117];
                if (v116)
                {
                  v111 = &v113[8 * v101];
                }

                v112 = v113;
              }

              while (v111 != v108);
              *v113 = v109;
            }

            while (v108 != v39);
            v67 = &v39[v38 - a2];
          }
        }
      }

      goto LABEL_134;
    }

    if (v18 == -1)
    {
      a1->n128_u64[v10 / 8] = *a2;
      *a2 = v19;
      return result;
    }

    v66 = v36 / 2;
    v39 = &a1->n128_i8[8 * (v36 / 2) + v10];
    v38 = a2;
    if (a2 != a3)
    {
      v69 = v36 / 2;
      v70 = (a3 - a2) >> 3;
      v71 = *(v11 + 72 * *v39 + 64);
      v72 = BYTE5(v71);
      v73 = HIWORD(v71) & 0x7FFF;
      v74 = v71;
      v75 = BYTE4(v71);
      v76 = WORD1(v71);
      v38 = a2;
      do
      {
        v77 = v70 >> 1;
        v78 = &v38[8 * (v70 >> 1)];
        v80 = *v78;
        v79 = v78 + 8;
        v81 = *(v11 + 72 * v80 + 64);
        v82 = BYTE5(v81);
        v83 = v81;
        v84 = HIWORD(v81) & 0x7FFF;
        v85 = BYTE4(v81);
        v86 = WORD1(v81);
        v87 = v85 == v75;
        if (v85 >= v75)
        {
          v88 = 1;
        }

        else
        {
          v88 = -1;
        }

        if (v87)
        {
          v88 = 0;
        }

        v89 = v84 == v73;
        if (v84 >= v73)
        {
          v90 = 1;
        }

        else
        {
          v90 = -1;
        }

        if (v89)
        {
          v90 = v88;
        }

        v91 = v83 == v74;
        if (v83 >= v74)
        {
          v92 = 1;
        }

        else
        {
          v92 = -1;
        }

        if (v91)
        {
          v92 = v90;
        }

        v93 = v86 == v76;
        if (v86 >= v76)
        {
          v94 = 1;
        }

        else
        {
          v94 = -1;
        }

        if (v93)
        {
          v94 = v92;
        }

        if (v82 >= v72)
        {
          v95 = 1;
        }

        else
        {
          v95 = -1;
        }

        if (v82 != v72)
        {
          v94 = v95;
        }

        v70 += ~v77;
        if (v94 < 0)
        {
          v38 = v79;
        }

        else
        {
          v70 = v77;
        }
      }

      while (v70);
      v66 = v69;
    }

    v37 = (v38 - a2) >> 3;
    v67 = v38;
    v68 = a2 - v39;
    if (a2 != v39)
    {
      goto LABEL_112;
    }

LABEL_134:
    v118 = a6 - v37;
    if (v66 + v37 >= a6 - (v66 + v37) - v18)
    {
      v125 = a4;
      v126 = v37;
      v127 = v66;
      sub_1E54224B8(v67, v38);
      a2 = v39;
      a8 = v219;
      a5 = v127;
      a3 = v67;
      a1 = v218;
      a6 = v126;
      a4 = v125;
      if (!v126)
      {
        return result;
      }
    }

    else
    {
      v119 = &a1->n128_u64[v10 / 8];
      v120 = v39;
      v121 = a3;
      v122 = a4;
      v123 = -v18 - v66;
      a8 = v219;
      sub_1E54224B8(v119, v120);
      a5 = v123;
      a3 = v121;
      a1 = v67;
      a2 = v38;
      a6 = v118;
      a4 = v122;
      if (!v118)
      {
        return result;
      }
    }
  }

  if (a5 <= a6)
  {
    if (a2 != a1)
    {
      v137 = a2 - a1 - 8;
      v138 = a7;
      v139 = a1;
      if (v137 < 0x18)
      {
        goto LABEL_244;
      }

      v138 = a7;
      v139 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_244;
      }

      v140 = (v137 >> 3) + 1;
      v141 = 8 * (v140 & 0x3FFFFFFFFFFFFFFCLL);
      v138 = &a7[v141];
      v139 = a1 + v141;
      v142 = a1 + 1;
      v143 = (a7 + 16);
      v144 = v140 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v142[-1];
        v145 = *v142;
        v143[-1] = result;
        *v143 = v145;
        v142 += 2;
        v143 += 2;
        v144 -= 4;
      }

      while (v144);
      if (v140 != (v140 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_244:
        do
        {
          v146 = *v139;
          v139 += 8;
          *v138 = v146;
          v138 += 8;
        }

        while (v139 != a2);
      }

      v147 = *a4;
      while (a2 != a3)
      {
        v148 = *a2;
        v149 = *(v147 + 72 * *a2 + 64);
        v150 = BYTE5(v149);
        v151 = v149;
        v152 = HIWORD(v149) & 0x7FFF;
        v153 = BYTE4(v149);
        v154 = *(v147 + 72 * *a7 + 64);
        v155 = v154 >> 40;
        v156 = v154;
        v157 = HIWORD(v154) & 0x7FFF;
        v158 = BYTE4(v154);
        v159 = v154 >> 16;
        v160 = WORD1(v149);
        v161 = v153 == v158;
        if (v153 >= v158)
        {
          v162 = 1;
        }

        else
        {
          v162 = -1;
        }

        if (v161)
        {
          v162 = 0;
        }

        v163 = v152 == v157;
        if (v152 >= v157)
        {
          v164 = 1;
        }

        else
        {
          v164 = -1;
        }

        if (v163)
        {
          v164 = v162;
        }

        v165 = v151 == v156;
        if (v151 >= v156)
        {
          v166 = 1;
        }

        else
        {
          v166 = -1;
        }

        if (v165)
        {
          v166 = v164;
        }

        v167 = v160 == v159;
        if (v160 >= v159)
        {
          v168 = 1;
        }

        else
        {
          v168 = -1;
        }

        if (v167)
        {
          v168 = v166;
        }

        v169 = v150 == v155;
        if (v150 >= v155)
        {
          v170 = 1;
        }

        else
        {
          v170 = -1;
        }

        if (!v169)
        {
          v168 = v170;
        }

        v171 = v168 & 0x80;
        if (!v171)
        {
          v148 = *a7;
        }

        a2 += v171 >> 4;
        a7 += (v171 >> 4) ^ 8;
        a1->n128_u64[0] = v148;
        a1 = (a1 + 8);
        if (a7 == v138)
        {
          return result;
        }
      }

      memmove(a1, a7, v138 - a7);
    }
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v128 = a3 - a2 - 8;
    if (v128 < 0x18)
    {
      v129 = a7;
      v130 = a2;
    }

    else
    {
      v129 = a7;
      v130 = a2;
      if ((a7 - a2) > 0x1F)
      {
        v131 = (v128 >> 3) + 1;
        v132 = 8 * (v131 & 0x3FFFFFFFFFFFFFFCLL);
        v129 = &a7[v132];
        v130 = &a2[v132];
        v133 = (a2 + 16);
        v134 = (a7 + 16);
        v135 = v131 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          result = v133[-1];
          v136 = *v133;
          v134[-1] = result;
          *v134 = v136;
          v133 += 2;
          v134 += 2;
          v135 -= 4;
        }

        while (v135);
        if (v131 == (v131 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_194;
        }
      }
    }

    do
    {
      v172 = *v130;
      v130 += 8;
      *v129 = v172;
      v129 += 8;
    }

    while (v130 != a3);
LABEL_194:
    v173 = *a4;
    v174 = a3;
    while (a2 != a1)
    {
      v175 = *(a2 - 1);
      v176 = *(v173 + 72 * *(v129 - 1) + 64);
      v177 = BYTE5(v176);
      v178 = v176;
      v179 = HIWORD(v176) & 0x7FFF;
      v180 = BYTE4(v176);
      v181 = *(v173 + 72 * v175 + 64);
      v182 = v181 >> 40;
      v183 = v181;
      v184 = HIWORD(v181) & 0x7FFF;
      v185 = BYTE4(v181);
      v186 = v181 >> 16;
      v187 = WORD1(v176);
      v188 = v180 == v185;
      if (v180 >= v185)
      {
        v189 = 1;
      }

      else
      {
        v189 = -1;
      }

      if (v188)
      {
        v189 = 0;
      }

      v190 = v179 == v184;
      if (v179 >= v184)
      {
        v191 = 1;
      }

      else
      {
        v191 = -1;
      }

      if (v190)
      {
        v191 = v189;
      }

      v192 = v178 == v183;
      if (v178 >= v183)
      {
        v193 = 1;
      }

      else
      {
        v193 = -1;
      }

      if (v192)
      {
        v193 = v191;
      }

      v194 = v187 == v186;
      if (v187 >= v186)
      {
        v195 = 1;
      }

      else
      {
        v195 = -1;
      }

      if (v194)
      {
        v195 = v193;
      }

      v196 = v177 == v182;
      if (v177 >= v182)
      {
        v197 = 1;
      }

      else
      {
        v197 = -1;
      }

      if (!v196)
      {
        v195 = v197;
      }

      if (v195 < 0)
      {
        a2 -= 8;
      }

      else
      {
        v175 = *(v129 - 1);
      }

      if ((v195 & 0x80) == 0)
      {
        v129 -= 8;
      }

      *(a3 - 1) = v175;
      a3 -= 8;
      v174 -= 8;
      if (v129 == a7)
      {
        return result;
      }
    }

    v198 = v129 - a7;
    if (v129 != a7)
    {
      v199 = v198 - 8;
      if ((v198 - 8) < 0x48 || (v129 - v174) < 0x20)
      {
        v200 = v129;
        goto LABEL_235;
      }

      v203 = (a3 - 16);
      v204 = (v199 >> 3) + 1;
      v205 = 8 * (v204 & 0x3FFFFFFFFFFFFFFCLL);
      v200 = &v129[-v205];
      a3 -= v205;
      v206 = (v129 - 16);
      v207 = v204 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *v206;
        v203[-1] = v206[-1];
        *v203 = result;
        v203 -= 2;
        v206 -= 2;
        v207 -= 4;
      }

      while (v207);
      if (v204 != (v204 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_235:
        v201 = a3 - 8;
        do
        {
          v202 = *(v200 - 1);
          v200 -= 8;
          *v201 = v202;
          v201 -= 8;
        }

        while (v200 != a7);
      }
    }
  }

  return result;
}

void sub_1E5422D44(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *a3;
  *a3 = 0;
  if (v6)
  {
    CVPixelBufferUnlockBaseAddress(*v6, 0);
    CVPixelBufferRelease(*v6);
    MEMORY[0x1E6928650](v6, 0x20C4093837F09);
  }

  v7 = *(a3 + 8);
  *(a3 + 8) = 0;
  if (v7)
  {
    CVPixelBufferUnlockBaseAddress(*v7, 0);
    CVPixelBufferRelease(*v7);
    MEMORY[0x1E6928650](v7, 0x20C4093837F09);
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if ((a2[14] >= *a2 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtraction.cpp", 65, "direct_config.maxInputImageWidth >= direct_config.inputImageWidth && Max Width has to be larger than current width", 116, &unk_1E549A011, 0, sub_1E548FDE0)) && (a2[15] >= a2[1] || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtraction.cpp", 67, "direct_config.maxInputImageHeight >= direct_config.inputImageHeight && Max height has to be larger than current height", 120, &unk_1E549A011, 0, sub_1E548FDE0)))
  {
    v8 = a2[2];
    if (*a2 > v8)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtraction.cpp", 69, "direct_config.inputImageWidth <= direct_config.inputImageStride && The stride has to be larger or equal to the image width", 124, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_32;
      }

      v8 = a2[2];
    }

    if ((v8 & 0x3F) == 0 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtraction.cpp", 71, "direct_config.inputImageStride % KBytesPerRowAlignmentHw == 0 && Stride needs to be aligned to 64 bytes", 105, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      v9 = a2[16];
      *(a1 + 8) = v9;
      if (v9 > 7)
      {
        if (v9 <= 9)
        {
          if (v9 != 8)
          {
            operator new();
          }

          operator new();
        }

        if (v9 == 10)
        {
          operator new();
        }

        if (v9 == 11)
        {
          operator new();
        }
      }

      else
      {
        if (v9 > 5)
        {
          if (v9 != 6)
          {
            operator new();
          }

          operator new();
        }

        if (v9 == 4)
        {
          operator new();
        }

        if (v9 == 5)
        {
          operator new();
        }
      }

      operator new();
    }
  }

LABEL_32:
  abort();
}

void sub_1E5423864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E542393C(va);
  _Unwind_Resume(a1);
}

CVPixelBufferRef **sub_1E542393C(CVPixelBufferRef **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    CVPixelBufferUnlockBaseAddress(*v1, 0);
    CVPixelBufferRelease(*v1);
    MEMORY[0x1E6928650](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

_DWORD *sub_1E542399C(void *a1, CVPixelBufferRef *a2)
{
  result = CVPixelBufferGetBaseAddress(*a2);
  v4 = *(a1 + 3);
  *result = v4;
  if (v4)
  {
    v5 = result;
    v6 = 4 * v4 + 4;
    (*(**a1 + 40))();
    v5[1] = v6;
    result = (*(**a1 + 48))(*a1, v5 + v6, 0, 8);
    LODWORD(v7) = *(a1 + 3);
    if (v7 >= 2)
    {
      v8 = v5 + 2;
      v9 = 1;
      do
      {
        v10 = ((*(**a1 + 40))() + 16) * v9 + 4 * v7 + 4;
        *v8++ = v10;
        result = (*(**a1 + 48))(*a1, v5 + v10, v9++, 4);
        v7 = *(a1 + 3);
      }

      while (v9 < v7);
    }
  }

  return result;
}

uint64_t sub_1E5423C24(uint64_t a1, CVPixelBufferRef *a2, CVPixelBufferRef *a3, int a4, int a5)
{
  if (!*CVPixelBufferGetBaseAddress(*a2) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtraction.cpp", 48, "idx < list->tot && Index for general processing out of range", 62, &unk_1E549A011, 0, sub_1E548FDE0) || !*CVPixelBufferGetBaseAddress(*a3) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtraction.cpp", 48, "idx < list->tot && Index for general processing out of range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *(a1 + 240) = a4;
  *(a1 + 244) = a5;
  if (!a4)
  {
    *(a1 + 248) = 0;
  }

  v9 = *(**a1 + 208);

  return v9();
}

uint64_t sub_1E5423D58(void *a1)
{
  if (!a1)
  {
    return 2;
  }

  v2 = operator new(0x1C0uLL, MEMORY[0x1E69E5398]);
  v3 = 3;
  if (v2)
  {
    *v2 = 0u;
    *(v2 + 3) = 0x1E000000280;
    *(v2 + 6) = vdup_n_s32(0x1388u);
    *(v2 + 7) = 0xA000500010001;
    *(v2 + 66) = 16843008;
    *(v2 + 76) = xmmword_1E5491B30;
    *(v2 + 116) = xmmword_1E5491B40;
    *(v2 + 140) = xmmword_1E54920C0;
    *(v2 + 2) = 0;
    *(v2 + 8) = 640;
    *(v2 + 36) = 0;
    *(v2 + 22) = 45;
    v2[46] = -1;
    *(v2 + 32) = 10;
    *(v2 + 70) = 720905;
    *(v2 + 37) = 3;
    v2[92] = 1;
    *(v2 + 24) = 0;
    *(v2 + 99) = 0;
    *(v2 + 13) = 1061997773;
    v2[112] = 0;
    *(v2 + 113) = 1;
    *(v2 + 33) = 0xFFFFF;
    *(v2 + 68) = 1;
    *(v2 + 43) = 1065353216;
    *(v2 + 156) = unk_1E54920D0;
    v2[176] = 1;
    *(v2 + 180) = 0x3F00000041A00000;
    *(v2 + 188) = 0xB43E4CCCCDLL;
    *(v2 + 49) = 0;
    v2[200] = 0;
    *(v2 + 51) = 2;
    *(v2 + 104) = 0;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0xDEC000005CCLL;
    v2[232] = 0;
    *&v4 = 0xFFFF0000FFFFLL;
    *(&v4 + 1) = 0xFFFF0000FFFFLL;
    *(v2 + 236) = v4;
    *(v2 + 252) = v4;
    *(v2 + 268) = v4;
    *(v2 + 284) = v4;
    *(v2 + 300) = 0xFFFF0000FFFFLL;
    *(v2 + 328) = 0u;
    *(v2 + 344) = 0u;
    *(v2 + 312) = 0u;
    *(v2 + 45) = -1;
    *(v2 + 46) = 0;
    *(v2 + 47) = v2 + 384;
    *(v2 + 48) = 0;
    *(v2 + 51) = 0;
    *(v2 + 52) = 0;
    *(v2 + 49) = 0;
    *(v2 + 50) = v2 + 408;
    v2[424] = 1;
    *(v2 + 27) = xmmword_1E54920A0;
    *a1 = v2;
    return 0;
  }

  return v3;
}

uint64_t sub_1E5423F24(uint64_t a1, __int128 *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4;
  }

  v6 = a2[9];
  v7 = a2[11];
  v8 = a2[12];
  v33 = a2[10];
  v34 = v7;
  v35 = v8;
  v9 = a2[5];
  v10 = a2[7];
  v11 = a2[8];
  v29 = a2[6];
  v30 = v10;
  v31 = v11;
  v32 = v6;
  v12 = a2[1];
  v13 = a2[3];
  v14 = a2[4];
  v25 = a2[2];
  v26 = v13;
  v27 = v14;
  v28 = v9;
  v23 = *a2;
  v24 = v12;
  DWORD2(v27) = 64;
  *(&v26 + 1) = *a2;
  BYTE10(v28) = 1;
  v15 = sub_1E542405C(a1);
  if (!v15)
  {
    v20 = 0u;
    v19 = 0u;
    v22 = 0;
    v21 = a3;
    v18[0] = *(a2 + 172);
    v16 = operator new(0x140uLL, 0x40uLL);
    sub_1E542B2BC(v16, a1 + 312, v18);
  }

  return v15;
}

void sub_1E5424028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1E6928640](v9, 64);
  sub_1E5427A1C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1E542405C(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  return 4;
}

int32x4_t sub_1E54243C0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 92) == 2)
    {
      if (*(a1 + 100) == 1)
      {
        *(a1 + 232) = 1;
        (*(***a1 + 96))(v12);
        v3 = v12[0];
        v2 = v12[1];
        *(a1 + 276) = vzip1_s32(*v12[0].i8, *&vextq_s8(v12[0], v12[0], 8uLL));
        v5 = v12[2];
        v4 = v12[3];
        v6 = *(a1 + 104);
        *(a1 + 284) = v2.i32[0];
        v7 = vcvtq_u32_f32(vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v3)), vcvtq_f64_u64(v2)), v6));
        v8 = vextq_s8(vuzp1q_s32(v2, v5), v2, 4uLL);
        v8.i32[3] = v4.i32[0];
        *(a1 + 288) = v8;
        result = vcvtq_u32_f32(vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v5)), vcvtq_f64_u64(v4)), v6));
        *(a1 + 240) = v7;
        *(a1 + 256) = result;
        *(a1 + 304) = v4.i32[2];
      }

      else
      {
        *(a1 + 232) = 0;
        v11 = *(a1 + 48);
        result = vdupq_n_s32(v11);
        *(a1 + 236) = result;
        *(a1 + 252) = result;
        *(a1 + 300) = v11;
        *(a1 + 268) = result;
        *(a1 + 284) = result;
        *(a1 + 304) = v11;
      }
    }

    else
    {
      *(a1 + 232) = 0;
      memset_pattern16((a1 + 236), &unk_1E5492030, 0x24uLL);
      memset_pattern16((a1 + 272), &unk_1E5492030, 0x24uLL);
    }
  }

  return result;
}

CVPixelBufferRef sub_1E542453C(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 210, "ctx", 3, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 312);
  if (!v2)
  {
    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 212, "0 && Action buffer cannot be NULL", 35, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      v2 = *(a1 + 312);
      goto LABEL_6;
    }

LABEL_7:
    abort();
  }

LABEL_6:
  v3 = *v2;
  CVPixelBufferRetain(*v2);
  return v3;
}

uint64_t sub_1E54245F8(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 221, "ctx", 3, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 328);
}

CVPixelBufferRef sub_1E5424660(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 227, "ctx", 3, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 320);
  if (!v2)
  {
    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 229, "0 && Operation buffer cannot be NULL", 38, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      v2 = *(a1 + 320);
      goto LABEL_6;
    }

LABEL_7:
    abort();
  }

LABEL_6:
  v3 = *v2;
  CVPixelBufferRetain(*v2);
  return v3;
}

uint64_t sub_1E542471C(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 238, "ctx", 3, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 332);
}

uint64_t sub_1E5424784(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 244, "ctx", 3, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 336);
}

uint64_t sub_1E54247EC(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 250, "ctx", 3, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 340);
}

CVPixelBufferRef sub_1E5424854(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 256, "ctx", 3, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v2 = *(a1 + 344);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  CVPixelBufferRetain(*v2);
  return v3;
}

uint64_t sub_1E54248E4(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 267, "ctx", 3, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 352);
}

uint64_t sub_1E542494C(uint64_t a1, __CVBuffer *a2)
{
  v4 = a2;
  if (a1)
  {
    sub_1E54351A8(&v3, &v4);
  }

  return 4;
}

uint64_t sub_1E5424B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  result = kdebug_trace();
  if (*(a3 + 89))
  {
    if ((*(a3 + 113) & 1) == 0)
    {
      sub_1E542804C(a1, a3);
      if (*(a3 + 76) != 1)
      {
        return kdebug_trace();
      }

LABEL_169:
      if (*(a3 + 90) == 1)
      {
        v56 = 2 * *(a3 + 50);
        v57 = *(a3 + 20);
        v71 = v57;
        v72 = v57;
        v73 = v57;
        v74 = v57;
        v75 = v57;
        v76 = v57;
        v77 = v57;
        v78 = v57;
        (*(*a2 + 96))(__p, a2);
        sub_1E5478704(__p, *(a1 + 296) + 240, v56, v57, &v71, *(a3 + 80));
        (*(*a2 + 112))(a2, &v71);
      }

      return kdebug_trace();
    }
  }

  else if (*(a3 + 88) == 1)
  {
    if ((*(a3 + 113) & 1) == 0)
    {
      if (!*(a3 + 112))
      {
        sub_1E5429BEC(a1, a3);
        if (*(a3 + 76) != 1)
        {
          return kdebug_trace();
        }

        goto LABEL_169;
      }

      if (*(a3 + 112) == 1)
      {
        sub_1E5428C20(a1, a3);
        if (*(a3 + 76) != 1)
        {
          return kdebug_trace();
        }

        goto LABEL_169;
      }

      goto LABEL_168;
    }
  }

  else if ((*(a3 + 113) & 1) == 0)
  {
    return result;
  }

  v11 = (a4 + 8);
  sub_1E541B450(a4, *(a4 + 8));
  *a4 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  if ((*(a3 + 89) & 1) == 0 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 252, "config.enableLongDescriptorOutputFlow2 && long desc should be enabled", 71, &unk_1E549A011, 0, sub_1E548FDE0) || *(a3 + 68) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 257, "config.flow == FlowType::kFlow2 && This function is only valid in flow2", 73, &unk_1E549A011, 0, sub_1E548FDE0) || (*(a3 + 76) & 1) == 0 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 260, "config.enableDynamicThresholding && Dynamic Thresholding should be enabled", 76, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_175;
  }

  v64 = *(a1 + 184);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 152);
  if (v13 >= v14 && *(a3 + 24))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 271, "(full_desc_max_data.offset < full_desc_min_data.offset || config.maxNumberOfKeypoints == 0) && Full desc maxima offset should be lower than Full desc minima offset.", 166, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_175;
    }

    v14 = *(a1 + 152);
    v13 = *(a1 + 176);
  }

  if (v14 != *(a1 + 180) + v13 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 275, "full_desc_min_data.offset == full_desc_max_data.offset + full_desc_max_data.max_size && Full desc maxima and Full desc minima should be contiguous in memory", 158, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_175;
  }

  memset(__p, 0, 24);
  v15 = v12 + v64;
  v59 = a6;
  if (v12 + v64)
  {
    operator new();
  }

  v70 = a4;
  v63 = *(a1 + 328);
  v16 = *(a1 + 324);
  if (*(a3 + 152) != 1)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 287, "config.fmDescSize == FeatureMatchingDescriptorSize::k256bits", 60, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_175:
      abort();
    }
  }

  v60 = v15;
  v61 = a3;
  v58 = *(*(a1 + 296) + 180);
  v72 = 0;
  v73 = 0;
  v71 = &v72;
  if (v16 >= 0x180)
  {
    v19 = 0;
    v62 = v16 / 0x180uLL;
    do
    {
      v20 = (v63 + 1536 * v19);
      if ((~*v20 & 0xFFFC0000) == 0)
      {
        break;
      }

      v66 = v19;
      if ((~*(v20 + 2) & 0xFFFC0000) != 0)
      {
        if ((~*(v20 + 4) & 0xFFFC0000) != 0)
        {
          if ((~*(v20 + 6) & 0xFFFC0000) != 0)
          {
            if ((~*(v20 + 8) & 0xFFFC0000) != 0)
            {
              if ((~*(v20 + 10) & 0xFFFC0000) != 0)
              {
                if ((~*(v20 + 12) & 0xFFFC0000) != 0)
                {
                  if ((~*(v20 + 14) & 0xFFFC0000) != 0)
                  {
                    if ((~*(v20 + 16) & 0xFFFC0000) != 0)
                    {
                      if ((~*(v20 + 18) & 0xFFFC0000) != 0)
                      {
                        if ((~*(v20 + 20) & 0xFFFC0000) != 0)
                        {
                          if ((~*(v20 + 22) & 0xFFFC0000) != 0)
                          {
                            if ((~*(v20 + 24) & 0xFFFC0000) != 0)
                            {
                              if ((~*(v20 + 26) & 0xFFFC0000) != 0)
                              {
                                if ((~*(v20 + 28) & 0xFFFC0000) != 0)
                                {
                                  if ((~*(v20 + 30) & 0xFFFC0000) != 0)
                                  {
                                    if ((~*(v20 + 32) & 0xFFFC0000) != 0)
                                    {
                                      if ((~*(v20 + 34) & 0xFFFC0000) != 0)
                                      {
                                        if ((~*(v20 + 36) & 0xFFFC0000) != 0)
                                        {
                                          if ((~*(v20 + 38) & 0xFFFC0000) != 0)
                                          {
                                            if ((~*(v20 + 40) & 0xFFFC0000) != 0)
                                            {
                                              if ((~*(v20 + 42) & 0xFFFC0000) != 0)
                                              {
                                                if ((~*(v20 + 44) & 0xFFFC0000) != 0)
                                                {
                                                  if ((~*(v20 + 46) & 0xFFFC0000) != 0)
                                                  {
                                                    if ((~*(v20 + 48) & 0xFFFC0000) != 0)
                                                    {
                                                      if ((~*(v20 + 50) & 0xFFFC0000) != 0)
                                                      {
                                                        if ((~*(v20 + 52) & 0xFFFC0000) != 0)
                                                        {
                                                          if ((~*(v20 + 54) & 0xFFFC0000) != 0)
                                                          {
                                                            if ((~*(v20 + 56) & 0xFFFC0000) != 0)
                                                            {
                                                              if ((~*(v20 + 58) & 0xFFFC0000) != 0)
                                                              {
                                                                if ((~*(v20 + 60) & 0xFFFC0000) != 0)
                                                                {
                                                                  v21 = 31;
                                                                  if ((~*(v20 + 62) & 0xFFFC0000) != 0)
                                                                  {
                                                                    v21 = 32;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v21 = 30;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v21 = 29;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v21 = 28;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v21 = 27;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v21 = 26;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v21 = 25;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v21 = 24;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v21 = 23;
                                                  }
                                                }

                                                else
                                                {
                                                  v21 = 22;
                                                }
                                              }

                                              else
                                              {
                                                v21 = 21;
                                              }
                                            }

                                            else
                                            {
                                              v21 = 20;
                                            }
                                          }

                                          else
                                          {
                                            v21 = 19;
                                          }
                                        }

                                        else
                                        {
                                          v21 = 18;
                                        }
                                      }

                                      else
                                      {
                                        v21 = 17;
                                      }
                                    }

                                    else
                                    {
                                      v21 = 16;
                                    }
                                  }

                                  else
                                  {
                                    v21 = 15;
                                  }
                                }

                                else
                                {
                                  v21 = 14;
                                }
                              }

                              else
                              {
                                v21 = 13;
                              }
                            }

                            else
                            {
                              v21 = 12;
                            }
                          }

                          else
                          {
                            v21 = 11;
                          }
                        }

                        else
                        {
                          v21 = 10;
                        }
                      }

                      else
                      {
                        v21 = 9;
                      }
                    }

                    else
                    {
                      v21 = 8;
                    }
                  }

                  else
                  {
                    v21 = 7;
                  }
                }

                else
                {
                  v21 = 6;
                }
              }

              else
              {
                v21 = 5;
              }
            }

            else
            {
              v21 = 4;
            }
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          v21 = 2;
        }
      }

      else
      {
        v21 = 1;
      }

      v67 = v21;
      v22 = 0;
      v68 = v20 + 32;
      v23 = v20 + 48;
      v24 = (*v20 >> 63) & v64;
      do
      {
        v25 = HIWORD(v68[v22]);
        v26 = v72;
        v27 = v23[v22];
        if (!v72)
        {
LABEL_99:
          if (v27)
          {
            goto LABEL_108;
          }

LABEL_100:
          if (!sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 317, "desc_set->tid[i] && TID not assigned", 38, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_108;
          }

          goto LABEL_175;
        }

        while (1)
        {
          v28 = *(v26 + 7);
          if (v27 < v28)
          {
            goto LABEL_103;
          }

          if (v28 >= v27)
          {
            break;
          }

          ++v26;
LABEL_103:
          v26 = *v26;
          if (!v26)
          {
            goto LABEL_99;
          }
        }

        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 315, "!duplicate_tid && duplicate tid is unexpected", 47, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_175;
        }

        if (!v23[v22])
        {
          goto LABEL_100;
        }

LABEL_108:
        v29 = v72;
        if (!v72)
        {
LABEL_114:
          operator new();
        }

        v30 = v23[v22];
        while (1)
        {
          while (1)
          {
            v31 = v29;
            v32 = *(v29 + 7);
            if (v30 >= v32)
            {
              break;
            }

            v29 = *v31;
            if (!*v31)
            {
              goto LABEL_114;
            }
          }

          if (v32 >= v30)
          {
            break;
          }

          v29 = v31[1];
          if (!v29)
          {
            goto LABEL_114;
          }
        }

        v33 = *v11;
        if (!*v11)
        {
LABEL_121:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v34 = v33;
            v35 = *(v33 + 7);
            if (v30 >= v35)
            {
              break;
            }

            v33 = *v34;
            if (!*v34)
            {
              goto LABEL_121;
            }
          }

          if (v35 >= v30)
          {
            break;
          }

          v33 = v34[1];
          if (!v33)
          {
            goto LABEL_121;
          }
        }

        v36 = (v25 & 0x1FFF) + v24;
        *(v34 + 8) = v36;
        sub_1E5436D50(a1, v23[v22++], v36);
      }

      while (v22 != v67);
      v19 = v66 + 1;
    }

    while (v66 + 1 != v62);
  }

  a3 = v61;
  if ((v59 & 1) == 0)
  {
    v17 = *(a1 + 344);
    v18 = *(v61 + 24);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    if (v18)
    {
      operator new();
    }

    v37 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    LODWORD(v18) = vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(0, 9uLL)) + 1.0, 9uLL);
    if (v18)
    {
      v38 = 0;
      while (1)
      {
        v39 = v17 + 32 * v38;
        if (*v39 == -1 && *(v39 + 8) == -1 && *(v39 + 16) == -1 && *(v39 + 24) == -1)
        {
LABEL_154:
          v37 = v80;
          a3 = v61;
          goto LABEL_155;
        }

        v40 = *(v39 + 20);
        v41 = *v11;
        if (!*v11)
        {
LABEL_137:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v42 = v41;
            v43 = *(v41 + 7);
            if (v43 <= v40)
            {
              break;
            }

            v41 = *v42;
            if (!*v42)
            {
              goto LABEL_137;
            }
          }

          if (v43 >= v40)
          {
            break;
          }

          v41 = v42[1];
          if (!v41)
          {
            goto LABEL_137;
          }
        }

        v44 = a5[1];
        if (!v44)
        {
          goto LABEL_126;
        }

        v45 = *(v42 + 8);
        v46 = a5[1];
        while (1)
        {
          v47 = *(v46 + 7);
          if (v47 <= v40)
          {
            break;
          }

LABEL_140:
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_126;
          }
        }

        if (v47 < v40)
        {
          break;
        }

        while (1)
        {
          while (1)
          {
            v48 = v44;
            v49 = *(v44 + 7);
            if (v49 <= v40)
            {
              break;
            }

            v44 = *v48;
            if (!*v48)
            {
              goto LABEL_148;
            }
          }

          if (v49 >= v40)
          {
            break;
          }

          v44 = v48[1];
          if (!v44)
          {
LABEL_148:
            operator new();
          }
        }

        v50 = *(v48 + 8);
        if (v45 >= v60 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 361, "curr_desc_dram_idx < num_descs && invalid current index", 57, &unk_1E549A011, 0, sub_1E548FDE0) || v50 >= *(v61 + 24) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 363, "prev_desc_dram_idx < config.maxNumberOfKeypoints && invalid prev index", 72, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_175;
        }

        sub_1E541C708(&v83, &v80, v45, v50);
        sub_1E5436CAC(a1, v45, v50);
LABEL_126:
        if (++v38 == v18)
        {
          goto LABEL_154;
        }
      }

      ++v46;
      goto LABEL_140;
    }

LABEL_155:
    if (v37)
    {
      v81 = v37;
      operator delete(v37);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }
  }

  sub_1E542ABBC(a1);
  sub_1E542ACF8(a1, __p);
  v51 = *a5;
  *a5 = *v70;
  *v70 = v51;
  v52 = a5[1];
  v53 = a5[2];
  *(a5 + 1) = *(v70 + 8);
  *(v70 + 8) = v52;
  *(v70 + 16) = v53;
  if (a5[2])
  {
    v54 = (a5[1] + 16);
  }

  else
  {
    v54 = a5;
  }

  *v54 = a5 + 1;
  v55 = (v52 + 16);
  if (!v53)
  {
    v55 = v70;
  }

  *v55 = v11;
  (*(*a2 + 136))(a2, v58);
  if (*(a1 + 372) != *(*(a1 + 400) + 4) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 383, "hw_data_handler.GetNumTids() == hw_data_handler.GetNumKeypoints() && Number of TIDs should match the number of KPs", 116, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_175;
  }

  sub_1E541B450(&v71, v72);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_168:
  if (*(a3 + 76) == 1)
  {
    goto LABEL_169;
  }

  return kdebug_trace();
}

void sub_1E5425D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  v35 = *(v33 - 136);
  if (v35)
  {
    *(v33 - 128) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 112);
  if (v36)
  {
    *(v33 - 104) = v36;
    operator delete(v36);
  }

  sub_1E541B450(&a24, a25);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1E5425DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  result = kdebug_trace();
  if (*(a3 + 89))
  {
    if ((*(a3 + 113) & 1) == 0)
    {
      sub_1E542804C(a1, a3);
      if (*(a3 + 76) != 1)
      {
        return kdebug_trace();
      }

LABEL_169:
      if (*(a3 + 90) == 1)
      {
        v56 = 2 * *(a3 + 50);
        v57 = *(a3 + 20);
        v71 = v57;
        v72 = v57;
        v73 = v57;
        v74 = v57;
        v75 = v57;
        v76 = v57;
        v77 = v57;
        v78 = v57;
        (*(*a2 + 96))(__p, a2);
        sub_1E5478704(__p, *(a1 + 296) + 240, v56, v57, &v71, *(a3 + 80));
        (*(*a2 + 112))(a2, &v71);
      }

      return kdebug_trace();
    }
  }

  else if (*(a3 + 88) == 1)
  {
    if ((*(a3 + 113) & 1) == 0)
    {
      if (!*(a3 + 112))
      {
        sub_1E5429BEC(a1, a3);
        if (*(a3 + 76) != 1)
        {
          return kdebug_trace();
        }

        goto LABEL_169;
      }

      if (*(a3 + 112) == 1)
      {
        sub_1E5428C20(a1, a3);
        if (*(a3 + 76) != 1)
        {
          return kdebug_trace();
        }

        goto LABEL_169;
      }

      goto LABEL_168;
    }
  }

  else if ((*(a3 + 113) & 1) == 0)
  {
    return result;
  }

  v11 = (a4 + 8);
  sub_1E541B450(a4, *(a4 + 8));
  *a4 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  if ((*(a3 + 89) & 1) == 0 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 252, "config.enableLongDescriptorOutputFlow2 && long desc should be enabled", 71, &unk_1E549A011, 0, sub_1E548FDE0) || *(a3 + 68) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 257, "config.flow == FlowType::kFlow2 && This function is only valid in flow2", 73, &unk_1E549A011, 0, sub_1E548FDE0) || (*(a3 + 76) & 1) == 0 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 260, "config.enableDynamicThresholding && Dynamic Thresholding should be enabled", 76, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_175;
  }

  v64 = *(a1 + 184);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 152);
  if (v13 >= v14 && *(a3 + 24))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 271, "(full_desc_max_data.offset < full_desc_min_data.offset || config.maxNumberOfKeypoints == 0) && Full desc maxima offset should be lower than Full desc minima offset.", 166, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_175;
    }

    v14 = *(a1 + 152);
    v13 = *(a1 + 176);
  }

  if (v14 != *(a1 + 180) + v13 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 275, "full_desc_min_data.offset == full_desc_max_data.offset + full_desc_max_data.max_size && Full desc maxima and Full desc minima should be contiguous in memory", 158, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_175;
  }

  memset(__p, 0, 24);
  v15 = v12 + v64;
  v59 = a6;
  if (v12 + v64)
  {
    operator new();
  }

  v70 = a4;
  v63 = *(a1 + 328);
  v16 = *(a1 + 324);
  if (*(a3 + 152) != 1)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 287, "config.fmDescSize == FeatureMatchingDescriptorSize::k256bits", 60, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_175:
      abort();
    }
  }

  v60 = v15;
  v61 = a3;
  v58 = *(*(a1 + 296) + 180);
  v72 = 0;
  v73 = 0;
  v71 = &v72;
  if (v16 >= 0x180)
  {
    v19 = 0;
    v62 = v16 / 0x180uLL;
    do
    {
      v20 = (v63 + 1536 * v19);
      if ((~*v20 & 0xFFFC0000) == 0)
      {
        break;
      }

      v66 = v19;
      if ((~*(v20 + 2) & 0xFFFC0000) != 0)
      {
        if ((~*(v20 + 4) & 0xFFFC0000) != 0)
        {
          if ((~*(v20 + 6) & 0xFFFC0000) != 0)
          {
            if ((~*(v20 + 8) & 0xFFFC0000) != 0)
            {
              if ((~*(v20 + 10) & 0xFFFC0000) != 0)
              {
                if ((~*(v20 + 12) & 0xFFFC0000) != 0)
                {
                  if ((~*(v20 + 14) & 0xFFFC0000) != 0)
                  {
                    if ((~*(v20 + 16) & 0xFFFC0000) != 0)
                    {
                      if ((~*(v20 + 18) & 0xFFFC0000) != 0)
                      {
                        if ((~*(v20 + 20) & 0xFFFC0000) != 0)
                        {
                          if ((~*(v20 + 22) & 0xFFFC0000) != 0)
                          {
                            if ((~*(v20 + 24) & 0xFFFC0000) != 0)
                            {
                              if ((~*(v20 + 26) & 0xFFFC0000) != 0)
                              {
                                if ((~*(v20 + 28) & 0xFFFC0000) != 0)
                                {
                                  if ((~*(v20 + 30) & 0xFFFC0000) != 0)
                                  {
                                    if ((~*(v20 + 32) & 0xFFFC0000) != 0)
                                    {
                                      if ((~*(v20 + 34) & 0xFFFC0000) != 0)
                                      {
                                        if ((~*(v20 + 36) & 0xFFFC0000) != 0)
                                        {
                                          if ((~*(v20 + 38) & 0xFFFC0000) != 0)
                                          {
                                            if ((~*(v20 + 40) & 0xFFFC0000) != 0)
                                            {
                                              if ((~*(v20 + 42) & 0xFFFC0000) != 0)
                                              {
                                                if ((~*(v20 + 44) & 0xFFFC0000) != 0)
                                                {
                                                  if ((~*(v20 + 46) & 0xFFFC0000) != 0)
                                                  {
                                                    if ((~*(v20 + 48) & 0xFFFC0000) != 0)
                                                    {
                                                      if ((~*(v20 + 50) & 0xFFFC0000) != 0)
                                                      {
                                                        if ((~*(v20 + 52) & 0xFFFC0000) != 0)
                                                        {
                                                          if ((~*(v20 + 54) & 0xFFFC0000) != 0)
                                                          {
                                                            if ((~*(v20 + 56) & 0xFFFC0000) != 0)
                                                            {
                                                              if ((~*(v20 + 58) & 0xFFFC0000) != 0)
                                                              {
                                                                if ((~*(v20 + 60) & 0xFFFC0000) != 0)
                                                                {
                                                                  v21 = 31;
                                                                  if ((~*(v20 + 62) & 0xFFFC0000) != 0)
                                                                  {
                                                                    v21 = 32;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v21 = 30;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v21 = 29;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v21 = 28;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v21 = 27;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v21 = 26;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v21 = 25;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v21 = 24;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v21 = 23;
                                                  }
                                                }

                                                else
                                                {
                                                  v21 = 22;
                                                }
                                              }

                                              else
                                              {
                                                v21 = 21;
                                              }
                                            }

                                            else
                                            {
                                              v21 = 20;
                                            }
                                          }

                                          else
                                          {
                                            v21 = 19;
                                          }
                                        }

                                        else
                                        {
                                          v21 = 18;
                                        }
                                      }

                                      else
                                      {
                                        v21 = 17;
                                      }
                                    }

                                    else
                                    {
                                      v21 = 16;
                                    }
                                  }

                                  else
                                  {
                                    v21 = 15;
                                  }
                                }

                                else
                                {
                                  v21 = 14;
                                }
                              }

                              else
                              {
                                v21 = 13;
                              }
                            }

                            else
                            {
                              v21 = 12;
                            }
                          }

                          else
                          {
                            v21 = 11;
                          }
                        }

                        else
                        {
                          v21 = 10;
                        }
                      }

                      else
                      {
                        v21 = 9;
                      }
                    }

                    else
                    {
                      v21 = 8;
                    }
                  }

                  else
                  {
                    v21 = 7;
                  }
                }

                else
                {
                  v21 = 6;
                }
              }

              else
              {
                v21 = 5;
              }
            }

            else
            {
              v21 = 4;
            }
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          v21 = 2;
        }
      }

      else
      {
        v21 = 1;
      }

      v67 = v21;
      v22 = 0;
      v68 = v20 + 32;
      v23 = v20 + 48;
      v24 = (*v20 >> 63) & v64;
      do
      {
        v25 = HIWORD(v68[v22]);
        v26 = v72;
        v27 = v23[v22];
        if (!v72)
        {
LABEL_99:
          if (v27)
          {
            goto LABEL_108;
          }

LABEL_100:
          if (!sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 317, "desc_set->tid[i] && TID not assigned", 38, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_108;
          }

          goto LABEL_175;
        }

        while (1)
        {
          v28 = *(v26 + 7);
          if (v27 < v28)
          {
            goto LABEL_103;
          }

          if (v28 >= v27)
          {
            break;
          }

          ++v26;
LABEL_103:
          v26 = *v26;
          if (!v26)
          {
            goto LABEL_99;
          }
        }

        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 315, "!duplicate_tid && duplicate tid is unexpected", 47, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_175;
        }

        if (!v23[v22])
        {
          goto LABEL_100;
        }

LABEL_108:
        v29 = v72;
        if (!v72)
        {
LABEL_114:
          operator new();
        }

        v30 = v23[v22];
        while (1)
        {
          while (1)
          {
            v31 = v29;
            v32 = *(v29 + 7);
            if (v30 >= v32)
            {
              break;
            }

            v29 = *v31;
            if (!*v31)
            {
              goto LABEL_114;
            }
          }

          if (v32 >= v30)
          {
            break;
          }

          v29 = v31[1];
          if (!v29)
          {
            goto LABEL_114;
          }
        }

        v33 = *v11;
        if (!*v11)
        {
LABEL_121:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v34 = v33;
            v35 = *(v33 + 7);
            if (v30 >= v35)
            {
              break;
            }

            v33 = *v34;
            if (!*v34)
            {
              goto LABEL_121;
            }
          }

          if (v35 >= v30)
          {
            break;
          }

          v33 = v34[1];
          if (!v33)
          {
            goto LABEL_121;
          }
        }

        v36 = (v25 & 0x1FFF) + v24;
        *(v34 + 8) = v36;
        sub_1E5436D50(a1, v23[v22++], v36);
      }

      while (v22 != v67);
      v19 = v66 + 1;
    }

    while (v66 + 1 != v62);
  }

  a3 = v61;
  if ((v59 & 1) == 0)
  {
    v17 = *(a1 + 344);
    v18 = *(v61 + 24);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    if (v18)
    {
      operator new();
    }

    v37 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    LODWORD(v18) = vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(0, 9uLL)) + 1.0, 9uLL);
    if (v18)
    {
      v38 = 0;
      while (1)
      {
        v39 = v17 + 32 * v38;
        if (*v39 == -1 && *(v39 + 8) == -1 && *(v39 + 16) == -1 && *(v39 + 24) == -1)
        {
LABEL_154:
          v37 = v80;
          a3 = v61;
          goto LABEL_155;
        }

        v40 = *(v39 + 20) & 0xFFFFFFF;
        v41 = *v11;
        if (!*v11)
        {
LABEL_137:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v42 = v41;
            v43 = *(v41 + 7);
            if (v40 >= v43)
            {
              break;
            }

            v41 = *v42;
            if (!*v42)
            {
              goto LABEL_137;
            }
          }

          if (v43 >= v40)
          {
            break;
          }

          v41 = v42[1];
          if (!v41)
          {
            goto LABEL_137;
          }
        }

        v44 = a5[1];
        if (!v44)
        {
          goto LABEL_126;
        }

        v45 = *(v42 + 8);
        v46 = a5[1];
        while (1)
        {
          v47 = *(v46 + 7);
          if (v40 >= v47)
          {
            break;
          }

LABEL_140:
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_126;
          }
        }

        if (v47 < v40)
        {
          break;
        }

        while (1)
        {
          while (1)
          {
            v48 = v44;
            v49 = *(v44 + 7);
            if (v40 >= v49)
            {
              break;
            }

            v44 = *v48;
            if (!*v48)
            {
              goto LABEL_148;
            }
          }

          if (v49 >= v40)
          {
            break;
          }

          v44 = v48[1];
          if (!v44)
          {
LABEL_148:
            operator new();
          }
        }

        v50 = *(v48 + 8);
        if (v45 >= v60 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 361, "curr_desc_dram_idx < num_descs && invalid current index", 57, &unk_1E549A011, 0, sub_1E548FDE0) || v50 >= *(v61 + 24) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 363, "prev_desc_dram_idx < config.maxNumberOfKeypoints && invalid prev index", 72, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_175;
        }

        sub_1E541C708(&v83, &v80, v45, v50);
        sub_1E5436CAC(a1, v45, v50);
LABEL_126:
        if (++v38 == v18)
        {
          goto LABEL_154;
        }
      }

      ++v46;
      goto LABEL_140;
    }

LABEL_155:
    if (v37)
    {
      v81 = v37;
      operator delete(v37);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }
  }

  sub_1E542ABBC(a1);
  sub_1E542ACF8(a1, __p);
  v51 = *a5;
  *a5 = *v70;
  *v70 = v51;
  v52 = a5[1];
  v53 = a5[2];
  *(a5 + 1) = *(v70 + 8);
  *(v70 + 8) = v52;
  *(v70 + 16) = v53;
  if (a5[2])
  {
    v54 = (a5[1] + 16);
  }

  else
  {
    v54 = a5;
  }

  *v54 = a5 + 1;
  v55 = (v52 + 16);
  if (!v53)
  {
    v55 = v70;
  }

  *v55 = v11;
  (*(*a2 + 136))(a2, v58);
  if (*(a1 + 372) != *(*(a1 + 400) + 4) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwProcessOutputUtilsImpl.h", 383, "hw_data_handler.GetNumTids() == hw_data_handler.GetNumKeypoints() && Number of TIDs should match the number of KPs", 116, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_175;
  }

  sub_1E541B450(&v71, v72);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_168:
  if (*(a3 + 76) == 1)
  {
    goto LABEL_169;
  }

  return kdebug_trace();
}

void sub_1E5427074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  v35 = *(v33 - 136);
  if (v35)
  {
    *(v33 - 128) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 112);
  if (v36)
  {
    *(v33 - 104) = v36;
    operator delete(v36);
  }

  sub_1E541B450(&a24, a25);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1E54270F0(uint64_t a1, CVPixelBufferRef *a2, __CVBuffer **a3)
{
  if (!a1)
  {
    return 4;
  }

  Width = CVPixelBufferGetWidth(*a2);
  Height = CVPixelBufferGetHeight(*a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(*a2);
  if (*(a1 + 24) != Width && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 368, "width == ctx->config.inputImageWidth", 36, &unk_1E549A011, 0, sub_1E548FDE0) || *(a1 + 28) != Height && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 369, "height == ctx->config.inputImageHeight", 38, &unk_1E549A011, 0, sub_1E548FDE0) || *(a1 + 32) != BytesPerRow && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 370, "stride == ctx->config.inputImageStride", 38, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 137) & 1) == 0)
  {
    kdebug_trace();
    if (*(a1 + 200) == 1)
    {
      v13 = *(*a1 + 40);
      if (v13)
      {
        v14 = 0;
        v15 = *(a1 + 204);
        while (1)
        {
          v16 = v14 + v15;
          v17 = v13 >= v14 + v15 ? v14 + v15 : v13;
          v18 = *(a1 + 320);
          v26 = **(a1 + 312);
          v25 = *v18;
          sub_1E5423C24(*a1, &v26, &v25, v14, v17);
          if (!sub_1E542C0A0(*(a1 + 16), a1 + 312, a2, a3, v14 != 0))
          {
            break;
          }

          v19 = *a1;
          v20 = 1;
          CVPixelBufferLockBaseAddress(*a3, 1uLL);
          BaseAddress = CVPixelBufferGetBaseAddress(*a3);
          v19[272] = v13 <= v16;
          (*(**v19 + 216))(*v19, BaseAddress, v19 + 16);
          CVPixelBufferUnlockBaseAddress(*a3, 1uLL);
          v14 += v15;
          if (v16 >= v13)
          {
            goto LABEL_27;
          }
        }

        v20 = 0;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = sub_1E542C0A0(*(a1 + 16), a1 + 312, a2, a3, 0);
    }

LABEL_27:
    kdebug_trace();
    if (v20)
    {
      v11 = *a3;
      goto LABEL_29;
    }

LABEL_31:
    result = 1;
    if (*(a1 + 92) != 2)
    {
      return result;
    }

    goto LABEL_32;
  }

  kdebug_trace();
  v9 = sub_1E542C3FC(*(a1 + 16), a1 + 312, a2, a3, (a1 + 368));
  kdebug_trace();
  v10 = *(a1 + 368);
  if (v10)
  {
    CVPixelBufferRelease(v10);
    *(a1 + 368) = 0;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

  v11 = *a3;
  if (*(a1 + 137) == 1)
  {
    CVPixelBufferRetain(*a3);
    v11 = *a3;
    *(a1 + 368) = *a3;
  }

LABEL_29:
  result = sub_1E542494C(a1, v11);
  if (*(a1 + 92) != 2)
  {
    return result;
  }

LABEL_32:
  v22 = *a1;
  v23 = *(a1 + 320);
  v24 = result;
  sub_1E542399C(v22, v23);
  return v24;
}

uint64_t sub_1E5427488(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 473, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 232);
}

uint64_t sub_1E54274F0(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 481, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return 9;
}

uint64_t sub_1E542754C(uint64_t a1, unsigned int a2)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 489, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0) || a2 >= 9 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 490, "target_kp_idx < DYN_THRESH_NUM_KEYPOINTS", 40, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 4 * a2 + 236);
}

uint64_t sub_1E5427600(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 498, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return 9;
}

uint64_t sub_1E542765C(uint64_t a1, unsigned int a2)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 506, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0) || a2 >= 9 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwFeatureExtractionInterface.cpp", 507, "max_kp_idx < DYN_THRESH_NUM_KEYPOINTS", 37, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 4 * a2 + 272);
}

uint64_t sub_1E5427710(uint64_t a1)
{
  sub_1E541B450(a1 + 400, *(a1 + 408));
  sub_1E541B450(a1 + 376, *(a1 + 384));
  v2 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v2)
  {
    CVPixelBufferUnlockBaseAddress(*v2, 0);
    CVPixelBufferRelease(*v2);
    MEMORY[0x1E6928650](v2, 0x20C4093837F09);
  }

  v3 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v3)
  {
    CVPixelBufferUnlockBaseAddress(*v3, 0);
    CVPixelBufferRelease(*v3);
    MEMORY[0x1E6928650](v3, 0x20C4093837F09);
  }

  v4 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v4)
  {
    CVPixelBufferUnlockBaseAddress(*v4, 0);
    CVPixelBufferRelease(*v4);
    MEMORY[0x1E6928650](v4, 0x20C4093837F09);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    v6 = sub_1E54278C0(v5);
    MEMORY[0x1E6928640](v6, 64);
  }

  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7)
  {
    v8 = v7[11];
    if (v8)
    {
      v7[12] = v8;
      operator delete(v8);
    }

    v9 = v7[8];
    if (v9)
    {
      v7[9] = v9;
      operator delete(v9);
    }

    v10 = v7[7];
    v7[7] = 0;
    if (v10)
    {
      sub_1E5427B38((v7 + 7), v10);
    }

    MEMORY[0x1E6928650](v7, 0x1020C4030AFA861);
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    sub_1E5427A94(v11 + 2);
    v12 = *v11;
    *v11 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    MEMORY[0x1E6928650](v11, 0x1030C40E8DE7E06);
  }

  return a1;
}

uint64_t sub_1E54278C0(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    sub_1E548B62C(a1);
    if (*a1)
    {
      xpc_connection_cancel(*a1);
      xpc_release(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }

  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (v2[1])();
    }

    MEMORY[0x1E6928650](v2, 0xA0C40AFF93C70);
  }

  v4 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v4)
  {
    CVPixelBufferUnlockBaseAddress(*v4, 0);
    CVPixelBufferRelease(*v4);
    MEMORY[0x1E6928650](v4, 0x20C4093837F09);
  }

  v5 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v5)
  {
    sub_1E53DE9AC(*v5);
    MEMORY[0x1E6928650](v5, 0x20C4093837F09);
  }

  v6 = *(a1 + 112);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

uint64_t sub_1E5427A1C(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_1E5427A94(void *a1)
{
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  v3 = a1[22];
  if (v3)
  {
    a1[23] = v3;
    operator delete(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    a1[20] = v4;
    operator delete(v4);
  }

  v5 = a1[16];
  if (v5)
  {
    a1[17] = v5;
    operator delete(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    a1[5] = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_1E5427B38(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[11];
    if (v3)
    {
      v4 = a2[12];
      v5 = a2[11];
      if (v4 != v3)
      {
        v6 = a2[12];
        do
        {
          v8 = *(v6 - 24);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 16) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = a2[11];
      }

      a2[12] = v3;
      operator delete(v5);
    }

    v9 = a2[8];
    if (v9)
    {
      v10 = a2[9];
      v11 = a2[8];
      if (v10 != v9)
      {
        v12 = a2[9];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v10 - 16) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v9);
        v11 = a2[8];
      }

      a2[9] = v9;
      operator delete(v11);
    }

    JUMPOUT(0x1E6928650);
  }
}

uint64_t sub_1E5427C24(uint64_t a1)
{
  v2 = *(a1 + 624);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 608);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 512);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 496);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 296);
  if (v6)
  {
    v7 = *(a1 + 304);
    v8 = *(a1 + 296);
    if (v7 != v6)
    {
      do
      {
        v9 = v7 - 552;
        sub_1E5427FA8(v7 - 312);
        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(a1 + 296);
    }

    *(a1 + 304) = v6;
    operator delete(v8);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    *(a1 + 104) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 72);
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 72);
  if (v12 == v11)
  {
    goto LABEL_32;
  }

  do
  {
    v14 = *(v12 - 8);
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v15 = *(v12 - 24);
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *(v12 - 24);
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

LABEL_23:
    v12 -= 112;
  }

  while (v12 != v11);
  v13 = *(a1 + 72);
LABEL_32:
  *(a1 + 80) = v11;
  operator delete(v13);
LABEL_33:
  sub_1E5427EA4((a1 + 48));
  sub_1E5427EA4((a1 + 24));
  return a1;
}

void **sub_1E5427EA4(void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 1);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 3);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 3);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 112;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_1E5427FA8(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_1E542804C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 176);
  v5 = *(a1 + 152);
  if (v4 >= v5 && *(a2 + 24) != 0)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 56, "(full_desc_max_data.offset < full_desc_min_data.offset || config.maxNumberOfKeypoints == 0) && Full desc maxima offset should be lower than Full desc minima offset.", 166, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_166;
    }

    v5 = *(v3 + 152);
    v4 = *(v3 + 176);
  }

  if (v5 != *(v3 + 180) + v4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 60, "full_desc_min_data.offset == full_desc_max_data.offset + full_desc_max_data.max_size && Full desc maxima and Full desc minima should be contiguous in memory", 158, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_166:
    abort();
  }

  v133 = 0;
  v134 = 0;
  v135 = 0;
  v7 = *(v3 + 184);
  v8 = *(v3 + 160);
  if (v8 + v7)
  {
    sub_1E5421990(&v133, (v8 + v7));
    v9 = v134;
    if (v133 != v134)
    {
      v10 = v134 - v133 - 8;
      if (v10 < 0x18)
      {
        v11 = 0;
        v12 = v133;
        do
        {
LABEL_16:
          *v12++ = v11++;
        }

        while (v12 != v9);
        goto LABEL_17;
      }

      v13 = (v10 >> 3) + 1;
      v11 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      v12 = v133 + 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
      v14 = xmmword_1E5491CC0;
      v15 = (v133 + 16);
      v16 = vdupq_n_s64(2uLL);
      v17 = vdupq_n_s64(4uLL);
      v18 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v15[-1] = v14;
        *v15 = vaddq_s64(v14, v16);
        v14 = vaddq_s64(v14, v17);
        v15 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v13 != v11)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  sub_1E542ABBC(v3);
  if (*(a2 + 77) != 1)
  {
    goto LABEL_161;
  }

  v130 = *(v3 + 288);
  v19 = *(v3 + 284);
  v20 = *(v3 + 168);
  v21 = *(v3 + 160);
  v22 = *(a2 + 32);
  v23 = *(a2 + 34);
  v24 = *(a2 + 24);
  v25 = *(a2 + 4);
  v127 = *a2;
  v26 = *(a2 + 36);
  if ((v22 != 1 || v23 != 1) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 64, "(num_buckets_x == 1 && num_buckets_y == 1) && num_buckets x and y should be 1, other settings are currently not supported", 123, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_166;
  }

  if (!v26 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 65, "num_buckets_scale >= 1 && num of buckets scale should be >= 1", 63, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_166;
  }

  v27 = v21 + v19;
  if (v21 + v19 != (v134 - v133) >> 3)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 68, "(kp_desc_size + kp_desc_size_min) == kp_idx.size() && total kp_desc_size and kp_idx size should match", 103, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_166;
    }
  }

  v129 = v24;
  v126 = v23;
  v28 = v23 * v22;
  __p = 0;
  v137 = 0;
  v138 = 0;
  p_p = &__p;
  v140 = 0;
  if (v26 * v28)
  {
    if (((v26 * v28) & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1E5415338();
  }

  v132 = v26 * v28;
  v128 = v3;
  if (v27)
  {
    v29 = 0;
    v30 = 8 * v27;
    v31 = v25 / v126;
    do
    {
      v32 = *(v133 + v29);
      v33 = v130;
      if (v32 < v19)
      {
        v34 = 0;
      }

      else
      {
        v33 = v20;
        v34 = v19;
      }

      v35 = v33 + 76 * (v32 - v34);
      v38 = *(v35 + 64);
      v37 = (v35 + 64);
      v36 = v38;
      v39 = vcvtms_s32_f32(((v38 & 0x3FFFF) / (v127 / v22)) * 0.015625) + vcvtms_s32_f32(((HIDWORD(v38) & 0x7FFFF) / v31) * 0.015625) * v22;
      if (v39)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 97, "bin_index == 0 && bin index should always be 0", 48, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_166;
        }

        v36 = *v37;
        v32 = *(v133 + v29);
      }

      v40 = vcvts_n_f32_u64((v36 >> 23), 4uLL) * 0.25;
      if (v40 > (v26 - 1))
      {
        v40 = (v26 - 1);
      }

      *&p_p = (v37[1] & 0x7FFF);
      HIDWORD(p_p) = v32;
      sub_1E541AC90(__p + 24 * (v39 + v28 * vcvtms_s32_f32(v40)), &p_p);
      v29 += 8;
    }

    while (v30 != v29);
  }

  v134 = v133;
  v131 = v129 / v132;
  if (v131 * v132 > (v135 - v133) >> 3)
  {
    if (!((v131 * v132) >> 61))
    {
      operator new();
    }

    sub_1E5415338();
  }

  v41 = 0;
  while (2)
  {
    v42 = *(__p + 3 * v41);
    v43 = *(__p + 3 * v41 + 1);
    if ((v43 - v42) >> 3 >= v131)
    {
      v44 = v129 / v132;
    }

    else
    {
      v44 = (v43 - v42) >> 3;
    }

    v45 = &v42[2 * v44];
    if (v45 == v43)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v58 = (v43 - v42) >> 3;
      if (v58 < 2)
      {
        goto LABEL_48;
      }

      if (v58 == 3)
      {
        v99 = v42[2];
        v100 = *v42;
        v101 = *(v43 - 2);
        if (v99 <= *v42)
        {
          if (v101 > v99)
          {
            v42[2] = v101;
            *(v43 - 2) = v99;
            v114 = *(v42 + 3);
            v42[3] = *(v43 - 1);
            *(v43 - 1) = v114;
            v115 = v42[2];
            v116 = *v42;
            if (v115 > *v42)
            {
              *v42 = v115;
              v42[2] = v116;
              v117 = *(v42 + 1);
              v42[1] = v42[3];
              *(v42 + 3) = v117;
            }
          }

          goto LABEL_48;
        }

        if (v101 <= v99)
        {
          *v42 = v99;
          v42[2] = v100;
          v118 = *(v42 + 1);
          v42[1] = v42[3];
          *(v42 + 3) = v118;
          v119 = *(v43 - 2);
          if (v119 > v100)
          {
            v42[2] = v119;
            *(v43 - 2) = v100;
            v42[3] = *(v43 - 1);
            *(v43 - 1) = v118;
          }

          goto LABEL_48;
        }

        *v42 = v101;
        *(v43 - 2) = v100;
LABEL_135:
        v104 = *(v42 + 1);
        v42[1] = *(v43 - 1);
        *(v43 - 1) = v104;
        goto LABEL_48;
      }

      if (v58 == 2)
      {
        v102 = *(v43 - 2);
        v103 = *v42;
        if (v102 <= *v42)
        {
          goto LABEL_48;
        }

        *v42 = v102;
        *(v43 - 2) = v103;
        goto LABEL_135;
      }

      if (v58 <= 7)
      {
        while (v42 != v43 - 2)
        {
          v105 = v42;
          v42 += 2;
          if (v105 != v43 && v42 != v43)
          {
            v106 = *v105;
            v107 = *v105;
            v108 = v42;
            v109 = v105;
            v110 = v42;
            do
            {
              v111 = *v110;
              v110 += 2;
              v112 = v111;
              if (v111 > v107)
              {
                v107 = v112;
                v109 = v108;
              }

              v108 = v110;
            }

            while (v110 != v43);
            if (v109 != v105)
            {
              *v105 = *v109;
              *v109 = v106;
              v113 = *(v105 + 1);
              v105[1] = v109[1];
              *(v109 + 1) = v113;
            }
          }
        }

        goto LABEL_48;
      }

      v59 = &v42[2 * ((v43 - v42) >> 4)];
      v60 = v43 - 2;
      v61 = *(v43 - 2);
      v62 = *v59;
      v63 = *v42;
      if (*v59 > *v42)
      {
        if (v61 <= v62)
        {
          *v42 = v62;
          *v59 = v63;
          v64 = *(v42 + 1);
          v42[1] = v59[1];
          *(v59 + 1) = v64;
          if (*v60 <= v63)
          {
            goto LABEL_78;
          }

          *v59 = *v60;
          *(v43 - 2) = v63;
          v59[1] = *(v43 - 1);
        }

        else
        {
          *v42 = v61;
          *(v43 - 2) = v63;
          v64 = *(v42 + 1);
          v42[1] = *(v43 - 1);
        }

        *(v43 - 1) = v64;
LABEL_78:
        v68 = 1;
        v69 = *v42;
        v70 = *v59;
        if (*v42 <= *v59)
        {
          goto LABEL_90;
        }

        goto LABEL_79;
      }

      if (v61 > v62)
      {
        *v59 = v61;
        *(v43 - 2) = v62;
        v65 = *(v59 + 1);
        v59[1] = *(v43 - 1);
        *(v43 - 1) = v65;
        v66 = *v42;
        if (*v59 > *v42)
        {
          *v42 = *v59;
          *v59 = v66;
          v67 = *(v42 + 1);
          v42[1] = v59[1];
          *(v59 + 1) = v67;
          v68 = 1;
          v69 = *v42;
          v70 = *v59;
          if (*v42 <= *v59)
          {
            goto LABEL_90;
          }

          goto LABEL_79;
        }

        goto LABEL_78;
      }

      v68 = 0;
      v69 = *v42;
      v70 = *v59;
      if (*v42 <= *v59)
      {
LABEL_90:
        v71 = v43 - 2;
        while (1)
        {
          v71 -= 2;
          if (v71 == v42)
          {
            break;
          }

          if (*v71 > v70)
          {
            *v42 = *v71;
            *v71 = v69;
            v81 = *(v42 + 1);
            v42[1] = v71[1];
            *(v71 + 1) = v81;
            if (v68)
            {
              v68 = 2;
            }

            else
            {
              v68 = 1;
            }

            v72 = v42 + 2;
            if (v42 + 2 < v71)
            {
              goto LABEL_80;
            }

            goto LABEL_97;
          }
        }

        v86 = v42 + 2;
        if (v69 <= *v60)
        {
          if (v86 == v60)
          {
            goto LABEL_48;
          }

          while (1)
          {
            v87 = *v86;
            if (v69 > *v86)
            {
              break;
            }

            v86 += 2;
            if (v86 == v60)
            {
              goto LABEL_48;
            }
          }

          *v86 = *v60;
          *(v43 - 2) = v87;
          v91 = *(v86 + 1);
          v86[1] = *(v43 - 1);
          *(v43 - 1) = v91;
          v86 += 2;
        }

        if (v86 == v60)
        {
          goto LABEL_48;
        }

        while (1)
        {
          v92 = *v42;
          do
          {
            v93 = *v86;
            v86 += 2;
            v94 = v93;
          }

          while (v92 <= v93);
          v95 = v86 - 2;
          do
          {
            v96 = *(v60 - 2);
            v60 -= 2;
            v97 = v96;
          }

          while (v92 > v96);
          if (v95 >= v60)
          {
            break;
          }

          *(v86 - 2) = v97;
          *v60 = v94;
          v98 = *(v86 - 1);
          *(v86 - 1) = v60[1];
          *(v60 + 1) = v98;
        }

        v42 = v86 - 2;
        if (v95 > v45)
        {
          goto LABEL_48;
        }

        goto LABEL_128;
      }

LABEL_79:
      v71 = v43 - 2;
      v72 = v42 + 2;
      if (v42 + 2 >= v43 - 2)
      {
LABEL_97:
        v77 = v72;
      }

      else
      {
LABEL_80:
        v73 = v72;
        while (1)
        {
          v74 = *v59;
          do
          {
            v75 = *v73;
            v73 += 2;
            v76 = v75;
          }

          while (v75 > v74);
          v77 = v73 - 2;
          do
          {
            v78 = *(v71 - 2);
            v71 -= 2;
            v79 = v78;
          }

          while (v78 <= v74);
          if (v77 >= v71)
          {
            break;
          }

          *(v73 - 2) = v79;
          *v71 = v76;
          v80 = *(v73 - 1);
          *(v73 - 1) = v71[1];
          *(v71 + 1) = v80;
          ++v68;
          if (v77 == v59)
          {
            v59 = v71;
          }
        }
      }

      if (v77 != v59)
      {
        v82 = *v77;
        if (*v59 > *v77)
        {
          *v77 = *v59;
          *v59 = v82;
          v83 = *(v77 + 1);
          v77[1] = v59[1];
          *(v59 + 1) = v83;
          ++v68;
        }
      }

      if (v77 == v45)
      {
        goto LABEL_48;
      }

      if (!v68)
      {
        break;
      }

LABEL_103:
      if (v77 <= v45)
      {
        v42 = v77 + 2;
      }

      else
      {
        v43 = v77;
      }

LABEL_128:
      if (v43 == v45)
      {
        goto LABEL_48;
      }
    }

    if (v77 <= v45)
    {
      v88 = v77 + 2;
      while (v88 != v43)
      {
        v89 = *v88;
        v90 = *(v88 - 2);
        v88 += 2;
        if (v89 > v90)
        {
          goto LABEL_103;
        }
      }
    }

    else
    {
      while (v72 != v77)
      {
        v84 = *v72;
        v85 = *(v72 - 2);
        v72 += 2;
        if (v84 > v85)
        {
          goto LABEL_103;
        }
      }
    }

LABEL_48:
    if (v44)
    {
      v46 = v134;
      v47 = 4;
      do
      {
        v48 = *(*(__p + 3 * v41) + v47);
        if (v46 < v135)
        {
          *v46 = v48;
          v46 += 8;
        }

        else
        {
          v49 = v133;
          v50 = v46 - v133;
          v51 = (v46 - v133) >> 3;
          v52 = v51 + 1;
          if ((v51 + 1) >> 61)
          {
            sub_1E5415338();
          }

          v53 = v135 - v133;
          if ((v135 - v133) >> 2 > v52)
          {
            v52 = v53 >> 2;
          }

          if (v53 >= 0x7FFFFFFFFFFFFFF8)
          {
            v54 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v52;
          }

          if (v54)
          {
            if (!(v54 >> 61))
            {
              operator new();
            }

            sub_1E53E5340();
          }

          v55 = v51;
          v56 = (8 * v51);
          v57 = &v56[-v55];
          *v56 = v48;
          v46 = (v56 + 1);
          memcpy(v57, v49, v50);
          v133 = v57;
          v134 = v46;
          v135 = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        v134 = v46;
        v47 += 8;
        --v44;
      }

      while (v44);
    }

    if (++v41 != v132)
    {
      continue;
    }

    break;
  }

  sub_1E541ADA8(&v133);
  v120 = __p;
  if (__p)
  {
    v121 = v137;
    v122 = __p;
    if (v137 != __p)
    {
      v123 = v137;
      do
      {
        v125 = *(v123 - 3);
        v123 -= 24;
        v124 = v125;
        if (v125)
        {
          *(v121 - 2) = v124;
          operator delete(v124);
        }

        v121 = v123;
      }

      while (v123 != v120);
      v122 = __p;
    }

    v137 = v120;
    operator delete(v122);
  }

  v3 = v128;
LABEL_161:
  sub_1E542ACF8(v3, &v133);
  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }
}

void sub_1E5428BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_1E541B3D8(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E5428C20(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v5 = (a1 + 152);
  v4 = *(a1 + 152);
  v7 = (a1 + 176);
  v6 = *(a1 + 176);
  if (v6 >= v4 && *(a2 + 24) != 0)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 56, "(full_desc_max_data.offset < full_desc_min_data.offset || config.maxNumberOfKeypoints == 0) && Full desc maxima offset should be lower than Full desc minima offset.", 166, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_188;
    }

    v4 = *v5;
    v6 = *v7;
  }

  if (v4 != *(v3 + 180) + v6 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 60, "full_desc_min_data.offset == full_desc_max_data.offset + full_desc_max_data.max_size && Full desc maxima and Full desc minima should be contiguous in memory", 158, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_188:
    abort();
  }

  v164 = 0;
  v165 = 0;
  v166 = 0;
  v9 = *(v3 + 184);
  v10 = *(v3 + 160);
  if (v10 + v9)
  {
    sub_1E5421990(&v164, (v10 + v9));
    v11 = v165;
    if (v164 != v165)
    {
      v12 = v165 - v164 - 8;
      if (v12 >= 0x18)
      {
        v15 = (v12 >> 3) + 1;
        v13 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        v14 = v164 + 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
        v16 = xmmword_1E5491CC0;
        v17 = (v164 + 16);
        v18 = vdupq_n_s64(2uLL);
        v19 = vdupq_n_s64(4uLL);
        v20 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17[-1] = v16;
          *v17 = vaddq_s64(v16, v18);
          v16 = vaddq_s64(v16, v19);
          v17 += 2;
          v20 -= 4;
        }

        while (v20);
        if (v15 == v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v13 = 0;
        v14 = v164;
      }

      do
      {
        *v14++ = v13++;
      }

      while (v14 != v11);
    }
  }

LABEL_17:
  if (*(v3 + 20) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 297, "FlowType::kFlow2 == flow_ && Only valid in flow2", 50, &unk_1E549A011, 0, sub_1E548FDE0) || (*(v3 + 385) & 1) == 0 && (*(v3 + 386) & 1) == 0 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 299, "(full_descriptor_output_enabled_ || short_descriptor_output_enabled_) && Only valid when full desc enabled or short desc enabled", 130, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_188;
  }

  if ((*(v3 + 387) & 1) == 0)
  {
    v21 = *(v3 + 192);
    if (*(v3 + 600))
    {
      *(v3 + 288) = v21;
      *(v3 + 280) = *(v3 + 176);
      *(v3 + 284) = *(v3 + 184);
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
    }

    else
    {
      v22 = *(v3 + 168);
      v23 = *(v3 + 184);
      v24 = *(v3 + 160);
      *(v3 + 288) = v21;
      *(v3 + 280) = *(v3 + 176);
      *(v3 + 284) = v24 + v23;
      *(v5 + 1) = 0u;
      *(v5 + 2) = 0u;
      *v5 = 0u;
      if (v24)
      {
        memcpy((v21 + 44 * v23), v22, 44 * v24);
      }
    }
  }

  if (*(a2 + 77) == 1)
  {
    v160 = *(v3 + 288);
    v25 = *(v3 + 284);
    v26 = *(v3 + 168);
    v27 = *(v3 + 160);
    v28 = *(a2 + 32);
    v29 = *(a2 + 34);
    v30 = *(a2 + 24);
    v32 = *a2;
    v31 = *(a2 + 4);
    v33 = *(a2 + 36);
    if ((v28 == 1 && v29 == 1 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 64, "(num_buckets_x == 1 && num_buckets_y == 1) && num_buckets x and y should be 1, other settings are currently not supported", 123, &unk_1E549A011, 0, sub_1E548FDE0)) && (v33 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 65, "num_buckets_scale >= 1 && num of buckets scale should be >= 1", 63, &unk_1E549A011, 0, sub_1E548FDE0)))
    {
      v34 = v27 + v25;
      if (v34 == (v165 - v164) >> 3 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 68, "(kp_desc_size + kp_desc_size_min) == kp_idx.size() && total kp_desc_size and kp_idx size should match", 103, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        v156 = v32;
        v157 = v29;
        v35 = v29 * v28;
        v36 = v33 * (v29 * v28);
        __p = 0;
        v168 = 0;
        v169 = 0;
        p_p = &__p;
        v171 = 0;
        if (v36)
        {
          if ((v36 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_1E5415338();
        }

        v162 = v36;
        v158 = v3;
        if (v34)
        {
          v37 = 0;
          v38 = 8 * v34;
          v39 = v31 / v157;
          do
          {
            v40 = *(v164 + v37);
            v41 = v160;
            if (v40 < v25)
            {
              v42 = 0;
            }

            else
            {
              v41 = v26;
              v42 = v25;
            }

            v43 = v41 + 44 * (v40 - v42);
            v46 = *(v43 + 32);
            v45 = (v43 + 32);
            v44 = v46;
            v47 = vcvtms_s32_f32(((v46 & 0x3FFFF) / (v156 / v28)) * 0.015625) + vcvtms_s32_f32(((HIDWORD(v46) & 0x7FFFF) / v39) * 0.015625) * v28;
            if (v47)
            {
              if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 97, "bin_index == 0 && bin index should always be 0", 48, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_188;
              }

              v44 = *v45;
              v40 = *(v164 + v37);
            }

            v48 = vcvts_n_f32_u64((v44 >> 23), 4uLL) * 0.25;
            if (v48 > (v33 - 1))
            {
              v48 = (v33 - 1);
            }

            *&p_p = (v45[1] & 0x7FFF);
            HIDWORD(p_p) = v40;
            sub_1E541AC90(__p + 24 * (v47 + v35 * vcvtms_s32_f32(v48)), &p_p);
            v37 += 8;
          }

          while (v38 != v37);
        }

        v165 = v164;
        v161 = v30 / v162;
        if (v161 * v162 > (v166 - v164) >> 3)
        {
          if (!((v161 * v162) >> 61))
          {
            operator new();
          }

          sub_1E5415338();
        }

        v49 = 0;
LABEL_54:
        v50 = *(__p + 3 * v49);
        v51 = *(__p + 3 * v49 + 1);
        if ((v51 - v50) >> 3 >= v161)
        {
          v52 = v161;
        }

        else
        {
          v52 = (v51 - v50) >> 3;
        }

        v53 = &v50[2 * v52];
        if (v53 == v51)
        {
          goto LABEL_58;
        }

        while (1)
        {
          v66 = (v51 - v50) >> 3;
          if (v66 < 2)
          {
            goto LABEL_58;
          }

          if (v66 == 3)
          {
            v107 = v50[2];
            v108 = *v50;
            v109 = *(v51 - 2);
            if (v107 <= *v50)
            {
              if (v109 > v107)
              {
                v50[2] = v109;
                *(v51 - 2) = v107;
                v122 = *(v50 + 3);
                v50[3] = *(v51 - 1);
                *(v51 - 1) = v122;
                v123 = v50[2];
                v124 = *v50;
                if (v123 > *v50)
                {
                  *v50 = v123;
                  v50[2] = v124;
                  v125 = *(v50 + 1);
                  v50[1] = v50[3];
                  *(v50 + 3) = v125;
                }
              }

              goto LABEL_58;
            }

            if (v109 <= v107)
            {
              *v50 = v107;
              v50[2] = v108;
              v126 = *(v50 + 1);
              v50[1] = v50[3];
              *(v50 + 3) = v126;
              v127 = *(v51 - 2);
              if (v127 > v108)
              {
                v50[2] = v127;
                *(v51 - 2) = v108;
                v50[3] = *(v51 - 1);
                *(v51 - 1) = v126;
              }

              goto LABEL_58;
            }

            *v50 = v109;
            *(v51 - 2) = v108;
LABEL_145:
            v112 = *(v50 + 1);
            v50[1] = *(v51 - 1);
            *(v51 - 1) = v112;
            goto LABEL_58;
          }

          if (v66 == 2)
          {
            v110 = *(v51 - 2);
            v111 = *v50;
            if (v110 <= *v50)
            {
              goto LABEL_58;
            }

            *v50 = v110;
            *(v51 - 2) = v111;
            goto LABEL_145;
          }

          if (v66 <= 7)
          {
            while (v50 != v51 - 2)
            {
              v113 = v50;
              v50 += 2;
              if (v113 != v51 && v50 != v51)
              {
                v114 = *v113;
                v115 = *v113;
                v116 = v50;
                v117 = v113;
                v118 = v50;
                do
                {
                  v119 = *v118;
                  v118 += 2;
                  v120 = v119;
                  if (v119 > v115)
                  {
                    v115 = v120;
                    v117 = v116;
                  }

                  v116 = v118;
                }

                while (v118 != v51);
                if (v117 != v113)
                {
                  *v113 = *v117;
                  *v117 = v114;
                  v121 = *(v113 + 1);
                  v113[1] = v117[1];
                  *(v117 + 1) = v121;
                }
              }
            }

            goto LABEL_58;
          }

          v67 = &v50[2 * ((v51 - v50) >> 4)];
          v68 = v51 - 2;
          v69 = *(v51 - 2);
          v70 = *v67;
          v71 = *v50;
          if (*v67 > *v50)
          {
            break;
          }

          if (v69 > v70)
          {
            *v67 = v69;
            *(v51 - 2) = v70;
            v73 = *(v67 + 1);
            v67[1] = *(v51 - 1);
            *(v51 - 1) = v73;
            v74 = *v50;
            if (*v67 > *v50)
            {
              *v50 = *v67;
              *v67 = v74;
              v75 = *(v50 + 1);
              v50[1] = v67[1];
              *(v67 + 1) = v75;
              v76 = 1;
              v77 = *v50;
              v78 = *v67;
              if (*v50 <= *v67)
              {
                goto LABEL_100;
              }

              goto LABEL_89;
            }

            goto LABEL_88;
          }

          v76 = 0;
          v77 = *v50;
          v78 = *v67;
          if (*v50 <= *v67)
          {
LABEL_100:
            v79 = v51 - 2;
            while (1)
            {
              v79 -= 2;
              if (v79 == v50)
              {
                break;
              }

              if (*v79 > v78)
              {
                *v50 = *v79;
                *v79 = v77;
                v89 = *(v50 + 1);
                v50[1] = v79[1];
                *(v79 + 1) = v89;
                if (v76)
                {
                  v76 = 2;
                }

                else
                {
                  v76 = 1;
                }

                v80 = v50 + 2;
                if (v50 + 2 < v79)
                {
                  goto LABEL_90;
                }

                goto LABEL_107;
              }
            }

            v94 = v50 + 2;
            if (v77 <= *v68)
            {
              if (v94 == v68)
              {
                goto LABEL_58;
              }

              while (1)
              {
                v95 = *v94;
                if (v77 > *v94)
                {
                  break;
                }

                v94 += 2;
                if (v94 == v68)
                {
                  goto LABEL_58;
                }
              }

              *v94 = *v68;
              *(v51 - 2) = v95;
              v99 = *(v94 + 1);
              v94[1] = *(v51 - 1);
              *(v51 - 1) = v99;
              v94 += 2;
            }

            if (v94 == v68)
            {
              goto LABEL_58;
            }

            while (1)
            {
              v100 = *v50;
              do
              {
                v101 = *v94;
                v94 += 2;
                v102 = v101;
              }

              while (v100 <= v101);
              v103 = v94 - 2;
              do
              {
                v104 = *(v68 - 2);
                v68 -= 2;
                v105 = v104;
              }

              while (v100 > v104);
              if (v103 >= v68)
              {
                break;
              }

              *(v94 - 2) = v105;
              *v68 = v102;
              v106 = *(v94 - 1);
              *(v94 - 1) = v68[1];
              *(v68 + 1) = v106;
            }

            v50 = v94 - 2;
            if (v103 > v53)
            {
              goto LABEL_58;
            }

            goto LABEL_138;
          }

LABEL_89:
          v79 = v51 - 2;
          v80 = v50 + 2;
          if (v50 + 2 >= v51 - 2)
          {
LABEL_107:
            v85 = v80;
          }

          else
          {
LABEL_90:
            v81 = v80;
            while (1)
            {
              v82 = *v67;
              do
              {
                v83 = *v81;
                v81 += 2;
                v84 = v83;
              }

              while (v83 > v82);
              v85 = v81 - 2;
              do
              {
                v86 = *(v79 - 2);
                v79 -= 2;
                v87 = v86;
              }

              while (v86 <= v82);
              if (v85 >= v79)
              {
                break;
              }

              *(v81 - 2) = v87;
              *v79 = v84;
              v88 = *(v81 - 1);
              *(v81 - 1) = v79[1];
              *(v79 + 1) = v88;
              ++v76;
              if (v85 == v67)
              {
                v67 = v79;
              }
            }
          }

          if (v85 != v67)
          {
            v90 = *v85;
            if (*v67 > *v85)
            {
              *v85 = *v67;
              *v67 = v90;
              v91 = *(v85 + 1);
              v85[1] = v67[1];
              *(v67 + 1) = v91;
              ++v76;
            }
          }

          if (v85 == v53)
          {
            goto LABEL_58;
          }

          if (!v76)
          {
            if (v85 <= v53)
            {
              v96 = v85 + 2;
              while (v96 != v51)
              {
                v97 = *v96;
                v98 = *(v96 - 2);
                v96 += 2;
                if (v97 > v98)
                {
                  goto LABEL_113;
                }
              }
            }

            else
            {
              while (v80 != v85)
              {
                v92 = *v80;
                v93 = *(v80 - 2);
                v80 += 2;
                if (v92 > v93)
                {
                  goto LABEL_113;
                }
              }
            }

LABEL_58:
            if (v52)
            {
              v54 = v165;
              v55 = 4;
              do
              {
                v56 = *(*(__p + 3 * v49) + v55);
                if (v54 < v166)
                {
                  *v54 = v56;
                  v54 += 8;
                }

                else
                {
                  v57 = v164;
                  v58 = v54 - v164;
                  v59 = (v54 - v164) >> 3;
                  v60 = v59 + 1;
                  if ((v59 + 1) >> 61)
                  {
                    sub_1E5415338();
                  }

                  v61 = v166 - v164;
                  if ((v166 - v164) >> 2 > v60)
                  {
                    v60 = v61 >> 2;
                  }

                  if (v61 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v62 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v62 = v60;
                  }

                  if (v62)
                  {
                    if (!(v62 >> 61))
                    {
                      operator new();
                    }

                    sub_1E53E5340();
                  }

                  v63 = v59;
                  v64 = (8 * v59);
                  v65 = &v64[-v63];
                  *v64 = v56;
                  v54 = (v64 + 1);
                  memcpy(v65, v57, v58);
                  v164 = v65;
                  v165 = v54;
                  v166 = 0;
                  if (v57)
                  {
                    operator delete(v57);
                  }
                }

                v165 = v54;
                v55 += 8;
                --v52;
              }

              while (v52);
            }

            if (++v49 == v162)
            {
              sub_1E541ADA8(&v164);
              v128 = __p;
              v3 = v158;
              if (__p)
              {
                v129 = v168;
                v130 = __p;
                if (v168 != __p)
                {
                  v131 = v168;
                  do
                  {
                    v133 = *(v131 - 3);
                    v131 -= 24;
                    v132 = v133;
                    if (v133)
                    {
                      *(v129 - 2) = v132;
                      operator delete(v132);
                    }

                    v129 = v131;
                  }

                  while (v131 != v128);
                  v130 = __p;
                }

                v168 = v128;
                operator delete(v130);
              }

              goto LABEL_170;
            }

            goto LABEL_54;
          }

LABEL_113:
          if (v85 <= v53)
          {
            v50 = v85 + 2;
          }

          else
          {
            v51 = v85;
          }

LABEL_138:
          if (v51 == v53)
          {
            goto LABEL_58;
          }
        }

        if (v69 <= v70)
        {
          *v50 = v70;
          *v67 = v71;
          v72 = *(v50 + 1);
          v50[1] = v67[1];
          *(v67 + 1) = v72;
          if (*v68 <= v71)
          {
            goto LABEL_88;
          }

          *v67 = *v68;
          *(v51 - 2) = v71;
          v67[1] = *(v51 - 1);
        }

        else
        {
          *v50 = v69;
          *(v51 - 2) = v71;
          v72 = *(v50 + 1);
          v50[1] = *(v51 - 1);
        }

        *(v51 - 1) = v72;
LABEL_88:
        v76 = 1;
        v77 = *v50;
        v78 = *v67;
        if (*v50 <= *v67)
        {
          goto LABEL_100;
        }

        goto LABEL_89;
      }
    }

    goto LABEL_188;
  }

LABEL_170:
  if (*(v3 + 20) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 359, "FlowType::kFlow2 == flow_ && Only valid in flow2", 50, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_188;
  }

  v163 = *(v3 + 288);
  v134 = *(v3 + 168);
  v135 = (*(v3 + 160) + *(v3 + 284));
  v137 = v164;
  v136 = v165;
  v138 = v165 - v164;
  v139 = (v165 - v164) >> 3;
  if (v139 > v135)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 374, "final_num_keypoints <= (full_desc_data_.num_descriptors + full_desc_min_data_.num_descriptors)", 94, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_188;
    }
  }

  *(v3 + 144) = 0;
  if (v136 != v137)
  {
    if (v139 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1E5415338();
  }

  v144 = v164;
  if (v165 == v164)
  {
    *(*(v3 + 400) + 4) = v138 >> 3;
  }

  else
  {
    v159 = v138;
    v140 = 0;
    v141 = (v135 - 1);
    if (((v165 - v164) >> 3) <= 1)
    {
      v142 = 1;
    }

    else
    {
      v142 = (v165 - v164) >> 3;
    }

    v143 = 12;
    do
    {
      v145 = v144[v140];
      if (v145 > v141)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 389, "idx[i] <= max_valid_idx", 23, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_188;
        }

        v144 = v164;
        v145 = *(v164 + v140);
      }

      v146 = *(v3 + 284);
      v147 = v163 + 44 * v145;
      v148 = v145 >= v146;
      v149 = v134 + 44 * (v145 - v146);
      if (v148)
      {
        v150 = v149;
      }

      else
      {
        v150 = v147;
      }

      v151 = v3;
      v152 = *(v150 + 32);
      *(v143 - 12) = vcvts_n_f32_u64(v152 & 0x3FFFF, 6uLL);
      *(v143 - 8) = vcvts_n_f32_u64(HIDWORD(v152) & 0x7FFFF, 6uLL);
      v153 = pow(1.41421356, vcvts_n_f32_u64((v152 >> 23), 4uLL));
      v154 = (v152 >> 52) * 3.14159265 * 0.0078125;
      *&v153 = v153;
      v155 = v152 >> 63;
      v3 = v151;
      *(v143 + 4) = v155;
      *&v154 = v154;
      *(v143 - 4) = LODWORD(v154);
      *v143 = LODWORD(v153);
      *(v143 + 8) = (*(v150 + 40) & 0x7FFF);
      ++v140;
      v143 += 24;
    }

    while (v142 != v140);
    *(*(v151 + 400) + 4) = v159 >> 3;
    operator delete(0);
  }

  if (v164)
  {
    v165 = v164;
    operator delete(v164);
  }
}