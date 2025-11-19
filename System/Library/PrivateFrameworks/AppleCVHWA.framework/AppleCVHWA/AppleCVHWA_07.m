uint64_t sub_1E5459834(int64x2_t *a1, CVPixelBufferRef *a2)
{
  v4 = a1[28].i64[0] - a1[27].i64[1];
  v5 = v4 >> 8;
  if (a1->i8[12] == 1)
  {
    v6 = 0x4EC4EC4EC4EC4EC5 * ((a1[37].i64[0] - a1[36].i64[1]) >> 2);
    if (v6 >= 2)
    {
      LODWORD(v7) = v6 - 1;
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  else
  {
    v7 = (a1[31].i64[0] - a1[30].i64[1]) >> 3;
  }

  v8 = a1[20].i64[0];
  v9 = (24 * v5 + ((v4 >> 2) & 0xFFFFFFC0) + 127) & 0xFFFFFFC0;
  v10 = (8 * v7 + 576);
  if (a1[14].i8[8])
  {
    v11 = 4 * v5;
  }

  else
  {
    v11 = 0;
  }

  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], (v10 + v11 + v9), 1uLL, 0x4C303038u, 0, &pixelBufferOut) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetectionUtils/src/HwKeyHeaderParser.cpp", 397, "kCVReturnSuccess == err && Creating CVPixelBuffer failed!", 59, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_61;
  }

  v84 = a2;
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  if (!BaseAddress)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetectionUtils/src/HwKeyHeaderParser.cpp", 401, "output_buf_address && BaseAddress of output buffer could not be obtained", 74, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_61;
    }
  }

  v13 = (24 * v5 + 63) & 0xFFFFFFC0;
  BaseAddress[2] = 3;
  BaseAddress[10] = 64;
  BaseAddress[12] = v9;
  v14 = BaseAddress + v9;
  bzero(BaseAddress + v9, 0x240uLL);
  *(v14 + 1) = 1;
  v14[84] = 2;
  *(v14 + 29) = v8 & 0xFFFFFFF;
  *(v14 + 30) = HIDWORD(v8);
  v14[124] = a1->i32[2] == 3;
  *(v14 + 1) = v5;
  *(v14 + 20) = vmovn_s64(a1[1]);
  *v14 = a1[5].i64[0];
  *(v14 + 22) = v7;
  v15 = a1[14].u8[8];
  v14[86] = v15;
  *(v14 + 3) = v13;
  *(v14 + 4) = 6;
  if (v5)
  {
    v81 = v4 >> 8;
    v82 = v4;
    v16 = (8 * v7 + 576);
    v83 = v9;
    v17 = a1[27].i64[1];
    v18 = (v4 >> 8);
    v19 = (BaseAddress + 21);
    v20 = v18;
    do
    {
      *(v19 - 5) = *v17 * 0.015625;
      *(v19 - 4) = *(v17 + 4) * 0.015625;
      v21 = *(v17 + 12) * 3.14159265 * 0.0078125;
      *(v19 - 3) = v21;
      v22 = pow(1.41421356, (*(v17 + 8) * 0.0625));
      *(v19 - 2) = v22;
      *v19 = *(v17 + 28);
      *(v19 - 4) = *(v17 + 24) & 1;
      v19 += 6;
      v17 += 256;
      --v20;
    }

    while (v20);
    v23 = (BaseAddress + v13 + 64);
    v24 = 128;
    v10 = v16;
    do
    {
      v25 = (a1[27].i64[1] + v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      v23[2] = v25[2];
      v23[3] = v28;
      *v23 = v26;
      v23[1] = v27;
      v23 += 4;
      v24 += 256;
      --v18;
    }

    while (v18);
    v15 = v14[86];
    v4 = v82;
    v9 = v83;
    LODWORD(v5) = v81;
  }

  if (!v15)
  {
    goto LABEL_56;
  }

  v29 = *(v14 + 22);
  if (!v29)
  {
    goto LABEL_49;
  }

  *(v14 + 23) = 576;
  if (a1->i8[12] != 1)
  {
    if (a1->i32[2] || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetectionUtils/src/HwKeyHeaderParser.cpp", 357, "(ctx->config.hw_platform != hw::desgen::HwPlatform::kHwStaten) && Unsupported HW platform", 91, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      v34 = a1[30].i64[1];
      if (v29 >= 8)
      {
        v35 = v29 & 0xFFFFFFF8;
        v36 = (BaseAddress + v9 + 608);
        v37 = (v34 + 32);
        v38 = v35;
        do
        {
          v40 = *(v37 - 2);
          v39 = *(v37 - 1);
          v42 = *v37;
          v41 = v37[1];
          v37 += 4;
          *(v36 - 2) = v40;
          *(v36 - 1) = v39;
          *v36 = v42;
          v36[1] = v41;
          v36 += 4;
          v38 -= 8;
        }

        while (v38);
        if (v35 == v29)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v35 = 0;
      }

      v43 = v29 - v35;
      v44 = 8 * v35;
      v45 = (&BaseAddress[2 * v35 + 144] + v9);
      v46 = (v34 + v44);
      do
      {
        v47 = *v46++;
        *v45++ = v47;
        --v43;
      }

      while (v43);
      goto LABEL_49;
    }

LABEL_61:
    abort();
  }

  v30 = (v14 + 576);
  v31 = a1->i32[2];
  if (v31 == 2)
  {
    v48 = a1[36].i64[1];
    if (v29 >= 4)
    {
      v49 = v29 & 0xFFFFFFFC;
      v56 = xmmword_1E5492800;
      v57 = (v48 + 120);
      v58.i64[0] = 0x400000004;
      v58.i64[1] = 0x400000004;
      v59 = v49;
      do
      {
        v60 = *(v57 - 26);
        v61 = *(v57 - 13);
        v62 = *v57;
        v63 = v57[13];
        vst2q_f32(v30, *v56.i8);
        v30 += 8;
        v56 = vaddq_s32(v56, v58);
        v57 += 52;
        v59 -= 4;
      }

      while (v59);
      if (v49 == v29)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v49 = 0;
    }

    v64 = (v48 + 52 * v49 + 16);
    v65 = (&BaseAddress[2 * v49 + 145] + v9);
    do
    {
      v66 = *v64;
      v64 += 13;
      *(v65 - 1) = v49;
      *v65 = v66;
      ++v49;
      v65 += 2;
    }

    while (v29 != v49);
    goto LABEL_49;
  }

  if (v31 != 3)
  {
    goto LABEL_49;
  }

  v32 = a1[36].i64[1];
  if (v29 <= 3)
  {
    v33 = 0;
LABEL_41:
    v52 = v29 - v33;
    v53 = (v32 + 52 * v33 + 36);
    v54 = (&BaseAddress[2 * v33 + 145] + v9);
    do
    {
      v55 = *(v53 - 5);
      *(v54 - 1) = *v53;
      *v54 = v55;
      v53 += 13;
      v54 += 2;
      --v52;
    }

    while (v52);
    goto LABEL_49;
  }

  v33 = v29 & 0xFFFFFFFC;
  v50 = (v32 + 120);
  v51 = v33;
  do
  {
    v86.val[0].i32[0] = *(v50 - 21);
    v86.val[0].i32[1] = *(v50 - 8);
    v86.val[0].i32[2] = v50[5];
    v86.val[0].i32[3] = v50[18];
    v86.val[1].i32[0] = *(v50 - 26);
    v86.val[1].i32[1] = *(v50 - 13);
    v86.val[1].i32[2] = *v50;
    v86.val[1].i32[3] = v50[13];
    vst2q_f32(v30, v86);
    v30 += 8;
    v50 += 52;
    v51 -= 4;
  }

  while (v51);
  if (v33 != v29)
  {
    goto LABEL_41;
  }

LABEL_49:
  if (v5 && (a1->i8[12] & 1) == 0)
  {
    *(v14 + 24) = v10;
    v67 = a1[29].i64[0];
    v68 = (v4 >> 8);
    if (v68 < 8 || BaseAddress + v9 + v10 - v67 < 0x20)
    {
      v69 = 0;
LABEL_54:
      v70 = v68 - v69;
      v71 = 4 * v69;
      v72 = (&BaseAddress[v69] + v10 + v9);
      v73 = (v67 + v71);
      do
      {
        v74 = *v73++;
        *v72++ = v74;
        --v70;
      }

      while (v70);
      goto LABEL_56;
    }

    v76 = (v4 >> 8) & 7;
    v69 = v68 - v76;
    v77 = (v67 + 16);
    v78 = (BaseAddress + v9 + v10 + 16);
    v79 = v68 - v76;
    do
    {
      v80 = *v77;
      *(v78 - 1) = *(v77 - 1);
      *v78 = v80;
      v77 += 2;
      v78 += 2;
      v79 -= 8;
    }

    while (v79);
    if (v76)
    {
      goto LABEL_54;
    }
  }

LABEL_56:
  result = CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  *v84 = pixelBufferOut;
  return result;
}

uint64_t sub_1E5459E6C()
{
  if (qword_1EE30C490 == 1)
  {
    v0 = qword_1EE30C488;
  }

  else
  {
    sub_1E548F388();
    v0 = sub_1E548ED74();
    qword_1EE30C488 = v0;
    LOBYTE(qword_1EE30C490) = v1;
  }

  return qword_1EE30C490 & (v0 == 33058);
}

uint64_t sub_1E5459ED4(uint64_t result, int *a2, int *a3, int a4, int a5)
{
  v9 = result;
  if (result <= 0)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/FeatureDetection/src/KeyEngineUtils.cpp", 53, "dimension > 0", 13, "Input dimension should be greater than 0", 40, sub_1E548FDE0);
    if (result)
    {
      goto LABEL_31;
    }
  }

  if ((a5 & a4) == 0xFFFFFFFF || !a4 && a5 == v9)
  {
    *a2 = (v9 % 5) >> 1;
    *a3 = v9 / 5;
LABEL_7:
    a4 = *a2;
    goto LABEL_8;
  }

  if (a5 > v9 || a4 < 0 || a5 <= a4)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/FeatureDetection/src/KeyEngineUtils.cpp", 62, "expected_start >= 0 && expected_end > expected_start && expected_end <= dimension", 81, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
LABEL_31:
      abort();
    }
  }

  if (a5 - a4 >= 16)
  {
    v11 = (a5 - a4 + 4) / 5;
  }

  else
  {
    v11 = 4;
  }

  if (v11 >= (((1717986919 * v9) >> 33) + ((1717986919 * v9) >> 63)))
  {
    v11 = (((1717986919 * v9) >> 33) + ((1717986919 * v9) >> 63));
  }

  *a3 = v11;
  *a2 = a4;
  v12 = 5 * *a3 + a4;
  if (v12 >= v9)
  {
    a4 = v9 - 5 * *a3;
    *a2 = a4;
    v12 = 5 * *a3 + a4;
  }

  if (v12 < a5)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/FeatureDetection/src/KeyEngineUtils.cpp", 78, "(expected_end <= start + kNumRegionOfInterestBlocks * block_size)", 65, "User requested end of ROI should be in the HW ROI", 49, sub_1E548FDE0);
    if (!result)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_8:
  if (a4 < 0)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/FeatureDetection/src/KeyEngineUtils.cpp", 81, "start >= 0", 10, "Start should be greater than 0", 30, sub_1E548FDE0);
    if (result)
    {
      goto LABEL_31;
    }

    v10 = *a3;
    if (5 * *a3 + *a2 <= v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *a3;
    if (5 * *a3 + a4 <= v9)
    {
LABEL_10:
      if (v10 > 3)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/FeatureDetection/src/KeyEngineUtils.cpp", 83, "(start + block_size * kNumRegionOfInterestBlocks <= dimension)", 62, "End should be smaller than size", 31, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_31;
  }

  if (*a3 > 3)
  {
    return result;
  }

LABEL_16:
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/FeatureDetection/src/KeyEngineUtils.cpp", 84, "block_size >= kMinBlockSize", 27, "Each block has to be at least 4 pixels big", 42, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1E545A1B0(unsigned int a1, unsigned int a2, int a3, unint64_t a4)
{
  v6 = a4;
  v7 = fmaxf(log2f(a1 / a4) + 1.0, 0.0);
  v8 = fmaxf(log2f(a2 / v6) + 1.0, 0.0);
  if (v7 < v8)
  {
    v8 = v7;
  }

  if (v8 >= a3)
  {
    return a3;
  }

  else
  {
    return v8;
  }
}

void sub_1E545A238()
{
  memset(__p, 0, 24);
  __p[3] = __p;
  v1 = 0;
  operator new();
}

void sub_1E545A50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1E541AEA0(va);
  _Unwind_Resume(a1);
}

void sub_1E545A520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

int32x2_t sub_1E545A54C(uint64_t a1, int a2, int a3, void *a4, _DWORD *a5, void *a6, void *a7)
{
  *(a1 + 432) = 0x400000004;
  *(a1 + 400) = xmmword_1E5492870;
  *(a1 + 416) = unk_1E5492880;
  *(a1 + 576) = 0x3C00000024;
  *(a1 + 544) = xmmword_1E5492898;
  *(a1 + 560) = unk_1E54928A8;
  *(a1 + 1012) = 1;
  v7 = (a2 + 1) / 2;
  v8 = (a3 + 1) / 2;
  *(a1 + 164) = a3;
  *(a1 + 168) = v8;
  v9 = (v7 + 1) / 2;
  *(a1 + 188) = v7;
  *(a1 + 192) = v9;
  v10 = (v8 + 1) / 2;
  v11 = (v9 + 1) / 2;
  v12 = (v10 + 1) / 2;
  *(a1 + 172) = v10;
  *(a1 + 176) = v12;
  *(a1 + 196) = v11;
  *(a1 + 200) = (v11 + 1) / 2;
  *(a1 + 180) = (v12 + 1) / 2;
  *(a1 + 184) = a2;
  v14 = a2 < 321 || a3 < 321;
  *(a1 + 160) = v14;
  if (v14)
  {
    v15 = 8;
  }

  else
  {
    v15 = 10;
  }

  *(a1 + 204) = v15;
  *(a1 + 208) = v15 >> 1;
  result = vadd_s32(vdup_n_s32(v15), -2);
  *(a1 + 212) = result;
  *a1 = *a4;
  v17 = a5[1];
  *(a1 + 40) = *a5 / 5;
  *(a1 + 44) = v17;
  *(a1 + 80) = *a6;
  *(a1 + 120) = *a7;
  *(a1 + 8) = a4[1];
  v18 = a5[3];
  *(a1 + 48) = a5[2] / 5;
  *(a1 + 52) = v18;
  *(a1 + 88) = a6[1];
  *(a1 + 128) = a7[1];
  *(a1 + 16) = a4[2];
  v19 = a5[5];
  *(a1 + 56) = a5[4] / 5;
  *(a1 + 60) = v19;
  *(a1 + 96) = a6[2];
  *(a1 + 136) = a7[2];
  *(a1 + 24) = a4[3];
  v20 = a5[7];
  *(a1 + 64) = a5[6] / 5;
  *(a1 + 68) = v20;
  *(a1 + 104) = a6[3];
  *(a1 + 144) = a7[3];
  *(a1 + 32) = a4[4];
  v21 = a5[9];
  *(a1 + 72) = a5[8] / 5;
  *(a1 + 76) = v21;
  *(a1 + 112) = a6[4];
  *(a1 + 152) = a7[4];
  return result;
}

uint64_t sub_1E545A74C(uint64_t result)
{
  *(result + 124) = 1;
  *(result + 132) = 1;
  *(result + 140) = 1;
  *(result + 148) = 1;
  v1 = vdupq_n_s32(0x989680u);
  *(result + 1000) = v1.i64[0];
  v2.i64[0] = -1;
  v2.i64[1] = -1;
  *(result + 300) = v2;
  *(result + 156) = 1;
  *(result + 1008) = 10000000;
  *(result + 456) = -1;
  *(result + 316) = -1;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  v4 = *(result + 560);
  v5 = vsubq_s32(v3, *(result + 544));
  v6 = *(result + 416);
  v7 = vsubq_s32(v3, *(result + 400));
  *(result + 504) = 0u;
  *(result + 360) = 0u;
  *(result + 464) = v5;
  *(result + 480) = vsubq_s32(v3, v4);
  *(result + 320) = v7;
  *(result + 336) = vsubq_s32(v3, v6);
  *(result + 520) = 0u;
  *(result + 376) = 0u;
  *(result + 496) = vsub_s32(0x100000001, *(result + 576));
  *(result + 352) = vsub_s32(0x100000001, *(result + 432));
  *(result + 536) = 0;
  *(result + 392) = 0;
  *(result + 440) = xmmword_1E5492850;
  v8 = (result + 668);
  v9 = *(result + 84);
  *(result + 260) = v9;
  v10 = *(result + 4);
  *(result + 628) = v10;
  *(result + 712) = 0;
  *(result + 792) = v10;
  *(result + 264) = v9;
  *(result + 632) = v10;
  *(result + 800) = v10;
  v4.i32[0] = *(result + 44);
  v11 = *(result + 92);
  *(result + 268) = v11;
  *(result + 584) = 0u;
  v12 = *(result + 12);
  v4.i32[1] = *(result + 52);
  *(result + 636) = v12;
  *v7.i64 = (2 * v12);
  *(result + 808) = v7.i64[0];
  *(result + 272) = v11;
  *(result + 220) = v3;
  *(result + 640) = v12;
  *(result + 816) = v7.i64[0];
  *(result + 952) = v1;
  v13 = *(result + 100);
  *(result + 276) = v13;
  v14 = *(result + 20);
  *(result + 644) = v14;
  v4.i32[2] = *(result + 60);
  *(result + 720) = 0u;
  *(result + 736) = 0u;
  *v3.i64 = (4 * v14);
  *(result + 824) = v3.i64[0];
  *(result + 280) = v13;
  *(result + 236) = 0x100000001;
  *(result + 648) = v14;
  *(result + 832) = v3.i64[0];
  v15 = *(result + 108);
  *(result + 284) = v15;
  v16 = *(result + 148);
  *(result + 600) = 0u;
  v17 = *(result + 28);
  *(result + 652) = v17;
  v4.i32[3] = *(result + 68);
  v18 = (8 * v17);
  *(result + 840) = v18;
  *(result + 288) = v15;
  *(result + 244) = v16;
  *(result + 248) = v16;
  v6.i64[0] = __PAIR64__(v12, v10);
  v6.i64[1] = __PAIR64__(v17, v14);
  v25.val[0] = vminq_s32(vaddq_s32(v6, vaddq_s32(v4, v2)), vaddq_s32(*(result + 164), v2));
  v25.val[1] = v25.val[0];
  vst2q_f32(v8, v25);
  *(result + 656) = v17;
  *(result + 872) = v25.val[0].i32[0];
  *(result + 880) = v25.val[0].i32[0];
  *v2.i64 = (2 * v25.val[0].i32[1]);
  *(result + 888) = v2.i64[0];
  *(result + 896) = v2.i64[0];
  *v2.i64 = (4 * v25.val[0].i32[2]);
  *(result + 904) = v2.i64[0];
  *(result + 912) = v2.i64[0];
  *v2.i64 = (8 * v25.val[0].i32[3]);
  *(result + 920) = v2.i64[0];
  *(result + 848) = v18;
  *(result + 928) = v2.i64[0];
  *(result + 968) = v1;
  v19 = *(result + 116);
  *(result + 292) = v19;
  v20 = *(result + 156);
  *(result + 616) = 0;
  v21 = *(result + 36);
  *(result + 660) = v21;
  v22 = *(result + 180) - 1;
  if (v21 + *(result + 76) - 1 < v22)
  {
    v22 = v21 + *(result + 76) - 1;
  }

  *(result + 700) = v22;
  *(result + 752) = 0uLL;
  *(result + 768) = 0uLL;
  v23 = (16 * v21);
  *(result + 856) = v23;
  v24 = (16 * v22);
  *(result + 936) = v24;
  *(result + 296) = v19;
  *(result + 252) = v20;
  *(result + 256) = v20;
  *(result + 624) = 0;
  *(result + 664) = v21;
  *(result + 704) = v22;
  *(result + 784) = 0;
  *(result + 864) = v23;
  *(result + 944) = v24;
  *(result + 984) = v1;
  return result;
}

uint64_t sub_1E545A9EC(unsigned int *a1)
{
  v2 = a1 + 126;
  memset_pattern16(a1 + 126, &unk_1E5492860, 0x28uLL);
  v3 = a1[53];
  if (v3 <= 1)
  {
    memset_pattern16(a1 + 90, &unk_1E5492860, 0x28uLL);
  }

  else
  {
    v4 = a1 + 178;
    v5 = a1 + 218;
    __asm { FMOV            V3.2D, #0.5 }

    v11 = 1;
    v50 = _Q3;
    v51 = vdupq_n_s64(0x4060000000000000uLL);
    v49 = vdupq_n_s64(0x3F80000000000000uLL);
    do
    {
      v12 = *&v4[2 * v11];
      if (v12 <= *&v5[2 * v11])
      {
        v13 = v12 - (1 << (v11 >> 1));
        v14 = 7;
        v15 = v11;
        do
        {
          if (a1[54] >= v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = a1[54];
          }

          if (v15)
          {
            v17 = 1.9375;
          }

          else
          {
            v17 = 0.9375;
          }

          v18 = pow(1.41421356, v17);
          v19.f64[0] = v13 / (1 << (v16 >> 1));
          v19.f64[1] = floor(v18 * 4096.0 + 0.5) * 0.000244140625 * (1 << ((v15 >> 1) - (v16 >> 1) + 1));
          v20 = vmulq_f64(vrndmq_f64(vaddq_f64(vmulq_f64(v19, v51), v50)), v49);
          v21 = vcvtmd_s64_f64(floor(64.0 * vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0] + 0.5) * 0.015625);
          v22 = v21 & ~(v21 >> 31);
          if (v22 >= v2[v16])
          {
            v22 = v2[v16];
          }

          v2[v16] = v22;
          ++v15;
          --v14;
        }

        while (v14);
        v3 = a1[53];
        v5 = a1 + 218;
        v4 = a1 + 178;
      }

      ++v11;
    }

    while (v11 < v3);
    v23 = a1 + 90;
    memset_pattern16(a1 + 90, &unk_1E5492860, 0x28uLL);
    if (v3 >= 2)
    {
      for (i = 1; i != v3; v23[i] = v30)
      {
        while (1)
        {
          v25 = a1[i + 147];
          if (v25 <= a1[i + 167])
          {
            break;
          }

          if (++i == v3)
          {
            goto LABEL_30;
          }
        }

        if (i)
        {
          v29 = v25 - 1;
          if (v25)
          {
            v28 = (v25 - 1) >> 1;
          }

          else
          {
            v28 = (v25 >> 1) - 1;
          }

          v27 = vdup_n_s32(v29);
        }

        else
        {
          v26.i32[0] = 2 * v25;
          v26.i32[1] = a1[i + 147];
          v27 = vadd_s32(v26, -2);
          v28 = v27.i32[1];
        }

        *&v23[i - 1] = vmin_s32(vmax_s32(v27, 0), *&v23[i - 1]);
        ++i;
        v30 = v28 & ~(v28 >> 31);
        if (v30 >= v23[i])
        {
          v30 = v23[i];
        }
      }
    }
  }

LABEL_30:
  v31 = a1[111] + 1;
  a1[111] = v31;
  v32 = a1[52];
  if (v32 > 1)
  {
    v33 = v32 - 1;
    v34 = (a1 + 112);
    do
    {
      v31 = (v31 - 5) / 2;
      if (v31 < 0)
      {
        v31 = -1;
      }

      *v34++ = v31;
      --v33;
    }

    while (v33);
  }

  if (v32 >= 1)
  {
    if (v32 < 8)
    {
      v35 = 0;
LABEL_41:
      v40 = v32 - v35;
      v41 = &a1[v35 + 111];
      do
      {
        *(v41 - 36) = (*v41 & ~(*v41 >> 31)) - 1;
        ++v41;
        --v40;
      }

      while (v40);
      goto LABEL_43;
    }

    v35 = v32 & 0x7FFFFFF8;
    v36 = (a1 + 115);
    v37.i64[0] = -1;
    v37.i64[1] = -1;
    v38 = v35;
    do
    {
      v39 = vaddq_s32(vmaxq_s32(*v36, 0), v37);
      v36[-10] = vaddq_s32(vmaxq_s32(v36[-1], 0), v37);
      v36[-9] = v39;
      v36 += 2;
      v38 -= 8;
    }

    while (v38);
    if (v35 != v32)
    {
      goto LABEL_41;
    }
  }

LABEL_43:
  v42 = a1[54];
  if (v42 >= 1)
  {
    v43 = a1 + 117;
    v44 = 1;
    do
    {
      *v43 = a1[(v44 >> 1) + 111] - v43[20] + 1;
      ++v43;
      ++v44;
    }

    while (v42 + 1 != v44);
  }

  if ((v42 & 0x80000000) == 0)
  {
    v45 = 0;
    v46 = a1 + 80;
    v47 = (v42 + 1);
    do
    {
      *v46 = a1[(v45 >> 1) + 75] - v46[20] + 1;
      ++v46;
      ++v45;
      --v47;
    }

    while (v47);
  }

  return 1;
}

uint64_t sub_1E545ADE4(uint64_t a1)
{
  v1 = *(a1 + 212);
  if (v1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = a1 + 164;
    v5 = a1 + 300;
    v6 = a1;
    do
    {
      v8 = v2 + 1;
      v9 = v6[148];
      v10 = v6[168];
      if (v9 <= v10)
      {
        if (v9)
        {
          v11 = (v9 + 1) >> 1;
        }

        else
        {
          v11 = (v9 >> 1) + 1;
        }

        v12 = 2 * v9 + 2;
        v13 = v9 + 1;
        if (v8)
        {
          v12 = v9 + 1;
          v14 = v11;
        }

        else
        {
          v14 = v9 + 1;
        }

        v15 = v2 >> 1;
        if (*(a1 + 1012) == 1)
        {
          if (v12 >= *(v4 + 4 * v15) - 1)
          {
            v12 = *(v4 + 4 * v15) - 1;
          }

          if (v13 >= *(v4 + 4 * (v8 >> 1)) - 1)
          {
            v13 = *(v4 + 4 * (v8 >> 1)) - 1;
          }

          if (v14 >= *(v4 + 4 * ((v2 + 2) >> 1)) - 1)
          {
            v14 = *(v4 + 4 * ((v2 + 2) >> 1)) - 1;
          }
        }

        if (*(v5 + 4 * v15) >= v12 && *(v5 + 4 * (v8 >> 1)) >= v13 && *(v5 + 4 * ((v2 + 2) >> 1)) >= v14)
        {
          v7 = v9 + 1;
          v6[148] = v9 + 1;
          if (v9 >= v10 || v7 == v6[56] + v6[66])
          {
            if (v9 >= v10)
            {
              v7 = 1000000;
            }

            v6[66] = v7;
          }

          v3 = 1;
        }
      }

      ++v6;
      ++v2;
      --v1;
    }

    while (v1);
  }

  return v3 & 1;
}

uint64_t sub_1E545AF20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 212);
  if (v2 < 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = 0;
    v3 = a1 + 712;
    v4 = a1 + 872;
    v5 = a1 + 588;
    v47 = a1 + 668;
    v48 = a1 + 792;
    v49 = a1 + 952;
    v46 = a1 + 992;
    v6 = a1 + 260;
    v59 = a1 + 164;
    v7 = a1 + 444;
    __asm { FMOV            V0.2D, #0.5 }

    v61 = _Q0;
    v62 = vdupq_n_s64(0x4060000000000000uLL);
    v60 = vdupq_n_s64(0x3F80000000000000uLL);
    v13 = 1;
    v14 = 1;
    v55 = a1;
    v56 = a1 + 712;
    v53 = a1 + 588;
    v54 = a1 + 872;
    v52 = a1 + 260;
    do
    {
      v16 = *(v3 + 8 * v14);
      if (v16 <= *(v4 + 8 * v14))
      {
        v17 = v16 >> (v14 / 2);
        if (v17 < *(v5 + 4 * v14) && v17 < *(v6 + 4 * v14))
        {
          v58 = v2;
          v50 = v14 << 32;
          v51 = v16;
          v18 = *(v3 + 8 * v14) + (1 << (v14 / 2));
          v19 = *(a1 + 216);
          v20 = *(a1 + 1012);
          v21 = 7;
          v22 = v13;
          do
          {
            if (v19 >= v22)
            {
              v23 = v22;
            }

            else
            {
              v23 = v19;
            }

            if (v22)
            {
              v24 = 1.9375;
            }

            else
            {
              v24 = 0.9375;
            }

            v25 = pow(1.41421356, v24);
            v26.f64[0] = v18 / (1 << (v23 >> 1));
            v26.f64[1] = floor(v25 * 4096.0 + 0.5) * 0.000244140625 * (1 << ((v22 >> 1) - (v23 >> 1) + 1));
            v27 = vcvtpd_s64_f64(floor(vaddvq_f64(vmulq_f64(vrndmq_f64(vaddq_f64(vmulq_f64(v26, v62), v61)), v60)) * 64.0 + 0.5) * 0.015625);
            v28 = v23 >> 1;
            if (v20 && *(v59 + 4 * v28) - 1 < v27)
            {
              v27 = *(v59 + 4 * v28) - 1;
            }

            if (*(v7 + 4 * v28) < v27)
            {
              a1 = v55;
              v3 = v56;
              v5 = v53;
              v4 = v54;
              v6 = v52;
              v2 = v58;
              goto LABEL_4;
            }

            ++v22;
            --v21;
          }

          while (v21);
          v3 = v56;
          if (v16 >= *(v48 + 8 * v14))
          {
            v29 = a2;
            v31 = *(a2 + 8);
            v30 = *(a2 + 16);
            if (v31 >= v30)
            {
              v33 = *a2;
              v34 = v31 - *a2;
              v35 = (v34 >> 3) + 1;
              if (v35 >> 61)
              {
                sub_1E5415338();
              }

              v36 = v30 - v33;
              if (v36 >> 2 > v35)
              {
                v35 = v36 >> 2;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFF8)
              {
                v37 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                if (!(v37 >> 61))
                {
                  operator new();
                }

                sub_1E53E5340();
              }

              v38 = (8 * (v34 >> 3));
              *v38 = v50 | v51;
              v32 = v38 + 1;
              memcpy(0, v33, v34);
              *a2 = 0;
              *(a2 + 8) = v32;
              *(a2 + 16) = 0;
              if (v33)
              {
                operator delete(v33);
              }

              v29 = a2;
            }

            else
            {
              *v31 = v50 | v51;
              v32 = v31 + 1;
            }

            *(v29 + 8) = v32;
            v16 = *(v56 + 8 * v14);
          }

          v39 = v14 >> 1;
          v40 = v16 + (1 << (v14 >> 1));
          *(v56 + 8 * v14) = v40;
          v5 = v53;
          v41 = *(v53 + 4 * v14);
          if (v41 <= *(v47 + 4 * v14))
          {
            v42 = v41 + ~(v40 >> v39);
            if (v42 >= *(v49 + 4 * v14))
            {
              v42 = *(v49 + 4 * v14);
            }

            *(v49 + 4 * v14) = v42;
          }

          v43 = *(v49 + 4 * (v14 & 0xFFFFFFFE));
          if (*(v49 + 4 * (v14 & 0xFFFFFFFE) + 4) < v43)
          {
            v43 = *(v49 + 4 * (v14 & 0xFFFFFFFE) + 4);
          }

          *(v46 + 4 * v39) = v43;
          v4 = v54;
          a1 = v55;
          v2 = *(v55 + 212);
          v57 = 1;
          v6 = v52;
        }
      }

LABEL_4:
      v15 = v14++ < v2;
      ++v13;
    }

    while (v15);
  }

  return v57 & 1;
}

double sub_1E545B30C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1E545A74C(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  while (1)
  {
    v5 = *(a1 + 212);
    if (v5 < 1)
    {
      return result;
    }

    result = *(a1 + 720);
    if (result > *(a1 + 880))
    {
      v6 = 0;
      v7 = (a1 + 728);
      while (2 - (v5 + 1) != v6)
      {
        result = *v7;
        v8 = v7[20];
        --v6;
        ++v7;
        if (result <= v8)
        {
          if (-v6 < v5)
          {
            goto LABEL_2;
          }

          return result;
        }
      }

      return result;
    }

LABEL_2:
    sub_1E545A9EC(a1);
    sub_1E545ADE4(a1);
    sub_1E545AF20(a1, a2);
  }
}

void sub_1E545B3C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E545B3E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v145[14] = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    v7 = *(a6 + 8) - *a6;
    if (v7 >= 1)
    {
      bzero(*a6, v7);
    }

    v8 = *(a6 + 24);
    v9 = *(a6 + 32) - v8;
    if (v9 >= 1)
    {
      bzero(v8, v9);
    }

    v10 = *(a6 + 48);
    v11 = *(a6 + 56) - v10;
    if (v11 >= 1)
    {
      bzero(v10, v11);
    }

    v12 = *(a6 + 72);
    v13 = *(a6 + 80) - v12;
    if (v13 >= 1)
    {
      bzero(v12, v13);
    }

    v14 = *(a6 + 96);
    v15 = *(a6 + 104) - v14;
    if (v15 >= 1)
    {
      bzero(v14, v15);
    }

    v16 = *(a6 + 120);
    v17 = *(a6 + 128) - v16;
    if (v17 >= 1)
    {
      bzero(v16, v17);
    }

    v18 = *(a6 + 144);
    v19 = *(a6 + 152) - v18;
    if (v19 >= 1)
    {
      bzero(v18, v19);
    }

    v20 = *(a6 + 168);
    v21 = *(a6 + 176) - v20;
    if (v21 >= 1)
    {
      bzero(v20, v21);
    }
  }

  v134 = 0;
  v135 = 0;
  v136 = 0;
  v22 = *(a1 + 16);
  if (v22 != 2)
  {
    sub_1E545CE48(&v134, v22 - 2);
  }

  v23 = 0x8E38E38E38E38E39 * ((*(a2 + 56) - *(a2 + 48)) >> 4);
  if (v23 >= 3)
  {
    v127 = (v23 - 1);
    v24 = 1;
    do
    {
      v25 = v24 - 1;
      v26 = (*a3 + 24 * (v24 - 1));
      v27 = v26[1] - *v26;
      if (v27)
      {
        v28 = 0;
        v29 = 0xCCCCCCCCCCCCCCCDLL * (v27 >> 2);
        v129 = (a6 + 24 * v25);
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29;
        }

        do
        {
          v36 = *v26 + v28;
          v37 = *v36;
          v38 = *(v36 + 4);
          v39 = *(v36 + 8);
          v40 = *(v36 + 12);
          v41 = *(v36 + 16);
          if (v24 != v39 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKPValidatorAndRefiner.cpp", 63, "scale == kp_scale && scale mismatch", 37, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            abort();
          }

          v42 = v37 >> (v39 >> 1);
          v43 = v38 >> (v39 >> 1);
          if (sub_1E54738D4(a1, v42, v43, v24, v40, a2, v145))
          {
            v44 = v41 >= 0 ? v41 : -v41;
            if (*(a4 + 8 * v25) <= v44 && sub_1E5473A18(a1, v145, v42, v43, v24, v40, __p))
            {
              v45 = HIDWORD(v138) >> 5;
              if (HIDWORD(v138) >> 5 >= 0x3F)
              {
                v45 = 63;
              }

              v46 = *(*v129 + 4 * v45);
              if (v46 <= 0xFFE)
              {
                *(*v129 + 4 * v45) = v46 + 1;
              }

              v47 = v134 + 24 * v25;
              v48 = *(v47 + 1);
              v49 = *(v47 + 2);
              if (v48 < v49)
              {
                v31 = v142;
                v48[4] = v141;
                v48[5] = v31;
                v32 = v144;
                v48[6] = v143;
                v48[7] = v32;
                v33 = v138;
                *v48 = *__p;
                v48[1] = v33;
                v34 = v140;
                v48[2] = v139;
                v48[3] = v34;
                v35 = (v48 + 8);
              }

              else
              {
                v50 = *v47;
                v51 = v48 - *v47;
                v52 = v51 >> 7;
                v53 = (v51 >> 7) + 1;
                if (v53 >> 57)
                {
                  sub_1E5415338();
                }

                v54 = v49 - v50;
                if (v54 >> 6 > v53)
                {
                  v53 = v54 >> 6;
                }

                if (v54 >= 0x7FFFFFFFFFFFFF80)
                {
                  v55 = 0x1FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                if (v55)
                {
                  if (!(v55 >> 57))
                  {
                    operator new();
                  }

                  sub_1E53E5340();
                }

                v56 = v142;
                v57 = (v52 << 7);
                v57[4] = v141;
                v57[5] = v56;
                v58 = v144;
                v57[6] = v143;
                v57[7] = v58;
                v59 = v138;
                *v57 = *__p;
                v57[1] = v59;
                v60 = v140;
                v35 = (v52 << 7) + 128;
                v57[2] = v139;
                v57[3] = v60;
                memcpy(0, v50, v51);
                *v47 = 0;
                *(v47 + 1) = v35;
                *(v47 + 2) = 0;
                if (v50)
                {
                  operator delete(v50);
                }
              }

              *(v47 + 1) = v35;
            }
          }

          v28 += 20;
          --v30;
        }

        while (v30);
      }

      ++v24;
    }

    while (v24 != v127);
  }

  if ((*(a1 + 160) & 1) != 0 && v135 != v134)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v135 - v134) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1E5415338();
  }

  v61 = *(a1 + 8);
  v61[17] = 0;
  v61[18] = 0;
  v62 = v61[1];
  if (v62 <= 1)
  {
    v62 = 1;
  }

  v61[19] = v62 - 1;
  v63 = v61[20];
  v64 = v61[21] - v63;
  if (v64 >= 1)
  {
    bzero(v63, v64);
  }

  v61[23] = 0;
  v61[24] = 0;
  v65 = *v61;
  if (*v61)
  {
    v66 = v61[25];
    if (v65 == 1)
    {
      v67 = 0;
LABEL_68:
      v71 = v65 - v67;
      v72 = (v66 + 24 * v67 + 8);
      do
      {
        *v72 = *(v72 - 1);
        v72 += 3;
        --v71;
      }

      while (v71);
      goto LABEL_70;
    }

    v67 = v65 & 0xFFFFFFFFFFFFFFFELL;
    v68 = (v66 + 24);
    v69 = v65 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v70 = *v68;
      *(v68 - 2) = *(v68 - 3);
      v68[1] = v70;
      v68 += 6;
      v69 -= 2;
    }

    while (v69);
    if (v65 != v67)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  v73 = v61[28];
  v74 = v61[29] - v73;
  if (v74 >= 1)
  {
    bzero(v73, v74);
  }

  v76 = v134;
  v75 = v135;
  if (v135 != v134)
  {
    v77 = 0;
    while (1)
    {
      v78 = &v76[24 * v77];
      v79 = *v78;
      v80 = *(v78 + 1);
      if (*v78 != v80)
      {
        v81 = *(*(a1 + 8) + 224);
        v82 = *(a5 + 8 * v77);
        v133 = *(v78 + 1);
        if (*(v81 + 8 * v77) < v82)
        {
          break;
        }
      }

LABEL_75:
      if (++v77 >= 0xAAAAAAAAAAAAAAABLL * ((v75 - v76) >> 3))
      {
        goto LABEL_107;
      }
    }

    while (1)
    {
      if (*(v81 + 8 * v77) >= v82)
      {
        goto LABEL_81;
      }

      v88 = *(a1 + 8);
      v89 = *(v79 + 80);
      v90 = *(v79 + 96);
      v91 = *(v79 + 48);
      v141 = *(v79 + 64);
      v142 = v89;
      v143 = v90;
      v144 = *(v79 + 112);
      v92 = *(v79 + 16);
      *__p = *v79;
      v138 = v92;
      v139 = *(v79 + 32);
      v140 = v91;
      v93 = *(v79 + 40);
      if (v88[24] >= v77)
      {
        v96 = v88[23];
        if (v96 >= v93)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v88[24] = v77;
        v94 = v88[20];
        v95 = v88[21] - v94;
        if (v95 >= 1)
        {
          bzero(v94, v95);
        }

        v96 = 0;
        v88[23] = 0;
        v88[18] = 0;
        v88[19] = 0;
        v88[17] = 0;
        if (!v93)
        {
LABEL_87:
          if (v88[18] + v88[17] < v88[v77 + 9])
          {
            goto LABEL_94;
          }

          goto LABEL_81;
        }
      }

      v97 = v88[17];
      v98 = v88[18];
      v100 = v88[19];
      v99 = v88[20];
      v88[23] = v96 + 1;
      v88[18] = v98 + v97;
      v88[19] = v100 + 1;
      *(v99 + 8 * v100) = v97;
      while (1)
      {
        v101 = v88[18];
        v102 = v88[19] % v88[v77 + 1];
        v88[19] = v102;
        v88[17] = 0;
        v103 = v101 - *(v99 + 8 * v102);
        v88[18] = v103;
        v104 = v88[23];
        if (v104 >= v93)
        {
          break;
        }

        v88[23] = v104 + 1;
        v88[18] = v103;
        v88[19] = v102 + 1;
        *(v99 + 8 * v102) = 0;
      }

      if (v103 < v88[v77 + 9])
      {
LABEL_94:
        v105 = v88[25] + 24 * v77;
        v106 = *(v105 + 8);
        v107 = *(v105 + 16);
        if (v106 < v107)
        {
          v83 = v142;
          v106[4] = v141;
          v106[5] = v83;
          v84 = v144;
          v106[6] = v143;
          v106[7] = v84;
          v85 = v138;
          *v106 = *__p;
          v106[1] = v85;
          v86 = v140;
          v106[2] = v139;
          v106[3] = v86;
          v87 = (v106 + 8);
        }

        else
        {
          v108 = v82;
          v109 = v81;
          v110 = *v105;
          v111 = v106 - *v105;
          v112 = v111 >> 7;
          v113 = (v111 >> 7) + 1;
          if (v113 >> 57)
          {
            sub_1E5415338();
          }

          v114 = v107 - v110;
          if (v114 >> 6 > v113)
          {
            v113 = v114 >> 6;
          }

          if (v114 >= 0x7FFFFFFFFFFFFF80)
          {
            v115 = 0x1FFFFFFFFFFFFFFLL;
          }

          else
          {
            v115 = v113;
          }

          if (v115)
          {
            if (!(v115 >> 57))
            {
              operator new();
            }

            sub_1E53E5340();
          }

          v116 = v142;
          v117 = (v112 << 7);
          v117[4] = v141;
          v117[5] = v116;
          v118 = v144;
          v117[6] = v143;
          v117[7] = v118;
          v119 = v138;
          *v117 = *__p;
          v117[1] = v119;
          v120 = v140;
          v87 = (v112 << 7) + 128;
          v117[2] = v139;
          v117[3] = v120;
          memcpy(0, v110, v111);
          *v105 = 0;
          *(v105 + 8) = v87;
          *(v105 + 16) = 0;
          if (v110)
          {
            operator delete(v110);
          }

          v81 = v109;
          v82 = v108;
          v80 = v133;
        }

        *(v105 + 8) = v87;
        ++v88[17];
        ++*(v88[28] + 8 * v77);
      }

LABEL_81:
      v79 += 128;
      if (v79 == v80)
      {
        v76 = v134;
        v75 = v135;
        goto LABEL_75;
      }
    }
  }

LABEL_107:
  if (v76)
  {
    v121 = v76;
    if (v75 != v76)
    {
      v122 = v75;
      do
      {
        v124 = *(v122 - 3);
        v122 -= 24;
        v123 = v124;
        if (v124)
        {
          *(v75 - 2) = v123;
          operator delete(v123);
        }

        v75 = v122;
      }

      while (v122 != v76);
      v121 = v134;
    }

    v135 = v76;
    operator delete(v121);
  }
}

BOOL sub_1E545CD14(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[10];
  v3 = a2[10];
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    if (a1[11] == a2[11])
    {
      v5 = a1[7];
      v6 = a2[7];
      if (v5 != v6)
      {
        return v5 > v6;
      }
    }

    v4 = a1[9] >= a2[9];
  }

  return !v4;
}

void *sub_1E545CD60(void *a1)
{
  *a1 = &unk_1F5F0A268;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    sub_1E545F9EC((a1 + 1), v3);
  }

  return a1;
}

void sub_1E545CDC4(void *a1)
{
  *a1 = &unk_1F5F0A268;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    sub_1E545F9EC((a1 + 1), v3);
  }

  JUMPOUT(0x1E6928650);
}

void sub_1E545CE48(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1E5415338();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

__n128 sub_1E545CFF4(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5)
{
  v860 = *MEMORY[0x1E69E9840];
  while (2)
  {
    v9 = a2 - 8;
    v841 = a2 - 16;
    v10 = a2 - 24;
    n128_u64 = a1;
    v843 = a2;
    while (1)
    {
      while (1)
      {
        a1 = n128_u64;
        v12 = (a2 - n128_u64) >> 7;
        v13 = v12 - 2;
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v528 = (*a3)((n128_u64 + 128), n128_u64);
            v529 = (*a3)(v9, (n128_u64 + 128));
            if (v528)
            {
              if (v529)
              {
                goto LABEL_110;
              }

              v736 = *n128_u64;
              v737 = *(n128_u64 + 16);
              v738 = *(n128_u64 + 48);
              v854 = *(n128_u64 + 32);
              v855 = v738;
              v852 = v736;
              v853 = v737;
              v739 = *(n128_u64 + 64);
              v740 = *(n128_u64 + 80);
              v741 = *(n128_u64 + 112);
              v858 = *(n128_u64 + 96);
              v859 = v741;
              v856 = v739;
              v857 = v740;
              v742 = *(n128_u64 + 208);
              *(n128_u64 + 64) = *(n128_u64 + 192);
              *(n128_u64 + 80) = v742;
              v743 = *(n128_u64 + 240);
              *(n128_u64 + 96) = *(n128_u64 + 224);
              *(n128_u64 + 112) = v743;
              v744 = *(n128_u64 + 144);
              *n128_u64 = *(n128_u64 + 128);
              *(n128_u64 + 16) = v744;
              v745 = *(n128_u64 + 176);
              *(n128_u64 + 32) = *(n128_u64 + 160);
              *(n128_u64 + 48) = v745;
              v746 = v852;
              v747 = v853;
              v748 = v855;
              *(n128_u64 + 160) = v854;
              *(n128_u64 + 176) = v748;
              *(n128_u64 + 128) = v746;
              *(n128_u64 + 144) = v747;
              v749 = v856;
              v750 = v857;
              v751 = v859;
              *(n128_u64 + 224) = v858;
              *(n128_u64 + 240) = v751;
              *(n128_u64 + 192) = v749;
              *(n128_u64 + 208) = v750;
              if (!(*a3)(v9, (n128_u64 + 128)))
              {
                return result;
              }

              v752 = *(n128_u64 + 208);
              v856 = *(n128_u64 + 192);
              v857 = v752;
              v753 = *(n128_u64 + 240);
              v858 = *(n128_u64 + 224);
              v859 = v753;
              v754 = *(n128_u64 + 144);
              v852 = *(n128_u64 + 128);
              v853 = v754;
              v755 = *(n128_u64 + 176);
              v854 = *(n128_u64 + 160);
              v855 = v755;
              v756 = *v9;
              v757 = v9[1];
              v758 = v9[3];
              *(n128_u64 + 160) = v9[2];
              *(n128_u64 + 176) = v758;
              *(n128_u64 + 128) = v756;
              *(n128_u64 + 144) = v757;
              v760 = v9[6];
              v759 = v9[7];
              v761 = v9[5];
              *(n128_u64 + 192) = v9[4];
              *(n128_u64 + 208) = v761;
              *(n128_u64 + 224) = v760;
              *(n128_u64 + 240) = v759;
LABEL_111:
              v542 = v852;
              v543 = v853;
              v544 = v855;
              v9[2] = v854;
              v9[3] = v544;
              *v9 = v542;
              v9[1] = v543;
              result = v856;
              v545 = v857;
              v546 = v859;
              v9[6] = v858;
              v9[7] = v546;
              v9[4] = result;
              v9[5] = v545;
              return result;
            }

            if (!v529)
            {
              return result;
            }

            v669 = *(n128_u64 + 208);
            v856 = *(n128_u64 + 192);
            v857 = v669;
            v670 = *(n128_u64 + 240);
            v858 = *(n128_u64 + 224);
            v859 = v670;
            v671 = *(n128_u64 + 144);
            v852 = *(n128_u64 + 128);
            v853 = v671;
            v672 = *(n128_u64 + 176);
            v854 = *(n128_u64 + 160);
            v855 = v672;
            v673 = *v9;
            v674 = v9[1];
            v675 = v9[3];
            *(n128_u64 + 160) = v9[2];
            *(n128_u64 + 176) = v675;
            *(n128_u64 + 128) = v673;
            *(n128_u64 + 144) = v674;
            v677 = v9[6];
            v676 = v9[7];
            v678 = v9[5];
            *(n128_u64 + 192) = v9[4];
            *(n128_u64 + 208) = v678;
            *(n128_u64 + 224) = v677;
            *(n128_u64 + 240) = v676;
            v679 = v852;
            v680 = v853;
            v681 = v855;
            v9[2] = v854;
            v9[3] = v681;
            *v9 = v679;
            v9[1] = v680;
            v682 = v856;
            v683 = v857;
            v684 = v859;
            v9[6] = v858;
            v9[7] = v684;
            v9[4] = v682;
            v9[5] = v683;
LABEL_184:
            if ((*a3)((n128_u64 + 128), n128_u64))
            {
              v826 = *n128_u64;
              v827 = *(n128_u64 + 16);
              v828 = *(n128_u64 + 48);
              v854 = *(n128_u64 + 32);
              v855 = v828;
              v852 = v826;
              v853 = v827;
              v829 = *(n128_u64 + 64);
              v830 = *(n128_u64 + 80);
              v831 = *(n128_u64 + 112);
              v858 = *(n128_u64 + 96);
              v859 = v831;
              v856 = v829;
              v857 = v830;
              v832 = *(n128_u64 + 208);
              *(n128_u64 + 64) = *(n128_u64 + 192);
              *(n128_u64 + 80) = v832;
              v833 = *(n128_u64 + 240);
              *(n128_u64 + 96) = *(n128_u64 + 224);
              *(n128_u64 + 112) = v833;
              v834 = *(n128_u64 + 144);
              *n128_u64 = *(n128_u64 + 128);
              *(n128_u64 + 16) = v834;
              v835 = *(n128_u64 + 176);
              *(n128_u64 + 32) = *(n128_u64 + 160);
              *(n128_u64 + 48) = v835;
              v836 = v852;
              v837 = v853;
              v838 = v855;
              *(n128_u64 + 160) = v854;
              *(n128_u64 + 176) = v838;
              *(n128_u64 + 128) = v836;
              *(n128_u64 + 144) = v837;
              result = v856;
              v839 = v857;
              v840 = v859;
              *(n128_u64 + 224) = v858;
              *(n128_u64 + 240) = v840;
              *(n128_u64 + 192) = result;
              *(n128_u64 + 208) = v839;
            }

            return result;
          }

          if (v12 != 4)
          {
            if (v12 == 5)
            {
              result.n128_u64[0] = sub_1E545EA0C(n128_u64, (n128_u64 + 128), (n128_u64 + 256), (n128_u64 + 384), v9, a3).n128_u64[0];
              return result;
            }

            goto LABEL_10;
          }

          v547 = (*a3)((n128_u64 + 128), n128_u64);
          v548 = (*a3)((n128_u64 + 256), (n128_u64 + 128));
          if ((v547 & 1) == 0)
          {
            if (v548)
            {
              v685 = *(n128_u64 + 208);
              v856 = *(n128_u64 + 192);
              v857 = v685;
              v686 = *(n128_u64 + 240);
              v858 = *(n128_u64 + 224);
              v859 = v686;
              v687 = *(n128_u64 + 144);
              v852 = *(n128_u64 + 128);
              v853 = v687;
              v688 = *(n128_u64 + 176);
              v854 = *(n128_u64 + 160);
              v855 = v688;
              v689 = *(n128_u64 + 256);
              v690 = *(n128_u64 + 272);
              v691 = *(n128_u64 + 304);
              *(n128_u64 + 160) = *(n128_u64 + 288);
              *(n128_u64 + 176) = v691;
              *(n128_u64 + 128) = v689;
              *(n128_u64 + 144) = v690;
              v692 = *(n128_u64 + 320);
              v693 = *(n128_u64 + 336);
              v694 = *(n128_u64 + 368);
              *(n128_u64 + 224) = *(n128_u64 + 352);
              *(n128_u64 + 240) = v694;
              *(n128_u64 + 192) = v692;
              *(n128_u64 + 208) = v693;
              v695 = v852;
              v696 = v853;
              v697 = v855;
              *(n128_u64 + 288) = v854;
              *(n128_u64 + 304) = v697;
              *(n128_u64 + 256) = v695;
              *(n128_u64 + 272) = v696;
              v698 = v856;
              v699 = v857;
              v700 = v859;
              *(n128_u64 + 352) = v858;
              *(n128_u64 + 368) = v700;
              *(n128_u64 + 320) = v698;
              *(n128_u64 + 336) = v699;
              if ((*a3)((n128_u64 + 128), n128_u64))
              {
                v701 = *n128_u64;
                v702 = *(n128_u64 + 16);
                v703 = *(n128_u64 + 48);
                v854 = *(n128_u64 + 32);
                v855 = v703;
                v852 = v701;
                v853 = v702;
                v704 = *(n128_u64 + 64);
                v705 = *(n128_u64 + 80);
                v706 = *(n128_u64 + 112);
                v858 = *(n128_u64 + 96);
                v859 = v706;
                v856 = v704;
                v857 = v705;
                v707 = *(n128_u64 + 208);
                *(n128_u64 + 64) = *(n128_u64 + 192);
                *(n128_u64 + 80) = v707;
                v708 = *(n128_u64 + 240);
                *(n128_u64 + 96) = *(n128_u64 + 224);
                *(n128_u64 + 112) = v708;
                v709 = *(n128_u64 + 144);
                *n128_u64 = *(n128_u64 + 128);
                *(n128_u64 + 16) = v709;
                v710 = *(n128_u64 + 176);
                *(n128_u64 + 32) = *(n128_u64 + 160);
                *(n128_u64 + 48) = v710;
                v711 = v852;
                v712 = v853;
                v713 = v855;
                *(n128_u64 + 160) = v854;
                *(n128_u64 + 176) = v713;
                *(n128_u64 + 128) = v711;
                *(n128_u64 + 144) = v712;
                v714 = v856;
                v715 = v857;
                v716 = v859;
                *(n128_u64 + 224) = v858;
                *(n128_u64 + 240) = v716;
                *(n128_u64 + 192) = v714;
                *(n128_u64 + 208) = v715;
              }
            }

            goto LABEL_181;
          }

          if (v548)
          {
            v549 = *n128_u64;
            v550 = *(n128_u64 + 16);
            v551 = *(n128_u64 + 48);
            v854 = *(n128_u64 + 32);
            v855 = v551;
            v852 = v549;
            v853 = v550;
            v552 = *(n128_u64 + 64);
            v553 = *(n128_u64 + 80);
            v554 = *(n128_u64 + 112);
            v858 = *(n128_u64 + 96);
            v859 = v554;
            v856 = v552;
            v857 = v553;
            v555 = *(n128_u64 + 336);
            *(n128_u64 + 64) = *(n128_u64 + 320);
            *(n128_u64 + 80) = v555;
            v556 = *(n128_u64 + 368);
            *(n128_u64 + 96) = *(n128_u64 + 352);
            *(n128_u64 + 112) = v556;
            v557 = *(n128_u64 + 272);
            *n128_u64 = *(n128_u64 + 256);
            *(n128_u64 + 16) = v557;
            v558 = *(n128_u64 + 304);
            *(n128_u64 + 32) = *(n128_u64 + 288);
            *(n128_u64 + 48) = v558;
          }

          else
          {
            v762 = *n128_u64;
            v763 = *(n128_u64 + 16);
            v764 = *(n128_u64 + 48);
            v854 = *(n128_u64 + 32);
            v855 = v764;
            v852 = v762;
            v853 = v763;
            v765 = *(n128_u64 + 64);
            v766 = *(n128_u64 + 80);
            v767 = *(n128_u64 + 112);
            v858 = *(n128_u64 + 96);
            v859 = v767;
            v856 = v765;
            v857 = v766;
            v768 = *(n128_u64 + 208);
            *(n128_u64 + 64) = *(n128_u64 + 192);
            *(n128_u64 + 80) = v768;
            v769 = *(n128_u64 + 240);
            *(n128_u64 + 96) = *(n128_u64 + 224);
            *(n128_u64 + 112) = v769;
            v770 = *(n128_u64 + 144);
            *n128_u64 = *(n128_u64 + 128);
            *(n128_u64 + 16) = v770;
            v771 = *(n128_u64 + 176);
            *(n128_u64 + 32) = *(n128_u64 + 160);
            *(n128_u64 + 48) = v771;
            v772 = v852;
            v773 = v853;
            v774 = v855;
            *(n128_u64 + 160) = v854;
            *(n128_u64 + 176) = v774;
            *(n128_u64 + 128) = v772;
            *(n128_u64 + 144) = v773;
            v775 = v856;
            v776 = v857;
            v777 = v859;
            *(n128_u64 + 224) = v858;
            *(n128_u64 + 240) = v777;
            *(n128_u64 + 192) = v775;
            *(n128_u64 + 208) = v776;
            if (!(*a3)((n128_u64 + 256), (n128_u64 + 128)))
            {
              goto LABEL_181;
            }

            v778 = *(n128_u64 + 208);
            v856 = *(n128_u64 + 192);
            v857 = v778;
            v779 = *(n128_u64 + 240);
            v858 = *(n128_u64 + 224);
            v859 = v779;
            v780 = *(n128_u64 + 144);
            v852 = *(n128_u64 + 128);
            v853 = v780;
            v781 = *(n128_u64 + 176);
            v854 = *(n128_u64 + 160);
            v855 = v781;
            v782 = *(n128_u64 + 256);
            v783 = *(n128_u64 + 272);
            v784 = *(n128_u64 + 304);
            *(n128_u64 + 160) = *(n128_u64 + 288);
            *(n128_u64 + 176) = v784;
            *(n128_u64 + 128) = v782;
            *(n128_u64 + 144) = v783;
            v785 = *(n128_u64 + 320);
            v786 = *(n128_u64 + 336);
            v787 = *(n128_u64 + 368);
            *(n128_u64 + 224) = *(n128_u64 + 352);
            *(n128_u64 + 240) = v787;
            *(n128_u64 + 192) = v785;
            *(n128_u64 + 208) = v786;
          }

          v788 = v852;
          v789 = v853;
          v790 = v855;
          *(n128_u64 + 288) = v854;
          *(n128_u64 + 304) = v790;
          *(n128_u64 + 256) = v788;
          *(n128_u64 + 272) = v789;
          v791 = v856;
          v792 = v857;
          v793 = v859;
          *(n128_u64 + 352) = v858;
          *(n128_u64 + 368) = v793;
          *(n128_u64 + 320) = v791;
          *(n128_u64 + 336) = v792;
LABEL_181:
          if (!(*a3)(v9, (n128_u64 + 256)))
          {
            return result;
          }

          v794 = *(n128_u64 + 336);
          v856 = *(n128_u64 + 320);
          v857 = v794;
          v795 = *(n128_u64 + 368);
          v858 = *(n128_u64 + 352);
          v859 = v795;
          v796 = *(n128_u64 + 272);
          v852 = *(n128_u64 + 256);
          v853 = v796;
          v797 = *(n128_u64 + 304);
          v854 = *(n128_u64 + 288);
          v855 = v797;
          v798 = *v9;
          v799 = v9[1];
          v800 = v9[3];
          *(n128_u64 + 288) = v9[2];
          *(n128_u64 + 304) = v800;
          *(n128_u64 + 256) = v798;
          *(n128_u64 + 272) = v799;
          v802 = v9[6];
          v801 = v9[7];
          v803 = v9[5];
          *(n128_u64 + 320) = v9[4];
          *(n128_u64 + 336) = v803;
          *(n128_u64 + 352) = v802;
          *(n128_u64 + 368) = v801;
          v804 = v852;
          v805 = v853;
          v806 = v855;
          v9[2] = v854;
          v9[3] = v806;
          *v9 = v804;
          v9[1] = v805;
          v807 = v856;
          v808 = v857;
          v809 = v859;
          v9[6] = v858;
          v9[7] = v809;
          v9[4] = v807;
          v9[5] = v808;
          if (!(*a3)((n128_u64 + 256), (n128_u64 + 128)))
          {
            return result;
          }

          v810 = *(n128_u64 + 208);
          v856 = *(n128_u64 + 192);
          v857 = v810;
          v811 = *(n128_u64 + 240);
          v858 = *(n128_u64 + 224);
          v859 = v811;
          v812 = *(n128_u64 + 144);
          v852 = *(n128_u64 + 128);
          v853 = v812;
          v813 = *(n128_u64 + 176);
          v854 = *(n128_u64 + 160);
          v855 = v813;
          v814 = *(n128_u64 + 256);
          v815 = *(n128_u64 + 272);
          v816 = *(n128_u64 + 304);
          *(n128_u64 + 160) = *(n128_u64 + 288);
          *(n128_u64 + 176) = v816;
          *(n128_u64 + 128) = v814;
          *(n128_u64 + 144) = v815;
          v817 = *(n128_u64 + 320);
          v818 = *(n128_u64 + 336);
          v819 = *(n128_u64 + 368);
          *(n128_u64 + 224) = *(n128_u64 + 352);
          *(n128_u64 + 240) = v819;
          *(n128_u64 + 192) = v817;
          *(n128_u64 + 208) = v818;
          v820 = v852;
          v821 = v853;
          v822 = v855;
          *(n128_u64 + 288) = v854;
          *(n128_u64 + 304) = v822;
          *(n128_u64 + 256) = v820;
          *(n128_u64 + 272) = v821;
          v823 = v856;
          v824 = v857;
          v825 = v859;
          *(n128_u64 + 352) = v858;
          *(n128_u64 + 368) = v825;
          *(n128_u64 + 320) = v823;
          *(n128_u64 + 336) = v824;
          goto LABEL_184;
        }

        if (v12 < 2)
        {
          return result;
        }

        if (v12 == 2)
        {
          if (!(*a3)(v9, n128_u64))
          {
            return result;
          }

LABEL_110:
          v530 = *n128_u64;
          v531 = *(n128_u64 + 16);
          v532 = *(n128_u64 + 48);
          v854 = *(n128_u64 + 32);
          v855 = v532;
          v852 = v530;
          v853 = v531;
          v533 = *(n128_u64 + 64);
          v534 = *(n128_u64 + 80);
          v535 = *(n128_u64 + 112);
          v858 = *(n128_u64 + 96);
          v859 = v535;
          v856 = v533;
          v857 = v534;
          v536 = v9[7];
          v538 = v9[4];
          v537 = v9[5];
          *(n128_u64 + 96) = v9[6];
          *(n128_u64 + 112) = v536;
          *(n128_u64 + 64) = v538;
          *(n128_u64 + 80) = v537;
          v539 = *v9;
          v540 = v9[1];
          v541 = v9[3];
          *(n128_u64 + 32) = v9[2];
          *(n128_u64 + 48) = v541;
          *n128_u64 = v539;
          *(n128_u64 + 16) = v540;
          goto LABEL_111;
        }

LABEL_10:
        if (v12 <= 23)
        {
          v559 = (n128_u64 + 128);
          v560 = n128_u64 == a2 || v559 == a2;
          v561 = v560;
          if (a5)
          {
            if ((v561 & 1) == 0)
            {
              v562 = 0;
              v563 = n128_u64;
              do
              {
                v570 = v563;
                v563 = v559;
                if ((*a3)(v559, v570))
                {
                  v571 = *v563;
                  v572 = v563[1];
                  v573 = v563[3];
                  v854 = v563[2];
                  v855 = v573;
                  v852 = v571;
                  v853 = v572;
                  v574 = v563[4];
                  v575 = v563[5];
                  v576 = v563[7];
                  v858 = v563[6];
                  v859 = v576;
                  v856 = v574;
                  v857 = v575;
                  v577 = v562;
                  do
                  {
                    v578 = (n128_u64 + v577);
                    v579 = *(n128_u64 + v577 + 80);
                    v578[12] = *(n128_u64 + v577 + 64);
                    v578[13] = v579;
                    v580 = *(n128_u64 + v577 + 112);
                    v578[14] = *(n128_u64 + v577 + 96);
                    v578[15] = v580;
                    v581 = *(n128_u64 + v577 + 16);
                    v578[8] = *(n128_u64 + v577);
                    v578[9] = v581;
                    v582 = *(n128_u64 + v577 + 48);
                    v578[10] = *(n128_u64 + v577 + 32);
                    v578[11] = v582;
                    if (!v577)
                    {
                      v564 = n128_u64;
                      goto LABEL_125;
                    }

                    v577 -= 128;
                  }

                  while (((*a3)(&v852, (v577 + n128_u64)) & 1) != 0);
                  v564 = n128_u64 + v577 + 128;
LABEL_125:
                  v565 = v852;
                  v566 = v853;
                  v567 = v855;
                  *(v564 + 32) = v854;
                  *(v564 + 48) = v567;
                  *v564 = v565;
                  *(v564 + 16) = v566;
                  result = v856;
                  v568 = v857;
                  v569 = v859;
                  *(v564 + 96) = v858;
                  *(v564 + 112) = v569;
                  *(v564 + 64) = result;
                  *(v564 + 80) = v568;
                  a2 = v843;
                }

                v559 = v563 + 8;
                v562 += 128;
              }

              while (&v563[8] != a2);
            }
          }

          else if ((v561 & 1) == 0)
          {
            v717 = (n128_u64 - 128);
            do
            {
              v718 = a1;
              a1 = v559;
              if ((*a3)(v559, v718))
              {
                v719 = *a1;
                v720 = a1[1];
                v721 = a1[3];
                v854 = a1[2];
                v855 = v721;
                v852 = v719;
                v853 = v720;
                v722 = a1[4];
                v723 = a1[5];
                v724 = a1[7];
                v858 = a1[6];
                v859 = v724;
                v856 = v722;
                v857 = v723;
                v725 = v717;
                do
                {
                  v726 = v725[13];
                  v725[20] = v725[12];
                  v725[21] = v726;
                  v727 = v725[15];
                  v725[22] = v725[14];
                  v725[23] = v727;
                  v728 = v725[9];
                  v725[16] = v725[8];
                  v725[17] = v728;
                  v729 = v725[11];
                  v725[18] = v725[10];
                  v725[19] = v729;
                  v730 = (*a3)(&v852, v725);
                  v725 -= 8;
                }

                while ((v730 & 1) != 0);
                v731 = v852;
                v732 = v853;
                v733 = v855;
                v725[18] = v854;
                v725[19] = v733;
                v725[16] = v731;
                v725[17] = v732;
                result = v856;
                v734 = v857;
                v735 = v859;
                v725[22] = v858;
                v725[23] = v735;
                v725[20] = result;
                v725[21] = v734;
              }

              v559 = a1 + 8;
              v717 += 8;
            }

            while (&a1[8] != a2);
          }

          return result;
        }

        if (!a4)
        {
          if (n128_u64 != a2)
          {
            v583 = v13 >> 1;
            v584 = v13 >> 1;
            do
            {
              if (v583 >= v584)
              {
                v592 = (2 * (v584 & 0x1FFFFFFFFFFFFFFLL)) | 1;
                v593 = &a1[8 * v592];
                if (2 * (v584 & 0x1FFFFFFFFFFFFFFLL) + 2 < v12 && (*a3)(&a1[8 * v592], v593 + 8))
                {
                  v593 += 8;
                  v592 = 2 * (v584 & 0x1FFFFFFFFFFFFFFLL) + 2;
                }

                v594 = &a1[8 * v584];
                if (((*a3)(v593, v594) & 1) == 0)
                {
                  v595 = *v594;
                  v596 = v594[1];
                  v597 = v594[3];
                  v854 = v594[2];
                  v855 = v597;
                  v852 = v595;
                  v853 = v596;
                  v598 = v594[4];
                  v599 = v594[5];
                  v600 = v594[7];
                  v858 = v594[6];
                  v859 = v600;
                  v856 = v598;
                  v857 = v599;
                  do
                  {
                    v601 = v593;
                    v602 = *v593;
                    v603 = v593[1];
                    v604 = v593[3];
                    v594[2] = v593[2];
                    v594[3] = v604;
                    *v594 = v602;
                    v594[1] = v603;
                    v605 = v593[4];
                    v606 = v593[5];
                    v607 = v593[7];
                    v594[6] = v593[6];
                    v594[7] = v607;
                    v594[4] = v605;
                    v594[5] = v606;
                    if (v583 < v592)
                    {
                      break;
                    }

                    v608 = (2 * (v592 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                    v593 = &a1[8 * v608];
                    v609 = 2 * v592 + 2;
                    if (v609 < v12 && (*a3)(&a1[8 * v608], v593 + 8))
                    {
                      v593 += 8;
                      v608 = v609;
                    }

                    v594 = v601;
                    v592 = v608;
                  }

                  while (!(*a3)(v593, &v852));
                  v585 = v852;
                  v586 = v853;
                  v587 = v855;
                  v601[2] = v854;
                  v601[3] = v587;
                  *v601 = v585;
                  v601[1] = v586;
                  v588 = v856;
                  v589 = v857;
                  v590 = v859;
                  v601[6] = v858;
                  v601[7] = v590;
                  v601[4] = v588;
                  v601[5] = v589;
                }
              }

              v591 = v584-- <= 0;
            }

            while (!v591);
            v610 = v843;
            do
            {
              v616 = v610;
              v617 = 0;
              v618 = *a1;
              v619 = a1[1];
              v620 = a1[3];
              v846 = a1[2];
              v847 = v620;
              v844 = v618;
              v845 = v619;
              v621 = a1[4];
              v622 = a1[5];
              v623 = a1[7];
              v850 = a1[6];
              v851 = v623;
              v848 = v621;
              v849 = v622;
              v624 = a1;
              do
              {
                v631 = &v624[8 * v617];
                v632 = v631 + 8;
                v633 = (2 * v617) | 1;
                v634 = 2 * v617 + 2;
                if (v634 < v12)
                {
                  v635 = v631 + 16;
                  if ((*a3)(v631 + 8, v631 + 16))
                  {
                    v632 = v635;
                    v633 = v634;
                  }
                }

                v625 = *v632;
                v626 = v632[1];
                v627 = v632[3];
                v624[2] = v632[2];
                v624[3] = v627;
                *v624 = v625;
                v624[1] = v626;
                v628 = v632[4];
                v629 = v632[5];
                v630 = v632[7];
                v624[6] = v632[6];
                v624[7] = v630;
                v624[4] = v628;
                v624[5] = v629;
                v624 = v632;
                v617 = v633;
              }

              while (v633 <= ((v12 - 2) >> 1));
              v610 = v616 - 8;
              if (v632 == &v616[-8])
              {
                v611 = v844;
                v612 = v845;
                v613 = v847;
                v632[2] = v846;
                v632[3] = v613;
                *v632 = v611;
                v632[1] = v612;
                result = v848;
                v614 = v849;
                v615 = v851;
                v632[6] = v850;
                v632[7] = v615;
                v632[4] = result;
                v632[5] = v614;
              }

              else
              {
                v636 = *v610;
                v637 = v616[-7];
                v638 = v616[-5];
                v632[2] = v616[-6];
                v632[3] = v638;
                *v632 = v636;
                v632[1] = v637;
                v639 = v616[-4];
                v640 = v616[-3];
                v641 = v616[-1];
                v632[6] = v616[-2];
                v632[7] = v641;
                v632[4] = v639;
                v632[5] = v640;
                v642 = v851;
                v644 = v848;
                v643 = v849;
                v616[-2] = v850;
                v616[-1] = v642;
                v616[-4] = v644;
                v616[-3] = v643;
                result = v844;
                v645 = v845;
                v646 = v847;
                v616[-6] = v846;
                v616[-5] = v646;
                *v610 = result;
                v616[-7] = v645;
                v647 = (v632 - a1 + 128) >> 7;
                v591 = v647 < 2;
                v648 = v647 - 2;
                if (!v591)
                {
                  v649 = v648 >> 1;
                  v650 = &a1[8 * (v648 >> 1)];
                  if ((*a3)(v650, v632))
                  {
                    v651 = *v632;
                    v652 = v632[1];
                    v653 = v632[3];
                    v854 = v632[2];
                    v855 = v653;
                    v852 = v651;
                    v853 = v652;
                    v654 = v632[4];
                    v655 = v632[5];
                    v656 = v632[7];
                    v858 = v632[6];
                    v859 = v656;
                    v856 = v654;
                    v857 = v655;
                    do
                    {
                      v657 = v650;
                      v658 = *v650;
                      v659 = v650[1];
                      v660 = v650[3];
                      v632[2] = v650[2];
                      v632[3] = v660;
                      *v632 = v658;
                      v632[1] = v659;
                      v661 = v650[4];
                      v662 = v650[5];
                      v663 = v650[7];
                      v632[6] = v650[6];
                      v632[7] = v663;
                      v632[4] = v661;
                      v632[5] = v662;
                      if (!v649)
                      {
                        break;
                      }

                      v649 = (v649 - 1) >> 1;
                      v650 = &a1[8 * v649];
                      v632 = v657;
                    }

                    while (((*a3)(v650, &v852) & 1) != 0);
                    v664 = v852;
                    v665 = v853;
                    v666 = v855;
                    v657[2] = v854;
                    v657[3] = v666;
                    *v657 = v664;
                    v657[1] = v665;
                    result = v856;
                    v667 = v857;
                    v668 = v859;
                    v657[6] = v858;
                    v657[7] = v668;
                    v657[4] = result;
                    v657[5] = v667;
                  }
                }
              }

              v591 = v12-- <= 2;
            }

            while (!v591);
          }

          return result;
        }

        v14 = (n128_u64 + (v12 >> 1 << 7));
        v15 = *a3;
        if (v12 >= 0x81)
        {
          break;
        }

        v30 = v15(a1, &a1[8 * (v12 >> 1)]);
        v31 = (*a3)(v9, a1);
        if (v30)
        {
          if (v31)
          {
            v32 = *v14;
            v33 = v14[1];
            v34 = v14[3];
            v854 = v14[2];
            v855 = v34;
            v852 = v32;
            v853 = v33;
            v35 = v14[4];
            v36 = v14[5];
            v37 = v14[7];
            v858 = v14[6];
            v859 = v37;
            v856 = v35;
            v857 = v36;
            v38 = v9[7];
            v40 = v9[4];
            v39 = v9[5];
            v14[6] = v9[6];
            v14[7] = v38;
            v14[4] = v40;
            v14[5] = v39;
            v41 = *v9;
            v42 = v9[1];
            v43 = v9[3];
            v14[2] = v9[2];
            v14[3] = v43;
            *v14 = v41;
            v14[1] = v42;
          }

          else
          {
            v200 = *v14;
            v201 = v14[1];
            v202 = v14[3];
            v854 = v14[2];
            v855 = v202;
            v852 = v200;
            v853 = v201;
            v203 = v14[4];
            v204 = v14[5];
            v205 = v14[7];
            v858 = v14[6];
            v859 = v205;
            v856 = v203;
            v857 = v204;
            v206 = a1[7];
            v208 = a1[4];
            v207 = a1[5];
            v14[6] = a1[6];
            v14[7] = v206;
            v14[4] = v208;
            v14[5] = v207;
            v209 = *a1;
            v210 = a1[1];
            v211 = a1[3];
            v14[2] = a1[2];
            v14[3] = v211;
            *v14 = v209;
            v14[1] = v210;
            v212 = v852;
            v213 = v853;
            v214 = v855;
            a1[2] = v854;
            a1[3] = v214;
            *a1 = v212;
            a1[1] = v213;
            v215 = v856;
            v216 = v857;
            v217 = v859;
            a1[6] = v858;
            a1[7] = v217;
            a1[4] = v215;
            a1[5] = v216;
            if (!(*a3)(v9, a1))
            {
              goto LABEL_38;
            }

            v218 = *a1;
            v219 = a1[1];
            v220 = a1[3];
            v854 = a1[2];
            v855 = v220;
            v852 = v218;
            v853 = v219;
            v221 = a1[4];
            v222 = a1[5];
            v223 = a1[7];
            v858 = a1[6];
            v859 = v223;
            v856 = v221;
            v857 = v222;
            v224 = v9[7];
            v226 = v9[4];
            v225 = v9[5];
            a1[6] = v9[6];
            a1[7] = v224;
            a1[4] = v226;
            a1[5] = v225;
            v227 = *v9;
            v228 = v9[1];
            v229 = v9[3];
            a1[2] = v9[2];
            a1[3] = v229;
            *a1 = v227;
            a1[1] = v228;
          }

          v230 = v852;
          v231 = v853;
          v232 = v855;
          v9[2] = v854;
          v9[3] = v232;
          *v9 = v230;
          v9[1] = v231;
          v233 = v856;
          v234 = v857;
          v235 = v859;
          v9[6] = v858;
          v9[7] = v235;
          v9[4] = v233;
          v9[5] = v234;
LABEL_38:
          --a4;
          if (a5)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        if (!v31)
        {
          goto LABEL_38;
        }

        v80 = *a1;
        v81 = a1[1];
        v82 = a1[3];
        v854 = a1[2];
        v855 = v82;
        v852 = v80;
        v853 = v81;
        v83 = a1[4];
        v84 = a1[5];
        v85 = a1[7];
        v858 = a1[6];
        v859 = v85;
        v856 = v83;
        v857 = v84;
        v86 = v9[7];
        v88 = v9[4];
        v87 = v9[5];
        a1[6] = v9[6];
        a1[7] = v86;
        a1[4] = v88;
        a1[5] = v87;
        v89 = *v9;
        v90 = v9[1];
        v91 = v9[3];
        a1[2] = v9[2];
        a1[3] = v91;
        *a1 = v89;
        a1[1] = v90;
        v92 = v852;
        v93 = v853;
        v94 = v855;
        v9[2] = v854;
        v9[3] = v94;
        *v9 = v92;
        v9[1] = v93;
        v95 = v856;
        v96 = v857;
        v97 = v859;
        v9[6] = v858;
        v9[7] = v97;
        v9[4] = v95;
        v9[5] = v96;
        if (!(*a3)(a1, &a1[8 * (v12 >> 1)]))
        {
          goto LABEL_38;
        }

        v98 = *v14;
        v99 = v14[1];
        v100 = v14[3];
        v854 = v14[2];
        v855 = v100;
        v852 = v98;
        v853 = v99;
        v101 = v14[4];
        v102 = v14[5];
        v103 = v14[7];
        v858 = v14[6];
        v859 = v103;
        v856 = v101;
        v857 = v102;
        v104 = a1[7];
        v106 = a1[4];
        v105 = a1[5];
        v14[6] = a1[6];
        v14[7] = v104;
        v14[4] = v106;
        v14[5] = v105;
        v107 = *a1;
        v108 = a1[1];
        v109 = a1[3];
        v14[2] = a1[2];
        v14[3] = v109;
        *v14 = v107;
        v14[1] = v108;
        v110 = v852;
        v111 = v853;
        v112 = v855;
        a1[2] = v854;
        a1[3] = v112;
        *a1 = v110;
        a1[1] = v111;
        v113 = v856;
        v114 = v857;
        v115 = v859;
        a1[6] = v858;
        a1[7] = v115;
        a1[4] = v113;
        a1[5] = v114;
        --a4;
        if (a5)
        {
          goto LABEL_63;
        }

LABEL_62:
        if ((*a3)(a1 - 8, a1))
        {
          goto LABEL_63;
        }

        v487 = *a1;
        v488 = a1[1];
        v489 = a1[3];
        v846 = a1[2];
        v847 = v489;
        v844 = v487;
        v845 = v488;
        v490 = a1[4];
        v491 = a1[5];
        v492 = a1[7];
        v850 = a1[6];
        v851 = v492;
        v848 = v490;
        v849 = v491;
        if ((*a3)(&v844, v9))
        {
          n128_u64 = a1;
          a2 = v843;
          do
          {
            n128_u64 += 128;
          }

          while (((*a3)(&v844, n128_u64) & 1) == 0);
        }

        else
        {
          v493 = a1 + 8;
          a2 = v843;
          do
          {
            n128_u64 = v493;
            if (v493 >= v843)
            {
              break;
            }

            v494 = (*a3)(&v844, v493);
            v493 = (n128_u64 + 128);
          }

          while (!v494);
        }

        v495 = a2;
        if (n128_u64 < a2)
        {
          v495 = a2;
          do
          {
            v495 -= 8;
          }

          while (((*a3)(&v844, v495) & 1) != 0);
        }

        while (n128_u64 < v495)
        {
          v496 = *n128_u64;
          v497 = *(n128_u64 + 16);
          v498 = *(n128_u64 + 48);
          v854 = *(n128_u64 + 32);
          v855 = v498;
          v852 = v496;
          v853 = v497;
          v499 = *(n128_u64 + 64);
          v500 = *(n128_u64 + 80);
          v501 = *(n128_u64 + 112);
          v858 = *(n128_u64 + 96);
          v859 = v501;
          v856 = v499;
          v857 = v500;
          v502 = v495[7];
          v504 = v495[4];
          v503 = v495[5];
          *(n128_u64 + 96) = v495[6];
          *(n128_u64 + 112) = v502;
          *(n128_u64 + 64) = v504;
          *(n128_u64 + 80) = v503;
          v505 = *v495;
          v506 = v495[1];
          v507 = v495[3];
          *(n128_u64 + 32) = v495[2];
          *(n128_u64 + 48) = v507;
          *n128_u64 = v505;
          *(n128_u64 + 16) = v506;
          v508 = v852;
          v509 = v853;
          v510 = v855;
          v495[2] = v854;
          v495[3] = v510;
          *v495 = v508;
          v495[1] = v509;
          v511 = v856;
          v512 = v857;
          v513 = v859;
          v495[6] = v858;
          v495[7] = v513;
          v495[4] = v511;
          v495[5] = v512;
          do
          {
            n128_u64 += 128;
          }

          while (!(*a3)(&v844, n128_u64));
          do
          {
            v495 -= 8;
          }

          while (((*a3)(&v844, v495) & 1) != 0);
        }

        v514 = (n128_u64 - 128);
        if ((n128_u64 - 128) != a1)
        {
          v515 = *v514;
          v516 = *(n128_u64 - 112);
          v517 = *(n128_u64 - 80);
          a1[2] = *(n128_u64 - 96);
          a1[3] = v517;
          *a1 = v515;
          a1[1] = v516;
          v518 = *(n128_u64 - 64);
          v519 = *(n128_u64 - 48);
          v520 = *(n128_u64 - 16);
          a1[6] = *(n128_u64 - 32);
          a1[7] = v520;
          a1[4] = v518;
          a1[5] = v519;
        }

        a5 = 0;
        v521 = v844;
        v522 = v845;
        v523 = v847;
        *(n128_u64 - 96) = v846;
        *(n128_u64 - 80) = v523;
        *v514 = v521;
        *(n128_u64 - 112) = v522;
        result = v848;
        v524 = v849;
        v525 = v851;
        *(n128_u64 - 32) = v850;
        *(n128_u64 - 16) = v525;
        *(n128_u64 - 64) = result;
        *(n128_u64 - 48) = v524;
      }

      v16 = v15(&a1[8 * (v12 >> 1)], a1);
      v17 = (*a3)(v9, &a1[8 * (v12 >> 1)]);
      if (v16)
      {
        if (v17)
        {
          v18 = *a1;
          v19 = a1[1];
          v20 = a1[3];
          v854 = a1[2];
          v855 = v20;
          v852 = v18;
          v853 = v19;
          v21 = a1[4];
          v22 = a1[5];
          v23 = a1[7];
          v858 = a1[6];
          v859 = v23;
          v856 = v21;
          v857 = v22;
          v24 = v9[7];
          v26 = v9[4];
          v25 = v9[5];
          a1[6] = v9[6];
          a1[7] = v24;
          a1[4] = v26;
          a1[5] = v25;
          v27 = *v9;
          v28 = v9[1];
          v29 = v9[3];
          a1[2] = v9[2];
          a1[3] = v29;
          *a1 = v27;
          a1[1] = v28;
        }

        else
        {
          v116 = *a1;
          v117 = a1[1];
          v118 = a1[3];
          v854 = a1[2];
          v855 = v118;
          v852 = v116;
          v853 = v117;
          v119 = a1[4];
          v120 = a1[5];
          v121 = a1[7];
          v858 = a1[6];
          v859 = v121;
          v856 = v119;
          v857 = v120;
          v122 = v14[7];
          v124 = v14[4];
          v123 = v14[5];
          a1[6] = v14[6];
          a1[7] = v122;
          a1[4] = v124;
          a1[5] = v123;
          v125 = *v14;
          v126 = v14[1];
          v127 = v14[3];
          a1[2] = v14[2];
          a1[3] = v127;
          *a1 = v125;
          a1[1] = v126;
          v128 = v852;
          v129 = v853;
          v130 = v855;
          v14[2] = v854;
          v14[3] = v130;
          *v14 = v128;
          v14[1] = v129;
          v131 = v856;
          v132 = v857;
          v133 = v859;
          v14[6] = v858;
          v14[7] = v133;
          v14[4] = v131;
          v14[5] = v132;
          if (!(*a3)(v9, &a1[8 * (v12 >> 1)]))
          {
            goto LABEL_29;
          }

          v134 = *v14;
          v135 = v14[1];
          v136 = v14[3];
          v854 = v14[2];
          v855 = v136;
          v852 = v134;
          v853 = v135;
          v137 = v14[4];
          v138 = v14[5];
          v139 = v14[7];
          v858 = v14[6];
          v859 = v139;
          v856 = v137;
          v857 = v138;
          v140 = v9[7];
          v142 = v9[4];
          v141 = v9[5];
          v14[6] = v9[6];
          v14[7] = v140;
          v14[4] = v142;
          v14[5] = v141;
          v143 = *v9;
          v144 = v9[1];
          v145 = v9[3];
          v14[2] = v9[2];
          v14[3] = v145;
          *v14 = v143;
          v14[1] = v144;
        }

        v146 = v852;
        v147 = v853;
        v148 = v855;
        v9[2] = v854;
        v9[3] = v148;
        *v9 = v146;
        v9[1] = v147;
        v149 = v856;
        v150 = v857;
        v151 = v859;
        v9[6] = v858;
        v9[7] = v151;
        v9[4] = v149;
        v9[5] = v150;
      }

      else if (v17)
      {
        v44 = *v14;
        v45 = v14[1];
        v46 = v14[3];
        v854 = v14[2];
        v855 = v46;
        v852 = v44;
        v853 = v45;
        v47 = v14[4];
        v48 = v14[5];
        v49 = v14[7];
        v858 = v14[6];
        v859 = v49;
        v856 = v47;
        v857 = v48;
        v50 = v9[7];
        v52 = v9[4];
        v51 = v9[5];
        v14[6] = v9[6];
        v14[7] = v50;
        v14[4] = v52;
        v14[5] = v51;
        v53 = *v9;
        v54 = v9[1];
        v55 = v9[3];
        v14[2] = v9[2];
        v14[3] = v55;
        *v14 = v53;
        v14[1] = v54;
        v56 = v852;
        v57 = v853;
        v58 = v855;
        v9[2] = v854;
        v9[3] = v58;
        *v9 = v56;
        v9[1] = v57;
        v59 = v856;
        v60 = v857;
        v61 = v859;
        v9[6] = v858;
        v9[7] = v61;
        v9[4] = v59;
        v9[5] = v60;
        if ((*a3)(&a1[8 * (v12 >> 1)], a1))
        {
          v62 = *a1;
          v63 = a1[1];
          v64 = a1[3];
          v854 = a1[2];
          v855 = v64;
          v852 = v62;
          v853 = v63;
          v65 = a1[4];
          v66 = a1[5];
          v67 = a1[7];
          v858 = a1[6];
          v859 = v67;
          v856 = v65;
          v857 = v66;
          v68 = v14[7];
          v70 = v14[4];
          v69 = v14[5];
          a1[6] = v14[6];
          a1[7] = v68;
          a1[4] = v70;
          a1[5] = v69;
          v71 = *v14;
          v72 = v14[1];
          v73 = v14[3];
          a1[2] = v14[2];
          a1[3] = v73;
          *a1 = v71;
          a1[1] = v72;
          v74 = v852;
          v75 = v853;
          v76 = v855;
          v14[2] = v854;
          v14[3] = v76;
          *v14 = v74;
          v14[1] = v75;
          v77 = v856;
          v78 = v857;
          v79 = v859;
          v14[6] = v858;
          v14[7] = v79;
          v14[4] = v77;
          v14[5] = v78;
        }
      }

LABEL_29:
      v152 = v14 - 8;
      v153 = (*a3)(v14 - 8, a1 + 8);
      v154 = (*a3)(v841, v14 - 8);
      if (v153)
      {
        if (v154)
        {
          v155 = a1[13];
          v856 = a1[12];
          v857 = v155;
          v156 = a1[15];
          v858 = a1[14];
          v859 = v156;
          v157 = a1[9];
          v852 = a1[8];
          v853 = v157;
          v158 = a1[11];
          v854 = a1[10];
          v855 = v158;
          v159 = v841;
          v160 = *v841;
          v161 = v841[1];
          v162 = v841[3];
          a1[10] = v841[2];
          a1[11] = v162;
          a1[8] = v160;
          a1[9] = v161;
          v164 = v841[6];
          v163 = v841[7];
          v165 = v841[5];
          a1[12] = v841[4];
          a1[13] = v165;
          a1[14] = v164;
          a1[15] = v163;
        }

        else
        {
          v236 = a1[13];
          v856 = a1[12];
          v857 = v236;
          v237 = a1[15];
          v858 = a1[14];
          v859 = v237;
          v238 = a1[9];
          v852 = a1[8];
          v853 = v238;
          v239 = a1[11];
          v854 = a1[10];
          v855 = v239;
          v240 = *v152;
          v241 = v14[-7];
          v242 = v14[-5];
          a1[10] = v14[-6];
          a1[11] = v242;
          a1[8] = v240;
          a1[9] = v241;
          v244 = v14[-2];
          v243 = v14[-1];
          v245 = v14[-3];
          a1[12] = v14[-4];
          a1[13] = v245;
          a1[14] = v244;
          a1[15] = v243;
          v246 = v852;
          v247 = v853;
          v248 = v855;
          v14[-6] = v854;
          v14[-5] = v248;
          *v152 = v246;
          v14[-7] = v247;
          v249 = v856;
          v250 = v857;
          v251 = v859;
          v14[-2] = v858;
          v14[-1] = v251;
          v14[-4] = v249;
          v14[-3] = v250;
          if (!(*a3)(v841, v14 - 8))
          {
            goto LABEL_43;
          }

          v252 = *v152;
          v253 = v14[-7];
          v254 = v14[-5];
          v854 = v14[-6];
          v855 = v254;
          v852 = v252;
          v853 = v253;
          v255 = v14[-4];
          v256 = v14[-3];
          v257 = v14[-1];
          v858 = v14[-2];
          v859 = v257;
          v856 = v255;
          v857 = v256;
          v159 = v841;
          v258 = v841[7];
          v260 = v841[4];
          v259 = v841[5];
          v14[-2] = v841[6];
          v14[-1] = v258;
          v14[-4] = v260;
          v14[-3] = v259;
          v261 = *v841;
          v262 = v841[1];
          v263 = v841[3];
          v14[-6] = v841[2];
          v14[-5] = v263;
          *v152 = v261;
          v14[-7] = v262;
        }

        v264 = v852;
        v265 = v853;
        v266 = v855;
        v159[2] = v854;
        v159[3] = v266;
        *v159 = v264;
        v159[1] = v265;
        v267 = v856;
        v268 = v857;
        v269 = v859;
        v159[6] = v858;
        v159[7] = v269;
        v159[4] = v267;
        v159[5] = v268;
      }

      else if (v154)
      {
        v166 = *v152;
        v167 = v14[-7];
        v168 = v14[-5];
        v854 = v14[-6];
        v855 = v168;
        v852 = v166;
        v853 = v167;
        v169 = v14[-4];
        v170 = v14[-3];
        v171 = v14[-1];
        v858 = v14[-2];
        v859 = v171;
        v856 = v169;
        v857 = v170;
        v172 = v841[7];
        v174 = v841[4];
        v173 = v841[5];
        v14[-2] = v841[6];
        v14[-1] = v172;
        v14[-4] = v174;
        v14[-3] = v173;
        v175 = *v841;
        v176 = v841[1];
        v177 = v841[3];
        v14[-6] = v841[2];
        v14[-5] = v177;
        *v152 = v175;
        v14[-7] = v176;
        v178 = v852;
        v179 = v853;
        v180 = v855;
        v841[2] = v854;
        v841[3] = v180;
        *v841 = v178;
        v841[1] = v179;
        v181 = v856;
        v182 = v857;
        v183 = v859;
        v841[6] = v858;
        v841[7] = v183;
        v841[4] = v181;
        v841[5] = v182;
        if ((*a3)(v14 - 8, a1 + 8))
        {
          v184 = a1[13];
          v856 = a1[12];
          v857 = v184;
          v185 = a1[15];
          v858 = a1[14];
          v859 = v185;
          v186 = a1[9];
          v852 = a1[8];
          v853 = v186;
          v187 = a1[11];
          v854 = a1[10];
          v855 = v187;
          v188 = *v152;
          v189 = v14[-7];
          v190 = v14[-5];
          a1[10] = v14[-6];
          a1[11] = v190;
          a1[8] = v188;
          a1[9] = v189;
          v192 = v14[-2];
          v191 = v14[-1];
          v193 = v14[-3];
          a1[12] = v14[-4];
          a1[13] = v193;
          a1[14] = v192;
          a1[15] = v191;
          v194 = v852;
          v195 = v853;
          v196 = v855;
          v14[-6] = v854;
          v14[-5] = v196;
          *v152 = v194;
          v14[-7] = v195;
          v197 = v856;
          v198 = v857;
          v199 = v859;
          v14[-2] = v858;
          v14[-1] = v199;
          v14[-4] = v197;
          v14[-3] = v198;
        }
      }

LABEL_43:
      v270 = (*a3)(v14 + 8, a1 + 16);
      v271 = (*a3)(v10, v14 + 8);
      if (v270)
      {
        if (v271)
        {
          v272 = a1[21];
          v856 = a1[20];
          v857 = v272;
          v273 = a1[23];
          v858 = a1[22];
          v859 = v273;
          v274 = a1[17];
          v852 = a1[16];
          v853 = v274;
          v275 = a1[19];
          v854 = a1[18];
          v855 = v275;
          v276 = *v10;
          v277 = v10[1];
          v278 = v10[3];
          a1[18] = v10[2];
          a1[19] = v278;
          a1[16] = v276;
          a1[17] = v277;
          v280 = v10[6];
          v279 = v10[7];
          v281 = v10[5];
          a1[20] = v10[4];
          a1[21] = v281;
          a1[22] = v280;
          a1[23] = v279;
        }

        else
        {
          v316 = a1[21];
          v856 = a1[20];
          v857 = v316;
          v317 = a1[23];
          v858 = a1[22];
          v859 = v317;
          v318 = a1[17];
          v852 = a1[16];
          v853 = v318;
          v319 = a1[19];
          v854 = a1[18];
          v855 = v319;
          v320 = v14[8];
          v321 = v14[9];
          v322 = v14[11];
          a1[18] = v14[10];
          a1[19] = v322;
          a1[16] = v320;
          a1[17] = v321;
          v324 = v14[14];
          v323 = v14[15];
          v325 = v14[13];
          a1[20] = v14[12];
          a1[21] = v325;
          a1[22] = v324;
          a1[23] = v323;
          v326 = v852;
          v327 = v853;
          v328 = v855;
          v14[10] = v854;
          v14[11] = v328;
          v14[8] = v326;
          v14[9] = v327;
          v329 = v856;
          v330 = v857;
          v331 = v859;
          v14[14] = v858;
          v14[15] = v331;
          v14[12] = v329;
          v14[13] = v330;
          if (!(*a3)(v10, v14 + 8))
          {
            goto LABEL_52;
          }

          v332 = v14[8];
          v333 = v14[9];
          v334 = v14[11];
          v854 = v14[10];
          v855 = v334;
          v852 = v332;
          v853 = v333;
          v335 = v14[12];
          v336 = v14[13];
          v337 = v14[15];
          v858 = v14[14];
          v859 = v337;
          v856 = v335;
          v857 = v336;
          v338 = v10[7];
          v340 = v10[4];
          v339 = v10[5];
          v14[14] = v10[6];
          v14[15] = v338;
          v14[12] = v340;
          v14[13] = v339;
          v341 = *v10;
          v342 = v10[1];
          v343 = v10[3];
          v14[10] = v10[2];
          v14[11] = v343;
          v14[8] = v341;
          v14[9] = v342;
        }

        v344 = v852;
        v345 = v853;
        v346 = v855;
        v10[2] = v854;
        v10[3] = v346;
        *v10 = v344;
        v10[1] = v345;
        v347 = v856;
        v348 = v857;
        v349 = v859;
        v10[6] = v858;
        v10[7] = v349;
        v10[4] = v347;
        v10[5] = v348;
      }

      else if (v271)
      {
        v282 = v14[8];
        v283 = v14[9];
        v284 = v14[11];
        v854 = v14[10];
        v855 = v284;
        v852 = v282;
        v853 = v283;
        v285 = v14[12];
        v286 = v14[13];
        v287 = v14[15];
        v858 = v14[14];
        v859 = v287;
        v856 = v285;
        v857 = v286;
        v288 = v10[7];
        v290 = v10[4];
        v289 = v10[5];
        v14[14] = v10[6];
        v14[15] = v288;
        v14[12] = v290;
        v14[13] = v289;
        v291 = *v10;
        v292 = v10[1];
        v293 = v10[3];
        v14[10] = v10[2];
        v14[11] = v293;
        v14[8] = v291;
        v14[9] = v292;
        v294 = v852;
        v295 = v853;
        v296 = v855;
        v10[2] = v854;
        v10[3] = v296;
        *v10 = v294;
        v10[1] = v295;
        v297 = v856;
        v298 = v857;
        v299 = v859;
        v10[6] = v858;
        v10[7] = v299;
        v10[4] = v297;
        v10[5] = v298;
        if ((*a3)(v14 + 8, a1 + 16))
        {
          v300 = a1[21];
          v856 = a1[20];
          v857 = v300;
          v301 = a1[23];
          v858 = a1[22];
          v859 = v301;
          v302 = a1[17];
          v852 = a1[16];
          v853 = v302;
          v303 = a1[19];
          v854 = a1[18];
          v855 = v303;
          v304 = v14[8];
          v305 = v14[9];
          v306 = v14[11];
          a1[18] = v14[10];
          a1[19] = v306;
          a1[16] = v304;
          a1[17] = v305;
          v308 = v14[14];
          v307 = v14[15];
          v309 = v14[13];
          a1[20] = v14[12];
          a1[21] = v309;
          a1[22] = v308;
          a1[23] = v307;
          v310 = v852;
          v311 = v853;
          v312 = v855;
          v14[10] = v854;
          v14[11] = v312;
          v14[8] = v310;
          v14[9] = v311;
          v313 = v856;
          v314 = v857;
          v315 = v859;
          v14[14] = v858;
          v14[15] = v315;
          v14[12] = v313;
          v14[13] = v314;
        }
      }

LABEL_52:
      v350 = (*a3)(v14, v14 - 8);
      v351 = (*a3)(v14 + 8, v14);
      if (v350)
      {
        if (v351)
        {
          v352 = *v152;
          v353 = v14[-7];
          v354 = v14[-5];
          v854 = v14[-6];
          v855 = v354;
          v852 = v352;
          v853 = v353;
          v355 = v14[-4];
          v356 = v14[-3];
          v357 = v14[-1];
          v858 = v14[-2];
          v859 = v357;
          v856 = v355;
          v857 = v356;
          v358 = v14[13];
          v14[-4] = v14[12];
          v14[-3] = v358;
          v359 = v14[15];
          v14[-2] = v14[14];
          v14[-1] = v359;
          v360 = v14[9];
          *v152 = v14[8];
          v14[-7] = v360;
          v361 = v14[11];
          v14[-6] = v14[10];
          v14[-5] = v361;
        }

        else
        {
          v394 = *v152;
          v395 = v14[-7];
          v396 = v14[-5];
          v854 = v14[-6];
          v855 = v396;
          v852 = v394;
          v853 = v395;
          v397 = v14[-4];
          v398 = v14[-3];
          v399 = v14[-1];
          v858 = v14[-2];
          v859 = v399;
          v856 = v397;
          v857 = v398;
          v400 = v14[5];
          v14[-4] = v14[4];
          v14[-3] = v400;
          v401 = v14[7];
          v14[-2] = v14[6];
          v14[-1] = v401;
          v402 = v14[1];
          *v152 = *v14;
          v14[-7] = v402;
          v403 = v14[3];
          v14[-6] = v14[2];
          v14[-5] = v403;
          v404 = v852;
          v405 = v853;
          v406 = v855;
          v14[2] = v854;
          v14[3] = v406;
          *v14 = v404;
          v14[1] = v405;
          v407 = v856;
          v408 = v857;
          v409 = v859;
          v14[6] = v858;
          v14[7] = v409;
          v14[4] = v407;
          v14[5] = v408;
          if (!(*a3)(v14 + 8, v14))
          {
            goto LABEL_61;
          }

          v410 = *v14;
          v411 = v14[1];
          v412 = v14[3];
          v854 = v14[2];
          v855 = v412;
          v852 = v410;
          v853 = v411;
          v413 = v14[4];
          v414 = v14[5];
          v415 = v14[7];
          v858 = v14[6];
          v859 = v415;
          v856 = v413;
          v857 = v414;
          v416 = v14[13];
          v14[4] = v14[12];
          v14[5] = v416;
          v417 = v14[15];
          v14[6] = v14[14];
          v14[7] = v417;
          v418 = v14[9];
          *v14 = v14[8];
          v14[1] = v418;
          v419 = v14[11];
          v14[2] = v14[10];
          v14[3] = v419;
        }

        v420 = v852;
        v421 = v853;
        v422 = v855;
        v14[10] = v854;
        v14[11] = v422;
        v14[8] = v420;
        v14[9] = v421;
        v423 = v856;
        v424 = v857;
        v425 = v859;
        v14[14] = v858;
        v14[15] = v425;
        v14[12] = v423;
        v14[13] = v424;
      }

      else if (v351)
      {
        v362 = *v14;
        v363 = v14[1];
        v364 = v14[3];
        v854 = v14[2];
        v855 = v364;
        v852 = v362;
        v853 = v363;
        v365 = v14[4];
        v366 = v14[5];
        v367 = v14[7];
        v858 = v14[6];
        v859 = v367;
        v856 = v365;
        v857 = v366;
        v368 = v14[13];
        v14[4] = v14[12];
        v14[5] = v368;
        v369 = v14[15];
        v14[6] = v14[14];
        v14[7] = v369;
        v370 = v14[9];
        *v14 = v14[8];
        v14[1] = v370;
        v371 = v14[11];
        v14[2] = v14[10];
        v14[3] = v371;
        v372 = v852;
        v373 = v853;
        v374 = v855;
        v14[10] = v854;
        v14[11] = v374;
        v14[8] = v372;
        v14[9] = v373;
        v375 = v856;
        v376 = v857;
        v377 = v859;
        v14[14] = v858;
        v14[15] = v377;
        v14[12] = v375;
        v14[13] = v376;
        if ((*a3)(v14, v14 - 8))
        {
          v378 = *v152;
          v379 = v14[-7];
          v380 = v14[-5];
          v854 = v14[-6];
          v855 = v380;
          v852 = v378;
          v853 = v379;
          v381 = v14[-4];
          v382 = v14[-3];
          v383 = v14[-1];
          v858 = v14[-2];
          v859 = v383;
          v856 = v381;
          v857 = v382;
          v384 = v14[5];
          v14[-4] = v14[4];
          v14[-3] = v384;
          v385 = v14[7];
          v14[-2] = v14[6];
          v14[-1] = v385;
          v386 = v14[1];
          *v152 = *v14;
          v14[-7] = v386;
          v387 = v14[3];
          v14[-6] = v14[2];
          v14[-5] = v387;
          v388 = v852;
          v389 = v853;
          v390 = v855;
          v14[2] = v854;
          v14[3] = v390;
          *v14 = v388;
          v14[1] = v389;
          v391 = v856;
          v392 = v857;
          v393 = v859;
          v14[6] = v858;
          v14[7] = v393;
          v14[4] = v391;
          v14[5] = v392;
        }
      }

LABEL_61:
      v426 = *a1;
      v427 = a1[1];
      v428 = a1[3];
      v854 = a1[2];
      v855 = v428;
      v852 = v426;
      v853 = v427;
      v429 = a1[4];
      v430 = a1[5];
      v431 = a1[7];
      v858 = a1[6];
      v859 = v431;
      v856 = v429;
      v857 = v430;
      v432 = v14[7];
      v434 = v14[4];
      v433 = v14[5];
      a1[6] = v14[6];
      a1[7] = v432;
      a1[4] = v434;
      a1[5] = v433;
      v435 = *v14;
      v436 = v14[1];
      v437 = v14[3];
      a1[2] = v14[2];
      a1[3] = v437;
      *a1 = v435;
      a1[1] = v436;
      v438 = v852;
      v439 = v853;
      v440 = v855;
      v14[2] = v854;
      v14[3] = v440;
      *v14 = v438;
      v14[1] = v439;
      v441 = v856;
      v442 = v857;
      v443 = v859;
      v14[6] = v858;
      v14[7] = v443;
      v14[4] = v441;
      v14[5] = v442;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_63:
      v444 = 0;
      v445 = *a1;
      v446 = a1[1];
      v447 = a1[3];
      v846 = a1[2];
      v847 = v447;
      v844 = v445;
      v845 = v446;
      v448 = a1[4];
      v449 = a1[5];
      v450 = a1[7];
      v850 = a1[6];
      v851 = v450;
      v848 = v448;
      v849 = v449;
      do
      {
        v444 += 8;
      }

      while (((*a3)(&a1[v444], &v844) & 1) != 0);
      v451 = &a1[v444];
      v452 = v843;
      v560 = v444 == 8;
      a2 = v843;
      if (v560)
      {
        v452 = v843;
        do
        {
          if (v451 >= v452)
          {
            break;
          }

          v452 -= 8;
        }

        while (((*a3)(v452, &v844) & 1) == 0);
      }

      else
      {
        do
        {
          v452 -= 8;
        }

        while (!(*a3)(v452, &v844));
      }

      if (v451 >= v452)
      {
        v473 = v451 - 8;
        if (&v451[-8] == a1)
        {
          goto LABEL_81;
        }

LABEL_80:
        v474 = *v473;
        v475 = v473[1];
        v476 = v473[3];
        a1[2] = v473[2];
        a1[3] = v476;
        *a1 = v474;
        a1[1] = v475;
        v477 = v473[4];
        v478 = v473[5];
        v479 = v473[7];
        a1[6] = v473[6];
        a1[7] = v479;
        a1[4] = v477;
        a1[5] = v478;
        goto LABEL_81;
      }

      v453 = v451;
      v454 = v452;
      do
      {
        v455 = *v453;
        v456 = v453[1];
        v457 = v453[3];
        v854 = v453[2];
        v855 = v457;
        v852 = v455;
        v853 = v456;
        v458 = v453[4];
        v459 = v453[5];
        v460 = v453[7];
        v858 = v453[6];
        v859 = v460;
        v856 = v458;
        v857 = v459;
        v461 = v454[7];
        v463 = v454[4];
        v462 = v454[5];
        v453[6] = v454[6];
        v453[7] = v461;
        v453[4] = v463;
        v453[5] = v462;
        v464 = *v454;
        v465 = v454[1];
        v466 = v454[3];
        v453[2] = v454[2];
        v453[3] = v466;
        *v453 = v464;
        v453[1] = v465;
        v467 = v852;
        v468 = v853;
        v469 = v855;
        v454[2] = v854;
        v454[3] = v469;
        *v454 = v467;
        v454[1] = v468;
        v470 = v856;
        v471 = v857;
        v472 = v859;
        v454[6] = v858;
        v454[7] = v472;
        v454[4] = v470;
        v454[5] = v471;
        do
        {
          v453 += 8;
        }

        while (((*a3)(v453, &v844) & 1) != 0);
        do
        {
          v454 -= 8;
        }

        while (!(*a3)(v454, &v844));
      }

      while (v453 < v454);
      v473 = v453 - 8;
      if (v473 != a1)
      {
        goto LABEL_80;
      }

LABEL_81:
      v480 = v844;
      v481 = v845;
      v482 = v847;
      v473[2] = v846;
      v473[3] = v482;
      *v473 = v480;
      v473[1] = v481;
      v483 = v848;
      v484 = v849;
      v485 = v851;
      v473[6] = v850;
      v473[7] = v485;
      v473[4] = v483;
      v473[5] = v484;
      if (v451 < v452)
      {
        goto LABEL_84;
      }

      v486 = sub_1E545EFD8(a1, v473, a3);
      n128_u64 = v473[8].n128_u64;
      if (sub_1E545EFD8(v473 + 8, v843, a3))
      {
        break;
      }

      if (!v486)
      {
LABEL_84:
        sub_1E545CFF4(a1, v473, a3, a4, a5 & 1);
        a5 = 0;
        n128_u64 = v473[8].n128_u64;
      }
    }

    a2 = v473;
    if (!v486)
    {
      continue;
    }

    return result;
  }
}

__n128 sub_1E545EA0C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v131 = a1[4];
      v142 = a1[5];
      v153 = a1[6];
      v164 = a1[7];
      v87 = *a1;
      v98 = a1[1];
      v109 = a1[2];
      v120 = a1[3];
      v14 = a3[4];
      v15 = a3[5];
      v16 = a3[7];
      a1[6] = a3[6];
      a1[7] = v16;
      a1[4] = v14;
      a1[5] = v15;
      v17 = *a3;
      v18 = a3[1];
      v19 = a3[3];
      a1[2] = a3[2];
      a1[3] = v19;
      *a1 = v17;
      a1[1] = v18;
LABEL_9:
      a3[2] = v109;
      a3[3] = v120;
      *a3 = v87;
      a3[1] = v98;
      a3[6] = v153;
      a3[7] = v164;
      a3[4] = v131;
      a3[5] = v142;
      goto LABEL_10;
    }

    v134 = a1[4];
    v145 = a1[5];
    v156 = a1[6];
    v167 = a1[7];
    v90 = *a1;
    v101 = a1[1];
    v112 = a1[2];
    v123 = a1[3];
    v32 = a2[4];
    v33 = a2[5];
    v34 = a2[7];
    a1[6] = a2[6];
    a1[7] = v34;
    a1[4] = v32;
    a1[5] = v33;
    v35 = *a2;
    v36 = a2[1];
    v37 = a2[3];
    a1[2] = a2[2];
    a1[3] = v37;
    *a1 = v35;
    a1[1] = v36;
    a2[2] = v112;
    a2[3] = v123;
    *a2 = v90;
    a2[1] = v101;
    a2[6] = v156;
    a2[7] = v167;
    a2[4] = v134;
    a2[5] = v145;
    if ((*a6)(a3, a2))
    {
      v131 = a2[4];
      v142 = a2[5];
      v153 = a2[6];
      v164 = a2[7];
      v87 = *a2;
      v98 = a2[1];
      v109 = a2[2];
      v120 = a2[3];
      v38 = a3[4];
      v39 = a3[5];
      v40 = a3[7];
      a2[6] = a3[6];
      a2[7] = v40;
      a2[4] = v38;
      a2[5] = v39;
      v41 = *a3;
      v42 = a3[1];
      v43 = a3[3];
      a2[2] = a3[2];
      a2[3] = v43;
      *a2 = v41;
      a2[1] = v42;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v132 = a2[4];
    v143 = a2[5];
    v154 = a2[6];
    v165 = a2[7];
    v88 = *a2;
    v99 = a2[1];
    v110 = a2[2];
    v121 = a2[3];
    v20 = a3[4];
    v21 = a3[5];
    v22 = a3[7];
    a2[6] = a3[6];
    a2[7] = v22;
    a2[4] = v20;
    a2[5] = v21;
    v23 = *a3;
    v24 = a3[1];
    v25 = a3[3];
    a2[2] = a3[2];
    a2[3] = v25;
    *a2 = v23;
    a2[1] = v24;
    a3[2] = v110;
    a3[3] = v121;
    *a3 = v88;
    a3[1] = v99;
    a3[6] = v154;
    a3[7] = v165;
    a3[4] = v132;
    a3[5] = v143;
    if ((*a6)(a2, a1))
    {
      v133 = a1[4];
      v144 = a1[5];
      v155 = a1[6];
      v166 = a1[7];
      v89 = *a1;
      v100 = a1[1];
      v111 = a1[2];
      v122 = a1[3];
      v26 = a2[4];
      v27 = a2[5];
      v28 = a2[7];
      a1[6] = a2[6];
      a1[7] = v28;
      a1[4] = v26;
      a1[5] = v27;
      v29 = *a2;
      v30 = a2[1];
      v31 = a2[3];
      a1[2] = a2[2];
      a1[3] = v31;
      *a1 = v29;
      a1[1] = v30;
      a2[2] = v111;
      a2[3] = v122;
      *a2 = v89;
      a2[1] = v100;
      a2[6] = v155;
      a2[7] = v166;
      a2[4] = v133;
      a2[5] = v144;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v135 = a3[4];
    v146 = a3[5];
    v157 = a3[6];
    v168 = a3[7];
    v91 = *a3;
    v102 = a3[1];
    v113 = a3[2];
    v124 = a3[3];
    v44 = a4[4];
    v45 = a4[5];
    v46 = a4[7];
    a3[6] = a4[6];
    a3[7] = v46;
    a3[4] = v44;
    a3[5] = v45;
    v47 = *a4;
    v48 = a4[1];
    v49 = a4[3];
    a3[2] = a4[2];
    a3[3] = v49;
    *a3 = v47;
    a3[1] = v48;
    a4[2] = v113;
    a4[3] = v124;
    *a4 = v91;
    a4[1] = v102;
    a4[6] = v157;
    a4[7] = v168;
    a4[4] = v135;
    a4[5] = v146;
    if ((*a6)(a3, a2))
    {
      v136 = a2[4];
      v147 = a2[5];
      v158 = a2[6];
      v169 = a2[7];
      v92 = *a2;
      v103 = a2[1];
      v114 = a2[2];
      v125 = a2[3];
      v50 = a3[4];
      v51 = a3[5];
      v52 = a3[7];
      a2[6] = a3[6];
      a2[7] = v52;
      a2[4] = v50;
      a2[5] = v51;
      v53 = *a3;
      v54 = a3[1];
      v55 = a3[3];
      a2[2] = a3[2];
      a2[3] = v55;
      *a2 = v53;
      a2[1] = v54;
      a3[2] = v114;
      a3[3] = v125;
      *a3 = v92;
      a3[1] = v103;
      a3[6] = v158;
      a3[7] = v169;
      a3[4] = v136;
      a3[5] = v147;
      if ((*a6)(a2, a1))
      {
        v137 = a1[4];
        v148 = a1[5];
        v159 = a1[6];
        v170 = a1[7];
        v93 = *a1;
        v104 = a1[1];
        v115 = a1[2];
        v126 = a1[3];
        v56 = a2[4];
        v57 = a2[5];
        v58 = a2[7];
        a1[6] = a2[6];
        a1[7] = v58;
        a1[4] = v56;
        a1[5] = v57;
        v59 = *a2;
        v60 = a2[1];
        v61 = a2[3];
        a1[2] = a2[2];
        a1[3] = v61;
        *a1 = v59;
        a1[1] = v60;
        a2[2] = v115;
        a2[3] = v126;
        *a2 = v93;
        a2[1] = v104;
        a2[6] = v159;
        a2[7] = v170;
        a2[4] = v137;
        a2[5] = v148;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v138 = a4[4];
    v149 = a4[5];
    v160 = a4[6];
    v171 = a4[7];
    v94 = *a4;
    v105 = a4[1];
    v116 = a4[2];
    v127 = a4[3];
    v63 = a5[4];
    v64 = a5[5];
    v65 = a5[7];
    a4[6] = a5[6];
    a4[7] = v65;
    a4[4] = v63;
    a4[5] = v64;
    v66 = *a5;
    v67 = a5[1];
    v68 = a5[3];
    a4[2] = a5[2];
    a4[3] = v68;
    *a4 = v66;
    a4[1] = v67;
    a5[2] = v116;
    a5[3] = v127;
    *a5 = v94;
    a5[1] = v105;
    a5[6] = v160;
    a5[7] = v171;
    a5[4] = v138;
    a5[5] = v149;
    if ((*a6)(a4, a3))
    {
      v139 = a3[4];
      v150 = a3[5];
      v161 = a3[6];
      v172 = a3[7];
      v95 = *a3;
      v106 = a3[1];
      v117 = a3[2];
      v128 = a3[3];
      v69 = a4[4];
      v70 = a4[5];
      v71 = a4[7];
      a3[6] = a4[6];
      a3[7] = v71;
      a3[4] = v69;
      a3[5] = v70;
      v72 = *a4;
      v73 = a4[1];
      v74 = a4[3];
      a3[2] = a4[2];
      a3[3] = v74;
      *a3 = v72;
      a3[1] = v73;
      a4[2] = v117;
      a4[3] = v128;
      *a4 = v95;
      a4[1] = v106;
      a4[6] = v161;
      a4[7] = v172;
      a4[4] = v139;
      a4[5] = v150;
      if ((*a6)(a3, a2))
      {
        v140 = a2[4];
        v151 = a2[5];
        v162 = a2[6];
        v173 = a2[7];
        v96 = *a2;
        v107 = a2[1];
        v118 = a2[2];
        v129 = a2[3];
        v75 = a3[4];
        v76 = a3[5];
        v77 = a3[7];
        a2[6] = a3[6];
        a2[7] = v77;
        a2[4] = v75;
        a2[5] = v76;
        v78 = *a3;
        v79 = a3[1];
        v80 = a3[3];
        a2[2] = a3[2];
        a2[3] = v80;
        *a2 = v78;
        a2[1] = v79;
        a3[2] = v118;
        a3[3] = v129;
        *a3 = v96;
        a3[1] = v107;
        a3[6] = v162;
        a3[7] = v173;
        a3[4] = v140;
        a3[5] = v151;
        if ((*a6)(a2, a1))
        {
          v141 = a1[4];
          v152 = a1[5];
          v163 = a1[6];
          v174 = a1[7];
          v97 = *a1;
          v108 = a1[1];
          v119 = a1[2];
          v130 = a1[3];
          v81 = a2[4];
          v82 = a2[5];
          v83 = a2[7];
          a1[6] = a2[6];
          a1[7] = v83;
          a1[4] = v81;
          a1[5] = v82;
          v84 = *a2;
          v85 = a2[1];
          v86 = a2[3];
          a1[2] = a2[2];
          a1[3] = v86;
          *a1 = v84;
          a1[1] = v85;
          a2[2] = v119;
          a2[3] = v130;
          *a2 = v97;
          a2[1] = v108;
          a2[6] = v163;
          a2[7] = v174;
          result = v152;
          a2[4] = v141;
          a2[5] = v152;
        }
      }
    }
  }

  return result;
}

BOOL sub_1E545EFD8(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v316 = *MEMORY[0x1E69E9840];
  v6 = (a2 - a1) >> 7;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v23 = a2 - 8;
      v24 = (*a3)(a1 + 8, a1);
      v25 = (*a3)(v23, a1 + 8);
      if (v24)
      {
        if (v25)
        {
          v26 = a1[5];
          v312 = a1[4];
          v313 = v26;
          v27 = a1[7];
          v314 = a1[6];
          v315 = v27;
          v28 = a1[1];
          v308 = *a1;
          v309 = v28;
          v29 = a1[3];
          v310 = a1[2];
          v311 = v29;
          v30 = v23[4];
          v31 = v23[5];
          v32 = v23[7];
          a1[6] = v23[6];
          a1[7] = v32;
          a1[4] = v30;
          a1[5] = v31;
          v33 = *v23;
          v34 = v23[1];
          v35 = v23[3];
          a1[2] = v23[2];
          a1[3] = v35;
          *a1 = v33;
          a1[1] = v34;
        }

        else
        {
          v149 = a1[5];
          v312 = a1[4];
          v313 = v149;
          v150 = a1[7];
          v314 = a1[6];
          v315 = v150;
          v151 = a1[1];
          v308 = *a1;
          v309 = v151;
          v152 = a1[3];
          v310 = a1[2];
          v311 = v152;
          v153 = a1[8];
          v154 = a1[9];
          v155 = a1[11];
          a1[2] = a1[10];
          a1[3] = v155;
          *a1 = v153;
          a1[1] = v154;
          v156 = a1[12];
          v157 = a1[13];
          v158 = a1[15];
          a1[6] = a1[14];
          a1[7] = v158;
          a1[4] = v156;
          a1[5] = v157;
          v159 = v308;
          v160 = v309;
          v161 = v311;
          a1[10] = v310;
          a1[11] = v161;
          a1[8] = v159;
          a1[9] = v160;
          v162 = v312;
          v163 = v313;
          v164 = v315;
          a1[14] = v314;
          a1[15] = v164;
          a1[12] = v162;
          a1[13] = v163;
          if (!(*a3)(v23, a1 + 8))
          {
            return 1;
          }

          v165 = a1[13];
          v312 = a1[12];
          v313 = v165;
          v166 = a1[15];
          v314 = a1[14];
          v315 = v166;
          v167 = a1[9];
          v308 = a1[8];
          v309 = v167;
          v168 = a1[11];
          v310 = a1[10];
          v311 = v168;
          v169 = v23[4];
          v170 = v23[5];
          v171 = v23[7];
          a1[14] = v23[6];
          a1[15] = v171;
          a1[12] = v169;
          a1[13] = v170;
          v172 = *v23;
          v173 = v23[1];
          v174 = v23[3];
          a1[10] = v23[2];
          a1[11] = v174;
          a1[8] = v172;
          a1[9] = v173;
        }

        v175 = v311;
        v23[2] = v310;
        v23[3] = v175;
        v176 = v309;
        *v23 = v308;
        v23[1] = v176;
        v177 = v315;
        v23[6] = v314;
        v23[7] = v177;
        v178 = v313;
        result = 1;
        v23[4] = v312;
        v23[5] = v178;
        return result;
      }

      if (!v25)
      {
        return 1;
      }

      v70 = a1[13];
      v312 = a1[12];
      v313 = v70;
      v71 = a1[15];
      v314 = a1[14];
      v315 = v71;
      v72 = a1[9];
      v308 = a1[8];
      v309 = v72;
      v73 = a1[11];
      v310 = a1[10];
      v311 = v73;
      v74 = v23[4];
      v75 = v23[5];
      v76 = v23[7];
      a1[14] = v23[6];
      a1[15] = v76;
      a1[12] = v74;
      a1[13] = v75;
      v77 = *v23;
      v78 = v23[1];
      v79 = v23[3];
      a1[10] = v23[2];
      a1[11] = v79;
      a1[8] = v77;
      a1[9] = v78;
      v80 = v311;
      v23[2] = v310;
      v23[3] = v80;
      v81 = v309;
      *v23 = v308;
      v23[1] = v81;
      v82 = v315;
      v23[6] = v314;
      v23[7] = v82;
      v83 = v313;
      v23[4] = v312;
      v23[5] = v83;
LABEL_48:
      if ((*a3)(a1 + 8, a1))
      {
        v292 = a1[5];
        v312 = a1[4];
        v313 = v292;
        v293 = a1[7];
        v314 = a1[6];
        v315 = v293;
        v294 = a1[1];
        v308 = *a1;
        v309 = v294;
        v295 = a1[3];
        v310 = a1[2];
        v311 = v295;
        v296 = a1[8];
        v297 = a1[9];
        v298 = a1[11];
        a1[2] = a1[10];
        a1[3] = v298;
        *a1 = v296;
        a1[1] = v297;
        v299 = a1[12];
        v300 = a1[13];
        v301 = a1[15];
        a1[6] = a1[14];
        a1[7] = v301;
        a1[4] = v299;
        a1[5] = v300;
        v302 = v308;
        v303 = v309;
        v304 = v311;
        a1[10] = v310;
        a1[11] = v304;
        a1[8] = v302;
        a1[9] = v303;
        v305 = v312;
        v306 = v313;
        v307 = v315;
        a1[14] = v314;
        a1[15] = v307;
        a1[12] = v305;
        a1[13] = v306;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_1E545EA0C(a1, a1 + 8, a1 + 16, a1 + 24, a2 - 8, a3);
      return 1;
    }

    v57 = a2 - 8;
    v58 = (*a3)(a1 + 8, a1);
    v59 = (*a3)(a1 + 16, a1 + 8);
    if ((v58 & 1) == 0)
    {
      if (v59)
      {
        v117 = a1[13];
        v312 = a1[12];
        v313 = v117;
        v118 = a1[15];
        v314 = a1[14];
        v315 = v118;
        v119 = a1[9];
        v308 = a1[8];
        v309 = v119;
        v120 = a1[11];
        v310 = a1[10];
        v311 = v120;
        v121 = a1[16];
        v122 = a1[17];
        v123 = a1[19];
        a1[10] = a1[18];
        a1[11] = v123;
        a1[8] = v121;
        a1[9] = v122;
        v124 = a1[20];
        v125 = a1[21];
        v126 = a1[23];
        a1[14] = a1[22];
        a1[15] = v126;
        a1[12] = v124;
        a1[13] = v125;
        v127 = v308;
        v128 = v309;
        v129 = v311;
        a1[18] = v310;
        a1[19] = v129;
        a1[16] = v127;
        a1[17] = v128;
        v130 = v312;
        v131 = v313;
        v132 = v315;
        a1[22] = v314;
        a1[23] = v132;
        a1[20] = v130;
        a1[21] = v131;
        if ((*a3)(a1 + 8, a1))
        {
          v133 = a1[5];
          v312 = a1[4];
          v313 = v133;
          v134 = a1[7];
          v314 = a1[6];
          v315 = v134;
          v135 = a1[1];
          v308 = *a1;
          v309 = v135;
          v136 = a1[3];
          v310 = a1[2];
          v311 = v136;
          v137 = a1[8];
          v138 = a1[9];
          v139 = a1[11];
          a1[2] = a1[10];
          a1[3] = v139;
          *a1 = v137;
          a1[1] = v138;
          v140 = a1[12];
          v141 = a1[13];
          v142 = a1[15];
          a1[6] = a1[14];
          a1[7] = v142;
          a1[4] = v140;
          a1[5] = v141;
          v143 = v308;
          v144 = v309;
          v145 = v311;
          a1[10] = v310;
          a1[11] = v145;
          a1[8] = v143;
          a1[9] = v144;
          v146 = v312;
          v147 = v313;
          v148 = v315;
          a1[14] = v314;
          a1[15] = v148;
          a1[12] = v146;
          a1[13] = v147;
        }
      }

      goto LABEL_45;
    }

    if (v59)
    {
      v60 = a1[5];
      v312 = a1[4];
      v313 = v60;
      v61 = a1[7];
      v314 = a1[6];
      v315 = v61;
      v62 = a1[1];
      v308 = *a1;
      v309 = v62;
      v63 = a1[3];
      v310 = a1[2];
      v311 = v63;
      v64 = a1[16];
      v65 = a1[17];
      v66 = a1[19];
      a1[2] = a1[18];
      a1[3] = v66;
      *a1 = v64;
      a1[1] = v65;
      v67 = a1[20];
      v68 = a1[21];
      v69 = a1[23];
      a1[6] = a1[22];
      a1[7] = v69;
      a1[4] = v67;
      a1[5] = v68;
    }

    else
    {
      v230 = a1[5];
      v312 = a1[4];
      v313 = v230;
      v231 = a1[7];
      v314 = a1[6];
      v315 = v231;
      v232 = a1[1];
      v308 = *a1;
      v309 = v232;
      v233 = a1[3];
      v310 = a1[2];
      v311 = v233;
      v234 = a1[8];
      v235 = a1[9];
      v236 = a1[11];
      a1[2] = a1[10];
      a1[3] = v236;
      *a1 = v234;
      a1[1] = v235;
      v237 = a1[12];
      v238 = a1[13];
      v239 = a1[15];
      a1[6] = a1[14];
      a1[7] = v239;
      a1[4] = v237;
      a1[5] = v238;
      v240 = v308;
      v241 = v309;
      v242 = v311;
      a1[10] = v310;
      a1[11] = v242;
      a1[8] = v240;
      a1[9] = v241;
      v243 = v312;
      v244 = v313;
      v245 = v315;
      a1[14] = v314;
      a1[15] = v245;
      a1[12] = v243;
      a1[13] = v244;
      if (!(*a3)(a1 + 16, a1 + 8))
      {
        goto LABEL_45;
      }

      v246 = a1[13];
      v312 = a1[12];
      v313 = v246;
      v247 = a1[15];
      v314 = a1[14];
      v315 = v247;
      v248 = a1[9];
      v308 = a1[8];
      v309 = v248;
      v249 = a1[11];
      v310 = a1[10];
      v311 = v249;
      v250 = a1[16];
      v251 = a1[17];
      v252 = a1[19];
      a1[10] = a1[18];
      a1[11] = v252;
      a1[8] = v250;
      a1[9] = v251;
      v253 = a1[20];
      v254 = a1[21];
      v255 = a1[23];
      a1[14] = a1[22];
      a1[15] = v255;
      a1[12] = v253;
      a1[13] = v254;
    }

    v256 = v308;
    v257 = v309;
    v258 = v311;
    a1[18] = v310;
    a1[19] = v258;
    a1[16] = v256;
    a1[17] = v257;
    v259 = v312;
    v260 = v313;
    v261 = v315;
    a1[22] = v314;
    a1[23] = v261;
    a1[20] = v259;
    a1[21] = v260;
LABEL_45:
    if (!(*a3)(v57, a1 + 16))
    {
      return 1;
    }

    v262 = a1[21];
    v312 = a1[20];
    v313 = v262;
    v263 = a1[23];
    v314 = a1[22];
    v315 = v263;
    v264 = a1[17];
    v308 = a1[16];
    v309 = v264;
    v265 = a1[19];
    v310 = a1[18];
    v311 = v265;
    v266 = v57[4];
    v267 = v57[5];
    v268 = v57[7];
    a1[22] = v57[6];
    a1[23] = v268;
    a1[20] = v266;
    a1[21] = v267;
    v269 = *v57;
    v270 = v57[1];
    v271 = v57[3];
    a1[18] = v57[2];
    a1[19] = v271;
    a1[16] = v269;
    a1[17] = v270;
    v272 = v311;
    v57[2] = v310;
    v57[3] = v272;
    v273 = v309;
    *v57 = v308;
    v57[1] = v273;
    v274 = v315;
    v57[6] = v314;
    v57[7] = v274;
    v275 = v313;
    v57[4] = v312;
    v57[5] = v275;
    if (!(*a3)(a1 + 16, a1 + 8))
    {
      return 1;
    }

    v276 = a1[13];
    v312 = a1[12];
    v313 = v276;
    v277 = a1[15];
    v314 = a1[14];
    v315 = v277;
    v278 = a1[9];
    v308 = a1[8];
    v309 = v278;
    v279 = a1[11];
    v310 = a1[10];
    v311 = v279;
    v280 = a1[16];
    v281 = a1[17];
    v282 = a1[19];
    a1[10] = a1[18];
    a1[11] = v282;
    a1[8] = v280;
    a1[9] = v281;
    v283 = a1[20];
    v284 = a1[21];
    v285 = a1[23];
    a1[14] = a1[22];
    a1[15] = v285;
    a1[12] = v283;
    a1[13] = v284;
    v286 = v308;
    v287 = v309;
    v288 = v311;
    a1[18] = v310;
    a1[19] = v288;
    a1[16] = v286;
    a1[17] = v287;
    v289 = v312;
    v290 = v313;
    v291 = v315;
    a1[22] = v314;
    a1[23] = v291;
    a1[20] = v289;
    a1[21] = v290;
    goto LABEL_48;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 8;
    if ((*a3)(a2 - 8, a1))
    {
      v8 = a1[5];
      v312 = a1[4];
      v313 = v8;
      v9 = a1[7];
      v314 = a1[6];
      v315 = v9;
      v10 = a1[1];
      v308 = *a1;
      v309 = v10;
      v11 = a1[3];
      v310 = a1[2];
      v311 = v11;
      v12 = a2[-4];
      v13 = a2[-3];
      v14 = a2[-1];
      a1[6] = a2[-2];
      a1[7] = v14;
      a1[4] = v12;
      a1[5] = v13;
      v15 = *v7;
      v16 = a2[-7];
      v17 = a2[-5];
      a1[2] = a2[-6];
      a1[3] = v17;
      *a1 = v15;
      a1[1] = v16;
      v18 = v311;
      a2[-6] = v310;
      a2[-5] = v18;
      v19 = v309;
      *v7 = v308;
      a2[-7] = v19;
      v20 = v315;
      a2[-2] = v314;
      a2[-1] = v20;
      v21 = v313;
      result = 1;
      a2[-4] = v312;
      a2[-3] = v21;
      return result;
    }

    return 1;
  }

LABEL_13:
  v37 = (*a3)(a1 + 8, a1);
  v38 = a1 + 16;
  v36 = a1 + 16;
  v39 = (*a3)(a1 + 16, a1 + 8);
  if (v37)
  {
    if (v39)
    {
      v40 = a1[5];
      v312 = a1[4];
      v313 = v40;
      v41 = a1[7];
      v314 = a1[6];
      v315 = v41;
      v42 = a1[1];
      v308 = *a1;
      v309 = v42;
      v43 = a1[3];
      v310 = a1[2];
      v311 = v43;
      v44 = a1 + 16;
      v45 = *v36;
      v46 = a1[17];
      v47 = a1[19];
      a1[2] = a1[18];
      a1[3] = v47;
      *a1 = v45;
      a1[1] = v46;
      v48 = a1[20];
      v49 = a1[21];
      v50 = a1[23];
      a1[6] = a1[22];
      a1[7] = v50;
      a1[4] = v48;
      a1[5] = v49;
      v51 = v308;
      v52 = v309;
      v53 = v311;
      a1[18] = v310;
      a1[19] = v53;
      *v36 = v51;
      a1[17] = v52;
      v54 = v312;
      v55 = v313;
      v56 = v315;
      a1[22] = v314;
      a1[23] = v56;
      a1[20] = v54;
      a1[21] = v55;
    }

    else
    {
      v179 = a1[5];
      v312 = a1[4];
      v313 = v179;
      v180 = a1[7];
      v314 = a1[6];
      v315 = v180;
      v181 = a1[1];
      v308 = *a1;
      v309 = v181;
      v182 = a1[3];
      v310 = a1[2];
      v311 = v182;
      v183 = a1[8];
      v184 = a1[9];
      v185 = a1[11];
      a1[2] = a1[10];
      a1[3] = v185;
      *a1 = v183;
      a1[1] = v184;
      v186 = a1[12];
      v187 = a1[13];
      v188 = a1[15];
      a1[6] = a1[14];
      a1[7] = v188;
      a1[4] = v186;
      a1[5] = v187;
      v189 = v308;
      v190 = v309;
      v191 = v311;
      a1[10] = v310;
      a1[11] = v191;
      a1[8] = v189;
      a1[9] = v190;
      v192 = v312;
      v193 = v313;
      v194 = v315;
      a1[14] = v314;
      a1[15] = v194;
      a1[12] = v192;
      a1[13] = v193;
      v195 = (*a3)(a1 + 16, a1 + 8);
      v44 = a1 + 16;
      if (v195)
      {
        v196 = a1[13];
        v312 = a1[12];
        v313 = v196;
        v197 = a1[15];
        v314 = a1[14];
        v315 = v197;
        v198 = a1[9];
        v308 = a1[8];
        v309 = v198;
        v199 = a1[11];
        v310 = a1[10];
        v311 = v199;
        v200 = *v38;
        v201 = a1[17];
        v202 = a1[19];
        a1[10] = a1[18];
        a1[11] = v202;
        a1[8] = v200;
        a1[9] = v201;
        v203 = a1[20];
        v204 = a1[21];
        v205 = a1[23];
        a1[14] = a1[22];
        a1[15] = v205;
        a1[12] = v203;
        a1[13] = v204;
        v206 = v308;
        v207 = v309;
        v208 = v311;
        a1[18] = v310;
        a1[19] = v208;
        *v38 = v206;
        a1[17] = v207;
        v209 = v312;
        v210 = v313;
        v211 = v315;
        a1[22] = v314;
        a1[23] = v211;
        a1[20] = v209;
        a1[21] = v210;
      }
    }
  }

  else
  {
    v44 = a1 + 16;
    if (v39)
    {
      v84 = a1[13];
      v312 = a1[12];
      v313 = v84;
      v85 = a1[15];
      v314 = a1[14];
      v315 = v85;
      v86 = a1[9];
      v308 = a1[8];
      v309 = v86;
      v87 = a1[11];
      v310 = a1[10];
      v311 = v87;
      v88 = *v38;
      v89 = a1[17];
      v90 = a1[19];
      a1[10] = a1[18];
      a1[11] = v90;
      a1[8] = v88;
      a1[9] = v89;
      v91 = a1[20];
      v92 = a1[21];
      v93 = a1[23];
      a1[14] = a1[22];
      a1[15] = v93;
      a1[12] = v91;
      a1[13] = v92;
      v94 = v308;
      v95 = v309;
      v96 = v311;
      a1[18] = v310;
      a1[19] = v96;
      *v38 = v94;
      a1[17] = v95;
      v97 = v312;
      v98 = v313;
      v99 = v315;
      a1[22] = v314;
      a1[23] = v99;
      a1[20] = v97;
      a1[21] = v98;
      v100 = (*a3)(a1 + 8, a1);
      v44 = a1 + 16;
      if (v100)
      {
        v101 = a1[5];
        v312 = a1[4];
        v313 = v101;
        v102 = a1[7];
        v314 = a1[6];
        v315 = v102;
        v103 = a1[1];
        v308 = *a1;
        v309 = v103;
        v104 = a1[3];
        v310 = a1[2];
        v311 = v104;
        v105 = a1[8];
        v106 = a1[9];
        v107 = a1[11];
        a1[2] = a1[10];
        a1[3] = v107;
        *a1 = v105;
        a1[1] = v106;
        v108 = a1[12];
        v109 = a1[13];
        v110 = a1[15];
        a1[6] = a1[14];
        a1[7] = v110;
        a1[4] = v108;
        a1[5] = v109;
        v111 = v308;
        v112 = v309;
        v113 = v311;
        a1[10] = v310;
        a1[11] = v113;
        a1[8] = v111;
        a1[9] = v112;
        v114 = v312;
        v115 = v313;
        v116 = v315;
        a1[14] = v314;
        a1[15] = v116;
        a1[12] = v114;
        a1[13] = v115;
      }
    }
  }

  v212 = a1 + 24;
  if (&a1[24] == a2)
  {
    return 1;
  }

  v213 = 0;
  v214 = 0;
  while (1)
  {
    if ((*a3)(v212, v44))
    {
      v220 = v212[5];
      v312 = v212[4];
      v313 = v220;
      v221 = v212[7];
      v314 = v212[6];
      v315 = v221;
      v222 = v212[1];
      v308 = *v212;
      v309 = v222;
      v223 = v212[3];
      v224 = v213;
      v310 = v212[2];
      v311 = v223;
      do
      {
        v225 = (a1 + v224);
        v226 = *(a1 + v224 + 336);
        v225[28] = *(a1 + v224 + 320);
        v225[29] = v226;
        v227 = *(a1 + v224 + 368);
        v225[30] = *(a1 + v224 + 352);
        v225[31] = v227;
        v228 = *(a1 + v224 + 272);
        v225[24] = *(a1 + v224 + 256);
        v225[25] = v228;
        v229 = *(a1 + v224 + 304);
        v225[26] = *(a1 + v224 + 288);
        v225[27] = v229;
        if (v224 == -256)
        {
          v215 = a1;
          goto LABEL_35;
        }

        v224 -= 128;
      }

      while (((*a3)(&v308, v225 + 8) & 1) != 0);
      v215 = (a1 + v224 + 384);
LABEL_35:
      v216 = v313;
      v215[4] = v312;
      v215[5] = v216;
      v217 = v315;
      v215[6] = v314;
      v215[7] = v217;
      v218 = v309;
      *v215 = v308;
      v215[1] = v218;
      v219 = v311;
      ++v214;
      v215[2] = v310;
      v215[3] = v219;
      if (v214 == 8)
      {
        return &v212[8] == a2;
      }
    }

    v44 = v212;
    v213 += 128;
    v212 += 8;
    if (v212 == a2)
    {
      return 1;
    }
  }
}

void sub_1E545F9EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[28];
    if (v3)
    {
      a2[29] = v3;
      operator delete(v3);
    }

    v4 = a2[25];
    if (v4)
    {
      v5 = a2[26];
      v6 = a2[25];
      if (v5 != v4)
      {
        v7 = a2[26];
        do
        {
          v9 = *(v7 - 24);
          v7 -= 24;
          v8 = v9;
          if (v9)
          {
            *(v5 - 16) = v8;
            operator delete(v8);
          }

          v5 = v7;
        }

        while (v7 != v4);
        v6 = a2[25];
      }

      a2[26] = v4;
      operator delete(v6);
    }

    v10 = a2[20];
    if (v10)
    {
      a2[21] = v10;
      operator delete(v10);
    }

    JUMPOUT(0x1E6928650);
  }
}

void sub_1E545FAAC(uint64_t a1, uint32x2_t *a2, int *a3, _DWORD *a4)
{
  v6 = *(a1 + 36);
  v7 = *(a1 + 40);
  if (v6 < 0)
  {
    v8 = -(-v6 >> 14);
  }

  else
  {
    v8 = v6 >> 14;
  }

  if (v6 < 0)
  {
    v6 = -v6;
  }

  v9 = (16 * (v6 & 0x3FFFu)) | (v8 << 18);
  if (v7 < 0)
  {
    v10 = -(-v7 >> 14);
  }

  else
  {
    v10 = v7 >> 14;
  }

  if (v7 < 0)
  {
    v7 = -v7;
  }

  v11 = (16 * (v7 & 0x3FFFu)) | (v10 << 18);
  v12 = *(a1 + 44);
  v13 = *(a1 + 48);
  if (v12 < 0)
  {
    v14 = -(-v12 >> 14);
  }

  else
  {
    v14 = v12 >> 14;
  }

  if (v12 < 0)
  {
    v12 = -v12;
  }

  v15 = 16 * (v12 & 0x3FFFu);
  if (v13 < 0)
  {
    v16 = -(-v13 >> 14);
  }

  else
  {
    v16 = v13 >> 14;
  }

  if (v13 < 0)
  {
    v13 = -v13;
  }

  v17 = (16 * (v13 & 0x3FFFu)) | (v16 << 18);
  v18 = *(a1 + 52);
  v19 = *(a1 + 56);
  if (v18 < 0)
  {
    v20 = -(-v18 >> 14);
  }

  else
  {
    v20 = v18 >> 14;
  }

  if (v18 < 0)
  {
    v18 = -v18;
  }

  v21 = (16 * (v18 & 0x3FFFu)) | (v20 << 18);
  if (v19 < 0)
  {
    v22 = -(-v19 >> 14);
  }

  else
  {
    v22 = v19 >> 14;
  }

  if (v19 < 0)
  {
    v19 = -v19;
  }

  v23 = 16 * (v19 & 0x3FFFu);
  v24 = *(a1 + 68);
  if (v24 < 0)
  {
    v25 = -(-v24 >> 14);
  }

  else
  {
    v25 = v24 >> 14;
  }

  if (v24 < 0)
  {
    v24 = -v24;
  }

  v26 = vshr_n_u32(*a2, 6uLL);
  v27.i64[0] = v26.u32[0];
  v27.i64[1] = v26.u32[1];
  v28 = v27;
  v29 = *(a1 + 60);
  v30 = vbsl_s8(vcltz_s32(v29), vneg_s32(vshr_n_u32(vneg_s32(v29), 0xEuLL)), vshr_n_u32(v29, 0xEuLL));
  v31 = vand_s8(vshl_n_s32(vabs_s32(v29), 4uLL), vdup_n_s32(0x3FFF0u));
  v27.i64[0] = v31.u32[0];
  v27.i64[1] = v31.u32[1];
  v32 = vorrq_s8(vshll_n_s32(v30, 0x12uLL), v27);
  v33 = (v15 | (v14 << 18)) + v9 * v28.i64[0] + v11 * v28.i64[1];
  v34 = (v23 | (v22 << 18)) + v17 * v28.i64[0] + v21 * v28.i64[1];
  v35 = ((16 * (v24 & 0x3FFFu)) | (v25 << 18)) + v32.i64[0] * v28.i64[0] + v32.i64[1] * v28.i64[1];
  if (v35)
  {
    v36 = sub_1E53DCDBC(18, v33);
    v37 = sub_1E53DCDBC(18, v34);
    v38 = sub_1E53DCDBC(18, v35);
    sub_1E53DCEC0(v38);
    v40 = v36 * v39;
    v41 = v37 * v39;
    v42 = sub_1E53DCDBC(18, v40);
    v43 = sub_1E53DCDBC(18, v41);
  }

  else
  {
    if (v33 <= 0)
    {
      v42 = -(-v33 >> 18);
    }

    else
    {
      v42 = v33 >> 18;
    }

    v43 = v34 >> 18;
    if (v34 <= 0)
    {
      v43 = -(-v34 >> 18);
    }
  }

  if (v42 >= 4095)
  {
    v44 = 4095;
  }

  else
  {
    v44 = v42;
  }

  if (v44 <= -4096)
  {
    v44 = -4096;
  }

  if (v43 >= 0x1FFF)
  {
    LODWORD(v43) = 0x1FFF;
  }

  if (v43 <= -8192)
  {
    LODWORD(v43) = -8192;
  }

  *a3 = v44;
  *a4 = v43;
}

uint64_t sub_1E545FD1C(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = result;
  v8 = *(result + 548);
  if (v8 >= 0x11)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include_private/VIO/Hardware/KeyPointAndDescriptorMatcherUtils.h", 40, "hamv_size <= 16", 15, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      goto LABEL_37;
    }
  }

  else if (!v8)
  {
    *a4 = 0;
    goto LABEL_17;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(a3 + 132 + 4 * v9);
    v12 = *(a2 + 132 + 4 * v9);
    if (v12 != v11)
    {
      v13 = v12 ^ v11;
      do
      {
        ++v10;
        v13 &= v13 - 1;
      }

      while (v13);
    }

    ++v9;
  }

  while (v9 != v8);
  *a4 = v10;
  if (v10 >= 0x1D8)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointAndDescriptorMatcher.cpp", 84, "hamming_distance <= 471", 23, &unk_1E549A011, 0, sub_1E548FDE0);
    if ((result & 1) == 0)
    {
      v10 = *a4;
      goto LABEL_14;
    }

LABEL_37:
    abort();
  }

LABEL_14:
  if (v10 > *(v7 + 20))
  {
    ++*(v7 + 584);
    return result;
  }

LABEL_17:
  ++*(v7 + 580);
  v14 = *a4;
  v15 = *(a3 + 196);
  v16 = (*(v7 + 496) + 16 * v15);
  if (*a4 < *v16)
  {
    if (v16[1] != 0xFFFFF)
    {
      ++*(v7 + 600);
      goto LABEL_25;
    }

LABEL_19:
    ++*(v7 + 596);
LABEL_25:
    v14 = *a4;
    goto LABEL_26;
  }

  if (v14 != *v16 || *(a2 + 20) >= v16[2])
  {
    goto LABEL_27;
  }

  if (v16[1] == 0xFFFFF)
  {
    goto LABEL_19;
  }

LABEL_26:
  v17 = (*(v7 + 608) + (16 * *(a2 + 196))) >> 4;
  *v16 = v14;
  v16[1] = v17;
  v16[2] = *(a2 + 20);
  v16[3] = (*(a2 + 12) >> 5) + 8 * *(a2 + 24);
  v14 = *a4;
LABEL_27:
  v18 = *(a2 + 196);
  v19 = *(v7 + 472) + 36 * v18;
  if (v14 < *v19)
  {
    if (*(v19 + 4) != 0xFFFFF)
    {
      ++*(v7 + 592);
      goto LABEL_35;
    }

LABEL_29:
    ++*(v7 + 588);
LABEL_35:
    v14 = *a4;
LABEL_36:
    v20 = *(v7 + 616);
    *v19 = v14;
    *(v19 + 4) = v20 + 4 * v15;
    *(v19 + 8) = *(a3 + 20);
    *(v19 + 12) = *a2;
    v21 = *(a2 + 128);
    *(v19 + 16) = *(a2 + 4);
    *(v19 + 20) = v21;
    *(v19 + 24) = v18;
    *(v19 + 28) = *(a2 + 32);
    *(v19 + 32) = *(a2 + 24);
    return result;
  }

  if (v14 == *v19 && *(a3 + 20) < *(v19 + 8))
  {
    if (*(v19 + 4) != 0xFFFFF)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  return result;
}

void sub_1E545FFDC(void *a1)
{
  sub_1E5460014(a1);

  JUMPOUT(0x1E6928650);
}

void *sub_1E5460014(void *a1)
{
  *a1 = &unk_1F5F0A190;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    operator delete(v2);
  }

  v3 = a1[62];
  if (v3)
  {
    a1[63] = v3;
    operator delete(v3);
  }

  v4 = a1[59];
  if (v4)
  {
    a1[60] = v4;
    operator delete(v4);
  }

  v5 = a1[56];
  if (v5)
  {
    a1[57] = v5;
    operator delete(v5);
  }

  v6 = a1[53];
  if (v6)
  {
    a1[54] = v6;
    operator delete(v6);
  }

  v7 = a1[50];
  if (v7)
  {
    a1[51] = v7;
    operator delete(v7);
  }

  v8 = a1[47];
  if (v8)
  {
    a1[48] = v8;
    operator delete(v8);
  }

  v9 = a1[44];
  if (v9)
  {
    a1[45] = v9;
    operator delete(v9);
  }

  v10 = a1[41];
  if (v10)
  {
    a1[42] = v10;
    operator delete(v10);
  }

  v11 = a1[38];
  if (v11)
  {
    a1[39] = v11;
    operator delete(v11);
  }

  v12 = a1[35];
  if (v12)
  {
    a1[36] = v12;
    operator delete(v12);
  }

  v13 = a1[32];
  if (v13)
  {
    a1[33] = v13;
    operator delete(v13);
  }

  v14 = a1[29];
  if (v14)
  {
    a1[30] = v14;
    operator delete(v14);
  }

  v15 = a1[26];
  if (v15)
  {
    a1[27] = v15;
    operator delete(v15);
  }

  v16 = a1[23];
  if (v16)
  {
    a1[24] = v16;
    operator delete(v16);
  }

  v17 = a1[20];
  if (v17)
  {
    a1[21] = v17;
    operator delete(v17);
  }

  v18 = a1[17];
  if (v18)
  {
    a1[18] = v18;
    operator delete(v18);
  }

  v19 = a1[14];
  if (v19)
  {
    a1[15] = v19;
    operator delete(v19);
  }

  v20 = a1[11];
  if (v20)
  {
    a1[12] = v20;
    operator delete(v20);
  }

  return a1;
}

uint64_t sub_1E5460184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E547F2F8(a1, a2);
  *v4 = &unk_1F5F0A210;
  *(v4 + 5312) = 0xFFFFF;
  v5 = (v4 + 5320);
  *(v4 + 5608) = 0;
  *(v4 + 5320) = 0u;
  *(v4 + 5336) = 0u;
  *(v4 + 5352) = 0u;
  *(v4 + 5368) = 0u;
  *(v4 + 5384) = 0u;
  *(v4 + 5400) = 0u;
  *(v4 + 5416) = 0u;
  *(v4 + 5432) = 0u;
  *(v4 + 5448) = 0u;
  *(v4 + 5464) = 0u;
  *(v4 + 5480) = 0u;
  *(v4 + 5496) = 0u;
  *(v4 + 5512) = 0u;
  *(v4 + 5528) = 0u;
  *(v4 + 5544) = 0u;
  *(v4 + 5560) = 0u;
  *(v4 + 5576) = 0u;
  *(v4 + 5592) = 0u;
  v6 = *(v4 + 64);
  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1E5415338();
  }

  if (*(a1 + 56) != 1)
  {
LABEL_22:
    if (*(a1 + 64) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 5592);
  v9 = *(a1 + 5584);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
  v11 = v7 - v10;
  if (v7 > v10)
  {
    v12 = *(a1 + 5600);
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) < v11)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v9) >> 3);
        if (2 * v13 > v7)
        {
          v7 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v7;
        }

        if (v14 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1E53E5340();
      }

      sub_1E5415338();
    }

    bzero(*(a1 + 5592), 24 * ((24 * v11 - 24) / 0x18) + 24);
    *(a1 + 5592) = v8 + 24 * ((24 * v11 - 24) / 0x18) + 24;
    goto LABEL_22;
  }

  if (v7 >= v10)
  {
    goto LABEL_22;
  }

  v15 = v9 + 24 * v7;
  if (v8 != v15)
  {
    v16 = *(a1 + 5592);
    do
    {
      v18 = *(v16 - 24);
      v16 -= 24;
      v17 = v18;
      if (v18)
      {
        *(v8 - 16) = v17;
        operator delete(v17);
      }

      v8 = v16;
    }

    while (v16 != v15);
  }

  *(a1 + 5592) = v15;
  if (*(a1 + 64) == 1)
  {
LABEL_23:
    v19 = *(a1 + 104);
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 112) - v19) >> 3);
    if (*(a1 + 112) == v19)
    {
      sub_1E54633D0(a1 + 104, 1 - v20);
    }

    else if (v20 >= 2)
    {
      *(a1 + 112) = v19 + 40;
    }

    v21 = *(a1 + 128);
    v22 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - v21) >> 3);
    if (*(a1 + 136) == v21)
    {
      sub_1E54633D0(a1 + 128, 1 - v22);
      v21 = *(a1 + 128);
    }

    else if (v22 >= 2)
    {
      *(a1 + 136) = v21 + 10;
    }

    v23 = *(a1 + 104);
    *(v23 + 32) = 0;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    v24 = *(a1 + 80);
    v25 = *(a1 + 8);
    v26 = *(a1 + 16);
    *v21 = v25;
    v21[1] = v26;
    v21[2] = (v25 + 1) / 2;
    v21[3] = (v26 + 1) / 2;
    v27 = ((v25 + 1) / 2 + 1) / 2;
    v28 = ((v26 + 1) / 2 + 1) / 2;
    v21[4] = v27;
    v21[5] = v28;
    v21[6] = (v27 + 1) / 2;
    v21[7] = (v28 + 1) / 2;
    v21[8] = ((v27 + 1) / 2 + 1) / 2;
    v21[9] = ((v28 + 1) / 2 + 1) / 2;
    v29 = (*(a1 + 88) - v24) >> 2;
    if (*(a1 + 88) == v24)
    {
      sub_1E54151E4(a1 + 80, 1 - v29);
      v24 = *(a1 + 80);
    }

    else if (v29 >= 2)
    {
      *(a1 + 88) = v24 + 1;
    }

    *v24 = 0;
  }

LABEL_36:
  if (*(a1 + 152))
  {
    if (!*(a2 + 56))
    {
      return a1;
    }

    goto LABEL_47;
  }

  v30 = *(a1 + 200);
  v31 = *(a1 + 64);
  v32 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 208) - v30) >> 3);
  if (v31 <= v32)
  {
    if (v31 < v32)
    {
      *(a1 + 208) = v30 + 40 * v31;
    }
  }

  else
  {
    sub_1E54633D0(a1 + 200, v31 - v32);
    v31 = *(a1 + 64);
  }

  if (v31)
  {
    v33 = *(a1 + 200);
    do
    {
      memset_pattern16(v33, &unk_1E5492960, 0x28uLL);
      v33 += 40;
      --v31;
    }

    while (v31);
  }

  memset_pattern16((a1 + 156), &unk_1E5492970, 0x28uLL);
  if (*(a2 + 56))
  {
LABEL_47:
    v34 = 0;
    v35 = 1;
    do
    {
      sub_1E545A54C(v41, *(a1 + 8), *(a1 + 16), (*(a1 + 104) + 40 * v34), (*(a1 + 128) + 40 * v34), (*(a1 + 200) + 40 * v34), (a1 + 156));
      sub_1E545B30C(v41, &v39);
      v36 = *v5 + 24 * v34;
      v37 = *v36;
      if (*v36)
      {
        *(v36 + 8) = v37;
        operator delete(v37);
        *v36 = 0;
        *(v36 + 8) = 0;
        *(v36 + 16) = 0;
      }

      *v36 = v39;
      *(v36 + 16) = v40;
      v34 = v35++;
    }

    while (*(a2 + 56) > v34);
  }

  return a1;
}

void sub_1E546074C(_Unwind_Exception *a1)
{
  sub_1E541B3D8((v1 + 5584));
  v4 = *(v1 + 5560);
  if (v4)
  {
    *(v1 + 5568) = v4;
    operator delete(v4);
    v5 = *(v1 + 5536);
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 5512);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(v1 + 5536);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 5544) = v5;
  operator delete(v5);
  v6 = *(v1 + 5512);
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 5488);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 5520) = v6;
  operator delete(v6);
  v7 = *(v1 + 5488);
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 5464);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 5496) = v7;
  operator delete(v7);
  v8 = *(v1 + 5464);
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 5440);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 5472) = v8;
  operator delete(v8);
  v9 = *(v1 + 5440);
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 5416);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v1 + 5448) = v9;
  operator delete(v9);
  v10 = *(v1 + 5416);
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 5392);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v1 + 5424) = v10;
  operator delete(v10);
  v11 = *(v1 + 5392);
  if (!v11)
  {
LABEL_9:
    v12 = *(v1 + 5368);
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v1 + 5400) = v11;
  operator delete(v11);
  v12 = *(v1 + 5368);
  if (!v12)
  {
LABEL_10:
    v13 = *(v1 + 5344);
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v1 + 5376) = v12;
  operator delete(v12);
  v13 = *(v1 + 5344);
  if (!v13)
  {
LABEL_11:
    sub_1E541B3D8(v2);
    sub_1E5460878(v1);
    _Unwind_Resume(a1);
  }

LABEL_21:
  *(v1 + 5352) = v13;
  operator delete(v13);
  sub_1E541B3D8(v2);
  sub_1E5460878(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1E5460878(uint64_t a1)
{
  *a1 = &unk_1F5F0A290;
  sub_1E541B450(a1 + 488, *(a1 + 496));
  sub_1E5463578((a1 + 224));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    *(a1 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    *(a1 + 88) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_1E546090C(void **a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v4 = a2;
  if (*(a2 + 64) <= a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 85, "stripe_id < config_.num_stripes", 31, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v7 = *a3;
  v6 = a3[1];
  v84 = 0;
  v85 = 0;
  v83 = 0;
  __p = &v83;
  LOBYTE(v81) = 0;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1E5415338();
  }

  __p = 0;
  v81 = 0;
  v82 = 0;
  p_p = &__p;
  v87 = 0;
  v76 = v4;
  v77 = a1;
  v8 = v7;
  v9 = *(v4 + 5320) + 24 * a4;
  v10 = *v9;
  v73 = *(v9 + 8);
  if (*v9 != v73)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v70 = v4 + 5344;
    while (1)
    {
      v15 = v10[1];
      v16 = v15 - 1;
      v17 = *(v8 + 24 * (v15 - 1));
      if (*(v8 + 24 * (v15 - 1) + 8) != v17)
      {
        v18 = (*v10 & 0x1FFFu) >> (v15 >> 1);
        if (*(v17 + 40) <= v18)
        {
          break;
        }
      }

LABEL_8:
      v10 += 2;
      if (v10 == v73)
      {
        v7 = a3[1];
        goto LABEL_45;
      }
    }

    v19 = 0;
    v20 = (v70 + 24 * v16);
    v21 = 168;
    v74 = v20;
    v71 = (*v10 & 0x1FFFu) >> (v15 >> 1);
    while (1)
    {
      if (*(*(v83 + 3 * v16) + v19))
      {
        goto LABEL_41;
      }

      if (v11 >= *(v4 + 5312))
      {
        *(*(__p + 3 * v16) + v19) = 1;
      }

      else
      {
        __src = v12;
        v23 = v20[1];
        v22 = v20[2];
        if (v23 >= v22)
        {
          v24 = *v20;
          v25 = v23 - *v20;
          v26 = v25 >> 2;
          v27 = (v25 >> 2) + 1;
          if (v27 >> 62)
          {
            sub_1E5415338();
          }

          v28 = v22 - v24;
          if (v28 >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v29 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          __n = v13;
          v72 = v14;
          if (v29)
          {
            if (!(v29 >> 62))
            {
              operator new();
            }

            sub_1E53E5340();
          }

          v20 = (v70 + 24 * v16);
          v30 = v11;
          *(4 * v26) = v11;
          v31 = 4 * v26 + 4;
          memcpy(0, v24, v25);
          *v74 = 0;
          v74[1] = v31;
          v74[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }

          v13 = __n;
          v14 = v72;
          v18 = v71;
          v74[1] = v31;
          v11 = v30 + 1;
          if (v72 >= __n)
          {
LABEL_30:
            v32 = (v14 - __src) >> 2;
            v33 = v32 + 1;
            if ((v32 + 1) >> 62)
            {
              sub_1E5415338();
            }

            if ((v13 - __src) >> 1 > v33)
            {
              v33 = (v13 - __src) >> 1;
            }

            if (v13 - __src >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v34 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v33;
            }

            if (v34)
            {
              if (!(v34 >> 62))
              {
                operator new();
              }

              sub_1E53E5340();
            }

            v35 = v11;
            *(4 * v32) = v19;
            memcpy(0, __src, v14 - __src);
            v12 = 0;
            v13 = 0;
            v4 = v76;
            v11 = v35;
            v14 = (4 * v32 + 4);
            v20 = (v70 + 24 * v16);
            goto LABEL_40;
          }
        }

        else
        {
          *v23 = v11;
          v20[1] = v23 + 1;
          ++v11;
          if (v14 >= v13)
          {
            goto LABEL_30;
          }
        }

        *v14 = v19;
        v14 += 4;
        v4 = v76;
        v12 = __src;
      }

LABEL_40:
      *(*(v83 + 3 * v16) + v19) = 1;
      v8 = *a3;
LABEL_41:
      ++v19;
      v36 = *(v8 + 24 * v16);
      if (v19 < (*(v8 + 24 * v16 + 8) - v36) >> 7)
      {
        v37 = *(v36 + v21);
        v21 += 128;
        if (v37 <= v18)
        {
          continue;
        }
      }

      goto LABEL_8;
    }
  }

LABEL_45:
  *v77 = 0;
  v77[1] = 0;
  v77[2] = 0;
  p_p = v77;
  v87 = 0;
  if (v7 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1E5415338();
  }

  v38 = *v77;
  v39 = v77[1];
  v40 = v39 - *v77;
  if (v39 != *v77)
  {
    v41 = 0;
    v42 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = &v38[24 * v41];
      v44 = *v43;
      if (*(v43 + 1) != *v43)
      {
        v45 = 0;
        v46 = 0;
        v47 = *(v76 + 5344 + 24 * v41);
        do
        {
          v48 = (v44 + v45);
          v49 = (*(v47 + 4 * v46) << 7);
          v50 = *v48;
          v51 = v48[1];
          v52 = v48[3];
          v49[2] = v48[2];
          v49[3] = v52;
          *v49 = v50;
          v49[1] = v51;
          v53 = v48[4];
          v54 = v48[5];
          v55 = v48[7];
          v49[6] = v48[6];
          v49[7] = v55;
          v49[4] = v53;
          v49[5] = v54;
          ++v46;
          v44 = *v43;
          v45 += 128;
        }

        while (v46 < (*(v43 + 1) - *v43) >> 7);
      }

      ++v41;
    }

    while (v41 != v42);
  }

  if (*(v76 + 56))
  {
    v56 = (*(v76 + 5584) + 24 * a4);
    if ((v56[1] - *v56) >> 8)
    {
      v56[1] = *v56;
    }
  }

  v57 = __p;
  if (__p)
  {
    v58 = v81;
    v59 = __p;
    if (v81 != __p)
    {
      v60 = v81;
      do
      {
        v62 = *(v60 - 3);
        v60 -= 24;
        v61 = v62;
        if (v62)
        {
          *(v58 - 2) = v61;
          operator delete(v61);
        }

        v58 = v60;
      }

      while (v60 != v57);
      v59 = __p;
    }

    v81 = v57;
    operator delete(v59);
  }

  v63 = v83;
  if (v83)
  {
    v64 = v84;
    v65 = v83;
    if (v84 != v83)
    {
      v66 = v84;
      do
      {
        v68 = *(v66 - 3);
        v66 -= 24;
        v67 = v68;
        if (v68)
        {
          *(v64 - 2) = v67;
          operator delete(v67);
        }

        v64 = v66;
      }

      while (v66 != v63);
      v65 = v83;
    }

    v84 = v63;
    operator delete(v65);
  }
}

void sub_1E54615A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, void *__p, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (v25)
  {
    operator delete(v25);
  }

  sub_1E541B3D8(a19);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1E541B3D8(&a22);
  sub_1E541B3D8(&a25);
  _Unwind_Resume(a1);
}

void sub_1E5461674(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unsigned int a5)
{
  v8 = a1;
  v275 = *MEMORY[0x1E69E9840];
  v212 = a5;
  if (*(a1 + 64) <= a5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 166, "stripe_id < config_.num_stripes", 31, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_126;
  }

  v256 = 0;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v249 = 0u;
  v247 = 0u;
  memset(v248, 0, 28);
  v245 = 0u;
  v246 = 0u;
  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  if (a5)
  {
    sub_1E546090C(&__p, v8, a2, a5);
  }

  else
  {
    *(v8 + 5312) = *(v8 + 72);
    *(v8 + 5608) = 0;
    v9 = *(v8 + 368);
    v10 = *(v8 + 376) - v9;
    if (v10)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v12 = (*(v8 + 224) + 8);
      v13 = (*(v8 + 416) + 8);
      v14 = (*(v8 + 248) + 8);
      v15 = (*(v8 + 392) + 8);
      v16 = (*(v8 + 272) + 8);
      v17 = (v9 + 8);
      v18 = (*(v8 + 296) + 8);
      v19 = (*(v8 + 344) + 8);
      v20 = (*(v8 + 320) + 8);
      do
      {
        *v12 = *(v12 - 1);
        v12 += 3;
        *v14 = *(v14 - 1);
        v14 += 3;
        *v16 = *(v16 - 1);
        v16 += 3;
        *v18 = *(v18 - 1);
        v18 += 3;
        *v20 = *(v20 - 1);
        v20 += 3;
        *v19 = *(v19 - 1);
        v19 += 3;
        *v17 = *(v17 - 1);
        v17 += 3;
        *v15 = *(v15 - 1);
        v15 += 3;
        *v13 = *(v13 - 1);
        v13 += 3;
        --v11;
      }

      while (v11);
    }

    sub_1E546090C(&__p, v8, a2, 0);
  }

  v21 = *(v8 + 24);
  v225 = v8;
  v220 = a4;
  if ((v21 - 3) <= 0xFFFFFFFD)
  {
    v216 = *(*(v8 + 80) + 4 * v212) << 6;
    *v208 = v8 + 5344;
    v214 = v8 + 960;
    v22 = 1;
    do
    {
      v23 = v22 - 1;
      v24 = *(__p + 3 * v22 - 2) - *(__p + 3 * v22 - 3);
      if (v24)
      {
        v25 = 0;
        v26 = 0;
        v27 = v24 >> 7;
        v210 = (*v208 + 24 * v23);
        if (v27 <= 1)
        {
          v27 = 1;
        }

        v218 = v27;
        v223 = v22 - 1;
        do
        {
          v39 = (*(__p + 3 * v23) + v25);
          v40 = v39[3];
          v42 = *v39;
          v41 = v39[1];
          v231 = v39[2];
          v232 = v40;
          v229 = v42;
          v230 = v41;
          v43 = v39[6];
          v45 = v39[4];
          v44 = v39[5];
          v236 = v39[7];
          v234 = v44;
          v235 = v43;
          v233 = v45;
          v46 = vcvtd_n_f64_u32(v229, 6uLL);
          v47 = vcvtd_n_f64_u32(DWORD1(v229), 6uLL);
          v48 = DWORD2(v229);
          v49 = v22;
          sub_1E548149C(v8, a3, SDWORD2(v229), v22, &v249, v46, v47);
          v50 = *(v8 + 224) + 24 * v23;
          v51 = *(v50 + 8);
          v52 = *(v50 + 16);
          if (v51 >= v52)
          {
            v60 = *v50;
            v61 = 0xEEEEEEEEEEEEEEEFLL * ((v51 - *v50) >> 3);
            v62 = v61 + 1;
            if (v61 + 1 > 0x222222222222222)
            {
              sub_1E5415338();
            }

            v63 = 0xEEEEEEEEEEEEEEEFLL * ((v52 - v60) >> 3);
            if (2 * v63 > v62)
            {
              v62 = 2 * v63;
            }

            if (v63 >= 0x111111111111111)
            {
              v64 = 0x222222222222222;
            }

            else
            {
              v64 = v62;
            }

            if (v64)
            {
              if (v64 <= 0x222222222222222)
              {
                operator new();
              }

              sub_1E53E5340();
            }

            v65 = v254;
            v66 = 8 * ((v51 - *v50) >> 3);
            *(v66 + 64) = v253;
            *(v66 + 80) = v65;
            *(v66 + 96) = v255;
            *(v66 + 112) = v256;
            v67 = v250;
            *v66 = v249;
            *(v66 + 16) = v67;
            v68 = v252;
            v59 = 120 * v61 + 120;
            *(v66 + 32) = v251;
            *(v66 + 48) = v68;
            v69 = 120 * v61 - (v51 - v60);
            memcpy((v66 - (v51 - v60)), v60, v51 - v60);
            *v50 = v69;
            *(v50 + 8) = v59;
            *(v50 + 16) = 0;
            if (v60)
            {
              operator delete(v60);
            }

            v8 = v225;
          }

          else
          {
            v53 = v249;
            v54 = v250;
            v55 = v252;
            *(v51 + 32) = v251;
            *(v51 + 48) = v55;
            *v51 = v53;
            *(v51 + 16) = v54;
            v56 = v253;
            v57 = v254;
            v58 = v255;
            *(v51 + 112) = v256;
            *(v51 + 80) = v57;
            *(v51 + 96) = v58;
            *(v51 + 64) = v56;
            v59 = v51 + 120;
          }

          v22 = v49;
          *(v50 + 8) = v59;
          v227 = 0.0;
          v228 = 0.0;
          v226 = 0.0;
          sub_1E5481AB8(v8, &v249, &v228, &v227, &v226);
          v70 = v228 >> 4;
          if (v70 >= 0x100)
          {
            v8 = v225;
            if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 196, "orientation >= 0 && orientation < 256 && orientation overflow", 63, &unk_1E549A011, 0, sub_1E548FDE0))
            {
              goto LABEL_126;
            }
          }

          LODWORD(v229) = v229 + v216;
          v71 = vcvtd_n_u64_f64(*(v214 + 8 * (BYTE8(v229) & 0x1F)), 0xDuLL);
          HIDWORD(v229) = v70;
          LODWORD(v230) = (((v71 << (DWORD2(v229) >> 5)) + 8) >> 4) & 0x3FFF;
          sub_1E5481D24(v8, a3, v48, v49, &v239, v46, v47, v227, v226);
          v23 = v223;
          v72 = *(v225 + 248) + 24 * v223;
          v73 = *(v72 + 8);
          v74 = *(v72 + 16);
          if (v73 >= v74)
          {
            v84 = *v72;
            v85 = 0x82FA0BE82FA0BE83 * ((v73 - *v72) >> 2);
            v86 = v85 + 1;
            if (v85 + 1 > 0x17D05F417D05F41)
            {
              sub_1E5415338();
            }

            v87 = 0x82FA0BE82FA0BE83 * ((v74 - v84) >> 2);
            if (2 * v87 > v86)
            {
              v86 = 2 * v87;
            }

            if (v87 >= 0xBE82FA0BE82FA0)
            {
              v88 = 0x17D05F417D05F41;
            }

            else
            {
              v88 = v86;
            }

            if (v88)
            {
              if (v88 <= 0x17D05F417D05F41)
              {
                operator new();
              }

              sub_1E53E5340();
            }

            v89 = v248[0];
            v90 = (4 * ((v73 - *v72) >> 2));
            v90[8] = v247;
            v90[9] = v89;
            *(v90 + 156) = *(v248 + 12);
            v91 = v244;
            v90[4] = v243;
            v90[5] = v91;
            v92 = v246;
            v90[6] = v245;
            v90[7] = v92;
            v93 = v240;
            *v90 = v239;
            v90[1] = v93;
            v94 = v242;
            v83 = 172 * v85 + 172;
            v90[2] = v241;
            v90[3] = v94;
            v95 = (172 * v85 - (v73 - v84));
            memcpy(v95, v84, v73 - v84);
            *v72 = v95;
            *(v72 + 8) = v83;
            *(v72 + 16) = 0;
            if (v84)
            {
              operator delete(v84);
            }

            v22 = v49;
            v23 = v223;
          }

          else
          {
            v75 = v239;
            v76 = v241;
            v73[1] = v240;
            v73[2] = v76;
            *v73 = v75;
            v77 = v242;
            v78 = v243;
            v79 = v245;
            v73[5] = v244;
            v73[6] = v79;
            v73[3] = v77;
            v73[4] = v78;
            v80 = v246;
            v81 = v247;
            v82 = v248[0];
            *(v73 + 156) = *(v248 + 12);
            v73[8] = v81;
            v73[9] = v82;
            v73[7] = v80;
            v83 = v73 + 172;
          }

          *(v72 + 8) = v83;
          v8 = v225;
          sub_1E5480524(v225, &v239, v274);
          sub_1E548454C(v273, v274);
          sub_1E5462714((v225 + 224), &v229, v274, v273, v23);
          if (*(v225 + 56) == 1)
          {
            if (v26 >= (v210[1] - *v210) >> 2)
            {
              sub_1E54639C4();
            }

            v96 = *(*v210 + 4 * v26);
            v97 = *(*(v225 + 5584) + 24 * v212);
            if (v96 >= (*(*(v225 + 5584) + 24 * v212 + 8) - v97) >> 8)
            {
              if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 214, "reorder_index < kp_desc_desmatch_[stripe_id].size()", 51, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_126;
              }

              v97 = *(*(v225 + 5584) + 24 * v212);
            }

            v261 = v233;
            v262 = v234;
            v263 = v235;
            v264 = v236;
            v257 = v229;
            v258 = v230;
            v259 = v231;
            v260 = v232;
            v267 = v274[2];
            v268 = v274[3];
            v265 = v274[0];
            v266 = v274[1];
            v269 = v273[0];
            v270 = v273[1];
            v271 = v273[2];
            v272 = v273[3];
            v28 = (v97 + (v96 << 8));
            v29 = v232;
            v28[2] = v231;
            v28[3] = v29;
            v30 = v262;
            v28[4] = v261;
            v28[5] = v30;
            v31 = v258;
            *v28 = v257;
            v28[1] = v31;
            v32 = v264;
            v28[6] = v263;
            v28[7] = v32;
            v33 = v265;
            v34 = v266;
            v35 = v268;
            v28[10] = v267;
            v28[11] = v35;
            v28[8] = v33;
            v28[9] = v34;
            v36 = v269;
            v37 = v270;
            v38 = v272;
            v28[14] = v271;
            v28[15] = v38;
            v28[12] = v36;
            v28[13] = v37;
            v23 = v223;
          }

          ++v26;
          v25 += 128;
        }

        while (v218 != v26);
        v21 = *(v225 + 24);
        a4 = v220;
      }

      ++v22;
    }

    while (v22 < v21 - 1);
  }

  if (*(v8 + 64) - 1 != v212)
  {
    goto LABEL_117;
  }

  v98 = *(v8 + 376) - *(v8 + 368);
  if (v98 != *(v8 + 400) - *(v8 + 392) || v98 != *(v8 + 424) - *(v8 + 416))
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 228, "kp.size() == desc.size() && kp.size() == desc_reorder.size()", 60, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_126:
      abort();
    }
  }

  v99 = *(v8 + 440);
  *(v8 + 448) = v99;
  v100 = *(v8 + 464);
  *(v8 + 472) = v100;
  v101 = a4[4];
  v102 = v21 - 2;
  a4[11] = a4[10];
  a4[17] = a4[16];
  a4[14] = a4[13];
  a4[5] = v101;
  v209 = (a4 + 7);
  v211 = (a4 + 4);
  a4[8] = a4[7];
  v103 = 0;
  v104 = 0;
  if (v21 == 2)
  {
    v119 = (*(v8 + 448) - v99) >> 8;
    goto LABEL_74;
  }

  v105 = 0;
  do
  {
    v106 = (*(v8 + 368) + 24 * v105);
    v107 = *v106;
    v108 = v106[1];
    if (v107 == v108)
    {
      goto LABEL_62;
    }

    v109 = v108 - v107 - 128;
    if (v109 <= 0x7F)
    {
      v110 = v107;
      do
      {
LABEL_69:
        v118 = *(v110 + 24);
        v104 += v118 ^ 1;
        v103 += v118;
        v110 += 128;
      }

      while (v110 != v108);
      goto LABEL_62;
    }

    v111 = 0;
    v112 = 0;
    v113 = (v109 >> 7) + 1;
    v110 = v107 + ((v113 & 0x3FFFFFFFFFFFFFELL) << 7);
    v114 = (v107 + 152);
    v115 = v113 & 0x3FFFFFFFFFFFFFELL;
    do
    {
      v116 = *(v114 - 128);
      v117 = *v114;
      v104 += v116 ^ 1;
      v112 += v117 ^ 1;
      v103 += v116;
      v111 += v117;
      v114 += 256;
      v115 -= 2;
    }

    while (v115);
    v103 += v111;
    v104 += v112;
    if (v113 != (v113 & 0x3FFFFFFFFFFFFFELL))
    {
      goto LABEL_69;
    }

LABEL_62:
    ++v105;
  }

  while (v105 != v102);
  v119 = (*(v8 + 448) - v99) >> 8;
  if (v103 > v119)
  {
    sub_1E5463870(v8 + 440, v103 - v119);
    v100 = *(v8 + 464);
    goto LABEL_76;
  }

LABEL_74:
  if (v119 > v103)
  {
    *(v8 + 448) = v99 + (v103 << 8);
  }

LABEL_76:
  v120 = (*(v8 + 472) - v100) >> 8;
  if (v104 <= v120)
  {
    if (v104 < v120)
    {
      *(v8 + 472) = v100 + (v104 << 8);
    }
  }

  else
  {
    sub_1E5463870(v8 + 464, v104 - v120);
  }

  v121 = a4[10];
  if (v104 + v103 < (a4[11] - v121) >> 8)
  {
    a4[11] = v121 + ((v104 + v103) << 8);
  }

  if (v21 != 2)
  {
    v122 = 0;
    v123 = *(v8 + 368);
    v215 = v104;
    v217 = v103;
    v213 = v21 - 2;
    do
    {
      v224 = 3 * v122;
      v124 = *(v123 + 24 * v122);
      v125 = *(v123 + 24 * v122 + 8);
      v126 = (v125 - v124) >> 7;
      if (v126 != (*(*(v8 + 392) + 24 * v122 + 8) - *(*(v8 + 392) + 24 * v122)) >> 6 || v126 != (*(*(v8 + 416) + 24 * v122 + 8) - *(*(v8 + 416) + 24 * v122)) >> 6)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 253, "kp[scale].size() == desc[scale].size() && kp[scale].size() == desc_reorder[scale].size()", 88, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_126;
        }

        v123 = *(v8 + 368);
        v124 = *(v123 + 24 * v122);
        v125 = *(v123 + 24 * v122 + 8);
      }

      if (v125 != v124)
      {
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v219 = v122;
        do
        {
          v151 = (v124 + v127);
          v152 = (*(*(v8 + 392) + 8 * v224) + v128);
          v153 = (*(*(v8 + 416) + 8 * v224) + v128);
          v154 = a4[11];
          v155 = a4[12];
          v222 = v129;
          if (v154 >= v155)
          {
            v169 = a4[10];
            v170 = v154 - v169;
            v171 = (v154 - v169) >> 8;
            v172 = v171 + 1;
            if ((v171 + 1) >> 56)
            {
              sub_1E5415338();
            }

            v173 = v155 - v169;
            if (v173 >> 7 > v172)
            {
              v172 = v173 >> 7;
            }

            if (v173 >= 0x7FFFFFFFFFFFFF00)
            {
              v174 = 0xFFFFFFFFFFFFFFLL;
            }

            else
            {
              v174 = v172;
            }

            if (v174)
            {
              if (!HIBYTE(v174))
              {
                operator new();
              }

              sub_1E53E5340();
            }

            v175 = (v171 << 8);
            v176 = *v151;
            v177 = v151[1];
            v178 = v151[3];
            v175[2] = v151[2];
            v175[3] = v178;
            *v175 = v176;
            v175[1] = v177;
            v179 = v151[4];
            v180 = v151[5];
            v181 = v151[7];
            v175[6] = v151[6];
            v175[7] = v181;
            v175[4] = v179;
            v175[5] = v180;
            v182 = *v152;
            v183 = v152[1];
            v184 = v152[3];
            v175[10] = v152[2];
            v175[11] = v184;
            v175[8] = v182;
            v175[9] = v183;
            v185 = *v153;
            v186 = v153[1];
            v187 = v153[3];
            v175[14] = v153[2];
            v175[15] = v187;
            v175[12] = v185;
            v175[13] = v186;
            v168 = (v171 << 8) + 256;
            memcpy(0, v169, v170);
            v220[10] = 0;
            v220[11] = v168;
            v220[12] = 0;
            if (v169)
            {
              operator delete(v169);
            }

            v8 = v225;
            a4 = v220;
            v104 = v215;
            v103 = v217;
          }

          else
          {
            v156 = *v151;
            v157 = v151[1];
            v158 = v151[3];
            *(v154 + 2) = v151[2];
            *(v154 + 3) = v158;
            *v154 = v156;
            *(v154 + 1) = v157;
            v159 = v151[4];
            v160 = v151[5];
            v161 = v151[7];
            *(v154 + 6) = v151[6];
            *(v154 + 7) = v161;
            *(v154 + 4) = v159;
            *(v154 + 5) = v160;
            v162 = *v152;
            v163 = v152[1];
            v164 = v152[3];
            *(v154 + 10) = v152[2];
            *(v154 + 11) = v164;
            *(v154 + 8) = v162;
            *(v154 + 9) = v163;
            v165 = *v153;
            v166 = v153[1];
            v167 = v153[3];
            *(v154 + 14) = v153[2];
            *(v154 + 15) = v167;
            *(v154 + 12) = v165;
            *(v154 + 13) = v166;
            v168 = (v154 + 256);
            v8 = v225;
          }

          v122 = v219;
          a4[11] = v168;
          v188 = *(*(v8 + 368) + 24 * v219);
          v189 = *(v188 + v127 + 32);
          if (*(v188 + v127 + 24) == 1)
          {
            v190 = v222;
            if (v103 <= v189)
            {
              if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 258, "min_idx < minima_cnt", 20, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_126;
              }

              v188 = *(*(v8 + 368) + 24 * v219);
            }

            v191 = (v188 + v127);
            v192 = (*(*(v8 + 392) + 8 * v224) + v128);
            v193 = (*(*(v8 + 416) + 8 * v224) + v128);
            v194 = v191[5];
            v261 = v191[4];
            v262 = v194;
            v195 = v191[7];
            v263 = v191[6];
            v264 = v195;
            v196 = v191[1];
            v257 = *v191;
            v258 = v196;
            v197 = v191[3];
            v259 = v191[2];
            v260 = v197;
            v198 = v192[3];
            v267 = v192[2];
            v268 = v198;
            v199 = v192[1];
            v265 = *v192;
            v266 = v199;
            v200 = v193[1];
            v269 = *v193;
            v270 = v200;
            v201 = v193[3];
            v271 = v193[2];
            v272 = v201;
            v141 = *(v8 + 440);
          }

          else
          {
            v190 = v222;
            if (v104 <= v189)
            {
              if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 262, "max_idx < maxima_cnt", 20, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_126;
              }

              v188 = *(*(v8 + 368) + 24 * v219);
            }

            v130 = (v188 + v127);
            v131 = (*(*(v8 + 392) + 8 * v224) + v128);
            v132 = (*(*(v8 + 416) + 8 * v224) + v128);
            v133 = v130[5];
            v261 = v130[4];
            v262 = v133;
            v134 = v130[7];
            v263 = v130[6];
            v264 = v134;
            v135 = v130[1];
            v257 = *v130;
            v258 = v135;
            v136 = v130[3];
            v259 = v130[2];
            v260 = v136;
            v137 = v131[3];
            v267 = v131[2];
            v268 = v137;
            v138 = v131[1];
            v265 = *v131;
            v266 = v138;
            v139 = v132[1];
            v269 = *v132;
            v270 = v139;
            v140 = v132[3];
            v271 = v132[2];
            v272 = v140;
            v141 = *(v8 + 464);
          }

          v142 = (v141 + (v189 << 8));
          v143 = v260;
          v142[2] = v259;
          v142[3] = v143;
          v144 = v258;
          *v142 = v257;
          v142[1] = v144;
          v145 = v264;
          v142[6] = v263;
          v142[7] = v145;
          v146 = v262;
          v142[4] = v261;
          v142[5] = v146;
          v147 = v268;
          v142[10] = v267;
          v142[11] = v147;
          v148 = v266;
          v142[8] = v265;
          v142[9] = v148;
          v149 = v272;
          v142[14] = v271;
          v142[15] = v149;
          v150 = v270;
          v142[12] = v269;
          v142[13] = v150;
          v129 = v190 + 1;
          v123 = *(v8 + 368);
          v124 = *(v123 + 24 * v219);
          v128 += 64;
          v127 += 128;
          a4 = v220;
        }

        while (v129 < (*(v123 + 24 * v219 + 8) - v124) >> 7);
        v102 = v213;
      }

      ++v122;
    }

    while (v122 != v102);
  }

  sub_1E54639DC(v211, *(v8 + 464), *(v8 + 472), (*(v8 + 472) - *(v8 + 464)) >> 8);
  sub_1E54639DC(v209, *(v8 + 440), *(v8 + 448), (*(v8 + 448) - *(v8 + 440)) >> 8);
LABEL_117:
  v202 = __p;
  if (__p)
  {
    v203 = v238;
    v204 = __p;
    if (v238 != __p)
    {
      v205 = v238;
      do
      {
        v207 = *(v205 - 3);
        v205 -= 24;
        v206 = v207;
        if (v207)
        {
          *(v203 - 2) = v206;
          operator delete(v206);
        }

        v203 = v205;
      }

      while (v205 != v202);
      v204 = __p;
    }

    v238 = v202;
    operator delete(v204);
  }
}

void sub_1E5462714(void *a1, _OWORD *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v9 = a1[18] + 24 * a5;
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  if (v10 >= v11)
  {
    v19 = *v9;
    v20 = v10 - *v9;
    v21 = v20 >> 7;
    v22 = (v20 >> 7) + 1;
    if (v22 >> 57)
    {
      sub_1E5415338();
    }

    v23 = v11 - v19;
    if (v23 >> 6 > v22)
    {
      v22 = v23 >> 6;
    }

    if (v23 >= 0x7FFFFFFFFFFFFF80)
    {
      v24 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (!(v24 >> 57))
      {
        operator new();
      }

LABEL_42:
      sub_1E53E5340();
    }

    v25 = a2[5];
    v26 = (v21 << 7);
    v26[4] = a2[4];
    v26[5] = v25;
    v27 = a2[7];
    v26[6] = a2[6];
    v26[7] = v27;
    v28 = a2[1];
    *v26 = *a2;
    v26[1] = v28;
    v29 = a2[3];
    v18 = (v21 << 7) + 128;
    v26[2] = a2[2];
    v26[3] = v29;
    memcpy(0, v19, v20);
    *v9 = 0;
    *(v9 + 8) = v18;
    *(v9 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v10[2] = a2[2];
    v10[3] = v14;
    *v10 = v12;
    v10[1] = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v10[6] = a2[6];
    v10[7] = v17;
    v10[4] = v15;
    v10[5] = v16;
    v18 = (v10 + 8);
  }

  *(v9 + 8) = v18;
  v30 = a1[21] + 24 * a5;
  v31 = *(v30 + 8);
  v32 = *(v30 + 16);
  if (v31 < v32)
  {
    v33 = *a3;
    v34 = a3[1];
    v35 = a3[3];
    v31[2] = a3[2];
    v31[3] = v35;
    *v31 = v33;
    v31[1] = v34;
    v36 = (v31 + 4);
    goto LABEL_27;
  }

  v37 = *v30;
  v38 = v31 - *v30;
  v39 = v38 >> 6;
  v40 = (v38 >> 6) + 1;
  if (v40 >> 58)
  {
    goto LABEL_41;
  }

  v41 = v32 - v37;
  if (v41 >> 5 > v40)
  {
    v40 = v41 >> 5;
  }

  if (v41 >= 0x7FFFFFFFFFFFFFC0)
  {
    v42 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v42 = v40;
  }

  if (v42)
  {
    if (!(v42 >> 58))
    {
      operator new();
    }

    goto LABEL_42;
  }

  v43 = (v39 << 6);
  v44 = a3[1];
  *v43 = *a3;
  v43[1] = v44;
  v45 = a3[3];
  v43[2] = a3[2];
  v43[3] = v45;
  v36 = (v39 << 6) + 64;
  v46 = &v43[-4 * (v38 >> 6)];
  memcpy(v46, v37, v38);
  *v30 = v46;
  *(v30 + 8) = v36;
  *(v30 + 16) = 0;
  if (v37)
  {
    operator delete(v37);
  }

LABEL_27:
  *(v30 + 8) = v36;
  v47 = a1[24] + 24 * a5;
  v48 = *(v47 + 8);
  v49 = *(v47 + 16);
  if (v48 < v49)
  {
    v50 = *a4;
    v51 = a4[1];
    v52 = a4[3];
    v48[2] = a4[2];
    v48[3] = v52;
    *v48 = v50;
    v48[1] = v51;
    v53 = (v48 + 4);
    goto LABEL_40;
  }

  v54 = *v47;
  v55 = v48 - *v47;
  v56 = v55 >> 6;
  v57 = (v55 >> 6) + 1;
  if (v57 >> 58)
  {
LABEL_41:
    sub_1E5415338();
  }

  v58 = v49 - v54;
  if (v58 >> 5 > v57)
  {
    v57 = v58 >> 5;
  }

  if (v58 >= 0x7FFFFFFFFFFFFFC0)
  {
    v59 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v59 = v57;
  }

  if (v59)
  {
    if (!(v59 >> 58))
    {
      operator new();
    }

    goto LABEL_42;
  }

  v60 = (v56 << 6);
  v61 = a4[1];
  *v60 = *a4;
  v60[1] = v61;
  v62 = a4[3];
  v60[2] = a4[2];
  v60[3] = v62;
  v53 = (v56 << 6) + 64;
  v63 = &v60[-4 * (v55 >> 6)];
  memcpy(v63, v54, v55);
  *v47 = v63;
  *(v47 + 8) = v53;
  *(v47 + 16) = 0;
  if (v54)
  {
    operator delete(v54);
  }

LABEL_40:
  *(v47 + 8) = v53;
}

void sub_1E5462A4C(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v135 = *MEMORY[0x1E69E9840];
  v111 = a1[6];
  v116 = a1[4];
  v119 = a1[5];
  v109 = (v116 & 0xFFFFFFFFFFFFFFE0) + 128;
  v4 = v109 * v119;
  v5 = a2[19];
  v6 = a2[20];
  v7 = a2 + 19;
  v8 = (v6 - v5) >> 2;
  if (v109 * v119 <= v8)
  {
    if (v4 < v8)
    {
      v6 = &v5[4 * v4];
      a2[20] = v6;
    }
  }

  else
  {
    sub_1E54151E4(v7, v109 * v119 - v8);
    v5 = v2[19];
    v6 = v2[20];
  }

  if (v6 - v5 >= 1)
  {
    bzero(v5, v6 - v5);
  }

  memset(v123, 0, sizeof(v123));
  memset(v122, 0, sizeof(v122));
  memset(v121, 0, sizeof(v121));
  memset(v120, 0, sizeof(v120));
  v9 = v2[22];
  v10 = v2[23];
  v11 = v2 + 22;
  v12 = 0x8F5C28F5C28F5C29 * ((v10 - v9) >> 3);
  if (32 * v119 <= v12)
  {
    if (32 * v119 < v12)
    {
      v10 = v9 + 6400 * v119;
      v2[23] = v10;
    }
  }

  else
  {
    sub_1E5463B58((v2 + 22), 32 * v119 - v12);
    v9 = v2[22];
    v10 = v2[23];
  }

  v13 = v116;
  memset(&v134[12], 0, 72);
  v14 = v10 - v9;
  if (v14 >= 1)
  {
    v15 = v14 / 0xC8uLL + 1;
    v16 = v9 + 20;
    do
    {
      *(v16 - 4) = 0x3FFF;
      v17 = v128;
      v18 = v129;
      v19 = v131;
      *(v16 + 32) = v130;
      *(v16 + 48) = v19;
      *v16 = v17;
      *(v16 + 16) = v18;
      v20 = v132;
      v21 = v133;
      v22 = *&v134[16];
      *(v16 + 96) = *v134;
      *(v16 + 112) = v22;
      *(v16 + 64) = v20;
      *(v16 + 80) = v21;
      v23 = *&v134[32];
      v24 = *&v134[48];
      v25 = *&v134[64];
      *(v16 + 176) = *&v134[80];
      *(v16 + 144) = v24;
      *(v16 + 160) = v25;
      *(v16 + 128) = v23;
      --v15;
      v16 += 200;
    }

    while (v15 > 1);
  }

  v26 = v3[8];
  if (!v26)
  {
    v29 = 0;
    goto LABEL_60;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v116 >> 5;
  v32 = 192;
  if (v116 >> 5 == 16)
  {
    v32 = 128;
  }

  __n = 4 * v31;
  v113 = v116 >> 5;
  v110 = v31 & 0x7FFFFFFFFFFFFF8;
  v114 = v32;
  v115 = v3;
  v106 = v2;
  v107 = v32 | 0x10;
  v117 = v7;
  do
  {
    v33 = *(v3[698] + 24 * v27 + 8) - *(v3[698] + 24 * v27);
    if (v33)
    {
      v108 = v30;
      v34 = 0;
      if ((v33 >> 8) <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v33 >> 8;
      }

      v36 = v114;
      v37 = v107;
      v118 = v35;
      while (1)
      {
        v38 = *(v3[698] + 24 * v27);
        v39 = (v38 + (v34 << 8));
        v40 = *(v39 + 12);
        v41 = *v39 & 0x3FFFF | ((v39[1] & 0x7FFFF) << 32) | (v39[4] << 18);
        v42 = ((v39[5] & 7) << 60) | (*(v39 + 24) << 63) | v41 | (v40 << 52);
        v44 = v39[7];
        v43 = v39[8];
        v45 = (v42 >> 60) & 8 | (v40 >> 5);
        v46 = *(v123 + v45);
        if (v46)
        {
          if ((v28 & 1) == 0)
          {
            v47 = *(v121 + v45);
            goto LABEL_32;
          }

LABEL_25:
          v28 = 1;
          ++v34;
          v37 += 256;
          v36 += 256;
          if (v34 == v35)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v28 & 1 | (v29 >= v119))
          {
            goto LABEL_25;
          }

          v48 = *(v122 + v45);
          if (v111 <= v48)
          {
            goto LABEL_25;
          }

          v47 = v29 * v109;
          *(v121 + v45) = v29 * v109;
          *(v120 + v45) = 32 * v29++;
          *(v122 + v45) = v48 + 1;
LABEL_32:
          v49 = v44 & 0x7FFF | ((v43 & 0x1FFF) << 16);
          v50 = v47 + 2 * v46;
          v51 = *v7;
          *(*v7 + 4 * v50) = v41;
          *(v51 + 4 * (v50 + 1)) = HIDWORD(v42);
          *(v51 + 4 * (v46 + v47 + 64)) = v49;
          *(v51 + 4 * (v46 + v47 + 96)) = 0;
          if (v13 > 0x1F)
          {
            if (v13 <= 0xFF)
            {
              v52 = v29;
              v53 = 0;
              v54 = __n;
              goto LABEL_41;
            }

            v54 = __n;
            if (512 - (v114 | (v34 << 8)) + v51 + 4 * v47 + __n * v46 - v38 < 0x20)
            {
              v52 = v29;
              v53 = 0;
              goto LABEL_41;
            }

            v55 = (v38 + v37);
            v56 = (v51 + __n * v46 + 4 * v47 + 528);
            v57 = v110;
            do
            {
              v58 = *v55;
              *(v56 - 1) = *(v55 - 1);
              *v56 = v58;
              v55 += 2;
              v56 += 2;
              v57 -= 8;
            }

            while (v57);
            v52 = v29;
            v53 = v110;
            if (v113 != v110)
            {
LABEL_41:
              v59 = v113 - v53;
              v60 = 4 * v53;
              v61 = (v51 + v60 + v54 * v46 + 4 * v47 + 512);
              v62 = (v38 + v36 + v60);
              do
              {
                v63 = *v62++;
                *v61++ = v63;
                --v59;
              }

              while (v59);
            }

            v126 = 0u;
            v127 = 0u;
            __dst = 0u;
            v125 = 0u;
            memcpy(&__dst, v39 + v114, v54);
            goto LABEL_44;
          }

          v52 = v29;
          v126 = 0u;
          v127 = 0u;
          __dst = 0u;
          v125 = 0u;
LABEL_44:
          v64 = v11;
          v65 = *v11 + 200 * (*(v120 + v45) + v46);
          memmove(v65, v39, 0x80uLL);
          *(v65 + 128) = 0;
          v66 = v125;
          *(v65 + 132) = __dst;
          *(v65 + 148) = v66;
          v67 = v127;
          *(v65 + 164) = v126;
          *(v65 + 180) = v67;
          *(v65 + 196) = 0;
          *(v123 + v45) = v46 + 1;
          if (v46 == 31)
          {
            v29 = v52;
            if (v52 > v119)
            {
              v68 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 359, "set_count <= max_num_sets", 25, &unk_1E549A011, 0, sub_1E548FDE0);
              v29 = v52;
              if (v68)
              {
LABEL_57:
                abort();
              }
            }

            v28 = 0;
            *(v123 + v45) = 0;
            v11 = v64;
            v7 = v117;
          }

          else
          {
            v28 = 0;
            v11 = v64;
            v7 = v117;
            v29 = v52;
          }

          v3 = v115;
          v13 = v116;
          v35 = v118;
          ++v34;
          v37 += 256;
          v36 += 256;
          if (v34 == v118)
          {
LABEL_18:
            v26 = v3[8];
            v30 = v108;
            break;
          }
        }
      }
    }

    v27 = ++v30;
  }

  while (v26 > v30);
  if (v29 <= v119)
  {
    v2 = v106;
LABEL_60:
    for (i = 0; i != 64; i += 4)
    {
      v82 = *(v123 + i);
      if (v82)
      {
        v83 = *v7;
        v84 = *(v121 + i) + 2 * v82;
        *(*v7 + 4 * v84) = -1;
        *(v83 + 4 * (v84 + 1)) = -1;
        memset(&v134[12], 0, 72);
        v85 = *v11 + 200 * (*(v120 + i) + v82);
        v86 = v130;
        *(v85 + 68) = v131;
        *(v85 + 52) = v86;
        v87 = v128;
        *(v85 + 36) = v129;
        *(v85 + 20) = v87;
        v88 = *v134;
        *(v85 + 132) = *&v134[16];
        *(v85 + 116) = v88;
        v89 = v132;
        *(v85 + 100) = v133;
        *(v85 + 84) = v89;
        v90 = *&v134[48];
        *(v85 + 180) = *&v134[64];
        v91 = *&v134[32];
        *(v85 + 164) = v90;
        *(v85 + 16) = 0x3FFF;
        *(v85 + 196) = *&v134[80];
        *(v85 + 148) = v91;
      }
    }

    goto LABEL_65;
  }

  for (j = 0; j != 64; j += 4)
  {
    v79 = *(v123 + j);
    if (v79)
    {
      v80 = v29;
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/CollKeyPointToDescriptor.cpp", 368, "set_count <= max_num_sets", 25, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_57;
      }

      v70 = *v117;
      v71 = *(v121 + j) + 2 * v79;
      *(*v117 + 4 * v71) = -1;
      *(v70 + 4 * (v71 + 1)) = -1;
      memset(&v134[12], 0, 72);
      v72 = *v11 + 200 * (*(v120 + j) + v79);
      v73 = v130;
      *(v72 + 68) = v131;
      *(v72 + 52) = v73;
      v74 = v128;
      *(v72 + 36) = v129;
      *(v72 + 20) = v74;
      v75 = *v134;
      *(v72 + 132) = *&v134[16];
      *(v72 + 116) = v75;
      v76 = v132;
      *(v72 + 100) = v133;
      *(v72 + 84) = v76;
      v77 = *&v134[48];
      *(v72 + 180) = *&v134[64];
      v78 = *&v134[32];
      *(v72 + 164) = v77;
      *(v72 + 16) = 0x3FFF;
      *(v72 + 196) = *&v134[80];
      *(v72 + 148) = v78;
      v29 = v80;
    }
  }

  v2 = v106;
  v7 = v117;
LABEL_65:
  if (v29 < v119)
  {
    v92 = v2[19];
    *(v92 + 4 * v29 * v109) = -1;
    v93 = (v29 * v109) | 2;
    v94 = (v2[20] - v92) >> 2;
    if (v93 <= v94)
    {
      if (v93 < v94)
      {
        v2[20] = v92 + 4 * v93;
      }
    }

    else
    {
      v95 = v29;
      sub_1E54151E4(v7, v93 - v94);
      v29 = v95;
    }

    memset(&v134[12], 0, 72);
    v96 = v2[22] + 6400 * v29;
    v97 = v130;
    *(v96 + 68) = v131;
    *(v96 + 52) = v97;
    v98 = v128;
    *(v96 + 36) = v129;
    *(v96 + 20) = v98;
    v99 = *v134;
    *(v96 + 132) = *&v134[16];
    *(v96 + 116) = v99;
    v100 = v132;
    *(v96 + 100) = v133;
    *(v96 + 84) = v100;
    v101 = *&v134[48];
    *(v96 + 180) = *&v134[64];
    v102 = *&v134[32];
    *(v96 + 164) = v101;
    *(v96 + 16) = 0x3FFF;
    *(v96 + 196) = *&v134[80];
    *(v96 + 148) = v102;
    v103 = (32 * v29) | 1;
    v104 = v2[22];
    v105 = 0x8F5C28F5C28F5C29 * ((v2[23] - v104) >> 3);
    if (v105 <= 32 * v29)
    {

      sub_1E5463B58(v11, v103 - v105);
    }

    else if (v103 < v105)
    {
      v2[23] = v104 + 200 * v103;
    }
  }
}

void sub_1E5463398(void *a1)
{
  sub_1E5463D34(a1);

  JUMPOUT(0x1E6928650);
}

void sub_1E54633D0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3) + a2;
    if (v6 > 0x666666666666666)
    {
      sub_1E5415338();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void **sub_1E5463578(void **a1)
{
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[27];
  if (v3)
  {
    a1[28] = v3;
    operator delete(v3);
  }

  v4 = a1[24];
  if (v4)
  {
    v5 = a1[25];
    v6 = a1[24];
    if (v5 != v4)
    {
      v7 = a1[25];
      do
      {
        v9 = *(v7 - 3);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 2) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = a1[24];
    }

    a1[25] = v4;
    operator delete(v6);
  }

  v10 = a1[21];
  if (v10)
  {
    v11 = a1[22];
    v12 = a1[21];
    if (v11 != v10)
    {
      v13 = a1[22];
      do
      {
        v15 = *(v13 - 3);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 2) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = a1[21];
    }

    a1[22] = v10;
    operator delete(v12);
  }

  v16 = a1[18];
  if (v16)
  {
    v17 = a1[19];
    v18 = a1[18];
    if (v17 != v16)
    {
      v19 = a1[19];
      do
      {
        v21 = *(v19 - 3);
        v19 -= 24;
        v20 = v21;
        if (v21)
        {
          *(v17 - 2) = v20;
          operator delete(v20);
        }

        v17 = v19;
      }

      while (v19 != v16);
      v18 = a1[18];
    }

    a1[19] = v16;
    operator delete(v18);
  }

  v22 = a1[15];
  if (v22)
  {
    v23 = a1[16];
    v24 = a1[15];
    if (v23 != v22)
    {
      v25 = a1[16];
      do
      {
        v27 = *(v25 - 3);
        v25 -= 24;
        v26 = v27;
        if (v27)
        {
          *(v23 - 2) = v26;
          operator delete(v26);
        }

        v23 = v25;
      }

      while (v25 != v22);
      v24 = a1[15];
    }

    a1[16] = v22;
    operator delete(v24);
  }

  v28 = a1[12];
  if (v28)
  {
    v29 = a1[13];
    v30 = a1[12];
    if (v29 != v28)
    {
      v31 = a1[13];
      do
      {
        v33 = *(v31 - 3);
        v31 -= 24;
        v32 = v33;
        if (v33)
        {
          *(v29 - 2) = v32;
          operator delete(v32);
        }

        v29 = v31;
      }

      while (v31 != v28);
      v30 = a1[12];
    }

    a1[13] = v28;
    operator delete(v30);
  }

  v34 = a1[9];
  if (v34)
  {
    v35 = a1[10];
    v36 = a1[9];
    if (v35 != v34)
    {
      v37 = a1[10];
      do
      {
        v39 = *(v37 - 3);
        v37 -= 24;
        v38 = v39;
        if (v39)
        {
          *(v35 - 2) = v38;
          operator delete(v38);
        }

        v35 = v37;
      }

      while (v37 != v34);
      v36 = a1[9];
    }

    a1[10] = v34;
    operator delete(v36);
  }

  v40 = a1[6];
  if (v40)
  {
    v41 = a1[7];
    v42 = a1[6];
    if (v41 != v40)
    {
      v43 = a1[7];
      do
      {
        v45 = *(v43 - 3);
        v43 -= 24;
        v44 = v45;
        if (v45)
        {
          *(v41 - 2) = v44;
          operator delete(v44);
        }

        v41 = v43;
      }

      while (v43 != v40);
      v42 = a1[6];
    }

    a1[7] = v40;
    operator delete(v42);
  }

  v46 = a1[3];
  if (v46)
  {
    v47 = a1[4];
    v48 = a1[3];
    if (v47 != v46)
    {
      v49 = a1[4];
      do
      {
        v51 = *(v49 - 3);
        v49 -= 24;
        v50 = v51;
        if (v51)
        {
          *(v47 - 2) = v50;
          operator delete(v50);
        }

        v47 = v49;
      }

      while (v49 != v46);
      v48 = a1[3];
    }

    a1[4] = v46;
    operator delete(v48);
  }

  v52 = *a1;
  if (*a1)
  {
    v53 = a1[1];
    v54 = *a1;
    if (v53 != v52)
    {
      v55 = a1[1];
      do
      {
        v57 = *(v55 - 3);
        v55 -= 24;
        v56 = v57;
        if (v57)
        {
          *(v53 - 2) = v56;
          operator delete(v56);
        }

        v53 = v55;
      }

      while (v55 != v52);
      v54 = *a1;
    }

    a1[1] = v52;
    operator delete(v54);
  }

  return a1;
}

void sub_1E5463870(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 8)
  {
    if (a2)
    {
      v10 = a2 << 8;
      bzero(*(a1 + 8), a2 << 8);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 8) + a2;
    if (HIBYTE(v7))
    {
      sub_1E5415338();
    }

    v8 = v3 - v5;
    if (v8 >> 7 > v7)
    {
      v7 = v8 >> 7;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF00)
    {
      v9 = 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!HIBYTE(v9))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v11 = (v6 >> 8 << 8);
    v12 = a2 << 8;
    bzero(v11, a2 << 8);
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

char *sub_1E54639DC(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 8)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!HIBYTE(a4))
    {
      v10 = v7 >> 7;
      if (v7 >> 7 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFF00;
      v12 = 0xFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!HIBYTE(v12))
      {
        operator new();
      }
    }

    sub_1E5415338();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 8)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void sub_1E5463B58(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x8F5C28F5C28F5C29 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 200 * a2;
      v10 = 200 * a2;
      v11 = v4 + 128;
      do
      {
        *(v11 + 64) = 0;
        *(v11 + 32) = 0uLL;
        *(v11 + 48) = 0uLL;
        *v11 = 0uLL;
        *(v11 + 16) = 0uLL;
        *(v11 - 112) = 0x3FFF;
        v11 += 200;
        v10 -= 200;
      }

      while (v10);
      *(a1 + 8) = v9;
    }

    else
    {
      *(a1 + 8) = v4;
    }
  }

  else
  {
    v5 = 0x8F5C28F5C28F5C29 * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x147AE147AE147AELL)
    {
      sub_1E5415338();
    }

    v7 = 0x8F5C28F5C28F5C29 * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0xA3D70A3D70A3D7)
    {
      v8 = 0x147AE147AE147AELL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x147AE147AE147AELL)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v12 = 200 * v5;
    v13 = 200 * a2;
    v14 = 200 * v5 + 200 * a2;
    v15 = 200 * v5 + 128;
    do
    {
      *(v15 + 64) = 0;
      *(v15 + 32) = 0uLL;
      *(v15 + 48) = 0uLL;
      *v15 = 0uLL;
      *(v15 + 16) = 0uLL;
      *(v15 - 112) = 0x3FFF;
      v15 += 200;
      v13 -= 200;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_1E5463D34(void *a1)
{
  *a1 = &unk_1F5F0A210;
  v2 = a1[698];
  if (v2)
  {
    v3 = a1[699];
    v4 = a1[698];
    if (v3 != v2)
    {
      v5 = a1[699];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[698];
    }

    a1[699] = v2;
    operator delete(v4);
  }

  v8 = a1[695];
  if (v8)
  {
    a1[696] = v8;
    operator delete(v8);
  }

  v9 = a1[692];
  if (v9)
  {
    a1[693] = v9;
    operator delete(v9);
  }

  v10 = a1[689];
  if (v10)
  {
    a1[690] = v10;
    operator delete(v10);
  }

  v11 = a1[686];
  if (v11)
  {
    a1[687] = v11;
    operator delete(v11);
  }

  v12 = a1[683];
  if (v12)
  {
    a1[684] = v12;
    operator delete(v12);
  }

  v13 = a1[680];
  if (v13)
  {
    a1[681] = v13;
    operator delete(v13);
  }

  v14 = a1[677];
  if (v14)
  {
    a1[678] = v14;
    operator delete(v14);
  }

  v15 = a1[674];
  if (v15)
  {
    a1[675] = v15;
    operator delete(v15);
  }

  v16 = a1[671];
  if (v16)
  {
    a1[672] = v16;
    operator delete(v16);
  }

  v17 = a1[668];
  if (v17)
  {
    a1[669] = v17;
    operator delete(v17);
  }

  v18 = a1[665];
  if (v18)
  {
    v19 = a1[666];
    v20 = a1[665];
    if (v19 != v18)
    {
      v21 = a1[666];
      do
      {
        v23 = *(v21 - 24);
        v21 -= 24;
        v22 = v23;
        if (v23)
        {
          *(v19 - 16) = v22;
          operator delete(v22);
        }

        v19 = v21;
      }

      while (v21 != v18);
      v20 = a1[665];
    }

    a1[666] = v18;
    operator delete(v20);
  }

  return sub_1E5460878(a1);
}

uint64_t sub_1E5463EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, char *__s)
{
  v77[2] = *MEMORY[0x1E69E9840];
  result = sub_1E5464D78(*(a1 + 48), __s);
  if (!result)
  {
    return result;
  }

  result = sub_1E546569C(*(a1 + 56), __s);
  if (!result)
  {
    return result;
  }

  result = sub_1E5465FC8(*(a1 + 64), __s);
  if (!result)
  {
    return result;
  }

  result = sub_1E5466728(*(a2 + 248), __s);
  if (!result)
  {
    return result;
  }

  v64 = a5;
  v13 = *(a2 + 256);
  v15 = *(v13 + 200);
  v14 = *(v13 + 208);
  v72 = 0;
  v73 = 0uLL;
  v65 = v14;
  if (v15 == v14)
  {
LABEL_131:
    v38 = 1;
    if (SHIBYTE(v73) < 0)
    {
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v16 = 1;
  while (1)
  {
    v17 = strlen(__s);
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memcpy(&__dst, __s, v17);
    }

    __dst.__r_.__value_.__s.__data_[v18] = 0;
    size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v66 = v16;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
      v20 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v20 - __dst.__r_.__value_.__l.__size_ < 0xA)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 10 - v20)
        {
          sub_1E53DF584();
        }

LABEL_18:
        operator new();
      }

      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 13) < 0xA)
      {
        goto LABEL_18;
      }

      p_dst = &__dst;
    }

    v22 = p_dst + size;
    *v22 = *"/DesGenKPC";
    *(v22 + 4) = 17232;
    v23 = size + 10;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size + 10;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v23 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v23] = 0;
    v70 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v75 = 0;
    std::to_string(&v76, v16);
    __p = v76;
    v24 = (v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v76.__r_.__value_.__r.__words[0];
    v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v76.__r_.__value_.__l.__size_;
    v26 = std::string::append(&v70, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v71[2] = v26->__r_.__value_.__r.__words[2];
    *v71 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = SHIBYTE(v71[2]);
    if ((SHIBYTE(v71[2]) & 0x8000000000000000) != 0)
    {
      v28 = v71[1];
      v29 = (v71[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v29 - v71[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v71[2] & 0x7FFFFFFFFFFFFFFFLL)) < v71[1] - v29 + 8)
        {
          sub_1E53DF584();
        }

LABEL_35:
        operator new();
      }

      v30 = v71[0];
    }

    else
    {
      if ((SHIBYTE(v71[2]) - 15) < 8)
      {
        goto LABEL_35;
      }

      v30 = v71;
    }

    *(v28 + v30) = 0x746C73722E74754FLL;
    v31 = v28 + 8;
    if (SHIBYTE(v71[2]) < 0)
    {
      v71[1] = v28 + 8;
    }

    else
    {
      HIBYTE(v71[2]) = v31 & 0x7F;
    }

    v31[v30] = 0;
    v32 = v71[0];
    v77[0] = v71[1];
    *(v77 + 7) = *(&v71[1] + 7);
    v33 = HIBYTE(v71[2]);
    memset(v71, 0, sizeof(v71));
    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72);
      v72 = v32;
      *&v73 = v77[0];
      *(&v73 + 7) = *(v77 + 7);
      HIBYTE(v73) = v33;
      if (SHIBYTE(v71[2]) < 0)
      {
        operator delete(v71[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_43:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_44;
          }

          goto LABEL_53;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v72 = v32;
      *&v73 = v77[0];
      *(&v73 + 7) = *(v77 + 7);
      HIBYTE(v73) = v33;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_43;
      }
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_44:
      operator delete(v70.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_45;
      }

      goto LABEL_54;
    }

LABEL_53:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_45:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v73 >= 0)
      {
        v34 = &v72;
      }

      else
      {
        v34 = v72;
      }

      if (!v34)
      {
        goto LABEL_67;
      }

      goto LABEL_58;
    }

LABEL_54:
    if (v73 >= 0)
    {
      v34 = &v72;
    }

    else
    {
      v34 = v72;
    }

    if (!v34)
    {
      goto LABEL_67;
    }

LABEL_58:
    v35 = fopen(v34, "wb");
    if (!v35)
    {
      goto LABEL_67;
    }

    v36 = *v15;
    v37 = v15[1];
    if (*v15 != v37)
    {
      break;
    }

LABEL_62:
    v16 = v66 + 1;
    fclose(v35);
    v15 += 3;
    if (v15 == v65)
    {
      goto LABEL_131;
    }
  }

  while (1)
  {
    __ptr[0] = 0;
    __ptr[0] = *v36 & 0x3FF | ((*(v36 + 4) & 0x1FFF) << 10) & 0xF87FFFFF | ((*(v36 + 8) & 0xF) << 23) | (*(v36 + 12) << 43) | (*(v36 + 16) << 27);
    if (fwrite(__ptr, 8uLL, 1uLL, v35) != 1)
    {
      break;
    }

    v36 += 20;
    if (v36 == v37)
    {
      goto LABEL_62;
    }
  }

  fclose(v35);
LABEL_67:
  v38 = 0;
  if (SHIBYTE(v73) < 0)
  {
LABEL_68:
    operator delete(v72);
  }

LABEL_69:
  if (!v38)
  {
    return 0;
  }

  v39 = *(a3 + 8);
  v41 = *(v39 + 200);
  v40 = *(v39 + 208);
  v72 = 0;
  v73 = 0uLL;
  v67 = v40;
  if (v41 == v40)
  {
LABEL_146:
    v63 = 1;
    if (SHIBYTE(v73) < 0)
    {
      goto LABEL_135;
    }

    goto LABEL_136;
  }

  v42 = 1;
  while (2)
  {
    v43 = strlen(__s);
    if (v43 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1E53DF584();
    }

    v44 = v43;
    if (v43 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v43;
    if (v43)
    {
      memcpy(&__dst, __s, v43);
    }

    __dst.__r_.__value_.__s.__data_[v44] = 0;
    v45 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v45 = __dst.__r_.__value_.__l.__size_;
      v46 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v46 - __dst.__r_.__value_.__l.__size_ < 0xD)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 13 - v46)
        {
          sub_1E53DF584();
        }

LABEL_83:
        operator new();
      }

      v47 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 10) < 0xD)
      {
        goto LABEL_83;
      }

      v47 = &__dst;
    }

    qmemcpy(v47 + v45, "/DesGenKP0Mem", 13);
    v48 = v45 + 13;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v45 + 13;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v48 & 0x7F;
    }

    v47->__r_.__value_.__s.__data_[v48] = 0;
    v70 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v75 = 0;
    std::to_string(&v76, v42);
    __p = v76;
    v49 = (v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v76.__r_.__value_.__r.__words[0];
    v50 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : v76.__r_.__value_.__l.__size_;
    v51 = std::string::append(&v70, v49, v50);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v71[2] = v51->__r_.__value_.__r.__words[2];
    *v71 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = SHIBYTE(v71[2]);
    if ((SHIBYTE(v71[2]) & 0x8000000000000000) != 0)
    {
      v53 = v71[1];
      v54 = (v71[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v54 - v71[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v71[2] & 0x7FFFFFFFFFFFFFFFLL)) < v71[1] - v54 + 8)
        {
          sub_1E53DF584();
        }

LABEL_100:
        operator new();
      }

      v55 = v71[0];
    }

    else
    {
      if ((SHIBYTE(v71[2]) - 15) < 8)
      {
        goto LABEL_100;
      }

      v55 = v71;
    }

    *(v53 + v55) = 0x746C73722E74754FLL;
    v56 = v53 + 8;
    if (SHIBYTE(v71[2]) < 0)
    {
      v71[1] = v53 + 8;
    }

    else
    {
      HIBYTE(v71[2]) = v56 & 0x7F;
    }

    v56[v55] = 0;
    v57 = v71[0];
    v77[0] = v71[1];
    *(v77 + 7) = *(&v71[1] + 7);
    v58 = HIBYTE(v71[2]);
    memset(v71, 0, sizeof(v71));
    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72);
      v72 = v57;
      *&v73 = v77[0];
      *(&v73 + 7) = *(v77 + 7);
      HIBYTE(v73) = v58;
      if (SHIBYTE(v71[2]) < 0)
      {
        operator delete(v71[0]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_117;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_117;
      }

LABEL_108:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_109;
      }

LABEL_118:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

LABEL_110:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v73 >= 0)
      {
        v59 = &v72;
      }

      else
      {
        v59 = v72;
      }

      if (!v59)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v72 = v57;
      *&v73 = v77[0];
      *(&v73 + 7) = *(v77 + 7);
      HIBYTE(v73) = v58;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_108;
      }

LABEL_117:
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

LABEL_109:
      operator delete(v70.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_110;
      }

LABEL_119:
      if (v73 >= 0)
      {
        v59 = &v72;
      }

      else
      {
        v59 = v72;
      }

      if (!v59)
      {
        goto LABEL_134;
      }
    }

    v60 = fopen(v59, "wb");
    if (!v60)
    {
      goto LABEL_134;
    }

    v61 = *v41;
    v62 = v41[1];
    if (*v41 == v62)
    {
LABEL_127:
      ++v42;
      fclose(v60);
      v41 += 3;
      if (v41 == v67)
      {
        goto LABEL_146;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    __ptr[0] = 0;
    __ptr[0] = *v61 | (*(v61 + 1) << 16) | (*(v61 + 12) << 32) | (*(v61 + 8) << 40) | ((*(v61 + 7) & 0x7FFF) << 48) | (*(v61 + 24) << 63);
    if (fwrite(__ptr, 1uLL, 8uLL, v60) != 8)
    {
      break;
    }

    v61 += 64;
    if (v61 == v62)
    {
      goto LABEL_127;
    }
  }

  fclose(v60);
LABEL_134:
  v63 = 0;
  if (SHIBYTE(v73) < 0)
  {
LABEL_135:
    operator delete(v72);
  }

LABEL_136:
  if (!v63)
  {
    return 0;
  }

  result = sub_1E546704C(*(a4 + 272), *(a4 + 280), (a4 + 296), __s);
  if (result)
  {
    result = sub_1E5468578((a4 + 368), *(a4 + 320), *(a4 + 328), (a4 + 344), __s);
    if (result)
    {
      result = sub_1E5469650(*(a4 + 224), *(a4 + 232), (a4 + 248), __s);
      if (result)
      {
        result = sub_1E546A424(*(a4 + 368), *(a4 + 376), __s);
        if (result)
        {
          result = sub_1E546AB90(*(a4 + 392), *(a4 + 400), __s);
          if (result)
          {
            result = sub_1E546B29C(*(a4 + 416), *(a4 + 424), __s);
            if (result)
            {
              return sub_1E546B990(v64, 0x8E38E38E38E38E39 * ((*(*(a1 + 48) + 56) - *(*(a1 + 48) + 48)) >> 4), __s);
            }
          }
        }
      }
    }
  }

  return result;
}