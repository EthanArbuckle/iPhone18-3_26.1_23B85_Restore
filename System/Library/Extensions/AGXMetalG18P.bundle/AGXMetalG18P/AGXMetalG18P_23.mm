uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v508 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v7 = a4;
    if (a4 < 0xF0)
    {
      if (a4 == 127)
      {
        v44 = *(a3 + 16);
        v45 = *(a3 + 32);
        v46 = *(a3 + 48);
        v47 = *(a3 + 64);
        v48 = *(a3 + 80);
        v49 = *(a3 + 96);
        v50 = *(a3 + 112);
        *a1 = *a3;
        *(a1 + 16) = v44;
        v51 = (a1 + a2);
        *(a1 + 32) = v47;
        *(a1 + 48) = v48;
        *v51 = v45;
        v51[1] = v46;
        v52 = (a1 + a2 + 32);
        *v52 = v49;
        v52[1] = v50;
        return 128;
      }

      else if (a4 == 3)
      {
        v12 = vld1q_dup_f32(a3);
        *a1 = v12;
        *(a1 + 16) = v12;
        *(a1 + 32) = v12;
        *(a1 + 48) = v12;
        v13 = (a1 + a2);
        *v13 = v12;
        v13[1] = v12;
        v13[2] = v12;
        v13[3] = v12;
        return 4;
      }

      else
      {
        v484 = 0;
        v483 = (8 * (a3 & 7)) | 0x200;
        v481 = 8 * (a3 & 7);
        v482 = a3 & 0xFFFFFFFFFFFFFFF8;
        result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v502, v507, &v501, &v481, a4);
        v54.i64[0] = 0x3000300030003;
        v54.i64[1] = 0x3000300030003;
        v55 = v502;
        v56 = vandq_s8(v502, v54);
        v57 = vbicq_s8(v507[0], vceqq_s16(v56, v54));
        v507[0] = v57;
        v503 = v57;
        v504 = v57;
        v505 = v57;
        v506 = v57;
        v58.i64[0] = 0x202020202020202;
        v58.i64[1] = 0x202020202020202;
        v59 = vandq_s8(vmovl_s16(vtst_s16(*v502.i8, 0x4000400040004)), v58);
        v60 = v481;
        if (vmaxvq_s8(v59) < 1)
        {
          v74.i64[0] = -1;
          v74.i64[1] = -1;
          v75.i64[0] = -1;
          v75.i64[1] = -1;
          v76.i64[0] = -1;
          v76.i64[1] = -1;
          v77.i64[0] = -1;
          v77.i64[1] = -1;
        }

        else
        {
          v61 = vmovl_u8(*&vpaddq_s8(v59, v59));
          v62 = vmovl_u16(*&vpaddq_s16(v61, v61));
          v63 = vpaddq_s32(v62, v62).u64[0];
          v64.i64[0] = v63;
          v64.i64[1] = HIDWORD(v63);
          v65 = v64;
          v66 = vaddvq_s64(v64);
          v67 = v66;
          v68 = v481 + v66;
          if (v483)
          {
            _CF = v483 >= v68;
          }

          else
          {
            _CF = 1;
          }

          v70 = _CF;
          if (v66 <= 0x80 && (v70 & 1) != 0)
          {
            v53.i64[0] = 63;
            v71 = (v482 + 8 * (v481 >> 6));
            v72 = vaddq_s64(vdupq_lane_s64(vandq_s8(v481, v53).i64[0], 0), vzip1q_s64(0, v65));
            v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v71, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v71->i64[0], 0), vnegq_s64(v72)));
            if ((v481 & 0x3F) + v67 >= 0x81)
            {
              v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v71[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v71[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v73);
            }

            v60 = v68;
          }

          else
          {
            v484 = 1;
            v73 = 0uLL;
          }

          v78 = vzip1_s32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
          v79.i64[0] = v78.u32[0];
          v79.i64[1] = v78.u32[1];
          v80 = vshlq_u64(v73, vnegq_s64(v79));
          v81 = vuzp1q_s32(vzip1q_s64(v73, v80), vzip2q_s64(v73, v80));
          v82 = vshlq_u32(v81, vnegq_s32((*&v61 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
          v83 = vuzp1q_s16(vzip1q_s32(v81, v82), vzip2q_s32(v81, v82));
          v84 = vshlq_u16(v83, vnegq_s16((*&v59 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
          v85 = vuzp1q_s8(vzip1q_s16(v83, v84), vzip2q_s16(v83, v84));
          v84.i64[0] = 0x101010101010101;
          v84.i64[1] = 0x101010101010101;
          v86 = vshlq_s8(v84, v59);
          v84.i64[0] = -1;
          v84.i64[1] = -1;
          v87 = vqtbl1q_s8(vandq_s8(vaddq_s8(v86, v84), v85), xmmword_29D2F0F70);
          *v85.i8 = vdup_lane_s32(*v87.i8, 0);
          *v84.i8 = vdup_lane_s32(*v87.i8, 1);
          v88 = vdupq_laneq_s32(v87, 2).u64[0];
          v87.i64[0] = vdupq_laneq_s32(v87, 3).u64[0];
          v503 = vsubw_s8(v503, *v85.i8);
          v504 = vsubw_s8(v504, *v84.i8);
          v505 = vsubw_s8(v505, v88);
          v506 = vsubw_s8(v506, *v87.i8);
          v77 = vmovl_s8(vceqz_s8(*v85.i8));
          v76 = vmovl_s8(vceqz_s8(*v84.i8));
          v75 = vmovl_s8(vceqz_s8(v88));
          v74 = vmovl_s8(vceqz_s8(*v87.i8));
        }

        v89.i64[0] = 0x8000800080008;
        v89.i64[1] = 0x8000800080008;
        v90 = 0uLL;
        v91 = vandq_s8(vextq_s8(vtstq_s16(v502, v89), 0, 8uLL), v57);
        v92 = vmovl_u16(*&vpaddq_s16(v91, v91));
        v93 = vpaddq_s32(v92, v92).u64[0];
        v94.i64[0] = v93;
        v94.i64[1] = HIDWORD(v93);
        v95 = v94;
        v96 = vaddvq_s64(v94);
        if (v483)
        {
          v97 = v483 >= v60 + v96;
        }

        else
        {
          v97 = 1;
        }

        v98 = v97;
        if (v96 <= 0x80 && (v98 & 1) != 0)
        {
          v99 = vaddq_s64(vdupq_n_s64(v60 & 0x3F), vzip1q_s64(0, v95));
          v100 = (v482 + 8 * (v60 >> 6));
          v90 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v100, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v99)), vshlq_u64(vdupq_lane_s64(v100->i64[0], 0), vnegq_s64(v99)));
          if ((v60 & 0x3F) + v96 >= 0x81)
          {
            v90 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v100[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v99)), vshlq_u64(vdupq_laneq_s64(v100[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v99))), v90);
          }

          v60 += v96;
        }

        else
        {
          v484 = 1;
        }

        v101 = vzip1_s32(*v92.i8, *&vextq_s8(v92, v92, 8uLL));
        v102.i64[0] = v101.u32[0];
        v102.i64[1] = v101.u32[1];
        v103 = vshlq_u64(v90, vnegq_s64(v102));
        v104 = vuzp1q_s32(vzip1q_s64(v90, v103), vzip2q_s64(v90, v103));
        v105.i64[0] = 0xFFFF0000FFFFLL;
        v105.i64[1] = 0xFFFF0000FFFFLL;
        v106 = vshlq_u32(v104, vnegq_s32(vandq_s8(v91, v105)));
        v107 = vuzp1q_s16(vzip1q_s32(v104, v106), vzip2q_s32(v104, v106));
        v106.i64[0] = 0xF000F000F000FLL;
        v106.i64[1] = 0xF000F000F000FLL;
        v108.i64[0] = 0x10001000100010;
        v108.i64[1] = 0x10001000100010;
        v109 = vshlq_s16(vshlq_s16(v107, vsubq_s16(v108, v91)), vaddq_s16(v91, v106));
        v507[3] = v109;
        v110 = v502.i8[0] & 3;
        if (v110 == 2)
        {
          if (v483)
          {
            v111 = v60 + 8;
            v112 = v60 + 16;
            if (v483 >= v60 + 8)
            {
              v60 += 8;
            }

            else
            {
              v112 = v60 + 8;
            }

            if (v483 >= v112)
            {
              v60 = v112;
            }

            if (v483 < v111 || v483 < v112)
            {
              v484 = 1;
            }
          }

          else
          {
            v60 += 16;
          }
        }

        v113 = 0uLL;
        v114 = vextq_s8(0, v503, 8uLL);
        v115 = vmovl_u16(*&vpaddq_s16(v114, v114));
        v116 = vpaddq_s32(v115, v115).u64[0];
        v117.i64[0] = v116;
        v117.i64[1] = HIDWORD(v116);
        v118 = v117;
        v119 = vaddvq_s64(v117);
        v120 = v60 + v119;
        if (v483)
        {
          v121 = v483 >= v120;
        }

        else
        {
          v121 = 1;
        }

        v122 = v121;
        if (v119 <= 0x80 && (v122 & 1) != 0)
        {
          v123 = v60 & 0x3F;
          v124 = vaddq_s64(vdupq_n_s64(v123), vzip1q_s64(0, v118));
          v125 = v482;
          v126 = (v482 + 8 * (v60 >> 6));
          v113 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v126, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v126->i64[0], 0), vnegq_s64(v124)));
          if (v123 + v119 >= 0x81)
          {
            v113 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v126[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v126[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v113);
          }

          v127 = v484;
          v60 = v120;
        }

        else
        {
          v127 = 1;
          v125 = v482;
        }

        v128 = vzip1_s32(*v115.i8, *&vextq_s8(v115, v115, 8uLL));
        v129.i64[0] = v128.u32[0];
        v129.i64[1] = v128.u32[1];
        v130 = vshlq_u64(v113, vnegq_s64(v129));
        v131 = vuzp1q_s32(vzip1q_s64(v113, v130), vzip2q_s64(v113, v130));
        v132.i64[0] = 0xFFFF0000FFFFLL;
        v132.i64[1] = 0xFFFF0000FFFFLL;
        v133 = vshlq_u32(v131, vnegq_s32(vandq_s8(v114, v132)));
        v134.i64[0] = 0xF000F000F000FLL;
        v134.i64[1] = 0xF000F000F000FLL;
        v135.i64[0] = 0x10001000100010;
        v135.i64[1] = 0x10001000100010;
        v136 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v131, v133), vzip2q_s32(v131, v133)), vsubq_s16(v135, v114)), vaddq_s16(v114, v134));
        v485 = v136;
        v137 = vmovl_u16(*&vpaddq_s16(v503, v503));
        v131.i64[0] = vpaddq_s32(v137, v137).u64[0];
        v129.i64[0] = v131.u32[0];
        v129.i64[1] = v131.u32[1];
        v138 = v129;
        v139 = vaddvq_s64(v129);
        v140 = v60 + v139;
        if (v483)
        {
          v141 = v483 >= v140;
        }

        else
        {
          v141 = 1;
        }

        v142 = v141;
        v143 = 0uLL;
        if (v139 <= 0x80 && v142)
        {
          v144 = v60 & 0x3F;
          v145 = vaddq_s64(vdupq_n_s64(v144), vzip1q_s64(0, v138));
          v146 = (v125 + 8 * (v60 >> 6));
          v147 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v145)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v145)));
          if (v144 + v139 >= 0x81)
          {
            v147 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v145)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v145))), v147);
          }
        }

        else
        {
          v127 = 1;
          v140 = v60;
          v147 = 0uLL;
        }

        v148 = vzip1_s32(*v137.i8, *&vextq_s8(v137, v137, 8uLL));
        v149.i64[0] = v148.u32[0];
        v149.i64[1] = v148.u32[1];
        v150 = vnegq_s64(v149);
        v151 = vshlq_u64(v147, v150);
        v152 = vuzp1q_s32(vzip1q_s64(v147, v151), vzip2q_s64(v147, v151));
        v153 = vnegq_s32(vandq_s8(v503, v132));
        v154 = vshlq_u32(v152, v153);
        v155 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
        v156 = vaddq_s16(v503, v134);
        v157 = vsubq_s16(v135, v503);
        v158 = vshlq_s16(vshlq_s16(v155, v157), v156);
        v486 = v158;
        v159 = v140 + v139;
        if (v483)
        {
          v160 = v483 >= v159;
        }

        else
        {
          v160 = 1;
        }

        v161 = v160;
        if (v139 <= 0x80 && v161)
        {
          v162 = v140 & 0x3F;
          v163 = vaddq_s64(vdupq_n_s64(v162), vzip1q_s64(0, v138));
          v164 = (v125 + 8 * (v140 >> 6));
          v143 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v164, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v163)), vshlq_u64(vdupq_lane_s64(v164->i64[0], 0), vnegq_s64(v163)));
          if (v162 + v139 >= 0x81)
          {
            v143 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v164[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v163)), vshlq_u64(vdupq_laneq_s64(v164[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v163))), v143);
          }
        }

        else
        {
          v127 = 1;
          v159 = v140;
        }

        v165 = vshlq_u64(v143, v150);
        v166 = vuzp1q_s32(vzip1q_s64(v143, v165), vzip2q_s64(v143, v165));
        v167 = vshlq_u32(v166, v153);
        v168 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v166, v167), vzip2q_s32(v166, v167)), v157), v156);
        v487 = v168;
        v169 = v159 + v139;
        if (v483)
        {
          v170 = v483 >= v169;
        }

        else
        {
          v170 = 1;
        }

        v171 = v170;
        v172 = 0uLL;
        if (v139 <= 0x80 && v171)
        {
          v173 = v159 & 0x3F;
          v174 = vaddq_s64(vdupq_n_s64(v173), vzip1q_s64(0, v138));
          v175 = (v125 + 8 * (v159 >> 6));
          v176 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v175, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v174)), vshlq_u64(vdupq_lane_s64(v175->i64[0], 0), vnegq_s64(v174)));
          if (v173 + v139 >= 0x81)
          {
            v176 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v175[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v174)), vshlq_u64(vdupq_laneq_s64(v175[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v174))), v176);
          }
        }

        else
        {
          v127 = 1;
          v169 = v159;
          v176 = 0uLL;
        }

        v177 = vshlq_u64(v176, v150);
        v178 = vuzp1q_s32(vzip1q_s64(v176, v177), vzip2q_s64(v176, v177));
        v179 = vshlq_u32(v178, v153);
        v180 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v178, v179), vzip2q_s32(v178, v179)), v157), v156);
        v488 = v180;
        v181 = vmovl_u16(*&vpaddq_s16(v504, v504));
        v182 = vpaddq_s32(v181, v181).u64[0];
        v183.i64[0] = v182;
        v183.i64[1] = HIDWORD(v182);
        v184 = v183;
        v185 = vaddvq_s64(v183);
        v186 = v185;
        v187 = v169 + v185;
        if (v483)
        {
          v188 = v483 >= v187;
        }

        else
        {
          v188 = 1;
        }

        v189 = v188;
        if (v185 <= 0x80 && v189)
        {
          v190 = v169 & 0x3F;
          v191 = vaddq_s64(vdupq_n_s64(v190), vzip1q_s64(0, v184));
          v192 = (v125 + 8 * (v169 >> 6));
          v172 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v192, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v191)), vshlq_u64(vdupq_lane_s64(v192->i64[0], 0), vnegq_s64(v191)));
          if (v190 + v186 >= 0x81)
          {
            v172 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v192[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v191)), vshlq_u64(vdupq_laneq_s64(v192[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v191))), v172);
          }
        }

        else
        {
          v127 = 1;
          v187 = v169;
        }

        v193 = vzip1_s32(*v181.i8, *&vextq_s8(v181, v181, 8uLL));
        v194.i64[0] = v193.u32[0];
        v194.i64[1] = v193.u32[1];
        v195 = vnegq_s64(v194);
        v196 = vshlq_u64(v172, v195);
        v197 = vuzp1q_s32(vzip1q_s64(v172, v196), vzip2q_s64(v172, v196));
        v198.i64[0] = 0xFFFF0000FFFFLL;
        v198.i64[1] = 0xFFFF0000FFFFLL;
        v199 = vnegq_s32(vandq_s8(v504, v198));
        v200 = vshlq_u32(v197, v199);
        v201 = vuzp1q_s16(vzip1q_s32(v197, v200), vzip2q_s32(v197, v200));
        v200.i64[0] = 0xF000F000F000FLL;
        v200.i64[1] = 0xF000F000F000FLL;
        v202 = vaddq_s16(v504, v200);
        v200.i64[0] = 0x10001000100010;
        v200.i64[1] = 0x10001000100010;
        v203 = vsubq_s16(v200, v504);
        v204 = vshlq_s16(vshlq_s16(v201, v203), v202);
        v489 = v204;
        v205 = v187 + v186;
        if (v483)
        {
          v206 = v483 >= v205;
        }

        else
        {
          v206 = 1;
        }

        v207 = v206;
        v208 = 0uLL;
        if (v186 <= 0x80 && v207)
        {
          v209 = v187 & 0x3F;
          v210 = vaddq_s64(vdupq_n_s64(v209), vzip1q_s64(0, v184));
          v211 = (v125 + 8 * (v187 >> 6));
          v212 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v211, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v210)), vshlq_u64(vdupq_lane_s64(v211->i64[0], 0), vnegq_s64(v210)));
          if (v209 + v186 >= 0x81)
          {
            v212 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v211[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v210)), vshlq_u64(vdupq_laneq_s64(v211[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v210))), v212);
          }
        }

        else
        {
          v127 = 1;
          v205 = v187;
          v212 = 0uLL;
        }

        v213 = vshlq_u64(v212, v195);
        v214 = vuzp1q_s32(vzip1q_s64(v212, v213), vzip2q_s64(v212, v213));
        v215 = vshlq_u32(v214, v199);
        v216 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v214, v215), vzip2q_s32(v214, v215)), v203), v202);
        v490 = v216;
        v217 = v205 + v186;
        if (v483)
        {
          v218 = v483 >= v217;
        }

        else
        {
          v218 = 1;
        }

        v219 = v218;
        if (v186 <= 0x80 && v219)
        {
          v220 = v205 & 0x3F;
          v221 = vaddq_s64(vdupq_n_s64(v220), vzip1q_s64(0, v184));
          v222 = (v125 + 8 * (v205 >> 6));
          v208 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v222, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v221)), vshlq_u64(vdupq_lane_s64(v222->i64[0], 0), vnegq_s64(v221)));
          if (v220 + v186 >= 0x81)
          {
            v208 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v222[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v221)), vshlq_u64(vdupq_laneq_s64(v222[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v221))), v208);
          }
        }

        else
        {
          v127 = 1;
          v217 = v205;
        }

        v223 = vshlq_u64(v208, v195);
        v224 = vuzp1q_s32(vzip1q_s64(v208, v223), vzip2q_s64(v208, v223));
        v225 = vshlq_u32(v224, v199);
        v226 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v224, v225), vzip2q_s32(v224, v225)), v203), v202);
        v491 = v226;
        v227 = v217 + v186;
        if (v483)
        {
          v228 = v483 >= v227;
        }

        else
        {
          v228 = 1;
        }

        v229 = v228;
        v230 = 0uLL;
        if (v186 <= 0x80 && v229)
        {
          v231 = v217 & 0x3F;
          v232 = vaddq_s64(vdupq_n_s64(v231), vzip1q_s64(0, v184));
          v233 = (v125 + 8 * (v217 >> 6));
          v234 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v233, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v232)), vshlq_u64(vdupq_lane_s64(v233->i64[0], 0), vnegq_s64(v232)));
          if (v231 + v186 >= 0x81)
          {
            v234 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v233[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v232)), vshlq_u64(vdupq_laneq_s64(v233[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v232))), v234);
          }
        }

        else
        {
          v127 = 1;
          v227 = v217;
          v234 = 0uLL;
        }

        v235 = vshlq_u64(v234, v195);
        v236 = vuzp1q_s32(vzip1q_s64(v234, v235), vzip2q_s64(v234, v235));
        v237 = vshlq_u32(v236, v199);
        v238 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v236, v237), vzip2q_s32(v236, v237)), v203), v202);
        v492 = v238;
        v239 = vmovl_u16(*&vpaddq_s16(v505, v505));
        v240 = vpaddq_s32(v239, v239).u64[0];
        v241.i64[0] = v240;
        v241.i64[1] = HIDWORD(v240);
        v242 = v241;
        v243 = vaddvq_s64(v241);
        v244 = v243;
        v245 = v227 + v243;
        if (v483)
        {
          v246 = v483 >= v245;
        }

        else
        {
          v246 = 1;
        }

        v247 = v246;
        if (v243 <= 0x80 && v247)
        {
          v248 = v227 & 0x3F;
          v249 = vaddq_s64(vdupq_n_s64(v248), vzip1q_s64(0, v242));
          v250 = (v125 + 8 * (v227 >> 6));
          v230 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v250, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v249)), vshlq_u64(vdupq_lane_s64(v250->i64[0], 0), vnegq_s64(v249)));
          if (v248 + v244 >= 0x81)
          {
            v230 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v250[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v249)), vshlq_u64(vdupq_laneq_s64(v250[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v249))), v230);
          }
        }

        else
        {
          v127 = 1;
          v245 = v227;
        }

        v251 = vzip1_s32(*v239.i8, *&vextq_s8(v239, v239, 8uLL));
        v252.i64[0] = v251.u32[0];
        v252.i64[1] = v251.u32[1];
        v253 = vnegq_s64(v252);
        v254 = vshlq_u64(v230, v253);
        v255 = vuzp1q_s32(vzip1q_s64(v230, v254), vzip2q_s64(v230, v254));
        v256.i64[0] = 0xFFFF0000FFFFLL;
        v256.i64[1] = 0xFFFF0000FFFFLL;
        v257 = vnegq_s32(vandq_s8(v505, v256));
        v258 = vshlq_u32(v255, v257);
        v259 = vuzp1q_s16(vzip1q_s32(v255, v258), vzip2q_s32(v255, v258));
        v258.i64[0] = 0xF000F000F000FLL;
        v258.i64[1] = 0xF000F000F000FLL;
        v260 = vaddq_s16(v505, v258);
        v258.i64[0] = 0x10001000100010;
        v258.i64[1] = 0x10001000100010;
        v261 = vsubq_s16(v258, v505);
        v262 = vshlq_s16(vshlq_s16(v259, v261), v260);
        v493 = v262;
        v263 = v245 + v244;
        if (v483)
        {
          v264 = v483 >= v263;
        }

        else
        {
          v264 = 1;
        }

        v265 = v264;
        v266 = 0uLL;
        if (v244 <= 0x80 && v265)
        {
          v267 = v245 & 0x3F;
          v268 = vaddq_s64(vdupq_n_s64(v267), vzip1q_s64(0, v242));
          v269 = (v125 + 8 * (v245 >> 6));
          v270 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v269, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v268)), vshlq_u64(vdupq_lane_s64(v269->i64[0], 0), vnegq_s64(v268)));
          if (v267 + v244 >= 0x81)
          {
            v270 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v269[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v268)), vshlq_u64(vdupq_laneq_s64(v269[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v268))), v270);
          }
        }

        else
        {
          v127 = 1;
          v263 = v245;
          v270 = 0uLL;
        }

        v271 = vshlq_u64(v270, v253);
        v272 = vuzp1q_s32(vzip1q_s64(v270, v271), vzip2q_s64(v270, v271));
        v273 = vshlq_u32(v272, v257);
        v274 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v272, v273), vzip2q_s32(v272, v273)), v261), v260);
        v494 = v274;
        v275 = v263 + v244;
        if (v483)
        {
          v276 = v483 >= v275;
        }

        else
        {
          v276 = 1;
        }

        v277 = v276;
        if (v244 <= 0x80 && v277)
        {
          v278 = v263 & 0x3F;
          v279 = vaddq_s64(vdupq_n_s64(v278), vzip1q_s64(0, v242));
          v280 = (v125 + 8 * (v263 >> 6));
          v266 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v280, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v279)), vshlq_u64(vdupq_lane_s64(v280->i64[0], 0), vnegq_s64(v279)));
          if (v278 + v244 >= 0x81)
          {
            v266 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v280[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v279)), vshlq_u64(vdupq_laneq_s64(v280[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v279))), v266);
          }
        }

        else
        {
          v127 = 1;
          v275 = v263;
        }

        v281 = vshlq_u64(v266, v253);
        v282 = vuzp1q_s32(vzip1q_s64(v266, v281), vzip2q_s64(v266, v281));
        v283 = vshlq_u32(v282, v257);
        v284 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v282, v283), vzip2q_s32(v282, v283)), v261), v260);
        v495 = v284;
        v285 = v275 + v244;
        if (v483)
        {
          v286 = v483 >= v285;
        }

        else
        {
          v286 = 1;
        }

        v287 = v286;
        v288 = 0uLL;
        if (v244 <= 0x80 && v287)
        {
          v289 = v275 & 0x3F;
          v290 = vaddq_s64(vdupq_n_s64(v289), vzip1q_s64(0, v242));
          v291 = (v125 + 8 * (v275 >> 6));
          v292 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v291, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v290)), vshlq_u64(vdupq_lane_s64(v291->i64[0], 0), vnegq_s64(v290)));
          if (v289 + v244 >= 0x81)
          {
            v292 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v291[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v290)), vshlq_u64(vdupq_laneq_s64(v291[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v290))), v292);
          }
        }

        else
        {
          v127 = 1;
          v285 = v275;
          v292 = 0uLL;
        }

        v293 = vshlq_u64(v292, v253);
        v294 = vuzp1q_s32(vzip1q_s64(v292, v293), vzip2q_s64(v292, v293));
        v295 = vshlq_u32(v294, v257);
        v296 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v294, v295), vzip2q_s32(v294, v295)), v261), v260);
        v496 = v296;
        v297 = vmovl_u16(*&vpaddq_s16(v506, v506));
        v298 = vpaddq_s32(v297, v297).u64[0];
        v299.i64[0] = v298;
        v299.i64[1] = HIDWORD(v298);
        v300 = v299;
        v301 = vaddvq_s64(v299);
        v302 = v301;
        v303 = v285 + v301;
        if (v483)
        {
          v304 = v483 >= v303;
        }

        else
        {
          v304 = 1;
        }

        v305 = v304;
        if (v301 <= 0x80 && v305)
        {
          v306 = v285 & 0x3F;
          v307 = vaddq_s64(vdupq_n_s64(v306), vzip1q_s64(0, v300));
          v308 = (v125 + 8 * (v285 >> 6));
          v288 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v308, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v307)), vshlq_u64(vdupq_lane_s64(v308->i64[0], 0), vnegq_s64(v307)));
          if (v306 + v302 >= 0x81)
          {
            v288 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v308[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v307)), vshlq_u64(vdupq_laneq_s64(v308[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v307))), v288);
          }
        }

        else
        {
          v127 = 1;
          v303 = v285;
        }

        v309 = vzip1_s32(*v297.i8, *&vextq_s8(v297, v297, 8uLL));
        v310.i64[0] = v309.u32[0];
        v310.i64[1] = v309.u32[1];
        v311 = vnegq_s64(v310);
        v312 = vshlq_u64(v288, v311);
        v313 = vuzp1q_s32(vzip1q_s64(v288, v312), vzip2q_s64(v288, v312));
        v312.i64[0] = 0xFFFF0000FFFFLL;
        v312.i64[1] = 0xFFFF0000FFFFLL;
        v314 = vnegq_s32(vandq_s8(v506, v312));
        v315 = vshlq_u32(v313, v314);
        v316 = vuzp1q_s16(vzip1q_s32(v313, v315), vzip2q_s32(v313, v315));
        v313.i64[0] = 0xF000F000F000FLL;
        v313.i64[1] = 0xF000F000F000FLL;
        v317 = vaddq_s16(v506, v313);
        v315.i64[0] = 0x10001000100010;
        v315.i64[1] = 0x10001000100010;
        v318 = vsubq_s16(v315, v506);
        v319 = vshlq_s16(vshlq_s16(v316, v318), v317);
        v497 = v319;
        v320 = v303 + v302;
        if (v483)
        {
          v321 = v483 >= v320;
        }

        else
        {
          v321 = 1;
        }

        v322 = v321;
        v323 = 0uLL;
        if (v302 <= 0x80 && v322)
        {
          v324 = v303 & 0x3F;
          v325 = vaddq_s64(vdupq_n_s64(v324), vzip1q_s64(0, v300));
          v326 = (v125 + 8 * (v303 >> 6));
          v327 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v326, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v325)), vshlq_u64(vdupq_lane_s64(v326->i64[0], 0), vnegq_s64(v325)));
          if (v324 + v302 >= 0x81)
          {
            v327 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v326[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v325)), vshlq_u64(vdupq_laneq_s64(v326[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v325))), v327);
          }
        }

        else
        {
          v127 = 1;
          v320 = v303;
          v327 = 0uLL;
        }

        v328 = vshlq_u64(v327, v311);
        v329 = vuzp1q_s32(vzip1q_s64(v327, v328), vzip2q_s64(v327, v328));
        v330 = vshlq_u32(v329, v314);
        v331 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v329, v330), vzip2q_s32(v329, v330)), v318), v317);
        v498 = v331;
        v332 = v320 + v302;
        if (v483)
        {
          v333 = v483 >= v332;
        }

        else
        {
          v333 = 1;
        }

        v334 = v333;
        if (v302 <= 0x80 && v334)
        {
          v335 = v320 & 0x3F;
          v336 = vaddq_s64(vdupq_n_s64(v335), vzip1q_s64(0, v300));
          v337 = (v125 + 8 * (v320 >> 6));
          v323 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v337, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v336)), vshlq_u64(vdupq_lane_s64(v337->i64[0], 0), vnegq_s64(v336)));
          if (v335 + v302 >= 0x81)
          {
            v323 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v337[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v336)), vshlq_u64(vdupq_laneq_s64(v337[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v336))), v323);
          }
        }

        else
        {
          v127 = 1;
          v332 = v320;
        }

        v338 = vshlq_u64(v323, v311);
        v339 = vuzp1q_s32(vzip1q_s64(v323, v338), vzip2q_s64(v323, v338));
        v340 = vshlq_u32(v339, v314);
        v341 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v339, v340), vzip2q_s32(v339, v340)), v318), v317);
        v499 = v341;
        v342 = v332 + v302;
        if (v483)
        {
          v343 = v483 >= v342;
        }

        else
        {
          v343 = 1;
        }

        v344 = v343;
        if (v302 > 0x80 || !v344)
        {
          goto LABEL_240;
        }

        v345 = vaddq_s64(vdupq_n_s64(v332 & 0x3F), vzip1q_s64(0, v300));
        v346 = (v125 + 8 * (v332 >> 6));
        v347 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v346, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v345)), vshlq_u64(vdupq_lane_s64(v346->i64[0], 0), vnegq_s64(v345)));
        if ((v332 & 0x3F) + v302 >= 0x81)
        {
          v347 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v346[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v345)), vshlq_u64(vdupq_laneq_s64(v346[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v345))), v347);
        }

        if ((v127 & 1) != 0 || v483 + 8 * result - v342 - 512 >= 9 || v110 == 2)
        {
LABEL_240:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
          return 0;
        }

        else
        {
          v348 = vshlq_u64(v347, v311);
          v349 = vuzp1q_s32(vzip1q_s64(v347, v348), vzip2q_s64(v347, v348));
          v350 = vshlq_u32(v349, v314);
          v351 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v349, v350), vzip2q_s32(v349, v350)), v318), v317);
          v352 = vaddq_s16(vandq_s8(v109, v77), v136);
          v353 = vdupq_lane_s64(v109.i64[0], 0);
          v354 = vandq_s8(v77, v353);
          v355 = vsubq_s16(v352, v354);
          v356 = vsubq_s16(v158, v354);
          v357 = vsubq_s16(v168, v354);
          v358 = vsubq_s16(v180, v354);
          v359 = vandq_s8(v76, v353);
          v360 = vsubq_s16(v204, v359);
          v361 = vsubq_s16(v216, v359);
          v362 = vsubq_s16(v226, v359);
          v363 = vsubq_s16(v238, v359);
          v364 = vandq_s8(v75, v353);
          v365 = vsubq_s16(v262, v364);
          v366 = vsubq_s16(v274, v364);
          v367 = vsubq_s16(v284, v364);
          v368 = vsubq_s16(v296, v364);
          v369 = vandq_s8(v74, v353);
          v370 = vsubq_s16(v319, v369);
          v485 = v352;
          v371 = vsubq_s16(v331, v369);
          v372 = vsubq_s16(v341, v369);
          v497 = v370;
          v498 = v371;
          v373 = vsubq_s16(v351, v369);
          v499 = v372;
          v500 = v373;
          v374.i64[0] = 0x1000100010001;
          v374.i64[1] = 0x1000100010001;
          if (vaddvq_s16(vceqq_s16(v56, v374)))
          {
            v375 = vnegq_s16(vandq_s8(v502, v374));
            v376.i64[0] = v358.i64[0];
            v377.i64[1] = v355.i64[1];
            v376.i64[1] = v355.i64[0];
            v377.i64[0] = v358.i64[1];
            v378 = vbslq_s8(v375, v377, v355);
            v379 = vbslq_s8(v375, v376, v358);
            v377.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v377.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v380 = vandq_s8(vqtbl4q_s8(*(&v356 - 1), v377), v375);
            v510.val[0] = vaddq_s16(v378, vandq_s8(vqtbl4q_s8(*(&v356 - 1), xmmword_29D2F10B0), v375));
            v510.val[1] = vaddq_s16(v356, vandq_s8(vqtbl4q_s8(*(&v356 - 1), xmmword_29D2F10C0), v375));
            v510.val[2] = vaddq_s16(v357, v380);
            v510.val[3] = vaddq_s16(v379, v380);
            v381 = vandq_s8(vqtbl4q_s8(v510, v377), v375);
            v355 = vaddq_s16(v510.val[0], vandq_s8(vqtbl4q_s8(v510, xmmword_29D2F10D0), v375));
            v356 = vaddq_s16(v510.val[1], vandq_s8(vqtbl4q_s8(v510, xmmword_29D2F10E0), v375));
            v485 = v355;
            v486 = v356;
            v357 = vaddq_s16(v510.val[2], v381);
            v358 = vaddq_s16(v510.val[3], v381);
            v509.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v360.i8, xmmword_29D2F10B0), v375), v360);
            v509.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v360.i8, xmmword_29D2F10F0), v375), v361);
            v509.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v360.i8, v377), v375), v362);
            v509.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v360.i8, xmmword_29D2F1100), v375), v363);
            v382 = vandq_s8(vqtbl4q_s8(v509, xmmword_29D2F10D0), v375);
            v383 = vandq_s8(vqtbl4q_s8(v509, v377), v375);
            v360 = vaddq_s16(v382, v509.val[0]);
            v361 = vaddq_s16(v509.val[1], v382);
            v362 = vaddq_s16(v509.val[2], v383);
            v363 = vaddq_s16(v509.val[3], v383);
            v509.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v365.i8, xmmword_29D2F0EB0), v375), v365);
            v509.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v365.i8, xmmword_29D2F0FB0), v375), v366);
            v509.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v365.i8, xmmword_29D2F10B0), v375), v367);
            v509.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v365.i8, xmmword_29D2F10C0), v375), v368);
            v384 = vandq_s8(vqtbl4q_s8(v509, v377), v375);
            v365 = vaddq_s16(v509.val[0], v384);
            v366 = vaddq_s16(v509.val[1], v384);
            v367 = vaddq_s16(v509.val[2], vandq_s8(vqtbl4q_s8(v509, xmmword_29D2F0FE0), v375));
            v368 = vaddq_s16(v509.val[3], vandq_s8(vqtbl4q_s8(v509, xmmword_29D2F1110), v375));
            v510.val[0] = v497;
            v510.val[1] = v498;
            v55 = v502;
            v510.val[2] = v499;
            v510.val[3] = v500;
            v509.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v510, xmmword_29D2F0EB0), v375), v497);
            v509.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v510, xmmword_29D2F1120), v375), v498);
            v487 = v357;
            v488 = v358;
            v509.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v510, xmmword_29D2F10B0), v375), v499);
            v509.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v510, xmmword_29D2F10C0), v375), v500);
            v385 = vandq_s8(vqtbl4q_s8(v509, v377), v375);
            v370 = vaddq_s16(v509.val[0], v385);
            v371 = vaddq_s16(v509.val[1], v385);
            v372 = vaddq_s16(v509.val[2], vandq_s8(vqtbl4q_s8(v509, xmmword_29D2F0FE0), v375));
            v373 = vaddq_s16(v509.val[3], vandq_s8(vqtbl4q_s8(v509, xmmword_29D2F1130), v375));
          }

          v386 = vaddq_s16(v501, v355);
          v387 = vaddq_s16(v356, v501);
          v388 = vaddq_s16(v357, v501);
          v389 = vaddq_s16(v358, v501);
          v390 = vaddq_s16(v360, v501);
          v391 = vaddq_s16(v361, v501);
          v392 = vaddq_s16(v362, v501);
          v393 = vaddq_s16(v363, v501);
          v394 = vaddq_s16(v365, v501);
          v395 = vaddq_s16(v366, v501);
          v396 = vaddq_s16(v367, v501);
          v397 = vaddq_s16(v368, v501);
          v398 = vaddq_s16(v370, v501);
          v399 = vaddq_s16(v371, v501);
          v400 = vaddq_s16(v372, v501);
          v401 = vaddq_s16(v373, v501);
          v402.i64[0] = 0x10001000100010;
          v402.i64[1] = 0x10001000100010;
          v403 = vceqzq_s16(vandq_s8(v55, v402));
          v404 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1270), v403), v386);
          v405 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v387, xmmword_29D2F1270), v403), v387);
          v406 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v388, xmmword_29D2F1270), v403), v388);
          v407 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v389, xmmword_29D2F1270), v403), v389);
          v408 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v390, xmmword_29D2F1270), v403), v390);
          v409 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v391, xmmword_29D2F1270), v403), v391);
          v410 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v392, xmmword_29D2F1270), v403), v392);
          v411 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v393, xmmword_29D2F1270), v403), v393);
          v412 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v394, xmmword_29D2F1270), v403), v394);
          v413 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v395, xmmword_29D2F1270), v403), v395);
          v414 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v396, xmmword_29D2F1270), v403), v396);
          v415 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v397, xmmword_29D2F1270), v403), v397);
          v416 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v398, xmmword_29D2F1270), v403), v398);
          v417 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v399, xmmword_29D2F1270), v403), v399);
          __asm { FMOV            V7.4S, #1.875 }

          v397.i64[0] = 0xC0000000C0000000;
          v397.i64[1] = 0xC0000000C0000000;
          v422 = (a1 + 32);
          *a1 = vbslq_s8(v397, vshrn_high_n_s64(vshrn_n_s64(v404, 0x12uLL), v405, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v404, 0xCuLL), v405, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v404, 6uLL), v405, 6uLL), vuzp1q_s32(v404, v405))));
          *(a1 + 16) = vbslq_s8(v397, vshrn_high_n_s64(vshrn_n_s64(v406, 0x12uLL), v407, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v406, 0xCuLL), v407, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v406, 6uLL), v407, 6uLL), vuzp1q_s32(v406, v407))));
          v423 = (a1 + a2);
          v424 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v400, xmmword_29D2F1270), v403), v400);
          v425 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v401, xmmword_29D2F1270), v403), v401);
          *v422 = vbslq_s8(v397, vshrn_high_n_s64(vshrn_n_s64(v412, 0x12uLL), v413, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v412, 0xCuLL), v413, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v412, 6uLL), v413, 6uLL), vuzp1q_s32(v412, v413))));
          v422[1] = vbslq_s8(v397, vshrn_high_n_s64(vshrn_n_s64(v414, 0x12uLL), v415, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v414, 0xCuLL), v415, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v414, 6uLL), v415, 6uLL), vuzp1q_s32(v414, v415))));
          *v423 = vbslq_s8(v397, vshrn_high_n_s64(vshrn_n_s64(v408, 0x12uLL), v409, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v408, 0xCuLL), v409, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v408, 6uLL), v409, 6uLL), vuzp1q_s32(v408, v409))));
          v423[1] = vbslq_s8(v397, vshrn_high_n_s64(vshrn_n_s64(v410, 0x12uLL), v411, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v410, 0xCuLL), v411, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v410, 6uLL), v411, 6uLL), vuzp1q_s32(v410, v411))));
          v423 += 2;
          *v423 = vbslq_s8(v397, vshrn_high_n_s64(vshrn_n_s64(v416, 0x12uLL), v417, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v416, 0xCuLL), v417, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v416, 6uLL), v417, 6uLL), vuzp1q_s32(v416, v417))));
          v423[1] = vbslq_s8(v397, vshrn_high_n_s64(vshrn_n_s64(v424, 0x12uLL), v425, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v424, 0xCuLL), v425, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v424, 6uLL), v425, 6uLL), vuzp1q_s32(v424, v425))));
        }
      }
    }

    else
    {
      if (a4)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v485, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v485, a5);
      }

      v446 = v485.i64[0];
      v447 = v485.i32[3];
      v448 = v485.i16[4];
      v449 = v486.i64[0];
      v450 = v486.i32[3];
      v451 = v486.i16[4];
      v452 = v487.i64[0];
      v453 = v487.i32[3];
      v454 = v487.i16[4];
      v455 = v488.i64[0];
      v456 = v488.i32[3];
      v457 = v488.i16[4];
      v458 = v489.i64[0];
      v459 = v489.i32[3];
      v460 = v489.i16[4];
      v461 = v490.i64[0];
      v462 = v490.i32[3];
      v463 = v490.i16[4];
      v464 = v491.i64[0];
      v465 = v491.i32[3];
      v466 = v491.i16[4];
      v467 = v492.i64[0];
      v468 = v492.i32[3];
      v469 = v492.i16[4];
      v14 = a3 + 16;
      if ((v7 & 2) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v14, &v485, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v14, &v485, a5);
      }

      v470 = v485.i64[0];
      v471 = v485.i32[3];
      v472 = v485.i16[4];
      v15 = v486.i64[1];
      v473 = v486.i64[0];
      v16 = v487.i64[1];
      v474 = v487.i64[0];
      v17 = v488.i64[1];
      v475 = v488.i64[0];
      v18 = v489.i64[1];
      v476 = v489.i64[0];
      v477 = v490;
      v19 = v491.i64[1];
      v478 = v491.i64[0];
      v479 = v492;
      v480 = a2;
      v20 = a3 + 32;
      if ((v7 & 4) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v20, &v485, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v485, a5);
      }

      v21 = v485.i16[0];
      v22 = v485.i16[2];
      v23 = v485.i16[4];
      v24 = v485.i32[3];
      v25 = v486.i16[0];
      v26 = v486.i16[2];
      v426 = v486.i32[3];
      v427 = v486.i16[4];
      v428 = v487.i64[0];
      v429 = v487.i32[3];
      v430 = v487.i16[4];
      v431 = v488.i64[0];
      v432 = v488.i32[3];
      v433 = v488.i16[4];
      v434 = v489.i64[0];
      v435 = v489.i32[3];
      v436 = v489.i16[4];
      v437 = v490.i64[0];
      v438 = v490.i32[3];
      v439 = v490.i16[4];
      v440 = v491.i64[0];
      v441 = v491.i32[3];
      v442 = v491.i16[4];
      v443 = v492.i64[0];
      v444 = v492.i32[3];
      v445 = v492.i16[4];
      v27 = a3 + 48;
      if ((v7 & 8) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v27, &v485, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v27, &v485, a5);
      }

      *a1 = v446 & 0x3FF | ((WORD2(v446) & 0x3FF) << 10) & 0xC00FFFFF | ((v448 & 0x3FF) << 20) | (v447 << 30);
      *(a1 + 4) = v449 & 0x3FF | ((WORD2(v449) & 0x3FF) << 10) & 0xC00FFFFF | ((v451 & 0x3FF) << 20) | (v450 << 30);
      *(a1 + 8) = v452 & 0x3FF | ((WORD2(v452) & 0x3FF) << 10) & 0xC00FFFFF | ((v454 & 0x3FF) << 20) | (v453 << 30);
      *(a1 + 12) = v455 & 0x3FF | ((WORD2(v455) & 0x3FF) << 10) & 0xC00FFFFF | ((v457 & 0x3FF) << 20) | (v456 << 30);
      *(a1 + 16) = v458 & 0x3FF | ((WORD2(v458) & 0x3FF) << 10) & 0xC00FFFFF | ((v460 & 0x3FF) << 20) | (v459 << 30);
      *(a1 + 20) = v461 & 0x3FF | ((WORD2(v461) & 0x3FF) << 10) & 0xC00FFFFF | ((v463 & 0x3FF) << 20) | (v462 << 30);
      *(a1 + 24) = v464 & 0x3FF | ((WORD2(v464) & 0x3FF) << 10) & 0xC00FFFFF | ((v466 & 0x3FF) << 20) | (v465 << 30);
      *(a1 + 28) = v467 & 0x3FF | ((WORD2(v467) & 0x3FF) << 10) & 0xC00FFFFF | ((v469 & 0x3FF) << 20) | (v468 << 30);
      *(a1 + 32) = v21 & 0x3FF | ((v22 & 0x3FF) << 10) & 0xC00FFFFF | ((v23 & 0x3FF) << 20) | (v24 << 30);
      *(a1 + 36) = v25 & 0x3FF | ((v26 & 0x3FF) << 10) & 0xC00FFFFF | ((v427 & 0x3FF) << 20) | (v426 << 30);
      *(a1 + 40) = v428 & 0x3FF | ((WORD2(v428) & 0x3FF) << 10) & 0xC00FFFFF | ((v430 & 0x3FF) << 20) | (v429 << 30);
      *(a1 + 44) = v431 & 0x3FF | ((WORD2(v431) & 0x3FF) << 10) & 0xC00FFFFF | ((v433 & 0x3FF) << 20) | (v432 << 30);
      *(a1 + 48) = v434 & 0x3FF | ((WORD2(v434) & 0x3FF) << 10) & 0xC00FFFFF | ((v436 & 0x3FF) << 20) | (v435 << 30);
      *(a1 + 52) = v437 & 0x3FF | ((WORD2(v437) & 0x3FF) << 10) & 0xC00FFFFF | ((v439 & 0x3FF) << 20) | (v438 << 30);
      *(a1 + 56) = v440 & 0x3FF | ((WORD2(v440) & 0x3FF) << 10) & 0xC00FFFFF | ((v442 & 0x3FF) << 20) | (v441 << 30);
      *(a1 + 60) = v443 & 0x3FF | ((WORD2(v443) & 0x3FF) << 10) & 0xC00FFFFF | ((v445 & 0x3FF) << 20) | (v444 << 30);
      v28 = (a1 + v480);
      *v28 = v470 & 0x3FF | ((WORD2(v470) & 0x3FF) << 10) & 0xC00FFFFF | ((v472 & 0x3FF) << 20) | (v471 << 30);
      v28[1] = v473 & 0x3FF | ((WORD2(v473) & 0x3FF) << 10) & 0xC00FFFFF | ((v15 & 0x3FF) << 20) | (HIDWORD(v15) << 30);
      v28[2] = v474 & 0x3FF | ((WORD2(v474) & 0x3FF) << 10) & 0xC00FFFFF | ((v16 & 0x3FF) << 20) | (HIDWORD(v16) << 30);
      v28[3] = v475 & 0x3FF | ((WORD2(v475) & 0x3FF) << 10) & 0xC00FFFFF | ((v17 & 0x3FF) << 20) | (HIDWORD(v17) << 30);
      v28[4] = v476 & 0x3FF | ((WORD2(v476) & 0x3FF) << 10) & 0xC00FFFFF | ((v18 & 0x3FF) << 20) | (HIDWORD(v18) << 30);
      v28[5] = v477.i16[0] & 0x3FF | ((v477.i16[2] & 0x3FF) << 10) & 0xC00FFFFF | ((v477.i16[4] & 0x3FF) << 20) | (v477.i32[3] << 30);
      v29 = v485.i16[0];
      v30 = v485.i16[2];
      v28[6] = v478 & 0x3FF | ((WORD2(v478) & 0x3FF) << 10) & 0xC00FFFFF | ((v19 & 0x3FF) << 20) | (HIDWORD(v19) << 30);
      v28[7] = v479.i16[0] & 0x3FF | ((v479.i16[2] & 0x3FF) << 10) & 0xC00FFFFF | ((v479.i16[4] & 0x3FF) << 20) | (v479.i32[3] << 30);
      v31 = v29 & 0x3FF | ((v30 & 0x3FF) << 10) & 0xC00FFFFF | ((v485.i16[4] & 0x3FF) << 20) | (v485.i32[3] << 30);
      v32 = v487.i16[0];
      v33 = v487.i16[2];
      v34 = v486.i16[0] & 0x3FF | ((v486.i16[2] & 0x3FF) << 10) & 0xC00FFFFF | ((v486.i16[4] & 0x3FF) << 20) | (v486.i32[3] << 30);
      v28[8] = v31;
      v28[9] = v34;
      v35 = v32 & 0x3FF | ((v33 & 0x3FF) << 10) & 0xC00FFFFF | ((v487.i16[4] & 0x3FF) << 20) | (v487.i32[3] << 30);
      v36 = v489.i16[0];
      v37 = v489.i16[2];
      v38 = v488.i16[0] & 0x3FF | ((v488.i16[2] & 0x3FF) << 10) & 0xC00FFFFF | ((v488.i16[4] & 0x3FF) << 20) | (v488.i32[3] << 30);
      v28[10] = v35;
      v28[11] = v38;
      v39 = v36 & 0x3FF | ((v37 & 0x3FF) << 10) & 0xC00FFFFF | ((v489.i16[4] & 0x3FF) << 20) | (v489.i32[3] << 30);
      v40 = v491.i16[0];
      v41 = v491.i16[2];
      v42 = v490.i16[0] & 0x3FF | ((v490.i16[2] & 0x3FF) << 10) & 0xC00FFFFF | ((v490.i16[4] & 0x3FF) << 20) | (v490.i32[3] << 30);
      v28[12] = v39;
      v28[13] = v42;
      v43 = v492.i16[0] & 0x3FF | ((v492.i16[2] & 0x3FF) << 10) & 0xC00FFFFF | ((v492.i16[4] & 0x3FF) << 20) | (v492.i32[3] << 30);
      v28[14] = v40 & 0x3FF | ((v41 & 0x3FF) << 10) & 0xC00FFFFF | ((v491.i16[4] & 0x3FF) << 20) | (v491.i32[3] << 30);
      v28[15] = v43;
      return 64;
    }
  }

  else
  {
    result = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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
      v16 = v8 - 2;
    }

    if (v9 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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
      v20 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 64, a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
    if (v9 < 5)
    {
      goto LABEL_37;
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
      v21 = v8 - 2;
    }

    if (v18 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 64, a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v23 = v8 - 4;
  if (!v9)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v8 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v26 = v8 - 6;
    if (!v9)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 4 * a2, a2, v25, v24, a7);
  v11 += result;
  v26 = v8 - 6;
LABEL_47:
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 6 * a2, a2, v28, v27, a7);
    v11 += result;
    if (v9 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v9 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
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
      v30 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 64, a2, v30, v29, a7);
    v11 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v9 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v8 < 7)
  {
    goto LABEL_76;
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
    v32 = v9 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 6 * a2 + 64, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 256, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 320, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 768, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 576, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 832, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 48);
  v11 = *(a3 + a4);
  v12 = *(a3 + a4 + 16);
  v10 = (a3 + a4 + 32);
  v13 = *(a3 + a4 + 48);
  v14.i64[0] = *a3;
  v14.i64[1] = HIDWORD(*a3);
  v15 = v14;
  v14.i64[0] = *(a3 + 8);
  v14.i64[1] = HIDWORD(*a3);
  v16 = vbslq_s8(xmmword_29D2F1290, v15, 0);
  v17 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v14.i64[0] = v7.u32[0];
  v14.i64[1] = v7.u32[1];
  v18 = v14;
  v14.i64[0] = v7.u32[2];
  v14.i64[1] = v7.u32[3];
  v19 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*a3, 6uLL), v16)));
  v20 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*a3, 6uLL), v17)));
  v21 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v7.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v7.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v7.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v18, 0))));
  v22 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v7, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v7, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v7, 6uLL), vbslq_s8(xmmword_29D2F1290, v14, 0))));
  v14.i64[0] = v8.u32[0];
  v14.i64[1] = v8.u32[1];
  v23 = v14;
  v14.i64[0] = v8.u32[2];
  v14.i64[1] = v8.u32[3];
  v24 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v25 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v14.i64[0] = v9.u32[0];
  v14.i64[1] = v9.u32[1];
  v26 = v14;
  v14.i64[0] = v9.u32[2];
  v14.i64[1] = v9.u32[3];
  v27 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v8.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v8.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v8.i8, 6uLL), v24)));
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v8, 6uLL), v25)));
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v9.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v9.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v26, 0))));
  v30 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v9, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v9, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v9, 6uLL), vbslq_s8(xmmword_29D2F1290, v14, 0))));
  v14.i64[0] = v11.u32[0];
  v14.i64[1] = v11.u32[1];
  v31 = v14;
  v14.i64[0] = v11.u32[2];
  v14.i64[1] = v11.u32[3];
  v32 = vbslq_s8(xmmword_29D2F1290, v31, 0);
  v33 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v14.i64[0] = v12.u32[0];
  v14.i64[1] = v12.u32[1];
  v34 = v14;
  v14.i64[0] = v12.u32[2];
  v14.i64[1] = v12.u32[3];
  v35 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), v32)));
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), v33)));
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v34, 0))));
  v38 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), vbslq_s8(xmmword_29D2F1290, v14, 0))));
  v14.i64[0] = *v10->i8;
  v14.i64[1] = HIDWORD(*v10);
  v39 = v14;
  v14.i64[0] = *(a3 + a4 + 40);
  v14.i64[1] = HIDWORD(*v10->i8);
  v40 = vbslq_s8(xmmword_29D2F1290, v39, 0);
  v41 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  v42 = v14;
  v14.i64[0] = v13.u32[2];
  v14.i64[1] = v13.u32[3];
  v43 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v10, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v10, 6uLL), v40)));
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*v10->i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*v10->i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*v10->i8, 6uLL), v41)));
  v45 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v13.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v13.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v13.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v42, 0))));
  v46 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v13, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v13, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v13, 6uLL), vbslq_s8(xmmword_29D2F1290, v14, 0))));
  v47 = vdupq_lane_s64(v19.i64[0], 0);
  v498 = v30;
  v48 = vsubq_s16(v30, v47);
  v500 = vshlq_s16(vshlq_s16(vsubq_s16(v19, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v502 = vshlq_s16(vshlq_s16(vsubq_s16(v20, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v504 = vshlq_s16(vshlq_s16(vsubq_s16(v21, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v506 = vshlq_s16(vshlq_s16(vsubq_s16(v22, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v508 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v509 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v49 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v500, v502), v504), v506), xmmword_29D2F1150);
  v50 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v500, v502), v504), v506), xmmword_29D2F1150);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vzip1q_s16(v51, v52);
  v49.i64[0] = 0x10001000100010;
  v49.i64[1] = 0x10001000100010;
  v54 = vbicq_s8(vsubq_s16(v49, vclsq_s16(v53)), vceqzq_s16(v53));
  v510 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v511 = vshlq_s16(vshlq_s16(v48, xmmword_29D2F12D0), xmmword_29D2F12E0);
  v55.i64[0] = 0x8000800080008000;
  v55.i64[1] = 0x8000800080008000;
  v48.i64[0] = 0x8000800080008000;
  v48.i64[1] = 0x8000800080008000;
  v56 = vminq_s16(v52, v48);
  v57 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v508, v509), v510), v511), xmmword_29D2F1150);
  v58 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v508, v509), v510), v511), xmmword_29D2F1150);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vmaxq_s16(vmaxq_s16(v51, v55), v59);
  v62 = vminq_s16(v56, v60);
  v63 = vzip1q_s16(v59, v60);
  v64 = vbicq_s8(vsubq_s16(v49, vclsq_s16(v63)), vceqzq_s16(v63));
  v512 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v513 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v65 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v66 = vminq_s16(vminq_s16(v512, v513), v65);
  v514 = v65;
  v515 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v67 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v512, v513), v65), v515), xmmword_29D2F1150);
  v68 = vqtbl1q_s8(vminq_s16(v66, v515), xmmword_29D2F1150);
  v69 = vpmaxq_s16(v67, v67);
  v70 = vpminq_s16(v68, v68);
  v71 = vmaxq_s16(v61, v69);
  v72 = vminq_s16(v62, v70);
  v73 = vzip1q_s16(v69, v70);
  v74 = vbicq_s8(vsubq_s16(v49, vclsq_s16(v73)), vceqzq_s16(v73));
  v516 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v517 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v520 = v47;
  v518 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v519 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v75 = vpmaxq_s16(v54, v54);
  v76 = vpmaxq_s16(v64, v64);
  v77 = vpmaxq_s16(v74, v74);
  v78 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v516, v517), v518), v519), xmmword_29D2F1150);
  v79 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v516, v517), v518), v519), xmmword_29D2F1150);
  v80 = vpmaxq_s16(v78, v78);
  v81 = vpminq_s16(v79, v79);
  v82 = vmaxq_s16(v71, v80);
  v83 = vminq_s16(v72, v81);
  v84 = vzip1q_s16(v80, v81);
  v85 = vbicq_s8(vsubq_s16(v49, vclsq_s16(v84)), vceqzq_s16(v84));
  v86 = vpmaxq_s16(v85, v85);
  v87 = vmaxq_s16(vmaxq_s16(v75, v76), vmaxq_s16(v77, v86));
  v88 = vclzq_s16(vsubq_s16(v82, v83));
  v89.i64[0] = 0xF000F000F000FLL;
  v89.i64[1] = 0xF000F000F000FLL;
  v90.i64[0] = -1;
  v90.i64[1] = -1;
  v527 = v83;
  v528 = v82;
  v91 = vsubq_s16(vshlq_s16(v90, vsubq_s16(v89, v88)), v83);
  v92 = vsubq_s16(v49, v88);
  v93 = vcgtq_s16(v87, v92);
  v94 = vminq_s16(v92, v87);
  v529 = vandq_s8(v91, v93);
  v91.i64[0] = 0x8000800080008;
  v91.i64[1] = 0x8000800080008;
  v49.i64[0] = 0x3000300030003;
  v49.i64[1] = 0x3000300030003;
  v95 = vorrq_s8(vandq_s8(vceqzq_s16(v94), v49), vorrq_s8(vandq_s8(v93, v91), 0));
  v96 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v76), v49), 0);
  v97 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v77), v49), 0);
  v523 = vsubq_s16(v94, v96);
  v524 = vsubq_s16(v94, v97);
  v98 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v86), v49), 0);
  v525 = vsubq_s16(v94, v98);
  v526 = v94;
  v99 = vaddq_s16(v98, v97);
  v100 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v75), v49), 0);
  v101 = vsubq_s16(v94, v100);
  v102 = vceqq_s16(v99, vnegq_s16(vaddq_s16(v100, v96)));
  v100.i64[0] = 0x4000400040004;
  v100.i64[1] = 0x4000400040004;
  v103 = vorrq_s8(vbicq_s8(v100, v102), v95);
  v521 = v103;
  v522 = v101;
  if (vmaxvq_s16(v94))
  {
    v466 = v46;
    v467 = v38;
    v468 = v27;
    v469 = v28;
    v470 = v29;
    v492.val[0] = v19;
    v492.val[1] = v20;
    v492.val[2] = v21;
    v492.val[3] = v22;
    v495 = v95;
    v104 = vshlq_s16(vshlq_s16(vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v105 = vshlq_s16(vshlq_s16(vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v106 = vshlq_s16(vshlq_s16(vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v476 = vshlq_s16(vshlq_s16(vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v477 = vshlq_s16(vshlq_s16(vsubq_s16(v502, vqtbl1q_s8(v502, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v478 = vshlq_s16(vshlq_s16(vsubq_s16(v506, vqtbl1q_s8(v506, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v479 = vshlq_s16(vshlq_s16(vsubq_s16(v504, vqtbl1q_s8(v504, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v107 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v476, v477), v479), v478), xmmword_29D2F1150);
    v108 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v476, v477), v479), v478), xmmword_29D2F1150);
    v109 = vpmaxq_s16(v107, v107);
    v110 = vpminq_s16(v108, v108);
    v111.i64[0] = 0x8000800080008000;
    v111.i64[1] = 0x8000800080008000;
    v112 = vmaxq_s16(v109, v111);
    v113.i64[0] = 0x8000800080008000;
    v113.i64[1] = 0x8000800080008000;
    v114 = vminq_s16(v110, v113);
    v115 = vzip1q_s16(v109, v110);
    v116.i64[0] = 0x10001000100010;
    v116.i64[1] = 0x10001000100010;
    v117 = vbicq_s8(vsubq_s16(v116, vclsq_s16(v115)), vceqzq_s16(v115));
    v118 = vpmaxq_s16(v117, v117);
    v482 = vshlq_s16(vshlq_s16(vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v483 = vshlq_s16(vshlq_s16(vsubq_s16(v508, vqtbl1q_s8(v508, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v484 = vshlq_s16(vshlq_s16(vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v510, vqtbl1q_s8(v510, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v119 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v483, v482), v485), v484), xmmword_29D2F1150);
    v120 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v483, v482), v485), v484), xmmword_29D2F1150);
    v121 = vpmaxq_s16(v119, v119);
    v122 = vpminq_s16(v120, v120);
    v123 = vmaxq_s16(v112, v121);
    v124 = vminq_s16(v114, v122);
    v125 = vzip1q_s16(v121, v122);
    v126.i64[0] = 0x10001000100010;
    v126.i64[1] = 0x10001000100010;
    v127 = vbicq_s8(vsubq_s16(v116, vclsq_s16(v125)), vceqzq_s16(v125));
    v128 = vpmaxq_s16(v127, v127);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v487 = vshlq_s16(vshlq_s16(vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v493 = vshlq_s16(vshlq_s16(vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v489 = vshlq_s16(vshlq_s16(vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v129 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v487, v486), v493), v489), xmmword_29D2F1150);
    v130 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v487, v486), v493), v489), xmmword_29D2F1150);
    v131 = vpmaxq_s16(v129, v129);
    v132 = vpminq_s16(v130, v130);
    v133 = vmaxq_s16(v123, v131);
    v134 = vminq_s16(v124, v132);
    v135 = vzip1q_s16(v131, v132);
    v136 = vbicq_s8(vsubq_s16(v126, vclsq_s16(v135)), vceqzq_s16(v135));
    v137 = vpmaxq_s16(v136, v136);
    v471 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v138 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v104, v105), v471), v106), xmmword_29D2F1150);
    v139 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v104, v105), v471), v106), xmmword_29D2F1150);
    v140 = vpmaxq_s16(v138, v138);
    v141 = vpminq_s16(v139, v139);
    v142 = vmaxq_s16(v133, v140);
    v143 = vminq_s16(v134, v141);
    v144 = vzip1q_s16(v140, v141);
    v141.i64[0] = 0x10001000100010;
    v141.i64[1] = 0x10001000100010;
    v145 = vbicq_s8(vsubq_s16(v141, vclsq_s16(v144)), vceqzq_s16(v144));
    v146 = vpmaxq_s16(v145, v145);
    v147 = vmaxq_s16(vmaxq_s16(v118, v128), vmaxq_s16(v137, v146));
    v480 = v143;
    v481 = v142;
    v148 = vclzq_s16(vsubq_s16(v142, v143));
    v149 = vsubq_s16(v141, v148);
    v142.i64[0] = 0x10001000100010;
    v142.i64[1] = 0x10001000100010;
    v150 = vcgtq_s16(v147, v149);
    v151 = vminq_s16(v149, v147);
    v149.i64[0] = 0x3000300030003;
    v149.i64[1] = 0x3000300030003;
    v152 = vmaxq_s16(vminq_s16(vsubq_s16(v151, v118), v149), 0);
    v153 = vmaxq_s16(vminq_s16(vsubq_s16(v151, v128), v149), 0);
    v154 = vmaxq_s16(vminq_s16(vsubq_s16(v151, v137), v149), 0);
    v143.i64[0] = 0x3000300030003;
    v143.i64[1] = 0x3000300030003;
    v155 = vmaxq_s16(vminq_s16(vsubq_s16(v151, v146), v149), 0);
    v141.i64[0] = 0x4000400040004;
    v141.i64[1] = 0x4000400040004;
    v156 = vbicq_s8(v141, vceqq_s16(vaddq_s16(v155, v154), vnegq_s16(vaddq_s16(v152, v153))));
    v149.i64[0] = 0x18001800180018;
    v149.i64[1] = 0x18001800180018;
    v157 = v150;
    v158 = vbslq_s8(v150, v149, v142);
    v473 = vsubq_s16(v151, v153);
    v474 = vsubq_s16(v151, v154);
    v475 = vsubq_s16(v151, v155);
    v154.i64[0] = 0x7000700070007;
    v154.i64[1] = 0x7000700070007;
    v472 = vsubq_s16(v151, v152);
    v152.i64[0] = 0x8000800080008;
    v152.i64[1] = 0x8000800080008;
    v141.i64[0] = 0x2000200020002;
    v141.i64[1] = 0x2000200020002;
    v160 = v525;
    v159 = v526;
    v161 = vaddq_s16(vaddq_s16(vbicq_s8(v526, vceqzq_s16(vandq_s8(v495, v152))), vandq_s8(vceqq_s16(vandq_s8(v495, v143), v141), v142)), vandq_s8(vaddq_s16(v103, v103), v152));
    v162 = v522;
    v163 = v523;
    v164 = v524;
    v165 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v161, v522, v154), vshlq_n_s16(vaddq_s16(vaddq_s16(v524, v523), v525), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v151, vceqzq_s16((*&v158 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v156, v156)), v472, v154), vshlq_n_s16(vaddq_s16(vaddq_s16(v474, v473), v475), 3uLL))).i64[0], 0);
    v166 = vaddvq_s16(v165);
    if (a5)
    {
      v167 = a6 == 0;
    }

    else
    {
      v167 = 1;
    }

    v168 = v167;
    if (v166)
    {
      v169.i64[0] = 0x3000300030003;
      v169.i64[1] = 0x3000300030003;
      v170 = vorrq_s8(vandq_s8(vceqzq_s16(v151), v169), v158);
      v171 = v105;
      v172 = vorrq_s8(v170, v156);
      v170.i64[0] = 0xF000F000F000FLL;
      v170.i64[1] = 0xF000F000F000FLL;
      v500 = vbslq_s8(v165, v476, v500);
      v502 = vbslq_s8(v165, v477, v502);
      v169.i64[0] = -1;
      v169.i64[1] = -1;
      v504 = vbslq_s8(v165, v479, v504);
      v506 = vbslq_s8(v165, v478, v506);
      v508 = vbslq_s8(v165, v483, v508);
      v509 = vbslq_s8(v165, v482, v509);
      v510 = vbslq_s8(v165, v485, v510);
      v511 = vbslq_s8(v165, v484, v511);
      v512 = vbslq_s8(v165, v487, v512);
      v513 = vbslq_s8(v165, v486, v513);
      v514 = vbslq_s8(v165, v493, v514);
      v515 = vbslq_s8(v165, v489, v515);
      v516 = vbslq_s8(v165, v104, v516);
      v517 = vbslq_s8(v165, v171, v517);
      v518 = vbslq_s8(v165, v471, v518);
      v519 = vbslq_s8(v165, v106, v519);
      v162 = vbslq_s8(v165, v472, v522);
      v163 = vbslq_s8(v165, v473, v523);
      v522 = v162;
      v523 = v163;
      v164 = vbslq_s8(v165, v474, v524);
      v160 = vbslq_s8(v165, v475, v525);
      v524 = v164;
      v525 = v160;
      v528 = vbslq_s8(v165, v481, v528);
      v529 = vbslq_s8(v165, vandq_s8(vsubq_s16(vshlq_s16(v169, vsubq_s16(v170, v148)), v480), v157), v529);
      v159 = vbslq_s8(v165, v151, v526);
      v526 = v159;
      v527 = vbslq_s8(v165, v480, v527);
      v103 = vbslq_s8(v165, v172, v521);
      v520 = vbslq_s8(v165, vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), v520);
      v521 = v103;
    }

    if ((v168 & 1) == 0)
    {
      v173 = vqtbl4q_s8(v492, xmmword_29D2F1160);
      v174 = vsubq_s16(v492.val[0], vqtbl4q_s8(v492, xmmword_29D2F10B0));
      v175 = vsubq_s16(v492.val[2], v173);
      v176 = vsubq_s16(v492.val[3], v173);
      v530.val[0] = v468;
      v530.val[1] = v469;
      v530.val[2] = v470;
      v530.val[3].i64[0] = v498.i64[0];
      v530.val[3].i64[1] = v492.val[3].i64[1];
      v177 = vsubq_s16(v468, vqtbl4q_s8(v530, xmmword_29D2F10B0));
      v178 = vsubq_s16(v469, vqtbl4q_s8(v530, xmmword_29D2F10F0));
      v179 = vsubq_s16(v470, vqtbl4q_s8(v530, xmmword_29D2F1160));
      v180 = vsubq_s16(v498, vqtbl4q_s8(v530, xmmword_29D2F1100));
      v181 = v467.i64[0];
      v182 = v492.val[3].i64[1];
      v530.val[1] = vqtbl4q_s8(*v35.i8, xmmword_29D2F10C0);
      v183 = vsubq_s16(v35, vqtbl4q_s8(*v35.i8, xmmword_29D2F1170));
      v184 = vsubq_s16(v36, vqtbl4q_s8(*v35.i8, xmmword_29D2F1180));
      v185 = vsubq_s16(v37, vqtbl4q_s8(*v35.i8, xmmword_29D2F10B0));
      v186 = v466.i64[0];
      v187 = v492.val[3].i64[1];
      v530.val[0] = vsubq_s16(v43, vqtbl4q_s8(*v43.i8, xmmword_29D2F1170));
      v188 = vsubq_s16(v44, vqtbl4q_s8(*v43.i8, xmmword_29D2F1120));
      v189 = vsubq_s16(v45, vqtbl4q_s8(*v43.i8, xmmword_29D2F10B0));
      v190.i64[0] = v176.i64[0];
      v190.i64[1] = v174.i64[0];
      v191 = vsubq_s16(v466, vqtbl4q_s8(*v43.i8, xmmword_29D2F10C0));
      v174.i64[0] = v176.i64[1];
      v192 = vshlq_s16(v174, xmmword_29D2F12D0);
      v193 = vshlq_s16(v175, xmmword_29D2F12D0);
      v194 = vshlq_s16(v183, xmmword_29D2F12D0);
      v195 = vshlq_s16(v184, xmmword_29D2F12D0);
      v196 = vshlq_s16(vsubq_s16(v467, v530.val[1]), xmmword_29D2F12D0);
      v530.val[1] = vshlq_s16(v188, xmmword_29D2F12D0);
      v197 = vshlq_s16(v192, xmmword_29D2F12E0);
      v198 = vshlq_s16(vshlq_s16(vsubq_s16(v492.val[1], vqtbl4q_s8(v492, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v199 = vshlq_s16(v193, xmmword_29D2F12E0);
      v200 = vshlq_s16(vshlq_s16(v190, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v201 = vshlq_s16(vshlq_s16(v177, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v202 = vshlq_s16(vshlq_s16(v178, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v203 = vshlq_s16(vshlq_s16(v179, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v204 = vshlq_s16(vshlq_s16(v180, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v205 = vshlq_s16(v194, xmmword_29D2F12E0);
      v206 = vshlq_s16(v195, xmmword_29D2F12E0);
      v207 = vshlq_s16(vshlq_s16(v185, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v208 = vshlq_s16(v196, xmmword_29D2F12E0);
      v530.val[2] = vshlq_s16(vshlq_s16(v530.val[0], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v209 = vshlq_s16(v530.val[1], xmmword_29D2F12E0);
      v210 = vshlq_s16(vshlq_s16(v189, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v211 = vshlq_s16(vshlq_s16(v191, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v212 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v197, v198), v199), v200), xmmword_29D2F1150);
      v213 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v197, v198), v199), v200), xmmword_29D2F1150);
      v214 = vpmaxq_s16(v212, v212);
      v215 = vpminq_s16(v213, v213);
      v191.i64[0] = 0x8000800080008000;
      v191.i64[1] = 0x8000800080008000;
      v216 = vmaxq_s16(v214, v191);
      v177.i64[0] = 0x8000800080008000;
      v177.i64[1] = 0x8000800080008000;
      v217 = vminq_s16(v215, v177);
      v218 = vzip1q_s16(v214, v215);
      v196.i64[0] = 0x10001000100010;
      v196.i64[1] = 0x10001000100010;
      v219 = vbicq_s8(vsubq_s16(v196, vclsq_s16(v218)), vceqzq_s16(v218));
      v220 = vpmaxq_s16(v219, v219);
      v221 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v201, v202), v203), v204), xmmword_29D2F1150);
      v222 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v201, v202), v203), v204), xmmword_29D2F1150);
      v223 = vpmaxq_s16(v221, v221);
      v224 = vpminq_s16(v222, v222);
      v225 = vmaxq_s16(v216, v223);
      v226 = vminq_s16(v217, v224);
      v227 = vzip1q_s16(v223, v224);
      v228 = vbicq_s8(vsubq_s16(v196, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v230 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v205, v206), v207), v208), xmmword_29D2F1150);
      v231 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v205, v206), v207), v208), xmmword_29D2F1150);
      v232 = vpmaxq_s16(v230, v230);
      v233 = vpminq_s16(v231, v231);
      v234 = vmaxq_s16(v225, v232);
      v235 = vminq_s16(v226, v233);
      v236 = vzip1q_s16(v232, v233);
      v237 = vbicq_s8(vsubq_s16(v196, vclsq_s16(v236)), vceqzq_s16(v236));
      v238 = vpmaxq_s16(v237, v237);
      v496 = v530.val[2];
      v497 = v211;
      v499 = v210;
      v239 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v530.val[2], v209), v210), v211), xmmword_29D2F1150);
      v240 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v530.val[2], v209), v210), v211), xmmword_29D2F1150);
      v241 = vpmaxq_s16(v239, v239);
      v242 = vpminq_s16(v240, v240);
      v243 = vmaxq_s16(v234, v241);
      v244 = vminq_s16(v235, v242);
      v245 = vzip1q_s16(v241, v242);
      v246 = vbicq_s8(vsubq_s16(v196, vclsq_s16(v245)), vceqzq_s16(v245));
      v247 = vpmaxq_s16(v246, v246);
      v248 = vmaxq_s16(vmaxq_s16(v220, v229), vmaxq_s16(v238, v247));
      v494 = v243;
      v249 = vclzq_s16(vsubq_s16(v243, v244));
      v250 = vsubq_s16(v196, v249);
      v251 = vcgtq_s16(v248, v250);
      v252 = vminq_s16(v250, v248);
      v248.i64[0] = 0x3000300030003;
      v248.i64[1] = 0x3000300030003;
      v253 = vmaxq_s16(vminq_s16(vsubq_s16(v252, v220), v248), 0);
      v254 = vmaxq_s16(vminq_s16(vsubq_s16(v252, v229), v248), 0);
      v255 = vmaxq_s16(vminq_s16(vsubq_s16(v252, v238), v248), 0);
      v256 = vmaxq_s16(vminq_s16(vsubq_s16(v252, v247), v248), 0);
      v257 = vsubq_s16(v252, v253);
      v530.val[1] = vsubq_s16(v252, v254);
      v258 = vsubq_s16(v252, v256);
      v259 = vceqq_s16(vaddq_s16(v256, v255), vnegq_s16(vaddq_s16(v253, v254)));
      v254.i64[0] = 0x4000400040004;
      v254.i64[1] = 0x4000400040004;
      v260 = vbicq_s8(v254, v259);
      v256.i64[0] = 0x7000700070007;
      v256.i64[1] = 0x7000700070007;
      v488 = vsubq_s16(v252, v255);
      v490 = v530.val[1];
      v491 = v258;
      v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v252, v251), vaddq_s16(v260, v260)), v257, v256), vshlq_n_s16(vaddq_s16(vaddq_s16(v488, v530.val[1]), v258), 3uLL));
      v103 = v521;
      v262 = v522;
      v263.i64[0] = 0x2000200020002;
      v263.i64[1] = 0x2000200020002;
      v264 = vandq_s8(vceqq_s16(vandq_s8(v521, v248), v263), v196);
      v248.i64[0] = 0x8000800080008;
      v248.i64[1] = 0x8000800080008;
      v160 = v525;
      v159 = v526;
      v163 = v523;
      v164 = v524;
      v265 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v526, vceqzq_s16(vandq_s8(v521, v248))), vandq_s8(vaddq_s16(v103, v103), v248)), v264), v522, v256), vshlq_n_s16(vaddq_s16(vaddq_s16(v524, v523), v525), 3uLL)), v261).i64[0], 0);
      if (vaddvq_s16(v265))
      {
        v266.i64[0] = 0x9000900090009;
        v266.i64[1] = 0x9000900090009;
        v267 = vorrq_s8(vandq_s8(vceqzq_s16(v252), v263), vsubq_s16(vandq_s8(v251, v266), vmvnq_s8(v251)));
        v266.i64[0] = -1;
        v266.i64[1] = -1;
        v268.i64[0] = 0xF000F000F000FLL;
        v268.i64[1] = 0xF000F000F000FLL;
        v262 = vbslq_s8(v265, v257, v522);
        v163 = vbslq_s8(v265, v490, v523);
        v164 = vbslq_s8(v265, v488, v524);
        v160 = vbslq_s8(v265, v491, v525);
        v159 = vbslq_s8(v265, v252, v526);
        v103 = vbslq_s8(v265, vorrq_s8(v267, v260), v521);
        v519 = vbslq_s8(v265, v497, v519);
        v520 = vbslq_s8(v265, vextq_s8(v492.val[3], v492.val[3], 8uLL), v520);
        v500 = vbslq_s8(v265, v197, v500);
        v502 = vbslq_s8(v265, v198, v502);
        v504 = vbslq_s8(v265, v199, v504);
        v506 = vbslq_s8(v265, v200, v506);
        v508 = vbslq_s8(v265, v201, v508);
        v509 = vbslq_s8(v265, v202, v509);
        v510 = vbslq_s8(v265, v203, v510);
        v511 = vbslq_s8(v265, v204, v511);
        v512 = vbslq_s8(v265, v205, v512);
        v513 = vbslq_s8(v265, v206, v513);
        v514 = vbslq_s8(v265, v207, v514);
        v515 = vbslq_s8(v265, v208, v515);
        v516 = vbslq_s8(v265, v496, v516);
        v517 = vbslq_s8(v265, v209, v517);
        v518 = vbslq_s8(v265, v499, v518);
        v527 = vbslq_s8(v265, v244, v527);
        v528 = vbslq_s8(v265, v494, v528);
        v529 = vbslq_s8(v265, vandq_s8(vsubq_s16(vshlq_s16(v266, vsubq_s16(v268, v249)), v244), v251), v529);
        v522 = v262;
        v523 = v163;
        v524 = v164;
        v525 = v160;
        v526 = v159;
        v521 = v103;
      }

      v162 = v262;
    }

    v269 = vandq_s8(v529, vceqq_s16(v159, v162));
    v501 = vaddq_s16(v269, v500);
    v503 = vaddq_s16(v502, v269);
    v505 = vaddq_s16(v504, v269);
    v507 = vaddq_s16(v506, v269);
    v270 = vandq_s8(v529, vceqq_s16(v159, v163));
    v508 = vaddq_s16(v508, v270);
    v509 = vaddq_s16(v509, v270);
    v510 = vaddq_s16(v510, v270);
    v511 = vaddq_s16(v511, v270);
    v271 = vandq_s8(v529, vceqq_s16(v159, v164));
    v512 = vaddq_s16(v512, v271);
    v513 = vaddq_s16(v513, v271);
    v514 = vaddq_s16(v514, v271);
    v515 = vaddq_s16(v515, v271);
    v272 = vandq_s8(v529, vceqq_s16(v159, v160));
    v516 = vaddq_s16(v516, v272);
    v517 = vaddq_s16(v517, v272);
    v518 = vaddq_s16(v518, v272);
    v519 = vaddq_s16(v519, v272);
    v272.i64[0] = 0x8000800080008;
    v272.i64[1] = 0x8000800080008;
    v273.i64[0] = 0x3000300030003;
    v273.i64[1] = 0x3000300030003;
    v274.i64[0] = 0x2000200020002;
    v274.i64[1] = 0x2000200020002;
    v275 = vceqq_s16(vandq_s8(v103, v273), v274);
    v274.i64[0] = 0x10001000100010;
    v274.i64[1] = 0x10001000100010;
    v276 = vandq_s8(v275, v274);
    v274.i64[0] = 0x7000700070007;
    v274.i64[1] = 0x7000700070007;
    v277 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v159, vceqzq_s16(vandq_s8(v103, v272))), vandq_s8(vaddq_s16(v103, v103), v272)), v276), v162, v274), vshlq_n_s16(vaddq_s16(vaddq_s16(v164, v163), v160), 3uLL));
    v278 = vpaddq_s16(v277, v277);
    if ((vpaddq_s16(v278, v278).i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v279 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v280 = 8 * (a1 & 7);
      if (v280)
      {
        v281 = *v279 & ~(-1 << v280);
      }

      else
      {
        v281 = 0;
      }

      *a2 = 0;
      v283 = v520.i64[0];
      v284 = vmovl_s16(vceqz_s16(*v159.i8));
      v285.i64[0] = v284.i32[0];
      v285.i64[1] = v284.i32[1];
      v286 = v285;
      v285.i64[0] = v284.i32[2];
      v285.i64[1] = v284.i32[3];
      v287 = v285;
      v288 = vand_s8(vadd_s16(*v159.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v288.i16[3] = vbic_s8(0x1000100010001, *&v159).i16[3];
      v289 = vshlq_u32(vmovl_u16(v288), xmmword_29D2F12F0);
      v285.i64[0] = v289.u32[0];
      v285.i64[1] = v289.u32[1];
      v290 = v285;
      v285.i64[0] = v289.u32[2];
      v285.i64[1] = v289.u32[3];
      v291 = vorrq_s8(vbicq_s8(v290, v286), vbicq_s8(v285, v287));
      v292 = *&vorr_s8(*v291.i8, *&vextq_s8(v291, v291, 8uLL)) | v103.i8[0] & 0x1F | (32 * (v103.i8[2] & 0x1F)) & 0x83FF | ((v103.i8[4] & 0x1F) << 10) | ((v103.i8[6] & 0xF) << 15);
      v293 = (v292 << v280) | v281;
      if (v280 >= 0x20)
      {
        *v279 = v293;
        v293 = v292 >> (-8 * (a1 & 7u));
      }

      v294 = v283 & 0x3FF | ((WORD1(v283) & 0x3FF) << 10) | ((WORD2(v283) & 0x3FF) << 20) | ((BYTE6(v283) & 3) << 30);
      v295 = (v280 + 32) & 0x38;
      v296 = v293 | (v294 << v295);
      if (v295 >= 0x20)
      {
        *(v279 + (((v280 + 32) >> 3) & 8)) = v296;
        v296 = v294 >> -v295;
      }

      v297 = vsubq_s16(v526, v522);
      v298 = vsubq_s16(v526, v523);
      v299 = vsubq_s16(v526, v524);
      v300 = vsubq_s16(v526, v525);
      *v297.i8 = vqmovn_u16(v297);
      *v298.i8 = vqmovn_u16(v298);
      *v299.i8 = vqmovn_u16(v299);
      *v300.i8 = vqmovn_u16(v300);
      v301 = vtrn1q_s8(v297, v298);
      v302 = vtrn2q_s8(v297, v298);
      v303 = vtrn1q_s8(v299, v300);
      v304 = vtrn2q_s8(v299, v300);
      v305 = vzip1q_s16(v302, v304);
      v306 = vtrn2q_s16(v302, v304);
      v302.i64[0] = vzip1q_s32(vzip1q_s16(v301, v303), v305).u64[0];
      v306.i64[0] = vzip1q_s32(vtrn2q_s16(v301, v303), v306).u64[0];
      v299.i64[0] = 0x202020202020202;
      v299.i64[1] = 0x202020202020202;
      v307 = vandq_s8(vmovl_s16(vtst_s16(*v521.i8, 0x4000400040004)), v299);
      v299.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v299.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v301.i64[0] = -1;
      v301.i64[1] = -1;
      v308 = vshlq_u8(v301, vorrq_s8(v307, v299));
      v309 = vmovl_u8(vand_s8(*v308.i8, *v302.i8));
      v310 = vmovl_u8(vand_s8(*&vextq_s8(v308, v308, 8uLL), *v306.i8));
      v311 = vmovl_u8(*v307.i8);
      v312 = vmovl_high_u8(v307);
      v313 = vpaddq_s16(vshlq_u16(v309, vtrn1q_s16(0, v311)), vshlq_u16(v310, vtrn1q_s16(0, v312)));
      v314 = vpaddq_s16(v311, v312);
      v315 = vmovl_u16(*v314.i8);
      v316 = vmovl_high_u16(v314);
      v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v313.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v313), vtrn1q_s32(0, v316)));
      v318 = vpaddq_s32(v315, v316);
      v319.i64[0] = v317.u32[0];
      v319.i64[1] = v317.u32[1];
      v320 = v319;
      v319.i64[0] = v317.u32[2];
      v319.i64[1] = v317.u32[3];
      v321 = v319;
      v319.i64[0] = v318.u32[0];
      v319.i64[1] = v318.u32[1];
      v322 = v319;
      v319.i64[0] = v318.u32[2];
      v319.i64[1] = v318.u32[3];
      v323 = vpaddq_s64(vshlq_u64(v320, vzip1q_s64(0, v322)), vshlq_u64(v321, vzip1q_s64(0, v319)));
      v324 = vpaddq_s64(v322, v319);
      v325 = (v323.i64[0] << v280) | v296;
      if (v324.i64[0] + v280 >= 0x40)
      {
        v279[1] = v325;
        v325 = v323.i64[0] >> (-8 * (a1 & 7u));
        if (!v280)
        {
          v325 = 0;
        }
      }

      v326 = v324.i64[0] + (v280 | 0x40);
      v327 = v325 | (v323.i64[1] << v326);
      if ((v326 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v279 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v323.i64[1] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = v326 + v324.i64[1];
      v329.i64[0] = 0x8000800080008;
      v329.i64[1] = 0x8000800080008;
      v330.i64[0] = -1;
      v330.i64[1] = -1;
      v331 = vandq_s8(vextq_s8(vtstq_s16(v521, v329), 0, 8uLL), v526);
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333 = vandq_s8(vshlq_u16(v330, vaddq_s16(v331, v332)), v529);
      v334 = vmovl_u16(*v331.i8);
      v335 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v334)), vmovl_high_u16(v333));
      v336 = vpaddq_s32(v334, vmovl_high_u16(v331));
      v337.i64[0] = v335.u32[0];
      v337.i64[1] = v335.u32[1];
      v338 = v337;
      v337.i64[0] = v335.u32[2];
      v337.i64[1] = v335.u32[3];
      v339 = v337;
      v337.i64[0] = v336.u32[0];
      v337.i64[1] = v336.u32[1];
      v340 = v337;
      v337.i64[0] = v336.u32[2];
      v337.i64[1] = v336.u32[3];
      v341 = vpaddq_s64(vshlq_u64(v338, vzip1q_s64(0, v340)), vshlq_u64(v339, vzip1q_s64(0, v337)));
      v342 = vpaddq_s64(v340, v337);
      v343 = (v341.i64[0] << v328) | v327;
      if (v342.i64[0] + (v328 & 0x3F) >= 0x40)
      {
        *(v279 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v341.i64[0] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v343 = 0;
        }
      }

      v344 = v342.i64[0] + v328;
      v345 = v343 | (v341.i64[1] << v344);
      if ((v344 & 0x3F) + v342.i64[1] >= 0x40)
      {
        *(v279 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v341.i64[1] >> -(v344 & 0x3F);
        if ((v344 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = v344 + v342.i64[1];
      v347 = vextq_s8(0, v522, 8uLL);
      v348.i64[0] = 0xF000F000F000FLL;
      v348.i64[1] = 0xF000F000F000FLL;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v347, v348)), v501);
      v351 = vmovl_u16(*v347.i8);
      v352 = vmovl_high_u16(v347);
      v353 = vpaddq_s32(vmovl_u16(*v350.i8), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v352)));
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
      v361 = (v359.i64[0] << v346) | v345;
      if (v360.i64[0] + (v346 & 0x3F) >= 0x40)
      {
        *(v279 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v359.i64[0] >> -(v346 & 0x3F);
        if ((v346 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[0] + v346;
      v363 = v361 | (v359.i64[1] << v362);
      if ((v362 & 0x3F) + v360.i64[1] >= 0x40)
      {
        *(v279 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v359.i64[1] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362 + v360.i64[1];
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v366.i64[0] = -1;
      v366.i64[1] = -1;
      v367 = vandq_s8(vshlq_u16(v366, vaddq_s16(v522, v365)), v503);
      v368 = vmovl_u16(*v522.i8);
      v369 = vmovl_high_u16(v522);
      v370 = vpaddq_s32(vshlq_u32(vmovl_u16(*v367.i8), vtrn1q_s32(0, v368)), vshlq_u32(vmovl_high_u16(v367), vtrn1q_s32(0, v369)));
      v371 = vpaddq_s32(v368, v369);
      v372.i64[0] = v370.u32[0];
      v372.i64[1] = v370.u32[1];
      v373 = v372;
      v372.i64[0] = v370.u32[2];
      v372.i64[1] = v370.u32[3];
      v374 = v372;
      v372.i64[0] = v371.u32[0];
      v372.i64[1] = v371.u32[1];
      v375 = v372;
      v372.i64[0] = v371.u32[2];
      v372.i64[1] = v371.u32[3];
      v376 = vpaddq_s64(vshlq_u64(v373, vzip1q_s64(0, v375)), vshlq_u64(v374, vzip1q_s64(0, v372)));
      v377 = vpaddq_s64(v375, v372);
      v378 = (v376.i64[0] << v364) | v363;
      if (v377.i64[0] + (v364 & 0x3F) >= 0x40)
      {
        *(v279 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v376.i64[0] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377.i64[0] + v364;
      v380 = v378 | (v376.i64[1] << v379);
      if ((v379 & 0x3F) + v377.i64[1] >= 0x40)
      {
        *(v279 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v376.i64[1] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = v379 + v377.i64[1];
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v383.i64[0] = -1;
      v383.i64[1] = -1;
      v384 = vandq_s8(vshlq_u16(v383, vaddq_s16(v522, v382)), v505);
      v385 = vmovl_u16(*v522.i8);
      v386 = vmovl_high_u16(v522);
      v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), vtrn1q_s32(0, v385)), vshlq_u32(vmovl_high_u16(v384), vtrn1q_s32(0, v386)));
      v388 = vpaddq_s32(v385, v386);
      v389.i64[0] = v387.u32[0];
      v389.i64[1] = v387.u32[1];
      v390 = v389;
      v389.i64[0] = v387.u32[2];
      v389.i64[1] = v387.u32[3];
      v391 = v389;
      v389.i64[0] = v388.u32[0];
      v389.i64[1] = v388.u32[1];
      v392 = v389;
      v389.i64[0] = v388.u32[2];
      v389.i64[1] = v388.u32[3];
      v393 = vpaddq_s64(vshlq_u64(v390, vzip1q_s64(0, v392)), vshlq_u64(v391, vzip1q_s64(0, v389)));
      v394 = vpaddq_s64(v392, v389);
      v395 = (v393.i64[0] << v381) | v380;
      if (v394.i64[0] + (v381 & 0x3F) >= 0x40)
      {
        *(v279 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
        v395 = v393.i64[0] >> -(v381 & 0x3F);
        if ((v381 & 0x3F) == 0)
        {
          v395 = 0;
        }
      }

      v396 = v394.i64[0] + v381;
      v397 = v395 | (v393.i64[1] << v396);
      if ((v396 & 0x3F) + v394.i64[1] >= 0x40)
      {
        *(v279 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v393.i64[1] >> -(v396 & 0x3F);
        if ((v396 & 0x3F) == 0)
        {
          v397 = 0;
        }
      }

      v398 = v396 + v394.i64[1];
      v399.i64[0] = 0xF000F000F000FLL;
      v399.i64[1] = 0xF000F000F000FLL;
      v400.i64[0] = -1;
      v400.i64[1] = -1;
      v401 = vandq_s8(vshlq_u16(v400, vaddq_s16(v522, v399)), v507);
      v402 = vmovl_u16(*v522.i8);
      v403 = vmovl_high_u16(v522);
      v404 = vpaddq_s32(vshlq_u32(vmovl_u16(*v401.i8), vtrn1q_s32(0, v402)), vshlq_u32(vmovl_high_u16(v401), vtrn1q_s32(0, v403)));
      v405 = vpaddq_s32(v402, v403);
      v406.i64[0] = v404.u32[0];
      v406.i64[1] = v404.u32[1];
      v407 = v406;
      v406.i64[0] = v404.u32[2];
      v406.i64[1] = v404.u32[3];
      v408 = v406;
      v406.i64[0] = v405.u32[0];
      v406.i64[1] = v405.u32[1];
      v409 = v406;
      v406.i64[0] = v405.u32[2];
      v406.i64[1] = v405.u32[3];
      v410 = vpaddq_s64(vshlq_u64(v407, vzip1q_s64(0, v409)), vshlq_u64(v408, vzip1q_s64(0, v406)));
      v411 = vpaddq_s64(v409, v406);
      v412 = (v410.i64[0] << v398) | v397;
      if (v411.i64[0] + (v398 & 0x3F) >= 0x40)
      {
        *(v279 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        v412 = v410.i64[0] >> -(v398 & 0x3F);
        if ((v398 & 0x3F) == 0)
        {
          v412 = 0;
        }
      }

      v413 = v411.i64[1];
      v414 = v411.i64[0] + v398;
      v415 = (v411.i64[0] + v398) & 0x3F;
      v416 = v412 | (v410.i64[1] << v414);
      if ((v415 + v411.i64[1]) >= 0x40)
      {
        *(v279 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        v416 = v410.i64[1] >> -v415;
        if (!v415)
        {
          v416 = 0;
        }
      }

      v417 = 0;
      v418.i64[0] = 0xF000F000F000FLL;
      v418.i64[1] = 0xF000F000F000FLL;
      v419.i64[0] = -1;
      v419.i64[1] = -1;
      v420 = v414 + v413;
      do
      {
        v421 = vandq_s8(vshlq_u16(v419, vaddq_s16(v523, v418)), *(&v508 + v417));
        v422 = vmovl_u16(*v523.i8);
        v423 = vmovl_high_u16(v523);
        v424 = vpaddq_s32(vshlq_u32(vmovl_u16(*v421.i8), vtrn1q_s32(0, v422)), vshlq_u32(vmovl_high_u16(v421), vtrn1q_s32(0, v423)));
        v425 = vpaddq_s32(v422, v423);
        v426.i64[0] = v424.u32[0];
        v426.i64[1] = v424.u32[1];
        v427 = v426;
        v426.i64[0] = v424.u32[2];
        v426.i64[1] = v424.u32[3];
        v428 = v426;
        v426.i64[0] = v425.u32[0];
        v426.i64[1] = v425.u32[1];
        v429 = v426;
        v426.i64[0] = v425.u32[2];
        v426.i64[1] = v425.u32[3];
        v430 = vpaddq_s64(vshlq_u64(v427, vzip1q_s64(0, v429)), vshlq_u64(v428, vzip1q_s64(0, v426)));
        v431 = vpaddq_s64(v429, v426);
        v432 = (v430.i64[0] << v420) | v416;
        if (v431.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v279 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
          v432 = v430.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v432 = 0;
          }
        }

        v433 = v431.i64[0] + v420;
        v416 = v432 | (v430.i64[1] << v433);
        if ((v433 & 0x3F) + v431.i64[1] >= 0x40)
        {
          *(v279 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v430.i64[1] >> -(v433 & 0x3F);
          if ((v433 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v433 + v431.i64[1];
        v417 += 16;
      }

      while (v417 != 64);
      v434 = 0;
      v435.i64[0] = 0xF000F000F000FLL;
      v435.i64[1] = 0xF000F000F000FLL;
      v436.i64[0] = -1;
      v436.i64[1] = -1;
      do
      {
        v437 = vandq_s8(vshlq_u16(v436, vaddq_s16(v524, v435)), *(&v512 + v434));
        v438 = vmovl_u16(*v524.i8);
        v439 = vmovl_high_u16(v524);
        v440 = vpaddq_s32(vshlq_u32(vmovl_u16(*v437.i8), vtrn1q_s32(0, v438)), vshlq_u32(vmovl_high_u16(v437), vtrn1q_s32(0, v439)));
        v441 = vpaddq_s32(v438, v439);
        v442.i64[0] = v440.u32[0];
        v442.i64[1] = v440.u32[1];
        v443 = v442;
        v442.i64[0] = v440.u32[2];
        v442.i64[1] = v440.u32[3];
        v444 = v442;
        v442.i64[0] = v441.u32[0];
        v442.i64[1] = v441.u32[1];
        v445 = v442;
        v442.i64[0] = v441.u32[2];
        v442.i64[1] = v441.u32[3];
        v446 = vpaddq_s64(vshlq_u64(v443, vzip1q_s64(0, v445)), vshlq_u64(v444, vzip1q_s64(0, v442)));
        v447 = vpaddq_s64(v445, v442);
        v448 = (v446.i64[0] << v420) | v416;
        if (v447.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v279 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v448;
          v448 = v446.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v448 = 0;
          }
        }

        v449 = v447.i64[0] + v420;
        v416 = v448 | (v446.i64[1] << v449);
        if ((v449 & 0x3F) + v447.i64[1] >= 0x40)
        {
          *(v279 + ((v449 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v446.i64[1] >> -(v449 & 0x3F);
          if ((v449 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v449 + v447.i64[1];
        v434 += 16;
      }

      while (v434 != 64);
      v450 = 0;
      v451.i64[0] = 0xF000F000F000FLL;
      v451.i64[1] = 0xF000F000F000FLL;
      v452.i64[0] = -1;
      v452.i64[1] = -1;
      do
      {
        v453 = vandq_s8(vshlq_u16(v452, vaddq_s16(v525, v451)), *(&v516 + v450));
        v454 = vmovl_u16(*v525.i8);
        v455 = vmovl_high_u16(v525);
        v456 = vpaddq_s32(vshlq_u32(vmovl_u16(*v453.i8), vtrn1q_s32(0, v454)), vshlq_u32(vmovl_high_u16(v453), vtrn1q_s32(0, v455)));
        v457 = vpaddq_s32(v454, v455);
        v458.i64[0] = v456.u32[0];
        v458.i64[1] = v456.u32[1];
        v459 = v458;
        v458.i64[0] = v456.u32[2];
        v458.i64[1] = v456.u32[3];
        v460 = v458;
        v458.i64[0] = v457.u32[0];
        v458.i64[1] = v457.u32[1];
        v461 = v458;
        v458.i64[0] = v457.u32[2];
        v458.i64[1] = v457.u32[3];
        v462 = vpaddq_s64(vshlq_u64(v459, vzip1q_s64(0, v461)), vshlq_u64(v460, vzip1q_s64(0, v458)));
        v463 = vpaddq_s64(v461, v458);
        v464 = (v462.i64[0] << v420) | v416;
        if (v463.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v279 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
          v464 = v462.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v464 = 0;
          }
        }

        v465 = v463.i64[0] + v420;
        v416 = v464 | (v462.i64[1] << v465);
        if ((v465 & 0x3F) + v463.i64[1] >= 0x40)
        {
          *(v279 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v462.i64[1] >> -(v465 & 0x3F);
          if ((v465 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v465 + v463.i64[1];
        v450 += 16;
      }

      while (v450 != 64);
      if ((v420 & 0x3F) != 0)
      {
        *(v279 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      }

      result = (v420 - v280 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v102 = *MEMORY[0x29EDCA608];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
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
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v13 = 0;
      v14 = (a3 + i * a4);
      v15 = &v70 + 16 * (i & 0x3F);
      v16 = &v70 + 4 * ((4 * i) | 1u);
      v17 = &v70 + 4 * ((4 * i) | 2u);
      v18 = &v70 + 4 * ((4 * i) | 3u);
      do
      {
        v19 = *v14;
        v20 = v14[1];
        v21 = v19 & 0x3FF | (((v19 >> 10) & 0x3FF) << 32);
        v22 = (4 * v19) & 0x300000000 | (v19 >> 20) & 0x3FF;
        v23 = 2 * (v13 & 0x7F);
        v24 = &v15[v23];
        *v24 = v21;
        v24[1] = v22;
        v25 = v20 & 0x3FF | (((v20 >> 10) & 0x3FF) << 32);
        v26 = (4 * v20) & 0x300000000 | (v20 >> 20) & 0x3FF;
        v27 = &v16[v23];
        *v27 = v25;
        v27[1] = v26;
        v28 = v14[2];
        v29 = v14[3];
        v30 = v28 & 0x3FF | (((v28 >> 10) & 0x3FF) << 32);
        v31 = (4 * v28) & 0x300000000 | (v28 >> 20) & 0x3FF;
        v32 = (2 * v13) | 1u;
        v33 = &v15[v32];
        *v33 = v30;
        v33[1] = v31;
        v34 = v29 & 0x3FF | (((v29 >> 10) & 0x3FF) << 32);
        v35 = (4 * v29) & 0x300000000 | (v29 >> 20) & 0x3FF;
        v36 = &v16[v32];
        *v36 = v34;
        v36[1] = v35;
        v37 = v14[4];
        v38 = v14[5];
        v39 = v37 & 0x3FF | (((v37 >> 10) & 0x3FF) << 32);
        v40 = (4 * v37) & 0x300000000 | (v37 >> 20) & 0x3FF;
        v41 = &v17[v23];
        *v41 = v39;
        v41[1] = v40;
        v42 = &v18[v23];
        *v42 = v38 & 0x3FF | (((v38 >> 10) & 0x3FF) << 32);
        v42[1] = (4 * v38) & 0x300000000 | (v38 >> 20) & 0x3FF;
        v43 = v14[6];
        v44 = v14[7];
        v45 = &v17[v32];
        *v45 = v43 & 0x3FF | (((v43 >> 10) & 0x3FF) << 32);
        v45[1] = (4 * v43) & 0x300000000 | (v43 >> 20) & 0x3FF;
        v46 = &v18[v32];
        *v46 = v44 & 0x3FF | (((v44 >> 10) & 0x3FF) << 32);
        v46[1] = (4 * v44) & 0x300000000 | (v44 >> 20) & 0x3FF;
        v14 += 8;
        ++v13;
      }

      while (a5 != v13);
    }
  }

  v62 = v70;
  v63 = v74;
  v64 = v71;
  v65 = v75;
  v66 = v78;
  v67 = v82;
  v47 = 2 * (a6 & 0x7F);
  v48 = 4 * (a5 & 0x3F);
  v68 = v79;
  v69 = v83;
  v49 = 4 * (a5 != 0);
  v50 = 2 * (a6 != 0);
  v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v62, a7, v49, v50);
  v62 = v72;
  v63 = v76;
  v64 = v73;
  v65 = v77;
  v66 = v80;
  v67 = v84;
  v52 = v47 - 2;
  if (v47 < 2)
  {
    v52 = 0;
  }

  if (a6 >= 2)
  {
    v53 = 2;
  }

  else
  {
    v53 = v52;
  }

  v68 = v81;
  v69 = v85;
  v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v62, a7, v49, v53);
  v62 = v86;
  v63 = v90;
  v64 = v87;
  v65 = v91;
  v66 = v94;
  v67 = v98;
  v55 = v48 - 4;
  if (v48 < 4)
  {
    v55 = 0;
  }

  if (a5 >= 2)
  {
    v56 = 4;
  }

  else
  {
    v56 = v55;
  }

  v68 = v95;
  v69 = v99;
  v57 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v62, a7, v56, v50);
  v62 = v88;
  v63 = v92;
  v64 = v89;
  v65 = v93;
  v66 = v96;
  v67 = v100;
  v68 = v97;
  v69 = v101;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v62, a7, v56, v53);
  if (v57)
  {
    v59 = 4;
  }

  else
  {
    v59 = 0;
  }

  if (v54)
  {
    v60 = 2;
  }

  else
  {
    v60 = 0;
  }

  if (result)
  {
    v61 = -8;
  }

  else
  {
    v61 = -16;
  }

  *a2 = v61 | v59 | v51 | v60;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v459 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v6 = a4;
    if (a4 < 0xF0)
    {
      if (a4 == 127)
      {
        v36 = *(a3 + 16);
        v37 = *(a3 + 32);
        v38 = *(a3 + 48);
        v39 = *(a3 + 64);
        v40 = *(a3 + 80);
        v41 = *(a3 + 96);
        v42 = *(a3 + 112);
        *a1 = *a3;
        *(a1 + 16) = v36;
        v43 = (a1 + a2);
        *(a1 + 32) = v37;
        *(a1 + 48) = v38;
        *v43 = v39;
        v43[1] = v40;
        v44 = (a1 + a2 + 32);
        *v44 = v41;
        v44[1] = v42;
        return 128;
      }

      else if (a4 == 3)
      {
        v12 = vld1q_dup_f32(a3);
        *a1 = v12;
        *(a1 + 16) = v12;
        *(a1 + 32) = v12;
        *(a1 + 48) = v12;
        v13 = (a1 + a2);
        *v13 = v12;
        v13[1] = v12;
        v13[2] = v12;
        v13[3] = v12;
        return 4;
      }

      else
      {
        v422.i8[8] = 0;
        v422.i64[0] = (8 * (a3 & 7)) | 0x200;
        v421.i64[0] = 8 * (a3 & 7);
        v421.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
        result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v446, v451, &v445, &v421, a4);
        v47.i64[0] = 0x3000300030003;
        v47.i64[1] = 0x3000300030003;
        v48 = v446;
        v49 = vandq_s8(v446, v47);
        v50 = vbicq_s8(v451[0], vceqq_s16(v49, v47));
        v451[0] = v50;
        v447 = v50;
        v448 = v50;
        v449 = v50;
        v450 = v50;
        v51.i64[0] = 0x202020202020202;
        v51.i64[1] = 0x202020202020202;
        v52 = vandq_s8(vmovl_s16(vtst_s16(*v446.i8, 0x4000400040004)), v51);
        v53 = v421.i64[0];
        if (vmaxvq_s8(v52) < 1)
        {
          v68.i64[0] = -1;
          v68.i64[1] = -1;
          v69.i64[0] = -1;
          v69.i64[1] = -1;
          v70.i64[0] = -1;
          v70.i64[1] = -1;
          v71.i64[0] = -1;
          v71.i64[1] = -1;
          v64 = a2;
        }

        else
        {
          v54 = vmovl_u8(*&vpaddq_s8(v52, v52));
          v55 = vmovl_u16(*&vpaddq_s16(v54, v54));
          v56 = vpaddq_s32(v55, v55).u64[0];
          v57.i64[0] = v56;
          v57.i64[1] = HIDWORD(v56);
          v58 = v57;
          v59 = vaddvq_s64(v57);
          v60 = v59;
          v61 = v421.i64[0] + v59;
          if (v422.i64[0])
          {
            _CF = v422.i64[0] >= v61;
          }

          else
          {
            _CF = 1;
          }

          v63 = _CF;
          v64 = a2;
          if (v59 <= 0x80 && (v63 & 1) != 0)
          {
            v46.i64[0] = 63;
            v65 = (v421.i64[1] + 8 * (v421.i64[0] >> 6));
            v66 = vaddq_s64(vdupq_lane_s64(vandq_s8(v421.u64[0], v46).i64[0], 0), vzip1q_s64(0, v58));
            v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v65, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v66)), vshlq_u64(vdupq_lane_s64(v65->i64[0], 0), vnegq_s64(v66)));
            if ((v421.i8[0] & 0x3F) + v60 >= 0x81)
            {
              v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v66)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v66))), v67);
            }

            v53 = v61;
          }

          else
          {
            v422.i8[8] = 1;
            v67 = 0uLL;
          }

          v72 = vzip1_s32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
          v73.i64[0] = v72.u32[0];
          v73.i64[1] = v72.u32[1];
          v74 = vshlq_u64(v67, vnegq_s64(v73));
          v75 = vuzp1q_s32(vzip1q_s64(v67, v74), vzip2q_s64(v67, v74));
          v76 = vshlq_u32(v75, vnegq_s32((*&v54 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
          v77 = vuzp1q_s16(vzip1q_s32(v75, v76), vzip2q_s32(v75, v76));
          v78 = vshlq_u16(v77, vnegq_s16((*&v52 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
          v79 = vuzp1q_s8(vzip1q_s16(v77, v78), vzip2q_s16(v77, v78));
          v78.i64[0] = 0x101010101010101;
          v78.i64[1] = 0x101010101010101;
          v80 = vshlq_s8(v78, v52);
          v78.i64[0] = -1;
          v78.i64[1] = -1;
          v81 = vqtbl1q_s8(vandq_s8(vaddq_s8(v80, v78), v79), xmmword_29D2F0F70);
          *v79.i8 = vdup_lane_s32(*v81.i8, 0);
          *v78.i8 = vdup_lane_s32(*v81.i8, 1);
          v82 = vdupq_laneq_s32(v81, 2).u64[0];
          v81.i64[0] = vdupq_laneq_s32(v81, 3).u64[0];
          v447 = vsubw_s8(v447, *v79.i8);
          v448 = vsubw_s8(v448, *v78.i8);
          v449 = vsubw_s8(v449, v82);
          v450 = vsubw_s8(v450, *v81.i8);
          v71 = vmovl_s8(vceqz_s8(*v79.i8));
          v70 = vmovl_s8(vceqz_s8(*v78.i8));
          v69 = vmovl_s8(vceqz_s8(v82));
          v68 = vmovl_s8(vceqz_s8(*v81.i8));
        }

        v83.i64[0] = 0x8000800080008;
        v83.i64[1] = 0x8000800080008;
        v84 = 0uLL;
        v85 = vandq_s8(vextq_s8(vtstq_s16(v446, v83), 0, 8uLL), v50);
        v86 = vmovl_u16(*&vpaddq_s16(v85, v85));
        v87 = vpaddq_s32(v86, v86).u64[0];
        v88.i64[0] = v87;
        v88.i64[1] = HIDWORD(v87);
        v89 = v88;
        v90 = vaddvq_s64(v88);
        if (v422.i64[0])
        {
          v91 = v422.i64[0] >= v53 + v90;
        }

        else
        {
          v91 = 1;
        }

        v92 = v91;
        if (v90 <= 0x80 && (v92 & 1) != 0)
        {
          v93 = vaddq_s64(vdupq_n_s64(v53 & 0x3F), vzip1q_s64(0, v89));
          v94 = (v421.i64[1] + 8 * (v53 >> 6));
          v84 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v94, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v93)), vshlq_u64(vdupq_lane_s64(v94->i64[0], 0), vnegq_s64(v93)));
          if ((v53 & 0x3F) + v90 >= 0x81)
          {
            v84 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v94[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v93)), vshlq_u64(vdupq_laneq_s64(v94[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v93))), v84);
          }

          v53 += v90;
        }

        else
        {
          v422.i8[8] = 1;
        }

        v95 = vzip1_s32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
        v96.i64[0] = v95.u32[0];
        v96.i64[1] = v95.u32[1];
        v97 = vshlq_u64(v84, vnegq_s64(v96));
        v98 = vuzp1q_s32(vzip1q_s64(v84, v97), vzip2q_s64(v84, v97));
        v99.i64[0] = 0xFFFF0000FFFFLL;
        v99.i64[1] = 0xFFFF0000FFFFLL;
        v100 = vshlq_u32(v98, vnegq_s32(vandq_s8(v85, v99)));
        v101 = vuzp1q_s16(vzip1q_s32(v98, v100), vzip2q_s32(v98, v100));
        v100.i64[0] = 0xF000F000F000FLL;
        v100.i64[1] = 0xF000F000F000FLL;
        v102.i64[0] = 0x10001000100010;
        v102.i64[1] = 0x10001000100010;
        v103 = vshlq_s16(vshlq_s16(v101, vsubq_s16(v102, v85)), vaddq_s16(v85, v100));
        v452 = v103;
        v104 = v446.i8[0] & 3;
        if (v104 == 2)
        {
          if (v422.i64[0])
          {
            v105 = v53 + 8;
            v106 = v53 + 16;
            if (v422.i64[0] >= v53 + 8)
            {
              v53 += 8;
            }

            else
            {
              v106 = v53 + 8;
            }

            if (v422.i64[0] >= v106)
            {
              v53 = v106;
            }

            if (v422.i64[0] < v105 || v422.i64[0] < v106)
            {
              v422.i8[8] = 1;
            }
          }

          else
          {
            v53 += 16;
          }
        }

        v107 = 0uLL;
        v108 = vextq_s8(0, v447, 8uLL);
        v109 = vmovl_u16(*&vpaddq_s16(v108, v108));
        v110 = vpaddq_s32(v109, v109).u64[0];
        v111.i64[0] = v110;
        v111.i64[1] = HIDWORD(v110);
        v112 = v111;
        v113 = vaddvq_s64(v111);
        v114 = v53 + v113;
        if (v422.i64[0])
        {
          v115 = v422.i64[0] >= v114;
        }

        else
        {
          v115 = 1;
        }

        v116 = v115;
        if (v113 <= 0x80 && (v116 & 1) != 0)
        {
          v117 = v53 & 0x3F;
          v118 = vaddq_s64(vdupq_n_s64(v117), vzip1q_s64(0, v112));
          v119 = v421.i64[1];
          v120 = (v421.i64[1] + 8 * (v53 >> 6));
          v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v118)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v118)));
          if (v117 + v113 >= 0x81)
          {
            v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v118)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v118))), v107);
          }

          v121 = v422.i8[8];
          v53 = v114;
        }

        else
        {
          v121 = 1;
          v119 = v421.i64[1];
        }

        v122 = vzip1_s32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
        v123.i64[0] = v122.u32[0];
        v123.i64[1] = v122.u32[1];
        v124 = vshlq_u64(v107, vnegq_s64(v123));
        v125 = vuzp1q_s32(vzip1q_s64(v107, v124), vzip2q_s64(v107, v124));
        v126.i64[0] = 0xFFFF0000FFFFLL;
        v126.i64[1] = 0xFFFF0000FFFFLL;
        v127 = vshlq_u32(v125, vnegq_s32(vandq_s8(v108, v126)));
        v128.i64[0] = 0xF000F000F000FLL;
        v128.i64[1] = 0xF000F000F000FLL;
        v129.i64[0] = 0x10001000100010;
        v129.i64[1] = 0x10001000100010;
        v130 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v125, v127), vzip2q_s32(v125, v127)), vsubq_s16(v129, v108)), vaddq_s16(v108, v128));
        v429 = v130;
        v131 = vmovl_u16(*&vpaddq_s16(v447, v447));
        v125.i64[0] = vpaddq_s32(v131, v131).u64[0];
        v123.i64[0] = v125.u32[0];
        v123.i64[1] = v125.u32[1];
        v132 = v123;
        v133 = vaddvq_s64(v123);
        v134 = v53 + v133;
        if (v422.i64[0])
        {
          v135 = v422.i64[0] >= v134;
        }

        else
        {
          v135 = 1;
        }

        v136 = v135;
        v137 = 0uLL;
        if (v133 <= 0x80 && v136)
        {
          v138 = v53 & 0x3F;
          v139 = vaddq_s64(vdupq_n_s64(v138), vzip1q_s64(0, v132));
          v140 = (v119 + 8 * (v53 >> 6));
          v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
          if (v138 + v133 >= 0x81)
          {
            v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v141);
          }
        }

        else
        {
          v121 = 1;
          v134 = v53;
          v141 = 0uLL;
        }

        v142 = vzip1_s32(*v131.i8, *&vextq_s8(v131, v131, 8uLL));
        v143.i64[0] = v142.u32[0];
        v143.i64[1] = v142.u32[1];
        v144 = vnegq_s64(v143);
        v145 = vshlq_u64(v141, v144);
        v146 = vuzp1q_s32(vzip1q_s64(v141, v145), vzip2q_s64(v141, v145));
        v147 = vnegq_s32(vandq_s8(v447, v126));
        v148 = vshlq_u32(v146, v147);
        v149 = vuzp1q_s16(vzip1q_s32(v146, v148), vzip2q_s32(v146, v148));
        v150 = vaddq_s16(v447, v128);
        v151 = vsubq_s16(v129, v447);
        v152 = vshlq_s16(vshlq_s16(v149, v151), v150);
        v430 = v152;
        v153 = v134 + v133;
        if (v422.i64[0])
        {
          v154 = v422.i64[0] >= v153;
        }

        else
        {
          v154 = 1;
        }

        v155 = v154;
        if (v133 <= 0x80 && v155)
        {
          v156 = v134 & 0x3F;
          v157 = vaddq_s64(vdupq_n_s64(v156), vzip1q_s64(0, v132));
          v158 = (v119 + 8 * (v134 >> 6));
          v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v157)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v157)));
          if (v156 + v133 >= 0x81)
          {
            v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v157)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v157))), v137);
          }
        }

        else
        {
          v121 = 1;
          v153 = v134;
        }

        v159 = vshlq_u64(v137, v144);
        v160 = vuzp1q_s32(vzip1q_s64(v137, v159), vzip2q_s64(v137, v159));
        v161 = vshlq_u32(v160, v147);
        v162 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v160, v161), vzip2q_s32(v160, v161)), v151), v150);
        v431 = v162;
        v163 = v153 + v133;
        if (v422.i64[0])
        {
          v164 = v422.i64[0] >= v163;
        }

        else
        {
          v164 = 1;
        }

        v165 = v164;
        v166 = 0uLL;
        if (v133 <= 0x80 && v165)
        {
          v167 = v153 & 0x3F;
          v168 = vaddq_s64(vdupq_n_s64(v167), vzip1q_s64(0, v132));
          v169 = (v119 + 8 * (v153 >> 6));
          v170 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v169, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v168)), vshlq_u64(vdupq_lane_s64(v169->i64[0], 0), vnegq_s64(v168)));
          if (v167 + v133 >= 0x81)
          {
            v170 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v169[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v168)), vshlq_u64(vdupq_laneq_s64(v169[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v168))), v170);
          }
        }

        else
        {
          v121 = 1;
          v163 = v153;
          v170 = 0uLL;
        }

        v171 = vshlq_u64(v170, v144);
        v172 = vuzp1q_s32(vzip1q_s64(v170, v171), vzip2q_s64(v170, v171));
        v173 = vshlq_u32(v172, v147);
        v174 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v172, v173), vzip2q_s32(v172, v173)), v151), v150);
        v432 = v174;
        v175 = vmovl_u16(*&vpaddq_s16(v448, v448));
        v176 = vpaddq_s32(v175, v175).u64[0];
        v177.i64[0] = v176;
        v177.i64[1] = HIDWORD(v176);
        v178 = v177;
        v179 = vaddvq_s64(v177);
        v180 = v179;
        v181 = v163 + v179;
        if (v422.i64[0])
        {
          v182 = v422.i64[0] >= v181;
        }

        else
        {
          v182 = 1;
        }

        v183 = v182;
        if (v179 <= 0x80 && v183)
        {
          v184 = v163 & 0x3F;
          v185 = vaddq_s64(vdupq_n_s64(v184), vzip1q_s64(0, v178));
          v186 = (v119 + 8 * (v163 >> 6));
          v166 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v186, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v185)), vshlq_u64(vdupq_lane_s64(v186->i64[0], 0), vnegq_s64(v185)));
          if (v184 + v180 >= 0x81)
          {
            v166 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v186[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v185)), vshlq_u64(vdupq_laneq_s64(v186[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v185))), v166);
          }
        }

        else
        {
          v121 = 1;
          v181 = v163;
        }

        v187 = vzip1_s32(*v175.i8, *&vextq_s8(v175, v175, 8uLL));
        v188.i64[0] = v187.u32[0];
        v188.i64[1] = v187.u32[1];
        v189 = vnegq_s64(v188);
        v190 = vshlq_u64(v166, v189);
        v191 = vuzp1q_s32(vzip1q_s64(v166, v190), vzip2q_s64(v166, v190));
        v192.i64[0] = 0xFFFF0000FFFFLL;
        v192.i64[1] = 0xFFFF0000FFFFLL;
        v193 = vnegq_s32(vandq_s8(v448, v192));
        v194 = vshlq_u32(v191, v193);
        v195 = vuzp1q_s16(vzip1q_s32(v191, v194), vzip2q_s32(v191, v194));
        v194.i64[0] = 0xF000F000F000FLL;
        v194.i64[1] = 0xF000F000F000FLL;
        v196 = vaddq_s16(v448, v194);
        v194.i64[0] = 0x10001000100010;
        v194.i64[1] = 0x10001000100010;
        v197 = vsubq_s16(v194, v448);
        v198 = vshlq_s16(vshlq_s16(v195, v197), v196);
        v433 = v198;
        v199 = v181 + v180;
        if (v422.i64[0])
        {
          v200 = v422.i64[0] >= v199;
        }

        else
        {
          v200 = 1;
        }

        v201 = v200;
        v202 = 0uLL;
        if (v180 <= 0x80 && v201)
        {
          v203 = v181 & 0x3F;
          v204 = vaddq_s64(vdupq_n_s64(v203), vzip1q_s64(0, v178));
          v205 = (v119 + 8 * (v181 >> 6));
          v206 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v205, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v204)), vshlq_u64(vdupq_lane_s64(v205->i64[0], 0), vnegq_s64(v204)));
          if (v203 + v180 >= 0x81)
          {
            v206 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v205[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v204)), vshlq_u64(vdupq_laneq_s64(v205[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v204))), v206);
          }
        }

        else
        {
          v121 = 1;
          v199 = v181;
          v206 = 0uLL;
        }

        v207 = vshlq_u64(v206, v189);
        v208 = vuzp1q_s32(vzip1q_s64(v206, v207), vzip2q_s64(v206, v207));
        v209 = vshlq_u32(v208, v193);
        v210 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v208, v209), vzip2q_s32(v208, v209)), v197), v196);
        v434 = v210;
        v211 = v199 + v180;
        if (v422.i64[0])
        {
          v212 = v422.i64[0] >= v211;
        }

        else
        {
          v212 = 1;
        }

        v213 = v212;
        if (v180 <= 0x80 && v213)
        {
          v214 = v199 & 0x3F;
          v215 = vaddq_s64(vdupq_n_s64(v214), vzip1q_s64(0, v178));
          v216 = (v119 + 8 * (v199 >> 6));
          v202 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v216, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v215)), vshlq_u64(vdupq_lane_s64(v216->i64[0], 0), vnegq_s64(v215)));
          if (v214 + v180 >= 0x81)
          {
            v202 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v216[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v215)), vshlq_u64(vdupq_laneq_s64(v216[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v215))), v202);
          }
        }

        else
        {
          v121 = 1;
          v211 = v199;
        }

        v217 = vshlq_u64(v202, v189);
        v218 = vuzp1q_s32(vzip1q_s64(v202, v217), vzip2q_s64(v202, v217));
        v219 = vshlq_u32(v218, v193);
        v220 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v218, v219), vzip2q_s32(v218, v219)), v197), v196);
        v435 = v220;
        v221 = v211 + v180;
        if (v422.i64[0])
        {
          v222 = v422.i64[0] >= v221;
        }

        else
        {
          v222 = 1;
        }

        v223 = v222;
        v224 = 0uLL;
        if (v180 <= 0x80 && v223)
        {
          v225 = v211 & 0x3F;
          v226 = vaddq_s64(vdupq_n_s64(v225), vzip1q_s64(0, v178));
          v227 = (v119 + 8 * (v211 >> 6));
          v228 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v227, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v226)), vshlq_u64(vdupq_lane_s64(v227->i64[0], 0), vnegq_s64(v226)));
          if (v225 + v180 >= 0x81)
          {
            v228 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v227[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v226)), vshlq_u64(vdupq_laneq_s64(v227[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v226))), v228);
          }
        }

        else
        {
          v121 = 1;
          v221 = v211;
          v228 = 0uLL;
        }

        v229 = vshlq_u64(v228, v189);
        v230 = vuzp1q_s32(vzip1q_s64(v228, v229), vzip2q_s64(v228, v229));
        v231 = vshlq_u32(v230, v193);
        v232 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v230, v231), vzip2q_s32(v230, v231)), v197), v196);
        v436 = v232;
        v233 = vmovl_u16(*&vpaddq_s16(v449, v449));
        v234 = vpaddq_s32(v233, v233).u64[0];
        v235.i64[0] = v234;
        v235.i64[1] = HIDWORD(v234);
        v236 = v235;
        v237 = vaddvq_s64(v235);
        v238 = v237;
        v239 = v221 + v237;
        if (v422.i64[0])
        {
          v240 = v422.i64[0] >= v239;
        }

        else
        {
          v240 = 1;
        }

        v241 = v240;
        if (v237 <= 0x80 && v241)
        {
          v242 = v221 & 0x3F;
          v243 = vaddq_s64(vdupq_n_s64(v242), vzip1q_s64(0, v236));
          v244 = (v119 + 8 * (v221 >> 6));
          v224 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v244, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v243)), vshlq_u64(vdupq_lane_s64(v244->i64[0], 0), vnegq_s64(v243)));
          if (v242 + v238 >= 0x81)
          {
            v224 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v244[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v243)), vshlq_u64(vdupq_laneq_s64(v244[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v243))), v224);
          }
        }

        else
        {
          v121 = 1;
          v239 = v221;
        }

        v245 = vzip1_s32(*v233.i8, *&vextq_s8(v233, v233, 8uLL));
        v246.i64[0] = v245.u32[0];
        v246.i64[1] = v245.u32[1];
        v247 = vnegq_s64(v246);
        v248 = vshlq_u64(v224, v247);
        v249 = vuzp1q_s32(vzip1q_s64(v224, v248), vzip2q_s64(v224, v248));
        v250.i64[0] = 0xFFFF0000FFFFLL;
        v250.i64[1] = 0xFFFF0000FFFFLL;
        v251 = vnegq_s32(vandq_s8(v449, v250));
        v252 = vshlq_u32(v249, v251);
        v253 = vuzp1q_s16(vzip1q_s32(v249, v252), vzip2q_s32(v249, v252));
        v252.i64[0] = 0xF000F000F000FLL;
        v252.i64[1] = 0xF000F000F000FLL;
        v254 = vaddq_s16(v449, v252);
        v252.i64[0] = 0x10001000100010;
        v252.i64[1] = 0x10001000100010;
        v255 = vsubq_s16(v252, v449);
        v256 = vshlq_s16(vshlq_s16(v253, v255), v254);
        v437 = v256;
        v257 = v239 + v238;
        if (v422.i64[0])
        {
          v258 = v422.i64[0] >= v257;
        }

        else
        {
          v258 = 1;
        }

        v259 = v258;
        v260 = 0uLL;
        if (v238 <= 0x80 && v259)
        {
          v261 = v239 & 0x3F;
          v262 = vaddq_s64(vdupq_n_s64(v261), vzip1q_s64(0, v236));
          v263 = (v119 + 8 * (v239 >> 6));
          v264 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v263, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v262)), vshlq_u64(vdupq_lane_s64(v263->i64[0], 0), vnegq_s64(v262)));
          if (v261 + v238 >= 0x81)
          {
            v264 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v263[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v262)), vshlq_u64(vdupq_laneq_s64(v263[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v262))), v264);
          }
        }

        else
        {
          v121 = 1;
          v257 = v239;
          v264 = 0uLL;
        }

        v265 = vshlq_u64(v264, v247);
        v266 = vuzp1q_s32(vzip1q_s64(v264, v265), vzip2q_s64(v264, v265));
        v267 = vshlq_u32(v266, v251);
        v268 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v266, v267), vzip2q_s32(v266, v267)), v255), v254);
        v438 = v268;
        v269 = v257 + v238;
        if (v422.i64[0])
        {
          v270 = v422.i64[0] >= v269;
        }

        else
        {
          v270 = 1;
        }

        v271 = v270;
        if (v238 <= 0x80 && v271)
        {
          v272 = v257 & 0x3F;
          v273 = vaddq_s64(vdupq_n_s64(v272), vzip1q_s64(0, v236));
          v274 = (v119 + 8 * (v257 >> 6));
          v260 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v274, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v273)), vshlq_u64(vdupq_lane_s64(v274->i64[0], 0), vnegq_s64(v273)));
          if (v272 + v238 >= 0x81)
          {
            v260 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v274[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v273)), vshlq_u64(vdupq_laneq_s64(v274[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v273))), v260);
          }
        }

        else
        {
          v121 = 1;
          v269 = v257;
        }

        v275 = vshlq_u64(v260, v247);
        v276 = vuzp1q_s32(vzip1q_s64(v260, v275), vzip2q_s64(v260, v275));
        v277 = vshlq_u32(v276, v251);
        v278 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v276, v277), vzip2q_s32(v276, v277)), v255), v254);
        v439 = v278;
        v279 = v269 + v238;
        if (v422.i64[0])
        {
          v280 = v422.i64[0] >= v279;
        }

        else
        {
          v280 = 1;
        }

        v281 = v280;
        v282 = 0uLL;
        if (v238 <= 0x80 && v281)
        {
          v283 = v269 & 0x3F;
          v284 = vaddq_s64(vdupq_n_s64(v283), vzip1q_s64(0, v236));
          v285 = (v119 + 8 * (v269 >> 6));
          v286 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v285, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v284)), vshlq_u64(vdupq_lane_s64(v285->i64[0], 0), vnegq_s64(v284)));
          if (v283 + v238 >= 0x81)
          {
            v286 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v285[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v284)), vshlq_u64(vdupq_laneq_s64(v285[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v284))), v286);
          }
        }

        else
        {
          v121 = 1;
          v279 = v269;
          v286 = 0uLL;
        }

        v287 = vshlq_u64(v286, v247);
        v288 = vuzp1q_s32(vzip1q_s64(v286, v287), vzip2q_s64(v286, v287));
        v289 = vshlq_u32(v288, v251);
        v290 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v288, v289), vzip2q_s32(v288, v289)), v255), v254);
        v440 = v290;
        v291 = vmovl_u16(*&vpaddq_s16(v450, v450));
        v292 = vpaddq_s32(v291, v291).u64[0];
        v293.i64[0] = v292;
        v293.i64[1] = HIDWORD(v292);
        v294 = v293;
        v295 = vaddvq_s64(v293);
        v296 = v295;
        v297 = v279 + v295;
        if (v422.i64[0])
        {
          v298 = v422.i64[0] >= v297;
        }

        else
        {
          v298 = 1;
        }

        v299 = v298;
        if (v295 <= 0x80 && v299)
        {
          v300 = v279 & 0x3F;
          v301 = vaddq_s64(vdupq_n_s64(v300), vzip1q_s64(0, v294));
          v302 = (v119 + 8 * (v279 >> 6));
          v282 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v302, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v301)), vshlq_u64(vdupq_lane_s64(v302->i64[0], 0), vnegq_s64(v301)));
          if (v300 + v296 >= 0x81)
          {
            v282 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v302[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v301)), vshlq_u64(vdupq_laneq_s64(v302[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v301))), v282);
          }
        }

        else
        {
          v121 = 1;
          v297 = v279;
        }

        v303 = vzip1_s32(*v291.i8, *&vextq_s8(v291, v291, 8uLL));
        v304.i64[0] = v303.u32[0];
        v304.i64[1] = v303.u32[1];
        v305 = vnegq_s64(v304);
        v306 = vshlq_u64(v282, v305);
        v307 = vuzp1q_s32(vzip1q_s64(v282, v306), vzip2q_s64(v282, v306));
        v306.i64[0] = 0xFFFF0000FFFFLL;
        v306.i64[1] = 0xFFFF0000FFFFLL;
        v308 = vnegq_s32(vandq_s8(v450, v306));
        v309 = vshlq_u32(v307, v308);
        v310 = vuzp1q_s16(vzip1q_s32(v307, v309), vzip2q_s32(v307, v309));
        v307.i64[0] = 0xF000F000F000FLL;
        v307.i64[1] = 0xF000F000F000FLL;
        v311 = vaddq_s16(v450, v307);
        v309.i64[0] = 0x10001000100010;
        v309.i64[1] = 0x10001000100010;
        v312 = vsubq_s16(v309, v450);
        v313 = vshlq_s16(vshlq_s16(v310, v312), v311);
        v441 = v313;
        v314 = v297 + v296;
        if (v422.i64[0])
        {
          v315 = v422.i64[0] >= v314;
        }

        else
        {
          v315 = 1;
        }

        v316 = v315;
        v317 = 0uLL;
        if (v296 <= 0x80 && v316)
        {
          v318 = v297 & 0x3F;
          v319 = vaddq_s64(vdupq_n_s64(v318), vzip1q_s64(0, v294));
          v320 = (v119 + 8 * (v297 >> 6));
          v321 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v320, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v319)), vshlq_u64(vdupq_lane_s64(v320->i64[0], 0), vnegq_s64(v319)));
          if (v318 + v296 >= 0x81)
          {
            v321 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v320[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v319)), vshlq_u64(vdupq_laneq_s64(v320[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v319))), v321);
          }
        }

        else
        {
          v121 = 1;
          v314 = v297;
          v321 = 0uLL;
        }

        v322 = vshlq_u64(v321, v305);
        v323 = vuzp1q_s32(vzip1q_s64(v321, v322), vzip2q_s64(v321, v322));
        v324 = vshlq_u32(v323, v308);
        v325 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v323, v324), vzip2q_s32(v323, v324)), v312), v311);
        v442 = v325;
        v326 = v314 + v296;
        if (v422.i64[0])
        {
          v327 = v422.i64[0] >= v326;
        }

        else
        {
          v327 = 1;
        }

        v328 = v327;
        if (v296 <= 0x80 && v328)
        {
          v329 = v314 & 0x3F;
          v330 = vaddq_s64(vdupq_n_s64(v329), vzip1q_s64(0, v294));
          v331 = (v119 + 8 * (v314 >> 6));
          v317 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v331, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v330)), vshlq_u64(vdupq_lane_s64(v331->i64[0], 0), vnegq_s64(v330)));
          if (v329 + v296 >= 0x81)
          {
            v317 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v331[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v330)), vshlq_u64(vdupq_laneq_s64(v331[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v330))), v317);
          }
        }

        else
        {
          v121 = 1;
          v326 = v314;
        }

        v332 = vshlq_u64(v317, v305);
        v333 = vuzp1q_s32(vzip1q_s64(v317, v332), vzip2q_s64(v317, v332));
        v334 = vshlq_u32(v333, v308);
        v335 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v333, v334), vzip2q_s32(v333, v334)), v312), v311);
        v443 = v335;
        v336 = v326 + v296;
        if (v422.i64[0])
        {
          v337 = v422.i64[0] >= v336;
        }

        else
        {
          v337 = 1;
        }

        v338 = v337;
        if (v296 > 0x80 || !v338)
        {
          goto LABEL_242;
        }

        v339 = vaddq_s64(vdupq_n_s64(v326 & 0x3F), vzip1q_s64(0, v294));
        v340 = (v119 + 8 * (v326 >> 6));
        v341 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v340, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v339)), vshlq_u64(vdupq_lane_s64(v340->i64[0], 0), vnegq_s64(v339)));
        if ((v326 & 0x3F) + v296 >= 0x81)
        {
          v341 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v340[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v339)), vshlq_u64(vdupq_laneq_s64(v340[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v339))), v341);
        }

        if ((v121 & 1) != 0 || v422.i64[0] + 8 * result - v336 - 512 >= 9 || v104 == 2)
        {
LABEL_242:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, v64);
          return 0;
        }

        else
        {
          v342 = vshlq_u64(v341, v305);
          v343 = vuzp1q_s32(vzip1q_s64(v341, v342), vzip2q_s64(v341, v342));
          v344 = vshlq_u32(v343, v308);
          v345 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v343, v344), vzip2q_s32(v343, v344)), v312), v311);
          v346 = vaddq_s16(vandq_s8(v103, v71), v130);
          v347 = vdupq_lane_s64(v103.i64[0], 0);
          v348 = vandq_s8(v71, v347);
          v349 = vsubq_s16(v346, v348);
          v350 = vsubq_s16(v152, v348);
          v351 = vsubq_s16(v162, v348);
          v352 = vsubq_s16(v174, v348);
          v353 = vandq_s8(v70, v347);
          v354 = vsubq_s16(v198, v353);
          v355 = vsubq_s16(v210, v353);
          v356 = vsubq_s16(v220, v353);
          v357 = vsubq_s16(v232, v353);
          v358 = vandq_s8(v69, v347);
          v359 = vsubq_s16(v256, v358);
          v360 = vsubq_s16(v268, v358);
          v361 = vsubq_s16(v278, v358);
          v362 = vsubq_s16(v290, v358);
          v363 = vandq_s8(v68, v347);
          v364 = vsubq_s16(v313, v363);
          v429 = v346;
          v365 = vsubq_s16(v325, v363);
          v366 = vsubq_s16(v335, v363);
          v441 = v364;
          v442 = v365;
          v367 = vsubq_s16(v345, v363);
          v443 = v366;
          v444 = v367;
          v368.i64[0] = 0x1000100010001;
          v368.i64[1] = 0x1000100010001;
          if (vaddvq_s16(vceqq_s16(v49, v368)))
          {
            v369 = vnegq_s16(vandq_s8(v446, v368));
            v370.i64[0] = v352.i64[0];
            v371.i64[1] = v349.i64[1];
            v370.i64[1] = v349.i64[0];
            v371.i64[0] = v352.i64[1];
            v372 = vbslq_s8(v369, v371, v349);
            v373 = vbslq_s8(v369, v370, v352);
            v371.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v371.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v374 = vandq_s8(vqtbl4q_s8(*(&v350 - 1), v371), v369);
            v461.val[0] = vaddq_s16(v372, vandq_s8(vqtbl4q_s8(*(&v350 - 1), xmmword_29D2F10B0), v369));
            v461.val[1] = vaddq_s16(v350, vandq_s8(vqtbl4q_s8(*(&v350 - 1), xmmword_29D2F10C0), v369));
            v461.val[2] = vaddq_s16(v351, v374);
            v461.val[3] = vaddq_s16(v373, v374);
            v375 = vandq_s8(vqtbl4q_s8(v461, v371), v369);
            v349 = vaddq_s16(v461.val[0], vandq_s8(vqtbl4q_s8(v461, xmmword_29D2F10D0), v369));
            v350 = vaddq_s16(v461.val[1], vandq_s8(vqtbl4q_s8(v461, xmmword_29D2F10E0), v369));
            v429 = v349;
            v430 = v350;
            v351 = vaddq_s16(v461.val[2], v375);
            v352 = vaddq_s16(v461.val[3], v375);
            v460.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v354.i8, xmmword_29D2F10B0), v369), v354);
            v460.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v354.i8, xmmword_29D2F10F0), v369), v355);
            v460.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v354.i8, v371), v369), v356);
            v460.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v354.i8, xmmword_29D2F1100), v369), v357);
            v376 = vandq_s8(vqtbl4q_s8(v460, xmmword_29D2F10D0), v369);
            v377 = vandq_s8(vqtbl4q_s8(v460, v371), v369);
            v354 = vaddq_s16(v376, v460.val[0]);
            v355 = vaddq_s16(v460.val[1], v376);
            v356 = vaddq_s16(v460.val[2], v377);
            v357 = vaddq_s16(v460.val[3], v377);
            v460.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v359.i8, xmmword_29D2F0EB0), v369), v359);
            v460.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v359.i8, xmmword_29D2F0FB0), v369), v360);
            v460.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v359.i8, xmmword_29D2F10B0), v369), v361);
            v460.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v359.i8, xmmword_29D2F10C0), v369), v362);
            v378 = vandq_s8(vqtbl4q_s8(v460, v371), v369);
            v359 = vaddq_s16(v460.val[0], v378);
            v360 = vaddq_s16(v460.val[1], v378);
            v361 = vaddq_s16(v460.val[2], vandq_s8(vqtbl4q_s8(v460, xmmword_29D2F0FE0), v369));
            v362 = vaddq_s16(v460.val[3], vandq_s8(vqtbl4q_s8(v460, xmmword_29D2F1110), v369));
            v461.val[0] = v441;
            v461.val[1] = v442;
            v48 = v446;
            v461.val[2] = v443;
            v461.val[3] = v444;
            v460.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v461, xmmword_29D2F0EB0), v369), v441);
            v460.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v461, xmmword_29D2F1120), v369), v442);
            v431 = v351;
            v432 = v352;
            v460.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v461, xmmword_29D2F10B0), v369), v443);
            v460.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v461, xmmword_29D2F10C0), v369), v444);
            v379 = vandq_s8(vqtbl4q_s8(v460, v371), v369);
            v364 = vaddq_s16(v460.val[0], v379);
            v365 = vaddq_s16(v460.val[1], v379);
            v366 = vaddq_s16(v460.val[2], vandq_s8(vqtbl4q_s8(v460, xmmword_29D2F0FE0), v369));
            v367 = vaddq_s16(v460.val[3], vandq_s8(vqtbl4q_s8(v460, xmmword_29D2F1130), v369));
          }

          v380 = vaddq_s16(v445, v349);
          v381 = vaddq_s16(v350, v445);
          v382 = vaddq_s16(v351, v445);
          v383 = vaddq_s16(v352, v445);
          v384 = vaddq_s16(v354, v445);
          v385 = vaddq_s16(v355, v445);
          v386 = vaddq_s16(v356, v445);
          v387 = vaddq_s16(v357, v445);
          v388 = vaddq_s16(v359, v445);
          v389 = vaddq_s16(v360, v445);
          v390 = vaddq_s16(v361, v445);
          v391 = vaddq_s16(v362, v445);
          v392 = vaddq_s16(v364, v445);
          v393 = vaddq_s16(v365, v445);
          v394 = vaddq_s16(v366, v445);
          v395 = vaddq_s16(v367, v445);
          v396.i64[0] = 0x10001000100010;
          v396.i64[1] = 0x10001000100010;
          v397 = vceqzq_s16(vandq_s8(v48, v396));
          v398 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v397), v380);
          v399 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1270), v397), v381);
          v400 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1270), v397), v382);
          v401 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1270), v397), v383);
          v402 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1270), v397), v384);
          v403 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1270), v397), v385);
          v404 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1270), v397), v386);
          v405 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v387, xmmword_29D2F1270), v397), v387);
          v406 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v388, xmmword_29D2F1270), v397), v388);
          v407 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v389, xmmword_29D2F1270), v397), v389);
          v408 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v390, xmmword_29D2F1270), v397), v390);
          v409 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v391, xmmword_29D2F1270), v397), v391);
          v410 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v392, xmmword_29D2F1270), v397), v392);
          v411 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v393, xmmword_29D2F1270), v397), v393);
          __asm { FMOV            V7.4S, #1.875 }

          v391.i64[0] = 0xC0000000C0000000;
          v391.i64[1] = 0xC0000000C0000000;
          v416 = (a1 + 32);
          *a1 = vbslq_s8(v391, vshrn_high_n_s64(vshrn_n_s64(v398, 0x12uLL), v399, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v398, 0xCuLL), v399, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v398, 6uLL), v399, 6uLL), vuzp1q_s32(v398, v399))));
          *(a1 + 16) = vbslq_s8(v391, vshrn_high_n_s64(vshrn_n_s64(v400, 0x12uLL), v401, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v400, 0xCuLL), v401, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v400, 6uLL), v401, 6uLL), vuzp1q_s32(v400, v401))));
          v417 = (a1 + v64);
          v418 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v394, xmmword_29D2F1270), v397), v394);
          v419 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v395, xmmword_29D2F1270), v397), v395);
          *v416 = vbslq_s8(v391, vshrn_high_n_s64(vshrn_n_s64(v402, 0x12uLL), v403, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v402, 0xCuLL), v403, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v402, 6uLL), v403, 6uLL), vuzp1q_s32(v402, v403))));
          v416[1] = vbslq_s8(v391, vshrn_high_n_s64(vshrn_n_s64(v404, 0x12uLL), v405, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v404, 0xCuLL), v405, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v404, 6uLL), v405, 6uLL), vuzp1q_s32(v404, v405))));
          *v417 = vbslq_s8(v391, vshrn_high_n_s64(vshrn_n_s64(v406, 0x12uLL), v407, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v406, 0xCuLL), v407, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v406, 6uLL), v407, 6uLL), vuzp1q_s32(v406, v407))));
          v417[1] = vbslq_s8(v391, vshrn_high_n_s64(vshrn_n_s64(v408, 0x12uLL), v409, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v408, 0xCuLL), v409, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v408, 6uLL), v409, 6uLL), vuzp1q_s32(v408, v409))));
          v417 += 2;
          *v417 = vbslq_s8(v391, vshrn_high_n_s64(vshrn_n_s64(v410, 0x12uLL), v411, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v410, 0xCuLL), v411, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v410, 6uLL), v411, 6uLL), vuzp1q_s32(v410, v411))));
          v417[1] = vbslq_s8(v391, vshrn_high_n_s64(vshrn_n_s64(v418, 0x12uLL), v419, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v418, 0xCuLL), v419, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v418, 6uLL), v419, 6uLL), vuzp1q_s32(v418, v419))));
        }
      }
    }

    else
    {
      v8 = &v430;
      if (a4)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v421, a5);
      }

      v14 = &v431;
      v15 = &v432;
      v429 = v421;
      v430 = v423;
      v433 = v422;
      v434 = v424;
      v437 = v425;
      v438 = v427;
      v441 = v426;
      v442 = v428;
      v16 = a3 + 16;
      if ((v6 & 2) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v16, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v16, &v421, a5);
      }

      v431 = v421;
      v432 = v423;
      v435 = v422;
      v436 = v424;
      v439 = v425;
      v440 = v427;
      v443 = v426;
      v444 = v428;
      v17 = a3 + 32;
      if ((v6 & 4) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v17, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v17, &v421, a5);
      }

      v445 = v421;
      v446 = v423;
      v449 = v422;
      v450 = v424;
      v451[2] = v425;
      v452 = v427;
      v455 = v426;
      v456 = v428;
      v18 = a3 + 48;
      if ((v6 & 8) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, &v421, a5);
      }

      v19 = 0;
      v447 = v421;
      v448 = v423;
      v451[0] = v422;
      v451[1] = v424;
      v453 = v425;
      v454 = v427;
      v20 = (a1 + 32);
      v21 = 1;
      v22 = &v429;
      v457 = v426;
      v458 = v428;
      do
      {
        v23 = &v429.i32[16 * v19];
        v24 = v23[16] & 0x3FF | ((v23[17] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[18] & 0x3FF) << 20) | (v23[19] << 30);
        *(v20 - 8) = v22->i32[0] & 0x3FF | ((v22->i32[1] & 0x3FF) << 10) & 0xC00FFFFF | ((v22->i32[2] & 0x3FF) << 20) | (v22->i32[3] << 30);
        *(v20 - 7) = v24;
        v25 = v23[20] & 0x3FF | ((v23[21] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[22] & 0x3FF) << 20) | (v23[23] << 30);
        *(v20 - 6) = v8->i32[0] & 0x3FF | ((v8->i32[1] & 0x3FF) << 10) & 0xC00FFFFF | ((v8->i32[2] & 0x3FF) << 20) | (v8->i32[3] << 30);
        *(v20 - 5) = v25;
        v26 = v23[48] & 0x3FF | ((v23[49] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[50] & 0x3FF) << 20) | (v23[51] << 30);
        *(v20 - 4) = v23[32] & 0x3FF | ((v23[33] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[34] & 0x3FF) << 20) | (v23[35] << 30);
        *(v20 - 3) = v26;
        v27 = v23[52] & 0x3FF | ((v23[53] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[54] & 0x3FF) << 20) | (v23[55] << 30);
        *(v20 - 2) = v23[36] & 0x3FF | ((v23[37] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[38] & 0x3FF) << 20) | (v23[39] << 30);
        *(v20 - 1) = v27;
        v28 = v23[24] & 0x3FF | ((v23[25] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[26] & 0x3FF) << 20) | (v23[27] << 30);
        *v20 = v14->i32[0] & 0x3FF | ((v14->i32[1] & 0x3FF) << 10) & 0xC00FFFFF | ((v14->i32[2] & 0x3FF) << 20) | (v14->i32[3] << 30);
        v20[1] = v28;
        v29 = v23[28] & 0x3FF | ((v23[29] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[30] & 0x3FF) << 20) | (v23[31] << 30);
        v30 = v23[40] & 0x3FF | ((v23[41] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[42] & 0x3FF) << 20) | (v23[43] << 30);
        v31 = v23[56] & 0x3FF | ((v23[57] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[58] & 0x3FF) << 20) | (v23[59] << 30);
        v32 = v23[44] & 0x3FF | ((v23[45] & 0x3FF) << 10) & 0xC00FFFFF | ((v23[46] & 0x3FF) << 20) | (v23[47] << 30);
        v33 = v23[60] & 0x3FF | ((v23[61] & 0x3FF) << 10);
        v34 = v23[62];
        LODWORD(v23) = v23[63];
        v35 = v33 & 0xC00FFFFF | ((v34 & 0x3FF) << 20);
        LOBYTE(v34) = v21;
        v20[2] = v15->i32[0] & 0x3FF | ((v15->i32[1] & 0x3FF) << 10) & 0xC00FFFFF | ((v15->i32[2] & 0x3FF) << 20) | (v15->i32[3] << 30);
        v20[3] = v29;
        v20[4] = v30;
        v20[5] = v31;
        v20[6] = v32;
        v20[7] = v35 | (v23 << 30);
        v20 = (v20 + a2);
        v22 = &v445;
        v8 = &v446;
        v14 = &v447;
        v15 = &v448;
        v19 = 4;
        v21 = 0;
      }

      while ((v34 & 1) != 0);
      return 64;
    }
  }

  else
  {
    result = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    if (a5 >= 2)
    {
      a5 = 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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
      v16 = v9 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 64, a2, v16, v15, a7);
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
      v19 = v8 - 2;
    }

    if (v9 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
  }

  if (v9 < 3 || v8 < 3)
  {
    a4[3] = 0;
  }

  else
  {
    if (v18 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v8 - 2;
    }

    if (v14 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v9 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 64, a2, v22, v21, a7);
    v11 += result;
  }

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
      v25 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 128, a2, v25, v24, a7);
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
      v28 = v9 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 192, a2, v28, v27, a7);
    v11 += result;
  }

  else
  {
    a4[5] = 0;
    if (v9 < 5)
    {
      goto LABEL_68;
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
      v29 = v8 - 2;
    }

    if (v23 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v9 - 4;
    }

    v31 = 2 * a2;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 2 * a2 + 128, a2, v30, v29, a7);
    v11 += result;
    if (v9 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  v31 = 2 * a2;
  if (v9 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v8 < 3)
  {
    goto LABEL_79;
  }

  if (v18 >= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = v8 - 2;
  }

  if (v26 >= 2)
  {
    v33 = 2;
  }

  else
  {
    v33 = v9 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 192, a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 256, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 256, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 256, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 576, 256, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 128, 256, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 192, 256, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 640, 256, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 704, 256, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 24;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x29)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  v16.i64[0] = 0x303030303030303;
  v16.i64[1] = 0x303030303030303;
  v17.i8[3] = 3;
  v17.i32[1] = 50529027;
  v17.i8[0] = v15 & 0x1F;
  v17.i8[1] = (v15 >> 5) & 0x1F;
  v17.i8[2] = (v15 >> 10) & 0x1F;
  v18.i32[0] = v15 >> 15;
  v18.i32[1] = (v15 >> 18) & 0x3F;
  v19 = vadd_s32(vand_s8(v18, 0x700000007), 0x100000001);
  v20 = v19.u8[0];
  v20.i8[1] = v19.i8[4];
  v20.i8[2] = ((v15 >> 21) & 7) + 1;
  v21 = v12 + 40;
  v22 = v14 & 0x38;
  v23 = (v13 + ((v14 >> 3) & 8));
  v24 = *v23 >> v22;
  if (v22 >= 0x31)
  {
    v24 |= v23[1] << -v22;
  }

  v25 = (8 * (a3 & 7)) | 0x200;
  v26 = vdupq_lane_s32(v17, 0);
  v27 = vandq_s8(v26, v16);
  v28 = vbicq_s8(vdupq_lane_s32(v20, 0), vceqq_s8(v27, v16));
  v29.i64[0] = 0x202020202020202;
  v29.i64[1] = 0x202020202020202;
  v30 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v17), 0x4000400040004)), v29);
  if (vmaxvq_s8(v30) < 1)
  {
    v39 = 0;
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v61 = v28;
    v60 = v28;
    v59 = v28;
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v58 = v28;
    v63.i64[0] = -1;
    v63.i64[1] = -1;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
  }

  else
  {
    v31 = vmovl_u8(*&vpaddq_s8(v30, v30));
    v32 = vmovl_u16(*&vpaddq_s16(v31, v31));
    v33 = vpaddq_s32(v32, v32).u64[0];
    v34.i64[0] = v33;
    v34.i64[1] = HIDWORD(v33);
    v35 = v34;
    v36 = vaddvq_s64(v34);
    v37 = v21 + v36;
    v38 = v36 <= 0x80 && v25 >= v37;
    v39 = !v38;
    v40 = 0uLL;
    if (v38)
    {
      v41 = v21 & 0x38;
      v42 = vaddq_s64(vdupq_n_s64(v41), vzip1q_s64(0, v35));
      v43 = (v13 + ((v21 >> 3) & 8));
      v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v42)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v42)));
      if (v41 + v36 >= 0x81)
      {
        v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v42)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v42))), v40);
      }

      v21 = v37;
    }

    v44 = vzip1_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v45.i64[0] = v44.u32[0];
    v45.i64[1] = v44.u32[1];
    v46 = vshlq_u64(v40, vnegq_s64(v45));
    v47 = vuzp1q_s32(vzip1q_s64(v40, v46), vzip2q_s64(v40, v46));
    v48 = vshlq_u32(v47, vnegq_s32((*&v31 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v49 = vuzp1q_s16(vzip1q_s32(v47, v48), vzip2q_s32(v47, v48));
    v50 = vshlq_u16(v49, vnegq_s16((*&v30 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v51 = vuzp1q_s8(vzip1q_s16(v49, v50), vzip2q_s16(v49, v50));
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    v52 = vshlq_s8(v50, v30);
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v53 = vqtbl1q_s8(vandq_s8(vaddq_s8(v52, v50), v51), xmmword_29D2F0F70);
    v54 = vdupq_lane_s32(*v53.i8, 0);
    v55 = vdupq_lane_s32(*v53.i8, 1);
    v56 = vdupq_laneq_s32(v53, 2);
    v57 = vdupq_laneq_s32(v53, 3);
    v58 = vsubq_s8(v28, v54);
    v59 = vsubq_s8(v28, v55);
    v60 = vsubq_s8(v28, v56);
    v61 = vsubq_s8(v28, v57);
    v62 = vceqzq_s8(v54);
    v63 = vceqzq_s8(v55);
    v64 = vceqzq_s8(v56);
    v65 = vceqzq_s8(v57);
  }

  v66.i64[0] = 0x808080808080808;
  v66.i64[1] = 0x808080808080808;
  v67 = 0uLL;
  v68 = vandq_s8(vextq_s8(vtstq_s8(v26, v66), 0, 0xCuLL), v28);
  v69 = vmovl_u8(*&vpaddq_s8(v68, v68));
  v70 = vmovl_u16(*&vpaddq_s16(v69, v69));
  v66.i64[0] = vpaddq_s32(v70, v70).u64[0];
  v71.i64[0] = v66.u32[0];
  v71.i64[1] = v66.u32[1];
  v72 = v71;
  v73 = vaddvq_s64(v71);
  v74 = v21 + v73;
  if (v73 <= 0x80 && v25 >= v74)
  {
    v76 = v21 & 0x3F;
    v77 = vaddq_s64(vdupq_n_s64(v76), vzip1q_s64(0, v72));
    v78 = (v13 + 8 * (v21 >> 6));
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v78, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(v78->i64[0], 0), vnegq_s64(v77)));
    if (v76 + v73 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v78[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(v78[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v67);
    }

    v21 = v74;
  }

  else
  {
    v39 = 1;
  }

  v348[1] = v11;
  v348[2] = v10;
  v348[3] = v9;
  v348[4] = v8;
  v348[5] = v7;
  v348[6] = v6;
  v348[7] = v5;
  v348[8] = v4;
  v79 = v26.i8[0] & 3;
  v346 = v62;
  v347 = v27;
  v344 = v64;
  v345 = v65;
  v343 = v63;
  if (v79 == 2)
  {
    v80 = v25 < v21 + 4;
    v81 = v21 + 8;
    if (v25 >= v21 + 4)
    {
      v21 += 4;
    }

    else
    {
      v81 = v21 + 4;
    }

    if (v25 < v81)
    {
      v82 = 1;
    }

    else
    {
      v21 = v81;
      v82 = v80;
    }

    v39 |= v82;
  }

  v83 = 0uLL;
  v84 = vextq_s8(0, v58, 0xCuLL);
  v85 = vmovl_u8(*&vpaddq_s8(v84, v84));
  v86 = vmovl_u16(*&vpaddq_s16(v85, v85));
  v87 = vpaddq_s32(v86, v86).u64[0];
  v88.i64[0] = v87;
  v88.i64[1] = HIDWORD(v87);
  v89 = v88;
  v90 = vaddvq_s64(v88);
  v91 = v21 + v90;
  if (v90 <= 0x80 && v25 >= v91)
  {
    v93 = v21 & 0x3F;
    v94 = vaddq_s64(vdupq_n_s64(v93), vzip1q_s64(0, v89));
    v95 = (v13 + 8 * (v21 >> 6));
    v96 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v95, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v95->i64[0], 0), vnegq_s64(v94)));
    if (v93 + v90 >= 0x81)
    {
      v96 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v95[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v95[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v96);
    }

    v342 = v96;
    v21 = v91;
  }

  else
  {
    v39 = 1;
    v342 = 0u;
  }

  v97 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
  v99 = vpaddq_s32(v98, v98).u64[0];
  v100.i64[0] = v99;
  v100.i64[1] = HIDWORD(v99);
  v101 = v100;
  v102 = vaddvq_s64(v100);
  v103 = v21 + v102;
  if (v102 <= 0x80 && v25 >= v103)
  {
    v105 = v21 & 0x3F;
    v106 = vaddq_s64(vdupq_n_s64(v105), vzip1q_s64(0, v101));
    v107 = (v13 + 8 * (v21 >> 6));
    v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
    if (v105 + v102 >= 0x81)
    {
      v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v83);
    }

    v21 = v103;
  }

  else
  {
    v39 = 1;
  }

  v108 = vmovl_u8(*&vpaddq_s8(v59, v59));
  v109 = vmovl_u16(*&vpaddq_s16(v108, v108));
  v110 = vpaddq_s32(v109, v109).u64[0];
  v111.i64[0] = v110;
  v111.i64[1] = HIDWORD(v110);
  v112 = v111;
  v113 = vaddvq_s64(v111);
  v114 = v21 + v113;
  v115 = 0uLL;
  if (v113 <= 0x80 && v25 >= v114)
  {
    v118 = v21 & 0x3F;
    v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v112));
    v120 = (v13 + 8 * (v21 >> 6));
    v117 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
    if (v118 + v113 >= 0x81)
    {
      v117 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v117);
    }

    v21 = v114;
  }

  else
  {
    v39 = 1;
    v117 = 0uLL;
  }

  v121 = v21 + v113;
  if (v113 <= 0x80 && v25 >= v121)
  {
    v123 = v21 & 0x3F;
    v124 = vaddq_s64(vdupq_n_s64(v123), vzip1q_s64(0, v112));
    v125 = (v13 + 8 * (v21 >> 6));
    v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
    if (v123 + v113 >= 0x81)
    {
      v115 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v115);
    }

    v21 = v121;
  }

  else
  {
    v39 = 1;
  }

  v126 = vmovl_u8(*&vpaddq_s8(v60, v60));
  v127 = vmovl_u16(*&vpaddq_s16(v126, v126));
  v128 = vpaddq_s32(v127, v127).u64[0];
  v129.i64[0] = v128;
  v129.i64[1] = HIDWORD(v128);
  v130 = v129;
  v131 = vaddvq_s64(v129);
  v132 = v131;
  v133 = 0uLL;
  if (v131 > 0x80 || (v134 = v21 + v131, v25 < v21 + v131))
  {
    v39 = 1;
    v134 = v21;
    v138 = 0uLL;
  }

  else
  {
    v135 = v21 & 0x3F;
    v136 = vaddq_s64(vdupq_n_s64(v135), vzip1q_s64(0, v130));
    v137 = (v13 + 8 * (v21 >> 6));
    v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v135 + v132 >= 0x81)
    {
      v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
    }
  }

  if (v132 > 0x80 || (v139 = v134 + v132, v25 < v134 + v132))
  {
    v39 = 1;
    v139 = v134;
  }

  else
  {
    v140 = vaddq_s64(vdupq_n_s64(v134 & 0x3F), vzip1q_s64(0, v130));
    v141 = (v13 + 8 * (v134 >> 6));
    v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if ((v134 & 0x3F) + v132 >= 0x81)
    {
      v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v133);
    }
  }

  v142 = vmovl_u8(*&vpaddq_s8(v61, v61));
  v143 = vmovl_u16(*&vpaddq_s16(v142, v142));
  v144 = vpaddq_s32(v143, v143).u64[0];
  v145.i64[0] = v144;
  v145.i64[1] = HIDWORD(v144);
  v146 = v145;
  v147 = vaddvq_s64(v145);
  v148 = v147;
  if (v147 > 0x80 || (v149 = v139 + v147, v25 < v139 + v147))
  {
    v39 = 1;
    v149 = v139;
    v153 = 0uLL;
  }

  else
  {
    v150 = v139 & 0x3F;
    v151 = vaddq_s64(vdupq_n_s64(v150), vzip1q_s64(0, v146));
    v152 = (v13 + 8 * (v139 >> 6));
    v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
    if (v150 + v148 >= 0x81)
    {
      v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v153);
    }
  }

  if (v148 > 0x80 || v25 < v149 + v148)
  {
    goto LABEL_90;
  }

  v154 = vaddq_s64(vdupq_n_s64(v149 & 0x3F), vzip1q_s64(0, v146));
  v155 = (v13 + 8 * (v149 >> 6));
  v156 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v155, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v154)), vshlq_u64(vdupq_lane_s64(v155->i64[0], 0), vnegq_s64(v154)));
  if ((v149 & 0x3F) + v148 >= 0x81)
  {
    v156 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v155[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v154)), vshlq_u64(vdupq_laneq_s64(v155[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v154))), v156);
  }

  if ((v39 & 1) != 0 || (v157 = a4 + 1, v25 + 8 * v157 - (v149 + v148) - 512 >= 9))
  {
LABEL_90:
    v158 = 8 * ((v348 + 4) & 7);
    v348[0] |= 31 << v158;
    v159 = v158 | 5;
    v160 = (v158 | 5) - v158;
    if (v160 - 11 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v161 = 0;
      v162 = 6;
      do
      {
        v163 = 64 - v159;
        if (64 - v159 >= v162)
        {
          v163 = v162;
        }

        v164 = v163 + v159;
        v161 += v164 >> 6;
        v159 = v164 & 0x3F;
        v162 -= v163;
      }

      while (v162);
      v160 = v159 - v158 + (v161 << 6);
    }

    else
    {
      v161 = 0;
    }

    if (v160 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v165 = 0;
      v166 = 5;
      do
      {
        v167 = 64 - v159;
        if (64 - v159 >= v166)
        {
          v167 = v166;
        }

        v348[v161] |= ((0xFFFFFFFFFFFFFFFFLL >> v165) & ~(-1 << v167)) << v159;
        v165 += v167;
        v168 = v167 + v159;
        v161 += v168 >> 6;
        v159 = v168 & 0x3F;
        v166 -= v167;
      }

      while (v166);
    }

LABEL_102:
    v157 = 0;
    v169 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v170 = (a1->i64 + 2 * a2);
    *v169 = 0;
    v169[1] = 0;
    v171 = (a1->i64 + 2 * a2 + a2);
    *v170 = 0;
    v170[1] = 0;
    *v171 = 0;
    v171[1] = 0;
    return v157;
  }

  if (v79 == 2)
  {
    v173 = 8 * ((v348 + 6) & 7);
    v348[0] |= 31 << v173;
    v174 = v173 | 5;
    v175 = (v173 | 5) - v173;
    if (v175 - 11 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v176 = 0;
      v335 = 6;
      do
      {
        v336 = 64 - v174;
        if (64 - v174 >= v335)
        {
          v336 = v335;
        }

        v337 = v336 + v174;
        v176 += v337 >> 6;
        v174 = v337 & 0x3F;
        v335 -= v336;
      }

      while (v335);
      v175 = v174 - v173 + (v176 << 6);
    }

    else
    {
      v176 = 0;
    }

    if (v175 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v338 = 0;
      v339 = 5;
      do
      {
        v340 = 64 - v174;
        if (64 - v174 >= v339)
        {
          v340 = v339;
        }

        v348[v176] |= ((0xFFFFFFFFFFFFFFFFLL >> v338) & ~(-1 << v340)) << v174;
        v338 += v340;
        v341 = v340 + v174;
        v176 += v341 >> 6;
        v174 = v341 & 0x3F;
        v339 -= v340;
      }

      while (v339);
    }

    goto LABEL_102;
  }

  v177 = vzip1_s32(*v70.i8, *&vextq_s8(v70, v70, 8uLL));
  v178 = vzip1_s32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
  v179 = vzip1_s32(*v127.i8, *&vextq_s8(v127, v127, 8uLL));
  v180 = vzip1_s32(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
  v181.i64[0] = v177.u32[0];
  v181.i64[1] = v177.u32[1];
  v182 = vshlq_u64(v67, vnegq_s64(v181));
  v183 = vzip2q_s64(v67, v182);
  v184 = vzip1q_s64(v67, v182);
  v181.i64[0] = v178.u32[0];
  v181.i64[1] = v178.u32[1];
  v185 = vnegq_s64(v181);
  v186 = vshlq_u64(v117, v185);
  v187 = vzip2q_s64(v117, v186);
  v188 = vzip1q_s64(v117, v186);
  v189 = vshlq_u64(v115, v185);
  v190 = vzip2q_s64(v115, v189);
  v191 = vzip1q_s64(v115, v189);
  v181.i64[0] = v179.u32[0];
  v181.i64[1] = v179.u32[1];
  v192 = vnegq_s64(v181);
  v193 = vshlq_u64(v138, v192);
  v194 = vzip2q_s64(v138, v193);
  v195 = vzip1q_s64(v138, v193);
  v196 = vshlq_u64(v133, v192);
  v197 = vzip2q_s64(v133, v196);
  v198 = vzip1q_s64(v133, v196);
  v181.i64[0] = v180.u32[0];
  v181.i64[1] = v180.u32[1];
  v199 = vnegq_s64(v181);
  v200 = vshlq_u64(v153, v199);
  v201 = vzip2q_s64(v153, v200);
  v202 = vzip1q_s64(v153, v200);
  v203 = vuzp1q_s32(v184, v183);
  v204 = vuzp1q_s32(v188, v187);
  v205 = vuzp1q_s32(v191, v190);
  v206 = vuzp1q_s32(v195, v194);
  v207 = vuzp1q_s32(v198, v197);
  v208 = vnegq_s32((*&v69 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
  v209 = vnegq_s32((*&v108 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
  v210 = vuzp1q_s32(v202, v201);
  v211 = vshlq_u32(v203, v208);
  v212 = vzip2q_s32(v203, v211);
  v213 = vzip1q_s32(v203, v211);
  v214 = vshlq_u32(v204, v209);
  v215 = vzip2q_s32(v204, v214);
  v216 = vzip1q_s32(v204, v214);
  v217 = vshlq_u32(v205, v209);
  v218 = vzip2q_s32(v205, v217);
  v219 = vzip1q_s32(v205, v217);
  v220 = vnegq_s32((*&v126 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
  v221 = vshlq_u32(v206, v220);
  v222 = vzip2q_s32(v206, v221);
  v223 = vzip1q_s32(v206, v221);
  v224 = vshlq_u32(v207, v220);
  v225 = vzip2q_s32(v207, v224);
  v226 = vzip1q_s32(v207, v224);
  v227 = vnegq_s32((*&v142 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
  v228 = vshlq_u32(v210, v227);
  v229 = vuzp1q_s16(v213, v212);
  v230 = vuzp1q_s16(v216, v215);
  v231 = vuzp1q_s16(v219, v218);
  v232 = vuzp1q_s16(v223, v222);
  v233 = vnegq_s16((*&v59 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v234 = vuzp1q_s16(v226, v225);
  v235 = vuzp1q_s16(vzip1q_s32(v210, v228), vzip2q_s32(v210, v228));
  v236 = vshlq_u16(v229, vnegq_s16((*&v68 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v237 = vshlq_u16(v230, v233);
  v238 = vshlq_u16(v231, v233);
  v239 = vzip2q_s16(v229, v236);
  v240 = vzip1q_s16(v229, v236);
  v241 = vuzp1q_s8(vzip1q_s16(v230, v237), vzip2q_s16(v230, v237));
  v242 = vuzp1q_s8(vzip1q_s16(v231, v238), vzip2q_s16(v231, v238));
  v230.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v230.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v238.i64[0] = 0x808080808080808;
  v238.i64[1] = 0x808080808080808;
  v243 = vsubq_s8(v238, v68);
  v244 = vaddq_s8(v68, v230);
  v245.i64[0] = 0x808080808080808;
  v245.i64[1] = 0x808080808080808;
  v246 = vshlq_s8(vuzp1q_s8(v240, v239), v243);
  v243.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v243.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v247 = vsubq_s8(v245, v59);
  v248 = vaddq_s8(v59, v243);
  v249 = vshlq_s8(v241, v247);
  v250 = vshlq_s8(v242, v247);
  v251 = vnegq_s16((*&v60 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v252 = vshlq_s8(v246, v244);
  v253 = vshlq_s8(v249, v248);
  v254 = vdupq_lane_s32(*v252.i8, 0);
  v255 = vandq_s8(v343, v254);
  v256 = vsubq_s8(v253, v255);
  v257 = vsubq_s8(vshlq_s8(v250, v248), v255);
  v258 = vshlq_u16(v232, v251);
  v259 = vshlq_u16(v234, v251);
  v255.i64[0] = 0x808080808080808;
  v255.i64[1] = 0x808080808080808;
  v251.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v251.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v260 = vsubq_s8(v255, v60);
  v261 = vaddq_s8(v60, v251);
  v262 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v232, v258), vzip2q_s16(v232, v258)), v260);
  v263 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v234, v259), vzip2q_s16(v234, v259)), v260);
  v264 = vnegq_s16((*&v61 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v265 = vshlq_s8(v262, v261);
  v266 = vshlq_s8(v263, v261);
  v267 = vandq_s8(v344, v254);
  v268 = vsubq_s8(v265, v267);
  v269 = vsubq_s8(v266, v267);
  v270 = vshlq_u16(v235, v264);
  v267.i64[0] = 0x808080808080808;
  v267.i64[1] = 0x808080808080808;
  v266.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v266.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v271 = vsubq_s8(v267, v61);
  v272 = vaddq_s8(v61, v266);
  v273 = vshlq_u64(v156, v199);
  v274 = vuzp1q_s32(vzip1q_s64(v156, v273), vzip2q_s64(v156, v273));
  v275 = vshlq_u32(v274, v227);
  v276 = vuzp1q_s16(vzip1q_s32(v274, v275), vzip2q_s32(v274, v275));
  v277 = vshlq_u16(v276, v264);
  v278 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v235, v270), vzip2q_s16(v235, v270)), v271), v272);
  v279 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v276, v277), vzip2q_s16(v276, v277)), v271), v272);
  v280 = vandq_s8(v345, v254);
  v281 = vsubq_s8(v278, v280);
  v282 = vsubq_s8(v279, v280);
  *v278.i8 = vzip1_s32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
  *v279.i8 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
  v181.i64[0] = v278.u32[0];
  v181.i64[1] = v278.u32[1];
  v283 = v181;
  v181.i64[0] = v279.u32[0];
  v181.i64[1] = v279.u32[1];
  v284 = vshlq_u64(v342, vnegq_s64(v283));
  v285 = vshlq_u64(v83, vnegq_s64(v181));
  v286 = vuzp1q_s32(vzip1q_s64(v342, v284), vzip2q_s64(v342, v284));
  v287 = vuzp1q_s32(vzip1q_s64(v83, v285), vzip2q_s64(v83, v285));
  v288 = vshlq_u32(v286, vnegq_s32((*&v85 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v289 = vshlq_u32(v287, vnegq_s32((*&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v290 = vuzp1q_s16(vzip1q_s32(v286, v288), vzip2q_s32(v286, v288));
  v291 = vuzp1q_s16(vzip1q_s32(v287, v289), vzip2q_s32(v287, v289));
  v292 = vshlq_u16(v290, vnegq_s16((*&v84 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v293 = vshlq_u16(v291, vnegq_s16((*&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v294 = vzip2q_s16(v290, v292);
  v295 = vzip1q_s16(v290, v292);
  v296 = vzip2q_s16(v291, v293);
  v297 = vzip1q_s16(v291, v293);
  v293.i64[0] = 0x808080808080808;
  v293.i64[1] = 0x808080808080808;
  v298 = vuzp1q_s8(v297, v296);
  v296.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v296.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v299 = vshlq_s8(vshlq_s8(v298, vsubq_s8(v293, v58)), vaddq_s8(v58, v296));
  v300 = vaddq_s8(vandq_s8(v252, v346), vshlq_s8(vshlq_s8(vuzp1q_s8(v295, v294), vsubq_s8(v293, v84)), vaddq_s8(v84, v296)));
  v301.i64[0] = 0x101010101010101;
  v301.i64[1] = 0x101010101010101;
  v302 = vandq_s8(v346, v254);
  v303 = vsubq_s8(v300, v302);
  v304 = vsubq_s8(v299, v302);
  v300.i64[0] = v24 & 0x1F;
  *(v300.i32 + 1) = (v24 >> 5) & 0x3F;
  v300.i16[1] = v24 >> 11;
  v305 = vdupq_lane_s32(*v300.i8, 0);
  if (vaddlvq_s8(vceqq_s8(v347, v301)))
  {
    v306 = vnegq_s8(vandq_s8(v26, v301));
    v307 = v304;
    v307.i32[3] = v303.i32[0];
    v308 = v303;
    v308.i32[0] = v304.i32[3];
    v349.val[0] = vbslq_s8(v306, v308, v303);
    v349.val[1] = vbslq_s8(v306, v307, v304);
    v307.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v307.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, xmmword_29D2F0F80), v306), v349.val[0]);
    v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, v307), v306), v349.val[1]);
    v303 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0F90), v306), v350.val[0]);
    v304 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v307), v306), v350.val[1]);
    v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v256.i8, xmmword_29D2F0FA0), v306), v256);
    v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v256.i8, xmmword_29D2F0FB0), v306), v257);
    v256 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0FC0), v306), v350.val[0]);
    v257 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v307), v306), v350.val[1]);
    v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v268.i8, xmmword_29D2F0FD0), v306), v268);
    v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v268.i8, xmmword_29D2F0F80), v306), v269);
    v268 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v307), v306), v350.val[0]);
    v269 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0FE0), v306), v350.val[1]);
    v349.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v281.i8, xmmword_29D2F0FF0), v306), v281);
    v349.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v281.i8, xmmword_29D2F0F80), v306), v282);
    v281 = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, v307), v306), v349.val[0]);
    v282 = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, xmmword_29D2F1000), v306), v349.val[1]);
  }

  v309 = vaddq_s8(v303, v305);
  v310 = vaddq_s8(v304, v305);
  v311 = vaddq_s8(v256, v305);
  v312 = vaddq_s8(v257, v305);
  v313 = vaddq_s8(v268, v305);
  v314 = vaddq_s8(v269, v305);
  v315 = vaddq_s8(v281, v305);
  v316 = vaddq_s8(v282, v305);
  v317.i64[0] = 0x1010101010101010;
  v317.i64[1] = 0x1010101010101010;
  v318 = vceqzq_s8(vandq_s8(v26, v317));
  v319.i64[0] = 0xFF00FF00FF00FFLL;
  v319.i64[1] = 0xFF00FF00FF00FFLL;
  v320 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v309, xmmword_29D2F1010), v319), v318), v309);
  v321 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v310, xmmword_29D2F1010), v319), v318), v310);
  v322 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v311, xmmword_29D2F1010), v319), v318), v311);
  v323 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v312, xmmword_29D2F1010), v319), v318), v312);
  v324 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v313, xmmword_29D2F1010), v319), v318), v313);
  v325 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v314, xmmword_29D2F1010), v319), v318), v314);
  v326 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v315, xmmword_29D2F1010), v319), v318), v315);
  v327 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v316, xmmword_29D2F1010), v319), v318), v316);
  v328 = vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v320, 3uLL), v321, 3uLL), vuzp1q_s16(v320, v321));
  v329 = vshrn_high_n_s32(vshrn_n_s32(v320, 5uLL), v321, 5uLL);
  v321.i64[0] = 0xF800F800F800F800;
  v321.i64[1] = 0xF800F800F800F800;
  v330 = vbslq_s8(v321, v329, v328);
  v331 = vbslq_s8(v321, vshrn_high_n_s32(vshrn_n_s32(v322, 5uLL), v323, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v322, 3uLL), v323, 3uLL), vuzp1q_s16(v322, v323)));
  v332 = vbslq_s8(v321, vshrn_high_n_s32(vshrn_n_s32(v324, 5uLL), v325, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v324, 3uLL), v325, 3uLL), vuzp1q_s16(v324, v325)));
  v333 = vbslq_s8(v321, vshrn_high_n_s32(vshrn_n_s32(v326, 5uLL), v327, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v326, 3uLL), v327, 3uLL), vuzp1q_s16(v326, v327)));
  *a1 = vuzp1q_s32(v330, v332);
  *(a1 + a2) = vuzp2q_s32(v330, v332);
  v334 = (a1 + 2 * a2);
  *v334 = vuzp1q_s32(v331, v333);
  *(v334 + a2) = vuzp2q_s32(v331, v333);
  return v157;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s32(*a3, v6);
  v8 = vzip2q_s32(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s32(*v9, v10);
  v12 = vzip2q_s32(*v9, v10);
  v10.i64[0] = 0x1F0000001FLL;
  v10.i64[1] = 0x1F0000001FLL;
  v13.i64[0] = 0x3F0000003F00;
  v13.i64[1] = 0x3F0000003F00;
  v14 = vbslq_s8(v13, vshll_n_u16(*v7.i8, 3uLL), vbslq_s8(v10, vmovl_u16(*v7.i8), 0));
  v15 = vbslq_s8(v13, vshll_high_n_u16(v7, 3uLL), vbslq_s8(v10, vmovl_high_u16(v7), 0));
  v16 = vshll_n_u16(*v7.i8, 5uLL);
  v549 = v7;
  v17 = vshll_high_n_u16(v7, 5uLL);
  v7.i64[0] = 0x1F0000001F0000;
  v7.i64[1] = 0x1F0000001F0000;
  v18 = vbslq_s8(v7, v16, v14);
  v19 = vbslq_s8(v7, v17, v15);
  v548 = v11;
  v20 = vbslq_s8(v7, vshll_n_u16(*v11.i8, 5uLL), vbslq_s8(v13, vshll_n_u16(*v11.i8, 3uLL), vbslq_s8(v10, vmovl_u16(*v11.i8), 0)));
  v21 = vbslq_s8(v7, vshll_high_n_u16(v11, 5uLL), vbslq_s8(v13, vshll_high_n_u16(v11, 3uLL), vbslq_s8(v10, vmovl_high_u16(v11), 0)));
  v551 = v8;
  v22 = vbslq_s8(v7, vshll_n_u16(*v8.i8, 5uLL), vbslq_s8(v13, vshll_n_u16(*v8.i8, 3uLL), vbslq_s8(v10, vmovl_u16(*v8.i8), 0)));
  v23 = vbslq_s8(v7, vshll_high_n_u16(v8, 5uLL), vbslq_s8(v13, vshll_high_n_u16(v8, 3uLL), vbslq_s8(v10, vmovl_high_u16(v8), 0)));
  v550 = v12;
  v24 = vbslq_s8(v7, vshll_n_u16(*v12.i8, 5uLL), vbslq_s8(v13, vshll_n_u16(*v12.i8, 3uLL), vbslq_s8(v10, vmovl_u16(*v12.i8), 0)));
  v25 = vbslq_s8(v7, vshll_high_n_u16(v12, 5uLL), vbslq_s8(v13, vshll_high_n_u16(v12, 3uLL), vbslq_s8(v10, vmovl_high_u16(v12), 0)));
  v26 = vdupq_lane_s32(*v18.i8, 0);
  v27 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v28 = vshlq_s8(vshlq_s8(vsubq_s8(v21, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v29 = vshlq_s8(vshlq_s8(vsubq_s8(v22, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v30 = vshlq_s8(vshlq_s8(vsubq_s8(v23, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v562 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v563 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v31 = vqtbl1q_s8(vmaxq_s8(v562, v563), xmmword_29D2F0F70);
  v32 = vqtbl1q_s8(vminq_s8(v562, v563), xmmword_29D2F0F70);
  v33 = vpmaxq_s8(v31, v31);
  v34 = vpminq_s8(v32, v32);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vzip1q_s8(v35, v36);
  v38.i64[0] = 0x808080808080808;
  v38.i64[1] = 0x808080808080808;
  v39 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v37)), vceqzq_s8(v37));
  v40 = vqtbl1q_s8(vmaxq_s8(v27, v28), xmmword_29D2F0F70);
  v41 = vqtbl1q_s8(vminq_s8(v27, v28), xmmword_29D2F0F70);
  v42 = vpmaxq_s8(v40, v40);
  v43 = vpminq_s8(v41, v41);
  v44 = vpmaxq_s8(v42, v42);
  v45 = vpminq_s8(v43, v43);
  v46 = vmaxq_s8(v35, v44);
  v47 = vminq_s8(v36, v45);
  v48 = vzip1q_s8(v44, v45);
  v49 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v48)), vceqzq_s8(v48));
  v50 = vqtbl1q_s8(vmaxq_s8(v29, v30), xmmword_29D2F0F70);
  v51 = vqtbl1q_s8(vminq_s8(v29, v30), xmmword_29D2F0F70);
  v52 = vpmaxq_s8(v50, v50);
  v53 = vpminq_s8(v51, v51);
  v54 = vpmaxq_s8(v52, v52);
  v55 = vpminq_s8(v53, v53);
  v56 = vmaxq_s8(v46, v54);
  v57 = vminq_s8(v47, v55);
  v58 = vzip1q_s8(v54, v55);
  v59 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v58)), vceqzq_s8(v58));
  v60 = vshlq_s8(vshlq_s8(vsubq_s8(v24, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v61 = vshlq_s8(vshlq_s8(vsubq_s8(v25, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v62 = vqtbl1q_s8(vmaxq_s8(v60, v61), xmmword_29D2F0F70);
  v63 = vqtbl1q_s8(vminq_s8(v60, v61), xmmword_29D2F0F70);
  v64 = vpmaxq_s8(v62, v62);
  v65 = vpminq_s8(v63, v63);
  v66 = vpmaxq_s8(v64, v64);
  v67 = vpminq_s8(v65, v65);
  v68 = vmaxq_s8(v56, v66);
  v69 = vminq_s8(v57, v67);
  v70 = vzip1q_s8(v66, v67);
  v71 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v70)), vceqzq_s8(v70));
  v72 = vpmaxq_s8(v39, v39);
  v73 = vpmaxq_s8(v49, v49);
  v74 = vpmaxq_s8(v59, v59);
  v75 = vpmaxq_s8(v71, v71);
  v76 = vmaxq_s8(vmaxq_s8(v72, v73), vmaxq_s8(v74, v75));
  v77 = vclzq_s8(vsubq_s8(v68, v69));
  v78 = vsubq_s8(v38, v77);
  v79 = vminq_s8(v78, v76);
  if (!vmaxvq_s8(v79))
  {
    a1->i16[0] = a3->i16[0];
    v178 = 1;
    result = 2;
    goto LABEL_100;
  }

  v557 = v27;
  v558 = v28;
  v559 = v29;
  v560 = v30;
  v561 = v60;
  v554 = v61;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81.i64[0] = 0x707070707070707;
  v81.i64[1] = 0x707070707070707;
  v82 = vcgtq_s8(v76, v78);
  v552 = vandq_s8(vsubq_s8(vshlq_s8(v80, vsubq_s8(v81, v77)), v69), v82);
  v83.i64[0] = 0x303030303030303;
  v83.i64[1] = 0x303030303030303;
  v539 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v72), v83), 0);
  v542 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v74), v83), 0);
  v544 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v73), v83), 0);
  v546 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v75), v83), 0);
  v84.i64[0] = 0x404040404040404;
  v84.i64[1] = 0x404040404040404;
  v85 = v26;
  v86 = vorrq_s8(vbicq_s8(v84, vceqq_s8(vaddq_s8(v546, v542), vnegq_s8(vaddq_s8(v539, v544)))), vorrq_s8(vandq_s8(vceqzq_s8(v79), v83), vandq_s8(v82, v38)));
  v87.i64[0] = 0xFF00FF00FF00FFLL;
  v87.i64[1] = 0xFF00FF00FF00FFLL;
  v556 = v85;
  v88 = vsubq_s8(v85, vshlq_s8(vqtbl1q_s8(v85, xmmword_29D2F1010), v87));
  v540 = v23;
  v541 = v21;
  v89 = vshlq_s8(vshlq_s8(vsubq_s8(v20, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v20, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v90 = vshlq_s8(vshlq_s8(vsubq_s8(v21, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v21, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v91 = vshlq_s8(vshlq_s8(vsubq_s8(v22, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v22, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v92 = vshlq_s8(vshlq_s8(vsubq_s8(v23, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v23, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v93 = vshlq_s8(vshlq_s8(vsubq_s8(v24, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v24, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v94 = vshlq_s8(vshlq_s8(vsubq_s8(v25, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v25, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v537 = vshlq_s8(vshlq_s8(vsubq_s8(v19, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v19, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v538 = vshlq_s8(vshlq_s8(vsubq_s8(v18, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v18, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v95 = vqtbl1q_s8(vmaxq_s8(v538, v537), xmmword_29D2F0F70);
  v96 = vqtbl1q_s8(vminq_s8(v538, v537), xmmword_29D2F0F70);
  v97 = vpmaxq_s8(v95, v95);
  v98 = vpminq_s8(v96, v96);
  v99 = vpmaxq_s8(v97, v97);
  v100 = vpminq_s8(v98, v98);
  v101 = vzip1q_s8(v99, v100);
  v102 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v101)), vceqzq_s8(v101));
  v103 = vpmaxq_s8(v102, v102);
  v535 = v90;
  v536 = v89;
  v104 = vqtbl1q_s8(vmaxq_s8(v89, v90), xmmword_29D2F0F70);
  v105 = vqtbl1q_s8(vminq_s8(v89, v90), xmmword_29D2F0F70);
  v106 = vpmaxq_s8(v104, v104);
  v107 = vpminq_s8(v105, v105);
  v108 = vpmaxq_s8(v106, v106);
  v109 = vpminq_s8(v107, v107);
  v110 = vmaxq_s8(v99, v108);
  v111 = vminq_s8(v100, v109);
  v112 = vzip1q_s8(v108, v109);
  v113 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v112)), vceqzq_s8(v112));
  v114 = v79;
  v115 = vpmaxq_s8(v113, v113);
  v533 = v92;
  v534 = v91;
  v116 = vqtbl1q_s8(vmaxq_s8(v91, v92), xmmword_29D2F0F70);
  v117 = vqtbl1q_s8(vminq_s8(v91, v92), xmmword_29D2F0F70);
  v118 = vpmaxq_s8(v116, v116);
  v119 = vpminq_s8(v117, v117);
  v120 = vpmaxq_s8(v118, v118);
  v121 = vpminq_s8(v119, v119);
  v122 = vmaxq_s8(v110, v120);
  v123 = vminq_s8(v111, v121);
  v124 = vzip1q_s8(v120, v121);
  v125 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v124)), vceqzq_s8(v124));
  v126 = vpmaxq_s8(v125, v125);
  v532 = v93;
  v127 = vqtbl1q_s8(vmaxq_s8(v93, v94), xmmword_29D2F0F70);
  v128 = vqtbl1q_s8(vminq_s8(v93, v94), xmmword_29D2F0F70);
  v129 = vpmaxq_s8(v127, v127);
  v130 = vpminq_s8(v128, v128);
  v131 = vpmaxq_s8(v129, v129);
  v132 = vpminq_s8(v130, v130);
  v133 = vminq_s8(v123, v132);
  v134 = vzip1q_s8(v131, v132);
  v135 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v134)), vceqzq_s8(v134));
  v136 = vpmaxq_s8(v135, v135);
  v137 = vmaxq_s8(vmaxq_s8(v103, v115), vmaxq_s8(v126, v136));
  v138 = vclzq_s8(vsubq_s8(vmaxq_s8(v122, v131), v133));
  v139 = vsubq_s8(v38, v138);
  v140 = vcgtq_s8(v137, v139);
  v141 = vminq_s8(v139, v137);
  v139.i64[0] = 0x1010101010101010;
  v139.i64[1] = 0x1010101010101010;
  v137.i64[0] = 0x1818181818181818;
  v137.i64[1] = 0x1818181818181818;
  v142 = vorrq_s8(vandq_s8(vceqzq_s8(v141), v83), vbslq_s8(v140, v137, v139));
  v143 = vmaxq_s8(vminq_s8(vsubq_s8(v141, v103), v83), 0);
  v144 = vmaxq_s8(vminq_s8(vsubq_s8(v141, v115), v83), 0);
  v145 = vmaxq_s8(vminq_s8(vsubq_s8(v141, v126), v83), 0);
  v146 = vmaxq_s8(vminq_s8(vsubq_s8(v141, v136), v83), 0);
  v147 = vsubq_s8(v141, v143);
  v148 = vsubq_s8(v141, v144);
  v149 = vsubq_s8(v141, v145);
  v150 = vsubq_s8(v141, v146);
  v151 = vceqq_s8(vaddq_s8(v146, v145), vnegq_s8(vaddq_s8(v143, v144)));
  v145.i64[0] = 0x404040404040404;
  v145.i64[1] = 0x404040404040404;
  v152 = vorrq_s8(vbicq_s8(v145, v151), v142);
  v153 = vmovl_u8(*v152.i8);
  v144.i64[0] = 0x8000800080008;
  v144.i64[1] = 0x8000800080008;
  v91.i64[0] = 0x2000200020002;
  v91.i64[1] = 0x2000200020002;
  v154 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v141.i8), vceqzq_s16((*&v153 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v152.i8, 1uLL), v144)), vandq_s8(vceqq_s16((*&v153 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v91), v144)), *v147.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL));
  v155 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v86.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v114.i8, vcgt_u8(0x808080808080808, *v86.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v86.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v91), v144));
  v156 = vsubq_s8(v114, v539);
  v157 = vsubq_s8(v114, v542);
  v158 = vsubq_s8(v114, v546);
  v159 = vsubq_s8(v114, v544);
  v160 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v155, *v156.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v157.i8, *v159.i8), *v158.i8), 3uLL)), v154)), 0);
  v161 = vaddlvq_s8(v160);
  v163 = a5 < 4 || a6 < 2;
  if (v161)
  {
    v164.i64[0] = 0x707070707070707;
    v164.i64[1] = 0x707070707070707;
    v165.i64[0] = -1;
    v165.i64[1] = -1;
    v166 = vandq_s8(vsubq_s8(vshlq_s8(v165, vsubq_s8(v164, v138)), v133), v140);
    v556 = vbslq_s8(v160, v88, v556);
    v562 = vbslq_s8(v160, v538, v562);
    v563 = vbslq_s8(v160, v537, v563);
    v557 = vbslq_s8(v160, v536, v557);
    v558 = vbslq_s8(v160, v535, v558);
    v559 = vbslq_s8(v160, v534, v559);
    v560 = vbslq_s8(v160, v533, v560);
    v561 = vbslq_s8(v160, v532, v561);
    v167 = vbslq_s8(v160, v94, v554);
    v159 = vbslq_s8(v160, v148, v159);
    v543 = vbslq_s8(v160, v147, v156);
    v545 = vbslq_s8(v160, v149, v157);
    v547 = vbslq_s8(v160, v150, v158);
    v168 = vbslq_s8(v160, v166, v552);
    v169 = vbslq_s8(v160, v141, v114);
    v86 = vbslq_s8(v160, v152, v86);
    v171 = v540;
    v170 = v541;
    if (v163)
    {
LABEL_10:
      v173 = v545;
      v172 = v547;
      v175 = v562;
      v174 = v563;
      v176 = v86;
      v86.i32[0] = v556.i32[0];
      v177 = v543;
      goto LABEL_16;
    }
  }

  else
  {
    v543 = v156;
    v545 = v157;
    v547 = v158;
    v168 = v552;
    v167 = v554;
    v169 = v114;
    v171 = v540;
    v170 = v541;
    if (v163)
    {
      goto LABEL_10;
    }
  }

  v553 = v168;
  v555 = v167;
  v180 = vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0F80));
  v181 = vsubq_s8(v19, vqtbl2q_s8(*v18.i8, xmmword_29D2F1030));
  v182 = v170;
  v182.i32[3] = v19.i32[3];
  v183 = v171;
  v183.i32[3] = v19.i32[3];
  v184 = v25;
  v184.i32[3] = v19.i32[3];
  v185 = vqtbl2q_s8(*v24.i8, xmmword_29D2F0F80);
  v186 = vsubq_s8(v24, vqtbl2q_s8(*v24.i8, xmmword_29D2F1060));
  v187 = v159;
  v188 = v181;
  v188.i32[3] = v180.i32[0];
  v180.i32[0] = v181.i32[3];
  v189 = vshlq_s8(v188, xmmword_29D2F1310);
  v190 = vshlq_s8(vsubq_s8(v171, vqtbl2q_s8(*v22.i8, xmmword_29D2F0F80)), xmmword_29D2F1310);
  v191 = vshlq_s8(v186, xmmword_29D2F1310);
  v192 = vshlq_s8(vsubq_s8(v25, v185), xmmword_29D2F1310);
  v193 = vshlq_s8(vshlq_s8(v180, xmmword_29D2F1310), xmmword_29D2F1320);
  v194 = vshlq_s8(v189, xmmword_29D2F1320);
  v195 = vshlq_s8(vshlq_s8(vsubq_s8(v20, vqtbl2q_s8(*v20.i8, xmmword_29D2F0FA0)), xmmword_29D2F1310), xmmword_29D2F1320);
  v196 = vshlq_s8(vshlq_s8(vsubq_s8(v170, vqtbl2q_s8(*v20.i8, xmmword_29D2F1040)), xmmword_29D2F1310), xmmword_29D2F1320);
  v197 = vshlq_s8(vshlq_s8(vsubq_s8(v22, vqtbl2q_s8(*v22.i8, xmmword_29D2F1050)), xmmword_29D2F1310), xmmword_29D2F1320);
  v198 = vshlq_s8(v190, xmmword_29D2F1320);
  v199 = vshlq_s8(v191, xmmword_29D2F1320);
  v200 = vshlq_s8(v192, xmmword_29D2F1320);
  v201 = vqtbl1q_s8(vmaxq_s8(v193, v194), xmmword_29D2F0F70);
  v202 = vqtbl1q_s8(vminq_s8(v193, v194), xmmword_29D2F0F70);
  v203 = vpmaxq_s8(v201, v201);
  v204 = vpminq_s8(v202, v202);
  v205 = vpmaxq_s8(v203, v203);
  v206 = vpminq_s8(v204, v204);
  v207 = vzip1q_s8(v205, v206);
  v208.i64[0] = 0x808080808080808;
  v208.i64[1] = 0x808080808080808;
  v209 = vbicq_s8(vsubq_s8(v208, vclsq_s8(v207)), vceqzq_s8(v207));
  v210 = vpmaxq_s8(v209, v209);
  v211 = vqtbl1q_s8(vmaxq_s8(v195, v196), xmmword_29D2F0F70);
  v212 = vqtbl1q_s8(vminq_s8(v195, v196), xmmword_29D2F0F70);
  v213 = vpmaxq_s8(v211, v211);
  v214 = vpminq_s8(v212, v212);
  v215 = vpmaxq_s8(v213, v213);
  v216 = vpminq_s8(v214, v214);
  v217 = vmaxq_s8(v205, v215);
  v218 = vminq_s8(v206, v216);
  v219 = vzip1q_s8(v215, v216);
  v220 = vbicq_s8(vsubq_s8(v208, vclsq_s8(v219)), vceqzq_s8(v219));
  v221 = vpmaxq_s8(v220, v220);
  v222 = vqtbl1q_s8(vmaxq_s8(v197, v198), xmmword_29D2F0F70);
  v223 = vqtbl1q_s8(vminq_s8(v197, v198), xmmword_29D2F0F70);
  v224 = vpmaxq_s8(v222, v222);
  v225 = vpminq_s8(v223, v223);
  v226 = vpmaxq_s8(v224, v224);
  v227 = vpminq_s8(v225, v225);
  v228 = vmaxq_s8(v217, v226);
  v229 = vminq_s8(v218, v227);
  v230 = vzip1q_s8(v226, v227);
  v231 = vbicq_s8(vsubq_s8(v208, vclsq_s8(v230)), vceqzq_s8(v230));
  v232 = v169;
  v233 = vpmaxq_s8(v231, v231);
  v234 = vqtbl1q_s8(vmaxq_s8(v199, v200), xmmword_29D2F0F70);
  v235 = vqtbl1q_s8(vminq_s8(v199, v200), xmmword_29D2F0F70);
  v236 = vpmaxq_s8(v234, v234);
  v237 = vpminq_s8(v235, v235);
  v238 = vpmaxq_s8(v236, v236);
  v239 = vpminq_s8(v237, v237);
  v240 = vmaxq_s8(v228, v238);
  v241 = vminq_s8(v229, v239);
  v242 = vzip1q_s8(v238, v239);
  v243 = vbicq_s8(vsubq_s8(v208, vclsq_s8(v242)), vceqzq_s8(v242));
  v244 = vpmaxq_s8(v243, v243);
  v245 = vmaxq_s8(vmaxq_s8(v210, v221), vmaxq_s8(v233, v244));
  v246 = vclzq_s8(vsubq_s8(v240, v241));
  v247 = vsubq_s8(v208, v246);
  v248 = vcgtq_s8(v245, v247);
  v249 = vminq_s8(v247, v245);
  v247.i64[0] = 0x909090909090909;
  v247.i64[1] = 0x909090909090909;
  v250.i64[0] = 0x202020202020202;
  v250.i64[1] = 0x202020202020202;
  v251 = vorrq_s8(vandq_s8(vceqzq_s8(v249), v250), vsubq_s8(vandq_s8(v248, v247), vmvnq_s8(v248)));
  v247.i64[0] = 0x303030303030303;
  v247.i64[1] = 0x303030303030303;
  v252 = vmaxq_s8(vminq_s8(vsubq_s8(v249, v210), v247), 0);
  v253 = vmaxq_s8(vminq_s8(vsubq_s8(v249, v221), v247), 0);
  v254 = vmaxq_s8(vminq_s8(vsubq_s8(v249, v233), v247), 0);
  v255 = vmaxq_s8(vminq_s8(vsubq_s8(v249, v244), v247), 0);
  v256 = vsubq_s8(v249, v252);
  v257 = vsubq_s8(v249, v253);
  v258 = vsubq_s8(v249, v254);
  v259 = vsubq_s8(v249, v255);
  v260 = vceqq_s8(vaddq_s8(v255, v254), vnegq_s8(vaddq_s8(v252, v253)));
  v255.i64[0] = 0x404040404040404;
  v255.i64[1] = 0x404040404040404;
  v261 = vorrq_s8(vbicq_s8(v255, v260), v251);
  v262.i64[0] = 0x3000300030003;
  v262.i64[1] = 0x3000300030003;
  v176 = v86;
  v263 = vmovl_s8(*v86.i8);
  v253.i64[0] = 0x8000800080008;
  v253.i64[1] = 0x8000800080008;
  v264 = vbicq_s8(vmovl_s8(*v232.i8), vceqzq_s16(vandq_s8(v263, v253)));
  v265 = vandq_s8(v263, v262);
  v262.i64[0] = 0x2000200020002;
  v262.i64[1] = 0x2000200020002;
  v173 = v545;
  v172 = v547;
  v177 = v543;
  v266 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v264, vandq_s8(vshll_n_s8(*v86.i8, 1uLL), v253)), vandq_s8(vceqq_s16(v265, v262), v253)), *v543.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v545.i8, *v187.i8), *v547.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v249.i8, vcgt_u8(0x808080808080808, *v261.i8))), vand_s8(vadd_s8(*v261.i8, *v261.i8), 0x808080808080808)), *v256.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v258.i8, *v257.i8), *v259.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v266))
  {
    v267.i64[0] = 0x707070707070707;
    v267.i64[1] = 0x707070707070707;
    v268 = vsubq_s8(v267, v246);
    v267.i64[0] = -1;
    v267.i64[1] = -1;
    v269 = vandq_s8(vsubq_s8(vshlq_s8(v267, v268), v241), v248);
    v86 = vbslq_s8(v266, vextq_s8(v19, v19, 0xCuLL), v556);
    v175 = vbslq_s8(v266, v193, v562);
    v174 = vbslq_s8(v266, v194, v563);
    v557 = vbslq_s8(v266, v195, v557);
    v558 = vbslq_s8(v266, v196, v558);
    v559 = vbslq_s8(v266, v197, v559);
    v560 = vbslq_s8(v266, v198, v560);
    v561 = vbslq_s8(v266, v199, v561);
    v167 = vbslq_s8(v266, v200, v555);
    v177 = vbslq_s8(v266, v256, v543);
    v159 = vbslq_s8(v266, v257, v187);
    v173 = vbslq_s8(v266, v258, v545);
    v172 = vbslq_s8(v266, v259, v547);
    v168 = vbslq_s8(v266, v269, v553);
    v176 = vbslq_s8(v266, v261, v176);
    v169 = vbslq_s8(v266, v249, v232);
  }

  else
  {
    v168 = v553;
    v167 = v555;
    v169 = v232;
    v175 = v562;
    v174 = v563;
    v159 = v187;
    v86.i32[0] = v556.i32[0];
  }

LABEL_16:
  v270 = vmovl_s8(*v176.i8);
  v271.i64[0] = 0x8000800080008;
  v271.i64[1] = 0x8000800080008;
  v272.i64[0] = 0x3000300030003;
  v272.i64[1] = 0x3000300030003;
  v273.i64[0] = 0x2000200020002;
  v273.i64[1] = 0x2000200020002;
  v274 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v169.i8), vceqzq_s16(vandq_s8(v270, v271))), vandq_s8(vshll_n_s8(*v176.i8, 1uLL), v271)), vandq_s8(vceqq_s16(vandq_s8(v270, v272), v273), v271)), *v177.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v173.i8, *v159.i8), *v172.i8), 3uLL));
  v275 = vpaddq_s16(v274, v274);
  if ((vpaddq_s16(v275, v275).i16[0] + 47) > 0x1FF)
  {
    *a1 = v549;
    a1[1] = v548;
    v178 = 63;
    a1[2] = v551;
    a1[3] = v550;
    result = 64;
  }

  else
  {
    v276 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v277 = 8 * (a1 & 7);
    if (v277)
    {
      v278 = *v276 & ~(-1 << v277);
    }

    else
    {
      v278 = 0;
    }

    *a2 = 0;
    if (v169.i8[0])
    {
      v279 = ((v169.u8[0] << 15) + 229376) & 0x38000;
    }

    else
    {
      v279 = 0;
    }

    if (v169.i8[1])
    {
      v280 = ((v169.u8[1] << 18) + 1835008) & 0x1C0000;
    }

    else
    {
      v280 = 0;
    }

    if (v169.i8[2])
    {
      v281 = ((v169.u8[2] << 21) + 14680064) & 0xE00000;
    }

    else
    {
      v281 = 0;
    }

    v282 = v86.i8[0] & 0x1F | (32 * (v86.i8[1] & 0x3F)) | ((v86.i8[2] & 0x1F) << 11);
    v283 = v176.i8[0] & 0x1F | ((32 * (v176.i8[1] & 0x1F)) & 0x83FF) | ((v176.i8[2] & 0x1F) << 10) | v279 | v280 | v281;
    v284 = (v283 << v277) | v278;
    if (v277 >= 0x28)
    {
      *v276 = v284;
      v284 = v283 >> (-8 * (a1 & 7u));
    }

    v285 = (v277 + 24) & 0x38;
    v286 = v284 | (v282 << v285);
    if (v285 >= 0x30)
    {
      *(v276 + (((v277 + 24) >> 3) & 8)) = v286;
      v286 = v282 >> -v285;
    }

    v287 = v277 + 40;
    v288 = vsubq_s8(v169, v177);
    v289 = vsubq_s8(v169, v159);
    v290 = vsubq_s8(v169, v173);
    v291 = vsubq_s8(v169, v172);
    v292 = vtrn1q_s8(v288, v289);
    v293 = vtrn2q_s8(v288, v289);
    v294 = vtrn1q_s8(v290, v291);
    v295 = vtrn2q_s8(v290, v291);
    v296 = vzip1q_s16(v293, v295);
    v297 = vtrn2q_s16(v293, v295);
    v295.i64[0] = vzip1q_s32(vzip1q_s16(v292, v294), v296).u64[0];
    v297.i64[0] = vzip1q_s32(vtrn2q_s16(v292, v294), v297).u64[0];
    v294.i64[0] = 0x202020202020202;
    v294.i64[1] = 0x202020202020202;
    v298 = vandq_s8(vmovl_s16(vtst_s16(*v270.i8, 0x4000400040004)), v294);
    v294.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v294.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v291.i64[0] = -1;
    v291.i64[1] = -1;
    v299 = vshlq_u8(v291, vorrq_s8(v298, v294));
    v300 = vmovl_u8(vand_s8(*v299.i8, *v295.i8));
    v301 = vmovl_u8(vand_s8(*&vextq_s8(v299, v299, 8uLL), *v297.i8));
    v302 = vmovl_u8(*v298.i8);
    v303 = vmovl_high_u8(v298);
    v304 = vpaddq_s16(vshlq_u16(v300, vtrn1q_s16(0, v302)), vshlq_u16(v301, vtrn1q_s16(0, v303)));
    v305 = vpaddq_s16(v302, v303);
    v306 = vmovl_u16(*v305.i8);
    v307 = vmovl_high_u16(v305);
    v308 = vpaddq_s32(vshlq_u32(vmovl_u16(*v304.i8), vtrn1q_s32(0, v306)), vshlq_u32(vmovl_high_u16(v304), vtrn1q_s32(0, v307)));
    v309 = vpaddq_s32(v306, v307);
    v310.i64[0] = v308.u32[0];
    v310.i64[1] = v308.u32[1];
    v311 = v310;
    v310.i64[0] = v308.u32[2];
    v310.i64[1] = v308.u32[3];
    v312 = v310;
    v310.i64[0] = v309.u32[0];
    v310.i64[1] = v309.u32[1];
    v313 = v310;
    v310.i64[0] = v309.u32[2];
    v310.i64[1] = v309.u32[3];
    v314 = vpaddq_s64(vshlq_u64(v311, vzip1q_s64(0, v313)), vshlq_u64(v312, vzip1q_s64(0, v310)));
    v315 = vpaddq_s64(v313, v310);
    v316 = (v277 + 40) & 0x38;
    v317 = (v314.i64[0] << v316) | v286;
    if ((v315.i64[0] + v316) >= 0x40)
    {
      *(v276 + ((v287 >> 3) & 8)) = v317;
      v317 = v314.i64[0] >> -v316;
      if (!v316)
      {
        v317 = 0;
      }
    }

    v318 = vceqq_s8(v169, v177);
    v319 = v315.i64[0] + v287;
    v320 = v317 | (v314.i64[1] << v319);
    if ((v319 & 0x3F) + v315.i64[1] >= 0x40)
    {
      *(v276 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
      v320 = v314.i64[1] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v320 = 0;
      }
    }

    v321 = vandq_s8(v168, v318);
    v322 = v319 + v315.i64[1];
    v323.i64[0] = 0x808080808080808;
    v323.i64[1] = 0x808080808080808;
    v324.i64[0] = -1;
    v324.i64[1] = -1;
    v325 = vandq_s8(vextq_s8(vtstq_s8(v176, v323), 0, 0xCuLL), v169);
    v326.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v326.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v327 = vandq_s8(vshlq_u8(v324, vaddq_s8(v325, v326)), v168);
    v328 = vmovl_u8(*v325.i8);
    v329 = vpaddq_s16(vshlq_u16(vmovl_u8(*v327.i8), vtrn1q_s16(0, v328)), vmovl_high_u8(v327));
    v330 = vpaddq_s16(v328, vmovl_high_u8(v325));
    v331 = vmovl_u16(*v330.i8);
    v332 = vmovl_high_u16(v330);
    v333 = vpaddq_s32(vshlq_u32(vmovl_u16(*v329.i8), vtrn1q_s32(0, v331)), vshlq_u32(vmovl_high_u16(v329), vtrn1q_s32(0, v332)));
    v334 = vpaddq_s32(v331, v332);
    v335.i64[0] = v333.u32[0];
    v335.i64[1] = v333.u32[1];
    v336 = v335;
    v335.i64[0] = v333.u32[2];
    v335.i64[1] = v333.u32[3];
    v337 = v335;
    v335.i64[0] = v334.u32[0];
    v335.i64[1] = v334.u32[1];
    v338 = v335;
    v335.i64[0] = v334.u32[2];
    v335.i64[1] = v334.u32[3];
    v339 = vpaddq_s64(vshlq_u64(v336, vzip1q_s64(0, v338)), vshlq_u64(v337, vzip1q_s64(0, v335)));
    v340 = vpaddq_s64(v338, v335);
    v341 = (v339.i64[0] << v322) | v320;
    if (v340.i64[0] + (v322 & 0x3F) >= 0x40)
    {
      *(v276 + ((v322 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v341;
      v341 = v339.i64[0] >> -(v322 & 0x3F);
      if ((v322 & 0x3F) == 0)
      {
        v341 = 0;
      }
    }

    v342 = vaddq_s8(v321, v175);
    v343 = v340.i64[0] + v322;
    v344 = v341 | (v339.i64[1] << v343);
    if ((v343 & 0x3F) + v340.i64[1] >= 0x40)
    {
      *(v276 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
      v344 = v339.i64[1] >> -(v343 & 0x3F);
      if ((v343 & 0x3F) == 0)
      {
        v344 = 0;
      }
    }

    v345 = v343 + v340.i64[1];
    v346 = vextq_s8(0, v177, 0xCuLL);
    v347.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v347.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v348.i64[0] = -1;
    v348.i64[1] = -1;
    v349 = vandq_s8(vshlq_u8(v348, vaddq_s8(v346, v347)), v342);
    v350 = vmovl_u8(*v346.i8);
    v351 = vmovl_high_u8(v346);
    v352 = vpaddq_s16(vshlq_u16(vmovl_u8(*v349.i8), vtrn1q_s16(0, v350)), vshlq_u16(vmovl_high_u8(v349), vtrn1q_s16(0, v351)));
    v353 = vpaddq_s16(v350, v351);
    v354 = vmovl_u16(*v353.i8);
    v355 = vmovl_high_u16(v353);
    v356 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v354)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v355)));
    v357 = vpaddq_s32(v354, v355);
    v358.i64[0] = v356.u32[0];
    v358.i64[1] = v356.u32[1];
    v359 = v358;
    v358.i64[0] = v356.u32[2];
    v358.i64[1] = v356.u32[3];
    v360 = v358;
    v358.i64[0] = v357.u32[0];
    v358.i64[1] = v357.u32[1];
    v361 = v358;
    v358.i64[0] = v357.u32[2];
    v358.i64[1] = v357.u32[3];
    v362 = vpaddq_s64(vshlq_u64(v359, vzip1q_s64(0, v361)), vshlq_u64(v360, vzip1q_s64(0, v358)));
    v363 = vpaddq_s64(v361, v358);
    v364 = (v362.i64[0] << v345) | v344;
    if (v363.i64[0] + (v345 & 0x3F) >= 0x40)
    {
      *(v276 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
      v364 = v362.i64[0] >> -(v345 & 0x3F);
      if ((v345 & 0x3F) == 0)
      {
        v364 = 0;
      }
    }

    v365 = vceqq_s8(v169, v159);
    v366 = vaddq_s8(v174, v321);
    v367 = v363.i64[0] + v345;
    v368 = v364 | (v362.i64[1] << v367);
    if ((v367 & 0x3F) + v363.i64[1] >= 0x40)
    {
      *(v276 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
      v368 = v362.i64[1] >> -(v367 & 0x3F);
      if ((v367 & 0x3F) == 0)
      {
        v368 = 0;
      }
    }

    v369 = vandq_s8(v168, v365);
    v370 = v367 + v363.i64[1];
    v371.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v371.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v372.i64[0] = -1;
    v372.i64[1] = -1;
    v373 = vandq_s8(vshlq_u8(v372, vaddq_s8(v177, v371)), v366);
    v374 = vmovl_u8(*v177.i8);
    v375 = vmovl_high_u8(v177);
    v376 = vpaddq_s16(vshlq_u16(vmovl_u8(*v373.i8), vtrn1q_s16(0, v374)), vshlq_u16(vmovl_high_u8(v373), vtrn1q_s16(0, v375)));
    v377 = vpaddq_s16(v374, v375);
    v378 = vmovl_u16(*v377.i8);
    v379 = vmovl_high_u16(v377);
    v380 = vpaddq_s32(vshlq_u32(vmovl_u16(*v376.i8), vtrn1q_s32(0, v378)), vshlq_u32(vmovl_high_u16(v376), vtrn1q_s32(0, v379)));
    v381 = vpaddq_s32(v378, v379);
    v382.i64[0] = v380.u32[0];
    v382.i64[1] = v380.u32[1];
    v383 = v382;
    v382.i64[0] = v380.u32[2];
    v382.i64[1] = v380.u32[3];
    v384 = v382;
    v382.i64[0] = v381.u32[0];
    v382.i64[1] = v381.u32[1];
    v385 = v382;
    v382.i64[0] = v381.u32[2];
    v382.i64[1] = v381.u32[3];
    v386 = vpaddq_s64(vshlq_u64(v383, vzip1q_s64(0, v385)), vshlq_u64(v384, vzip1q_s64(0, v382)));
    v387 = vpaddq_s64(v385, v382);
    v388 = (v386.i64[0] << v370) | v368;
    if (v387.i64[0] + (v370 & 0x3F) >= 0x40)
    {
      *(v276 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
      v388 = v386.i64[0] >> -(v370 & 0x3F);
      if ((v370 & 0x3F) == 0)
      {
        v388 = 0;
      }
    }

    v389 = vaddq_s8(v557, v369);
    v390 = v387.i64[0] + v370;
    v391 = v388 | (v386.i64[1] << v390);
    v392 = v167;
    if ((v390 & 0x3F) + v387.i64[1] >= 0x40)
    {
      *(v276 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
      v391 = v386.i64[1] >> -(v390 & 0x3F);
      if ((v390 & 0x3F) == 0)
      {
        v391 = 0;
      }
    }

    v393 = v390 + v387.i64[1];
    v394.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v394.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v395.i64[0] = -1;
    v395.i64[1] = -1;
    v396 = vshlq_u8(v395, vaddq_s8(v159, v394));
    v397 = vandq_s8(v396, v389);
    v398 = vmovl_u8(*v397.i8);
    v399 = vmovl_high_u8(v397);
    v400 = vmovl_u8(*v159.i8);
    v401 = vmovl_high_u8(v159);
    v402 = vtrn1q_s16(0, v400);
    v403 = vtrn1q_s16(0, v401);
    v404 = vpaddq_s16(vshlq_u16(v398, v402), vshlq_u16(v399, v403));
    v405 = vpaddq_s16(v400, v401);
    v406 = vmovl_u16(*v404.i8);
    v407 = vmovl_high_u16(v404);
    v408 = vmovl_u16(*v405.i8);
    v409 = vmovl_high_u16(v405);
    v410 = vtrn1q_s32(0, v408);
    v411 = vtrn1q_s32(0, v409);
    v412 = vpaddq_s32(vshlq_u32(v406, v410), vshlq_u32(v407, v411));
    v413 = vpaddq_s32(v408, v409);
    v414.i64[0] = v412.u32[0];
    v414.i64[1] = v412.u32[1];
    v415 = v414;
    v414.i64[0] = v412.u32[2];
    v414.i64[1] = v412.u32[3];
    v416 = v414;
    v414.i64[0] = v413.u32[0];
    v414.i64[1] = v413.u32[1];
    v417 = v414;
    v414.i64[0] = v413.u32[2];
    v414.i64[1] = v413.u32[3];
    v418 = vzip1q_s64(0, v417);
    v419 = vzip1q_s64(0, v414);
    v420 = vpaddq_s64(vshlq_u64(v415, v418), vshlq_u64(v416, v419));
    v421 = vpaddq_s64(v417, v414);
    v422 = (v420.i64[0] << v393) | v391;
    if (v421.i64[0] + (v393 & 0x3F) >= 0x40)
    {
      *(v276 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      if ((v393 & 0x3F) != 0)
      {
        v422 = v420.i64[0] >> -(v393 & 0x3F);
      }

      else
      {
        v422 = 0;
      }
    }

    v423 = vceqq_s8(v169, v173);
    v424 = vaddq_s8(v558, v369);
    v425 = v421.i64[0] + v393;
    v426 = v422 | (v420.i64[1] << v425);
    if ((v425 & 0x3F) + v421.i64[1] >= 0x40)
    {
      *(v276 + ((v425 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
      v426 = v420.i64[1] >> -(v425 & 0x3F);
      if ((v425 & 0x3F) == 0)
      {
        v426 = 0;
      }
    }

    v427 = vandq_s8(v168, v423);
    v428 = v425 + v421.i64[1];
    v429 = vandq_s8(v396, v424);
    v430 = vpaddq_s16(vshlq_u16(vmovl_u8(*v429.i8), v402), vshlq_u16(vmovl_high_u8(v429), v403));
    v431 = vpaddq_s32(vshlq_u32(vmovl_u16(*v430.i8), v410), vshlq_u32(vmovl_high_u16(v430), v411));
    v432.i64[0] = v431.u32[0];
    v432.i64[1] = v431.u32[1];
    v433 = v432;
    v432.i64[0] = v431.u32[2];
    v432.i64[1] = v431.u32[3];
    v434 = vpaddq_s64(vshlq_u64(v433, v418), vshlq_u64(v432, v419));
    v435 = (v434.i64[0] << v428) | v426;
    if (v421.i64[0] + (v428 & 0x3F) >= 0x40)
    {
      *(v276 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
      v435 = v434.i64[0] >> -(v428 & 0x3F);
      if ((v428 & 0x3F) == 0)
      {
        v435 = 0;
      }
    }

    v436 = vaddq_s8(v559, v427);
    v437 = v421.i64[0] + v428;
    v438 = (v421.i64[0] + v428) & 0x3F;
    v439 = v435 | (v434.i64[1] << v437);
    if ((v437 & 0x3F) + v421.i64[1] >= 0x40)
    {
      *(v276 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v439;
      v439 = v434.i64[1] >> -v438;
      if (!v438)
      {
        v439 = 0;
      }
    }

    v440 = v437 + v421.i64[1];
    v441.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v441.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v442.i64[0] = -1;
    v442.i64[1] = -1;
    v443 = vshlq_u8(v442, vaddq_s8(v173, v441));
    v444 = vandq_s8(v443, v436);
    v445 = vmovl_u8(*v444.i8);
    v446 = vmovl_high_u8(v444);
    v447 = vmovl_u8(*v173.i8);
    v448 = vmovl_high_u8(v173);
    v449 = vtrn1q_s16(0, v447);
    v450 = vtrn1q_s16(0, v448);
    v451 = vpaddq_s16(vshlq_u16(v445, v449), vshlq_u16(v446, v450));
    v452 = vpaddq_s16(v447, v448);
    v453 = vmovl_u16(*v451.i8);
    v454 = vmovl_high_u16(v451);
    v455 = vmovl_u16(*v452.i8);
    v456 = vmovl_high_u16(v452);
    v457 = vtrn1q_s32(0, v455);
    v458 = vtrn1q_s32(0, v456);
    v459 = vpaddq_s32(vshlq_u32(v453, v457), vshlq_u32(v454, v458));
    v460 = vpaddq_s32(v455, v456);
    v461.i64[0] = v459.u32[0];
    v461.i64[1] = v459.u32[1];
    v462 = v461;
    v461.i64[0] = v459.u32[2];
    v461.i64[1] = v459.u32[3];
    v463 = v461;
    v461.i64[0] = v460.u32[0];
    v461.i64[1] = v460.u32[1];
    v464 = v461;
    v461.i64[0] = v460.u32[2];
    v461.i64[1] = v460.u32[3];
    v465 = vzip1q_s64(0, v464);
    v466 = vzip1q_s64(0, v461);
    v467 = vpaddq_s64(vshlq_u64(v462, v465), vshlq_u64(v463, v466));
    v468 = vpaddq_s64(v464, v461);
    v469 = (v467.i64[0] << v440) | v439;
    if (v468.i64[0] + (v440 & 0x3F) >= 0x40)
    {
      *(v276 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
      if ((v440 & 0x3F) != 0)
      {
        v469 = v467.i64[0] >> -(v440 & 0x3F);
      }

      else
      {
        v469 = 0;
      }
    }

    v470 = vceqq_s8(v169, v172);
    v471 = vaddq_s8(v560, v427);
    v472 = v468.i64[0] + v440;
    v473 = v469 | (v467.i64[1] << v472);
    if ((v472 & 0x3F) + v468.i64[1] >= 0x40)
    {
      *(v276 + ((v472 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
      v473 = v467.i64[1] >> -(v472 & 0x3F);
      if ((v472 & 0x3F) == 0)
      {
        v473 = 0;
      }
    }

    v474 = vandq_s8(v168, v470);
    v475 = v472 + v468.i64[1];
    v476 = vandq_s8(v443, v471);
    v477 = vpaddq_s16(vshlq_u16(vmovl_u8(*v476.i8), v449), vshlq_u16(vmovl_high_u8(v476), v450));
    v478 = vpaddq_s32(vshlq_u32(vmovl_u16(*v477.i8), v457), vshlq_u32(vmovl_high_u16(v477), v458));
    v479.i64[0] = v478.u32[0];
    v479.i64[1] = v478.u32[1];
    v480 = v479;
    v479.i64[0] = v478.u32[2];
    v479.i64[1] = v478.u32[3];
    v481 = vpaddq_s64(vshlq_u64(v480, v465), vshlq_u64(v479, v466));
    v482 = (v481.i64[0] << v475) | v473;
    if (v468.i64[0] + (v475 & 0x3F) >= 0x40)
    {
      *(v276 + ((v475 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v482;
      v482 = v481.i64[0] >> -(v475 & 0x3F);
      if ((v475 & 0x3F) == 0)
      {
        v482 = 0;
      }
    }

    v483 = vaddq_s8(v561, v474);
    v484 = v468.i64[0] + v475;
    v485 = (v468.i64[0] + v475) & 0x3F;
    v486 = v482 | (v481.i64[1] << v484);
    if ((v484 & 0x3F) + v468.i64[1] >= 0x40)
    {
      *(v276 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v486;
      v486 = v481.i64[1] >> -v485;
      if (!v485)
      {
        v486 = 0;
      }
    }

    v487 = v484 + v468.i64[1];
    v488.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v488.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v489.i64[0] = -1;
    v489.i64[1] = -1;
    v490 = vshlq_u8(v489, vaddq_s8(v172, v488));
    v491 = vandq_s8(v490, v483);
    v492 = vmovl_u8(*v491.i8);
    v493 = vmovl_high_u8(v491);
    v494 = vmovl_u8(*v172.i8);
    v495 = vmovl_high_u8(v172);
    v496 = vtrn1q_s16(0, v494);
    v497 = vtrn1q_s16(0, v495);
    v498 = vpaddq_s16(vshlq_u16(v492, v496), vshlq_u16(v493, v497));
    v499 = vpaddq_s16(v494, v495);
    v500 = vmovl_u16(*v498.i8);
    v501 = vmovl_high_u16(v498);
    v502 = vmovl_u16(*v499.i8);
    v503 = vmovl_high_u16(v499);
    v504 = vtrn1q_s32(0, v502);
    v505 = vtrn1q_s32(0, v503);
    v506 = vpaddq_s32(vshlq_u32(v500, v504), vshlq_u32(v501, v505));
    v507 = vpaddq_s32(v502, v503);
    v508.i64[0] = v506.u32[0];
    v508.i64[1] = v506.u32[1];
    v509 = v508;
    v508.i64[0] = v506.u32[2];
    v508.i64[1] = v506.u32[3];
    v510 = v508;
    v508.i64[0] = v507.u32[0];
    v508.i64[1] = v507.u32[1];
    v511 = v508;
    v508.i64[0] = v507.u32[2];
    v508.i64[1] = v507.u32[3];
    v512 = vzip1q_s64(0, v511);
    v513 = vzip1q_s64(0, v508);
    v514 = vpaddq_s64(vshlq_u64(v509, v512), vshlq_u64(v510, v513));
    v515 = vpaddq_s64(v511, v508);
    v516 = (v514.i64[0] << v487) | v486;
    if (v515.i64[0] + (v487 & 0x3F) > 0x3F)
    {
      *(v276 + ((v487 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v516;
      if ((v487 & 0x3F) != 0)
      {
        v516 = v514.i64[0] >> -(v487 & 0x3F);
      }

      else
      {
        v516 = 0;
      }
    }

    v517 = vaddq_s8(v392, v474);
    v518 = v515.i64[0] + v487;
    v519 = v516 | (v514.i64[1] << v518);
    if ((v518 & 0x3F) + v515.i64[1] >= 0x40)
    {
      *(v276 + ((v518 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v519;
      v519 = v514.i64[1] >> -(v518 & 0x3F);
      if ((v518 & 0x3F) == 0)
      {
        v519 = 0;
      }
    }

    v520 = v518 + v515.i64[1];
    v521 = vandq_s8(v490, v517);
    v522 = vpaddq_s16(vshlq_u16(vmovl_u8(*v521.i8), v496), vshlq_u16(vmovl_high_u8(v521), v497));
    v523 = vpaddq_s32(vshlq_u32(vmovl_u16(*v522.i8), v504), vshlq_u32(vmovl_high_u16(v522), v505));
    v524.i64[0] = v523.u32[0];
    v524.i64[1] = v523.u32[1];
    v525 = v524;
    v524.i64[0] = v523.u32[2];
    v524.i64[1] = v523.u32[3];
    v526 = vpaddq_s64(vshlq_u64(v525, v512), vshlq_u64(v524, v513));
    v527 = (v526.i64[0] << v520) | v519;
    if (v515.i64[0] + (v520 & 0x3F) >= 0x40)
    {
      *(v276 + ((v520 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v527;
      v527 = v526.i64[0] >> -(v520 & 0x3F);
      if ((v520 & 0x3F) == 0)
      {
        v527 = 0;
      }
    }

    v528 = v515.i64[0] + v520;
    v529 = (v515.i64[0] + v520) & 0x3F;
    v530 = v527 | (v526.i64[1] << (v515.i8[0] + v520));
    if ((v529 + v515.i64[1]) >= 0x40)
    {
      *(v276 + ((v528 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v530;
      v530 = v526.i64[1] >> -v529;
      if (!v529)
      {
        v530 = 0;
      }
    }

    v531 = v528 + v515.i64[1];
    if ((v531 & 0x3F) != 0)
    {
      *(v276 + ((v531 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v530;
    }

    result = (v531 - v277 + 7) >> 3;
    v178 = *a2 | (result - 1);
  }

LABEL_100:
  *a2 = v178;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
  }

  else
  {
    *a4 = 0;
  }

  v12 = 4 * a2;
  v13 = v6 - 4;
  if (v7 && v6 >= 5)
  {
    if (v13 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v6 - 4;
    }

    if (v7 >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
    v9 = (v9 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v16 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v6;
    }

    if (v16 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 1, a2, v18, v17);
    v9 = (v9 + result);
  }

  else
  {
    a4[2] = 0;
    if (v7 < 9)
    {
      goto LABEL_37;
    }
  }

  if (v6 >= 5)
  {
    if (v13 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v6 - 4;
    }

    if (v16 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 16), a2, v20, v19);
    v9 = (v9 + result);
    v21 = v6 - 8;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v21 = v6 - 8;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v6 < 9)
  {
LABEL_46:
    a4[4] = 0;
    v24 = v6 - 12;
    if (!v7)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v21 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  if (v7 >= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v7;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 = (v9 + result);
  v24 = v6 - 12;
LABEL_47:
  if (v6 >= 0xD)
  {
    if (v24 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v24;
    }

    if (v7 >= 8)
    {
      v26 = 8;
    }

    else
    {
      v26 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
    v9 = (v9 + result);
    if (v7 < 9)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v7 < 9)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v6 >= 9)
  {
    if (v21 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v21;
    }

    if (v16 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 16), a2, v28, v27);
    v9 = (v9 + result);
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v7 < 9)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v6 < 0xD)
  {
    goto LABEL_76;
  }

  if (v24 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v24;
  }

  if (v16 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v7 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 16), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 24;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x29)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  v16.i64[0] = 0x303030303030303;
  v16.i64[1] = 0x303030303030303;
  v17.i8[3] = 3;
  v17.i32[1] = 50529027;
  v17.i8[0] = v15 & 0x1F;
  v17.i8[1] = (v15 >> 5) & 0x1F;
  v17.i8[2] = (v15 >> 10) & 0x1F;
  v18.i32[0] = v15 >> 15;
  v18.i32[1] = (v15 >> 18) & 0x3F;
  v19 = vadd_s32(vand_s8(v18, 0x700000007), 0x100000001);
  v20 = v19.u8[0];
  v20.i8[1] = v19.i8[4];
  v20.i8[2] = ((v15 >> 21) & 7) + 1;
  v21 = v12 + 40;
  v22 = v14 & 0x38;
  v23 = (v13 + ((v14 >> 3) & 8));
  v24 = *v23 >> v22;
  if (v22 >= 0x31)
  {
    v24 |= v23[1] << -v22;
  }

  v25 = (8 * (a3 & 7)) | 0x200;
  v26 = vdupq_lane_s32(v17, 0);
  v27 = vandq_s8(v26, v16);
  v28 = vbicq_s8(vdupq_lane_s32(v20, 0), vceqq_s8(v27, v16));
  v29.i64[0] = 0x202020202020202;
  v29.i64[1] = 0x202020202020202;
  v30 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v17), 0x4000400040004)), v29);
  if (vmaxvq_s8(v30) < 1)
  {
    v39 = 0;
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v61 = v28;
    v60 = v28;
    v59 = v28;
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v58 = v28;
    v63.i64[0] = -1;
    v63.i64[1] = -1;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
  }

  else
  {
    v31 = vmovl_u8(*&vpaddq_s8(v30, v30));
    v32 = vmovl_u16(*&vpaddq_s16(v31, v31));
    v33 = vpaddq_s32(v32, v32).u64[0];
    v34.i64[0] = v33;
    v34.i64[1] = HIDWORD(v33);
    v35 = v34;
    v36 = vaddvq_s64(v34);
    v37 = v21 + v36;
    v38 = v36 <= 0x80 && v25 >= v37;
    v39 = !v38;
    v40 = 0uLL;
    if (v38)
    {
      v41 = v21 & 0x38;
      v42 = vaddq_s64(vdupq_n_s64(v41), vzip1q_s64(0, v35));
      v43 = (v13 + ((v21 >> 3) & 8));
      v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v42)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v42)));
      if (v41 + v36 >= 0x81)
      {
        v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v42)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v42))), v40);
      }

      v21 = v37;
    }

    v44 = vzip1_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v45.i64[0] = v44.u32[0];
    v45.i64[1] = v44.u32[1];
    v46 = vshlq_u64(v40, vnegq_s64(v45));
    v47 = vuzp1q_s32(vzip1q_s64(v40, v46), vzip2q_s64(v40, v46));
    v48 = vshlq_u32(v47, vnegq_s32((*&v31 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v49 = vuzp1q_s16(vzip1q_s32(v47, v48), vzip2q_s32(v47, v48));
    v50 = vshlq_u16(v49, vnegq_s16((*&v30 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v51 = vuzp1q_s8(vzip1q_s16(v49, v50), vzip2q_s16(v49, v50));
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    v52 = vshlq_s8(v50, v30);
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v53 = vqtbl1q_s8(vandq_s8(vaddq_s8(v52, v50), v51), xmmword_29D2F0F70);
    v54 = vdupq_lane_s32(*v53.i8, 0);
    v55 = vdupq_lane_s32(*v53.i8, 1);
    v56 = vdupq_laneq_s32(v53, 2);
    v57 = vdupq_laneq_s32(v53, 3);
    v58 = vsubq_s8(v28, v54);
    v59 = vsubq_s8(v28, v55);
    v60 = vsubq_s8(v28, v56);
    v61 = vsubq_s8(v28, v57);
    v62 = vceqzq_s8(v54);
    v63 = vceqzq_s8(v55);
    v64 = vceqzq_s8(v56);
    v65 = vceqzq_s8(v57);
  }

  v66.i64[0] = 0x808080808080808;
  v66.i64[1] = 0x808080808080808;
  v67 = 0uLL;
  v68 = vandq_s8(vextq_s8(vtstq_s8(v26, v66), 0, 0xCuLL), v28);
  v69 = vmovl_u8(*&vpaddq_s8(v68, v68));
  v70 = vmovl_u16(*&vpaddq_s16(v69, v69));
  v66.i64[0] = vpaddq_s32(v70, v70).u64[0];
  v71.i64[0] = v66.u32[0];
  v71.i64[1] = v66.u32[1];
  v72 = v71;
  v73 = vaddvq_s64(v71);
  v74 = v21 + v73;
  if (v73 <= 0x80 && v25 >= v74)
  {
    v76 = v21 & 0x3F;
    v77 = vaddq_s64(vdupq_n_s64(v76), vzip1q_s64(0, v72));
    v78 = (v13 + 8 * (v21 >> 6));
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v78, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(v78->i64[0], 0), vnegq_s64(v77)));
    if (v76 + v73 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v78[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(v78[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v67);
    }

    v21 = v74;
  }

  else
  {
    v39 = 1;
  }

  v349[1] = v11;
  v349[2] = v10;
  v349[3] = v9;
  v349[4] = v8;
  v349[5] = v7;
  v349[6] = v6;
  v349[7] = v5;
  v349[8] = v4;
  v79 = v26.i8[0] & 3;
  v347 = v62;
  v348 = v27;
  v345 = v64;
  v346 = v65;
  v344 = v63;
  if (v79 == 2)
  {
    v80 = v25 < v21 + 4;
    v81 = v21 + 8;
    if (v25 >= v21 + 4)
    {
      v21 += 4;
    }

    else
    {
      v81 = v21 + 4;
    }

    if (v25 < v81)
    {
      v82 = 1;
    }

    else
    {
      v21 = v81;
      v82 = v80;
    }

    v39 |= v82;
  }

  v83 = 0uLL;
  v84 = vextq_s8(0, v58, 0xCuLL);
  v85 = vmovl_u8(*&vpaddq_s8(v84, v84));
  v86 = vmovl_u16(*&vpaddq_s16(v85, v85));
  v87 = vpaddq_s32(v86, v86).u64[0];
  v88.i64[0] = v87;
  v88.i64[1] = HIDWORD(v87);
  v89 = v88;
  v90 = vaddvq_s64(v88);
  v91 = v21 + v90;
  if (v90 <= 0x80 && v25 >= v91)
  {
    v93 = v21 & 0x3F;
    v94 = vaddq_s64(vdupq_n_s64(v93), vzip1q_s64(0, v89));
    v95 = (v13 + 8 * (v21 >> 6));
    v96 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v95, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v95->i64[0], 0), vnegq_s64(v94)));
    if (v93 + v90 >= 0x81)
    {
      v96 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v95[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v95[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v96);
    }

    v343 = v96;
    v21 = v91;
  }

  else
  {
    v39 = 1;
    v343 = 0u;
  }

  v97 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
  v99 = vpaddq_s32(v98, v98).u64[0];
  v100.i64[0] = v99;
  v100.i64[1] = HIDWORD(v99);
  v101 = v100;
  v102 = vaddvq_s64(v100);
  v103 = v21 + v102;
  if (v102 <= 0x80 && v25 >= v103)
  {
    v105 = v21 & 0x3F;
    v106 = vaddq_s64(vdupq_n_s64(v105), vzip1q_s64(0, v101));
    v107 = (v13 + 8 * (v21 >> 6));
    v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
    if (v105 + v102 >= 0x81)
    {
      v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v83);
    }

    v21 = v103;
  }

  else
  {
    v39 = 1;
  }

  v108 = vmovl_u8(*&vpaddq_s8(v59, v59));
  v109 = vmovl_u16(*&vpaddq_s16(v108, v108));
  v110 = vpaddq_s32(v109, v109).u64[0];
  v111.i64[0] = v110;
  v111.i64[1] = HIDWORD(v110);
  v112 = v111;
  v113 = vaddvq_s64(v111);
  v114 = v21 + v113;
  v115 = 0uLL;
  if (v113 <= 0x80 && v25 >= v114)
  {
    v118 = v21 & 0x3F;
    v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v112));
    v120 = (v13 + 8 * (v21 >> 6));
    v117 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
    if (v118 + v113 >= 0x81)
    {
      v117 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v117);
    }

    v21 = v114;
  }

  else
  {
    v39 = 1;
    v117 = 0uLL;
  }

  v121 = v21 + v113;
  if (v113 <= 0x80 && v25 >= v121)
  {
    v123 = v21 & 0x3F;
    v124 = vaddq_s64(vdupq_n_s64(v123), vzip1q_s64(0, v112));
    v125 = (v13 + 8 * (v21 >> 6));
    v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
    if (v123 + v113 >= 0x81)
    {
      v115 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v115);
    }

    v21 = v121;
  }

  else
  {
    v39 = 1;
  }

  v126 = vmovl_u8(*&vpaddq_s8(v60, v60));
  v127 = vmovl_u16(*&vpaddq_s16(v126, v126));
  v128 = vpaddq_s32(v127, v127).u64[0];
  v129.i64[0] = v128;
  v129.i64[1] = HIDWORD(v128);
  v130 = v129;
  v131 = vaddvq_s64(v129);
  v132 = v131;
  v133 = 0uLL;
  if (v131 > 0x80 || (v134 = v21 + v131, v25 < v21 + v131))
  {
    v39 = 1;
    v134 = v21;
    v138 = 0uLL;
  }

  else
  {
    v135 = v21 & 0x3F;
    v136 = vaddq_s64(vdupq_n_s64(v135), vzip1q_s64(0, v130));
    v137 = (v13 + 8 * (v21 >> 6));
    v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v135 + v132 >= 0x81)
    {
      v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
    }
  }

  if (v132 > 0x80 || (v139 = v134 + v132, v25 < v134 + v132))
  {
    v39 = 1;
    v139 = v134;
  }

  else
  {
    v140 = vaddq_s64(vdupq_n_s64(v134 & 0x3F), vzip1q_s64(0, v130));
    v141 = (v13 + 8 * (v134 >> 6));
    v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if ((v134 & 0x3F) + v132 >= 0x81)
    {
      v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v133);
    }
  }

  v142 = vmovl_u8(*&vpaddq_s8(v61, v61));
  v143 = vmovl_u16(*&vpaddq_s16(v142, v142));
  v144 = vpaddq_s32(v143, v143).u64[0];
  v145.i64[0] = v144;
  v145.i64[1] = HIDWORD(v144);
  v146 = v145;
  v147 = vaddvq_s64(v145);
  v148 = v147;
  if (v147 > 0x80 || (v149 = v139 + v147, v25 < v139 + v147))
  {
    v39 = 1;
    v149 = v139;
    v153 = 0uLL;
  }

  else
  {
    v150 = v139 & 0x3F;
    v151 = vaddq_s64(vdupq_n_s64(v150), vzip1q_s64(0, v146));
    v152 = (v13 + 8 * (v139 >> 6));
    v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
    if (v150 + v148 >= 0x81)
    {
      v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v153);
    }
  }

  if (v148 > 0x80 || v25 < v149 + v148)
  {
    goto LABEL_90;
  }

  v154 = vaddq_s64(vdupq_n_s64(v149 & 0x3F), vzip1q_s64(0, v146));
  v155 = (v13 + 8 * (v149 >> 6));
  v156 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v155, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v154)), vshlq_u64(vdupq_lane_s64(v155->i64[0], 0), vnegq_s64(v154)));
  if ((v149 & 0x3F) + v148 >= 0x81)
  {
    v156 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v155[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v154)), vshlq_u64(vdupq_laneq_s64(v155[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v154))), v156);
  }

  if ((v39 & 1) != 0 || (v157 = a4 + 1, v25 + 8 * v157 - (v149 + v148) - 512 >= 9))
  {
LABEL_90:
    v158 = 8 * ((v349 + 4) & 7);
    v349[0] |= 31 << v158;
    v159 = v158 | 5;
    v160 = (v158 | 5) - v158;
    if (v160 - 11 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v161 = 0;
      v162 = 6;
      do
      {
        v163 = 64 - v159;
        if (64 - v159 >= v162)
        {
          v163 = v162;
        }

        v164 = v163 + v159;
        v161 += v164 >> 6;
        v159 = v164 & 0x3F;
        v162 -= v163;
      }

      while (v162);
      v160 = v159 - v158 + (v161 << 6);
    }

    else
    {
      v161 = 0;
    }

    if (v160 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v165 = 0;
      v166 = 5;
      do
      {
        v167 = 64 - v159;
        if (64 - v159 >= v166)
        {
          v167 = v166;
        }

        v349[v161] |= ((0xFFFFFFFFFFFFFFFFLL >> v165) & ~(-1 << v167)) << v159;
        v165 += v167;
        v168 = v167 + v159;
        v161 += v168 >> 6;
        v159 = v168 & 0x3F;
        v166 -= v167;
      }

      while (v166);
    }

LABEL_102:
    v157 = 0;
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    *(a1->i64 + 2 * a2) = 0;
    *(a1->i64 + 3 * a2) = 0;
    return v157;
  }

  if (v79 == 2)
  {
    v170 = 8 * ((v349 + 6) & 7);
    v349[0] |= 31 << v170;
    v171 = v170 | 5;
    v172 = (v170 | 5) - v170;
    if (v172 - 11 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v173 = 0;
      v336 = 6;
      do
      {
        v337 = 64 - v171;
        if (64 - v171 >= v336)
        {
          v337 = v336;
        }

        v338 = v337 + v171;
        v173 += v338 >> 6;
        v171 = v338 & 0x3F;
        v336 -= v337;
      }

      while (v336);
      v172 = v171 - v170 + (v173 << 6);
    }

    else
    {
      v173 = 0;
    }

    if (v172 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v339 = 0;
      v340 = 5;
      do
      {
        v341 = 64 - v171;
        if (64 - v171 >= v340)
        {
          v341 = v340;
        }

        v349[v173] |= ((0xFFFFFFFFFFFFFFFFLL >> v339) & ~(-1 << v341)) << v171;
        v339 += v341;
        v342 = v341 + v171;
        v173 += v342 >> 6;
        v171 = v342 & 0x3F;
        v340 -= v341;
      }

      while (v340);
    }

    goto LABEL_102;
  }

  v174 = vzip1_s32(*v70.i8, *&vextq_s8(v70, v70, 8uLL));
  v175 = vzip1_s32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
  v176 = vzip1_s32(*v127.i8, *&vextq_s8(v127, v127, 8uLL));
  v177 = vzip1_s32(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
  v178.i64[0] = v174.u32[0];
  v178.i64[1] = v174.u32[1];
  v179 = vshlq_u64(v67, vnegq_s64(v178));
  v180 = vzip2q_s64(v67, v179);
  v181 = vzip1q_s64(v67, v179);
  v178.i64[0] = v175.u32[0];
  v178.i64[1] = v175.u32[1];
  v182 = vnegq_s64(v178);
  v183 = vshlq_u64(v117, v182);
  v184 = vzip2q_s64(v117, v183);
  v185 = vzip1q_s64(v117, v183);
  v186 = vshlq_u64(v115, v182);
  v187 = vzip2q_s64(v115, v186);
  v188 = vzip1q_s64(v115, v186);
  v178.i64[0] = v176.u32[0];
  v178.i64[1] = v176.u32[1];
  v189 = vnegq_s64(v178);
  v190 = vshlq_u64(v138, v189);
  v191 = vzip2q_s64(v138, v190);
  v192 = vzip1q_s64(v138, v190);
  v193 = vshlq_u64(v133, v189);
  v194 = vzip2q_s64(v133, v193);
  v195 = vzip1q_s64(v133, v193);
  v178.i64[0] = v177.u32[0];
  v178.i64[1] = v177.u32[1];
  v196 = vnegq_s64(v178);
  v197 = vshlq_u64(v153, v196);
  v198 = vzip2q_s64(v153, v197);
  v199 = vzip1q_s64(v153, v197);
  v200 = vuzp1q_s32(v181, v180);
  v201 = vuzp1q_s32(v185, v184);
  v202 = vuzp1q_s32(v188, v187);
  v203 = vuzp1q_s32(v192, v191);
  v204 = vuzp1q_s32(v195, v194);
  v205 = vnegq_s32((*&v69 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
  v206 = vnegq_s32((*&v108 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
  v207 = vuzp1q_s32(v199, v198);
  v208 = vshlq_u32(v200, v205);
  v209 = vzip2q_s32(v200, v208);
  v210 = vzip1q_s32(v200, v208);
  v211 = vshlq_u32(v201, v206);
  v212 = vzip2q_s32(v201, v211);
  v213 = vzip1q_s32(v201, v211);
  v214 = vshlq_u32(v202, v206);
  v215 = vzip2q_s32(v202, v214);
  v216 = vzip1q_s32(v202, v214);
  v217 = vnegq_s32((*&v126 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
  v218 = vshlq_u32(v203, v217);
  v219 = vzip2q_s32(v203, v218);
  v220 = vzip1q_s32(v203, v218);
  v221 = vshlq_u32(v204, v217);
  v222 = vzip2q_s32(v204, v221);
  v223 = vzip1q_s32(v204, v221);
  v224 = vnegq_s32((*&v142 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
  v225 = vshlq_u32(v207, v224);
  v226 = vuzp1q_s16(v210, v209);
  v227 = vuzp1q_s16(v213, v212);
  v228 = vuzp1q_s16(v216, v215);
  v229 = vuzp1q_s16(v220, v219);
  v230 = vnegq_s16((*&v59 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v231 = vuzp1q_s16(v223, v222);
  v232 = vuzp1q_s16(vzip1q_s32(v207, v225), vzip2q_s32(v207, v225));
  v233 = vshlq_u16(v226, vnegq_s16((*&v68 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v234 = vshlq_u16(v227, v230);
  v235 = vshlq_u16(v228, v230);
  v236 = vzip2q_s16(v226, v233);
  v237 = vzip1q_s16(v226, v233);
  v238 = vuzp1q_s8(vzip1q_s16(v227, v234), vzip2q_s16(v227, v234));
  v239 = vuzp1q_s8(vzip1q_s16(v228, v235), vzip2q_s16(v228, v235));
  v227.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v227.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v235.i64[0] = 0x808080808080808;
  v235.i64[1] = 0x808080808080808;
  v240 = vsubq_s8(v235, v68);
  v241 = vaddq_s8(v68, v227);
  v242.i64[0] = 0x808080808080808;
  v242.i64[1] = 0x808080808080808;
  v243 = vshlq_s8(vuzp1q_s8(v237, v236), v240);
  v240.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v240.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v244 = vsubq_s8(v242, v59);
  v245 = vaddq_s8(v59, v240);
  v246 = vshlq_s8(v238, v244);
  v247 = vshlq_s8(v239, v244);
  v248 = vnegq_s16((*&v60 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v249 = vshlq_s8(v243, v241);
  v250 = vshlq_s8(v246, v245);
  v251 = vdupq_lane_s32(*v249.i8, 0);
  v252 = vandq_s8(v344, v251);
  v253 = vsubq_s8(v250, v252);
  v254 = vsubq_s8(vshlq_s8(v247, v245), v252);
  v255 = vshlq_u16(v229, v248);
  v256 = vshlq_u16(v231, v248);
  v252.i64[0] = 0x808080808080808;
  v252.i64[1] = 0x808080808080808;
  v248.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v248.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v257 = vsubq_s8(v252, v60);
  v258 = vaddq_s8(v60, v248);
  v259 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v229, v255), vzip2q_s16(v229, v255)), v257);
  v260 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v231, v256), vzip2q_s16(v231, v256)), v257);
  v261 = vnegq_s16((*&v61 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v262 = vshlq_s8(v259, v258);
  v263 = vshlq_s8(v260, v258);
  v264 = vandq_s8(v345, v251);
  v265 = vsubq_s8(v262, v264);
  v266 = vsubq_s8(v263, v264);
  v267 = vshlq_u16(v232, v261);
  v264.i64[0] = 0x808080808080808;
  v264.i64[1] = 0x808080808080808;
  v263.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v263.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v268 = vsubq_s8(v264, v61);
  v269 = vaddq_s8(v61, v263);
  v270 = vshlq_u64(v156, v196);
  v271 = vuzp1q_s32(vzip1q_s64(v156, v270), vzip2q_s64(v156, v270));
  v272 = vshlq_u32(v271, v224);
  v273 = vuzp1q_s16(vzip1q_s32(v271, v272), vzip2q_s32(v271, v272));
  v274 = vshlq_u16(v273, v261);
  v275 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v232, v267), vzip2q_s16(v232, v267)), v268), v269);
  v276 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v273, v274), vzip2q_s16(v273, v274)), v268), v269);
  v277 = vandq_s8(v346, v251);
  v278 = vsubq_s8(v275, v277);
  v279 = vsubq_s8(v276, v277);
  *v275.i8 = vzip1_s32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
  *v276.i8 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
  v178.i64[0] = v275.u32[0];
  v178.i64[1] = v275.u32[1];
  v280 = v178;
  v178.i64[0] = v276.u32[0];
  v178.i64[1] = v276.u32[1];
  v281 = vshlq_u64(v343, vnegq_s64(v280));
  v282 = vshlq_u64(v83, vnegq_s64(v178));
  v283 = vuzp1q_s32(vzip1q_s64(v343, v281), vzip2q_s64(v343, v281));
  v284 = vuzp1q_s32(vzip1q_s64(v83, v282), vzip2q_s64(v83, v282));
  v285 = vshlq_u32(v283, vnegq_s32((*&v85 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v286 = vshlq_u32(v284, vnegq_s32((*&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v287 = vuzp1q_s16(vzip1q_s32(v283, v285), vzip2q_s32(v283, v285));
  v288 = vuzp1q_s16(vzip1q_s32(v284, v286), vzip2q_s32(v284, v286));
  v289 = vshlq_u16(v287, vnegq_s16((*&v84 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v290 = vshlq_u16(v288, vnegq_s16((*&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v291 = vzip2q_s16(v287, v289);
  v292 = vzip1q_s16(v287, v289);
  v293 = vzip2q_s16(v288, v290);
  v294 = vzip1q_s16(v288, v290);
  v290.i64[0] = 0x808080808080808;
  v290.i64[1] = 0x808080808080808;
  v295 = vuzp1q_s8(v294, v293);
  v293.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v293.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v296 = vshlq_s8(vshlq_s8(v295, vsubq_s8(v290, v58)), vaddq_s8(v58, v293));
  v297 = vaddq_s8(vandq_s8(v249, v347), vshlq_s8(vshlq_s8(vuzp1q_s8(v292, v291), vsubq_s8(v290, v84)), vaddq_s8(v84, v293)));
  v298.i64[0] = 0x101010101010101;
  v298.i64[1] = 0x101010101010101;
  v299 = vandq_s8(v347, v251);
  v300 = vsubq_s8(v297, v299);
  v301 = vsubq_s8(v296, v299);
  v297.i64[0] = v24 & 0x1F;
  *(v297.i32 + 1) = (v24 >> 5) & 0x3F;
  v297.i16[1] = v24 >> 11;
  v302 = vdupq_lane_s32(*v297.i8, 0);
  if (vaddlvq_s8(vceqq_s8(v348, v298)))
  {
    v303 = vnegq_s8(vandq_s8(v26, v298));
    v304 = v301;
    v304.i32[3] = v300.i32[0];
    v305 = v300;
    v305.i32[0] = v301.i32[3];
    v350.val[0] = vbslq_s8(v303, v305, v300);
    v350.val[1] = vbslq_s8(v303, v304, v301);
    v304.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v304.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v351.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0F80), v303), v350.val[0]);
    v351.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v304), v303), v350.val[1]);
    v300 = vaddq_s8(vandq_s8(vqtbl2q_s8(v351, xmmword_29D2F0F90), v303), v351.val[0]);
    v301 = vaddq_s8(vandq_s8(vqtbl2q_s8(v351, v304), v303), v351.val[1]);
    v351.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v253.i8, xmmword_29D2F0FA0), v303), v253);
    v351.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v253.i8, xmmword_29D2F0FB0), v303), v254);
    v253 = vaddq_s8(vandq_s8(vqtbl2q_s8(v351, xmmword_29D2F0FC0), v303), v351.val[0]);
    v254 = vaddq_s8(vandq_s8(vqtbl2q_s8(v351, v304), v303), v351.val[1]);
    v351.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v265.i8, xmmword_29D2F0FD0), v303), v265);
    v351.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v265.i8, xmmword_29D2F0F80), v303), v266);
    v265 = vaddq_s8(vandq_s8(vqtbl2q_s8(v351, v304), v303), v351.val[0]);
    v266 = vaddq_s8(vandq_s8(vqtbl2q_s8(v351, xmmword_29D2F0FE0), v303), v351.val[1]);
    v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v278.i8, xmmword_29D2F0FF0), v303), v278);
    v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v278.i8, xmmword_29D2F0F80), v303), v279);
    v278 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v304), v303), v350.val[0]);
    v279 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F1000), v303), v350.val[1]);
  }

  v306 = vaddq_s8(v300, v302);
  v307 = vaddq_s8(v301, v302);
  v308 = vaddq_s8(v253, v302);
  v309 = vaddq_s8(v254, v302);
  v310 = vaddq_s8(v265, v302);
  v311 = vaddq_s8(v266, v302);
  v312 = vaddq_s8(v278, v302);
  v313 = vaddq_s8(v279, v302);
  v314.i64[0] = 0x1010101010101010;
  v314.i64[1] = 0x1010101010101010;
  v315 = vceqzq_s8(vandq_s8(v26, v314));
  v316.i64[0] = 0xFF00FF00FF00FFLL;
  v316.i64[1] = 0xFF00FF00FF00FFLL;
  v317 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v306, xmmword_29D2F1010), v316), v315), v306);
  v318 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v307, xmmword_29D2F1010), v316), v315), v307);
  v319 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v308, xmmword_29D2F1010), v316), v315), v308);
  v320 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v309, xmmword_29D2F1010), v316), v315), v309);
  v321 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v310, xmmword_29D2F1010), v316), v315), v310);
  v322 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v311, xmmword_29D2F1010), v316), v315), v311);
  v323 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v312, xmmword_29D2F1010), v316), v315), v312);
  v324 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v313, xmmword_29D2F1010), v316), v315), v313);
  v325 = vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v317, 3uLL), v318, 3uLL), vuzp1q_s16(v317, v318));
  v326 = vshrn_high_n_s32(vshrn_n_s32(v317, 5uLL), v318, 5uLL);
  v318.i64[0] = 0xF800F800F800F800;
  v318.i64[1] = 0xF800F800F800F800;
  v327 = vbslq_s8(v318, v326, v325);
  v328 = vbslq_s8(v318, vshrn_high_n_s32(vshrn_n_s32(v319, 5uLL), v320, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v319, 3uLL), v320, 3uLL), vuzp1q_s16(v319, v320)));
  v329 = vbslq_s8(v318, vshrn_high_n_s32(vshrn_n_s32(v321, 5uLL), v322, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v321, 3uLL), v322, 3uLL), vuzp1q_s16(v321, v322)));
  v330 = vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v323, 3uLL), v324, 3uLL), vuzp1q_s16(v323, v324));
  v331 = vshrn_high_n_s32(vshrn_n_s32(v323, 5uLL), v324, 5uLL);
  v332 = vzip2q_s64(v327, v328);
  v327.i64[1] = v328.i64[0];
  v333 = vbslq_s8(v318, v331, v330);
  *a1 = v327;
  *(a1 + a2) = v332;
  v334 = vzip2q_s64(v329, v333);
  v329.i64[1] = v333.i64[0];
  v335 = (a1 + 2 * a2);
  *v335 = v329;
  *(v335 + a2) = v334;
  return v157;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s64(*a3, v6);
  v8 = vzip2q_s64(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s64(*v9, v10);
  v12 = vzip2q_s64(*v9, v10);
  v10.i64[0] = 0x1F0000001FLL;
  v10.i64[1] = 0x1F0000001FLL;
  v13.i64[0] = 0x3F0000003F00;
  v13.i64[1] = 0x3F0000003F00;
  v14 = vbslq_s8(v13, vshll_n_u16(*v7.i8, 3uLL), vbslq_s8(v10, vmovl_u16(*v7.i8), 0));
  v15 = vbslq_s8(v13, vshll_high_n_u16(v7, 3uLL), vbslq_s8(v10, vmovl_high_u16(v7), 0));
  v16 = vshll_n_u16(*v7.i8, 5uLL);
  v549 = v7;
  v17 = vshll_high_n_u16(v7, 5uLL);
  v7.i64[0] = 0x1F0000001F0000;
  v7.i64[1] = 0x1F0000001F0000;
  v18 = vbslq_s8(v7, v16, v14);
  v19 = vbslq_s8(v7, v17, v15);
  v548 = v8;
  v20 = vbslq_s8(v7, vshll_n_u16(*v8.i8, 5uLL), vbslq_s8(v13, vshll_n_u16(*v8.i8, 3uLL), vbslq_s8(v10, vmovl_u16(*v8.i8), 0)));
  v21 = vbslq_s8(v7, vshll_high_n_u16(v8, 5uLL), vbslq_s8(v13, vshll_high_n_u16(v8, 3uLL), vbslq_s8(v10, vmovl_high_u16(v8), 0)));
  v551 = v11;
  v22 = vbslq_s8(v7, vshll_n_u16(*v11.i8, 5uLL), vbslq_s8(v13, vshll_n_u16(*v11.i8, 3uLL), vbslq_s8(v10, vmovl_u16(*v11.i8), 0)));
  v23 = vbslq_s8(v7, vshll_high_n_u16(v11, 5uLL), vbslq_s8(v13, vshll_high_n_u16(v11, 3uLL), vbslq_s8(v10, vmovl_high_u16(v11), 0)));
  v550 = v12;
  v24 = vbslq_s8(v7, vshll_n_u16(*v12.i8, 5uLL), vbslq_s8(v13, vshll_n_u16(*v12.i8, 3uLL), vbslq_s8(v10, vmovl_u16(*v12.i8), 0)));
  v25 = vbslq_s8(v7, vshll_high_n_u16(v12, 5uLL), vbslq_s8(v13, vshll_high_n_u16(v12, 3uLL), vbslq_s8(v10, vmovl_high_u16(v12), 0)));
  v26 = vdupq_lane_s32(*v18.i8, 0);
  v27 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v28 = vshlq_s8(vshlq_s8(vsubq_s8(v21, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v29 = vshlq_s8(vshlq_s8(vsubq_s8(v22, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v30 = vshlq_s8(vshlq_s8(vsubq_s8(v23, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v562 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v563 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v31 = vqtbl1q_s8(vmaxq_s8(v562, v563), xmmword_29D2F0F70);
  v32 = vqtbl1q_s8(vminq_s8(v562, v563), xmmword_29D2F0F70);
  v33 = vpmaxq_s8(v31, v31);
  v34 = vpminq_s8(v32, v32);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vzip1q_s8(v35, v36);
  v38.i64[0] = 0x808080808080808;
  v38.i64[1] = 0x808080808080808;
  v39 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v37)), vceqzq_s8(v37));
  v40 = vqtbl1q_s8(vmaxq_s8(v27, v28), xmmword_29D2F0F70);
  v41 = vqtbl1q_s8(vminq_s8(v27, v28), xmmword_29D2F0F70);
  v42 = vpmaxq_s8(v40, v40);
  v43 = vpminq_s8(v41, v41);
  v44 = vpmaxq_s8(v42, v42);
  v45 = vpminq_s8(v43, v43);
  v46 = vmaxq_s8(v35, v44);
  v47 = vminq_s8(v36, v45);
  v48 = vzip1q_s8(v44, v45);
  v49 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v48)), vceqzq_s8(v48));
  v50 = vqtbl1q_s8(vmaxq_s8(v29, v30), xmmword_29D2F0F70);
  v51 = vqtbl1q_s8(vminq_s8(v29, v30), xmmword_29D2F0F70);
  v52 = vpmaxq_s8(v50, v50);
  v53 = vpminq_s8(v51, v51);
  v54 = vpmaxq_s8(v52, v52);
  v55 = vpminq_s8(v53, v53);
  v56 = vmaxq_s8(v46, v54);
  v57 = vminq_s8(v47, v55);
  v58 = vzip1q_s8(v54, v55);
  v59 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v58)), vceqzq_s8(v58));
  v60 = vshlq_s8(vshlq_s8(vsubq_s8(v24, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v61 = vshlq_s8(vshlq_s8(vsubq_s8(v25, v26), xmmword_29D2F1310), xmmword_29D2F1320);
  v62 = vqtbl1q_s8(vmaxq_s8(v60, v61), xmmword_29D2F0F70);
  v63 = vqtbl1q_s8(vminq_s8(v60, v61), xmmword_29D2F0F70);
  v64 = vpmaxq_s8(v62, v62);
  v65 = vpminq_s8(v63, v63);
  v66 = vpmaxq_s8(v64, v64);
  v67 = vpminq_s8(v65, v65);
  v68 = vmaxq_s8(v56, v66);
  v69 = vminq_s8(v57, v67);
  v70 = vzip1q_s8(v66, v67);
  v71 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v70)), vceqzq_s8(v70));
  v72 = vpmaxq_s8(v39, v39);
  v73 = vpmaxq_s8(v49, v49);
  v74 = vpmaxq_s8(v59, v59);
  v75 = vpmaxq_s8(v71, v71);
  v76 = vmaxq_s8(vmaxq_s8(v72, v73), vmaxq_s8(v74, v75));
  v77 = vclzq_s8(vsubq_s8(v68, v69));
  v78 = vsubq_s8(v38, v77);
  v79 = vminq_s8(v78, v76);
  if (!vmaxvq_s8(v79))
  {
    a1->i16[0] = a3->i16[0];
    v178 = 1;
    result = 2;
    goto LABEL_100;
  }

  v557 = v27;
  v558 = v28;
  v559 = v29;
  v560 = v30;
  v561 = v60;
  v554 = v61;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81.i64[0] = 0x707070707070707;
  v81.i64[1] = 0x707070707070707;
  v82 = vcgtq_s8(v76, v78);
  v552 = vandq_s8(vsubq_s8(vshlq_s8(v80, vsubq_s8(v81, v77)), v69), v82);
  v83.i64[0] = 0x303030303030303;
  v83.i64[1] = 0x303030303030303;
  v539 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v72), v83), 0);
  v542 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v74), v83), 0);
  v544 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v73), v83), 0);
  v546 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v75), v83), 0);
  v84.i64[0] = 0x404040404040404;
  v84.i64[1] = 0x404040404040404;
  v85 = v26;
  v86 = vorrq_s8(vbicq_s8(v84, vceqq_s8(vaddq_s8(v546, v542), vnegq_s8(vaddq_s8(v539, v544)))), vorrq_s8(vandq_s8(vceqzq_s8(v79), v83), vandq_s8(v82, v38)));
  v87.i64[0] = 0xFF00FF00FF00FFLL;
  v87.i64[1] = 0xFF00FF00FF00FFLL;
  v556 = v85;
  v88 = vsubq_s8(v85, vshlq_s8(vqtbl1q_s8(v85, xmmword_29D2F1010), v87));
  v540 = v23;
  v541 = v21;
  v89 = vshlq_s8(vshlq_s8(vsubq_s8(v20, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v20, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v90 = vshlq_s8(vshlq_s8(vsubq_s8(v21, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v21, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v91 = vshlq_s8(vshlq_s8(vsubq_s8(v22, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v22, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v92 = vshlq_s8(vshlq_s8(vsubq_s8(v23, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v23, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v93 = vshlq_s8(vshlq_s8(vsubq_s8(v24, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v24, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v94 = vshlq_s8(vshlq_s8(vsubq_s8(v25, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v25, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v537 = vshlq_s8(vshlq_s8(vsubq_s8(v19, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v19, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v538 = vshlq_s8(vshlq_s8(vsubq_s8(v18, vaddq_s8(v88, vshlq_s8(vqtbl1q_s8(v18, xmmword_29D2F1010), v87))), xmmword_29D2F1310), xmmword_29D2F1320);
  v95 = vqtbl1q_s8(vmaxq_s8(v538, v537), xmmword_29D2F0F70);
  v96 = vqtbl1q_s8(vminq_s8(v538, v537), xmmword_29D2F0F70);
  v97 = vpmaxq_s8(v95, v95);
  v98 = vpminq_s8(v96, v96);
  v99 = vpmaxq_s8(v97, v97);
  v100 = vpminq_s8(v98, v98);
  v101 = vzip1q_s8(v99, v100);
  v102 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v101)), vceqzq_s8(v101));
  v103 = vpmaxq_s8(v102, v102);
  v535 = v90;
  v536 = v89;
  v104 = vqtbl1q_s8(vmaxq_s8(v89, v90), xmmword_29D2F0F70);
  v105 = vqtbl1q_s8(vminq_s8(v89, v90), xmmword_29D2F0F70);
  v106 = vpmaxq_s8(v104, v104);
  v107 = vpminq_s8(v105, v105);
  v108 = vpmaxq_s8(v106, v106);
  v109 = vpminq_s8(v107, v107);
  v110 = vmaxq_s8(v99, v108);
  v111 = vminq_s8(v100, v109);
  v112 = vzip1q_s8(v108, v109);
  v113 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v112)), vceqzq_s8(v112));
  v114 = v79;
  v115 = vpmaxq_s8(v113, v113);
  v533 = v92;
  v534 = v91;
  v116 = vqtbl1q_s8(vmaxq_s8(v91, v92), xmmword_29D2F0F70);
  v117 = vqtbl1q_s8(vminq_s8(v91, v92), xmmword_29D2F0F70);
  v118 = vpmaxq_s8(v116, v116);
  v119 = vpminq_s8(v117, v117);
  v120 = vpmaxq_s8(v118, v118);
  v121 = vpminq_s8(v119, v119);
  v122 = vmaxq_s8(v110, v120);
  v123 = vminq_s8(v111, v121);
  v124 = vzip1q_s8(v120, v121);
  v125 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v124)), vceqzq_s8(v124));
  v126 = vpmaxq_s8(v125, v125);
  v532 = v93;
  v127 = vqtbl1q_s8(vmaxq_s8(v93, v94), xmmword_29D2F0F70);
  v128 = vqtbl1q_s8(vminq_s8(v93, v94), xmmword_29D2F0F70);
  v129 = vpmaxq_s8(v127, v127);
  v130 = vpminq_s8(v128, v128);
  v131 = vpmaxq_s8(v129, v129);
  v132 = vpminq_s8(v130, v130);
  v133 = vminq_s8(v123, v132);
  v134 = vzip1q_s8(v131, v132);
  v135 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v134)), vceqzq_s8(v134));
  v136 = vpmaxq_s8(v135, v135);
  v137 = vmaxq_s8(vmaxq_s8(v103, v115), vmaxq_s8(v126, v136));
  v138 = vclzq_s8(vsubq_s8(vmaxq_s8(v122, v131), v133));
  v139 = vsubq_s8(v38, v138);
  v140 = vcgtq_s8(v137, v139);
  v141 = vminq_s8(v139, v137);
  v139.i64[0] = 0x1010101010101010;
  v139.i64[1] = 0x1010101010101010;
  v137.i64[0] = 0x1818181818181818;
  v137.i64[1] = 0x1818181818181818;
  v142 = vorrq_s8(vandq_s8(vceqzq_s8(v141), v83), vbslq_s8(v140, v137, v139));
  v143 = vmaxq_s8(vminq_s8(vsubq_s8(v141, v103), v83), 0);
  v144 = vmaxq_s8(vminq_s8(vsubq_s8(v141, v115), v83), 0);
  v145 = vmaxq_s8(vminq_s8(vsubq_s8(v141, v126), v83), 0);
  v146 = vmaxq_s8(vminq_s8(vsubq_s8(v141, v136), v83), 0);
  v147 = vsubq_s8(v141, v143);
  v148 = vsubq_s8(v141, v144);
  v149 = vsubq_s8(v141, v145);
  v150 = vsubq_s8(v141, v146);
  v151 = vceqq_s8(vaddq_s8(v146, v145), vnegq_s8(vaddq_s8(v143, v144)));
  v145.i64[0] = 0x404040404040404;
  v145.i64[1] = 0x404040404040404;
  v152 = vorrq_s8(vbicq_s8(v145, v151), v142);
  v153 = vmovl_u8(*v152.i8);
  v144.i64[0] = 0x8000800080008;
  v144.i64[1] = 0x8000800080008;
  v91.i64[0] = 0x2000200020002;
  v91.i64[1] = 0x2000200020002;
  v154 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v141.i8), vceqzq_s16((*&v153 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v152.i8, 1uLL), v144)), vandq_s8(vceqq_s16((*&v153 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v91), v144)), *v147.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL));
  v155 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v86.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v114.i8, vcgt_u8(0x808080808080808, *v86.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v86.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v91), v144));
  v156 = vsubq_s8(v114, v539);
  v157 = vsubq_s8(v114, v542);
  v158 = vsubq_s8(v114, v546);
  v159 = vsubq_s8(v114, v544);
  v160 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v155, *v156.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v157.i8, *v159.i8), *v158.i8), 3uLL)), v154)), 0);
  v161 = vaddlvq_s8(v160);
  v163 = a5 < 2 || a6 < 2;
  if (v161)
  {
    v164.i64[0] = 0x707070707070707;
    v164.i64[1] = 0x707070707070707;
    v165.i64[0] = -1;
    v165.i64[1] = -1;
    v166 = vandq_s8(vsubq_s8(vshlq_s8(v165, vsubq_s8(v164, v138)), v133), v140);
    v556 = vbslq_s8(v160, v88, v556);
    v562 = vbslq_s8(v160, v538, v562);
    v563 = vbslq_s8(v160, v537, v563);
    v557 = vbslq_s8(v160, v536, v557);
    v558 = vbslq_s8(v160, v535, v558);
    v559 = vbslq_s8(v160, v534, v559);
    v560 = vbslq_s8(v160, v533, v560);
    v561 = vbslq_s8(v160, v532, v561);
    v167 = vbslq_s8(v160, v94, v554);
    v159 = vbslq_s8(v160, v148, v159);
    v543 = vbslq_s8(v160, v147, v156);
    v545 = vbslq_s8(v160, v149, v157);
    v547 = vbslq_s8(v160, v150, v158);
    v168 = vbslq_s8(v160, v166, v552);
    v169 = vbslq_s8(v160, v141, v114);
    v86 = vbslq_s8(v160, v152, v86);
    v171 = v540;
    v170 = v541;
    if (v163)
    {
LABEL_10:
      v173 = v545;
      v172 = v547;
      v175 = v562;
      v174 = v563;
      v176 = v86;
      v86.i32[0] = v556.i32[0];
      v177 = v543;
      goto LABEL_16;
    }
  }

  else
  {
    v543 = v156;
    v545 = v157;
    v547 = v158;
    v168 = v552;
    v167 = v554;
    v169 = v114;
    v171 = v540;
    v170 = v541;
    if (v163)
    {
      goto LABEL_10;
    }
  }

  v553 = v168;
  v555 = v167;
  v180 = vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0F80));
  v181 = vsubq_s8(v19, vqtbl2q_s8(*v18.i8, xmmword_29D2F1030));
  v182 = v170;
  v182.i32[3] = v19.i32[3];
  v183 = v171;
  v183.i32[3] = v19.i32[3];
  v184 = v25;
  v184.i32[3] = v19.i32[3];
  v185 = vqtbl2q_s8(*v24.i8, xmmword_29D2F0F80);
  v186 = vsubq_s8(v24, vqtbl2q_s8(*v24.i8, xmmword_29D2F1060));
  v187 = v159;
  v188 = v181;
  v188.i32[3] = v180.i32[0];
  v180.i32[0] = v181.i32[3];
  v189 = vshlq_s8(v188, xmmword_29D2F1310);
  v190 = vshlq_s8(vsubq_s8(v171, vqtbl2q_s8(*v22.i8, xmmword_29D2F0F80)), xmmword_29D2F1310);
  v191 = vshlq_s8(v186, xmmword_29D2F1310);
  v192 = vshlq_s8(vsubq_s8(v25, v185), xmmword_29D2F1310);
  v193 = vshlq_s8(vshlq_s8(v180, xmmword_29D2F1310), xmmword_29D2F1320);
  v194 = vshlq_s8(v189, xmmword_29D2F1320);
  v195 = vshlq_s8(vshlq_s8(vsubq_s8(v20, vqtbl2q_s8(*v20.i8, xmmword_29D2F0FA0)), xmmword_29D2F1310), xmmword_29D2F1320);
  v196 = vshlq_s8(vshlq_s8(vsubq_s8(v170, vqtbl2q_s8(*v20.i8, xmmword_29D2F1040)), xmmword_29D2F1310), xmmword_29D2F1320);
  v197 = vshlq_s8(vshlq_s8(vsubq_s8(v22, vqtbl2q_s8(*v22.i8, xmmword_29D2F1050)), xmmword_29D2F1310), xmmword_29D2F1320);
  v198 = vshlq_s8(v190, xmmword_29D2F1320);
  v199 = vshlq_s8(v191, xmmword_29D2F1320);
  v200 = vshlq_s8(v192, xmmword_29D2F1320);
  v201 = vqtbl1q_s8(vmaxq_s8(v193, v194), xmmword_29D2F0F70);
  v202 = vqtbl1q_s8(vminq_s8(v193, v194), xmmword_29D2F0F70);
  v203 = vpmaxq_s8(v201, v201);
  v204 = vpminq_s8(v202, v202);
  v205 = vpmaxq_s8(v203, v203);
  v206 = vpminq_s8(v204, v204);
  v207 = vzip1q_s8(v205, v206);
  v208.i64[0] = 0x808080808080808;
  v208.i64[1] = 0x808080808080808;
  v209 = vbicq_s8(vsubq_s8(v208, vclsq_s8(v207)), vceqzq_s8(v207));
  v210 = vpmaxq_s8(v209, v209);
  v211 = vqtbl1q_s8(vmaxq_s8(v195, v196), xmmword_29D2F0F70);
  v212 = vqtbl1q_s8(vminq_s8(v195, v196), xmmword_29D2F0F70);
  v213 = vpmaxq_s8(v211, v211);
  v214 = vpminq_s8(v212, v212);
  v215 = vpmaxq_s8(v213, v213);
  v216 = vpminq_s8(v214, v214);
  v217 = vmaxq_s8(v205, v215);
  v218 = vminq_s8(v206, v216);
  v219 = vzip1q_s8(v215, v216);
  v220 = vbicq_s8(vsubq_s8(v208, vclsq_s8(v219)), vceqzq_s8(v219));
  v221 = vpmaxq_s8(v220, v220);
  v222 = vqtbl1q_s8(vmaxq_s8(v197, v198), xmmword_29D2F0F70);
  v223 = vqtbl1q_s8(vminq_s8(v197, v198), xmmword_29D2F0F70);
  v224 = vpmaxq_s8(v222, v222);
  v225 = vpminq_s8(v223, v223);
  v226 = vpmaxq_s8(v224, v224);
  v227 = vpminq_s8(v225, v225);
  v228 = vmaxq_s8(v217, v226);
  v229 = vminq_s8(v218, v227);
  v230 = vzip1q_s8(v226, v227);
  v231 = vbicq_s8(vsubq_s8(v208, vclsq_s8(v230)), vceqzq_s8(v230));
  v232 = v169;
  v233 = vpmaxq_s8(v231, v231);
  v234 = vqtbl1q_s8(vmaxq_s8(v199, v200), xmmword_29D2F0F70);
  v235 = vqtbl1q_s8(vminq_s8(v199, v200), xmmword_29D2F0F70);
  v236 = vpmaxq_s8(v234, v234);
  v237 = vpminq_s8(v235, v235);
  v238 = vpmaxq_s8(v236, v236);
  v239 = vpminq_s8(v237, v237);
  v240 = vmaxq_s8(v228, v238);
  v241 = vminq_s8(v229, v239);
  v242 = vzip1q_s8(v238, v239);
  v243 = vbicq_s8(vsubq_s8(v208, vclsq_s8(v242)), vceqzq_s8(v242));
  v244 = vpmaxq_s8(v243, v243);
  v245 = vmaxq_s8(vmaxq_s8(v210, v221), vmaxq_s8(v233, v244));
  v246 = vclzq_s8(vsubq_s8(v240, v241));
  v247 = vsubq_s8(v208, v246);
  v248 = vcgtq_s8(v245, v247);
  v249 = vminq_s8(v247, v245);
  v247.i64[0] = 0x909090909090909;
  v247.i64[1] = 0x909090909090909;
  v250.i64[0] = 0x202020202020202;
  v250.i64[1] = 0x202020202020202;
  v251 = vorrq_s8(vandq_s8(vceqzq_s8(v249), v250), vsubq_s8(vandq_s8(v248, v247), vmvnq_s8(v248)));
  v247.i64[0] = 0x303030303030303;
  v247.i64[1] = 0x303030303030303;
  v252 = vmaxq_s8(vminq_s8(vsubq_s8(v249, v210), v247), 0);
  v253 = vmaxq_s8(vminq_s8(vsubq_s8(v249, v221), v247), 0);
  v254 = vmaxq_s8(vminq_s8(vsubq_s8(v249, v233), v247), 0);
  v255 = vmaxq_s8(vminq_s8(vsubq_s8(v249, v244), v247), 0);
  v256 = vsubq_s8(v249, v252);
  v257 = vsubq_s8(v249, v253);
  v258 = vsubq_s8(v249, v254);
  v259 = vsubq_s8(v249, v255);
  v260 = vceqq_s8(vaddq_s8(v255, v254), vnegq_s8(vaddq_s8(v252, v253)));
  v255.i64[0] = 0x404040404040404;
  v255.i64[1] = 0x404040404040404;
  v261 = vorrq_s8(vbicq_s8(v255, v260), v251);
  v262.i64[0] = 0x3000300030003;
  v262.i64[1] = 0x3000300030003;
  v176 = v86;
  v263 = vmovl_s8(*v86.i8);
  v253.i64[0] = 0x8000800080008;
  v253.i64[1] = 0x8000800080008;
  v264 = vbicq_s8(vmovl_s8(*v232.i8), vceqzq_s16(vandq_s8(v263, v253)));
  v265 = vandq_s8(v263, v262);
  v262.i64[0] = 0x2000200020002;
  v262.i64[1] = 0x2000200020002;
  v173 = v545;
  v172 = v547;
  v177 = v543;
  v266 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v264, vandq_s8(vshll_n_s8(*v86.i8, 1uLL), v253)), vandq_s8(vceqq_s16(v265, v262), v253)), *v543.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v545.i8, *v187.i8), *v547.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v249.i8, vcgt_u8(0x808080808080808, *v261.i8))), vand_s8(vadd_s8(*v261.i8, *v261.i8), 0x808080808080808)), *v256.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v258.i8, *v257.i8), *v259.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v266))
  {
    v267.i64[0] = 0x707070707070707;
    v267.i64[1] = 0x707070707070707;
    v268 = vsubq_s8(v267, v246);
    v267.i64[0] = -1;
    v267.i64[1] = -1;
    v269 = vandq_s8(vsubq_s8(vshlq_s8(v267, v268), v241), v248);
    v86 = vbslq_s8(v266, vextq_s8(v19, v19, 0xCuLL), v556);
    v175 = vbslq_s8(v266, v193, v562);
    v174 = vbslq_s8(v266, v194, v563);
    v557 = vbslq_s8(v266, v195, v557);
    v558 = vbslq_s8(v266, v196, v558);
    v559 = vbslq_s8(v266, v197, v559);
    v560 = vbslq_s8(v266, v198, v560);
    v561 = vbslq_s8(v266, v199, v561);
    v167 = vbslq_s8(v266, v200, v555);
    v177 = vbslq_s8(v266, v256, v543);
    v159 = vbslq_s8(v266, v257, v187);
    v173 = vbslq_s8(v266, v258, v545);
    v172 = vbslq_s8(v266, v259, v547);
    v168 = vbslq_s8(v266, v269, v553);
    v176 = vbslq_s8(v266, v261, v176);
    v169 = vbslq_s8(v266, v249, v232);
  }

  else
  {
    v168 = v553;
    v167 = v555;
    v169 = v232;
    v175 = v562;
    v174 = v563;
    v159 = v187;
    v86.i32[0] = v556.i32[0];
  }

LABEL_16:
  v270 = vmovl_s8(*v176.i8);
  v271.i64[0] = 0x8000800080008;
  v271.i64[1] = 0x8000800080008;
  v272.i64[0] = 0x3000300030003;
  v272.i64[1] = 0x3000300030003;
  v273.i64[0] = 0x2000200020002;
  v273.i64[1] = 0x2000200020002;
  v274 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v169.i8), vceqzq_s16(vandq_s8(v270, v271))), vandq_s8(vshll_n_s8(*v176.i8, 1uLL), v271)), vandq_s8(vceqq_s16(vandq_s8(v270, v272), v273), v271)), *v177.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v173.i8, *v159.i8), *v172.i8), 3uLL));
  v275 = vpaddq_s16(v274, v274);
  if ((vpaddq_s16(v275, v275).i16[0] + 47) > 0x1FF)
  {
    *a1 = v549;
    a1[1] = v548;
    v178 = 63;
    a1[2] = v551;
    a1[3] = v550;
    result = 64;
  }

  else
  {
    v276 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v277 = 8 * (a1 & 7);
    if (v277)
    {
      v278 = *v276 & ~(-1 << v277);
    }

    else
    {
      v278 = 0;
    }

    *a2 = 0;
    if (v169.i8[0])
    {
      v279 = ((v169.u8[0] << 15) + 229376) & 0x38000;
    }

    else
    {
      v279 = 0;
    }

    if (v169.i8[1])
    {
      v280 = ((v169.u8[1] << 18) + 1835008) & 0x1C0000;
    }

    else
    {
      v280 = 0;
    }

    if (v169.i8[2])
    {
      v281 = ((v169.u8[2] << 21) + 14680064) & 0xE00000;
    }

    else
    {
      v281 = 0;
    }

    v282 = v86.i8[0] & 0x1F | (32 * (v86.i8[1] & 0x3F)) | ((v86.i8[2] & 0x1F) << 11);
    v283 = v176.i8[0] & 0x1F | ((32 * (v176.i8[1] & 0x1F)) & 0x83FF) | ((v176.i8[2] & 0x1F) << 10) | v279 | v280 | v281;
    v284 = (v283 << v277) | v278;
    if (v277 >= 0x28)
    {
      *v276 = v284;
      v284 = v283 >> (-8 * (a1 & 7u));
    }

    v285 = (v277 + 24) & 0x38;
    v286 = v284 | (v282 << v285);
    if (v285 >= 0x30)
    {
      *(v276 + (((v277 + 24) >> 3) & 8)) = v286;
      v286 = v282 >> -v285;
    }

    v287 = v277 + 40;
    v288 = vsubq_s8(v169, v177);
    v289 = vsubq_s8(v169, v159);
    v290 = vsubq_s8(v169, v173);
    v291 = vsubq_s8(v169, v172);
    v292 = vtrn1q_s8(v288, v289);
    v293 = vtrn2q_s8(v288, v289);
    v294 = vtrn1q_s8(v290, v291);
    v295 = vtrn2q_s8(v290, v291);
    v296 = vzip1q_s16(v293, v295);
    v297 = vtrn2q_s16(v293, v295);
    v295.i64[0] = vzip1q_s32(vzip1q_s16(v292, v294), v296).u64[0];
    v297.i64[0] = vzip1q_s32(vtrn2q_s16(v292, v294), v297).u64[0];
    v294.i64[0] = 0x202020202020202;
    v294.i64[1] = 0x202020202020202;
    v298 = vandq_s8(vmovl_s16(vtst_s16(*v270.i8, 0x4000400040004)), v294);
    v294.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v294.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v291.i64[0] = -1;
    v291.i64[1] = -1;
    v299 = vshlq_u8(v291, vorrq_s8(v298, v294));
    v300 = vmovl_u8(vand_s8(*v299.i8, *v295.i8));
    v301 = vmovl_u8(vand_s8(*&vextq_s8(v299, v299, 8uLL), *v297.i8));
    v302 = vmovl_u8(*v298.i8);
    v303 = vmovl_high_u8(v298);
    v304 = vpaddq_s16(vshlq_u16(v300, vtrn1q_s16(0, v302)), vshlq_u16(v301, vtrn1q_s16(0, v303)));
    v305 = vpaddq_s16(v302, v303);
    v306 = vmovl_u16(*v305.i8);
    v307 = vmovl_high_u16(v305);
    v308 = vpaddq_s32(vshlq_u32(vmovl_u16(*v304.i8), vtrn1q_s32(0, v306)), vshlq_u32(vmovl_high_u16(v304), vtrn1q_s32(0, v307)));
    v309 = vpaddq_s32(v306, v307);
    v310.i64[0] = v308.u32[0];
    v310.i64[1] = v308.u32[1];
    v311 = v310;
    v310.i64[0] = v308.u32[2];
    v310.i64[1] = v308.u32[3];
    v312 = v310;
    v310.i64[0] = v309.u32[0];
    v310.i64[1] = v309.u32[1];
    v313 = v310;
    v310.i64[0] = v309.u32[2];
    v310.i64[1] = v309.u32[3];
    v314 = vpaddq_s64(vshlq_u64(v311, vzip1q_s64(0, v313)), vshlq_u64(v312, vzip1q_s64(0, v310)));
    v315 = vpaddq_s64(v313, v310);
    v316 = (v277 + 40) & 0x38;
    v317 = (v314.i64[0] << v316) | v286;
    if ((v315.i64[0] + v316) >= 0x40)
    {
      *(v276 + ((v287 >> 3) & 8)) = v317;
      v317 = v314.i64[0] >> -v316;
      if (!v316)
      {
        v317 = 0;
      }
    }

    v318 = vceqq_s8(v169, v177);
    v319 = v315.i64[0] + v287;
    v320 = v317 | (v314.i64[1] << v319);
    if ((v319 & 0x3F) + v315.i64[1] >= 0x40)
    {
      *(v276 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
      v320 = v314.i64[1] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v320 = 0;
      }
    }

    v321 = vandq_s8(v168, v318);
    v322 = v319 + v315.i64[1];
    v323.i64[0] = 0x808080808080808;
    v323.i64[1] = 0x808080808080808;
    v324.i64[0] = -1;
    v324.i64[1] = -1;
    v325 = vandq_s8(vextq_s8(vtstq_s8(v176, v323), 0, 0xCuLL), v169);
    v326.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v326.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v327 = vandq_s8(vshlq_u8(v324, vaddq_s8(v325, v326)), v168);
    v328 = vmovl_u8(*v325.i8);
    v329 = vpaddq_s16(vshlq_u16(vmovl_u8(*v327.i8), vtrn1q_s16(0, v328)), vmovl_high_u8(v327));
    v330 = vpaddq_s16(v328, vmovl_high_u8(v325));
    v331 = vmovl_u16(*v330.i8);
    v332 = vmovl_high_u16(v330);
    v333 = vpaddq_s32(vshlq_u32(vmovl_u16(*v329.i8), vtrn1q_s32(0, v331)), vshlq_u32(vmovl_high_u16(v329), vtrn1q_s32(0, v332)));
    v334 = vpaddq_s32(v331, v332);
    v335.i64[0] = v333.u32[0];
    v335.i64[1] = v333.u32[1];
    v336 = v335;
    v335.i64[0] = v333.u32[2];
    v335.i64[1] = v333.u32[3];
    v337 = v335;
    v335.i64[0] = v334.u32[0];
    v335.i64[1] = v334.u32[1];
    v338 = v335;
    v335.i64[0] = v334.u32[2];
    v335.i64[1] = v334.u32[3];
    v339 = vpaddq_s64(vshlq_u64(v336, vzip1q_s64(0, v338)), vshlq_u64(v337, vzip1q_s64(0, v335)));
    v340 = vpaddq_s64(v338, v335);
    v341 = (v339.i64[0] << v322) | v320;
    if (v340.i64[0] + (v322 & 0x3F) >= 0x40)
    {
      *(v276 + ((v322 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v341;
      v341 = v339.i64[0] >> -(v322 & 0x3F);
      if ((v322 & 0x3F) == 0)
      {
        v341 = 0;
      }
    }

    v342 = vaddq_s8(v321, v175);
    v343 = v340.i64[0] + v322;
    v344 = v341 | (v339.i64[1] << v343);
    if ((v343 & 0x3F) + v340.i64[1] >= 0x40)
    {
      *(v276 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
      v344 = v339.i64[1] >> -(v343 & 0x3F);
      if ((v343 & 0x3F) == 0)
      {
        v344 = 0;
      }
    }

    v345 = v343 + v340.i64[1];
    v346 = vextq_s8(0, v177, 0xCuLL);
    v347.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v347.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v348.i64[0] = -1;
    v348.i64[1] = -1;
    v349 = vandq_s8(vshlq_u8(v348, vaddq_s8(v346, v347)), v342);
    v350 = vmovl_u8(*v346.i8);
    v351 = vmovl_high_u8(v346);
    v352 = vpaddq_s16(vshlq_u16(vmovl_u8(*v349.i8), vtrn1q_s16(0, v350)), vshlq_u16(vmovl_high_u8(v349), vtrn1q_s16(0, v351)));
    v353 = vpaddq_s16(v350, v351);
    v354 = vmovl_u16(*v353.i8);
    v355 = vmovl_high_u16(v353);
    v356 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v354)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v355)));
    v357 = vpaddq_s32(v354, v355);
    v358.i64[0] = v356.u32[0];
    v358.i64[1] = v356.u32[1];
    v359 = v358;
    v358.i64[0] = v356.u32[2];
    v358.i64[1] = v356.u32[3];
    v360 = v358;
    v358.i64[0] = v357.u32[0];
    v358.i64[1] = v357.u32[1];
    v361 = v358;
    v358.i64[0] = v357.u32[2];
    v358.i64[1] = v357.u32[3];
    v362 = vpaddq_s64(vshlq_u64(v359, vzip1q_s64(0, v361)), vshlq_u64(v360, vzip1q_s64(0, v358)));
    v363 = vpaddq_s64(v361, v358);
    v364 = (v362.i64[0] << v345) | v344;
    if (v363.i64[0] + (v345 & 0x3F) >= 0x40)
    {
      *(v276 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
      v364 = v362.i64[0] >> -(v345 & 0x3F);
      if ((v345 & 0x3F) == 0)
      {
        v364 = 0;
      }
    }

    v365 = vceqq_s8(v169, v159);
    v366 = vaddq_s8(v174, v321);
    v367 = v363.i64[0] + v345;
    v368 = v364 | (v362.i64[1] << v367);
    if ((v367 & 0x3F) + v363.i64[1] >= 0x40)
    {
      *(v276 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
      v368 = v362.i64[1] >> -(v367 & 0x3F);
      if ((v367 & 0x3F) == 0)
      {
        v368 = 0;
      }
    }

    v369 = vandq_s8(v168, v365);
    v370 = v367 + v363.i64[1];
    v371.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v371.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v372.i64[0] = -1;
    v372.i64[1] = -1;
    v373 = vandq_s8(vshlq_u8(v372, vaddq_s8(v177, v371)), v366);
    v374 = vmovl_u8(*v177.i8);
    v375 = vmovl_high_u8(v177);
    v376 = vpaddq_s16(vshlq_u16(vmovl_u8(*v373.i8), vtrn1q_s16(0, v374)), vshlq_u16(vmovl_high_u8(v373), vtrn1q_s16(0, v375)));
    v377 = vpaddq_s16(v374, v375);
    v378 = vmovl_u16(*v377.i8);
    v379 = vmovl_high_u16(v377);
    v380 = vpaddq_s32(vshlq_u32(vmovl_u16(*v376.i8), vtrn1q_s32(0, v378)), vshlq_u32(vmovl_high_u16(v376), vtrn1q_s32(0, v379)));
    v381 = vpaddq_s32(v378, v379);
    v382.i64[0] = v380.u32[0];
    v382.i64[1] = v380.u32[1];
    v383 = v382;
    v382.i64[0] = v380.u32[2];
    v382.i64[1] = v380.u32[3];
    v384 = v382;
    v382.i64[0] = v381.u32[0];
    v382.i64[1] = v381.u32[1];
    v385 = v382;
    v382.i64[0] = v381.u32[2];
    v382.i64[1] = v381.u32[3];
    v386 = vpaddq_s64(vshlq_u64(v383, vzip1q_s64(0, v385)), vshlq_u64(v384, vzip1q_s64(0, v382)));
    v387 = vpaddq_s64(v385, v382);
    v388 = (v386.i64[0] << v370) | v368;
    if (v387.i64[0] + (v370 & 0x3F) >= 0x40)
    {
      *(v276 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
      v388 = v386.i64[0] >> -(v370 & 0x3F);
      if ((v370 & 0x3F) == 0)
      {
        v388 = 0;
      }
    }

    v389 = vaddq_s8(v557, v369);
    v390 = v387.i64[0] + v370;
    v391 = v388 | (v386.i64[1] << v390);
    v392 = v167;
    if ((v390 & 0x3F) + v387.i64[1] >= 0x40)
    {
      *(v276 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
      v391 = v386.i64[1] >> -(v390 & 0x3F);
      if ((v390 & 0x3F) == 0)
      {
        v391 = 0;
      }
    }

    v393 = v390 + v387.i64[1];
    v394.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v394.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v395.i64[0] = -1;
    v395.i64[1] = -1;
    v396 = vshlq_u8(v395, vaddq_s8(v159, v394));
    v397 = vandq_s8(v396, v389);
    v398 = vmovl_u8(*v397.i8);
    v399 = vmovl_high_u8(v397);
    v400 = vmovl_u8(*v159.i8);
    v401 = vmovl_high_u8(v159);
    v402 = vtrn1q_s16(0, v400);
    v403 = vtrn1q_s16(0, v401);
    v404 = vpaddq_s16(vshlq_u16(v398, v402), vshlq_u16(v399, v403));
    v405 = vpaddq_s16(v400, v401);
    v406 = vmovl_u16(*v404.i8);
    v407 = vmovl_high_u16(v404);
    v408 = vmovl_u16(*v405.i8);
    v409 = vmovl_high_u16(v405);
    v410 = vtrn1q_s32(0, v408);
    v411 = vtrn1q_s32(0, v409);
    v412 = vpaddq_s32(vshlq_u32(v406, v410), vshlq_u32(v407, v411));
    v413 = vpaddq_s32(v408, v409);
    v414.i64[0] = v412.u32[0];
    v414.i64[1] = v412.u32[1];
    v415 = v414;
    v414.i64[0] = v412.u32[2];
    v414.i64[1] = v412.u32[3];
    v416 = v414;
    v414.i64[0] = v413.u32[0];
    v414.i64[1] = v413.u32[1];
    v417 = v414;
    v414.i64[0] = v413.u32[2];
    v414.i64[1] = v413.u32[3];
    v418 = vzip1q_s64(0, v417);
    v419 = vzip1q_s64(0, v414);
    v420 = vpaddq_s64(vshlq_u64(v415, v418), vshlq_u64(v416, v419));
    v421 = vpaddq_s64(v417, v414);
    v422 = (v420.i64[0] << v393) | v391;
    if (v421.i64[0] + (v393 & 0x3F) >= 0x40)
    {
      *(v276 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      if ((v393 & 0x3F) != 0)
      {
        v422 = v420.i64[0] >> -(v393 & 0x3F);
      }

      else
      {
        v422 = 0;
      }
    }

    v423 = vceqq_s8(v169, v173);
    v424 = vaddq_s8(v558, v369);
    v425 = v421.i64[0] + v393;
    v426 = v422 | (v420.i64[1] << v425);
    if ((v425 & 0x3F) + v421.i64[1] >= 0x40)
    {
      *(v276 + ((v425 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
      v426 = v420.i64[1] >> -(v425 & 0x3F);
      if ((v425 & 0x3F) == 0)
      {
        v426 = 0;
      }
    }

    v427 = vandq_s8(v168, v423);
    v428 = v425 + v421.i64[1];
    v429 = vandq_s8(v396, v424);
    v430 = vpaddq_s16(vshlq_u16(vmovl_u8(*v429.i8), v402), vshlq_u16(vmovl_high_u8(v429), v403));
    v431 = vpaddq_s32(vshlq_u32(vmovl_u16(*v430.i8), v410), vshlq_u32(vmovl_high_u16(v430), v411));
    v432.i64[0] = v431.u32[0];
    v432.i64[1] = v431.u32[1];
    v433 = v432;
    v432.i64[0] = v431.u32[2];
    v432.i64[1] = v431.u32[3];
    v434 = vpaddq_s64(vshlq_u64(v433, v418), vshlq_u64(v432, v419));
    v435 = (v434.i64[0] << v428) | v426;
    if (v421.i64[0] + (v428 & 0x3F) >= 0x40)
    {
      *(v276 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
      v435 = v434.i64[0] >> -(v428 & 0x3F);
      if ((v428 & 0x3F) == 0)
      {
        v435 = 0;
      }
    }

    v436 = vaddq_s8(v559, v427);
    v437 = v421.i64[0] + v428;
    v438 = (v421.i64[0] + v428) & 0x3F;
    v439 = v435 | (v434.i64[1] << v437);
    if ((v437 & 0x3F) + v421.i64[1] >= 0x40)
    {
      *(v276 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v439;
      v439 = v434.i64[1] >> -v438;
      if (!v438)
      {
        v439 = 0;
      }
    }

    v440 = v437 + v421.i64[1];
    v441.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v441.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v442.i64[0] = -1;
    v442.i64[1] = -1;
    v443 = vshlq_u8(v442, vaddq_s8(v173, v441));
    v444 = vandq_s8(v443, v436);
    v445 = vmovl_u8(*v444.i8);
    v446 = vmovl_high_u8(v444);
    v447 = vmovl_u8(*v173.i8);
    v448 = vmovl_high_u8(v173);
    v449 = vtrn1q_s16(0, v447);
    v450 = vtrn1q_s16(0, v448);
    v451 = vpaddq_s16(vshlq_u16(v445, v449), vshlq_u16(v446, v450));
    v452 = vpaddq_s16(v447, v448);
    v453 = vmovl_u16(*v451.i8);
    v454 = vmovl_high_u16(v451);
    v455 = vmovl_u16(*v452.i8);
    v456 = vmovl_high_u16(v452);
    v457 = vtrn1q_s32(0, v455);
    v458 = vtrn1q_s32(0, v456);
    v459 = vpaddq_s32(vshlq_u32(v453, v457), vshlq_u32(v454, v458));
    v460 = vpaddq_s32(v455, v456);
    v461.i64[0] = v459.u32[0];
    v461.i64[1] = v459.u32[1];
    v462 = v461;
    v461.i64[0] = v459.u32[2];
    v461.i64[1] = v459.u32[3];
    v463 = v461;
    v461.i64[0] = v460.u32[0];
    v461.i64[1] = v460.u32[1];
    v464 = v461;
    v461.i64[0] = v460.u32[2];
    v461.i64[1] = v460.u32[3];
    v465 = vzip1q_s64(0, v464);
    v466 = vzip1q_s64(0, v461);
    v467 = vpaddq_s64(vshlq_u64(v462, v465), vshlq_u64(v463, v466));
    v468 = vpaddq_s64(v464, v461);
    v469 = (v467.i64[0] << v440) | v439;
    if (v468.i64[0] + (v440 & 0x3F) >= 0x40)
    {
      *(v276 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
      if ((v440 & 0x3F) != 0)
      {
        v469 = v467.i64[0] >> -(v440 & 0x3F);
      }

      else
      {
        v469 = 0;
      }
    }

    v470 = vceqq_s8(v169, v172);
    v471 = vaddq_s8(v560, v427);
    v472 = v468.i64[0] + v440;
    v473 = v469 | (v467.i64[1] << v472);
    if ((v472 & 0x3F) + v468.i64[1] >= 0x40)
    {
      *(v276 + ((v472 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
      v473 = v467.i64[1] >> -(v472 & 0x3F);
      if ((v472 & 0x3F) == 0)
      {
        v473 = 0;
      }
    }

    v474 = vandq_s8(v168, v470);
    v475 = v472 + v468.i64[1];
    v476 = vandq_s8(v443, v471);
    v477 = vpaddq_s16(vshlq_u16(vmovl_u8(*v476.i8), v449), vshlq_u16(vmovl_high_u8(v476), v450));
    v478 = vpaddq_s32(vshlq_u32(vmovl_u16(*v477.i8), v457), vshlq_u32(vmovl_high_u16(v477), v458));
    v479.i64[0] = v478.u32[0];
    v479.i64[1] = v478.u32[1];
    v480 = v479;
    v479.i64[0] = v478.u32[2];
    v479.i64[1] = v478.u32[3];
    v481 = vpaddq_s64(vshlq_u64(v480, v465), vshlq_u64(v479, v466));
    v482 = (v481.i64[0] << v475) | v473;
    if (v468.i64[0] + (v475 & 0x3F) >= 0x40)
    {
      *(v276 + ((v475 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v482;
      v482 = v481.i64[0] >> -(v475 & 0x3F);
      if ((v475 & 0x3F) == 0)
      {
        v482 = 0;
      }
    }

    v483 = vaddq_s8(v561, v474);
    v484 = v468.i64[0] + v475;
    v485 = (v468.i64[0] + v475) & 0x3F;
    v486 = v482 | (v481.i64[1] << v484);
    if ((v484 & 0x3F) + v468.i64[1] >= 0x40)
    {
      *(v276 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v486;
      v486 = v481.i64[1] >> -v485;
      if (!v485)
      {
        v486 = 0;
      }
    }

    v487 = v484 + v468.i64[1];
    v488.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v488.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v489.i64[0] = -1;
    v489.i64[1] = -1;
    v490 = vshlq_u8(v489, vaddq_s8(v172, v488));
    v491 = vandq_s8(v490, v483);
    v492 = vmovl_u8(*v491.i8);
    v493 = vmovl_high_u8(v491);
    v494 = vmovl_u8(*v172.i8);
    v495 = vmovl_high_u8(v172);
    v496 = vtrn1q_s16(0, v494);
    v497 = vtrn1q_s16(0, v495);
    v498 = vpaddq_s16(vshlq_u16(v492, v496), vshlq_u16(v493, v497));
    v499 = vpaddq_s16(v494, v495);
    v500 = vmovl_u16(*v498.i8);
    v501 = vmovl_high_u16(v498);
    v502 = vmovl_u16(*v499.i8);
    v503 = vmovl_high_u16(v499);
    v504 = vtrn1q_s32(0, v502);
    v505 = vtrn1q_s32(0, v503);
    v506 = vpaddq_s32(vshlq_u32(v500, v504), vshlq_u32(v501, v505));
    v507 = vpaddq_s32(v502, v503);
    v508.i64[0] = v506.u32[0];
    v508.i64[1] = v506.u32[1];
    v509 = v508;
    v508.i64[0] = v506.u32[2];
    v508.i64[1] = v506.u32[3];
    v510 = v508;
    v508.i64[0] = v507.u32[0];
    v508.i64[1] = v507.u32[1];
    v511 = v508;
    v508.i64[0] = v507.u32[2];
    v508.i64[1] = v507.u32[3];
    v512 = vzip1q_s64(0, v511);
    v513 = vzip1q_s64(0, v508);
    v514 = vpaddq_s64(vshlq_u64(v509, v512), vshlq_u64(v510, v513));
    v515 = vpaddq_s64(v511, v508);
    v516 = (v514.i64[0] << v487) | v486;
    if (v515.i64[0] + (v487 & 0x3F) > 0x3F)
    {
      *(v276 + ((v487 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v516;
      if ((v487 & 0x3F) != 0)
      {
        v516 = v514.i64[0] >> -(v487 & 0x3F);
      }

      else
      {
        v516 = 0;
      }
    }

    v517 = vaddq_s8(v392, v474);
    v518 = v515.i64[0] + v487;
    v519 = v516 | (v514.i64[1] << v518);
    if ((v518 & 0x3F) + v515.i64[1] >= 0x40)
    {
      *(v276 + ((v518 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v519;
      v519 = v514.i64[1] >> -(v518 & 0x3F);
      if ((v518 & 0x3F) == 0)
      {
        v519 = 0;
      }
    }

    v520 = v518 + v515.i64[1];
    v521 = vandq_s8(v490, v517);
    v522 = vpaddq_s16(vshlq_u16(vmovl_u8(*v521.i8), v496), vshlq_u16(vmovl_high_u8(v521), v497));
    v523 = vpaddq_s32(vshlq_u32(vmovl_u16(*v522.i8), v504), vshlq_u32(vmovl_high_u16(v522), v505));
    v524.i64[0] = v523.u32[0];
    v524.i64[1] = v523.u32[1];
    v525 = v524;
    v524.i64[0] = v523.u32[2];
    v524.i64[1] = v523.u32[3];
    v526 = vpaddq_s64(vshlq_u64(v525, v512), vshlq_u64(v524, v513));
    v527 = (v526.i64[0] << v520) | v519;
    if (v515.i64[0] + (v520 & 0x3F) >= 0x40)
    {
      *(v276 + ((v520 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v527;
      v527 = v526.i64[0] >> -(v520 & 0x3F);
      if ((v520 & 0x3F) == 0)
      {
        v527 = 0;
      }
    }

    v528 = v515.i64[0] + v520;
    v529 = (v515.i64[0] + v520) & 0x3F;
    v530 = v527 | (v526.i64[1] << (v515.i8[0] + v520));
    if ((v529 + v515.i64[1]) >= 0x40)
    {
      *(v276 + ((v528 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v530;
      v530 = v526.i64[1] >> -v529;
      if (!v529)
      {
        v530 = 0;
      }
    }

    v531 = v528 + v515.i64[1];
    if ((v531 & 0x3F) != 0)
    {
      *(v276 + ((v531 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v530;
    }

    result = (v531 - v277 + 7) >> 3;
    v178 = *a2 | (result - 1);
  }

LABEL_100:
  *a2 = v178;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
  }

  else
  {
    *a4 = 0;
  }

  v12 = v7 - 4;
  if (v7 >= 5 && v6)
  {
    if (v6 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v6;
    }

    if (v12 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 1, a2, v14, v13);
    v9 = (v9 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v15 = 4 * a2;
  v16 = v6 - 4;
  if (v7 && v6 >= 5)
  {
    if (v16 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v6 - 4;
    }

    if (v7 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
    v9 = (v9 + result);
    if (v7 < 5)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v7 < 5)
    {
      goto LABEL_38;
    }
  }

  if (v6 >= 5)
  {
    if (v16 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v6 - 4;
    }

    if (v12 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 16), a2, v20, v19);
    v9 = (v9 + result);
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
LABEL_39:
  v21 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v6;
    }

    if (v21 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 2, a2, v23, v22);
    v9 = (v9 + result);
  }

  else
  {
    a4[4] = 0;
  }

  v24 = v7 - 12;
  if (v7 >= 0xD && v6)
  {
    if (v6 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v6;
    }

    if (v24 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v7 - 12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 3, a2, v26, v25);
    v9 = (v9 + result);
  }

  else
  {
    a4[5] = 0;
    if (v7 < 9)
    {
      goto LABEL_68;
    }
  }

  if (v6 >= 5)
  {
    if (v16 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v6 - 4;
    }

    if (v21 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 32), a2, v28, v27);
    v9 = (v9 + result);
    if (v7 < 0xD)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  if (v7 < 0xD)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v6 < 5)
  {
    goto LABEL_79;
  }

  if (v16 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v6 - 4;
  }

  if (v24 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v7 - 12;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 48), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0x3Fu:
      v16 = *(a3 + 16);
      v17 = *(a3 + 32);
      v18 = *(a3 + 48);
      *a1 = *a3;
      a1[1] = v17;
      v19 = &a1->i8[a2];
      *v19 = v16;
      *(v19 + 1) = v18;
      return 64;
    case 1u:
      v14 = vld1q_dup_s16(a3);
      *a1 = v14;
      a1[1] = v14;
      v15 = (a1 + a2);
      *v15 = v14;
      v15[1] = v14;
      return 2;
    case 0u:
      *a1 = 0u;
      a1[1] = 0u;
      v12 = &a1->i8[a2];
      *v12 = 0u;
      *(v12 + 1) = 0u;
      return 0;
  }

  v348[1] = v11;
  v348[2] = v10;
  v348[3] = v9;
  v348[4] = v8;
  v348[5] = v7;
  v348[6] = v6;
  v348[7] = v5;
  v348[8] = v4;
  v20 = 8 * (a3 & 7);
  v21 = a3 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 24;
  v23 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v20;
  if (v20 >= 0x29)
  {
    v23 |= *(v21 + 8) << (-8 * (a3 & 7u));
  }

  v24.i64[0] = 0x303030303030303;
  v24.i64[1] = 0x303030303030303;
  v25.i8[3] = 3;
  v25.i32[1] = 50529027;
  v25.i8[0] = v23 & 0x1F;
  v25.i8[1] = (v23 >> 5) & 0x1F;
  v25.i8[2] = (v23 >> 10) & 0x1F;
  v26.i32[0] = v23 >> 15;
  v26.i32[1] = (v23 >> 18) & 0x3F;
  v27 = vadd_s32(vand_s8(v26, 0x700000007), 0x100000001);
  v28 = v27.u8[0];
  v28.i8[1] = v27.i8[4];
  v28.i8[2] = ((v23 >> 21) & 7) + 1;
  v29 = v20 + 40;
  v30 = v22 & 0x38;
  v31 = (v21 + ((v22 >> 3) & 8));
  v32 = *v31 >> v30;
  if (v30 >= 0x31)
  {
    v32 |= v31[1] << -v30;
  }

  v33 = (8 * (a3 & 7)) | 0x200;
  v34 = vdupq_lane_s32(v25, 0);
  v35 = vandq_s8(v34, v24);
  v36 = vbicq_s8(vdupq_lane_s32(v28, 0), vceqq_s8(v35, v24));
  v37.i64[0] = 0x202020202020202;
  v37.i64[1] = 0x202020202020202;
  v38 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v25), 0x4000400040004)), v37);
  if (vmaxvq_s8(v38) < 1)
  {
    v47 = 0;
    v73.i64[0] = -1;
    v73.i64[1] = -1;
    v69 = v36;
    v68 = v36;
    v67 = v36;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v66 = v36;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
  }

  else
  {
    v39 = vmovl_u8(*&vpaddq_s8(v38, v38));
    v40 = vmovl_u16(*&vpaddq_s16(v39, v39));
    v41 = vpaddq_s32(v40, v40).u64[0];
    v42.i64[0] = v41;
    v42.i64[1] = HIDWORD(v41);
    v43 = v42;
    v44 = vaddvq_s64(v42);
    v45 = v29 + v44;
    v46 = v44 <= 0x80 && v33 >= v45;
    v47 = !v46;
    v48 = 0uLL;
    if (v46)
    {
      v49 = v29 & 0x38;
      v50 = vaddq_s64(vdupq_n_s64(v49), vzip1q_s64(0, v43));
      v51 = (v21 + ((v29 >> 3) & 8));
      v48 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v51, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v50)), vshlq_u64(vdupq_lane_s64(v51->i64[0], 0), vnegq_s64(v50)));
      if (v49 + v44 >= 0x81)
      {
        v48 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v51[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v50)), vshlq_u64(vdupq_laneq_s64(v51[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v50))), v48);
      }

      v29 = v45;
    }

    v52 = vzip1_s32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
    v53.i64[0] = v52.u32[0];
    v53.i64[1] = v52.u32[1];
    v54 = vshlq_u64(v48, vnegq_s64(v53));
    v55 = vuzp1q_s32(vzip1q_s64(v48, v54), vzip2q_s64(v48, v54));
    v56 = vshlq_u32(v55, vnegq_s32((*&v39 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v57 = vuzp1q_s16(vzip1q_s32(v55, v56), vzip2q_s32(v55, v56));
    v58 = vshlq_u16(v57, vnegq_s16((*&v38 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v59 = vuzp1q_s8(vzip1q_s16(v57, v58), vzip2q_s16(v57, v58));
    v58.i64[0] = 0x101010101010101;
    v58.i64[1] = 0x101010101010101;
    v60 = vshlq_s8(v58, v38);
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v61 = vqtbl1q_s8(vandq_s8(vaddq_s8(v60, v58), v59), xmmword_29D2F0F70);
    v62 = vdupq_lane_s32(*v61.i8, 0);
    v63 = vdupq_lane_s32(*v61.i8, 1);
    v64 = vdupq_laneq_s32(v61, 2);
    v65 = vdupq_laneq_s32(v61, 3);
    v66 = vsubq_s8(v36, v62);
    v67 = vsubq_s8(v36, v63);
    v68 = vsubq_s8(v36, v64);
    v69 = vsubq_s8(v36, v65);
    v70 = vceqzq_s8(v62);
    v71 = vceqzq_s8(v63);
    v72 = vceqzq_s8(v64);
    v73 = vceqzq_s8(v65);
  }

  v74.i64[0] = 0x808080808080808;
  v74.i64[1] = 0x808080808080808;
  v75 = 0uLL;
  v76 = vandq_s8(vextq_s8(vtstq_s8(v34, v74), 0, 0xCuLL), v36);
  v77 = vmovl_u8(*&vpaddq_s8(v76, v76));
  v78 = vmovl_u16(*&vpaddq_s16(v77, v77));
  v74.i64[0] = vpaddq_s32(v78, v78).u64[0];
  v79.i64[0] = v74.u32[0];
  v79.i64[1] = v74.u32[1];
  v80 = v79;
  v81 = vaddvq_s64(v79);
  v82 = v29 + v81;
  if (v81 <= 0x80 && v33 >= v82)
  {
    v84 = v29 & 0x3F;
    v85 = vaddq_s64(vdupq_n_s64(v84), vzip1q_s64(0, v80));
    v86 = (v21 + 8 * (v29 >> 6));
    v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v84 + v81 >= 0x81)
    {
      v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v75);
    }

    v29 = v82;
  }

  else
  {
    v47 = 1;
  }

  v87 = v34.i8[0] & 3;
  v346 = v70;
  v347 = v35;
  v344 = v72;
  v345 = v73;
  v343 = v71;
  if (v87 == 2)
  {
    v88 = v33 < v29 + 4;
    v89 = v29 + 8;
    if (v33 >= v29 + 4)
    {
      v29 += 4;
    }

    else
    {
      v89 = v29 + 4;
    }

    if (v33 < v89)
    {
      v90 = 1;
    }

    else
    {
      v29 = v89;
      v90 = v88;
    }

    v47 |= v90;
  }

  v91 = 0uLL;
  v92 = vextq_s8(0, v66, 0xCuLL);
  v93 = vmovl_u8(*&vpaddq_s8(v92, v92));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  v99 = v29 + v98;
  if (v98 <= 0x80 && v33 >= v99)
  {
    v101 = v29 & 0x3F;
    v102 = vaddq_s64(vdupq_n_s64(v101), vzip1q_s64(0, v97));
    v103 = (v21 + 8 * (v29 >> 6));
    v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v103, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v103->i64[0], 0), vnegq_s64(v102)));
    if (v101 + v98 >= 0x81)
    {
      v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v103[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v103[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v104);
    }

    v342 = v104;
    v29 = v99;
  }

  else
  {
    v47 = 1;
    v342 = 0u;
  }

  v105 = vmovl_u8(*&vpaddq_s8(v66, v66));
  v106 = vmovl_u16(*&vpaddq_s16(v105, v105));
  v107 = vpaddq_s32(v106, v106).u64[0];
  v108.i64[0] = v107;
  v108.i64[1] = HIDWORD(v107);
  v109 = v108;
  v110 = vaddvq_s64(v108);
  v111 = v29 + v110;
  if (v110 <= 0x80 && v33 >= v111)
  {
    v113 = v29 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v109));
    v115 = (v21 + 8 * (v29 >> 6));
    v91 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v110 >= 0x81)
    {
      v91 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v91);
    }

    v29 = v111;
  }

  else
  {
    v47 = 1;
  }

  v116 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v117 = vmovl_u16(*&vpaddq_s16(v116, v116));
  v118 = vpaddq_s32(v117, v117).u64[0];
  v119.i64[0] = v118;
  v119.i64[1] = HIDWORD(v118);
  v120 = v119;
  v121 = vaddvq_s64(v119);
  v122 = v29 + v121;
  v123 = 0uLL;
  if (v121 <= 0x80 && v33 >= v122)
  {
    v126 = v29 & 0x3F;
    v127 = vaddq_s64(vdupq_n_s64(v126), vzip1q_s64(0, v120));
    v128 = (v21 + 8 * (v29 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v126 + v121 >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v125);
    }

    v29 = v122;
  }

  else
  {
    v47 = 1;
    v125 = 0uLL;
  }

  v129 = v29 + v121;
  if (v121 <= 0x80 && v33 >= v129)
  {
    v131 = v29 & 0x3F;
    v132 = vaddq_s64(vdupq_n_s64(v131), vzip1q_s64(0, v120));
    v133 = (v21 + 8 * (v29 >> 6));
    v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v133, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v132)), vshlq_u64(vdupq_lane_s64(v133->i64[0], 0), vnegq_s64(v132)));
    if (v131 + v121 >= 0x81)
    {
      v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v133[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v132)), vshlq_u64(vdupq_laneq_s64(v133[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v132))), v123);
    }

    v29 = v129;
  }

  else
  {
    v47 = 1;
  }

  v134 = vmovl_u8(*&vpaddq_s8(v68, v68));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  v140 = v139;
  v141 = 0uLL;
  if (v139 > 0x80 || (v142 = v29 + v139, v33 < v29 + v139))
  {
    v47 = 1;
    v142 = v29;
    v146 = 0uLL;
  }

  else
  {
    v143 = v29 & 0x3F;
    v144 = vaddq_s64(vdupq_n_s64(v143), vzip1q_s64(0, v138));
    v145 = (v21 + 8 * (v29 >> 6));
    v146 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v145, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v144)), vshlq_u64(vdupq_lane_s64(v145->i64[0], 0), vnegq_s64(v144)));
    if (v143 + v140 >= 0x81)
    {
      v146 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v145[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v144)), vshlq_u64(vdupq_laneq_s64(v145[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v144))), v146);
    }
  }

  if (v140 > 0x80 || (v147 = v142 + v140, v33 < v142 + v140))
  {
    v47 = 1;
    v147 = v142;
  }

  else
  {
    v148 = vaddq_s64(vdupq_n_s64(v142 & 0x3F), vzip1q_s64(0, v138));
    v149 = (v21 + 8 * (v142 >> 6));
    v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
    if ((v142 & 0x3F) + v140 >= 0x81)
    {
      v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v141);
    }
  }

  v150 = vmovl_u8(*&vpaddq_s8(v69, v69));
  v151 = vmovl_u16(*&vpaddq_s16(v150, v150));
  v152 = vpaddq_s32(v151, v151).u64[0];
  v153.i64[0] = v152;
  v153.i64[1] = HIDWORD(v152);
  v154 = v153;
  v155 = vaddvq_s64(v153);
  v156 = v155;
  if (v155 > 0x80 || (v157 = v147 + v155, v33 < v147 + v155))
  {
    v47 = 1;
    v157 = v147;
    v161 = 0uLL;
  }

  else
  {
    v158 = v147 & 0x3F;
    v159 = vaddq_s64(vdupq_n_s64(v158), vzip1q_s64(0, v154));
    v160 = (v21 + 8 * (v147 >> 6));
    v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
    if (v158 + v156 >= 0x81)
    {
      v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
    }
  }

  if (v156 > 0x80 || v33 < v157 + v156)
  {
    goto LABEL_96;
  }

  v162 = vaddq_s64(vdupq_n_s64(v157 & 0x3F), vzip1q_s64(0, v154));
  v163 = (v21 + 8 * (v157 >> 6));
  v164 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v163, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v162)), vshlq_u64(vdupq_lane_s64(v163->i64[0], 0), vnegq_s64(v162)));
  if ((v157 & 0x3F) + v156 >= 0x81)
  {
    v164 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v163[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v162)), vshlq_u64(vdupq_laneq_s64(v163[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v162))), v164);
  }

  if ((v47 & 1) != 0 || (v165 = a4 + 1, v33 + 8 * v165 - (v157 + v156) - 512 >= 9))
  {
LABEL_96:
    v166 = 8 * ((v348 + 4) & 7);
    v348[0] |= 31 << v166;
    v167 = v166 | 5;
    v168 = (v166 | 5) - v166;
    if (v168 - 11 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v169 = 0;
      v170 = 6;
      do
      {
        v171 = 64 - v167;
        if (64 - v167 >= v170)
        {
          v171 = v170;
        }

        v172 = v171 + v167;
        v169 += v172 >> 6;
        v167 = v172 & 0x3F;
        v170 -= v171;
      }

      while (v170);
      v168 = v167 - v166 + (v169 << 6);
    }

    else
    {
      v169 = 0;
    }

    if (v168 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v173 = 0;
      v174 = 5;
      do
      {
        v175 = 64 - v167;
        if (64 - v167 >= v174)
        {
          v175 = v174;
        }

        v348[v169] |= ((0xFFFFFFFFFFFFFFFFLL >> v173) & ~(-1 << v175)) << v167;
        v173 += v175;
        v176 = v175 + v167;
        v169 += v176 >> 6;
        v167 = v176 & 0x3F;
        v174 -= v175;
      }

      while (v174);
    }
  }

  else
  {
    if (v87 != 2)
    {
      v181 = vzip1_s32(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
      v182 = vzip1_s32(*v117.i8, *&vextq_s8(v117, v117, 8uLL));
      v183 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
      v184 = vzip1_s32(*v151.i8, *&vextq_s8(v151, v151, 8uLL));
      v185.i64[0] = v181.u32[0];
      v185.i64[1] = v181.u32[1];
      v186 = vshlq_u64(v75, vnegq_s64(v185));
      v187 = vzip2q_s64(v75, v186);
      v188 = vzip1q_s64(v75, v186);
      v185.i64[0] = v182.u32[0];
      v185.i64[1] = v182.u32[1];
      v189 = vnegq_s64(v185);
      v190 = vshlq_u64(v125, v189);
      v191 = vzip2q_s64(v125, v190);
      v192 = vzip1q_s64(v125, v190);
      v193 = vshlq_u64(v123, v189);
      v194 = vzip2q_s64(v123, v193);
      v195 = vzip1q_s64(v123, v193);
      v185.i64[0] = v183.u32[0];
      v185.i64[1] = v183.u32[1];
      v196 = vnegq_s64(v185);
      v197 = vshlq_u64(v146, v196);
      v198 = vzip2q_s64(v146, v197);
      v199 = vzip1q_s64(v146, v197);
      v200 = vshlq_u64(v141, v196);
      v201 = vzip2q_s64(v141, v200);
      v202 = vzip1q_s64(v141, v200);
      v185.i64[0] = v184.u32[0];
      v185.i64[1] = v184.u32[1];
      v203 = vnegq_s64(v185);
      v204 = vshlq_u64(v161, v203);
      v205 = vzip2q_s64(v161, v204);
      v206 = vzip1q_s64(v161, v204);
      v207 = vuzp1q_s32(v188, v187);
      v208 = vuzp1q_s32(v192, v191);
      v209 = vuzp1q_s32(v195, v194);
      v210 = vuzp1q_s32(v199, v198);
      v211 = vuzp1q_s32(v202, v201);
      v212 = vnegq_s32((*&v77 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v213 = vnegq_s32((*&v116 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v214 = vuzp1q_s32(v206, v205);
      v215 = vshlq_u32(v207, v212);
      v216 = vzip2q_s32(v207, v215);
      v217 = vzip1q_s32(v207, v215);
      v218 = vshlq_u32(v208, v213);
      v219 = vzip2q_s32(v208, v218);
      v220 = vzip1q_s32(v208, v218);
      v221 = vshlq_u32(v209, v213);
      v222 = vzip2q_s32(v209, v221);
      v223 = vzip1q_s32(v209, v221);
      v224 = vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v225 = vshlq_u32(v210, v224);
      v226 = vzip2q_s32(v210, v225);
      v227 = vzip1q_s32(v210, v225);
      v228 = vshlq_u32(v211, v224);
      v229 = vzip2q_s32(v211, v228);
      v230 = vzip1q_s32(v211, v228);
      v231 = vnegq_s32((*&v150 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v232 = vshlq_u32(v214, v231);
      v233 = vuzp1q_s16(v217, v216);
      v234 = vuzp1q_s16(v220, v219);
      v235 = vuzp1q_s16(v223, v222);
      v236 = vuzp1q_s16(v227, v226);
      v237 = vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v238 = vuzp1q_s16(v230, v229);
      v239 = vuzp1q_s16(vzip1q_s32(v214, v232), vzip2q_s32(v214, v232));
      v240 = vshlq_u16(v233, vnegq_s16((*&v76 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v241 = vshlq_u16(v234, v237);
      v242 = vshlq_u16(v235, v237);
      v243 = vzip2q_s16(v233, v240);
      v244 = vzip1q_s16(v233, v240);
      v245 = vuzp1q_s8(vzip1q_s16(v234, v241), vzip2q_s16(v234, v241));
      v246 = vuzp1q_s8(vzip1q_s16(v235, v242), vzip2q_s16(v235, v242));
      v234.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v234.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v242.i64[0] = 0x808080808080808;
      v242.i64[1] = 0x808080808080808;
      v247 = vsubq_s8(v242, v76);
      v248 = vaddq_s8(v76, v234);
      v249.i64[0] = 0x808080808080808;
      v249.i64[1] = 0x808080808080808;
      v250 = vshlq_s8(vuzp1q_s8(v244, v243), v247);
      v247.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v251 = vsubq_s8(v249, v67);
      v252 = vaddq_s8(v67, v247);
      v253 = vshlq_s8(v245, v251);
      v254 = vshlq_s8(v246, v251);
      v255 = vnegq_s16((*&v68 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v256 = vshlq_s8(v250, v248);
      v257 = vshlq_s8(v253, v252);
      v258 = vdupq_lane_s32(*v256.i8, 0);
      v259 = vandq_s8(v343, v258);
      v260 = vsubq_s8(v257, v259);
      v261 = vsubq_s8(vshlq_s8(v254, v252), v259);
      v262 = vshlq_u16(v236, v255);
      v263 = vshlq_u16(v238, v255);
      v259.i64[0] = 0x808080808080808;
      v259.i64[1] = 0x808080808080808;
      v255.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v255.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v264 = vsubq_s8(v259, v68);
      v265 = vaddq_s8(v68, v255);
      v266 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v236, v262), vzip2q_s16(v236, v262)), v264);
      v267 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v238, v263), vzip2q_s16(v238, v263)), v264);
      v268 = vnegq_s16((*&v69 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v269 = vshlq_s8(v266, v265);
      v270 = vshlq_s8(v267, v265);
      v271 = vandq_s8(v344, v258);
      v272 = vsubq_s8(v269, v271);
      v273 = vsubq_s8(v270, v271);
      v274 = vshlq_u16(v239, v268);
      v271.i64[0] = 0x808080808080808;
      v271.i64[1] = 0x808080808080808;
      v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v275 = vsubq_s8(v271, v69);
      v276 = vaddq_s8(v69, v270);
      v277 = vshlq_u64(v164, v203);
      v278 = vuzp1q_s32(vzip1q_s64(v164, v277), vzip2q_s64(v164, v277));
      v279 = vshlq_u32(v278, v231);
      v280 = vuzp1q_s16(vzip1q_s32(v278, v279), vzip2q_s32(v278, v279));
      v281 = vshlq_u16(v280, v268);
      v282 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v239, v274), vzip2q_s16(v239, v274)), v275), v276);
      v283 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v280, v281), vzip2q_s16(v280, v281)), v275), v276);
      v284 = vandq_s8(v345, v258);
      v285 = vsubq_s8(v282, v284);
      v286 = vsubq_s8(v283, v284);
      *v282.i8 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
      *v283.i8 = vzip1_s32(*v106.i8, *&vextq_s8(v106, v106, 8uLL));
      v185.i64[0] = v282.u32[0];
      v185.i64[1] = v282.u32[1];
      v287 = v185;
      v185.i64[0] = v283.u32[0];
      v185.i64[1] = v283.u32[1];
      v288 = vshlq_u64(v342, vnegq_s64(v287));
      v289 = vshlq_u64(v91, vnegq_s64(v185));
      v290 = vuzp1q_s32(vzip1q_s64(v342, v288), vzip2q_s64(v342, v288));
      v291 = vuzp1q_s32(vzip1q_s64(v91, v289), vzip2q_s64(v91, v289));
      v292 = vshlq_u32(v290, vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v293 = vshlq_u32(v291, vnegq_s32((*&v105 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v294 = vuzp1q_s16(vzip1q_s32(v290, v292), vzip2q_s32(v290, v292));
      v295 = vuzp1q_s16(vzip1q_s32(v291, v293), vzip2q_s32(v291, v293));
      v296 = vshlq_u16(v294, vnegq_s16((*&v92 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v297 = vshlq_u16(v295, vnegq_s16((*&v66 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v298 = vzip2q_s16(v294, v296);
      v299 = vzip1q_s16(v294, v296);
      v300 = vzip2q_s16(v295, v297);
      v301 = vzip1q_s16(v295, v297);
      v297.i64[0] = 0x808080808080808;
      v297.i64[1] = 0x808080808080808;
      v302 = vuzp1q_s8(v301, v300);
      v300.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v300.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v303 = vshlq_s8(vshlq_s8(v302, vsubq_s8(v297, v66)), vaddq_s8(v66, v300));
      v304 = vaddq_s8(vandq_s8(v256, v346), vshlq_s8(vshlq_s8(vuzp1q_s8(v299, v298), vsubq_s8(v297, v92)), vaddq_s8(v92, v300)));
      v305.i64[0] = 0x101010101010101;
      v305.i64[1] = 0x101010101010101;
      v306 = vandq_s8(v346, v258);
      v307 = vsubq_s8(v304, v306);
      v308 = vsubq_s8(v303, v306);
      v304.i64[0] = v32 & 0x1F;
      *(v304.i32 + 1) = (v32 >> 5) & 0x3F;
      v304.i16[1] = v32 >> 11;
      v309 = vdupq_lane_s32(*v304.i8, 0);
      if (vaddlvq_s8(vceqq_s8(v347, v305)))
      {
        v310 = vnegq_s8(vandq_s8(v34, v305));
        v311 = v308;
        v311.i32[3] = v307.i32[0];
        v312 = v307;
        v312.i32[0] = v308.i32[3];
        v349.val[0] = vbslq_s8(v310, v312, v307);
        v349.val[1] = vbslq_s8(v310, v311, v308);
        v311.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v311.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, xmmword_29D2F0F80), v310), v349.val[0]);
        v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, v311), v310), v349.val[1]);
        v307 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0F90), v310), v350.val[0]);
        v308 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v311), v310), v350.val[1]);
        v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v260.i8, xmmword_29D2F0FA0), v310), v260);
        v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v260.i8, xmmword_29D2F0FB0), v310), v261);
        v260 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0FC0), v310), v350.val[0]);
        v261 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v311), v310), v350.val[1]);
        v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0FD0), v310), v272);
        v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0F80), v310), v273);
        v272 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v311), v310), v350.val[0]);
        v273 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0FE0), v310), v350.val[1]);
        v349.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v285.i8, xmmword_29D2F0FF0), v310), v285);
        v349.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v285.i8, xmmword_29D2F0F80), v310), v286);
        v285 = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, v311), v310), v349.val[0]);
        v286 = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, xmmword_29D2F1000), v310), v349.val[1]);
      }

      v313 = vaddq_s8(v307, v309);
      v314 = vaddq_s8(v308, v309);
      v315 = vaddq_s8(v260, v309);
      v316 = vaddq_s8(v261, v309);
      v317 = vaddq_s8(v272, v309);
      v318 = vaddq_s8(v273, v309);
      v319 = vaddq_s8(v285, v309);
      v320 = vaddq_s8(v286, v309);
      v321.i64[0] = 0x1010101010101010;
      v321.i64[1] = 0x1010101010101010;
      v322 = vceqzq_s8(vandq_s8(v34, v321));
      v323.i64[0] = 0xFF00FF00FF00FFLL;
      v323.i64[1] = 0xFF00FF00FF00FFLL;
      v324 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v313, xmmword_29D2F1010), v323), v322), v313);
      v325 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v314, xmmword_29D2F1010), v323), v322), v314);
      v326 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v315, xmmword_29D2F1010), v323), v322), v315);
      v327 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v316, xmmword_29D2F1010), v323), v322), v316);
      v328 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v317, xmmword_29D2F1010), v323), v322), v317);
      v329 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v318, xmmword_29D2F1010), v323), v322), v318);
      v330 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v319, xmmword_29D2F1010), v323), v322), v319);
      v331 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v320, xmmword_29D2F1010), v323), v322), v320);
      v332 = vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v324, 3uLL), v325, 3uLL), vuzp1q_s16(v324, v325));
      v333 = vshrn_high_n_s32(vshrn_n_s32(v324, 5uLL), v325, 5uLL);
      v325.i64[0] = 0xF800F800F800F800;
      v325.i64[1] = 0xF800F800F800F800;
      *a1 = vbslq_s8(v325, v333, v332);
      a1[1] = vbslq_s8(v325, vshrn_high_n_s32(vshrn_n_s32(v328, 5uLL), v329, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v328, 3uLL), v329, 3uLL), vuzp1q_s16(v328, v329)));
      v334 = &a1->i8[a2];
      *v334 = vbslq_s8(v325, vshrn_high_n_s32(vshrn_n_s32(v326, 5uLL), v327, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v326, 3uLL), v327, 3uLL), vuzp1q_s16(v326, v327)));
      v334[1] = vbslq_s8(v325, vshrn_high_n_s32(vshrn_n_s32(v330, 5uLL), v331, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v330, 3uLL), v331, 3uLL), vuzp1q_s16(v330, v331)));
      return v165;
    }

    v177 = 8 * ((v348 + 6) & 7);
    v348[0] |= 31 << v177;
    v178 = v177 | 5;
    v179 = (v177 | 5) - v177;
    if (v179 - 11 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v180 = 0;
      v335 = 6;
      do
      {
        v336 = 64 - v178;
        if (64 - v178 >= v335)
        {
          v336 = v335;
        }

        v337 = v336 + v178;
        v180 += v337 >> 6;
        v178 = v337 & 0x3F;
        v335 -= v336;
      }

      while (v335);
      v179 = v178 - v177 + (v180 << 6);
    }

    else
    {
      v180 = 0;
    }

    if (v179 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v338 = 0;
      v339 = 5;
      do
      {
        v340 = 64 - v178;
        if (64 - v178 >= v339)
        {
          v340 = v339;
        }

        v348[v180] |= ((0xFFFFFFFFFFFFFFFFLL >> v338) & ~(-1 << v340)) << v178;
        v338 += v340;
        v341 = v340 + v178;
        v180 += v341 >> 6;
        v178 = v341 & 0x3F;
        v339 -= v340;
      }

      while (v339);
    }
  }

  v165 = 0;
  a1->i64[0] = 0;
  *(a1->i64 + a2) = 0;
  return v165;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int16x8_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 64, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 10, 64, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 24, 64, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 26, 64, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a3 + 16);
  v8 = *(a3 + a4);
  v7 = *(a3 + a4 + 16);
  v9.i64[0] = 0x1F0000001FLL;
  v9.i64[1] = 0x1F0000001FLL;
  v10.i64[0] = 0x3F0000003F00;
  v10.i64[1] = 0x3F0000003F00;
  v11.i64[0] = 0x1F0000001F0000;
  v11.i64[1] = 0x1F0000001F0000;
  v12 = vbslq_s8(v11, vshll_n_u16(*a3, 5uLL), vbslq_s8(v10, vshll_n_u16(*a3, 3uLL), vbslq_s8(v9, vmovl_u16(*a3), 0)));
  v13 = vbslq_s8(v11, vshll_high_n_u16(*a3, 5uLL), vbslq_s8(v10, vshll_high_n_u16(*a3, 3uLL), vbslq_s8(v9, vmovl_high_u16(*a3), 0)));
  v542 = v8;
  v14 = vbslq_s8(v11, vshll_n_u16(*v8.i8, 5uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v8.i8), 0)));
  v15 = vbslq_s8(v11, vshll_high_n_u16(v8, 5uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 3uLL), vbslq_s8(v9, vmovl_high_u16(v8), 0)));
  v544 = v6;
  v16 = vbslq_s8(v11, vshll_n_u16(*v6.i8, 5uLL), vbslq_s8(v10, vshll_n_u16(*v6.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v6.i8), 0)));
  v17 = vbslq_s8(v11, vshll_high_n_u16(v6, 5uLL), vbslq_s8(v10, vshll_high_n_u16(v6, 3uLL), vbslq_s8(v9, vmovl_high_u16(v6), 0)));
  v543 = v7;
  v18 = vbslq_s8(v11, vshll_n_u16(*v7.i8, 5uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v7.i8), 0)));
  v19 = vbslq_s8(v11, vshll_high_n_u16(v7, 5uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 3uLL), vbslq_s8(v9, vmovl_high_u16(v7), 0)));
  v20 = vdupq_lane_s32(*v12.i8, 0);
  v21 = vshlq_s8(vshlq_s8(vsubq_s8(v14, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v22 = vshlq_s8(vshlq_s8(vsubq_s8(v15, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v23 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v24 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v555 = vshlq_s8(vshlq_s8(vsubq_s8(v12, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v556 = vshlq_s8(vshlq_s8(vsubq_s8(v13, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v25 = vqtbl1q_s8(vmaxq_s8(v555, v556), xmmword_29D2F0F70);
  v26 = vqtbl1q_s8(vminq_s8(v555, v556), xmmword_29D2F0F70);
  v27 = vpmaxq_s8(v25, v25);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vzip1q_s8(v29, v30);
  v32.i64[0] = 0x808080808080808;
  v32.i64[1] = 0x808080808080808;
  v33 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v31)), vceqzq_s8(v31));
  v34 = vqtbl1q_s8(vmaxq_s8(v21, v22), xmmword_29D2F0F70);
  v35 = vqtbl1q_s8(vminq_s8(v21, v22), xmmword_29D2F0F70);
  v36 = vpmaxq_s8(v34, v34);
  v37 = vpminq_s8(v35, v35);
  v38 = vpmaxq_s8(v36, v36);
  v39 = vpminq_s8(v37, v37);
  v40 = vmaxq_s8(v29, v38);
  v41 = vminq_s8(v30, v39);
  v42 = vzip1q_s8(v38, v39);
  v43 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v42)), vceqzq_s8(v42));
  v44 = vqtbl1q_s8(vmaxq_s8(v23, v24), xmmword_29D2F0F70);
  v45 = vqtbl1q_s8(vminq_s8(v23, v24), xmmword_29D2F0F70);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vpmaxq_s8(v46, v46);
  v49 = vpminq_s8(v47, v47);
  v50 = vmaxq_s8(v40, v48);
  v51 = vminq_s8(v41, v49);
  v52 = vzip1q_s8(v48, v49);
  v53 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v52)), vceqzq_s8(v52));
  v54 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v55 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v56 = vqtbl1q_s8(vmaxq_s8(v54, v55), xmmword_29D2F0F70);
  v57 = vqtbl1q_s8(vminq_s8(v54, v55), xmmword_29D2F0F70);
  v58 = vpmaxq_s8(v56, v56);
  v59 = vpminq_s8(v57, v57);
  v60 = vpmaxq_s8(v58, v58);
  v61 = vpminq_s8(v59, v59);
  v62 = vmaxq_s8(v50, v60);
  v63 = vminq_s8(v51, v61);
  v64 = vzip1q_s8(v60, v61);
  v65 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v64)), vceqzq_s8(v64));
  v66 = vpmaxq_s8(v33, v33);
  v67 = vpmaxq_s8(v43, v43);
  v68 = vpmaxq_s8(v53, v53);
  v69 = vpmaxq_s8(v65, v65);
  v70 = vmaxq_s8(vmaxq_s8(v66, v67), vmaxq_s8(v68, v69));
  v71 = vclzq_s8(vsubq_s8(v62, v63));
  v72 = vsubq_s8(v32, v71);
  v73 = vminq_s8(v72, v70);
  if (!vmaxvq_s8(v73))
  {
    a1->i16[0] = *a3;
    v172 = 1;
    result = 2;
    goto LABEL_100;
  }

  v550 = v21;
  v551 = v22;
  v552 = v23;
  v553 = v24;
  v554 = v54;
  v547 = v55;
  v74.i64[0] = -1;
  v74.i64[1] = -1;
  v75.i64[0] = 0x707070707070707;
  v75.i64[1] = 0x707070707070707;
  v76 = vcgtq_s8(v70, v72);
  v545 = vandq_s8(vsubq_s8(vshlq_s8(v74, vsubq_s8(v75, v71)), v63), v76);
  v77.i64[0] = 0x303030303030303;
  v77.i64[1] = 0x303030303030303;
  v533 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v66), v77), 0);
  v536 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v68), v77), 0);
  v538 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v67), v77), 0);
  v540 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v69), v77), 0);
  v78.i64[0] = 0x404040404040404;
  v78.i64[1] = 0x404040404040404;
  v79 = v20;
  v80 = vorrq_s8(vbicq_s8(v78, vceqq_s8(vaddq_s8(v540, v536), vnegq_s8(vaddq_s8(v533, v538)))), vorrq_s8(vandq_s8(vceqzq_s8(v73), v77), vandq_s8(v76, v32)));
  v81.i64[0] = 0xFF00FF00FF00FFLL;
  v81.i64[1] = 0xFF00FF00FF00FFLL;
  v549 = v79;
  v82 = vsubq_s8(v79, vshlq_s8(vqtbl1q_s8(v79, xmmword_29D2F1010), v81));
  v534 = v17;
  v535 = v15;
  v83 = vshlq_s8(vshlq_s8(vsubq_s8(v14, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v14, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v84 = vshlq_s8(vshlq_s8(vsubq_s8(v15, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v15, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v85 = vshlq_s8(vshlq_s8(vsubq_s8(v16, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v16, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v86 = vshlq_s8(vshlq_s8(vsubq_s8(v17, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v17, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v87 = vshlq_s8(vshlq_s8(vsubq_s8(v18, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v18, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v88 = vshlq_s8(vshlq_s8(vsubq_s8(v19, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v19, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v531 = vshlq_s8(vshlq_s8(vsubq_s8(v13, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v13, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v532 = vshlq_s8(vshlq_s8(vsubq_s8(v12, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v12, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v89 = vqtbl1q_s8(vmaxq_s8(v532, v531), xmmword_29D2F0F70);
  v90 = vqtbl1q_s8(vminq_s8(v532, v531), xmmword_29D2F0F70);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vpmaxq_s8(v91, v91);
  v94 = vpminq_s8(v92, v92);
  v95 = vzip1q_s8(v93, v94);
  v96 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v95)), vceqzq_s8(v95));
  v97 = vpmaxq_s8(v96, v96);
  v529 = v84;
  v530 = v83;
  v98 = vqtbl1q_s8(vmaxq_s8(v83, v84), xmmword_29D2F0F70);
  v99 = vqtbl1q_s8(vminq_s8(v83, v84), xmmword_29D2F0F70);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vmaxq_s8(v93, v102);
  v105 = vminq_s8(v94, v103);
  v106 = vzip1q_s8(v102, v103);
  v107 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v106)), vceqzq_s8(v106));
  v108 = v73;
  v109 = vpmaxq_s8(v107, v107);
  v527 = v86;
  v528 = v85;
  v110 = vqtbl1q_s8(vmaxq_s8(v85, v86), xmmword_29D2F0F70);
  v111 = vqtbl1q_s8(vminq_s8(v85, v86), xmmword_29D2F0F70);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vpmaxq_s8(v112, v112);
  v115 = vpminq_s8(v113, v113);
  v116 = vmaxq_s8(v104, v114);
  v117 = vminq_s8(v105, v115);
  v118 = vzip1q_s8(v114, v115);
  v119 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v118)), vceqzq_s8(v118));
  v120 = vpmaxq_s8(v119, v119);
  v526 = v87;
  v121 = vqtbl1q_s8(vmaxq_s8(v87, v88), xmmword_29D2F0F70);
  v122 = vqtbl1q_s8(vminq_s8(v87, v88), xmmword_29D2F0F70);
  v123 = vpmaxq_s8(v121, v121);
  v124 = vpminq_s8(v122, v122);
  v125 = vpmaxq_s8(v123, v123);
  v126 = vpminq_s8(v124, v124);
  v127 = vminq_s8(v117, v126);
  v128 = vzip1q_s8(v125, v126);
  v129 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v128)), vceqzq_s8(v128));
  v130 = vpmaxq_s8(v129, v129);
  v131 = vmaxq_s8(vmaxq_s8(v97, v109), vmaxq_s8(v120, v130));
  v132 = vclzq_s8(vsubq_s8(vmaxq_s8(v116, v125), v127));
  v133 = vsubq_s8(v32, v132);
  v134 = vcgtq_s8(v131, v133);
  v135 = vminq_s8(v133, v131);
  v133.i64[0] = 0x1010101010101010;
  v133.i64[1] = 0x1010101010101010;
  v131.i64[0] = 0x1818181818181818;
  v131.i64[1] = 0x1818181818181818;
  v136 = vorrq_s8(vandq_s8(vceqzq_s8(v135), v77), vbslq_s8(v134, v131, v133));
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v97), v77), 0);
  v138 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v109), v77), 0);
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v120), v77), 0);
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v130), v77), 0);
  v141 = vsubq_s8(v135, v137);
  v142 = vsubq_s8(v135, v138);
  v143 = vsubq_s8(v135, v139);
  v144 = vsubq_s8(v135, v140);
  v145 = vceqq_s8(vaddq_s8(v140, v139), vnegq_s8(vaddq_s8(v137, v138)));
  v139.i64[0] = 0x404040404040404;
  v139.i64[1] = 0x404040404040404;
  v146 = vorrq_s8(vbicq_s8(v139, v145), v136);
  v147 = vmovl_u8(*v146.i8);
  v138.i64[0] = 0x8000800080008;
  v138.i64[1] = 0x8000800080008;
  v85.i64[0] = 0x2000200020002;
  v85.i64[1] = 0x2000200020002;
  v148 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v135.i8), vceqzq_s16((*&v147 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v146.i8, 1uLL), v138)), vandq_s8(vceqq_s16((*&v147 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v85), v138)), *v141.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v143.i8, *v142.i8), *v144.i8), 3uLL));
  v149 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v108.i8, vcgt_u8(0x808080808080808, *v80.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v80.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v85), v138));
  v150 = vsubq_s8(v108, v533);
  v151 = vsubq_s8(v108, v536);
  v152 = vsubq_s8(v108, v540);
  v153 = vsubq_s8(v108, v538);
  v154 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v149, *v150.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v151.i8, *v153.i8), *v152.i8), 3uLL)), v148)), 0);
  v155 = vaddlvq_s8(v154);
  v157 = a5 < 2 || a6 == 0;
  if (v155)
  {
    v158.i64[0] = 0x707070707070707;
    v158.i64[1] = 0x707070707070707;
    v159.i64[0] = -1;
    v159.i64[1] = -1;
    v160 = vandq_s8(vsubq_s8(vshlq_s8(v159, vsubq_s8(v158, v132)), v127), v134);
    v549 = vbslq_s8(v154, v82, v549);
    v555 = vbslq_s8(v154, v532, v555);
    v556 = vbslq_s8(v154, v531, v556);
    v550 = vbslq_s8(v154, v530, v550);
    v551 = vbslq_s8(v154, v529, v551);
    v552 = vbslq_s8(v154, v528, v552);
    v553 = vbslq_s8(v154, v527, v553);
    v554 = vbslq_s8(v154, v526, v554);
    v161 = vbslq_s8(v154, v88, v547);
    v153 = vbslq_s8(v154, v142, v153);
    v537 = vbslq_s8(v154, v141, v150);
    v539 = vbslq_s8(v154, v143, v151);
    v541 = vbslq_s8(v154, v144, v152);
    v162 = vbslq_s8(v154, v160, v545);
    v163 = vbslq_s8(v154, v135, v108);
    v80 = vbslq_s8(v154, v146, v80);
    v165 = v534;
    v164 = v535;
    if (v157)
    {
LABEL_10:
      v167 = v539;
      v166 = v541;
      v169 = v555;
      v168 = v556;
      v170 = v80;
      v80.i32[0] = v549.i32[0];
      v171 = v537;
      goto LABEL_16;
    }
  }

  else
  {
    v537 = v150;
    v539 = v151;
    v541 = v152;
    v162 = v545;
    v161 = v547;
    v163 = v108;
    v165 = v534;
    v164 = v535;
    if (v157)
    {
      goto LABEL_10;
    }
  }

  v546 = v162;
  v548 = v161;
  v174 = vsubq_s8(v12, vqtbl2q_s8(*v12.i8, xmmword_29D2F0F80));
  v175 = vsubq_s8(v13, vqtbl2q_s8(*v12.i8, xmmword_29D2F1030));
  v176 = v164;
  v176.i32[3] = v13.i32[3];
  v177 = v165;
  v177.i32[3] = v13.i32[3];
  v178 = v19;
  v178.i32[3] = v13.i32[3];
  v179 = vqtbl2q_s8(*v18.i8, xmmword_29D2F0F80);
  v180 = vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F1060));
  v181 = v153;
  v182 = v175;
  v182.i32[3] = v174.i32[0];
  v174.i32[0] = v175.i32[3];
  v183 = vshlq_s8(v182, xmmword_29D2F1310);
  v184 = vshlq_s8(vsubq_s8(v165, vqtbl2q_s8(*v16.i8, xmmword_29D2F0F80)), xmmword_29D2F1310);
  v185 = vshlq_s8(v180, xmmword_29D2F1310);
  v186 = vshlq_s8(vsubq_s8(v19, v179), xmmword_29D2F1310);
  v187 = vshlq_s8(vshlq_s8(v174, xmmword_29D2F1310), xmmword_29D2F1320);
  v188 = vshlq_s8(v183, xmmword_29D2F1320);
  v189 = vshlq_s8(vshlq_s8(vsubq_s8(v14, vqtbl2q_s8(*v14.i8, xmmword_29D2F0FA0)), xmmword_29D2F1310), xmmword_29D2F1320);
  v190 = vshlq_s8(vshlq_s8(vsubq_s8(v164, vqtbl2q_s8(*v14.i8, xmmword_29D2F1040)), xmmword_29D2F1310), xmmword_29D2F1320);
  v191 = vshlq_s8(vshlq_s8(vsubq_s8(v16, vqtbl2q_s8(*v16.i8, xmmword_29D2F1050)), xmmword_29D2F1310), xmmword_29D2F1320);
  v192 = vshlq_s8(v184, xmmword_29D2F1320);
  v193 = vshlq_s8(v185, xmmword_29D2F1320);
  v194 = vshlq_s8(v186, xmmword_29D2F1320);
  v195 = vqtbl1q_s8(vmaxq_s8(v187, v188), xmmword_29D2F0F70);
  v196 = vqtbl1q_s8(vminq_s8(v187, v188), xmmword_29D2F0F70);
  v197 = vpmaxq_s8(v195, v195);
  v198 = vpminq_s8(v196, v196);
  v199 = vpmaxq_s8(v197, v197);
  v200 = vpminq_s8(v198, v198);
  v201 = vzip1q_s8(v199, v200);
  v202.i64[0] = 0x808080808080808;
  v202.i64[1] = 0x808080808080808;
  v203 = vbicq_s8(vsubq_s8(v202, vclsq_s8(v201)), vceqzq_s8(v201));
  v204 = vpmaxq_s8(v203, v203);
  v205 = vqtbl1q_s8(vmaxq_s8(v189, v190), xmmword_29D2F0F70);
  v206 = vqtbl1q_s8(vminq_s8(v189, v190), xmmword_29D2F0F70);
  v207 = vpmaxq_s8(v205, v205);
  v208 = vpminq_s8(v206, v206);
  v209 = vpmaxq_s8(v207, v207);
  v210 = vpminq_s8(v208, v208);
  v211 = vmaxq_s8(v199, v209);
  v212 = vminq_s8(v200, v210);
  v213 = vzip1q_s8(v209, v210);
  v214 = vbicq_s8(vsubq_s8(v202, vclsq_s8(v213)), vceqzq_s8(v213));
  v215 = vpmaxq_s8(v214, v214);
  v216 = vqtbl1q_s8(vmaxq_s8(v191, v192), xmmword_29D2F0F70);
  v217 = vqtbl1q_s8(vminq_s8(v191, v192), xmmword_29D2F0F70);
  v218 = vpmaxq_s8(v216, v216);
  v219 = vpminq_s8(v217, v217);
  v220 = vpmaxq_s8(v218, v218);
  v221 = vpminq_s8(v219, v219);
  v222 = vmaxq_s8(v211, v220);
  v223 = vminq_s8(v212, v221);
  v224 = vzip1q_s8(v220, v221);
  v225 = vbicq_s8(vsubq_s8(v202, vclsq_s8(v224)), vceqzq_s8(v224));
  v226 = v163;
  v227 = vpmaxq_s8(v225, v225);
  v228 = vqtbl1q_s8(vmaxq_s8(v193, v194), xmmword_29D2F0F70);
  v229 = vqtbl1q_s8(vminq_s8(v193, v194), xmmword_29D2F0F70);
  v230 = vpmaxq_s8(v228, v228);
  v231 = vpminq_s8(v229, v229);
  v232 = vpmaxq_s8(v230, v230);
  v233 = vpminq_s8(v231, v231);
  v234 = vmaxq_s8(v222, v232);
  v235 = vminq_s8(v223, v233);
  v236 = vzip1q_s8(v232, v233);
  v237 = vbicq_s8(vsubq_s8(v202, vclsq_s8(v236)), vceqzq_s8(v236));
  v238 = vpmaxq_s8(v237, v237);
  v239 = vmaxq_s8(vmaxq_s8(v204, v215), vmaxq_s8(v227, v238));
  v240 = vclzq_s8(vsubq_s8(v234, v235));
  v241 = vsubq_s8(v202, v240);
  v242 = vcgtq_s8(v239, v241);
  v243 = vminq_s8(v241, v239);
  v241.i64[0] = 0x909090909090909;
  v241.i64[1] = 0x909090909090909;
  v244.i64[0] = 0x202020202020202;
  v244.i64[1] = 0x202020202020202;
  v245 = vorrq_s8(vandq_s8(vceqzq_s8(v243), v244), vsubq_s8(vandq_s8(v242, v241), vmvnq_s8(v242)));
  v241.i64[0] = 0x303030303030303;
  v241.i64[1] = 0x303030303030303;
  v246 = vmaxq_s8(vminq_s8(vsubq_s8(v243, v204), v241), 0);
  v247 = vmaxq_s8(vminq_s8(vsubq_s8(v243, v215), v241), 0);
  v248 = vmaxq_s8(vminq_s8(vsubq_s8(v243, v227), v241), 0);
  v249 = vmaxq_s8(vminq_s8(vsubq_s8(v243, v238), v241), 0);
  v250 = vsubq_s8(v243, v246);
  v251 = vsubq_s8(v243, v247);
  v252 = vsubq_s8(v243, v248);
  v253 = vsubq_s8(v243, v249);
  v254 = vceqq_s8(vaddq_s8(v249, v248), vnegq_s8(vaddq_s8(v246, v247)));
  v249.i64[0] = 0x404040404040404;
  v249.i64[1] = 0x404040404040404;
  v255 = vorrq_s8(vbicq_s8(v249, v254), v245);
  v256.i64[0] = 0x3000300030003;
  v256.i64[1] = 0x3000300030003;
  v170 = v80;
  v257 = vmovl_s8(*v80.i8);
  v247.i64[0] = 0x8000800080008;
  v247.i64[1] = 0x8000800080008;
  v258 = vbicq_s8(vmovl_s8(*v226.i8), vceqzq_s16(vandq_s8(v257, v247)));
  v259 = vandq_s8(v257, v256);
  v256.i64[0] = 0x2000200020002;
  v256.i64[1] = 0x2000200020002;
  v167 = v539;
  v166 = v541;
  v171 = v537;
  v260 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v258, vandq_s8(vshll_n_s8(*v80.i8, 1uLL), v247)), vandq_s8(vceqq_s16(v259, v256), v247)), *v537.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v539.i8, *v181.i8), *v541.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v243.i8, vcgt_u8(0x808080808080808, *v255.i8))), vand_s8(vadd_s8(*v255.i8, *v255.i8), 0x808080808080808)), *v250.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v252.i8, *v251.i8), *v253.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v260))
  {
    v261.i64[0] = 0x707070707070707;
    v261.i64[1] = 0x707070707070707;
    v262 = vsubq_s8(v261, v240);
    v261.i64[0] = -1;
    v261.i64[1] = -1;
    v263 = vandq_s8(vsubq_s8(vshlq_s8(v261, v262), v235), v242);
    v80 = vbslq_s8(v260, vextq_s8(v13, v13, 0xCuLL), v549);
    v169 = vbslq_s8(v260, v187, v555);
    v168 = vbslq_s8(v260, v188, v556);
    v550 = vbslq_s8(v260, v189, v550);
    v551 = vbslq_s8(v260, v190, v551);
    v552 = vbslq_s8(v260, v191, v552);
    v553 = vbslq_s8(v260, v192, v553);
    v554 = vbslq_s8(v260, v193, v554);
    v161 = vbslq_s8(v260, v194, v548);
    v171 = vbslq_s8(v260, v250, v537);
    v153 = vbslq_s8(v260, v251, v181);
    v167 = vbslq_s8(v260, v252, v539);
    v166 = vbslq_s8(v260, v253, v541);
    v162 = vbslq_s8(v260, v263, v546);
    v170 = vbslq_s8(v260, v255, v170);
    v163 = vbslq_s8(v260, v243, v226);
  }

  else
  {
    v162 = v546;
    v161 = v548;
    v163 = v226;
    v169 = v555;
    v168 = v556;
    v153 = v181;
    v80.i32[0] = v549.i32[0];
  }

LABEL_16:
  v264 = vmovl_s8(*v170.i8);
  v265.i64[0] = 0x8000800080008;
  v265.i64[1] = 0x8000800080008;
  v266.i64[0] = 0x3000300030003;
  v266.i64[1] = 0x3000300030003;
  v267.i64[0] = 0x2000200020002;
  v267.i64[1] = 0x2000200020002;
  v268 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v163.i8), vceqzq_s16(vandq_s8(v264, v265))), vandq_s8(vshll_n_s8(*v170.i8, 1uLL), v265)), vandq_s8(vceqq_s16(vandq_s8(v264, v266), v267), v265)), *v171.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v167.i8, *v153.i8), *v166.i8), 3uLL));
  v269 = vpaddq_s16(v268, v268);
  if ((vpaddq_s16(v269, v269).i16[0] + 47) > 0x1FF)
  {
    *a1 = *a3;
    a1[1] = v542;
    v172 = 63;
    a1[2] = v544;
    a1[3] = v543;
    result = 64;
  }

  else
  {
    v270 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v271 = 8 * (a1 & 7);
    if (v271)
    {
      v272 = *v270 & ~(-1 << v271);
    }

    else
    {
      v272 = 0;
    }

    *a2 = 0;
    if (v163.i8[0])
    {
      v273 = ((v163.u8[0] << 15) + 229376) & 0x38000;
    }

    else
    {
      v273 = 0;
    }

    if (v163.i8[1])
    {
      v274 = ((v163.u8[1] << 18) + 1835008) & 0x1C0000;
    }

    else
    {
      v274 = 0;
    }

    if (v163.i8[2])
    {
      v275 = ((v163.u8[2] << 21) + 14680064) & 0xE00000;
    }

    else
    {
      v275 = 0;
    }

    v276 = v80.i8[0] & 0x1F | (32 * (v80.i8[1] & 0x3F)) | ((v80.i8[2] & 0x1F) << 11);
    v277 = v170.i8[0] & 0x1F | ((32 * (v170.i8[1] & 0x1F)) & 0x83FF) | ((v170.i8[2] & 0x1F) << 10) | v273 | v274 | v275;
    v278 = (v277 << v271) | v272;
    if (v271 >= 0x28)
    {
      *v270 = v278;
      v278 = v277 >> (-8 * (a1 & 7u));
    }

    v279 = (v271 + 24) & 0x38;
    v280 = v278 | (v276 << v279);
    if (v279 >= 0x30)
    {
      *(v270 + (((v271 + 24) >> 3) & 8)) = v280;
      v280 = v276 >> -v279;
    }

    v281 = v271 + 40;
    v282 = vsubq_s8(v163, v171);
    v283 = vsubq_s8(v163, v153);
    v284 = vsubq_s8(v163, v167);
    v285 = vsubq_s8(v163, v166);
    v286 = vtrn1q_s8(v282, v283);
    v287 = vtrn2q_s8(v282, v283);
    v288 = vtrn1q_s8(v284, v285);
    v289 = vtrn2q_s8(v284, v285);
    v290 = vzip1q_s16(v287, v289);
    v291 = vtrn2q_s16(v287, v289);
    v289.i64[0] = vzip1q_s32(vzip1q_s16(v286, v288), v290).u64[0];
    v291.i64[0] = vzip1q_s32(vtrn2q_s16(v286, v288), v291).u64[0];
    v288.i64[0] = 0x202020202020202;
    v288.i64[1] = 0x202020202020202;
    v292 = vandq_s8(vmovl_s16(vtst_s16(*v264.i8, 0x4000400040004)), v288);
    v288.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v288.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v285.i64[0] = -1;
    v285.i64[1] = -1;
    v293 = vshlq_u8(v285, vorrq_s8(v292, v288));
    v294 = vmovl_u8(vand_s8(*v293.i8, *v289.i8));
    v295 = vmovl_u8(vand_s8(*&vextq_s8(v293, v293, 8uLL), *v291.i8));
    v296 = vmovl_u8(*v292.i8);
    v297 = vmovl_high_u8(v292);
    v298 = vpaddq_s16(vshlq_u16(v294, vtrn1q_s16(0, v296)), vshlq_u16(v295, vtrn1q_s16(0, v297)));
    v299 = vpaddq_s16(v296, v297);
    v300 = vmovl_u16(*v299.i8);
    v301 = vmovl_high_u16(v299);
    v302 = vpaddq_s32(vshlq_u32(vmovl_u16(*v298.i8), vtrn1q_s32(0, v300)), vshlq_u32(vmovl_high_u16(v298), vtrn1q_s32(0, v301)));
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
    v310 = (v271 + 40) & 0x38;
    v311 = (v308.i64[0] << v310) | v280;
    if ((v309.i64[0] + v310) >= 0x40)
    {
      *(v270 + ((v281 >> 3) & 8)) = v311;
      v311 = v308.i64[0] >> -v310;
      if (!v310)
      {
        v311 = 0;
      }
    }

    v312 = vceqq_s8(v163, v171);
    v313 = v309.i64[0] + v281;
    v314 = v311 | (v308.i64[1] << v313);
    if ((v313 & 0x3F) + v309.i64[1] >= 0x40)
    {
      *(v270 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
      v314 = v308.i64[1] >> -(v313 & 0x3F);
      if ((v313 & 0x3F) == 0)
      {
        v314 = 0;
      }
    }

    v315 = vandq_s8(v162, v312);
    v316 = v313 + v309.i64[1];
    v317.i64[0] = 0x808080808080808;
    v317.i64[1] = 0x808080808080808;
    v318.i64[0] = -1;
    v318.i64[1] = -1;
    v319 = vandq_s8(vextq_s8(vtstq_s8(v170, v317), 0, 0xCuLL), v163);
    v320.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v320.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v321 = vandq_s8(vshlq_u8(v318, vaddq_s8(v319, v320)), v162);
    v322 = vmovl_u8(*v319.i8);
    v323 = vpaddq_s16(vshlq_u16(vmovl_u8(*v321.i8), vtrn1q_s16(0, v322)), vmovl_high_u8(v321));
    v324 = vpaddq_s16(v322, vmovl_high_u8(v319));
    v325 = vmovl_u16(*v324.i8);
    v326 = vmovl_high_u16(v324);
    v327 = vpaddq_s32(vshlq_u32(vmovl_u16(*v323.i8), vtrn1q_s32(0, v325)), vshlq_u32(vmovl_high_u16(v323), vtrn1q_s32(0, v326)));
    v328 = vpaddq_s32(v325, v326);
    v329.i64[0] = v327.u32[0];
    v329.i64[1] = v327.u32[1];
    v330 = v329;
    v329.i64[0] = v327.u32[2];
    v329.i64[1] = v327.u32[3];
    v331 = v329;
    v329.i64[0] = v328.u32[0];
    v329.i64[1] = v328.u32[1];
    v332 = v329;
    v329.i64[0] = v328.u32[2];
    v329.i64[1] = v328.u32[3];
    v333 = vpaddq_s64(vshlq_u64(v330, vzip1q_s64(0, v332)), vshlq_u64(v331, vzip1q_s64(0, v329)));
    v334 = vpaddq_s64(v332, v329);
    v335 = (v333.i64[0] << v316) | v314;
    if (v334.i64[0] + (v316 & 0x3F) >= 0x40)
    {
      *(v270 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
      v335 = v333.i64[0] >> -(v316 & 0x3F);
      if ((v316 & 0x3F) == 0)
      {
        v335 = 0;
      }
    }

    v336 = vaddq_s8(v315, v169);
    v337 = v334.i64[0] + v316;
    v338 = v335 | (v333.i64[1] << v337);
    if ((v337 & 0x3F) + v334.i64[1] >= 0x40)
    {
      *(v270 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
      v338 = v333.i64[1] >> -(v337 & 0x3F);
      if ((v337 & 0x3F) == 0)
      {
        v338 = 0;
      }
    }

    v339 = v337 + v334.i64[1];
    v340 = vextq_s8(0, v171, 0xCuLL);
    v341.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v341.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v342.i64[0] = -1;
    v342.i64[1] = -1;
    v343 = vandq_s8(vshlq_u8(v342, vaddq_s8(v340, v341)), v336);
    v344 = vmovl_u8(*v340.i8);
    v345 = vmovl_high_u8(v340);
    v346 = vpaddq_s16(vshlq_u16(vmovl_u8(*v343.i8), vtrn1q_s16(0, v344)), vshlq_u16(vmovl_high_u8(v343), vtrn1q_s16(0, v345)));
    v347 = vpaddq_s16(v344, v345);
    v348 = vmovl_u16(*v347.i8);
    v349 = vmovl_high_u16(v347);
    v350 = vpaddq_s32(vshlq_u32(vmovl_u16(*v346.i8), vtrn1q_s32(0, v348)), vshlq_u32(vmovl_high_u16(v346), vtrn1q_s32(0, v349)));
    v351 = vpaddq_s32(v348, v349);
    v352.i64[0] = v350.u32[0];
    v352.i64[1] = v350.u32[1];
    v353 = v352;
    v352.i64[0] = v350.u32[2];
    v352.i64[1] = v350.u32[3];
    v354 = v352;
    v352.i64[0] = v351.u32[0];
    v352.i64[1] = v351.u32[1];
    v355 = v352;
    v352.i64[0] = v351.u32[2];
    v352.i64[1] = v351.u32[3];
    v356 = vpaddq_s64(vshlq_u64(v353, vzip1q_s64(0, v355)), vshlq_u64(v354, vzip1q_s64(0, v352)));
    v357 = vpaddq_s64(v355, v352);
    v358 = (v356.i64[0] << v339) | v338;
    if (v357.i64[0] + (v339 & 0x3F) >= 0x40)
    {
      *(v270 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
      v358 = v356.i64[0] >> -(v339 & 0x3F);
      if ((v339 & 0x3F) == 0)
      {
        v358 = 0;
      }
    }

    v359 = vceqq_s8(v163, v153);
    v360 = vaddq_s8(v168, v315);
    v361 = v357.i64[0] + v339;
    v362 = v358 | (v356.i64[1] << v361);
    if ((v361 & 0x3F) + v357.i64[1] >= 0x40)
    {
      *(v270 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
      v362 = v356.i64[1] >> -(v361 & 0x3F);
      if ((v361 & 0x3F) == 0)
      {
        v362 = 0;
      }
    }

    v363 = vandq_s8(v162, v359);
    v364 = v361 + v357.i64[1];
    v365.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v365.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v366.i64[0] = -1;
    v366.i64[1] = -1;
    v367 = vandq_s8(vshlq_u8(v366, vaddq_s8(v171, v365)), v360);
    v368 = vmovl_u8(*v171.i8);
    v369 = vmovl_high_u8(v171);
    v370 = vpaddq_s16(vshlq_u16(vmovl_u8(*v367.i8), vtrn1q_s16(0, v368)), vshlq_u16(vmovl_high_u8(v367), vtrn1q_s16(0, v369)));
    v371 = vpaddq_s16(v368, v369);
    v372 = vmovl_u16(*v371.i8);
    v373 = vmovl_high_u16(v371);
    v374 = vpaddq_s32(vshlq_u32(vmovl_u16(*v370.i8), vtrn1q_s32(0, v372)), vshlq_u32(vmovl_high_u16(v370), vtrn1q_s32(0, v373)));
    v375 = vpaddq_s32(v372, v373);
    v376.i64[0] = v374.u32[0];
    v376.i64[1] = v374.u32[1];
    v377 = v376;
    v376.i64[0] = v374.u32[2];
    v376.i64[1] = v374.u32[3];
    v378 = v376;
    v376.i64[0] = v375.u32[0];
    v376.i64[1] = v375.u32[1];
    v379 = v376;
    v376.i64[0] = v375.u32[2];
    v376.i64[1] = v375.u32[3];
    v380 = vpaddq_s64(vshlq_u64(v377, vzip1q_s64(0, v379)), vshlq_u64(v378, vzip1q_s64(0, v376)));
    v381 = vpaddq_s64(v379, v376);
    v382 = (v380.i64[0] << v364) | v362;
    if (v381.i64[0] + (v364 & 0x3F) >= 0x40)
    {
      *(v270 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
      v382 = v380.i64[0] >> -(v364 & 0x3F);
      if ((v364 & 0x3F) == 0)
      {
        v382 = 0;
      }
    }

    v383 = vaddq_s8(v550, v363);
    v384 = v381.i64[0] + v364;
    v385 = v382 | (v380.i64[1] << v384);
    v386 = v161;
    if ((v384 & 0x3F) + v381.i64[1] >= 0x40)
    {
      *(v270 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v385;
      v385 = v380.i64[1] >> -(v384 & 0x3F);
      if ((v384 & 0x3F) == 0)
      {
        v385 = 0;
      }
    }

    v387 = v384 + v381.i64[1];
    v388.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v388.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v389.i64[0] = -1;
    v389.i64[1] = -1;
    v390 = vshlq_u8(v389, vaddq_s8(v153, v388));
    v391 = vandq_s8(v390, v383);
    v392 = vmovl_u8(*v391.i8);
    v393 = vmovl_high_u8(v391);
    v394 = vmovl_u8(*v153.i8);
    v395 = vmovl_high_u8(v153);
    v396 = vtrn1q_s16(0, v394);
    v397 = vtrn1q_s16(0, v395);
    v398 = vpaddq_s16(vshlq_u16(v392, v396), vshlq_u16(v393, v397));
    v399 = vpaddq_s16(v394, v395);
    v400 = vmovl_u16(*v398.i8);
    v401 = vmovl_high_u16(v398);
    v402 = vmovl_u16(*v399.i8);
    v403 = vmovl_high_u16(v399);
    v404 = vtrn1q_s32(0, v402);
    v405 = vtrn1q_s32(0, v403);
    v406 = vpaddq_s32(vshlq_u32(v400, v404), vshlq_u32(v401, v405));
    v407 = vpaddq_s32(v402, v403);
    v408.i64[0] = v406.u32[0];
    v408.i64[1] = v406.u32[1];
    v409 = v408;
    v408.i64[0] = v406.u32[2];
    v408.i64[1] = v406.u32[3];
    v410 = v408;
    v408.i64[0] = v407.u32[0];
    v408.i64[1] = v407.u32[1];
    v411 = v408;
    v408.i64[0] = v407.u32[2];
    v408.i64[1] = v407.u32[3];
    v412 = vzip1q_s64(0, v411);
    v413 = vzip1q_s64(0, v408);
    v414 = vpaddq_s64(vshlq_u64(v409, v412), vshlq_u64(v410, v413));
    v415 = vpaddq_s64(v411, v408);
    v416 = (v414.i64[0] << v387) | v385;
    if (v415.i64[0] + (v387 & 0x3F) >= 0x40)
    {
      *(v270 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      if ((v387 & 0x3F) != 0)
      {
        v416 = v414.i64[0] >> -(v387 & 0x3F);
      }

      else
      {
        v416 = 0;
      }
    }

    v417 = vceqq_s8(v163, v167);
    v418 = vaddq_s8(v551, v363);
    v419 = v415.i64[0] + v387;
    v420 = v416 | (v414.i64[1] << v419);
    if ((v419 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v270 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
      v420 = v414.i64[1] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v420 = 0;
      }
    }

    v421 = vandq_s8(v162, v417);
    v422 = v419 + v415.i64[1];
    v423 = vandq_s8(v390, v418);
    v424 = vpaddq_s16(vshlq_u16(vmovl_u8(*v423.i8), v396), vshlq_u16(vmovl_high_u8(v423), v397));
    v425 = vpaddq_s32(vshlq_u32(vmovl_u16(*v424.i8), v404), vshlq_u32(vmovl_high_u16(v424), v405));
    v426.i64[0] = v425.u32[0];
    v426.i64[1] = v425.u32[1];
    v427 = v426;
    v426.i64[0] = v425.u32[2];
    v426.i64[1] = v425.u32[3];
    v428 = vpaddq_s64(vshlq_u64(v427, v412), vshlq_u64(v426, v413));
    v429 = (v428.i64[0] << v422) | v420;
    if (v415.i64[0] + (v422 & 0x3F) >= 0x40)
    {
      *(v270 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v428.i64[0] >> -(v422 & 0x3F);
      if ((v422 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vaddq_s8(v552, v421);
    v431 = v415.i64[0] + v422;
    v432 = (v415.i64[0] + v422) & 0x3F;
    v433 = v429 | (v428.i64[1] << v431);
    if ((v431 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v270 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
      v433 = v428.i64[1] >> -v432;
      if (!v432)
      {
        v433 = 0;
      }
    }

    v434 = v431 + v415.i64[1];
    v435.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v435.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v436.i64[0] = -1;
    v436.i64[1] = -1;
    v437 = vshlq_u8(v436, vaddq_s8(v167, v435));
    v438 = vandq_s8(v437, v430);
    v439 = vmovl_u8(*v438.i8);
    v440 = vmovl_high_u8(v438);
    v441 = vmovl_u8(*v167.i8);
    v442 = vmovl_high_u8(v167);
    v443 = vtrn1q_s16(0, v441);
    v444 = vtrn1q_s16(0, v442);
    v445 = vpaddq_s16(vshlq_u16(v439, v443), vshlq_u16(v440, v444));
    v446 = vpaddq_s16(v441, v442);
    v447 = vmovl_u16(*v445.i8);
    v448 = vmovl_high_u16(v445);
    v449 = vmovl_u16(*v446.i8);
    v450 = vmovl_high_u16(v446);
    v451 = vtrn1q_s32(0, v449);
    v452 = vtrn1q_s32(0, v450);
    v453 = vpaddq_s32(vshlq_u32(v447, v451), vshlq_u32(v448, v452));
    v454 = vpaddq_s32(v449, v450);
    v455.i64[0] = v453.u32[0];
    v455.i64[1] = v453.u32[1];
    v456 = v455;
    v455.i64[0] = v453.u32[2];
    v455.i64[1] = v453.u32[3];
    v457 = v455;
    v455.i64[0] = v454.u32[0];
    v455.i64[1] = v454.u32[1];
    v458 = v455;
    v455.i64[0] = v454.u32[2];
    v455.i64[1] = v454.u32[3];
    v459 = vzip1q_s64(0, v458);
    v460 = vzip1q_s64(0, v455);
    v461 = vpaddq_s64(vshlq_u64(v456, v459), vshlq_u64(v457, v460));
    v462 = vpaddq_s64(v458, v455);
    v463 = (v461.i64[0] << v434) | v433;
    if (v462.i64[0] + (v434 & 0x3F) >= 0x40)
    {
      *(v270 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v463;
      if ((v434 & 0x3F) != 0)
      {
        v463 = v461.i64[0] >> -(v434 & 0x3F);
      }

      else
      {
        v463 = 0;
      }
    }

    v464 = vceqq_s8(v163, v166);
    v465 = vaddq_s8(v553, v421);
    v466 = v462.i64[0] + v434;
    v467 = v463 | (v461.i64[1] << v466);
    if ((v466 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v270 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v461.i64[1] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = vandq_s8(v162, v464);
    v469 = v466 + v462.i64[1];
    v470 = vandq_s8(v437, v465);
    v471 = vpaddq_s16(vshlq_u16(vmovl_u8(*v470.i8), v443), vshlq_u16(vmovl_high_u8(v470), v444));
    v472 = vpaddq_s32(vshlq_u32(vmovl_u16(*v471.i8), v451), vshlq_u32(vmovl_high_u16(v471), v452));
    v473.i64[0] = v472.u32[0];
    v473.i64[1] = v472.u32[1];
    v474 = v473;
    v473.i64[0] = v472.u32[2];
    v473.i64[1] = v472.u32[3];
    v475 = vpaddq_s64(vshlq_u64(v474, v459), vshlq_u64(v473, v460));
    v476 = (v475.i64[0] << v469) | v467;
    if (v462.i64[0] + (v469 & 0x3F) >= 0x40)
    {
      *(v270 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v476;
      v476 = v475.i64[0] >> -(v469 & 0x3F);
      if ((v469 & 0x3F) == 0)
      {
        v476 = 0;
      }
    }

    v477 = vaddq_s8(v554, v468);
    v478 = v462.i64[0] + v469;
    v479 = (v462.i64[0] + v469) & 0x3F;
    v480 = v476 | (v475.i64[1] << v478);
    if ((v478 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v270 + ((v478 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v480;
      v480 = v475.i64[1] >> -v479;
      if (!v479)
      {
        v480 = 0;
      }
    }

    v481 = v478 + v462.i64[1];
    v482.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v482.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v483.i64[0] = -1;
    v483.i64[1] = -1;
    v484 = vshlq_u8(v483, vaddq_s8(v166, v482));
    v485 = vandq_s8(v484, v477);
    v486 = vmovl_u8(*v485.i8);
    v487 = vmovl_high_u8(v485);
    v488 = vmovl_u8(*v166.i8);
    v489 = vmovl_high_u8(v166);
    v490 = vtrn1q_s16(0, v488);
    v491 = vtrn1q_s16(0, v489);
    v492 = vpaddq_s16(vshlq_u16(v486, v490), vshlq_u16(v487, v491));
    v493 = vpaddq_s16(v488, v489);
    v494 = vmovl_u16(*v492.i8);
    v495 = vmovl_high_u16(v492);
    v496 = vmovl_u16(*v493.i8);
    v497 = vmovl_high_u16(v493);
    v498 = vtrn1q_s32(0, v496);
    v499 = vtrn1q_s32(0, v497);
    v500 = vpaddq_s32(vshlq_u32(v494, v498), vshlq_u32(v495, v499));
    v501 = vpaddq_s32(v496, v497);
    v502.i64[0] = v500.u32[0];
    v502.i64[1] = v500.u32[1];
    v503 = v502;
    v502.i64[0] = v500.u32[2];
    v502.i64[1] = v500.u32[3];
    v504 = v502;
    v502.i64[0] = v501.u32[0];
    v502.i64[1] = v501.u32[1];
    v505 = v502;
    v502.i64[0] = v501.u32[2];
    v502.i64[1] = v501.u32[3];
    v506 = vzip1q_s64(0, v505);
    v507 = vzip1q_s64(0, v502);
    v508 = vpaddq_s64(vshlq_u64(v503, v506), vshlq_u64(v504, v507));
    v509 = vpaddq_s64(v505, v502);
    v510 = (v508.i64[0] << v481) | v480;
    if (v509.i64[0] + (v481 & 0x3F) > 0x3F)
    {
      *(v270 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      if ((v481 & 0x3F) != 0)
      {
        v510 = v508.i64[0] >> -(v481 & 0x3F);
      }

      else
      {
        v510 = 0;
      }
    }

    v511 = vaddq_s8(v386, v468);
    v512 = v509.i64[0] + v481;
    v513 = v510 | (v508.i64[1] << v512);
    if ((v512 & 0x3F) + v509.i64[1] >= 0x40)
    {
      *(v270 + ((v512 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
      v513 = v508.i64[1] >> -(v512 & 0x3F);
      if ((v512 & 0x3F) == 0)
      {
        v513 = 0;
      }
    }

    v514 = v512 + v509.i64[1];
    v515 = vandq_s8(v484, v511);
    v516 = vpaddq_s16(vshlq_u16(vmovl_u8(*v515.i8), v490), vshlq_u16(vmovl_high_u8(v515), v491));
    v517 = vpaddq_s32(vshlq_u32(vmovl_u16(*v516.i8), v498), vshlq_u32(vmovl_high_u16(v516), v499));
    v518.i64[0] = v517.u32[0];
    v518.i64[1] = v517.u32[1];
    v519 = v518;
    v518.i64[0] = v517.u32[2];
    v518.i64[1] = v517.u32[3];
    v520 = vpaddq_s64(vshlq_u64(v519, v506), vshlq_u64(v518, v507));
    v521 = (v520.i64[0] << v514) | v513;
    if (v509.i64[0] + (v514 & 0x3F) >= 0x40)
    {
      *(v270 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
      v521 = v520.i64[0] >> -(v514 & 0x3F);
      if ((v514 & 0x3F) == 0)
      {
        v521 = 0;
      }
    }

    v522 = v509.i64[0] + v514;
    v523 = (v509.i64[0] + v514) & 0x3F;
    v524 = v521 | (v520.i64[1] << (v509.i8[0] + v514));
    if ((v523 + v509.i64[1]) >= 0x40)
    {
      *(v270 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v520.i64[1] >> -v523;
      if (!v523)
      {
        v524 = 0;
      }
    }

    v525 = v522 + v509.i64[1];
    if ((v525 & 0x3F) != 0)
    {
      *(v270 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
    }

    result = (v525 - v271 + 7) >> 3;
    v172 = *a2 | (result - 1);
  }

LABEL_100:
  *a2 = v172;
  return result;
}