uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(__n128 *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0xFFu:
      v13 = *(a3 + 16);
      v14 = *(a3 + 128);
      v15 = *(a3 + 144);
      v16 = *(a3 + 160);
      v17 = *(a3 + 176);
      v18 = *(a3 + 32);
      v19 = *(a3 + 192);
      v20 = *(a3 + 208);
      v21 = *(a3 + 224);
      v22 = *(a3 + 240);
      v23 = *(a3 + 48);
      v24 = *(a3 + 256);
      v25 = *(a3 + 272);
      v26 = *(a3 + 288);
      v27 = *(a3 + 304);
      v516 = *(a3 + 96);
      v517 = *(a3 + 112);
      v28 = *(a3 + 64);
      v29 = *(a3 + 320);
      v30 = *(a3 + 336);
      v31 = *(a3 + 352);
      v32 = *(a3 + 368);
      v33 = *(a3 + 80);
      v34 = *(a3 + 384);
      v35 = *(a3 + 400);
      v36 = *(a3 + 416);
      v37 = *(a3 + 432);
      v38 = *(a3 + 448);
      v39 = *(a3 + 464);
      v40 = *(a3 + 480);
      v41 = *(a3 + 496);
      *a1 = *a3;
      a1[1] = v13;
      a1[2] = v28;
      a1[3] = v33;
      v42 = (a1->n128_u64 + 2 * a2);
      a1[4] = v24;
      a1[5] = v25;
      a1[6] = v29;
      a1[7] = v30;
      v43 = (a1->n128_u64 + a2);
      *v43 = v18;
      v43[1] = v23;
      v43[2] = v516;
      v43[3] = v517;
      v44 = (a1[4].n128_u64 + a2);
      *v44 = v26;
      v44[1] = v27;
      v44[2] = v31;
      v44[3] = v32;
      v45 = v42 + 4;
      *v42 = v14;
      v42[1] = v15;
      v42[2] = v19;
      v42[3] = v20;
      v46 = (v42 + a2);
      *v45 = v34;
      v45[1] = v35;
      v45[2] = v38;
      v45[3] = v39;
      *v46 = v16;
      v46[1] = v17;
      v46[2] = v21;
      v46[3] = v22;
      v46 += 4;
      *v46 = v36;
      v46[1] = v37;
      v46[2] = v40;
      v46[3] = v41;
      return 512;
    case 7u:
      v9 = *a3;
      *a1 = *a3;
      a1[1] = v9;
      a1[2] = v9;
      a1[3] = v9;
      a1[4] = v9;
      a1[5] = v9;
      a1[6] = v9;
      a1[7] = v9;
      v10 = (a1 + a2);
      *v10 = v9;
      v10[1] = v9;
      v10[2] = v9;
      v10[3] = v9;
      v10[4] = v9;
      v10[5] = v9;
      v10[6] = v9;
      v10[7] = v9;
      v11 = (a1 + 2 * a2);
      *v11 = v9;
      v11[1] = v9;
      v11[2] = v9;
      v11[3] = v9;
      v11[4] = v9;
      v11[5] = v9;
      v11[6] = v9;
      v11[7] = v9;
      v12 = (a1 + 2 * a2 + a2);
      *v12 = v9;
      v12[1] = v9;
      v12[2] = v9;
      v12[3] = v9;
      v12[4] = v9;
      v12[5] = v9;
      result = 16;
      v12[6] = v9;
      v12[7] = v9;
      return result;
    case 0u:
      result = 0;
      a1[6] = 0u;
      a1[7] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v6 = (a1->n128_u64 + a2);
      v6[6] = 0u;
      v6[7] = 0u;
      v6[4] = 0u;
      v6[5] = 0u;
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      v7 = (a1->n128_u64 + 2 * a2);
      v7[6] = 0u;
      v7[7] = 0u;
      v7[4] = 0u;
      v7[5] = 0u;
      v7[2] = 0u;
      v7[3] = 0u;
      *v7 = 0u;
      v7[1] = 0u;
      v8 = (v6 + 2 * a2);
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      return result;
  }

  v521 = 0;
  v520 = (8 * (a3 & 7)) | 0x1000;
  v518 = 8 * (a3 & 7);
  v519 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(&v554, v559, &v553, &v518, a4);
  v50.i64[0] = 0x300000003;
  v50.i64[1] = 0x300000003;
  v51 = vbicq_s8(v559[0], vceqq_s32(vandq_s8(v554, v50), v50));
  v559[0] = v51;
  v555 = v51;
  v556 = v51;
  v557 = v51;
  v558 = v51;
  v52.i64[0] = 0x400000004;
  v52.i64[1] = 0x400000004;
  v53.i64[0] = 0x404040404040404;
  v53.i64[1] = 0x404040404040404;
  v54 = vandq_s8(vtstq_s32(v554, v52), v53);
  v55 = v518;
  if (vmaxvq_s8(v54) < 1)
  {
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v509 = v71;
    v510 = v71;
    v513 = v71;
    v514 = v71;
    v66 = a2;
    v67 = a1;
  }

  else
  {
    v56 = vmovl_u8(*&vpaddq_s8(v54, v54));
    v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
    v58 = vpaddq_s32(v57, v57).u64[0];
    v59.i64[0] = v58;
    v59.i64[1] = HIDWORD(v58);
    v60 = v59;
    v61 = vaddvq_s64(v59);
    v62 = v61;
    v63 = v518 + v61;
    if (v520)
    {
      v64 = v520 >= v63;
    }

    else
    {
      v64 = 1;
    }

    v65 = v64;
    v66 = a2;
    v67 = a1;
    if (v61 <= 0x80 && (v65 & 1) != 0)
    {
      v49.i64[0] = 63;
      v68 = (v519 + 8 * (v518 >> 6));
      v69 = vaddq_s64(vdupq_lane_s64(vandq_s8(v518, v49).i64[0], 0), vzip1q_s64(0, v60));
      v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v68, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v68->i64[0], 0), vnegq_s64(v69)));
      if ((v518 & 0x3F) + v62 >= 0x81)
      {
        v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v68[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v68[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v70);
      }

      v55 = v63;
    }

    else
    {
      v521 = 1;
      v70 = 0uLL;
    }

    v72 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v73.i64[0] = v72.u32[0];
    v73.i64[1] = v72.u32[1];
    v74 = vshlq_u64(v70, vnegq_s64(v73));
    v75 = vuzp1q_s32(vzip1q_s64(v70, v74), vzip2q_s64(v70, v74));
    v76 = vshlq_u32(v75, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v77 = vuzp1q_s16(vzip1q_s32(v75, v76), vzip2q_s32(v75, v76));
    v78 = vshlq_u16(v77, vnegq_s16((*&v54 & __PAIR128__(0xF8FFF8FFF8FFF8FFLL, 0xF8FFF8FFF8FFF8FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v77, v78), vzip2q_s16(v77, v78));
    v78.i64[0] = 0x101010101010101;
    v78.i64[1] = 0x101010101010101;
    v80 = vshlq_s8(v78, v54);
    v78.i64[0] = -1;
    v78.i64[1] = -1;
    v81 = vqtbl1q_s8(vandq_s8(vaddq_s8(v80, v78), v79), xmmword_29D2F0F70);
    v79.i64[0] = vmovl_s8(*v81.i8).u64[0];
    v78.i64[0] = vmovl_s8(vdup_lane_s32(*v81.i8, 1)).u64[0];
    v82 = vmovl_s8(*&vdupq_laneq_s32(v81, 2)).u64[0];
    v81.i64[0] = vmovl_s8(*&vdupq_laneq_s32(v81, 3)).u64[0];
    v555 = vsubw_s16(v555, *v79.i8);
    v556 = vsubw_s16(v556, *v78.i8);
    v557 = vsubw_s16(v557, v82);
    v558 = vsubw_s16(v558, *v81.i8);
    v513 = vmovl_s16(vceqz_s16(v82));
    v514 = vmovl_s16(vceqz_s16(*v79.i8));
    v509 = vmovl_s16(vceqz_s16(*v81.i8));
    v510 = vmovl_s16(vceqz_s16(*v78.i8));
  }

  v83.i64[0] = 0x800000008;
  v83.i64[1] = 0x800000008;
  v84 = vbicq_s8(v51, vceqzq_s32(vandq_s8(v554, v83)));
  v83.i64[0] = vpaddq_s32(v84, v84).u64[0];
  v85.i64[0] = v83.u32[0];
  v85.i64[1] = v83.u32[1];
  v86 = v85;
  v87 = vaddvq_s64(v85);
  v88 = v87;
  v89 = v55 + v87;
  if (v520)
  {
    v90 = v520 >= v89;
  }

  else
  {
    v90 = 1;
  }

  v91 = v90;
  if (v87 <= 0x80 && (v91 & 1) != 0)
  {
    v92 = vaddq_s64(vdupq_n_s64(v55 & 0x3F), vzip1q_s64(0, v86));
    v93 = (v519 + 8 * (v55 >> 6));
    v94 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v93, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v92)), vshlq_u64(vdupq_lane_s64(v93->i64[0], 0), vnegq_s64(v92)));
    if ((v55 & 0x3F) + v88 >= 0x81)
    {
      v94 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v93[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v92)), vshlq_u64(vdupq_laneq_s64(v93[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v92))), v94);
    }

    v55 = v89;
  }

  else
  {
    v521 = 1;
    v94 = 0uLL;
  }

  v95 = vzip1_s32(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
  v96.i64[0] = v95.u32[0];
  v96.i64[1] = v95.u32[1];
  v97 = vshlq_u64(v94, vnegq_s64(v96));
  v98 = vuzp1q_s32(vzip1q_s64(v94, v97), vzip2q_s64(v94, v97));
  v97.i64[0] = 0x1F0000001FLL;
  v97.i64[1] = 0x1F0000001FLL;
  v99.i64[0] = 0x2000000020;
  v99.i64[1] = 0x2000000020;
  v100 = vshlq_s32(vshlq_s32(v98, vsubq_s32(v99, v84)), vaddq_s32(v84, v97));
  v559[3] = v100;
  v101 = v554.i8[0] & 3;
  if (v101 == 2)
  {
    if (v520)
    {
      v102 = v55 + 16;
      v103 = v55 + 32;
      if (v520 >= v55 + 16)
      {
        v104 = v55 + 16;
      }

      else
      {
        v103 = v55 + 16;
        v104 = v55;
      }

      if (v520 >= v103)
      {
        v55 = v103;
      }

      else
      {
        v55 = v104;
      }

      if (v520 < v102 || v520 < v103)
      {
        v521 = 1;
      }
    }

    else
    {
      v55 += 32;
    }
  }

  v105 = vpaddq_s32(0, 0).u64[0];
  v106.i64[0] = v105;
  v106.i64[1] = HIDWORD(v105);
  v107 = v106;
  v108 = vaddvq_s64(v106);
  v109 = v108;
  v110 = v55 + v108;
  if (v520)
  {
    v111 = v520 >= v110;
  }

  else
  {
    v111 = 1;
  }

  v112 = v111;
  if (v108 <= 0x80 && (v112 & 1) != 0)
  {
    v113 = v55 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v107));
    v115 = v519;
    v116 = (v519 + 8 * (v55 >> 6));
    v117 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v116, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v116->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v109 >= 0x81)
    {
      v114 = vorrq_s8(vshlq_u64(vdupq_lane_s64(v116[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v116[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114)));
      v117 = vorrq_s8(v114, v117);
    }

    *v114.i8 = vmovn_s64(v117);
    v118 = v521;
    v55 = v110;
  }

  else
  {
    v114 = 0uLL;
    v118 = 1;
    v115 = v519;
  }

  v119.i64[0] = 0x2000000020;
  v119.i64[1] = 0x2000000020;
  v120.i64[0] = 0x1F0000001FLL;
  v120.i64[1] = 0x1F0000001FLL;
  v507 = vshlq_s32(vshlq_s32(vzip1q_s32(v114, v114), v119), v120);
  v522 = v507;
  v121 = vpaddq_s32(v555, v555).u64[0];
  v122.i64[0] = v121;
  v122.i64[1] = HIDWORD(v121);
  v123 = v122;
  v124 = vaddvq_s64(v122);
  v125 = v124;
  v126 = v55 + v124;
  if (v520)
  {
    v127 = v520 >= v126;
  }

  else
  {
    v127 = 1;
  }

  v128 = v127;
  v129 = 0uLL;
  if (v124 <= 0x80 && v128)
  {
    v130 = v55 & 0x3F;
    v131 = vaddq_s64(vdupq_n_s64(v130), vzip1q_s64(0, v123));
    v132 = (v115 + 8 * (v55 >> 6));
    v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
    if (v130 + v125 >= 0x81)
    {
      v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
    }
  }

  else
  {
    v118 = 1;
    v126 = v55;
    v133 = 0uLL;
  }

  v134 = vzip1_s32(*v555.i8, *&vextq_s8(v555, v555, 8uLL));
  v135.i64[0] = v134.u32[0];
  v135.i64[1] = v134.u32[1];
  v136 = vnegq_s64(v135);
  v137 = vshlq_u64(v133, v136);
  v138 = vaddq_s32(v555, v120);
  v139 = vsubq_s32(v119, v555);
  v140 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v133, v137), vzip2q_s64(v133, v137)), v139), v138);
  v523 = v140;
  v141 = v126 + v125;
  if (v520)
  {
    v142 = v520 >= v141;
  }

  else
  {
    v142 = 1;
  }

  v143 = v142;
  if (v125 <= 0x80 && v143)
  {
    v144 = v126 & 0x3F;
    v145 = vaddq_s64(vdupq_n_s64(v144), vzip1q_s64(0, v123));
    v146 = (v115 + 8 * (v126 >> 6));
    v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v145)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v145)));
    if (v144 + v125 >= 0x81)
    {
      v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v145)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v145))), v129);
    }
  }

  else
  {
    v118 = 1;
    v141 = v126;
  }

  v147 = vshlq_u64(v129, v136);
  v512 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v129, v147), vzip2q_s64(v129, v147)), v139), v138);
  v524 = v512;
  v148 = v141 + v125;
  if (v520)
  {
    v149 = v520 >= v148;
  }

  else
  {
    v149 = 1;
  }

  v150 = v149;
  v151 = 0uLL;
  if (v125 <= 0x80 && v150)
  {
    v152 = v141 & 0x3F;
    v153 = vaddq_s64(vdupq_n_s64(v152), vzip1q_s64(0, v123));
    v154 = (v115 + 8 * (v141 >> 6));
    v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v154, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v153)), vshlq_u64(vdupq_lane_s64(v154->i64[0], 0), vnegq_s64(v153)));
    if (v152 + v125 >= 0x81)
    {
      v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v154[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v153)), vshlq_u64(vdupq_laneq_s64(v154[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v153))), v155);
    }
  }

  else
  {
    v118 = 1;
    v148 = v141;
    v155 = 0uLL;
  }

  v156 = vshlq_u64(v155, v136);
  v511 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v155, v156), vzip2q_s64(v155, v156)), v139), v138);
  v525 = v511;
  v157 = v148 + v125;
  if (v520)
  {
    v158 = v520 >= v157;
  }

  else
  {
    v158 = 1;
  }

  v159 = v158;
  if (v125 <= 0x80 && v159)
  {
    v160 = v148 & 0x3F;
    v161 = vaddq_s64(vdupq_n_s64(v160), vzip1q_s64(0, v123));
    v162 = (v115 + 8 * (v148 >> 6));
    v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if (v160 + v125 >= 0x81)
    {
      v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v151);
    }
  }

  else
  {
    v118 = 1;
    v157 = v148;
  }

  v163 = vshlq_u64(v151, v136);
  v164 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v151, v163), vzip2q_s64(v151, v163)), v139), v138);
  v526 = v164;
  v165 = v157 + v125;
  if (v520)
  {
    v166 = v520 >= v165;
  }

  else
  {
    v166 = 1;
  }

  v167 = v166;
  v168 = 0uLL;
  if (v125 <= 0x80 && v167)
  {
    v169 = v157 & 0x3F;
    v170 = vaddq_s64(vdupq_n_s64(v169), vzip1q_s64(0, v123));
    v171 = (v115 + 8 * (v157 >> 6));
    v172 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
    if (v169 + v125 >= 0x81)
    {
      v172 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v172);
    }
  }

  else
  {
    v118 = 1;
    v165 = v157;
    v172 = 0uLL;
  }

  v173 = vshlq_u64(v172, v136);
  v174 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v172, v173), vzip2q_s64(v172, v173)), v139), v138);
  v527 = v174;
  v175 = v165 + v125;
  if (v520)
  {
    v176 = v520 >= v175;
  }

  else
  {
    v176 = 1;
  }

  v177 = v176;
  if (v125 <= 0x80 && v177)
  {
    v178 = v165 & 0x3F;
    v179 = vaddq_s64(vdupq_n_s64(v178), vzip1q_s64(0, v123));
    v180 = (v115 + 8 * (v165 >> 6));
    v168 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v180, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v179)), vshlq_u64(vdupq_lane_s64(v180->i64[0], 0), vnegq_s64(v179)));
    if (v178 + v125 >= 0x81)
    {
      v168 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v180[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v179)), vshlq_u64(vdupq_laneq_s64(v180[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v179))), v168);
    }
  }

  else
  {
    v118 = 1;
    v175 = v165;
  }

  v181 = vshlq_u64(v168, v136);
  v508 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v168, v181), vzip2q_s64(v168, v181)), v139), v138);
  v528 = v508;
  v182 = v175 + v125;
  if (v520)
  {
    v183 = v520 >= v182;
  }

  else
  {
    v183 = 1;
  }

  v184 = v183;
  v185 = 0uLL;
  if (v125 <= 0x80 && v184)
  {
    v186 = v175 & 0x3F;
    v187 = vaddq_s64(vdupq_n_s64(v186), vzip1q_s64(0, v123));
    v188 = (v115 + 8 * (v175 >> 6));
    v189 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v188, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v187)), vshlq_u64(vdupq_lane_s64(v188->i64[0], 0), vnegq_s64(v187)));
    if (v186 + v125 >= 0x81)
    {
      v189 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v188[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v187)), vshlq_u64(vdupq_laneq_s64(v188[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v187))), v189);
    }
  }

  else
  {
    v118 = 1;
    v182 = v175;
    v189 = 0uLL;
  }

  v190 = vshlq_u64(v189, v136);
  v506 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v189, v190), vzip2q_s64(v189, v190)), v139), v138);
  v529 = v506;
  v191 = vpaddq_s32(v556, v556).u64[0];
  v192.i64[0] = v191;
  v192.i64[1] = HIDWORD(v191);
  v193 = v192;
  v194 = vaddvq_s64(v192);
  v195 = v194;
  v196 = v182 + v194;
  if (v520)
  {
    v197 = v520 >= v196;
  }

  else
  {
    v197 = 1;
  }

  v198 = v197;
  if (v194 <= 0x80 && v198)
  {
    v199 = v182 & 0x3F;
    v200 = vaddq_s64(vdupq_n_s64(v199), vzip1q_s64(0, v193));
    v201 = (v115 + 8 * (v182 >> 6));
    v185 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v201, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v200)), vshlq_u64(vdupq_lane_s64(v201->i64[0], 0), vnegq_s64(v200)));
    if (v199 + v195 >= 0x81)
    {
      v185 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v201[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v200)), vshlq_u64(vdupq_laneq_s64(v201[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v200))), v185);
    }
  }

  else
  {
    v118 = 1;
    v196 = v182;
  }

  v202 = vzip1_s32(*v556.i8, *&vextq_s8(v556, v556, 8uLL));
  v203.i64[0] = v202.u32[0];
  v203.i64[1] = v202.u32[1];
  v204 = vnegq_s64(v203);
  v205 = vshlq_u64(v185, v204);
  v206 = vuzp1q_s32(vzip1q_s64(v185, v205), vzip2q_s64(v185, v205));
  v205.i64[0] = 0x1F0000001FLL;
  v205.i64[1] = 0x1F0000001FLL;
  v207 = vaddq_s32(v556, v205);
  v208.i64[0] = 0x2000000020;
  v208.i64[1] = 0x2000000020;
  v209 = vsubq_s32(v208, v556);
  v505 = vshlq_s32(vshlq_s32(v206, v209), v207);
  v530 = v505;
  v210 = v196 + v195;
  if (v520)
  {
    v211 = v520 >= v210;
  }

  else
  {
    v211 = 1;
  }

  v212 = v211;
  v213 = 0uLL;
  if (v195 <= 0x80 && v212)
  {
    v214 = v196 & 0x3F;
    v215 = vaddq_s64(vdupq_n_s64(v214), vzip1q_s64(0, v193));
    v216 = (v115 + 8 * (v196 >> 6));
    v217 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v216, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v215)), vshlq_u64(vdupq_lane_s64(v216->i64[0], 0), vnegq_s64(v215)));
    if (v214 + v195 >= 0x81)
    {
      v217 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v216[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v215)), vshlq_u64(vdupq_laneq_s64(v216[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v215))), v217);
    }
  }

  else
  {
    v118 = 1;
    v210 = v196;
    v217 = 0uLL;
  }

  v218 = vshlq_u64(v217, v204);
  v504 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v217, v218), vzip2q_s64(v217, v218)), v209), v207);
  v531 = v504;
  v219 = v210 + v195;
  if (v520)
  {
    v220 = v520 >= v219;
  }

  else
  {
    v220 = 1;
  }

  v221 = v220;
  if (v195 <= 0x80 && v221)
  {
    v222 = v210 & 0x3F;
    v223 = vaddq_s64(vdupq_n_s64(v222), vzip1q_s64(0, v193));
    v224 = (v115 + 8 * (v210 >> 6));
    v213 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v224, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v223)), vshlq_u64(vdupq_lane_s64(v224->i64[0], 0), vnegq_s64(v223)));
    if (v222 + v195 >= 0x81)
    {
      v213 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v224[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v223)), vshlq_u64(vdupq_laneq_s64(v224[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v223))), v213);
    }
  }

  else
  {
    v118 = 1;
    v219 = v210;
  }

  v225 = vshlq_u64(v213, v204);
  v503 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v213, v225), vzip2q_s64(v213, v225)), v209), v207);
  v532 = v503;
  v226 = v219 + v195;
  if (v520)
  {
    v227 = v520 >= v226;
  }

  else
  {
    v227 = 1;
  }

  v228 = v227;
  v229 = 0uLL;
  if (v195 <= 0x80 && v228)
  {
    v230 = v219 & 0x3F;
    v231 = vaddq_s64(vdupq_n_s64(v230), vzip1q_s64(0, v193));
    v232 = (v115 + 8 * (v219 >> 6));
    v233 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v232, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v231)), vshlq_u64(vdupq_lane_s64(v232->i64[0], 0), vnegq_s64(v231)));
    if (v230 + v195 >= 0x81)
    {
      v233 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v232[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v231)), vshlq_u64(vdupq_laneq_s64(v232[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v231))), v233);
    }
  }

  else
  {
    v118 = 1;
    v226 = v219;
    v233 = 0uLL;
  }

  v234 = vshlq_u64(v233, v204);
  v502 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v233, v234), vzip2q_s64(v233, v234)), v209), v207);
  v533 = v502;
  v235 = v226 + v195;
  if (v520)
  {
    v236 = v520 >= v235;
  }

  else
  {
    v236 = 1;
  }

  v237 = v236;
  if (v195 <= 0x80 && v237)
  {
    v238 = v226 & 0x3F;
    v239 = vaddq_s64(vdupq_n_s64(v238), vzip1q_s64(0, v193));
    v240 = (v115 + 8 * (v226 >> 6));
    v229 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v240, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v239)), vshlq_u64(vdupq_lane_s64(v240->i64[0], 0), vnegq_s64(v239)));
    if (v238 + v195 >= 0x81)
    {
      v229 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v240[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v239)), vshlq_u64(vdupq_laneq_s64(v240[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v239))), v229);
    }
  }

  else
  {
    v118 = 1;
    v235 = v226;
  }

  v241 = vshlq_u64(v229, v204);
  v242 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v229, v241), vzip2q_s64(v229, v241)), v209), v207);
  v534 = v242;
  v243 = v235 + v195;
  if (v520)
  {
    v244 = v520 >= v243;
  }

  else
  {
    v244 = 1;
  }

  v245 = v244;
  v246 = 0uLL;
  if (v195 <= 0x80 && v245)
  {
    v247 = v235 & 0x3F;
    v248 = vaddq_s64(vdupq_n_s64(v247), vzip1q_s64(0, v193));
    v249 = (v115 + 8 * (v235 >> 6));
    v250 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v249, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v248)), vshlq_u64(vdupq_lane_s64(v249->i64[0], 0), vnegq_s64(v248)));
    if (v247 + v195 >= 0x81)
    {
      v250 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v249[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v248)), vshlq_u64(vdupq_laneq_s64(v249[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v248))), v250);
    }
  }

  else
  {
    v118 = 1;
    v243 = v235;
    v250 = 0uLL;
  }

  v251 = vshlq_u64(v250, v204);
  v252 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v250, v251), vzip2q_s64(v250, v251)), v209), v207);
  v535 = v252;
  v253 = v243 + v195;
  if (v520)
  {
    v254 = v520 >= v253;
  }

  else
  {
    v254 = 1;
  }

  v255 = v254;
  if (v195 <= 0x80 && v255)
  {
    v256 = v243 & 0x3F;
    v257 = vaddq_s64(vdupq_n_s64(v256), vzip1q_s64(0, v193));
    v258 = (v115 + 8 * (v243 >> 6));
    v246 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v258, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v257)), vshlq_u64(vdupq_lane_s64(v258->i64[0], 0), vnegq_s64(v257)));
    if (v256 + v195 >= 0x81)
    {
      v246 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v258[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v257)), vshlq_u64(vdupq_laneq_s64(v258[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v257))), v246);
    }
  }

  else
  {
    v118 = 1;
    v253 = v243;
  }

  v259 = vshlq_u64(v246, v204);
  v260 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v246, v259), vzip2q_s64(v246, v259)), v209), v207);
  v536 = v260;
  v261 = v253 + v195;
  if (v520)
  {
    v262 = v520 >= v261;
  }

  else
  {
    v262 = 1;
  }

  v263 = v262;
  v264 = 0uLL;
  if (v195 <= 0x80 && v263)
  {
    v265 = v253 & 0x3F;
    v266 = vaddq_s64(vdupq_n_s64(v265), vzip1q_s64(0, v193));
    v267 = (v115 + 8 * (v253 >> 6));
    v268 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v267, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v266)), vshlq_u64(vdupq_lane_s64(v267->i64[0], 0), vnegq_s64(v266)));
    if (v265 + v195 >= 0x81)
    {
      v268 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v267[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v266)), vshlq_u64(vdupq_laneq_s64(v267[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v266))), v268);
    }
  }

  else
  {
    v118 = 1;
    v261 = v253;
    v268 = 0uLL;
  }

  v269 = vshlq_u64(v268, v204);
  v270 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v268, v269), vzip2q_s64(v268, v269)), v209), v207);
  v537 = v270;
  v271 = vpaddq_s32(v557, v557).u64[0];
  v272.i64[0] = v271;
  v272.i64[1] = HIDWORD(v271);
  v273 = v272;
  v274 = vaddvq_s64(v272);
  v275 = v274;
  v276 = v261 + v274;
  if (v520)
  {
    v277 = v520 >= v276;
  }

  else
  {
    v277 = 1;
  }

  v278 = v277;
  if (v274 <= 0x80 && v278)
  {
    v279 = v261 & 0x3F;
    v280 = vaddq_s64(vdupq_n_s64(v279), vzip1q_s64(0, v273));
    v281 = (v115 + 8 * (v261 >> 6));
    v264 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v281, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v280)), vshlq_u64(vdupq_lane_s64(v281->i64[0], 0), vnegq_s64(v280)));
    if (v279 + v275 >= 0x81)
    {
      v264 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v281[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v280)), vshlq_u64(vdupq_laneq_s64(v281[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v280))), v264);
    }
  }

  else
  {
    v118 = 1;
    v276 = v261;
  }

  v282 = vzip1_s32(*v557.i8, *&vextq_s8(v557, v557, 8uLL));
  v283.i64[0] = v282.u32[0];
  v283.i64[1] = v282.u32[1];
  v284 = vnegq_s64(v283);
  v285 = vshlq_u64(v264, v284);
  v286 = vuzp1q_s32(vzip1q_s64(v264, v285), vzip2q_s64(v264, v285));
  v285.i64[0] = 0x1F0000001FLL;
  v285.i64[1] = 0x1F0000001FLL;
  v287 = vaddq_s32(v557, v285);
  v288.i64[0] = 0x2000000020;
  v288.i64[1] = 0x2000000020;
  v289 = vsubq_s32(v288, v557);
  v290 = vshlq_s32(vshlq_s32(v286, v289), v287);
  v538 = v290;
  v291 = v276 + v275;
  if (v520)
  {
    v292 = v520 >= v291;
  }

  else
  {
    v292 = 1;
  }

  v293 = v292;
  v294 = 0uLL;
  if (v275 <= 0x80 && v293)
  {
    v295 = v276 & 0x3F;
    v296 = vaddq_s64(vdupq_n_s64(v295), vzip1q_s64(0, v273));
    v297 = (v115 + 8 * (v276 >> 6));
    v298 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v297, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v296)), vshlq_u64(vdupq_lane_s64(v297->i64[0], 0), vnegq_s64(v296)));
    if (v295 + v275 >= 0x81)
    {
      v298 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v297[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v296)), vshlq_u64(vdupq_laneq_s64(v297[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v296))), v298);
    }
  }

  else
  {
    v118 = 1;
    v291 = v276;
    v298 = 0uLL;
  }

  v299 = vshlq_u64(v298, v284);
  v300 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v298, v299), vzip2q_s64(v298, v299)), v289), v287);
  v539 = v300;
  v301 = v291 + v275;
  if (v520)
  {
    v302 = v520 >= v301;
  }

  else
  {
    v302 = 1;
  }

  v303 = v302;
  if (v275 <= 0x80 && v303)
  {
    v304 = v291 & 0x3F;
    v305 = vaddq_s64(vdupq_n_s64(v304), vzip1q_s64(0, v273));
    v306 = (v115 + 8 * (v291 >> 6));
    v294 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v306, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v305)), vshlq_u64(vdupq_lane_s64(v306->i64[0], 0), vnegq_s64(v305)));
    if (v304 + v275 >= 0x81)
    {
      v294 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v306[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v305)), vshlq_u64(vdupq_laneq_s64(v306[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v305))), v294);
    }
  }

  else
  {
    v118 = 1;
    v301 = v291;
  }

  v307 = vshlq_u64(v294, v284);
  v308 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v294, v307), vzip2q_s64(v294, v307)), v289), v287);
  v540 = v308;
  v309 = v301 + v275;
  if (v520)
  {
    v310 = v520 >= v309;
  }

  else
  {
    v310 = 1;
  }

  v311 = v310;
  v312 = 0uLL;
  if (v275 <= 0x80 && v311)
  {
    v313 = v301 & 0x3F;
    v314 = vaddq_s64(vdupq_n_s64(v313), vzip1q_s64(0, v273));
    v315 = (v115 + 8 * (v301 >> 6));
    v316 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v315, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v314)), vshlq_u64(vdupq_lane_s64(v315->i64[0], 0), vnegq_s64(v314)));
    if (v313 + v275 >= 0x81)
    {
      v316 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v315[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v314)), vshlq_u64(vdupq_laneq_s64(v315[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v314))), v316);
    }
  }

  else
  {
    v118 = 1;
    v309 = v301;
    v316 = 0uLL;
  }

  v317 = vshlq_u64(v316, v284);
  v318 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v316, v317), vzip2q_s64(v316, v317)), v289), v287);
  v541 = v318;
  v319 = v309 + v275;
  if (v520)
  {
    v320 = v520 >= v319;
  }

  else
  {
    v320 = 1;
  }

  v321 = v320;
  if (v275 <= 0x80 && v321)
  {
    v322 = v309 & 0x3F;
    v323 = vaddq_s64(vdupq_n_s64(v322), vzip1q_s64(0, v273));
    v324 = (v115 + 8 * (v309 >> 6));
    v312 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v324, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v323)), vshlq_u64(vdupq_lane_s64(v324->i64[0], 0), vnegq_s64(v323)));
    if (v322 + v275 >= 0x81)
    {
      v312 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v324[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v323)), vshlq_u64(vdupq_laneq_s64(v324[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v323))), v312);
    }
  }

  else
  {
    v118 = 1;
    v319 = v309;
  }

  v325 = vshlq_u64(v312, v284);
  v326 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v312, v325), vzip2q_s64(v312, v325)), v289), v287);
  v542 = v326;
  v327 = v319 + v275;
  if (v520)
  {
    v328 = v520 >= v327;
  }

  else
  {
    v328 = 1;
  }

  v329 = v328;
  v330 = 0uLL;
  if (v275 <= 0x80 && v329)
  {
    v331 = v319 & 0x3F;
    v332 = vaddq_s64(vdupq_n_s64(v331), vzip1q_s64(0, v273));
    v333 = (v115 + 8 * (v319 >> 6));
    v334 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v333, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v332)), vshlq_u64(vdupq_lane_s64(v333->i64[0], 0), vnegq_s64(v332)));
    if (v331 + v275 >= 0x81)
    {
      v334 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v333[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v332)), vshlq_u64(vdupq_laneq_s64(v333[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v332))), v334);
    }
  }

  else
  {
    v118 = 1;
    v327 = v319;
    v334 = 0uLL;
  }

  v335 = vshlq_u64(v334, v284);
  v336 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v334, v335), vzip2q_s64(v334, v335)), v289), v287);
  v543 = v336;
  v337 = v327 + v275;
  if (v520)
  {
    v338 = v520 >= v337;
  }

  else
  {
    v338 = 1;
  }

  v339 = v338;
  if (v275 <= 0x80 && v339)
  {
    v340 = v327 & 0x3F;
    v341 = vaddq_s64(vdupq_n_s64(v340), vzip1q_s64(0, v273));
    v342 = (v115 + 8 * (v327 >> 6));
    v330 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v342, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v341)), vshlq_u64(vdupq_lane_s64(v342->i64[0], 0), vnegq_s64(v341)));
    if (v340 + v275 >= 0x81)
    {
      v330 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v342[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v341)), vshlq_u64(vdupq_laneq_s64(v342[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v341))), v330);
    }
  }

  else
  {
    v118 = 1;
    v337 = v327;
  }

  v343 = vshlq_u64(v330, v284);
  v344 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v330, v343), vzip2q_s64(v330, v343)), v289), v287);
  v544 = v344;
  v345 = v337 + v275;
  if (v520)
  {
    v346 = v520 >= v345;
  }

  else
  {
    v346 = 1;
  }

  v347 = v346;
  v348 = 0uLL;
  if (v275 <= 0x80 && v347)
  {
    v349 = v337 & 0x3F;
    v350 = vaddq_s64(vdupq_n_s64(v349), vzip1q_s64(0, v273));
    v351 = (v115 + 8 * (v337 >> 6));
    v352 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v351, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v350)), vshlq_u64(vdupq_lane_s64(v351->i64[0], 0), vnegq_s64(v350)));
    if (v349 + v275 >= 0x81)
    {
      v352 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v351[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v350)), vshlq_u64(vdupq_laneq_s64(v351[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v350))), v352);
    }
  }

  else
  {
    v118 = 1;
    v345 = v337;
    v352 = 0uLL;
  }

  v353 = vshlq_u64(v352, v284);
  v354 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v352, v353), vzip2q_s64(v352, v353)), v289), v287);
  v545 = v354;
  v353.i64[0] = vpaddq_s32(v558, v558).u64[0];
  v355.i64[0] = v353.u32[0];
  v355.i64[1] = v353.u32[1];
  v356 = v355;
  v357 = vaddvq_s64(v355);
  v358 = v357;
  v359 = v345 + v357;
  if (v520)
  {
    v360 = v520 >= v359;
  }

  else
  {
    v360 = 1;
  }

  v361 = v360;
  if (v357 <= 0x80 && v361)
  {
    v362 = v345 & 0x3F;
    v363 = vaddq_s64(vdupq_n_s64(v362), vzip1q_s64(0, v356));
    v364 = (v115 + 8 * (v345 >> 6));
    v348 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v364, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v363)), vshlq_u64(vdupq_lane_s64(v364->i64[0], 0), vnegq_s64(v363)));
    if (v362 + v358 >= 0x81)
    {
      v348 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v364[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v363)), vshlq_u64(vdupq_laneq_s64(v364[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v363))), v348);
    }
  }

  else
  {
    v118 = 1;
    v359 = v345;
  }

  v365 = vzip1_s32(*v558.i8, *&vextq_s8(v558, v558, 8uLL));
  v366.i64[0] = v365.u32[0];
  v366.i64[1] = v365.u32[1];
  v367 = vnegq_s64(v366);
  v368 = vshlq_u64(v348, v367);
  v369 = vuzp1q_s32(vzip1q_s64(v348, v368), vzip2q_s64(v348, v368));
  v370.i64[0] = 0x1F0000001FLL;
  v370.i64[1] = 0x1F0000001FLL;
  v371 = vaddq_s32(v558, v370);
  v372.i64[0] = 0x2000000020;
  v372.i64[1] = 0x2000000020;
  v373 = vsubq_s32(v372, v558);
  v374 = vshlq_s32(vshlq_s32(v369, v373), v371);
  v546 = v374;
  v375 = v359 + v358;
  if (v520)
  {
    v376 = v520 >= v375;
  }

  else
  {
    v376 = 1;
  }

  v377 = v376;
  v378 = 0uLL;
  if (v358 <= 0x80 && v377)
  {
    v379 = v359 & 0x3F;
    v380 = vaddq_s64(vdupq_n_s64(v379), vzip1q_s64(0, v356));
    v381 = (v115 + 8 * (v359 >> 6));
    v382 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v381, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v380)), vshlq_u64(vdupq_lane_s64(v381->i64[0], 0), vnegq_s64(v380)));
    if (v379 + v358 >= 0x81)
    {
      v382 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v381[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v380)), vshlq_u64(vdupq_laneq_s64(v381[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v380))), v382);
    }
  }

  else
  {
    v118 = 1;
    v375 = v359;
    v382 = 0uLL;
  }

  v383 = vshlq_u64(v382, v367);
  v384 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v382, v383), vzip2q_s64(v382, v383)), v373), v371);
  v547 = v384;
  v385 = v375 + v358;
  if (v520)
  {
    v386 = v520 >= v385;
  }

  else
  {
    v386 = 1;
  }

  v387 = v386;
  if (v358 <= 0x80 && v387)
  {
    v388 = v375 & 0x3F;
    v389 = vaddq_s64(vdupq_n_s64(v388), vzip1q_s64(0, v356));
    v390 = (v115 + 8 * (v375 >> 6));
    v378 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v390, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v389)), vshlq_u64(vdupq_lane_s64(v390->i64[0], 0), vnegq_s64(v389)));
    if (v388 + v358 >= 0x81)
    {
      v378 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v390[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v389)), vshlq_u64(vdupq_laneq_s64(v390[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v389))), v378);
    }
  }

  else
  {
    v118 = 1;
    v385 = v375;
  }

  v391 = vshlq_u64(v378, v367);
  v392 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v378, v391), vzip2q_s64(v378, v391)), v373), v371);
  v548 = v392;
  v393 = v385 + v358;
  if (v520)
  {
    v394 = v520 >= v393;
  }

  else
  {
    v394 = 1;
  }

  v395 = v394;
  v396 = 0uLL;
  if (v358 <= 0x80 && v395)
  {
    v397 = v385 & 0x3F;
    v398 = vaddq_s64(vdupq_n_s64(v397), vzip1q_s64(0, v356));
    v399 = (v115 + 8 * (v385 >> 6));
    v400 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v399, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v398)), vshlq_u64(vdupq_lane_s64(v399->i64[0], 0), vnegq_s64(v398)));
    if (v397 + v358 >= 0x81)
    {
      v400 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v399[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v398)), vshlq_u64(vdupq_laneq_s64(v399[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v398))), v400);
    }
  }

  else
  {
    v118 = 1;
    v393 = v385;
    v400 = 0uLL;
  }

  v401 = vshlq_u64(v400, v367);
  v402 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v400, v401), vzip2q_s64(v400, v401)), v373), v371);
  v549 = v402;
  v403 = v393 + v358;
  if (v520)
  {
    v404 = v520 >= v403;
  }

  else
  {
    v404 = 1;
  }

  v405 = v404;
  if (v358 <= 0x80 && v405)
  {
    v406 = v393 & 0x3F;
    v407 = vaddq_s64(vdupq_n_s64(v406), vzip1q_s64(0, v356));
    v408 = (v115 + 8 * (v393 >> 6));
    v396 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v408, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v407)), vshlq_u64(vdupq_lane_s64(v408->i64[0], 0), vnegq_s64(v407)));
    if (v406 + v358 >= 0x81)
    {
      v396 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v408[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v407)), vshlq_u64(vdupq_laneq_s64(v408[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v407))), v396);
    }
  }

  else
  {
    v118 = 1;
    v403 = v393;
  }

  v409 = vshlq_u64(v396, v367);
  v410 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v396, v409), vzip2q_s64(v396, v409)), v373), v371);
  v550 = v410;
  v411 = v403 + v358;
  if (v520)
  {
    v412 = v520 >= v411;
  }

  else
  {
    v412 = 1;
  }

  v413 = v412;
  v414 = 0uLL;
  if (v358 <= 0x80 && v413)
  {
    v415 = v403 & 0x3F;
    v416 = vaddq_s64(vdupq_n_s64(v415), vzip1q_s64(0, v356));
    v417 = (v115 + 8 * (v403 >> 6));
    v418 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v417, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v416)), vshlq_u64(vdupq_lane_s64(v417->i64[0], 0), vnegq_s64(v416)));
    if (v415 + v358 >= 0x81)
    {
      v418 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v417[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v416)), vshlq_u64(vdupq_laneq_s64(v417[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v416))), v418);
    }
  }

  else
  {
    v118 = 1;
    v411 = v403;
    v418 = 0uLL;
  }

  v419 = vshlq_u64(v418, v367);
  v420 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v418, v419), vzip2q_s64(v418, v419)), v373), v371);
  v551 = v420;
  v421 = v411 + v358;
  if (v520)
  {
    v422 = v520 >= v421;
  }

  else
  {
    v422 = 1;
  }

  v423 = v422;
  if (v358 <= 0x80 && v423)
  {
    v424 = v411 & 0x3F;
    v425 = vaddq_s64(vdupq_n_s64(v424), vzip1q_s64(0, v356));
    v426 = (v115 + 8 * (v411 >> 6));
    v414 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v426, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v425)), vshlq_u64(vdupq_lane_s64(v426->i64[0], 0), vnegq_s64(v425)));
    if (v424 + v358 >= 0x81)
    {
      v414 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v426[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v425)), vshlq_u64(vdupq_laneq_s64(v426[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v425))), v414);
    }
  }

  else
  {
    v118 = 1;
    v421 = v411;
  }

  v427 = vshlq_u64(v414, v367);
  v428 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v414, v427), vzip2q_s64(v414, v427)), v373), v371);
  v552 = v428;
  v429 = v421 + v358;
  if (v520)
  {
    v430 = v520 >= v429;
  }

  else
  {
    v430 = 1;
  }

  v431 = v430;
  if (v358 > 0x80 || !v431)
  {
    goto LABEL_403;
  }

  v432 = vaddq_s64(vdupq_n_s64(v421 & 0x3F), vzip1q_s64(0, v356));
  v433 = (v115 + 8 * (v421 >> 6));
  v434 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v433, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v432)), vshlq_u64(vdupq_lane_s64(v433->i64[0], 0), vnegq_s64(v432)));
  if ((v421 & 0x3F) + v358 < 0x81)
  {
    if ((v118 & 1) == 0)
    {
      v438 = vshlq_u64(v434, v367);
      v437 = vuzp1q_s32(vzip1q_s64(v434, v438), vzip2q_s64(v434, v438));
      goto LABEL_401;
    }

LABEL_403:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v67, v66);
    return 0;
  }

  if (v118)
  {
    goto LABEL_403;
  }

  v435 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v433[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v432)), vshlq_u64(vdupq_laneq_s64(v433[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v432))), v434);
  v436 = vshlq_u64(v435, v367);
  v437 = vuzp1q_s32(vzip1q_s64(v435, v436), vzip2q_s64(v435, v436));
LABEL_401:
  v439 = vshlq_s32(vshlq_s32(v437, v373), v371);
  if (v520 + 8 * result - v429 - 4096 >= 0x11 || v101 == 2)
  {
    goto LABEL_403;
  }

  v440.i64[0] = 0x1000000010;
  v440.i64[1] = 0x1000000010;
  v441 = vandq_s8(v100, v514);
  v442 = v553;
  v515 = v439;
  v443 = vaddq_s32(v553, v507);
  v444 = vaddq_s32(v553, vsubq_s32(v140, v441));
  v445 = vceqzq_s32(vandq_s8(v554, v440));
  v446 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v444, xmmword_29D2F11D0), v445), v444);
  v447 = vaddq_s32(v553, vsubq_s32(v164, v441));
  v448 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v447, xmmword_29D2F11D0), v445), v447);
  v449 = vaddq_s32(v553, vsubq_s32(v174, v441));
  *v67 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v443, xmmword_29D2F11D0), v445), v443);
  v67[1] = v446;
  v67[2] = v448;
  v67[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v449, xmmword_29D2F11D0), v445), v449);
  v450 = (v67 + 2 * v66);
  v451 = vandq_s8(v100, v513);
  v452 = vaddq_s32(v442, vsubq_s32(v290, v451));
  v453 = vaddq_s32(v442, vsubq_s32(v300, v451));
  v454 = v100;
  v455 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v452, xmmword_29D2F11D0), v445), v452);
  v456 = vaddq_s32(v442, vsubq_s32(v326, v451));
  v457 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v456, xmmword_29D2F11D0), v445), v456);
  v458 = vaddq_s32(v442, vsubq_s32(v336, v451));
  v67[4] = v455;
  v67[5] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v453, xmmword_29D2F11D0), v445), v453);
  v67[6] = v457;
  v67[7] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v458, xmmword_29D2F11D0), v445), v458);
  v459 = vaddq_s32(v442, vsubq_s32(v512, v441));
  v460 = vaddq_s32(v442, vsubq_s32(v511, v441));
  v461 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v459, xmmword_29D2F11D0), v445), v459);
  v462 = vaddq_s32(v442, vsubq_s32(v508, v441));
  v463 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v462, xmmword_29D2F11D0), v445), v462);
  v464 = vaddq_s32(v442, vsubq_s32(v506, v441));
  v465 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v464, xmmword_29D2F11D0), v445), v464);
  v466 = vaddq_s32(v442, vsubq_s32(v308, v451));
  v467 = vaddq_s32(v442, vsubq_s32(v318, v451));
  v468 = (v67 + v66);
  *v468 = v461;
  v468[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v460, xmmword_29D2F11D0), v445), v460);
  v468[2] = v463;
  v468[3] = v465;
  v468 += 4;
  v469 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v466, xmmword_29D2F11D0), v445), v466);
  v470 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v467, xmmword_29D2F11D0), v445), v467);
  v471 = vaddq_s32(v442, vsubq_s32(v344, v451));
  v472 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v471, xmmword_29D2F11D0), v445), v471);
  v473 = vaddq_s32(v442, vsubq_s32(v354, v451));
  v474 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v473, xmmword_29D2F11D0), v445), v473);
  v475 = vandq_s8(v454, v510);
  v476 = vaddq_s32(v442, vsubq_s32(v505, v475));
  v477 = vaddq_s32(v442, vsubq_s32(v504, v475));
  *v468 = v469;
  v468[1] = v470;
  v468[2] = v472;
  v468[3] = v474;
  v478 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v476, xmmword_29D2F11D0), v445), v476);
  v479 = vaddq_s32(v442, vsubq_s32(v242, v475));
  v480 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v479, xmmword_29D2F11D0), v445), v479);
  v481 = vaddq_s32(v442, vsubq_s32(v252, v475));
  v482 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v481, xmmword_29D2F11D0), v445), v481);
  v483 = vandq_s8(v454, v509);
  v484 = v450 + 4;
  *v450 = v478;
  v450[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v477, xmmword_29D2F11D0), v445), v477);
  v450[2] = v480;
  v450[3] = v482;
  v485 = (v450 + v66);
  v486 = vaddq_s32(v442, vsubq_s32(v374, v483));
  v487 = vaddq_s32(v442, vsubq_s32(v384, v483));
  v488 = vaddq_s32(v442, vsubq_s32(v410, v483));
  v489 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v488, xmmword_29D2F11D0), v445), v488);
  v490 = vaddq_s32(v442, vsubq_s32(v420, v483));
  *v484 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v486, xmmword_29D2F11D0), v445), v486);
  v484[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v487, xmmword_29D2F11D0), v445), v487);
  v484[2] = v489;
  v484[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v490, xmmword_29D2F11D0), v445), v490);
  v491 = vaddq_s32(v442, vsubq_s32(v503, v475));
  v492 = vaddq_s32(v442, vsubq_s32(v502, v475));
  v493 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v491, xmmword_29D2F11D0), v445), v491);
  v494 = vaddq_s32(v442, vsubq_s32(v260, v475));
  v495 = vaddq_s32(v442, vsubq_s32(v270, v475));
  *v485 = v493;
  v485[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v492, xmmword_29D2F11D0), v445), v492);
  v485[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v494, xmmword_29D2F11D0), v445), v494);
  v485[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v495, xmmword_29D2F11D0), v445), v495);
  v485 += 4;
  v496 = vaddq_s32(v442, vsubq_s32(v392, v483));
  v497 = vaddq_s32(v442, vsubq_s32(v402, v483));
  v498 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v496, xmmword_29D2F11D0), v445), v496);
  v499 = vaddq_s32(v442, vsubq_s32(v428, v483));
  v500 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v499, xmmword_29D2F11D0), v445), v499);
  v501 = vaddq_s32(v442, vsubq_s32(v515, v483));
  *v485 = v498;
  v485[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v497, xmmword_29D2F11D0), v445), v497);
  v485[2] = v500;
  v485[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v501, xmmword_29D2F11D0), v445), v501);
  return result;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, _OWORD *a2, char *a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  if (a4 && a5)
  {
    v6 = result[1];
    v7 = result[16];
    v8 = result[17];
    v9 = result[18];
    v10 = result[19];
    v11 = result[4];
    v12 = result[5];
    v13 = result[6];
    v14 = result[7];
    v117 = result[20];
    v121 = result[21];
    v125 = result[22];
    v129 = result[23];
    v15 = result[2];
    v16 = result[32];
    v17 = result[33];
    v18 = result[34];
    v19 = result[35];
    v20 = result[3];
    v21 = result[48];
    v22 = result[49];
    v23 = result[50];
    v24 = result[51];
    v25 = result[36];
    v26 = result[37];
    v27 = result[38];
    v28 = result[39];
    v29 = result[52];
    v30 = result[53];
    v31 = result[54];
    v32 = result[55];
    *a2 = *result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
    a2[4] = v15;
    a2[5] = v20;
    a2[6] = v9;
    a2[7] = v10;
    a2[8] = v16;
    a2[9] = v17;
    a2[10] = v21;
    a2[11] = v22;
    a2[12] = v18;
    a2[13] = v19;
    a2[14] = v23;
    a2[15] = v24;
    a2[16] = v11;
    a2[17] = v12;
    a2[18] = v117;
    a2[19] = v121;
    a2[20] = v13;
    a2[21] = v14;
    a2[22] = v125;
    a2[23] = v129;
    a2[24] = v25;
    a2[25] = v26;
    a2[26] = v29;
    a2[27] = v30;
    a2[28] = v27;
    a2[29] = v28;
    a2[30] = v31;
    a2[31] = v32;
    a2 += 32;
    v5 = -1;
  }

  v33 = 0;
  *a3 = v5;
  if (a4 && a5 >= 5)
  {
    v34 = result[65];
    v35 = result[80];
    v36 = result[81];
    v37 = result[82];
    v38 = result[83];
    v39 = result[68];
    v40 = result[69];
    v41 = result[70];
    v42 = result[71];
    v118 = result[84];
    v122 = result[85];
    v126 = result[86];
    v130 = result[87];
    v43 = result[66];
    v44 = result[96];
    v45 = result[97];
    v46 = result[98];
    v47 = result[99];
    v48 = result[67];
    v49 = result[112];
    v50 = result[113];
    v51 = result[114];
    v52 = result[115];
    v53 = result[100];
    v54 = result[101];
    v55 = result[102];
    v56 = result[103];
    v57 = result[116];
    v58 = result[117];
    v59 = result[118];
    v60 = result[119];
    *a2 = result[64];
    a2[1] = v34;
    a2[2] = v35;
    a2[3] = v36;
    a2[4] = v43;
    a2[5] = v48;
    a2[6] = v37;
    a2[7] = v38;
    a2[8] = v44;
    a2[9] = v45;
    a2[10] = v49;
    a2[11] = v50;
    a2[12] = v46;
    a2[13] = v47;
    a2[14] = v51;
    a2[15] = v52;
    a2[16] = v39;
    a2[17] = v40;
    a2[18] = v118;
    a2[19] = v122;
    a2[20] = v41;
    a2[21] = v42;
    a2[22] = v126;
    a2[23] = v130;
    a2[24] = v53;
    a2[25] = v54;
    a2[26] = v57;
    a2[27] = v58;
    a2[28] = v55;
    a2[29] = v56;
    a2[30] = v59;
    a2[31] = v60;
    a2 += 32;
    v33 = -1;
  }

  v61 = 0;
  a3[1] = v33;
  if (a4 >= 9 && a5)
  {
    v62 = result[9];
    v63 = result[24];
    v64 = result[25];
    v65 = result[26];
    v66 = result[27];
    v67 = result[12];
    v68 = result[13];
    v69 = result[14];
    v70 = result[15];
    v119 = result[28];
    v123 = result[29];
    v127 = result[30];
    v131 = result[31];
    v71 = result[10];
    v72 = result[40];
    v73 = result[41];
    v74 = result[42];
    v75 = result[43];
    v76 = result[11];
    v77 = result[56];
    v78 = result[57];
    v79 = result[58];
    v80 = result[59];
    v81 = result[44];
    v82 = result[45];
    v83 = result[46];
    v84 = result[47];
    v85 = result[60];
    v86 = result[61];
    v87 = result[62];
    v88 = result[63];
    *a2 = result[8];
    a2[1] = v62;
    a2[2] = v63;
    a2[3] = v64;
    a2[4] = v71;
    a2[5] = v76;
    a2[6] = v65;
    a2[7] = v66;
    a2[8] = v72;
    a2[9] = v73;
    a2[10] = v77;
    a2[11] = v78;
    a2[12] = v74;
    a2[13] = v75;
    a2[14] = v79;
    a2[15] = v80;
    a2[16] = v67;
    a2[17] = v68;
    a2[18] = v119;
    a2[19] = v123;
    a2[20] = v69;
    a2[21] = v70;
    a2[22] = v127;
    a2[23] = v131;
    a2[24] = v81;
    a2[25] = v82;
    a2[26] = v85;
    a2[27] = v86;
    a2[28] = v83;
    a2[29] = v84;
    a2[30] = v87;
    a2[31] = v88;
    a2 += 32;
    v61 = -1;
  }

  v89 = 0;
  a3[2] = v61;
  if (a4 >= 9 && a5 >= 5)
  {
    v90 = result[73];
    v91 = result[88];
    v92 = result[89];
    v93 = result[90];
    v94 = result[91];
    v95 = result[76];
    v96 = result[77];
    v97 = result[78];
    v98 = result[79];
    v120 = result[92];
    v124 = result[93];
    v128 = result[94];
    v132 = result[95];
    v99 = result[74];
    v100 = result[104];
    v101 = result[105];
    v102 = result[106];
    v103 = result[107];
    v104 = result[75];
    v105 = result[120];
    v106 = result[121];
    v107 = result[122];
    v108 = result[123];
    v109 = result[108];
    v110 = result[109];
    v111 = result[110];
    v112 = result[111];
    v113 = result[124];
    v114 = result[125];
    v115 = result[126];
    v116 = result[127];
    *a2 = result[72];
    a2[1] = v90;
    a2[2] = v91;
    a2[3] = v92;
    a2[4] = v99;
    a2[5] = v104;
    a2[6] = v93;
    a2[7] = v94;
    a2[8] = v100;
    a2[9] = v101;
    a2[10] = v105;
    a2[11] = v106;
    a2[12] = v102;
    a2[13] = v103;
    a2[14] = v107;
    a2[15] = v108;
    a2[16] = v95;
    a2[17] = v96;
    a2[18] = v120;
    a2[19] = v124;
    a2[20] = v97;
    a2[21] = v98;
    a2[22] = v128;
    a2[23] = v132;
    a2[24] = v109;
    a2[25] = v110;
    a2[26] = v113;
    a2[27] = v114;
    a2[28] = v111;
    a2[29] = v112;
    a2[30] = v115;
    a2[31] = v116;
    v89 = -1;
  }

  a3[3] = v89;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(int32x4_t *a1, _BYTE *a2, int32x4_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v6 = (a3 + 2 * a4);
  v11 = a3[4];
  v12 = a3[5];
  v13 = a3[6];
  v14 = a3[7];
  v15 = *(a3 + a4);
  v16 = *(&a3[1] + a4);
  v17 = *(&a3[2] + a4);
  v18 = *(&a3[3] + a4);
  v19 = *(&a3[4] + a4);
  v20 = *(&a3[5] + a4);
  v21 = *(&a3[6] + a4);
  v22 = *(&a3[7] + a4);
  v23 = v6 + 4;
  v25 = *v6;
  v26 = v6[1];
  v27 = v6[2];
  v28 = v6[3];
  v24 = (v6 + a4);
  v296 = *v23;
  v297 = v23[1];
  v298 = v23[2];
  v299 = v23[3];
  v29 = *v24;
  v30 = v24[1];
  v31 = v24[2];
  v32 = v24[3];
  v24 += 4;
  v33 = vsubq_s32(v15, *a3);
  v34 = vsubq_s32(v16, *a3);
  v343 = vsubq_s32(v8, *a3);
  v35 = vmaxq_s32(v343, v33);
  v36 = vminq_s32(v343, v33);
  v344 = v33;
  v37 = vsubq_s32(v9, v7);
  v345 = v34;
  v38 = vmaxq_s32(vmaxq_s32(v35, v34), v37);
  v39 = vminq_s32(vminq_s32(v36, v34), v37);
  v346 = v37;
  v40 = vsubq_s32(v17, v7);
  v347 = vsubq_s32(v10, v7);
  v288 = v15;
  v289 = v16;
  v290 = v17;
  v291 = v18;
  v41 = vminq_s32(vminq_s32(v39, v347), v40);
  v348 = v40;
  v349 = vsubq_s32(v18, v7);
  v42 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v38, v347), v40), v349), 0);
  v43.i64[0] = 0x2000000020;
  v43.i64[1] = 0x2000000020;
  v44 = vminq_s32(vminq_s32(v41, v349), 0);
  v45 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v42)), vceqzq_s32(v42)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v44)), vceqzq_s32(v44)));
  v350 = vsubq_s32(v25, v7);
  v351 = vsubq_s32(v26, v7);
  v46 = vsubq_s32(v29, v7);
  v47 = vminq_s32(vminq_s32(v350, v351), v46);
  v352 = v46;
  v353 = vsubq_s32(v30, v7);
  v284 = v25;
  v285 = v26;
  v286 = v27;
  v287 = v28;
  v354 = vsubq_s32(v27, v7);
  v355 = vsubq_s32(v28, v7);
  v280 = v29;
  v281 = v30;
  v282 = v31;
  v283 = v32;
  v356 = vsubq_s32(v31, v7);
  v357 = vsubq_s32(v32, v7);
  v48 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v350, v351), v46), v353), v354), v355), v356), v357);
  v49 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v47, v353), v354), v355), v356), v357);
  v50.i64[0] = 0x8000000080000000;
  v50.i64[1] = 0x8000000080000000;
  v51 = vmaxq_s32(vmaxq_s32(v42, v50), v48);
  v52.i64[0] = 0x8000000080000000;
  v52.i64[1] = 0x8000000080000000;
  v53 = vminq_s32(vminq_s32(v44, v52), v49);
  v54 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v48)), vceqzq_s32(v48)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v49)), vceqzq_s32(v49)));
  v358 = vsubq_s32(v11, v7);
  v359 = vsubq_s32(v12, v7);
  v55 = vsubq_s32(v19, v7);
  v56 = vminq_s32(vminq_s32(v358, v359), v55);
  v360 = v55;
  v361 = vsubq_s32(v20, v7);
  v292 = v11;
  v293 = v12;
  v294 = v13;
  v295 = v14;
  v362 = vsubq_s32(v13, v7);
  v363 = vsubq_s32(v14, v7);
  v364 = vsubq_s32(v21, v7);
  v365 = vsubq_s32(v22, v7);
  v57 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v358, v359), v55), v361), v362), v363), v364), v365);
  v58 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v56, v361), v362), v363), v364), v365);
  v59 = vmaxq_s32(v51, v57);
  v60 = vminq_s32(v53, v58);
  v61 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v57)), vceqzq_s32(v57)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v58)), vceqzq_s32(v58)));
  v366 = vsubq_s32(v296, v7);
  v367 = vsubq_s32(v297, v7);
  v62 = *v24;
  v63 = v24[1];
  v64 = v24[2];
  v65 = v24[3];
  v66 = vsubq_s32(*v24, v7);
  v67 = vminq_s32(vminq_s32(v366, v367), v66);
  v368 = v66;
  v369 = vsubq_s32(v63, v7);
  v370 = vsubq_s32(v298, v7);
  v371 = vsubq_s32(v299, v7);
  v372 = vsubq_s32(v64, v7);
  v373 = vsubq_s32(v65, v7);
  v68 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v366, v367), v66), v369), v370), v371), v372), v373);
  v69 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v67, v369), v370), v371), v372), v373);
  v70 = vmaxq_s32(v59, v68);
  v71 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v68)), vceqzq_s32(v68)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v69)), vceqzq_s32(v69)));
  v72 = vmaxq_s32(vmaxq_s32(v45, v54), vmaxq_s32(v61, v71));
  v382 = v70;
  v381 = vminq_s32(v60, v69);
  v73 = vclzq_s32(vsubq_s32(v70, v381));
  v70.i64[0] = 0x1F0000001FLL;
  v70.i64[1] = 0x1F0000001FLL;
  v74 = vsubq_s32(v70, v73);
  v70.i64[0] = -1;
  v70.i64[1] = -1;
  v75 = vsubq_s32(vshlq_s32(v70, v74), v381);
  v76 = vsubq_s32(v43, v73);
  v77 = vcgtq_s32(v72, v76);
  v78 = vminq_s32(v76, v72);
  v383 = vandq_s8(v75, v77);
  v72.i64[0] = 0x800000008;
  v72.i64[1] = 0x800000008;
  v70.i64[0] = 0x300000003;
  v70.i64[1] = 0x300000003;
  v79 = vorrq_s8(vandq_s8(vceqzq_s32(v78), v70), vorrq_s8(vandq_s8(v77, v72), 0));
  v80 = vsubq_s32(v78, v54);
  v81.i64[0] = 0xF0000000FLL;
  v81.i64[1] = 0xF0000000FLL;
  v82 = vmaxq_s32(vminq_s32(v80, v81), 0);
  v83 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v61), v81), 0);
  v377 = vsubq_s32(v78, v82);
  v378 = vsubq_s32(v78, v83);
  v84 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v71), v81), 0);
  v379 = vsubq_s32(v78, v84);
  v85 = vaddq_s32(v84, v83);
  v86 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v45), v81), 0);
  v87.i64[0] = 0x400000004;
  v87.i64[1] = 0x400000004;
  v376 = vsubq_s32(v78, v86);
  v375 = vorrq_s8(vbicq_s8(v87, vceqq_s32(v85, vnegq_s32(vaddq_s32(v86, v82)))), v79);
  v380 = v78;
  v342 = 0u;
  if (vmaxvq_s32(v78))
  {
    v276 = v62;
    v277 = v63;
    v278 = v64;
    v279 = v65;
    v88.i64[0] = 0x300000003;
    v88.i64[1] = 0x300000003;
    v309 = vsubq_s32(v351, vqtbl1q_s8(v351, xmmword_29D2F11D0));
    v310 = vsubq_s32(v352, vqtbl1q_s8(v352, xmmword_29D2F11D0));
    v311 = vsubq_s32(v353, vqtbl1q_s8(v353, xmmword_29D2F11D0));
    v312 = vsubq_s32(v354, vqtbl1q_s8(v354, xmmword_29D2F11D0));
    v313 = vsubq_s32(v355, vqtbl1q_s8(v355, xmmword_29D2F11D0));
    v314 = vsubq_s32(v356, vqtbl1q_s8(v356, xmmword_29D2F11D0));
    v315 = vsubq_s32(v357, vqtbl1q_s8(v357, xmmword_29D2F11D0));
    v317 = vsubq_s32(v359, vqtbl1q_s8(v359, xmmword_29D2F11D0));
    v318 = vsubq_s32(v360, vqtbl1q_s8(v360, xmmword_29D2F11D0));
    v319 = vsubq_s32(v361, vqtbl1q_s8(v361, xmmword_29D2F11D0));
    v300 = vsubq_s32(v342, vqtbl1q_s8(v342, xmmword_29D2F11D0));
    v301 = vsubq_s32(v343, vqtbl1q_s8(v343, xmmword_29D2F11D0));
    v302 = vsubq_s32(v344, vqtbl1q_s8(v344, xmmword_29D2F11D0));
    v303 = vsubq_s32(v345, vqtbl1q_s8(v345, xmmword_29D2F11D0));
    v304 = vsubq_s32(v346, vqtbl1q_s8(v346, xmmword_29D2F11D0));
    v305 = vsubq_s32(v347, vqtbl1q_s8(v347, xmmword_29D2F11D0));
    v307 = vsubq_s32(v349, vqtbl1q_s8(v349, xmmword_29D2F11D0));
    v308 = vsubq_s32(v350, vqtbl1q_s8(v350, xmmword_29D2F11D0));
    v316 = vsubq_s32(v358, vqtbl1q_s8(v358, xmmword_29D2F11D0));
    v306 = vsubq_s32(v348, vqtbl1q_s8(v348, xmmword_29D2F11D0));
    v89 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v300, v301), v302), v303), v304), v305), v306), v307);
    v90 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v300, v301), v302), v303), v304), v305), v306), v307);
    v91 = vmaxq_s32(v89, v50);
    v92 = vminq_s32(v90, v52);
    v93 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v89)), vceqzq_s32(v89)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v90)), vceqzq_s32(v90)));
    v94 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v308, v309), v310), v311), v312), v313), v314), v315);
    v95 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v308, v309), v310), v311), v312), v313), v314), v315);
    v96 = vmaxq_s32(v91, v94);
    v97 = vminq_s32(v92, v95);
    v98 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v94)), vceqzq_s32(v94)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v95)), vceqzq_s32(v95)));
    v320 = vsubq_s32(v362, vqtbl1q_s8(v362, xmmword_29D2F11D0));
    v321 = vsubq_s32(v363, vqtbl1q_s8(v363, xmmword_29D2F11D0));
    v322 = vsubq_s32(v364, vqtbl1q_s8(v364, xmmword_29D2F11D0));
    v323 = vsubq_s32(v365, vqtbl1q_s8(v365, xmmword_29D2F11D0));
    v99 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v316, v317), v318), v319), v320), v321), v322), v323);
    v100 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v316, v317), v318), v319), v320), v321), v322), v323);
    v101 = vmaxq_s32(v96, v99);
    v102 = vminq_s32(v97, v100);
    v324 = vsubq_s32(v366, vqtbl1q_s8(v366, xmmword_29D2F11D0));
    v325 = vsubq_s32(v367, vqtbl1q_s8(v367, xmmword_29D2F11D0));
    v103 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v99)), vceqzq_s32(v99)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v100)), vceqzq_s32(v100)));
    v326 = vsubq_s32(v368, vqtbl1q_s8(v368, xmmword_29D2F11D0));
    v327 = vsubq_s32(v369, vqtbl1q_s8(v369, xmmword_29D2F11D0));
    v328 = vsubq_s32(v370, vqtbl1q_s8(v370, xmmword_29D2F11D0));
    v329 = vsubq_s32(v371, vqtbl1q_s8(v371, xmmword_29D2F11D0));
    v330 = vsubq_s32(v372, vqtbl1q_s8(v372, xmmword_29D2F11D0));
    v331 = vsubq_s32(v373, vqtbl1q_s8(v373, xmmword_29D2F11D0));
    v104 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v324, v325), v326), v327), v328), v329), v330), v331);
    v105 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v324, v325), v326), v327), v328), v329), v330), v331);
    v106 = vmaxq_s32(v101, v104);
    v107 = vminq_s32(v102, v105);
    v108 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v104)), vceqzq_s32(v104)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v105)), vceqzq_s32(v105)));
    v109 = vmaxq_s32(vmaxq_s32(v93, v98), vmaxq_s32(v103, v108));
    v110 = vclzq_s32(vsubq_s32(v106, v107));
    v111 = vsubq_s32(v43, v110);
    v112.i64[0] = 0x1F0000001FLL;
    v112.i64[1] = 0x1F0000001FLL;
    v113 = vsubq_s32(v112, v110);
    v112.i64[0] = -1;
    v112.i64[1] = -1;
    v114 = vshlq_s32(v112, v113);
    v115 = vcgtq_s32(v109, v111);
    v116 = vminq_s32(v111, v109);
    v109.i64[0] = 0x1000000010;
    v109.i64[1] = 0x1000000010;
    v117.i64[0] = 0x1800000018;
    v117.i64[1] = 0x1800000018;
    v340 = v106;
    v341 = vandq_s8(vsubq_s32(v114, v107), v115);
    v118 = vorrq_s8(vandq_s8(vceqzq_s32(v116), v88), vbslq_s8(v115, v117, v109));
    v119 = vmaxq_s32(vminq_s32(vsubq_s32(v116, v93), v81), 0);
    v120 = vmaxq_s32(vminq_s32(vsubq_s32(v116, v98), v81), 0);
    v121 = vmaxq_s32(vminq_s32(vsubq_s32(v116, v103), v81), 0);
    v122 = vmaxq_s32(vminq_s32(vsubq_s32(v116, v108), v81), 0);
    v334 = vsubq_s32(v116, v119);
    v339 = v107;
    v338 = v116;
    v335 = vsubq_s32(v116, v120);
    v336 = vsubq_s32(v116, v121);
    v337 = vsubq_s32(v116, v122);
    v332 = vsubq_s32(v374, vqtbl1q_s8(v374, xmmword_29D2F11D0));
    v333 = vorrq_s8(vbicq_s8(v87, vceqq_s32(vaddq_s32(v122, v121), vnegq_s32(vaddq_s32(v119, v120)))), v118);
    AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(&v342, &v300);
    v123.i64[1] = v376.i64[1];
    v124 = v380;
    v125 = vandq_s8(v383, vceqq_s32(v380, v376));
    v342 = vaddq_s32(v125, v342);
    v343 = vaddq_s32(v343, v125);
    v344 = vaddq_s32(v344, v125);
    v345 = vaddq_s32(v345, v125);
    v346 = vaddq_s32(v346, v125);
    v347 = vaddq_s32(v347, v125);
    v348 = vaddq_s32(v348, v125);
    v349 = vaddq_s32(v349, v125);
    v126 = vandq_s8(v383, vceqq_s32(v380, v377));
    v350 = vaddq_s32(v350, v126);
    v351 = vaddq_s32(v351, v126);
    v352 = vaddq_s32(v352, v126);
    v353 = vaddq_s32(v353, v126);
    v354 = vaddq_s32(v354, v126);
    v355 = vaddq_s32(v355, v126);
    v356 = vaddq_s32(v356, v126);
    v357 = vaddq_s32(v357, v126);
    v127 = vandq_s8(v383, vceqq_s32(v380, v378));
    v128 = vaddq_s32(v359, v127);
    v129 = vandq_s8(v383, vceqq_s32(v380, v379));
    v130.i64[1] = v373.i64[1];
    *v130.i8 = vqmovn_u32(v375);
    v358 = vaddq_s32(v358, v127);
    v359 = v128;
    v131.i64[0] = 0x8000800080008;
    v131.i64[1] = 0x8000800080008;
    v360 = vaddq_s32(v360, v127);
    v361 = vaddq_s32(v361, v127);
    *v128.i8 = vqmovn_u32(v380);
    v132 = vbicq_s8(v128, vceqzq_s16(vandq_s8(v130, v131)));
    v362 = vaddq_s32(v362, v127);
    v363 = vaddq_s32(v363, v127);
    v133.i64[0] = 0x10001000100010;
    v133.i64[1] = 0x10001000100010;
    v134 = vandq_s8(vshlq_n_s16(v130, 2uLL), v133);
    v133.i64[0] = 0x3000300030003;
    v133.i64[1] = 0x3000300030003;
    v364 = vaddq_s32(v364, v127);
    v365 = vaddq_s32(v365, v127);
    v127.i64[0] = 0x2000200020002;
    v127.i64[1] = 0x2000200020002;
    v366 = vaddq_s32(v366, v129);
    v367 = vaddq_s32(v367, v129);
    v135.i64[0] = 0x20002000200020;
    v135.i64[1] = 0x20002000200020;
    v136 = vaddq_s32(vaddq_s32(v378, v377), v379);
    v368 = vaddq_s32(v368, v129);
    v369 = vaddq_s32(v369, v129);
    *v123.i8 = vqmovn_u32(v376);
    v370 = vaddq_s32(v370, v129);
    v371 = vaddq_s32(v371, v129);
    v137.i64[0] = 0x7000700070007;
    v137.i64[1] = 0x7000700070007;
    *v136.i8 = vqmovn_u32(v136);
    v138 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v132, v134), vandq_s8(vceqq_s16(vandq_s8(v130, v133), v127), v135)), v123, v137), vshlq_n_s16(v136, 3uLL));
    v139 = vpaddq_s16(v138, v138);
    v372 = vaddq_s32(v372, v129);
    v373 = vaddq_s32(v373, v129);
    if ((vpaddq_s16(v139, v139).i16[0] + 175) > 0xFF7)
    {
      *a1 = v7;
      a1[1] = v8;
      a1[2] = v288;
      a1[3] = v289;
      a1[4] = v9;
      a1[5] = v10;
      a1[6] = v290;
      a1[7] = v291;
      a1[8] = v284;
      a1[9] = v285;
      a1[10] = v280;
      a1[11] = v281;
      a1[12] = v286;
      a1[13] = v287;
      a1[14] = v282;
      a1[15] = v283;
      a1[16] = v292;
      a1[17] = v293;
      a1[18] = v19;
      a1[19] = v20;
      a1[20] = v294;
      a1[21] = v295;
      a1[22] = v21;
      a1[23] = v22;
      a1[24] = v296;
      a1[25] = v297;
      a1[26] = v276;
      a1[27] = v277;
      a1[28] = v298;
      a1[29] = v299;
      a1[30] = v278;
      a1[31] = v279;
      LOBYTE(v143) = -1;
      result = 512;
    }

    else
    {
      v140 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v141 = 8 * (a1 & 7);
      if (v141)
      {
        v142 = *v140 & ~(-1 << v141);
      }

      else
      {
        v142 = 0;
      }

      if (v380.i32[0])
      {
        v145 = ((v380.i32[0] << 20) + 32505856) & 0x1F00000;
      }

      else
      {
        v145 = 0;
      }

      v146 = vand_s8(vshl_u32(*&vextq_s8(v375, v375, 8uLL), 0xF0000000ALL), 0xF800000007C00);
      v147 = v146.i32[1];
      v148 = v375.i8[0] & 0x1F | (32 * (v375.i8[4] & 0x1F)) | v146.i32[0];
      *a2 = 0;
      v149 = v374;
      v150 = ((v124.i32[1] << 25) + 1040187392) & 0x3E000000;
      if (!v124.i32[1])
      {
        v150 = 0;
      }

      v151 = vextq_s8(v124, v124, 8uLL).u64[0];
      v152 = vceqz_s32(v151);
      v153.i64[0] = v152.i32[0];
      v153.i64[1] = v152.i32[1];
      v154 = v153;
      v155.i64[0] = -1;
      v155.i64[1] = -1;
      v156 = vand_s8(vadd_s32(v151, -1), 0x1F0000001FLL);
      v153.i64[0] = v156.u32[0];
      v153.i64[1] = v156.u32[1];
      v157 = vbicq_s8(vshlq_u64(v153, xmmword_29D2F11E0), v154);
      v158 = vorrq_s8(vdupq_laneq_s64(v157, 1), v157).u64[0] | v148 | v145 | v150 | v147;
      v159 = (v158 << v141) | v142;
      if (v141 >= 0x18)
      {
        *v140 = v159;
        v159 = v158 >> (-8 * (a1 & 7u));
      }

      v160 = (v141 + 40) & 0x38;
      *(v140 + (((v141 + 40) >> 3) & 8)) = v159 | (v149.i64[0] << v160);
      v161 = v149.i64[0] >> -v160;
      if (((v141 + 40) & 0x38) == 0)
      {
        v161 = 0;
      }

      v162 = (v141 + 104) & 0x38;
      *(v140 + (((v141 + 104) >> 3) & 0x18)) = v161 | (v149.i64[1] << v162);
      if (((v141 + 104) & 0x38) != 0)
      {
        v163 = v149.i64[1] >> -v162;
      }

      else
      {
        v163 = 0;
      }

      v164 = v141 + 168;
      v165.i64[1] = v379.i64[1];
      v166 = vsubq_s32(v380, v376);
      v167 = vsubq_s32(v380, v377);
      v168 = vsubq_s32(v380, v379);
      *v165.i8 = vqmovn_u32(v166);
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u32(v167);
      *v166.i8 = vqmovn_u16(v166);
      *v167.i8 = vqmovn_u32(vsubq_s32(v380, v378));
      *v167.i8 = vqmovn_u16(v167);
      *v168.i8 = vqmovn_u32(v168);
      *v168.i8 = vqmovn_u16(v168);
      v169 = vtrn1q_s8(v165, v166);
      v170 = vtrn2q_s8(v165, v166);
      v171 = vtrn1q_s8(v167, v168);
      v172 = vtrn2q_s8(v167, v168);
      v173 = vzip1q_s16(v169, v171);
      v174 = vtrn2q_s16(v169, v171);
      v175 = vzip1q_s16(v170, v172);
      v172.i64[0] = vzip1q_s32(v174, vtrn2q_s16(v170, v172)).u64[0];
      v174.i64[0] = 0x400000004;
      v174.i64[1] = 0x400000004;
      v176.i64[0] = 0x404040404040404;
      v176.i64[1] = 0x404040404040404;
      v177 = vandq_s8(vtstq_s32(v375, v174), v176);
      v176.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v176.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v178 = vshlq_u8(v155, vorrq_s8(v177, v176));
      v179 = vmovl_u8(vand_s8(*v178.i8, *&vzip1q_s32(v173, v175)));
      v180 = vmovl_u8(vand_s8(*&vextq_s8(v178, v178, 8uLL), *v172.i8));
      v181 = vmovl_u8(*v177.i8);
      v182 = vmovl_high_u8(v177);
      v183 = vpaddq_s16(vshlq_u16(v179, vtrn1q_s16(0, v181)), vshlq_u16(v180, vtrn1q_s16(0, v182)));
      v184 = vpaddq_s16(v181, v182);
      v185 = vmovl_u16(*v184.i8);
      v186 = vmovl_high_u16(v184);
      v187 = vpaddq_s32(vshlq_u32(vmovl_u16(*v183.i8), vtrn1q_s32(0, v185)), vshlq_u32(vmovl_high_u16(v183), vtrn1q_s32(0, v186)));
      v188 = vpaddq_s32(v185, v186);
      v189.i64[0] = v187.u32[0];
      v189.i64[1] = v187.u32[1];
      v190 = v189;
      v189.i64[0] = v187.u32[2];
      v189.i64[1] = v187.u32[3];
      v191 = v189;
      v189.i64[0] = v188.u32[0];
      v189.i64[1] = v188.u32[1];
      v192 = v189;
      v189.i64[0] = v188.u32[2];
      v189.i64[1] = v188.u32[3];
      v193 = vpaddq_s64(vshlq_u64(v190, vzip1q_s64(0, v192)), vshlq_u64(v191, vzip1q_s64(0, v189)));
      v194 = vpaddq_s64(v192, v189);
      v195 = (v141 + 168) & 0x38;
      v196 = (v193.i64[0] << ((v141 - 88) & 0x38)) | v163;
      if ((v194.i64[0] + v195) >= 0x40)
      {
        *(v140 + ((v164 >> 3) & 0x18)) = v196;
        v196 = v193.i64[0] >> -((v141 - 88) & 0x38);
        if (!v195)
        {
          v196 = 0;
        }
      }

      v197 = v194.i64[0] + v164;
      v198 = v196 | (v193.i64[1] << v197);
      if ((v197 & 0x3F) + v194.i64[1] >= 0x40)
      {
        *(v140 + ((v197 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v198;
        v198 = v193.i64[1] >> -(v197 & 0x3F);
        if ((v197 & 0x3F) == 0)
        {
          v198 = 0;
        }
      }

      v199 = v197 + v194.i64[1];
      v200.i64[0] = 0x800000008;
      v200.i64[1] = 0x800000008;
      v201 = vbicq_s8(v380, vceqzq_s32(vandq_s8(v375, v200)));
      v202.i64[0] = 0x1F0000001FLL;
      v202.i64[1] = 0x1F0000001FLL;
      v203.i64[0] = -1;
      v203.i64[1] = -1;
      v204 = vandq_s8(vshlq_u32(v203, vaddq_s32(v201, v202)), v383);
      v205.i64[0] = v204.u32[0];
      v205.i64[1] = v204.u32[1];
      v206 = v205;
      v205.i64[0] = v204.u32[2];
      v205.i64[1] = v204.u32[3];
      v207 = v205;
      v205.i64[0] = v201.u32[0];
      v205.i64[1] = v201.u32[1];
      v208 = v205;
      v205.i64[0] = v201.u32[2];
      v205.i64[1] = v201.u32[3];
      v209 = vpaddq_s64(vshlq_u64(v206, vzip1q_s64(0, v208)), vshlq_u64(v207, vzip1q_s64(0, v205)));
      v210 = vpaddq_s64(v208, v205);
      v211 = (v209.i64[0] << v199) | v198;
      if (v210.i64[0] + (v199 & 0x3F) >= 0x40)
      {
        *(v140 + ((v199 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
        v211 = v209.i64[0] >> -(v199 & 0x3F);
        if ((v199 & 0x3F) == 0)
        {
          v211 = 0;
        }
      }

      v212 = v210.i64[0] + v199;
      v213 = v211 | (v209.i64[1] << v212);
      if ((v212 & 0x3F) + v210.i64[1] >= 0x40)
      {
        *(v140 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v213;
        v213 = v209.i64[1] >> -(v212 & 0x3F);
        if ((v212 & 0x3F) == 0)
        {
          v213 = 0;
        }
      }

      v214 = v212 + v210.i64[1];
      v215.i64[0] = 0x1F0000001FLL;
      v215.i64[1] = 0x1F0000001FLL;
      v216.i64[0] = -1;
      v216.i64[1] = -1;
      v217 = vandq_s8(vshlq_u32(v216, v215), v342);
      v218.i64[0] = v217.u32[0];
      v218.i64[1] = v217.u32[1];
      v219 = v218;
      v218.i64[0] = v217.u32[2];
      v218.i64[1] = v217.u32[3];
      v220 = vpaddq_s64(v219, v218);
      v221 = vpaddq_s64(0, 0);
      v222 = (v220.i64[0] << v214) | v213;
      if (v221.i64[0] + (v214 & 0x3F) >= 0x40)
      {
        *(v140 + ((v214 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v222;
        if ((v214 & 0x3F) != 0)
        {
          v222 = v220.i64[0] >> -(v214 & 0x3F);
        }

        else
        {
          v222 = 0;
        }
      }

      v223 = v221.i64[0] + v214;
      v224 = (v221.i64[0] + v214) & 0x3F;
      v225 = v222 | (v220.i64[1] << v223);
      if ((v224 + v221.i64[1]) >= 0x40)
      {
        *(v140 + ((v223 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v225;
        if (v224)
        {
          v225 = v220.i64[1] >> -v224;
        }

        else
        {
          v225 = 0;
        }
      }

      v226 = v223 + v221.i64[1];
      v227.i64[0] = 0x1F0000001FLL;
      v227.i64[1] = 0x1F0000001FLL;
      v228.i64[0] = -1;
      v228.i64[1] = -1;
      for (i = 16; i != 128; i += 16)
      {
        v230 = vandq_s8(vshlq_u32(v228, vaddq_s32(v376, v227)), *(&v342 + i));
        v231.i64[0] = v230.u32[0];
        v231.i64[1] = v230.u32[1];
        v232 = v231;
        v231.i64[0] = v230.u32[2];
        v231.i64[1] = v230.u32[3];
        v233 = v231;
        v231.i64[0] = v376.u32[0];
        v231.i64[1] = v376.u32[1];
        v234 = v231;
        v231.i64[0] = v376.u32[2];
        v231.i64[1] = v376.u32[3];
        v235 = vpaddq_s64(vshlq_u64(v232, vzip1q_s64(0, v234)), vshlq_u64(v233, vzip1q_s64(0, v231)));
        v236 = vpaddq_s64(v234, v231);
        v237 = (v235.i64[0] << v226) | v225;
        if (v236.i64[0] + (v226 & 0x3F) >= 0x40)
        {
          *(v140 + ((v226 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v237;
          v237 = v235.i64[0] >> -(v226 & 0x3F);
          if ((v226 & 0x3F) == 0)
          {
            v237 = 0;
          }
        }

        v238 = v236.i64[0] + v226;
        v225 = v237 | (v235.i64[1] << v238);
        if ((v238 & 0x3F) + v236.i64[1] >= 0x40)
        {
          *(v140 + ((v238 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v225;
          v225 = v235.i64[1] >> -(v238 & 0x3F);
          if ((v238 & 0x3F) == 0)
          {
            v225 = 0;
          }
        }

        v226 = v238 + v236.i64[1];
      }

      v239 = 0;
      v240.i64[0] = 0x1F0000001FLL;
      v240.i64[1] = 0x1F0000001FLL;
      v241.i64[0] = -1;
      v241.i64[1] = -1;
      do
      {
        v242 = vandq_s8(vshlq_u32(v241, vaddq_s32(v377, v240)), *(&v350 + v239));
        v243.i64[0] = v242.u32[0];
        v243.i64[1] = v242.u32[1];
        v244 = v243;
        v243.i64[0] = v242.u32[2];
        v243.i64[1] = v242.u32[3];
        v245 = v243;
        v243.i64[0] = v377.u32[0];
        v243.i64[1] = v377.u32[1];
        v246 = v243;
        v243.i64[0] = v377.u32[2];
        v243.i64[1] = v377.u32[3];
        v247 = vpaddq_s64(vshlq_u64(v244, vzip1q_s64(0, v246)), vshlq_u64(v245, vzip1q_s64(0, v243)));
        v248 = vpaddq_s64(v246, v243);
        v249 = (v247.i64[0] << v226) | v225;
        if (v248.i64[0] + (v226 & 0x3F) >= 0x40)
        {
          *(v140 + ((v226 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v249;
          v249 = v247.i64[0] >> -(v226 & 0x3F);
          if ((v226 & 0x3F) == 0)
          {
            v249 = 0;
          }
        }

        v250 = v248.i64[0] + v226;
        v225 = v249 | (v247.i64[1] << v250);
        if ((v250 & 0x3F) + v248.i64[1] >= 0x40)
        {
          *(v140 + ((v250 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v225;
          v225 = v247.i64[1] >> -(v250 & 0x3F);
          if ((v250 & 0x3F) == 0)
          {
            v225 = 0;
          }
        }

        v226 = v250 + v248.i64[1];
        v239 += 16;
      }

      while (v239 != 128);
      v251 = 0;
      v252.i64[0] = 0x1F0000001FLL;
      v252.i64[1] = 0x1F0000001FLL;
      v253.i64[0] = -1;
      v253.i64[1] = -1;
      do
      {
        v254 = vandq_s8(vshlq_u32(v253, vaddq_s32(v378, v252)), *(&v358 + v251));
        v255.i64[0] = v254.u32[0];
        v255.i64[1] = v254.u32[1];
        v256 = v255;
        v255.i64[0] = v254.u32[2];
        v255.i64[1] = v254.u32[3];
        v257 = v255;
        v255.i64[0] = v378.u32[0];
        v255.i64[1] = v378.u32[1];
        v258 = v255;
        v255.i64[0] = v378.u32[2];
        v255.i64[1] = v378.u32[3];
        v259 = vpaddq_s64(vshlq_u64(v256, vzip1q_s64(0, v258)), vshlq_u64(v257, vzip1q_s64(0, v255)));
        v260 = vpaddq_s64(v258, v255);
        v261 = (v259.i64[0] << v226) | v225;
        if (v260.i64[0] + (v226 & 0x3F) >= 0x40)
        {
          *(v140 + ((v226 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v261;
          v261 = v259.i64[0] >> -(v226 & 0x3F);
          if ((v226 & 0x3F) == 0)
          {
            v261 = 0;
          }
        }

        v262 = v260.i64[0] + v226;
        v225 = v261 | (v259.i64[1] << v262);
        if ((v262 & 0x3F) + v260.i64[1] >= 0x40)
        {
          *(v140 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v225;
          v225 = v259.i64[1] >> -(v262 & 0x3F);
          if ((v262 & 0x3F) == 0)
          {
            v225 = 0;
          }
        }

        v226 = v262 + v260.i64[1];
        v251 += 16;
      }

      while (v251 != 128);
      v263 = 0;
      v264.i64[0] = 0x1F0000001FLL;
      v264.i64[1] = 0x1F0000001FLL;
      v265.i64[0] = -1;
      v265.i64[1] = -1;
      do
      {
        v266 = vandq_s8(vshlq_u32(v265, vaddq_s32(v379, v264)), *(&v366 + v263));
        v267.i64[0] = v266.u32[0];
        v267.i64[1] = v266.u32[1];
        v268 = v267;
        v267.i64[0] = v266.u32[2];
        v267.i64[1] = v266.u32[3];
        v269 = v267;
        v267.i64[0] = v379.u32[0];
        v267.i64[1] = v379.u32[1];
        v270 = v267;
        v267.i64[0] = v379.u32[2];
        v267.i64[1] = v379.u32[3];
        v271 = vpaddq_s64(vshlq_u64(v268, vzip1q_s64(0, v270)), vshlq_u64(v269, vzip1q_s64(0, v267)));
        v272 = vpaddq_s64(v270, v267);
        v273 = (v271.i64[0] << v226) | v225;
        if (v272.i64[0] + (v226 & 0x3F) >= 0x40)
        {
          *(v140 + ((v226 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v273;
          v273 = v271.i64[0] >> -(v226 & 0x3F);
          if ((v226 & 0x3F) == 0)
          {
            v273 = 0;
          }
        }

        v274 = v272.i64[0] + v226;
        v225 = v273 | (v271.i64[1] << v274);
        if ((v274 & 0x3F) + v272.i64[1] >= 0x40)
        {
          *(v140 + ((v274 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v225;
          v225 = v271.i64[1] >> -(v274 & 0x3F);
          if ((v274 & 0x3F) == 0)
          {
            v225 = 0;
          }
        }

        v226 = v274 + v272.i64[1];
        v263 += 16;
      }

      while (v263 != 128);
      if ((v226 & 0x3F) != 0)
      {
        *(v140 + ((v226 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v225;
      }

      v275 = ((v226 - v141 + 7) >> 3) + 1;
      result = v275 & 0x3FFFFFFFFFFFFFFELL;
      v143 = *a2 | ((v275 >> 1) - 1);
    }
  }

  else
  {
    *a1 = *a3;
    LOBYTE(v143) = 7;
    result = 16;
  }

  *a2 = v143;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, int32x4_t *a2, _BYTE *a3, unsigned int a4, unsigned int a5)
{
  v8 = a2;
  v9 = result;
  if (a4 && a5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(a2, a3, result, 256);
    v8 = (v8 + result);
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a3 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  if (a5 >= 5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 1, v9 + 64, 256);
    v8 = (v8 + result);
    if (a4 < 9)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  a3[1] = 0;
  if (a4 < 9)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (a5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 2, v9 + 8, 256);
    v8 = (v8 + result);
    goto LABEL_13;
  }

LABEL_12:
  a3[2] = 0;
  if (a4 < 9)
  {
LABEL_17:
    a3[3] = 0;
    return result;
  }

LABEL_13:
  if (a5 < 5)
  {
    goto LABEL_17;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 3, v9 + 72, 256);
}

__n128 AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(__n128 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v26 = *MEMORY[0x29EDCA608];
  v25 = 0uLL;
  v5 = 32;
  do
  {
    v6 = 64 - v3;
    if (64 - v3 >= v5)
    {
      v6 = v5;
    }

    v25.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v4) & ~(-1 << v6)) << v3;
    v4 += v6;
    v7 = v6 + v3;
    v2 += v7 >> 6;
    v3 = v7 & 0x3F;
    v5 -= v6;
  }

  while (v5);
  if ((v3 | (v2 << 6)) + 32 <= 0x80)
  {
    v8 = 32;
    do
    {
      v9 = 64 - v3;
      if (64 - v3 >= v8)
      {
        v9 = v8;
      }

      v10 = v9 + v3;
      v2 += v10 >> 6;
      v3 = v10 & 0x3F;
      v8 -= v9;
    }

    while (v8);
    if ((v3 | (v2 << 6)) + 32 <= 0x80)
    {
      v11 = 0;
      v12 = 32;
      do
      {
        v13 = 64 - v3;
        if (64 - v3 >= v12)
        {
          v13 = v12;
        }

        v25.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v11) & ~(-1 << v13)) << v3;
        v11 += v13;
        v14 = v13 + v3;
        v2 += v14 >> 6;
        v3 = v14 & 0x3F;
        v12 -= v13;
      }

      while (v12);
      if ((v3 | (v2 << 6)) + 32 <= 0x80)
      {
        v15 = 0;
        v16 = 32;
        do
        {
          v17 = 64 - v3;
          if (64 - v3 >= v16)
          {
            v17 = v16;
          }

          v25.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v15) & ~(-1 << v17)) << v3;
          v15 += v17;
          v18 = v17 + v3;
          v2 += v18 >> 6;
          v3 = v18 & 0x3F;
          v16 -= v17;
        }

        while (v16);
      }
    }
  }

  v19 = v25;
  v20 = v25;
  *a1 = v25;
  a1[1] = v19;
  a1[2] = v19;
  a1[3] = v19;
  v21 = (a1 + a2);
  *v21 = v19;
  v21[1] = v19;
  v21[2] = v19;
  v21[3] = v19;
  v22 = (a1 + 2 * a2);
  *v22 = v19;
  v22[1] = v19;
  v22[2] = v19;
  v22[3] = v19;
  v23 = a1 + 2 * a2 + a2;
  *v23 = v19;
  *(v23 + 16) = v19;
  result = v25;
  *(v23 + 32) = v20;
  *(v23 + 48) = result;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0xFFu:
      v13 = *(a3 + 16);
      v14 = *(a3 + 32);
      v15 = *(a3 + 48);
      v16 = *(a3 + 64);
      v17 = *(a3 + 80);
      v18 = *(a3 + 96);
      v19 = *(a3 + 112);
      v20 = *(a3 + 128);
      v21 = *(a3 + 144);
      v22 = *(a3 + 160);
      v23 = *(a3 + 176);
      v24 = *(a3 + 192);
      v25 = *(a3 + 208);
      v26 = *(a3 + 224);
      v27 = *(a3 + 240);
      v28 = *(a3 + 256);
      v29 = *(a3 + 272);
      v30 = *(a3 + 288);
      v31 = *(a3 + 304);
      v32 = *(a3 + 320);
      v33 = *(a3 + 336);
      v34 = *(a3 + 352);
      v35 = *(a3 + 368);
      v36 = *(a3 + 384);
      v37 = *(a3 + 400);
      v38 = *(a3 + 416);
      v39 = *(a3 + 432);
      v40 = *(a3 + 448);
      v41 = *(a3 + 464);
      v42 = *(a3 + 480);
      v43 = *(a3 + 496);
      *a1 = *a3;
      *(a1 + 16) = v13;
      *(a1 + 32) = v14;
      *(a1 + 48) = v15;
      v44 = (a1 + 2 * a2);
      *(a1 + 64) = v20;
      *(a1 + 80) = v21;
      *(a1 + 96) = v22;
      *(a1 + 112) = v23;
      v45 = (a1 + a2);
      *v45 = v16;
      v45[1] = v17;
      v45[2] = v18;
      v45[3] = v19;
      v46 = (a1 + a2 + 64);
      *v46 = v24;
      v46[1] = v25;
      v46[2] = v26;
      v46[3] = v27;
      v47 = v44 + 4;
      *v44 = v28;
      v44[1] = v29;
      v44[2] = v30;
      v44[3] = v31;
      v48 = (v44 + a2);
      *v47 = v36;
      v47[1] = v37;
      v47[2] = v38;
      v47[3] = v39;
      *v48 = v32;
      v48[1] = v33;
      v48[2] = v34;
      v48[3] = v35;
      v48 += 4;
      result = 512;
      *v48 = v40;
      v48[1] = v41;
      v48[2] = v42;
      v48[3] = v43;
      return result;
    case 7u:
      v9 = *a3;
      *a1 = *a3;
      *(a1 + 16) = v9;
      *(a1 + 32) = v9;
      *(a1 + 48) = v9;
      *(a1 + 64) = v9;
      *(a1 + 80) = v9;
      *(a1 + 96) = v9;
      *(a1 + 112) = v9;
      v10 = (a1 + a2);
      *v10 = v9;
      v10[1] = v9;
      v10[2] = v9;
      v10[3] = v9;
      v10[4] = v9;
      v10[5] = v9;
      v10[6] = v9;
      v10[7] = v9;
      v11 = (a1 + 2 * a2);
      *v11 = v9;
      v11[1] = v9;
      v11[2] = v9;
      v11[3] = v9;
      v11[4] = v9;
      v11[5] = v9;
      v11[6] = v9;
      v11[7] = v9;
      v12 = (a1 + a2 + 2 * a2);
      *v12 = v9;
      v12[1] = v9;
      v12[2] = v9;
      v12[3] = v9;
      v12[4] = v9;
      v12[5] = v9;
      result = 16;
      v12[6] = v9;
      v12[7] = v9;
      return result;
    case 0u:
      result = 0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v6 = (a1 + a2);
      v6[6] = 0u;
      v6[7] = 0u;
      v6[4] = 0u;
      v6[5] = 0u;
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      v7 = (a1 + 2 * a2);
      v7[6] = 0u;
      v7[7] = 0u;
      v7[4] = 0u;
      v7[5] = 0u;
      v7[2] = 0u;
      v7[3] = 0u;
      *v7 = 0u;
      v7[1] = 0u;
      v8 = (a1 + a2 + 2 * a2);
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      return result;
  }

  v519 = 0;
  v518 = (8 * (a3 & 7)) | 0x1000;
  v516 = 8 * (a3 & 7);
  v517 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(&v552, v557, &v551, &v516, a4);
  v51.i64[0] = 0x300000003;
  v51.i64[1] = 0x300000003;
  v52 = vbicq_s8(v557[0], vceqq_s32(vandq_s8(v552, v51), v51));
  v557[0] = v52;
  v553 = v52;
  v554 = v52;
  v555 = v52;
  v556 = v52;
  v53.i64[0] = 0x400000004;
  v53.i64[1] = 0x400000004;
  v54.i64[0] = 0x404040404040404;
  v54.i64[1] = 0x404040404040404;
  v55 = vandq_s8(vtstq_s32(v552, v53), v54);
  v56 = v516;
  if (vmaxvq_s8(v55) < 1)
  {
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v511 = v71;
    v512 = v71;
    v514 = v71;
    v515 = v71;
    v67 = a2;
  }

  else
  {
    v57 = vmovl_u8(*&vpaddq_s8(v55, v55));
    v58 = vmovl_u16(*&vpaddq_s16(v57, v57));
    v59 = vpaddq_s32(v58, v58).u64[0];
    v60.i64[0] = v59;
    v60.i64[1] = HIDWORD(v59);
    v61 = v60;
    v62 = vaddvq_s64(v60);
    v63 = v62;
    v64 = v516 + v62;
    if (v518)
    {
      v65 = v518 >= v64;
    }

    else
    {
      v65 = 1;
    }

    v66 = v65;
    v67 = a2;
    if (v62 <= 0x80 && (v66 & 1) != 0)
    {
      v50.i64[0] = 63;
      v68 = (v517 + 8 * (v516 >> 6));
      v69 = vaddq_s64(vdupq_lane_s64(vandq_s8(v516, v50).i64[0], 0), vzip1q_s64(0, v61));
      v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v68, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v68->i64[0], 0), vnegq_s64(v69)));
      if ((v516 & 0x3F) + v63 >= 0x81)
      {
        v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v68[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v68[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v70);
      }

      v56 = v64;
    }

    else
    {
      v519 = 1;
      v70 = 0uLL;
    }

    v72 = vzip1_s32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
    v73.i64[0] = v72.u32[0];
    v73.i64[1] = v72.u32[1];
    v74 = vshlq_u64(v70, vnegq_s64(v73));
    v75 = vuzp1q_s32(vzip1q_s64(v70, v74), vzip2q_s64(v70, v74));
    v76 = vshlq_u32(v75, vnegq_s32((*&v57 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v77 = vuzp1q_s16(vzip1q_s32(v75, v76), vzip2q_s32(v75, v76));
    v78 = vshlq_u16(v77, vnegq_s16((*&v55 & __PAIR128__(0xF8FFF8FFF8FFF8FFLL, 0xF8FFF8FFF8FFF8FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v77, v78), vzip2q_s16(v77, v78));
    v78.i64[0] = 0x101010101010101;
    v78.i64[1] = 0x101010101010101;
    v80 = vshlq_s8(v78, v55);
    v78.i64[0] = -1;
    v78.i64[1] = -1;
    v81 = vqtbl1q_s8(vandq_s8(vaddq_s8(v80, v78), v79), xmmword_29D2F0F70);
    v79.i64[0] = vmovl_s8(*v81.i8).u64[0];
    v78.i64[0] = vmovl_s8(vdup_lane_s32(*v81.i8, 1)).u64[0];
    v82 = vmovl_s8(*&vdupq_laneq_s32(v81, 2)).u64[0];
    v81.i64[0] = vmovl_s8(*&vdupq_laneq_s32(v81, 3)).u64[0];
    v553 = vsubw_s16(v553, *v79.i8);
    v554 = vsubw_s16(v554, *v78.i8);
    v555 = vsubw_s16(v555, v82);
    v556 = vsubw_s16(v556, *v81.i8);
    v515 = vmovl_s16(vceqz_s16(*v78.i8));
    v512 = vmovl_s16(vceqz_s16(*v79.i8));
    v514 = vmovl_s16(vceqz_s16(v82));
    v511 = vmovl_s16(vceqz_s16(*v81.i8));
  }

  v83.i64[0] = 0x800000008;
  v83.i64[1] = 0x800000008;
  v84 = vbicq_s8(v52, vceqzq_s32(vandq_s8(v552, v83)));
  v83.i64[0] = vpaddq_s32(v84, v84).u64[0];
  v85.i64[0] = v83.u32[0];
  v85.i64[1] = v83.u32[1];
  v86 = v85;
  v87 = vaddvq_s64(v85);
  v88 = v87;
  v89 = v56 + v87;
  if (v518)
  {
    v90 = v518 >= v89;
  }

  else
  {
    v90 = 1;
  }

  v91 = v90;
  if (v87 <= 0x80 && (v91 & 1) != 0)
  {
    v92 = vaddq_s64(vdupq_n_s64(v56 & 0x3F), vzip1q_s64(0, v86));
    v93 = (v517 + 8 * (v56 >> 6));
    v94 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v93, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v92)), vshlq_u64(vdupq_lane_s64(v93->i64[0], 0), vnegq_s64(v92)));
    if ((v56 & 0x3F) + v88 >= 0x81)
    {
      v94 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v93[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v92)), vshlq_u64(vdupq_laneq_s64(v93[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v92))), v94);
    }

    v56 = v89;
  }

  else
  {
    v519 = 1;
    v94 = 0uLL;
  }

  v95 = vzip1_s32(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
  v96.i64[0] = v95.u32[0];
  v96.i64[1] = v95.u32[1];
  v97 = vshlq_u64(v94, vnegq_s64(v96));
  v98 = vuzp1q_s32(vzip1q_s64(v94, v97), vzip2q_s64(v94, v97));
  v97.i64[0] = 0x1F0000001FLL;
  v97.i64[1] = 0x1F0000001FLL;
  v99.i64[0] = 0x2000000020;
  v99.i64[1] = 0x2000000020;
  v100 = vshlq_s32(vshlq_s32(v98, vsubq_s32(v99, v84)), vaddq_s32(v84, v97));
  v557[3] = v100;
  v101 = v552.i8[0] & 3;
  if (v101 == 2)
  {
    if (v518)
    {
      v102 = v56 + 16;
      v103 = v56 + 32;
      if (v518 >= v56 + 16)
      {
        v104 = v56 + 16;
      }

      else
      {
        v103 = v56 + 16;
        v104 = v56;
      }

      if (v518 >= v103)
      {
        v56 = v103;
      }

      else
      {
        v56 = v104;
      }

      if (v518 < v102 || v518 < v103)
      {
        v519 = 1;
      }
    }

    else
    {
      v56 += 32;
    }
  }

  v105 = vpaddq_s32(0, 0).u64[0];
  v106.i64[0] = v105;
  v106.i64[1] = HIDWORD(v105);
  v107 = v106;
  v108 = vaddvq_s64(v106);
  v109 = v108;
  v110 = v56 + v108;
  if (v518)
  {
    v111 = v518 >= v110;
  }

  else
  {
    v111 = 1;
  }

  v112 = v111;
  if (v108 <= 0x80 && (v112 & 1) != 0)
  {
    v113 = v56 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v107));
    v115 = v517;
    v116 = (v517 + 8 * (v56 >> 6));
    v117 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v116, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v116->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v109 >= 0x81)
    {
      v114 = vorrq_s8(vshlq_u64(vdupq_lane_s64(v116[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v116[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114)));
      v117 = vorrq_s8(v114, v117);
    }

    *v114.i8 = vmovn_s64(v117);
    v118 = v519;
    v56 = v110;
  }

  else
  {
    v114 = 0uLL;
    v118 = 1;
    v115 = v517;
  }

  v119.i64[0] = 0x2000000020;
  v119.i64[1] = 0x2000000020;
  v120.i64[0] = 0x1F0000001FLL;
  v120.i64[1] = 0x1F0000001FLL;
  v510 = vshlq_s32(vshlq_s32(vzip1q_s32(v114, v114), v119), v120);
  v520 = v510;
  v121 = vpaddq_s32(v553, v553).u64[0];
  v122.i64[0] = v121;
  v122.i64[1] = HIDWORD(v121);
  v123 = v122;
  v124 = vaddvq_s64(v122);
  v125 = v124;
  v126 = v56 + v124;
  if (v518)
  {
    v127 = v518 >= v126;
  }

  else
  {
    v127 = 1;
  }

  v128 = v127;
  v129 = 0uLL;
  if (v124 <= 0x80 && v128)
  {
    v130 = v56 & 0x3F;
    v131 = vaddq_s64(vdupq_n_s64(v130), vzip1q_s64(0, v123));
    v132 = (v115 + 8 * (v56 >> 6));
    v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
    if (v130 + v125 >= 0x81)
    {
      v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
    }
  }

  else
  {
    v118 = 1;
    v126 = v56;
    v133 = 0uLL;
  }

  v134 = vzip1_s32(*v553.i8, *&vextq_s8(v553, v553, 8uLL));
  v135.i64[0] = v134.u32[0];
  v135.i64[1] = v134.u32[1];
  v136 = vnegq_s64(v135);
  v137 = vshlq_u64(v133, v136);
  v138 = vaddq_s32(v553, v120);
  v139 = vsubq_s32(v119, v553);
  v140 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v133, v137), vzip2q_s64(v133, v137)), v139), v138);
  v521 = v140;
  v141 = v126 + v125;
  if (v518)
  {
    v142 = v518 >= v141;
  }

  else
  {
    v142 = 1;
  }

  v143 = v142;
  if (v125 <= 0x80 && v143)
  {
    v144 = v126 & 0x3F;
    v145 = vaddq_s64(vdupq_n_s64(v144), vzip1q_s64(0, v123));
    v146 = (v115 + 8 * (v126 >> 6));
    v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v145)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v145)));
    if (v144 + v125 >= 0x81)
    {
      v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v145)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v145))), v129);
    }
  }

  else
  {
    v118 = 1;
    v141 = v126;
  }

  v147 = vshlq_u64(v129, v136);
  v506 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v129, v147), vzip2q_s64(v129, v147)), v139), v138);
  v522 = v506;
  v148 = v141 + v125;
  if (v518)
  {
    v149 = v518 >= v148;
  }

  else
  {
    v149 = 1;
  }

  v150 = v149;
  v151 = 0uLL;
  if (v125 <= 0x80 && v150)
  {
    v152 = v141 & 0x3F;
    v153 = vaddq_s64(vdupq_n_s64(v152), vzip1q_s64(0, v123));
    v154 = (v115 + 8 * (v141 >> 6));
    v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v154, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v153)), vshlq_u64(vdupq_lane_s64(v154->i64[0], 0), vnegq_s64(v153)));
    if (v152 + v125 >= 0x81)
    {
      v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v154[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v153)), vshlq_u64(vdupq_laneq_s64(v154[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v153))), v155);
    }
  }

  else
  {
    v118 = 1;
    v148 = v141;
    v155 = 0uLL;
  }

  v156 = vshlq_u64(v155, v136);
  v157 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v155, v156), vzip2q_s64(v155, v156)), v139), v138);
  v523 = v157;
  v158 = v148 + v125;
  if (v518)
  {
    v159 = v518 >= v158;
  }

  else
  {
    v159 = 1;
  }

  v160 = v159;
  if (v125 <= 0x80 && v160)
  {
    v161 = v148 & 0x3F;
    v162 = vaddq_s64(vdupq_n_s64(v161), vzip1q_s64(0, v123));
    v163 = (v115 + 8 * (v148 >> 6));
    v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v163, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v162)), vshlq_u64(vdupq_lane_s64(v163->i64[0], 0), vnegq_s64(v162)));
    if (v161 + v125 >= 0x81)
    {
      v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v163[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v162)), vshlq_u64(vdupq_laneq_s64(v163[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v162))), v151);
    }
  }

  else
  {
    v118 = 1;
    v158 = v148;
  }

  v164 = vshlq_u64(v151, v136);
  v509 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v151, v164), vzip2q_s64(v151, v164)), v139), v138);
  v524 = v509;
  v165 = v158 + v125;
  if (v518)
  {
    v166 = v518 >= v165;
  }

  else
  {
    v166 = 1;
  }

  v167 = v166;
  v168 = 0uLL;
  if (v125 <= 0x80 && v167)
  {
    v169 = v158 & 0x3F;
    v170 = vaddq_s64(vdupq_n_s64(v169), vzip1q_s64(0, v123));
    v171 = (v115 + 8 * (v158 >> 6));
    v172 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
    if (v169 + v125 >= 0x81)
    {
      v172 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v172);
    }
  }

  else
  {
    v118 = 1;
    v165 = v158;
    v172 = 0uLL;
  }

  v173 = vshlq_u64(v172, v136);
  v508 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v172, v173), vzip2q_s64(v172, v173)), v139), v138);
  v525 = v508;
  v174 = v165 + v125;
  if (v518)
  {
    v175 = v518 >= v174;
  }

  else
  {
    v175 = 1;
  }

  v176 = v175;
  if (v125 <= 0x80 && v176)
  {
    v177 = v165 & 0x3F;
    v178 = vaddq_s64(vdupq_n_s64(v177), vzip1q_s64(0, v123));
    v179 = (v115 + 8 * (v165 >> 6));
    v168 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v179, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v178)), vshlq_u64(vdupq_lane_s64(v179->i64[0], 0), vnegq_s64(v178)));
    if (v177 + v125 >= 0x81)
    {
      v168 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v179[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v178)), vshlq_u64(vdupq_laneq_s64(v179[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v178))), v168);
    }
  }

  else
  {
    v118 = 1;
    v174 = v165;
  }

  v180 = vshlq_u64(v168, v136);
  v507 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v168, v180), vzip2q_s64(v168, v180)), v139), v138);
  v526 = v507;
  v181 = v174 + v125;
  if (v518)
  {
    v182 = v518 >= v181;
  }

  else
  {
    v182 = 1;
  }

  v183 = v182;
  v184 = 0uLL;
  if (v125 <= 0x80 && v183)
  {
    v185 = v174 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v123));
    v187 = (v115 + 8 * (v174 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v125 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  else
  {
    v118 = 1;
    v181 = v174;
    v188 = 0uLL;
  }

  v189 = vshlq_u64(v188, v136);
  v505 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v188, v189), vzip2q_s64(v188, v189)), v139), v138);
  v527 = v505;
  v190 = vpaddq_s32(v554, v554).u64[0];
  v191.i64[0] = v190;
  v191.i64[1] = HIDWORD(v190);
  v192 = v191;
  v193 = vaddvq_s64(v191);
  v194 = v193;
  v195 = v181 + v193;
  if (v518)
  {
    v196 = v518 >= v195;
  }

  else
  {
    v196 = 1;
  }

  v197 = v196;
  if (v193 <= 0x80 && v197)
  {
    v198 = v181 & 0x3F;
    v199 = vaddq_s64(vdupq_n_s64(v198), vzip1q_s64(0, v192));
    v200 = (v115 + 8 * (v181 >> 6));
    v184 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
    if (v198 + v194 >= 0x81)
    {
      v184 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v184);
    }
  }

  else
  {
    v118 = 1;
    v195 = v181;
  }

  v201 = vzip1_s32(*v554.i8, *&vextq_s8(v554, v554, 8uLL));
  v202.i64[0] = v201.u32[0];
  v202.i64[1] = v201.u32[1];
  v203 = vnegq_s64(v202);
  v204 = vshlq_u64(v184, v203);
  v205 = vuzp1q_s32(vzip1q_s64(v184, v204), vzip2q_s64(v184, v204));
  v204.i64[0] = 0x1F0000001FLL;
  v204.i64[1] = 0x1F0000001FLL;
  v206 = vaddq_s32(v554, v204);
  v207.i64[0] = 0x2000000020;
  v207.i64[1] = 0x2000000020;
  v208 = vsubq_s32(v207, v554);
  v209 = vshlq_s32(vshlq_s32(v205, v208), v206);
  v528 = v209;
  v210 = v195 + v194;
  if (v518)
  {
    v211 = v518 >= v210;
  }

  else
  {
    v211 = 1;
  }

  v212 = v211;
  v213 = 0uLL;
  if (v194 <= 0x80 && v212)
  {
    v214 = v195 & 0x3F;
    v215 = vaddq_s64(vdupq_n_s64(v214), vzip1q_s64(0, v192));
    v216 = (v115 + 8 * (v195 >> 6));
    v217 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v216, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v215)), vshlq_u64(vdupq_lane_s64(v216->i64[0], 0), vnegq_s64(v215)));
    if (v214 + v194 >= 0x81)
    {
      v217 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v216[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v215)), vshlq_u64(vdupq_laneq_s64(v216[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v215))), v217);
    }
  }

  else
  {
    v118 = 1;
    v210 = v195;
    v217 = 0uLL;
  }

  v218 = vshlq_u64(v217, v203);
  v219 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v217, v218), vzip2q_s64(v217, v218)), v208), v206);
  v529 = v219;
  v220 = v210 + v194;
  if (v518)
  {
    v221 = v518 >= v220;
  }

  else
  {
    v221 = 1;
  }

  v222 = v221;
  if (v194 <= 0x80 && v222)
  {
    v223 = v210 & 0x3F;
    v224 = vaddq_s64(vdupq_n_s64(v223), vzip1q_s64(0, v192));
    v225 = (v115 + 8 * (v210 >> 6));
    v213 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v225, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v224)), vshlq_u64(vdupq_lane_s64(v225->i64[0], 0), vnegq_s64(v224)));
    if (v223 + v194 >= 0x81)
    {
      v213 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v225[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v224)), vshlq_u64(vdupq_laneq_s64(v225[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v224))), v213);
    }
  }

  else
  {
    v118 = 1;
    v220 = v210;
  }

  v226 = vshlq_u64(v213, v203);
  v504 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v213, v226), vzip2q_s64(v213, v226)), v208), v206);
  v530 = v504;
  v227 = v220 + v194;
  if (v518)
  {
    v228 = v518 >= v227;
  }

  else
  {
    v228 = 1;
  }

  v229 = v228;
  v230 = 0uLL;
  if (v194 <= 0x80 && v229)
  {
    v231 = v220 & 0x3F;
    v232 = vaddq_s64(vdupq_n_s64(v231), vzip1q_s64(0, v192));
    v233 = (v115 + 8 * (v220 >> 6));
    v234 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v233, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v232)), vshlq_u64(vdupq_lane_s64(v233->i64[0], 0), vnegq_s64(v232)));
    if (v231 + v194 >= 0x81)
    {
      v234 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v233[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v232)), vshlq_u64(vdupq_laneq_s64(v233[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v232))), v234);
    }
  }

  else
  {
    v118 = 1;
    v227 = v220;
    v234 = 0uLL;
  }

  v235 = vshlq_u64(v234, v203);
  v503 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v234, v235), vzip2q_s64(v234, v235)), v208), v206);
  v531 = v503;
  v236 = v227 + v194;
  if (v518)
  {
    v237 = v518 >= v236;
  }

  else
  {
    v237 = 1;
  }

  v238 = v237;
  if (v194 <= 0x80 && v238)
  {
    v239 = v227 & 0x3F;
    v240 = vaddq_s64(vdupq_n_s64(v239), vzip1q_s64(0, v192));
    v241 = (v115 + 8 * (v227 >> 6));
    v230 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v241, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v240)), vshlq_u64(vdupq_lane_s64(v241->i64[0], 0), vnegq_s64(v240)));
    if (v239 + v194 >= 0x81)
    {
      v230 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v241[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v240)), vshlq_u64(vdupq_laneq_s64(v241[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v240))), v230);
    }
  }

  else
  {
    v118 = 1;
    v236 = v227;
  }

  v242 = vshlq_u64(v230, v203);
  v502 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v230, v242), vzip2q_s64(v230, v242)), v208), v206);
  v532 = v502;
  v243 = v236 + v194;
  if (v518)
  {
    v244 = v518 >= v243;
  }

  else
  {
    v244 = 1;
  }

  v245 = v244;
  v246 = 0uLL;
  if (v194 <= 0x80 && v245)
  {
    v247 = v236 & 0x3F;
    v248 = vaddq_s64(vdupq_n_s64(v247), vzip1q_s64(0, v192));
    v249 = (v115 + 8 * (v236 >> 6));
    v250 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v249, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v248)), vshlq_u64(vdupq_lane_s64(v249->i64[0], 0), vnegq_s64(v248)));
    if (v247 + v194 >= 0x81)
    {
      v250 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v249[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v248)), vshlq_u64(vdupq_laneq_s64(v249[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v248))), v250);
    }
  }

  else
  {
    v118 = 1;
    v243 = v236;
    v250 = 0uLL;
  }

  v251 = vshlq_u64(v250, v203);
  v252 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v250, v251), vzip2q_s64(v250, v251)), v208), v206);
  v533 = v252;
  v253 = v243 + v194;
  if (v518)
  {
    v254 = v518 >= v253;
  }

  else
  {
    v254 = 1;
  }

  v255 = v254;
  if (v194 <= 0x80 && v255)
  {
    v256 = v243 & 0x3F;
    v257 = vaddq_s64(vdupq_n_s64(v256), vzip1q_s64(0, v192));
    v258 = (v115 + 8 * (v243 >> 6));
    v246 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v258, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v257)), vshlq_u64(vdupq_lane_s64(v258->i64[0], 0), vnegq_s64(v257)));
    if (v256 + v194 >= 0x81)
    {
      v246 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v258[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v257)), vshlq_u64(vdupq_laneq_s64(v258[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v257))), v246);
    }
  }

  else
  {
    v118 = 1;
    v253 = v243;
  }

  v259 = vshlq_u64(v246, v203);
  v260 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v246, v259), vzip2q_s64(v246, v259)), v208), v206);
  v534 = v260;
  v261 = v253 + v194;
  if (v518)
  {
    v262 = v518 >= v261;
  }

  else
  {
    v262 = 1;
  }

  v263 = v262;
  v264 = 0uLL;
  if (v194 <= 0x80 && v263)
  {
    v265 = v253 & 0x3F;
    v266 = vaddq_s64(vdupq_n_s64(v265), vzip1q_s64(0, v192));
    v267 = (v115 + 8 * (v253 >> 6));
    v268 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v267, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v266)), vshlq_u64(vdupq_lane_s64(v267->i64[0], 0), vnegq_s64(v266)));
    if (v265 + v194 >= 0x81)
    {
      v268 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v267[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v266)), vshlq_u64(vdupq_laneq_s64(v267[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v266))), v268);
    }
  }

  else
  {
    v118 = 1;
    v261 = v253;
    v268 = 0uLL;
  }

  v269 = vshlq_u64(v268, v203);
  v270 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v268, v269), vzip2q_s64(v268, v269)), v208), v206);
  v535 = v270;
  v271 = vpaddq_s32(v555, v555).u64[0];
  v272.i64[0] = v271;
  v272.i64[1] = HIDWORD(v271);
  v273 = v272;
  v274 = vaddvq_s64(v272);
  v275 = v274;
  v276 = v261 + v274;
  if (v518)
  {
    v277 = v518 >= v276;
  }

  else
  {
    v277 = 1;
  }

  v278 = v277;
  if (v274 <= 0x80 && v278)
  {
    v279 = v261 & 0x3F;
    v280 = vaddq_s64(vdupq_n_s64(v279), vzip1q_s64(0, v273));
    v281 = (v115 + 8 * (v261 >> 6));
    v264 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v281, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v280)), vshlq_u64(vdupq_lane_s64(v281->i64[0], 0), vnegq_s64(v280)));
    if (v279 + v275 >= 0x81)
    {
      v264 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v281[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v280)), vshlq_u64(vdupq_laneq_s64(v281[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v280))), v264);
    }
  }

  else
  {
    v118 = 1;
    v276 = v261;
  }

  v282 = vzip1_s32(*v555.i8, *&vextq_s8(v555, v555, 8uLL));
  v283.i64[0] = v282.u32[0];
  v283.i64[1] = v282.u32[1];
  v284 = vnegq_s64(v283);
  v285 = vshlq_u64(v264, v284);
  v286 = vuzp1q_s32(vzip1q_s64(v264, v285), vzip2q_s64(v264, v285));
  v285.i64[0] = 0x1F0000001FLL;
  v285.i64[1] = 0x1F0000001FLL;
  v287 = vaddq_s32(v555, v285);
  v288.i64[0] = 0x2000000020;
  v288.i64[1] = 0x2000000020;
  v289 = vsubq_s32(v288, v555);
  v290 = vshlq_s32(vshlq_s32(v286, v289), v287);
  v536 = v290;
  v291 = v276 + v275;
  if (v518)
  {
    v292 = v518 >= v291;
  }

  else
  {
    v292 = 1;
  }

  v293 = v292;
  v294 = 0uLL;
  if (v275 <= 0x80 && v293)
  {
    v295 = v276 & 0x3F;
    v296 = vaddq_s64(vdupq_n_s64(v295), vzip1q_s64(0, v273));
    v297 = (v115 + 8 * (v276 >> 6));
    v298 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v297, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v296)), vshlq_u64(vdupq_lane_s64(v297->i64[0], 0), vnegq_s64(v296)));
    if (v295 + v275 >= 0x81)
    {
      v298 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v297[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v296)), vshlq_u64(vdupq_laneq_s64(v297[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v296))), v298);
    }
  }

  else
  {
    v118 = 1;
    v291 = v276;
    v298 = 0uLL;
  }

  v299 = vshlq_u64(v298, v284);
  v300 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v298, v299), vzip2q_s64(v298, v299)), v289), v287);
  v537 = v300;
  v301 = v291 + v275;
  if (v518)
  {
    v302 = v518 >= v301;
  }

  else
  {
    v302 = 1;
  }

  v303 = v302;
  if (v275 <= 0x80 && v303)
  {
    v304 = v291 & 0x3F;
    v305 = vaddq_s64(vdupq_n_s64(v304), vzip1q_s64(0, v273));
    v306 = (v115 + 8 * (v291 >> 6));
    v294 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v306, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v305)), vshlq_u64(vdupq_lane_s64(v306->i64[0], 0), vnegq_s64(v305)));
    if (v304 + v275 >= 0x81)
    {
      v294 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v306[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v305)), vshlq_u64(vdupq_laneq_s64(v306[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v305))), v294);
    }
  }

  else
  {
    v118 = 1;
    v301 = v291;
  }

  v307 = vshlq_u64(v294, v284);
  v308 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v294, v307), vzip2q_s64(v294, v307)), v289), v287);
  v538 = v308;
  v309 = v301 + v275;
  if (v518)
  {
    v310 = v518 >= v309;
  }

  else
  {
    v310 = 1;
  }

  v311 = v310;
  v312 = 0uLL;
  if (v275 <= 0x80 && v311)
  {
    v313 = v301 & 0x3F;
    v314 = vaddq_s64(vdupq_n_s64(v313), vzip1q_s64(0, v273));
    v315 = (v115 + 8 * (v301 >> 6));
    v316 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v315, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v314)), vshlq_u64(vdupq_lane_s64(v315->i64[0], 0), vnegq_s64(v314)));
    if (v313 + v275 >= 0x81)
    {
      v316 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v315[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v314)), vshlq_u64(vdupq_laneq_s64(v315[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v314))), v316);
    }
  }

  else
  {
    v118 = 1;
    v309 = v301;
    v316 = 0uLL;
  }

  v317 = vshlq_u64(v316, v284);
  v318 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v316, v317), vzip2q_s64(v316, v317)), v289), v287);
  v539 = v318;
  v319 = v309 + v275;
  if (v518)
  {
    v320 = v518 >= v319;
  }

  else
  {
    v320 = 1;
  }

  v321 = v320;
  if (v275 <= 0x80 && v321)
  {
    v322 = v309 & 0x3F;
    v323 = vaddq_s64(vdupq_n_s64(v322), vzip1q_s64(0, v273));
    v324 = (v115 + 8 * (v309 >> 6));
    v312 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v324, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v323)), vshlq_u64(vdupq_lane_s64(v324->i64[0], 0), vnegq_s64(v323)));
    if (v322 + v275 >= 0x81)
    {
      v312 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v324[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v323)), vshlq_u64(vdupq_laneq_s64(v324[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v323))), v312);
    }
  }

  else
  {
    v118 = 1;
    v319 = v309;
  }

  v325 = vshlq_u64(v312, v284);
  v326 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v312, v325), vzip2q_s64(v312, v325)), v289), v287);
  v540 = v326;
  v327 = v319 + v275;
  if (v518)
  {
    v328 = v518 >= v327;
  }

  else
  {
    v328 = 1;
  }

  v329 = v328;
  v330 = 0uLL;
  if (v275 <= 0x80 && v329)
  {
    v331 = v319 & 0x3F;
    v332 = vaddq_s64(vdupq_n_s64(v331), vzip1q_s64(0, v273));
    v333 = (v115 + 8 * (v319 >> 6));
    v334 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v333, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v332)), vshlq_u64(vdupq_lane_s64(v333->i64[0], 0), vnegq_s64(v332)));
    if (v331 + v275 >= 0x81)
    {
      v334 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v333[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v332)), vshlq_u64(vdupq_laneq_s64(v333[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v332))), v334);
    }
  }

  else
  {
    v118 = 1;
    v327 = v319;
    v334 = 0uLL;
  }

  v335 = vshlq_u64(v334, v284);
  v336 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v334, v335), vzip2q_s64(v334, v335)), v289), v287);
  v541 = v336;
  v337 = v327 + v275;
  if (v518)
  {
    v338 = v518 >= v337;
  }

  else
  {
    v338 = 1;
  }

  v339 = v338;
  if (v275 <= 0x80 && v339)
  {
    v340 = v327 & 0x3F;
    v341 = vaddq_s64(vdupq_n_s64(v340), vzip1q_s64(0, v273));
    v342 = (v115 + 8 * (v327 >> 6));
    v330 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v342, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v341)), vshlq_u64(vdupq_lane_s64(v342->i64[0], 0), vnegq_s64(v341)));
    if (v340 + v275 >= 0x81)
    {
      v330 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v342[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v341)), vshlq_u64(vdupq_laneq_s64(v342[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v341))), v330);
    }
  }

  else
  {
    v118 = 1;
    v337 = v327;
  }

  v343 = vshlq_u64(v330, v284);
  v344 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v330, v343), vzip2q_s64(v330, v343)), v289), v287);
  v542 = v344;
  v345 = v337 + v275;
  if (v518)
  {
    v346 = v518 >= v345;
  }

  else
  {
    v346 = 1;
  }

  v347 = v346;
  v348 = 0uLL;
  if (v275 <= 0x80 && v347)
  {
    v349 = v337 & 0x3F;
    v350 = vaddq_s64(vdupq_n_s64(v349), vzip1q_s64(0, v273));
    v351 = (v115 + 8 * (v337 >> 6));
    v352 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v351, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v350)), vshlq_u64(vdupq_lane_s64(v351->i64[0], 0), vnegq_s64(v350)));
    if (v349 + v275 >= 0x81)
    {
      v352 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v351[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v350)), vshlq_u64(vdupq_laneq_s64(v351[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v350))), v352);
    }
  }

  else
  {
    v118 = 1;
    v345 = v337;
    v352 = 0uLL;
  }

  v353 = vshlq_u64(v352, v284);
  v354 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v352, v353), vzip2q_s64(v352, v353)), v289), v287);
  v543 = v354;
  v353.i64[0] = vpaddq_s32(v556, v556).u64[0];
  v355.i64[0] = v353.u32[0];
  v355.i64[1] = v353.u32[1];
  v356 = v355;
  v357 = vaddvq_s64(v355);
  v358 = v357;
  v359 = v345 + v357;
  if (v518)
  {
    v360 = v518 >= v359;
  }

  else
  {
    v360 = 1;
  }

  v361 = v360;
  if (v357 <= 0x80 && v361)
  {
    v362 = v345 & 0x3F;
    v363 = vaddq_s64(vdupq_n_s64(v362), vzip1q_s64(0, v356));
    v364 = (v115 + 8 * (v345 >> 6));
    v348 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v364, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v363)), vshlq_u64(vdupq_lane_s64(v364->i64[0], 0), vnegq_s64(v363)));
    if (v362 + v358 >= 0x81)
    {
      v348 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v364[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v363)), vshlq_u64(vdupq_laneq_s64(v364[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v363))), v348);
    }
  }

  else
  {
    v118 = 1;
    v359 = v345;
  }

  v365 = vzip1_s32(*v556.i8, *&vextq_s8(v556, v556, 8uLL));
  v366.i64[0] = v365.u32[0];
  v366.i64[1] = v365.u32[1];
  v367 = vnegq_s64(v366);
  v368 = vshlq_u64(v348, v367);
  v369 = vuzp1q_s32(vzip1q_s64(v348, v368), vzip2q_s64(v348, v368));
  v370.i64[0] = 0x1F0000001FLL;
  v370.i64[1] = 0x1F0000001FLL;
  v371 = vaddq_s32(v556, v370);
  v370.i64[0] = 0x2000000020;
  v370.i64[1] = 0x2000000020;
  v372 = vsubq_s32(v370, v556);
  v373 = vshlq_s32(vshlq_s32(v369, v372), v371);
  v544 = v373;
  v374 = v359 + v358;
  if (v518)
  {
    v375 = v518 >= v374;
  }

  else
  {
    v375 = 1;
  }

  v376 = v375;
  v377 = 0uLL;
  if (v358 <= 0x80 && v376)
  {
    v378 = v359 & 0x3F;
    v379 = vaddq_s64(vdupq_n_s64(v378), vzip1q_s64(0, v356));
    v380 = (v115 + 8 * (v359 >> 6));
    v381 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v380, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v379)), vshlq_u64(vdupq_lane_s64(v380->i64[0], 0), vnegq_s64(v379)));
    if (v378 + v358 >= 0x81)
    {
      v381 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v380[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v379)), vshlq_u64(vdupq_laneq_s64(v380[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v379))), v381);
    }
  }

  else
  {
    v118 = 1;
    v374 = v359;
    v381 = 0uLL;
  }

  v382 = vshlq_u64(v381, v367);
  v383 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v381, v382), vzip2q_s64(v381, v382)), v372), v371);
  v545 = v383;
  v384 = v374 + v358;
  if (v518)
  {
    v385 = v518 >= v384;
  }

  else
  {
    v385 = 1;
  }

  v386 = v385;
  if (v358 <= 0x80 && v386)
  {
    v387 = v374 & 0x3F;
    v388 = vaddq_s64(vdupq_n_s64(v387), vzip1q_s64(0, v356));
    v389 = (v115 + 8 * (v374 >> 6));
    v377 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v389, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v388)), vshlq_u64(vdupq_lane_s64(v389->i64[0], 0), vnegq_s64(v388)));
    if (v387 + v358 >= 0x81)
    {
      v377 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v389[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v388)), vshlq_u64(vdupq_laneq_s64(v389[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v388))), v377);
    }
  }

  else
  {
    v118 = 1;
    v384 = v374;
  }

  v390 = vshlq_u64(v377, v367);
  v391 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v377, v390), vzip2q_s64(v377, v390)), v372), v371);
  v546 = v391;
  v392 = v384 + v358;
  if (v518)
  {
    v393 = v518 >= v392;
  }

  else
  {
    v393 = 1;
  }

  v394 = v393;
  v395 = 0uLL;
  if (v358 <= 0x80 && v394)
  {
    v396 = v384 & 0x3F;
    v397 = vaddq_s64(vdupq_n_s64(v396), vzip1q_s64(0, v356));
    v398 = (v115 + 8 * (v384 >> 6));
    v399 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v398, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v397)), vshlq_u64(vdupq_lane_s64(v398->i64[0], 0), vnegq_s64(v397)));
    if (v396 + v358 >= 0x81)
    {
      v399 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v398[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v397)), vshlq_u64(vdupq_laneq_s64(v398[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v397))), v399);
    }
  }

  else
  {
    v118 = 1;
    v392 = v384;
    v399 = 0uLL;
  }

  v400 = vshlq_u64(v399, v367);
  v401 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v399, v400), vzip2q_s64(v399, v400)), v372), v371);
  v547 = v401;
  v402 = v392 + v358;
  if (v518)
  {
    v403 = v518 >= v402;
  }

  else
  {
    v403 = 1;
  }

  v404 = v403;
  if (v358 <= 0x80 && v404)
  {
    v405 = v392 & 0x3F;
    v406 = vaddq_s64(vdupq_n_s64(v405), vzip1q_s64(0, v356));
    v407 = (v115 + 8 * (v392 >> 6));
    v395 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v407, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v406)), vshlq_u64(vdupq_lane_s64(v407->i64[0], 0), vnegq_s64(v406)));
    if (v405 + v358 >= 0x81)
    {
      v395 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v407[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v406)), vshlq_u64(vdupq_laneq_s64(v407[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v406))), v395);
    }
  }

  else
  {
    v118 = 1;
    v402 = v392;
  }

  v408 = vshlq_u64(v395, v367);
  v409 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v395, v408), vzip2q_s64(v395, v408)), v372), v371);
  v548 = v409;
  v410 = v402 + v358;
  if (v518)
  {
    v411 = v518 >= v410;
  }

  else
  {
    v411 = 1;
  }

  v412 = v411;
  v413 = 0uLL;
  if (v358 <= 0x80 && v412)
  {
    v414 = v402 & 0x3F;
    v415 = vaddq_s64(vdupq_n_s64(v414), vzip1q_s64(0, v356));
    v416 = (v115 + 8 * (v402 >> 6));
    v417 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v416, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v415)), vshlq_u64(vdupq_lane_s64(v416->i64[0], 0), vnegq_s64(v415)));
    if (v414 + v358 >= 0x81)
    {
      v417 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v416[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v415)), vshlq_u64(vdupq_laneq_s64(v416[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v415))), v417);
    }
  }

  else
  {
    v118 = 1;
    v410 = v402;
    v417 = 0uLL;
  }

  v418 = vshlq_u64(v417, v367);
  v419 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v417, v418), vzip2q_s64(v417, v418)), v372), v371);
  v549 = v419;
  v420 = v410 + v358;
  if (v518)
  {
    v421 = v518 >= v420;
  }

  else
  {
    v421 = 1;
  }

  v422 = v421;
  if (v358 <= 0x80 && v422)
  {
    v423 = v410 & 0x3F;
    v424 = vaddq_s64(vdupq_n_s64(v423), vzip1q_s64(0, v356));
    v425 = (v115 + 8 * (v410 >> 6));
    v413 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v425, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v424)), vshlq_u64(vdupq_lane_s64(v425->i64[0], 0), vnegq_s64(v424)));
    if (v423 + v358 >= 0x81)
    {
      v413 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v425[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v424)), vshlq_u64(vdupq_laneq_s64(v425[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v424))), v413);
    }
  }

  else
  {
    v118 = 1;
    v420 = v410;
  }

  v426 = vshlq_u64(v413, v367);
  v427 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v413, v426), vzip2q_s64(v413, v426)), v372), v371);
  v550 = v427;
  v428 = v420 + v358;
  if (v518)
  {
    v429 = v518 >= v428;
  }

  else
  {
    v429 = 1;
  }

  v430 = v429;
  if (v358 > 0x80 || !v430)
  {
    goto LABEL_403;
  }

  v431 = vaddq_s64(vdupq_n_s64(v420 & 0x3F), vzip1q_s64(0, v356));
  v432 = (v115 + 8 * (v420 >> 6));
  v433 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v432, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v431)), vshlq_u64(vdupq_lane_s64(v432->i64[0], 0), vnegq_s64(v431)));
  if ((v420 & 0x3F) + v358 < 0x81)
  {
    if ((v118 & 1) == 0)
    {
      v437 = vshlq_u64(v433, v367);
      v436 = vuzp1q_s32(vzip1q_s64(v433, v437), vzip2q_s64(v433, v437));
      goto LABEL_401;
    }

LABEL_403:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, v67);
    return 0;
  }

  if (v118)
  {
    goto LABEL_403;
  }

  v434 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v432[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v431)), vshlq_u64(vdupq_laneq_s64(v432[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v431))), v433);
  v435 = vshlq_u64(v434, v367);
  v436 = vuzp1q_s32(vzip1q_s64(v434, v435), vzip2q_s64(v434, v435));
LABEL_401:
  v438 = vshlq_s32(vshlq_s32(v436, v372), v371);
  if (v518 + 8 * result - v428 - 4096 >= 0x11 || v101 == 2)
  {
    goto LABEL_403;
  }

  v439.i64[0] = 0x1000000010;
  v439.i64[1] = 0x1000000010;
  v440 = vandq_s8(v100, v512);
  v441 = v551;
  v513 = v438;
  v442 = vaddq_s32(v551, v510);
  v443 = vaddq_s32(v551, vsubq_s32(v140, v440));
  v444 = vceqzq_s32(vandq_s8(v552, v439));
  v445 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v443, xmmword_29D2F11D0), v444), v443);
  v446 = vaddq_s32(v551, vsubq_s32(v506, v440));
  v447 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v446, xmmword_29D2F11D0), v444), v446);
  v448 = vaddq_s32(v551, vsubq_s32(v157, v440));
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v442, xmmword_29D2F11D0), v444), v442);
  *(a1 + 16) = v445;
  *(a1 + 32) = v447;
  *(a1 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v448, xmmword_29D2F11D0), v444), v448);
  v449 = (a1 + 2 * v67);
  v450 = vandq_s8(v100, v515);
  v451 = vaddq_s32(v441, vsubq_s32(v209, v450));
  v452 = vaddq_s32(v441, vsubq_s32(v219, v450));
  v453 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v451, xmmword_29D2F11D0), v444), v451);
  v454 = vaddq_s32(v441, vsubq_s32(v504, v450));
  v455 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v454, xmmword_29D2F11D0), v444), v454);
  v456 = vaddq_s32(v441, vsubq_s32(v503, v450));
  *(a1 + 64) = v453;
  *(a1 + 80) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v452, xmmword_29D2F11D0), v444), v452);
  *(a1 + 96) = v455;
  *(a1 + 112) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v456, xmmword_29D2F11D0), v444), v456);
  v457 = vaddq_s32(v441, vsubq_s32(v509, v440));
  v458 = vaddq_s32(v441, vsubq_s32(v508, v440));
  v459 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v457, xmmword_29D2F11D0), v444), v457);
  v460 = vaddq_s32(v441, vsubq_s32(v507, v440));
  v461 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v460, xmmword_29D2F11D0), v444), v460);
  v462 = vaddq_s32(v441, vsubq_s32(v505, v440));
  v463 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v462, xmmword_29D2F11D0), v444), v462);
  v464 = vaddq_s32(v441, vsubq_s32(v502, v450));
  v465 = vaddq_s32(v441, vsubq_s32(v252, v450));
  v466 = (a1 + v67);
  *v466 = v459;
  v466[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v458, xmmword_29D2F11D0), v444), v458);
  v466[2] = v461;
  v466[3] = v463;
  v467 = (a1 + v67 + 64);
  v468 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v464, xmmword_29D2F11D0), v444), v464);
  v469 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v465, xmmword_29D2F11D0), v444), v465);
  v470 = vaddq_s32(v441, vsubq_s32(v260, v450));
  v471 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v470, xmmword_29D2F11D0), v444), v470);
  v472 = vaddq_s32(v441, vsubq_s32(v270, v450));
  v473 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v472, xmmword_29D2F11D0), v444), v472);
  v474 = vandq_s8(v100, v514);
  v475 = vaddq_s32(v441, vsubq_s32(v290, v474));
  v476 = vaddq_s32(v441, vsubq_s32(v300, v474));
  *v467 = v468;
  v467[1] = v469;
  v467[2] = v471;
  v467[3] = v473;
  v477 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v475, xmmword_29D2F11D0), v444), v475);
  v478 = vaddq_s32(v441, vsubq_s32(v308, v474));
  v479 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v478, xmmword_29D2F11D0), v444), v478);
  v480 = vaddq_s32(v441, vsubq_s32(v318, v474));
  v481 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v480, xmmword_29D2F11D0), v444), v480);
  v482 = vandq_s8(v100, v511);
  v483 = v449 + 4;
  *v449 = v477;
  v449[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v476, xmmword_29D2F11D0), v444), v476);
  v449[2] = v479;
  v449[3] = v481;
  v484 = (v449 + v67);
  v485 = vaddq_s32(v441, vsubq_s32(v373, v482));
  v486 = vaddq_s32(v441, vsubq_s32(v383, v482));
  v487 = vaddq_s32(v441, vsubq_s32(v391, v482));
  v488 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v487, xmmword_29D2F11D0), v444), v487);
  v489 = vaddq_s32(v441, vsubq_s32(v401, v482));
  *v483 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v485, xmmword_29D2F11D0), v444), v485);
  v483[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v486, xmmword_29D2F11D0), v444), v486);
  v483[2] = v488;
  v483[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v489, xmmword_29D2F11D0), v444), v489);
  v490 = vaddq_s32(v441, vsubq_s32(v326, v474));
  v491 = vaddq_s32(v441, vsubq_s32(v336, v474));
  v492 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v490, xmmword_29D2F11D0), v444), v490);
  v493 = vaddq_s32(v441, vsubq_s32(v344, v474));
  v494 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v493, xmmword_29D2F11D0), v444), v493);
  v495 = vaddq_s32(v441, vsubq_s32(v354, v474));
  *v484 = v492;
  v484[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v491, xmmword_29D2F11D0), v444), v491);
  v484[2] = v494;
  v484[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v495, xmmword_29D2F11D0), v444), v495);
  v484 += 4;
  v496 = vaddq_s32(v441, vsubq_s32(v409, v482));
  v497 = vaddq_s32(v441, vsubq_s32(v419, v482));
  v498 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v496, xmmword_29D2F11D0), v444), v496);
  v499 = vaddq_s32(v441, vsubq_s32(v427, v482));
  v500 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v499, xmmword_29D2F11D0), v444), v499);
  v501 = vaddq_s32(v441, vsubq_s32(v513, v482));
  *v484 = v498;
  v484[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v497, xmmword_29D2F11D0), v444), v497);
  v484[2] = v500;
  v484[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v501, xmmword_29D2F11D0), v444), v501);
  return result;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, _OWORD *a2, char *a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  if (a4 && a5)
  {
    v6 = result[1];
    v7 = result[2];
    v8 = result[3];
    v9 = result[4];
    v10 = result[5];
    v11 = result[6];
    v12 = result[7];
    v13 = result[16];
    v14 = result[17];
    v15 = result[18];
    v16 = result[19];
    v17 = result[20];
    v18 = result[21];
    v19 = result[22];
    v20 = result[23];
    v21 = result[32];
    v22 = result[33];
    v23 = result[34];
    v24 = result[35];
    v25 = result[36];
    v26 = result[37];
    v27 = result[38];
    v28 = result[39];
    v29 = result[48];
    v30 = result[49];
    v31 = result[50];
    v32 = result[51];
    v33 = result[52];
    v34 = result[53];
    v35 = result[54];
    v36 = result[55];
    *a2 = *result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
    a2[4] = v13;
    a2[5] = v14;
    a2[6] = v15;
    a2[7] = v16;
    a2[8] = v9;
    a2[9] = v10;
    a2[10] = v11;
    a2[11] = v12;
    a2[12] = v17;
    a2[13] = v18;
    a2[14] = v19;
    a2[15] = v20;
    a2[16] = v21;
    a2[17] = v22;
    a2[18] = v23;
    a2[19] = v24;
    a2[20] = v29;
    a2[21] = v30;
    a2[22] = v31;
    a2[23] = v32;
    a2[24] = v25;
    a2[25] = v26;
    a2[26] = v27;
    a2[27] = v28;
    v37 = a2 + 28;
    a2 += 32;
    *v37 = v33;
    v37[1] = v34;
    v37[2] = v35;
    v37[3] = v36;
    v5 = -1;
  }

  v38 = 0;
  *a3 = v5;
  if (a4 >= 5 && a5)
  {
    v39 = result[9];
    v40 = result[10];
    v41 = result[11];
    v42 = result[12];
    v43 = result[13];
    v44 = result[14];
    v45 = result[15];
    v46 = result[24];
    v47 = result[25];
    v48 = result[26];
    v49 = result[27];
    v50 = result[28];
    v51 = result[29];
    v52 = result[30];
    v53 = result[31];
    v54 = result[40];
    v55 = result[41];
    v56 = result[42];
    v57 = result[43];
    v58 = result[44];
    v59 = result[45];
    v60 = result[46];
    v61 = result[47];
    v62 = result[56];
    v63 = result[57];
    v64 = result[58];
    v65 = result[59];
    v66 = result[60];
    v67 = result[61];
    v68 = result[62];
    v69 = result[63];
    *a2 = result[8];
    a2[1] = v39;
    a2[2] = v40;
    a2[3] = v41;
    a2[4] = v46;
    a2[5] = v47;
    a2[6] = v48;
    a2[7] = v49;
    a2[8] = v42;
    a2[9] = v43;
    a2[10] = v44;
    a2[11] = v45;
    a2[12] = v50;
    a2[13] = v51;
    a2[14] = v52;
    a2[15] = v53;
    a2[16] = v54;
    a2[17] = v55;
    a2[18] = v56;
    a2[19] = v57;
    a2[20] = v62;
    a2[21] = v63;
    a2[22] = v64;
    a2[23] = v65;
    a2[24] = v58;
    a2[25] = v59;
    a2[26] = v60;
    a2[27] = v61;
    v70 = a2 + 28;
    a2 += 32;
    *v70 = v66;
    v70[1] = v67;
    v70[2] = v68;
    v70[3] = v69;
    v38 = -1;
  }

  v71 = 0;
  a3[1] = v38;
  if (a4 && a5 >= 5)
  {
    v72 = result[65];
    v73 = result[66];
    v74 = result[67];
    v75 = result[68];
    v76 = result[69];
    v77 = result[70];
    v78 = result[71];
    v79 = result[80];
    v80 = result[81];
    v81 = result[82];
    v82 = result[83];
    v83 = result[84];
    v84 = result[85];
    v85 = result[86];
    v86 = result[87];
    v87 = result[96];
    v88 = result[97];
    v89 = result[98];
    v90 = result[99];
    v91 = result[100];
    v92 = result[101];
    v93 = result[102];
    v94 = result[103];
    v95 = result[112];
    v96 = result[113];
    v97 = result[114];
    v98 = result[115];
    v99 = result[116];
    v100 = result[117];
    v101 = result[118];
    v102 = result[119];
    *a2 = result[64];
    a2[1] = v72;
    a2[2] = v73;
    a2[3] = v74;
    a2[4] = v79;
    a2[5] = v80;
    a2[6] = v81;
    a2[7] = v82;
    a2[8] = v75;
    a2[9] = v76;
    a2[10] = v77;
    a2[11] = v78;
    a2[12] = v83;
    a2[13] = v84;
    a2[14] = v85;
    a2[15] = v86;
    a2[16] = v87;
    a2[17] = v88;
    a2[18] = v89;
    a2[19] = v90;
    a2[20] = v95;
    a2[21] = v96;
    a2[22] = v97;
    a2[23] = v98;
    a2[24] = v91;
    a2[25] = v92;
    a2[26] = v93;
    a2[27] = v94;
    v103 = a2 + 28;
    a2 += 32;
    *v103 = v99;
    v103[1] = v100;
    v103[2] = v101;
    v103[3] = v102;
    v71 = -1;
  }

  v104 = 0;
  a3[2] = v71;
  if (a4 >= 5 && a5 >= 5)
  {
    v105 = result[73];
    v106 = result[74];
    v107 = result[75];
    v108 = result[76];
    v109 = result[77];
    v110 = result[78];
    v111 = result[79];
    v112 = result[88];
    v113 = result[89];
    v114 = result[90];
    v115 = result[91];
    v116 = result[92];
    v117 = result[93];
    v118 = result[94];
    v119 = result[95];
    v120 = result[104];
    v121 = result[105];
    v122 = result[106];
    v123 = result[107];
    v124 = result[108];
    v125 = result[109];
    v126 = result[110];
    v127 = result[111];
    v128 = result[120];
    v129 = result[121];
    v130 = result[122];
    v131 = result[123];
    v132 = result[124];
    v133 = result[125];
    v134 = result[126];
    v135 = result[127];
    *a2 = result[72];
    a2[1] = v105;
    a2[2] = v106;
    a2[3] = v107;
    a2[4] = v112;
    a2[5] = v113;
    a2[6] = v114;
    a2[7] = v115;
    a2[8] = v108;
    a2[9] = v109;
    a2[10] = v110;
    a2[11] = v111;
    a2[12] = v116;
    a2[13] = v117;
    a2[14] = v118;
    a2[15] = v119;
    a2[16] = v120;
    a2[17] = v121;
    a2[18] = v122;
    a2[19] = v123;
    a2[20] = v128;
    a2[21] = v129;
    a2[22] = v130;
    a2[23] = v131;
    a2[24] = v124;
    a2[25] = v125;
    a2[26] = v126;
    a2[27] = v127;
    v104 = -1;
    a2[28] = v132;
    a2[29] = v133;
    a2[30] = v134;
    a2[31] = v135;
  }

  a3[3] = v104;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(int32x4_t *a1, _BYTE *a2, int32x4_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v6 = (a3 + 2 * a4);
  v11 = a3[4];
  v12 = a3[5];
  v13 = a3[6];
  v14 = a3[7];
  v15 = *(a3 + a4);
  v16 = *(&a3[1] + a4);
  v17 = *(&a3[2] + a4);
  v18 = *(&a3[3] + a4);
  v294 = *(&a3[4] + a4);
  v295 = *(&a3[5] + a4);
  v296 = *(&a3[6] + a4);
  v297 = *(&a3[7] + a4);
  v19 = v6 + 4;
  v21 = *v6;
  v22 = v6[1];
  v23 = v6[2];
  v24 = v6[3];
  v20 = (v6 + a4);
  v25 = *v19;
  v26 = v19[1];
  v27 = v19[2];
  v28 = v19[3];
  v29 = *v20;
  v30 = v20[1];
  v31 = v20[2];
  v32 = v20[3];
  v20 += 4;
  v33 = vsubq_s32(v9, *a3);
  v34 = vsubq_s32(v10, *a3);
  v341 = vsubq_s32(v8, *a3);
  v35 = vmaxq_s32(v341, v33);
  v36 = vminq_s32(v341, v33);
  v342 = v33;
  v37 = vsubq_s32(v15, v7);
  v343 = v34;
  v38 = vmaxq_s32(vmaxq_s32(v35, v34), v37);
  v39 = vminq_s32(vminq_s32(v36, v34), v37);
  v344 = v37;
  v40 = vsubq_s32(v17, v7);
  v345 = vsubq_s32(v16, v7);
  v282 = v15;
  v283 = v16;
  v284 = v17;
  v285 = v18;
  v41 = vminq_s32(vminq_s32(v39, v345), v40);
  v346 = v40;
  v347 = vsubq_s32(v18, v7);
  v42 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v38, v345), v40), v347), 0);
  v43.i64[0] = 0x2000000020;
  v43.i64[1] = 0x2000000020;
  v44 = vminq_s32(vminq_s32(v41, v347), 0);
  v45 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v42)), vceqzq_s32(v42)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v44)), vceqzq_s32(v44)));
  v348 = vsubq_s32(v11, v7);
  v349 = vsubq_s32(v12, v7);
  v46 = vsubq_s32(v13, v7);
  v47 = vminq_s32(vminq_s32(v348, v349), v46);
  v350 = v46;
  v351 = vsubq_s32(v14, v7);
  v352 = vsubq_s32(v294, v7);
  v353 = vsubq_s32(v295, v7);
  v354 = vsubq_s32(v296, v7);
  v355 = vsubq_s32(v297, v7);
  v48 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v348, v349), v46), v351), v352), v353), v354), v355);
  v49 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v47, v351), v352), v353), v354), v355);
  v50.i64[0] = 0x8000000080000000;
  v50.i64[1] = 0x8000000080000000;
  v51 = vmaxq_s32(vmaxq_s32(v42, v50), v48);
  v52.i64[0] = 0x8000000080000000;
  v52.i64[1] = 0x8000000080000000;
  v53 = vminq_s32(vminq_s32(v44, v52), v49);
  v54 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v48)), vceqzq_s32(v48)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v49)), vceqzq_s32(v49)));
  v356 = vsubq_s32(v21, v7);
  v357 = vsubq_s32(v22, v7);
  v55 = vsubq_s32(v23, v7);
  v56 = vminq_s32(vminq_s32(v356, v357), v55);
  v290 = v21;
  v291 = v22;
  v292 = v23;
  v293 = v24;
  v358 = v55;
  v359 = vsubq_s32(v24, v7);
  v360 = vsubq_s32(v29, v7);
  v361 = vsubq_s32(v30, v7);
  v286 = v29;
  v287 = v30;
  v288 = v31;
  v289 = v32;
  v362 = vsubq_s32(v31, v7);
  v363 = vsubq_s32(v32, v7);
  v57 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v356, v357), v55), v359), v360), v361), v362), v363);
  v58 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v56, v359), v360), v361), v362), v363);
  v59 = vmaxq_s32(v51, v57);
  v60 = vminq_s32(v53, v58);
  v61 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v57)), vceqzq_s32(v57)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v58)), vceqzq_s32(v58)));
  v364 = vsubq_s32(v25, v7);
  v365 = vsubq_s32(v26, v7);
  v62 = vsubq_s32(v27, v7);
  v63 = vminq_s32(vminq_s32(v364, v365), v62);
  v366 = v62;
  v64 = *v20;
  v65 = v20[1];
  v66 = v20[2];
  v67 = v20[3];
  v367 = vsubq_s32(v28, v7);
  v368 = vsubq_s32(v64, v7);
  v369 = vsubq_s32(v65, v7);
  v370 = vsubq_s32(v66, v7);
  v371 = vsubq_s32(v67, v7);
  v68 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v364, v365), v62), v367), v368), v369), v370), v371);
  v69 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v63, v367), v368), v369), v370), v371);
  v70 = vmaxq_s32(v59, v68);
  v71 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v68)), vceqzq_s32(v68)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v69)), vceqzq_s32(v69)));
  v72 = vmaxq_s32(vmaxq_s32(v45, v54), vmaxq_s32(v61, v71));
  v380 = v70;
  v379 = vminq_s32(v60, v69);
  v73 = vclzq_s32(vsubq_s32(v70, v379));
  v70.i64[0] = 0x1F0000001FLL;
  v70.i64[1] = 0x1F0000001FLL;
  v74 = vsubq_s32(v70, v73);
  v70.i64[0] = -1;
  v70.i64[1] = -1;
  v75 = vsubq_s32(vshlq_s32(v70, v74), v379);
  v76 = vsubq_s32(v43, v73);
  v77 = vcgtq_s32(v72, v76);
  v78 = vminq_s32(v76, v72);
  v381 = vandq_s8(v75, v77);
  v72.i64[0] = 0x800000008;
  v72.i64[1] = 0x800000008;
  v70.i64[0] = 0x300000003;
  v70.i64[1] = 0x300000003;
  v79 = vorrq_s8(vandq_s8(vceqzq_s32(v78), v70), vorrq_s8(vandq_s8(v77, v72), 0));
  v80 = vsubq_s32(v78, v54);
  v81.i64[0] = 0xF0000000FLL;
  v81.i64[1] = 0xF0000000FLL;
  v82 = vmaxq_s32(vminq_s32(v80, v81), 0);
  v83 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v61), v81), 0);
  v375 = vsubq_s32(v78, v82);
  v376 = vsubq_s32(v78, v83);
  v84 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v71), v81), 0);
  v377 = vsubq_s32(v78, v84);
  v85 = vaddq_s32(v84, v83);
  v86 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v45), v81), 0);
  v87.i64[0] = 0x400000004;
  v87.i64[1] = 0x400000004;
  v374 = vsubq_s32(v78, v86);
  v373 = vorrq_s8(vbicq_s8(v87, vceqq_s32(v85, vnegq_s32(vaddq_s32(v86, v82)))), v79);
  v378 = v78;
  v340 = 0u;
  if (vmaxvq_s32(v78))
  {
    v274 = v64;
    v275 = v65;
    v276 = v66;
    v277 = v67;
    v278 = v25;
    v279 = v26;
    v280 = v27;
    v281 = v28;
    v307 = vsubq_s32(v349, vqtbl1q_s8(v349, xmmword_29D2F11D0));
    v308 = vsubq_s32(v350, vqtbl1q_s8(v350, xmmword_29D2F11D0));
    v309 = vsubq_s32(v351, vqtbl1q_s8(v351, xmmword_29D2F11D0));
    v310 = vsubq_s32(v352, vqtbl1q_s8(v352, xmmword_29D2F11D0));
    v311 = vsubq_s32(v353, vqtbl1q_s8(v353, xmmword_29D2F11D0));
    v312 = vsubq_s32(v354, vqtbl1q_s8(v354, xmmword_29D2F11D0));
    v313 = vsubq_s32(v355, vqtbl1q_s8(v355, xmmword_29D2F11D0));
    v315 = vsubq_s32(v357, vqtbl1q_s8(v357, xmmword_29D2F11D0));
    v316 = vsubq_s32(v358, vqtbl1q_s8(v358, xmmword_29D2F11D0));
    v317 = vsubq_s32(v359, vqtbl1q_s8(v359, xmmword_29D2F11D0));
    v298 = vsubq_s32(v340, vqtbl1q_s8(v340, xmmword_29D2F11D0));
    v299 = vsubq_s32(v341, vqtbl1q_s8(v341, xmmword_29D2F11D0));
    v300 = vsubq_s32(v342, vqtbl1q_s8(v342, xmmword_29D2F11D0));
    v301 = vsubq_s32(v343, vqtbl1q_s8(v343, xmmword_29D2F11D0));
    v302 = vsubq_s32(v344, vqtbl1q_s8(v344, xmmword_29D2F11D0));
    v303 = vsubq_s32(v345, vqtbl1q_s8(v345, xmmword_29D2F11D0));
    v305 = vsubq_s32(v347, vqtbl1q_s8(v347, xmmword_29D2F11D0));
    v306 = vsubq_s32(v348, vqtbl1q_s8(v348, xmmword_29D2F11D0));
    v314 = vsubq_s32(v356, vqtbl1q_s8(v356, xmmword_29D2F11D0));
    v304 = vsubq_s32(v346, vqtbl1q_s8(v346, xmmword_29D2F11D0));
    v88 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v298, v299), v300), v301), v302), v303), v304), v305);
    v89 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v298, v299), v300), v301), v302), v303), v304), v305);
    v90 = vmaxq_s32(v88, v50);
    v91 = vminq_s32(v89, v52);
    v92 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v88)), vceqzq_s32(v88)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v89)), vceqzq_s32(v89)));
    v93 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v306, v307), v308), v309), v310), v311), v312), v313);
    v94 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v306, v307), v308), v309), v310), v311), v312), v313);
    v95 = vmaxq_s32(v90, v93);
    v96 = vminq_s32(v91, v94);
    v97 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v93)), vceqzq_s32(v93)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v94)), vceqzq_s32(v94)));
    v318 = vsubq_s32(v360, vqtbl1q_s8(v360, xmmword_29D2F11D0));
    v319 = vsubq_s32(v361, vqtbl1q_s8(v361, xmmword_29D2F11D0));
    v320 = vsubq_s32(v362, vqtbl1q_s8(v362, xmmword_29D2F11D0));
    v321 = vsubq_s32(v363, vqtbl1q_s8(v363, xmmword_29D2F11D0));
    v98 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v314, v315), v316), v317), v318), v319), v320), v321);
    v99 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v314, v315), v316), v317), v318), v319), v320), v321);
    v100 = vmaxq_s32(v95, v98);
    v101 = vminq_s32(v96, v99);
    v322 = vsubq_s32(v364, vqtbl1q_s8(v364, xmmword_29D2F11D0));
    v323 = vsubq_s32(v365, vqtbl1q_s8(v365, xmmword_29D2F11D0));
    v102 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v98)), vceqzq_s32(v98)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v99)), vceqzq_s32(v99)));
    v324 = vsubq_s32(v366, vqtbl1q_s8(v366, xmmword_29D2F11D0));
    v325 = vsubq_s32(v367, vqtbl1q_s8(v367, xmmword_29D2F11D0));
    v326 = vsubq_s32(v368, vqtbl1q_s8(v368, xmmword_29D2F11D0));
    v327 = vsubq_s32(v369, vqtbl1q_s8(v369, xmmword_29D2F11D0));
    v328 = vsubq_s32(v370, vqtbl1q_s8(v370, xmmword_29D2F11D0));
    v329 = vsubq_s32(v371, vqtbl1q_s8(v371, xmmword_29D2F11D0));
    v103 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v322, v323), v324), v325), v326), v327), v328), v329);
    v104 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v322, v323), v324), v325), v326), v327), v328), v329);
    v105 = vmaxq_s32(v100, v103);
    v106 = vminq_s32(v101, v104);
    v107 = vmaxq_s32(vbicq_s8(vsubq_s32(v43, vclsq_s32(v103)), vceqzq_s32(v103)), vbicq_s8(vsubq_s32(v43, vclsq_s32(v104)), vceqzq_s32(v104)));
    v108 = vmaxq_s32(vmaxq_s32(v92, v97), vmaxq_s32(v102, v107));
    v109 = vclzq_s32(vsubq_s32(v105, v106));
    v110 = vsubq_s32(v43, v109);
    v111.i64[0] = 0x1F0000001FLL;
    v111.i64[1] = 0x1F0000001FLL;
    v112 = vsubq_s32(v111, v109);
    v111.i64[0] = -1;
    v111.i64[1] = -1;
    v113 = vshlq_s32(v111, v112);
    v114 = vcgtq_s32(v108, v110);
    v115 = vminq_s32(v110, v108);
    v108.i64[0] = 0x1000000010;
    v108.i64[1] = 0x1000000010;
    v116.i64[0] = 0x1800000018;
    v116.i64[1] = 0x1800000018;
    v338 = v105;
    v339 = vandq_s8(vsubq_s32(v113, v106), v114);
    v113.i64[0] = 0x300000003;
    v113.i64[1] = 0x300000003;
    v117 = vmaxq_s32(vminq_s32(vsubq_s32(v115, v92), v81), 0);
    v118 = vmaxq_s32(vminq_s32(vsubq_s32(v115, v97), v81), 0);
    v119 = vmaxq_s32(vminq_s32(vsubq_s32(v115, v102), v81), 0);
    v120 = vmaxq_s32(vminq_s32(vsubq_s32(v115, v107), v81), 0);
    v332 = vsubq_s32(v115, v117);
    v337 = v106;
    v336 = v115;
    v333 = vsubq_s32(v115, v118);
    v334 = vsubq_s32(v115, v119);
    v335 = vsubq_s32(v115, v120);
    v330 = vsubq_s32(v372, vqtbl1q_s8(v372, xmmword_29D2F11D0));
    v331 = vorrq_s8(vbicq_s8(v87, vceqq_s32(vaddq_s32(v120, v119), vnegq_s32(vaddq_s32(v117, v118)))), vorrq_s8(vandq_s8(vceqzq_s32(v115), v113), vbslq_s8(v114, v116, v108)));
    AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(&v340, &v298);
    v121.i64[1] = v374.i64[1];
    v122 = v378;
    v123 = vandq_s8(v381, vceqq_s32(v378, v374));
    v340 = vaddq_s32(v123, v340);
    v341 = vaddq_s32(v341, v123);
    v342 = vaddq_s32(v342, v123);
    v343 = vaddq_s32(v343, v123);
    v344 = vaddq_s32(v344, v123);
    v345 = vaddq_s32(v345, v123);
    v346 = vaddq_s32(v346, v123);
    v347 = vaddq_s32(v347, v123);
    v124 = vandq_s8(v381, vceqq_s32(v378, v375));
    v348 = vaddq_s32(v348, v124);
    v349 = vaddq_s32(v349, v124);
    v350 = vaddq_s32(v350, v124);
    v351 = vaddq_s32(v351, v124);
    v352 = vaddq_s32(v352, v124);
    v353 = vaddq_s32(v353, v124);
    v354 = vaddq_s32(v354, v124);
    v355 = vaddq_s32(v355, v124);
    v125 = vandq_s8(v381, vceqq_s32(v378, v376));
    v126 = vaddq_s32(v357, v125);
    v127 = vandq_s8(v381, vceqq_s32(v378, v377));
    v128.i64[1] = v371.i64[1];
    *v128.i8 = vqmovn_u32(v373);
    v356 = vaddq_s32(v356, v125);
    v357 = v126;
    v129.i64[0] = 0x8000800080008;
    v129.i64[1] = 0x8000800080008;
    v358 = vaddq_s32(v358, v125);
    v359 = vaddq_s32(v359, v125);
    *v126.i8 = vqmovn_u32(v378);
    v130 = vbicq_s8(v126, vceqzq_s16(vandq_s8(v128, v129)));
    v360 = vaddq_s32(v360, v125);
    v361 = vaddq_s32(v361, v125);
    v131.i64[0] = 0x10001000100010;
    v131.i64[1] = 0x10001000100010;
    v132 = vandq_s8(vshlq_n_s16(v128, 2uLL), v131);
    v131.i64[0] = 0x3000300030003;
    v131.i64[1] = 0x3000300030003;
    v362 = vaddq_s32(v362, v125);
    v363 = vaddq_s32(v363, v125);
    v125.i64[0] = 0x2000200020002;
    v125.i64[1] = 0x2000200020002;
    v364 = vaddq_s32(v364, v127);
    v365 = vaddq_s32(v365, v127);
    v133.i64[0] = 0x20002000200020;
    v133.i64[1] = 0x20002000200020;
    v134 = vaddq_s32(vaddq_s32(v376, v375), v377);
    v366 = vaddq_s32(v366, v127);
    v367 = vaddq_s32(v367, v127);
    *v121.i8 = vqmovn_u32(v374);
    v368 = vaddq_s32(v368, v127);
    v369 = vaddq_s32(v369, v127);
    v135.i64[0] = 0x7000700070007;
    v135.i64[1] = 0x7000700070007;
    *v134.i8 = vqmovn_u32(v134);
    v136 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v130, v132), vandq_s8(vceqq_s16(vandq_s8(v128, v131), v125), v133)), v121, v135), vshlq_n_s16(v134, 3uLL));
    v137 = vpaddq_s16(v136, v136);
    v370 = vaddq_s32(v370, v127);
    v371 = vaddq_s32(v371, v127);
    if ((vpaddq_s16(v137, v137).i16[0] + 175) > 0xFF7)
    {
      *a1 = v7;
      a1[1] = v8;
      a1[2] = v9;
      a1[3] = v10;
      a1[4] = v282;
      a1[5] = v283;
      a1[6] = v284;
      a1[7] = v285;
      a1[8] = v11;
      a1[9] = v12;
      a1[10] = v13;
      a1[11] = v14;
      a1[12] = v294;
      a1[13] = v295;
      a1[14] = v296;
      a1[15] = v297;
      a1[16] = v290;
      a1[17] = v291;
      a1[18] = v292;
      a1[19] = v293;
      a1[20] = v286;
      a1[21] = v287;
      a1[22] = v288;
      a1[23] = v289;
      a1[24] = v278;
      a1[25] = v279;
      a1[26] = v280;
      a1[27] = v281;
      LOBYTE(v141) = -1;
      a1[28] = v274;
      a1[29] = v275;
      a1[30] = v276;
      a1[31] = v277;
      result = 512;
    }

    else
    {
      v138 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v139 = 8 * (a1 & 7);
      if (v139)
      {
        v140 = *v138 & ~(-1 << v139);
      }

      else
      {
        v140 = 0;
      }

      if (v378.i32[0])
      {
        v143 = ((v378.i32[0] << 20) + 32505856) & 0x1F00000;
      }

      else
      {
        v143 = 0;
      }

      v144 = vand_s8(vshl_u32(*&vextq_s8(v373, v373, 8uLL), 0xF0000000ALL), 0xF800000007C00);
      v145 = v144.i32[1];
      v146 = v373.i8[0] & 0x1F | (32 * (v373.i8[4] & 0x1F)) | v144.i32[0];
      *a2 = 0;
      v147 = v372;
      v148 = ((v122.i32[1] << 25) + 1040187392) & 0x3E000000;
      if (!v122.i32[1])
      {
        v148 = 0;
      }

      v149 = vextq_s8(v122, v122, 8uLL).u64[0];
      v150 = vceqz_s32(v149);
      v151.i64[0] = v150.i32[0];
      v151.i64[1] = v150.i32[1];
      v152 = v151;
      v153.i64[0] = -1;
      v153.i64[1] = -1;
      v154 = vand_s8(vadd_s32(v149, -1), 0x1F0000001FLL);
      v151.i64[0] = v154.u32[0];
      v151.i64[1] = v154.u32[1];
      v155 = vbicq_s8(vshlq_u64(v151, xmmword_29D2F11E0), v152);
      v156 = vorrq_s8(vdupq_laneq_s64(v155, 1), v155).u64[0] | v146 | v143 | v148 | v145;
      v157 = (v156 << v139) | v140;
      if (v139 >= 0x18)
      {
        *v138 = v157;
        v157 = v156 >> (-8 * (a1 & 7u));
      }

      v158 = (v139 + 40) & 0x38;
      *(v138 + (((v139 + 40) >> 3) & 8)) = v157 | (v147.i64[0] << v158);
      v159 = v147.i64[0] >> -v158;
      if (((v139 + 40) & 0x38) == 0)
      {
        v159 = 0;
      }

      v160 = (v139 + 104) & 0x38;
      *(v138 + (((v139 + 104) >> 3) & 0x18)) = v159 | (v147.i64[1] << v160);
      if (((v139 + 104) & 0x38) != 0)
      {
        v161 = v147.i64[1] >> -v160;
      }

      else
      {
        v161 = 0;
      }

      v162 = v139 + 168;
      v163.i64[1] = v377.i64[1];
      v164 = vsubq_s32(v378, v374);
      v165 = vsubq_s32(v378, v375);
      v166 = vsubq_s32(v378, v377);
      *v163.i8 = vqmovn_u32(v164);
      *v163.i8 = vqmovn_u16(v163);
      *v164.i8 = vqmovn_u32(v165);
      *v164.i8 = vqmovn_u16(v164);
      *v165.i8 = vqmovn_u32(vsubq_s32(v378, v376));
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u32(v166);
      *v166.i8 = vqmovn_u16(v166);
      v167 = vtrn1q_s8(v163, v164);
      v168 = vtrn2q_s8(v163, v164);
      v169 = vtrn1q_s8(v165, v166);
      v170 = vtrn2q_s8(v165, v166);
      v171 = vzip1q_s16(v167, v169);
      v172 = vtrn2q_s16(v167, v169);
      v173 = vzip1q_s16(v168, v170);
      v170.i64[0] = vzip1q_s32(v172, vtrn2q_s16(v168, v170)).u64[0];
      v172.i64[0] = 0x400000004;
      v172.i64[1] = 0x400000004;
      v174.i64[0] = 0x404040404040404;
      v174.i64[1] = 0x404040404040404;
      v175 = vandq_s8(vtstq_s32(v373, v172), v174);
      v174.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v174.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v176 = vshlq_u8(v153, vorrq_s8(v175, v174));
      v177 = vmovl_u8(vand_s8(*v176.i8, *&vzip1q_s32(v171, v173)));
      v178 = vmovl_u8(vand_s8(*&vextq_s8(v176, v176, 8uLL), *v170.i8));
      v179 = vmovl_u8(*v175.i8);
      v180 = vmovl_high_u8(v175);
      v181 = vpaddq_s16(vshlq_u16(v177, vtrn1q_s16(0, v179)), vshlq_u16(v178, vtrn1q_s16(0, v180)));
      v182 = vpaddq_s16(v179, v180);
      v183 = vmovl_u16(*v182.i8);
      v184 = vmovl_high_u16(v182);
      v185 = vpaddq_s32(vshlq_u32(vmovl_u16(*v181.i8), vtrn1q_s32(0, v183)), vshlq_u32(vmovl_high_u16(v181), vtrn1q_s32(0, v184)));
      v186 = vpaddq_s32(v183, v184);
      v187.i64[0] = v185.u32[0];
      v187.i64[1] = v185.u32[1];
      v188 = v187;
      v187.i64[0] = v185.u32[2];
      v187.i64[1] = v185.u32[3];
      v189 = v187;
      v187.i64[0] = v186.u32[0];
      v187.i64[1] = v186.u32[1];
      v190 = v187;
      v187.i64[0] = v186.u32[2];
      v187.i64[1] = v186.u32[3];
      v191 = vpaddq_s64(vshlq_u64(v188, vzip1q_s64(0, v190)), vshlq_u64(v189, vzip1q_s64(0, v187)));
      v192 = vpaddq_s64(v190, v187);
      v193 = (v139 + 168) & 0x38;
      v194 = (v191.i64[0] << ((v139 - 88) & 0x38)) | v161;
      if ((v192.i64[0] + v193) >= 0x40)
      {
        *(v138 + ((v162 >> 3) & 0x18)) = v194;
        v194 = v191.i64[0] >> -((v139 - 88) & 0x38);
        if (!v193)
        {
          v194 = 0;
        }
      }

      v195 = v192.i64[0] + v162;
      v196 = v194 | (v191.i64[1] << v195);
      if ((v195 & 0x3F) + v192.i64[1] >= 0x40)
      {
        *(v138 + ((v195 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v196;
        v196 = v191.i64[1] >> -(v195 & 0x3F);
        if ((v195 & 0x3F) == 0)
        {
          v196 = 0;
        }
      }

      v197 = v195 + v192.i64[1];
      v198.i64[0] = 0x800000008;
      v198.i64[1] = 0x800000008;
      v199 = vbicq_s8(v378, vceqzq_s32(vandq_s8(v373, v198)));
      v200.i64[0] = 0x1F0000001FLL;
      v200.i64[1] = 0x1F0000001FLL;
      v201.i64[0] = -1;
      v201.i64[1] = -1;
      v202 = vandq_s8(vshlq_u32(v201, vaddq_s32(v199, v200)), v381);
      v203.i64[0] = v202.u32[0];
      v203.i64[1] = v202.u32[1];
      v204 = v203;
      v203.i64[0] = v202.u32[2];
      v203.i64[1] = v202.u32[3];
      v205 = v203;
      v203.i64[0] = v199.u32[0];
      v203.i64[1] = v199.u32[1];
      v206 = v203;
      v203.i64[0] = v199.u32[2];
      v203.i64[1] = v199.u32[3];
      v207 = vpaddq_s64(vshlq_u64(v204, vzip1q_s64(0, v206)), vshlq_u64(v205, vzip1q_s64(0, v203)));
      v208 = vpaddq_s64(v206, v203);
      v209 = (v207.i64[0] << v197) | v196;
      if (v208.i64[0] + (v197 & 0x3F) >= 0x40)
      {
        *(v138 + ((v197 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v209;
        v209 = v207.i64[0] >> -(v197 & 0x3F);
        if ((v197 & 0x3F) == 0)
        {
          v209 = 0;
        }
      }

      v210 = v208.i64[0] + v197;
      v211 = v209 | (v207.i64[1] << v210);
      if ((v210 & 0x3F) + v208.i64[1] >= 0x40)
      {
        *(v138 + ((v210 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
        v211 = v207.i64[1] >> -(v210 & 0x3F);
        if ((v210 & 0x3F) == 0)
        {
          v211 = 0;
        }
      }

      v212 = v210 + v208.i64[1];
      v213.i64[0] = 0x1F0000001FLL;
      v213.i64[1] = 0x1F0000001FLL;
      v214.i64[0] = -1;
      v214.i64[1] = -1;
      v215 = vandq_s8(vshlq_u32(v214, v213), v340);
      v216.i64[0] = v215.u32[0];
      v216.i64[1] = v215.u32[1];
      v217 = v216;
      v216.i64[0] = v215.u32[2];
      v216.i64[1] = v215.u32[3];
      v218 = vpaddq_s64(v217, v216);
      v219 = vpaddq_s64(0, 0);
      v220 = (v218.i64[0] << v212) | v211;
      if (v219.i64[0] + (v212 & 0x3F) >= 0x40)
      {
        *(v138 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v220;
        if ((v212 & 0x3F) != 0)
        {
          v220 = v218.i64[0] >> -(v212 & 0x3F);
        }

        else
        {
          v220 = 0;
        }
      }

      v221 = v219.i64[0] + v212;
      v222 = (v219.i64[0] + v212) & 0x3F;
      v223 = v220 | (v218.i64[1] << v221);
      if ((v222 + v219.i64[1]) >= 0x40)
      {
        *(v138 + ((v221 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
        if (v222)
        {
          v223 = v218.i64[1] >> -v222;
        }

        else
        {
          v223 = 0;
        }
      }

      v224 = v221 + v219.i64[1];
      v225.i64[0] = 0x1F0000001FLL;
      v225.i64[1] = 0x1F0000001FLL;
      v226.i64[0] = -1;
      v226.i64[1] = -1;
      for (i = 16; i != 128; i += 16)
      {
        v228 = vandq_s8(vshlq_u32(v226, vaddq_s32(v374, v225)), *(&v340 + i));
        v229.i64[0] = v228.u32[0];
        v229.i64[1] = v228.u32[1];
        v230 = v229;
        v229.i64[0] = v228.u32[2];
        v229.i64[1] = v228.u32[3];
        v231 = v229;
        v229.i64[0] = v374.u32[0];
        v229.i64[1] = v374.u32[1];
        v232 = v229;
        v229.i64[0] = v374.u32[2];
        v229.i64[1] = v374.u32[3];
        v233 = vpaddq_s64(vshlq_u64(v230, vzip1q_s64(0, v232)), vshlq_u64(v231, vzip1q_s64(0, v229)));
        v234 = vpaddq_s64(v232, v229);
        v235 = (v233.i64[0] << v224) | v223;
        if (v234.i64[0] + (v224 & 0x3F) >= 0x40)
        {
          *(v138 + ((v224 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v235;
          v235 = v233.i64[0] >> -(v224 & 0x3F);
          if ((v224 & 0x3F) == 0)
          {
            v235 = 0;
          }
        }

        v236 = v234.i64[0] + v224;
        v223 = v235 | (v233.i64[1] << v236);
        if ((v236 & 0x3F) + v234.i64[1] >= 0x40)
        {
          *(v138 + ((v236 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
          v223 = v233.i64[1] >> -(v236 & 0x3F);
          if ((v236 & 0x3F) == 0)
          {
            v223 = 0;
          }
        }

        v224 = v236 + v234.i64[1];
      }

      v237 = 0;
      v238.i64[0] = 0x1F0000001FLL;
      v238.i64[1] = 0x1F0000001FLL;
      v239.i64[0] = -1;
      v239.i64[1] = -1;
      do
      {
        v240 = vandq_s8(vshlq_u32(v239, vaddq_s32(v375, v238)), *(&v348 + v237));
        v241.i64[0] = v240.u32[0];
        v241.i64[1] = v240.u32[1];
        v242 = v241;
        v241.i64[0] = v240.u32[2];
        v241.i64[1] = v240.u32[3];
        v243 = v241;
        v241.i64[0] = v375.u32[0];
        v241.i64[1] = v375.u32[1];
        v244 = v241;
        v241.i64[0] = v375.u32[2];
        v241.i64[1] = v375.u32[3];
        v245 = vpaddq_s64(vshlq_u64(v242, vzip1q_s64(0, v244)), vshlq_u64(v243, vzip1q_s64(0, v241)));
        v246 = vpaddq_s64(v244, v241);
        v247 = (v245.i64[0] << v224) | v223;
        if (v246.i64[0] + (v224 & 0x3F) >= 0x40)
        {
          *(v138 + ((v224 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
          v247 = v245.i64[0] >> -(v224 & 0x3F);
          if ((v224 & 0x3F) == 0)
          {
            v247 = 0;
          }
        }

        v248 = v246.i64[0] + v224;
        v223 = v247 | (v245.i64[1] << v248);
        if ((v248 & 0x3F) + v246.i64[1] >= 0x40)
        {
          *(v138 + ((v248 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
          v223 = v245.i64[1] >> -(v248 & 0x3F);
          if ((v248 & 0x3F) == 0)
          {
            v223 = 0;
          }
        }

        v224 = v248 + v246.i64[1];
        v237 += 16;
      }

      while (v237 != 128);
      v249 = 0;
      v250.i64[0] = 0x1F0000001FLL;
      v250.i64[1] = 0x1F0000001FLL;
      v251.i64[0] = -1;
      v251.i64[1] = -1;
      do
      {
        v252 = vandq_s8(vshlq_u32(v251, vaddq_s32(v376, v250)), *(&v356 + v249));
        v253.i64[0] = v252.u32[0];
        v253.i64[1] = v252.u32[1];
        v254 = v253;
        v253.i64[0] = v252.u32[2];
        v253.i64[1] = v252.u32[3];
        v255 = v253;
        v253.i64[0] = v376.u32[0];
        v253.i64[1] = v376.u32[1];
        v256 = v253;
        v253.i64[0] = v376.u32[2];
        v253.i64[1] = v376.u32[3];
        v257 = vpaddq_s64(vshlq_u64(v254, vzip1q_s64(0, v256)), vshlq_u64(v255, vzip1q_s64(0, v253)));
        v258 = vpaddq_s64(v256, v253);
        v259 = (v257.i64[0] << v224) | v223;
        if (v258.i64[0] + (v224 & 0x3F) >= 0x40)
        {
          *(v138 + ((v224 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v259;
          v259 = v257.i64[0] >> -(v224 & 0x3F);
          if ((v224 & 0x3F) == 0)
          {
            v259 = 0;
          }
        }

        v260 = v258.i64[0] + v224;
        v223 = v259 | (v257.i64[1] << v260);
        if ((v260 & 0x3F) + v258.i64[1] >= 0x40)
        {
          *(v138 + ((v260 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
          v223 = v257.i64[1] >> -(v260 & 0x3F);
          if ((v260 & 0x3F) == 0)
          {
            v223 = 0;
          }
        }

        v224 = v260 + v258.i64[1];
        v249 += 16;
      }

      while (v249 != 128);
      v261 = 0;
      v262.i64[0] = 0x1F0000001FLL;
      v262.i64[1] = 0x1F0000001FLL;
      v263.i64[0] = -1;
      v263.i64[1] = -1;
      do
      {
        v264 = vandq_s8(vshlq_u32(v263, vaddq_s32(v377, v262)), *(&v364 + v261));
        v265.i64[0] = v264.u32[0];
        v265.i64[1] = v264.u32[1];
        v266 = v265;
        v265.i64[0] = v264.u32[2];
        v265.i64[1] = v264.u32[3];
        v267 = v265;
        v265.i64[0] = v377.u32[0];
        v265.i64[1] = v377.u32[1];
        v268 = v265;
        v265.i64[0] = v377.u32[2];
        v265.i64[1] = v377.u32[3];
        v269 = vpaddq_s64(vshlq_u64(v266, vzip1q_s64(0, v268)), vshlq_u64(v267, vzip1q_s64(0, v265)));
        v270 = vpaddq_s64(v268, v265);
        v271 = (v269.i64[0] << v224) | v223;
        if (v270.i64[0] + (v224 & 0x3F) >= 0x40)
        {
          *(v138 + ((v224 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v271;
          v271 = v269.i64[0] >> -(v224 & 0x3F);
          if ((v224 & 0x3F) == 0)
          {
            v271 = 0;
          }
        }

        v272 = v270.i64[0] + v224;
        v223 = v271 | (v269.i64[1] << v272);
        if ((v272 & 0x3F) + v270.i64[1] >= 0x40)
        {
          *(v138 + ((v272 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
          v223 = v269.i64[1] >> -(v272 & 0x3F);
          if ((v272 & 0x3F) == 0)
          {
            v223 = 0;
          }
        }

        v224 = v272 + v270.i64[1];
        v261 += 16;
      }

      while (v261 != 128);
      if ((v224 & 0x3F) != 0)
      {
        *(v138 + ((v224 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
      }

      v273 = ((v224 - v139 + 7) >> 3) + 1;
      result = v273 & 0x3FFFFFFFFFFFFFFELL;
      v141 = *a2 | ((v273 >> 1) - 1);
    }
  }

  else
  {
    *a1 = *a3;
    LOBYTE(v141) = 7;
    result = 16;
  }

  *a2 = v141;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, int32x4_t *a2, _BYTE *a3, unsigned int a4, unsigned int a5)
{
  v8 = a2;
  v9 = result;
  if (a4 && a5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(a2, a3, result, 256);
    v8 = (v8 + result);
    if (a4 < 5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a3 = 0;
    if (a4 < 5)
    {
      goto LABEL_9;
    }
  }

  if (a5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 1, v9 + 8, 256);
    v8 = (v8 + result);
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_9:
  a3[1] = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (a5 >= 5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 2, v9 + 64, 256);
    v8 = (v8 + result);
    if (a4 < 5)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_13:
  a3[2] = 0;
  if (a4 < 5)
  {
LABEL_18:
    a3[3] = 0;
    return result;
  }

LABEL_14:
  if (a5 < 5)
  {
    goto LABEL_18;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 3, v9 + 72, 256);
}

__n128 AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(__n128 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v22 = *MEMORY[0x29EDCA608];
  v21 = 0uLL;
  v5 = 32;
  do
  {
    v6 = 64 - v3;
    if (64 - v3 >= v5)
    {
      v6 = v5;
    }

    v21.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v4) & ~(-1 << v6)) << v3;
    v4 += v6;
    v7 = v6 + v3;
    v2 += v7 >> 6;
    v3 = v7 & 0x3F;
    v5 -= v6;
  }

  while (v5);
  if ((v3 | (v2 << 6)) + 32 <= 0x80)
  {
    v8 = 32;
    do
    {
      v9 = 64 - v3;
      if (64 - v3 >= v8)
      {
        v9 = v8;
      }

      v10 = v9 + v3;
      v2 += v10 >> 6;
      v3 = v10 & 0x3F;
      v8 -= v9;
    }

    while (v8);
    if ((v3 | (v2 << 6)) + 32 <= 0x80)
    {
      v11 = 0;
      v12 = 32;
      do
      {
        v13 = 64 - v3;
        if (64 - v3 >= v12)
        {
          v13 = v12;
        }

        v21.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v11) & ~(-1 << v13)) << v3;
        v11 += v13;
        v14 = v13 + v3;
        v2 += v14 >> 6;
        v3 = v14 & 0x3F;
        v12 -= v13;
      }

      while (v12);
      if ((v3 | (v2 << 6)) + 32 <= 0x80)
      {
        v15 = 0;
        v16 = 32;
        do
        {
          v17 = 64 - v3;
          if (64 - v3 >= v16)
          {
            v17 = v16;
          }

          v21.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v15) & ~(-1 << v17)) << v3;
          v15 += v17;
          v18 = v17 + v3;
          v2 += v18 >> 6;
          v3 = v18 & 0x3F;
          v16 -= v17;
        }

        while (v16);
      }
    }
  }

  result = v21;
  *a1 = v21;
  a1[1] = result;
  a1[2] = result;
  a1[3] = result;
  v20 = (a1 + a2);
  *v20 = result;
  v20[1] = result;
  v20[2] = result;
  v20[3] = result;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(_OWORD *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0xFFu:
      v9 = *(a3 + 16);
      v10 = *(a3 + 32);
      v11 = *(a3 + 48);
      v12 = *(a3 + 64);
      v13 = *(a3 + 80);
      v14 = *(a3 + 96);
      v15 = *(a3 + 112);
      v16 = *(a3 + 128);
      v17 = *(a3 + 144);
      v18 = *(a3 + 160);
      v19 = *(a3 + 176);
      v20 = *(a3 + 192);
      v21 = *(a3 + 208);
      v22 = *(a3 + 224);
      v23 = *(a3 + 240);
      v24 = *(a3 + 256);
      v25 = *(a3 + 272);
      v26 = *(a3 + 288);
      v27 = *(a3 + 304);
      v28 = *(a3 + 320);
      v29 = *(a3 + 336);
      v30 = *(a3 + 352);
      v31 = *(a3 + 368);
      v32 = *(a3 + 384);
      v33 = *(a3 + 400);
      v34 = *(a3 + 416);
      v35 = *(a3 + 432);
      v36 = *(a3 + 448);
      v37 = *(a3 + 464);
      v38 = *(a3 + 480);
      v39 = *(a3 + 496);
      *a1 = *a3;
      a1[1] = v9;
      a1[2] = v10;
      a1[3] = v11;
      a1[4] = v12;
      a1[5] = v13;
      a1[6] = v14;
      a1[7] = v15;
      a1[8] = v24;
      a1[9] = v25;
      a1[10] = v26;
      a1[11] = v27;
      a1[12] = v28;
      a1[13] = v29;
      a1[14] = v30;
      a1[15] = v31;
      v40 = (a1 + a2);
      *v40 = v16;
      v40[1] = v17;
      v40[2] = v18;
      v40[3] = v19;
      v41 = (a1 + a2 + 64);
      *v41 = v20;
      v41[1] = v21;
      v41[2] = v22;
      v41[3] = v23;
      v42 = (a1 + a2 + 128);
      *v42 = v32;
      v42[1] = v33;
      v42[2] = v34;
      v42[3] = v35;
      v43 = (a1 + a2 + 192);
      result = 512;
      *v43 = v36;
      v43[1] = v37;
      v43[2] = v38;
      v43[3] = v39;
      return result;
    case 7u:
      v7 = *a3;
      *a1 = *a3;
      a1[1] = v7;
      a1[2] = v7;
      a1[3] = v7;
      a1[4] = v7;
      a1[5] = v7;
      a1[6] = v7;
      a1[7] = v7;
      a1[8] = v7;
      a1[9] = v7;
      a1[10] = v7;
      a1[11] = v7;
      a1[12] = v7;
      a1[13] = v7;
      a1[14] = v7;
      a1[15] = v7;
      v8 = (a1 + a2);
      *v8 = v7;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v8[4] = v7;
      v8[5] = v7;
      v8[6] = v7;
      v8[7] = v7;
      v8[8] = v7;
      v8[9] = v7;
      v8[10] = v7;
      v8[11] = v7;
      v8[12] = v7;
      v8[13] = v7;
      result = 16;
      v8[14] = v7;
      v8[15] = v7;
      return result;
    case 0u:
      result = 0;
      a1[14] = 0u;
      a1[15] = 0u;
      a1[12] = 0u;
      a1[13] = 0u;
      a1[10] = 0u;
      a1[11] = 0u;
      a1[8] = 0u;
      a1[9] = 0u;
      a1[6] = 0u;
      a1[7] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v6 = (a1 + a2);
      v6[14] = 0u;
      v6[15] = 0u;
      v6[12] = 0u;
      v6[13] = 0u;
      v6[10] = 0u;
      v6[11] = 0u;
      v6[8] = 0u;
      v6[9] = 0u;
      v6[6] = 0u;
      v6[7] = 0u;
      v6[4] = 0u;
      v6[5] = 0u;
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      return result;
  }

  v514 = 0;
  v513 = (8 * (a3 & 7)) | 0x1000;
  v511 = 8 * (a3 & 7);
  v512 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(&v547, v552, &v546, &v511, a4);
  v47.i64[0] = 0x300000003;
  v47.i64[1] = 0x300000003;
  v48 = vbicq_s8(v552[0], vceqq_s32(vandq_s8(v547, v47), v47));
  v552[0] = v48;
  v548 = v48;
  v549 = v48;
  v550 = v48;
  v551 = v48;
  v49.i64[0] = 0x400000004;
  v49.i64[1] = 0x400000004;
  v50.i64[0] = 0x404040404040404;
  v50.i64[1] = 0x404040404040404;
  v51 = vandq_s8(vtstq_s32(v547, v49), v50);
  v52 = v511;
  if (vmaxvq_s8(v51) < 1)
  {
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v508 = v68;
    v509 = v68;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v507 = v68;
    v66 = a1;
    v67 = a2;
  }

  else
  {
    v53 = vmovl_u8(*&vpaddq_s8(v51, v51));
    v54 = vmovl_u16(*&vpaddq_s16(v53, v53));
    v55 = vpaddq_s32(v54, v54).u64[0];
    v56.i64[0] = v55;
    v56.i64[1] = HIDWORD(v55);
    v57 = v56;
    v58 = vaddvq_s64(v56);
    v59 = v58;
    v60 = v511 + v58;
    if (v513)
    {
      v61 = v513 >= v60;
    }

    else
    {
      v61 = 1;
    }

    v62 = v61;
    if (v58 <= 0x80 && (v62 & 1) != 0)
    {
      v46.i64[0] = 63;
      v63 = (v512 + 8 * (v511 >> 6));
      v64 = vaddq_s64(vdupq_lane_s64(vandq_s8(v511, v46).i64[0], 0), vzip1q_s64(0, v57));
      v65 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v63, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(v63->i64[0], 0), vnegq_s64(v64)));
      if ((v511 & 0x3F) + v59 >= 0x81)
      {
        v65 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v63[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v63[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v65);
      }

      v66 = a1;
      v67 = a2;
      v511 = v60;
      v52 = v60;
    }

    else
    {
      v514 = 1;
      v65 = 0uLL;
      v66 = a1;
      v67 = a2;
    }

    v70 = vzip1_s32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
    v71.i64[0] = v70.u32[0];
    v71.i64[1] = v70.u32[1];
    v72 = vshlq_u64(v65, vnegq_s64(v71));
    v73 = vuzp1q_s32(vzip1q_s64(v65, v72), vzip2q_s64(v65, v72));
    v74 = vshlq_u32(v73, vnegq_s32((*&v53 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v75 = vuzp1q_s16(vzip1q_s32(v73, v74), vzip2q_s32(v73, v74));
    v76 = vshlq_u16(v75, vnegq_s16((*&v51 & __PAIR128__(0xF8FFF8FFF8FFF8FFLL, 0xF8FFF8FFF8FFF8FFLL))));
    v77 = vuzp1q_s8(vzip1q_s16(v75, v76), vzip2q_s16(v75, v76));
    v76.i64[0] = 0x101010101010101;
    v76.i64[1] = 0x101010101010101;
    v78 = vshlq_s8(v76, v51);
    v76.i64[0] = -1;
    v76.i64[1] = -1;
    v79 = vqtbl1q_s8(vandq_s8(vaddq_s8(v78, v76), v77), xmmword_29D2F0F70);
    v77.i64[0] = vmovl_s8(*v79.i8).u64[0];
    v76.i64[0] = vmovl_s8(vdup_lane_s32(*v79.i8, 1)).u64[0];
    v80 = vmovl_s8(*&vdupq_laneq_s32(v79, 2)).u64[0];
    v79.i64[0] = vmovl_s8(*&vdupq_laneq_s32(v79, 3)).u64[0];
    v548 = vsubw_s16(v548, *v77.i8);
    v549 = vsubw_s16(v549, *v76.i8);
    v550 = vsubw_s16(v550, v80);
    v551 = vsubw_s16(v551, *v79.i8);
    v507 = vmovl_s16(vceqz_s16(*v76.i8));
    v508 = vmovl_s16(vceqz_s16(*v77.i8));
    v69 = vmovl_s16(vceqz_s16(v80));
    v509 = vmovl_s16(vceqz_s16(*v79.i8));
  }

  v81.i64[0] = 0x800000008;
  v81.i64[1] = 0x800000008;
  v82 = vbicq_s8(v48, vceqzq_s32(vandq_s8(v547, v81)));
  v81.i64[0] = vpaddq_s32(v82, v82).u64[0];
  v83.i64[0] = v81.u32[0];
  v83.i64[1] = v81.u32[1];
  v84 = v83;
  v85 = vaddvq_s64(v83);
  v86 = v85;
  v87 = v52 + v85;
  if (v513)
  {
    v88 = v513 >= v87;
  }

  else
  {
    v88 = 1;
  }

  v89 = v88;
  if (v85 <= 0x80 && (v89 & 1) != 0)
  {
    v90 = vaddq_s64(vdupq_n_s64(v52 & 0x3F), vzip1q_s64(0, v84));
    v91 = (v512 + 8 * (v52 >> 6));
    v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v90)));
    if ((v52 & 0x3F) + v86 >= 0x81)
    {
      v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v92);
    }

    v52 = v87;
  }

  else
  {
    v514 = 1;
    v92 = 0uLL;
  }

  v93 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v94.i64[0] = v93.u32[0];
  v94.i64[1] = v93.u32[1];
  v95 = vshlq_u64(v92, vnegq_s64(v94));
  v96 = vuzp1q_s32(vzip1q_s64(v92, v95), vzip2q_s64(v92, v95));
  v95.i64[0] = 0x1F0000001FLL;
  v95.i64[1] = 0x1F0000001FLL;
  v97.i64[0] = 0x2000000020;
  v97.i64[1] = 0x2000000020;
  v98 = vshlq_s32(vshlq_s32(v96, vsubq_s32(v97, v82)), vaddq_s32(v82, v95));
  v552[3] = v98;
  v99 = v547.i8[0] & 3;
  if (v99 == 2)
  {
    if (v513)
    {
      v100 = v52 + 16;
      v101 = v52 + 32;
      if (v513 >= v52 + 16)
      {
        v102 = v52 + 16;
      }

      else
      {
        v101 = v52 + 16;
        v102 = v52;
      }

      if (v513 >= v101)
      {
        v52 = v101;
      }

      else
      {
        v52 = v102;
      }

      if (v513 < v100 || v513 < v101)
      {
        v514 = 1;
      }
    }

    else
    {
      v52 += 32;
    }
  }

  v103 = vpaddq_s32(0, 0).u64[0];
  v104.i64[0] = v103;
  v104.i64[1] = HIDWORD(v103);
  v105 = v104;
  v106 = vaddvq_s64(v104);
  v107 = v106;
  v108 = v52 + v106;
  if (v513)
  {
    v109 = v513 >= v108;
  }

  else
  {
    v109 = 1;
  }

  v110 = v109;
  if (v106 <= 0x80 && (v110 & 1) != 0)
  {
    v111 = v52 & 0x3F;
    v112 = vaddq_s64(vdupq_n_s64(v111), vzip1q_s64(0, v105));
    v113 = v512;
    v114 = (v512 + 8 * (v52 >> 6));
    v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v114, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v112)), vshlq_u64(vdupq_lane_s64(v114->i64[0], 0), vnegq_s64(v112)));
    if (v111 + v107 >= 0x81)
    {
      v112 = vorrq_s8(vshlq_u64(vdupq_lane_s64(v114[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v112)), vshlq_u64(vdupq_laneq_s64(v114[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v112)));
      v115 = vorrq_s8(v112, v115);
    }

    v511 = v108;
    *v112.i8 = vmovn_s64(v115);
    v116 = v514;
    v52 = v108;
  }

  else
  {
    v112 = 0uLL;
    v116 = 1;
    v113 = v512;
  }

  v117.i64[0] = 0x2000000020;
  v117.i64[1] = 0x2000000020;
  v118.i64[0] = 0x1F0000001FLL;
  v118.i64[1] = 0x1F0000001FLL;
  v119 = vshlq_s32(vshlq_s32(vzip1q_s32(v112, v112), v117), v118);
  v515 = v119;
  v120 = vpaddq_s32(v548, v548).u64[0];
  v121.i64[0] = v120;
  v121.i64[1] = HIDWORD(v120);
  v122 = v121;
  v123 = vaddvq_s64(v121);
  v124 = v123;
  v125 = v52 + v123;
  if (v513)
  {
    v126 = v513 >= v125;
  }

  else
  {
    v126 = 1;
  }

  v127 = v126;
  v128 = 0uLL;
  if (v123 <= 0x80 && v127)
  {
    v129 = v52 & 0x3F;
    v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v122));
    v131 = (v113 + 8 * (v52 >> 6));
    v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
    if (v129 + v124 >= 0x81)
    {
      v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v132);
    }
  }

  else
  {
    v116 = 1;
    v125 = v52;
    v132 = 0uLL;
  }

  v133 = vzip1_s32(*v548.i8, *&vextq_s8(v548, v548, 8uLL));
  v134.i64[0] = v133.u32[0];
  v134.i64[1] = v133.u32[1];
  v135 = vnegq_s64(v134);
  v136 = vshlq_u64(v132, v135);
  v137 = vaddq_s32(v548, v118);
  v138 = vsubq_s32(v117, v548);
  v139 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v132, v136), vzip2q_s64(v132, v136)), v138), v137);
  v516 = v139;
  v140 = v125 + v124;
  if (v513)
  {
    v141 = v513 >= v140;
  }

  else
  {
    v141 = 1;
  }

  v142 = v141;
  if (v124 <= 0x80 && v142)
  {
    v143 = v125 & 0x3F;
    v144 = vaddq_s64(vdupq_n_s64(v143), vzip1q_s64(0, v122));
    v145 = (v113 + 8 * (v125 >> 6));
    v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v145, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v144)), vshlq_u64(vdupq_lane_s64(v145->i64[0], 0), vnegq_s64(v144)));
    if (v143 + v124 >= 0x81)
    {
      v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v145[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v144)), vshlq_u64(vdupq_laneq_s64(v145[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v144))), v128);
    }
  }

  else
  {
    v116 = 1;
    v140 = v125;
  }

  v146 = vshlq_u64(v128, v135);
  v506 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v128, v146), vzip2q_s64(v128, v146)), v138), v137);
  v517 = v506;
  v147 = v140 + v124;
  if (v513)
  {
    v148 = v513 >= v147;
  }

  else
  {
    v148 = 1;
  }

  v149 = v148;
  v150 = 0uLL;
  if (v124 <= 0x80 && v149)
  {
    v151 = v140 & 0x3F;
    v152 = vaddq_s64(vdupq_n_s64(v151), vzip1q_s64(0, v122));
    v153 = (v113 + 8 * (v140 >> 6));
    v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v153, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v152)), vshlq_u64(vdupq_lane_s64(v153->i64[0], 0), vnegq_s64(v152)));
    if (v151 + v124 >= 0x81)
    {
      v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v153[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v152)), vshlq_u64(vdupq_laneq_s64(v153[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v152))), v154);
    }
  }

  else
  {
    v116 = 1;
    v147 = v140;
    v154 = 0uLL;
  }

  v155 = vshlq_u64(v154, v135);
  v156 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v154, v155), vzip2q_s64(v154, v155)), v138), v137);
  v518 = v156;
  v157 = v147 + v124;
  if (v513)
  {
    v158 = v513 >= v157;
  }

  else
  {
    v158 = 1;
  }

  v159 = v158;
  if (v124 <= 0x80 && v159)
  {
    v160 = v147 & 0x3F;
    v161 = vaddq_s64(vdupq_n_s64(v160), vzip1q_s64(0, v122));
    v162 = (v113 + 8 * (v147 >> 6));
    v150 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if (v160 + v124 >= 0x81)
    {
      v150 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v150);
    }
  }

  else
  {
    v116 = 1;
    v157 = v147;
  }

  v163 = vshlq_u64(v150, v135);
  v505 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v150, v163), vzip2q_s64(v150, v163)), v138), v137);
  v519 = v505;
  v164 = v157 + v124;
  if (v513)
  {
    v165 = v513 >= v164;
  }

  else
  {
    v165 = 1;
  }

  v166 = v165;
  v167 = 0uLL;
  if (v124 <= 0x80 && v166)
  {
    v168 = v157 & 0x3F;
    v169 = vaddq_s64(vdupq_n_s64(v168), vzip1q_s64(0, v122));
    v170 = (v113 + 8 * (v157 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
    if (v168 + v124 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v171);
    }
  }

  else
  {
    v116 = 1;
    v164 = v157;
    v171 = 0uLL;
  }

  v172 = vshlq_u64(v171, v135);
  v173 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v171, v172), vzip2q_s64(v171, v172)), v138), v137);
  v520 = v173;
  v174 = v164 + v124;
  if (v513)
  {
    v175 = v513 >= v174;
  }

  else
  {
    v175 = 1;
  }

  v176 = v175;
  if (v124 <= 0x80 && v176)
  {
    v177 = v164 & 0x3F;
    v178 = vaddq_s64(vdupq_n_s64(v177), vzip1q_s64(0, v122));
    v179 = (v113 + 8 * (v164 >> 6));
    v167 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v179, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v178)), vshlq_u64(vdupq_lane_s64(v179->i64[0], 0), vnegq_s64(v178)));
    if (v177 + v124 >= 0x81)
    {
      v167 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v179[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v178)), vshlq_u64(vdupq_laneq_s64(v179[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v178))), v167);
    }
  }

  else
  {
    v116 = 1;
    v174 = v164;
  }

  v180 = vshlq_u64(v167, v135);
  v504 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v167, v180), vzip2q_s64(v167, v180)), v138), v137);
  v521 = v504;
  v181 = v174 + v124;
  if (v513)
  {
    v182 = v513 >= v181;
  }

  else
  {
    v182 = 1;
  }

  v183 = v182;
  v184 = 0uLL;
  if (v124 <= 0x80 && v183)
  {
    v185 = v174 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v122));
    v187 = (v113 + 8 * (v174 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v124 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  else
  {
    v116 = 1;
    v181 = v174;
    v188 = 0uLL;
  }

  v189 = vshlq_u64(v188, v135);
  v503 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v188, v189), vzip2q_s64(v188, v189)), v138), v137);
  v522 = v503;
  v190 = vpaddq_s32(v549, v549).u64[0];
  v191.i64[0] = v190;
  v191.i64[1] = HIDWORD(v190);
  v192 = v191;
  v193 = vaddvq_s64(v191);
  v194 = v193;
  v195 = v181 + v193;
  if (v513)
  {
    v196 = v513 >= v195;
  }

  else
  {
    v196 = 1;
  }

  v197 = v196;
  if (v193 <= 0x80 && v197)
  {
    v198 = v181 & 0x3F;
    v199 = vaddq_s64(vdupq_n_s64(v198), vzip1q_s64(0, v192));
    v200 = (v113 + 8 * (v181 >> 6));
    v184 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
    if (v198 + v194 >= 0x81)
    {
      v184 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v184);
    }
  }

  else
  {
    v116 = 1;
    v195 = v181;
  }

  v201 = vzip1_s32(*v549.i8, *&vextq_s8(v549, v549, 8uLL));
  v202.i64[0] = v201.u32[0];
  v202.i64[1] = v201.u32[1];
  v203 = vnegq_s64(v202);
  v204 = vshlq_u64(v184, v203);
  v205 = vuzp1q_s32(vzip1q_s64(v184, v204), vzip2q_s64(v184, v204));
  v204.i64[0] = 0x1F0000001FLL;
  v204.i64[1] = 0x1F0000001FLL;
  v206 = vaddq_s32(v549, v204);
  v207.i64[0] = 0x2000000020;
  v207.i64[1] = 0x2000000020;
  v208 = vsubq_s32(v207, v549);
  v502 = vshlq_s32(vshlq_s32(v205, v208), v206);
  v523 = v502;
  v209 = v195 + v194;
  if (v513)
  {
    v210 = v513 >= v209;
  }

  else
  {
    v210 = 1;
  }

  v211 = v210;
  v212 = 0uLL;
  if (v194 <= 0x80 && v211)
  {
    v213 = v195 & 0x3F;
    v214 = vaddq_s64(vdupq_n_s64(v213), vzip1q_s64(0, v192));
    v215 = (v113 + 8 * (v195 >> 6));
    v216 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v215, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v214)), vshlq_u64(vdupq_lane_s64(v215->i64[0], 0), vnegq_s64(v214)));
    if (v213 + v194 >= 0x81)
    {
      v216 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v215[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v214)), vshlq_u64(vdupq_laneq_s64(v215[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v214))), v216);
    }
  }

  else
  {
    v116 = 1;
    v209 = v195;
    v216 = 0uLL;
  }

  v217 = vshlq_u64(v216, v203);
  v501 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v216, v217), vzip2q_s64(v216, v217)), v208), v206);
  v524 = v501;
  v218 = v209 + v194;
  if (v513)
  {
    v219 = v513 >= v218;
  }

  else
  {
    v219 = 1;
  }

  v220 = v219;
  if (v194 <= 0x80 && v220)
  {
    v221 = v209 & 0x3F;
    v222 = vaddq_s64(vdupq_n_s64(v221), vzip1q_s64(0, v192));
    v223 = (v113 + 8 * (v209 >> 6));
    v212 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v223, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v222)), vshlq_u64(vdupq_lane_s64(v223->i64[0], 0), vnegq_s64(v222)));
    if (v221 + v194 >= 0x81)
    {
      v212 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v223[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v222)), vshlq_u64(vdupq_laneq_s64(v223[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v222))), v212);
    }
  }

  else
  {
    v116 = 1;
    v218 = v209;
  }

  v224 = vshlq_u64(v212, v203);
  v500 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v212, v224), vzip2q_s64(v212, v224)), v208), v206);
  v525 = v500;
  v225 = v218 + v194;
  if (v513)
  {
    v226 = v513 >= v225;
  }

  else
  {
    v226 = 1;
  }

  v227 = v226;
  v228 = 0uLL;
  if (v194 <= 0x80 && v227)
  {
    v229 = v218 & 0x3F;
    v230 = vaddq_s64(vdupq_n_s64(v229), vzip1q_s64(0, v192));
    v231 = (v113 + 8 * (v218 >> 6));
    v232 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v231, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v230)), vshlq_u64(vdupq_lane_s64(v231->i64[0], 0), vnegq_s64(v230)));
    if (v229 + v194 >= 0x81)
    {
      v232 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v231[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v230)), vshlq_u64(vdupq_laneq_s64(v231[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v230))), v232);
    }
  }

  else
  {
    v116 = 1;
    v225 = v218;
    v232 = 0uLL;
  }

  v233 = vshlq_u64(v232, v203);
  v499 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v232, v233), vzip2q_s64(v232, v233)), v208), v206);
  v526 = v499;
  v234 = v225 + v194;
  if (v513)
  {
    v235 = v513 >= v234;
  }

  else
  {
    v235 = 1;
  }

  v236 = v235;
  if (v194 <= 0x80 && v236)
  {
    v237 = v225 & 0x3F;
    v238 = vaddq_s64(vdupq_n_s64(v237), vzip1q_s64(0, v192));
    v239 = (v113 + 8 * (v225 >> 6));
    v228 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v239, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v239->i64[0], 0), vnegq_s64(v238)));
    if (v237 + v194 >= 0x81)
    {
      v228 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v239[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v239[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v228);
    }
  }

  else
  {
    v116 = 1;
    v234 = v225;
  }

  v240 = vshlq_u64(v228, v203);
  v498 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v228, v240), vzip2q_s64(v228, v240)), v208), v206);
  v527 = v498;
  v241 = v234 + v194;
  if (v513)
  {
    v242 = v513 >= v241;
  }

  else
  {
    v242 = 1;
  }

  v243 = v242;
  v244 = 0uLL;
  if (v194 <= 0x80 && v243)
  {
    v245 = v234 & 0x3F;
    v246 = vaddq_s64(vdupq_n_s64(v245), vzip1q_s64(0, v192));
    v247 = (v113 + 8 * (v234 >> 6));
    v248 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v247, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v246)), vshlq_u64(vdupq_lane_s64(v247->i64[0], 0), vnegq_s64(v246)));
    if (v245 + v194 >= 0x81)
    {
      v248 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v247[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v246)), vshlq_u64(vdupq_laneq_s64(v247[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v246))), v248);
    }
  }

  else
  {
    v116 = 1;
    v241 = v234;
    v248 = 0uLL;
  }

  v249 = vshlq_u64(v248, v203);
  v250 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v248, v249), vzip2q_s64(v248, v249)), v208), v206);
  v528 = v250;
  v251 = v241 + v194;
  if (v513)
  {
    v252 = v513 >= v251;
  }

  else
  {
    v252 = 1;
  }

  v253 = v252;
  if (v194 <= 0x80 && v253)
  {
    v254 = v241 & 0x3F;
    v255 = vaddq_s64(vdupq_n_s64(v254), vzip1q_s64(0, v192));
    v256 = (v113 + 8 * (v241 >> 6));
    v244 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v256, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v255)), vshlq_u64(vdupq_lane_s64(v256->i64[0], 0), vnegq_s64(v255)));
    if (v254 + v194 >= 0x81)
    {
      v244 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v256[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v255)), vshlq_u64(vdupq_laneq_s64(v256[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v255))), v244);
    }
  }

  else
  {
    v116 = 1;
    v251 = v241;
  }

  v257 = vshlq_u64(v244, v203);
  v258 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v244, v257), vzip2q_s64(v244, v257)), v208), v206);
  v529 = v258;
  v259 = v251 + v194;
  if (v513)
  {
    v260 = v513 >= v259;
  }

  else
  {
    v260 = 1;
  }

  v261 = v260;
  v262 = 0uLL;
  if (v194 <= 0x80 && v261)
  {
    v263 = v251 & 0x3F;
    v264 = vaddq_s64(vdupq_n_s64(v263), vzip1q_s64(0, v192));
    v265 = (v113 + 8 * (v251 >> 6));
    v266 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v265, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v264)), vshlq_u64(vdupq_lane_s64(v265->i64[0], 0), vnegq_s64(v264)));
    if (v263 + v194 >= 0x81)
    {
      v266 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v265[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v264)), vshlq_u64(vdupq_laneq_s64(v265[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v264))), v266);
    }
  }

  else
  {
    v116 = 1;
    v259 = v251;
    v266 = 0uLL;
  }

  v267 = vshlq_u64(v266, v203);
  v268 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v266, v267), vzip2q_s64(v266, v267)), v208), v206);
  v530 = v268;
  v269 = vpaddq_s32(v550, v550).u64[0];
  v270.i64[0] = v269;
  v270.i64[1] = HIDWORD(v269);
  v271 = v270;
  v272 = vaddvq_s64(v270);
  v273 = v272;
  v274 = v259 + v272;
  if (v513)
  {
    v275 = v513 >= v274;
  }

  else
  {
    v275 = 1;
  }

  v276 = v275;
  if (v272 <= 0x80 && v276)
  {
    v277 = v259 & 0x3F;
    v278 = vaddq_s64(vdupq_n_s64(v277), vzip1q_s64(0, v271));
    v279 = (v113 + 8 * (v259 >> 6));
    v262 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v279, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v278)), vshlq_u64(vdupq_lane_s64(v279->i64[0], 0), vnegq_s64(v278)));
    if (v277 + v273 >= 0x81)
    {
      v262 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v279[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v278)), vshlq_u64(vdupq_laneq_s64(v279[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v278))), v262);
    }
  }

  else
  {
    v116 = 1;
    v274 = v259;
  }

  v280 = vzip1_s32(*v550.i8, *&vextq_s8(v550, v550, 8uLL));
  v281.i64[0] = v280.u32[0];
  v281.i64[1] = v280.u32[1];
  v282 = vnegq_s64(v281);
  v283 = vshlq_u64(v262, v282);
  v284 = vuzp1q_s32(vzip1q_s64(v262, v283), vzip2q_s64(v262, v283));
  v283.i64[0] = 0x1F0000001FLL;
  v283.i64[1] = 0x1F0000001FLL;
  v285 = vaddq_s32(v550, v283);
  v286.i64[0] = 0x2000000020;
  v286.i64[1] = 0x2000000020;
  v287 = vsubq_s32(v286, v550);
  v288 = vshlq_s32(vshlq_s32(v284, v287), v285);
  v531 = v288;
  v289 = v274 + v273;
  if (v513)
  {
    v290 = v513 >= v289;
  }

  else
  {
    v290 = 1;
  }

  v291 = v290;
  v292 = 0uLL;
  if (v273 <= 0x80 && v291)
  {
    v293 = v274 & 0x3F;
    v294 = vaddq_s64(vdupq_n_s64(v293), vzip1q_s64(0, v271));
    v295 = (v113 + 8 * (v274 >> 6));
    v296 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v295, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v294)), vshlq_u64(vdupq_lane_s64(v295->i64[0], 0), vnegq_s64(v294)));
    if (v293 + v273 >= 0x81)
    {
      v296 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v295[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v294)), vshlq_u64(vdupq_laneq_s64(v295[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v294))), v296);
    }
  }

  else
  {
    v116 = 1;
    v289 = v274;
    v296 = 0uLL;
  }

  v297 = vshlq_u64(v296, v282);
  v298 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v296, v297), vzip2q_s64(v296, v297)), v287), v285);
  v532 = v298;
  v299 = v289 + v273;
  if (v513)
  {
    v300 = v513 >= v299;
  }

  else
  {
    v300 = 1;
  }

  v301 = v300;
  if (v273 <= 0x80 && v301)
  {
    v302 = v289 & 0x3F;
    v303 = vaddq_s64(vdupq_n_s64(v302), vzip1q_s64(0, v271));
    v304 = (v113 + 8 * (v289 >> 6));
    v292 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v304, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v303)), vshlq_u64(vdupq_lane_s64(v304->i64[0], 0), vnegq_s64(v303)));
    if (v302 + v273 >= 0x81)
    {
      v292 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v304[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v303)), vshlq_u64(vdupq_laneq_s64(v304[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v303))), v292);
    }
  }

  else
  {
    v116 = 1;
    v299 = v289;
  }

  v305 = vshlq_u64(v292, v282);
  v306 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v292, v305), vzip2q_s64(v292, v305)), v287), v285);
  v533 = v306;
  v307 = v299 + v273;
  if (v513)
  {
    v308 = v513 >= v307;
  }

  else
  {
    v308 = 1;
  }

  v309 = v308;
  v310 = 0uLL;
  if (v273 <= 0x80 && v309)
  {
    v311 = v299 & 0x3F;
    v312 = vaddq_s64(vdupq_n_s64(v311), vzip1q_s64(0, v271));
    v313 = (v113 + 8 * (v299 >> 6));
    v314 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v313, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v312)), vshlq_u64(vdupq_lane_s64(v313->i64[0], 0), vnegq_s64(v312)));
    if (v311 + v273 >= 0x81)
    {
      v314 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v313[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v312)), vshlq_u64(vdupq_laneq_s64(v313[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v312))), v314);
    }
  }

  else
  {
    v116 = 1;
    v307 = v299;
    v314 = 0uLL;
  }

  v315 = vshlq_u64(v314, v282);
  v316 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v314, v315), vzip2q_s64(v314, v315)), v287), v285);
  v534 = v316;
  v317 = v307 + v273;
  if (v513)
  {
    v318 = v513 >= v317;
  }

  else
  {
    v318 = 1;
  }

  v319 = v318;
  if (v273 <= 0x80 && v319)
  {
    v320 = v307 & 0x3F;
    v321 = vaddq_s64(vdupq_n_s64(v320), vzip1q_s64(0, v271));
    v322 = (v113 + 8 * (v307 >> 6));
    v310 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v322, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v321)), vshlq_u64(vdupq_lane_s64(v322->i64[0], 0), vnegq_s64(v321)));
    if (v320 + v273 >= 0x81)
    {
      v310 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v322[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v321)), vshlq_u64(vdupq_laneq_s64(v322[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v321))), v310);
    }
  }

  else
  {
    v116 = 1;
    v317 = v307;
  }

  v323 = vshlq_u64(v310, v282);
  v324 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v310, v323), vzip2q_s64(v310, v323)), v287), v285);
  v535 = v324;
  v325 = v317 + v273;
  if (v513)
  {
    v326 = v513 >= v325;
  }

  else
  {
    v326 = 1;
  }

  v327 = v326;
  v328 = 0uLL;
  if (v273 <= 0x80 && v327)
  {
    v329 = v317 & 0x3F;
    v330 = vaddq_s64(vdupq_n_s64(v329), vzip1q_s64(0, v271));
    v331 = (v113 + 8 * (v317 >> 6));
    v332 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v331, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v330)), vshlq_u64(vdupq_lane_s64(v331->i64[0], 0), vnegq_s64(v330)));
    if (v329 + v273 >= 0x81)
    {
      v332 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v331[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v330)), vshlq_u64(vdupq_laneq_s64(v331[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v330))), v332);
    }
  }

  else
  {
    v116 = 1;
    v325 = v317;
    v332 = 0uLL;
  }

  v333 = vshlq_u64(v332, v282);
  v334 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v332, v333), vzip2q_s64(v332, v333)), v287), v285);
  v536 = v334;
  v335 = v325 + v273;
  if (v513)
  {
    v336 = v513 >= v335;
  }

  else
  {
    v336 = 1;
  }

  v337 = v336;
  if (v273 <= 0x80 && v337)
  {
    v338 = v325 & 0x3F;
    v339 = vaddq_s64(vdupq_n_s64(v338), vzip1q_s64(0, v271));
    v340 = (v113 + 8 * (v325 >> 6));
    v328 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v340, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v339)), vshlq_u64(vdupq_lane_s64(v340->i64[0], 0), vnegq_s64(v339)));
    if (v338 + v273 >= 0x81)
    {
      v328 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v340[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v339)), vshlq_u64(vdupq_laneq_s64(v340[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v339))), v328);
    }
  }

  else
  {
    v116 = 1;
    v335 = v325;
  }

  v341 = vshlq_u64(v328, v282);
  v342 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v328, v341), vzip2q_s64(v328, v341)), v287), v285);
  v537 = v342;
  v343 = v335 + v273;
  if (v513)
  {
    v344 = v513 >= v343;
  }

  else
  {
    v344 = 1;
  }

  v345 = v344;
  v346 = 0uLL;
  if (v273 <= 0x80 && v345)
  {
    v347 = v335 & 0x3F;
    v348 = vaddq_s64(vdupq_n_s64(v347), vzip1q_s64(0, v271));
    v349 = (v113 + 8 * (v335 >> 6));
    v350 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v349, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v348)), vshlq_u64(vdupq_lane_s64(v349->i64[0], 0), vnegq_s64(v348)));
    if (v347 + v273 >= 0x81)
    {
      v350 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v349[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v348)), vshlq_u64(vdupq_laneq_s64(v349[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v348))), v350);
    }
  }

  else
  {
    v116 = 1;
    v343 = v335;
    v350 = 0uLL;
  }

  v351 = vshlq_u64(v350, v282);
  v352 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v350, v351), vzip2q_s64(v350, v351)), v287), v285);
  v538 = v352;
  v351.i64[0] = vpaddq_s32(v551, v551).u64[0];
  v353.i64[0] = v351.u32[0];
  v353.i64[1] = v351.u32[1];
  v354 = v353;
  v355 = vaddvq_s64(v353);
  v356 = v355;
  v357 = v343 + v355;
  if (v513)
  {
    v358 = v513 >= v357;
  }

  else
  {
    v358 = 1;
  }

  v359 = v358;
  if (v355 <= 0x80 && v359)
  {
    v360 = v343 & 0x3F;
    v361 = vaddq_s64(vdupq_n_s64(v360), vzip1q_s64(0, v354));
    v362 = (v113 + 8 * (v343 >> 6));
    v346 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v362, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v361)), vshlq_u64(vdupq_lane_s64(v362->i64[0], 0), vnegq_s64(v361)));
    if (v360 + v356 >= 0x81)
    {
      v346 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v362[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v361)), vshlq_u64(vdupq_laneq_s64(v362[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v361))), v346);
    }
  }

  else
  {
    v116 = 1;
    v357 = v343;
  }

  v363 = vzip1_s32(*v551.i8, *&vextq_s8(v551, v551, 8uLL));
  v364.i64[0] = v363.u32[0];
  v364.i64[1] = v363.u32[1];
  v365 = vnegq_s64(v364);
  v366 = vshlq_u64(v346, v365);
  v367 = vuzp1q_s32(vzip1q_s64(v346, v366), vzip2q_s64(v346, v366));
  v368.i64[0] = 0x1F0000001FLL;
  v368.i64[1] = 0x1F0000001FLL;
  v369 = vaddq_s32(v551, v368);
  v368.i64[0] = 0x2000000020;
  v368.i64[1] = 0x2000000020;
  v370 = vsubq_s32(v368, v551);
  v371 = vshlq_s32(vshlq_s32(v367, v370), v369);
  v539 = v371;
  v372 = v357 + v356;
  if (v513)
  {
    v373 = v513 >= v372;
  }

  else
  {
    v373 = 1;
  }

  v374 = v373;
  v375 = 0uLL;
  if (v356 <= 0x80 && v374)
  {
    v376 = v357 & 0x3F;
    v377 = vaddq_s64(vdupq_n_s64(v376), vzip1q_s64(0, v354));
    v378 = (v113 + 8 * (v357 >> 6));
    v379 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v378, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v377)), vshlq_u64(vdupq_lane_s64(v378->i64[0], 0), vnegq_s64(v377)));
    if (v376 + v356 >= 0x81)
    {
      v379 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v378[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v377)), vshlq_u64(vdupq_laneq_s64(v378[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v377))), v379);
    }
  }

  else
  {
    v116 = 1;
    v372 = v357;
    v379 = 0uLL;
  }

  v380 = vshlq_u64(v379, v365);
  v381 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v379, v380), vzip2q_s64(v379, v380)), v370), v369);
  v540 = v381;
  v382 = v372 + v356;
  if (v513)
  {
    v383 = v513 >= v382;
  }

  else
  {
    v383 = 1;
  }

  v384 = v383;
  if (v356 <= 0x80 && v384)
  {
    v385 = v372 & 0x3F;
    v386 = vaddq_s64(vdupq_n_s64(v385), vzip1q_s64(0, v354));
    v387 = (v113 + 8 * (v372 >> 6));
    v375 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v387, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v386)), vshlq_u64(vdupq_lane_s64(v387->i64[0], 0), vnegq_s64(v386)));
    if (v385 + v356 >= 0x81)
    {
      v375 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v387[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v386)), vshlq_u64(vdupq_laneq_s64(v387[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v386))), v375);
    }
  }

  else
  {
    v116 = 1;
    v382 = v372;
  }

  v388 = vshlq_u64(v375, v365);
  v389 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v375, v388), vzip2q_s64(v375, v388)), v370), v369);
  v541 = v389;
  v390 = v382 + v356;
  if (v513)
  {
    v391 = v513 >= v390;
  }

  else
  {
    v391 = 1;
  }

  v392 = v391;
  v393 = 0uLL;
  if (v356 <= 0x80 && v392)
  {
    v394 = v382 & 0x3F;
    v395 = vaddq_s64(vdupq_n_s64(v394), vzip1q_s64(0, v354));
    v396 = (v113 + 8 * (v382 >> 6));
    v397 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v396, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v395)), vshlq_u64(vdupq_lane_s64(v396->i64[0], 0), vnegq_s64(v395)));
    if (v394 + v356 >= 0x81)
    {
      v397 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v396[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v395)), vshlq_u64(vdupq_laneq_s64(v396[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v395))), v397);
    }
  }

  else
  {
    v116 = 1;
    v390 = v382;
    v397 = 0uLL;
  }

  v398 = vshlq_u64(v397, v365);
  v399 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v397, v398), vzip2q_s64(v397, v398)), v370), v369);
  v542 = v399;
  v400 = v390 + v356;
  if (v513)
  {
    v401 = v513 >= v400;
  }

  else
  {
    v401 = 1;
  }

  v402 = v401;
  if (v356 <= 0x80 && v402)
  {
    v403 = v390 & 0x3F;
    v404 = vaddq_s64(vdupq_n_s64(v403), vzip1q_s64(0, v354));
    v405 = (v113 + 8 * (v390 >> 6));
    v393 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v405, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v404)), vshlq_u64(vdupq_lane_s64(v405->i64[0], 0), vnegq_s64(v404)));
    if (v403 + v356 >= 0x81)
    {
      v393 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v405[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v404)), vshlq_u64(vdupq_laneq_s64(v405[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v404))), v393);
    }
  }

  else
  {
    v116 = 1;
    v400 = v390;
  }

  v406 = vshlq_u64(v393, v365);
  v407 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v393, v406), vzip2q_s64(v393, v406)), v370), v369);
  v543 = v407;
  v408 = v400 + v356;
  if (v513)
  {
    v409 = v513 >= v408;
  }

  else
  {
    v409 = 1;
  }

  v410 = v409;
  v411 = 0uLL;
  if (v356 <= 0x80 && v410)
  {
    v412 = v400 & 0x3F;
    v413 = vaddq_s64(vdupq_n_s64(v412), vzip1q_s64(0, v354));
    v414 = (v113 + 8 * (v400 >> 6));
    v415 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v414, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v413)), vshlq_u64(vdupq_lane_s64(v414->i64[0], 0), vnegq_s64(v413)));
    if (v412 + v356 >= 0x81)
    {
      v415 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v414[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v413)), vshlq_u64(vdupq_laneq_s64(v414[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v413))), v415);
    }
  }

  else
  {
    v116 = 1;
    v408 = v400;
    v415 = 0uLL;
  }

  v416 = vshlq_u64(v415, v365);
  v417 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v415, v416), vzip2q_s64(v415, v416)), v370), v369);
  v544 = v417;
  v418 = v408 + v356;
  if (v513)
  {
    v419 = v513 >= v418;
  }

  else
  {
    v419 = 1;
  }

  v420 = v419;
  if (v356 <= 0x80 && v420)
  {
    v421 = v408 & 0x3F;
    v422 = vaddq_s64(vdupq_n_s64(v421), vzip1q_s64(0, v354));
    v423 = (v113 + 8 * (v408 >> 6));
    v411 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v423, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v422)), vshlq_u64(vdupq_lane_s64(v423->i64[0], 0), vnegq_s64(v422)));
    if (v421 + v356 >= 0x81)
    {
      v411 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v423[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v422)), vshlq_u64(vdupq_laneq_s64(v423[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v422))), v411);
    }
  }

  else
  {
    v116 = 1;
    v418 = v408;
  }

  v424 = vshlq_u64(v411, v365);
  v425 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v411, v424), vzip2q_s64(v411, v424)), v370), v369);
  v545 = v425;
  v426 = v418 + v356;
  if (v513)
  {
    v427 = v513 >= v426;
  }

  else
  {
    v427 = 1;
  }

  v428 = v427;
  if (v356 > 0x80 || !v428)
  {
    goto LABEL_404;
  }

  v429 = vaddq_s64(vdupq_n_s64(v418 & 0x3F), vzip1q_s64(0, v354));
  v430 = (v113 + 8 * (v418 >> 6));
  v431 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v430, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v429)), vshlq_u64(vdupq_lane_s64(v430->i64[0], 0), vnegq_s64(v429)));
  if ((v418 & 0x3F) + v356 < 0x81)
  {
    if ((v116 & 1) == 0)
    {
      v435 = vshlq_u64(v431, v365);
      v434 = vuzp1q_s32(vzip1q_s64(v431, v435), vzip2q_s64(v431, v435));
      goto LABEL_402;
    }

LABEL_404:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v66, v67);
    return 0;
  }

  if (v116)
  {
    goto LABEL_404;
  }

  v432 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v430[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v429)), vshlq_u64(vdupq_laneq_s64(v430[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v429))), v431);
  v433 = vshlq_u64(v432, v365);
  v434 = vuzp1q_s32(vzip1q_s64(v432, v433), vzip2q_s64(v432, v433));
LABEL_402:
  v436 = vshlq_s32(vshlq_s32(v434, v370), v369);
  if (v513 + 8 * result - v426 - 4096 >= 0x11 || v99 == 2)
  {
    goto LABEL_404;
  }

  v437.i64[0] = 0x1000000010;
  v437.i64[1] = 0x1000000010;
  v438 = vandq_s8(v547, v437);
  v439 = vandq_s8(v98, v508);
  v440 = v546;
  v441 = vaddq_s32(v546, v119);
  v442 = vaddq_s32(v546, vsubq_s32(v139, v439));
  v443 = vceqzq_s32(v438);
  v444 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v442, xmmword_29D2F11D0), v443), v442);
  v445 = vaddq_s32(v546, vsubq_s32(v506, v439));
  v446 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v445, xmmword_29D2F11D0), v443), v445);
  v447 = vaddq_s32(v546, vsubq_s32(v156, v439));
  v448 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v447, xmmword_29D2F11D0), v443), v447);
  v449 = vandq_s8(v98, v509);
  v510 = vsubq_s32(v436, v449);
  *v66 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F11D0), v443), v441);
  v66[1] = v444;
  v66[2] = v446;
  v66[3] = v448;
  v450 = (v66 + v67);
  v451 = vaddq_s32(v440, vsubq_s32(v505, v439));
  v452 = vaddq_s32(v440, vsubq_s32(v173, v439));
  v453 = v98;
  v454 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v451, xmmword_29D2F11D0), v443), v451);
  v455 = vaddq_s32(v440, vsubq_s32(v504, v439));
  v456 = vaddq_s32(v440, vsubq_s32(v503, v439));
  v66[4] = v454;
  v66[5] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v452, xmmword_29D2F11D0), v443), v452);
  v66[6] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v455, xmmword_29D2F11D0), v443), v455);
  v66[7] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v456, xmmword_29D2F11D0), v443), v456);
  v457 = vandq_s8(v98, v69);
  v458 = vaddq_s32(v440, vsubq_s32(v288, v457));
  v459 = vaddq_s32(v440, vsubq_s32(v298, v457));
  v460 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v458, xmmword_29D2F11D0), v443), v458);
  v461 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v459, xmmword_29D2F11D0), v443), v459);
  v462 = vaddq_s32(v440, vsubq_s32(v306, v457));
  v463 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v462, xmmword_29D2F11D0), v443), v462);
  v464 = vaddq_s32(v440, vsubq_s32(v316, v457));
  v465 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v464, xmmword_29D2F11D0), v443), v464);
  v466 = vaddq_s32(v440, vsubq_s32(v324, v457));
  v467 = vaddq_s32(v440, vsubq_s32(v334, v457));
  v66[8] = v460;
  v66[9] = v461;
  v66[10] = v463;
  v66[11] = v465;
  v468 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v466, xmmword_29D2F11D0), v443), v466);
  v469 = vaddq_s32(v440, vsubq_s32(v342, v457));
  v470 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v469, xmmword_29D2F11D0), v443), v469);
  v471 = vaddq_s32(v440, vsubq_s32(v352, v457));
  v472 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v471, xmmword_29D2F11D0), v443), v471);
  v473 = vandq_s8(v453, v507);
  v474 = vaddq_s32(v440, vsubq_s32(v502, v473));
  v475 = (v66 + 12);
  *v475 = v468;
  v475[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v467, xmmword_29D2F11D0), v443), v467);
  v475[2] = v470;
  v475[3] = v472;
  v476 = vaddq_s32(v440, vsubq_s32(v501, v473));
  v477 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v474, xmmword_29D2F11D0), v443), v474);
  v478 = vaddq_s32(v440, vsubq_s32(v500, v473));
  v479 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v478, xmmword_29D2F11D0), v443), v478);
  v480 = vaddq_s32(v440, vsubq_s32(v499, v473));
  *v450 = v477;
  v450[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v476, xmmword_29D2F11D0), v443), v476);
  v450[2] = v479;
  v450[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v480, xmmword_29D2F11D0), v443), v480);
  v481 = vaddq_s32(v440, vsubq_s32(v498, v473));
  v482 = vaddq_s32(v440, vsubq_s32(v250, v473));
  v483 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v481, xmmword_29D2F11D0), v443), v481);
  v484 = vaddq_s32(v440, vsubq_s32(v258, v473));
  v485 = vaddq_s32(v440, vsubq_s32(v268, v473));
  v450[4] = v483;
  v450[5] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v482, xmmword_29D2F11D0), v443), v482);
  v450[6] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v484, xmmword_29D2F11D0), v443), v484);
  v450[7] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v485, xmmword_29D2F11D0), v443), v485);
  v486 = vaddq_s32(v440, vsubq_s32(v371, v449));
  v487 = vaddq_s32(v440, vsubq_s32(v381, v449));
  v488 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v486, xmmword_29D2F11D0), v443), v486);
  v489 = vaddq_s32(v440, vsubq_s32(v389, v449));
  v490 = vaddq_s32(v440, vsubq_s32(v399, v449));
  v491 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v490, xmmword_29D2F11D0), v443), v490);
  v492 = vaddq_s32(v440, vsubq_s32(v407, v449));
  v493 = vaddq_s32(v440, vsubq_s32(v417, v449));
  v450[8] = v488;
  v450[9] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v487, xmmword_29D2F11D0), v443), v487);
  v450[10] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v489, xmmword_29D2F11D0), v443), v489);
  v450[11] = v491;
  v494 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v492, xmmword_29D2F11D0), v443), v492);
  v495 = vaddq_s32(v440, vsubq_s32(v425, v449));
  v496 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v495, xmmword_29D2F11D0), v443), v495);
  v497 = vaddq_s32(v440, v510);
  v450[12] = v494;
  v450[13] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v493, xmmword_29D2F11D0), v443), v493);
  v450[14] = v496;
  v450[15] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v497, xmmword_29D2F11D0), v443), v497);
  return result;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, _OWORD *a2, char *a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  if (a4 && a5)
  {
    v6 = result[1];
    v7 = result[2];
    v8 = result[3];
    v9 = result[4];
    v10 = result[5];
    v11 = result[6];
    v12 = result[7];
    v13 = result[8];
    v14 = result[9];
    v15 = result[10];
    v16 = result[11];
    v17 = result[12];
    v18 = result[13];
    v19 = result[14];
    v20 = result[15];
    v21 = result[32];
    v22 = result[33];
    v23 = result[34];
    v24 = result[35];
    v25 = result[36];
    v26 = result[37];
    v27 = result[38];
    v28 = result[39];
    v29 = result[40];
    v30 = result[41];
    v31 = result[42];
    v32 = result[43];
    v33 = result[44];
    v34 = result[45];
    v35 = result[46];
    v36 = result[47];
    *a2 = *result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
    a2[4] = v9;
    a2[5] = v10;
    a2[6] = v11;
    a2[7] = v12;
    a2[8] = v21;
    a2[9] = v22;
    a2[10] = v23;
    a2[11] = v24;
    a2[12] = v25;
    a2[13] = v26;
    a2[14] = v27;
    a2[15] = v28;
    a2[16] = v13;
    a2[17] = v14;
    a2[18] = v15;
    a2[19] = v16;
    a2[20] = v17;
    a2[21] = v18;
    a2[22] = v19;
    a2[23] = v20;
    a2[24] = v29;
    a2[25] = v30;
    a2[26] = v31;
    a2[27] = v32;
    v37 = a2 + 28;
    a2 += 32;
    *v37 = v33;
    v37[1] = v34;
    v37[2] = v35;
    v37[3] = v36;
    v5 = -1;
  }

  v38 = 0;
  *a3 = v5;
  if (a4 && a5 >= 3)
  {
    v39 = result[65];
    v40 = result[66];
    v41 = result[67];
    v42 = result[68];
    v43 = result[69];
    v44 = result[70];
    v45 = result[71];
    v46 = result[72];
    v47 = result[73];
    v48 = result[74];
    v49 = result[75];
    v50 = result[76];
    v51 = result[77];
    v52 = result[78];
    v53 = result[79];
    v54 = result[96];
    v55 = result[97];
    v56 = result[98];
    v57 = result[99];
    v58 = result[100];
    v59 = result[101];
    v60 = result[102];
    v61 = result[103];
    v62 = result[104];
    v63 = result[105];
    v64 = result[106];
    v65 = result[107];
    v66 = result[108];
    v67 = result[109];
    v68 = result[110];
    v69 = result[111];
    *a2 = result[64];
    a2[1] = v39;
    a2[2] = v40;
    a2[3] = v41;
    a2[4] = v42;
    a2[5] = v43;
    a2[6] = v44;
    a2[7] = v45;
    a2[8] = v54;
    a2[9] = v55;
    a2[10] = v56;
    a2[11] = v57;
    a2[12] = v58;
    a2[13] = v59;
    a2[14] = v60;
    a2[15] = v61;
    a2[16] = v46;
    a2[17] = v47;
    a2[18] = v48;
    a2[19] = v49;
    a2[20] = v50;
    a2[21] = v51;
    a2[22] = v52;
    a2[23] = v53;
    a2[24] = v62;
    a2[25] = v63;
    a2[26] = v64;
    a2[27] = v65;
    v70 = a2 + 28;
    a2 += 32;
    *v70 = v66;
    v70[1] = v67;
    v70[2] = v68;
    v70[3] = v69;
    v38 = -1;
  }

  v71 = 0;
  a3[1] = v38;
  if (a4 >= 5 && a5)
  {
    v72 = result[17];
    v73 = result[18];
    v74 = result[19];
    v75 = result[20];
    v76 = result[21];
    v77 = result[22];
    v78 = result[23];
    v79 = result[24];
    v80 = result[25];
    v81 = result[26];
    v82 = result[27];
    v83 = result[28];
    v84 = result[29];
    v85 = result[30];
    v86 = result[31];
    v87 = result[48];
    v88 = result[49];
    v89 = result[50];
    v90 = result[51];
    v91 = result[52];
    v92 = result[53];
    v93 = result[54];
    v94 = result[55];
    v95 = result[56];
    v96 = result[57];
    v97 = result[58];
    v98 = result[59];
    v99 = result[60];
    v100 = result[61];
    v101 = result[62];
    v102 = result[63];
    *a2 = result[16];
    a2[1] = v72;
    a2[2] = v73;
    a2[3] = v74;
    a2[4] = v75;
    a2[5] = v76;
    a2[6] = v77;
    a2[7] = v78;
    a2[8] = v87;
    a2[9] = v88;
    a2[10] = v89;
    a2[11] = v90;
    a2[12] = v91;
    a2[13] = v92;
    a2[14] = v93;
    a2[15] = v94;
    a2[16] = v79;
    a2[17] = v80;
    a2[18] = v81;
    a2[19] = v82;
    a2[20] = v83;
    a2[21] = v84;
    a2[22] = v85;
    a2[23] = v86;
    a2[24] = v95;
    a2[25] = v96;
    a2[26] = v97;
    a2[27] = v98;
    v103 = a2 + 28;
    a2 += 32;
    *v103 = v99;
    v103[1] = v100;
    v103[2] = v101;
    v103[3] = v102;
    v71 = -1;
  }

  v104 = 0;
  a3[2] = v71;
  if (a4 >= 5 && a5 >= 3)
  {
    v105 = result[81];
    v106 = result[82];
    v107 = result[83];
    v108 = result[84];
    v109 = result[85];
    v110 = result[86];
    v111 = result[87];
    v112 = result[88];
    v113 = result[89];
    v114 = result[90];
    v115 = result[91];
    v116 = result[92];
    v117 = result[93];
    v118 = result[94];
    v119 = result[95];
    v120 = result[112];
    v121 = result[113];
    v122 = result[114];
    v123 = result[115];
    v124 = result[116];
    v125 = result[117];
    v126 = result[118];
    v127 = result[119];
    v128 = result[120];
    v129 = result[121];
    v130 = result[122];
    v131 = result[123];
    v132 = result[124];
    v133 = result[125];
    v134 = result[126];
    v135 = result[127];
    *a2 = result[80];
    a2[1] = v105;
    a2[2] = v106;
    a2[3] = v107;
    a2[4] = v108;
    a2[5] = v109;
    a2[6] = v110;
    a2[7] = v111;
    a2[8] = v120;
    a2[9] = v121;
    a2[10] = v122;
    a2[11] = v123;
    a2[12] = v124;
    a2[13] = v125;
    a2[14] = v126;
    a2[15] = v127;
    a2[16] = v112;
    a2[17] = v113;
    a2[18] = v114;
    a2[19] = v115;
    a2[20] = v116;
    a2[21] = v117;
    a2[22] = v118;
    a2[23] = v119;
    a2[24] = v128;
    a2[25] = v129;
    a2[26] = v130;
    a2[27] = v131;
    v104 = -1;
    a2[28] = v132;
    a2[29] = v133;
    a2[30] = v134;
    a2[31] = v135;
  }

  a3[3] = v104;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(int32x4_t *a1, _BYTE *a2, int32x4_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a3[8];
  v11 = a3[9];
  v12 = a3[10];
  v13 = a3[11];
  v14 = a3[12];
  v15 = a3[13];
  v16 = a3[14];
  v17 = a3[15];
  v18 = *(a3 + a4);
  v19 = *(&a3[1] + a4);
  v20 = *(&a3[2] + a4);
  v21 = *(&a3[3] + a4);
  v22 = vsubq_s32(v8, *a3);
  v23 = vsubq_s32(v9, *a3);
  v24 = vsubq_s32(a3[4], *a3);
  v25 = vsubq_s32(a3[5], *a3);
  v26 = vsubq_s32(a3[6], *a3);
  v291 = a3[4];
  v292 = a3[5];
  v293 = a3[6];
  v294 = a3[7];
  v27 = vsubq_s32(v294, *a3);
  v338 = vsubq_s32(v7, *a3);
  v339 = v22;
  v340 = v23;
  v341 = v24;
  v342 = v25;
  v343 = v26;
  v344 = v27;
  v28 = vsubq_s32(v20, v6);
  v29 = vmaxq_s32(v338, v22);
  v30 = vminq_s32(v338, v22);
  v287 = v18;
  v288 = v19;
  v289 = v20;
  v290 = v21;
  v31 = vsubq_s32(v21, v6);
  v345 = vsubq_s32(v18, v6);
  v346 = vsubq_s32(v19, v6);
  v32 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v29, v23), v24), v25), v26), v27), 0);
  v33 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v30, v23), v24), v25), v26), v27), 0);
  v34.i64[0] = 0x2000000020;
  v34.i64[1] = 0x2000000020;
  v35 = vmaxq_s32(vbicq_s8(vsubq_s32(v34, vclsq_s32(v32)), vceqzq_s32(v32)), vbicq_s8(vsubq_s32(v34, vclsq_s32(v33)), vceqzq_s32(v33)));
  v36 = vminq_s32(vminq_s32(v345, v346), v28);
  v347 = v28;
  v37 = *(&a3[4] + a4);
  v38 = *(&a3[5] + a4);
  v39 = *(&a3[6] + a4);
  v40 = *(&a3[7] + a4);
  v348 = v31;
  v349 = vsubq_s32(v37, v6);
  v350 = vsubq_s32(v38, v6);
  v283 = v37;
  v284 = v38;
  v285 = v39;
  v286 = v40;
  v351 = vsubq_s32(v39, v6);
  v352 = vsubq_s32(v40, v6);
  v41 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v345, v346), v28), v31), v349), v350), v351), v352);
  v42 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v36, v31), v349), v350), v351), v352);
  v43.i64[0] = 0x8000000080000000;
  v43.i64[1] = 0x8000000080000000;
  v44 = vmaxq_s32(vmaxq_s32(v32, v43), v41);
  v45.i64[0] = 0x8000000080000000;
  v45.i64[1] = 0x8000000080000000;
  v46 = vminq_s32(vminq_s32(v33, v45), v42);
  v47 = vmaxq_s32(vbicq_s8(vsubq_s32(v34, vclsq_s32(v41)), vceqzq_s32(v41)), vbicq_s8(vsubq_s32(v34, vclsq_s32(v42)), vceqzq_s32(v42)));
  v353 = vsubq_s32(v10, v6);
  v354 = vsubq_s32(v11, v6);
  v48 = vsubq_s32(v12, v6);
  v49 = vminq_s32(vminq_s32(v353, v354), v48);
  v355 = v48;
  v356 = vsubq_s32(v13, v6);
  v357 = vsubq_s32(v14, v6);
  v358 = vsubq_s32(v15, v6);
  v359 = vsubq_s32(v16, v6);
  v360 = vsubq_s32(v17, v6);
  v50 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v353, v354), v48), v356), v357), v358), v359), v360);
  v51 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v49, v356), v357), v358), v359), v360);
  v52 = vmaxq_s32(v44, v50);
  v53 = vminq_s32(v46, v51);
  v54 = *(&a3[8] + a4);
  v55 = *(&a3[9] + a4);
  v56 = *(&a3[10] + a4);
  v57 = *(&a3[11] + a4);
  v58 = vmaxq_s32(vbicq_s8(vsubq_s32(v34, vclsq_s32(v50)), vceqzq_s32(v50)), vbicq_s8(vsubq_s32(v34, vclsq_s32(v51)), vceqzq_s32(v51)));
  v361 = vsubq_s32(v54, v6);
  v362 = vsubq_s32(v55, v6);
  v59 = vsubq_s32(v56, v6);
  v60 = vminq_s32(vminq_s32(v361, v362), v59);
  v279 = v54;
  v280 = v55;
  v281 = v56;
  v282 = v57;
  v363 = v59;
  v61 = *(&a3[12] + a4);
  v62 = *(&a3[13] + a4);
  v63 = *(&a3[14] + a4);
  v64 = *(&a3[15] + a4);
  v364 = vsubq_s32(v57, v6);
  v365 = vsubq_s32(v61, v6);
  v366 = vsubq_s32(v62, v6);
  v367 = vsubq_s32(v63, v6);
  v368 = vsubq_s32(v64, v6);
  v65 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v361, v362), v59), v364), v365), v366), v367), v368);
  v66 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v60, v364), v365), v366), v367), v368);
  v67 = vmaxq_s32(v52, v65);
  v68 = vmaxq_s32(vbicq_s8(vsubq_s32(v34, vclsq_s32(v65)), vceqzq_s32(v65)), vbicq_s8(vsubq_s32(v34, vclsq_s32(v66)), vceqzq_s32(v66)));
  v69 = vmaxq_s32(vmaxq_s32(v35, v47), vmaxq_s32(v58, v68));
  v377 = v67;
  v376 = vminq_s32(v53, v66);
  v70 = vclzq_s32(vsubq_s32(v67, v376));
  v66.i64[0] = 0x1F0000001FLL;
  v66.i64[1] = 0x1F0000001FLL;
  v71 = vsubq_s32(v66, v70);
  v66.i64[0] = -1;
  v66.i64[1] = -1;
  v72 = vsubq_s32(vshlq_s32(v66, v71), v376);
  v73 = vsubq_s32(v34, v70);
  v74 = vcgtq_s32(v69, v73);
  v75 = vminq_s32(v73, v69);
  v378 = vandq_s8(v72, v74);
  v72.i64[0] = 0x800000008;
  v72.i64[1] = 0x800000008;
  v66.i64[0] = 0x300000003;
  v66.i64[1] = 0x300000003;
  v76 = vorrq_s8(vandq_s8(vceqzq_s32(v75), v66), vorrq_s8(vandq_s8(v74, v72), 0));
  v77 = vsubq_s32(v75, v47);
  v78.i64[0] = 0xF0000000FLL;
  v78.i64[1] = 0xF0000000FLL;
  v79 = vmaxq_s32(vminq_s32(v77, v78), 0);
  v80 = vmaxq_s32(vminq_s32(vsubq_s32(v75, v58), v78), 0);
  v372 = vsubq_s32(v75, v79);
  v373 = vsubq_s32(v75, v80);
  v81 = vmaxq_s32(vminq_s32(vsubq_s32(v75, v68), v78), 0);
  v374 = vsubq_s32(v75, v81);
  v82 = vaddq_s32(v81, v80);
  v83 = vmaxq_s32(vminq_s32(vsubq_s32(v75, v35), v78), 0);
  v84.i64[0] = 0x400000004;
  v84.i64[1] = 0x400000004;
  v371 = vsubq_s32(v75, v83);
  v370 = vorrq_s8(vbicq_s8(v84, vceqq_s32(v82, vnegq_s32(vaddq_s32(v83, v79)))), v76);
  v375 = v75;
  v337 = 0u;
  if (vmaxvq_s32(v75))
  {
    v271 = v14;
    v272 = v15;
    v273 = v16;
    v274 = v17;
    v275 = v10;
    v276 = v11;
    v277 = v12;
    v278 = v13;
    v304 = vsubq_s32(v346, vqtbl1q_s8(v346, xmmword_29D2F11D0));
    v305 = vsubq_s32(v347, vqtbl1q_s8(v347, xmmword_29D2F11D0));
    v306 = vsubq_s32(v348, vqtbl1q_s8(v348, xmmword_29D2F11D0));
    v307 = vsubq_s32(v349, vqtbl1q_s8(v349, xmmword_29D2F11D0));
    v308 = vsubq_s32(v350, vqtbl1q_s8(v350, xmmword_29D2F11D0));
    v309 = vsubq_s32(v351, vqtbl1q_s8(v351, xmmword_29D2F11D0));
    v310 = vsubq_s32(v352, vqtbl1q_s8(v352, xmmword_29D2F11D0));
    v312 = vsubq_s32(v354, vqtbl1q_s8(v354, xmmword_29D2F11D0));
    v313 = vsubq_s32(v355, vqtbl1q_s8(v355, xmmword_29D2F11D0));
    v314 = vsubq_s32(v356, vqtbl1q_s8(v356, xmmword_29D2F11D0));
    v295 = vsubq_s32(v337, vqtbl1q_s8(v337, xmmword_29D2F11D0));
    v296 = vsubq_s32(v338, vqtbl1q_s8(v338, xmmword_29D2F11D0));
    v297 = vsubq_s32(v339, vqtbl1q_s8(v339, xmmword_29D2F11D0));
    v298 = vsubq_s32(v340, vqtbl1q_s8(v340, xmmword_29D2F11D0));
    v299 = vsubq_s32(v341, vqtbl1q_s8(v341, xmmword_29D2F11D0));
    v300 = vsubq_s32(v342, vqtbl1q_s8(v342, xmmword_29D2F11D0));
    v302 = vsubq_s32(v344, vqtbl1q_s8(v344, xmmword_29D2F11D0));
    v303 = vsubq_s32(v345, vqtbl1q_s8(v345, xmmword_29D2F11D0));
    v311 = vsubq_s32(v353, vqtbl1q_s8(v353, xmmword_29D2F11D0));
    v301 = vsubq_s32(v343, vqtbl1q_s8(v343, xmmword_29D2F11D0));
    v85 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v295, v296), v297), v298), v299), v300), v301), v302);
    v86 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v295, v296), v297), v298), v299), v300), v301), v302);
    v87 = vmaxq_s32(v85, v43);
    v88 = vminq_s32(v86, v45);
    v89 = vmaxq_s32(vbicq_s8(vsubq_s32(v34, vclsq_s32(v85)), vceqzq_s32(v85)), vbicq_s8(vsubq_s32(v34, vclsq_s32(v86)), vceqzq_s32(v86)));
    v90 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v303, v304), v305), v306), v307), v308), v309), v310);
    v91 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v303, v304), v305), v306), v307), v308), v309), v310);
    v92 = vmaxq_s32(v87, v90);
    v93 = vminq_s32(v88, v91);
    v94 = vmaxq_s32(vbicq_s8(vsubq_s32(v34, vclsq_s32(v90)), vceqzq_s32(v90)), vbicq_s8(vsubq_s32(v34, vclsq_s32(v91)), vceqzq_s32(v91)));
    v315 = vsubq_s32(v357, vqtbl1q_s8(v357, xmmword_29D2F11D0));
    v316 = vsubq_s32(v358, vqtbl1q_s8(v358, xmmword_29D2F11D0));
    v317 = vsubq_s32(v359, vqtbl1q_s8(v359, xmmword_29D2F11D0));
    v318 = vsubq_s32(v360, vqtbl1q_s8(v360, xmmword_29D2F11D0));
    v95 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v311, v312), v313), v314), v315), v316), v317), v318);
    v96 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v311, v312), v313), v314), v315), v316), v317), v318);
    v97 = vmaxq_s32(v92, v95);
    v98 = vminq_s32(v93, v96);
    v319 = vsubq_s32(v361, vqtbl1q_s8(v361, xmmword_29D2F11D0));
    v320 = vsubq_s32(v362, vqtbl1q_s8(v362, xmmword_29D2F11D0));
    v99 = vmaxq_s32(vbicq_s8(vsubq_s32(v34, vclsq_s32(v95)), vceqzq_s32(v95)), vbicq_s8(vsubq_s32(v34, vclsq_s32(v96)), vceqzq_s32(v96)));
    v321 = vsubq_s32(v363, vqtbl1q_s8(v363, xmmword_29D2F11D0));
    v322 = vsubq_s32(v364, vqtbl1q_s8(v364, xmmword_29D2F11D0));
    v323 = vsubq_s32(v365, vqtbl1q_s8(v365, xmmword_29D2F11D0));
    v324 = vsubq_s32(v366, vqtbl1q_s8(v366, xmmword_29D2F11D0));
    v325 = vsubq_s32(v367, vqtbl1q_s8(v367, xmmword_29D2F11D0));
    v326 = vsubq_s32(v368, vqtbl1q_s8(v368, xmmword_29D2F11D0));
    v100 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v319, v320), v321), v322), v323), v324), v325), v326);
    v101 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v319, v320), v321), v322), v323), v324), v325), v326);
    v102 = vmaxq_s32(v97, v100);
    v103 = vminq_s32(v98, v101);
    v104 = vmaxq_s32(vbicq_s8(vsubq_s32(v34, vclsq_s32(v100)), vceqzq_s32(v100)), vbicq_s8(vsubq_s32(v34, vclsq_s32(v101)), vceqzq_s32(v101)));
    v105 = vmaxq_s32(vmaxq_s32(v89, v94), vmaxq_s32(v99, v104));
    v106 = vclzq_s32(vsubq_s32(v102, v103));
    v107 = vsubq_s32(v34, v106);
    v108.i64[0] = 0x1F0000001FLL;
    v108.i64[1] = 0x1F0000001FLL;
    v109 = vsubq_s32(v108, v106);
    v108.i64[0] = -1;
    v108.i64[1] = -1;
    v110 = vshlq_s32(v108, v109);
    v111 = vcgtq_s32(v105, v107);
    v112 = vminq_s32(v107, v105);
    v105.i64[0] = 0x1000000010;
    v105.i64[1] = 0x1000000010;
    v113.i64[0] = 0x1800000018;
    v113.i64[1] = 0x1800000018;
    v335 = v102;
    v336 = vandq_s8(vsubq_s32(v110, v103), v111);
    v110.i64[0] = 0x300000003;
    v110.i64[1] = 0x300000003;
    v114 = vmaxq_s32(vminq_s32(vsubq_s32(v112, v89), v78), 0);
    v115 = vmaxq_s32(vminq_s32(vsubq_s32(v112, v94), v78), 0);
    v116 = vmaxq_s32(vminq_s32(vsubq_s32(v112, v99), v78), 0);
    v117 = vmaxq_s32(vminq_s32(vsubq_s32(v112, v104), v78), 0);
    v329 = vsubq_s32(v112, v114);
    v334 = v103;
    v333 = v112;
    v330 = vsubq_s32(v112, v115);
    v331 = vsubq_s32(v112, v116);
    v332 = vsubq_s32(v112, v117);
    v327 = vsubq_s32(v369, vqtbl1q_s8(v369, xmmword_29D2F11D0));
    v328 = vorrq_s8(vbicq_s8(v84, vceqq_s32(vaddq_s32(v117, v116), vnegq_s32(vaddq_s32(v114, v115)))), vorrq_s8(vandq_s8(vceqzq_s32(v112), v110), vbslq_s8(v111, v113, v105)));
    AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(&v337, &v295);
    v118.i64[1] = v371.i64[1];
    v119 = v375;
    v120 = vandq_s8(v378, vceqq_s32(v375, v371));
    v337 = vaddq_s32(v120, v337);
    v338 = vaddq_s32(v338, v120);
    v339 = vaddq_s32(v339, v120);
    v340 = vaddq_s32(v340, v120);
    v341 = vaddq_s32(v341, v120);
    v342 = vaddq_s32(v342, v120);
    v343 = vaddq_s32(v343, v120);
    v344 = vaddq_s32(v344, v120);
    v121 = vandq_s8(v378, vceqq_s32(v375, v372));
    v345 = vaddq_s32(v345, v121);
    v346 = vaddq_s32(v346, v121);
    v347 = vaddq_s32(v347, v121);
    v348 = vaddq_s32(v348, v121);
    v349 = vaddq_s32(v349, v121);
    v350 = vaddq_s32(v350, v121);
    v351 = vaddq_s32(v351, v121);
    v352 = vaddq_s32(v352, v121);
    v122 = vandq_s8(v378, vceqq_s32(v375, v373));
    v123 = vaddq_s32(v354, v122);
    v124 = vandq_s8(v378, vceqq_s32(v375, v374));
    v125.i64[1] = v368.i64[1];
    *v125.i8 = vqmovn_u32(v370);
    v353 = vaddq_s32(v353, v122);
    v354 = v123;
    v126.i64[0] = 0x8000800080008;
    v126.i64[1] = 0x8000800080008;
    v355 = vaddq_s32(v355, v122);
    v356 = vaddq_s32(v356, v122);
    *v123.i8 = vqmovn_u32(v375);
    v127 = vbicq_s8(v123, vceqzq_s16(vandq_s8(v125, v126)));
    v357 = vaddq_s32(v357, v122);
    v358 = vaddq_s32(v358, v122);
    v128.i64[0] = 0x10001000100010;
    v128.i64[1] = 0x10001000100010;
    v129 = vandq_s8(vshlq_n_s16(v125, 2uLL), v128);
    v128.i64[0] = 0x3000300030003;
    v128.i64[1] = 0x3000300030003;
    v359 = vaddq_s32(v359, v122);
    v360 = vaddq_s32(v360, v122);
    v122.i64[0] = 0x2000200020002;
    v122.i64[1] = 0x2000200020002;
    v361 = vaddq_s32(v361, v124);
    v362 = vaddq_s32(v362, v124);
    v130.i64[0] = 0x20002000200020;
    v130.i64[1] = 0x20002000200020;
    v131 = vaddq_s32(vaddq_s32(v373, v372), v374);
    v363 = vaddq_s32(v363, v124);
    v364 = vaddq_s32(v364, v124);
    *v118.i8 = vqmovn_u32(v371);
    v365 = vaddq_s32(v365, v124);
    v366 = vaddq_s32(v366, v124);
    v132.i64[0] = 0x7000700070007;
    v132.i64[1] = 0x7000700070007;
    *v131.i8 = vqmovn_u32(v131);
    v133 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v127, v129), vandq_s8(vceqq_s16(vandq_s8(v125, v128), v122), v130)), v118, v132), vshlq_n_s16(v131, 3uLL));
    v134 = vpaddq_s16(v133, v133);
    v367 = vaddq_s32(v367, v124);
    v368 = vaddq_s32(v368, v124);
    if ((vpaddq_s16(v134, v134).i16[0] + 175) > 0xFF7)
    {
      *a1 = v6;
      a1[1] = v7;
      a1[2] = v8;
      a1[3] = v9;
      a1[4] = v291;
      a1[5] = v292;
      a1[6] = v293;
      a1[7] = v294;
      a1[8] = v287;
      a1[9] = v288;
      a1[10] = v289;
      a1[11] = v290;
      a1[12] = v283;
      a1[13] = v284;
      a1[14] = v285;
      a1[15] = v286;
      a1[16] = v275;
      a1[17] = v276;
      a1[18] = v277;
      a1[19] = v278;
      a1[20] = v271;
      a1[21] = v272;
      a1[22] = v273;
      a1[23] = v274;
      a1[24] = v279;
      a1[25] = v280;
      a1[26] = v281;
      a1[27] = v282;
      LOBYTE(v138) = -1;
      a1[28] = v61;
      a1[29] = v62;
      a1[30] = v63;
      a1[31] = v64;
      result = 512;
    }

    else
    {
      v135 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v136 = 8 * (a1 & 7);
      if (v136)
      {
        v137 = *v135 & ~(-1 << v136);
      }

      else
      {
        v137 = 0;
      }

      if (v375.i32[0])
      {
        v140 = ((v375.i32[0] << 20) + 32505856) & 0x1F00000;
      }

      else
      {
        v140 = 0;
      }

      v141 = vand_s8(vshl_u32(*&vextq_s8(v370, v370, 8uLL), 0xF0000000ALL), 0xF800000007C00);
      v142 = v141.i32[1];
      v143 = v370.i8[0] & 0x1F | (32 * (v370.i8[4] & 0x1F)) | v141.i32[0];
      *a2 = 0;
      v144 = v369;
      v145 = ((v119.i32[1] << 25) + 1040187392) & 0x3E000000;
      if (!v119.i32[1])
      {
        v145 = 0;
      }

      v146 = vextq_s8(v119, v119, 8uLL).u64[0];
      v147 = vceqz_s32(v146);
      v148.i64[0] = v147.i32[0];
      v148.i64[1] = v147.i32[1];
      v149 = v148;
      v150.i64[0] = -1;
      v150.i64[1] = -1;
      v151 = vand_s8(vadd_s32(v146, -1), 0x1F0000001FLL);
      v148.i64[0] = v151.u32[0];
      v148.i64[1] = v151.u32[1];
      v152 = vbicq_s8(vshlq_u64(v148, xmmword_29D2F11E0), v149);
      v153 = vorrq_s8(vdupq_laneq_s64(v152, 1), v152).u64[0] | v143 | v140 | v145 | v142;
      v154 = (v153 << v136) | v137;
      if (v136 >= 0x18)
      {
        *v135 = v154;
        v154 = v153 >> (-8 * (a1 & 7u));
      }

      v155 = (v136 + 40) & 0x38;
      *(v135 + (((v136 + 40) >> 3) & 8)) = v154 | (v144.i64[0] << v155);
      v156 = v144.i64[0] >> -v155;
      if (((v136 + 40) & 0x38) == 0)
      {
        v156 = 0;
      }

      v157 = (v136 + 104) & 0x38;
      *(v135 + (((v136 + 104) >> 3) & 0x18)) = v156 | (v144.i64[1] << v157);
      if (((v136 + 104) & 0x38) != 0)
      {
        v158 = v144.i64[1] >> -v157;
      }

      else
      {
        v158 = 0;
      }

      v159 = v136 + 168;
      v160.i64[1] = v374.i64[1];
      v161 = vsubq_s32(v375, v371);
      v162 = vsubq_s32(v375, v372);
      v163 = vsubq_s32(v375, v374);
      *v160.i8 = vqmovn_u32(v161);
      *v160.i8 = vqmovn_u16(v160);
      *v161.i8 = vqmovn_u32(v162);
      *v161.i8 = vqmovn_u16(v161);
      *v162.i8 = vqmovn_u32(vsubq_s32(v375, v373));
      *v162.i8 = vqmovn_u16(v162);
      *v163.i8 = vqmovn_u32(v163);
      *v163.i8 = vqmovn_u16(v163);
      v164 = vtrn1q_s8(v160, v161);
      v165 = vtrn2q_s8(v160, v161);
      v166 = vtrn1q_s8(v162, v163);
      v167 = vtrn2q_s8(v162, v163);
      v168 = vzip1q_s16(v164, v166);
      v169 = vtrn2q_s16(v164, v166);
      v170 = vzip1q_s16(v165, v167);
      v167.i64[0] = vzip1q_s32(v169, vtrn2q_s16(v165, v167)).u64[0];
      v169.i64[0] = 0x400000004;
      v169.i64[1] = 0x400000004;
      v171.i64[0] = 0x404040404040404;
      v171.i64[1] = 0x404040404040404;
      v172 = vandq_s8(vtstq_s32(v370, v169), v171);
      v171.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v171.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v173 = vshlq_u8(v150, vorrq_s8(v172, v171));
      v174 = vmovl_u8(vand_s8(*v173.i8, *&vzip1q_s32(v168, v170)));
      v175 = vmovl_u8(vand_s8(*&vextq_s8(v173, v173, 8uLL), *v167.i8));
      v176 = vmovl_u8(*v172.i8);
      v177 = vmovl_high_u8(v172);
      v178 = vpaddq_s16(vshlq_u16(v174, vtrn1q_s16(0, v176)), vshlq_u16(v175, vtrn1q_s16(0, v177)));
      v179 = vpaddq_s16(v176, v177);
      v180 = vmovl_u16(*v179.i8);
      v181 = vmovl_high_u16(v179);
      v182 = vpaddq_s32(vshlq_u32(vmovl_u16(*v178.i8), vtrn1q_s32(0, v180)), vshlq_u32(vmovl_high_u16(v178), vtrn1q_s32(0, v181)));
      v183 = vpaddq_s32(v180, v181);
      v184.i64[0] = v182.u32[0];
      v184.i64[1] = v182.u32[1];
      v185 = v184;
      v184.i64[0] = v182.u32[2];
      v184.i64[1] = v182.u32[3];
      v186 = v184;
      v184.i64[0] = v183.u32[0];
      v184.i64[1] = v183.u32[1];
      v187 = v184;
      v184.i64[0] = v183.u32[2];
      v184.i64[1] = v183.u32[3];
      v188 = vpaddq_s64(vshlq_u64(v185, vzip1q_s64(0, v187)), vshlq_u64(v186, vzip1q_s64(0, v184)));
      v189 = vpaddq_s64(v187, v184);
      v190 = (v136 + 168) & 0x38;
      v191 = (v188.i64[0] << ((v136 - 88) & 0x38)) | v158;
      if ((v189.i64[0] + v190) >= 0x40)
      {
        *(v135 + ((v159 >> 3) & 0x18)) = v191;
        v191 = v188.i64[0] >> -((v136 - 88) & 0x38);
        if (!v190)
        {
          v191 = 0;
        }
      }

      v192 = v189.i64[0] + v159;
      v193 = v191 | (v188.i64[1] << v192);
      if ((v192 & 0x3F) + v189.i64[1] >= 0x40)
      {
        *(v135 + ((v192 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v193;
        v193 = v188.i64[1] >> -(v192 & 0x3F);
        if ((v192 & 0x3F) == 0)
        {
          v193 = 0;
        }
      }

      v194 = v192 + v189.i64[1];
      v195.i64[0] = 0x800000008;
      v195.i64[1] = 0x800000008;
      v196 = vbicq_s8(v375, vceqzq_s32(vandq_s8(v370, v195)));
      v197.i64[0] = 0x1F0000001FLL;
      v197.i64[1] = 0x1F0000001FLL;
      v198.i64[0] = -1;
      v198.i64[1] = -1;
      v199 = vandq_s8(vshlq_u32(v198, vaddq_s32(v196, v197)), v378);
      v200.i64[0] = v199.u32[0];
      v200.i64[1] = v199.u32[1];
      v201 = v200;
      v200.i64[0] = v199.u32[2];
      v200.i64[1] = v199.u32[3];
      v202 = v200;
      v200.i64[0] = v196.u32[0];
      v200.i64[1] = v196.u32[1];
      v203 = v200;
      v200.i64[0] = v196.u32[2];
      v200.i64[1] = v196.u32[3];
      v204 = vpaddq_s64(vshlq_u64(v201, vzip1q_s64(0, v203)), vshlq_u64(v202, vzip1q_s64(0, v200)));
      v205 = vpaddq_s64(v203, v200);
      v206 = (v204.i64[0] << v194) | v193;
      if (v205.i64[0] + (v194 & 0x3F) >= 0x40)
      {
        *(v135 + ((v194 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v206;
        v206 = v204.i64[0] >> -(v194 & 0x3F);
        if ((v194 & 0x3F) == 0)
        {
          v206 = 0;
        }
      }

      v207 = v205.i64[0] + v194;
      v208 = v206 | (v204.i64[1] << v207);
      if ((v207 & 0x3F) + v205.i64[1] >= 0x40)
      {
        *(v135 + ((v207 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v208;
        v208 = v204.i64[1] >> -(v207 & 0x3F);
        if ((v207 & 0x3F) == 0)
        {
          v208 = 0;
        }
      }

      v209 = v207 + v205.i64[1];
      v210.i64[0] = 0x1F0000001FLL;
      v210.i64[1] = 0x1F0000001FLL;
      v211.i64[0] = -1;
      v211.i64[1] = -1;
      v212 = vandq_s8(vshlq_u32(v211, v210), v337);
      v213.i64[0] = v212.u32[0];
      v213.i64[1] = v212.u32[1];
      v214 = v213;
      v213.i64[0] = v212.u32[2];
      v213.i64[1] = v212.u32[3];
      v215 = vpaddq_s64(v214, v213);
      v216 = vpaddq_s64(0, 0);
      v217 = (v215.i64[0] << v209) | v208;
      if (v216.i64[0] + (v209 & 0x3F) >= 0x40)
      {
        *(v135 + ((v209 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v217;
        if ((v209 & 0x3F) != 0)
        {
          v217 = v215.i64[0] >> -(v209 & 0x3F);
        }

        else
        {
          v217 = 0;
        }
      }

      v218 = v216.i64[0] + v209;
      v219 = (v216.i64[0] + v209) & 0x3F;
      v220 = v217 | (v215.i64[1] << v218);
      if ((v219 + v216.i64[1]) >= 0x40)
      {
        *(v135 + ((v218 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v220;
        if (v219)
        {
          v220 = v215.i64[1] >> -v219;
        }

        else
        {
          v220 = 0;
        }
      }

      v221 = v218 + v216.i64[1];
      v222.i64[0] = 0x1F0000001FLL;
      v222.i64[1] = 0x1F0000001FLL;
      v223.i64[0] = -1;
      v223.i64[1] = -1;
      for (i = 16; i != 128; i += 16)
      {
        v225 = vandq_s8(vshlq_u32(v223, vaddq_s32(v371, v222)), *(&v337 + i));
        v226.i64[0] = v225.u32[0];
        v226.i64[1] = v225.u32[1];
        v227 = v226;
        v226.i64[0] = v225.u32[2];
        v226.i64[1] = v225.u32[3];
        v228 = v226;
        v226.i64[0] = v371.u32[0];
        v226.i64[1] = v371.u32[1];
        v229 = v226;
        v226.i64[0] = v371.u32[2];
        v226.i64[1] = v371.u32[3];
        v230 = vpaddq_s64(vshlq_u64(v227, vzip1q_s64(0, v229)), vshlq_u64(v228, vzip1q_s64(0, v226)));
        v231 = vpaddq_s64(v229, v226);
        v232 = (v230.i64[0] << v221) | v220;
        if (v231.i64[0] + (v221 & 0x3F) >= 0x40)
        {
          *(v135 + ((v221 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v232;
          v232 = v230.i64[0] >> -(v221 & 0x3F);
          if ((v221 & 0x3F) == 0)
          {
            v232 = 0;
          }
        }

        v233 = v231.i64[0] + v221;
        v220 = v232 | (v230.i64[1] << v233);
        if ((v233 & 0x3F) + v231.i64[1] >= 0x40)
        {
          *(v135 + ((v233 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v220;
          v220 = v230.i64[1] >> -(v233 & 0x3F);
          if ((v233 & 0x3F) == 0)
          {
            v220 = 0;
          }
        }

        v221 = v233 + v231.i64[1];
      }

      v234 = 0;
      v235.i64[0] = 0x1F0000001FLL;
      v235.i64[1] = 0x1F0000001FLL;
      v236.i64[0] = -1;
      v236.i64[1] = -1;
      do
      {
        v237 = vandq_s8(vshlq_u32(v236, vaddq_s32(v372, v235)), *(&v345 + v234));
        v238.i64[0] = v237.u32[0];
        v238.i64[1] = v237.u32[1];
        v239 = v238;
        v238.i64[0] = v237.u32[2];
        v238.i64[1] = v237.u32[3];
        v240 = v238;
        v238.i64[0] = v372.u32[0];
        v238.i64[1] = v372.u32[1];
        v241 = v238;
        v238.i64[0] = v372.u32[2];
        v238.i64[1] = v372.u32[3];
        v242 = vpaddq_s64(vshlq_u64(v239, vzip1q_s64(0, v241)), vshlq_u64(v240, vzip1q_s64(0, v238)));
        v243 = vpaddq_s64(v241, v238);
        v244 = (v242.i64[0] << v221) | v220;
        if (v243.i64[0] + (v221 & 0x3F) >= 0x40)
        {
          *(v135 + ((v221 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v244;
          v244 = v242.i64[0] >> -(v221 & 0x3F);
          if ((v221 & 0x3F) == 0)
          {
            v244 = 0;
          }
        }

        v245 = v243.i64[0] + v221;
        v220 = v244 | (v242.i64[1] << v245);
        if ((v245 & 0x3F) + v243.i64[1] >= 0x40)
        {
          *(v135 + ((v245 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v220;
          v220 = v242.i64[1] >> -(v245 & 0x3F);
          if ((v245 & 0x3F) == 0)
          {
            v220 = 0;
          }
        }

        v221 = v245 + v243.i64[1];
        v234 += 16;
      }

      while (v234 != 128);
      v246 = 0;
      v247.i64[0] = 0x1F0000001FLL;
      v247.i64[1] = 0x1F0000001FLL;
      v248.i64[0] = -1;
      v248.i64[1] = -1;
      do
      {
        v249 = vandq_s8(vshlq_u32(v248, vaddq_s32(v373, v247)), *(&v353 + v246));
        v250.i64[0] = v249.u32[0];
        v250.i64[1] = v249.u32[1];
        v251 = v250;
        v250.i64[0] = v249.u32[2];
        v250.i64[1] = v249.u32[3];
        v252 = v250;
        v250.i64[0] = v373.u32[0];
        v250.i64[1] = v373.u32[1];
        v253 = v250;
        v250.i64[0] = v373.u32[2];
        v250.i64[1] = v373.u32[3];
        v254 = vpaddq_s64(vshlq_u64(v251, vzip1q_s64(0, v253)), vshlq_u64(v252, vzip1q_s64(0, v250)));
        v255 = vpaddq_s64(v253, v250);
        v256 = (v254.i64[0] << v221) | v220;
        if (v255.i64[0] + (v221 & 0x3F) >= 0x40)
        {
          *(v135 + ((v221 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v256;
          v256 = v254.i64[0] >> -(v221 & 0x3F);
          if ((v221 & 0x3F) == 0)
          {
            v256 = 0;
          }
        }

        v257 = v255.i64[0] + v221;
        v220 = v256 | (v254.i64[1] << v257);
        if ((v257 & 0x3F) + v255.i64[1] >= 0x40)
        {
          *(v135 + ((v257 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v220;
          v220 = v254.i64[1] >> -(v257 & 0x3F);
          if ((v257 & 0x3F) == 0)
          {
            v220 = 0;
          }
        }

        v221 = v257 + v255.i64[1];
        v246 += 16;
      }

      while (v246 != 128);
      v258 = 0;
      v259.i64[0] = 0x1F0000001FLL;
      v259.i64[1] = 0x1F0000001FLL;
      v260.i64[0] = -1;
      v260.i64[1] = -1;
      do
      {
        v261 = vandq_s8(vshlq_u32(v260, vaddq_s32(v374, v259)), *(&v361 + v258));
        v262.i64[0] = v261.u32[0];
        v262.i64[1] = v261.u32[1];
        v263 = v262;
        v262.i64[0] = v261.u32[2];
        v262.i64[1] = v261.u32[3];
        v264 = v262;
        v262.i64[0] = v374.u32[0];
        v262.i64[1] = v374.u32[1];
        v265 = v262;
        v262.i64[0] = v374.u32[2];
        v262.i64[1] = v374.u32[3];
        v266 = vpaddq_s64(vshlq_u64(v263, vzip1q_s64(0, v265)), vshlq_u64(v264, vzip1q_s64(0, v262)));
        v267 = vpaddq_s64(v265, v262);
        v268 = (v266.i64[0] << v221) | v220;
        if (v267.i64[0] + (v221 & 0x3F) >= 0x40)
        {
          *(v135 + ((v221 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v268;
          v268 = v266.i64[0] >> -(v221 & 0x3F);
          if ((v221 & 0x3F) == 0)
          {
            v268 = 0;
          }
        }

        v269 = v267.i64[0] + v221;
        v220 = v268 | (v266.i64[1] << v269);
        if ((v269 & 0x3F) + v267.i64[1] >= 0x40)
        {
          *(v135 + ((v269 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v220;
          v220 = v266.i64[1] >> -(v269 & 0x3F);
          if ((v269 & 0x3F) == 0)
          {
            v220 = 0;
          }
        }

        v221 = v269 + v267.i64[1];
        v258 += 16;
      }

      while (v258 != 128);
      if ((v221 & 0x3F) != 0)
      {
        *(v135 + ((v221 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v220;
      }

      v270 = ((v221 - v136 + 7) >> 3) + 1;
      result = v270 & 0x3FFFFFFFFFFFFFFELL;
      v138 = *a2 | ((v270 >> 1) - 1);
    }
  }

  else
  {
    *a1 = *a3;
    LOBYTE(v138) = 7;
    result = 16;
  }

  *a2 = v138;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, int32x4_t *a2, _BYTE *a3, unsigned int a4, unsigned int a5)
{
  v8 = a2;
  v9 = result;
  if (a4 && a5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(a2, a3, result, 512);
    v8 = (v8 + result);
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a3 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  if (a5 >= 3)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 1, v9 + 64, 512);
    v8 = (v8 + result);
    if (a4 < 5)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  a3[1] = 0;
  if (a4 < 5)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (a5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 2, v9 + 16, 512);
    v8 = (v8 + result);
    goto LABEL_13;
  }

LABEL_12:
  a3[2] = 0;
  if (a4 < 5)
  {
LABEL_17:
    a3[3] = 0;
    return result;
  }

LABEL_13:
  if (a5 < 3)
  {
    goto LABEL_17;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 3, v9 + 80, 512);
}

__n128 AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(__n128 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v22 = *MEMORY[0x29EDCA608];
  v21 = 0uLL;
  v5 = 32;
  do
  {
    v6 = 64 - v3;
    if (64 - v3 >= v5)
    {
      v6 = v5;
    }

    v21.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v4) & ~(-1 << v6)) << v3;
    v4 += v6;
    v7 = v6 + v3;
    v2 += v7 >> 6;
    v3 = v7 & 0x3F;
    v5 -= v6;
  }

  while (v5);
  if ((v3 | (v2 << 6)) + 32 <= 0x80)
  {
    v8 = 32;
    do
    {
      v9 = 64 - v3;
      if (64 - v3 >= v8)
      {
        v9 = v8;
      }

      v10 = v9 + v3;
      v2 += v10 >> 6;
      v3 = v10 & 0x3F;
      v8 -= v9;
    }

    while (v8);
    if ((v3 | (v2 << 6)) + 32 <= 0x80)
    {
      v11 = 0;
      v12 = 32;
      do
      {
        v13 = 64 - v3;
        if (64 - v3 >= v12)
        {
          v13 = v12;
        }

        v21.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v11) & ~(-1 << v13)) << v3;
        v11 += v13;
        v14 = v13 + v3;
        v2 += v14 >> 6;
        v3 = v14 & 0x3F;
        v12 -= v13;
      }

      while (v12);
      if ((v3 | (v2 << 6)) + 32 <= 0x80)
      {
        v15 = 0;
        v16 = 32;
        do
        {
          v17 = 64 - v3;
          if (64 - v3 >= v16)
          {
            v17 = v16;
          }

          v21.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v15) & ~(-1 << v17)) << v3;
          v15 += v17;
          v18 = v17 + v3;
          v2 += v18 >> 6;
          v3 = v18 & 0x3F;
          v16 -= v17;
        }

        while (v16);
      }
    }
  }

  result = v21;
  *a1 = v21;
  a1[1] = result;
  v20 = (a1 + a2);
  *v20 = result;
  v20[1] = result;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(_OWORD *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0xFFu:
      v9 = *(a3 + 16);
      v10 = *(a3 + 32);
      v11 = *(a3 + 48);
      v12 = *(a3 + 64);
      v13 = *(a3 + 80);
      v14 = *(a3 + 96);
      v15 = *(a3 + 112);
      v16 = *(a3 + 128);
      v17 = *(a3 + 144);
      v18 = *(a3 + 160);
      v19 = *(a3 + 176);
      v20 = *(a3 + 192);
      v21 = *(a3 + 208);
      v22 = *(a3 + 224);
      v23 = *(a3 + 240);
      v24 = *(a3 + 256);
      v25 = *(a3 + 272);
      v26 = *(a3 + 288);
      v27 = *(a3 + 304);
      v28 = *(a3 + 320);
      v29 = *(a3 + 336);
      v30 = *(a3 + 352);
      v31 = *(a3 + 368);
      v32 = *(a3 + 384);
      v33 = *(a3 + 400);
      v34 = *(a3 + 416);
      v35 = *(a3 + 432);
      v36 = *(a3 + 448);
      v37 = *(a3 + 464);
      v38 = *(a3 + 480);
      v39 = *(a3 + 496);
      *a1 = *a3;
      a1[1] = v9;
      a1[2] = v10;
      a1[3] = v11;
      a1[4] = v12;
      a1[5] = v13;
      a1[6] = v14;
      a1[7] = v15;
      a1[8] = v16;
      a1[9] = v17;
      a1[10] = v18;
      a1[11] = v19;
      a1[12] = v20;
      a1[13] = v21;
      a1[14] = v22;
      a1[15] = v23;
      v40 = (a1 + a2);
      *v40 = v24;
      v40[1] = v25;
      v40[2] = v26;
      v40[3] = v27;
      v41 = (a1 + a2 + 64);
      *v41 = v28;
      v41[1] = v29;
      v41[2] = v30;
      v41[3] = v31;
      v42 = (a1 + a2 + 128);
      *v42 = v32;
      v42[1] = v33;
      v42[2] = v34;
      v42[3] = v35;
      v43 = (a1 + a2 + 192);
      result = 512;
      *v43 = v36;
      v43[1] = v37;
      v43[2] = v38;
      v43[3] = v39;
      return result;
    case 7u:
      v7 = *a3;
      *a1 = *a3;
      a1[1] = v7;
      a1[2] = v7;
      a1[3] = v7;
      a1[4] = v7;
      a1[5] = v7;
      a1[6] = v7;
      a1[7] = v7;
      a1[8] = v7;
      a1[9] = v7;
      a1[10] = v7;
      a1[11] = v7;
      a1[12] = v7;
      a1[13] = v7;
      a1[14] = v7;
      a1[15] = v7;
      v8 = (a1 + a2);
      *v8 = v7;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v8[4] = v7;
      v8[5] = v7;
      v8[6] = v7;
      v8[7] = v7;
      v8[8] = v7;
      v8[9] = v7;
      v8[10] = v7;
      v8[11] = v7;
      v8[12] = v7;
      v8[13] = v7;
      result = 16;
      v8[14] = v7;
      v8[15] = v7;
      return result;
    case 0u:
      result = 0;
      a1[14] = 0u;
      a1[15] = 0u;
      a1[12] = 0u;
      a1[13] = 0u;
      a1[10] = 0u;
      a1[11] = 0u;
      a1[8] = 0u;
      a1[9] = 0u;
      a1[6] = 0u;
      a1[7] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v6 = (a1 + a2);
      v6[14] = 0u;
      v6[15] = 0u;
      v6[12] = 0u;
      v6[13] = 0u;
      v6[10] = 0u;
      v6[11] = 0u;
      v6[8] = 0u;
      v6[9] = 0u;
      v6[6] = 0u;
      v6[7] = 0u;
      v6[4] = 0u;
      v6[5] = 0u;
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      return result;
  }

  v514 = 0;
  v513 = (8 * (a3 & 7)) | 0x1000;
  v511 = 8 * (a3 & 7);
  v512 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(&v547, v552, &v546, &v511, a4);
  v47.i64[0] = 0x300000003;
  v47.i64[1] = 0x300000003;
  v48 = vbicq_s8(v552[0], vceqq_s32(vandq_s8(v547, v47), v47));
  v552[0] = v48;
  v548 = v48;
  v549 = v48;
  v550 = v48;
  v551 = v48;
  v49.i64[0] = 0x400000004;
  v49.i64[1] = 0x400000004;
  v50.i64[0] = 0x404040404040404;
  v50.i64[1] = 0x404040404040404;
  v51 = vandq_s8(vtstq_s32(v547, v49), v50);
  v52 = v511;
  if (vmaxvq_s8(v51) < 1)
  {
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v508 = v68;
    v509 = v68;
    v507 = v68;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v66 = a1;
    v67 = a2;
  }

  else
  {
    v53 = vmovl_u8(*&vpaddq_s8(v51, v51));
    v54 = vmovl_u16(*&vpaddq_s16(v53, v53));
    v55 = vpaddq_s32(v54, v54).u64[0];
    v56.i64[0] = v55;
    v56.i64[1] = HIDWORD(v55);
    v57 = v56;
    v58 = vaddvq_s64(v56);
    v59 = v58;
    v60 = v511 + v58;
    if (v513)
    {
      v61 = v513 >= v60;
    }

    else
    {
      v61 = 1;
    }

    v62 = v61;
    if (v58 <= 0x80 && (v62 & 1) != 0)
    {
      v46.i64[0] = 63;
      v63 = (v512 + 8 * (v511 >> 6));
      v64 = vaddq_s64(vdupq_lane_s64(vandq_s8(v511, v46).i64[0], 0), vzip1q_s64(0, v57));
      v65 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v63, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(v63->i64[0], 0), vnegq_s64(v64)));
      if ((v511 & 0x3F) + v59 >= 0x81)
      {
        v65 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v63[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v63[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v65);
      }

      v66 = a1;
      v67 = a2;
      v511 = v60;
      v52 = v60;
    }

    else
    {
      v514 = 1;
      v65 = 0uLL;
      v66 = a1;
      v67 = a2;
    }

    v70 = vzip1_s32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
    v71.i64[0] = v70.u32[0];
    v71.i64[1] = v70.u32[1];
    v72 = vshlq_u64(v65, vnegq_s64(v71));
    v73 = vuzp1q_s32(vzip1q_s64(v65, v72), vzip2q_s64(v65, v72));
    v74 = vshlq_u32(v73, vnegq_s32((*&v53 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v75 = vuzp1q_s16(vzip1q_s32(v73, v74), vzip2q_s32(v73, v74));
    v76 = vshlq_u16(v75, vnegq_s16((*&v51 & __PAIR128__(0xF8FFF8FFF8FFF8FFLL, 0xF8FFF8FFF8FFF8FFLL))));
    v77 = vuzp1q_s8(vzip1q_s16(v75, v76), vzip2q_s16(v75, v76));
    v76.i64[0] = 0x101010101010101;
    v76.i64[1] = 0x101010101010101;
    v78 = vshlq_s8(v76, v51);
    v76.i64[0] = -1;
    v76.i64[1] = -1;
    v79 = vqtbl1q_s8(vandq_s8(vaddq_s8(v78, v76), v77), xmmword_29D2F0F70);
    v77.i64[0] = vmovl_s8(*v79.i8).u64[0];
    v76.i64[0] = vmovl_s8(vdup_lane_s32(*v79.i8, 1)).u64[0];
    v80 = vmovl_s8(*&vdupq_laneq_s32(v79, 2)).u64[0];
    v79.i64[0] = vmovl_s8(*&vdupq_laneq_s32(v79, 3)).u64[0];
    v548 = vsubw_s16(v548, *v77.i8);
    v549 = vsubw_s16(v549, *v76.i8);
    v550 = vsubw_s16(v550, v80);
    v551 = vsubw_s16(v551, *v79.i8);
    v69 = vmovl_s16(vceqz_s16(*v76.i8));
    v507 = vmovl_s16(vceqz_s16(v80));
    v508 = vmovl_s16(vceqz_s16(*v77.i8));
    v509 = vmovl_s16(vceqz_s16(*v79.i8));
  }

  v81.i64[0] = 0x800000008;
  v81.i64[1] = 0x800000008;
  v82 = vbicq_s8(v48, vceqzq_s32(vandq_s8(v547, v81)));
  v81.i64[0] = vpaddq_s32(v82, v82).u64[0];
  v83.i64[0] = v81.u32[0];
  v83.i64[1] = v81.u32[1];
  v84 = v83;
  v85 = vaddvq_s64(v83);
  v86 = v85;
  v87 = v52 + v85;
  if (v513)
  {
    v88 = v513 >= v87;
  }

  else
  {
    v88 = 1;
  }

  v89 = v88;
  if (v85 <= 0x80 && (v89 & 1) != 0)
  {
    v90 = vaddq_s64(vdupq_n_s64(v52 & 0x3F), vzip1q_s64(0, v84));
    v91 = (v512 + 8 * (v52 >> 6));
    v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v90)));
    if ((v52 & 0x3F) + v86 >= 0x81)
    {
      v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v92);
    }

    v52 = v87;
  }

  else
  {
    v514 = 1;
    v92 = 0uLL;
  }

  v93 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v94.i64[0] = v93.u32[0];
  v94.i64[1] = v93.u32[1];
  v95 = vshlq_u64(v92, vnegq_s64(v94));
  v96 = vuzp1q_s32(vzip1q_s64(v92, v95), vzip2q_s64(v92, v95));
  v95.i64[0] = 0x1F0000001FLL;
  v95.i64[1] = 0x1F0000001FLL;
  v97.i64[0] = 0x2000000020;
  v97.i64[1] = 0x2000000020;
  v98 = vshlq_s32(vshlq_s32(v96, vsubq_s32(v97, v82)), vaddq_s32(v82, v95));
  v552[3] = v98;
  v99 = v547.i8[0] & 3;
  if (v99 == 2)
  {
    if (v513)
    {
      v100 = v52 + 16;
      v101 = v52 + 32;
      if (v513 >= v52 + 16)
      {
        v102 = v52 + 16;
      }

      else
      {
        v101 = v52 + 16;
        v102 = v52;
      }

      if (v513 >= v101)
      {
        v52 = v101;
      }

      else
      {
        v52 = v102;
      }

      if (v513 < v100 || v513 < v101)
      {
        v514 = 1;
      }
    }

    else
    {
      v52 += 32;
    }
  }

  v103 = vpaddq_s32(0, 0).u64[0];
  v104.i64[0] = v103;
  v104.i64[1] = HIDWORD(v103);
  v105 = v104;
  v106 = vaddvq_s64(v104);
  v107 = v106;
  v108 = v52 + v106;
  if (v513)
  {
    v109 = v513 >= v108;
  }

  else
  {
    v109 = 1;
  }

  v110 = v109;
  if (v106 <= 0x80 && (v110 & 1) != 0)
  {
    v111 = v52 & 0x3F;
    v112 = vaddq_s64(vdupq_n_s64(v111), vzip1q_s64(0, v105));
    v113 = v512;
    v114 = (v512 + 8 * (v52 >> 6));
    v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v114, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v112)), vshlq_u64(vdupq_lane_s64(v114->i64[0], 0), vnegq_s64(v112)));
    if (v111 + v107 >= 0x81)
    {
      v112 = vorrq_s8(vshlq_u64(vdupq_lane_s64(v114[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v112)), vshlq_u64(vdupq_laneq_s64(v114[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v112)));
      v115 = vorrq_s8(v112, v115);
    }

    v511 = v108;
    *v112.i8 = vmovn_s64(v115);
    v116 = v514;
    v52 = v108;
  }

  else
  {
    v112 = 0uLL;
    v116 = 1;
    v113 = v512;
  }

  v117.i64[0] = 0x2000000020;
  v117.i64[1] = 0x2000000020;
  v118.i64[0] = 0x1F0000001FLL;
  v118.i64[1] = 0x1F0000001FLL;
  v119 = vshlq_s32(vshlq_s32(vzip1q_s32(v112, v112), v117), v118);
  v515 = v119;
  v120 = vpaddq_s32(v548, v548).u64[0];
  v121.i64[0] = v120;
  v121.i64[1] = HIDWORD(v120);
  v122 = v121;
  v123 = vaddvq_s64(v121);
  v124 = v123;
  v125 = v52 + v123;
  if (v513)
  {
    v126 = v513 >= v125;
  }

  else
  {
    v126 = 1;
  }

  v127 = v126;
  v128 = 0uLL;
  if (v123 <= 0x80 && v127)
  {
    v129 = v52 & 0x3F;
    v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v122));
    v131 = (v113 + 8 * (v52 >> 6));
    v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
    if (v129 + v124 >= 0x81)
    {
      v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v132);
    }
  }

  else
  {
    v116 = 1;
    v125 = v52;
    v132 = 0uLL;
  }

  v133 = vzip1_s32(*v548.i8, *&vextq_s8(v548, v548, 8uLL));
  v134.i64[0] = v133.u32[0];
  v134.i64[1] = v133.u32[1];
  v135 = vnegq_s64(v134);
  v136 = vshlq_u64(v132, v135);
  v137 = vaddq_s32(v548, v118);
  v138 = vsubq_s32(v117, v548);
  v139 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v132, v136), vzip2q_s64(v132, v136)), v138), v137);
  v516 = v139;
  v140 = v125 + v124;
  if (v513)
  {
    v141 = v513 >= v140;
  }

  else
  {
    v141 = 1;
  }

  v142 = v141;
  if (v124 <= 0x80 && v142)
  {
    v143 = v125 & 0x3F;
    v144 = vaddq_s64(vdupq_n_s64(v143), vzip1q_s64(0, v122));
    v145 = (v113 + 8 * (v125 >> 6));
    v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v145, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v144)), vshlq_u64(vdupq_lane_s64(v145->i64[0], 0), vnegq_s64(v144)));
    if (v143 + v124 >= 0x81)
    {
      v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v145[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v144)), vshlq_u64(vdupq_laneq_s64(v145[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v144))), v128);
    }
  }

  else
  {
    v116 = 1;
    v140 = v125;
  }

  v146 = vshlq_u64(v128, v135);
  v506 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v128, v146), vzip2q_s64(v128, v146)), v138), v137);
  v517 = v506;
  v147 = v140 + v124;
  if (v513)
  {
    v148 = v513 >= v147;
  }

  else
  {
    v148 = 1;
  }

  v149 = v148;
  v150 = 0uLL;
  if (v124 <= 0x80 && v149)
  {
    v151 = v140 & 0x3F;
    v152 = vaddq_s64(vdupq_n_s64(v151), vzip1q_s64(0, v122));
    v153 = (v113 + 8 * (v140 >> 6));
    v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v153, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v152)), vshlq_u64(vdupq_lane_s64(v153->i64[0], 0), vnegq_s64(v152)));
    if (v151 + v124 >= 0x81)
    {
      v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v153[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v152)), vshlq_u64(vdupq_laneq_s64(v153[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v152))), v154);
    }
  }

  else
  {
    v116 = 1;
    v147 = v140;
    v154 = 0uLL;
  }

  v155 = vshlq_u64(v154, v135);
  v156 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v154, v155), vzip2q_s64(v154, v155)), v138), v137);
  v518 = v156;
  v157 = v147 + v124;
  if (v513)
  {
    v158 = v513 >= v157;
  }

  else
  {
    v158 = 1;
  }

  v159 = v158;
  if (v124 <= 0x80 && v159)
  {
    v160 = v147 & 0x3F;
    v161 = vaddq_s64(vdupq_n_s64(v160), vzip1q_s64(0, v122));
    v162 = (v113 + 8 * (v147 >> 6));
    v150 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if (v160 + v124 >= 0x81)
    {
      v150 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v150);
    }
  }

  else
  {
    v116 = 1;
    v157 = v147;
  }

  v163 = vshlq_u64(v150, v135);
  v505 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v150, v163), vzip2q_s64(v150, v163)), v138), v137);
  v519 = v505;
  v164 = v157 + v124;
  if (v513)
  {
    v165 = v513 >= v164;
  }

  else
  {
    v165 = 1;
  }

  v166 = v165;
  v167 = 0uLL;
  if (v124 <= 0x80 && v166)
  {
    v168 = v157 & 0x3F;
    v169 = vaddq_s64(vdupq_n_s64(v168), vzip1q_s64(0, v122));
    v170 = (v113 + 8 * (v157 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
    if (v168 + v124 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v171);
    }
  }

  else
  {
    v116 = 1;
    v164 = v157;
    v171 = 0uLL;
  }

  v172 = vshlq_u64(v171, v135);
  v173 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v171, v172), vzip2q_s64(v171, v172)), v138), v137);
  v520 = v173;
  v174 = v164 + v124;
  if (v513)
  {
    v175 = v513 >= v174;
  }

  else
  {
    v175 = 1;
  }

  v176 = v175;
  if (v124 <= 0x80 && v176)
  {
    v177 = v164 & 0x3F;
    v178 = vaddq_s64(vdupq_n_s64(v177), vzip1q_s64(0, v122));
    v179 = (v113 + 8 * (v164 >> 6));
    v167 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v179, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v178)), vshlq_u64(vdupq_lane_s64(v179->i64[0], 0), vnegq_s64(v178)));
    if (v177 + v124 >= 0x81)
    {
      v167 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v179[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v178)), vshlq_u64(vdupq_laneq_s64(v179[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v178))), v167);
    }
  }

  else
  {
    v116 = 1;
    v174 = v164;
  }

  v180 = vshlq_u64(v167, v135);
  v504 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v167, v180), vzip2q_s64(v167, v180)), v138), v137);
  v521 = v504;
  v181 = v174 + v124;
  if (v513)
  {
    v182 = v513 >= v181;
  }

  else
  {
    v182 = 1;
  }

  v183 = v182;
  v184 = 0uLL;
  if (v124 <= 0x80 && v183)
  {
    v185 = v174 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v122));
    v187 = (v113 + 8 * (v174 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v124 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  else
  {
    v116 = 1;
    v181 = v174;
    v188 = 0uLL;
  }

  v189 = vshlq_u64(v188, v135);
  v503 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v188, v189), vzip2q_s64(v188, v189)), v138), v137);
  v522 = v503;
  v190 = vpaddq_s32(v549, v549).u64[0];
  v191.i64[0] = v190;
  v191.i64[1] = HIDWORD(v190);
  v192 = v191;
  v193 = vaddvq_s64(v191);
  v194 = v193;
  v195 = v181 + v193;
  if (v513)
  {
    v196 = v513 >= v195;
  }

  else
  {
    v196 = 1;
  }

  v197 = v196;
  if (v193 <= 0x80 && v197)
  {
    v198 = v181 & 0x3F;
    v199 = vaddq_s64(vdupq_n_s64(v198), vzip1q_s64(0, v192));
    v200 = (v113 + 8 * (v181 >> 6));
    v184 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
    if (v198 + v194 >= 0x81)
    {
      v184 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v184);
    }
  }

  else
  {
    v116 = 1;
    v195 = v181;
  }

  v201 = vzip1_s32(*v549.i8, *&vextq_s8(v549, v549, 8uLL));
  v202.i64[0] = v201.u32[0];
  v202.i64[1] = v201.u32[1];
  v203 = vnegq_s64(v202);
  v204 = vshlq_u64(v184, v203);
  v205 = vuzp1q_s32(vzip1q_s64(v184, v204), vzip2q_s64(v184, v204));
  v204.i64[0] = 0x1F0000001FLL;
  v204.i64[1] = 0x1F0000001FLL;
  v206 = vaddq_s32(v549, v204);
  v207.i64[0] = 0x2000000020;
  v207.i64[1] = 0x2000000020;
  v208 = vsubq_s32(v207, v549);
  v502 = vshlq_s32(vshlq_s32(v205, v208), v206);
  v523 = v502;
  v209 = v195 + v194;
  if (v513)
  {
    v210 = v513 >= v209;
  }

  else
  {
    v210 = 1;
  }

  v211 = v210;
  v212 = 0uLL;
  if (v194 <= 0x80 && v211)
  {
    v213 = v195 & 0x3F;
    v214 = vaddq_s64(vdupq_n_s64(v213), vzip1q_s64(0, v192));
    v215 = (v113 + 8 * (v195 >> 6));
    v216 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v215, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v214)), vshlq_u64(vdupq_lane_s64(v215->i64[0], 0), vnegq_s64(v214)));
    if (v213 + v194 >= 0x81)
    {
      v216 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v215[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v214)), vshlq_u64(vdupq_laneq_s64(v215[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v214))), v216);
    }
  }

  else
  {
    v116 = 1;
    v209 = v195;
    v216 = 0uLL;
  }

  v217 = vshlq_u64(v216, v203);
  v501 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v216, v217), vzip2q_s64(v216, v217)), v208), v206);
  v524 = v501;
  v218 = v209 + v194;
  if (v513)
  {
    v219 = v513 >= v218;
  }

  else
  {
    v219 = 1;
  }

  v220 = v219;
  if (v194 <= 0x80 && v220)
  {
    v221 = v209 & 0x3F;
    v222 = vaddq_s64(vdupq_n_s64(v221), vzip1q_s64(0, v192));
    v223 = (v113 + 8 * (v209 >> 6));
    v212 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v223, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v222)), vshlq_u64(vdupq_lane_s64(v223->i64[0], 0), vnegq_s64(v222)));
    if (v221 + v194 >= 0x81)
    {
      v212 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v223[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v222)), vshlq_u64(vdupq_laneq_s64(v223[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v222))), v212);
    }
  }

  else
  {
    v116 = 1;
    v218 = v209;
  }

  v224 = vshlq_u64(v212, v203);
  v500 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v212, v224), vzip2q_s64(v212, v224)), v208), v206);
  v525 = v500;
  v225 = v218 + v194;
  if (v513)
  {
    v226 = v513 >= v225;
  }

  else
  {
    v226 = 1;
  }

  v227 = v226;
  v228 = 0uLL;
  if (v194 <= 0x80 && v227)
  {
    v229 = v218 & 0x3F;
    v230 = vaddq_s64(vdupq_n_s64(v229), vzip1q_s64(0, v192));
    v231 = (v113 + 8 * (v218 >> 6));
    v232 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v231, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v230)), vshlq_u64(vdupq_lane_s64(v231->i64[0], 0), vnegq_s64(v230)));
    if (v229 + v194 >= 0x81)
    {
      v232 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v231[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v230)), vshlq_u64(vdupq_laneq_s64(v231[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v230))), v232);
    }
  }

  else
  {
    v116 = 1;
    v225 = v218;
    v232 = 0uLL;
  }

  v233 = vshlq_u64(v232, v203);
  v499 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v232, v233), vzip2q_s64(v232, v233)), v208), v206);
  v526 = v499;
  v234 = v225 + v194;
  if (v513)
  {
    v235 = v513 >= v234;
  }

  else
  {
    v235 = 1;
  }

  v236 = v235;
  if (v194 <= 0x80 && v236)
  {
    v237 = v225 & 0x3F;
    v238 = vaddq_s64(vdupq_n_s64(v237), vzip1q_s64(0, v192));
    v239 = (v113 + 8 * (v225 >> 6));
    v228 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v239, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v239->i64[0], 0), vnegq_s64(v238)));
    if (v237 + v194 >= 0x81)
    {
      v228 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v239[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v239[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v228);
    }
  }

  else
  {
    v116 = 1;
    v234 = v225;
  }

  v240 = vshlq_u64(v228, v203);
  v498 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v228, v240), vzip2q_s64(v228, v240)), v208), v206);
  v527 = v498;
  v241 = v234 + v194;
  if (v513)
  {
    v242 = v513 >= v241;
  }

  else
  {
    v242 = 1;
  }

  v243 = v242;
  v244 = 0uLL;
  if (v194 <= 0x80 && v243)
  {
    v245 = v234 & 0x3F;
    v246 = vaddq_s64(vdupq_n_s64(v245), vzip1q_s64(0, v192));
    v247 = (v113 + 8 * (v234 >> 6));
    v248 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v247, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v246)), vshlq_u64(vdupq_lane_s64(v247->i64[0], 0), vnegq_s64(v246)));
    if (v245 + v194 >= 0x81)
    {
      v248 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v247[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v246)), vshlq_u64(vdupq_laneq_s64(v247[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v246))), v248);
    }
  }

  else
  {
    v116 = 1;
    v241 = v234;
    v248 = 0uLL;
  }

  v249 = vshlq_u64(v248, v203);
  v250 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v248, v249), vzip2q_s64(v248, v249)), v208), v206);
  v528 = v250;
  v251 = v241 + v194;
  if (v513)
  {
    v252 = v513 >= v251;
  }

  else
  {
    v252 = 1;
  }

  v253 = v252;
  if (v194 <= 0x80 && v253)
  {
    v254 = v241 & 0x3F;
    v255 = vaddq_s64(vdupq_n_s64(v254), vzip1q_s64(0, v192));
    v256 = (v113 + 8 * (v241 >> 6));
    v244 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v256, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v255)), vshlq_u64(vdupq_lane_s64(v256->i64[0], 0), vnegq_s64(v255)));
    if (v254 + v194 >= 0x81)
    {
      v244 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v256[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v255)), vshlq_u64(vdupq_laneq_s64(v256[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v255))), v244);
    }
  }

  else
  {
    v116 = 1;
    v251 = v241;
  }

  v257 = vshlq_u64(v244, v203);
  v258 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v244, v257), vzip2q_s64(v244, v257)), v208), v206);
  v529 = v258;
  v259 = v251 + v194;
  if (v513)
  {
    v260 = v513 >= v259;
  }

  else
  {
    v260 = 1;
  }

  v261 = v260;
  v262 = 0uLL;
  if (v194 <= 0x80 && v261)
  {
    v263 = v251 & 0x3F;
    v264 = vaddq_s64(vdupq_n_s64(v263), vzip1q_s64(0, v192));
    v265 = (v113 + 8 * (v251 >> 6));
    v266 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v265, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v264)), vshlq_u64(vdupq_lane_s64(v265->i64[0], 0), vnegq_s64(v264)));
    if (v263 + v194 >= 0x81)
    {
      v266 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v265[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v264)), vshlq_u64(vdupq_laneq_s64(v265[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v264))), v266);
    }
  }

  else
  {
    v116 = 1;
    v259 = v251;
    v266 = 0uLL;
  }

  v267 = vshlq_u64(v266, v203);
  v268 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v266, v267), vzip2q_s64(v266, v267)), v208), v206);
  v530 = v268;
  v269 = vpaddq_s32(v550, v550).u64[0];
  v270.i64[0] = v269;
  v270.i64[1] = HIDWORD(v269);
  v271 = v270;
  v272 = vaddvq_s64(v270);
  v273 = v272;
  v274 = v259 + v272;
  if (v513)
  {
    v275 = v513 >= v274;
  }

  else
  {
    v275 = 1;
  }

  v276 = v275;
  if (v272 <= 0x80 && v276)
  {
    v277 = v259 & 0x3F;
    v278 = vaddq_s64(vdupq_n_s64(v277), vzip1q_s64(0, v271));
    v279 = (v113 + 8 * (v259 >> 6));
    v262 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v279, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v278)), vshlq_u64(vdupq_lane_s64(v279->i64[0], 0), vnegq_s64(v278)));
    if (v277 + v273 >= 0x81)
    {
      v262 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v279[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v278)), vshlq_u64(vdupq_laneq_s64(v279[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v278))), v262);
    }
  }

  else
  {
    v116 = 1;
    v274 = v259;
  }

  v280 = vzip1_s32(*v550.i8, *&vextq_s8(v550, v550, 8uLL));
  v281.i64[0] = v280.u32[0];
  v281.i64[1] = v280.u32[1];
  v282 = vnegq_s64(v281);
  v283 = vshlq_u64(v262, v282);
  v284 = vuzp1q_s32(vzip1q_s64(v262, v283), vzip2q_s64(v262, v283));
  v283.i64[0] = 0x1F0000001FLL;
  v283.i64[1] = 0x1F0000001FLL;
  v285 = vaddq_s32(v550, v283);
  v286.i64[0] = 0x2000000020;
  v286.i64[1] = 0x2000000020;
  v287 = vsubq_s32(v286, v550);
  v288 = vshlq_s32(vshlq_s32(v284, v287), v285);
  v531 = v288;
  v289 = v274 + v273;
  if (v513)
  {
    v290 = v513 >= v289;
  }

  else
  {
    v290 = 1;
  }

  v291 = v290;
  v292 = 0uLL;
  if (v273 <= 0x80 && v291)
  {
    v293 = v274 & 0x3F;
    v294 = vaddq_s64(vdupq_n_s64(v293), vzip1q_s64(0, v271));
    v295 = (v113 + 8 * (v274 >> 6));
    v296 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v295, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v294)), vshlq_u64(vdupq_lane_s64(v295->i64[0], 0), vnegq_s64(v294)));
    if (v293 + v273 >= 0x81)
    {
      v296 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v295[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v294)), vshlq_u64(vdupq_laneq_s64(v295[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v294))), v296);
    }
  }

  else
  {
    v116 = 1;
    v289 = v274;
    v296 = 0uLL;
  }

  v297 = vshlq_u64(v296, v282);
  v298 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v296, v297), vzip2q_s64(v296, v297)), v287), v285);
  v532 = v298;
  v299 = v289 + v273;
  if (v513)
  {
    v300 = v513 >= v299;
  }

  else
  {
    v300 = 1;
  }

  v301 = v300;
  if (v273 <= 0x80 && v301)
  {
    v302 = v289 & 0x3F;
    v303 = vaddq_s64(vdupq_n_s64(v302), vzip1q_s64(0, v271));
    v304 = (v113 + 8 * (v289 >> 6));
    v292 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v304, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v303)), vshlq_u64(vdupq_lane_s64(v304->i64[0], 0), vnegq_s64(v303)));
    if (v302 + v273 >= 0x81)
    {
      v292 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v304[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v303)), vshlq_u64(vdupq_laneq_s64(v304[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v303))), v292);
    }
  }

  else
  {
    v116 = 1;
    v299 = v289;
  }

  v305 = vshlq_u64(v292, v282);
  v306 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v292, v305), vzip2q_s64(v292, v305)), v287), v285);
  v533 = v306;
  v307 = v299 + v273;
  if (v513)
  {
    v308 = v513 >= v307;
  }

  else
  {
    v308 = 1;
  }

  v309 = v308;
  v310 = 0uLL;
  if (v273 <= 0x80 && v309)
  {
    v311 = v299 & 0x3F;
    v312 = vaddq_s64(vdupq_n_s64(v311), vzip1q_s64(0, v271));
    v313 = (v113 + 8 * (v299 >> 6));
    v314 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v313, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v312)), vshlq_u64(vdupq_lane_s64(v313->i64[0], 0), vnegq_s64(v312)));
    if (v311 + v273 >= 0x81)
    {
      v314 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v313[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v312)), vshlq_u64(vdupq_laneq_s64(v313[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v312))), v314);
    }
  }

  else
  {
    v116 = 1;
    v307 = v299;
    v314 = 0uLL;
  }

  v315 = vshlq_u64(v314, v282);
  v316 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v314, v315), vzip2q_s64(v314, v315)), v287), v285);
  v534 = v316;
  v317 = v307 + v273;
  if (v513)
  {
    v318 = v513 >= v317;
  }

  else
  {
    v318 = 1;
  }

  v319 = v318;
  if (v273 <= 0x80 && v319)
  {
    v320 = v307 & 0x3F;
    v321 = vaddq_s64(vdupq_n_s64(v320), vzip1q_s64(0, v271));
    v322 = (v113 + 8 * (v307 >> 6));
    v310 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v322, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v321)), vshlq_u64(vdupq_lane_s64(v322->i64[0], 0), vnegq_s64(v321)));
    if (v320 + v273 >= 0x81)
    {
      v310 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v322[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v321)), vshlq_u64(vdupq_laneq_s64(v322[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v321))), v310);
    }
  }

  else
  {
    v116 = 1;
    v317 = v307;
  }

  v323 = vshlq_u64(v310, v282);
  v324 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v310, v323), vzip2q_s64(v310, v323)), v287), v285);
  v535 = v324;
  v325 = v317 + v273;
  if (v513)
  {
    v326 = v513 >= v325;
  }

  else
  {
    v326 = 1;
  }

  v327 = v326;
  v328 = 0uLL;
  if (v273 <= 0x80 && v327)
  {
    v329 = v317 & 0x3F;
    v330 = vaddq_s64(vdupq_n_s64(v329), vzip1q_s64(0, v271));
    v331 = (v113 + 8 * (v317 >> 6));
    v332 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v331, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v330)), vshlq_u64(vdupq_lane_s64(v331->i64[0], 0), vnegq_s64(v330)));
    if (v329 + v273 >= 0x81)
    {
      v332 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v331[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v330)), vshlq_u64(vdupq_laneq_s64(v331[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v330))), v332);
    }
  }

  else
  {
    v116 = 1;
    v325 = v317;
    v332 = 0uLL;
  }

  v333 = vshlq_u64(v332, v282);
  v334 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v332, v333), vzip2q_s64(v332, v333)), v287), v285);
  v536 = v334;
  v335 = v325 + v273;
  if (v513)
  {
    v336 = v513 >= v335;
  }

  else
  {
    v336 = 1;
  }

  v337 = v336;
  if (v273 <= 0x80 && v337)
  {
    v338 = v325 & 0x3F;
    v339 = vaddq_s64(vdupq_n_s64(v338), vzip1q_s64(0, v271));
    v340 = (v113 + 8 * (v325 >> 6));
    v328 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v340, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v339)), vshlq_u64(vdupq_lane_s64(v340->i64[0], 0), vnegq_s64(v339)));
    if (v338 + v273 >= 0x81)
    {
      v328 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v340[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v339)), vshlq_u64(vdupq_laneq_s64(v340[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v339))), v328);
    }
  }

  else
  {
    v116 = 1;
    v335 = v325;
  }

  v341 = vshlq_u64(v328, v282);
  v342 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v328, v341), vzip2q_s64(v328, v341)), v287), v285);
  v537 = v342;
  v343 = v335 + v273;
  if (v513)
  {
    v344 = v513 >= v343;
  }

  else
  {
    v344 = 1;
  }

  v345 = v344;
  v346 = 0uLL;
  if (v273 <= 0x80 && v345)
  {
    v347 = v335 & 0x3F;
    v348 = vaddq_s64(vdupq_n_s64(v347), vzip1q_s64(0, v271));
    v349 = (v113 + 8 * (v335 >> 6));
    v350 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v349, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v348)), vshlq_u64(vdupq_lane_s64(v349->i64[0], 0), vnegq_s64(v348)));
    if (v347 + v273 >= 0x81)
    {
      v350 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v349[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v348)), vshlq_u64(vdupq_laneq_s64(v349[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v348))), v350);
    }
  }

  else
  {
    v116 = 1;
    v343 = v335;
    v350 = 0uLL;
  }

  v351 = vshlq_u64(v350, v282);
  v352 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v350, v351), vzip2q_s64(v350, v351)), v287), v285);
  v538 = v352;
  v351.i64[0] = vpaddq_s32(v551, v551).u64[0];
  v353.i64[0] = v351.u32[0];
  v353.i64[1] = v351.u32[1];
  v354 = v353;
  v355 = vaddvq_s64(v353);
  v356 = v355;
  v357 = v343 + v355;
  if (v513)
  {
    v358 = v513 >= v357;
  }

  else
  {
    v358 = 1;
  }

  v359 = v358;
  if (v355 <= 0x80 && v359)
  {
    v360 = v343 & 0x3F;
    v361 = vaddq_s64(vdupq_n_s64(v360), vzip1q_s64(0, v354));
    v362 = (v113 + 8 * (v343 >> 6));
    v346 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v362, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v361)), vshlq_u64(vdupq_lane_s64(v362->i64[0], 0), vnegq_s64(v361)));
    if (v360 + v356 >= 0x81)
    {
      v346 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v362[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v361)), vshlq_u64(vdupq_laneq_s64(v362[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v361))), v346);
    }
  }

  else
  {
    v116 = 1;
    v357 = v343;
  }

  v363 = vzip1_s32(*v551.i8, *&vextq_s8(v551, v551, 8uLL));
  v364.i64[0] = v363.u32[0];
  v364.i64[1] = v363.u32[1];
  v365 = vnegq_s64(v364);
  v366 = vshlq_u64(v346, v365);
  v367 = vuzp1q_s32(vzip1q_s64(v346, v366), vzip2q_s64(v346, v366));
  v368.i64[0] = 0x1F0000001FLL;
  v368.i64[1] = 0x1F0000001FLL;
  v369 = vaddq_s32(v551, v368);
  v368.i64[0] = 0x2000000020;
  v368.i64[1] = 0x2000000020;
  v370 = vsubq_s32(v368, v551);
  v371 = vshlq_s32(vshlq_s32(v367, v370), v369);
  v539 = v371;
  v372 = v357 + v356;
  if (v513)
  {
    v373 = v513 >= v372;
  }

  else
  {
    v373 = 1;
  }

  v374 = v373;
  v375 = 0uLL;
  if (v356 <= 0x80 && v374)
  {
    v376 = v357 & 0x3F;
    v377 = vaddq_s64(vdupq_n_s64(v376), vzip1q_s64(0, v354));
    v378 = (v113 + 8 * (v357 >> 6));
    v379 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v378, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v377)), vshlq_u64(vdupq_lane_s64(v378->i64[0], 0), vnegq_s64(v377)));
    if (v376 + v356 >= 0x81)
    {
      v379 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v378[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v377)), vshlq_u64(vdupq_laneq_s64(v378[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v377))), v379);
    }
  }

  else
  {
    v116 = 1;
    v372 = v357;
    v379 = 0uLL;
  }

  v380 = vshlq_u64(v379, v365);
  v381 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v379, v380), vzip2q_s64(v379, v380)), v370), v369);
  v540 = v381;
  v382 = v372 + v356;
  if (v513)
  {
    v383 = v513 >= v382;
  }

  else
  {
    v383 = 1;
  }

  v384 = v383;
  if (v356 <= 0x80 && v384)
  {
    v385 = v372 & 0x3F;
    v386 = vaddq_s64(vdupq_n_s64(v385), vzip1q_s64(0, v354));
    v387 = (v113 + 8 * (v372 >> 6));
    v375 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v387, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v386)), vshlq_u64(vdupq_lane_s64(v387->i64[0], 0), vnegq_s64(v386)));
    if (v385 + v356 >= 0x81)
    {
      v375 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v387[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v386)), vshlq_u64(vdupq_laneq_s64(v387[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v386))), v375);
    }
  }

  else
  {
    v116 = 1;
    v382 = v372;
  }

  v388 = vshlq_u64(v375, v365);
  v389 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v375, v388), vzip2q_s64(v375, v388)), v370), v369);
  v541 = v389;
  v390 = v382 + v356;
  if (v513)
  {
    v391 = v513 >= v390;
  }

  else
  {
    v391 = 1;
  }

  v392 = v391;
  v393 = 0uLL;
  if (v356 <= 0x80 && v392)
  {
    v394 = v382 & 0x3F;
    v395 = vaddq_s64(vdupq_n_s64(v394), vzip1q_s64(0, v354));
    v396 = (v113 + 8 * (v382 >> 6));
    v397 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v396, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v395)), vshlq_u64(vdupq_lane_s64(v396->i64[0], 0), vnegq_s64(v395)));
    if (v394 + v356 >= 0x81)
    {
      v397 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v396[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v395)), vshlq_u64(vdupq_laneq_s64(v396[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v395))), v397);
    }
  }

  else
  {
    v116 = 1;
    v390 = v382;
    v397 = 0uLL;
  }

  v398 = vshlq_u64(v397, v365);
  v399 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v397, v398), vzip2q_s64(v397, v398)), v370), v369);
  v542 = v399;
  v400 = v390 + v356;
  if (v513)
  {
    v401 = v513 >= v400;
  }

  else
  {
    v401 = 1;
  }

  v402 = v401;
  if (v356 <= 0x80 && v402)
  {
    v403 = v390 & 0x3F;
    v404 = vaddq_s64(vdupq_n_s64(v403), vzip1q_s64(0, v354));
    v405 = (v113 + 8 * (v390 >> 6));
    v393 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v405, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v404)), vshlq_u64(vdupq_lane_s64(v405->i64[0], 0), vnegq_s64(v404)));
    if (v403 + v356 >= 0x81)
    {
      v393 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v405[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v404)), vshlq_u64(vdupq_laneq_s64(v405[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v404))), v393);
    }
  }

  else
  {
    v116 = 1;
    v400 = v390;
  }

  v406 = vshlq_u64(v393, v365);
  v407 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v393, v406), vzip2q_s64(v393, v406)), v370), v369);
  v543 = v407;
  v408 = v400 + v356;
  if (v513)
  {
    v409 = v513 >= v408;
  }

  else
  {
    v409 = 1;
  }

  v410 = v409;
  v411 = 0uLL;
  if (v356 <= 0x80 && v410)
  {
    v412 = v400 & 0x3F;
    v413 = vaddq_s64(vdupq_n_s64(v412), vzip1q_s64(0, v354));
    v414 = (v113 + 8 * (v400 >> 6));
    v415 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v414, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v413)), vshlq_u64(vdupq_lane_s64(v414->i64[0], 0), vnegq_s64(v413)));
    if (v412 + v356 >= 0x81)
    {
      v415 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v414[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v413)), vshlq_u64(vdupq_laneq_s64(v414[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v413))), v415);
    }
  }

  else
  {
    v116 = 1;
    v408 = v400;
    v415 = 0uLL;
  }

  v416 = vshlq_u64(v415, v365);
  v417 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v415, v416), vzip2q_s64(v415, v416)), v370), v369);
  v544 = v417;
  v418 = v408 + v356;
  if (v513)
  {
    v419 = v513 >= v418;
  }

  else
  {
    v419 = 1;
  }

  v420 = v419;
  if (v356 <= 0x80 && v420)
  {
    v421 = v408 & 0x3F;
    v422 = vaddq_s64(vdupq_n_s64(v421), vzip1q_s64(0, v354));
    v423 = (v113 + 8 * (v408 >> 6));
    v411 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v423, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v422)), vshlq_u64(vdupq_lane_s64(v423->i64[0], 0), vnegq_s64(v422)));
    if (v421 + v356 >= 0x81)
    {
      v411 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v423[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v422)), vshlq_u64(vdupq_laneq_s64(v423[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v422))), v411);
    }
  }

  else
  {
    v116 = 1;
    v418 = v408;
  }

  v424 = vshlq_u64(v411, v365);
  v425 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v411, v424), vzip2q_s64(v411, v424)), v370), v369);
  v545 = v425;
  v426 = v418 + v356;
  if (v513)
  {
    v427 = v513 >= v426;
  }

  else
  {
    v427 = 1;
  }

  v428 = v427;
  if (v356 > 0x80 || !v428)
  {
    goto LABEL_404;
  }

  v429 = vaddq_s64(vdupq_n_s64(v418 & 0x3F), vzip1q_s64(0, v354));
  v430 = (v113 + 8 * (v418 >> 6));
  v431 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v430, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v429)), vshlq_u64(vdupq_lane_s64(v430->i64[0], 0), vnegq_s64(v429)));
  if ((v418 & 0x3F) + v356 < 0x81)
  {
    if ((v116 & 1) == 0)
    {
      v435 = vshlq_u64(v431, v365);
      v434 = vuzp1q_s32(vzip1q_s64(v431, v435), vzip2q_s64(v431, v435));
      goto LABEL_402;
    }

LABEL_404:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v66, v67);
    return 0;
  }

  if (v116)
  {
    goto LABEL_404;
  }

  v432 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v430[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v429)), vshlq_u64(vdupq_laneq_s64(v430[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v429))), v431);
  v433 = vshlq_u64(v432, v365);
  v434 = vuzp1q_s32(vzip1q_s64(v432, v433), vzip2q_s64(v432, v433));
LABEL_402:
  v436 = vshlq_s32(vshlq_s32(v434, v370), v369);
  if (v513 + 8 * result - v426 - 4096 >= 0x11 || v99 == 2)
  {
    goto LABEL_404;
  }

  v437.i64[0] = 0x1000000010;
  v437.i64[1] = 0x1000000010;
  v438 = vandq_s8(v547, v437);
  v439 = vandq_s8(v98, v508);
  v440 = v546;
  v441 = vaddq_s32(v546, v119);
  v442 = vaddq_s32(v546, vsubq_s32(v139, v439));
  v443 = vceqzq_s32(v438);
  v444 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v442, xmmword_29D2F11D0), v443), v442);
  v445 = vaddq_s32(v546, vsubq_s32(v506, v439));
  v446 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v445, xmmword_29D2F11D0), v443), v445);
  v447 = vaddq_s32(v546, vsubq_s32(v156, v439));
  v448 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v447, xmmword_29D2F11D0), v443), v447);
  v449 = vandq_s8(v98, v509);
  v510 = vsubq_s32(v436, v449);
  *v66 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F11D0), v443), v441);
  v66[1] = v444;
  v66[2] = v446;
  v66[3] = v448;
  v450 = (v66 + v67);
  v451 = vaddq_s32(v440, vsubq_s32(v505, v439));
  v452 = vaddq_s32(v440, vsubq_s32(v173, v439));
  v453 = v98;
  v454 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v451, xmmword_29D2F11D0), v443), v451);
  v455 = vaddq_s32(v440, vsubq_s32(v504, v439));
  v456 = vaddq_s32(v440, vsubq_s32(v503, v439));
  v66[4] = v454;
  v66[5] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v452, xmmword_29D2F11D0), v443), v452);
  v66[6] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v455, xmmword_29D2F11D0), v443), v455);
  v66[7] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v456, xmmword_29D2F11D0), v443), v456);
  v457 = vandq_s8(v98, v69);
  v458 = vaddq_s32(v440, vsubq_s32(v502, v457));
  v459 = vaddq_s32(v440, vsubq_s32(v501, v457));
  v460 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v458, xmmword_29D2F11D0), v443), v458);
  v461 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v459, xmmword_29D2F11D0), v443), v459);
  v462 = vaddq_s32(v440, vsubq_s32(v500, v457));
  v463 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v462, xmmword_29D2F11D0), v443), v462);
  v464 = vaddq_s32(v440, vsubq_s32(v499, v457));
  v465 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v464, xmmword_29D2F11D0), v443), v464);
  v466 = vaddq_s32(v440, vsubq_s32(v498, v457));
  v467 = vaddq_s32(v440, vsubq_s32(v250, v457));
  v66[8] = v460;
  v66[9] = v461;
  v66[10] = v463;
  v66[11] = v465;
  v468 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v466, xmmword_29D2F11D0), v443), v466);
  v469 = vaddq_s32(v440, vsubq_s32(v258, v457));
  v470 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v469, xmmword_29D2F11D0), v443), v469);
  v471 = vaddq_s32(v440, vsubq_s32(v268, v457));
  v472 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v471, xmmword_29D2F11D0), v443), v471);
  v473 = vandq_s8(v453, v507);
  v474 = vaddq_s32(v440, vsubq_s32(v288, v473));
  v475 = (v66 + 12);
  *v475 = v468;
  v475[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v467, xmmword_29D2F11D0), v443), v467);
  v475[2] = v470;
  v475[3] = v472;
  v476 = vaddq_s32(v440, vsubq_s32(v298, v473));
  v477 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v474, xmmword_29D2F11D0), v443), v474);
  v478 = vaddq_s32(v440, vsubq_s32(v306, v473));
  v479 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v478, xmmword_29D2F11D0), v443), v478);
  v480 = vaddq_s32(v440, vsubq_s32(v316, v473));
  *v450 = v477;
  v450[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v476, xmmword_29D2F11D0), v443), v476);
  v450[2] = v479;
  v450[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v480, xmmword_29D2F11D0), v443), v480);
  v481 = vaddq_s32(v440, vsubq_s32(v324, v473));
  v482 = vaddq_s32(v440, vsubq_s32(v334, v473));
  v483 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v481, xmmword_29D2F11D0), v443), v481);
  v484 = vaddq_s32(v440, vsubq_s32(v342, v473));
  v485 = vaddq_s32(v440, vsubq_s32(v352, v473));
  v450[4] = v483;
  v450[5] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v482, xmmword_29D2F11D0), v443), v482);
  v450[6] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v484, xmmword_29D2F11D0), v443), v484);
  v450[7] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v485, xmmword_29D2F11D0), v443), v485);
  v486 = vaddq_s32(v440, vsubq_s32(v371, v449));
  v487 = vaddq_s32(v440, vsubq_s32(v381, v449));
  v488 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v486, xmmword_29D2F11D0), v443), v486);
  v489 = vaddq_s32(v440, vsubq_s32(v389, v449));
  v490 = vaddq_s32(v440, vsubq_s32(v399, v449));
  v491 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v490, xmmword_29D2F11D0), v443), v490);
  v492 = vaddq_s32(v440, vsubq_s32(v407, v449));
  v493 = vaddq_s32(v440, vsubq_s32(v417, v449));
  v450[8] = v488;
  v450[9] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v487, xmmword_29D2F11D0), v443), v487);
  v450[10] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v489, xmmword_29D2F11D0), v443), v489);
  v450[11] = v491;
  v494 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v492, xmmword_29D2F11D0), v443), v492);
  v495 = vaddq_s32(v440, vsubq_s32(v425, v449));
  v496 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v495, xmmword_29D2F11D0), v443), v495);
  v497 = vaddq_s32(v440, v510);
  v450[12] = v494;
  v450[13] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v493, xmmword_29D2F11D0), v443), v493);
  v450[14] = v496;
  v450[15] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v497, xmmword_29D2F11D0), v443), v497);
  return result;
}