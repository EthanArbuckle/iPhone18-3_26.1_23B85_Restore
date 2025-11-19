unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
  if (a5 && a6)
  {
    if (a6 >= 2)
    {
      a6 = 2;
    }

    else
    {
      a6 = a6;
    }

    if (a5 >= 4)
    {
      a5 = 4;
    }

    else
    {
      a5 = a5;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = 2 * a2;
  v15 = v8 - 2;
  if (v9 && v8 >= 3)
  {
    if (v15 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15;
    }

    if (v9 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 1, (v13 + v14), a2, v17, v16, a7, a8);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v18 = v9 - 4;
  if (v9 >= 5 && v8)
  {
    if (v8 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v8;
    }

    if (v18 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v18;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 2, v13 + 8, a2, v20, v19, a7, a8);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
    if (v9 < 5)
    {
      goto LABEL_39;
    }
  }

  if (v8 >= 3)
  {
    if (v15 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v15;
    }

    if (v18 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v18;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 3, (v13 + v14 + 128), a2, v22, v21, a7, a8);
    v11 += result;
    v23 = v8 - 4;
    goto LABEL_40;
  }

LABEL_39:
  a4[3] = 0;
  v23 = v8 - 4;
  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_40:
  if (v8 < 5)
  {
LABEL_48:
    a4[4] = 0;
    v26 = v8 - 6;
    if (!v9)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v23 >= 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = v23;
  }

  if (v9 >= 4)
  {
    v25 = 4;
  }

  else
  {
    v25 = v9;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 4, (v13 + 4 * a2), a2, v25, v24, a7, a8);
  v11 += result;
  v26 = v8 - 6;
LABEL_49:
  if (v8 >= 7)
  {
    if (v26 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v26;
    }

    if (v9 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 5, (v13 + 6 * a2), a2, v28, v27, a7, a8);
    v11 += result;
    if (v9 < 5)
    {
      goto LABEL_67;
    }

    goto LABEL_59;
  }

LABEL_58:
  a4[5] = 0;
  if (v9 < 5)
  {
    goto LABEL_67;
  }

LABEL_59:
  if (v8 >= 5)
  {
    if (v23 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v23;
    }

    if (v18 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v18;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 6, (v13 + 4 * a2 + 128), a2, v30, v29, a7, a8);
    v11 += result;
    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v9 < 5)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v8 < 7)
  {
    goto LABEL_78;
  }

  if (v26 >= 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = v26;
  }

  if (v18 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v18;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 7, (v13 + 6 * a2 + 128), a2, v32, v31, a7, a8);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, signed int a4)
{
  if (a4 <= 158)
  {
    if (!a4)
    {
      result = 0;
      a1[6] = 0u;
      a1[7] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v52 = &a1->i8[a2];
      *(v52 + 6) = 0u;
      *(v52 + 7) = 0u;
      *(v52 + 4) = 0u;
      *(v52 + 5) = 0u;
      *(v52 + 2) = 0u;
      *(v52 + 3) = 0u;
      *v52 = 0u;
      *(v52 + 1) = 0u;
      return result;
    }

    if (a4 == 4)
    {
      v5 = vld1q_dup_f64(a3);
      v6 = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v5, xmmword_29D2F1410), xmmword_29D2F1420));
      v7 = vdupq_n_s64(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)));
      *a1 = v7;
      a1[1] = v7;
      a1[2] = v7;
      a1[3] = v7;
      a1[4] = v7;
      a1[5] = v7;
      a1[6] = v7;
      a1[7] = v7;
      v8 = (a1 + a2);
      *v8 = v7;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v8[4] = v7;
      v8[5] = v7;
      v8[6] = v7;
      v8[7] = v7;
      return 5;
    }

    goto LABEL_8;
  }

  if (a4 != 159)
  {
    if (a4 == 255)
    {
      v10 = *(a3 + 16);
      v11 = *(a3 + 32);
      v12 = *(a3 + 48);
      v13 = *(a3 + 64);
      v14 = *(a3 + 80);
      v15 = *(a3 + 96);
      v16 = *(a3 + 112);
      v17 = *(a3 + 128);
      v18 = *(a3 + 144);
      v19 = *(a3 + 160);
      v20 = *(a3 + 176);
      v21 = *(a3 + 192);
      v22 = *(a3 + 208);
      v23 = *(a3 + 224);
      v24 = *(a3 + 240);
      *a1 = *a3;
      a1[1] = v10;
      a1[2] = v11;
      a1[3] = v12;
      v25 = &a1->i8[a2];
      a1[4] = v13;
      a1[5] = v14;
      a1[6] = v15;
      a1[7] = v16;
      *v25 = v17;
      *(v25 + 1) = v18;
      *(v25 + 2) = v19;
      *(v25 + 3) = v20;
      v26 = &a1[4].i8[a2];
      result = 256;
      *v26 = v21;
      *(v26 + 1) = v22;
      *(v26 + 2) = v23;
      *(v26 + 3) = v24;
      return result;
    }

LABEL_8:
    v622 = 0;
    v621 = (8 * (a3 & 7)) | 0x500;
    v619 = 8 * (a3 & 7);
    v620 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v640, v645, &v639, &v619, a4);
    v30.i64[0] = 0x3000300030003;
    v30.i64[1] = 0x3000300030003;
    v31 = v640;
    v32 = vandq_s8(v640, v30);
    v33 = vbicq_s8(v645[0], vceqq_s16(v32, v30));
    v645[0] = v33;
    v641 = v33;
    v642 = v33;
    v643 = v33;
    v644 = v33;
    v34.i64[0] = 0x202020202020202;
    v34.i64[1] = 0x202020202020202;
    v35 = vandq_s8(vmovl_s16(vtst_s16(*v640.i8, 0x4000400040004)), v34);
    v36 = v619;
    if (vmaxvq_s8(v35) < 1)
    {
      v286.i64[0] = -1;
      v286.i64[1] = -1;
      v287.i64[0] = -1;
      v287.i64[1] = -1;
      v288.i64[0] = -1;
      v288.i64[1] = -1;
      v289.i64[0] = -1;
      v289.i64[1] = -1;
      v47 = a1;
      v48 = a2;
    }

    else
    {
      v37 = vmovl_u8(*&vpaddq_s8(v35, v35));
      v38 = vmovl_u16(*&vpaddq_s16(v37, v37));
      v39 = vpaddq_s32(v38, v38).u64[0];
      v40.i64[0] = v39;
      v40.i64[1] = HIDWORD(v39);
      v41 = v40;
      v42 = vaddvq_s64(v40);
      v43 = v42;
      v44 = v619 + v42;
      if (v621)
      {
        v45 = v621 >= v44;
      }

      else
      {
        v45 = 1;
      }

      v46 = v45;
      v47 = a1;
      v48 = a2;
      if (v42 <= 0x80 && (v46 & 1) != 0)
      {
        v29.i64[0] = 63;
        v49 = (v620 + 8 * (v619 >> 6));
        v50 = vaddq_s64(vdupq_lane_s64(vandq_s8(v619, v29).i64[0], 0), vzip1q_s64(0, v41));
        v51 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v49, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v50)), vshlq_u64(vdupq_lane_s64(v49->i64[0], 0), vnegq_s64(v50)));
        if ((v619 & 0x3F) + v43 >= 0x81)
        {
          v51 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v49[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v50)), vshlq_u64(vdupq_laneq_s64(v49[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v50))), v51);
        }

        v36 = v44;
      }

      else
      {
        v622 = 1;
        v51 = 0uLL;
      }

      v290 = vzip1_s32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
      v291.i64[0] = v290.u32[0];
      v291.i64[1] = v290.u32[1];
      v292 = vshlq_u64(v51, vnegq_s64(v291));
      v293 = vuzp1q_s32(vzip1q_s64(v51, v292), vzip2q_s64(v51, v292));
      v294 = vshlq_u32(v293, vnegq_s32((*&v37 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v295 = vuzp1q_s16(vzip1q_s32(v293, v294), vzip2q_s32(v293, v294));
      v296 = vshlq_u16(v295, vnegq_s16((*&v35 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v297 = vuzp1q_s8(vzip1q_s16(v295, v296), vzip2q_s16(v295, v296));
      v296.i64[0] = 0x101010101010101;
      v296.i64[1] = 0x101010101010101;
      v298 = vshlq_s8(v296, v35);
      v296.i64[0] = -1;
      v296.i64[1] = -1;
      v299 = vqtbl1q_s8(vandq_s8(vaddq_s8(v298, v296), v297), xmmword_29D2F0F70);
      *v297.i8 = vdup_lane_s32(*v299.i8, 0);
      *v296.i8 = vdup_lane_s32(*v299.i8, 1);
      v300 = vdupq_laneq_s32(v299, 2).u64[0];
      v299.i64[0] = vdupq_laneq_s32(v299, 3).u64[0];
      v641 = vsubw_s8(v641, *v297.i8);
      v642 = vsubw_s8(v642, *v296.i8);
      v643 = vsubw_s8(v643, v300);
      v644 = vsubw_s8(v644, *v299.i8);
      v289 = vmovl_s8(vceqz_s8(*v297.i8));
      v288 = vmovl_s8(vceqz_s8(*v296.i8));
      v287 = vmovl_s8(vceqz_s8(v300));
      v286 = vmovl_s8(vceqz_s8(*v299.i8));
    }

    v301.i64[0] = 0x8000800080008;
    v301.i64[1] = 0x8000800080008;
    v302 = 0uLL;
    v303 = vandq_s8(vextq_s8(vtstq_s16(v640, v301), 0, 8uLL), v33);
    v304 = vmovl_u16(*&vpaddq_s16(v303, v303));
    v305 = vpaddq_s32(v304, v304).u64[0];
    v306.i64[0] = v305;
    v306.i64[1] = HIDWORD(v305);
    v307 = v306;
    v308 = vaddvq_s64(v306);
    if (v621)
    {
      v309 = v621 >= v36 + v308;
    }

    else
    {
      v309 = 1;
    }

    v310 = v309;
    if (v308 <= 0x80 && (v310 & 1) != 0)
    {
      v311 = vaddq_s64(vdupq_n_s64(v36 & 0x3F), vzip1q_s64(0, v307));
      v312 = (v620 + 8 * (v36 >> 6));
      v302 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v312, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v311)), vshlq_u64(vdupq_lane_s64(v312->i64[0], 0), vnegq_s64(v311)));
      if ((v36 & 0x3F) + v308 >= 0x81)
      {
        v302 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v312[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v311)), vshlq_u64(vdupq_laneq_s64(v312[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v311))), v302);
      }

      v36 += v308;
    }

    else
    {
      v622 = 1;
    }

    v313 = vzip1_s32(*v304.i8, *&vextq_s8(v304, v304, 8uLL));
    v314.i64[0] = v313.u32[0];
    v314.i64[1] = v313.u32[1];
    v315 = vshlq_u64(v302, vnegq_s64(v314));
    v316 = vuzp1q_s32(vzip1q_s64(v302, v315), vzip2q_s64(v302, v315));
    v317.i64[0] = 0xFFFF0000FFFFLL;
    v317.i64[1] = 0xFFFF0000FFFFLL;
    v318 = vshlq_u32(v316, vnegq_s32(vandq_s8(v303, v317)));
    v319 = vuzp1q_s16(vzip1q_s32(v316, v318), vzip2q_s32(v316, v318));
    v318.i64[0] = 0xF000F000F000FLL;
    v318.i64[1] = 0xF000F000F000FLL;
    v320.i64[0] = 0x10001000100010;
    v320.i64[1] = 0x10001000100010;
    v321 = vshlq_s16(vshlq_s16(v319, vsubq_s16(v320, v303)), vaddq_s16(v303, v318));
    v645[3] = v321;
    v322 = v640.i8[0] & 3;
    if (v322 == 2)
    {
      if (v621)
      {
        v323 = v36 + 8;
        v324 = v36 + 16;
        if (v621 >= v36 + 8)
        {
          v36 += 8;
        }

        else
        {
          v324 = v36 + 8;
        }

        if (v621 >= v324)
        {
          v36 = v324;
        }

        if (v621 < v323 || v621 < v324)
        {
          v622 = 1;
        }
      }

      else
      {
        v36 += 16;
      }
    }

    v325 = 0uLL;
    v326 = vextq_s8(0, v641, 8uLL);
    v327 = vmovl_u16(*&vpaddq_s16(v326, v326));
    v328 = vpaddq_s32(v327, v327).u64[0];
    v329.i64[0] = v328;
    v329.i64[1] = HIDWORD(v328);
    v330 = v329;
    v331 = vaddvq_s64(v329);
    v332 = v36 + v331;
    if (v621)
    {
      v333 = v621 >= v332;
    }

    else
    {
      v333 = 1;
    }

    v334 = v333;
    if (v331 <= 0x80 && (v334 & 1) != 0)
    {
      v335 = v36 & 0x3F;
      v336 = vaddq_s64(vdupq_n_s64(v335), vzip1q_s64(0, v330));
      v337 = v620;
      v338 = (v620 + 8 * (v36 >> 6));
      v325 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v338, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v336)), vshlq_u64(vdupq_lane_s64(v338->i64[0], 0), vnegq_s64(v336)));
      if (v335 + v331 >= 0x81)
      {
        v325 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v338[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v336)), vshlq_u64(vdupq_laneq_s64(v338[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v336))), v325);
      }

      v339 = v622;
      v36 = v332;
    }

    else
    {
      v339 = 1;
      v337 = v620;
    }

    v340 = vzip1_s32(*v327.i8, *&vextq_s8(v327, v327, 8uLL));
    v341.i64[0] = v340.u32[0];
    v341.i64[1] = v340.u32[1];
    v342 = vshlq_u64(v325, vnegq_s64(v341));
    v343 = vuzp1q_s32(vzip1q_s64(v325, v342), vzip2q_s64(v325, v342));
    v344.i64[0] = 0xFFFF0000FFFFLL;
    v344.i64[1] = 0xFFFF0000FFFFLL;
    v345 = vshlq_u32(v343, vnegq_s32(vandq_s8(v326, v344)));
    v346.i64[0] = 0xF000F000F000FLL;
    v346.i64[1] = 0xF000F000F000FLL;
    v347.i64[0] = 0x10001000100010;
    v347.i64[1] = 0x10001000100010;
    v348 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v343, v345), vzip2q_s32(v343, v345)), vsubq_s16(v347, v326)), vaddq_s16(v326, v346));
    v623 = v348;
    v349 = vmovl_u16(*&vpaddq_s16(v641, v641));
    v343.i64[0] = vpaddq_s32(v349, v349).u64[0];
    v341.i64[0] = v343.u32[0];
    v341.i64[1] = v343.u32[1];
    v350 = v341;
    v351 = vaddvq_s64(v341);
    v352 = v36 + v351;
    if (v621)
    {
      v353 = v621 >= v352;
    }

    else
    {
      v353 = 1;
    }

    v354 = v353;
    v355 = 0uLL;
    if (v351 <= 0x80 && v354)
    {
      v356 = v36 & 0x3F;
      v357 = vaddq_s64(vdupq_n_s64(v356), vzip1q_s64(0, v350));
      v358 = (v337 + 8 * (v36 >> 6));
      v359 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v358, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v357)), vshlq_u64(vdupq_lane_s64(v358->i64[0], 0), vnegq_s64(v357)));
      if (v356 + v351 >= 0x81)
      {
        v359 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v358[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v357)), vshlq_u64(vdupq_laneq_s64(v358[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v357))), v359);
      }
    }

    else
    {
      v339 = 1;
      v352 = v36;
      v359 = 0uLL;
    }

    v360 = vzip1_s32(*v349.i8, *&vextq_s8(v349, v349, 8uLL));
    v361.i64[0] = v360.u32[0];
    v361.i64[1] = v360.u32[1];
    v362 = vnegq_s64(v361);
    v363 = vshlq_u64(v359, v362);
    v364 = vuzp1q_s32(vzip1q_s64(v359, v363), vzip2q_s64(v359, v363));
    v365 = vnegq_s32(vandq_s8(v641, v344));
    v366 = vshlq_u32(v364, v365);
    v367 = vuzp1q_s16(vzip1q_s32(v364, v366), vzip2q_s32(v364, v366));
    v368 = vaddq_s16(v641, v346);
    v369 = vsubq_s16(v347, v641);
    v370 = vshlq_s16(vshlq_s16(v367, v369), v368);
    v624 = v370;
    v371 = v352 + v351;
    if (v621)
    {
      v372 = v621 >= v371;
    }

    else
    {
      v372 = 1;
    }

    v373 = v372;
    if (v351 <= 0x80 && v373)
    {
      v374 = v352 & 0x3F;
      v375 = vaddq_s64(vdupq_n_s64(v374), vzip1q_s64(0, v350));
      v376 = (v337 + 8 * (v352 >> 6));
      v355 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v376, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v375)), vshlq_u64(vdupq_lane_s64(v376->i64[0], 0), vnegq_s64(v375)));
      if (v374 + v351 >= 0x81)
      {
        v355 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v376[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v375)), vshlq_u64(vdupq_laneq_s64(v376[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v375))), v355);
      }
    }

    else
    {
      v339 = 1;
      v371 = v352;
    }

    v377 = vshlq_u64(v355, v362);
    v378 = vuzp1q_s32(vzip1q_s64(v355, v377), vzip2q_s64(v355, v377));
    v379 = vshlq_u32(v378, v365);
    v380 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v378, v379), vzip2q_s32(v378, v379)), v369), v368);
    v625 = v380;
    v381 = v371 + v351;
    if (v621)
    {
      v382 = v621 >= v381;
    }

    else
    {
      v382 = 1;
    }

    v383 = v382;
    v384 = 0uLL;
    if (v351 <= 0x80 && v383)
    {
      v385 = v371 & 0x3F;
      v386 = vaddq_s64(vdupq_n_s64(v385), vzip1q_s64(0, v350));
      v387 = (v337 + 8 * (v371 >> 6));
      v388 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v387, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v386)), vshlq_u64(vdupq_lane_s64(v387->i64[0], 0), vnegq_s64(v386)));
      if (v385 + v351 >= 0x81)
      {
        v388 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v387[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v386)), vshlq_u64(vdupq_laneq_s64(v387[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v386))), v388);
      }
    }

    else
    {
      v339 = 1;
      v381 = v371;
      v388 = 0uLL;
    }

    v389 = vshlq_u64(v388, v362);
    v390 = vuzp1q_s32(vzip1q_s64(v388, v389), vzip2q_s64(v388, v389));
    v391 = vshlq_u32(v390, v365);
    v392 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v390, v391), vzip2q_s32(v390, v391)), v369), v368);
    v626 = v392;
    v393 = vmovl_u16(*&vpaddq_s16(v642, v642));
    v394 = vpaddq_s32(v393, v393).u64[0];
    v395.i64[0] = v394;
    v395.i64[1] = HIDWORD(v394);
    v396 = v395;
    v397 = vaddvq_s64(v395);
    v398 = v397;
    v399 = v381 + v397;
    if (v621)
    {
      v400 = v621 >= v399;
    }

    else
    {
      v400 = 1;
    }

    v401 = v400;
    if (v397 <= 0x80 && v401)
    {
      v402 = v381 & 0x3F;
      v403 = vaddq_s64(vdupq_n_s64(v402), vzip1q_s64(0, v396));
      v404 = (v337 + 8 * (v381 >> 6));
      v384 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v404, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v403)), vshlq_u64(vdupq_lane_s64(v404->i64[0], 0), vnegq_s64(v403)));
      if (v402 + v398 >= 0x81)
      {
        v384 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v404[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v403)), vshlq_u64(vdupq_laneq_s64(v404[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v403))), v384);
      }
    }

    else
    {
      v339 = 1;
      v399 = v381;
    }

    v405 = vzip1_s32(*v393.i8, *&vextq_s8(v393, v393, 8uLL));
    v406.i64[0] = v405.u32[0];
    v406.i64[1] = v405.u32[1];
    v407 = vnegq_s64(v406);
    v408 = vshlq_u64(v384, v407);
    v409 = vuzp1q_s32(vzip1q_s64(v384, v408), vzip2q_s64(v384, v408));
    v410.i64[0] = 0xFFFF0000FFFFLL;
    v410.i64[1] = 0xFFFF0000FFFFLL;
    v411 = vnegq_s32(vandq_s8(v642, v410));
    v412 = vshlq_u32(v409, v411);
    v413 = vuzp1q_s16(vzip1q_s32(v409, v412), vzip2q_s32(v409, v412));
    v412.i64[0] = 0xF000F000F000FLL;
    v412.i64[1] = 0xF000F000F000FLL;
    v414 = vaddq_s16(v642, v412);
    v412.i64[0] = 0x10001000100010;
    v412.i64[1] = 0x10001000100010;
    v415 = vsubq_s16(v412, v642);
    v416 = vshlq_s16(vshlq_s16(v413, v415), v414);
    v627 = v416;
    v417 = v399 + v398;
    if (v621)
    {
      v418 = v621 >= v417;
    }

    else
    {
      v418 = 1;
    }

    v419 = v418;
    v420 = 0uLL;
    if (v398 <= 0x80 && v419)
    {
      v421 = v399 & 0x3F;
      v422 = vaddq_s64(vdupq_n_s64(v421), vzip1q_s64(0, v396));
      v423 = (v337 + 8 * (v399 >> 6));
      v424 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v423, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v422)), vshlq_u64(vdupq_lane_s64(v423->i64[0], 0), vnegq_s64(v422)));
      if (v421 + v398 >= 0x81)
      {
        v424 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v423[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v422)), vshlq_u64(vdupq_laneq_s64(v423[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v422))), v424);
      }
    }

    else
    {
      v339 = 1;
      v417 = v399;
      v424 = 0uLL;
    }

    v425 = vshlq_u64(v424, v407);
    v426 = vuzp1q_s32(vzip1q_s64(v424, v425), vzip2q_s64(v424, v425));
    v427 = vshlq_u32(v426, v411);
    v428 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v426, v427), vzip2q_s32(v426, v427)), v415), v414);
    v628 = v428;
    v429 = v417 + v398;
    if (v621)
    {
      v430 = v621 >= v429;
    }

    else
    {
      v430 = 1;
    }

    v431 = v430;
    if (v398 <= 0x80 && v431)
    {
      v432 = v417 & 0x3F;
      v433 = vaddq_s64(vdupq_n_s64(v432), vzip1q_s64(0, v396));
      v434 = (v337 + 8 * (v417 >> 6));
      v420 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v434, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v433)), vshlq_u64(vdupq_lane_s64(v434->i64[0], 0), vnegq_s64(v433)));
      if (v432 + v398 >= 0x81)
      {
        v420 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v434[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v433)), vshlq_u64(vdupq_laneq_s64(v434[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v433))), v420);
      }
    }

    else
    {
      v339 = 1;
      v429 = v417;
    }

    v435 = vshlq_u64(v420, v407);
    v436 = vuzp1q_s32(vzip1q_s64(v420, v435), vzip2q_s64(v420, v435));
    v437 = vshlq_u32(v436, v411);
    v438 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v436, v437), vzip2q_s32(v436, v437)), v415), v414);
    v629 = v438;
    v439 = v429 + v398;
    if (v621)
    {
      v440 = v621 >= v439;
    }

    else
    {
      v440 = 1;
    }

    v441 = v440;
    v442 = 0uLL;
    if (v398 <= 0x80 && v441)
    {
      v443 = v429 & 0x3F;
      v444 = vaddq_s64(vdupq_n_s64(v443), vzip1q_s64(0, v396));
      v445 = (v337 + 8 * (v429 >> 6));
      v446 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v445, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v444)), vshlq_u64(vdupq_lane_s64(v445->i64[0], 0), vnegq_s64(v444)));
      if (v443 + v398 >= 0x81)
      {
        v446 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v445[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v444)), vshlq_u64(vdupq_laneq_s64(v445[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v444))), v446);
      }
    }

    else
    {
      v339 = 1;
      v439 = v429;
      v446 = 0uLL;
    }

    v447 = vshlq_u64(v446, v407);
    v448 = vuzp1q_s32(vzip1q_s64(v446, v447), vzip2q_s64(v446, v447));
    v449 = vshlq_u32(v448, v411);
    v450 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v448, v449), vzip2q_s32(v448, v449)), v415), v414);
    v630 = v450;
    v451 = vmovl_u16(*&vpaddq_s16(v643, v643));
    v452 = vpaddq_s32(v451, v451).u64[0];
    v453.i64[0] = v452;
    v453.i64[1] = HIDWORD(v452);
    v454 = v453;
    v455 = vaddvq_s64(v453);
    v456 = v455;
    v457 = v439 + v455;
    if (v621)
    {
      v458 = v621 >= v457;
    }

    else
    {
      v458 = 1;
    }

    v459 = v458;
    if (v455 <= 0x80 && v459)
    {
      v460 = v439 & 0x3F;
      v461 = vaddq_s64(vdupq_n_s64(v460), vzip1q_s64(0, v454));
      v462 = (v337 + 8 * (v439 >> 6));
      v442 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v462, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v461)), vshlq_u64(vdupq_lane_s64(v462->i64[0], 0), vnegq_s64(v461)));
      if (v460 + v456 >= 0x81)
      {
        v442 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v462[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v461)), vshlq_u64(vdupq_laneq_s64(v462[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v461))), v442);
      }
    }

    else
    {
      v339 = 1;
      v457 = v439;
    }

    v463 = vzip1_s32(*v451.i8, *&vextq_s8(v451, v451, 8uLL));
    v464.i64[0] = v463.u32[0];
    v464.i64[1] = v463.u32[1];
    v465 = vnegq_s64(v464);
    v466 = vshlq_u64(v442, v465);
    v467 = vuzp1q_s32(vzip1q_s64(v442, v466), vzip2q_s64(v442, v466));
    v468.i64[0] = 0xFFFF0000FFFFLL;
    v468.i64[1] = 0xFFFF0000FFFFLL;
    v469 = vnegq_s32(vandq_s8(v643, v468));
    v470 = vshlq_u32(v467, v469);
    v471 = vuzp1q_s16(vzip1q_s32(v467, v470), vzip2q_s32(v467, v470));
    v470.i64[0] = 0xF000F000F000FLL;
    v470.i64[1] = 0xF000F000F000FLL;
    v472 = vaddq_s16(v643, v470);
    v470.i64[0] = 0x10001000100010;
    v470.i64[1] = 0x10001000100010;
    v473 = vsubq_s16(v470, v643);
    v474 = vshlq_s16(vshlq_s16(v471, v473), v472);
    v631 = v474;
    v475 = v457 + v456;
    if (v621)
    {
      v476 = v621 >= v475;
    }

    else
    {
      v476 = 1;
    }

    v477 = v476;
    v478 = 0uLL;
    if (v456 <= 0x80 && v477)
    {
      v479 = v457 & 0x3F;
      v480 = vaddq_s64(vdupq_n_s64(v479), vzip1q_s64(0, v454));
      v481 = (v337 + 8 * (v457 >> 6));
      v482 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v481, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v480)), vshlq_u64(vdupq_lane_s64(v481->i64[0], 0), vnegq_s64(v480)));
      if (v479 + v456 >= 0x81)
      {
        v482 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v481[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v480)), vshlq_u64(vdupq_laneq_s64(v481[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v480))), v482);
      }
    }

    else
    {
      v339 = 1;
      v475 = v457;
      v482 = 0uLL;
    }

    v483 = vshlq_u64(v482, v465);
    v484 = vuzp1q_s32(vzip1q_s64(v482, v483), vzip2q_s64(v482, v483));
    v485 = vshlq_u32(v484, v469);
    v486 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v484, v485), vzip2q_s32(v484, v485)), v473), v472);
    v632 = v486;
    v487 = v475 + v456;
    if (v621)
    {
      v488 = v621 >= v487;
    }

    else
    {
      v488 = 1;
    }

    v489 = v488;
    if (v456 <= 0x80 && v489)
    {
      v490 = v475 & 0x3F;
      v491 = vaddq_s64(vdupq_n_s64(v490), vzip1q_s64(0, v454));
      v492 = (v337 + 8 * (v475 >> 6));
      v478 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v492, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v491)), vshlq_u64(vdupq_lane_s64(v492->i64[0], 0), vnegq_s64(v491)));
      if (v490 + v456 >= 0x81)
      {
        v478 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v492[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v491)), vshlq_u64(vdupq_laneq_s64(v492[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v491))), v478);
      }
    }

    else
    {
      v339 = 1;
      v487 = v475;
    }

    v493 = vshlq_u64(v478, v465);
    v494 = vuzp1q_s32(vzip1q_s64(v478, v493), vzip2q_s64(v478, v493));
    v495 = vshlq_u32(v494, v469);
    v496 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v494, v495), vzip2q_s32(v494, v495)), v473), v472);
    v633 = v496;
    v497 = v487 + v456;
    if (v621)
    {
      v498 = v621 >= v497;
    }

    else
    {
      v498 = 1;
    }

    v499 = v498;
    v500 = 0uLL;
    if (v456 <= 0x80 && v499)
    {
      v501 = v487 & 0x3F;
      v502 = vaddq_s64(vdupq_n_s64(v501), vzip1q_s64(0, v454));
      v503 = (v337 + 8 * (v487 >> 6));
      v504 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v503, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v502)), vshlq_u64(vdupq_lane_s64(v503->i64[0], 0), vnegq_s64(v502)));
      if (v501 + v456 >= 0x81)
      {
        v504 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v503[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v502)), vshlq_u64(vdupq_laneq_s64(v503[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v502))), v504);
      }
    }

    else
    {
      v339 = 1;
      v497 = v487;
      v504 = 0uLL;
    }

    v505 = vshlq_u64(v504, v465);
    v506 = vuzp1q_s32(vzip1q_s64(v504, v505), vzip2q_s64(v504, v505));
    v507 = vshlq_u32(v506, v469);
    v508 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v506, v507), vzip2q_s32(v506, v507)), v473), v472);
    v634 = v508;
    v509 = vmovl_u16(*&vpaddq_s16(v644, v644));
    v510 = vpaddq_s32(v509, v509).u64[0];
    v511.i64[0] = v510;
    v511.i64[1] = HIDWORD(v510);
    v512 = v511;
    v513 = vaddvq_s64(v511);
    v514 = v513;
    v515 = v497 + v513;
    if (v621)
    {
      v516 = v621 >= v515;
    }

    else
    {
      v516 = 1;
    }

    v517 = v516;
    if (v513 <= 0x80 && v517)
    {
      v518 = v497 & 0x3F;
      v519 = vaddq_s64(vdupq_n_s64(v518), vzip1q_s64(0, v512));
      v520 = (v337 + 8 * (v497 >> 6));
      v500 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v520, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v519)), vshlq_u64(vdupq_lane_s64(v520->i64[0], 0), vnegq_s64(v519)));
      if (v518 + v514 >= 0x81)
      {
        v500 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v520[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v519)), vshlq_u64(vdupq_laneq_s64(v520[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v519))), v500);
      }
    }

    else
    {
      v339 = 1;
      v515 = v497;
    }

    v521 = vzip1_s32(*v509.i8, *&vextq_s8(v509, v509, 8uLL));
    v522.i64[0] = v521.u32[0];
    v522.i64[1] = v521.u32[1];
    v523 = vnegq_s64(v522);
    v524 = vshlq_u64(v500, v523);
    v525 = vuzp1q_s32(vzip1q_s64(v500, v524), vzip2q_s64(v500, v524));
    v524.i64[0] = 0xFFFF0000FFFFLL;
    v524.i64[1] = 0xFFFF0000FFFFLL;
    v526 = vnegq_s32(vandq_s8(v644, v524));
    v527 = vshlq_u32(v525, v526);
    v528 = vuzp1q_s16(vzip1q_s32(v525, v527), vzip2q_s32(v525, v527));
    v525.i64[0] = 0xF000F000F000FLL;
    v525.i64[1] = 0xF000F000F000FLL;
    v529 = vaddq_s16(v644, v525);
    v527.i64[0] = 0x10001000100010;
    v527.i64[1] = 0x10001000100010;
    v530 = vsubq_s16(v527, v644);
    v531 = vshlq_s16(vshlq_s16(v528, v530), v529);
    v635 = v531;
    v532 = v515 + v514;
    if (v621)
    {
      v533 = v621 >= v532;
    }

    else
    {
      v533 = 1;
    }

    v534 = v533;
    v535 = 0uLL;
    if (v514 <= 0x80 && v534)
    {
      v536 = v515 & 0x3F;
      v537 = vaddq_s64(vdupq_n_s64(v536), vzip1q_s64(0, v512));
      v538 = (v337 + 8 * (v515 >> 6));
      v539 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v538, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v537)), vshlq_u64(vdupq_lane_s64(v538->i64[0], 0), vnegq_s64(v537)));
      if (v536 + v514 >= 0x81)
      {
        v539 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v538[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v537)), vshlq_u64(vdupq_laneq_s64(v538[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v537))), v539);
      }
    }

    else
    {
      v339 = 1;
      v532 = v515;
      v539 = 0uLL;
    }

    v540 = vshlq_u64(v539, v523);
    v541 = vuzp1q_s32(vzip1q_s64(v539, v540), vzip2q_s64(v539, v540));
    v542 = vshlq_u32(v541, v526);
    v543 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v541, v542), vzip2q_s32(v541, v542)), v530), v529);
    v636 = v543;
    v544 = v532 + v514;
    if (v621)
    {
      v545 = v621 >= v544;
    }

    else
    {
      v545 = 1;
    }

    v546 = v545;
    if (v514 <= 0x80 && v546)
    {
      v547 = v532 & 0x3F;
      v548 = vaddq_s64(vdupq_n_s64(v547), vzip1q_s64(0, v512));
      v549 = (v337 + 8 * (v532 >> 6));
      v535 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v549, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v548)), vshlq_u64(vdupq_lane_s64(v549->i64[0], 0), vnegq_s64(v548)));
      if (v547 + v514 >= 0x81)
      {
        v535 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v549[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v548)), vshlq_u64(vdupq_laneq_s64(v549[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v548))), v535);
      }
    }

    else
    {
      v339 = 1;
      v544 = v532;
    }

    v550 = vshlq_u64(v535, v523);
    v551 = vuzp1q_s32(vzip1q_s64(v535, v550), vzip2q_s64(v535, v550));
    v552 = vshlq_u32(v551, v526);
    v553 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v551, v552), vzip2q_s32(v551, v552)), v530), v529);
    v637 = v553;
    v554 = v544 + v514;
    if (v621)
    {
      v555 = v621 >= v554;
    }

    else
    {
      v555 = 1;
    }

    v556 = v555;
    if (v514 > 0x80 || !v556)
    {
      goto LABEL_264;
    }

    v557 = vaddq_s64(vdupq_n_s64(v544 & 0x3F), vzip1q_s64(0, v512));
    v558 = (v337 + 8 * (v544 >> 6));
    v559 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v558, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v557)), vshlq_u64(vdupq_lane_s64(v558->i64[0], 0), vnegq_s64(v557)));
    if ((v544 & 0x3F) + v514 >= 0x81)
    {
      v559 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v558[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v557)), vshlq_u64(vdupq_laneq_s64(v558[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v557))), v559);
    }

    if ((v339 & 1) != 0 || v621 + 8 * result - v554 - 1280 >= 9 || v322 == 2)
    {
LABEL_264:
      result = 0;
      v560 = vdupq_n_s64(0xFFFFF003FFuLL);
      *v47 = v560;
      *(v47 + v48) = v560;
    }

    else
    {
      v561 = vshlq_u64(v559, v523);
      v562 = vuzp1q_s32(vzip1q_s64(v559, v561), vzip2q_s64(v559, v561));
      v563 = vshlq_u32(v562, v526);
      v564 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v562, v563), vzip2q_s32(v562, v563)), v530), v529);
      v565 = vaddq_s16(vandq_s8(v321, v289), v348);
      v566 = vdupq_lane_s64(v321.i64[0], 0);
      v567 = vandq_s8(v289, v566);
      v568 = vsubq_s16(v565, v567);
      v569 = vsubq_s16(v370, v567);
      v570 = vsubq_s16(v380, v567);
      v571 = vsubq_s16(v392, v567);
      v572 = vandq_s8(v288, v566);
      v573 = vsubq_s16(v416, v572);
      v574 = vsubq_s16(v428, v572);
      v575 = vsubq_s16(v438, v572);
      v576 = vsubq_s16(v450, v572);
      v577 = vandq_s8(v287, v566);
      v578 = vsubq_s16(v474, v577);
      v579 = vsubq_s16(v486, v577);
      v580 = vsubq_s16(v496, v577);
      v581 = vsubq_s16(v508, v577);
      v582 = vandq_s8(v286, v566);
      v583 = vsubq_s16(v531, v582);
      v623 = v565;
      v584 = vsubq_s16(v543, v582);
      v585 = vsubq_s16(v553, v582);
      v635 = v583;
      v636 = v584;
      v586 = vsubq_s16(v564, v582);
      v637 = v585;
      v638 = v586;
      v587.i64[0] = 0x1000100010001;
      v587.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16(v32, v587)))
      {
        v588 = vnegq_s16(vandq_s8(v640, v587));
        v589.i64[0] = v571.i64[0];
        v590.i64[1] = v568.i64[1];
        v589.i64[1] = v568.i64[0];
        v590.i64[0] = v571.i64[1];
        v591 = vbslq_s8(v588, v590, v568);
        v592 = vbslq_s8(v588, v589, v571);
        v590.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v590.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v593 = vandq_s8(vqtbl4q_s8(*(&v569 - 1), v590), v588);
        v647.val[0] = vaddq_s16(v591, vandq_s8(vqtbl4q_s8(*(&v569 - 1), xmmword_29D2F10B0), v588));
        v647.val[1] = vaddq_s16(v569, vandq_s8(vqtbl4q_s8(*(&v569 - 1), xmmword_29D2F10C0), v588));
        v647.val[2] = vaddq_s16(v570, v593);
        v647.val[3] = vaddq_s16(v592, v593);
        v594 = vandq_s8(vqtbl4q_s8(v647, v590), v588);
        v568 = vaddq_s16(v647.val[0], vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F10D0), v588));
        v569 = vaddq_s16(v647.val[1], vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F10E0), v588));
        v623 = v568;
        v624 = v569;
        v570 = vaddq_s16(v647.val[2], v594);
        v571 = vaddq_s16(v647.val[3], v594);
        v646.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v573.i8, xmmword_29D2F10B0), v588), v573);
        v646.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v573.i8, xmmword_29D2F10F0), v588), v574);
        v646.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v573.i8, v590), v588), v575);
        v646.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v573.i8, xmmword_29D2F1100), v588), v576);
        v595 = vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F10D0), v588);
        v596 = vandq_s8(vqtbl4q_s8(v646, v590), v588);
        v573 = vaddq_s16(v595, v646.val[0]);
        v574 = vaddq_s16(v646.val[1], v595);
        v575 = vaddq_s16(v646.val[2], v596);
        v576 = vaddq_s16(v646.val[3], v596);
        v646.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v578.i8, xmmword_29D2F0EB0), v588), v578);
        v646.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v578.i8, xmmword_29D2F0FB0), v588), v579);
        v646.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v578.i8, xmmword_29D2F10B0), v588), v580);
        v646.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v578.i8, xmmword_29D2F10C0), v588), v581);
        v597 = vandq_s8(vqtbl4q_s8(v646, v590), v588);
        v578 = vaddq_s16(v646.val[0], v597);
        v579 = vaddq_s16(v646.val[1], v597);
        v580 = vaddq_s16(v646.val[2], vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F0FE0), v588));
        v581 = vaddq_s16(v646.val[3], vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F1110), v588));
        v647.val[0] = v635;
        v647.val[1] = v636;
        v31 = v640;
        v647.val[2] = v637;
        v647.val[3] = v638;
        v646.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F0EB0), v588), v635);
        v646.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F1120), v588), v636);
        v625 = v570;
        v626 = v571;
        v646.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F10B0), v588), v637);
        v646.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F10C0), v588), v638);
        v598 = vandq_s8(vqtbl4q_s8(v646, v590), v588);
        v583 = vaddq_s16(v646.val[0], v598);
        v584 = vaddq_s16(v646.val[1], v598);
        v585 = vaddq_s16(v646.val[2], vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F0FE0), v588));
        v586 = vaddq_s16(v646.val[3], vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F1130), v588));
      }

      v599 = vaddq_s16(v639, v568);
      v600 = vaddq_s16(v569, v639);
      v601 = vaddq_s16(v570, v639);
      v602 = vaddq_s16(v571, v639);
      v603 = vaddq_s16(v573, v639);
      v604 = vaddq_s16(v574, v639);
      v605 = vaddq_s16(v575, v639);
      v606 = vaddq_s16(v576, v639);
      v607 = vaddq_s16(v578, v639);
      v608 = vaddq_s16(v579, v639);
      v609 = vaddq_s16(v580, v639);
      v610 = vaddq_s16(v581, v639);
      v611 = vaddq_s16(v583, v639);
      v612 = vaddq_s16(v584, v639);
      v613 = vaddq_s16(v585, v639);
      v614 = vaddq_s16(v586, v639);
      v615.i64[0] = 0x10001000100010;
      v615.i64[1] = 0x10001000100010;
      v616 = vceqzq_s16(vandq_s8(v31, v615));
      v617 = &v47[4];
      *v47 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v599, xmmword_29D2F1140), v616), v599), 6uLL);
      v47[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v600, xmmword_29D2F1140), v616), v600), 6uLL);
      v47[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v601, xmmword_29D2F1140), v616), v601), 6uLL);
      v47[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v602, xmmword_29D2F1140), v616), v602), 6uLL);
      v618 = &v47->i8[v48];
      *v617 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v603, xmmword_29D2F1140), v616), v603), 6uLL);
      v617[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v604, xmmword_29D2F1140), v616), v604), 6uLL);
      v617[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v605, xmmword_29D2F1140), v616), v605), 6uLL);
      v617[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v606, xmmword_29D2F1140), v616), v606), 6uLL);
      *v618 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v607, xmmword_29D2F1140), v616), v607), 6uLL);
      v618[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v608, xmmword_29D2F1140), v616), v608), 6uLL);
      v618[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v609, xmmword_29D2F1140), v616), v609), 6uLL);
      v618[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v610, xmmword_29D2F1140), v616), v610), 6uLL);
      v618 += 4;
      *v618 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v611, xmmword_29D2F1140), v616), v611), 6uLL);
      v618[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v612, xmmword_29D2F1140), v616), v612), 6uLL);
      v618[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v613, xmmword_29D2F1140), v616), v613), 6uLL);
      v618[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v614, xmmword_29D2F1140), v616), v614), 6uLL);
    }

    return result;
  }

  v53.i64[0] = 0xA000A000A000ALL;
  v53.i64[1] = 0xA000A000A000ALL;
  v54 = vmovl_u16(*&vpaddq_s16(v53, v53));
  v53.i64[0] = vpaddq_s32(v54, v54).u64[0];
  v55.i64[0] = v53.u32[0];
  v55.i64[1] = v53.u32[1];
  v56 = v55;
  v57 = vaddvq_s64(v55);
  v58 = v57;
  v59 = 0uLL;
  if (v57 > 0x80)
  {
    v263 = 0uLL;
    v264 = 0uLL;
    v265 = 0uLL;
    v255 = 0uLL;
    v256 = 0uLL;
    v257 = 0uLL;
    v258 = 0uLL;
    v262 = 0uLL;
    v261 = 0uLL;
    v260 = 0uLL;
    v259 = 0uLL;
    v283 = 0uLL;
    v282 = 0uLL;
    v281 = 0uLL;
    v280 = 0uLL;
  }

  else
  {
    v60 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v61 = vzip1q_s64(0, v56);
    v62 = 8 * (a3 & 7);
    v63 = v57 + v62;
    v64 = vaddq_s64(v61, vdupq_n_s64(v62));
    v65 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v64)));
    if (v63 >= 0x81)
    {
      v65 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v60[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v60[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v65);
    }

    v66 = v63 & 0x3F;
    v67 = (v60 + 8 * (v63 >> 6));
    v68 = vaddq_s64(v61, vdupq_n_s64(v66));
    v69 = v58 + v63;
    v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v67, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v68)), vshlq_u64(vdupq_lane_s64(v67->i64[0], 0), vnegq_s64(v68)));
    if (v58 + v66 >= 0x81)
    {
      v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v67[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v68)), vshlq_u64(vdupq_laneq_s64(v67[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v68))), v70);
    }

    v71 = v69 & 0x3F;
    v72 = (v60 + 8 * (v69 >> 6));
    v73 = vaddq_s64(v61, vdupq_n_s64(v71));
    v74 = v58 + v69;
    v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v72, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v73)), vshlq_u64(vdupq_lane_s64(v72->i64[0], 0), vnegq_s64(v73)));
    if (v58 + v71 >= 0x81)
    {
      v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v72[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v73)), vshlq_u64(vdupq_laneq_s64(v72[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v73))), v75);
    }

    v76 = vextq_s8(v54, v54, 8uLL).u64[0];
    v77 = v74 & 0x3F;
    v78 = (v60 + 8 * (v74 >> 6));
    v79 = vaddq_s64(v61, vdupq_n_s64(v77));
    v80 = v58 + v74;
    v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v78, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v79)), vshlq_u64(vdupq_lane_s64(v78->i64[0], 0), vnegq_s64(v79)));
    if (v58 + v77 >= 0x81)
    {
      v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v78[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v79)), vshlq_u64(vdupq_laneq_s64(v78[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v79))), v81);
    }

    v82 = v80 & 0x3F;
    v83 = (v60 + 8 * (v80 >> 6));
    v84 = vaddq_s64(v61, vdupq_n_s64(v82));
    v85 = v58 + v80;
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v84)));
    if (v58 + v82 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v86);
    }

    v87 = vzip1_s32(*v54.i8, v76);
    v88 = v85 & 0x3F;
    v89 = (v60 + 8 * (v85 >> 6));
    v90 = vaddq_s64(v61, vdupq_n_s64(v88));
    v91 = v58 + v85;
    v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v90)));
    if (v58 + v88 >= 0x81)
    {
      v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v92);
    }

    v93.i64[0] = v87.u32[0];
    v93.i64[1] = v87.u32[1];
    v94 = v93;
    v95 = v91 & 0x3F;
    v96 = (v60 + 8 * (v91 >> 6));
    v97 = vaddq_s64(v61, vdupq_n_s64(v95));
    v98 = v58 + v91;
    v99 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v96, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v97)), vshlq_u64(vdupq_lane_s64(v96->i64[0], 0), vnegq_s64(v97)));
    if (v58 + v95 >= 0x81)
    {
      v99 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v96[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v97)), vshlq_u64(vdupq_laneq_s64(v96[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v97))), v99);
    }

    v100 = vnegq_s64(v94);
    v101 = v98 & 0x3F;
    v102 = (v60 + 8 * (v98 >> 6));
    v103 = vaddq_s64(v61, vdupq_n_s64(v101));
    v104 = v58 + v98;
    v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v102, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v103)), vshlq_u64(vdupq_lane_s64(v102->i64[0], 0), vnegq_s64(v103)));
    if (v58 + v101 >= 0x81)
    {
      v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v102[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v103)), vshlq_u64(vdupq_laneq_s64(v102[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v103))), v105);
    }

    v106 = vshlq_u64(v65, v100);
    v107 = vshlq_u64(v70, v100);
    v108 = vshlq_u64(v75, v100);
    v109 = vshlq_u64(v81, v100);
    v110 = vshlq_u64(v86, v100);
    v111 = vshlq_u64(v92, v100);
    v112 = vshlq_u64(v99, v100);
    v113 = vshlq_u64(v105, v100);
    v114 = v104 & 0x3F;
    v115 = (v60 + 8 * (v104 >> 6));
    v116 = vaddq_s64(v61, vdupq_n_s64(v114));
    v117 = v58 + v104;
    v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v116)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v116)));
    if (v58 + v114 >= 0x81)
    {
      v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v116)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v116))), v118);
    }

    v119 = vzip2q_s64(v65, v106);
    v120 = vzip1q_s64(v65, v106);
    v121 = vzip2q_s64(v70, v107);
    v122 = vzip1q_s64(v70, v107);
    v123 = vzip2q_s64(v75, v108);
    v124 = vzip1q_s64(v75, v108);
    v125 = vzip2q_s64(v81, v109);
    v126 = vzip1q_s64(v81, v109);
    v127 = vzip2q_s64(v86, v110);
    v128 = vzip1q_s64(v86, v110);
    v129 = vzip2q_s64(v92, v111);
    v130 = vzip1q_s64(v92, v111);
    v131 = vzip2q_s64(v99, v112);
    v132 = vzip1q_s64(v99, v112);
    v133 = vzip2q_s64(v105, v113);
    v134 = vzip1q_s64(v105, v113);
    v135 = vshlq_u64(v118, v100);
    v136 = vzip2q_s64(v118, v135);
    v137 = vzip1q_s64(v118, v135);
    v138 = (v60 + 8 * (v117 >> 6));
    v139 = vaddq_s64(v61, vdupq_n_s64(v117 & 0x3F));
    v140 = v58 + v117;
    v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v139)));
    if (v58 + (v117 & 0x3F) >= 0x81)
    {
      v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v141);
    }

    v142 = vuzp1q_s32(v120, v119);
    v143 = vuzp1q_s32(v122, v121);
    v144 = vuzp1q_s32(v124, v123);
    v145 = vuzp1q_s32(v126, v125);
    v146 = vuzp1q_s32(v128, v127);
    v147 = vuzp1q_s32(v130, v129);
    v148 = vuzp1q_s32(v132, v131);
    v149 = vuzp1q_s32(v134, v133);
    v150 = vuzp1q_s32(v137, v136);
    v151 = vshlq_u64(v141, v100);
    v152 = vuzp1q_s32(vzip1q_s64(v141, v151), vzip2q_s64(v141, v151));
    v153 = v58 + v140;
    v154 = v140 & 0x3F;
    v155 = vaddq_s64(v61, vdupq_n_s64(v154));
    v156 = (v60 + 8 * (v140 >> 6));
    v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
    if (v58 + v154 >= 0x81)
    {
      v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v157);
    }

    v158.i64[0] = 0x1000100010001;
    v158.i64[1] = 0x1000100010001;
    v159 = vshrq_n_u32(v142, 0xAuLL);
    v160 = vshrq_n_u32(v143, 0xAuLL);
    v161 = vshrq_n_u32(v144, 0xAuLL);
    v162 = vshrq_n_u32(v145, 0xAuLL);
    v163 = vshrq_n_u32(v146, 0xAuLL);
    v164 = vshrq_n_u32(v147, 0xAuLL);
    v165 = vshrq_n_u32(v148, 0xAuLL);
    v166 = vshrq_n_u32(v149, 0xAuLL);
    v167 = vshrq_n_u32(v150, 0xAuLL);
    v168 = vshrq_n_u32(v152, 0xAuLL);
    v169 = vshlq_u64(v157, v100);
    v170 = vuzp1q_s32(vzip1q_s64(v157, v169), vzip2q_s64(v157, v169));
    v171 = vshrq_n_u32(v170, 0xAuLL);
    v172 = v153 & 0x3F;
    v173 = (v60 + 8 * (v153 >> 6));
    v174 = vaddq_s64(v61, vdupq_n_s64(v172));
    v175 = v58 + v153;
    v176 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v173, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v174)), vshlq_u64(vdupq_lane_s64(v173->i64[0], 0), vnegq_s64(v174)));
    if (v58 + v172 >= 0x81)
    {
      v176 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v173[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v174)), vshlq_u64(vdupq_laneq_s64(v173[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v174))), v176);
    }

    v177 = vshlq_n_s16(v158, 0xAuLL);
    v178.i64[0] = -1;
    v178.i64[1] = -1;
    v179 = vzip2q_s32(v142, v159);
    v180 = vzip1q_s32(v142, v159);
    v181 = vzip2q_s32(v143, v160);
    v182 = vzip1q_s32(v143, v160);
    v183 = vzip2q_s32(v144, v161);
    v184 = vzip1q_s32(v144, v161);
    v185 = vzip2q_s32(v145, v162);
    v186 = vzip1q_s32(v145, v162);
    v187 = vzip2q_s32(v146, v163);
    v188 = vzip1q_s32(v146, v163);
    v189 = vzip2q_s32(v147, v164);
    v190 = vzip1q_s32(v147, v164);
    v191 = vzip2q_s32(v148, v165);
    v192 = vzip1q_s32(v148, v165);
    v193 = vzip2q_s32(v149, v166);
    v194 = vzip1q_s32(v149, v166);
    v195 = vzip2q_s32(v150, v167);
    v196 = vzip1q_s32(v150, v167);
    v197 = vzip2q_s32(v152, v168);
    v198 = vzip1q_s32(v152, v168);
    v199 = vzip2q_s32(v170, v171);
    v200 = vzip1q_s32(v170, v171);
    v201 = vshlq_u64(v176, v100);
    v202 = vuzp1q_s32(vzip1q_s64(v176, v201), vzip2q_s64(v176, v201));
    v203 = vshrq_n_u32(v202, 0xAuLL);
    v204 = vzip2q_s32(v202, v203);
    v205 = vzip1q_s32(v202, v203);
    v206 = (v60 + 8 * (v175 >> 6));
    v207 = vaddq_s64(v61, vdupq_n_s64(v175 & 0x3F));
    v208 = v58 + v175;
    v209 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v206, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v207)), vshlq_u64(vdupq_lane_s64(v206->i64[0], 0), vnegq_s64(v207)));
    if (v58 + (v175 & 0x3F) >= 0x81)
    {
      v178.i64[0] = -1;
      v178.i64[1] = -1;
      v209 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v206[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v207)), vshlq_u64(vdupq_laneq_s64(v206[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v207))), v209);
    }

    v210 = vaddq_s16(v177, v178);
    v211 = vuzp1q_s16(v180, v179);
    v212 = vuzp1q_s16(v182, v181);
    v213 = vuzp1q_s16(v184, v183);
    v214 = vuzp1q_s16(v186, v185);
    v215 = vuzp1q_s16(v188, v187);
    v216 = vuzp1q_s16(v190, v189);
    v217 = vuzp1q_s16(v192, v191);
    v218 = vuzp1q_s16(v194, v193);
    v219 = vuzp1q_s16(v196, v195);
    v220 = vuzp1q_s16(v198, v197);
    v221 = vuzp1q_s16(v200, v199);
    v222 = vuzp1q_s16(v205, v204);
    v223 = vshlq_u64(v209, v100);
    v224 = vuzp1q_s32(vzip1q_s64(v209, v223), vzip2q_s64(v209, v223));
    v225 = vshrq_n_u32(v224, 0xAuLL);
    v226 = vzip2q_s32(v224, v225);
    v227 = vzip1q_s32(v224, v225);
    v228 = v58 + v208;
    v229 = v208 & 0x3F;
    v230 = vaddq_s64(v61, vdupq_n_s64(v229));
    v231 = (v60 + 8 * (v208 >> 6));
    v232 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v231, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v230)), vshlq_u64(vdupq_lane_s64(v231->i64[0], 0), vnegq_s64(v230)));
    if (v58 + v229 >= 0x81)
    {
      v232 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v231[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v230)), vshlq_u64(vdupq_laneq_s64(v231[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v230))), v232);
    }

    v233 = vandq_s8(v210, v211);
    v234 = vandq_s8(v210, v212);
    v235 = vandq_s8(v210, v213);
    v236 = vandq_s8(v210, v214);
    v237 = vandq_s8(v210, v215);
    v238 = vandq_s8(v210, v216);
    v239 = vandq_s8(v210, v217);
    v240 = vandq_s8(v210, v218);
    v241 = vandq_s8(v210, v219);
    v242 = vandq_s8(v210, v220);
    v243 = vandq_s8(v210, v221);
    v244 = vandq_s8(v210, v222);
    v245 = vuzp1q_s16(v227, v226);
    v246 = vshlq_u64(v232, v100);
    v247 = vuzp1q_s32(vzip1q_s64(v232, v246), vzip2q_s64(v232, v246));
    v248 = vshrq_n_u32(v247, 0xAuLL);
    v249 = vuzp1q_s16(vzip1q_s32(v247, v248), vzip2q_s32(v247, v248));
    v250 = v228 & 0x3F;
    v251 = (v60 + 8 * (v228 >> 6));
    v252 = vaddq_s64(v61, vdupq_n_s64(v250));
    v253 = v58 + v228;
    v254 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v251, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v252)), vshlq_u64(vdupq_lane_s64(v251->i64[0], 0), vnegq_s64(v252)));
    if (v58 + v250 >= 0x81)
    {
      v254 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v251[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v252)), vshlq_u64(vdupq_laneq_s64(v251[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v252))), v254);
    }

    v255 = vshlq_n_s16(v233, 6uLL);
    v256 = vshlq_n_s16(v234, 6uLL);
    v257 = vshlq_n_s16(v235, 6uLL);
    v258 = vshlq_n_s16(v236, 6uLL);
    v259 = vshlq_n_s16(v237, 6uLL);
    v260 = vshlq_n_s16(v238, 6uLL);
    v261 = vshlq_n_s16(v239, 6uLL);
    v262 = vshlq_n_s16(v240, 6uLL);
    v59 = vshlq_n_s16(v241, 6uLL);
    v263 = vshlq_n_s16(v242, 6uLL);
    v264 = vshlq_n_s16(v243, 6uLL);
    v265 = vshlq_n_s16(v244, 6uLL);
    v266 = vandq_s8(v210, v245);
    v267 = vandq_s8(v210, v249);
    v268 = vshlq_u64(v254, v100);
    v269 = vuzp1q_s32(vzip1q_s64(v254, v268), vzip2q_s64(v254, v268));
    v270 = vshrq_n_u32(v269, 0xAuLL);
    v271 = vuzp1q_s16(vzip1q_s32(v269, v270), vzip2q_s32(v269, v270));
    v272 = (v60 + 8 * (v253 >> 6));
    v273 = vaddq_s64(v61, vdupq_n_s64(v253 & 0x3F));
    v274 = vandq_s8(v210, v271);
    v275 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v272, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v273)), vshlq_u64(vdupq_lane_s64(v272->i64[0], 0), vnegq_s64(v273)));
    if (v58 + (v253 & 0x3F) >= 0x81)
    {
      v275 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v272[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v273)), vshlq_u64(vdupq_laneq_s64(v272[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v273))), v275);
    }

    v276 = vshlq_u64(v275, v100);
    v277 = vuzp1q_s32(vzip1q_s64(v275, v276), vzip2q_s64(v275, v276));
    v278 = vshrq_n_u32(v277, 0xAuLL);
    v279 = vandq_s8(v210, vuzp1q_s16(vzip1q_s32(v277, v278), vzip2q_s32(v277, v278)));
    v280 = vshlq_n_s16(v266, 6uLL);
    v281 = vshlq_n_s16(v267, 6uLL);
    v282 = vshlq_n_s16(v274, 6uLL);
    v283 = vshlq_n_s16(v279, 6uLL);
  }

  *a1 = v255;
  a1[1] = v256;
  a1[2] = v257;
  a1[3] = v258;
  v284 = &a1->i8[a2];
  a1[4] = v259;
  a1[5] = v260;
  a1[6] = v261;
  a1[7] = v262;
  *v284 = v59;
  v284[1] = v263;
  v284[2] = v264;
  v284[3] = v265;
  v285 = &a1[4].i8[a2];
  result = 160;
  *v285 = v280;
  v285[1] = v281;
  v285[2] = v282;
  v285[3] = v283;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 512, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 512, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 512, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 72, 512, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 512, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 24, 512, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 80, 512, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 88, 512, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = vshrq_n_s16(*a3, 6uLL);
  v9 = vshrq_n_s16(a3[1], 6uLL);
  v10 = vshrq_n_s16(a3[2], 6uLL);
  v11 = vshrq_n_s16(a3[3], 6uLL);
  v12 = vshrq_n_s16(a3[4], 6uLL);
  v13 = vshrq_n_s16(a3[5], 6uLL);
  v14 = vshrq_n_s16(a3[6], 6uLL);
  v15 = vshrq_n_s16(a3[7], 6uLL);
  v16 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v17 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v18 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v19 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v20 = vshrq_n_s16(*(&a3[4] + a4), 6uLL);
  v21 = vshrq_n_s16(*(&a3[5] + a4), 6uLL);
  v22 = vshrq_n_s16(*(&a3[6] + a4), 6uLL);
  v23 = vshrq_n_s16(*(&a3[7] + a4), 6uLL);
  v482 = vdupq_lane_s64(v8.i64[0], 0);
  v462 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v8, v482), 6uLL), 6uLL);
  v464 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v9, v482), 6uLL), 6uLL);
  v466 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v10, v482), 6uLL), 6uLL);
  v468 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v11, v482), 6uLL), 6uLL);
  v470 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v12, v482), 6uLL), 6uLL);
  v471 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v482), 6uLL), 6uLL);
  v24 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v462, v464), v466), v468), xmmword_29D2F1150);
  v25 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v462, v464), v466), v468), xmmword_29D2F1150);
  v26 = vpmaxq_s16(v24, v24);
  v27 = vpminq_s16(v25, v25);
  v28 = vzip1q_s16(v26, v27);
  v29.i64[0] = 0x10001000100010;
  v29.i64[1] = 0x10001000100010;
  v30 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v28)), vceqzq_s16(v28));
  v472 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v482), 6uLL), 6uLL);
  v473 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v482), 6uLL), 6uLL);
  v474 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v482), 6uLL), 6uLL);
  v475 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v482), 6uLL), 6uLL);
  v31.i64[0] = 0x8000800080008000;
  v31.i64[1] = 0x8000800080008000;
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v470, v471), v472), v473), xmmword_29D2F1150);
  v34 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v470, v471), v472), v473), xmmword_29D2F1150);
  v35 = vpmaxq_s16(v33, v33);
  v36 = vpminq_s16(v34, v34);
  v37 = vmaxq_s16(vmaxq_s16(v26, v31), v35);
  v38 = vminq_s16(vminq_s16(v27, v32), v36);
  v39 = vzip1q_s16(v35, v36);
  v40 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v39)), vceqzq_s16(v39));
  v476 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v482), 6uLL), 6uLL);
  v477 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v482), 6uLL), 6uLL);
  v478 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v482), 6uLL), 6uLL);
  v479 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v482), 6uLL), 6uLL);
  v41 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v474, v475), v476), v477), xmmword_29D2F1150);
  v42 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v474, v475), v476), v477), xmmword_29D2F1150);
  v43 = vpmaxq_s16(v41, v41);
  v44 = vpminq_s16(v42, v42);
  v45 = vmaxq_s16(v37, v43);
  v46 = vminq_s16(v38, v44);
  v47 = vzip1q_s16(v43, v44);
  v48 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v47)), vceqzq_s16(v47));
  v459 = v20;
  v460 = v21;
  v461 = v22;
  v458 = v23;
  v480 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v482), 6uLL), 6uLL);
  v481 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v482), 6uLL), 6uLL);
  v49 = vpmaxq_s16(v30, v30);
  v50 = vpmaxq_s16(v40, v40);
  v51 = vpmaxq_s16(v48, v48);
  v52 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v478, v479), v480), v481), xmmword_29D2F1150);
  v53 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v478, v479), v480), v481), xmmword_29D2F1150);
  v54 = vpmaxq_s16(v52, v52);
  v55 = vpminq_s16(v53, v53);
  v56 = vmaxq_s16(v45, v54);
  v57 = vminq_s16(v46, v55);
  v58 = vzip1q_s16(v54, v55);
  v59 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v58)), vceqzq_s16(v58));
  v60 = vpmaxq_s16(v59, v59);
  v61 = vmaxq_s16(vmaxq_s16(v49, v50), vmaxq_s16(v51, v60));
  v62 = vclzq_s16(vsubq_s16(v56, v57));
  v63.i64[0] = 0xF000F000F000FLL;
  v63.i64[1] = 0xF000F000F000FLL;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  v489 = v57;
  v490 = v56;
  v64 = vsubq_s16(v29, v62);
  v65 = vsubq_s16(vshlq_s16(v31, vsubq_s16(v63, v62)), v57);
  v66 = vcgtq_s16(v61, v64);
  v67 = vminq_s16(v64, v61);
  v491 = vandq_s8(v65, v66);
  v65.i64[0] = 0x8000800080008;
  v65.i64[1] = 0x8000800080008;
  v68.i64[0] = 0x3000300030003;
  v68.i64[1] = 0x3000300030003;
  v69 = vorrq_s8(vandq_s8(vceqzq_s16(v67), v68), vorrq_s8(vandq_s8(v66, v65), 0));
  v70 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v50), v68), 0);
  v71 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v51), v68), 0);
  v485 = vsubq_s16(v67, v70);
  v486 = vsubq_s16(v67, v71);
  v72 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v60), v68), 0);
  v487 = vsubq_s16(v67, v72);
  v488 = v67;
  v73 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v49), v68), 0);
  v74 = vaddq_s16(v73, v70);
  v75 = vsubq_s16(v67, v73);
  v76 = vmaxvq_s16(v67);
  v67.i64[0] = 0x4000400040004;
  v67.i64[1] = 0x4000400040004;
  v77 = vorrq_s8(vbicq_s8(v67, vceqq_s16(vaddq_s16(v72, v71), vnegq_s16(v74))), v69);
  v483 = v77;
  v484 = v75;
  if (v76)
  {
    v450 = v19;
    v452 = v16;
    v453 = v17;
    v454 = v18;
    v451 = v15;
    v455 = v12;
    v456 = v13;
    v457 = v14;
    v78 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v462, vqtbl1q_s8(v462, xmmword_29D2F1140)), 6uLL), 6uLL);
    v79 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, vqtbl1q_s8(v464, xmmword_29D2F1140)), 6uLL), 6uLL);
    v80 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v468, vqtbl1q_s8(v468, xmmword_29D2F1140)), 6uLL), 6uLL);
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v478, vqtbl1q_s8(v478, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v479, vqtbl1q_s8(v479, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v480, vqtbl1q_s8(v480, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v481, vqtbl1q_s8(v481, xmmword_29D2F1140)), 6uLL), 6uLL);
    v430 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v466, vqtbl1q_s8(v466, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v78, v79), v430), v80), xmmword_29D2F1150);
    v86 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v78, v79), v430), v80), xmmword_29D2F1150);
    v87 = vpmaxq_s16(v85, v85);
    v88 = vpminq_s16(v86, v86);
    v89.i64[0] = 0x8000800080008000;
    v89.i64[1] = 0x8000800080008000;
    v90 = vmaxq_s16(v87, v89);
    v91.i64[0] = 0x8000800080008000;
    v91.i64[1] = 0x8000800080008000;
    v92 = vminq_s16(v88, v91);
    v93 = vzip1q_s16(v87, v88);
    v94 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v93)), vceqzq_s16(v93));
    v95 = vpmaxq_s16(v94, v94);
    v434 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v471, vqtbl1q_s8(v471, xmmword_29D2F1140)), 6uLL), 6uLL);
    v436 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v470, vqtbl1q_s8(v470, xmmword_29D2F1140)), 6uLL), 6uLL);
    v438 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v473, vqtbl1q_s8(v473, xmmword_29D2F1140)), 6uLL), 6uLL);
    v440 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v472, vqtbl1q_s8(v472, xmmword_29D2F1140)), 6uLL), 6uLL);
    v96 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v97 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v98 = vpmaxq_s16(v96, v96);
    v99 = vpminq_s16(v97, v97);
    v100 = vmaxq_s16(v90, v98);
    v101 = vminq_s16(v92, v99);
    v102 = vzip1q_s16(v98, v99);
    v103 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v102)), vceqzq_s16(v102));
    v104 = vpmaxq_s16(v103, v103);
    v442 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v475, vqtbl1q_s8(v475, xmmword_29D2F1140)), 6uLL), 6uLL);
    v444 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v474, vqtbl1q_s8(v474, xmmword_29D2F1140)), 6uLL), 6uLL);
    v446 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v477, vqtbl1q_s8(v477, xmmword_29D2F1140)), 6uLL), 6uLL);
    v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v476, vqtbl1q_s8(v476, xmmword_29D2F1140)), 6uLL), 6uLL);
    v105 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v444, v442), v448), v446), xmmword_29D2F1150);
    v106 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v444, v442), v448), v446), xmmword_29D2F1150);
    v107 = vpmaxq_s16(v105, v105);
    v108 = vpminq_s16(v106, v106);
    v109 = vmaxq_s16(v100, v107);
    v110 = vminq_s16(v101, v108);
    v111 = vzip1q_s16(v107, v108);
    v112 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v111)), vceqzq_s16(v111));
    v113 = vpmaxq_s16(v112, v112);
    v114 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v81, v82), v83), v84), xmmword_29D2F1150);
    v115 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v81, v82), v83), v84), xmmword_29D2F1150);
    v116 = vpmaxq_s16(v114, v114);
    v117 = vpminq_s16(v115, v115);
    v118 = vmaxq_s16(v109, v116);
    v119 = vminq_s16(v110, v117);
    v120 = vzip1q_s16(v116, v117);
    v121 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v120)), vceqzq_s16(v120));
    v122 = vpmaxq_s16(v121, v121);
    v123 = vmaxq_s16(vmaxq_s16(v95, v104), vmaxq_s16(v113, v122));
    v124 = v119;
    v432 = v118;
    v125 = vclzq_s16(vsubq_s16(v118, v119));
    v126 = vsubq_s16(v29, v125);
    v127 = vcgtq_s16(v123, v126);
    v128 = vminq_s16(v126, v123);
    v129 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v95), v68), 0);
    v130 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v104), v68), 0);
    v131 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v113), v68), 0);
    v132 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v122), v68), 0);
    v126.i64[0] = 0x4000400040004;
    v126.i64[1] = 0x4000400040004;
    v133 = vbicq_s8(v126, vceqq_s16(vaddq_s16(v132, v131), vnegq_s16(vaddq_s16(v129, v130))));
    v126.i64[0] = 0x18001800180018;
    v126.i64[1] = 0x18001800180018;
    v134 = vbslq_s8(v127, v126, v29);
    v426 = vsubq_s16(v128, v130);
    v427 = vsubq_s16(v128, v131);
    v428 = vsubq_s16(v128, v132);
    v131.i64[0] = 0x7000700070007;
    v131.i64[1] = 0x7000700070007;
    v425 = vsubq_s16(v128, v129);
    v129.i64[0] = 0x8000800080008;
    v129.i64[1] = 0x8000800080008;
    v119.i64[0] = 0x2000200020002;
    v119.i64[1] = 0x2000200020002;
    v135 = vandq_s8(vceqq_s16(vandq_s8(v69, v68), v119), v29);
    v136 = v487;
    v137 = v488;
    v138 = vaddq_s16(vaddq_s16(vbicq_s8(v488, vceqzq_s16(vandq_s8(v69, v129))), v135), vandq_s8(vaddq_s16(v77, v77), v129));
    v140 = v484;
    v139 = v485;
    v141 = v486;
    v142 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v138, v484, v131), vshlq_n_s16(vaddq_s16(vaddq_s16(v486, v485), v487), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v128, vceqzq_s16((*&v134 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v133, v133)), v425, v131), vshlq_n_s16(vaddq_s16(vaddq_s16(v427, v426), v428), 3uLL))).i64[0], 0);
    v143 = vaddvq_s16(v142);
    if (a5)
    {
      v144 = a6 == 0;
    }

    else
    {
      v144 = 1;
    }

    v145 = v144;
    if (v143)
    {
      v146.i64[0] = 0x3000300030003;
      v146.i64[1] = 0x3000300030003;
      v147 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v128), v146), v134), v133);
      v148.i64[0] = 0xF000F000F000FLL;
      v148.i64[1] = 0xF000F000F000FLL;
      v462 = vbslq_s8(v142, v78, v462);
      v464 = vbslq_s8(v142, v79, v464);
      v146.i64[0] = -1;
      v146.i64[1] = -1;
      v466 = vbslq_s8(v142, v430, v466);
      v468 = vbslq_s8(v142, v80, v468);
      v470 = vbslq_s8(v142, v436, v470);
      v471 = vbslq_s8(v142, v434, v471);
      v472 = vbslq_s8(v142, v440, v472);
      v473 = vbslq_s8(v142, v438, v473);
      v474 = vbslq_s8(v142, v444, v474);
      v475 = vbslq_s8(v142, v442, v475);
      v476 = vbslq_s8(v142, v448, v476);
      v477 = vbslq_s8(v142, v446, v477);
      v478 = vbslq_s8(v142, v81, v478);
      v479 = vbslq_s8(v142, v82, v479);
      v480 = vbslq_s8(v142, v83, v480);
      v481 = vbslq_s8(v142, v84, v481);
      v140 = vbslq_s8(v142, v425, v484);
      v139 = vbslq_s8(v142, v426, v485);
      v484 = v140;
      v485 = v139;
      v141 = vbslq_s8(v142, v427, v486);
      v136 = vbslq_s8(v142, v428, v487);
      v486 = v141;
      v487 = v136;
      v490 = vbslq_s8(v142, v432, v490);
      v491 = vbslq_s8(v142, vandq_s8(vsubq_s16(vshlq_s16(v146, vsubq_s16(v148, v125)), v124), v127), v491);
      v137 = vbslq_s8(v142, v128, v488);
      v488 = v137;
      v489 = vbslq_s8(v142, v124, v489);
      v77 = vbslq_s8(v142, v147, v483);
      v482 = vbslq_s8(v142, vsubq_s16(v482, vqtbl1q_s8(v482, xmmword_29D2F1140)), v482);
      v483 = v77;
    }

    if ((v145 & 1) == 0)
    {
      v149 = vqtbl4q_s8(*v8.i8, xmmword_29D2F1160);
      v150 = vsubq_s16(v8, vqtbl4q_s8(*v8.i8, xmmword_29D2F10B0));
      v151 = vsubq_s16(v10, v149);
      v152 = vsubq_s16(v11, v149);
      v493.val[0] = v455;
      v493.val[1] = v456;
      v493.val[2] = v457;
      v493.val[3].i64[0] = v451.i64[0];
      v493.val[3].i64[1] = v11.i64[1];
      v153 = vsubq_s16(v455, vqtbl4q_s8(v493, xmmword_29D2F10B0));
      v154 = vsubq_s16(v456, vqtbl4q_s8(v493, xmmword_29D2F10F0));
      v155 = vsubq_s16(v457, vqtbl4q_s8(v493, xmmword_29D2F1160));
      v156 = vsubq_s16(v451, vqtbl4q_s8(v493, xmmword_29D2F1100));
      v494.val[0] = v452;
      v494.val[1] = v453;
      v494.val[2] = v454;
      v494.val[3].i64[0] = v450.i64[0];
      v494.val[3].i64[1] = v11.i64[1];
      v493.val[1] = vsubq_s16(v452, vqtbl4q_s8(v494, xmmword_29D2F1170));
      v493.val[2] = vsubq_s16(v453, vqtbl4q_s8(v494, xmmword_29D2F1180));
      v493.val[3] = vsubq_s16(v454, vqtbl4q_s8(v494, xmmword_29D2F10B0));
      v157 = vsubq_s16(v450, vqtbl4q_s8(v494, xmmword_29D2F10C0));
      v492.val[0] = v459;
      v492.val[1] = v460;
      v492.val[2] = v461;
      v492.val[3].i64[0] = v458.i64[0];
      v492.val[3].i64[1] = v11.i64[1];
      v494.val[1].i64[0] = v152.i64[0];
      v494.val[1].i64[1] = v150.i64[0];
      v150.i64[0] = v152.i64[1];
      v493.val[0] = vshlq_n_s16(vsubq_s16(v459, vqtbl4q_s8(v492, xmmword_29D2F1170)), 6uLL);
      v494.val[0] = vshlq_n_s16(vsubq_s16(v460, vqtbl4q_s8(v492, xmmword_29D2F1120)), 6uLL);
      v158 = vshlq_n_s16(vsubq_s16(v461, vqtbl4q_s8(v492, xmmword_29D2F10B0)), 6uLL);
      v159 = vshlq_n_s16(vsubq_s16(v458, vqtbl4q_s8(v492, xmmword_29D2F10C0)), 6uLL);
      v160 = vshrq_n_s16(vshlq_n_s16(v150, 6uLL), 6uLL);
      v161 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v9, vqtbl4q_s8(*v8.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v162 = vshrq_n_s16(vshlq_n_s16(v151, 6uLL), 6uLL);
      v163 = vshrq_n_s16(vshlq_n_s16(v494.val[1], 6uLL), 6uLL);
      v164 = vshrq_n_s16(vshlq_n_s16(v153, 6uLL), 6uLL);
      v492.val[2] = vshrq_n_s16(vshlq_n_s16(v154, 6uLL), 6uLL);
      v492.val[0] = vshrq_n_s16(vshlq_n_s16(v155, 6uLL), 6uLL);
      v165 = vshrq_n_s16(vshlq_n_s16(v493.val[1], 6uLL), 6uLL);
      v494.val[1] = vshrq_n_s16(vshlq_n_s16(v493.val[2], 6uLL), 6uLL);
      v166 = vshrq_n_s16(vshlq_n_s16(v493.val[3], 6uLL), 6uLL);
      v167 = vshrq_n_s16(v493.val[0], 6uLL);
      v168 = vshrq_n_s16(v494.val[0], 6uLL);
      v169 = vshrq_n_s16(v158, 6uLL);
      v170 = vshrq_n_s16(v159, 6uLL);
      v171 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v160, v161), v162), v163), xmmword_29D2F1150);
      v172 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v160, v161), v162), v163), xmmword_29D2F1150);
      v173 = vpmaxq_s16(v171, v171);
      v174 = vpminq_s16(v172, v172);
      v159.i64[0] = 0x8000800080008000;
      v159.i64[1] = 0x8000800080008000;
      v175 = vmaxq_s16(v173, v159);
      v153.i64[0] = 0x8000800080008000;
      v153.i64[1] = 0x8000800080008000;
      v176 = vminq_s16(v174, v153);
      v177 = vzip1q_s16(v173, v174);
      v494.val[3].i64[0] = 0x10001000100010;
      v494.val[3].i64[1] = 0x10001000100010;
      v178 = vbicq_s8(vsubq_s16(v494.val[3], vclsq_s16(v177)), vceqzq_s16(v177));
      v179 = vpmaxq_s16(v178, v178);
      v435 = v492.val[2];
      v437 = v164;
      v439 = vshrq_n_s16(vshlq_n_s16(v156, 6uLL), 6uLL);
      v441 = v492.val[0];
      v180 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v164, v492.val[2]), v492.val[0]), v439), xmmword_29D2F1150);
      v181 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v164, v492.val[2]), v492.val[0]), v439), xmmword_29D2F1150);
      v182 = vpmaxq_s16(v180, v180);
      v183 = vpminq_s16(v181, v181);
      v184 = vmaxq_s16(v175, v182);
      v185 = vminq_s16(v176, v183);
      v186 = vzip1q_s16(v182, v183);
      v187 = vbicq_s8(vsubq_s16(v494.val[3], vclsq_s16(v186)), vceqzq_s16(v186));
      v188 = vpmaxq_s16(v187, v187);
      v443 = v494.val[1];
      v445 = v165;
      v447 = vshrq_n_s16(vshlq_n_s16(v157, 6uLL), 6uLL);
      v449 = v166;
      v189 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v165, v494.val[1]), v166), v447), xmmword_29D2F1150);
      v190 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v165, v494.val[1]), v166), v447), xmmword_29D2F1150);
      v191 = vpmaxq_s16(v189, v189);
      v192 = vpminq_s16(v190, v190);
      v193 = vmaxq_s16(v184, v191);
      v194 = vminq_s16(v185, v192);
      v195 = vzip1q_s16(v191, v192);
      v196 = vbicq_s8(vsubq_s16(v494.val[3], vclsq_s16(v195)), vceqzq_s16(v195));
      v197 = vpmaxq_s16(v196, v196);
      v198 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v167, v168), v169), v170), xmmword_29D2F1150);
      v199 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v167, v168), v169), v170), xmmword_29D2F1150);
      v200 = vpmaxq_s16(v198, v198);
      v201 = vpminq_s16(v199, v199);
      v202 = vmaxq_s16(v193, v200);
      v203 = vminq_s16(v194, v201);
      v204 = vzip1q_s16(v200, v201);
      v205 = vbicq_s8(vsubq_s16(v494.val[3], vclsq_s16(v204)), vceqzq_s16(v204));
      v206 = vpmaxq_s16(v205, v205);
      v207 = vmaxq_s16(vmaxq_s16(v179, v188), vmaxq_s16(v197, v206));
      v208 = v203;
      v209 = vclzq_s16(vsubq_s16(v202, v203));
      v210 = vsubq_s16(v494.val[3], v209);
      v211 = vcgtq_s16(v207, v210);
      v212 = vminq_s16(v210, v207);
      v207.i64[0] = 0x3000300030003;
      v207.i64[1] = 0x3000300030003;
      v213 = vmaxq_s16(vminq_s16(vsubq_s16(v212, v179), v207), 0);
      v214 = vmaxq_s16(vminq_s16(vsubq_s16(v212, v188), v207), 0);
      v215 = vmaxq_s16(vminq_s16(vsubq_s16(v212, v197), v207), 0);
      v216 = vmaxq_s16(vminq_s16(vsubq_s16(v212, v206), v207), 0);
      v494.val[1] = vsubq_s16(v212, v213);
      v217 = vsubq_s16(v212, v214);
      v218 = vsubq_s16(v212, v216);
      v219 = vceqq_s16(vaddq_s16(v216, v215), vnegq_s16(vaddq_s16(v213, v214)));
      v214.i64[0] = 0x4000400040004;
      v214.i64[1] = 0x4000400040004;
      v220 = vbicq_s8(v214, v219);
      v216.i64[0] = 0x7000700070007;
      v216.i64[1] = 0x7000700070007;
      v431 = vsubq_s16(v212, v215);
      v433 = v217;
      v429 = v494.val[1];
      v221 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v212, v211), vaddq_s16(v220, v220)), v494.val[1], v216), vshlq_n_s16(vaddq_s16(vaddq_s16(v431, v217), v218), 3uLL));
      v77 = v483;
      v140 = v484;
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vandq_s8(vceqq_s16(vandq_s8(v483, v207), v222), v494.val[3]);
      v207.i64[0] = 0x8000800080008;
      v207.i64[1] = 0x8000800080008;
      v136 = v487;
      v137 = v488;
      v139 = v485;
      v141 = v486;
      v224 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v488, vceqzq_s16(vandq_s8(v483, v207))), vandq_s8(vaddq_s16(v77, v77), v207)), v223), v484, v216), vshlq_n_s16(vaddq_s16(vaddq_s16(v486, v485), v487), 3uLL)), v221).i64[0], 0);
      if (vaddvq_s16(v224))
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = 0xF000F000F000FLL;
        v226.i64[1] = 0xF000F000F000FLL;
        v227.i64[0] = -1;
        v227.i64[1] = -1;
        v140 = vbslq_s8(v224, v429, v484);
        v139 = vbslq_s8(v224, v433, v485);
        v141 = vbslq_s8(v224, v431, v486);
        v136 = vbslq_s8(v224, v218, v487);
        v137 = vbslq_s8(v224, v212, v488);
        v77 = vbslq_s8(v224, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v212), v222), vsubq_s16(vandq_s8(v211, v225), vmvnq_s8(v211))), v220), v483);
        v481 = vbslq_s8(v224, v170, v481);
        v482 = vbslq_s8(v224, vextq_s8(v11, v11, 8uLL), v482);
        v462 = vbslq_s8(v224, v160, v462);
        v464 = vbslq_s8(v224, v161, v464);
        v466 = vbslq_s8(v224, v162, v466);
        v468 = vbslq_s8(v224, v163, v468);
        v470 = vbslq_s8(v224, v437, v470);
        v471 = vbslq_s8(v224, v435, v471);
        v472 = vbslq_s8(v224, v441, v472);
        v473 = vbslq_s8(v224, v439, v473);
        v474 = vbslq_s8(v224, v445, v474);
        v475 = vbslq_s8(v224, v443, v475);
        v476 = vbslq_s8(v224, v449, v476);
        v477 = vbslq_s8(v224, v447, v477);
        v478 = vbslq_s8(v224, v167, v478);
        v479 = vbslq_s8(v224, v168, v479);
        v480 = vbslq_s8(v224, v169, v480);
        v489 = vbslq_s8(v224, v208, v489);
        v490 = vbslq_s8(v224, v202, v490);
        v491 = vbslq_s8(v224, vandq_s8(vsubq_s16(vshlq_s16(v227, vsubq_s16(v226, v209)), v208), v211), v491);
        v484 = v140;
        v485 = v139;
        v486 = v141;
        v487 = v136;
        v488 = v137;
        v483 = v77;
      }
    }

    v228 = vandq_s8(v491, vceqq_s16(v137, v140));
    v463 = vaddq_s16(v228, v462);
    v465 = vaddq_s16(v464, v228);
    v467 = vaddq_s16(v466, v228);
    v469 = vaddq_s16(v468, v228);
    v229 = vandq_s8(v491, vceqq_s16(v137, v139));
    v470 = vaddq_s16(v470, v229);
    v471 = vaddq_s16(v471, v229);
    v472 = vaddq_s16(v472, v229);
    v473 = vaddq_s16(v473, v229);
    v230 = vandq_s8(v491, vceqq_s16(v137, v141));
    v474 = vaddq_s16(v474, v230);
    v475 = vaddq_s16(v475, v230);
    v476 = vaddq_s16(v476, v230);
    v477 = vaddq_s16(v477, v230);
    v231 = vandq_s8(v491, vceqq_s16(v137, v136));
    v478 = vaddq_s16(v478, v231);
    v479 = vaddq_s16(v479, v231);
    v480 = vaddq_s16(v480, v231);
    v481 = vaddq_s16(v481, v231);
    v231.i64[0] = 0x8000800080008;
    v231.i64[1] = 0x8000800080008;
    v232.i64[0] = 0x3000300030003;
    v232.i64[1] = 0x3000300030003;
    v233.i64[0] = 0x2000200020002;
    v233.i64[1] = 0x2000200020002;
    v234 = vceqq_s16(vandq_s8(v77, v232), v233);
    v233.i64[0] = 0x10001000100010;
    v233.i64[1] = 0x10001000100010;
    v235 = vandq_s8(v234, v233);
    v233.i64[0] = 0x7000700070007;
    v233.i64[1] = 0x7000700070007;
    v236 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v137, vceqzq_s16(vandq_s8(v77, v231))), vandq_s8(vaddq_s16(v77, v77), v231)), v235), v140, v233), vshlq_n_s16(vaddq_s16(vaddq_s16(v141, v139), v136), 3uLL));
    v237 = vpaddq_s16(v236, v236);
    if ((vpaddq_s16(v237, v237).i16[0] + 83) > 0x4FF)
    {
      AGX::AppleCompressionGen2::writePackedUncompressedSubblock<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::VecArray<short,4ul>>(a1, a2, v8, v9, v10, v11, v455, v456, v457, v451, a3, a4, a5, a6, a7, a8, v452, v453, v454, v450, v459, v460, v461, v458);
      return 160;
    }

    else
    {
      v238 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v239 = 8 * (a1 & 7);
      if (v239)
      {
        v240 = *v238 & ~(-1 << v239);
      }

      else
      {
        v240 = 0;
      }

      *a2 = 0;
      v244 = v482.i64[0];
      if (v137.i16[0])
      {
        v245 = ((v137.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v245 = 0;
      }

      if (v137.i16[1])
      {
        v246 = ((v137.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v246 = 0;
      }

      if (v137.i16[2])
      {
        v247 = (v137.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v247 = 0;
      }

      if (v137.i16[3])
      {
        v248 = ((v137.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v248 = 0;
      }

      v249 = (v77.i8[0] & 0x1F | (32 * (v77.i8[2] & 0x1F)) & 0x83FF | ((v77.i8[4] & 0x1F) << 10) | ((v77.i8[6] & 0x1F) << 15) | v245 | v246 | v247) + v248;
      v250 = (v249 << v239) | v240;
      if (v239 >= 0x1C)
      {
        *v238 = v250;
        v250 = v249 >> (-8 * (a1 & 7u));
      }

      v251 = v244 & 0x3FF | ((WORD1(v244) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v244) & 0x3FF) << 20) | ((HIWORD(v244) & 0x3FF) << 30);
      v252 = (v239 + 36) & 0x3C;
      v253 = v250 | (v251 << v252);
      if (v252 >= 0x18)
      {
        *(v238 + (((v239 + 36) >> 3) & 8)) = v253;
        v253 = v251 >> -v252;
      }

      v254 = v239 + 76;
      v255 = vsubq_s16(v488, v484);
      v256 = vsubq_s16(v488, v485);
      v257 = vsubq_s16(v488, v486);
      v258 = vsubq_s16(v488, v487);
      *v255.i8 = vqmovn_u16(v255);
      *v256.i8 = vqmovn_u16(v256);
      *v257.i8 = vqmovn_u16(v257);
      *v258.i8 = vqmovn_u16(v258);
      v259 = vtrn1q_s8(v255, v256);
      v260 = vtrn2q_s8(v255, v256);
      v261 = vtrn1q_s8(v257, v258);
      v262 = vtrn2q_s8(v257, v258);
      v263 = vzip1q_s16(v260, v262);
      v264 = vtrn2q_s16(v260, v262);
      v260.i64[0] = vzip1q_s32(vzip1q_s16(v259, v261), v263).u64[0];
      v264.i64[0] = vzip1q_s32(vtrn2q_s16(v259, v261), v264).u64[0];
      v257.i64[0] = 0x202020202020202;
      v257.i64[1] = 0x202020202020202;
      v265 = vandq_s8(vmovl_s16(vtst_s16(*v483.i8, 0x4000400040004)), v257);
      v257.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v257.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v259.i64[0] = -1;
      v259.i64[1] = -1;
      v266 = vshlq_u8(v259, vorrq_s8(v265, v257));
      v267 = vmovl_u8(vand_s8(*v266.i8, *v260.i8));
      v268 = vmovl_u8(vand_s8(*&vextq_s8(v266, v266, 8uLL), *v264.i8));
      v269 = vmovl_u8(*v265.i8);
      v270 = vmovl_high_u8(v265);
      v271 = vpaddq_s16(vshlq_u16(v267, vtrn1q_s16(0, v269)), vshlq_u16(v268, vtrn1q_s16(0, v270)));
      v272 = vpaddq_s16(v269, v270);
      v273 = vmovl_u16(*v272.i8);
      v274 = vmovl_high_u16(v272);
      v275 = vpaddq_s32(vshlq_u32(vmovl_u16(*v271.i8), vtrn1q_s32(0, v273)), vshlq_u32(vmovl_high_u16(v271), vtrn1q_s32(0, v274)));
      v276 = vpaddq_s32(v273, v274);
      v277.i64[0] = v275.u32[0];
      v277.i64[1] = v275.u32[1];
      v278 = v277;
      v277.i64[0] = v275.u32[2];
      v277.i64[1] = v275.u32[3];
      v279 = v277;
      v277.i64[0] = v276.u32[0];
      v277.i64[1] = v276.u32[1];
      v280 = v277;
      v277.i64[0] = v276.u32[2];
      v277.i64[1] = v276.u32[3];
      v281 = vpaddq_s64(vshlq_u64(v278, vzip1q_s64(0, v280)), vshlq_u64(v279, vzip1q_s64(0, v277)));
      v282 = vpaddq_s64(v280, v277);
      v283 = (v239 + 76) & 0x3C;
      v284 = (v281.i64[0] << v283) | v253;
      if ((v282.i64[0] + v283) >= 0x40)
      {
        *(v238 + ((v254 >> 3) & 0x18)) = v284;
        v284 = v281.i64[0] >> -v283;
      }

      v285 = v282.i64[0] + v254;
      v286 = v284 | (v281.i64[1] << v285);
      if ((v285 & 0x3F) + v282.i64[1] >= 0x40)
      {
        *(v238 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v281.i64[1] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = v285 + v282.i64[1];
      v288.i64[0] = 0x8000800080008;
      v288.i64[1] = 0x8000800080008;
      v289.i64[0] = -1;
      v289.i64[1] = -1;
      v290 = vandq_s8(vextq_s8(vtstq_s16(v483, v288), 0, 8uLL), v488);
      v291.i64[0] = 0xF000F000F000FLL;
      v291.i64[1] = 0xF000F000F000FLL;
      v292 = vandq_s8(vshlq_u16(v289, vaddq_s16(v290, v291)), v491);
      v293 = vmovl_u16(*v290.i8);
      v294 = vpaddq_s32(vshlq_u32(vmovl_u16(*v292.i8), vtrn1q_s32(0, v293)), vmovl_high_u16(v292));
      v295 = vpaddq_s32(v293, vmovl_high_u16(v290));
      v296.i64[0] = v294.u32[0];
      v296.i64[1] = v294.u32[1];
      v297 = v296;
      v296.i64[0] = v294.u32[2];
      v296.i64[1] = v294.u32[3];
      v298 = v296;
      v296.i64[0] = v295.u32[0];
      v296.i64[1] = v295.u32[1];
      v299 = v296;
      v296.i64[0] = v295.u32[2];
      v296.i64[1] = v295.u32[3];
      v300 = vpaddq_s64(vshlq_u64(v297, vzip1q_s64(0, v299)), vshlq_u64(v298, vzip1q_s64(0, v296)));
      v301 = vpaddq_s64(v299, v296);
      v302 = (v300.i64[0] << v287) | v286;
      if (v301.i64[0] + (v287 & 0x3F) >= 0x40)
      {
        *(v238 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v302;
        v302 = v300.i64[0] >> -(v287 & 0x3F);
        if ((v287 & 0x3F) == 0)
        {
          v302 = 0;
        }
      }

      v303 = v301.i64[0] + v287;
      v304 = v302 | (v300.i64[1] << v303);
      if ((v303 & 0x3F) + v301.i64[1] >= 0x40)
      {
        *(v238 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v300.i64[1] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = v303 + v301.i64[1];
      v306 = vextq_s8(0, v484, 8uLL);
      v307.i64[0] = 0xF000F000F000FLL;
      v307.i64[1] = 0xF000F000F000FLL;
      v308.i64[0] = -1;
      v308.i64[1] = -1;
      v309 = vandq_s8(vshlq_u16(v308, vaddq_s16(v306, v307)), v463);
      v310 = vmovl_u16(*v306.i8);
      v311 = vmovl_high_u16(v306);
      v312 = vpaddq_s32(vmovl_u16(*v309.i8), vshlq_u32(vmovl_high_u16(v309), vtrn1q_s32(0, v311)));
      v313 = vpaddq_s32(v310, v311);
      v314.i64[0] = v312.u32[0];
      v314.i64[1] = v312.u32[1];
      v315 = v314;
      v314.i64[0] = v312.u32[2];
      v314.i64[1] = v312.u32[3];
      v316 = v314;
      v314.i64[0] = v313.u32[0];
      v314.i64[1] = v313.u32[1];
      v317 = v314;
      v314.i64[0] = v313.u32[2];
      v314.i64[1] = v313.u32[3];
      v318 = vpaddq_s64(vshlq_u64(v315, vzip1q_s64(0, v317)), vshlq_u64(v316, vzip1q_s64(0, v314)));
      v319 = vpaddq_s64(v317, v314);
      v320 = (v318.i64[0] << v305) | v304;
      if (v319.i64[0] + (v305 & 0x3F) >= 0x40)
      {
        *(v238 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v318.i64[0] >> -(v305 & 0x3F);
        if ((v305 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = v319.i64[0] + v305;
      v322 = v320 | (v318.i64[1] << v321);
      if ((v321 & 0x3F) + v319.i64[1] >= 0x40)
      {
        *(v238 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v318.i64[1] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = v321 + v319.i64[1];
      v324.i64[0] = 0xF000F000F000FLL;
      v324.i64[1] = 0xF000F000F000FLL;
      v325.i64[0] = -1;
      v325.i64[1] = -1;
      v326 = vandq_s8(vshlq_u16(v325, vaddq_s16(v484, v324)), v465);
      v327 = vmovl_u16(*v484.i8);
      v328 = vmovl_high_u16(v484);
      v329 = vpaddq_s32(vshlq_u32(vmovl_u16(*v326.i8), vtrn1q_s32(0, v327)), vshlq_u32(vmovl_high_u16(v326), vtrn1q_s32(0, v328)));
      v330 = vpaddq_s32(v327, v328);
      v331.i64[0] = v329.u32[0];
      v331.i64[1] = v329.u32[1];
      v332 = v331;
      v331.i64[0] = v329.u32[2];
      v331.i64[1] = v329.u32[3];
      v333 = v331;
      v331.i64[0] = v330.u32[0];
      v331.i64[1] = v330.u32[1];
      v334 = v331;
      v331.i64[0] = v330.u32[2];
      v331.i64[1] = v330.u32[3];
      v335 = vpaddq_s64(vshlq_u64(v332, vzip1q_s64(0, v334)), vshlq_u64(v333, vzip1q_s64(0, v331)));
      v336 = vpaddq_s64(v334, v331);
      v337 = (v335.i64[0] << v323) | v322;
      if (v336.i64[0] + (v323 & 0x3F) >= 0x40)
      {
        *(v238 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
        v337 = v335.i64[0] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v337 = 0;
        }
      }

      v338 = v336.i64[0] + v323;
      v339 = v337 | (v335.i64[1] << v338);
      if ((v338 & 0x3F) + v336.i64[1] >= 0x40)
      {
        *(v238 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
        v339 = v335.i64[1] >> -(v338 & 0x3F);
        if ((v338 & 0x3F) == 0)
        {
          v339 = 0;
        }
      }

      v340 = v338 + v336.i64[1];
      v341.i64[0] = 0xF000F000F000FLL;
      v341.i64[1] = 0xF000F000F000FLL;
      v342.i64[0] = -1;
      v342.i64[1] = -1;
      v343 = vandq_s8(vshlq_u16(v342, vaddq_s16(v484, v341)), v467);
      v344 = vmovl_u16(*v484.i8);
      v345 = vmovl_high_u16(v484);
      v346 = vpaddq_s32(vshlq_u32(vmovl_u16(*v343.i8), vtrn1q_s32(0, v344)), vshlq_u32(vmovl_high_u16(v343), vtrn1q_s32(0, v345)));
      v347 = vpaddq_s32(v344, v345);
      v348.i64[0] = v346.u32[0];
      v348.i64[1] = v346.u32[1];
      v349 = v348;
      v348.i64[0] = v346.u32[2];
      v348.i64[1] = v346.u32[3];
      v350 = v348;
      v348.i64[0] = v347.u32[0];
      v348.i64[1] = v347.u32[1];
      v351 = v348;
      v348.i64[0] = v347.u32[2];
      v348.i64[1] = v347.u32[3];
      v352 = vpaddq_s64(vshlq_u64(v349, vzip1q_s64(0, v351)), vshlq_u64(v350, vzip1q_s64(0, v348)));
      v353 = vpaddq_s64(v351, v348);
      v354 = (v352.i64[0] << v340) | v339;
      if (v353.i64[0] + (v340 & 0x3F) >= 0x40)
      {
        *(v238 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v352.i64[0] >> -(v340 & 0x3F);
        if ((v340 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353.i64[0] + v340;
      v356 = v354 | (v352.i64[1] << v355);
      if ((v355 & 0x3F) + v353.i64[1] >= 0x40)
      {
        *(v238 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
        v356 = v352.i64[1] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v356 = 0;
        }
      }

      v357 = v355 + v353.i64[1];
      v358.i64[0] = 0xF000F000F000FLL;
      v358.i64[1] = 0xF000F000F000FLL;
      v359.i64[0] = -1;
      v359.i64[1] = -1;
      v360 = vandq_s8(vshlq_u16(v359, vaddq_s16(v484, v358)), v469);
      v361 = vmovl_u16(*v484.i8);
      v362 = vmovl_high_u16(v484);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v360.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v360), vtrn1q_s32(0, v362)));
      v364 = vpaddq_s32(v361, v362);
      v365.i64[0] = v363.u32[0];
      v365.i64[1] = v363.u32[1];
      v366 = v365;
      v365.i64[0] = v363.u32[2];
      v365.i64[1] = v363.u32[3];
      v367 = v365;
      v365.i64[0] = v364.u32[0];
      v365.i64[1] = v364.u32[1];
      v368 = v365;
      v365.i64[0] = v364.u32[2];
      v365.i64[1] = v364.u32[3];
      v369 = vpaddq_s64(vshlq_u64(v366, vzip1q_s64(0, v368)), vshlq_u64(v367, vzip1q_s64(0, v365)));
      v370 = vpaddq_s64(v368, v365);
      v371 = (v369.i64[0] << v357) | v356;
      if (v370.i64[0] + (v357 & 0x3F) >= 0x40)
      {
        *(v238 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        v371 = v369.i64[0] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[1];
      v373 = v370.i64[0] + v357;
      v374 = (v370.i64[0] + v357) & 0x3F;
      v375 = v371 | (v369.i64[1] << v373);
      if ((v374 + v370.i64[1]) >= 0x40)
      {
        *(v238 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
        v375 = v369.i64[1] >> -v374;
        if (!v374)
        {
          v375 = 0;
        }
      }

      v376 = 0;
      v377.i64[0] = 0xF000F000F000FLL;
      v377.i64[1] = 0xF000F000F000FLL;
      v378.i64[0] = -1;
      v378.i64[1] = -1;
      v379 = v373 + v372;
      do
      {
        v380 = vandq_s8(vshlq_u16(v378, vaddq_s16(v485, v377)), *(&v470 + v376));
        v381 = vmovl_u16(*v485.i8);
        v382 = vmovl_high_u16(v485);
        v383 = vpaddq_s32(vshlq_u32(vmovl_u16(*v380.i8), vtrn1q_s32(0, v381)), vshlq_u32(vmovl_high_u16(v380), vtrn1q_s32(0, v382)));
        v384 = vpaddq_s32(v381, v382);
        v385.i64[0] = v383.u32[0];
        v385.i64[1] = v383.u32[1];
        v386 = v385;
        v385.i64[0] = v383.u32[2];
        v385.i64[1] = v383.u32[3];
        v387 = v385;
        v385.i64[0] = v384.u32[0];
        v385.i64[1] = v384.u32[1];
        v388 = v385;
        v385.i64[0] = v384.u32[2];
        v385.i64[1] = v384.u32[3];
        v389 = vpaddq_s64(vshlq_u64(v386, vzip1q_s64(0, v388)), vshlq_u64(v387, vzip1q_s64(0, v385)));
        v390 = vpaddq_s64(v388, v385);
        v391 = (v389.i64[0] << v379) | v375;
        if (v390.i64[0] + (v379 & 0x3F) >= 0x40)
        {
          *(v238 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
          v391 = v389.i64[0] >> -(v379 & 0x3F);
          if ((v379 & 0x3F) == 0)
          {
            v391 = 0;
          }
        }

        v392 = v390.i64[0] + v379;
        v375 = v391 | (v389.i64[1] << v392);
        if ((v392 & 0x3F) + v390.i64[1] >= 0x40)
        {
          *(v238 + ((v392 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
          v375 = v389.i64[1] >> -(v392 & 0x3F);
          if ((v392 & 0x3F) == 0)
          {
            v375 = 0;
          }
        }

        v379 = v392 + v390.i64[1];
        v376 += 16;
      }

      while (v376 != 64);
      v393 = 0;
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v395.i64[0] = -1;
      v395.i64[1] = -1;
      do
      {
        v396 = vandq_s8(vshlq_u16(v395, vaddq_s16(v486, v394)), *(&v474 + v393));
        v397 = vmovl_u16(*v486.i8);
        v398 = vmovl_high_u16(v486);
        v399 = vpaddq_s32(vshlq_u32(vmovl_u16(*v396.i8), vtrn1q_s32(0, v397)), vshlq_u32(vmovl_high_u16(v396), vtrn1q_s32(0, v398)));
        v400 = vpaddq_s32(v397, v398);
        v401.i64[0] = v399.u32[0];
        v401.i64[1] = v399.u32[1];
        v402 = v401;
        v401.i64[0] = v399.u32[2];
        v401.i64[1] = v399.u32[3];
        v403 = v401;
        v401.i64[0] = v400.u32[0];
        v401.i64[1] = v400.u32[1];
        v404 = v401;
        v401.i64[0] = v400.u32[2];
        v401.i64[1] = v400.u32[3];
        v405 = vpaddq_s64(vshlq_u64(v402, vzip1q_s64(0, v404)), vshlq_u64(v403, vzip1q_s64(0, v401)));
        v406 = vpaddq_s64(v404, v401);
        v407 = (v405.i64[0] << v379) | v375;
        if (v406.i64[0] + (v379 & 0x3F) >= 0x40)
        {
          *(v238 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v407;
          v407 = v405.i64[0] >> -(v379 & 0x3F);
          if ((v379 & 0x3F) == 0)
          {
            v407 = 0;
          }
        }

        v408 = v406.i64[0] + v379;
        v375 = v407 | (v405.i64[1] << v408);
        if ((v408 & 0x3F) + v406.i64[1] >= 0x40)
        {
          *(v238 + ((v408 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
          v375 = v405.i64[1] >> -(v408 & 0x3F);
          if ((v408 & 0x3F) == 0)
          {
            v375 = 0;
          }
        }

        v379 = v408 + v406.i64[1];
        v393 += 16;
      }

      while (v393 != 64);
      v409 = 0;
      v410.i64[0] = 0xF000F000F000FLL;
      v410.i64[1] = 0xF000F000F000FLL;
      v411.i64[0] = -1;
      v411.i64[1] = -1;
      do
      {
        v412 = vandq_s8(vshlq_u16(v411, vaddq_s16(v487, v410)), *(&v478 + v409));
        v413 = vmovl_u16(*v487.i8);
        v414 = vmovl_high_u16(v487);
        v415 = vpaddq_s32(vshlq_u32(vmovl_u16(*v412.i8), vtrn1q_s32(0, v413)), vshlq_u32(vmovl_high_u16(v412), vtrn1q_s32(0, v414)));
        v416 = vpaddq_s32(v413, v414);
        v417.i64[0] = v415.u32[0];
        v417.i64[1] = v415.u32[1];
        v418 = v417;
        v417.i64[0] = v415.u32[2];
        v417.i64[1] = v415.u32[3];
        v419 = v417;
        v417.i64[0] = v416.u32[0];
        v417.i64[1] = v416.u32[1];
        v420 = v417;
        v417.i64[0] = v416.u32[2];
        v417.i64[1] = v416.u32[3];
        v421 = vpaddq_s64(vshlq_u64(v418, vzip1q_s64(0, v420)), vshlq_u64(v419, vzip1q_s64(0, v417)));
        v422 = vpaddq_s64(v420, v417);
        v423 = (v421.i64[0] << v379) | v375;
        if (v422.i64[0] + (v379 & 0x3F) >= 0x40)
        {
          *(v238 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v423;
          v423 = v421.i64[0] >> -(v379 & 0x3F);
          if ((v379 & 0x3F) == 0)
          {
            v423 = 0;
          }
        }

        v424 = v422.i64[0] + v379;
        v375 = v423 | (v421.i64[1] << v424);
        if ((v424 & 0x3F) + v422.i64[1] >= 0x40)
        {
          *(v238 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
          v375 = v421.i64[1] >> -(v424 & 0x3F);
          if ((v424 & 0x3F) == 0)
          {
            v375 = 0;
          }
        }

        v379 = v424 + v422.i64[1];
        v409 += 16;
      }

      while (v409 != 64);
      if ((v379 & 0x3F) != 0)
      {
        *(v238 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
      }

      result = (v379 - v239 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v241 = vld1q_dup_f64(a3->i64);
    v242 = vorrq_s8(vandq_s8(vshlq_u64(v241, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v241, xmmword_29D2F1450), xmmword_29D2F1460));
    *v242.i8 = vorr_s8(*v242.i8, *&vextq_s8(v242, v242, 8uLL));
    *a1 = v242.i32[0];
    *(a1 + 4) = v242.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
  if (a5 && a6)
  {
    if (a6 >= 2)
    {
      a6 = 2;
    }

    else
    {
      a6 = a6;
    }

    if (a5 >= 2)
    {
      a5 = 2;
    }

    else
    {
      a5 = a5;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 2;
  if (v9 >= 3 && v8)
  {
    if (v8 >= 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v14;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 1, v13 + 8, a2, v16, v15, a7, a8);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v17 = 2 * a2;
  v18 = v8 - 2;
  if (v9 && v8 >= 3)
  {
    if (v18 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v18;
    }

    if (v9 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7, a8);
    v11 += result;
    if (v9 < 3)
    {
      goto LABEL_40;
    }
  }

  else
  {
    a4[2] = 0;
    if (v9 < 3)
    {
      goto LABEL_40;
    }
  }

  if (v8 >= 3)
  {
    if (v18 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v18;
    }

    if (v14 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v14;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 3, (v13 + v17 + 128), a2, v22, v21, a7, a8);
    v11 += result;
    goto LABEL_41;
  }

LABEL_40:
  a4[3] = 0;
LABEL_41:
  v23 = v9 - 4;
  if (v9 >= 5 && v8)
  {
    if (v8 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v8;
    }

    if (v23 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v23;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 4, v13 + 16, a2, v25, v24, a7, a8);
    v11 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v26 = v9 - 6;
  if (v9 >= 7 && v8)
  {
    if (v8 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v8;
    }

    if (v26 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v26;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 5, v13 + 24, a2, v28, v27, a7, a8);
    v11 += result;
  }

  else
  {
    a4[5] = 0;
    if (v9 < 5)
    {
      goto LABEL_70;
    }
  }

  if (v8 >= 3)
  {
    if (v18 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v18;
    }

    if (v23 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v23;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 6, (v13 + v17 + 256), a2, v30, v29, a7, a8);
    v11 += result;
    if (v9 < 7)
    {
      goto LABEL_81;
    }

    goto LABEL_71;
  }

LABEL_70:
  a4[6] = 0;
  if (v9 < 7)
  {
LABEL_81:
    a4[7] = 0;
    return result;
  }

LABEL_71:
  if (v8 < 3)
  {
    goto LABEL_81;
  }

  if (v18 >= 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = v18;
  }

  if (v26 >= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = v26;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 7, (v13 + v17 + 384), a2, v32, v31, a7, a8);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  v8 = (v7 + a4);
  v13 = vshrq_n_s16(*a3, 6uLL);
  v14 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v15 = vshrq_n_s16(a3[1], 6uLL);
  v16 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v17 = vshrq_n_s16(*v8, 6uLL);
  v18 = vshrq_n_s16(v8[1], 6uLL);
  v19 = vshrq_n_s16(a3[2], 6uLL);
  v20 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v21 = vshrq_n_s16(a3[3], 6uLL);
  v22 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v23 = vshrq_n_s16(v11, 6uLL);
  v24 = vshrq_n_s16(v8[2], 6uLL);
  v25 = vshrq_n_s16(v12, 6uLL);
  v26 = vshrq_n_s16(v8[3], 6uLL);
  v468 = vdupq_lane_s64(v13.i64[0], 0);
  v444 = vshrq_n_s16(v9, 6uLL);
  v446 = v17;
  v447 = vshrq_n_s16(v10, 6uLL);
  v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v468), 6uLL), 6uLL);
  v450 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v468), 6uLL), 6uLL);
  v452 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v468), 6uLL), 6uLL);
  v454 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v468), 6uLL), 6uLL);
  v456 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v444, v468), 6uLL), 6uLL);
  v457 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v468), 6uLL), 6uLL);
  v27 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v448, v450), v452), v454), xmmword_29D2F1150);
  v28 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v448, v450), v452), v454), xmmword_29D2F1150);
  v29 = vpmaxq_s16(v27, v27);
  v30 = vpminq_s16(v28, v28);
  v31 = vzip1q_s16(v29, v30);
  v32.i64[0] = 0x10001000100010;
  v32.i64[1] = 0x10001000100010;
  v33 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v31)), vceqzq_s16(v31));
  v458 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v447, v468), 6uLL), 6uLL);
  v459 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v468), 6uLL), 6uLL);
  v460 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v468), 6uLL), 6uLL);
  v461 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v468), 6uLL), 6uLL);
  v28.i64[0] = 0x8000800080008000;
  v28.i64[1] = 0x8000800080008000;
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v36 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v37 = vpmaxq_s16(v35, v35);
  v38 = vpminq_s16(v36, v36);
  v39 = vmaxq_s16(vmaxq_s16(v29, v28), v37);
  v40 = vminq_s16(vminq_s16(v30, v34), v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v41)), vceqzq_s16(v41));
  v462 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v468), 6uLL), 6uLL);
  v463 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v468), 6uLL), 6uLL);
  v464 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v468), 6uLL), 6uLL);
  v465 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, v468), 6uLL), 6uLL);
  v43 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v44 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v45 = vpmaxq_s16(v43, v43);
  v46 = vpminq_s16(v44, v44);
  v47 = vminq_s16(v40, v46);
  v48 = vzip1q_s16(v45, v46);
  v49 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v48)), vceqzq_s16(v48));
  v466 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, v468), 6uLL), 6uLL);
  v467 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, v468), 6uLL), 6uLL);
  v50 = vpmaxq_s16(v33, v33);
  v51 = vpmaxq_s16(v42, v42);
  v52 = vpmaxq_s16(v49, v49);
  v53 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v464, v465), v466), v467), xmmword_29D2F1150);
  v54 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v464, v465), v466), v467), xmmword_29D2F1150);
  v55 = vpmaxq_s16(v53, v53);
  v56 = vpminq_s16(v54, v54);
  v57 = vmaxq_s16(vmaxq_s16(v39, v45), v55);
  v58 = vminq_s16(v47, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v50, v51), vmaxq_s16(v52, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v45.i64[0] = 0xF000F000F000FLL;
  v45.i64[1] = 0xF000F000F000FLL;
  v30.i64[0] = -1;
  v30.i64[1] = -1;
  v475 = v58;
  v476 = v57;
  v64 = vsubq_s16(v32, v63);
  v65 = vsubq_s16(vshlq_s16(v30, vsubq_s16(v45, v63)), v58);
  v66 = vcgtq_s16(v62, v64);
  v67 = vminq_s16(v64, v62);
  v477 = vandq_s8(v65, v66);
  v65.i64[0] = 0x8000800080008;
  v65.i64[1] = 0x8000800080008;
  v68.i64[0] = 0x3000300030003;
  v68.i64[1] = 0x3000300030003;
  v69 = vorrq_s8(vandq_s8(vceqzq_s16(v67), v68), vorrq_s8(vandq_s8(v66, v65), 0));
  v70 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v51), v68), 0);
  v71 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v52), v68), 0);
  v471 = vsubq_s16(v67, v70);
  v472 = vsubq_s16(v67, v71);
  v72 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v61), v68), 0);
  v473 = vsubq_s16(v67, v72);
  v474 = v67;
  v73 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v50), v68), 0);
  v74 = vsubq_s16(v67, v73);
  v75 = vceqq_s16(vaddq_s16(v72, v71), vnegq_s16(vaddq_s16(v73, v70)));
  v73.i64[0] = 0x4000400040004;
  v73.i64[1] = 0x4000400040004;
  v76 = vorrq_s8(vbicq_s8(v73, v75), v69);
  v469 = v76;
  v470 = v74;
  if (vmaxvq_s16(v67))
  {
    v415 = v18;
    v416 = v22;
    v417 = v19;
    v418 = v20;
    v419 = v21;
    v420 = v23;
    v421 = v24;
    v422 = v25;
    v423 = v26;
    v77.i64[0] = 0x10001000100010;
    v77.i64[1] = 0x10001000100010;
    v78 = v69;
    v79 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v448, vqtbl1q_s8(v448, xmmword_29D2F1140)), 6uLL), 6uLL);
    v80 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v450, vqtbl1q_s8(v450, xmmword_29D2F1140)), 6uLL), 6uLL);
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v452, vqtbl1q_s8(v452, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v454, vqtbl1q_s8(v454, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, vqtbl1q_s8(v464, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v465, vqtbl1q_s8(v465, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v466, vqtbl1q_s8(v466, xmmword_29D2F1140)), 6uLL), 6uLL);
    v86 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v460, vqtbl1q_s8(v460, xmmword_29D2F1140)), 6uLL), 6uLL);
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v467, vqtbl1q_s8(v467, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v463, vqtbl1q_s8(v463, xmmword_29D2F1140)), 6uLL), 6uLL);
    v89 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v79, v80), v81), v82);
    v428 = v82;
    v429 = v81;
    v90 = vminq_s16(vminq_s16(vminq_s16(v79, v80), v81), v82);
    v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v462, vqtbl1q_s8(v462, xmmword_29D2F1140)), 6uLL), 6uLL);
    v92 = vqtbl1q_s8(v89, xmmword_29D2F1150);
    v93 = vqtbl1q_s8(v90, xmmword_29D2F1150);
    v94 = vpmaxq_s16(v92, v92);
    v95 = vpminq_s16(v93, v93);
    v96.i64[0] = 0x8000800080008000;
    v96.i64[1] = 0x8000800080008000;
    v97 = vmaxq_s16(v94, v96);
    v98.i64[0] = 0x8000800080008000;
    v98.i64[1] = 0x8000800080008000;
    v99 = vminq_s16(v95, v98);
    v100 = vzip1q_s16(v94, v95);
    v101 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v100)), vceqzq_s16(v100));
    v102 = vpmaxq_s16(v101, v101);
    v434 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v457, vqtbl1q_s8(v457, xmmword_29D2F1140)), 6uLL), 6uLL);
    v436 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v456, vqtbl1q_s8(v456, xmmword_29D2F1140)), 6uLL), 6uLL);
    v438 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v459, vqtbl1q_s8(v459, xmmword_29D2F1140)), 6uLL), 6uLL);
    v440 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v458, vqtbl1q_s8(v458, xmmword_29D2F1140)), 6uLL), 6uLL);
    v103 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v104 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v105 = vpmaxq_s16(v103, v103);
    v106 = vpminq_s16(v104, v104);
    v107 = vmaxq_s16(v97, v105);
    v108 = vminq_s16(v99, v106);
    v109 = vzip1q_s16(v105, v106);
    v110 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v109)), vceqzq_s16(v109));
    v111 = vpmaxq_s16(v110, v110);
    v442 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v461, vqtbl1q_s8(v461, xmmword_29D2F1140)), 6uLL), 6uLL);
    v112 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v86, v442), v91), v88), xmmword_29D2F1150);
    v113 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v86, v442), v91), v88), xmmword_29D2F1150);
    v114 = vpmaxq_s16(v112, v112);
    v115 = vpminq_s16(v113, v113);
    v116 = vmaxq_s16(v107, v114);
    v117 = vminq_s16(v108, v115);
    v118 = vzip1q_s16(v114, v115);
    v119 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v118)), vceqzq_s16(v118));
    v120 = vpmaxq_s16(v119, v119);
    v121 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v83, v84), v85), v87), xmmword_29D2F1150);
    v122 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v83, v84), v85), v87), xmmword_29D2F1150);
    v123 = vpmaxq_s16(v121, v121);
    v124 = vpminq_s16(v122, v122);
    v125 = vmaxq_s16(v116, v123);
    v126 = vminq_s16(v117, v124);
    v127 = vzip1q_s16(v123, v124);
    v128 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v127)), vceqzq_s16(v127));
    v129 = vpmaxq_s16(v128, v128);
    v130 = vmaxq_s16(vmaxq_s16(v102, v111), vmaxq_s16(v120, v129));
    v430 = v126;
    v432 = v125;
    v131 = vclzq_s16(vsubq_s16(v125, v126));
    v132 = vsubq_s16(v77, v131);
    v133 = vcgtq_s16(v130, v132);
    v134 = vminq_s16(v132, v130);
    v135 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v102), v68), 0);
    v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v111), v68), 0);
    v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v120), v68), 0);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v68), 0);
    v125.i64[0] = 0x4000400040004;
    v125.i64[1] = 0x4000400040004;
    v139 = vbicq_s8(v125, vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136))));
    v132.i64[0] = 0x18001800180018;
    v132.i64[1] = 0x18001800180018;
    v140 = vbslq_s8(v133, v132, v77);
    v425 = vsubq_s16(v134, v136);
    v426 = vsubq_s16(v134, v137);
    v427 = vsubq_s16(v134, v138);
    v138.i64[0] = 0x7000700070007;
    v138.i64[1] = 0x7000700070007;
    v424 = vsubq_s16(v134, v135);
    v137.i64[0] = 0x8000800080008;
    v137.i64[1] = 0x8000800080008;
    v141 = vandq_s8(vaddq_s16(v76, v76), v137);
    v125.i64[0] = 0x2000200020002;
    v125.i64[1] = 0x2000200020002;
    v142 = vandq_s8(vceqq_s16(vandq_s8(v78, v68), v125), v77);
    v143 = vceqzq_s16(vandq_s8(v78, v137));
    v144 = v473;
    v145 = v474;
    v147 = v470;
    v146 = v471;
    v148 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v474, v143), v142), v141), v470, v138);
    v149 = v472;
    v150 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v148, vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v471), v473), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v134, vceqzq_s16((*&v140 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v139, v139)), v424, v138), vshlq_n_s16(vaddq_s16(vaddq_s16(v426, v425), v427), 3uLL))).i64[0], 0);
    v151 = vaddvq_s16(v150);
    v153 = a5 < 4 || a6 < 2;
    if (v151)
    {
      v154.i64[0] = 0x3000300030003;
      v154.i64[1] = 0x3000300030003;
      v155.i64[0] = 0xF000F000F000FLL;
      v155.i64[1] = 0xF000F000F000FLL;
      v448 = vbslq_s8(v150, v79, v448);
      v450 = vbslq_s8(v150, v80, v450);
      v156.i64[0] = -1;
      v156.i64[1] = -1;
      v452 = vbslq_s8(v150, v429, v452);
      v454 = vbslq_s8(v150, v428, v454);
      v157 = vandq_s8(vsubq_s16(vshlq_s16(v156, vsubq_s16(v155, v131)), v430), v133);
      v456 = vbslq_s8(v150, v436, v456);
      v457 = vbslq_s8(v150, v434, v457);
      v458 = vbslq_s8(v150, v440, v458);
      v459 = vbslq_s8(v150, v438, v459);
      v460 = vbslq_s8(v150, v86, v460);
      v461 = vbslq_s8(v150, v442, v461);
      v462 = vbslq_s8(v150, v91, v462);
      v463 = vbslq_s8(v150, v88, v463);
      v464 = vbslq_s8(v150, v83, v464);
      v465 = vbslq_s8(v150, v84, v465);
      v466 = vbslq_s8(v150, v85, v466);
      v467 = vbslq_s8(v150, v87, v467);
      v147 = vbslq_s8(v150, v424, v470);
      v146 = vbslq_s8(v150, v425, v471);
      v470 = v147;
      v471 = v146;
      v149 = vbslq_s8(v150, v426, v472);
      v144 = vbslq_s8(v150, v427, v473);
      v472 = v149;
      v473 = v144;
      v476 = vbslq_s8(v150, v432, v476);
      v477 = vbslq_s8(v150, v157, v477);
      v145 = vbslq_s8(v150, v134, v474);
      v474 = v145;
      v475 = vbslq_s8(v150, v430, v475);
      v76 = vbslq_s8(v150, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v134), v154), v140), v139), v469);
      v468 = vbslq_s8(v150, vsubq_s16(v468, vqtbl1q_s8(v468, xmmword_29D2F1140)), v468);
      v469 = v76;
    }

    if (!v153)
    {
      v158 = vqtbl4q_s8(*v13.i8, xmmword_29D2F1160);
      v159 = vsubq_s16(v13, vqtbl4q_s8(*v13.i8, xmmword_29D2F10B0));
      v160 = vsubq_s16(v15, v158);
      v161 = vsubq_s16(v16, v158);
      v479.val[0] = v444;
      v479.val[1] = v446;
      v479.val[2] = v447;
      v479.val[3].i64[0] = v415.i64[0];
      v479.val[3].i64[1] = v16.i64[1];
      v162 = vsubq_s16(v444, vqtbl4q_s8(v479, xmmword_29D2F10B0));
      v163 = vsubq_s16(v446, vqtbl4q_s8(v479, xmmword_29D2F10F0));
      v164 = vsubq_s16(v447, vqtbl4q_s8(v479, xmmword_29D2F1160));
      v165 = vsubq_s16(v415, vqtbl4q_s8(v479, xmmword_29D2F1100));
      v480.val[0] = v417;
      v480.val[1] = v418;
      v480.val[2] = v419;
      v480.val[3].i64[0] = v416.i64[0];
      v480.val[3].i64[1] = v16.i64[1];
      v479.val[1] = vsubq_s16(v417, vqtbl4q_s8(v480, xmmword_29D2F1170));
      v479.val[2] = vsubq_s16(v418, vqtbl4q_s8(v480, xmmword_29D2F1180));
      v479.val[3] = vsubq_s16(v419, vqtbl4q_s8(v480, xmmword_29D2F10B0));
      v166 = vsubq_s16(v416, vqtbl4q_s8(v480, xmmword_29D2F10C0));
      v478.val[0] = v420;
      v478.val[1] = v421;
      v478.val[2] = v422;
      v478.val[3].i64[0] = v423.i64[0];
      v478.val[3].i64[1] = v16.i64[1];
      v479.val[0] = vsubq_s16(v420, vqtbl4q_s8(v478, xmmword_29D2F1170));
      v480.val[0] = vsubq_s16(v421, vqtbl4q_s8(v478, xmmword_29D2F1120));
      v167 = vsubq_s16(v422, vqtbl4q_s8(v478, xmmword_29D2F10B0));
      v480.val[1].i64[0] = v161.i64[0];
      v480.val[1].i64[1] = v159.i64[0];
      v168 = vsubq_s16(v423, vqtbl4q_s8(v478, xmmword_29D2F10C0));
      v159.i64[0] = v161.i64[1];
      v169 = vshlq_n_s16(v480.val[1], 6uLL);
      v480.val[1] = vshlq_n_s16(v479.val[1], 6uLL);
      v480.val[3] = vshlq_n_s16(v479.val[2], 6uLL);
      v478.val[0] = vshlq_n_s16(v479.val[3], 6uLL);
      v478.val[1] = vshlq_n_s16(v166, 6uLL);
      v478.val[2] = vshlq_n_s16(v479.val[0], 6uLL);
      v170 = vshlq_n_s16(v168, 6uLL);
      v171 = vshrq_n_s16(vshlq_n_s16(v159, 6uLL), 6uLL);
      v172 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, vqtbl4q_s8(*v13.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v173 = vshrq_n_s16(vshlq_n_s16(v160, 6uLL), 6uLL);
      v174 = vshrq_n_s16(v169, 6uLL);
      v175 = vshrq_n_s16(vshlq_n_s16(v162, 6uLL), 6uLL);
      v176 = vshrq_n_s16(vshlq_n_s16(v163, 6uLL), 6uLL);
      v177 = vshrq_n_s16(vshlq_n_s16(v164, 6uLL), 6uLL);
      v178 = vshrq_n_s16(vshlq_n_s16(v165, 6uLL), 6uLL);
      v179 = vshrq_n_s16(v480.val[1], 6uLL);
      v180 = vshrq_n_s16(v480.val[3], 6uLL);
      v181 = vshrq_n_s16(v478.val[0], 6uLL);
      v182 = vshrq_n_s16(v478.val[1], 6uLL);
      v183 = vshrq_n_s16(v478.val[2], 6uLL);
      v184 = vshrq_n_s16(vshlq_n_s16(v480.val[0], 6uLL), 6uLL);
      v185 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v186 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v187 = vpmaxq_s16(v185, v185);
      v188 = vpminq_s16(v186, v186);
      v480.val[0].i64[0] = 0x8000800080008000;
      v480.val[0].i64[1] = 0x8000800080008000;
      v480.val[0] = vmaxq_s16(v187, v480.val[0]);
      v480.val[1].i64[0] = 0x8000800080008000;
      v480.val[1].i64[1] = 0x8000800080008000;
      v480.val[1] = vminq_s16(v188, v480.val[1]);
      v189 = vzip1q_s16(v187, v188);
      v187.i64[0] = 0x10001000100010;
      v187.i64[1] = 0x10001000100010;
      v480.val[3] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v189)), vceqzq_s16(v189));
      v480.val[3] = vpmaxq_s16(v480.val[3], v480.val[3]);
      v478.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v478.val[1] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v478.val[0] = vpmaxq_s16(v478.val[0], v478.val[0]);
      v478.val[1] = vpminq_s16(v478.val[1], v478.val[1]);
      v480.val[0] = vmaxq_s16(v480.val[0], v478.val[0]);
      v480.val[1] = vminq_s16(v480.val[1], v478.val[1]);
      v478.val[0] = vzip1q_s16(v478.val[0], v478.val[1]);
      v478.val[0] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v478.val[0])), vceqzq_s16(v478.val[0]));
      v478.val[0] = vpmaxq_s16(v478.val[0], v478.val[0]);
      v478.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v179, v180), v181), v182), xmmword_29D2F1150);
      v478.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v179, v180), v181), v182), xmmword_29D2F1150);
      v478.val[1] = vpmaxq_s16(v478.val[1], v478.val[1]);
      v478.val[2] = vpminq_s16(v478.val[2], v478.val[2]);
      v480.val[0] = vmaxq_s16(v480.val[0], v478.val[1]);
      v478.val[1] = vzip1q_s16(v478.val[1], v478.val[2]);
      v478.val[1] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v478.val[1])), vceqzq_s16(v478.val[1]));
      v190 = vpmaxq_s16(v478.val[1], v478.val[1]);
      v439 = v184;
      v441 = v183;
      v443 = vshrq_n_s16(v170, 6uLL);
      v445 = vshrq_n_s16(vshlq_n_s16(v167, 6uLL), 6uLL);
      v478.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v183, v184), v445), v443), xmmword_29D2F1150);
      v191 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v183, v184), v445), v443), xmmword_29D2F1150);
      v478.val[1] = vpmaxq_s16(v478.val[1], v478.val[1]);
      v192 = vpminq_s16(v191, v191);
      v193 = vmaxq_s16(v480.val[0], v478.val[1]);
      v194 = vminq_s16(vminq_s16(v480.val[1], v478.val[2]), v192);
      v195 = vzip1q_s16(v478.val[1], v192);
      v196 = vbicq_s8(vsubq_s16(v187, vclsq_s16(v195)), vceqzq_s16(v195));
      v197 = vpmaxq_s16(v196, v196);
      v480.val[0] = vmaxq_s16(vmaxq_s16(v480.val[3], v478.val[0]), vmaxq_s16(v190, v197));
      v437 = v193;
      v198 = vclzq_s16(vsubq_s16(v193, v194));
      v480.val[1] = vsubq_s16(v187, v198);
      v199 = vcgtq_s16(v480.val[0], v480.val[1]);
      v200 = vminq_s16(v480.val[1], v480.val[0]);
      v480.val[0] = vsubq_s16(v200, v480.val[3]);
      v480.val[3].i64[0] = 0x3000300030003;
      v480.val[3].i64[1] = 0x3000300030003;
      v480.val[0] = vmaxq_s16(vminq_s16(v480.val[0], v480.val[3]), 0);
      v480.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v200, v478.val[0]), v480.val[3]), 0);
      v478.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v200, v190), v480.val[3]), 0);
      v201 = vmaxq_s16(vminq_s16(vsubq_s16(v200, v197), v480.val[3]), 0);
      v202 = vsubq_s16(v200, v480.val[0]);
      v203 = vsubq_s16(v200, v478.val[0]);
      v204 = vsubq_s16(v200, v201);
      v205 = vceqq_s16(vaddq_s16(v201, v478.val[0]), vnegq_s16(vaddq_s16(v480.val[0], v480.val[1])));
      v480.val[0].i64[0] = 0x4000400040004;
      v480.val[0].i64[1] = 0x4000400040004;
      v206 = vbicq_s8(v480.val[0], v205);
      v478.val[0].i64[0] = 0x7000700070007;
      v478.val[0].i64[1] = 0x7000700070007;
      v431 = v203;
      v433 = vsubq_s16(v200, v480.val[1]);
      v435 = v204;
      v207 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v200, v199), vaddq_s16(v206, v206)), v202, v478.val[0]), vshlq_n_s16(vaddq_s16(vaddq_s16(v203, v433), v204), 3uLL));
      v76 = v469;
      v147 = v470;
      v208.i64[0] = 0x2000200020002;
      v208.i64[1] = 0x2000200020002;
      v209 = vandq_s8(vceqq_s16(vandq_s8(v469, v480.val[3]), v208), v187);
      v480.val[3].i64[0] = 0x8000800080008;
      v480.val[3].i64[1] = 0x8000800080008;
      v210 = vandq_s8(vaddq_s16(v76, v76), v480.val[3]);
      v211 = vceqzq_s16(vandq_s8(v469, v480.val[3]));
      v144 = v473;
      v145 = v474;
      v212 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v474, v211), v210), v209), v470, v478.val[0]);
      v146 = v471;
      v149 = v472;
      v213 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v212, vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v471), v473), 3uLL)), v207).i64[0], 0);
      if (vaddvq_s16(v213))
      {
        v214 = vextq_s8(v16, v16, 8uLL);
        v215.i64[0] = 0x9000900090009;
        v215.i64[1] = 0x9000900090009;
        v216 = vorrq_s8(vandq_s8(vceqzq_s16(v200), v208), vsubq_s16(vandq_s8(v199, v215), vmvnq_s8(v199)));
        v215.i64[0] = -1;
        v215.i64[1] = -1;
        v217.i64[0] = 0xF000F000F000FLL;
        v217.i64[1] = 0xF000F000F000FLL;
        v147 = vbslq_s8(v213, v202, v470);
        v146 = vbslq_s8(v213, v433, v471);
        v149 = vbslq_s8(v213, v431, v472);
        v144 = vbslq_s8(v213, v435, v473);
        v145 = vbslq_s8(v213, v200, v474);
        v76 = vbslq_s8(v213, vorrq_s8(v216, v206), v469);
        v467 = vbslq_s8(v213, v443, v467);
        v468 = vbslq_s8(v213, v214, v468);
        v448 = vbslq_s8(v213, v171, v448);
        v450 = vbslq_s8(v213, v172, v450);
        v452 = vbslq_s8(v213, v173, v452);
        v454 = vbslq_s8(v213, v174, v454);
        v456 = vbslq_s8(v213, v175, v456);
        v457 = vbslq_s8(v213, v176, v457);
        v458 = vbslq_s8(v213, v177, v458);
        v459 = vbslq_s8(v213, v178, v459);
        v460 = vbslq_s8(v213, v179, v460);
        v461 = vbslq_s8(v213, v180, v461);
        v462 = vbslq_s8(v213, v181, v462);
        v463 = vbslq_s8(v213, v182, v463);
        v464 = vbslq_s8(v213, v441, v464);
        v465 = vbslq_s8(v213, v439, v465);
        v466 = vbslq_s8(v213, v445, v466);
        v475 = vbslq_s8(v213, v194, v475);
        v476 = vbslq_s8(v213, v437, v476);
        v477 = vbslq_s8(v213, vandq_s8(vsubq_s16(vshlq_s16(v215, vsubq_s16(v217, v198)), v194), v199), v477);
        v470 = v147;
        v471 = v146;
        v472 = v149;
        v473 = v144;
        v474 = v145;
        v469 = v76;
      }
    }

    v218 = vandq_s8(v477, vceqq_s16(v145, v147));
    v449 = vaddq_s16(v218, v448);
    v451 = vaddq_s16(v450, v218);
    v453 = vaddq_s16(v452, v218);
    v455 = vaddq_s16(v454, v218);
    v219 = vandq_s8(v477, vceqq_s16(v145, v146));
    v456 = vaddq_s16(v456, v219);
    v457 = vaddq_s16(v457, v219);
    v458 = vaddq_s16(v458, v219);
    v459 = vaddq_s16(v459, v219);
    v220 = vandq_s8(v477, vceqq_s16(v145, v149));
    v460 = vaddq_s16(v460, v220);
    v461 = vaddq_s16(v461, v220);
    v462 = vaddq_s16(v462, v220);
    v463 = vaddq_s16(v463, v220);
    v221 = vandq_s8(v477, vceqq_s16(v145, v144));
    v464 = vaddq_s16(v464, v221);
    v465 = vaddq_s16(v465, v221);
    v466 = vaddq_s16(v466, v221);
    v467 = vaddq_s16(v467, v221);
    v221.i64[0] = 0x8000800080008;
    v221.i64[1] = 0x8000800080008;
    v222.i64[0] = 0x3000300030003;
    v222.i64[1] = 0x3000300030003;
    v223.i64[0] = 0x2000200020002;
    v223.i64[1] = 0x2000200020002;
    v224 = vceqq_s16(vandq_s8(v76, v222), v223);
    v223.i64[0] = 0x10001000100010;
    v223.i64[1] = 0x10001000100010;
    v225 = vandq_s8(v224, v223);
    v223.i64[0] = 0x7000700070007;
    v223.i64[1] = 0x7000700070007;
    v226 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v145, vceqzq_s16(vandq_s8(v76, v221))), vandq_s8(vaddq_s16(v76, v76), v221)), v225), v147, v223), vshlq_n_s16(vaddq_s16(vaddq_s16(v149, v146), v144), 3uLL));
    v227 = vpaddq_s16(v226, v226);
    if ((vpaddq_s16(v227, v227).i16[0] - 949) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
    }

    else
    {
      v228 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v229 = 8 * (a1 & 7);
      if (v229)
      {
        v230 = *v228 & ~(-1 << v229);
      }

      else
      {
        v230 = 0;
      }

      *a2 = 0;
      v234 = v468.i64[0];
      if (v145.i16[0])
      {
        v235 = ((v145.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v235 = 0;
      }

      if (v145.i16[1])
      {
        v236 = ((v145.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v236 = 0;
      }

      if (v145.i16[2])
      {
        v237 = (v145.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v237 = 0;
      }

      if (v145.i16[3])
      {
        v238 = ((v145.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v238 = 0;
      }

      v239 = (v76.i8[0] & 0x1F | (32 * (v76.i8[2] & 0x1F)) & 0x83FF | ((v76.i8[4] & 0x1F) << 10) | ((v76.i8[6] & 0x1F) << 15) | v235 | v236 | v237) + v238;
      v240 = (v239 << v229) | v230;
      if (v229 >= 0x1C)
      {
        *v228 = v240;
        v240 = v239 >> (-8 * (a1 & 7u));
      }

      v241 = v234 & 0x3FF | ((WORD1(v234) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v234) & 0x3FF) << 20) | ((HIWORD(v234) & 0x3FF) << 30);
      v242 = (v229 + 36) & 0x3C;
      v243 = v240 | (v241 << v242);
      if (v242 >= 0x18)
      {
        *(v228 + (((v229 + 36) >> 3) & 8)) = v243;
        v243 = v241 >> -v242;
      }

      v244 = v229 + 76;
      v245 = vsubq_s16(v474, v470);
      v246 = vsubq_s16(v474, v471);
      v247 = vsubq_s16(v474, v472);
      v248 = vsubq_s16(v474, v473);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      *v248.i8 = vqmovn_u16(v248);
      v249 = vtrn1q_s8(v245, v246);
      v250 = vtrn2q_s8(v245, v246);
      v251 = vtrn1q_s8(v247, v248);
      v252 = vtrn2q_s8(v247, v248);
      v253 = vzip1q_s16(v250, v252);
      v254 = vtrn2q_s16(v250, v252);
      v250.i64[0] = vzip1q_s32(vzip1q_s16(v249, v251), v253).u64[0];
      v254.i64[0] = vzip1q_s32(vtrn2q_s16(v249, v251), v254).u64[0];
      v247.i64[0] = 0x202020202020202;
      v247.i64[1] = 0x202020202020202;
      v255 = vandq_s8(vmovl_s16(vtst_s16(*v469.i8, 0x4000400040004)), v247);
      v247.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v249.i64[0] = -1;
      v249.i64[1] = -1;
      v256 = vshlq_u8(v249, vorrq_s8(v255, v247));
      v257 = vmovl_u8(vand_s8(*v256.i8, *v250.i8));
      v258 = vmovl_u8(vand_s8(*&vextq_s8(v256, v256, 8uLL), *v254.i8));
      v259 = vmovl_u8(*v255.i8);
      v260 = vmovl_high_u8(v255);
      v261 = vpaddq_s16(vshlq_u16(v257, vtrn1q_s16(0, v259)), vshlq_u16(v258, vtrn1q_s16(0, v260)));
      v262 = vpaddq_s16(v259, v260);
      v263 = vmovl_u16(*v262.i8);
      v264 = vmovl_high_u16(v262);
      v265 = vpaddq_s32(vshlq_u32(vmovl_u16(*v261.i8), vtrn1q_s32(0, v263)), vshlq_u32(vmovl_high_u16(v261), vtrn1q_s32(0, v264)));
      v266 = vpaddq_s32(v263, v264);
      v267.i64[0] = v265.u32[0];
      v267.i64[1] = v265.u32[1];
      v268 = v267;
      v267.i64[0] = v265.u32[2];
      v267.i64[1] = v265.u32[3];
      v269 = v267;
      v267.i64[0] = v266.u32[0];
      v267.i64[1] = v266.u32[1];
      v270 = v267;
      v267.i64[0] = v266.u32[2];
      v267.i64[1] = v266.u32[3];
      v271 = vpaddq_s64(vshlq_u64(v268, vzip1q_s64(0, v270)), vshlq_u64(v269, vzip1q_s64(0, v267)));
      v272 = vpaddq_s64(v270, v267);
      v273 = (v229 + 76) & 0x3C;
      v274 = (v271.i64[0] << v273) | v243;
      if ((v272.i64[0] + v273) >= 0x40)
      {
        *(v228 + ((v244 >> 3) & 0x18)) = v274;
        v274 = v271.i64[0] >> -v273;
      }

      v275 = v272.i64[0] + v244;
      v276 = v274 | (v271.i64[1] << v275);
      if ((v275 & 0x3F) + v272.i64[1] >= 0x40)
      {
        *(v228 + ((v275 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v276;
        v276 = v271.i64[1] >> -(v275 & 0x3F);
        if ((v275 & 0x3F) == 0)
        {
          v276 = 0;
        }
      }

      v277 = v275 + v272.i64[1];
      v278.i64[0] = 0x8000800080008;
      v278.i64[1] = 0x8000800080008;
      v279.i64[0] = -1;
      v279.i64[1] = -1;
      v280 = vandq_s8(vextq_s8(vtstq_s16(v469, v278), 0, 8uLL), v474);
      v281.i64[0] = 0xF000F000F000FLL;
      v281.i64[1] = 0xF000F000F000FLL;
      v282 = vandq_s8(vshlq_u16(v279, vaddq_s16(v280, v281)), v477);
      v283 = vmovl_u16(*v280.i8);
      v284 = vpaddq_s32(vshlq_u32(vmovl_u16(*v282.i8), vtrn1q_s32(0, v283)), vmovl_high_u16(v282));
      v285 = vpaddq_s32(v283, vmovl_high_u16(v280));
      v286.i64[0] = v284.u32[0];
      v286.i64[1] = v284.u32[1];
      v287 = v286;
      v286.i64[0] = v284.u32[2];
      v286.i64[1] = v284.u32[3];
      v288 = v286;
      v286.i64[0] = v285.u32[0];
      v286.i64[1] = v285.u32[1];
      v289 = v286;
      v286.i64[0] = v285.u32[2];
      v286.i64[1] = v285.u32[3];
      v290 = vpaddq_s64(vshlq_u64(v287, vzip1q_s64(0, v289)), vshlq_u64(v288, vzip1q_s64(0, v286)));
      v291 = vpaddq_s64(v289, v286);
      v292 = (v290.i64[0] << v277) | v276;
      if (v291.i64[0] + (v277 & 0x3F) >= 0x40)
      {
        *(v228 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v292;
        v292 = v290.i64[0] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v292 = 0;
        }
      }

      v293 = v291.i64[0] + v277;
      v294 = v292 | (v290.i64[1] << v293);
      if ((v293 & 0x3F) + v291.i64[1] >= 0x40)
      {
        *(v228 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v294;
        v294 = v290.i64[1] >> -(v293 & 0x3F);
        if ((v293 & 0x3F) == 0)
        {
          v294 = 0;
        }
      }

      v295 = v293 + v291.i64[1];
      v296 = vextq_s8(0, v470, 8uLL);
      v297.i64[0] = 0xF000F000F000FLL;
      v297.i64[1] = 0xF000F000F000FLL;
      v298.i64[0] = -1;
      v298.i64[1] = -1;
      v299 = vandq_s8(vshlq_u16(v298, vaddq_s16(v296, v297)), v449);
      v300 = vmovl_u16(*v296.i8);
      v301 = vmovl_high_u16(v296);
      v302 = vpaddq_s32(vmovl_u16(*v299.i8), vshlq_u32(vmovl_high_u16(v299), vtrn1q_s32(0, v301)));
      v303 = vpaddq_s32(v300, v301);
      v304.i64[0] = v302.u32[0];
      v304.i64[1] = v302.u32[1];
      v305 = v304;
      v304.i64[0] = v302.u32[2];
      v304.i64[1] = v302.u32[3];
      v306 = v304;
      v304.i64[0] = v303.u32[0];
      v304.i64[1] = v303.u32[1];
      v307 = v304;
      v304.i64[0] = v303.u32[2];
      v304.i64[1] = v303.u32[3];
      v308 = vpaddq_s64(vshlq_u64(v305, vzip1q_s64(0, v307)), vshlq_u64(v306, vzip1q_s64(0, v304)));
      v309 = vpaddq_s64(v307, v304);
      v310 = (v308.i64[0] << v295) | v294;
      if (v309.i64[0] + (v295 & 0x3F) >= 0x40)
      {
        *(v228 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v308.i64[0] >> -(v295 & 0x3F);
        if ((v295 & 0x3F) == 0)
        {
          v310 = 0;
        }
      }

      v311 = v309.i64[0] + v295;
      v312 = v310 | (v308.i64[1] << v311);
      if ((v311 & 0x3F) + v309.i64[1] >= 0x40)
      {
        *(v228 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
        v312 = v308.i64[1] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v312 = 0;
        }
      }

      v313 = v311 + v309.i64[1];
      v314.i64[0] = 0xF000F000F000FLL;
      v314.i64[1] = 0xF000F000F000FLL;
      v315.i64[0] = -1;
      v315.i64[1] = -1;
      v316 = vandq_s8(vshlq_u16(v315, vaddq_s16(v470, v314)), v451);
      v317 = vmovl_u16(*v470.i8);
      v318 = vmovl_high_u16(v470);
      v319 = vpaddq_s32(vshlq_u32(vmovl_u16(*v316.i8), vtrn1q_s32(0, v317)), vshlq_u32(vmovl_high_u16(v316), vtrn1q_s32(0, v318)));
      v320 = vpaddq_s32(v317, v318);
      v321.i64[0] = v319.u32[0];
      v321.i64[1] = v319.u32[1];
      v322 = v321;
      v321.i64[0] = v319.u32[2];
      v321.i64[1] = v319.u32[3];
      v323 = v321;
      v321.i64[0] = v320.u32[0];
      v321.i64[1] = v320.u32[1];
      v324 = v321;
      v321.i64[0] = v320.u32[2];
      v321.i64[1] = v320.u32[3];
      v325 = vpaddq_s64(vshlq_u64(v322, vzip1q_s64(0, v324)), vshlq_u64(v323, vzip1q_s64(0, v321)));
      v326 = vpaddq_s64(v324, v321);
      v327 = (v325.i64[0] << v313) | v312;
      if (v326.i64[0] + (v313 & 0x3F) >= 0x40)
      {
        *(v228 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v325.i64[0] >> -(v313 & 0x3F);
        if ((v313 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = v326.i64[0] + v313;
      v329 = v327 | (v325.i64[1] << v328);
      if ((v328 & 0x3F) + v326.i64[1] >= 0x40)
      {
        *(v228 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v325.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = v328 + v326.i64[1];
      v331.i64[0] = 0xF000F000F000FLL;
      v331.i64[1] = 0xF000F000F000FLL;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v333 = vandq_s8(vshlq_u16(v332, vaddq_s16(v470, v331)), v453);
      v334 = vmovl_u16(*v470.i8);
      v335 = vmovl_high_u16(v470);
      v336 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v334)), vshlq_u32(vmovl_high_u16(v333), vtrn1q_s32(0, v335)));
      v337 = vpaddq_s32(v334, v335);
      v338.i64[0] = v336.u32[0];
      v338.i64[1] = v336.u32[1];
      v339 = v338;
      v338.i64[0] = v336.u32[2];
      v338.i64[1] = v336.u32[3];
      v340 = v338;
      v338.i64[0] = v337.u32[0];
      v338.i64[1] = v337.u32[1];
      v341 = v338;
      v338.i64[0] = v337.u32[2];
      v338.i64[1] = v337.u32[3];
      v342 = vpaddq_s64(vshlq_u64(v339, vzip1q_s64(0, v341)), vshlq_u64(v340, vzip1q_s64(0, v338)));
      v343 = vpaddq_s64(v341, v338);
      v344 = (v342.i64[0] << v330) | v329;
      if (v343.i64[0] + (v330 & 0x3F) >= 0x40)
      {
        *(v228 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v342.i64[0] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343.i64[0] + v330;
      v346 = v344 | (v342.i64[1] << v345);
      if ((v345 & 0x3F) + v343.i64[1] >= 0x40)
      {
        *(v228 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v342.i64[1] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = v345 + v343.i64[1];
      v348.i64[0] = 0xF000F000F000FLL;
      v348.i64[1] = 0xF000F000F000FLL;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v470, v348)), v455);
      v351 = vmovl_u16(*v470.i8);
      v352 = vmovl_high_u16(v470);
      v353 = vpaddq_s32(vshlq_u32(vmovl_u16(*v350.i8), vtrn1q_s32(0, v351)), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v352)));
      v354 = vpaddq_s32(v351, v352);
      v355.i64[0] = v353.u32[0];
      v355.i64[1] = v353.u32[1];
      v356 = v355;
      v355.i64[0] = v353.u32[2];
      v355.i64[1] = v353.u32[3];
      v357 = v355;
      v355.i64[0] = v354.u32[0];
      v355.i64[1] = v354.u32[1];
      v358 = v355;
      v355.i64[0] = v354.u32[2];
      v355.i64[1] = v354.u32[3];
      v359 = vpaddq_s64(vshlq_u64(v356, vzip1q_s64(0, v358)), vshlq_u64(v357, vzip1q_s64(0, v355)));
      v360 = vpaddq_s64(v358, v355);
      v361 = (v359.i64[0] << v347) | v346;
      if (v360.i64[0] + (v347 & 0x3F) >= 0x40)
      {
        *(v228 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v359.i64[0] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[1];
      v363 = v360.i64[0] + v347;
      v364 = (v360.i64[0] + v347) & 0x3F;
      v365 = v361 | (v359.i64[1] << v363);
      if ((v364 + v360.i64[1]) >= 0x40)
      {
        *(v228 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v359.i64[1] >> -v364;
        if (!v364)
        {
          v365 = 0;
        }
      }

      v366 = 0;
      v367.i64[0] = 0xF000F000F000FLL;
      v367.i64[1] = 0xF000F000F000FLL;
      v368.i64[0] = -1;
      v368.i64[1] = -1;
      v369 = v363 + v362;
      do
      {
        v370 = vandq_s8(vshlq_u16(v368, vaddq_s16(v471, v367)), *(&v456 + v366));
        v371 = vmovl_u16(*v471.i8);
        v372 = vmovl_high_u16(v471);
        v373 = vpaddq_s32(vshlq_u32(vmovl_u16(*v370.i8), vtrn1q_s32(0, v371)), vshlq_u32(vmovl_high_u16(v370), vtrn1q_s32(0, v372)));
        v374 = vpaddq_s32(v371, v372);
        v375.i64[0] = v373.u32[0];
        v375.i64[1] = v373.u32[1];
        v376 = v375;
        v375.i64[0] = v373.u32[2];
        v375.i64[1] = v373.u32[3];
        v377 = v375;
        v375.i64[0] = v374.u32[0];
        v375.i64[1] = v374.u32[1];
        v378 = v375;
        v375.i64[0] = v374.u32[2];
        v375.i64[1] = v374.u32[3];
        v379 = vpaddq_s64(vshlq_u64(v376, vzip1q_s64(0, v378)), vshlq_u64(v377, vzip1q_s64(0, v375)));
        v380 = vpaddq_s64(v378, v375);
        v381 = (v379.i64[0] << v369) | v365;
        if (v380.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
          v381 = v379.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v381 = 0;
          }
        }

        v382 = v380.i64[0] + v369;
        v365 = v381 | (v379.i64[1] << v382);
        if ((v382 & 0x3F) + v380.i64[1] >= 0x40)
        {
          *(v228 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v379.i64[1] >> -(v382 & 0x3F);
          if ((v382 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v382 + v380.i64[1];
        v366 += 16;
      }

      while (v366 != 64);
      v383 = 0;
      v384.i64[0] = 0xF000F000F000FLL;
      v384.i64[1] = 0xF000F000F000FLL;
      v385.i64[0] = -1;
      v385.i64[1] = -1;
      do
      {
        v386 = vandq_s8(vshlq_u16(v385, vaddq_s16(v472, v384)), *(&v460 + v383));
        v387 = vmovl_u16(*v472.i8);
        v388 = vmovl_high_u16(v472);
        v389 = vpaddq_s32(vshlq_u32(vmovl_u16(*v386.i8), vtrn1q_s32(0, v387)), vshlq_u32(vmovl_high_u16(v386), vtrn1q_s32(0, v388)));
        v390 = vpaddq_s32(v387, v388);
        v391.i64[0] = v389.u32[0];
        v391.i64[1] = v389.u32[1];
        v392 = v391;
        v391.i64[0] = v389.u32[2];
        v391.i64[1] = v389.u32[3];
        v393 = v391;
        v391.i64[0] = v390.u32[0];
        v391.i64[1] = v390.u32[1];
        v394 = v391;
        v391.i64[0] = v390.u32[2];
        v391.i64[1] = v390.u32[3];
        v395 = vpaddq_s64(vshlq_u64(v392, vzip1q_s64(0, v394)), vshlq_u64(v393, vzip1q_s64(0, v391)));
        v396 = vpaddq_s64(v394, v391);
        v397 = (v395.i64[0] << v369) | v365;
        if (v396.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v395.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v398 = v396.i64[0] + v369;
        v365 = v397 | (v395.i64[1] << v398);
        if ((v398 & 0x3F) + v396.i64[1] >= 0x40)
        {
          *(v228 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v395.i64[1] >> -(v398 & 0x3F);
          if ((v398 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v398 + v396.i64[1];
        v383 += 16;
      }

      while (v383 != 64);
      v399 = 0;
      v400.i64[0] = 0xF000F000F000FLL;
      v400.i64[1] = 0xF000F000F000FLL;
      v401.i64[0] = -1;
      v401.i64[1] = -1;
      do
      {
        v402 = vandq_s8(vshlq_u16(v401, vaddq_s16(v473, v400)), *(&v464 + v399));
        v403 = vmovl_u16(*v473.i8);
        v404 = vmovl_high_u16(v473);
        v405 = vpaddq_s32(vshlq_u32(vmovl_u16(*v402.i8), vtrn1q_s32(0, v403)), vshlq_u32(vmovl_high_u16(v402), vtrn1q_s32(0, v404)));
        v406 = vpaddq_s32(v403, v404);
        v407.i64[0] = v405.u32[0];
        v407.i64[1] = v405.u32[1];
        v408 = v407;
        v407.i64[0] = v405.u32[2];
        v407.i64[1] = v405.u32[3];
        v409 = v407;
        v407.i64[0] = v406.u32[0];
        v407.i64[1] = v406.u32[1];
        v410 = v407;
        v407.i64[0] = v406.u32[2];
        v407.i64[1] = v406.u32[3];
        v411 = vpaddq_s64(vshlq_u64(v408, vzip1q_s64(0, v410)), vshlq_u64(v409, vzip1q_s64(0, v407)));
        v412 = vpaddq_s64(v410, v407);
        v413 = (v411.i64[0] << v369) | v365;
        if (v412.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
          v413 = v411.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v413 = 0;
          }
        }

        v414 = v412.i64[0] + v369;
        v365 = v413 | (v411.i64[1] << v414);
        if ((v414 & 0x3F) + v412.i64[1] >= 0x40)
        {
          *(v228 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v411.i64[1] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v414 + v412.i64[1];
        v399 += 16;
      }

      while (v399 != 64);
      if ((v369 & 0x3F) != 0)
      {
        *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v369 - v229 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v231 = vld1q_dup_f64(a3->i64);
    v232 = vorrq_s8(vandq_s8(vshlq_u64(v231, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v231, xmmword_29D2F1450), xmmword_29D2F1460));
    *v232.i8 = vorr_s8(*v232.i8, *&vextq_s8(v232, v232, 8uLL));
    *a1 = v232.i32[0];
    *(a1 + 4) = v232.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v82 = *MEMORY[0x29EDCA608];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v19 = a5 & 0x7E;
      if (a5 == v19)
      {
        v20 = 0;
        v21 = &v68;
        v22 = (a3 + 8);
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = a5;
          do
          {
            v26 = (*v23 >> 6) & 0x3FF03FF03FF03FFLL;
            *(v24 - 4) = (*(v23 - 1) >> 6) & 0x3FF03FF03FF03FFLL;
            *v24 = v26;
            v24 += 8;
            v23 += 2;
            v25 -= 2;
          }

          while (v25);
          ++v20;
          v21 = (v21 + 8);
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }

      else
      {
        v27 = 0;
        v28 = &v68;
        v29 = (a3 + 8);
        v30 = &v66 + 4 * ((a5 >> 1) & 0x3F);
        do
        {
          v31 = v29;
          v32 = v28;
          v33 = a5 & 0x7E;
          do
          {
            v34 = (*v31 >> 6) & 0x3FF03FF03FF03FFLL;
            *(v32 - 4) = (*(v31 - 1) >> 6) & 0x3FF03FF03FF03FFLL;
            *v32 = v34;
            v32 += 8;
            v31 += 2;
            v33 -= 2;
          }

          while (v33);
          v35 = (a3 + v27 * a4 + 8 * v19);
          v36 = v30;
          v37 = a5 - v19;
          do
          {
            v38 = *v35++;
            *v36 = (v38 >> 6) & 0x3FF03FF03FF03FFLL;
            v36 += 4;
            --v37;
          }

          while (v37);
          ++v27;
          v28 = (v28 + 8);
          v29 = (v29 + a4);
          v30 = (v30 + 8);
        }

        while (v27 != a6);
      }
    }

    else
    {
      v10 = 0;
      if (a6 < 2)
      {
        goto LABEL_9;
      }

      if (a4 != 1)
      {
        goto LABEL_9;
      }

      v10 = a6 & 0xFE;
      v11 = (a3 + 1);
      v12 = &v66 + 1;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v11 = (v11 + 2);
        *(v12 - 1) = (v14 >> 6) & 0x3FF03FF03FF03FFLL;
        *v12 = (v15 >> 6) & 0x3FF03FF03FF03FFLL;
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v10 != a6)
      {
LABEL_9:
        v16 = a6 - v10;
        v17 = &v66 + v10;
        v18 = (a3 + v10 * a4);
        do
        {
          *v17++ = (*v18 >> 6) & 0x3FF03FF03FF03FFLL;
          v18 = (v18 + a4);
          --v16;
        }

        while (v16);
      }
    }
  }

  v58 = vmovl_u16(*&v66);
  v59 = vmovl_u16(*&v68);
  v60 = vmovl_u16(*(&v66 + 8));
  v61 = vmovl_u16(*(&v68 + 8));
  v62 = vmovl_u16(*&v70);
  v63 = vmovl_u16(*&v72);
  v39 = vmovl_u16(*(&v70 + 8));
  v40 = vmovl_u16(*(&v72 + 8));
  if (a5 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = a5;
  }

  if (a5 >= 4)
  {
    v42 = a5 - 4;
  }

  else
  {
    v42 = 0;
  }

  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  v64 = v39;
  v65 = v40;
  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v58, a7, v41, v43);
  v58 = vmovl_u16(*&v67);
  v59 = vmovl_u16(*&v69);
  v60 = vmovl_u16(*(&v67 + 8));
  v61 = vmovl_u16(*(&v69 + 8));
  v62 = vmovl_u16(*&v71);
  v63 = vmovl_u16(*&v73);
  v64 = vmovl_u16(*(&v71 + 8));
  v65 = vmovl_u16(*(&v73 + 8));
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 32, &v58, a7, v41, v47);
  v58 = vmovl_u16(*&v74);
  v59 = vmovl_u16(*&v76);
  v60 = vmovl_u16(*(&v74 + 8));
  v61 = vmovl_u16(*(&v76 + 8));
  v62 = vmovl_u16(*&v78);
  v63 = vmovl_u16(*&v80);
  v49 = vmovl_u16(*(&v78 + 8));
  v50 = vmovl_u16(*(&v80 + 8));
  if (a5 >= 8)
  {
    v51 = 4;
  }

  else
  {
    v51 = v42;
  }

  v64 = v49;
  v65 = v50;
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 64, &v58, a7, v51, v43);
  v58 = vmovl_u16(*&v75);
  v59 = vmovl_u16(*&v77);
  v60 = vmovl_u16(*(&v75 + 8));
  v61 = vmovl_u16(*(&v77 + 8));
  v62 = vmovl_u16(*&v79);
  v63 = vmovl_u16(*&v81);
  v64 = vmovl_u16(*(&v79 + 8));
  v65 = vmovl_u16(*(&v81 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 96, &v58, a7, v51, v47);
  if (v52)
  {
    v54 = 4;
  }

  else
  {
    v54 = 0;
  }

  if (v48)
  {
    v55 = 2;
  }

  else
  {
    v55 = 0;
  }

  if (result)
  {
    v56 = -8;
  }

  else
  {
    v56 = -16;
  }

  *a2 = v56 | v54 | v46 | v55;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v344 = *MEMORY[0x29EDCA608];
  memset_pattern16(&__b, &unk_29D2F26C0, 0x10uLL);
  memset_pattern16(v331, &unk_29D2F26D0, 0x10uLL);
  memset_pattern16(v330, &unk_29D2F26E0, 0x10uLL);
  v9 = 0;
  if (a4)
  {
    v10 = a5 < 2;
  }

  else
  {
    v10 = 1;
  }

  v315 = v10;
  v11 = a4 < 2 || a5 == 0;
  v313 = v11;
  v12 = a4 < 2 || a5 < 2;
  v311 = v12;
  v13 = a4 < 3 || a5 == 0;
  v309 = v13;
  v14 = a4 < 3 || a5 < 2;
  v15 = a4 < 4 || a5 == 0;
  v16 = a4 < 4 || a5 < 2;
  v17 = a2 + 64;
  do
  {
    v18 = (v17 + v9 * 4);
    v19 = *(v17 + v9 * 4 - 64);
    if (a3 == 1)
    {
      v28 = &v333[v9];
      if (v19 == 513)
      {
        v19 = 0;
      }

      else
      {
        v19 ^= 0x200u;
      }

      *v28 = v19;
      v29 = *(v18 - 12);
      if (v29 == 513)
      {
        v21 = 0;
      }

      else
      {
        v21 = v29 ^ 0x200;
      }

      v28[4] = v21;
      v30 = *(v18 - 8);
      if (v30 == 513)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30 ^ 0x200;
      }

      v28[8] = v22;
      v31 = *(v18 - 4);
      v23 = v31 ^ 0x200;
      if (v31 == 513)
      {
        v23 = 0;
      }

      v28[12] = v23;
      if (*v18 == 513)
      {
        v24 = 0;
      }

      else
      {
        v24 = *v18 ^ 0x200;
      }

      v28[16] = v24;
      v32 = v18[4];
      if (v32 == 513)
      {
        v25 = 0;
      }

      else
      {
        v25 = v32 ^ 0x200;
      }

      v28[20] = v25;
      v33 = v18[8];
      v26 = v33 ^ 0x200;
      if (v33 == 513)
      {
        v26 = 0;
      }

      v28[24] = v26;
      v34 = v18[12];
      v27 = v34 ^ 0x200;
      if (v34 == 513)
      {
        v27 = 0;
      }

      v28[28] = v27;
    }

    else
    {
      if (a3 == 3)
      {
        v19 ^= 0x200u;
        v20 = &v333[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48) ^ 0x200;
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32) ^ 0x200;
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16) ^ 0x200;
        v20[12] = v23;
        v24 = *(v17 + v9 * 4) ^ 0x200;
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16) ^ 0x200;
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32) ^ 0x200;
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48) ^ 0x200;
      }

      else
      {
        v20 = &v333[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48);
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32);
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16);
        v20[12] = v23;
        v24 = *(v17 + v9 * 4);
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16);
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32);
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48);
      }

      v20[28] = v27;
    }

    v35 = &v338[v9 + 4];
    v338[v9 + 4] = v19;
    v339[v9] = v19;
    v338[v9] = 0;
    if (v313)
    {
      v36 = v19;
      if (v315)
      {
        goto LABEL_65;
      }

LABEL_60:
      if (v22 < v36)
      {
        v338[v9] = 2;
        v339[v9] = v22;
        v36 = v22;
      }

      v38 = &v333[v9 + 8];
      if (v19 >= v22)
      {
        v38 = &v338[v9 + 4];
      }

      v19 = *v38;
      *v35 = *v38;
      goto LABEL_65;
    }

    v36 = v19;
    if (v21 < v19)
    {
      v338[v9] = 1;
      v339[v9] = v21;
      v36 = v21;
    }

    if (v19 >= v21)
    {
      v37 = &v338[v9 + 4];
    }

    else
    {
      v37 = &v333[v9 + 4];
    }

    v19 = *v37;
    *v35 = *v37;
    if (!v315)
    {
      goto LABEL_60;
    }

LABEL_65:
    if (v311)
    {
      if (v13)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v23 < v36)
      {
        v338[v9] = 3;
        v339[v9] = v23;
        v36 = v23;
      }

      v39 = &v333[v9 + 12];
      if (v19 >= v23)
      {
        v39 = &v338[v9 + 4];
      }

      v19 = *v39;
      *v35 = *v39;
      if (v13)
      {
LABEL_67:
        if (v15)
        {
          goto LABEL_68;
        }

        goto LABEL_81;
      }
    }

    if (v24 < v36)
    {
      v338[v9] = 4;
      v339[v9] = v24;
      v36 = v24;
    }

    v40 = &v333[v9 + 16];
    if (v19 >= v24)
    {
      v40 = &v338[v9 + 4];
    }

    v19 = *v40;
    *v35 = *v40;
    if (v15)
    {
LABEL_68:
      if (v14)
      {
        goto LABEL_69;
      }

      goto LABEL_86;
    }

LABEL_81:
    if (v25 < v36)
    {
      v338[v9] = 5;
      v339[v9] = v25;
      v36 = v25;
    }

    v41 = &v333[v9 + 20];
    if (v19 >= v25)
    {
      v41 = &v338[v9 + 4];
    }

    v19 = *v41;
    *v35 = *v41;
    if (v14)
    {
LABEL_69:
      if (v16)
      {
        goto LABEL_96;
      }

LABEL_91:
      if (v27 < v36)
      {
        v338[v9] = 7;
        v339[v9] = v27;
        v36 = v27;
      }

      v43 = &v333[v9 + 28];
      if (v19 >= v27)
      {
        v43 = &v338[v9 + 4];
      }

      v19 = *v43;
      *v35 = *v43;
      goto LABEL_96;
    }

LABEL_86:
    if (v26 < v36)
    {
      v338[v9] = 6;
      v339[v9] = v26;
      v36 = v26;
    }

    v42 = &v333[v9 + 24];
    if (v19 >= v26)
    {
      v42 = &v338[v9 + 4];
    }

    v19 = *v42;
    *v35 = *v42;
    if (!v16)
    {
      goto LABEL_91;
    }

LABEL_96:
    v44 = __clz(v19 - v36);
    if (v44 - 29 >= 3)
    {
      v45 = 31 - v44;
    }

    else
    {
      v45 = 2;
    }

    v46 = v45 & ~(v45 >> 31);
    v47 = v19 - v36;
    if (v19 == v36 && v45 < 3)
    {
      if (v36)
      {
        v46 = v36 != 1023;
      }

      else
      {
        v46 = 0;
      }
    }

    *(&v334 + v9 * 4) = v46;
    if ((a3 | 2) == 3)
    {
      v48 = 0;
      if (v19 >= 0x200 && v36 <= 0x1FF)
      {
        v48 = kDQuadParamTable[10 * v46 + 168] == 0;
      }

      if (v46 <= 5)
      {
LABEL_111:
        if (!v48)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v48 = 0;
      if (v46 <= 5)
      {
        goto LABEL_111;
      }
    }

    v49 = !v48;
    if (v48)
    {
      v50 = 2;
    }

    else
    {
      v50 = 3;
    }

    v51 = v50 + kDQuadParamTable[10 * v46 + 164];
    if (v49)
    {
      v52 = -2;
    }

    else
    {
      v52 = 0;
    }

    v53 = v36 & ~(-1 << (10 - v51));
    if (v51 >= 0xA)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53;
    }

    v55 = v54 + v52;
    v56 = __clz(v55 + v47);
    if (v55 >= 1 && v56 < v44)
    {
      *(&v334 + v9 * 4) = v46 + 1;
    }

LABEL_23:
    ++v9;
  }

  while (v9 != 4);
  v329[0] = 0;
  v329[1] = 0;
  v328[0] = 0;
  v328[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v331, &v334, v329, v328);
  v58 = 0;
  v59 = 0;
  if (a4)
  {
    v60 = a5 == 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = v60;
  while (2)
  {
    v63 = v331[v58 / 4];
    v64 = *(&v334 + v58);
    v65 = &kDQuadParamTable[160 * v63 + 10 * v64];
    v66 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v63 + 1);
    v67 = v65[5];
    v68 = v65[4] + v66;
    *(&v324 + v58) = v68;
    v69 = v67 + v66;
    *(&v320 + v58) = v69;
    v70 = *(v65 + 1);
    v71 = *(v328 + v58) - *(v329 + v58);
    if (v71 < 0)
    {
      v73 = &kDQuadParamTable[160 * v63 + 10 * v64];
      if (v73[7] < *(v329 + v58) - *(v328 + v58))
      {
        *(&v320 + v58) = --v69;
        if (!v73[8])
        {
          v72 = -1;
LABEL_139:
          *(&v324 + v58) = v72 + v68;
        }
      }
    }

    else if (v71)
    {
      v69 += v71;
      *(&v320 + v58) = v69;
      v72 = v71;
      goto LABEL_139;
    }

    if (v63 == 5 && v64 == 1)
    {
      v59 |= v71 < 2;
    }

    if (a3 == 4)
    {
      v74 = 1 << (*(&__b + v58) - 1);
      if (v63 == 3)
      {
        v75 = -31745;
      }

      else
      {
        v75 = -1;
      }

      if (v63 == 4)
      {
        v76 = -2139095041;
      }

      else
      {
        v76 = v75;
      }

      if (v61)
      {
        if (v313)
        {
          goto LABEL_154;
        }

LABEL_168:
        v80 = v333[v58 / 4 + 4];
        v82 = (v80 | v76) == 0xFFFFFFFF || v80 == v74;
        v59 |= v82;
        if (!v315)
        {
          goto LABEL_175;
        }

LABEL_155:
        if (v311)
        {
          goto LABEL_156;
        }

LABEL_182:
        v86 = v333[v58 / 4 + 12];
        v88 = (v86 | v76) == 0xFFFFFFFF || v86 == v74;
        v59 |= v88;
        if (!v309)
        {
          goto LABEL_189;
        }

LABEL_157:
        if (v15)
        {
          goto LABEL_158;
        }

LABEL_196:
        v92 = v333[v58 / 4 + 20];
        v94 = (v92 | v76) == 0xFFFFFFFF || v92 == v74;
        v59 |= v94;
        if (!v14)
        {
          goto LABEL_203;
        }

LABEL_159:
        if (!v16)
        {
          goto LABEL_210;
        }
      }

      else
      {
        v77 = v333[v58 / 4];
        v79 = (v77 | v76) == 0xFFFFFFFF || v77 == v74;
        v59 |= v79;
        if (!v313)
        {
          goto LABEL_168;
        }

LABEL_154:
        if (v315)
        {
          goto LABEL_155;
        }

LABEL_175:
        v83 = v333[v58 / 4 + 8];
        v85 = (v83 | v76) == 0xFFFFFFFF || v83 == v74;
        v59 |= v85;
        if (!v311)
        {
          goto LABEL_182;
        }

LABEL_156:
        if (v309)
        {
          goto LABEL_157;
        }

LABEL_189:
        v89 = v333[v58 / 4 + 16];
        v91 = (v89 | v76) == 0xFFFFFFFF || v89 == v74;
        v59 |= v91;
        if (!v15)
        {
          goto LABEL_196;
        }

LABEL_158:
        if (v14)
        {
          goto LABEL_159;
        }

LABEL_203:
        v95 = v333[v58 / 4 + 24];
        v97 = (v95 | v76) == 0xFFFFFFFF || v95 == v74;
        v59 |= v97;
        if (!v16)
        {
LABEL_210:
          v98 = v333[v58 / 4 + 28];
          v100 = (v98 | v76) == 0xFFFFFFFF || v98 == v74;
          v59 |= v100;
        }
      }
    }

    if (v70 >> v69 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)19,(AGXTextureFootprint)3>::lossyFallBackInfo + v58 + 16))
    {
      v62 = 1;
    }

    else
    {
      v62 = v61;
    }

    v59 |= v62;
    v58 += 4;
    if (v58 != 16)
    {
      continue;
    }

    break;
  }

  v101 = 0;
  v318 = 0;
  v319 = 0;
  memset(v317, 0, sizeof(v317));
  v102 = v333;
  v103 = v332;
  do
  {
    v104 = 0;
    v105 = 0;
    v106 = *(&__b + v101);
    if (v106 >= *(&v324 + v101))
    {
      v107 = *(&v324 + v101);
    }

    else
    {
      v107 = *(&__b + v101);
    }

    *(&v324 + v101) = v107;
    v108 = -1 << v106;
    v109 = &kDQuadParamTable[160 * v331[v101] + 10 * *(&v334 + v101)];
    if (v109[5])
    {
      v110 = v106;
    }

    else
    {
      v110 = 0;
    }

    if (v110 >= *(&v320 + v101))
    {
      v110 = *(&v320 + v101);
    }

    *(&v320 + v101) = v110;
    v111 = *(v109 + 1);
    v112 = v339[v101] & (-1 << (v106 - v107));
    *(&v318 + v101) = v112;
    v113 = v111 >> v110;
    v114 = &v333[v101];
    v115 = *v114 - v112;
    v116 = &v332[2 * v101];
    if (v61)
    {
      v115 = 0;
    }

    v117 = v114[4] - v112;
    if (v313)
    {
      v117 = 0;
    }

    *v116 = v115;
    v116[1] = v117;
    v118 = v114[8] - v112;
    if (v315)
    {
      v118 = 0;
    }

    v119 = v114[12] - v112;
    if (v311)
    {
      v119 = 0;
    }

    v116[2] = v118;
    v116[3] = v119;
    v120 = v114[16] - v112;
    if (v309)
    {
      v120 = 0;
    }

    v121 = v114[20] - v112;
    if (v15)
    {
      v121 = 0;
    }

    v116[4] = v120;
    v116[5] = v121;
    v122 = v114[24] - v112;
    if (v14)
    {
      v122 = 0;
    }

    v123 = v114[28] - v112;
    if (v16)
    {
      v123 = 0;
    }

    v116[6] = v122;
    v116[7] = v123;
    if (v113 <= 1)
    {
      v124 = 1;
    }

    else
    {
      v124 = v113;
    }

    v125 = 4 * v338[v101];
    v126 = v317 + 28 * v101;
    v127 = &byte_29D2F3081;
    do
    {
      if (v125 != v104)
      {
        if (v110)
        {
          v128 = *(v103 + v104) / v124;
        }

        else
        {
          LODWORD(v128) = 0;
        }

        *&v126[4 * v105] = v128;
        if (v113 >= 2)
        {
          v129 = *(v103 + v104);
          if (v129)
          {
            if (v129 / v124 * v124 == v129 && ((v129 / v124) & 1) != 0)
            {
              if (v112 || v128 != 1)
              {
                if ((a3 | 2) != 3 || (v131 = v102[v104], v132 = v330[v101], v131 != v132) && ((a3 | 2) != 3 || v124 + v132 != v131))
                {
                  LODWORD(v128) = v128 - 1;
                  *&v126[4 * v105] = v128;
                }
              }

              else
              {
                LODWORD(v128) = 1;
              }
            }
          }
        }

        if (v128 >> v110 || (v102[v104] ^ v108) == 0xFFFFFFFF)
        {
          *&v126[4 * v105] = ~(-1 << v110);
        }

        if (*v127 >= a5 || *(v127 - 1) >= a4)
        {
          *&v126[4 * v105] = 0;
        }

        ++v105;
      }

      v104 += 4;
      v127 += 2;
    }

    while (v104 != 32);
    ++v101;
    v103 += 2;
    ++v102;
  }

  while (v101 != 4);
  v133 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v134 = 8 * (a1 & 7);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (v59)
  {
    v135 = 0;
    v136 = 0;
    v137 = __b;
    v138 = v341;
    v139 = __b - 2;
    v140 = v341 - 2;
    v142 = v342;
    v141 = v343;
    v143 = v342 - 2;
    v144 = v343 - 2;
    v145 = 8 * (a1 & 7);
    while (1)
    {
      v146 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v135;
      v147 = v146[1] < a5 && a4 > *v146;
      v148 = !v147;
      if (v147)
      {
        v149 = v333[4 * v135] >> 2;
        if (v139 > 0x100)
        {
          goto LABEL_294;
        }
      }

      else
      {
        v149 = 0;
        if (v139 > 0x100)
        {
          goto LABEL_294;
        }
      }

      if (v137 != 2 && (v145 - v134 + (v136 << 6) + v139) <= 0x100)
      {
        v150 = 0;
        v151 = v137 - 2;
        do
        {
          v152 = 64 - v145;
          if (64 - v145 >= v151)
          {
            v152 = v151;
          }

          v133[v136] |= ((v149 >> v150) & ~(-1 << v152)) << v145;
          v150 += v152;
          v153 = v152 + v145;
          v136 += v153 >> 6;
          v145 = v153 & 0x3F;
          v151 -= v152;
        }

        while (v151);
      }

LABEL_294:
      v154 = &v333[4 * v135];
      if (v148)
      {
        v155 = 0;
        if (v140 > 0x100)
        {
          goto LABEL_304;
        }
      }

      else
      {
        v155 = v154[1] >> 2;
        if (v140 > 0x100)
        {
          goto LABEL_304;
        }
      }

      if (v138 != 2 && (v145 - v134 + (v136 << 6) + v140) <= 0x100)
      {
        v156 = 0;
        v157 = v138 - 2;
        do
        {
          v158 = 64 - v145;
          if (64 - v145 >= v157)
          {
            v158 = v157;
          }

          v133[v136] |= ((v155 >> v156) & ~(-1 << v158)) << v145;
          v156 += v158;
          v159 = v158 + v145;
          v136 += v159 >> 6;
          v145 = v159 & 0x3F;
          v157 -= v158;
        }

        while (v157);
      }

LABEL_304:
      if (v148)
      {
        v160 = 0;
        if (v143 > 0x100)
        {
          goto LABEL_314;
        }
      }

      else
      {
        v160 = v154[2] >> 2;
        if (v143 > 0x100)
        {
          goto LABEL_314;
        }
      }

      if (v142 != 2 && (v145 - v134 + (v136 << 6) + v143) <= 0x100)
      {
        v161 = 0;
        v162 = v142 - 2;
        do
        {
          v163 = 64 - v145;
          if (64 - v145 >= v162)
          {
            v163 = v162;
          }

          v133[v136] |= ((v160 >> v161) & ~(-1 << v163)) << v145;
          v161 += v163;
          v164 = v163 + v145;
          v136 += v164 >> 6;
          v145 = v164 & 0x3F;
          v162 -= v163;
        }

        while (v162);
      }

LABEL_314:
      if (v148)
      {
        v165 = 0;
        if (v144 <= 0x100)
        {
          goto LABEL_318;
        }
      }

      else
      {
        v165 = v154[3] >> 2;
        if (v144 <= 0x100)
        {
LABEL_318:
          if (v141 != 2 && (v145 - v134 + (v136 << 6) + v144) <= 0x100)
          {
            v166 = 0;
            v167 = v141 - 2;
            do
            {
              v168 = 64 - v145;
              if (64 - v145 >= v167)
              {
                v168 = v167;
              }

              v133[v136] |= ((v165 >> v166) & ~(-1 << v168)) << v145;
              v166 += v168;
              v169 = v168 + v145;
              v136 += v169 >> 6;
              v145 = v169 & 0x3F;
              v167 -= v168;
            }

            while (v167);
          }
        }
      }

      if (++v135 == 8)
      {
        return v59 & 1;
      }
    }
  }

  v170 = v334;
  if (v339[0] | v334)
  {
    if (v334 <= 2)
    {
      v171 = 0;
      v314 = 0;
      v172 = v334 + 1;
      goto LABEL_329;
    }

    v174 = 0;
    v172 = 0;
    v173 = 0;
    v171 = (v334 + 6) & 7;
    v314 = 1;
  }

  else
  {
    v171 = 0;
    v314 = 0;
    v172 = 0;
LABEL_329:
    v173 = 1;
    v174 = 2;
  }

  v175 = (v171 << v134) | *v133;
  *v133 = v175;
  v176 = v134 | 3;
  v177 = v335;
  if (v339[1] | v335)
  {
    if (v335 < 3)
    {
      v178 = 0;
      v312 = 0;
      v179 = v335 + 1;
      goto LABEL_335;
    }

    v316 = 0;
    v179 = 0;
    v180 = 0;
    v178 = (v335 + 6) & 7;
    v312 = 1;
  }

  else
  {
    v178 = 0;
    v312 = 0;
    v179 = 0;
LABEL_335:
    v180 = 1;
    v316 = 2;
  }

  if ((v176 - v134) <= 0xFD)
  {
    *v133 = (v178 << v176) | v175;
    v176 = v134 | 6;
  }

  v181 = v336;
  if (v339[2] | v336)
  {
    if (v336 < 3)
    {
      v182 = 0;
      v310 = 0;
      v183 = v336 + 1;
      goto LABEL_343;
    }

    v185 = 0;
    v183 = 0;
    v184 = 0;
    v182 = v336 - 2;
    v310 = 1;
  }

  else
  {
    v182 = 0;
    v310 = 0;
    v183 = 0;
LABEL_343:
    v184 = 1;
    v185 = 2;
  }

  if ((v176 - v134 - 254) >= 0xFFFFFFFFFFFFFEFFLL)
  {
    v186 = 0;
    v187 = 0;
    v188 = 3;
    do
    {
      v189 = 64 - v176;
      if (64 - v176 >= v188)
      {
        v189 = v188;
      }

      v133[v186] |= ((v182 >> v187) & ~(-1 << v189)) << v176;
      v187 += v189;
      v190 = v189 + v176;
      v186 += v190 >> 6;
      v176 = v190 & 0x3F;
      v188 -= v189;
    }

    while (v188);
  }

  else
  {
    v186 = 0;
  }

  v191 = v337;
  v192 = v339[3] | v337;
  v193 = v337 - 2;
  if (v337 >= 3)
  {
    v194 = 1;
  }

  else
  {
    v193 = 0;
    v194 = 0;
  }

  if (v337 >= 3)
  {
    v195 = 0;
  }

  else
  {
    v195 = 2;
  }

  if (v337 < 3)
  {
    v196 = v337 + 1;
  }

  else
  {
    v196 = 0;
  }

  if (v192)
  {
    v197 = v194;
  }

  else
  {
    v193 = 0;
    v197 = 0;
  }

  if (v192)
  {
    v198 = v195;
  }

  else
  {
    v198 = 2;
  }

  if (v192)
  {
    v199 = v196;
  }

  else
  {
    v199 = 0;
  }

  if (v192)
  {
    v200 = v337 < 3;
  }

  else
  {
    v200 = 1;
  }

  if ((v176 - v134 + (v186 << 6) + 3) <= 0x100)
  {
    v201 = 0;
    v202 = 3;
    do
    {
      v203 = 64 - v176;
      if (64 - v176 >= v202)
      {
        v203 = v202;
      }

      v133[v186] |= ((v193 >> v201) & ~(-1 << v203)) << v176;
      v201 += v203;
      v204 = v203 + v176;
      v186 += v204 >> 6;
      v176 = v204 & 0x3F;
      v202 -= v203;
    }

    while (v202);
  }

  if (!v173)
  {
    v210 = 12;
    if (!v180)
    {
      goto LABEL_397;
    }

    goto LABEL_388;
  }

  v205 = v174;
  v206 = v314;
  if (v176 - v134 + (v186 << 6) + v174 > 0x100)
  {
    v206 = 1;
  }

  if ((v206 & 1) == 0)
  {
    v207 = 0;
    do
    {
      v208 = 64 - v176;
      if (64 - v176 >= v205)
      {
        v208 = v205;
      }

      v133[v186] |= ((v172 >> v207) & ~(-1 << v208)) << v176;
      v207 += v208;
      v209 = v208 + v176;
      v186 += v209 >> 6;
      v176 = v209 & 0x3F;
      v205 -= v208;
    }

    while (v205);
  }

  v210 = v174 | 0xC;
  if (v180)
  {
LABEL_388:
    v211 = v316;
    if (v176 - v134 + (v186 << 6) + v316 > 0x100)
    {
      v212 = 1;
    }

    else
    {
      v212 = v312;
    }

    if ((v212 & 1) == 0)
    {
      v213 = 0;
      do
      {
        v214 = 64 - v176;
        if (64 - v176 >= v211)
        {
          v214 = v211;
        }

        v133[v186] |= ((v179 >> v213) & ~(-1 << v214)) << v176;
        v213 += v214;
        v215 = v214 + v176;
        v186 += v215 >> 6;
        v176 = v215 & 0x3F;
        v211 -= v214;
      }

      while (v211);
    }

    v210 += v316;
  }

LABEL_397:
  if (v184)
  {
    v217 = v185;
    v218 = v310;
    if (v176 - v134 + (v186 << 6) + v185 > 0x100)
    {
      v218 = 1;
    }

    if ((v218 & 1) == 0)
    {
      v219 = 0;
      do
      {
        v220 = 64 - v176;
        if (64 - v176 >= v217)
        {
          v220 = v217;
        }

        v133[v186] |= ((v183 >> v219) & ~(-1 << v220)) << v176;
        v219 += v220;
        v221 = v220 + v176;
        v186 += v221 >> 6;
        v176 = v221 & 0x3F;
        v217 -= v220;
      }

      while (v217);
    }

    v210 += v185;
    if (v200)
    {
      goto LABEL_409;
    }

LABEL_399:
    v216 = __b;
    if (v170)
    {
      goto LABEL_422;
    }

LABEL_418:
    if (v216 == 2 || v216 >= 0x10)
    {
      goto LABEL_422;
    }

    v227 = v341;
    if (!v177)
    {
      goto LABEL_531;
    }

LABEL_430:
    v234 = v325;
    if (v325 <= 0x100 && v325 && v176 - v134 + (v186 << 6) + v325 <= 0x100)
    {
      v235 = 0;
      v236 = (HIDWORD(v318) >> (v227 - v325));
      v237 = v325;
      do
      {
        v238 = 64 - v176;
        if (64 - v176 >= v237)
        {
          v238 = v237;
        }

        v133[v186] |= ((v236 >> v235) & ~(-1 << v238)) << v176;
        v235 += v238;
        v239 = v238 + v176;
        v186 += v239 >> 6;
        v176 = v239 & 0x3F;
        v237 -= v238;
      }

      while (v237);
    }

    v210 += v234;
  }

  else
  {
    if (!v200)
    {
      goto LABEL_399;
    }

LABEL_409:
    if ((v176 - v134 + (v186 << 6) + v198) > 0x100)
    {
      v222 = 1;
    }

    else
    {
      v222 = v197;
    }

    if ((v222 & 1) == 0)
    {
      v223 = 0;
      v224 = v198;
      do
      {
        v225 = 64 - v176;
        if (64 - v176 >= v224)
        {
          v225 = v224;
        }

        v133[v186] |= ((v199 >> v223) & ~(-1 << v225)) << v176;
        v223 += v225;
        v226 = v225 + v176;
        v186 += v226 >> 6;
        v176 = v226 & 0x3F;
        v224 -= v225;
      }

      while (v224);
    }

    v210 += v198;
    v216 = __b;
    if (!v170)
    {
      goto LABEL_418;
    }

LABEL_422:
    v228 = v324;
    if (v324 <= 0x100 && v324 && v176 - v134 + (v186 << 6) + v324 <= 0x100)
    {
      v229 = 0;
      v230 = v318 >> (v216 - v324);
      v231 = v324;
      do
      {
        v232 = 64 - v176;
        if (64 - v176 >= v231)
        {
          v232 = v231;
        }

        v133[v186] |= ((v230 >> v229) & ~(-1 << v232)) << v176;
        v229 += v232;
        v233 = v232 + v176;
        v186 += v233 >> 6;
        v176 = v233 & 0x3F;
        v231 -= v232;
      }

      while (v231);
    }

    v210 += v228;
    v227 = v341;
    if (v177)
    {
      goto LABEL_430;
    }

LABEL_531:
    if (v227 == 2 || v227 >= 0x10)
    {
      goto LABEL_430;
    }
  }

  if (v181 || v342 == 2 || v342 >= 0x10)
  {
    v240 = v326;
    if (v326 <= 0x100 && v326 && v176 - v134 + (v186 << 6) + v326 <= 0x100)
    {
      v241 = 0;
      v242 = v319 >> (v342 - v326);
      v243 = v326;
      do
      {
        v244 = 64 - v176;
        if (64 - v176 >= v243)
        {
          v244 = v243;
        }

        v133[v186] |= ((v242 >> v241) & ~(-1 << v244)) << v176;
        v241 += v244;
        v245 = v244 + v176;
        v186 += v245 >> 6;
        v176 = v245 & 0x3F;
        v243 -= v244;
      }

      while (v243);
    }

    v210 += v240;
  }

  if (v191 || v343 == 2 || v343 >= 0x10)
  {
    v246 = v327;
    if (v327 <= 0x100 && v327 && v176 - v134 + (v186 << 6) + v327 <= 0x100)
    {
      v247 = 0;
      v248 = (HIDWORD(v319) >> (v343 - v327));
      v249 = v327;
      do
      {
        v250 = 64 - v176;
        if (64 - v176 >= v249)
        {
          v250 = v249;
        }

        v133[v186] |= ((v248 >> v247) & ~(-1 << v250)) << v176;
        v247 += v250;
        v251 = v250 + v176;
        v186 += v251 >> 6;
        v176 = v251 & 0x3F;
        v249 -= v250;
      }

      while (v249);
    }

    v210 += v246;
  }

  v252 = v320;
  if (v320)
  {
    if ((v176 - v134 + (v186 << 6) + 3) <= 0x100)
    {
      v253 = 0;
      v254 = v338[0];
      v255 = 3;
      do
      {
        v256 = 64 - v176;
        if (64 - v176 >= v255)
        {
          v256 = v255;
        }

        v133[v186] |= ((v254 >> v253) & ~(-1 << v256)) << v176;
        v253 += v256;
        v257 = v256 + v176;
        v186 += v257 >> 6;
        v176 = v257 & 0x3F;
        v255 -= v256;
      }

      while (v255);
    }

    v210 += 3;
  }

  v258 = v321;
  if (v321)
  {
    if ((v176 - v134 + (v186 << 6) + 3) <= 0x100)
    {
      v259 = 0;
      v260 = v338[1];
      v261 = 3;
      do
      {
        v262 = 64 - v176;
        if (64 - v176 >= v261)
        {
          v262 = v261;
        }

        v133[v186] |= ((v260 >> v259) & ~(-1 << v262)) << v176;
        v259 += v262;
        v263 = v262 + v176;
        v186 += v263 >> 6;
        v176 = v263 & 0x3F;
        v261 -= v262;
      }

      while (v261);
    }

    v210 += 3;
  }

  v264 = v322;
  if (v322)
  {
    if ((v176 - v134 + (v186 << 6) + 3) <= 0x100)
    {
      v265 = 0;
      v266 = v338[2];
      v267 = 3;
      do
      {
        v268 = 64 - v176;
        if (64 - v176 >= v267)
        {
          v268 = v267;
        }

        v133[v186] |= ((v266 >> v265) & ~(-1 << v268)) << v176;
        v265 += v268;
        v269 = v268 + v176;
        v186 += v269 >> 6;
        v176 = v269 & 0x3F;
        v267 -= v268;
      }

      while (v267);
    }

    v210 += 3;
  }

  v270 = v323;
  if (v323)
  {
    if ((v176 - v134 + (v186 << 6) + 3) <= 0x100)
    {
      v271 = 0;
      v272 = v338[3];
      v273 = 3;
      do
      {
        v274 = 64 - v176;
        if (64 - v176 >= v273)
        {
          v274 = v273;
        }

        v133[v186] |= ((v272 >> v271) & ~(-1 << v274)) << v176;
        v271 += v274;
        v275 = v274 + v176;
        v186 += v275 >> 6;
        v176 = v275 & 0x3F;
        v273 -= v274;
      }

      while (v273);
    }

    v210 += 3;
  }

  v276 = 256 - v210;
  v277 = (256 - v210) / 7u;
  v278 = v276 % 7;
  if ((v278 - 257) >= 0xFFFFFF00 && v176 - v134 + (v186 << 6) + v278 <= 0x100)
  {
    do
    {
      v279 = 64 - v176;
      if (64 - v176 >= v278)
      {
        v279 = v278;
      }

      v280 = v279 + v176;
      v186 += v280 >> 6;
      v176 = v280 & 0x3F;
      v278 -= v279;
    }

    while (v278);
  }

  v281 = 0;
  while (2)
  {
    if (v252 && v252 <= 0x100 && v176 - v134 + (v186 << 6) + v252 <= 0x100)
    {
      v282 = 0;
      v283 = *(v317 + v281);
      v284 = v252;
      do
      {
        v285 = 64 - v176;
        if (64 - v176 >= v284)
        {
          v285 = v284;
        }

        v133[v186] |= ((v283 >> v282) & ~(-1 << v285)) << v176;
        v282 += v285;
        v286 = v285 + v176;
        v186 += v286 >> 6;
        v176 = v286 & 0x3F;
        v284 -= v285;
      }

      while (v284);
    }

    v287 = v317 + v281;
    if (!v258)
    {
      v293 = v252;
      if (!v264)
      {
        goto LABEL_515;
      }

      goto LABEL_508;
    }

    if (v258 <= 0x100 && v176 - v134 + (v186 << 6) + v258 <= 0x100)
    {
      v288 = 0;
      v289 = v287[7];
      v290 = v258;
      do
      {
        v291 = 64 - v176;
        if (64 - v176 >= v290)
        {
          v291 = v290;
        }

        v133[v186] |= ((v289 >> v288) & ~(-1 << v291)) << v176;
        v288 += v291;
        v292 = v291 + v176;
        v186 += v292 >> 6;
        v176 = v292 & 0x3F;
        v290 -= v291;
      }

      while (v290);
    }

    v293 = v258 + v252;
    if (v264)
    {
LABEL_508:
      if (v264 <= 0x100 && v176 - v134 + (v186 << 6) + v264 <= 0x100)
      {
        v294 = 0;
        v295 = v287[14];
        v296 = v264;
        do
        {
          v297 = 64 - v176;
          if (64 - v176 >= v296)
          {
            v297 = v296;
          }

          v133[v186] |= ((v295 >> v294) & ~(-1 << v297)) << v176;
          v294 += v297;
          v298 = v297 + v176;
          v186 += v298 >> 6;
          v176 = v298 & 0x3F;
          v296 -= v297;
        }

        while (v296);
      }

      v293 += v264;
    }

LABEL_515:
    if (v270)
    {
      if (v270 <= 0x100 && v176 - v134 + (v186 << 6) + v270 <= 0x100)
      {
        v299 = 0;
        v300 = v287[21];
        v301 = v270;
        do
        {
          v302 = 64 - v176;
          if (64 - v176 >= v301)
          {
            v302 = v301;
          }

          v133[v186] |= ((v300 >> v299) & ~(-1 << v302)) << v176;
          v299 += v302;
          v303 = v302 + v176;
          v186 += v303 >> 6;
          v176 = v303 & 0x3F;
          v301 -= v302;
        }

        while (v301);
      }

      v293 += v270;
    }

    v304 = v277 - v293;
    if (v304 && v304 <= 0x100 && v176 - v134 + (v186 << 6) + v304 <= 0x100)
    {
      do
      {
        v305 = 64 - v176;
        if (64 - v176 >= v304)
        {
          v305 = v304;
        }

        v306 = v305 + v176;
        v186 += v306 >> 6;
        v176 = v306 & 0x3F;
        v304 -= v305;
      }

      while (v304);
    }

    if (++v281 != 7)
    {
      continue;
    }

    return v59 & 1;
  }
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = a3 & 0xFFFFFFFD;
  v6 = ((a3 & 0xFFFFFFFD) == 1) << 9;
  if (a3 == 4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8 * (a1 & 7);
    while (1)
    {
      result = v9 - v4 + (v8 << 6) - 249;
      v12 = (a2 + 16 * v7);
      if (result < 0xFFFFFFFFFFFFFEFFLL)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = 64 - v9;
        if (64 - v9 >= v15)
        {
          v16 = v15;
        }

        v13 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + v9;
        v8 += v17 >> 6;
        v9 = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
      result = (4 * v13) ^ v6;
      *(a2 + 16 * v7) = result;
      if ((v9 - v4 + (v8 << 6) - 249) < 0xFFFFFFFFFFFFFEFFLL)
      {
        goto LABEL_4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 8;
      do
      {
        v21 = 64 - v9;
        if (64 - v9 >= v20)
        {
          v21 = v20;
        }

        v18 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v21)) << v19;
        v19 += v21;
        v22 = v21 + v9;
        v8 += v22 >> 6;
        v9 = v22 & 0x3F;
        v20 -= v21;
      }

      while (v20);
      result = v9 - v4 + (v8 << 6) - 249;
      v12[1] = (4 * v18) ^ v6;
      if (result >= 0xFFFFFFFFFFFFFEFFLL)
      {
        v23 = 0;
        v24 = 0;
        v25 = 8;
        do
        {
          v26 = 64 - v9;
          if (64 - v9 >= v25)
          {
            v26 = v25;
          }

          v23 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v26)) << v24;
          v24 += v26;
          v27 = v26 + v9;
          v8 += v27 >> 6;
          v9 = v27 & 0x3F;
          v25 -= v26;
        }

        while (v25);
        result = v9 - v4 + (v8 << 6) - 249;
        v12[2] = (4 * v23) ^ v6;
        if (result >= 0xFFFFFFFFFFFFFEFFLL)
        {
          v28 = 0;
          result = 0;
          v29 = 8;
          do
          {
            v30 = 64 - v9;
            if (64 - v9 >= v29)
            {
              v30 = v29;
            }

            v28 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v30)) << result;
            result += v30;
            v31 = v30 + v9;
            v8 += v31 >> 6;
            v9 = v31 & 0x3F;
            v29 -= v30;
          }

          while (v29);
          v10 = 4 * v28;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_6;
      }

LABEL_5:
      v10 = 0;
      v12[2] = v6;
LABEL_6:
      v12[3] = v10 ^ v6;
      if (++v7 == 8)
      {
        return result;
      }
    }

    *(a2 + 16 * v7) = v6;
LABEL_4:
    v12[1] = v6;
    goto LABEL_5;
  }

  v32 = 0;
  v33 = 0;
  v34 = 8 * (a1 & 7);
  do
  {
    if ((v34 - v4 + (v33 << 6) - 249) >= 0xFFFFFFFFFFFFFEFFLL)
    {
      v37 = 0;
      v38 = 0;
      v39 = 8;
      do
      {
        v40 = 64 - v34;
        if (64 - v34 >= v39)
        {
          v40 = v39;
        }

        v37 |= ((*(v3 + 8 * v33) >> v34) & ~(-1 << v40)) << v38;
        v38 += v40;
        v41 = v40 + v34;
        v33 += v41 >> 6;
        v34 = v41 & 0x3F;
        v39 -= v40;
      }

      while (v39);
      v36 = 4 * v37;
      if ((v36 != 512 || v5 != 1) && v36 != 0)
      {
        if (v36 == 1020)
        {
          v36 = 1023;
        }

        else
        {
          v36 = v36 - (v37 & 1) + 2;
        }
      }
    }

    else
    {
      v36 = 0;
    }

    *(a2 + 16 * v32) = v36 ^ v6;
    if ((v34 - v4 + (v33 << 6) - 249) >= 0xFFFFFFFFFFFFFEFFLL)
    {
      v45 = 0;
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = 64 - v34;
        if (64 - v34 >= v47)
        {
          v48 = v47;
        }

        v45 |= ((*(v3 + 8 * v33) >> v34) & ~(-1 << v48)) << v46;
        v46 += v48;
        v49 = v48 + v34;
        v33 += v49 >> 6;
        v34 = v49 & 0x3F;
        v47 -= v48;
      }

      while (v47);
      v44 = 4 * v45;
      if ((v44 != 512 || v5 != 1) && v44 != 0)
      {
        if (v44 == 1020)
        {
          v44 = 1023;
        }

        else
        {
          v44 = v44 - (v45 & 1) + 2;
        }
      }
    }

    else
    {
      v44 = 0;
    }

    result = a2 + 16 * v32;
    *(result + 4) = v44 ^ v6;
    if ((v34 - v4 + (v33 << 6) - 249) >= 0xFFFFFFFFFFFFFEFFLL)
    {
      v53 = 0;
      v54 = 0;
      v55 = 8;
      do
      {
        v56 = 64 - v34;
        if (64 - v34 >= v55)
        {
          v56 = v55;
        }

        v53 |= ((*(v3 + 8 * v33) >> v34) & ~(-1 << v56)) << v54;
        v54 += v56;
        v57 = v56 + v34;
        v33 += v57 >> 6;
        v34 = v57 & 0x3F;
        v55 -= v56;
      }

      while (v55);
      v52 = 4 * v53;
      if ((v52 != 512 || v5 != 1) && v52 != 0)
      {
        if (v52 == 1020)
        {
          v52 = 1023;
        }

        else
        {
          v52 = v52 - (v53 & 1) + 2;
        }
      }
    }

    else
    {
      v52 = 0;
    }

    *(result + 8) = v52 ^ v6;
    if ((v34 - v4 + (v33 << 6) - 249) < 0xFFFFFFFFFFFFFEFFLL)
    {
      v35 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 8;
      do
      {
        v63 = 64 - v34;
        if (64 - v34 >= v62)
        {
          v63 = v62;
        }

        v60 |= ((*(v3 + 8 * v33) >> v34) & ~(-1 << v63)) << v61;
        v61 += v63;
        v64 = v63 + v34;
        v33 += v64 >> 6;
        v34 = v64 & 0x3F;
        v62 -= v63;
      }

      while (v62);
      v35 = 4 * v60;
      if ((v35 != 512 || v5 != 1) && v35 != 0)
      {
        v67 = v35 - (v60 & 1) + 2;
        if (v35 == 1020)
        {
          v35 = 1023;
        }

        else
        {
          v35 = v67;
        }
      }
    }

    *(result + 12) = v35 ^ v6;
    ++v32;
  }

  while (v32 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v276 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 >> v5) & 7;
  v8 = v5 | 3;
  v9 = (v6 >> (v5 | 3u)) & 7;
  v10 = (v5 | 6) - v5;
  if ((v5 | 3uLL) - v5 <= 0xFD)
  {
    v11 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v10 = v8 - v5;
    v11 = (8 * (a1 & 7)) | 3;
  }

  if ((v8 - v5) <= 0xFD)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if ((v10 - 254) >= 0xFFFFFFFFFFFFFEFFLL)
  {
    v15 = 0;
    v13 = 0;
    v17 = 0;
    v18 = 3;
    do
    {
      v19 = 64 - v11;
      if (64 - v11 >= v18)
      {
        v19 = v18;
      }

      v13 |= (((*(v4 + 8 * v15) >> v11) & ~(-1 << v19)) << v17);
      v17 += v19;
      v15 += (v19 + v11) >> 6;
      v11 = (v19 + v11) & 0x3F;
      v18 -= v19;
    }

    while (v18);
    v14 = v15 << 6;
    v10 = v11 - v5;
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x100)
    {
      v16 = 0;
      v20 = 0;
      v21 = 3;
      do
      {
        v22 = 64 - v11;
        if (64 - v11 >= v21)
        {
          v22 = v21;
        }

        v16 |= (((*(v4 + 8 * v15) >> v11) & ~(-1 << v22)) << v20);
        v20 += v22;
        v15 += (v22 + v11) >> 6;
        v11 = (v22 + v11) & 0x3F;
        v21 -= v22;
      }

      while (v21);
      v14 = v15 << 6;
      v10 = v11 - v5;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v23 = 0;
  v273[0] = 10;
  v24 = 2 * (v7 == 0);
  if (!v7 && (v10 + v14 + v24) <= 0x100)
  {
    v25 = 0;
    v26 = 0;
    v27 = 2 * (v7 == 0);
    do
    {
      v28 = 64 - v11;
      if (64 - v11 >= v27)
      {
        v28 = v27;
      }

      v25 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v28)) << v26;
      v26 += v28;
      v15 += (v28 + v11) >> 6;
      v11 = (v28 + v11) & 0x3F;
      v27 -= v28;
    }

    while (v27);
    v23 = v25 & 3;
  }

  if (v7)
  {
    v257 = 0;
    v29 = v7 + 2;
  }

  else
  {
    v257 = dword_29D2F2720[v23];
    v29 = *(&xmmword_29D2F1D80 + v23);
  }

  v30 = 0;
  v275[0] = v29;
  v274[0] = 1;
  v273[1] = 10;
  v31 = 2 * (v12 == 0);
  if (!v12 && (v11 - v5 + (v15 << 6) + v31) <= 0x100)
  {
    v32 = 0;
    v33 = 0;
    v34 = 2 * (v12 == 0);
    do
    {
      v35 = 64 - v11;
      if (64 - v11 >= v34)
      {
        v35 = v34;
      }

      v32 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v35)) << v33;
      v33 += v35;
      v15 += (v35 + v11) >> 6;
      v11 = (v35 + v11) & 0x3F;
      v34 -= v35;
    }

    while (v34);
    v30 = v32 & 3;
  }

  if (v12)
  {
    v256 = 0;
    v36 = v12 + 2;
  }

  else
  {
    v256 = dword_29D2F2720[v30];
    v36 = *(&xmmword_29D2F1D80 + v30);
  }

  v37 = 0;
  v275[1] = v36;
  v274[1] = 1;
  v273[2] = 10;
  v38 = 2 * (v13 == 0);
  if (!v13 && (v11 - v5 + (v15 << 6) + v38) <= 0x100)
  {
    v39 = 0;
    v40 = 0;
    v41 = 2 * (v13 == 0);
    do
    {
      v42 = 64 - v11;
      if (64 - v11 >= v41)
      {
        v42 = v41;
      }

      v39 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v42)) << v40;
      v40 += v42;
      v15 += (v42 + v11) >> 6;
      v11 = (v42 + v11) & 0x3F;
      v41 -= v42;
    }

    while (v41);
    v37 = v39 & 3;
  }

  v43 = v13 & 7;
  if (v43)
  {
    v255 = 0;
    v44 = v43 + 2;
  }

  else
  {
    v255 = dword_29D2F2720[v37];
    v44 = *(&xmmword_29D2F1D80 + v37);
  }

  v45 = 0;
  v275[2] = v44;
  v274[2] = 1;
  v273[3] = 10;
  v259 = v38;
  v260 = v31;
  v258 = 2 * (v16 == 0);
  if (!v16 && (v11 - v5 + (v15 << 6) + 2) <= 0x100)
  {
    v46 = 0;
    v47 = 0;
    v48 = 2 * (v16 == 0);
    do
    {
      v49 = 64 - v11;
      if (64 - v11 >= v48)
      {
        v49 = v48;
      }

      v46 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v49)) << v47;
      v47 += v49;
      v15 += (v49 + v11) >> 6;
      v11 = (v49 + v11) & 0x3F;
      v48 -= v49;
    }

    while (v48);
    v45 = v46 & 3;
  }

  v50 = v16 & 7;
  if (v50)
  {
    v254 = 0;
    v51 = v50 + 2;
  }

  else
  {
    v254 = dword_29D2F2720[v45];
    v51 = *(&xmmword_29D2F1D80 + v45);
  }

  v52 = v51;
  v275[3] = v51;
  v274[3] = 1;
  v271 = 0;
  v272 = 0;
  v269 = 0;
  v270 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v274, v275, &v271, &v269);
  v53 = &kDQuadParamTable[10 * v29];
  v54 = v53[164] + 3;
  v55 = v53[165];
  LODWORD(v56) = v55 + 3;
  v57 = v269 - v271;
  if (v269 - v271 >= 0)
  {
    v58 = v36;
    v59 = v44;
    v60 = v259;
    v61 = v260;
    v62 = v258;
    if (!v57)
    {
      goto LABEL_69;
    }

    LODWORD(v56) = v57 + v56;
    goto LABEL_63;
  }

  v63 = &kDQuadParamTable[10 * v29];
  v58 = v36;
  if (v63[167] >= v271 - v269)
  {
    v59 = v44;
  }

  else
  {
    LODWORD(v56) = v55 + 2;
    v59 = v44;
    if (!v63[168])
    {
      v57 = -1;
      v60 = v259;
      v61 = v260;
      v62 = v258;
LABEL_63:
      v54 += v57;
      goto LABEL_69;
    }
  }

  v60 = v259;
  v61 = v260;
  v62 = v258;
LABEL_69:
  if (v54 >= 0xA)
  {
    v64 = 10;
  }

  else
  {
    v64 = v54;
  }

  v268[0] = v64;
  if (v55)
  {
    v65 = 10;
  }

  else
  {
    v65 = 0;
  }

  if (v65 >= v56)
  {
    v56 = v56;
  }

  else
  {
    v56 = v65;
  }

  v267[0] = v56;
  v66 = &kDQuadParamTable[10 * v58];
  v67 = v66[164] + 3;
  v68 = v66[165];
  v69 = v68 + 3;
  v70 = HIDWORD(v269) - HIDWORD(v271);
  if (HIDWORD(v269) - HIDWORD(v271) < 0)
  {
    v71 = &kDQuadParamTable[10 * v58];
    if (v71[167] >= HIDWORD(v271) - HIDWORD(v269))
    {
      goto LABEL_84;
    }

    v69 = v68 + 2;
    if (v71[168])
    {
      goto LABEL_84;
    }

    v70 = -1;
  }

  else
  {
    if (!v70)
    {
      goto LABEL_84;
    }

    v69 += v70;
  }

  v67 += v70;
LABEL_84:
  v72 = (v24 | 0xC) + v61;
  if (v67 >= 0xA)
  {
    v73 = 10;
  }

  else
  {
    v73 = v67;
  }

  v268[1] = v73;
  if (v68)
  {
    LODWORD(v74) = 10;
  }

  else
  {
    LODWORD(v74) = 0;
  }

  if (v74 >= v69)
  {
    v74 = v69;
  }

  else
  {
    v74 = v74;
  }

  v267[1] = v74;
  v75 = &kDQuadParamTable[10 * v59];
  v76 = v75[164] + 3;
  v77 = v75[165];
  v78 = v77 + 3;
  v79 = v270 - v272;
  if (v270 - v272 < 0)
  {
    v80 = &kDQuadParamTable[10 * v59];
    if (v80[167] >= v272 - v270)
    {
      goto LABEL_99;
    }

    v78 = v77 + 2;
    if (v80[168])
    {
      goto LABEL_99;
    }

    v79 = -1;
  }

  else
  {
    if (!v79)
    {
      goto LABEL_99;
    }

    v78 += v79;
  }

  v76 += v79;
LABEL_99:
  v81 = v72 + v60;
  if (v76 >= 0xA)
  {
    v82 = 10;
  }

  else
  {
    v82 = v76;
  }

  v268[2] = v82;
  if (v77)
  {
    LODWORD(v83) = 10;
  }

  else
  {
    LODWORD(v83) = 0;
  }

  if (v83 >= v78)
  {
    v83 = v78;
  }

  else
  {
    v83 = v83;
  }

  v267[2] = v83;
  v84 = &kDQuadParamTable[10 * v52];
  v85 = v84[164] + 3;
  v86 = v84[165];
  LODWORD(v87) = v86 + 3;
  v88 = HIDWORD(v270) - HIDWORD(v272);
  if (HIDWORD(v270) - HIDWORD(v272) < 0)
  {
    v89 = &kDQuadParamTable[10 * v52];
    if (v89[167] >= HIDWORD(v272) - HIDWORD(v270))
    {
      goto LABEL_114;
    }

    LODWORD(v87) = v86 + 2;
    if (v89[168])
    {
      goto LABEL_114;
    }

    v88 = -1;
  }

  else
  {
    if (!v88)
    {
      goto LABEL_114;
    }

    LODWORD(v87) = v88 + v87;
  }

  v85 += v88;
LABEL_114:
  if (v85 >= 0xA)
  {
    v90 = 10;
  }

  else
  {
    v90 = v85;
  }

  v268[3] = v90;
  if (v86)
  {
    v91 = 10;
  }

  else
  {
    v91 = 0;
  }

  if (v91 >= v87)
  {
    v87 = v87;
  }

  else
  {
    v87 = v91;
  }

  v267[3] = v87;
  v92 = v81 + v62;
  v265 = 0;
  v266 = 0;
  if (!v29)
  {
    LODWORD(v265) = v257;
    if (v58)
    {
      goto LABEL_131;
    }

LABEL_154:
    HIDWORD(v265) = v256;
    if (v59)
    {
      goto LABEL_138;
    }

LABEL_155:
    LODWORD(v266) = v255;
    if (v52)
    {
      goto LABEL_145;
    }

    goto LABEL_156;
  }

  v93 = 0;
  if (v54 && (v11 - v5 + (v15 << 6) + v64) <= 0x100)
  {
    v93 = 0;
    v94 = 0;
    v95 = v64;
    do
    {
      v96 = 64 - v11;
      if (64 - v11 >= v95)
      {
        v96 = v95;
      }

      v93 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v96)) << v94;
      v94 += v96;
      v97 = v96 + v11;
      v15 += v97 >> 6;
      v11 = v97 & 0x3F;
      v95 -= v96;
    }

    while (v95);
  }

  LODWORD(v265) = v93 << (10 - v64);
  v92 += v64;
  if (!v58)
  {
    goto LABEL_154;
  }

LABEL_131:
  v98 = 0;
  if (v67 && (v11 - v5 + (v15 << 6) + v73) <= 0x100)
  {
    v98 = 0;
    v99 = 0;
    v100 = v73;
    do
    {
      v101 = 64 - v11;
      if (64 - v11 >= v100)
      {
        v101 = v100;
      }

      v98 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v101)) << v99;
      v99 += v101;
      v15 += (v101 + v11) >> 6;
      v11 = (v101 + v11) & 0x3F;
      v100 -= v101;
    }

    while (v100);
  }

  HIDWORD(v265) = v98 << (10 - v73);
  v92 += v73;
  if (!v59)
  {
    goto LABEL_155;
  }

LABEL_138:
  v102 = 0;
  if (v76 && (v11 - v5 + (v15 << 6) + v82) <= 0x100)
  {
    v102 = 0;
    v103 = 0;
    v104 = v82;
    do
    {
      v105 = 64 - v11;
      if (64 - v11 >= v104)
      {
        v105 = v104;
      }

      v102 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v105)) << v103;
      v103 += v105;
      v15 += (v105 + v11) >> 6;
      v11 = (v105 + v11) & 0x3F;
      v104 -= v105;
    }

    while (v104);
  }

  LODWORD(v266) = v102 << (10 - v82);
  v92 += v82;
  if (v52)
  {
LABEL_145:
    v106 = 0;
    if (v85 && (v11 - v5 + (v15 << 6) + v90) <= 0x100)
    {
      v106 = 0;
      v107 = 0;
      v108 = v90;
      do
      {
        v109 = 64 - v11;
        if (64 - v11 >= v108)
        {
          v109 = v108;
        }

        v106 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v109)) << v107;
        v107 += v109;
        v15 += (v109 + v11) >> 6;
        v11 = (v109 + v11) & 0x3F;
        v108 -= v109;
      }

      while (v108);
    }

    HIDWORD(v266) = v106 << (10 - v90);
    v92 += v90;
    v263 = 0;
    v264 = 0;
    if (!v56)
    {
      goto LABEL_164;
    }

    goto LABEL_157;
  }

LABEL_156:
  HIDWORD(v266) = v254;
  v263 = 0;
  v264 = 0;
  if (v56)
  {
LABEL_157:
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x100)
    {
      v110 = 0;
      v111 = 0;
      v112 = 3;
      do
      {
        v113 = 64 - v11;
        if (64 - v11 >= v112)
        {
          v113 = v112;
        }

        v110 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v113)) << v111;
        v111 += v113;
        v15 += (v113 + v11) >> 6;
        v11 = (v113 + v11) & 0x3F;
        v112 -= v113;
      }

      while (v112);
    }

    else
    {
      v110 = 0;
    }

    LODWORD(v263) = v110;
    v92 += 3;
  }

LABEL_164:
  if (v74)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x100)
    {
      v114 = 0;
      v115 = 0;
      v116 = 3;
      do
      {
        v117 = 64 - v11;
        if (64 - v11 >= v116)
        {
          v117 = v116;
        }

        v114 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v117)) << v115;
        v115 += v117;
        v15 += (v117 + v11) >> 6;
        v11 = (v117 + v11) & 0x3F;
        v116 -= v117;
      }

      while (v116);
    }

    else
    {
      v114 = 0;
    }

    HIDWORD(v263) = v114;
    v92 += 3;
  }

  if (v83)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x100)
    {
      v118 = 0;
      v119 = 0;
      v120 = 3;
      do
      {
        v121 = 64 - v11;
        if (64 - v11 >= v120)
        {
          v121 = v120;
        }

        v118 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v121)) << v119;
        v119 += v121;
        v15 += (v121 + v11) >> 6;
        v11 = (v121 + v11) & 0x3F;
        v120 -= v121;
      }

      while (v120);
    }

    else
    {
      v118 = 0;
    }

    LODWORD(v264) = v118;
    v92 += 3;
  }

  if (v87)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x100)
    {
      v122 = 0;
      v123 = 0;
      v124 = 3;
      do
      {
        v125 = 64 - v11;
        if (64 - v11 >= v124)
        {
          v125 = v124;
        }

        v122 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v125)) << v123;
        v123 += v125;
        v15 += (v125 + v11) >> 6;
        v11 = (v125 + v11) & 0x3F;
        v124 -= v125;
      }

      while (v124);
    }

    else
    {
      v122 = 0;
    }

    HIDWORD(v264) = v122;
    v92 += 3;
  }

  v126 = 0;
  v127 = a3 & 0xFFFFFFFD;
  v128 = 256 - v92;
  v129 = (9363 * (256 - v92)) >> 16;
  v130 = (v11 | (v15 << 6)) + -7 * v129 + v128;
  memset(v262, 0, sizeof(v262));
  do
  {
    v133 = v130 >> 6;
    v134 = v130 & 0x3F;
    if (v56)
    {
      if (v134 - v5 + (v130 & 0xFFFFFFFFFFFFFFC0) + v56 <= 0x100)
      {
        v135 = 0;
        v136 = 0;
        v137 = v56;
        do
        {
          v138 = 64 - v134;
          if (64 - v134 >= v137)
          {
            v138 = v137;
          }

          v135 |= ((*(v4 + 8 * v133) >> v134) & ~(-1 << v138)) << v136;
          v136 += v138;
          v139 = v138 + v134;
          v133 += v139 >> 6;
          v134 = v139 & 0x3F;
          v137 -= v138;
        }

        while (v137);
      }

      else
      {
        v135 = 0;
      }

      *(v262 + v126) = v135;
    }

    v140 = v262 + v126;
    if (!v74)
    {
      v132 = v56;
      if (!v83)
      {
        goto LABEL_217;
      }

LABEL_210:
      if (v134 - v5 + (v133 << 6) + v83 <= 0x100)
      {
        v146 = 0;
        v147 = 0;
        v148 = v83;
        do
        {
          v149 = 64 - v134;
          if (64 - v134 >= v148)
          {
            v149 = v148;
          }

          v146 |= ((*(v4 + 8 * v133) >> v134) & ~(-1 << v149)) << v147;
          v147 += v149;
          v150 = v149 + v134;
          v133 += v150 >> 6;
          v134 = v150 & 0x3F;
          v148 -= v149;
        }

        while (v148);
      }

      else
      {
        v146 = 0;
      }

      v140[14] = v146;
      v132 += v83;
      goto LABEL_217;
    }

    if (v134 - v5 + (v133 << 6) + v74 <= 0x100)
    {
      v141 = 0;
      v142 = 0;
      v143 = v74;
      do
      {
        v144 = 64 - v134;
        if (64 - v134 >= v143)
        {
          v144 = v143;
        }

        v141 |= ((*(v4 + 8 * v133) >> v134) & ~(-1 << v144)) << v142;
        v142 += v144;
        v145 = v144 + v134;
        v133 += v145 >> 6;
        v134 = v145 & 0x3F;
        v143 -= v144;
      }

      while (v143);
    }

    else
    {
      v141 = 0;
    }

    v140[7] = v141;
    v132 = v74 + v56;
    if (v83)
    {
      goto LABEL_210;
    }

LABEL_217:
    if (v87)
    {
      if (v134 - v5 + (v133 << 6) + v87 > 0x100)
      {
        v131 = 0;
      }

      else
      {
        v131 = 0;
        v151 = 0;
        v152 = v87;
        do
        {
          v153 = 64 - v134;
          if (64 - v134 >= v152)
          {
            v153 = v152;
          }

          v131 |= ((*(v4 + 8 * v133) >> v134) & ~(-1 << v153)) << v151;
          v151 += v153;
          v154 = v153 + v134;
          v133 += v154 >> 6;
          v134 = v154 & 0x3F;
          v152 -= v153;
        }

        while (v152);
      }

      v140[21] = v131;
      v132 += v87;
    }

    v130 = (v134 | (v133 << 6)) + v129 - v132;
    ++v126;
  }

  while (v126 != 7);
  v155 = 0;
  v156 = 0;
  v157 = a2 + 112;
  do
  {
    v162 = *&kDQuadParamTable[160 * v274[v155 / 4] + 2 + 10 * v275[v155 / 4]];
    v163 = v267[v155 / 4];
    if (v162 >> v163 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v162 >> v163;
    }

    v164 = v273[v155 / 4];
    v165 = result >> 1;
    if (result >> 1 >= (1 << (v164 - v268[v155 / 4])) >> 1)
    {
      v166 = (1 << (v164 - v268[v155 / 4])) >> 1;
    }

    else
    {
      v166 = result >> 1;
    }

    v167 = (1 << (v164 - 1));
    v168 = *(&v265 + v155);
    v169 = v167 - v168;
    v170 = 1 << v164;
    v171 = (1 << v164) + 0xFFFFFFFFLL;
    if (v168)
    {
      v172 = v166;
    }

    else
    {
      v172 = 0;
    }

    v173 = v168 == v167;
    v174 = v164 == 16;
    if (v164 == 16)
    {
      v175 = 31744;
    }

    else
    {
      v175 = 2139095040;
    }

    if (v164 == 16)
    {
      v176 = 64512;
    }

    else
    {
      v176 = 4286578688;
    }

    v177 = 2143289344;
    if (v174)
    {
      v177 = 32256;
    }

    v178 = 65024;
    if (!v174)
    {
      v178 = 4290772992;
    }

    v179 = (v176 - 1);
    if (v163)
    {
      v180 = v162 + v168;
      v181 = -1 << v163;
      v182 = *(&v263 + v155);
      v183 = v169 / result;
      if (!v182)
      {
        v191 = 0;
        v186 = v172;
        v185 = v168 == v167;
        goto LABEL_294;
      }

      v184 = *(v262 + v156);
      v185 = v183 == v184;
      if (v168 | v184)
      {
        if (v180 >= v170 && (v181 ^ v184) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v191 = 1;
          v186 = v170 - 1;
          goto LABEL_294;
        }

        v186 = v165 + result * v184;
      }

      else
      {
        v186 = 0;
      }

      v191 = 1;
LABEL_294:
      v194 = v186 + v168;
      v195 = v194;
      if (a3 == 4)
      {
        v196 = v194 < v175 || v194 >= v177;
        v195 = (v175 - 1);
        if (v196)
        {
          v197 = v194 < v177 || v194 >= v167;
          v195 = v167;
          if (v197)
          {
            if (v194 < v178 && v194 >= v176)
            {
              v195 = (v176 - 1);
            }

            else
            {
              v195 = v194;
            }
          }
        }
      }

      if (v195 >= v170)
      {
        v199 = v170 - 1;
      }

      else
      {
        v199 = v195;
      }

      if (v185)
      {
        v200 = 0;
      }

      else
      {
        v200 = v199 ^ v167;
      }

      if (v127 != 1)
      {
        v200 = v199;
      }

      *(a2 + v155) = v200;
      if (v182 == 1)
      {
        v201 = v172;
        v202 = v168 == v167;
      }

      else
      {
        v203 = *((v262 | (4 * v191)) + v156);
        v202 = v183 == v203;
        if (v168 | v203)
        {
          if (v180 < v170 || (v201 = v170 - 1, (v181 ^ v203) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v201 = v165 + result * v203;
          }
        }

        else
        {
          v201 = 0;
        }

        ++v191;
      }

      v204 = v201 + v168;
      v205 = v204;
      if (a3 == 4)
      {
        v206 = v204 < v175 || v204 >= v177;
        v205 = (v175 - 1);
        if (v206)
        {
          v207 = v204 < v177 || v204 >= v167;
          v205 = v167;
          if (v207)
          {
            if (v204 < v178 && v204 >= v176)
            {
              v205 = (v176 - 1);
            }

            else
            {
              v205 = v204;
            }
          }
        }
      }

      if (v205 >= v170)
      {
        v209 = v170 - 1;
      }

      else
      {
        v209 = v205;
      }

      if (v202)
      {
        v210 = 0;
      }

      else
      {
        v210 = v209 ^ v167;
      }

      if (v127 != 1)
      {
        v210 = v209;
      }

      *(v157 + v155 - 96) = v210;
      if (v182 == 2)
      {
        v211 = v172;
        v212 = v168 == v167;
      }

      else
      {
        v213 = *((v262 | (4 * v191)) + v156);
        v212 = v183 == v213;
        if (v168 | v213)
        {
          if (v180 < v170 || (v211 = v170 - 1, (v181 ^ v213) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v211 = v165 + result * v213;
          }
        }

        else
        {
          v211 = 0;
        }

        ++v191;
      }

      v214 = v211 + v168;
      v215 = v214;
      if (a3 == 4)
      {
        if (v214 < v175 || (v215 = (v175 - 1), v214 >= v177))
        {
          if (v214 < v177 || (v215 = v167, v214 >= v167))
          {
            if (v214 < v178 && v214 >= v176)
            {
              v215 = (v176 - 1);
            }

            else
            {
              v215 = v214;
            }
          }
        }
      }

      if (v215 >= v170)
      {
        v217 = v170 - 1;
      }

      else
      {
        v217 = v215;
      }

      if (v212)
      {
        v218 = 0;
      }

      else
      {
        v218 = v217 ^ v167;
      }

      if (v127 != 1)
      {
        v218 = v217;
      }

      *(v157 + v155 - 80) = v218;
      if (v182 == 3)
      {
        v219 = v172;
        v220 = v168 == v167;
      }

      else
      {
        v221 = *(v262 + 4 * v191 + v156);
        v220 = v183 == v221;
        if (v168 | v221)
        {
          if (v180 < v170 || (v219 = v170 - 1, (v181 ^ v221) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v165 + result * v221;
          }
        }

        else
        {
          v219 = 0;
        }

        ++v191;
      }

      v222 = v219 + v168;
      v223 = v222;
      if (a3 == 4)
      {
        if (v222 < v175 || (v223 = (v175 - 1), v222 >= v177))
        {
          if (v222 < v177 || (v223 = v167, v222 >= v167))
          {
            if (v222 < v178 && v222 >= v176)
            {
              v223 = (v176 - 1);
            }

            else
            {
              v223 = v222;
            }
          }
        }
      }

      if (v223 >= v170)
      {
        v225 = v170 - 1;
      }

      else
      {
        v225 = v223;
      }

      if (v220)
      {
        v226 = 0;
      }

      else
      {
        v226 = v225 ^ v167;
      }

      if (v127 != 1)
      {
        v226 = v225;
      }

      *(v157 + v155 - 64) = v226;
      if (v182 == 4)
      {
        v227 = v172;
        v228 = v168 == v167;
      }

      else
      {
        v229 = *(v262 + 4 * v191 + v156);
        v228 = v183 == v229;
        if (v168 | v229)
        {
          if (v180 < v170 || (v227 = v170 - 1, (v181 ^ v229) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v227 = v165 + result * v229;
          }
        }

        else
        {
          v227 = 0;
        }

        ++v191;
      }

      v230 = v227 + v168;
      v231 = v230;
      if (a3 == 4)
      {
        if (v230 < v175 || (v231 = (v175 - 1), v230 >= v177))
        {
          if (v230 < v177 || (v231 = v167, v230 >= v167))
          {
            if (v230 < v178 && v230 >= v176)
            {
              v231 = (v176 - 1);
            }

            else
            {
              v231 = v230;
            }
          }
        }
      }

      if (v231 >= v170)
      {
        v233 = v170 - 1;
      }

      else
      {
        v233 = v231;
      }

      if (v228)
      {
        v234 = 0;
      }

      else
      {
        v234 = v233 ^ v167;
      }

      if (v127 != 1)
      {
        v234 = v233;
      }

      *(v157 + v155 - 48) = v234;
      if (v182 == 5)
      {
        v235 = v172;
        v236 = v168 == v167;
      }

      else
      {
        v237 = *(v262 + 4 * v191 + v156);
        v236 = v183 == v237;
        if (v168 | v237)
        {
          if (v180 < v170 || (v235 = v170 - 1, (v181 ^ v237) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v235 = v165 + result * v237;
          }
        }

        else
        {
          v235 = 0;
        }

        ++v191;
      }

      v238 = v235 + v168;
      v239 = v238;
      if (a3 == 4)
      {
        if (v238 < v175 || (v239 = (v175 - 1), v238 >= v177))
        {
          if (v238 < v177 || (v239 = v167, v238 >= v167))
          {
            if (v238 < v178 && v238 >= v176)
            {
              v239 = (v176 - 1);
            }

            else
            {
              v239 = v238;
            }
          }
        }
      }

      if (v239 >= v170)
      {
        v241 = v170 - 1;
      }

      else
      {
        v241 = v239;
      }

      if (v236)
      {
        v242 = 0;
      }

      else
      {
        v242 = v241 ^ v167;
      }

      if (v127 != 1)
      {
        v242 = v241;
      }

      *(v157 + v155 - 32) = v242;
      if (v182 == 6)
      {
        v243 = v172;
        v244 = v168 == v167;
      }

      else
      {
        v245 = *(v262 + 4 * v191 + v156);
        v244 = v183 == v245;
        if (v168 | v245)
        {
          if (v180 < v170 || (v243 = v170 - 1, (v181 ^ v245) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v243 = v165 + result * v245;
          }
        }

        else
        {
          v243 = 0;
        }

        ++v191;
      }

      v246 = v243 + v168;
      v247 = v246;
      if (a3 == 4)
      {
        if (v246 < v175 || (v247 = (v175 - 1), v246 >= v177))
        {
          if (v246 < v177 || (v247 = v167, v246 >= v167))
          {
            if (v246 < v178 && v246 >= v176)
            {
              v247 = (v176 - 1);
            }

            else
            {
              v247 = v246;
            }
          }
        }
      }

      if (v247 >= v170)
      {
        v249 = v170 - 1;
      }

      else
      {
        v249 = v247;
      }

      if (v244)
      {
        v250 = 0;
      }

      else
      {
        v250 = v249 ^ v167;
      }

      if (v127 != 1)
      {
        v250 = v249;
      }

      *(v157 + v155 - 16) = v250;
      if (v182 != 7)
      {
        v251 = *(v262 + 4 * v191 + v156);
        v173 = v183 == v251;
        if (v168 | v251)
        {
          if (v180 >= v170 && (v181 ^ v251) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v172 = v170 - 1;
          }

          else
          {
            v172 = v165 + result * v251;
          }
        }

        else
        {
          v172 = 0;
        }
      }

      v252 = v172 + v168;
      result = v172 + v168;
      if (a3 == 4)
      {
        if (v252 < v175 || (result = (v175 - 1), v252 >= v177))
        {
          if (v252 < v177 || (result = v167, v252 >= v167))
          {
            if (v252 < v178 && v252 >= v176)
            {
              result = (v176 - 1);
            }

            else
            {
              result = v172 + v168;
            }
          }
        }
      }

      if (result >= v170)
      {
        v160 = v170 - 1;
      }

      else
      {
        v160 = result;
      }

      v161 = v160 ^ v167;
      if (v173)
      {
        v161 = 0;
      }

      if (v127 == 1)
      {
        v160 = v161;
      }

      goto LABEL_238;
    }

    v188 = v177 <= v168 && v168 < v167;
    v190 = v168 >= v176 && v178 > v168;
    if (a3 == 4)
    {
      if (v168 < v175 || v177 <= v168)
      {
        if (v188)
        {
          if (v170 <= v167)
          {
            v160 = v171;
          }

          else
          {
            v160 = v167;
          }
        }

        else
        {
          if (v190)
          {
            v253 = v179;
          }

          else
          {
            v253 = *(&v265 + v155);
          }

          if (v253 >= v170)
          {
            v160 = v171;
          }

          else
          {
            v160 = v253;
          }
        }
      }

      else if (v170 <= (v175 - 1))
      {
        v160 = v171;
      }

      else
      {
        v160 = v175 - 1;
      }
    }

    else
    {
      if (v170 <= v168)
      {
        v160 = v170 - 1;
      }

      else
      {
        v160 = *(&v265 + v155);
      }

      v192 = v160 ^ v167;
      if (result > v169)
      {
        v192 = 0;
      }

      if (v127 == 1)
      {
        v160 = v192;
      }
    }

    v193 = v157 + v155;
    *(v193 - 112) = v160;
    *(v193 - 96) = v160;
    *(v193 - 80) = v160;
    *(v193 - 64) = v160;
    *(v193 - 48) = v160;
    *(v193 - 32) = v160;
    *(v193 - 16) = v160;
LABEL_238:
    *(v157 + v155) = v160;
    v156 += 28;
    v155 += 4;
  }

  while (v156 != 112);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v714 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v11 = (a1 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + 2 * a2 + a2);
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    return result;
  }

  v7 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v687, a5);
    }

    *v695.i8 = vmovn_s32(v687);
    v695.u64[1] = vmovn_s32(v689);
    *v697.i8 = vmovn_s32(v688);
    v697.u64[1] = vmovn_s32(v690);
    v699[0] = vmovn_s32(v691);
    v699[1] = vmovn_s32(v693);
    v700[0] = vmovn_s32(v692);
    v700[1] = vmovn_s32(v694);
    v20 = a3 + 32;
    if ((v7 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v20, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v20, &v687, a5);
    }

    *v696.i8 = vmovn_s32(v687);
    v696.u64[1] = vmovn_s32(v689);
    *v698.i8 = vmovn_s32(v688);
    v698.u64[1] = vmovn_s32(v690);
    v699[2] = vmovn_s32(v691);
    v699[3] = vmovn_s32(v693);
    v700[2] = vmovn_s32(v692);
    v700[3] = vmovn_s32(v694);
    v21 = a3 + 64;
    if ((v7 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v21, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v21, &v687, a5);
    }

    v701[0] = vmovn_s32(v687);
    v701[1] = vmovn_s32(v689);
    v702[0] = vmovn_s32(v688);
    v702[1] = vmovn_s32(v690);
    *v703.i8 = vmovn_s32(v691);
    v703.u64[1] = vmovn_s32(v693);
    *v705.i8 = vmovn_s32(v692);
    v705.u64[1] = vmovn_s32(v694);
    v22 = a3 + 96;
    if ((v7 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v22, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v22, &v687, a5);
    }

    v701[2] = vmovn_s32(v687);
    v701[3] = vmovn_s32(v689);
    v702[2] = vmovn_s32(v688);
    v702[3] = vmovn_s32(v690);
    *v704.i8 = vmovn_s32(v691);
    v704.u64[1] = vmovn_s32(v693);
    v23 = (a1 + 2);
    v24 = -32;
    *v706.i8 = vmovn_s32(v692);
    v706.u64[1] = vmovn_s32(v694);
    do
    {
      v25 = (((v699[v24 / 8] & 0x3FF) << 6) | (WORD1(v699[v24 / 8]) << 22) | (WORD2(v699[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v699[v24 / 8]) << 54);
      *(v23 - 4) = (((v697.i16[v24 / 2] & 0x3FF) << 6) | (v697.u16[v24 / 2 + 1] << 22) | (v697.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v697.u16[v24 / 2 + 3] << 54);
      *(v23 - 3) = v25;
      v26 = (((v701[v24 / 8] & 0x3FF) << 6) | (WORD1(v701[v24 / 8]) << 22) | (WORD2(v701[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v701[v24 / 8]) << 54);
      *(v23 - 2) = (((v700[v24 / 8] & 0x3FF) << 6) | (WORD1(v700[v24 / 8]) << 22) | (WORD2(v700[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v700[v24 / 8]) << 54);
      *(v23 - 1) = v26;
      v27 = (((v703.i16[v24 / 2] & 0x3FF) << 6) | (v703.u16[v24 / 2 + 1] << 22) | (v703.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v703.u16[v24 / 2 + 3] << 54);
      *v23 = (((v702[v24 / 8] & 0x3FF) << 6) | (WORD1(v702[v24 / 8]) << 22) | (WORD2(v702[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v702[v24 / 8]) << 54);
      v23[1] = v27;
      v28 = (((v707.i16[v24 / 2] & 0x3FF) << 6) | (v707.u16[v24 / 2 + 1] << 22) | (v707.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v707.u16[v24 / 2 + 3] << 54);
      v23[2] = (((v705.i16[v24 / 2] & 0x3FF) << 6) | (v705.u16[v24 / 2 + 1] << 22) | (v705.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v705.u16[v24 / 2 + 3] << 54);
      v23[3] = v28;
      v23 = (v23 + a2);
      v24 += 8;
    }

    while (v24);
    return 128;
  }

  if (a4 != 159)
  {
    if (a4 == 4)
    {
      v14 = vld1q_dup_f64(a3);
      v15 = vorrq_s8(vandq_s8(vshlq_u64(v14, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v14, xmmword_29D2F1410), xmmword_29D2F1420));
      v16 = vdupq_n_s64(*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)));
      *a1 = v16;
      a1[1] = v16;
      a1[2] = v16;
      a1[3] = v16;
      v17 = (a1 + a2);
      *v17 = v16;
      v17[1] = v16;
      v17[2] = v16;
      v17[3] = v16;
      v18 = (a1 + 2 * a2);
      *v18 = v16;
      v18[1] = v16;
      v18[2] = v16;
      v18[3] = v16;
      v19 = (a1 + 2 * a2 + a2);
      *v19 = v16;
      v19[1] = v16;
      v19[2] = v16;
      v19[3] = v16;
      return 5;
    }

    v688.i8[8] = 0;
    v688.i64[0] = (8 * (a3 & 7)) | 0x400;
    v687.i64[0] = 8 * (a3 & 7);
    v687.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v708, v713, &v707, &v687, a4);
    v260.i64[0] = 0x3000300030003;
    v260.i64[1] = 0x3000300030003;
    v261 = vandq_s8(v708, v260);
    v262 = vbicq_s8(v713[0], vceqq_s16(v261, v260));
    v713[0] = v262;
    v709 = v262;
    v710 = v262;
    v711 = v262;
    v712 = v262;
    v263.i64[0] = 0x202020202020202;
    v263.i64[1] = 0x202020202020202;
    v264 = vandq_s8(vmovl_s16(vtst_s16(*v708.i8, 0x4000400040004)), v263);
    v265 = v687.i64[0];
    if (vmaxvq_s8(v264) < 1)
    {
      v282.i64[0] = -1;
      v282.i64[1] = -1;
      v283.i64[0] = -1;
      v283.i64[1] = -1;
      v284.i64[0] = -1;
      v284.i64[1] = -1;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
    }

    else
    {
      v266 = vmovl_u8(*&vpaddq_s8(v264, v264));
      v267 = vmovl_u16(*&vpaddq_s16(v266, v266));
      v268 = vpaddq_s32(v267, v267).u64[0];
      v269.i64[0] = v268;
      v269.i64[1] = HIDWORD(v268);
      v270 = v269;
      v271 = vaddvq_s64(v269);
      v272 = v271;
      v273 = v687.i64[0] + v271;
      if (v688.i64[0])
      {
        v274 = v688.i64[0] >= v273;
      }

      else
      {
        v274 = 1;
      }

      v275 = v274;
      if (v271 <= 0x80 && (v275 & 1) != 0)
      {
        v259.i64[0] = 63;
        v276 = (v687.i64[1] + 8 * (v687.i64[0] >> 6));
        v277 = vaddq_s64(vdupq_lane_s64(vandq_s8(v687.u64[0], v259).i64[0], 0), vzip1q_s64(0, v270));
        v278 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v276, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v276->i64[0], 0), vnegq_s64(v277)));
        if ((v687.i8[0] & 0x3F) + v272 >= 0x81)
        {
          v278 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v276[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v276[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v278);
        }

        v687.i64[0] = v273;
        v265 = v273;
      }

      else
      {
        v688.i8[8] = 1;
        v278 = 0uLL;
      }

      v286 = vzip1_s32(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
      v287.i64[0] = v286.u32[0];
      v287.i64[1] = v286.u32[1];
      v288 = vshlq_u64(v278, vnegq_s64(v287));
      v289 = vuzp1q_s32(vzip1q_s64(v278, v288), vzip2q_s64(v278, v288));
      v290 = vshlq_u32(v289, vnegq_s32((*&v266 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v291 = vuzp1q_s16(vzip1q_s32(v289, v290), vzip2q_s32(v289, v290));
      v292 = vshlq_u16(v291, vnegq_s16((*&v264 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v293 = vuzp1q_s8(vzip1q_s16(v291, v292), vzip2q_s16(v291, v292));
      v292.i64[0] = 0x101010101010101;
      v292.i64[1] = 0x101010101010101;
      v294 = vshlq_s8(v292, v264);
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v295 = vqtbl1q_s8(vandq_s8(vaddq_s8(v294, v292), v293), xmmword_29D2F0F70);
      *v293.i8 = vdup_lane_s32(*v295.i8, 0);
      *v292.i8 = vdup_lane_s32(*v295.i8, 1);
      v296 = vdupq_laneq_s32(v295, 2).u64[0];
      v297 = vdupq_laneq_s32(v295, 3).u64[0];
      v709 = vsubw_s8(v709, *v293.i8);
      v710 = vsubw_s8(v710, *v292.i8);
      v711 = vsubw_s8(v711, v296);
      v712 = vsubw_s8(v712, v297);
      v285 = vmovl_s8(vceqz_s8(*v293.i8));
      v284 = vmovl_s8(vceqz_s8(*v292.i8));
      v283 = vmovl_s8(vceqz_s8(v296));
      v282 = vmovl_s8(vceqz_s8(v297));
    }

    v298.i64[0] = 0x8000800080008;
    v298.i64[1] = 0x8000800080008;
    v299 = 0uLL;
    v300 = vandq_s8(vextq_s8(vtstq_s16(v708, v298), 0, 8uLL), v262);
    v301 = vmovl_u16(*&vpaddq_s16(v300, v300));
    v302 = vpaddq_s32(v301, v301).u64[0];
    v303.i64[0] = v302;
    v303.i64[1] = HIDWORD(v302);
    v304 = v303;
    v305 = vaddvq_s64(v303);
    v306 = v265 + v305;
    if (v688.i64[0])
    {
      v307 = v688.i64[0] >= v306;
    }

    else
    {
      v307 = 1;
    }

    v308 = v307;
    if (v305 <= 0x80 && (v308 & 1) != 0)
    {
      v309 = v265 & 0x3F;
      v310 = vaddq_s64(vdupq_n_s64(v309), vzip1q_s64(0, v304));
      v311 = (v687.i64[1] + 8 * (v265 >> 6));
      v299 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v311, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v310)), vshlq_u64(vdupq_lane_s64(v311->i64[0], 0), vnegq_s64(v310)));
      if (v309 + v305 >= 0x81)
      {
        v299 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v311[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v310)), vshlq_u64(vdupq_laneq_s64(v311[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v310))), v299);
      }

      v265 = v306;
    }

    else
    {
      v688.i8[8] = 1;
    }

    v312 = vzip1_s32(*v301.i8, *&vextq_s8(v301, v301, 8uLL));
    v313.i64[0] = v312.u32[0];
    v313.i64[1] = v312.u32[1];
    v314 = vshlq_u64(v299, vnegq_s64(v313));
    v315 = vuzp1q_s32(vzip1q_s64(v299, v314), vzip2q_s64(v299, v314));
    v316.i64[0] = 0xFFFF0000FFFFLL;
    v316.i64[1] = 0xFFFF0000FFFFLL;
    v317 = vshlq_u32(v315, vnegq_s32(vandq_s8(v300, v316)));
    v318 = vuzp1q_s16(vzip1q_s32(v315, v317), vzip2q_s32(v315, v317));
    v317.i64[0] = 0xF000F000F000FLL;
    v317.i64[1] = 0xF000F000F000FLL;
    v319.i64[0] = 0x10001000100010;
    v319.i64[1] = 0x10001000100010;
    v320 = vshlq_s16(vshlq_s16(v318, vsubq_s16(v319, v300)), vaddq_s16(v300, v317));
    v713[3] = v320;
    v321 = v708.i8[0] & 3;
    if (v321 == 2)
    {
      if (!v688.i64[0])
      {
        v322 = v265 + 16;
LABEL_94:
        v323 = 0uLL;
        v324 = vextq_s8(0, v709, 8uLL);
        v325 = vmovl_u16(*&vpaddq_s16(v324, v324));
        v326 = vpaddq_s32(v325, v325).u64[0];
        v327.i64[0] = v326;
        v327.i64[1] = HIDWORD(v326);
        v328 = v327;
        v329 = vaddvq_s64(v327);
        if (v688.i64[0])
        {
          v330 = v688.i64[0] >= v322 + v329;
        }

        else
        {
          v330 = 1;
        }

        v331 = v330;
        if (v329 <= 0x80 && (v331 & 1) != 0)
        {
          v332 = vaddq_s64(vdupq_n_s64(v322 & 0x3F), vzip1q_s64(0, v328));
          v333 = v687.i64[1];
          v334 = (v687.i64[1] + 8 * (v322 >> 6));
          v323 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v334, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v332)), vshlq_u64(vdupq_lane_s64(v334->i64[0], 0), vnegq_s64(v332)));
          if ((v322 & 0x3F) + v329 >= 0x81)
          {
            v323 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v334[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v332)), vshlq_u64(vdupq_laneq_s64(v334[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v332))), v323);
          }

          v335 = v688.i8[8];
          v322 += v329;
        }

        else
        {
          v335 = 1;
          v333 = v687.i64[1];
        }

        v336.i64[0] = 0xFFFF0000FFFFLL;
        v336.i64[1] = 0xFFFF0000FFFFLL;
        v337.i64[0] = 0xF000F000F000FLL;
        v337.i64[1] = 0xF000F000F000FLL;
        v338.i64[0] = 0x10001000100010;
        v338.i64[1] = 0x10001000100010;
        v339 = vmovl_u16(*&vpaddq_s16(v709, v709));
        v340 = vpaddq_s32(v339, v339).u64[0];
        v341.i64[0] = v340;
        v341.i64[1] = HIDWORD(v340);
        v342 = v341;
        v343 = vaddvq_s64(v341);
        v344 = v343;
        v345 = v322 + v343;
        if (v688.i64[0])
        {
          v346 = v688.i64[0] >= v345;
        }

        else
        {
          v346 = 1;
        }

        v347 = v346;
        v348 = 0uLL;
        if (v343 <= 0x80 && v347)
        {
          v349 = v322 & 0x3F;
          v350 = vaddq_s64(vdupq_n_s64(v349), vzip1q_s64(0, v342));
          v351 = (v333 + 8 * (v322 >> 6));
          v352 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v351, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v350)), vshlq_u64(vdupq_lane_s64(v351->i64[0], 0), vnegq_s64(v350)));
          if (v349 + v344 >= 0x81)
          {
            v352 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v351[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v350)), vshlq_u64(vdupq_laneq_s64(v351[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v350))), v352);
          }
        }

        else
        {
          v335 = 1;
          v345 = v322;
          v352 = 0uLL;
        }

        v353 = vzip1_s32(*v339.i8, *&vextq_s8(v339, v339, 8uLL));
        v354.i64[0] = v353.u32[0];
        v354.i64[1] = v353.u32[1];
        v355 = vnegq_s64(v354);
        v356 = vshlq_u64(v352, v355);
        v357 = vuzp1q_s32(vzip1q_s64(v352, v356), vzip2q_s64(v352, v356));
        v358 = vnegq_s32(vandq_s8(v709, v336));
        v359 = vshlq_u32(v357, v358);
        v360 = vuzp1q_s16(vzip1q_s32(v357, v359), vzip2q_s32(v357, v359));
        v361 = vaddq_s16(v709, v337);
        v362 = vsubq_s16(v338, v709);
        v363 = vshlq_s16(vshlq_s16(v360, v362), v361);
        v696 = v363;
        v364 = v345 + v344;
        if (v688.i64[0])
        {
          v365 = v688.i64[0] >= v364;
        }

        else
        {
          v365 = 1;
        }

        v366 = v365;
        if (v344 <= 0x80 && v366)
        {
          v367 = v345 & 0x3F;
          v368 = vaddq_s64(vdupq_n_s64(v367), vzip1q_s64(0, v342));
          v369 = (v333 + 8 * (v345 >> 6));
          v348 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v369, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v368)), vshlq_u64(vdupq_lane_s64(v369->i64[0], 0), vnegq_s64(v368)));
          if (v367 + v344 >= 0x81)
          {
            v348 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v369[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v368)), vshlq_u64(vdupq_laneq_s64(v369[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v368))), v348);
          }
        }

        else
        {
          v335 = 1;
          v364 = v345;
        }

        v370 = vshlq_u64(v348, v355);
        v371 = vuzp1q_s32(vzip1q_s64(v348, v370), vzip2q_s64(v348, v370));
        v372 = vshlq_u32(v371, v358);
        v373 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v371, v372), vzip2q_s32(v371, v372)), v362), v361);
        v697 = v373;
        v374 = v364 + v344;
        if (v688.i64[0])
        {
          v375 = v688.i64[0] >= v374;
        }

        else
        {
          v375 = 1;
        }

        v376 = v375;
        v377 = 0uLL;
        if (v344 <= 0x80 && v376)
        {
          v378 = v364 & 0x3F;
          v379 = vaddq_s64(vdupq_n_s64(v378), vzip1q_s64(0, v342));
          v380 = (v333 + 8 * (v364 >> 6));
          v381 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v380, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v379)), vshlq_u64(vdupq_lane_s64(v380->i64[0], 0), vnegq_s64(v379)));
          if (v378 + v344 >= 0x81)
          {
            v381 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v380[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v379)), vshlq_u64(vdupq_laneq_s64(v380[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v379))), v381);
          }
        }

        else
        {
          v335 = 1;
          v374 = v364;
          v381 = 0uLL;
        }

        v382 = vshlq_u64(v381, v355);
        v383 = vuzp1q_s32(vzip1q_s64(v381, v382), vzip2q_s64(v381, v382));
        v384 = vshlq_u32(v383, v358);
        v385 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v383, v384), vzip2q_s32(v383, v384)), v362), v361);
        v698 = v385;
        v386 = vmovl_u16(*&vpaddq_s16(v710, v710));
        v383.i64[0] = vpaddq_s32(v386, v386).u64[0];
        v387.i64[0] = v383.u32[0];
        v387.i64[1] = v383.u32[1];
        v388 = v387;
        v389 = vaddvq_s64(v387);
        v390 = v389;
        v391 = v374 + v389;
        if (v688.i64[0])
        {
          v392 = v688.i64[0] >= v391;
        }

        else
        {
          v392 = 1;
        }

        v393 = v392;
        if (v389 <= 0x80 && v393)
        {
          v394 = v374 & 0x3F;
          v395 = vaddq_s64(vdupq_n_s64(v394), vzip1q_s64(0, v388));
          v396 = (v333 + 8 * (v374 >> 6));
          v377 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v396, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v395)), vshlq_u64(vdupq_lane_s64(v396->i64[0], 0), vnegq_s64(v395)));
          if (v394 + v390 >= 0x81)
          {
            v377 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v396[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v395)), vshlq_u64(vdupq_laneq_s64(v396[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v395))), v377);
          }
        }

        else
        {
          v335 = 1;
          v391 = v374;
        }

        v397 = v391 + v390;
        if (v688.i64[0])
        {
          v398 = v688.i64[0] >= v397;
        }

        else
        {
          v398 = 1;
        }

        v399 = v398;
        v400 = 0uLL;
        if (v390 <= 0x80 && v399)
        {
          v401 = v391 & 0x3F;
          v402 = vaddq_s64(vdupq_n_s64(v401), vzip1q_s64(0, v388));
          v403 = (v333 + 8 * (v391 >> 6));
          v404 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v403, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v402)), vshlq_u64(vdupq_lane_s64(v403->i64[0], 0), vnegq_s64(v402)));
          if (v401 + v390 >= 0x81)
          {
            v404 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v403[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v402)), vshlq_u64(vdupq_laneq_s64(v403[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v402))), v404);
          }
        }

        else
        {
          v335 = 1;
          v397 = v391;
          v404 = 0uLL;
        }

        v405 = v397 + v390;
        if (v688.i64[0])
        {
          v406 = v688.i64[0] >= v405;
        }

        else
        {
          v406 = 1;
        }

        v407 = v406;
        if (v390 <= 0x80 && v407)
        {
          v408 = v397 & 0x3F;
          v409 = vaddq_s64(vdupq_n_s64(v408), vzip1q_s64(0, v388));
          v410 = (v333 + 8 * (v397 >> 6));
          v400 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v410, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v409)), vshlq_u64(vdupq_lane_s64(v410->i64[0], 0), vnegq_s64(v409)));
          if (v408 + v390 >= 0x81)
          {
            v400 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v410[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v409)), vshlq_u64(vdupq_laneq_s64(v410[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v409))), v400);
          }
        }

        else
        {
          v335 = 1;
          v405 = v397;
        }

        v411 = v405 + v390;
        if (v688.i64[0])
        {
          v412 = v688.i64[0] >= v411;
        }

        else
        {
          v412 = 1;
        }

        v413 = v412;
        v414 = 0uLL;
        v684 = v283;
        v686 = v285;
        v415.i64[0] = 0xFFFF0000FFFFLL;
        v415.i64[1] = 0xFFFF0000FFFFLL;
        if (v390 <= 0x80 && v413)
        {
          v416 = v405 & 0x3F;
          v417 = vaddq_s64(vdupq_n_s64(v416), vzip1q_s64(0, v388));
          v418 = (v333 + 8 * (v405 >> 6));
          v419 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v418, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v417)), vshlq_u64(vdupq_lane_s64(v418->i64[0], 0), vnegq_s64(v417)));
          if (v416 + v390 >= 0x81)
          {
            v419 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v418[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v417)), vshlq_u64(vdupq_laneq_s64(v418[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v417))), v419);
          }
        }

        else
        {
          v335 = 1;
          v411 = v405;
          v419 = 0uLL;
        }

        v420 = vmovl_u16(*&vpaddq_s16(v711, v711));
        v421 = vpaddq_s32(v420, v420).u64[0];
        v422.i64[0] = v421;
        v422.i64[1] = HIDWORD(v421);
        v423 = v422;
        v424 = vaddvq_s64(v422);
        v425 = v424;
        v426 = v411 + v424;
        if (v688.i64[0])
        {
          v427 = v688.i64[0] >= v426;
        }

        else
        {
          v427 = 1;
        }

        v428 = v427;
        if (v424 <= 0x80 && v428)
        {
          v429 = v411 & 0x3F;
          v430 = vaddq_s64(vdupq_n_s64(v429), vzip1q_s64(0, v423));
          v431 = (v333 + 8 * (v411 >> 6));
          v414 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v431, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v430)), vshlq_u64(vdupq_lane_s64(v431->i64[0], 0), vnegq_s64(v430)));
          if (v429 + v425 >= 0x81)
          {
            v414 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v431[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v430)), vshlq_u64(vdupq_laneq_s64(v431[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v430))), v414);
          }
        }

        else
        {
          v335 = 1;
          v426 = v411;
        }

        v432 = v426 + v425;
        if (v688.i64[0])
        {
          v433 = v688.i64[0] >= v432;
        }

        else
        {
          v433 = 1;
        }

        v434 = v433;
        v435 = 0uLL;
        if (v425 <= 0x80 && v434)
        {
          v436 = v426 & 0x3F;
          v437 = vaddq_s64(vdupq_n_s64(v436), vzip1q_s64(0, v423));
          v438 = (v333 + 8 * (v426 >> 6));
          v439 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v438, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v437)), vshlq_u64(vdupq_lane_s64(v438->i64[0], 0), vnegq_s64(v437)));
          if (v436 + v425 >= 0x81)
          {
            v439 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v438[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v437)), vshlq_u64(vdupq_laneq_s64(v438[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v437))), v439);
          }
        }

        else
        {
          v335 = 1;
          v432 = v426;
          v439 = 0uLL;
        }

        v440 = v432 + v425;
        if (v688.i64[0])
        {
          v441 = v688.i64[0] >= v440;
        }

        else
        {
          v441 = 1;
        }

        v442 = v441;
        if (v425 <= 0x80 && v442)
        {
          v443 = v432 & 0x3F;
          v444 = vaddq_s64(vdupq_n_s64(v443), vzip1q_s64(0, v423));
          v445 = (v333 + 8 * (v432 >> 6));
          v435 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v445, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v444)), vshlq_u64(vdupq_lane_s64(v445->i64[0], 0), vnegq_s64(v444)));
          if (v443 + v425 >= 0x81)
          {
            v435 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v445[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v444)), vshlq_u64(vdupq_laneq_s64(v445[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v444))), v435);
          }
        }

        else
        {
          v335 = 1;
          v440 = v432;
        }

        v446 = v440 + v425;
        if (v688.i64[0])
        {
          v447 = v688.i64[0] >= v446;
        }

        else
        {
          v447 = 1;
        }

        v448 = v447;
        v449 = 0uLL;
        v682 = v284;
        if (v425 <= 0x80 && v448)
        {
          v450 = v440 & 0x3F;
          v451 = vaddq_s64(vdupq_n_s64(v450), vzip1q_s64(0, v423));
          v452 = (v333 + 8 * (v440 >> 6));
          v453 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v452, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v451)), vshlq_u64(vdupq_lane_s64(v452->i64[0], 0), vnegq_s64(v451)));
          if (v450 + v425 >= 0x81)
          {
            v453 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v452[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v451)), vshlq_u64(vdupq_laneq_s64(v452[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v451))), v453);
          }
        }

        else
        {
          v335 = 1;
          v446 = v440;
          v453 = 0uLL;
        }

        v454 = vmovl_u16(*&vpaddq_s16(v712, v712));
        v455 = vpaddq_s32(v454, v454).u64[0];
        v456.i64[0] = v455;
        v456.i64[1] = HIDWORD(v455);
        v457 = v456;
        v458 = vaddvq_s64(v456);
        v459 = v458;
        v460 = v446 + v458;
        if (v688.i64[0])
        {
          v461 = v688.i64[0] >= v460;
        }

        else
        {
          v461 = 1;
        }

        v462 = v461;
        if (v458 <= 0x80 && v462)
        {
          v463 = v446 & 0x3F;
          v464 = vaddq_s64(vdupq_n_s64(v463), vzip1q_s64(0, v457));
          v465 = (v333 + 8 * (v446 >> 6));
          v449 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v465, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v464)), vshlq_u64(vdupq_lane_s64(v465->i64[0], 0), vnegq_s64(v464)));
          if (v463 + v459 >= 0x81)
          {
            v449 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v465[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v464)), vshlq_u64(vdupq_laneq_s64(v465[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v464))), v449);
          }
        }

        else
        {
          v335 = 1;
          v460 = v446;
        }

        v466 = v460 + v459;
        if (v688.i64[0])
        {
          v467 = v688.i64[0] >= v466;
        }

        else
        {
          v467 = 1;
        }

        v468 = v467;
        v469 = 0uLL;
        if (v459 <= 0x80 && v468)
        {
          v470 = v460 & 0x3F;
          v471 = vaddq_s64(vdupq_n_s64(v470), vzip1q_s64(0, v457));
          v472 = (v333 + 8 * (v460 >> 6));
          v473 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v472, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v471)), vshlq_u64(vdupq_lane_s64(v472->i64[0], 0), vnegq_s64(v471)));
          if (v470 + v459 >= 0x81)
          {
            v473 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v472[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v471)), vshlq_u64(vdupq_laneq_s64(v472[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v471))), v473);
          }
        }

        else
        {
          v335 = 1;
          v466 = v460;
          v473 = 0uLL;
        }

        v474 = v466 + v459;
        if (v688.i64[0])
        {
          v475 = v688.i64[0] >= v474;
        }

        else
        {
          v475 = 1;
        }

        v476 = v475;
        if (v459 <= 0x80 && v476)
        {
          v477 = v466 & 0x3F;
          v478 = vaddq_s64(vdupq_n_s64(v477), vzip1q_s64(0, v457));
          v479 = (v333 + 8 * (v466 >> 6));
          v469 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v479, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v478)), vshlq_u64(vdupq_lane_s64(v479->i64[0], 0), vnegq_s64(v478)));
          if (v477 + v459 >= 0x81)
          {
            v469 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v479[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v478)), vshlq_u64(vdupq_laneq_s64(v479[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v478))), v469);
          }
        }

        else
        {
          v335 = 1;
          v474 = v466;
        }

        v480 = v474 + v459;
        if (v688.i64[0])
        {
          v481 = v688.i64[0] >= v480;
        }

        else
        {
          v481 = 1;
        }

        v482 = v481;
        if (v459 > 0x80 || !v482)
        {
          goto LABEL_275;
        }

        v483 = vaddq_s64(vdupq_n_s64(v474 & 0x3F), vzip1q_s64(0, v457));
        v484 = (v333 + 8 * (v474 >> 6));
        v485 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v484, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v483)), vshlq_u64(vdupq_lane_s64(v484->i64[0], 0), vnegq_s64(v483)));
        if ((v474 & 0x3F) + v459 >= 0x81)
        {
          v485 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v484[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v483)), vshlq_u64(vdupq_laneq_s64(v484[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v483))), v485);
        }

        if ((v335 & 1) != 0 || v688.i64[0] + 8 * result - v480 - 1024 >= 9 || v321 == 2)
        {
LABEL_275:
          result = 0;
          v486 = vdupq_n_s64(0xFFFFF003FFuLL);
          *a1 = v486;
          a1[1] = v486;
          a1[2] = v486;
          a1[3] = v486;
          v487 = (a1 + a2);
          *v487 = v486;
          v487[1] = v486;
          v487[2] = v486;
          v487[3] = v486;
          v488 = (a1 + 2 * a2);
          *v488 = v486;
          v488[1] = v486;
          v488[2] = v486;
          v488[3] = v486;
          v489 = (a1 + 2 * a2 + a2);
          *v489 = v486;
          v489[1] = v486;
          v489[2] = v486;
          v489[3] = v486;
        }

        else
        {
          v490 = vzip1_s32(*v325.i8, *&vextq_s8(v325, v325, 8uLL));
          v491 = vzip1_s32(*v386.i8, *&vextq_s8(v386, v386, 8uLL));
          v492 = vzip1_s32(*v420.i8, *&vextq_s8(v420, v420, 8uLL));
          v493 = vzip1_s32(*v454.i8, *&vextq_s8(v454, v454, 8uLL));
          v494.i64[0] = v490.u32[0];
          v494.i64[1] = v490.u32[1];
          v495 = vshlq_u64(v323, vnegq_s64(v494));
          v496 = vzip2q_s64(v323, v495);
          v497 = vzip1q_s64(v323, v495);
          v494.i64[0] = v491.u32[0];
          v494.i64[1] = v491.u32[1];
          v498 = vnegq_s64(v494);
          v499 = vshlq_u64(v377, v498);
          v500 = vzip2q_s64(v377, v499);
          v501 = vzip1q_s64(v377, v499);
          v502 = vshlq_u64(v404, v498);
          v503 = vzip2q_s64(v404, v502);
          v504 = vzip1q_s64(v404, v502);
          v505 = vshlq_u64(v400, v498);
          v506 = vzip2q_s64(v400, v505);
          v507 = vzip1q_s64(v400, v505);
          v508 = vshlq_u64(v419, v498);
          v509 = vzip2q_s64(v419, v508);
          v510 = vzip1q_s64(v419, v508);
          v494.i64[0] = v492.u32[0];
          v494.i64[1] = v492.u32[1];
          v511 = vnegq_s64(v494);
          v512 = vshlq_u64(v414, v511);
          v680 = v261;
          v681 = v282;
          v513 = vzip2q_s64(v414, v512);
          v514 = vzip1q_s64(v414, v512);
          v515 = vshlq_u64(v439, v511);
          v516 = vzip2q_s64(v439, v515);
          v517 = vzip1q_s64(v439, v515);
          v518 = vshlq_u64(v435, v511);
          v676 = v320;
          v677 = v373;
          v519 = vzip2q_s64(v435, v518);
          v520 = vzip1q_s64(v435, v518);
          v521 = vshlq_u64(v453, v511);
          v522 = vzip2q_s64(v453, v521);
          v523 = vzip1q_s64(v453, v521);
          v494.i64[0] = v493.u32[0];
          v494.i64[1] = v493.u32[1];
          v524 = vnegq_s64(v494);
          v525 = vshlq_u64(v449, v524);
          v678 = v363;
          v679 = v385;
          v526 = vzip2q_s64(v449, v525);
          v527 = vzip1q_s64(v449, v525);
          v528 = vshlq_u64(v473, v524);
          v529 = v324;
          v530 = vzip2q_s64(v473, v528);
          v531 = vzip1q_s64(v473, v528);
          v532 = vshlq_u64(v469, v524);
          v533 = vuzp1q_s32(v497, v496);
          v534 = vuzp1q_s32(v501, v500);
          v535 = vuzp1q_s32(v504, v503);
          v536 = vuzp1q_s32(v507, v506);
          v537 = vuzp1q_s32(v510, v509);
          v538 = vuzp1q_s32(v514, v513);
          v539 = vuzp1q_s32(v517, v516);
          v540 = vuzp1q_s32(v520, v519);
          v541 = vuzp1q_s32(v523, v522);
          v542 = vuzp1q_s32(v527, v526);
          v543 = vuzp1q_s32(v531, v530);
          v531.i64[0] = 0xFFFF0000FFFFLL;
          v531.i64[1] = 0xFFFF0000FFFFLL;
          v544 = vnegq_s32(vandq_s8(v710, v531));
          v545 = vuzp1q_s32(vzip1q_s64(v469, v532), vzip2q_s64(v469, v532));
          v546 = vshlq_u32(v533, vnegq_s32(vandq_s8(v529, v415)));
          v547 = vzip2q_s32(v533, v546);
          v548 = vzip1q_s32(v533, v546);
          v549 = vshlq_u32(v534, v544);
          v550 = vzip2q_s32(v534, v549);
          v551 = vzip1q_s32(v534, v549);
          v552 = vshlq_u32(v535, v544);
          v553 = vzip2q_s32(v535, v552);
          v554 = vzip1q_s32(v535, v552);
          v555 = vshlq_u32(v536, v544);
          v556 = vzip2q_s32(v536, v555);
          v557 = vzip1q_s32(v536, v555);
          v558 = vshlq_u32(v537, v544);
          v559 = vzip2q_s32(v537, v558);
          v560 = vzip1q_s32(v537, v558);
          v558.i64[0] = 0xFFFF0000FFFFLL;
          v558.i64[1] = 0xFFFF0000FFFFLL;
          v561 = vnegq_s32(vandq_s8(v711, v558));
          v562 = vshlq_u32(v538, v561);
          v563 = vzip2q_s32(v538, v562);
          v564 = vzip1q_s32(v538, v562);
          v565 = vshlq_u32(v539, v561);
          v566 = vzip2q_s32(v539, v565);
          v567 = vzip1q_s32(v539, v565);
          v568 = vshlq_u32(v540, v561);
          v569 = vzip2q_s32(v540, v568);
          v570 = vzip1q_s32(v540, v568);
          v571 = vshlq_u32(v541, v561);
          v572 = vzip2q_s32(v541, v571);
          v573 = vzip1q_s32(v541, v571);
          v571.i64[0] = 0xFFFF0000FFFFLL;
          v571.i64[1] = 0xFFFF0000FFFFLL;
          v574 = vnegq_s32(vandq_s8(v712, v571));
          v575 = vshlq_u32(v542, v574);
          v576 = vzip2q_s32(v542, v575);
          v577 = vzip1q_s32(v542, v575);
          v578 = vshlq_u32(v543, v574);
          v579 = vzip2q_s32(v543, v578);
          v580 = vzip1q_s32(v543, v578);
          v581 = vshlq_u32(v545, v574);
          v582 = vuzp1q_s16(v548, v547);
          v583 = vuzp1q_s16(v560, v559);
          v584.i64[0] = 0x10001000100010;
          v584.i64[1] = 0x10001000100010;
          v560.i64[0] = 0xF000F000F000FLL;
          v560.i64[1] = 0xF000F000F000FLL;
          v585 = vaddq_s16(v529, v560);
          v547.i64[0] = 0x10001000100010;
          v547.i64[1] = 0x10001000100010;
          v586 = vshlq_s16(v582, vsubq_s16(v584, v529));
          v584.i64[0] = 0xF000F000F000FLL;
          v584.i64[1] = 0xF000F000F000FLL;
          v587 = vsubq_s16(v547, v710);
          v588 = vaddq_s16(v710, v584);
          v529.i64[0] = 0x10001000100010;
          v529.i64[1] = 0x10001000100010;
          v589 = vshlq_s16(vuzp1q_s16(v551, v550), v587);
          v590 = vshlq_s16(vuzp1q_s16(v554, v553), v587);
          v591 = vshlq_s16(vuzp1q_s16(v557, v556), v587);
          v592 = vshlq_s16(v583, v587);
          v587.i64[0] = 0xF000F000F000FLL;
          v587.i64[1] = 0xF000F000F000FLL;
          v593 = vsubq_s16(v529, v711);
          v594 = vaddq_s16(v711, v587);
          v550.i64[0] = 0x10001000100010;
          v550.i64[1] = 0x10001000100010;
          v595 = vshlq_s16(vuzp1q_s16(v564, v563), v593);
          v596 = vshlq_s16(vuzp1q_s16(v567, v566), v593);
          v597 = vshlq_s16(vuzp1q_s16(v570, v569), v593);
          v598 = vshlq_s16(vuzp1q_s16(v573, v572), v593);
          v593.i64[0] = 0xF000F000F000FLL;
          v593.i64[1] = 0xF000F000F000FLL;
          v599 = vsubq_s16(v550, v712);
          v600 = vaddq_s16(v712, v593);
          v601 = vshlq_s16(v589, v588);
          v602 = vshlq_s16(v590, v588);
          v603 = vshlq_s16(v591, v588);
          v604 = vshlq_s16(v592, v588);
          v605 = vshlq_s16(v595, v594);
          v606 = vshlq_s16(v596, v594);
          v607 = vshlq_s16(v597, v594);
          v608 = vshlq_s16(v598, v594);
          v609 = vshlq_u64(v485, v524);
          v610 = vuzp1q_s32(vzip1q_s64(v485, v609), vzip2q_s64(v485, v609));
          v611 = vshlq_u32(v610, v574);
          v612 = vshlq_s16(vuzp1q_s16(v580, v579), v599);
          v613 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v545, v581), vzip2q_s32(v545, v581)), v599);
          v614 = vshlq_s16(vshlq_s16(vuzp1q_s16(v577, v576), v599), v600);
          v615 = vshlq_s16(v612, v600);
          v616 = vshlq_s16(v613, v600);
          v617 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v610, v611), vzip2q_s32(v610, v611)), v599), v600);
          v618 = vaddq_s16(vandq_s8(v676, v686), vshlq_s16(v586, v585));
          v619 = vdupq_lane_s64(v676.i64[0], 0);
          v620 = vandq_s8(v682, v619);
          v621 = vsubq_s16(v601, v620);
          v622 = vsubq_s16(v602, v620);
          v623 = vsubq_s16(v603, v620);
          v624 = vsubq_s16(v604, v620);
          v625 = vandq_s8(v684, v619);
          v626 = vsubq_s16(v605, v625);
          v627 = vsubq_s16(v606, v625);
          v628 = vandq_s8(v686, v619);
          v629 = vsubq_s16(v607, v625);
          v630 = vsubq_s16(v608, v625);
          v631.i64[0] = 0x1000100010001;
          v631.i64[1] = 0x1000100010001;
          v632 = vsubq_s16(v678, v628);
          v633 = vsubq_s16(v677, v628);
          v634 = vandq_s8(v681, v619);
          v635 = vsubq_s16(v614, v634);
          v636 = vsubq_s16(v615, v634);
          v637 = vsubq_s16(v616, v634);
          v638 = vsubq_s16(v617, v634);
          v639 = vsubq_s16(v679, v628);
          v640 = vsubq_s16(v618, v628);
          v695 = v618;
          v703 = v635;
          v704 = v636;
          v705 = v637;
          v706 = v638;
          if (vaddvq_s16(vceqq_s16(v680, v631)))
          {
            v641 = vnegq_s16(vandq_s8(v708, v631));
            v642.i64[0] = v639.i64[0];
            v643.i64[1] = v640.i64[1];
            v642.i64[1] = v640.i64[0];
            v643.i64[0] = v639.i64[1];
            v644 = vbslq_s8(v641, v643, v640);
            v645 = vbslq_s8(v641, v642, v639);
            v643.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v643.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v646 = vandq_s8(vqtbl4q_s8(*(&v632 - 1), v643), v641);
            v717.val[0] = vaddq_s16(v644, vandq_s8(vqtbl4q_s8(*(&v632 - 1), xmmword_29D2F10B0), v641));
            v717.val[1] = vaddq_s16(v632, vandq_s8(vqtbl4q_s8(*(&v632 - 1), xmmword_29D2F10C0), v641));
            v717.val[2] = vaddq_s16(v633, v646);
            v717.val[3] = vaddq_s16(v645, v646);
            v647 = vandq_s8(vqtbl4q_s8(v717, v643), v641);
            v640 = vaddq_s16(v717.val[0], vandq_s8(vqtbl4q_s8(v717, xmmword_29D2F10D0), v641));
            v632 = vaddq_s16(v717.val[1], vandq_s8(vqtbl4q_s8(v717, xmmword_29D2F10E0), v641));
            v695 = v640;
            v696 = v632;
            v633 = vaddq_s16(v717.val[2], v647);
            v639 = vaddq_s16(v717.val[3], v647);
            v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F10B0), v641), v621);
            v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F10F0), v641), v622);
            v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, v643), v641), v623);
            v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F1100), v641), v624);
            v648 = vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10D0), v641);
            v649 = vandq_s8(vqtbl4q_s8(v715, v643), v641);
            v621 = vaddq_s16(v648, v715.val[0]);
            v622 = vaddq_s16(v715.val[1], v648);
            v623 = vaddq_s16(v715.val[2], v649);
            v624 = vaddq_s16(v715.val[3], v649);
            v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F0EB0), v641), v626);
            v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F0FB0), v641), v627);
            v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F10B0), v641), v629);
            v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F10C0), v641), v630);
            v650 = vandq_s8(vqtbl4q_s8(v715, v643), v641);
            v626 = vaddq_s16(v715.val[0], v650);
            v627 = vaddq_s16(v715.val[1], v650);
            v629 = vaddq_s16(v715.val[2], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0FE0), v641));
            v630 = vaddq_s16(v715.val[3], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1110), v641));
            v715.val[0] = v703;
            v715.val[1] = v704;
            v651 = v708;
            v715.val[2] = v705;
            v715.val[3] = v706;
            v716.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0EB0), v641), v703);
            v716.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1120), v641), v704);
            v697 = v633;
            v698 = v639;
            v716.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10B0), v641), v705);
            v716.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10C0), v641), v706);
            v652 = vandq_s8(vqtbl4q_s8(v716, v643), v641);
            v653 = vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F0FE0), v641);
            v654 = vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F1130), v641);
            v635 = vaddq_s16(v716.val[0], v652);
            v636 = vaddq_s16(v716.val[1], v652);
            v637 = vaddq_s16(v716.val[2], v653);
            v638 = vaddq_s16(v716.val[3], v654);
          }

          else
          {
            v651 = v708;
          }

          v655 = vaddq_s16(v707, v640);
          v656 = vaddq_s16(v632, v707);
          v657 = vaddq_s16(v633, v707);
          v658 = vaddq_s16(v639, v707);
          v659 = vaddq_s16(v621, v707);
          v660 = vaddq_s16(v622, v707);
          v661 = vaddq_s16(v623, v707);
          v662 = vaddq_s16(v624, v707);
          v663 = vaddq_s16(v626, v707);
          v664 = vaddq_s16(v627, v707);
          v665 = vaddq_s16(v629, v707);
          v666 = vaddq_s16(v630, v707);
          v667 = vaddq_s16(v635, v707);
          v668 = vaddq_s16(v636, v707);
          v669 = vaddq_s16(v637, v707);
          v670 = vaddq_s16(v638, v707);
          v671.i64[0] = 0x10001000100010;
          v671.i64[1] = 0x10001000100010;
          v672 = vceqzq_s16(vandq_s8(v651, v671));
          v673 = (a1 + a2);
          *a1 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v655, xmmword_29D2F1140), v672), v655), 6uLL);
          a1[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v657, xmmword_29D2F1140), v672), v657), 6uLL);
          a1[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v663, xmmword_29D2F1140), v672), v663), 6uLL);
          a1[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v665, xmmword_29D2F1140), v672), v665), 6uLL);
          v674 = (a1 + 2 * a2);
          *v673 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v656, xmmword_29D2F1140), v672), v656), 6uLL);
          v673[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v658, xmmword_29D2F1140), v672), v658), 6uLL);
          v673[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v664, xmmword_29D2F1140), v672), v664), 6uLL);
          v673[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v666, xmmword_29D2F1140), v672), v666), 6uLL);
          *v674 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v659, xmmword_29D2F1140), v672), v659), 6uLL);
          v674[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v661, xmmword_29D2F1140), v672), v661), 6uLL);
          v674[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v667, xmmword_29D2F1140), v672), v667), 6uLL);
          v674[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v669, xmmword_29D2F1140), v672), v669), 6uLL);
          v675 = (v674 + a2);
          *v675 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v660, xmmword_29D2F1140), v672), v660), 6uLL);
          v675[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v662, xmmword_29D2F1140), v672), v662), 6uLL);
          v675[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v668, xmmword_29D2F1140), v672), v668), 6uLL);
          v675[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v670, xmmword_29D2F1140), v672), v670), 6uLL);
        }

        return result;
      }

      if (v688.i64[0] >= v265 + 8)
      {
        v687.i64[0] = v265 + 8;
        v322 = v265 + 16;
        v265 += 8;
      }

      else
      {
        v688.i8[8] = 1;
        v322 = v265 + 8;
      }

      if (v688.i64[0] >= v322)
      {
        goto LABEL_94;
      }

      v688.i8[8] = 1;
    }

    v322 = v265;
    goto LABEL_94;
  }

  v29.i64[0] = 0xA000A000A000ALL;
  v29.i64[1] = 0xA000A000A000ALL;
  v30 = vmovl_u16(*&vpaddq_s16(v29, v29));
  v29.i64[0] = vpaddq_s32(v30, v30).u64[0];
  v31.i64[0] = v29.u32[0];
  v31.i64[1] = v29.u32[1];
  v32 = v31;
  v33 = vaddvq_s64(v31);
  v34 = v33;
  v35 = 0uLL;
  if (v33 > 0x80)
  {
    v249 = 0uLL;
    v250 = 0uLL;
    v251 = 0uLL;
    v241 = 0uLL;
    v242 = 0uLL;
    v243 = 0uLL;
    v244 = 0uLL;
    v248 = 0uLL;
    v247 = 0uLL;
    v246 = 0uLL;
    v245 = 0uLL;
    v258 = 0uLL;
    v257 = 0uLL;
    v256 = 0uLL;
    v255 = 0uLL;
  }

  else
  {
    v36 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v37 = vzip1q_s64(0, v32);
    v38 = 8 * (a3 & 7);
    v39 = v33 + v38;
    v40 = vaddq_s64(v37, vdupq_n_s64(v38));
    v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v40)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v40)));
    if (v39 >= 0x81)
    {
      v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v36[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v40)), vshlq_u64(vdupq_laneq_s64(v36[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v40))), v41);
    }

    v42 = v39 & 0x3F;
    v43 = (v36 + 8 * (v39 >> 6));
    v44 = vaddq_s64(v37, vdupq_n_s64(v42));
    v45 = v34 + v39;
    v46 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v44)));
    if (v34 + v42 >= 0x81)
    {
      v46 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v46);
    }

    v47 = v45 & 0x3F;
    v48 = (v36 + 8 * (v45 >> 6));
    v49 = vaddq_s64(v37, vdupq_n_s64(v47));
    v50 = v34 + v45;
    v51 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
    if (v34 + v47 >= 0x81)
    {
      v51 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v51);
    }

    v52 = v50 & 0x3F;
    v53 = (v36 + 8 * (v50 >> 6));
    v54 = vaddq_s64(v37, vdupq_n_s64(v52));
    v55 = v34 + v50;
    v56 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v53, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v54)), vshlq_u64(vdupq_lane_s64(v53->i64[0], 0), vnegq_s64(v54)));
    if (v34 + v52 >= 0x81)
    {
      v56 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v53[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v54)), vshlq_u64(vdupq_laneq_s64(v53[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v54))), v56);
    }

    v57 = vextq_s8(v30, v30, 8uLL).u64[0];
    v58 = v55 & 0x3F;
    v59 = (v36 + 8 * (v55 >> 6));
    v60 = vaddq_s64(v37, vdupq_n_s64(v58));
    v61 = v34 + v55;
    v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v60)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v60)));
    if (v34 + v58 >= 0x81)
    {
      v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v60)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v60))), v62);
    }

    v63 = v61 & 0x3F;
    v64 = (v36 + 8 * (v61 >> 6));
    v65 = vaddq_s64(v37, vdupq_n_s64(v63));
    v66 = v34 + v61;
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v64, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v64->i64[0], 0), vnegq_s64(v65)));
    if (v34 + v63 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v64[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v64[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v67);
    }

    v68 = vzip1_s32(*v30.i8, v57);
    v69 = v66 & 0x3F;
    v70 = (v36 + 8 * (v66 >> 6));
    v71 = vaddq_s64(v37, vdupq_n_s64(v69));
    v72 = v34 + v66;
    v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v71)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v71)));
    if (v34 + v69 >= 0x81)
    {
      v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v71)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v71))), v73);
    }

    v74.i64[0] = v68.u32[0];
    v74.i64[1] = v68.u32[1];
    v75 = v74;
    v76 = v72 & 0x3F;
    v77 = (v36 + 8 * (v72 >> 6));
    v78 = vaddq_s64(v37, vdupq_n_s64(v76));
    v79 = v34 + v72;
    v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v77, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v77->i64[0], 0), vnegq_s64(v78)));
    if (v34 + v76 >= 0x81)
    {
      v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v77[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v77[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v80);
    }

    v81 = vnegq_s64(v75);
    v82 = v79 & 0x3F;
    v83 = (v36 + 8 * (v79 >> 6));
    v84 = vaddq_s64(v37, vdupq_n_s64(v82));
    v85 = v34 + v79;
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v84)));
    if (v34 + v82 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v86);
    }

    v87 = vshlq_u64(v41, v81);
    v88 = vshlq_u64(v46, v81);
    v89 = vshlq_u64(v51, v81);
    v90 = vshlq_u64(v56, v81);
    v91 = vshlq_u64(v62, v81);
    v92 = vshlq_u64(v67, v81);
    v93 = vshlq_u64(v73, v81);
    v94 = vshlq_u64(v80, v81);
    v95 = vshlq_u64(v86, v81);
    v96 = v85 & 0x3F;
    v97 = (v36 + 8 * (v85 >> 6));
    v98 = vaddq_s64(v37, vdupq_n_s64(v96));
    v99 = v34 + v85;
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v97, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v97->i64[0], 0), vnegq_s64(v98)));
    if (v34 + v96 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v97[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v97[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v100);
    }

    v101 = vzip2q_s64(v41, v87);
    v102 = vzip1q_s64(v41, v87);
    v103 = vzip2q_s64(v46, v88);
    v104 = vzip1q_s64(v46, v88);
    v105 = vzip2q_s64(v51, v89);
    v106 = vzip1q_s64(v51, v89);
    v107 = vzip2q_s64(v56, v90);
    v108 = vzip1q_s64(v56, v90);
    v109 = vzip2q_s64(v62, v91);
    v110 = vzip1q_s64(v62, v91);
    v111 = vzip2q_s64(v67, v92);
    v112 = vzip1q_s64(v67, v92);
    v113 = vzip2q_s64(v73, v93);
    v114 = vzip1q_s64(v73, v93);
    v115 = vzip2q_s64(v80, v94);
    v116 = vzip1q_s64(v80, v94);
    v117 = vzip2q_s64(v86, v95);
    v118 = vzip1q_s64(v86, v95);
    v119 = vshlq_u64(v100, v81);
    v120 = vzip2q_s64(v100, v119);
    v121 = vzip1q_s64(v100, v119);
    v122 = (v36 + 8 * (v99 >> 6));
    v123 = vaddq_s64(v37, vdupq_n_s64(v99 & 0x3F));
    v124 = v34 + v99;
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v122, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v122->i64[0], 0), vnegq_s64(v123)));
    if (v34 + (v99 & 0x3F) >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v122[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v122[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
    }

    v126 = vuzp1q_s32(v102, v101);
    v127 = vuzp1q_s32(v104, v103);
    v128 = vuzp1q_s32(v106, v105);
    v129 = vuzp1q_s32(v108, v107);
    v130 = vuzp1q_s32(v110, v109);
    v131 = vuzp1q_s32(v112, v111);
    v132 = vuzp1q_s32(v114, v113);
    v133 = vuzp1q_s32(v116, v115);
    v134 = vuzp1q_s32(v118, v117);
    v135 = vuzp1q_s32(v121, v120);
    v136 = vshlq_u64(v125, v81);
    v137 = vuzp1q_s32(vzip1q_s64(v125, v136), vzip2q_s64(v125, v136));
    v138 = v34 + v124;
    v139 = v124 & 0x3F;
    v140 = vaddq_s64(v37, vdupq_n_s64(v139));
    v141 = (v36 + 8 * (v124 >> 6));
    v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v34 + v139 >= 0x81)
    {
      v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
    }

    v143 = vshrq_n_u32(v126, 0xAuLL);
    v144 = vshrq_n_u32(v127, 0xAuLL);
    v145 = vshrq_n_u32(v128, 0xAuLL);
    v146 = vshrq_n_u32(v129, 0xAuLL);
    v147 = vshrq_n_u32(v130, 0xAuLL);
    v148 = vshrq_n_u32(v131, 0xAuLL);
    v149 = vshrq_n_u32(v132, 0xAuLL);
    v150 = vshrq_n_u32(v133, 0xAuLL);
    v151 = vshrq_n_u32(v134, 0xAuLL);
    v152 = vshrq_n_u32(v135, 0xAuLL);
    v153 = vshrq_n_u32(v137, 0xAuLL);
    v154 = vshlq_u64(v142, v81);
    v155 = vuzp1q_s32(vzip1q_s64(v142, v154), vzip2q_s64(v142, v154));
    v156 = vshrq_n_u32(v155, 0xAuLL);
    v157 = v138 & 0x3F;
    v158 = (v36 + 8 * (v138 >> 6));
    v159 = vaddq_s64(v37, vdupq_n_s64(v157));
    v160 = v34 + v138;
    v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v159)));
    if (v34 + v157 >= 0x81)
    {
      v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
    }

    v162 = vzip2q_s32(v126, v143);
    v163 = vzip1q_s32(v126, v143);
    v683 = vzip1q_s32(v127, v144);
    v685 = vzip2q_s32(v127, v144);
    v164 = vzip2q_s32(v128, v145);
    v165 = vzip1q_s32(v128, v145);
    v166 = vzip2q_s32(v129, v146);
    v167 = vzip1q_s32(v129, v146);
    v168 = vzip2q_s32(v130, v147);
    v169 = vzip1q_s32(v130, v147);
    v170 = vzip2q_s32(v131, v148);
    v171 = vzip1q_s32(v131, v148);
    v172 = vzip2q_s32(v132, v149);
    v173 = vzip1q_s32(v132, v149);
    v174 = vzip2q_s32(v133, v150);
    v175 = vzip1q_s32(v133, v150);
    v176 = vzip2q_s32(v134, v151);
    v177 = vzip1q_s32(v134, v151);
    v178 = vzip2q_s32(v135, v152);
    v179 = vzip1q_s32(v135, v152);
    v180 = vzip2q_s32(v137, v153);
    v181 = vzip1q_s32(v137, v153);
    v182 = vzip2q_s32(v155, v156);
    v183 = vzip1q_s32(v155, v156);
    v184 = vshlq_u64(v161, v81);
    v185 = vuzp1q_s32(vzip1q_s64(v161, v184), vzip2q_s64(v161, v184));
    v186 = vshrq_n_u32(v185, 0xAuLL);
    v187 = vzip2q_s32(v185, v186);
    v188 = vzip1q_s32(v185, v186);
    v189 = vaddq_s64(v37, vdupq_n_s64(v160 & 0x3F));
    v190 = (v36 + 8 * (v160 >> 6));
    v191.i64[0] = 0x1000100010001;
    v191.i64[1] = 0x1000100010001;
    v192 = vshlq_n_s16(v191, 0xAuLL);
    v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
    v194.i64[0] = -1;
    v194.i64[1] = -1;
    v195 = v34 + v160;
    if (v34 + (v160 & 0x3F) >= 0x81)
    {
      v194.i64[0] = -1;
      v194.i64[1] = -1;
      v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v193);
    }

    v196 = vaddq_s16(v192, v194);
    v197 = vuzp1q_s16(v163, v162);
    v198 = vuzp1q_s16(v683, v685);
    v199 = vuzp1q_s16(v165, v164);
    v200 = vuzp1q_s16(v167, v166);
    v201 = vuzp1q_s16(v169, v168);
    v202 = vuzp1q_s16(v171, v170);
    v203 = vuzp1q_s16(v173, v172);
    v204 = vuzp1q_s16(v175, v174);
    v205 = vuzp1q_s16(v177, v176);
    v206 = vuzp1q_s16(v179, v178);
    v207 = vuzp1q_s16(v181, v180);
    v208 = vuzp1q_s16(v183, v182);
    v209 = vuzp1q_s16(v188, v187);
    v210 = vshlq_u64(v193, v81);
    v211 = vuzp1q_s32(vzip1q_s64(v193, v210), vzip2q_s64(v193, v210));
    v212 = vshrq_n_u32(v211, 0xAuLL);
    v213 = vuzp1q_s16(vzip1q_s32(v211, v212), vzip2q_s32(v211, v212));
    v214 = v34 + v195;
    v215 = v195 & 0x3F;
    v216 = vaddq_s64(v37, vdupq_n_s64(v215));
    v217 = (v36 + 8 * (v195 >> 6));
    v218 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v217, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v216)), vshlq_u64(vdupq_lane_s64(v217->i64[0], 0), vnegq_s64(v216)));
    if (v34 + v215 >= 0x81)
    {
      v218 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v217[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v216)), vshlq_u64(vdupq_laneq_s64(v217[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v216))), v218);
    }

    v219 = vandq_s8(v196, v197);
    v220 = vandq_s8(v196, v198);
    v221 = vandq_s8(v196, v199);
    v222 = vandq_s8(v196, v200);
    v223 = vandq_s8(v196, v201);
    v224 = vandq_s8(v196, v202);
    v225 = vandq_s8(v196, v203);
    v226 = vandq_s8(v196, v204);
    v227 = vandq_s8(v196, v205);
    v228 = vandq_s8(v196, v206);
    v229 = vandq_s8(v196, v207);
    v230 = vandq_s8(v196, v208);
    v231 = vandq_s8(v196, v209);
    v232 = vandq_s8(v196, v213);
    v233 = vshlq_u64(v218, v81);
    v234 = vuzp1q_s32(vzip1q_s64(v218, v233), vzip2q_s64(v218, v233));
    v235 = vshrq_n_u32(v234, 0xAuLL);
    v236 = vuzp1q_s16(vzip1q_s32(v234, v235), vzip2q_s32(v234, v235));
    v237 = (v36 + 8 * (v214 >> 6));
    v238 = vaddq_s64(v37, vdupq_n_s64(v214 & 0x3F));
    v239 = vandq_s8(v196, v236);
    v240 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v237, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v237->i64[0], 0), vnegq_s64(v238)));
    if (v34 + (v214 & 0x3F) >= 0x81)
    {
      v240 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v237[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v237[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v240);
    }

    v241 = vshlq_n_s16(v219, 6uLL);
    v242 = vshlq_n_s16(v220, 6uLL);
    v243 = vshlq_n_s16(v221, 6uLL);
    v244 = vshlq_n_s16(v222, 6uLL);
    v245 = vshlq_n_s16(v223, 6uLL);
    v246 = vshlq_n_s16(v224, 6uLL);
    v247 = vshlq_n_s16(v225, 6uLL);
    v248 = vshlq_n_s16(v226, 6uLL);
    v35 = vshlq_n_s16(v227, 6uLL);
    v249 = vshlq_n_s16(v228, 6uLL);
    v250 = vshlq_n_s16(v229, 6uLL);
    v251 = vshlq_n_s16(v230, 6uLL);
    v252 = vshlq_u64(v240, v81);
    v253 = vuzp1q_s32(vzip1q_s64(v240, v252), vzip2q_s64(v240, v252));
    v254 = vshrq_n_u32(v253, 0xAuLL);
    v255 = vshlq_n_s16(v231, 6uLL);
    v256 = vshlq_n_s16(v232, 6uLL);
    v257 = vshlq_n_s16(v239, 6uLL);
    v258 = vshlq_n_s16(vandq_s8(v196, vuzp1q_s16(vzip1q_s32(v253, v254), vzip2q_s32(v253, v254))), 6uLL);
  }

  v279 = (a1 + a2);
  *a1 = v241;
  a1[1] = v243;
  a1[2] = v35;
  a1[3] = v250;
  v280 = (a1 + 2 * a2);
  *v279 = v242;
  v279[1] = v244;
  v279[2] = v249;
  v279[3] = v251;
  *v280 = v245;
  v280[1] = v247;
  v280[2] = v255;
  v280[3] = v257;
  v281 = (v280 + a2);
  result = 160;
  *v281 = v246;
  v281[1] = v248;
  v281[2] = v256;
  v281[3] = v258;
  return result;
}