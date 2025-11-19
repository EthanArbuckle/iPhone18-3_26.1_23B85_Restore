uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 34, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 50, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a3[1];
  v6 = (a3 + 2 * a4);
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v10 = vzip1q_s64(*a3, v8);
  v11 = vzip2q_s64(*a3, v8);
  v12 = vzip1q_s64(v7, v9);
  v14 = *v6;
  v15 = v6[1];
  v13 = (v6 + a4);
  v16 = vzip2q_s64(v7, v9);
  v17 = v13[1];
  v18 = vzip1q_s64(v14, *v13);
  v19 = vzip2q_s64(v14, *v13);
  v20 = vshrq_n_s16(v10, 6uLL);
  v21 = vshrq_n_s16(v12, 6uLL);
  v22 = vshrq_n_s16(v16, 6uLL);
  v23 = vshrq_n_s16(vzip1q_s64(v15, v17), 6uLL);
  v24 = vshrq_n_s16(vzip2q_s64(v15, v17), 6uLL);
  v25 = vdupq_lane_s32(*v20.i8, 0);
  *v580 = v20;
  *&v580[16] = vshrq_n_s16(v11, 6uLL);
  v587 = vshrq_n_s16(v18, 6uLL);
  v581 = vshrq_n_s16(v19, 6uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v25), 6uLL), 6uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(*&v580[16], v25), 6uLL), 6uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v587, v25), 6uLL), 6uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v581, v25), 6uLL), 6uLL);
  v30 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v25), 6uLL), 6uLL);
  v31 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v25), 6uLL), 6uLL);
  v32 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v25), 6uLL), 6uLL);
  v33 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, v25), 6uLL), 6uLL);
  v34 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v35 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38 = vpmaxq_s16(v36, v36);
  v39 = vpminq_s16(v37, v37);
  v40.i64[0] = 0x8000800080008000;
  v40.i64[1] = 0x8000800080008000;
  v41 = vmaxq_s16(v38, v40);
  v42.i64[0] = 0x8000800080008000;
  v42.i64[1] = 0x8000800080008000;
  v43 = vminq_s16(v39, v42);
  v44 = vzip1q_s16(v38, v39);
  v45.i64[0] = 0x10001000100010;
  v45.i64[1] = 0x10001000100010;
  v46 = vbicq_s8(vsubq_s16(v45, vclsq_s16(v44)), vceqzq_s16(v44));
  v47 = vpmaxq_s16(v46, v46);
  v48 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v49 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vpmaxq_s16(v50, v50);
  v53 = vpminq_s16(v51, v51);
  v54 = vmaxq_s16(v41, v52);
  v55 = vminq_s16(v43, v53);
  v56 = vzip1q_s16(v52, v53);
  v57 = vbicq_s8(vsubq_s16(v45, vclsq_s16(v56)), vceqzq_s16(v56));
  v58 = vpmaxq_s16(v57, v57);
  v59 = vqtbl1q_s8(vmaxq_s16(v30, v31), xmmword_29D2F1090);
  v60 = vqtbl1q_s8(vminq_s16(v30, v31), xmmword_29D2F1090);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vpmaxq_s16(v61, v61);
  v64 = vpminq_s16(v62, v62);
  v65 = vmaxq_s16(v54, v63);
  v66 = vminq_s16(v55, v64);
  v67 = vzip1q_s16(v63, v64);
  v68 = vbicq_s8(vsubq_s16(v45, vclsq_s16(v67)), vceqzq_s16(v67));
  v69 = vpmaxq_s16(v68, v68);
  v70 = vqtbl1q_s8(vmaxq_s16(v32, v33), xmmword_29D2F1090);
  v71 = vqtbl1q_s8(vminq_s16(v32, v33), xmmword_29D2F1090);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vpmaxq_s16(v72, v72);
  v75 = vpminq_s16(v73, v73);
  v76 = vmaxq_s16(v65, v74);
  v77 = vminq_s16(v66, v75);
  v78 = vzip1q_s16(v74, v75);
  v79 = vbicq_s8(vsubq_s16(v45, vclsq_s16(v78)), vceqzq_s16(v78));
  v80 = vpmaxq_s16(v79, v79);
  v81 = vmaxq_s16(vmaxq_s16(v47, v58), vmaxq_s16(v69, v80));
  v82 = vclzq_s16(vsubq_s16(v76, v77));
  v83 = vsubq_s16(v45, v82);
  v84 = vminq_s16(v83, v81);
  if (!vmaxvq_s16(v84))
  {
    v186 = (a3->i32[0] >> 12) & 0xFFFFFC00 | (a3->i32[0] >> 6);
    *(a1 + 2) = a3->i32[0] >> 28;
    *a1 = v186;
    v187 = 2;
    result = 3;
    goto LABEL_146;
  }

  v578 = v21;
  v572 = v22;
  v579 = v23;
  v573 = v24;
  v85.i64[0] = -1;
  v85.i64[1] = -1;
  v86.i64[0] = 0xF000F000F000FLL;
  v86.i64[1] = 0xF000F000F000FLL;
  v87 = vsubq_s16(vshlq_s16(v85, vsubq_s16(v86, v82)), v77);
  v88 = vcgtq_s16(v81, v83);
  v89.i64[0] = 0x8000800080008;
  v89.i64[1] = 0x8000800080008;
  v90 = vandq_s8(v88, v89);
  v89.i64[0] = 0x3000300030003;
  v89.i64[1] = 0x3000300030003;
  v569 = vmaxq_s16(vminq_s16(vsubq_s16(v84, v47), v89), 0);
  v570 = vmaxq_s16(vminq_s16(vsubq_s16(v84, v69), v89), 0);
  v574 = vmaxq_s16(vminq_s16(vsubq_s16(v84, v58), v89), 0);
  v576 = vmaxq_s16(vminq_s16(vsubq_s16(v84, v80), v89), 0);
  v91.i64[0] = 0x4000400040004;
  v91.i64[1] = 0x4000400040004;
  v92 = vbicq_s8(v91, vceqq_s16(vaddq_s16(v576, v570), vnegq_s16(vaddq_s16(v569, v574))));
  v93 = vorrq_s8(vandq_s8(vceqzq_s16(v84), v89), v90);
  v94 = vshlq_n_s16(vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080)), 6uLL);
  v588 = v30;
  v589 = v28;
  v590 = v29;
  v95 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080)), 6uLL), 6uLL);
  v585 = v33;
  v96 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080)), 6uLL), 6uLL);
  v97 = vshrq_n_s16(v94, 6uLL);
  v98 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080)), 6uLL), 6uLL);
  v99 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v31, vqtbl1q_s8(v31, xmmword_29D2F1080)), 6uLL), 6uLL);
  v100 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v32, vqtbl1q_s8(v32, xmmword_29D2F1080)), 6uLL), 6uLL);
  v101 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v33, vqtbl1q_s8(v33, xmmword_29D2F1080)), 6uLL), 6uLL);
  v568 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080)), 6uLL), 6uLL);
  v102 = vqtbl1q_s8(vmaxq_s16(v95, v568), xmmword_29D2F1090);
  v103 = vqtbl1q_s8(vminq_s16(v95, v568), xmmword_29D2F1090);
  v104 = vpmaxq_s16(v102, v102);
  v105 = vpminq_s16(v103, v103);
  v106 = vpmaxq_s16(v104, v104);
  v107 = vpminq_s16(v105, v105);
  v108 = vmaxq_s16(v106, v40);
  v109 = vminq_s16(v107, v42);
  v110 = vzip1q_s16(v106, v107);
  v111 = vbicq_s8(vsubq_s16(v45, vclsq_s16(v110)), vceqzq_s16(v110));
  v112 = vpmaxq_s16(v111, v111);
  v113 = vqtbl1q_s8(vmaxq_s16(v96, v97), xmmword_29D2F1090);
  v114 = vqtbl1q_s8(vminq_s16(v96, v97), xmmword_29D2F1090);
  v115 = vpmaxq_s16(v113, v113);
  v116 = vpminq_s16(v114, v114);
  v117 = vpmaxq_s16(v115, v115);
  v118 = vpminq_s16(v116, v116);
  v119 = vmaxq_s16(v108, v117);
  v120 = vminq_s16(v109, v118);
  v121 = vzip1q_s16(v117, v118);
  v122 = vbicq_s8(vsubq_s16(v45, vclsq_s16(v121)), vceqzq_s16(v121));
  v123 = vpmaxq_s16(v122, v122);
  v124 = vqtbl1q_s8(vmaxq_s16(v98, v99), xmmword_29D2F1090);
  v125 = vqtbl1q_s8(vminq_s16(v98, v99), xmmword_29D2F1090);
  v126 = vpmaxq_s16(v124, v124);
  v127 = vpminq_s16(v125, v125);
  v128 = vpmaxq_s16(v126, v126);
  v129 = vpminq_s16(v127, v127);
  v130 = vmaxq_s16(v119, v128);
  v131 = vminq_s16(v120, v129);
  v132 = vzip1q_s16(v128, v129);
  v133 = vbicq_s8(vsubq_s16(v45, vclsq_s16(v132)), vceqzq_s16(v132));
  v134 = vpmaxq_s16(v133, v133);
  v135 = vqtbl1q_s8(vmaxq_s16(v100, v101), xmmword_29D2F1090);
  v136 = vqtbl1q_s8(vminq_s16(v100, v101), xmmword_29D2F1090);
  v137 = vpmaxq_s16(v135, v135);
  v138 = vpminq_s16(v136, v136);
  v139 = vpmaxq_s16(v137, v137);
  v140 = vpminq_s16(v138, v138);
  v141 = vmaxq_s16(v130, v139);
  v582 = v31;
  v584 = v32;
  v142 = vminq_s16(v131, v140);
  v143 = vzip1q_s16(v139, v140);
  v144 = vbicq_s8(vsubq_s16(v45, vclsq_s16(v143)), vceqzq_s16(v143));
  v145 = vpmaxq_s16(v144, v144);
  v146 = vmaxq_s16(vmaxq_s16(v112, v123), vmaxq_s16(v134, v145));
  v147 = vclzq_s16(vsubq_s16(v141, v142));
  v148 = vsubq_s16(v45, v147);
  v149 = vcgtq_s16(v146, v148);
  v150 = vminq_s16(v148, v146);
  v146.i64[0] = 0x18001800180018;
  v146.i64[1] = 0x18001800180018;
  v151 = vbslq_s8(v149, v146, v45);
  v152 = vmaxq_s16(vminq_s16(vsubq_s16(v150, v112), v89), 0);
  v153 = vmaxq_s16(vminq_s16(vsubq_s16(v150, v123), v89), 0);
  v154 = vmaxq_s16(vminq_s16(vsubq_s16(v150, v134), v89), 0);
  v155 = vmaxq_s16(vminq_s16(vsubq_s16(v150, v145), v89), 0);
  v156 = vsubq_s16(v150, v152);
  v157 = vsubq_s16(v150, v153);
  v158 = vsubq_s16(v150, v154);
  v159 = vaddq_s16(v152, v153);
  v160 = vsubq_s16(v150, v155);
  v161.i64[0] = 0x4000400040004;
  v161.i64[1] = 0x4000400040004;
  v162 = vbicq_s8(v161, vceqq_s16(vaddq_s16(v155, v154), vnegq_s16(v159)));
  v154.i64[0] = 0x7000700070007;
  v154.i64[1] = 0x7000700070007;
  v163 = vandq_s8(v87, v88);
  v164 = vorrq_s8(v93, v92);
  v165 = vaddq_s16(vandq_s8(v84, v88), vaddq_s16(v92, v92));
  v166 = vsubq_s16(v84, v569);
  v167 = vsubq_s16(v84, v574);
  v168 = vsubq_s16(v84, v570);
  v169 = vsubq_s16(v84, v576);
  v170 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(v165, v166, v154), vshlq_n_s16(vaddq_s16(vaddq_s16(v168, v167), v169), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v150, vceqzq_s16((*&v151 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v162, v162)), v156, v154), vshlq_n_s16(vaddq_s16(vaddq_s16(v158, v157), v160), 3uLL))), 0);
  v171 = vaddvq_s16(v170);
  v173 = a5 < 4 || a6 < 2;
  if (v171)
  {
    v174.i64[0] = 0x3000300030003;
    v174.i64[1] = 0x3000300030003;
    v175 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v150), v174), v151), v162);
    v176.i64[0] = 0xF000F000F000FLL;
    v176.i64[1] = 0xF000F000F000FLL;
    v177 = vsubq_s16(v176, v147);
    v178.i64[0] = -1;
    v178.i64[1] = -1;
    v179 = vandq_s8(vsubq_s16(vshlq_s16(v178, v177), v142), v149);
    v25 = vbslq_s8(v170, vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080)), v25);
    v575 = vbslq_s8(v170, v95, v26);
    v577 = vbslq_s8(v170, v568, v27);
    v589 = vbslq_s8(v170, v96, v589);
    v590 = vbslq_s8(v170, v97, v590);
    v588 = vbslq_s8(v170, v98, v588);
    v180 = vbslq_s8(v170, v100, v584);
    v181 = vbslq_s8(v170, v101, v585);
    v166 = vbslq_s8(v170, v156, v166);
    v167 = vbslq_s8(v170, v157, v167);
    v168 = vbslq_s8(v170, v158, v168);
    v169 = vbslq_s8(v170, v160, v169);
    v163 = vbslq_s8(v170, v179, v163);
    v84 = vbslq_s8(v170, v150, v84);
    v164 = vbslq_s8(v170, v175, v164);
    v182 = vbslq_s8(v170, v99, v582);
    if (v173)
    {
LABEL_10:
      v183 = v588;
      v184 = v589;
      v185 = v590;
      goto LABEL_16;
    }
  }

  else
  {
    v575 = v26;
    v577 = v27;
    v180 = v584;
    v181 = v585;
    v182 = v582;
    if (v173)
    {
      goto LABEL_10;
    }
  }

  v571 = v163;
  v583 = v182;
  v586 = v181;
  v189 = vsubq_s16(*v580, vqtbl2q_s8(*v580, xmmword_29D2F0F80));
  v190 = vsubq_s16(*&v580[16], vqtbl2q_s8(*v580, xmmword_29D2F1030));
  v591.val[0] = v587;
  v591.val[1] = v581;
  v591.val[1].i32[3] = *&v580[28];
  v191 = vsubq_s16(v587, vqtbl2q_s8(v591, xmmword_29D2F0FA0));
  v592.val[0] = v578;
  v592.val[1] = v572;
  v592.val[1].i32[3] = *&v580[28];
  v192 = vsubq_s16(v581, vqtbl2q_s8(v591, xmmword_29D2F1040));
  v193 = vsubq_s16(v578, vqtbl2q_s8(v592, xmmword_29D2F1050));
  v591.val[0] = vsubq_s16(v572, vqtbl2q_s8(v592, xmmword_29D2F0F80));
  v593.val[0] = v579;
  v593.val[1] = v573;
  v593.val[1].i32[3] = *&v580[28];
  v592.val[0] = v190;
  v592.val[0].i32[3] = v189.i32[0];
  v189.i32[0] = v190.i32[3];
  v194 = vshlq_n_s16(v592.val[0], 6uLL);
  v592.val[0] = vshlq_n_s16(v591.val[0], 6uLL);
  v195 = vshlq_n_s16(vsubq_s16(v573, vqtbl2q_s8(v593, xmmword_29D2F0F80)), 6uLL);
  v196 = vshrq_n_s16(vshlq_n_s16(v189, 6uLL), 6uLL);
  v197 = vshrq_n_s16(v194, 6uLL);
  v198 = vshrq_n_s16(vshlq_n_s16(v191, 6uLL), 6uLL);
  v199 = vshrq_n_s16(vshlq_n_s16(v192, 6uLL), 6uLL);
  v200 = vshrq_n_s16(vshlq_n_s16(v193, 6uLL), 6uLL);
  v201 = v84;
  v202 = vshrq_n_s16(v592.val[0], 6uLL);
  v203 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v579, vqtbl2q_s8(v593, xmmword_29D2F1060)), 6uLL), 6uLL);
  v204 = vshrq_n_s16(v195, 6uLL);
  v205 = vqtbl1q_s8(vmaxq_s16(v196, v197), xmmword_29D2F1090);
  v206 = vqtbl1q_s8(vminq_s16(v196, v197), xmmword_29D2F1090);
  v207 = vpmaxq_s16(v205, v205);
  v208 = vpminq_s16(v206, v206);
  v209 = vpmaxq_s16(v207, v207);
  v210 = vpminq_s16(v208, v208);
  v194.i64[0] = 0x8000800080008000;
  v194.i64[1] = 0x8000800080008000;
  v211 = vmaxq_s16(v209, v194);
  v191.i64[0] = 0x8000800080008000;
  v191.i64[1] = 0x8000800080008000;
  v212 = vminq_s16(v210, v191);
  v213 = vzip1q_s16(v209, v210);
  v209.i64[0] = 0x10001000100010;
  v209.i64[1] = 0x10001000100010;
  v214 = vbicq_s8(vsubq_s16(v209, vclsq_s16(v213)), vceqzq_s16(v213));
  v592.val[0] = vpmaxq_s16(v214, v214);
  v215 = vqtbl1q_s8(vmaxq_s16(v198, v199), xmmword_29D2F1090);
  v216 = vqtbl1q_s8(vminq_s16(v198, v199), xmmword_29D2F1090);
  v217 = vpmaxq_s16(v215, v215);
  v218 = vpminq_s16(v216, v216);
  v219 = vpmaxq_s16(v217, v217);
  v220 = vpminq_s16(v218, v218);
  v221 = vmaxq_s16(v211, v219);
  v222 = vminq_s16(v212, v220);
  v223 = vzip1q_s16(v219, v220);
  v224 = vbicq_s8(vsubq_s16(v209, vclsq_s16(v223)), vceqzq_s16(v223));
  v592.val[1] = vpmaxq_s16(v224, v224);
  v225 = vqtbl1q_s8(vmaxq_s16(v200, v202), xmmword_29D2F1090);
  v226 = vqtbl1q_s8(vminq_s16(v200, v202), xmmword_29D2F1090);
  v227 = vpmaxq_s16(v225, v225);
  v228 = vpminq_s16(v226, v226);
  v229 = vpmaxq_s16(v227, v227);
  v230 = vpminq_s16(v228, v228);
  v231 = vmaxq_s16(v221, v229);
  v232 = vminq_s16(v222, v230);
  v233 = vzip1q_s16(v229, v230);
  v234 = vbicq_s8(vsubq_s16(v209, vclsq_s16(v233)), vceqzq_s16(v233));
  v593.val[0] = vpmaxq_s16(v234, v234);
  v235 = vqtbl1q_s8(vmaxq_s16(v203, v204), xmmword_29D2F1090);
  v236 = vqtbl1q_s8(vminq_s16(v203, v204), xmmword_29D2F1090);
  v237 = v201;
  v238 = vpmaxq_s16(v235, v235);
  v239 = vpminq_s16(v236, v236);
  v240 = vpmaxq_s16(v238, v238);
  v241 = vpminq_s16(v239, v239);
  v242 = vmaxq_s16(v231, v240);
  v243 = vminq_s16(v232, v241);
  v244 = vzip1q_s16(v240, v241);
  v245 = vbicq_s8(vsubq_s16(v209, vclsq_s16(v244)), vceqzq_s16(v244));
  v246 = vpmaxq_s16(v245, v245);
  v247 = vmaxq_s16(vmaxq_s16(v592.val[0], v592.val[1]), vmaxq_s16(v593.val[0], v246));
  v248 = vclzq_s16(vsubq_s16(v242, v243));
  v249 = vsubq_s16(v209, v248);
  v250 = vcgtq_s16(v247, v249);
  v251 = vminq_s16(v249, v247);
  v252.i64[0] = 0x3000300030003;
  v252.i64[1] = 0x3000300030003;
  v253 = vmaxq_s16(vminq_s16(vsubq_s16(v251, v592.val[0]), v252), 0);
  v254 = v169;
  v255 = vmaxq_s16(vminq_s16(vsubq_s16(v251, v592.val[1]), v252), 0);
  v256 = vmaxq_s16(vminq_s16(vsubq_s16(v251, v593.val[0]), v252), 0);
  v257 = vmaxq_s16(vminq_s16(vsubq_s16(v251, v246), v252), 0);
  v258 = vsubq_s16(v251, v253);
  v259 = vsubq_s16(v251, v255);
  v260 = vsubq_s16(v251, v256);
  v261 = vsubq_s16(v251, v257);
  v591.val[1].i64[0] = 0x4000400040004;
  v591.val[1].i64[1] = 0x4000400040004;
  v262 = vbicq_s8(v591.val[1], vceqq_s16(vaddq_s16(v257, v256), vnegq_s16(vaddq_s16(v253, v255))));
  v255.i64[0] = 0x7000700070007;
  v255.i64[1] = 0x7000700070007;
  v263 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v251, v250), vaddq_s16(v262, v262)), v258, v255), vshlq_n_s16(vaddq_s16(vaddq_s16(v260, v259), v261), 3uLL));
  v253.i64[0] = 0x8000800080008;
  v253.i64[1] = 0x8000800080008;
  v264 = vandq_s8(v164, v252);
  v265.i64[0] = 0x2000200020002;
  v265.i64[1] = 0x2000200020002;
  v266 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v237, vceqzq_s16(vandq_s8(v164, v253))), vandq_s8(vaddq_s16(v164, v164), v253)), vandq_s8(vceqq_s16(v264, v265), v209)), v166, v255);
  v169 = v254;
  v267 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v266, vshlq_n_s16(vaddq_s16(vaddq_s16(v168, v167), v254), 3uLL)), v263), 0);
  if (vaddvq_s16(v267))
  {
    v268 = vandq_s8(vceqzq_s16(v251), v265);
    v269.i64[0] = 0x9000900090009;
    v269.i64[1] = 0x9000900090009;
    v270 = vorrq_s8(vorrq_s8(v268, vsubq_s16(vandq_s8(v250, v269), vmvnq_s8(v250))), v262);
    v271.i64[0] = 0xF000F000F000FLL;
    v271.i64[1] = 0xF000F000F000FLL;
    v272 = vsubq_s16(v271, v248);
    v271.i64[0] = -1;
    v271.i64[1] = -1;
    v25.i32[0] = vbslq_s8(v267, vextq_s8(*&v580[16], *&v580[16], 0xCuLL), v25).u32[0];
    v575 = vbslq_s8(v267, v196, v575);
    v577 = vbslq_s8(v267, v197, v577);
    v184 = vbslq_s8(v267, v198, v589);
    v185 = vbslq_s8(v267, v199, v590);
    v183 = vbslq_s8(v267, v200, v588);
    v182 = vbslq_s8(v267, v202, v583);
    v180 = vbslq_s8(v267, v203, v180);
    v181 = vbslq_s8(v267, v204, v586);
    v166 = vbslq_s8(v267, v258, v166);
    v167 = vbslq_s8(v267, v259, v167);
    v168 = vbslq_s8(v267, v260, v168);
    v169 = vbslq_s8(v267, v261, v169);
    v163 = vbslq_s8(v267, vandq_s8(vsubq_s16(vshlq_s16(v271, v272), v243), v250), v571);
    v84 = vbslq_s8(v267, v251, v237);
    v164 = vbslq_s8(v267, v270, v164);
  }

  else
  {
    v181 = v586;
    v182 = v583;
    v183 = v588;
    v184 = v589;
    v185 = v590;
    v163 = v571;
    v84 = v237;
  }

LABEL_16:
  v273.i64[0] = 0x8000800080008;
  v273.i64[1] = 0x8000800080008;
  v274 = vandq_s8(v164, v273);
  v275.i64[0] = 0x3000300030003;
  v275.i64[1] = 0x3000300030003;
  v276.i64[0] = 0x2000200020002;
  v276.i64[1] = 0x2000200020002;
  v277 = vceqq_s16(vandq_s8(v164, v275), v276);
  v276.i64[0] = 0x10001000100010;
  v276.i64[1] = 0x10001000100010;
  v278 = vandq_s8(v277, v276);
  v276.i64[0] = 0x7000700070007;
  v276.i64[1] = 0x7000700070007;
  v279 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v84, vceqzq_s16(v274)), vandq_s8(vaddq_s16(v164, v164), v273)), v278), v166, v276), vshlq_n_s16(vaddq_s16(vaddq_s16(v168, v167), v169), 3uLL));
  v280 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v281 = 8 * (a1 & 7);
  if ((vpaddq_s16(v279, v279).i16[0] + 45) > 0x27F)
  {
    if (v281)
    {
      v283 = *v280 & ~(-1 << v281);
    }

    else
    {
      v283 = 0;
    }

    v487.i64[0] = 0xA0000000ALL;
    v487.i64[1] = 0xA0000000ALL;
    v488 = vpaddq_s32(v487, v487);
    v489.i64[0] = v488.u32[0];
    v489.i64[1] = v488.u32[1];
    v490 = v489;
    v489.i64[0] = v488.u32[2];
    v489.i64[1] = v488.u32[3];
    v491 = vzip1q_s64(0, v490);
    v492 = vzip1q_s64(0, v489);
    v493 = vpaddq_s64(v490, v489);
    v494 = v493.i64[1];
    v495 = v493.i64[0];
    v496 = vpaddq_s32(vshlq_u32(vmovl_u16((*v580 & 0x3FF03FF03FF03FFLL)), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16((*v580 & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL))), xmmword_29D2F1480));
    v489.i64[0] = v496.u32[0];
    v489.i64[1] = v496.u32[1];
    v497 = v489;
    v489.i64[0] = v496.u32[2];
    v489.i64[1] = v496.u32[3];
    v498 = vpaddq_s64(vshlq_u64(v497, v491), vshlq_u64(v489, v492));
    v499 = v493.i64[0] + v281;
    v500 = (v498.i64[0] << v281) | v283;
    if (v493.i64[0] + v281 >= 0x40)
    {
      *v280 = v500;
      v500 = v498.i64[0] >> (-8 * (a1 & 7u));
      if (!v281)
      {
        v500 = 0;
      }
    }

    v501 = v498.u64[1];
    v502.i64[0] = 0xFC00FC00FC00FC00;
    v502.i64[1] = 0xFC00FC00FC00FC00;
    v503 = v500 | (v501 << v499);
    if ((v499 & 0x3F) + v493.i64[1] >= 0x40)
    {
      *(v280 + ((v499 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v503;
      v504 = v501 >> -(v499 & 0x3F);
      if ((v499 & 0x3F) != 0)
      {
        v503 = v504;
      }

      else
      {
        v503 = 0;
      }
    }

    v505 = v499 + v493.i64[1];
    v506 = vandq_s8(v502, *&v580[16]);
    v507 = vpaddq_s32(vshlq_u32(vmovl_u16(*v506.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v506), xmmword_29D2F1480));
    v508.i64[0] = v507.u32[0];
    v508.i64[1] = v507.u32[1];
    v509 = v508;
    v508.i64[0] = v507.u32[2];
    v508.i64[1] = v507.u32[3];
    v510 = vpaddq_s64(vshlq_u64(v509, v491), vshlq_u64(v508, v492));
    v511 = (v499 + v493.i64[1]) & 0x3F;
    v512 = (v510.i64[0] << (v499 + v493.i8[8])) | v503;
    if ((v493.i64[0] + v511) >= 0x40)
    {
      *(v280 + ((v505 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v512;
      v512 = v510.i64[0] >> -v511;
      if (!v511)
      {
        v512 = 0;
      }
    }

    v513 = v493.i64[0] + v505;
    v514 = v512 | (v510.i64[1] << v513);
    if ((v513 & 0x3F) + v493.i64[1] >= 0x40)
    {
      *(v280 + ((v513 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v514;
      v514 = v510.i64[1] >> -(v513 & 0x3F);
      if ((v513 & 0x3F) == 0)
      {
        v514 = 0;
      }
    }

    v515 = v513 + v493.i64[1];
    v516 = vandq_s8(v502, v587);
    v517 = vpaddq_s32(vshlq_u32(vmovl_u16(*v516.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v516), xmmword_29D2F1480));
    v518.i64[0] = v517.u32[0];
    v518.i64[1] = v517.u32[1];
    v519 = v518;
    v518.i64[0] = v517.u32[2];
    v518.i64[1] = v517.u32[3];
    v520 = vpaddq_s64(vshlq_u64(v519, v491), vshlq_u64(v518, v492));
    v521 = (v520.i64[0] << v515) | v514;
    if (v493.i64[0] + (v515 & 0x3F) >= 0x40)
    {
      *(v280 + ((v515 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
      v521 = v520.i64[0] >> -(v515 & 0x3F);
      if ((v515 & 0x3F) == 0)
      {
        v521 = 0;
      }
    }

    v522 = v493.i64[0] + v515;
    v523 = v521 | (v520.i64[1] << v522);
    if ((v522 & 0x3F) + v493.i64[1] >= 0x40)
    {
      *(v280 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v523;
      v523 = v520.i64[1] >> -(v522 & 0x3F);
      if ((v522 & 0x3F) == 0)
      {
        v523 = 0;
      }
    }

    v524 = v522 + v493.i64[1];
    v525 = vandq_s8(v502, v581);
    v526 = vpaddq_s32(vshlq_u32(vmovl_u16(*v525.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v525), xmmword_29D2F1480));
    v527.i64[0] = v526.u32[0];
    v527.i64[1] = v526.u32[1];
    v528 = v527;
    v527.i64[0] = v526.u32[2];
    v527.i64[1] = v526.u32[3];
    v529 = vpaddq_s64(vshlq_u64(v528, v491), vshlq_u64(v527, v492));
    v530 = (v529.i64[0] << v524) | v523;
    if (v493.i64[0] + (v524 & 0x3F) >= 0x40)
    {
      *(v280 + ((v524 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v530;
      v530 = v529.i64[0] >> -(v524 & 0x3F);
      if ((v524 & 0x3F) == 0)
      {
        v530 = 0;
      }
    }

    v531 = v493.i64[0] + v524;
    v532 = v530 | (v529.i64[1] << v531);
    if ((v531 & 0x3F) + v493.i64[1] >= 0x40)
    {
      *(v280 + ((v531 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v532;
      v532 = v529.i64[1] >> -(v531 & 0x3F);
      if ((v531 & 0x3F) == 0)
      {
        v532 = 0;
      }
    }

    v533 = v531 + v493.i64[1];
    v534 = vandq_s8(v502, v578);
    v535 = vpaddq_s32(vshlq_u32(vmovl_u16(*v534.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v534), xmmword_29D2F1480));
    v536.i64[0] = v535.u32[0];
    v536.i64[1] = v535.u32[1];
    v537 = v536;
    v536.i64[0] = v535.u32[2];
    v536.i64[1] = v535.u32[3];
    v538 = vpaddq_s64(vshlq_u64(v537, v491), vshlq_u64(v536, v492));
    v539 = (v538.i64[0] << v533) | v532;
    if (v493.i64[0] + (v533 & 0x3F) >= 0x40)
    {
      *(v280 + ((v533 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v539;
      v539 = v538.i64[0] >> -(v533 & 0x3F);
      if ((v533 & 0x3F) == 0)
      {
        v539 = 0;
      }
    }

    v540 = v493.i64[0] + v533;
    v541 = v539 | (v538.i64[1] << v540);
    if ((v540 & 0x3F) + v493.i64[1] >= 0x40)
    {
      *(v280 + ((v540 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v541;
      v541 = v538.i64[1] >> -(v540 & 0x3F);
      if ((v540 & 0x3F) == 0)
      {
        v541 = 0;
      }
    }

    v542 = v540 + v493.i64[1];
    v543 = vandq_s8(v502, v572);
    v544 = vpaddq_s32(vshlq_u32(vmovl_u16(*v543.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v543), xmmword_29D2F1480));
    v545.i64[0] = v544.u32[0];
    v545.i64[1] = v544.u32[1];
    v546 = v545;
    v545.i64[0] = v544.u32[2];
    v545.i64[1] = v544.u32[3];
    v547 = vpaddq_s64(vshlq_u64(v546, v491), vshlq_u64(v545, v492));
    v548 = (v547.i64[0] << v542) | v541;
    if (v493.i64[0] + (v542 & 0x3F) >= 0x40)
    {
      *(v280 + ((v542 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v548;
      v548 = v547.i64[0] >> -(v542 & 0x3F);
      if ((v542 & 0x3F) == 0)
      {
        v548 = 0;
      }
    }

    v549 = v493.i64[0] + v542;
    v550 = v548 | (v547.i64[1] << v549);
    if ((v549 & 0x3F) + v493.i64[1] >= 0x40)
    {
      *(v280 + ((v549 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v550;
      v550 = v547.i64[1] >> -(v549 & 0x3F);
      if ((v549 & 0x3F) == 0)
      {
        v550 = 0;
      }
    }

    v551 = v549 + v493.i64[1];
    v552 = vandq_s8(v502, v579);
    v553 = vpaddq_s32(vshlq_u32(vmovl_u16(*v552.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v552), xmmword_29D2F1480));
    v554.i64[0] = v553.u32[0];
    v554.i64[1] = v553.u32[1];
    v555 = v554;
    v554.i64[0] = v553.u32[2];
    v554.i64[1] = v553.u32[3];
    v556 = vpaddq_s64(vshlq_u64(v555, v491), vshlq_u64(v554, v492));
    v557 = (v556.i64[0] << v551) | v550;
    if (v493.i64[0] + (v551 & 0x3F) >= 0x40)
    {
      *(v280 + ((v551 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v557;
      v557 = v556.i64[0] >> -(v551 & 0x3F);
      if ((v551 & 0x3F) == 0)
      {
        v557 = 0;
      }
    }

    v558 = v493.i64[0] + v551;
    v559 = v557 | (v556.i64[1] << v558);
    if ((v558 & 0x3F) + v493.i64[1] >= 0x40)
    {
      *(v280 + ((v558 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v559;
      v559 = v556.i64[1] >> -(v558 & 0x3F);
      if ((v558 & 0x3F) == 0)
      {
        v559 = 0;
      }
    }

    v560 = v558 + v493.i64[1];
    v561 = vandq_s8(v502, v573);
    v562 = vpaddq_s32(vshlq_u32(vmovl_u16(*v561.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v561), xmmword_29D2F1480));
    v563.i64[0] = v562.u32[0];
    v563.i64[1] = v562.u32[1];
    v564 = v563;
    v563.i64[0] = v562.u32[2];
    v563.i64[1] = v562.u32[3];
    v565 = vpaddq_s64(vshlq_u64(v564, v491), vshlq_u64(v563, v492));
    v566 = (v565.i64[0] << v560) | v559;
    if (v495 + (v560 & 0x3F) >= 0x40)
    {
      *(v280 + ((v560 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v566;
      v566 = v565.i64[0] >> -(v560 & 0x3F);
      if ((v560 & 0x3F) == 0)
      {
        v566 = 0;
      }
    }

    v567 = v495 + v560;
    if ((v567 & 0x3F) + v494 >= 0x40)
    {
      *(v280 + ((v567 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v566 | (v565.i64[1] << (v567 & 0x3F));
    }

    v187 = 79;
    result = 80;
  }

  else
  {
    if (v281)
    {
      v282 = *v280 & ~(-1 << v281);
    }

    else
    {
      v282 = 0;
    }

    *a2 = 0;
    v284 = ((v84.i16[0] << 10) + 15360) & 0x3C00;
    if (!v84.i16[0])
    {
      v284 = 0;
    }

    if (v84.i16[1])
    {
      v285 = ((v84.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v285 = 0;
    }

    v286 = v284 | v285 | v164.i8[0] & 0x1F | (32 * (v164.i8[2] & 0x1Fu));
    v287 = v25.i16[0] & 0x3FF | ((v25.i16[1] & 0x3FF) << 10);
    v288 = (v286 << v281) | v282;
    if (v281 >= 0x2E)
    {
      *v280 = v288;
      v288 = v286 >> (-8 * (a1 & 7u));
    }

    v289 = (v281 + 18) & 0x3A;
    v290 = v288 | (v287 << v289);
    if (v289 >= 0x2C)
    {
      *(v280 + (((v281 + 18) >> 3) & 8)) = v290;
      v290 = v287 >> -v289;
    }

    v291 = v281 + 38;
    v292 = vsubq_s16(v84, v166);
    v293 = vsubq_s16(v84, v167);
    v294 = vsubq_s16(v84, v168);
    v295 = vsubq_s16(v84, v169);
    *v292.i8 = vqmovn_u16(v292);
    *v293.i8 = vqmovn_u16(v293);
    *v294.i8 = vqmovn_u16(v294);
    *v295.i8 = vqmovn_u16(v295);
    v292.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v292, v293), vzip1q_s8(v294, v295)), vzip1q_s16(vtrn2q_s8(v292, v293), vtrn2q_s8(v294, v295))).u64[0];
    v294.i64[0] = 0x202020202020202;
    v294.i64[1] = 0x202020202020202;
    v296 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v164.i8, 0x4000400040004)))), v294);
    v294.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v294.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v295.i64[0] = -1;
    v295.i64[1] = -1;
    v297 = vandq_s8(vshlq_u8(v295, vorrq_s8(v296, v294)), v292.u64[0]);
    v298 = vmovl_u8(*v296.i8);
    v299 = vpaddq_s16(vshlq_u16(vmovl_u8(*v297.i8), vtrn1q_s16(0, v298)), vmovl_high_u8(v297));
    v300 = vpaddq_s16(v298, vmovl_high_u8(v296));
    v301 = vmovl_u16(*v300.i8);
    v302 = vmovl_high_u16(v300);
    v303 = vpaddq_s32(vshlq_u32(vmovl_u16(*v299.i8), vtrn1q_s32(0, v301)), vshlq_u32(vmovl_high_u16(v299), vtrn1q_s32(0, v302)));
    v304 = vpaddq_s32(v301, v302);
    v305.i64[0] = v303.u32[0];
    v305.i64[1] = v303.u32[1];
    v306 = v305;
    v305.i64[0] = v303.u32[2];
    v305.i64[1] = v303.u32[3];
    v307 = v305;
    v305.i64[0] = v304.u32[0];
    v305.i64[1] = v304.u32[1];
    v308 = v305;
    v305.i64[0] = v304.u32[2];
    v305.i64[1] = v304.u32[3];
    v309 = vpaddq_s64(vshlq_u64(v306, vzip1q_s64(0, v308)), vshlq_u64(v307, vzip1q_s64(0, v305)));
    v310 = vpaddq_s64(v308, v305);
    v311 = (v281 + 38) & 0x3E;
    v312 = (v309.i64[0] << v311) | v290;
    if ((v310.i64[0] + v311) >= 0x40)
    {
      *(v280 + ((v291 >> 3) & 8)) = v312;
      v312 = v309.i64[0] >> -v311;
    }

    v313 = vceqq_s16(v84, v166);
    v314 = v310.i64[0] + v291;
    v315 = v312 | (v309.i64[1] << v314);
    if ((v314 & 0x3F) + v310.i64[1] >= 0x40)
    {
      *(v280 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v309.i64[1] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vandq_s8(v163, v313);
    v317 = v314 + v310.i64[1];
    v318.i64[0] = -1;
    v318.i64[1] = -1;
    v319 = vandq_s8(vextq_s8(vtstq_s16(v274, v274), 0, 0xCuLL), v84);
    v320.i64[0] = 0xF000F000F000FLL;
    v320.i64[1] = 0xF000F000F000FLL;
    v321 = vandq_s8(vshlq_u16(v318, vaddq_s16(v319, v320)), v163);
    v322 = vmovl_u16(*v319.i8);
    v323 = vpaddq_s32(vshlq_u32(vmovl_u16(*v321.i8), vtrn1q_s32(0, v322)), vmovl_high_u16(v321));
    v324 = vpaddq_s32(v322, vmovl_high_u16(v319));
    v325.i64[0] = v323.u32[0];
    v325.i64[1] = v323.u32[1];
    v326 = v325;
    v325.i64[0] = v323.u32[2];
    v325.i64[1] = v323.u32[3];
    v327 = v325;
    v325.i64[0] = v324.u32[0];
    v325.i64[1] = v324.u32[1];
    v328 = v325;
    v325.i64[0] = v324.u32[2];
    v325.i64[1] = v324.u32[3];
    v329 = vpaddq_s64(vshlq_u64(v326, vzip1q_s64(0, v328)), vshlq_u64(v327, vzip1q_s64(0, v325)));
    v330 = vpaddq_s64(v328, v325);
    v331 = (v329.i64[0] << v317) | v315;
    if (v330.i64[0] + (v317 & 0x3F) >= 0x40)
    {
      *(v280 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
      v331 = v329.i64[0] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v331 = 0;
      }
    }

    v332 = vaddq_s16(v316, v575);
    v333 = v330.i64[0] + v317;
    v334 = v331 | (v329.i64[1] << v333);
    if ((v333 & 0x3F) + v330.i64[1] >= 0x40)
    {
      *(v280 + ((v333 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
      v334 = v329.i64[1] >> -(v333 & 0x3F);
      if ((v333 & 0x3F) == 0)
      {
        v334 = 0;
      }
    }

    v335 = v333 + v330.i64[1];
    v336 = vextq_s8(0, v166, 0xCuLL);
    v337.i64[0] = 0xF000F000F000FLL;
    v337.i64[1] = 0xF000F000F000FLL;
    v338.i64[0] = -1;
    v338.i64[1] = -1;
    v339 = vandq_s8(vshlq_u16(v338, vaddq_s16(v336, v337)), v332);
    v340 = vmovl_u16(*v336.i8);
    v341 = vmovl_high_u16(v336);
    v342 = vpaddq_s32(vshlq_u32(vmovl_u16(*v339.i8), vtrn1q_s32(0, v340)), vshlq_u32(vmovl_high_u16(v339), vtrn1q_s32(0, v341)));
    v343 = vpaddq_s32(v340, v341);
    v344.i64[0] = v342.u32[0];
    v344.i64[1] = v342.u32[1];
    v345 = v344;
    v344.i64[0] = v342.u32[2];
    v344.i64[1] = v342.u32[3];
    v346 = v344;
    v344.i64[0] = v343.u32[0];
    v344.i64[1] = v343.u32[1];
    v347 = v344;
    v344.i64[0] = v343.u32[2];
    v344.i64[1] = v343.u32[3];
    v348 = vpaddq_s64(vshlq_u64(v345, vzip1q_s64(0, v347)), vshlq_u64(v346, vzip1q_s64(0, v344)));
    v349 = vpaddq_s64(v347, v344);
    v350 = (v348.i64[0] << v335) | v334;
    if (v349.i64[0] + (v335 & 0x3F) >= 0x40)
    {
      *(v280 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
      v350 = v348.i64[0] >> -(v335 & 0x3F);
      if ((v335 & 0x3F) == 0)
      {
        v350 = 0;
      }
    }

    v351 = vceqq_s16(v84, v167);
    v352 = vaddq_s16(v577, v316);
    v353 = v349.i64[0] + v335;
    v354 = v350 | (v348.i64[1] << v353);
    if ((v353 & 0x3F) + v349.i64[1] >= 0x40)
    {
      *(v280 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v348.i64[1] >> -(v353 & 0x3F);
      if ((v353 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = vandq_s8(v163, v351);
    v356 = v353 + v349.i64[1];
    v357.i64[0] = 0xF000F000F000FLL;
    v357.i64[1] = 0xF000F000F000FLL;
    v358.i64[0] = -1;
    v358.i64[1] = -1;
    v359 = vandq_s8(vshlq_u16(v358, vaddq_s16(v166, v357)), v352);
    v360 = vmovl_u16(*v166.i8);
    v361 = vmovl_high_u16(v166);
    v362 = vpaddq_s32(vshlq_u32(vmovl_u16(*v359.i8), vtrn1q_s32(0, v360)), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v361)));
    v363 = vpaddq_s32(v360, v361);
    v364.i64[0] = v362.u32[0];
    v364.i64[1] = v362.u32[1];
    v365 = v364;
    v364.i64[0] = v362.u32[2];
    v364.i64[1] = v362.u32[3];
    v366 = v364;
    v364.i64[0] = v363.u32[0];
    v364.i64[1] = v363.u32[1];
    v367 = v364;
    v364.i64[0] = v363.u32[2];
    v364.i64[1] = v363.u32[3];
    v368 = vpaddq_s64(vshlq_u64(v365, vzip1q_s64(0, v367)), vshlq_u64(v366, vzip1q_s64(0, v364)));
    v369 = vpaddq_s64(v367, v364);
    v370 = (v368.i64[0] << v356) | v354;
    if (v369.i64[0] + (v356 & 0x3F) >= 0x40)
    {
      *(v280 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
      v370 = v368.i64[0] >> -(v356 & 0x3F);
      if ((v356 & 0x3F) == 0)
      {
        v370 = 0;
      }
    }

    v371 = vaddq_s16(v184, v355);
    v372 = v369.i64[0] + v356;
    v373 = v370 | (v368.i64[1] << v372);
    if ((v372 & 0x3F) + v369.i64[1] >= 0x40)
    {
      *(v280 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      v373 = v368.i64[1] >> -(v372 & 0x3F);
      if ((v372 & 0x3F) == 0)
      {
        v373 = 0;
      }
    }

    v374 = v372 + v369.i64[1];
    v375.i64[0] = 0xF000F000F000FLL;
    v375.i64[1] = 0xF000F000F000FLL;
    v376.i64[0] = -1;
    v376.i64[1] = -1;
    v377 = vshlq_u16(v376, vaddq_s16(v167, v375));
    v378 = vandq_s8(v377, v371);
    v379 = vmovl_u16(*v378.i8);
    v380 = vmovl_high_u16(v378);
    v381 = vmovl_u16(*v167.i8);
    v382 = vmovl_high_u16(v167);
    v383 = vtrn1q_s32(0, v381);
    v384 = vtrn1q_s32(0, v382);
    v385 = vpaddq_s32(vshlq_u32(v379, v383), vshlq_u32(v380, v384));
    v386 = vpaddq_s32(v381, v382);
    v387.i64[0] = v385.u32[0];
    v387.i64[1] = v385.u32[1];
    v388 = v387;
    v387.i64[0] = v385.u32[2];
    v387.i64[1] = v385.u32[3];
    v389 = v387;
    v387.i64[0] = v386.u32[0];
    v387.i64[1] = v386.u32[1];
    v390 = v387;
    v387.i64[0] = v386.u32[2];
    v387.i64[1] = v386.u32[3];
    v391 = vzip1q_s64(0, v390);
    v392 = vzip1q_s64(0, v387);
    v393 = vpaddq_s64(vshlq_u64(v388, v391), vshlq_u64(v389, v392));
    v394 = vpaddq_s64(v390, v387);
    v395 = (v393.i64[0] << v374) | v373;
    if (v394.i64[0] + (v374 & 0x3F) >= 0x40)
    {
      *(v280 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
      if ((v374 & 0x3F) != 0)
      {
        v395 = v393.i64[0] >> -(v374 & 0x3F);
      }

      else
      {
        v395 = 0;
      }
    }

    v396 = vceqq_s16(v84, v168);
    v397 = vaddq_s16(v185, v355);
    v398 = v394.i64[0] + v374;
    v399 = v395 | (v393.i64[1] << v398);
    if ((v398 & 0x3F) + v394.i64[1] >= 0x40)
    {
      *(v280 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
      v399 = v393.i64[1] >> -(v398 & 0x3F);
      if ((v398 & 0x3F) == 0)
      {
        v399 = 0;
      }
    }

    v400 = vandq_s8(v163, v396);
    v401 = v398 + v394.i64[1];
    v402 = vandq_s8(v377, v397);
    v403 = vpaddq_s32(vshlq_u32(vmovl_u16(*v402.i8), v383), vshlq_u32(vmovl_high_u16(v402), v384));
    v404.i64[0] = v403.u32[0];
    v404.i64[1] = v403.u32[1];
    v405 = v404;
    v404.i64[0] = v403.u32[2];
    v404.i64[1] = v403.u32[3];
    v406 = vpaddq_s64(vshlq_u64(v405, v391), vshlq_u64(v404, v392));
    v407 = (v406.i64[0] << v401) | v399;
    if (v394.i64[0] + (v401 & 0x3F) >= 0x40)
    {
      *(v280 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v407;
      v407 = v406.i64[0] >> -(v401 & 0x3F);
      if ((v401 & 0x3F) == 0)
      {
        v407 = 0;
      }
    }

    v408 = vaddq_s16(v183, v400);
    v409 = v394.i64[0] + v401;
    v410 = (v394.i64[0] + v401) & 0x3F;
    v411 = v407 | (v406.i64[1] << v409);
    if ((v409 & 0x3F) + v394.i64[1] >= 0x40)
    {
      *(v280 + ((v409 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v411;
      v411 = v406.i64[1] >> -v410;
      if (!v410)
      {
        v411 = 0;
      }
    }

    v412 = v409 + v394.i64[1];
    v413.i64[0] = 0xF000F000F000FLL;
    v413.i64[1] = 0xF000F000F000FLL;
    v414.i64[0] = -1;
    v414.i64[1] = -1;
    v415 = vshlq_u16(v414, vaddq_s16(v168, v413));
    v416 = vandq_s8(v415, v408);
    v417 = vmovl_u16(*v416.i8);
    v418 = vmovl_high_u16(v416);
    v419 = vmovl_u16(*v168.i8);
    v420 = vmovl_high_u16(v168);
    v421 = vtrn1q_s32(0, v419);
    v422 = vtrn1q_s32(0, v420);
    v423 = vpaddq_s32(vshlq_u32(v417, v421), vshlq_u32(v418, v422));
    v424 = vpaddq_s32(v419, v420);
    v425.i64[0] = v423.u32[0];
    v425.i64[1] = v423.u32[1];
    v426 = v425;
    v425.i64[0] = v423.u32[2];
    v425.i64[1] = v423.u32[3];
    v427 = v425;
    v425.i64[0] = v424.u32[0];
    v425.i64[1] = v424.u32[1];
    v428 = v425;
    v425.i64[0] = v424.u32[2];
    v425.i64[1] = v424.u32[3];
    v429 = vzip1q_s64(0, v428);
    v430 = vzip1q_s64(0, v425);
    v431 = vpaddq_s64(vshlq_u64(v426, v429), vshlq_u64(v427, v430));
    v432 = vpaddq_s64(v428, v425);
    v433 = (v431.i64[0] << v412) | v411;
    if (v432.i64[0] + (v412 & 0x3F) >= 0x40)
    {
      *(v280 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
      if ((v412 & 0x3F) != 0)
      {
        v433 = v431.i64[0] >> -(v412 & 0x3F);
      }

      else
      {
        v433 = 0;
      }
    }

    v434 = vceqq_s16(v84, v169);
    v435 = vaddq_s16(v182, v400);
    v436 = v432.i64[0] + v412;
    v437 = v433 | (v431.i64[1] << v436);
    if ((v436 & 0x3F) + v432.i64[1] >= 0x40)
    {
      *(v280 + ((v436 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
      v437 = v431.i64[1] >> -(v436 & 0x3F);
      if ((v436 & 0x3F) == 0)
      {
        v437 = 0;
      }
    }

    v438 = vandq_s8(v163, v434);
    v439 = v436 + v432.i64[1];
    v440 = vandq_s8(v415, v435);
    v441 = vpaddq_s32(vshlq_u32(vmovl_u16(*v440.i8), v421), vshlq_u32(vmovl_high_u16(v440), v422));
    v442.i64[0] = v441.u32[0];
    v442.i64[1] = v441.u32[1];
    v443 = v442;
    v442.i64[0] = v441.u32[2];
    v442.i64[1] = v441.u32[3];
    v444 = vpaddq_s64(vshlq_u64(v443, v429), vshlq_u64(v442, v430));
    v445 = (v444.i64[0] << v439) | v437;
    if (v432.i64[0] + (v439 & 0x3F) >= 0x40)
    {
      *(v280 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v445;
      v445 = v444.i64[0] >> -(v439 & 0x3F);
      if ((v439 & 0x3F) == 0)
      {
        v445 = 0;
      }
    }

    v446 = vaddq_s16(v180, v438);
    v447 = v432.i64[0] + v439;
    v448 = (v432.i64[0] + v439) & 0x3F;
    v449 = v445 | (v444.i64[1] << v447);
    if ((v447 & 0x3F) + v432.i64[1] >= 0x40)
    {
      *(v280 + ((v447 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
      v449 = v444.i64[1] >> -v448;
      if (!v448)
      {
        v449 = 0;
      }
    }

    v450 = v447 + v432.i64[1];
    v451.i64[0] = 0xF000F000F000FLL;
    v451.i64[1] = 0xF000F000F000FLL;
    v452.i64[0] = -1;
    v452.i64[1] = -1;
    v453 = vshlq_u16(v452, vaddq_s16(v169, v451));
    v454 = vandq_s8(v453, v446);
    v455 = vmovl_u16(*v454.i8);
    v456 = vmovl_high_u16(v454);
    v457 = vmovl_u16(*v169.i8);
    v458 = vmovl_high_u16(v169);
    v459 = vtrn1q_s32(0, v457);
    v460 = vtrn1q_s32(0, v458);
    v461 = vpaddq_s32(vshlq_u32(v455, v459), vshlq_u32(v456, v460));
    v462 = vpaddq_s32(v457, v458);
    v463.i64[0] = v461.u32[0];
    v463.i64[1] = v461.u32[1];
    v464 = v463;
    v463.i64[0] = v461.u32[2];
    v463.i64[1] = v461.u32[3];
    v465 = v463;
    v463.i64[0] = v462.u32[0];
    v463.i64[1] = v462.u32[1];
    v466 = v463;
    v463.i64[0] = v462.u32[2];
    v463.i64[1] = v462.u32[3];
    v467 = vzip1q_s64(0, v466);
    v468 = vzip1q_s64(0, v463);
    v469 = vpaddq_s64(vshlq_u64(v464, v467), vshlq_u64(v465, v468));
    v470 = vpaddq_s64(v466, v463);
    v471 = (v447 + v432.i64[1]) & 0x3F;
    v472 = (v469.i64[0] << (v447 + v432.i8[8])) | v449;
    if ((v470.i64[0] + v471) > 0x3F)
    {
      *(v280 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v472;
      if (v471)
      {
        v472 = v469.i64[0] >> -v471;
      }

      else
      {
        v472 = 0;
      }
    }

    v473 = vaddq_s16(v181, v438);
    v474 = v470.i64[0] + v450;
    v475 = v472 | (v469.i64[1] << v474);
    if ((v474 & 0x3F) + v470.i64[1] >= 0x40)
    {
      *(v280 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v475;
      v475 = v469.i64[1] >> -(v474 & 0x3F);
      if ((v474 & 0x3F) == 0)
      {
        v475 = 0;
      }
    }

    v476 = v474 + v470.i64[1];
    v477 = vandq_s8(v453, v473);
    v478 = vpaddq_s32(vshlq_u32(vmovl_u16(*v477.i8), v459), vshlq_u32(vmovl_high_u16(v477), v460));
    v479.i64[0] = v478.u32[0];
    v479.i64[1] = v478.u32[1];
    v480 = v479;
    v479.i64[0] = v478.u32[2];
    v479.i64[1] = v478.u32[3];
    v481 = vpaddq_s64(vshlq_u64(v480, v467), vshlq_u64(v479, v468));
    v482 = (v481.i64[0] << v476) | v475;
    if (v470.i64[0] + (v476 & 0x3F) >= 0x40)
    {
      *(v280 + ((v476 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v482;
      v482 = v481.i64[0] >> -(v476 & 0x3F);
      if ((v476 & 0x3F) == 0)
      {
        v482 = 0;
      }
    }

    v483 = v470.i64[0] + v476;
    v484 = (v470.i64[0] + v476) & 0x3F;
    v485 = v482 | (v481.i64[1] << (v470.i8[0] + v476));
    if ((v484 + v470.i64[1]) >= 0x40)
    {
      *(v280 + ((v483 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v485;
      v485 = v481.i64[1] >> -v484;
      if (!v484)
      {
        v485 = 0;
      }
    }

    v486 = v483 + v470.i64[1];
    if ((v486 & 0x3F) != 0)
    {
      *(v280 + ((v486 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v485;
    }

    result = (v486 - v281 + 7) >> 3;
    v187 = *a2 | (result - 1);
  }

LABEL_146:
  *a2 = v187;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
  }

  else
  {
    *a4 = 0;
  }

  v12 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v6;
    }

    if (v12 >= 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
    v9 += result;
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

    if (v7 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
    v9 += result;
    if (v7 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v7 < 9)
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

    if (v12 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
    v9 += result;
    v21 = v6 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v21 = v6 - 8;
  if (!v7)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v6 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v7 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 += result;
  if (v7 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v26 = v6 - 12;
    if (!v7)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v6 < 9)
  {
    goto LABEL_57;
  }

  if (v21 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v21;
  }

  if (v12 >= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v7 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 8 * a2 + 32), a2, v25, v24);
  v9 += result;
  v26 = v6 - 12;
LABEL_58:
  if (v6 >= 0xD)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v26;
    }

    if (v7 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 12 * a2), a2, v28, v27);
    v9 += result;
    if (v7 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v7 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v6 < 0xD)
  {
    goto LABEL_78;
  }

  if (v26 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v26;
  }

  if (v12 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v7 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a3[1];
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(&a3[1] + a4);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v14 = *v7;
  v15 = v7[1];
  v13 = (v7 + a4);
  v16 = v13[1];
  v17 = vshrq_n_s16(v11, 6uLL);
  v18 = vshrq_n_s16(v12, 6uLL);
  v19 = vshrq_n_s16(vzip2q_s64(v14, *v13), 6uLL);
  v20 = vshrq_n_s16(vzip2q_s64(v8, v10), 6uLL);
  v21 = vshrq_n_s16(vzip1q_s64(v15, v16), 6uLL);
  v22 = vshrq_n_s16(vzip2q_s64(v15, v16), 6uLL);
  v23 = vdupq_lane_s32(*v17.i8, 0);
  v483 = vshrq_n_s16(vzip1q_s64(v14, *v13), 6uLL);
  v485 = vshrq_n_s16(vzip1q_s64(v8, v10), 6uLL);
  v24 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v23), 6uLL), 6uLL);
  v25 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v23), 6uLL), 6uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v483, v23), 6uLL), 6uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 6uLL), 6uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v485, v23), 6uLL), 6uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v23), 6uLL), 6uLL);
  v30 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 6uLL), 6uLL);
  v31 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v23), 6uLL), 6uLL);
  v32 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v33 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v34 = vpmaxq_s16(v32, v32);
  v35 = vpminq_s16(v33, v33);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38.i64[0] = 0x8000800080008000;
  v38.i64[1] = 0x8000800080008000;
  v39 = vmaxq_s16(v36, v38);
  v40.i64[0] = 0x8000800080008000;
  v40.i64[1] = 0x8000800080008000;
  v41 = vminq_s16(v37, v40);
  v42 = vzip1q_s16(v36, v37);
  v43.i64[0] = 0x10001000100010;
  v43.i64[1] = 0x10001000100010;
  v44 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v42)), vceqzq_s16(v42));
  v45 = vpmaxq_s16(v44, v44);
  v46 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v47 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v48 = vpmaxq_s16(v46, v46);
  v49 = vpminq_s16(v47, v47);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vmaxq_s16(v39, v50);
  v53 = vminq_s16(v41, v51);
  v54 = vzip1q_s16(v50, v51);
  v55 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v54)), vceqzq_s16(v54));
  v56 = vpmaxq_s16(v55, v55);
  v57 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v58 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v52, v61);
  v64 = vminq_s16(v53, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v65)), vceqzq_s16(v65));
  v67 = vpmaxq_s16(v66, v66);
  v68 = vqtbl1q_s8(vmaxq_s16(v30, v31), xmmword_29D2F1090);
  v69 = vqtbl1q_s8(vminq_s16(v30, v31), xmmword_29D2F1090);
  v70 = vpmaxq_s16(v68, v68);
  v71 = vpminq_s16(v69, v69);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vmaxq_s16(v63, v72);
  v75 = vminq_s16(v64, v73);
  v76 = vzip1q_s16(v72, v73);
  v77 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v76)), vceqzq_s16(v76));
  v78 = vpmaxq_s16(v77, v77);
  v79 = vmaxq_s16(vmaxq_s16(v45, v56), vmaxq_s16(v67, v78));
  v80 = vclzq_s16(vsubq_s16(v74, v75));
  v81 = vsubq_s16(v43, v80);
  v82 = vminq_s16(v81, v79);
  if (vmaxvq_s16(v82))
  {
    v469 = v19;
    v470 = v20;
    v482 = v21;
    v471 = v22;
    v83.i64[0] = -1;
    v83.i64[1] = -1;
    v84.i64[0] = 0xF000F000F000FLL;
    v84.i64[1] = 0xF000F000F000FLL;
    v487 = vsubq_s16(vshlq_s16(v83, vsubq_s16(v84, v80)), v75);
    v85 = vcgtq_s16(v79, v81);
    v86.i64[0] = 0x8000800080008;
    v86.i64[1] = 0x8000800080008;
    v87.i64[0] = 0x3000300030003;
    v87.i64[1] = 0x3000300030003;
    v480 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v56), v87), 0);
    v477 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v45), v87), 0);
    v478 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v67), v87), 0);
    v88 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v78), v87), 0);
    v89.i64[0] = 0x4000400040004;
    v89.i64[1] = 0x4000400040004;
    v90 = vbicq_s8(v89, vceqq_s16(vaddq_s16(v88, v478), vnegq_s16(vaddq_s16(v477, v480))));
    v476 = vorrq_s8(vandq_s8(vceqzq_s16(v82), v87), vandq_s8(v85, v86));
    v490 = v27;
    v492 = v28;
    v489 = v26;
    v496 = v31;
    v498 = v24;
    v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080)), 6uLL), 6uLL);
    v92 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080)), 6uLL), 6uLL);
    v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080)), 6uLL), 6uLL);
    v94 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v31, vqtbl1q_s8(v31, xmmword_29D2F1080)), 6uLL), 6uLL);
    v473 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080)), 6uLL), 6uLL);
    v474 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080)), 6uLL), 6uLL);
    v95 = vqtbl1q_s8(vmaxq_s16(v91, v474), xmmword_29D2F1090);
    v96 = vqtbl1q_s8(vminq_s16(v91, v474), xmmword_29D2F1090);
    v97 = vpmaxq_s16(v95, v95);
    v98 = vpminq_s16(v96, v96);
    v99 = vpmaxq_s16(v97, v97);
    v100 = vpminq_s16(v98, v98);
    v101 = vmaxq_s16(v99, v38);
    v102 = vminq_s16(v100, v40);
    v103 = vzip1q_s16(v99, v100);
    v104 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v103)), vceqzq_s16(v103));
    v105 = vpmaxq_s16(v104, v104);
    v472 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080)), 6uLL), 6uLL);
    v106 = vqtbl1q_s8(vmaxq_s16(v473, v472), xmmword_29D2F1090);
    v107 = vqtbl1q_s8(vminq_s16(v473, v472), xmmword_29D2F1090);
    v108 = vpmaxq_s16(v106, v106);
    v109 = vpminq_s16(v107, v107);
    v110 = vpmaxq_s16(v108, v108);
    v111 = vpminq_s16(v109, v109);
    v112 = vmaxq_s16(v101, v110);
    v113 = vminq_s16(v102, v111);
    v114 = vzip1q_s16(v110, v111);
    v115 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v114)), vceqzq_s16(v114));
    v116 = vpmaxq_s16(v115, v115);
    v117 = vqtbl1q_s8(vmaxq_s16(v92, v93), xmmword_29D2F1090);
    v118 = vqtbl1q_s8(vminq_s16(v92, v93), xmmword_29D2F1090);
    v119 = vpmaxq_s16(v117, v117);
    v120 = vpminq_s16(v118, v118);
    v121 = vpmaxq_s16(v119, v119);
    v122 = vpminq_s16(v120, v120);
    v123 = vmaxq_s16(v112, v121);
    v124 = vminq_s16(v113, v122);
    v125 = vzip1q_s16(v121, v122);
    v126 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v125)), vceqzq_s16(v125));
    v127 = vpmaxq_s16(v126, v126);
    v475 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080)), 6uLL), 6uLL);
    v128 = vqtbl1q_s8(vmaxq_s16(v475, v94), xmmword_29D2F1090);
    v129 = vqtbl1q_s8(vminq_s16(v475, v94), xmmword_29D2F1090);
    v130 = vpmaxq_s16(v128, v128);
    v131 = vpminq_s16(v129, v129);
    v132 = vpmaxq_s16(v130, v130);
    v133 = vpminq_s16(v131, v131);
    v494 = v30;
    v134 = vmaxq_s16(v123, v132);
    v135 = vminq_s16(v124, v133);
    v136 = vzip1q_s16(v132, v133);
    v137 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v136)), vceqzq_s16(v136));
    v138 = v25;
    v139 = vpmaxq_s16(v137, v137);
    v140 = vmaxq_s16(vmaxq_s16(v105, v116), vmaxq_s16(v127, v139));
    v141 = vclzq_s16(vsubq_s16(v134, v135));
    v142 = vsubq_s16(v43, v141);
    v143 = vcgtq_s16(v140, v142);
    v144 = vminq_s16(v142, v140);
    v142.i64[0] = 0x18001800180018;
    v142.i64[1] = 0x18001800180018;
    v145 = vbslq_s8(v143, v142, v43);
    v146 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v105), v87), 0);
    v147 = v29;
    v148 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v116), v87), 0);
    v149 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v127), v87), 0);
    v150 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v139), v87), 0);
    v151 = vsubq_s16(v144, v146);
    v152 = vsubq_s16(v144, v148);
    v153 = vsubq_s16(v144, v149);
    v154 = vsubq_s16(v144, v150);
    v155 = vceqq_s16(vaddq_s16(v150, v149), vnegq_s16(vaddq_s16(v146, v148)));
    v146.i64[0] = 0x4000400040004;
    v146.i64[1] = 0x4000400040004;
    v156 = vbicq_s8(v146, v155);
    v148.i64[0] = 0x7000700070007;
    v148.i64[1] = 0x7000700070007;
    v157 = vandq_s8(v487, v85);
    v158 = vorrq_s8(v476, v90);
    v159 = vaddq_s16(vandq_s8(v82, v85), vaddq_s16(v90, v90));
    v160 = vsubq_s16(v82, v477);
    v161 = vsubq_s16(v82, v480);
    v162 = vsubq_s16(v82, v478);
    v163 = vsubq_s16(v82, v88);
    v164 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(v159, v160, v148), vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v161), v163), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v144, vceqzq_s16((*&v145 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v156, v156)), v151, v148), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v152), v154), 3uLL))), 0);
    v165 = vaddvq_s16(v164);
    v167 = a5 < 4 || a6 < 2;
    if (v165)
    {
      v168.i64[0] = 0x3000300030003;
      v168.i64[1] = 0x3000300030003;
      v169 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v144), v168), v145), v156);
      v168.i64[0] = 0xF000F000F000FLL;
      v168.i64[1] = 0xF000F000F000FLL;
      v170.i64[0] = -1;
      v170.i64[1] = -1;
      v171 = vandq_s8(vsubq_s16(vshlq_s16(v170, vsubq_s16(v168, v141)), v135), v143);
      v23 = vbslq_s8(v164, vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080)), v23);
      v498 = vbslq_s8(v164, v91, v498);
      v488 = vbslq_s8(v164, v474, v138);
      v172 = vbslq_s8(v164, v473, v489);
      v173 = vbslq_s8(v164, v472, v490);
      v174 = vbslq_s8(v164, v92, v492);
      v175 = vbslq_s8(v164, v93, v147);
      v176 = vbslq_s8(v164, v94, v496);
      v160 = vbslq_s8(v164, v151, v160);
      v161 = vbslq_s8(v164, v152, v161);
      v162 = vbslq_s8(v164, v153, v162);
      v163 = vbslq_s8(v164, v154, v163);
      v157 = vbslq_s8(v164, v171, v157);
      v82 = vbslq_s8(v164, v144, v82);
      v158 = vbslq_s8(v164, v169, v158);
      v177 = vbslq_s8(v164, v475, v494);
    }

    else
    {
      v488 = v138;
      v177 = v494;
      v176 = v496;
      v175 = v147;
      v173 = v490;
      v174 = v492;
      v172 = v489;
    }

    v180 = v482;
    if (!v167)
    {
      v479 = v157;
      v491 = v173;
      v493 = v174;
      v481 = v175;
      v495 = v177;
      v497 = v176;
      v181 = vsubq_s16(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80));
      v182 = vsubq_s16(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F1030));
      v499.val[0] = v483;
      v499.val[1] = v469;
      v499.val[1].i32[3] = v18.i32[3];
      v183 = vqtbl2q_s8(v499, xmmword_29D2F1040);
      v184 = vsubq_s16(v483, vqtbl2q_s8(v499, xmmword_29D2F0FA0));
      v499.val[1] = v485;
      v185 = v470;
      v185.i32[3] = v18.i32[3];
      v186 = vsubq_s16(v485, vqtbl2q_s8(*(&v499 + 16), xmmword_29D2F1050));
      v187 = vsubq_s16(v470, vqtbl2q_s8(*(&v499 + 16), xmmword_29D2F0F80));
      v188 = v471;
      v188.i32[3] = v18.i32[3];
      v499.val[1] = v182;
      v499.val[1].i32[3] = v181.i32[0];
      v181.i32[0] = v182.i32[3];
      v189 = vshrq_n_s16(vshlq_n_s16(v181, 6uLL), 6uLL);
      v190 = vshrq_n_s16(vshlq_n_s16(v499.val[1], 6uLL), 6uLL);
      v191 = vshrq_n_s16(vshlq_n_s16(v184, 6uLL), 6uLL);
      v192 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v469, v183), 6uLL), 6uLL);
      v193 = vshrq_n_s16(vshlq_n_s16(v186, 6uLL), 6uLL);
      v194 = vshrq_n_s16(vshlq_n_s16(v187, 6uLL), 6uLL);
      v195 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v482, vqtbl2q_s8(*v180.i8, xmmword_29D2F1060)), 6uLL), 6uLL);
      v196 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v471, vqtbl2q_s8(*v180.i8, xmmword_29D2F0F80)), 6uLL), 6uLL);
      v486 = v189;
      v197 = vqtbl1q_s8(vmaxq_s16(v189, v190), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v189, v190), xmmword_29D2F1090);
      v198 = vpmaxq_s16(v197, v197);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v199 = vpmaxq_s16(v198, v198);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v185.i64[0] = 0x8000800080008000;
      v185.i64[1] = 0x8000800080008000;
      v200 = vmaxq_s16(v199, v185);
      v189.i64[0] = 0x8000800080008000;
      v189.i64[1] = 0x8000800080008000;
      v201 = vminq_s16(v499.val[0], v189);
      v202 = vzip1q_s16(v199, v499.val[0]);
      v189.i64[0] = 0x10001000100010;
      v189.i64[1] = 0x10001000100010;
      v203 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v202)), vceqzq_s16(v202));
      v204 = v162;
      v205 = vpmaxq_s16(v203, v203);
      v206 = vqtbl1q_s8(vmaxq_s16(v191, v192), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v191, v192), xmmword_29D2F1090);
      v207 = vpmaxq_s16(v206, v206);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v208 = vpmaxq_s16(v207, v207);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v209 = vmaxq_s16(v200, v208);
      v210 = vminq_s16(v201, v499.val[0]);
      v211 = vzip1q_s16(v208, v499.val[0]);
      v212 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v211)), vceqzq_s16(v211));
      v213 = vpmaxq_s16(v212, v212);
      v214 = vqtbl1q_s8(vmaxq_s16(v193, v194), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v193, v194), xmmword_29D2F1090);
      v215 = vpmaxq_s16(v214, v214);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v216 = vpmaxq_s16(v215, v215);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v217 = vmaxq_s16(v209, v216);
      v218 = vminq_s16(v210, v499.val[0]);
      v219 = vzip1q_s16(v216, v499.val[0]);
      v220 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v219)), vceqzq_s16(v219));
      v221 = vpmaxq_s16(v220, v220);
      v484 = v196;
      v222 = vqtbl1q_s8(vmaxq_s16(v195, v196), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v195, v196), xmmword_29D2F1090);
      v223 = vpmaxq_s16(v222, v222);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v224 = vpmaxq_s16(v223, v223);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v225 = vmaxq_s16(v217, v224);
      v226 = vminq_s16(v218, v499.val[0]);
      v227 = vzip1q_s16(v224, v499.val[0]);
      v228 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v499.val[0] = vmaxq_s16(vmaxq_s16(v205, v213), vmaxq_s16(v221, v229));
      v230 = vclzq_s16(vsubq_s16(v225, v226));
      v231 = vsubq_s16(v189, v230);
      v232 = vcgtq_s16(v499.val[0], v231);
      v233 = vminq_s16(v231, v499.val[0]);
      v234.i64[0] = 0x3000300030003;
      v234.i64[1] = 0x3000300030003;
      v235 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v205), v234), 0);
      v236 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v213), v234), 0);
      v237 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v221), v234), 0);
      v238 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v229), v234), 0);
      v239 = vsubq_s16(v233, v235);
      v240 = vsubq_s16(v233, v236);
      v241 = vsubq_s16(v233, v237);
      v242 = vsubq_s16(v233, v238);
      v243 = vceqq_s16(vaddq_s16(v238, v237), vnegq_s16(vaddq_s16(v235, v236)));
      v238.i64[0] = 0x4000400040004;
      v238.i64[1] = 0x4000400040004;
      v244 = vbicq_s8(v238, v243);
      v237.i64[0] = 0x7000700070007;
      v237.i64[1] = 0x7000700070007;
      v236.i64[0] = 0x8000800080008;
      v236.i64[1] = 0x8000800080008;
      v245 = vandq_s8(v158, v234);
      v246.i64[0] = 0x2000200020002;
      v246.i64[1] = 0x2000200020002;
      v247 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(vandq_s8(v158, v236))), vandq_s8(vaddq_s16(v158, v158), v236)), vandq_s8(vceqq_s16(v245, v246), v189)), v160, v237), vshlq_n_s16(vaddq_s16(vaddq_s16(v204, v161), v163), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v233, v232), vaddq_s16(v244, v244)), v239, v237), vshlq_n_s16(vaddq_s16(vaddq_s16(v241, v240), v242), 3uLL))), 0);
      if (vaddvq_s16(v247))
      {
        v248 = vandq_s8(vceqzq_s16(v233), v246);
        v249.i64[0] = 0x9000900090009;
        v249.i64[1] = 0x9000900090009;
        v250 = vorrq_s8(vorrq_s8(v248, vsubq_s16(vandq_s8(v232, v249), vmvnq_s8(v232))), v244);
        v251.i64[0] = 0xF000F000F000FLL;
        v251.i64[1] = 0xF000F000F000FLL;
        v252 = vsubq_s16(v251, v230);
        v253.i64[0] = -1;
        v253.i64[1] = -1;
        v254 = vandq_s8(vsubq_s16(vshlq_s16(v253, v252), v226), v232);
        v23.i32[0] = vbslq_s8(v247, vextq_s8(v18, v18, 0xCuLL), v23).u32[0];
        v498 = vbslq_s8(v247, v486, v498);
        v488 = vbslq_s8(v247, v190, v488);
        v172 = vbslq_s8(v247, v191, v172);
        v173 = vbslq_s8(v247, v192, v491);
        v174 = vbslq_s8(v247, v193, v493);
        v175 = vbslq_s8(v247, v194, v481);
        v177 = vbslq_s8(v247, v195, v495);
        v176 = vbslq_s8(v247, v484, v497);
        v160 = vbslq_s8(v247, v239, v160);
        v161 = vbslq_s8(v247, v240, v161);
        v162 = vbslq_s8(v247, v241, v204);
        v163 = vbslq_s8(v247, v242, v163);
        v157 = vbslq_s8(v247, v254, v479);
        v82 = vbslq_s8(v247, v233, v82);
        v158 = vbslq_s8(v247, v250, v158);
      }

      else
      {
        v177 = v495;
        v176 = v497;
        v157 = v479;
        v175 = v481;
        v173 = v491;
        v174 = v493;
        v162 = v204;
      }
    }

    v255.i64[0] = 0x8000800080008;
    v255.i64[1] = 0x8000800080008;
    v256 = vandq_s8(v158, v255);
    v257.i64[0] = 0x3000300030003;
    v257.i64[1] = 0x3000300030003;
    v258.i64[0] = 0x2000200020002;
    v258.i64[1] = 0x2000200020002;
    v259 = vceqq_s16(vandq_s8(v158, v257), v258);
    v258.i64[0] = 0x10001000100010;
    v258.i64[1] = 0x10001000100010;
    v260 = vandq_s8(v259, v258);
    v258.i64[0] = 0x7000700070007;
    v258.i64[1] = 0x7000700070007;
    v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(v256)), vandq_s8(vaddq_s16(v158, v158), v255)), v260), v160, v258), vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v161), v163), 3uLL));
    if ((vpaddq_s16(v261, v261).i16[0] - 475) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v262 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v263 = 8 * (a1 & 7);
      if (v263)
      {
        v264 = *v262 & ~(-1 << v263);
      }

      else
      {
        v264 = 0;
      }

      *a2 = 0;
      v265 = ((v82.i16[0] << 10) + 15360) & 0x3C00;
      if (!v82.i16[0])
      {
        v265 = 0;
      }

      if (v82.i16[1])
      {
        v266 = ((v82.u16[1] << 14) + 245760) & 0x3C000;
      }

      else
      {
        v266 = 0;
      }

      v267 = v265 | v266 | v158.i8[0] & 0x1F | (32 * (v158.i8[2] & 0x1Fu));
      v268 = v23.i16[0] & 0x3FF | ((v23.i16[1] & 0x3FF) << 10);
      v269 = (v267 << v263) | v264;
      if (v263 >= 0x2E)
      {
        *v262 = v269;
        v269 = v267 >> (-8 * (a1 & 7u));
      }

      v270 = (v263 + 18) & 0x3A;
      v271 = v269 | (v268 << v270);
      if (v270 >= 0x2C)
      {
        *(v262 + (((v263 + 18) >> 3) & 8)) = v271;
        v271 = v268 >> -v270;
      }

      v272 = v263 + 38;
      v273 = vsubq_s16(v82, v160);
      v274 = vsubq_s16(v82, v161);
      v275 = vsubq_s16(v82, v162);
      v276 = vsubq_s16(v82, v163);
      *v273.i8 = vqmovn_u16(v273);
      *v274.i8 = vqmovn_u16(v274);
      *v275.i8 = vqmovn_u16(v275);
      *v276.i8 = vqmovn_u16(v276);
      v273.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v273, v274), vzip1q_s8(v275, v276)), vzip1q_s16(vtrn2q_s8(v273, v274), vtrn2q_s8(v275, v276))).u64[0];
      v275.i64[0] = 0x202020202020202;
      v275.i64[1] = 0x202020202020202;
      v277 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v158.i8, 0x4000400040004)))), v275);
      v275.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v275.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v276.i64[0] = -1;
      v276.i64[1] = -1;
      v278 = vandq_s8(vshlq_u8(v276, vorrq_s8(v277, v275)), v273.u64[0]);
      v279 = vmovl_u8(*v277.i8);
      v280 = vpaddq_s16(vshlq_u16(vmovl_u8(*v278.i8), vtrn1q_s16(0, v279)), vmovl_high_u8(v278));
      v281 = vpaddq_s16(v279, vmovl_high_u8(v277));
      v282 = vmovl_u16(*v281.i8);
      v283 = vmovl_high_u16(v281);
      v284 = vpaddq_s32(vshlq_u32(vmovl_u16(*v280.i8), vtrn1q_s32(0, v282)), vshlq_u32(vmovl_high_u16(v280), vtrn1q_s32(0, v283)));
      v285 = vpaddq_s32(v282, v283);
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
      v292 = (v263 + 38) & 0x3E;
      v293 = (v290.i64[0] << v292) | v271;
      if ((v291.i64[0] + v292) >= 0x40)
      {
        *(v262 + ((v272 >> 3) & 8)) = v293;
        v293 = v290.i64[0] >> -v292;
      }

      v294 = vceqq_s16(v82, v160);
      v295 = v291.i64[0] + v272;
      v296 = v293 | (v290.i64[1] << v295);
      if ((v295 & 0x3F) + v291.i64[1] >= 0x40)
      {
        *(v262 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v296;
        v296 = v290.i64[1] >> -(v295 & 0x3F);
        if ((v295 & 0x3F) == 0)
        {
          v296 = 0;
        }
      }

      v297 = vandq_s8(v157, v294);
      v298 = v295 + v291.i64[1];
      v299.i64[0] = -1;
      v299.i64[1] = -1;
      v300 = vandq_s8(vextq_s8(vtstq_s16(v256, v256), 0, 0xCuLL), v82);
      v301.i64[0] = 0xF000F000F000FLL;
      v301.i64[1] = 0xF000F000F000FLL;
      v302 = vandq_s8(vshlq_u16(v299, vaddq_s16(v300, v301)), v157);
      v303 = vmovl_u16(*v300.i8);
      v304 = vpaddq_s32(vshlq_u32(vmovl_u16(*v302.i8), vtrn1q_s32(0, v303)), vmovl_high_u16(v302));
      v305 = vpaddq_s32(v303, vmovl_high_u16(v300));
      v306.i64[0] = v304.u32[0];
      v306.i64[1] = v304.u32[1];
      v307 = v306;
      v306.i64[0] = v304.u32[2];
      v306.i64[1] = v304.u32[3];
      v308 = v306;
      v306.i64[0] = v305.u32[0];
      v306.i64[1] = v305.u32[1];
      v309 = v306;
      v306.i64[0] = v305.u32[2];
      v306.i64[1] = v305.u32[3];
      v310 = vpaddq_s64(vshlq_u64(v307, vzip1q_s64(0, v309)), vshlq_u64(v308, vzip1q_s64(0, v306)));
      v311 = vpaddq_s64(v309, v306);
      v312 = (v310.i64[0] << v298) | v296;
      if (v311.i64[0] + (v298 & 0x3F) >= 0x40)
      {
        *(v262 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
        v312 = v310.i64[0] >> -(v298 & 0x3F);
        if ((v298 & 0x3F) == 0)
        {
          v312 = 0;
        }
      }

      v313 = vaddq_s16(v297, v498);
      v314 = v311.i64[0] + v298;
      v315 = v312 | (v310.i64[1] << v314);
      if ((v314 & 0x3F) + v311.i64[1] >= 0x40)
      {
        *(v262 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
        v315 = v310.i64[1] >> -(v314 & 0x3F);
        if ((v314 & 0x3F) == 0)
        {
          v315 = 0;
        }
      }

      v316 = v314 + v311.i64[1];
      v317 = vextq_s8(0, v160, 0xCuLL);
      v318.i64[0] = 0xF000F000F000FLL;
      v318.i64[1] = 0xF000F000F000FLL;
      v319.i64[0] = -1;
      v319.i64[1] = -1;
      v320 = vandq_s8(vshlq_u16(v319, vaddq_s16(v317, v318)), v313);
      v321 = vmovl_u16(*v317.i8);
      v322 = vmovl_high_u16(v317);
      v323 = vpaddq_s32(vshlq_u32(vmovl_u16(*v320.i8), vtrn1q_s32(0, v321)), vshlq_u32(vmovl_high_u16(v320), vtrn1q_s32(0, v322)));
      v324 = vpaddq_s32(v321, v322);
      v325.i64[0] = v323.u32[0];
      v325.i64[1] = v323.u32[1];
      v326 = v325;
      v325.i64[0] = v323.u32[2];
      v325.i64[1] = v323.u32[3];
      v327 = v325;
      v325.i64[0] = v324.u32[0];
      v325.i64[1] = v324.u32[1];
      v328 = v325;
      v325.i64[0] = v324.u32[2];
      v325.i64[1] = v324.u32[3];
      v329 = vpaddq_s64(vshlq_u64(v326, vzip1q_s64(0, v328)), vshlq_u64(v327, vzip1q_s64(0, v325)));
      v330 = vpaddq_s64(v328, v325);
      v331 = (v329.i64[0] << v316) | v315;
      if (v330.i64[0] + (v316 & 0x3F) >= 0x40)
      {
        *(v262 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v329.i64[0] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = vceqq_s16(v82, v161);
      v333 = vaddq_s16(v488, v297);
      v334 = v330.i64[0] + v316;
      v335 = v331 | (v329.i64[1] << v334);
      if ((v334 & 0x3F) + v330.i64[1] >= 0x40)
      {
        *(v262 + ((v334 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
        v335 = v329.i64[1] >> -(v334 & 0x3F);
        if ((v334 & 0x3F) == 0)
        {
          v335 = 0;
        }
      }

      v336 = vandq_s8(v157, v332);
      v337 = v334 + v330.i64[1];
      v338.i64[0] = 0xF000F000F000FLL;
      v338.i64[1] = 0xF000F000F000FLL;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vandq_s8(vshlq_u16(v339, vaddq_s16(v160, v338)), v333);
      v341 = vmovl_u16(*v160.i8);
      v342 = vmovl_high_u16(v160);
      v343 = vpaddq_s32(vshlq_u32(vmovl_u16(*v340.i8), vtrn1q_s32(0, v341)), vshlq_u32(vmovl_high_u16(v340), vtrn1q_s32(0, v342)));
      v344 = vpaddq_s32(v341, v342);
      v345.i64[0] = v343.u32[0];
      v345.i64[1] = v343.u32[1];
      v346 = v345;
      v345.i64[0] = v343.u32[2];
      v345.i64[1] = v343.u32[3];
      v347 = v345;
      v345.i64[0] = v344.u32[0];
      v345.i64[1] = v344.u32[1];
      v348 = v345;
      v345.i64[0] = v344.u32[2];
      v345.i64[1] = v344.u32[3];
      v349 = vpaddq_s64(vshlq_u64(v346, vzip1q_s64(0, v348)), vshlq_u64(v347, vzip1q_s64(0, v345)));
      v350 = vpaddq_s64(v348, v345);
      v351 = (v349.i64[0] << v337) | v335;
      if (v350.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v262 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        v351 = v349.i64[0] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v351 = 0;
        }
      }

      v352 = vaddq_s16(v172, v336);
      v353 = v350.i64[0] + v337;
      v354 = v351 | (v349.i64[1] << v353);
      if ((v353 & 0x3F) + v350.i64[1] >= 0x40)
      {
        *(v262 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v349.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v350.i64[1];
      v356.i64[0] = 0xF000F000F000FLL;
      v356.i64[1] = 0xF000F000F000FLL;
      v357.i64[0] = -1;
      v357.i64[1] = -1;
      v358 = vshlq_u16(v357, vaddq_s16(v161, v356));
      v359 = vandq_s8(v358, v352);
      v360 = vmovl_u16(*v359.i8);
      v361 = vmovl_high_u16(v359);
      v362 = vmovl_u16(*v161.i8);
      v363 = vmovl_high_u16(v161);
      v364 = vtrn1q_s32(0, v362);
      v365 = vtrn1q_s32(0, v363);
      v366 = vpaddq_s32(vshlq_u32(v360, v364), vshlq_u32(v361, v365));
      v367 = vpaddq_s32(v362, v363);
      v368.i64[0] = v366.u32[0];
      v368.i64[1] = v366.u32[1];
      v369 = v368;
      v368.i64[0] = v366.u32[2];
      v368.i64[1] = v366.u32[3];
      v370 = v368;
      v368.i64[0] = v367.u32[0];
      v368.i64[1] = v367.u32[1];
      v371 = v368;
      v368.i64[0] = v367.u32[2];
      v368.i64[1] = v367.u32[3];
      v372 = vzip1q_s64(0, v371);
      v373 = vzip1q_s64(0, v368);
      v374 = vpaddq_s64(vshlq_u64(v369, v372), vshlq_u64(v370, v373));
      v375 = vpaddq_s64(v371, v368);
      v376 = (v374.i64[0] << v355) | v354;
      if (v375.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v262 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        if ((v355 & 0x3F) != 0)
        {
          v376 = v374.i64[0] >> -(v355 & 0x3F);
        }

        else
        {
          v376 = 0;
        }
      }

      v377 = vceqq_s16(v82, v162);
      v378 = vaddq_s16(v173, v336);
      v379 = v375.i64[0] + v355;
      v380 = v376 | (v374.i64[1] << v379);
      if ((v379 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v262 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v374.i64[1] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = vandq_s8(v157, v377);
      v382 = v379 + v375.i64[1];
      v383 = vandq_s8(v358, v378);
      v384 = vpaddq_s32(vshlq_u32(vmovl_u16(*v383.i8), v364), vshlq_u32(vmovl_high_u16(v383), v365));
      v385.i64[0] = v384.u32[0];
      v385.i64[1] = v384.u32[1];
      v386 = v385;
      v385.i64[0] = v384.u32[2];
      v385.i64[1] = v384.u32[3];
      v387 = vpaddq_s64(vshlq_u64(v386, v372), vshlq_u64(v385, v373));
      v388 = (v387.i64[0] << v382) | v380;
      if (v375.i64[0] + (v382 & 0x3F) >= 0x40)
      {
        *(v262 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
        v388 = v387.i64[0] >> -(v382 & 0x3F);
        if ((v382 & 0x3F) == 0)
        {
          v388 = 0;
        }
      }

      v389 = vaddq_s16(v174, v381);
      v390 = v375.i64[0] + v382;
      v391 = (v375.i64[0] + v382) & 0x3F;
      v392 = v388 | (v387.i64[1] << v390);
      if ((v390 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v262 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v392;
        v392 = v387.i64[1] >> -v391;
        if (!v391)
        {
          v392 = 0;
        }
      }

      v393 = v390 + v375.i64[1];
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v395.i64[0] = -1;
      v395.i64[1] = -1;
      v396 = vshlq_u16(v395, vaddq_s16(v162, v394));
      v397 = vandq_s8(v396, v389);
      v398 = vmovl_u16(*v397.i8);
      v399 = vmovl_high_u16(v397);
      v400 = vmovl_u16(*v162.i8);
      v401 = vmovl_high_u16(v162);
      v402 = vtrn1q_s32(0, v400);
      v403 = vtrn1q_s32(0, v401);
      v404 = vpaddq_s32(vshlq_u32(v398, v402), vshlq_u32(v399, v403));
      v405 = vpaddq_s32(v400, v401);
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
      v410 = vzip1q_s64(0, v409);
      v411 = vzip1q_s64(0, v406);
      v412 = vpaddq_s64(vshlq_u64(v407, v410), vshlq_u64(v408, v411));
      v413 = vpaddq_s64(v409, v406);
      v414 = (v390 + v375.i64[1]) & 0x3F;
      v415 = (v412.i64[0] << (v390 + v375.i8[8])) | v392;
      if ((v413.i64[0] + v414) >= 0x40)
      {
        *(v262 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
        if (v414)
        {
          v415 = v412.i64[0] >> -v414;
        }

        else
        {
          v415 = 0;
        }
      }

      v416 = vceqq_s16(v82, v163);
      v417 = vaddq_s16(v175, v381);
      v418 = v413.i64[0] + v393;
      v419 = v415 | (v412.i64[1] << v418);
      if ((v418 & 0x3F) + v413.i64[1] >= 0x40)
      {
        *(v262 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v419;
        v419 = v412.i64[1] >> -(v418 & 0x3F);
        if ((v418 & 0x3F) == 0)
        {
          v419 = 0;
        }
      }

      v420 = vandq_s8(v157, v416);
      v421 = v418 + v413.i64[1];
      v422 = vandq_s8(v396, v417);
      v423 = vpaddq_s32(vshlq_u32(vmovl_u16(*v422.i8), v402), vshlq_u32(vmovl_high_u16(v422), v403));
      v424.i64[0] = v423.u32[0];
      v424.i64[1] = v423.u32[1];
      v425 = v424;
      v424.i64[0] = v423.u32[2];
      v424.i64[1] = v423.u32[3];
      v426 = vpaddq_s64(vshlq_u64(v425, v410), vshlq_u64(v424, v411));
      v427 = (v426.i64[0] << v421) | v419;
      if (v413.i64[0] + (v421 & 0x3F) >= 0x40)
      {
        *(v262 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
        v427 = v426.i64[0] >> -(v421 & 0x3F);
        if ((v421 & 0x3F) == 0)
        {
          v427 = 0;
        }
      }

      v428 = vaddq_s16(v177, v420);
      v429 = v413.i64[0] + v421;
      v430 = (v413.i64[0] + v421) & 0x3F;
      v431 = v427 | (v426.i64[1] << v429);
      if ((v429 & 0x3F) + v413.i64[1] >= 0x40)
      {
        *(v262 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        v431 = v426.i64[1] >> -v430;
        if (!v430)
        {
          v431 = 0;
        }
      }

      v432 = v429 + v413.i64[1];
      v433.i64[0] = 0xF000F000F000FLL;
      v433.i64[1] = 0xF000F000F000FLL;
      v434.i64[0] = -1;
      v434.i64[1] = -1;
      v435 = vshlq_u16(v434, vaddq_s16(v163, v433));
      v436 = vandq_s8(v435, v428);
      v437 = vmovl_u16(*v436.i8);
      v438 = vmovl_high_u16(v436);
      v439 = vmovl_u16(*v163.i8);
      v440 = vmovl_high_u16(v163);
      v441 = vtrn1q_s32(0, v439);
      v442 = vtrn1q_s32(0, v440);
      v443 = vpaddq_s32(vshlq_u32(v437, v441), vshlq_u32(v438, v442));
      v444 = vpaddq_s32(v439, v440);
      v445.i64[0] = v443.u32[0];
      v445.i64[1] = v443.u32[1];
      v446 = v445;
      v445.i64[0] = v443.u32[2];
      v445.i64[1] = v443.u32[3];
      v447 = v445;
      v445.i64[0] = v444.u32[0];
      v445.i64[1] = v444.u32[1];
      v448 = v445;
      v445.i64[0] = v444.u32[2];
      v445.i64[1] = v444.u32[3];
      v449 = vzip1q_s64(0, v448);
      v450 = vzip1q_s64(0, v445);
      v451 = vpaddq_s64(vshlq_u64(v446, v449), vshlq_u64(v447, v450));
      v452 = vpaddq_s64(v448, v445);
      v453 = (v429 + v413.i64[1]) & 0x3F;
      v454 = (v451.i64[0] << (v429 + v413.i8[8])) | v431;
      if ((v452.i64[0] + v453) > 0x3F)
      {
        *(v262 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v454;
        if (v453)
        {
          v454 = v451.i64[0] >> -v453;
        }

        else
        {
          v454 = 0;
        }
      }

      v455 = vaddq_s16(v176, v420);
      v456 = v452.i64[0] + v432;
      v457 = v454 | (v451.i64[1] << v456);
      if ((v456 & 0x3F) + v452.i64[1] >= 0x40)
      {
        *(v262 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
        v457 = v451.i64[1] >> -(v456 & 0x3F);
        if ((v456 & 0x3F) == 0)
        {
          v457 = 0;
        }
      }

      v458 = v456 + v452.i64[1];
      v459 = vandq_s8(v435, v455);
      v460 = vpaddq_s32(vshlq_u32(vmovl_u16(*v459.i8), v441), vshlq_u32(vmovl_high_u16(v459), v442));
      v461.i64[0] = v460.u32[0];
      v461.i64[1] = v460.u32[1];
      v462 = v461;
      v461.i64[0] = v460.u32[2];
      v461.i64[1] = v460.u32[3];
      v463 = vpaddq_s64(vshlq_u64(v462, v449), vshlq_u64(v461, v450));
      v464 = (v463.i64[0] << v458) | v457;
      if (v452.i64[0] + (v458 & 0x3F) >= 0x40)
      {
        *(v262 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
        v464 = v463.i64[0] >> -(v458 & 0x3F);
        if ((v458 & 0x3F) == 0)
        {
          v464 = 0;
        }
      }

      v465 = v452.i64[0] + v458;
      v466 = (v452.i64[0] + v458) & 0x3F;
      v467 = v464 | (v463.i64[1] << (v452.i8[0] + v458));
      if ((v466 + v452.i64[1]) >= 0x40)
      {
        *(v262 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
        v467 = v463.i64[1] >> -v466;
        if (!v466)
        {
          v467 = 0;
        }
      }

      v468 = v465 + v452.i64[1];
      if ((v468 & 0x3F) != 0)
      {
        *(v262 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      }

      result = (v468 - v263 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v178 = (a3->i32[0] >> 12) & 0xFFFFFC00 | (a3->i32[0] >> 6);
    *(a1 + 2) = a3->i32[0] >> 28;
    *a1 = v178;
    *a2 = 2;
    return 3;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v70 = *MEMORY[0x29EDCA608];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (a6 && a5)
  {
    v11 = a6;
    if (a5 > 3)
    {
      v14 = a5 & 0x7C;
      if (a5 == v14)
      {
        v15 = 0;
        v16 = &v64;
        do
        {
          v17 = a3;
          v18 = v16;
          v19 = a5;
          do
          {
            v20 = *v17++;
            v21 = vshrq_n_u32(v20, 6uLL);
            *(v18 - 8) = v21.i32[0] & 0xFFFF03FF;
            *(v18 - 4) = v21.i32[1] & 0xFFFF03FF;
            *v18 = v21.i32[2] & 0xFFFF03FF;
            v18[4] = v21.i32[3] & 0xFFFF03FF;
            v18 += 16;
            v19 -= 4;
          }

          while (v19);
          ++v15;
          v16 = (v16 + 4);
          a3 = (a3 + a4);
        }

        while (v15 != a6);
      }

      else
      {
        v22 = 0;
        v23 = &v62;
        v24 = &v64;
        do
        {
          v25 = a3;
          v26 = v24;
          v27 = a5 & 0x7C;
          do
          {
            v28 = *v25++;
            v29 = vshrq_n_u32(v28, 6uLL);
            *(v26 - 8) = v29.i32[0] & 0xFFFF03FF;
            *(v26 - 4) = v29.i32[1] & 0xFFFF03FF;
            *v26 = v29.i32[2] & 0xFFFF03FF;
            v26[4] = v29.i32[3] & 0xFFFF03FF;
            v26 += 16;
            v27 -= 4;
          }

          while (v27);
          v30 = v14;
          v31 = a5 - v14;
          do
          {
            LODWORD(v23[v30]) = (a3->i32[v30] >> 6) & 0x3FF03FF;
            ++v30;
            --v31;
          }

          while (v31);
          ++v22;
          v24 = (v24 + 4);
          a3 = (a3 + a4);
          v23 = (v23 + 4);
        }

        while (v22 != a6);
      }
    }

    else
    {
      v12 = &a3->i32[2];
      v13 = &v63;
      do
      {
        *(v13 - 4) = (*(v12 - 2) >> 6) & 0x3FF03FF;
        if (a5 != 1)
        {
          *v13 = (*(v12 - 1) >> 6) & 0x3FF03FF;
          if (a5 != 2)
          {
            v13[4] = (*v12 >> 6) & 0x3FF03FF;
          }
        }

        v12 = (v12 + a4);
        ++v13;
        --v11;
      }

      while (v11);
    }
  }

  v46 = v62;
  v47 = WORD1(v62);
  v48 = v63;
  v49 = WORD1(v63);
  v50 = WORD2(v62);
  v51 = WORD3(v62);
  v52 = WORD2(v63);
  v53 = WORD3(v63);
  v54 = v64;
  v55 = WORD1(v64);
  v56 = v65;
  v57 = WORD1(v65);
  v58 = WORD2(v64);
  v59 = WORD3(v64);
  if (a5 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = a5;
  }

  if (a5 >= 4)
  {
    v33 = a5 - 4;
  }

  else
  {
    v33 = 0;
  }

  v60 = WORD2(v65);
  v61 = WORD3(v65);
  if (a6 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = a6;
  }

  if (a6 >= 2)
  {
    v35 = a6 - 2;
  }

  else
  {
    v35 = 0;
  }

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v46, a7, v32, v34);
  v46 = WORD4(v62);
  v47 = WORD5(v62);
  v48 = WORD4(v63);
  v49 = WORD5(v63);
  v50 = WORD6(v62);
  v51 = HIWORD(v62);
  v52 = WORD6(v63);
  v53 = HIWORD(v63);
  v54 = WORD4(v64);
  v55 = WORD5(v64);
  v56 = WORD4(v65);
  v57 = WORD5(v65);
  v58 = WORD6(v64);
  v59 = HIWORD(v64);
  v60 = WORD6(v65);
  v61 = HIWORD(v65);
  if (a6 >= 4)
  {
    v37 = 2;
  }

  else
  {
    v37 = v35;
  }

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 16, &v46, a7, v32, v37);
  v46 = v66;
  v47 = WORD1(v66);
  v48 = v67;
  v49 = WORD1(v67);
  v50 = WORD2(v66);
  v51 = WORD3(v66);
  v52 = WORD2(v67);
  v53 = WORD3(v67);
  v54 = v68;
  v55 = WORD1(v68);
  v56 = v69;
  v57 = WORD1(v69);
  v58 = WORD2(v68);
  v59 = WORD3(v68);
  if (a5 >= 8)
  {
    v39 = 4;
  }

  else
  {
    v39 = v33;
  }

  v60 = WORD2(v69);
  v61 = WORD3(v69);
  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 32, &v46, a7, v39, v34);
  v46 = WORD4(v66);
  v47 = WORD5(v66);
  v48 = WORD4(v67);
  v49 = WORD5(v67);
  v50 = WORD6(v66);
  v51 = HIWORD(v66);
  v52 = WORD6(v67);
  v53 = HIWORD(v67);
  v54 = WORD4(v68);
  v55 = WORD5(v68);
  v56 = WORD4(v69);
  v57 = WORD5(v69);
  v58 = WORD6(v68);
  v59 = HIWORD(v68);
  v60 = WORD6(v69);
  v61 = HIWORD(v69);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 48, &v46, a7, v39, v37);
  if (v40)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  if (v38)
  {
    v43 = 2;
  }

  else
  {
    v43 = 0;
  }

  if (result)
  {
    v44 = -8;
  }

  else
  {
    v44 = -16;
  }

  *a2 = v44 | v42 | v36 | v43;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v350 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v299 = v7;
  v8 = a4 < 2 || a5 == 0;
  v298 = v8;
  v9 = a4 < 2 || a5 < 2;
  v297 = v9;
  v10 = a4 < 3 || a5 == 0;
  v296 = v10;
  v11 = a4 < 3 || a5 < 2;
  v295 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v294 = v6;
  v12 = a4 < 4 || a5 < 2;
  v293 = v12;
  v13 = &v332;
  v14 = &v334;
  v15 = &v338;
  v16 = &v342;
  v17 = &v346;
  v18 = &v348;
  v19 = &v317;
  v20 = &v315;
  v21 = &v313;
  v22 = &v311;
  v23 = &v309;
  v24 = v307;
  v25 = 1;
  v26 = &v336;
  v27 = &v340;
  v28 = &v344;
  v292 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)5,(AGXTextureFootprint)3>::compBits[v5];
    *v19 = v32;
    if (v32 <= 11)
    {
      if (v32 == 2)
      {
        v30 = 5;
      }

      else
      {
        v30 = v32 == 10;
      }
    }

    else
    {
      switch(v32)
      {
        case 12:
          v30 = 2;
          break;
        case 16:
          v30 = 3;
          break;
        case 32:
          v30 = 4;
          break;
      }
    }

    *v23 = v30;
    v33 = 1 << (v32 - 1);
    *v24 = v33;
    v34 = *(a2 + 4 * v5);
    if (a3 == 1)
    {
      v34 ^= v33;
      if (v34 == 1)
      {
        v34 = 0;
      }

      *v13 = v34;
      v43 = (a2 + 4 * v5);
      if ((v43[2] ^ v33) == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = v43[2] ^ v33;
      }

      *v14 = v36;
      if ((v43[4] ^ v33) == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v43[4] ^ v33;
      }

      *v26 = v37;
      if ((v43[6] ^ v33) == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = v43[6] ^ v33;
      }

      *v15 = v38;
      v39 = v43[8] ^ v33;
      if (v39 == 1)
      {
        v39 = 0;
      }

      *v27 = v39;
      if ((v43[10] ^ v33) == 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = v43[10] ^ v33;
      }

      *v16 = v40;
      if ((v43[12] ^ v33) == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = v43[12] ^ v33;
      }

      *v28 = v41;
      v44 = v43[14] ^ v33;
      if (v44 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = v44;
      }
    }

    else if (a3 == 3)
    {
      v34 ^= v33;
      *v13 = v34;
      v35 = (a2 + 4 * v5);
      v36 = v35[2] ^ v33;
      *v14 = v36;
      v37 = v35[4] ^ v33;
      *v26 = v37;
      v38 = v35[6] ^ v33;
      *v15 = v38;
      v39 = v35[8] ^ v33;
      *v27 = v39;
      v40 = v35[10] ^ v33;
      *v16 = v40;
      v41 = v35[12] ^ v33;
      *v28 = v41;
      v42 = v35[14] ^ v33;
    }

    else
    {
      *v13 = v34;
      v45 = (a2 + 4 * v5);
      v36 = v45[2];
      *v14 = v36;
      v37 = v45[4];
      *v26 = v37;
      v38 = v45[6];
      *v15 = v38;
      v39 = v45[8];
      *v27 = v39;
      v40 = v45[10];
      *v16 = v40;
      v41 = v45[12];
      *v28 = v41;
      v42 = v45[14];
    }

    *v17 = v42;
    *v21 = v34;
    *v20 = v34;
    *v22 = 0;
    if (v298)
    {
      v46 = v34;
    }

    else
    {
      v46 = v34;
      if (v36 < v34)
      {
        *v22 = 1;
        *v20 = v36;
        v46 = v36;
      }

      if (v34 >= v36)
      {
        v47 = v21;
      }

      else
      {
        v47 = v14;
      }

      v34 = *v47;
      *v21 = v34;
    }

    a2 = v29;
    if (v299)
    {
      if (v297)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v37 < v46)
      {
        *v22 = 2;
        *v20 = v37;
        v46 = v37;
      }

      if (v34 >= v37)
      {
        v48 = v21;
      }

      else
      {
        v48 = v26;
      }

      v34 = *v48;
      *v21 = v34;
      if (v297)
      {
LABEL_69:
        if (v296)
        {
          goto LABEL_70;
        }

        goto LABEL_84;
      }
    }

    if (v38 < v46)
    {
      *v22 = 3;
      *v20 = v38;
      v46 = v38;
    }

    if (v34 >= v38)
    {
      v49 = v21;
    }

    else
    {
      v49 = v15;
    }

    v34 = *v49;
    *v21 = v34;
    if (v296)
    {
LABEL_70:
      if (v294)
      {
        goto LABEL_96;
      }

LABEL_90:
      if (v40 < v46)
      {
        *v22 = 5;
        *v20 = v40;
        v46 = v40;
      }

      if (v34 >= v40)
      {
        v51 = v21;
      }

      else
      {
        v51 = v16;
      }

      v34 = *v51;
      *v21 = v34;
      goto LABEL_96;
    }

LABEL_84:
    if (v39 < v46)
    {
      *v22 = 4;
      *v20 = v39;
      v46 = v39;
    }

    if (v34 >= v39)
    {
      v50 = v21;
    }

    else
    {
      v50 = v27;
    }

    v34 = *v50;
    *v21 = v34;
    if (!v294)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v292;
    if (!v295)
    {
      if (v41 < v46)
      {
        *v22 = 6;
        *v20 = v41;
        v46 = v41;
      }

      if (v34 >= v41)
      {
        v52 = v21;
      }

      else
      {
        v52 = v28;
      }

      v34 = *v52;
      *v21 = v34;
    }

    if (!v293)
    {
      if (v42 < v46)
      {
        *v22 = 7;
        *v20 = v42;
        v46 = v42;
      }

      if (v34 >= v42)
      {
        v53 = v21;
      }

      else
      {
        v53 = v17;
      }

      v34 = *v53;
      *v21 = *v53;
    }

    v54 = v34 - v46;
    v55 = __clz(v34 - v46);
    v56 = 32 - v55;
    if (v32 <= 11)
    {
      if (v32 != 2)
      {
        if (v32 == 8)
        {
          v58 = 1;
          goto LABEL_133;
        }

        if (v32 == 10)
        {
          if (v55 - 29 < 3)
          {
            v56 = 3;
          }

          goto LABEL_132;
        }

        goto LABEL_125;
      }

      v57 = v55 == 31;
      goto LABEL_130;
    }

    if (v32 != 12)
    {
      if (v32 != 16)
      {
        if (v32 == 32)
        {
          v56 -= v56 >> 1;
LABEL_132:
          v58 = -1;
          goto LABEL_133;
        }

LABEL_125:
        v58 = 0;
        goto LABEL_133;
      }

      v57 = v55 == 31 && v34 == 0xFFFF;
LABEL_130:
      if (v57)
      {
        v56 = 2;
      }

      goto LABEL_132;
    }

    if ((v55 & 0x3C) == 0x1C)
    {
      v56 = 4;
    }

    v58 = -2;
LABEL_133:
    v59 = v56 + v58;
    v60 = v59 & ~(v59 >> 31);
    if (v34 == v46 && (v32 - 8) <= 4 && v59 <= 2)
    {
      if (v46)
      {
        v60 = (v46 ^ (-1 << v32)) != 0xFFFFFFFF || v32 > 0xB;
      }

      else
      {
        v60 = 0;
      }
    }

    *v18 = v60;
    if ((v292 | 2) == 3)
    {
      v61 = 0;
      if (v46 < v33 && v34 >= v33)
      {
        v61 = kDQuadParamTable[160 * v30 + 8 + 10 * v60] == 0;
      }
    }

    else
    {
      v61 = 0;
    }

    if (v60 >= kDquadTransition[v30] || v61)
    {
      v62 = kDQuadParamTable[160 * v30 + 4 + 10 * v60] - v61 + *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v30 + 1);
      if (v61)
      {
        v63 = 0;
      }

      else
      {
        v63 = -2;
      }

      v68 = v32 >= v62;
      v64 = v32 - v62;
      v91 = v64 != 0 && v68;
      v65 = v46 & ~(-1 << v64);
      if (!v91)
      {
        v65 = 0;
      }

      v66 = v65 + v63;
      v91 = v66 < 1;
      v67 = __clz(v66 + v54);
      v68 = v91 || v67 >= v55;
      if (v68)
      {
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *v18 = ++v60;
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      v69 = kDquadMaxMode[v30];
      if (v69 >= v60)
      {
        v69 = v60;
      }

      *v18 = v69;
    }

LABEL_22:
    v25 = 0;
    v19 = &v316;
    v20 = &v314;
    v21 = &v312;
    v22 = &v310;
    v23 = &v308;
    v24 = v306;
    v14 = &v335;
    v13 = &v333;
    v15 = &v339;
    v26 = &v337;
    v16 = &v343;
    v27 = &v341;
    v17 = &v347;
    v28 = &v345;
    v18 = &v349;
    v5 = 1u;
  }

  while ((v31 & 1) != 0);
  if (a5)
  {
    v70 = a4 == 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v70;
  v286 = v71;
  v72 = v309;
  v73 = v348;
  v74 = v349;
  v76 = v349 >= v348;
  v77 = v308;
  v78 = kDQuadParamTable[160 * v308 + 6 + 10 * v349];
  v320 = kDQuadParamTable[160 * v309 + 6 + 10 * v348];
  v75 = v320;
  v321 = v78;
  v322[0] = v320;
  v322[1] = v78;
  if (*(&v348 + (v349 >= v348)) == *(&v348 + (v349 < v348)))
  {
    v79 = v320;
  }

  else
  {
    v80 = v322[v349 < v348];
    v79 = v320;
    if (v80 >= 1)
    {
      *(&v320 + (v349 < v348)) = 0;
      *(&v320 + v76) += v80;
      v79 = v320;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v83 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v72 + 1);
  v84 = v81[4];
  LODWORD(v81) = v81[5];
  v85 = v84 + v83;
  v305 = v85;
  v86 = v81 + v83;
  v303 = v86;
  v87 = v79 - v75;
  if (v87 < 0)
  {
    v89 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v89[7] < -v87)
    {
      v303 = --v86;
      if (!v89[8])
      {
        v88 = -1;
LABEL_177:
        v305 = v88 + v85;
      }
    }
  }

  else if (v87)
  {
    v86 += v87;
    v303 = v86;
    v88 = v87;
    goto LABEL_177;
  }

  v91 = v72 == 5 && v73 == 1 && v87 < 2;
  v92 = v91;
  if (v292 == 4)
  {
    v93 = 1 << (v317 - 1);
    if (v72 == 3)
    {
      v94 = -31745;
    }

    else
    {
      v94 = -1;
    }

    if (v72 == 4)
    {
      v95 = -2139095041;
    }

    else
    {
      v95 = v94;
    }

    if (v286)
    {
      if (v298)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v334 | v95) == 0xFFFFFFFF || v334 == v93)
      {
        v92 = 1;
      }

      if (!v299)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v297)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v338 | v95) == 0xFFFFFFFF || v338 == v93)
      {
        v92 = 1;
      }

      if (!v296)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v294)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v342 | v95) == 0xFFFFFFFF || v342 == v93)
      {
        v92 = 1;
      }

      if (!v295)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v293)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v332 | v95) == 0xFFFFFFFF || v332 == v93)
      {
        v92 = 1;
      }

      if (!v298)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v299)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v336 | v95) == 0xFFFFFFFF || v336 == v93)
      {
        v92 = 1;
      }

      if (!v297)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v296)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v340 | v95) == 0xFFFFFFFF || v340 == v93)
      {
        v92 = 1;
      }

      if (!v294)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v295)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v344 | v95) == 0xFFFFFFFF || v344 == v93)
      {
        v92 = 1;
      }

      if (!v293)
      {
LABEL_204:
        if ((v346 | v95) == 0xFFFFFFFF || v346 == v93)
        {
          v92 = 1;
        }
      }
    }
  }

  v91 = v82 >> v86 > 4;
  v97 = v286;
  if (v91)
  {
    v97 = 1;
  }

  v98 = v97 | v92;
  v99 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v100 = *(v99 + 1);
  v101 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v77 + 1);
  v102 = v99[5];
  v103 = v99[4] + v101;
  v304 = v103;
  v104 = v102 + v101;
  v302 = v102 + v101;
  v105 = v321 - v78;
  if (v105 < 0)
  {
    v107 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v107[7] < -v105)
    {
      v302 = --v104;
      if (!v107[8])
      {
        v106 = -1;
LABEL_216:
        v304 = v106 + v103;
      }
    }
  }

  else if (v105)
  {
    v104 += v105;
    v302 = v104;
    v106 = v105;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v98 |= v105 < 2;
  }

  v282 = v73;
  if (v292 == 4)
  {
    v108 = 1 << (v316 - 1);
    if (v77 == 3)
    {
      v109 = -31745;
    }

    else
    {
      v109 = -1;
    }

    if (v77 == 4)
    {
      v110 = -2139095041;
    }

    else
    {
      v110 = v109;
    }

    if (v286)
    {
      if (v298)
      {
        goto LABEL_231;
      }

LABEL_402:
      v206 = (v335 | v110) == 0xFFFFFFFF || v335 == v108;
      v98 |= v206;
      if (!v299)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v297)
      {
        goto LABEL_233;
      }

LABEL_416:
      v210 = (v339 | v110) == 0xFFFFFFFF || v339 == v108;
      v98 |= v210;
      if (!v296)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v294)
      {
        goto LABEL_235;
      }

LABEL_430:
      v214 = (v343 | v110) == 0xFFFFFFFF || v343 == v108;
      v98 |= v214;
      if (v295)
      {
        goto LABEL_243;
      }

LABEL_236:
      v112 = (v345 | v110) == 0xFFFFFFFF || v345 == v108;
      v98 |= v112;
      goto LABEL_243;
    }

    v204 = (v333 | v110) == 0xFFFFFFFF || v333 == v108;
    v98 |= v204;
    if (!v298)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v299)
    {
      goto LABEL_232;
    }

LABEL_409:
    v208 = (v337 | v110) == 0xFFFFFFFF || v337 == v108;
    v98 |= v208;
    if (!v297)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v296)
    {
      goto LABEL_234;
    }

LABEL_423:
    v212 = (v341 | v110) == 0xFFFFFFFF || v341 == v108;
    v98 |= v212;
    if (!v294)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v295)
    {
      goto LABEL_236;
    }

LABEL_243:
    v113 = &v336;
    v114 = v324;
    if (!v293)
    {
      v116 = (v347 | v110) == 0xFFFFFFFF || v347 == v108;
      v98 |= v116;
    }

    v284 = v98;
  }

  else
  {
    v284 = v98;
    v113 = &v336;
    v114 = v324;
  }

  v117 = 0;
  v118 = v286;
  if (v100 >> v104 > 4)
  {
    v118 = 1;
  }

  v283 = v118;
  v301 = 0;
  v300 = 0;
  v119 = &v317;
  v120 = &v315;
  v319 = 0;
  v291 = &v311;
  v121 = &v348;
  v122 = &v309;
  v289 = v307;
  v123 = &v305;
  v124 = &v303;
  memset(v318, 0, sizeof(v318));
  v125 = &v301;
  v126 = 1;
  v127 = v323;
  v128 = &v332;
  v129 = &v327 + 4;
  v130 = &v326 + 4;
  v131 = &v327;
  v133 = &v325 + 4;
  v132 = &v326;
  v134 = &v338;
  v135 = &v325;
  v136 = &v334;
  v138 = &v342;
  v137 = &v340;
  v140 = &v346;
  v139 = &v344;
  do
  {
    v141 = 0;
    v142 = 0;
    v143 = *v119;
    if (v143 >= *v123)
    {
      v144 = *v123;
    }

    else
    {
      v144 = v143;
    }

    *v123 = v144;
    v145 = &kDQuadParamTable[160 * *v122 + 10 * *v121];
    if (v145[5])
    {
      v146 = v143;
    }

    else
    {
      v146 = 0;
    }

    v147 = *v124;
    if (v146 < *v124)
    {
      v147 = v146;
    }

    v290 = v126;
    *v124 = v147;
    v148 = -1 << v143;
    v149 = *(v145 + 1);
    v150 = *v120 & (-1 << (v143 - v144));
    *v125 = v150;
    v151 = v149 >> v147;
    v152 = *v128 - v150;
    if (v286)
    {
      v152 = 0;
    }

    *v127 = v152;
    v153 = *v136 - v150;
    if (v298)
    {
      v153 = 0;
    }

    *v114 = v153;
    v154 = *v113 - v150;
    if (v299)
    {
      v154 = 0;
    }

    *v135 = v154;
    v155 = *v134 - v150;
    if (v297)
    {
      v155 = 0;
    }

    *v133 = v155;
    v156 = *v137 - v150;
    if (v296)
    {
      v156 = 0;
    }

    *v132 = v156;
    v157 = *v138 - v150;
    if (v294)
    {
      v157 = 0;
    }

    *v130 = v157;
    v158 = *v139 - v150;
    if (v295)
    {
      v158 = 0;
    }

    *v131 = v158;
    v159 = *v140 - v150;
    if (v293)
    {
      v159 = 0;
    }

    *v129 = v159;
    if (v151 <= 1)
    {
      v160 = 1;
    }

    else
    {
      v160 = v149 >> v147;
    }

    v161 = &v323[32 * v117];
    v162 = 4 * v117;
    v163 = 4 * *v291;
    v164 = v318 + 28 * v117;
    v165 = &byte_29D2F3081;
    do
    {
      if (v163 != v141)
      {
        if (v147)
        {
          v166 = *&v161[v141] / v160;
        }

        else
        {
          LODWORD(v166) = 0;
        }

        *&v164[4 * v142] = v166;
        if (v151 >= 2)
        {
          v167 = *&v161[v141];
          if (v167)
          {
            if (v167 / v160 * v160 == v167 && ((v167 / v160) & 1) != 0)
            {
              if (v150 || v166 != 1)
              {
                if ((v292 | 2) != 3 || (v169 = *(&v332 + v162), v170 = *v289, v169 != v170) && ((v292 | 2) != 3 || v160 + v170 != v169))
                {
                  LODWORD(v166) = v166 - 1;
                  *&v164[4 * v142] = v166;
                }
              }

              else
              {
                LODWORD(v166) = 1;
              }
            }
          }
        }

        if (v166 >> v147 || (*(&v332 + v162) ^ v148) == 0xFFFFFFFF)
        {
          *&v164[4 * v142] = ~(-1 << v147);
        }

        if (*v165 >= a5 || *(v165 - 1) >= a4)
        {
          *&v164[4 * v142] = 0;
        }

        ++v142;
      }

      v141 += 4;
      v162 += 8;
      v165 += 2;
    }

    while (v141 != 32);
    v126 = 0;
    v119 = &v316;
    v120 = &v314;
    v291 = &v310;
    v122 = &v308;
    v289 = v306;
    v123 = &v304;
    v124 = &v302;
    v125 = &v300;
    v114 = &v328 + 4;
    v127 = &v328;
    v133 = &v329 + 4;
    v135 = &v329;
    v130 = &v330 + 4;
    v132 = &v330;
    v129 = &v331 + 4;
    v131 = &v331;
    v136 = &v335;
    v128 = &v333;
    v134 = &v339;
    v113 = &v337;
    v138 = &v343;
    v137 = &v341;
    v140 = &v347;
    v139 = &v345;
    v121 = &v349;
    v117 = 1;
  }

  while ((v290 & 1) != 0);
  v171 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v172 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  if ((v283 | v284))
  {
    v173 = 0;
    v174 = 0;
    v175 = v317;
    v176 = v317 - 2;
    v177 = v316;
    v178 = v316 - 2;
    v179 = 8 * (a1 & 7);
    while (1)
    {
      v180 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v173;
      v181 = v180[1] < a5 && a4 > *v180;
      v182 = !v181;
      if (v181)
      {
        v183 = *(&v332 + 2 * v173) >> 2;
        if (v176 > 0x100)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v183 = 0;
        if (v176 > 0x100)
        {
          goto LABEL_331;
        }
      }

      if (v175 != 2 && v179 - v172 + (v174 << 6) + v176 <= 0x80)
      {
        v184 = 0;
        v185 = v176;
        do
        {
          v186 = 64 - v179;
          if (64 - v179 >= v185)
          {
            v186 = v185;
          }

          v171[v174] |= ((v183 >> v184) & ~(-1 << v186)) << v179;
          v184 += v186;
          v187 = v186 + v179;
          v174 += v187 >> 6;
          v179 = v187 & 0x3F;
          v185 -= v186;
        }

        while (v185);
      }

LABEL_331:
      if (v182)
      {
        v188 = 0;
        if (v178 <= 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v188 = *(&v332 + 2 * v173 + 1) >> 2;
        if (v178 <= 0x100)
        {
LABEL_335:
          if (v177 != 2 && v179 - v172 + (v174 << 6) + v178 <= 0x80)
          {
            v189 = 0;
            v190 = v178;
            do
            {
              v191 = 64 - v179;
              if (64 - v179 >= v190)
              {
                v191 = v190;
              }

              v171[v174] |= ((v188 >> v189) & ~(-1 << v191)) << v179;
              v189 += v191;
              v192 = v191 + v179;
              v174 += v192 >> 6;
              v179 = v192 & 0x3F;
              v190 -= v191;
            }

            while (v190);
          }
        }
      }

      if (++v173 == 8)
      {
        return (v283 | v284) & 1;
      }
    }
  }

  if (v315 | v282)
  {
    if (v282 <= 2)
    {
      v193 = 0;
      v194 = 0;
      v195 = v282 + 1;
      goto LABEL_439;
    }

    v216 = 0;
    v195 = 0;
    v215 = 0;
    v193 = (v282 + 6) & 7;
    v194 = 1;
  }

  else
  {
    v193 = 0;
    v194 = 0;
    v195 = 0;
LABEL_439:
    v215 = 1;
    v216 = 2;
  }

  v217 = (v193 << v172) | *v171;
  *v171 = v217;
  v218 = v172 | 3;
  v219 = v349;
  if (v314 | v349)
  {
    if (v349 < 3)
    {
      v220 = 0;
      v221 = 0;
      v222 = v349 + 1;
      goto LABEL_445;
    }

    v224 = 0;
    v222 = 0;
    v223 = 0;
    v220 = (v349 + 6) & 7;
    v221 = 1;
  }

  else
  {
    v220 = 0;
    v221 = 0;
    v222 = 0;
LABEL_445:
    v223 = 1;
    v224 = 2;
  }

  if ((v218 - v172) <= 0x7D)
  {
    *v171 = (v220 << v218) | v217;
    v218 = v172 | 6;
  }

  if (!v215)
  {
    v226 = 0;
    v227 = 6;
    if (v223)
    {
      goto LABEL_462;
    }

LABEL_455:
    v228 = v317;
    if (!v282)
    {
      goto LABEL_470;
    }

    goto LABEL_474;
  }

  v225 = v216;
  if (v218 - v172 + v216 > 0x80)
  {
    v194 = 1;
  }

  if (v194)
  {
    v226 = 0;
  }

  else
  {
    v226 = 0;
    v229 = 0;
    do
    {
      v230 = 64 - v218;
      if (64 - v218 >= v225)
      {
        v230 = v225;
      }

      v171[v226] |= ((v195 >> v229) & ~(-1 << v230)) << v218;
      v229 += v230;
      v231 = v230 + v218;
      v226 += v231 >> 6;
      v218 = v231 & 0x3F;
      v225 -= v230;
    }

    while (v225);
  }

  v227 = v216 + 6;
  if (!v223)
  {
    goto LABEL_455;
  }

LABEL_462:
  v232 = v224;
  if (v218 - v172 + (v226 << 6) + v224 > 0x80)
  {
    v221 = 1;
  }

  if ((v221 & 1) == 0)
  {
    v233 = 0;
    do
    {
      v234 = 64 - v218;
      if (64 - v218 >= v232)
      {
        v234 = v232;
      }

      v171[v226] |= ((v222 >> v233) & ~(-1 << v234)) << v218;
      v233 += v234;
      v235 = v234 + v218;
      v226 += v235 >> 6;
      v218 = v235 & 0x3F;
      v232 -= v234;
    }

    while (v232);
  }

  v227 += v224;
  v228 = v317;
  if (!v282)
  {
LABEL_470:
    if (v228 != 2 && v228 < 0x10)
    {
      v236 = v316;
      if (!v219)
      {
        goto LABEL_535;
      }

LABEL_482:
      v243 = v304;
      if (v304 <= 0x100 && v304 && v218 - v172 + (v226 << 6) + v304 <= 0x80)
      {
        v244 = 0;
        v245 = v300 >> (v236 - v304);
        v246 = v304;
        do
        {
          v247 = 64 - v218;
          if (64 - v218 >= v246)
          {
            v247 = v246;
          }

          v171[v226] |= ((v245 >> v244) & ~(-1 << v247)) << v218;
          v244 += v247;
          v248 = v247 + v218;
          v226 += v248 >> 6;
          v218 = v248 & 0x3F;
          v246 -= v247;
        }

        while (v246);
      }

      v227 += v243;
      goto LABEL_490;
    }
  }

LABEL_474:
  v237 = v305;
  if (v305 <= 0x100 && v305 && v218 - v172 + (v226 << 6) + v305 <= 0x80)
  {
    v238 = 0;
    v239 = v301 >> (v228 - v305);
    v240 = v305;
    do
    {
      v241 = 64 - v218;
      if (64 - v218 >= v240)
      {
        v241 = v240;
      }

      v171[v226] |= ((v239 >> v238) & ~(-1 << v241)) << v218;
      v238 += v241;
      v242 = v241 + v218;
      v226 += v242 >> 6;
      v218 = v242 & 0x3F;
      v240 -= v241;
    }

    while (v240);
  }

  v227 += v237;
  v236 = v316;
  if (v219)
  {
    goto LABEL_482;
  }

LABEL_535:
  if (v236 == 2 || v236 >= 0x10)
  {
    goto LABEL_482;
  }

LABEL_490:
  v249 = v303;
  if (v303)
  {
    if ((v218 - v172 + (v226 << 6) + 3) <= 0x80)
    {
      v250 = 0;
      v251 = v311;
      v252 = 3;
      do
      {
        v253 = 64 - v218;
        if (64 - v218 >= v252)
        {
          v253 = v252;
        }

        v171[v226] |= ((v251 >> v250) & ~(-1 << v253)) << v218;
        v250 += v253;
        v254 = v253 + v218;
        v226 += v254 >> 6;
        v218 = v254 & 0x3F;
        v252 -= v253;
      }

      while (v252);
    }

    v227 += 3;
  }

  v255 = v302;
  if (v302)
  {
    if ((v218 - v172 + (v226 << 6) + 3) <= 0x80)
    {
      v256 = 0;
      v257 = v310;
      v258 = 3;
      do
      {
        v259 = 64 - v218;
        if (64 - v218 >= v258)
        {
          v259 = v258;
        }

        v171[v226] |= ((v257 >> v256) & ~(-1 << v259)) << v218;
        v256 += v259;
        v260 = v259 + v218;
        v226 += v260 >> 6;
        v218 = v260 & 0x3F;
        v258 -= v259;
      }

      while (v258);
    }

    v227 += 3;
  }

  v261 = 128 - v227;
  v262 = (128 - v227) / 7u;
  v263 = v261 % 7;
  if ((v263 - 257) >= 0xFFFFFF00 && v218 - v172 + (v226 << 6) + v263 <= 0x80)
  {
    do
    {
      v264 = 64 - v218;
      if (64 - v218 >= v263)
      {
        v264 = v263;
      }

      v265 = v264 + v218;
      v226 += v265 >> 6;
      v218 = v265 & 0x3F;
      v263 -= v264;
    }

    while (v263);
  }

  v266 = 0;
  v267 = v255 + v249;
  while (2)
  {
    if (v249 && v249 <= 0x100 && v218 - v172 + (v226 << 6) + v249 <= 0x80)
    {
      v268 = 0;
      v269 = *(v318 + v266);
      v270 = v249;
      do
      {
        v271 = 64 - v218;
        if (64 - v218 >= v270)
        {
          v271 = v270;
        }

        v171[v226] |= ((v269 >> v268) & ~(-1 << v271)) << v218;
        v268 += v271;
        v272 = v271 + v218;
        v226 += v272 >> 6;
        v218 = v272 & 0x3F;
        v270 -= v271;
      }

      while (v270);
    }

    if (v255)
    {
      if (v255 <= 0x100 && v218 - v172 + (v226 << 6) + v255 <= 0x80)
      {
        v273 = 0;
        v274 = *(&v318[1] + v266 + 3);
        v275 = v255;
        do
        {
          v276 = 64 - v218;
          if (64 - v218 >= v275)
          {
            v276 = v275;
          }

          v171[v226] |= ((v274 >> v273) & ~(-1 << v276)) << v218;
          v273 += v276;
          v277 = v276 + v218;
          v226 += v277 >> 6;
          v218 = v277 & 0x3F;
          v275 -= v276;
        }

        while (v275);
      }

      v278 = v262 - v267;
      if (v262 != v267)
      {
LABEL_528:
        if (v278 <= 0x100 && v218 - v172 + (v226 << 6) + v278 <= 0x80)
        {
          do
          {
            v279 = 64 - v218;
            if (64 - v218 >= v278)
            {
              v279 = v278;
            }

            v280 = v279 + v218;
            v226 += v280 >> 6;
            v218 = v280 & 0x3F;
            v278 -= v279;
          }

          while (v278);
        }
      }
    }

    else
    {
      v278 = v262 - v249;
      if (v262 != v249)
      {
        goto LABEL_528;
      }
    }

    if (++v266 != 7)
    {
      continue;
    }

    return (v283 | v284) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 9;
  v9 = v6;
  do
  {
    if ((v9 - v6 + (v4 << 6) - 121) >= 0xFFFFFFFFFFFFFF7FLL)
    {
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

        v13 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + v9;
        v4 += v17 >> 6;
        v9 = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
      v12 = 4 * v13;
    }

    else
    {
      v12 = 0;
    }

    v18 = ((v12 << 29 >> 31) + 2) | v12;
    if (v12 == 1020)
    {
      v18 = 1023;
    }

    if (!v12)
    {
      v18 = 0;
    }

    if (v12 == 512 && v7 == 1)
    {
      v18 = v12;
    }

    if (a3 != 4)
    {
      v12 = v18;
    }

    *(a2 + 8 * v3) = v12 ^ v8;
    if ((v9 - v6 + (v4 << 6) - 121) < 0xFFFFFFFFFFFFFF7FLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v25 = v10 == 512 && v7 == 1;
      if (!v25 && v10)
      {
        if (v10 == 1020)
        {
          v10 = 1023;
        }

        else
        {
          v10 |= (v10 << 29 >> 31) + 2;
        }
      }

      goto LABEL_3;
    }

    v20 = 0;
    v21 = 0;
    v22 = 8;
    do
    {
      v23 = 64 - v9;
      if (64 - v9 >= v22)
      {
        v23 = v22;
      }

      v20 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v23)) << v21;
      v21 += v23;
      v24 = v23 + v9;
      v4 += v24 >> 6;
      v9 = v24 & 0x3F;
      v22 -= v23;
    }

    while (v22);
    v10 = 4 * v20;
    if (a3 != 4)
    {
      goto LABEL_30;
    }

LABEL_3:
    result = v10 ^ v8;
    *(a2 + 8 * v3++ + 4) = result;
  }

  while (v3 != 8);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v172 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x7D)
  {
    v8 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v8 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x7D)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 & 7;
  if ((v6 & 7) == 0)
  {
    if ((v8 - v4 - 127) < 0xFFFFFFFFFFFFFF7FLL)
    {
      v11 = 0;
LABEL_12:
      v12 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    v11 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 2;
    do
    {
      v154 = 64 - v8;
      if (64 - v8 >= v153)
      {
        v154 = v153;
      }

      v151 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v154)) << v152;
      v152 += v154;
      v11 += (v154 + v8) >> 6;
      v8 = (v154 + v8) & 0x3F;
      v153 -= v154;
    }

    while (v153);
    v155 = v151 & 3;
    if (v155 > 1)
    {
      v12 = 0;
      if (v155 == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      if (!v155)
      {
        goto LABEL_12;
      }

      v13 = 0;
      v12 = 1023;
    }

LABEL_13:
    v14 = 8;
    v170 = v13;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  v13 = v10 + 2;
  v14 = 6;
  v170 = v10 + 2;
  if (v9)
  {
LABEL_9:
    v162 = 0;
    v15 = v9 + 2;
    goto LABEL_17;
  }

LABEL_14:
  if ((v8 - v4 + (v11 << 6) - 127) < 0xFFFFFFFFFFFFFF7FLL)
  {
    v14 += 2;
LABEL_16:
    v162 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  v156 = 0;
  v157 = 0;
  v158 = 2;
  do
  {
    v159 = 64 - v8;
    if (64 - v8 >= v158)
    {
      v159 = v158;
    }

    v156 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v159)) << v157;
    v157 += v159;
    v160 = v159 + v8;
    v11 += v160 >> 6;
    v8 = v160 & 0x3F;
    v158 -= v159;
  }

  while (v158);
  v14 += 2;
  v161 = v156 & 3;
  if (v161 > 1)
  {
    v162 = 0;
    if (v161 == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    if (!v161)
    {
      goto LABEL_16;
    }

    v15 = 0;
    v162 = 1023;
  }

LABEL_17:
  v171 = v15;
  v17 = v15 >= v13;
  v18 = v15 < v13;
  v19 = v15;
  v20 = dword_29D2F3370[10 * v15 + 6];
  v167 = dword_29D2F3370[10 * v13 + 6];
  v16 = v167;
  v168 = v20;
  v169[0] = v167;
  v169[1] = v20;
  if (*(&v170 + (v15 >= v13)) == *(&v170 + (v15 < v13)))
  {
    v21 = v167;
  }

  else
  {
    v22 = v169[v15 < v13];
    v21 = v167;
    if (v22 >= 1)
    {
      *(&v167 + v18) = 0;
      *(&v167 + v17) += v22;
      v21 = v167;
    }
  }

  v23 = kDQuadParamTable;
  v24 = &kDQuadParamTable[10 * v13];
  v25 = v24[164] + 3;
  v26 = v24[165];
  v27 = v26 + 3;
  v28 = v21 - v16;
  if (v28 < 0)
  {
    v29 = &kDQuadParamTable[10 * v13];
    if (v29[167] >= -v28)
    {
      goto LABEL_27;
    }

    v27 = v26 + 2;
    if (v29[168])
    {
      goto LABEL_27;
    }

    v28 = -1;
  }

  else
  {
    if (!v28)
    {
      goto LABEL_27;
    }

    v27 += v28;
  }

  v25 += v28;
LABEL_27:
  if (v25 >= 0xA)
  {
    v30 = 10;
  }

  else
  {
    v30 = v25;
  }

  if (v26)
  {
    v31 = 10;
  }

  else
  {
    v31 = 0;
  }

  if (v31 >= v27)
  {
    v32 = v27;
  }

  else
  {
    v32 = v31;
  }

  v33 = &kDQuadParamTable[10 * v19];
  v34 = v33[164] + 3;
  v35 = v33[165];
  v36 = v35 + 3;
  v37 = v168 - v20;
  if (v37 < 0)
  {
    v38 = -v37;
    v39 = &kDQuadParamTable[10 * v19];
    if (v39[167] < v38)
    {
      v36 = v35 + 2;
      if (!v39[168])
      {
        v37 = -1;
        goto LABEL_39;
      }
    }
  }

  else if (v37)
  {
    v36 += v37;
LABEL_39:
    v34 += v37;
  }

  if (v34 >= 0xA)
  {
    v40 = 10;
  }

  else
  {
    v40 = v34;
  }

  if (v35)
  {
    LODWORD(v41) = 10;
  }

  else
  {
    LODWORD(v41) = 0;
  }

  if (v41 >= v36)
  {
    v41 = v36;
  }

  else
  {
    v41 = v41;
  }

  if (v13)
  {
    v42 = 0;
    if (v25 && (v8 - v4 + (v11 << 6) + v30) <= 0x80)
    {
      v42 = 0;
      v43 = 0;
      v44 = v30;
      do
      {
        v45 = 64 - v8;
        if (64 - v8 >= v44)
        {
          v45 = v44;
        }

        v42 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v45)) << v43;
        v43 += v45;
        v46 = v45 + v8;
        v11 += v46 >> 6;
        v8 = v46 & 0x3F;
        v44 -= v45;
      }

      while (v44);
    }

    v12 = v42 << (10 - v30);
    v14 += v30;
  }

  if (v19)
  {
    v47 = 0;
    if (v34 && (v8 - v4 + (v11 << 6) + v40) <= 0x80)
    {
      v47 = 0;
      v48 = 0;
      v49 = v40;
      do
      {
        v50 = 64 - v8;
        if (64 - v8 >= v49)
        {
          v50 = v49;
        }

        v47 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v50)) << v48;
        v48 += v50;
        v51 = v50 + v8;
        v11 += v51 >> 6;
        v8 = v51 & 0x3F;
        v49 -= v50;
      }

      while (v49);
    }

    v162 = v47 << (10 - v40);
    v14 += v40;
  }

  v163 = 0;
  v164 = 0;
  if (v32)
  {
    if ((v8 - v4 + (v11 << 6) + 3) <= 0x80)
    {
      v52 = 0;
      v53 = 0;
      v54 = 3;
      do
      {
        v55 = 64 - v8;
        if (64 - v8 >= v54)
        {
          v55 = v54;
        }

        v52 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v55)) << v53;
        v53 += v55;
        v56 = v55 + v8;
        v11 += v56 >> 6;
        v8 = v56 & 0x3F;
        v54 -= v55;
      }

      while (v54);
    }

    else
    {
      v52 = 0;
    }

    v164 = v52;
    v14 += 3;
  }

  if (v41)
  {
    if ((v8 - v4 + (v11 << 6) + 3) <= 0x80)
    {
      v57 = 0;
      v58 = 0;
      v59 = 3;
      do
      {
        v60 = 64 - v8;
        if (64 - v8 >= v59)
        {
          v60 = v59;
        }

        v57 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v60)) << v58;
        v58 += v60;
        v61 = v60 + v8;
        v11 += v61 >> 6;
        v8 = v61 & 0x3F;
        v59 -= v60;
      }

      while (v59);
    }

    else
    {
      v57 = 0;
    }

    v163 = v57;
    v14 += 3;
  }

  v62 = 0;
  v63 = a3 & 0xFFFFFFFD;
  v64 = 128 - v14;
  v65 = (128 - v14) / 7u;
  v66 = (v8 | (v11 << 6)) + v64 % 7;
  v166 = 0;
  memset(v165, 0, sizeof(v165));
  do
  {
    v68 = v66 >> 6;
    v69 = v66 & 0x3F;
    if (v32)
    {
      if (v69 - v4 + (v66 & 0xFFFFFFFFFFFFFFC0) + v32 <= 0x80)
      {
        v70 = 0;
        v71 = 0;
        v72 = v32;
        do
        {
          v73 = 64 - v69;
          if (64 - v69 >= v72)
          {
            v73 = v72;
          }

          v70 |= ((*(v3 + 8 * v68) >> v69) & ~(-1 << v73)) << v71;
          v71 += v73;
          v74 = v73 + v69;
          v68 += v74 >> 6;
          v69 = v74 & 0x3F;
          v72 -= v73;
        }

        while (v72);
      }

      else
      {
        v70 = 0;
      }

      *(v165 + v62) = v70;
    }

    if (v41)
    {
      if (v69 - v4 + (v68 << 6) + v41 <= 0x80)
      {
        v75 = 0;
        v76 = 0;
        v77 = v41;
        do
        {
          v78 = 64 - v69;
          if (64 - v69 >= v77)
          {
            v78 = v77;
          }

          v75 |= ((*(v3 + 8 * v68) >> v69) & ~(-1 << v78)) << v76;
          v76 += v78;
          v79 = v78 + v69;
          v68 += v79 >> 6;
          v69 = v79 & 0x3F;
          v77 -= v78;
        }

        while (v77);
      }

      else
      {
        v75 = 0;
      }

      *(&v165[1] + v62 + 3) = v75;
      v67 = v41 + v32;
    }

    else
    {
      v67 = v32;
    }

    v66 = (v69 | (v68 << 6)) + v65 - v67;
    ++v62;
  }

  while (v62 != 7);
  v80 = 0;
  v81 = &v170;
  v82 = &v164;
  result = 0x1000003FFLL;
  v84 = 1;
  v85 = v165;
  v86 = v32;
  do
  {
    v89 = v84;
    v90 = *&v23[10 * *v81 + 162];
    if (v90 >> v86 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v90 >> v86;
    }

    v92 = v91 >> 1;
    v93 = (1 << (10 - v30)) >> 1;
    if (v91 >> 1 < v93)
    {
      v93 = v91 >> 1;
    }

    v94 = v12;
    v95 = 512 - v12;
    if (v12)
    {
      v96 = v93;
    }

    else
    {
      v96 = 0;
    }

    v97 = v12 == 512;
    v98 = (a2 + 4 * v80);
    if (v86)
    {
      v99 = v23;
      v100 = v90 + v94;
      v101 = -1 << v86;
      v102 = *v82;
      v103 = v95 / v91;
      if (!*v82)
      {
        v107 = 0;
        v106 = v96;
        v105 = v97;
        goto LABEL_143;
      }

      v104 = *v85;
      v105 = v103 == v104;
      if (v94 | v104)
      {
        if (v100 >= 0x400 && (v101 ^ v104) == -1)
        {
          v107 = 1;
          v106 = 1023;
LABEL_143:
          v110 = v106 + v94;
          if (a3 != 4 || (v111 = 1023, (v110 | 0x80000000) >> 22 != 1022))
          {
            if (v110 >= 0x400)
            {
              v111 = 1023;
            }

            else
            {
              v111 = v110;
            }
          }

          v112 = v111 ^ 0x200;
          if (v105)
          {
            v112 = 0;
          }

          if (v63 != 1)
          {
            v112 = v111;
          }

          *(a2 + 4 * v80) = v112;
          if (v102 == 1)
          {
            v113 = v96;
            v114 = v97;
          }

          else
          {
            v115 = *(v165 + 7 * v80 + v107);
            v114 = v103 == v115;
            if (v94 | v115)
            {
              if (v100 >= 0x400 && (v101 ^ v115) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v113 = 1023;
              }

              else
              {
                v113 = v92 + v91 * v115;
              }
            }

            else
            {
              v113 = 0;
            }

            ++v107;
          }

          v116 = v113 + v94;
          if (a3 != 4 || (v117 = 1023, (v116 | 0x80000000) >> 22 != 1022))
          {
            if (v116 >= 0x400)
            {
              v117 = 1023;
            }

            else
            {
              v117 = v116;
            }
          }

          v118 = v117 ^ 0x200;
          if (v114)
          {
            v118 = 0;
          }

          if (v63 != 1)
          {
            v118 = v117;
          }

          v98[2] = v118;
          if (v102 == 2)
          {
            v119 = v96;
            v120 = v97;
          }

          else
          {
            v121 = *(v165 + 7 * v80 + v107);
            v120 = v103 == v121;
            if (v94 | v121)
            {
              if (v100 >= 0x400 && (v101 ^ v121) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v119 = 1023;
              }

              else
              {
                v119 = v92 + v91 * v121;
              }
            }

            else
            {
              v119 = 0;
            }

            ++v107;
          }

          v122 = v119 + v94;
          if (a3 != 4 || (v123 = 1023, (v122 | 0x80000000) >> 22 != 1022))
          {
            if (v122 >= 0x400)
            {
              v123 = 1023;
            }

            else
            {
              v123 = v122;
            }
          }

          v124 = v123 ^ 0x200;
          if (v120)
          {
            v124 = 0;
          }

          if (v63 != 1)
          {
            v124 = v123;
          }

          v98[4] = v124;
          if (v102 == 3)
          {
            v125 = v96;
            v126 = v97;
          }

          else
          {
            v127 = *(v165 + 7 * v80 + v107);
            v126 = v103 == v127;
            if (v94 | v127)
            {
              if (v100 >= 0x400 && (v101 ^ v127) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v125 = 1023;
              }

              else
              {
                v125 = v92 + v91 * v127;
              }
            }

            else
            {
              v125 = 0;
            }

            ++v107;
          }

          v128 = v125 + v94;
          if (a3 != 4 || (v129 = 1023, (v128 | 0x80000000) >> 22 != 1022))
          {
            if (v128 >= 0x400)
            {
              v129 = 1023;
            }

            else
            {
              v129 = v128;
            }
          }

          v130 = v129 ^ 0x200;
          if (v126)
          {
            v130 = 0;
          }

          if (v63 != 1)
          {
            v130 = v129;
          }

          v98[6] = v130;
          if (v102 == 4)
          {
            v131 = v96;
            v132 = v97;
          }

          else
          {
            v133 = *(v165 + 7 * v80 + v107);
            v132 = v103 == v133;
            if (v94 | v133)
            {
              if (v100 >= 0x400 && (v101 ^ v133) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v131 = 1023;
              }

              else
              {
                v131 = v92 + v91 * v133;
              }
            }

            else
            {
              v131 = 0;
            }

            ++v107;
          }

          v134 = v131 + v94;
          if (a3 != 4 || (v135 = 1023, (v134 | 0x80000000) >> 22 != 1022))
          {
            if (v134 >= 0x400)
            {
              v135 = 1023;
            }

            else
            {
              v135 = v134;
            }
          }

          v136 = v135 ^ 0x200;
          if (v132)
          {
            v136 = 0;
          }

          if (v63 != 1)
          {
            v136 = v135;
          }

          v98[8] = v136;
          if (v102 == 5)
          {
            v137 = v96;
            v138 = v97;
          }

          else
          {
            v139 = *(v165 + 7 * v80 + v107);
            v138 = v103 == v139;
            if (v94 | v139)
            {
              if (v100 >= 0x400 && (v101 ^ v139) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v137 = 1023;
              }

              else
              {
                v137 = v92 + v91 * v139;
              }
            }

            else
            {
              v137 = 0;
            }

            ++v107;
          }

          v140 = v137 + v94;
          if (a3 != 4 || (v141 = 1023, (v140 | 0x80000000) >> 22 != 1022))
          {
            if (v140 >= 0x400)
            {
              v141 = 1023;
            }

            else
            {
              v141 = v140;
            }
          }

          v142 = v141 ^ 0x200;
          if (v138)
          {
            v142 = 0;
          }

          if (v63 != 1)
          {
            v142 = v141;
          }

          v98[10] = v142;
          if (v102 == 6)
          {
            v143 = v96;
            v144 = v97;
          }

          else
          {
            v145 = *(v165 + 7 * v80 + v107);
            v144 = v103 == v145;
            if (v94 | v145)
            {
              if (v100 >= 0x400 && (v101 ^ v145) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v143 = 1023;
              }

              else
              {
                v143 = v92 + v91 * v145;
              }
            }

            else
            {
              v143 = 0;
            }

            ++v107;
          }

          v146 = v143 + v94;
          if (a3 != 4 || (v147 = 1023, (v146 | 0x80000000) >> 22 != 1022))
          {
            if (v146 >= 0x400)
            {
              v147 = 1023;
            }

            else
            {
              v147 = v146;
            }
          }

          v148 = v147 ^ 0x200;
          if (v144)
          {
            v148 = 0;
          }

          if (v63 != 1)
          {
            v148 = v147;
          }

          v98[12] = v148;
          if (v102 != 7)
          {
            v149 = *(v165 + 7 * v80 + v107);
            v97 = v103 == v149;
            if (v94 | v149)
            {
              if (v100 >= 0x400 && (v101 ^ v149) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v96 = 1023;
              }

              else
              {
                v96 = v92 + v91 * v149;
              }
            }

            else
            {
              v96 = 0;
            }
          }

          v150 = v96 + v94;
          if (a3 != 4 || (LODWORD(v87) = 1023, (v150 | 0x80000000) >> 22 != 1022))
          {
            if (v150 >= 0x400)
            {
              LODWORD(v87) = 1023;
            }

            else
            {
              LODWORD(v87) = v96 + v94;
            }
          }

          v88 = v87 ^ 0x200;
          if (v97)
          {
            v88 = 0;
          }

          if (v63 == 1)
          {
            LODWORD(v87) = v88;
          }

          v23 = v99;
          goto LABEL_111;
        }

        v106 = v92 + v91 * v104;
      }

      else
      {
        v106 = 0;
      }

      v107 = 1;
      goto LABEL_143;
    }

    if (a3 == 4)
    {
      if ((v94 & 0xFFC00000) == 0x7F800000)
      {
        LODWORD(v87) = 1023;
      }

      else
      {
        v87 = 4286578687;
        if ((v94 & 0xFFC00000) != 0xFF800000)
        {
          v87 = v94;
        }

        if (v87 >= 0x400)
        {
          LODWORD(v87) = 1023;
        }
      }
    }

    else
    {
      if (v94 >= 0x3FF)
      {
        LODWORD(v87) = 1023;
      }

      else
      {
        LODWORD(v87) = v94;
      }

      v109 = v87 ^ 0x200;
      if (v91 > v95)
      {
        v109 = 0;
      }

      if (v63 == 1)
      {
        LODWORD(v87) = v109;
      }
    }

    *v98 = v87;
    v98[2] = v87;
    v98[4] = v87;
    v98[6] = v87;
    v98[8] = v87;
    v98[10] = v87;
    v98[12] = v87;
LABEL_111:
    v84 = 0;
    v98[14] = v87;
    v82 = &v163;
    v85 = &v165[1] + 3;
    v12 = v162;
    v86 = v41;
    LOBYTE(v30) = v40;
    v81 = &v171;
    v80 = 1;
  }

  while ((v89 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v528 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v8 = 0;
    v9 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v10 = &a1->i8[a2];
    *v10 = 0u;
    *(v10 + 1) = 0u;
    v11 = &a1->i8[2 * a2];
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v12 = &a1->i8[2 * a2 + a2];
LABEL_6:
    *v12 = v9;
    *(v12 + 1) = v9;
    return v8;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v512, a5);
    }

    v474 = v514;
    v475 = v512;
    v476 = v515;
    v477 = v513;
    v17 = v516;
    v18 = v517;
    v19 = v519;
    v478 = v518;
    v470 = v522;
    v471 = v520;
    v472 = v523;
    v473 = v521;
    v21 = v524;
    v20 = v525;
    v23 = v526;
    v22 = v527;
    v24 = a3 + 16;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v24, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v24, &v512, a5);
    }

    v508 = v527;
    v509 = v519;
    v506 = v525;
    v507 = v517;
    v504 = v526;
    v505 = v518;
    v502 = v524;
    v503 = v516;
    v500 = v523;
    v501 = v515;
    v498 = v521;
    v499 = v513;
    v496 = v522;
    v497 = v514;
    v494 = v520;
    v495 = v512;
    v492 = v20;
    v493 = v22;
    v490 = v23;
    v491 = v19;
    v489 = v21;
    v479 = v18;
    v480 = v17;
    v25 = v5;
    v26 = a3 + 32;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v26, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v26, &v512, a5);
    }

    v27 = v513;
    v469 = v512;
    v28 = v514;
    v29 = v515;
    v483 = v518;
    v484 = v516;
    v488 = v519;
    v30 = v520;
    v31 = v521;
    v33 = v522;
    v32 = v523;
    v485 = v525;
    v486 = v517;
    v481 = v524;
    v482 = v526;
    v487 = v527;
    v34 = a3 + 48;
    if ((v25 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v34, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v34, &v512, a5);
    }

    v35.i16[0] = v475;
    v35.i16[1] = v474;
    v35.i16[2] = v471;
    v36.i16[0] = v477;
    v35.i16[3] = v470;
    v36.i16[1] = v476;
    v36.i16[2] = v473;
    v36.i16[3] = v472;
    v37.i16[0] = v469;
    v37.i16[1] = v28;
    v38.i16[0] = v27;
    v37.i16[2] = v30;
    v37.i16[3] = v33;
    v38.i16[1] = v29;
    v38.i16[2] = v31;
    v38.i16[3] = v32;
    v39.i16[0] = v479;
    v40.i16[0] = v480;
    v40.i16[1] = v478;
    v41.i16[0] = v512;
    v41.i16[1] = v514;
    v41.i16[2] = v520;
    v41.i16[3] = v522;
    v42.i16[0] = v513;
    v42.i16[1] = v515;
    v42.i16[2] = v521;
    v42.i16[3] = v523;
    v43.i16[0] = v516;
    v43.i16[1] = v518;
    v43.i16[2] = v524;
    v43.i16[3] = v526;
    v40.i16[2] = v489;
    v40.i16[3] = v490;
    v39.i16[1] = v491;
    *a1 = vorrq_s8(vshlq_n_s32(vmovl_u16(v36), 0x16uLL), vmovl_u16(vshl_n_s16(v35, 6uLL)));
    a1[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v38), 0x16uLL), vmovl_u16(vshl_n_s16(v37, 6uLL)));
    v39.i16[2] = v492;
    v39.i16[3] = v493;
    v35.i16[0] = v484;
    v35.i16[1] = v483;
    v35.i16[2] = v481;
    v35.i16[3] = v482;
    v44 = vorrq_s8(vshlq_n_s32(vmovl_u16(v39), 0x16uLL), vmovl_u16(vshl_n_s16(v40, 6uLL)));
    v45 = vmovl_u16(vshl_n_s16(v35, 6uLL));
    v35.i16[0] = v486;
    v35.i16[1] = v488;
    v35.i16[2] = v485;
    v35.i16[3] = v487;
    v46 = vorrq_s8(vshlq_n_s32(vmovl_u16(v35), 0x16uLL), v45);
    v45.i16[0] = v517;
    v45.i16[1] = v519;
    v45.i16[2] = v525;
    v45.i16[3] = v527;
    v47 = &a1->i8[a2];
    *v47 = v44;
    v47[1] = v46;
    v44.i16[0] = v495;
    v44.i16[1] = v497;
    v44.i16[2] = v494;
    v44.i16[3] = v496;
    v48 = &a1->i8[a2 + a2];
    v46.i16[0] = v499;
    v46.i16[1] = v501;
    v46.i16[2] = v498;
    v46.i16[3] = v500;
    *v48 = vorrq_s8(vshlq_n_s32(vmovl_u16(*v46.i8), 0x16uLL), vmovl_u16(vshl_n_s16(*v44.i8, 6uLL)));
    v48[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x16uLL), vmovl_u16(vshl_n_s16(v41, 6uLL)));
    v49 = (v48 + a2);
    v41.i16[0] = v503;
    v41.i16[1] = v505;
    v41.i16[2] = v502;
    v41.i16[3] = v504;
    v42.i16[0] = v507;
    v42.i16[1] = v509;
    v42.i16[2] = v506;
    v42.i16[3] = v508;
    v8 = 64;
    *v49 = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x16uLL), vmovl_u16(vshl_n_s16(v41, 6uLL)));
    v49[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(*v45.i8), 0x16uLL), vmovl_u16(vshl_n_s16(v43, 6uLL)));
    return v8;
  }

  switch(a4)
  {
    case 0x7Fu:
      v163 = *a3;
      v164 = *(a3 + 16);
      v165 = *(a3 + 32);
      v166 = *(a3 + 48);
      v167 = *(a3 + 64);
      v168 = *(a3 + 80);
      v169 = *(a3 + 96);
      v170 = *(a3 + 112);
      v171 = &a1->i8[a2];
      *a1 = vzip1q_s64(*a3, v164);
      a1[1] = vzip1q_s64(v167, v168);
      v172 = (a1 + 2 * a2);
      *v171 = vzip2q_s64(v163, v164);
      v171[1] = vzip2q_s64(v167, v168);
      *v172 = vzip1q_s64(v165, v166);
      v172[1] = vzip1q_s64(v169, v170);
      v173 = (v172 + a2);
      *v173 = vzip2q_s64(v165, v166);
      v173[1] = vzip2q_s64(v169, v170);
      return 128;
    case 0x4Fu:
      v51.i64[0] = 0xA000A000A000ALL;
      v51.i64[1] = 0xA000A000A000ALL;
      v52 = vmovl_u16(*&vpaddq_s16(v51, v51));
      v53 = vpaddq_s32(v52, v52).u64[0];
      v54.i64[0] = v53;
      v54.i64[1] = HIDWORD(v53);
      v55 = v54;
      v56 = vaddvq_s64(v54);
      v57 = 0uLL;
      if (v56 > 0x80)
      {
        v156 = 0uLL;
        v152 = 0uLL;
        v153 = 0uLL;
        v155 = 0uLL;
        v154 = 0uLL;
        v162 = 0uLL;
        v161 = 0uLL;
      }

      else
      {
        v58 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v59 = vzip1_s32(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
        v60.i64[0] = v59.u32[0];
        v60.i64[1] = v59.u32[1];
        v61 = v60;
        v62 = vzip1q_s64(0, v55);
        v63 = 8 * (a3 & 7);
        v64 = v56 + v63;
        v65 = vaddq_s64(v62, vdupq_n_s64(v63));
        v66 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v65)));
        if (v56 + v63 >= 0x81)
        {
          v66 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v58[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v58[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v66);
        }

        v67 = vnegq_s64(v61);
        v68 = vshlq_u64(v66, v67);
        v69 = v64 & 0x3F;
        v70 = (v58 + 8 * (v64 >> 6));
        v71 = vaddq_s64(v62, vdupq_n_s64(v69));
        v72 = v56 + v64;
        v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v71)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v71)));
        if (v56 + v69 >= 0x81)
        {
          v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v71)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v71))), v73);
        }

        v74 = vzip2q_s64(v66, v68);
        v75 = vzip1q_s64(v66, v68);
        v76 = vshlq_u64(v73, v67);
        v77 = vzip2q_s64(v73, v76);
        v78 = vzip1q_s64(v73, v76);
        v79 = v72 & 0x3F;
        v80 = (v58 + 8 * (v72 >> 6));
        v81 = vaddq_s64(v62, vdupq_n_s64(v79));
        v82 = v56 + v72;
        v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v80, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v81)), vshlq_u64(vdupq_lane_s64(v80->i64[0], 0), vnegq_s64(v81)));
        if (v56 + v79 >= 0x81)
        {
          v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v80[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v81)), vshlq_u64(vdupq_laneq_s64(v80[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v81))), v83);
        }

        v84 = vuzp1q_s32(v75, v74);
        v85 = vuzp1q_s32(v78, v77);
        v86 = vshlq_u64(v83, v67);
        v87 = vuzp1q_s32(vzip1q_s64(v83, v86), vzip2q_s64(v83, v86));
        v88 = v82 & 0x3F;
        v89 = (v58 + 8 * (v82 >> 6));
        v90 = vaddq_s64(v62, vdupq_n_s64(v88));
        v91 = v56 + v82;
        v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v90)));
        if (v56 + v88 >= 0x81)
        {
          v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v92);
        }

        v93.i64[0] = 0x1000100010001;
        v93.i64[1] = 0x1000100010001;
        v94 = vshrq_n_u32(v84, 0xAuLL);
        v95 = vshrq_n_u32(v85, 0xAuLL);
        v96 = vshrq_n_u32(v87, 0xAuLL);
        v97 = vshlq_u64(v92, v67);
        v98 = vuzp1q_s32(vzip1q_s64(v92, v97), vzip2q_s64(v92, v97));
        v99 = vshrq_n_u32(v98, 0xAuLL);
        v100 = v91 & 0x3F;
        v101 = (v58 + 8 * (v91 >> 6));
        v102 = vaddq_s64(v62, vdupq_n_s64(v100));
        v103 = v56 + v91;
        v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v102)));
        if (v56 + v100 >= 0x81)
        {
          v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v104);
        }

        v105 = vshlq_n_s16(v93, 0xAuLL);
        v106.i64[0] = -1;
        v106.i64[1] = -1;
        v107 = vzip2q_s32(v84, v94);
        v108 = vzip1q_s32(v84, v94);
        v109 = vzip2q_s32(v85, v95);
        v110 = vzip1q_s32(v85, v95);
        v111 = vzip2q_s32(v87, v96);
        v112 = vzip1q_s32(v87, v96);
        v113 = vzip2q_s32(v98, v99);
        v114 = vzip1q_s32(v98, v99);
        v115 = vshlq_u64(v104, v67);
        v116 = vuzp1q_s32(vzip1q_s64(v104, v115), vzip2q_s64(v104, v115));
        v117 = vshrq_n_u32(v116, 0xAuLL);
        v118 = vzip2q_s32(v116, v117);
        v119 = vzip1q_s32(v116, v117);
        v120 = (v58 + 8 * (v103 >> 6));
        v121 = vaddq_s64(v62, vdupq_n_s64(v103 & 0x3F));
        v122 = v56 + v103;
        v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v121)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v121)));
        if (v56 + (v103 & 0x3F) >= 0x81)
        {
          v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v121)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v121))), v123);
        }

        v124 = vaddq_s16(v105, v106);
        v125 = vuzp1q_s16(v108, v107);
        v126 = vuzp1q_s16(v110, v109);
        v127 = vuzp1q_s16(v112, v111);
        v128 = vuzp1q_s16(v114, v113);
        v129 = vuzp1q_s16(v119, v118);
        v130 = vshlq_u64(v123, v67);
        v131 = vuzp1q_s32(vzip1q_s64(v123, v130), vzip2q_s64(v123, v130));
        v132 = vshrq_n_u32(v131, 0xAuLL);
        v133 = vuzp1q_s16(vzip1q_s32(v131, v132), vzip2q_s32(v131, v132));
        v134 = v56 + v122;
        v135 = v122 & 0x3F;
        v136 = vaddq_s64(v62, vdupq_n_s64(v135));
        v137 = (v58 + 8 * (v122 >> 6));
        v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
        if (v56 + v135 >= 0x81)
        {
          v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
        }

        v139 = vandq_s8(v124, v125);
        v140 = vandq_s8(v124, v126);
        v141 = vandq_s8(v124, v127);
        v142 = vandq_s8(v124, v128);
        v143 = vandq_s8(v124, v129);
        v144 = vandq_s8(v124, v133);
        v145 = vshlq_u64(v138, v67);
        v146 = vuzp1q_s32(vzip1q_s64(v138, v145), vzip2q_s64(v138, v145));
        v147 = vshrq_n_u32(v146, 0xAuLL);
        v148 = (v58 + 8 * (v134 >> 6));
        v149 = vaddq_s64(v62, vdupq_n_s64(v134 & 0x3F));
        v150 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v146, v147), vzip2q_s32(v146, v147)));
        v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v149)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v149)));
        if (v56 + (v134 & 0x3F) >= 0x81)
        {
          v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v149)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v149))), v151);
        }

        v152 = vshlq_n_s16(v139, 6uLL);
        v153 = vshlq_n_s16(v140, 6uLL);
        v154 = vshlq_n_s16(v141, 6uLL);
        v155 = vshlq_n_s16(v142, 6uLL);
        v57 = vshlq_n_s16(v143, 6uLL);
        v156 = vshlq_n_s16(v144, 6uLL);
        v157 = vshlq_u64(v151, v67);
        v158 = vuzp1q_s32(vzip1q_s64(v151, v157), vzip2q_s64(v151, v157));
        v159 = vshrq_n_u32(v158, 0xAuLL);
        v160 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v158, v159), vzip2q_s32(v158, v159)));
        v161 = vshlq_n_s16(v150, 6uLL);
        v162 = vshlq_n_s16(v160, 6uLL);
      }

      v224 = &a1->i8[a2];
      *a1 = vzip1q_s64(v152, v153);
      a1[1] = vzip1q_s64(v57, v156);
      v225 = (a1 + 2 * a2);
      *v224 = vzip2q_s64(v152, v153);
      v224[1] = vzip2q_s64(v57, v156);
      *v225 = vzip1q_s64(v154, v155);
      v225[1] = vzip1q_s64(v161, v162);
      v226 = (v225 + a2);
      *v226 = vzip2q_s64(v154, v155);
      v226[1] = vzip2q_s64(v161, v162);
      return 80;
    case 2u:
      v13 = vdupq_n_s32((*a3 << 12) & 0xFFC00000 | ((*a3 & 0x3FF) << 6));
      *a1 = v13;
      a1[1] = v13;
      v14 = (a1 + a2);
      *v14 = v13;
      v14[1] = v13;
      v15 = (a1 + 2 * a2);
      *v15 = v13;
      v15[1] = v13;
      v16 = (a1 + 2 * a2 + a2);
      *v16 = v13;
      v16[1] = v13;
      return 3;
    default:
      v174 = 8 * (a3 & 7);
      v175 = a3 & 0xFFFFFFFFFFFFFFF8;
      v176 = v174 + 18;
      v177 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v174;
      if (v174 >= 0x2F)
      {
        v177 |= *(v175 + 8) << (-8 * (a3 & 7u));
      }

      v178.i32[0] = v177;
      v178.i32[1] = v177 >> 5;
      v179 = vand_s8(v178, 0x1F0000001FLL);
      v180 = vuzp1_s16(v179, v179);
      v181.i32[0] = v177 >> 10;
      v181.i32[1] = v177 >> 14;
      v182 = vuzp1_s16(vadd_s32(vand_s8(v181, 0xF0000000FLL), 0x100000001), v180);
      v183 = v174 + 38;
      v184 = v176 & 0x3A;
      v185 = (v175 + ((v176 >> 3) & 8));
      v186 = *v185 >> (v176 & 0x3A);
      if (v184 >= 0x2D)
      {
        v186 |= v185[1] << -v184;
      }

      v187 = vdupq_lane_s32(v180, 0);
      v188 = vdupq_lane_s32(v182, 0);
      v189 = (8 * (a3 & 7)) | 0x200;
      v190.i64[0] = 0x3000300030003;
      v190.i64[1] = 0x3000300030003;
      v191 = vandq_s8(v187, v190);
      v192 = vbicq_s8(v188, vceqq_s16(v191, v190));
      v190.i64[0] = 0x202020202020202;
      v190.i64[1] = 0x202020202020202;
      v193 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v187.i8, 0x4000400040004)))), v190);
      if (vmaxvq_s8(v193) < 1)
      {
        v202 = 0;
        v223.i64[0] = -1;
        v223.i64[1] = -1;
        v219 = v192;
        v218 = v192;
        v217 = v192;
        v222.i64[0] = -1;
        v222.i64[1] = -1;
        v216 = v192;
        v221.i64[0] = -1;
        v221.i64[1] = -1;
        v220.i64[0] = -1;
        v220.i64[1] = -1;
      }

      else
      {
        v194 = vmovl_u8(*&vpaddq_s8(v193, v193));
        v195 = vmovl_u16(*&vpaddq_s16(v194, v194));
        v196 = vpaddq_s32(v195, v195).u64[0];
        v197.i64[0] = v196;
        v197.i64[1] = HIDWORD(v196);
        v198 = v197;
        v199 = vaddvq_s64(v197);
        v200 = v183 + v199;
        v201 = v199 <= 0x80 && v189 >= v200;
        v202 = !v201;
        v203 = 0uLL;
        if (v201)
        {
          v204 = v183 & 0x3E;
          v205 = vaddq_s64(vdupq_n_s64(v204), vzip1q_s64(0, v198));
          v206 = (v175 + ((v183 >> 3) & 8));
          v203 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v206, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v205)), vshlq_u64(vdupq_lane_s64(v206->i64[0], 0), vnegq_s64(v205)));
          if (v204 + v199 >= 0x81)
          {
            v203 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v206[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v205)), vshlq_u64(vdupq_laneq_s64(v206[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v205))), v203);
          }

          v183 = v200;
        }

        v207 = vzip1_s32(*v195.i8, *&vextq_s8(v195, v195, 8uLL));
        v208.i64[0] = v207.u32[0];
        v208.i64[1] = v207.u32[1];
        v209 = vshlq_u64(v203, vnegq_s64(v208));
        v210 = vuzp1q_s32(vzip1q_s64(v203, v209), vzip2q_s64(v203, v209));
        v211 = vshlq_u32(v210, vnegq_s32((*&v194 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v212 = vuzp1q_s16(vzip1q_s32(v210, v211), vzip2q_s32(v210, v211));
        v210.i64[0] = 0x101010101010101;
        v210.i64[1] = 0x101010101010101;
        *v213.i8 = vand_s8(vadd_s8(*&vshlq_s8(v210, v193), -1), vmovn_s16(vzip1q_s16(v212, vshlq_u16(v212, vnegq_s16(vmovl_u8(vuzp1_s8(*v193.i8, *v187.i8)))))));
        v213.i64[1] = v213.i64[0];
        *v213.i8 = vqtbl1_s8(v213, 0x703060205010400);
        *v212.i8 = vdup_lane_s16(*v213.i8, 0);
        *v210.i8 = vdup_lane_s16(*v213.i8, 1);
        v214 = vdup_lane_s16(*v213.i8, 2);
        v215 = vdup_lane_s16(*v213.i8, 3);
        v216 = vsubw_s8(v192, *v212.i8);
        v217 = vsubw_s8(v192, *v210.i8);
        v218 = vsubw_s8(v192, v214);
        v219 = vsubw_s8(v192, v215);
        v220 = vmovl_s8(vceqz_s8(*v212.i8));
        v221 = vmovl_s8(vceqz_s8(*v210.i8));
        v222 = vmovl_s8(vceqz_s8(v214));
        v223 = vmovl_s8(vceqz_s8(v215));
      }

      v227.i64[0] = 0x8000800080008;
      v227.i64[1] = 0x8000800080008;
      v228 = 0uLL;
      v229 = vandq_s8(vextq_s8(vtstq_s16(v187, v227), 0, 0xCuLL), v192);
      v230 = vmovl_u16(*&vpaddq_s16(v229, v229));
      v231 = vpaddq_s32(v230, v230).u64[0];
      v232.i64[0] = v231;
      v232.i64[1] = HIDWORD(v231);
      v233 = v232;
      v234 = vaddvq_s64(v232);
      v235 = v183 + v234;
      if (v234 <= 0x80 && v189 >= v235)
      {
        v237 = v183 & 0x3F;
        v238 = vaddq_s64(vdupq_n_s64(v237), vzip1q_s64(0, v233));
        v239 = (v175 + 8 * (v183 >> 6));
        v228 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v239, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v239->i64[0], 0), vnegq_s64(v238)));
        if (v237 + v234 >= 0x81)
        {
          v228 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v239[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v239[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v228);
        }

        v183 = v235;
      }

      else
      {
        v202 = 1;
      }

      v240 = v187.i8[0] & 3;
      if (v240 == 2)
      {
        v241 = v189 < v183 + 8;
        v242 = v183 + 16;
        if (v189 >= v183 + 8)
        {
          v183 += 8;
        }

        else
        {
          v242 = v183 + 8;
        }

        if (v189 < v242)
        {
          v243 = 1;
        }

        else
        {
          v183 = v242;
          v243 = v241;
        }

        v202 |= v243;
      }

      v244 = 0uLL;
      v245 = vextq_s8(0, v216, 0xCuLL);
      v246 = vmovl_u16(*&vpaddq_s16(v245, v245));
      v247 = vpaddq_s32(v246, v246).u64[0];
      v248.i64[0] = v247;
      v248.i64[1] = HIDWORD(v247);
      v249 = v248;
      v250 = vaddvq_s64(v248);
      v251 = v183 + v250;
      if (v250 <= 0x80 && v189 >= v251)
      {
        v254 = v183 & 0x3F;
        v255 = vaddq_s64(vdupq_n_s64(v254), vzip1q_s64(0, v249));
        v256 = (v175 + 8 * (v183 >> 6));
        v253 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v256, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v255)), vshlq_u64(vdupq_lane_s64(v256->i64[0], 0), vnegq_s64(v255)));
        if (v254 + v250 >= 0x81)
        {
          v253 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v256[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v255)), vshlq_u64(vdupq_laneq_s64(v256[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v255))), v253);
        }

        v183 = v251;
      }

      else
      {
        v202 = 1;
        v253 = 0uLL;
      }

      v257 = vmovl_u16(*&vpaddq_s16(v216, v216));
      v258 = vpaddq_s32(v257, v257).u64[0];
      v259.i64[0] = v258;
      v259.i64[1] = HIDWORD(v258);
      v260 = v259;
      v261 = vaddvq_s64(v259);
      v262 = v183 + v261;
      if (v261 <= 0x80 && v189 >= v262)
      {
        v264 = v183 & 0x3F;
        v265 = vaddq_s64(vdupq_n_s64(v264), vzip1q_s64(0, v260));
        v266 = (v175 + 8 * (v183 >> 6));
        v244 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v266, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v265)), vshlq_u64(vdupq_lane_s64(v266->i64[0], 0), vnegq_s64(v265)));
        if (v264 + v261 >= 0x81)
        {
          v244 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v266[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v265)), vshlq_u64(vdupq_laneq_s64(v266[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v265))), v244);
        }

        v183 = v262;
      }

      else
      {
        v202 = 1;
      }

      v267 = vmovl_u16(*&vpaddq_s16(v217, v217));
      v268 = vpaddq_s32(v267, v267).u64[0];
      v269.i64[0] = v268;
      v269.i64[1] = HIDWORD(v268);
      v270 = v269;
      v271 = vaddvq_s64(v269);
      v272 = v183 + v271;
      v273 = 0uLL;
      if (v271 <= 0x80 && v189 >= v272)
      {
        v276 = v183 & 0x3F;
        v277 = vaddq_s64(vdupq_n_s64(v276), vzip1q_s64(0, v270));
        v278 = (v175 + 8 * (v183 >> 6));
        v275 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v278, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v278->i64[0], 0), vnegq_s64(v277)));
        if (v276 + v271 >= 0x81)
        {
          v275 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v278[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v278[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v275);
        }

        v183 = v272;
      }

      else
      {
        v202 = 1;
        v275 = 0uLL;
      }

      if (v271 > 0x80 || (v279 = v183 + v271, v189 < v183 + v271))
      {
        v202 = 1;
        v279 = v183;
      }

      else
      {
        v280 = v183 & 0x3F;
        v281 = vaddq_s64(vdupq_n_s64(v280), vzip1q_s64(0, v270));
        v282 = (v175 + 8 * (v183 >> 6));
        v273 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v282, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v281)), vshlq_u64(vdupq_lane_s64(v282->i64[0], 0), vnegq_s64(v281)));
        if (v280 + v271 >= 0x81)
        {
          v273 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v282[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v281)), vshlq_u64(vdupq_laneq_s64(v282[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v281))), v273);
        }
      }

      v283 = vmovl_u16(*&vpaddq_s16(v218, v218));
      v284 = vpaddq_s32(v283, v283).u64[0];
      v285.i64[0] = v284;
      v285.i64[1] = HIDWORD(v284);
      v286 = v285;
      v287 = vaddvq_s64(v285);
      v288 = 0uLL;
      if (v287 > 0x80 || (v289 = v279 + v287, v189 < v279 + v287))
      {
        v202 = 1;
        v289 = v279;
        v292 = 0uLL;
      }

      else
      {
        v290 = vaddq_s64(vdupq_n_s64(v279 & 0x3F), vzip1q_s64(0, v286));
        v291 = (v175 + 8 * (v279 >> 6));
        v292 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v291, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v290)), vshlq_u64(vdupq_lane_s64(v291->i64[0], 0), vnegq_s64(v290)));
        if ((v279 & 0x3F) + v287 >= 0x81)
        {
          v292 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v291[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v290)), vshlq_u64(vdupq_laneq_s64(v291[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v290))), v292);
        }
      }

      if (v287 > 0x80 || (v293 = v289 + v287, v189 < v289 + v287))
      {
        v202 = 1;
        v293 = v289;
      }

      else
      {
        v294 = vaddq_s64(vdupq_n_s64(v289 & 0x3F), vzip1q_s64(0, v286));
        v295 = (v175 + 8 * (v289 >> 6));
        v288 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v295, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v294)), vshlq_u64(vdupq_lane_s64(v295->i64[0], 0), vnegq_s64(v294)));
        if ((v289 & 0x3F) + v287 >= 0x81)
        {
          v288 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v295[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v294)), vshlq_u64(vdupq_laneq_s64(v295[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v294))), v288);
        }
      }

      v296 = vmovl_u16(*&vpaddq_s16(v219, v219));
      v297 = vpaddq_s32(v296, v296).u64[0];
      v298.i64[0] = v297;
      v298.i64[1] = HIDWORD(v297);
      v299 = v298;
      v300 = vaddvq_s64(v298);
      v301 = 0uLL;
      if (v300 > 0x80 || (v302 = v293 + v300, v189 < v293 + v300))
      {
        v202 = 1;
        v302 = v293;
        v306 = 0uLL;
      }

      else
      {
        v303 = v293 & 0x3F;
        v304 = vaddq_s64(vdupq_n_s64(v303), vzip1q_s64(0, v299));
        v305 = (v175 + 8 * (v293 >> 6));
        v306 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v305, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v304)), vshlq_u64(vdupq_lane_s64(v305->i64[0], 0), vnegq_s64(v304)));
        if (v303 + v300 >= 0x81)
        {
          v306 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v305[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v304)), vshlq_u64(vdupq_laneq_s64(v305[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v304))), v306);
        }
      }

      if (v300 > 0x80 || (v307 = v302 + v300, v189 < v302 + v300))
      {
        v202 = 1;
        v307 = v302;
      }

      else
      {
        v308 = vaddq_s64(vdupq_n_s64(v302 & 0x3F), vzip1q_s64(0, v299));
        v309 = (v175 + 8 * (v302 >> 6));
        v301 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v309, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v308)), vshlq_u64(vdupq_lane_s64(v309->i64[0], 0), vnegq_s64(v308)));
        if ((v302 & 0x3F) + v300 >= 0x81)
        {
          v301 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v309[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v308)), vshlq_u64(vdupq_laneq_s64(v309[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v308))), v301);
        }
      }

      if ((v202 & 1) != 0 || (v8 = a4 + 1, v189 + 8 * v8 - v307 - 512 >= 9))
      {
        v310 = 0;
        v311 = 0;
        v312 = 8 * (&v512 & 7);
        v313 = 10;
        do
        {
          v314 = 64 - v312;
          if (64 - v312 >= v313)
          {
            v314 = v313;
          }

          *(&v512 + v310) |= ((0xFFFFFFFFFFFFFFFFLL >> v311) & ~(-1 << v314)) << v312;
          v311 += v314;
          v315 = v314 + v312;
          v310 += v315 >> 6;
          v312 = v315 & 0x3F;
          v313 -= v314;
        }

        while (v313);
LABEL_133:
        v8 = 0;
        v316 = &a1->i8[a2];
        v9 = 0uLL;
        *a1 = 0u;
        a1[1] = 0u;
        v317 = &a1->i8[2 * a2];
        *v316 = 0u;
        *(v316 + 1) = 0u;
        v12 = &a1->i8[2 * a2 + a2];
        *v317 = 0u;
        *(v317 + 1) = 0u;
        goto LABEL_6;
      }

      if (v240 == 2)
      {
        v318 = 0;
        v319 = 0;
        v320 = 8 * (&v512 & 7);
        v321 = 10;
        do
        {
          v322 = 64 - v320;
          if (64 - v320 >= v321)
          {
            v322 = v321;
          }

          *(&v512 + v318) |= ((0xFFFFFFFFFFFFFFFFLL >> v319) & ~(-1 << v322)) << v320;
          v319 += v322;
          v323 = v322 + v320;
          v318 += v323 >> 6;
          v320 = v323 & 0x3F;
          v321 -= v322;
        }

        while (v321);
        goto LABEL_133;
      }

      v324 = vzip1_s32(*v230.i8, *&vextq_s8(v230, v230, 8uLL));
      v325 = vzip1_s32(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
      v326 = vzip1_s32(*v283.i8, *&vextq_s8(v283, v283, 8uLL));
      v327 = vzip1_s32(*v296.i8, *&vextq_s8(v296, v296, 8uLL));
      v328.i64[0] = v324.u32[0];
      v328.i64[1] = v324.u32[1];
      v329 = v328;
      v328.i64[0] = v325.u32[0];
      v328.i64[1] = v325.u32[1];
      v330 = v328;
      v328.i64[0] = v326.u32[0];
      v328.i64[1] = v326.u32[1];
      v331 = v328;
      v328.i64[0] = v327.u32[0];
      v328.i64[1] = v327.u32[1];
      v332 = vnegq_s64(v329);
      v333 = vnegq_s64(v330);
      v334 = vnegq_s64(v331);
      v335 = vnegq_s64(v328);
      v336 = vshlq_u64(v228, v332);
      v337 = vshlq_u64(v275, v333);
      v338 = vshlq_u64(v273, v333);
      v339 = vshlq_u64(v292, v334);
      v340 = vshlq_u64(v288, v334);
      v341 = vshlq_u64(v306, v335);
      v342 = vzip2q_s64(v228, v336);
      v343 = vzip1q_s64(v228, v336);
      v344 = vzip2q_s64(v275, v337);
      v345 = vzip1q_s64(v275, v337);
      v346 = vzip2q_s64(v273, v338);
      v347 = vzip1q_s64(v273, v338);
      v348 = vzip2q_s64(v292, v339);
      v349 = vzip1q_s64(v292, v339);
      v350 = vzip2q_s64(v288, v340);
      v351 = vzip1q_s64(v288, v340);
      v352 = vzip2q_s64(v306, v341);
      v353 = vzip1q_s64(v306, v341);
      v354 = vuzp1q_s32(v343, v342);
      v355 = vuzp1q_s32(v345, v344);
      v356 = vuzp1q_s32(v347, v346);
      v343.i64[0] = 0xFFFF0000FFFFLL;
      v343.i64[1] = 0xFFFF0000FFFFLL;
      v357 = vuzp1q_s32(v349, v348);
      v345.i64[0] = 0xFFFF0000FFFFLL;
      v345.i64[1] = 0xFFFF0000FFFFLL;
      v358 = vnegq_s32(vandq_s8(v229, v343));
      v359 = vnegq_s32(vandq_s8(v217, v345));
      v360 = vuzp1q_s32(v351, v350);
      v361 = vuzp1q_s32(v353, v352);
      v362 = vshlq_u32(v354, v358);
      v363 = vshlq_u32(v355, v359);
      v364 = vshlq_u32(v356, v359);
      v359.i64[0] = 0x10001000100010;
      v359.i64[1] = 0x10001000100010;
      v353.i64[0] = 0xF000F000F000FLL;
      v353.i64[1] = 0xF000F000F000FLL;
      v365 = vsubq_s16(v359, v229);
      v366 = vaddq_s16(v229, v353);
      v353.i64[0] = 0x10001000100010;
      v353.i64[1] = 0x10001000100010;
      v367 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v354, v362), vzip2q_s32(v354, v362)), v365);
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v368 = vsubq_s16(v353, v217);
      v369 = vaddq_s16(v217, v365);
      v365.i64[0] = 0xFFFF0000FFFFLL;
      v365.i64[1] = 0xFFFF0000FFFFLL;
      v370 = vnegq_s32(vandq_s8(v218, v365));
      v371 = vshlq_s16(v367, v366);
      v372 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v355, v363), vzip2q_s32(v355, v363)), v368), v369);
      v373 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v356, v364), vzip2q_s32(v356, v364)), v368), v369);
      v374 = vdupq_lane_s32(*v371.i8, 0);
      v375 = vandq_s8(v221, v374);
      v376 = vsubq_s16(v372, v375);
      v377 = vsubq_s16(v373, v375);
      v378 = vshlq_u32(v357, v370);
      v379 = vshlq_u32(v360, v370);
      v380 = vzip2q_s32(v357, v378);
      v381 = vzip1q_s32(v357, v378);
      v382 = vzip2q_s32(v360, v379);
      v383 = vzip1q_s32(v360, v379);
      v379.i64[0] = 0x10001000100010;
      v379.i64[1] = 0x10001000100010;
      v384 = vuzp1q_s16(v383, v382);
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v385 = vsubq_s16(v379, v218);
      v386 = vaddq_s16(v218, v382);
      v382.i64[0] = 0xFFFF0000FFFFLL;
      v382.i64[1] = 0xFFFF0000FFFFLL;
      v387 = vnegq_s32(vandq_s8(v219, v382));
      v388 = vshlq_s16(vshlq_s16(vuzp1q_s16(v381, v380), v385), v386);
      v389 = vshlq_s16(vshlq_s16(v384, v385), v386);
      v390 = vandq_s8(v222, v374);
      v391 = vsubq_s16(v388, v390);
      v392 = vsubq_s16(v389, v390);
      v393 = vshlq_u32(v361, v387);
      v394 = vzip2q_s32(v361, v393);
      v395 = vzip1q_s32(v361, v393);
      v393.i64[0] = 0x10001000100010;
      v393.i64[1] = 0x10001000100010;
      v396 = vuzp1q_s16(v395, v394);
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v397 = vsubq_s16(v393, v219);
      v398 = vaddq_s16(v219, v394);
      v399 = vshlq_u64(v301, v335);
      v400 = vuzp1q_s32(vzip1q_s64(v301, v399), vzip2q_s64(v301, v399));
      v401 = vshlq_u32(v400, v387);
      v402 = vshlq_s16(vshlq_s16(v396, v397), v398);
      v403 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v400, v401), vzip2q_s32(v400, v401)), v397), v398);
      v404 = vandq_s8(v223, v374);
      v405 = vsubq_s16(v402, v404);
      v406 = vsubq_s16(v403, v404);
      v407 = vzip1_s32(*v246.i8, *&vextq_s8(v246, v246, 8uLL));
      v408 = vzip1_s32(*v257.i8, *&vextq_s8(v257, v257, 8uLL));
      v328.i64[0] = v407.u32[0];
      v328.i64[1] = v407.u32[1];
      v409 = v328;
      v328.i64[0] = v408.u32[0];
      v328.i64[1] = v408.u32[1];
      v410 = vshlq_u64(v253, vnegq_s64(v409));
      v411 = vshlq_u64(v244, vnegq_s64(v328));
      v412 = vzip2q_s64(v253, v410);
      v413 = vzip1q_s64(v253, v410);
      v414 = vzip2q_s64(v244, v411);
      v415 = vzip1q_s64(v244, v411);
      v411.i64[0] = 0xFFFF0000FFFFLL;
      v411.i64[1] = 0xFFFF0000FFFFLL;
      v416 = vuzp1q_s32(v413, v412);
      v417 = vuzp1q_s32(v415, v414);
      v418 = vnegq_s32(vandq_s8(v216, v411));
      v419 = vshlq_u32(v416, vnegq_s32(vandq_s8(v245, v411)));
      v420 = vshlq_u32(v417, v418);
      v421 = vzip2q_s32(v416, v419);
      v422 = vzip1q_s32(v416, v419);
      v423 = vzip2q_s32(v417, v420);
      v424 = vzip1q_s32(v417, v420);
      v420.i64[0] = 0x10001000100010;
      v420.i64[1] = 0x10001000100010;
      v425 = vuzp1q_s16(v424, v423);
      v423.i64[0] = 0xF000F000F000FLL;
      v423.i64[1] = 0xF000F000F000FLL;
      v426 = vaddq_s16(vandq_s8(v371, v220), vshlq_s16(vshlq_s16(vuzp1q_s16(v422, v421), vsubq_s16(v420, v245)), vaddq_s16(v245, v423)));
      v427 = vandq_s8(v220, v374);
      v428.i64[0] = 0x1000100010001;
      v428.i64[1] = 0x1000100010001;
      v429 = vceqq_s16(v191, v428);
      v430 = vaddvq_s16(v429);
      v431 = vsubq_s16(v426, v427);
      v432 = vsubq_s16(vshlq_s16(vshlq_s16(v425, vsubq_s16(v420, v216)), vaddq_s16(v216, v423)), v427);
      v429.i16[0] = v186 & 0x3FF;
      v429.i16[1] = (v186 >> 10) & 0x3FF;
      v433 = vdupq_lane_s32(*v429.i8, 0);
      if (v430)
      {
        v434 = vnegq_s16(vandq_s8(v187, v428));
        v435 = v432;
        v435.i32[3] = v431.i32[0];
        v436 = v431;
        v436.i32[0] = v432.i32[3];
        v529.val[0] = vbslq_s8(v434, v436, v431);
        v529.val[1] = vbslq_s8(v434, v435, v432);
        v435.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v435.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v529, xmmword_29D2F0F80), v434), v529.val[0]);
        v530.val[1] = vaddq_s16(v529.val[1], vandq_s8(vqtbl2q_s8(v529, v435), v434));
        v431 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0F90), v434), v530.val[0]);
        v432 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, v435), v434));
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v376.i8, xmmword_29D2F0FA0), v434), v376);
        v530.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v376.i8, xmmword_29D2F0FB0), v434), v377);
        v376 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0FC0), v434), v530.val[0]);
        v377 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, v435), v434));
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v391.i8, xmmword_29D2F0FD0), v434), v391);
        v530.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v391.i8, xmmword_29D2F0F80), v434), v392);
        v391 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, v435), v434), v530.val[0]);
        v392 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0FE0), v434));
        v529.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v405.i8, xmmword_29D2F0FF0), v434), v405);
        v529.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v405.i8, xmmword_29D2F0F80), v434), v406);
        v405 = vaddq_s16(vandq_s8(vqtbl2q_s8(v529, v435), v434), v529.val[0]);
        v406 = vaddq_s16(v529.val[1], vandq_s8(vqtbl2q_s8(v529, xmmword_29D2F1000), v434));
      }

      v437 = vaddq_s16(v431, v433);
      v438 = vaddq_s16(v432, v433);
      v439 = vaddq_s16(v376, v433);
      v440 = vaddq_s16(v377, v433);
      v441 = vaddq_s16(v391, v433);
      v442 = vaddq_s16(v392, v433);
      v443 = vaddq_s16(v405, v433);
      v444 = vaddq_s16(v406, v433);
      v445.i64[0] = 0x10001000100010;
      v445.i64[1] = 0x10001000100010;
      v446 = vceqzq_s16(vandq_s8(v187, v445));
      v447 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v437, xmmword_29D2F1080), v446), v437);
      v448 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v438, xmmword_29D2F1080), v446), v438);
      v449 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v439, xmmword_29D2F1080), v446), v439);
      v450 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v440, xmmword_29D2F1080), v446), v440);
      v451 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F1080), v446), v441);
      v452 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v442, xmmword_29D2F1080), v446), v442);
      v453 = vbicq_s8(vqtbl1q_s8(v443, xmmword_29D2F1080), v446);
      v454 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v444, xmmword_29D2F1080), v446), v444);
      v455 = vshlq_n_s16(v447, 6uLL);
      v456 = vshlq_n_s16(v448, 6uLL);
      v457 = vshlq_n_s16(v449, 6uLL);
      v458 = vshlq_n_s16(v451, 6uLL);
      v459 = vshlq_n_s16(v452, 6uLL);
      v460 = vzip2q_s64(v455, v456);
      v461.i64[0] = v455.i64[0];
      v461.i64[1] = v456.i64[0];
      v462.i64[0] = v458.i64[0];
      v462.i64[1] = v459.i64[0];
      v463 = vshlq_n_s16(v450, 6uLL);
      v464 = &a1->i8[a2];
      *a1 = v461;
      a1[1] = v462;
      v465 = (a1 + 2 * a2);
      v466 = vshlq_n_s16(vaddq_s16(v453, v443), 6uLL);
      v467 = vshlq_n_s16(v454, 6uLL);
      *v464 = v460;
      v464[1] = vzip2q_s64(v458, v459);
      v459.i64[0] = v457.i64[0];
      v459.i64[1] = v463.i64[0];
      v443.i64[0] = v466.i64[0];
      v443.i64[1] = v467.i64[0];
      *v465 = v459;
      v465[1] = v443;
      v468 = (v465 + a2);
      *v468 = vzip2q_s64(v457, v463);
      v468[1] = vzip2q_s64(v466, v467);
      break;
  }

  return v8;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 2, a2, v16, v15, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v17 = 4 * a2;
  v18 = v8 - 4;
  if (v9 && v8 >= 5)
  {
    if (v18 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v8 - 4;
    }

    if (v9 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v8 >= 5)
  {
    if (v18 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v14 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, (v13 + v17 + 32), a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v8 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v9 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v23 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v23;
  }

  if (v9 >= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v9;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
  v11 += result;
  if (v9 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v28 = v8 - 12;
    if (!v9)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v8 < 9)
  {
    goto LABEL_57;
  }

  if (v23 >= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v23;
  }

  if (v14 >= 8)
  {
    v27 = 8;
  }

  else
  {
    v27 = v9 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 32), a2, v27, v26, a7);
  v11 += result;
  v28 = v8 - 12;
LABEL_58:
  if (v8 >= 0xD)
  {
    if (v28 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    if (v9 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v9 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v8 < 0xD)
  {
    goto LABEL_78;
  }

  if (v28 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v28;
  }

  if (v14 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v9 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 32), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(int32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 2, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 16, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 34, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 48, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a3[1];
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(&a3[1] + a4);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v14 = *v7;
  v15 = v7[1];
  v13 = (v7 + a4);
  v16 = v13[1];
  v17 = vshrq_n_s16(v11, 6uLL);
  v18 = vshrq_n_s16(v12, 6uLL);
  v19 = vshrq_n_s16(vzip2q_s64(v14, *v13), 6uLL);
  v20 = vshrq_n_s16(vzip2q_s64(v8, v10), 6uLL);
  v21 = vshrq_n_s16(vzip1q_s64(v15, v16), 6uLL);
  v22 = vshrq_n_s16(vzip2q_s64(v15, v16), 6uLL);
  v23 = vdupq_lane_s32(*v17.i8, 0);
  v483 = vshrq_n_s16(vzip1q_s64(v14, *v13), 6uLL);
  v485 = vshrq_n_s16(vzip1q_s64(v8, v10), 6uLL);
  v24 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v23), 6uLL), 6uLL);
  v25 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v23), 6uLL), 6uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v483, v23), 6uLL), 6uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 6uLL), 6uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v485, v23), 6uLL), 6uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v23), 6uLL), 6uLL);
  v30 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 6uLL), 6uLL);
  v31 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v23), 6uLL), 6uLL);
  v32 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v33 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v34 = vpmaxq_s16(v32, v32);
  v35 = vpminq_s16(v33, v33);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38.i64[0] = 0x8000800080008000;
  v38.i64[1] = 0x8000800080008000;
  v39 = vmaxq_s16(v36, v38);
  v40.i64[0] = 0x8000800080008000;
  v40.i64[1] = 0x8000800080008000;
  v41 = vminq_s16(v37, v40);
  v42 = vzip1q_s16(v36, v37);
  v43.i64[0] = 0x10001000100010;
  v43.i64[1] = 0x10001000100010;
  v44 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v42)), vceqzq_s16(v42));
  v45 = vpmaxq_s16(v44, v44);
  v46 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v47 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v48 = vpmaxq_s16(v46, v46);
  v49 = vpminq_s16(v47, v47);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vmaxq_s16(v39, v50);
  v53 = vminq_s16(v41, v51);
  v54 = vzip1q_s16(v50, v51);
  v55 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v54)), vceqzq_s16(v54));
  v56 = vpmaxq_s16(v55, v55);
  v57 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v58 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v52, v61);
  v64 = vminq_s16(v53, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v65)), vceqzq_s16(v65));
  v67 = vpmaxq_s16(v66, v66);
  v68 = vqtbl1q_s8(vmaxq_s16(v30, v31), xmmword_29D2F1090);
  v69 = vqtbl1q_s8(vminq_s16(v30, v31), xmmword_29D2F1090);
  v70 = vpmaxq_s16(v68, v68);
  v71 = vpminq_s16(v69, v69);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vmaxq_s16(v63, v72);
  v75 = vminq_s16(v64, v73);
  v76 = vzip1q_s16(v72, v73);
  v77 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v76)), vceqzq_s16(v76));
  v78 = vpmaxq_s16(v77, v77);
  v79 = vmaxq_s16(vmaxq_s16(v45, v56), vmaxq_s16(v67, v78));
  v80 = vclzq_s16(vsubq_s16(v74, v75));
  v81 = vsubq_s16(v43, v80);
  v82 = vminq_s16(v81, v79);
  if (vmaxvq_s16(v82))
  {
    v469 = v19;
    v470 = v20;
    v482 = v21;
    v471 = v22;
    v83.i64[0] = -1;
    v83.i64[1] = -1;
    v84.i64[0] = 0xF000F000F000FLL;
    v84.i64[1] = 0xF000F000F000FLL;
    v487 = vsubq_s16(vshlq_s16(v83, vsubq_s16(v84, v80)), v75);
    v85 = vcgtq_s16(v79, v81);
    v86.i64[0] = 0x8000800080008;
    v86.i64[1] = 0x8000800080008;
    v87.i64[0] = 0x3000300030003;
    v87.i64[1] = 0x3000300030003;
    v480 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v56), v87), 0);
    v477 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v45), v87), 0);
    v478 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v67), v87), 0);
    v88 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v78), v87), 0);
    v89.i64[0] = 0x4000400040004;
    v89.i64[1] = 0x4000400040004;
    v90 = vbicq_s8(v89, vceqq_s16(vaddq_s16(v88, v478), vnegq_s16(vaddq_s16(v477, v480))));
    v476 = vorrq_s8(vandq_s8(vceqzq_s16(v82), v87), vandq_s8(v85, v86));
    v490 = v27;
    v492 = v28;
    v489 = v26;
    v496 = v31;
    v498 = v24;
    v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080)), 6uLL), 6uLL);
    v92 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080)), 6uLL), 6uLL);
    v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080)), 6uLL), 6uLL);
    v94 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v31, vqtbl1q_s8(v31, xmmword_29D2F1080)), 6uLL), 6uLL);
    v473 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080)), 6uLL), 6uLL);
    v474 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080)), 6uLL), 6uLL);
    v95 = vqtbl1q_s8(vmaxq_s16(v91, v474), xmmword_29D2F1090);
    v96 = vqtbl1q_s8(vminq_s16(v91, v474), xmmword_29D2F1090);
    v97 = vpmaxq_s16(v95, v95);
    v98 = vpminq_s16(v96, v96);
    v99 = vpmaxq_s16(v97, v97);
    v100 = vpminq_s16(v98, v98);
    v101 = vmaxq_s16(v99, v38);
    v102 = vminq_s16(v100, v40);
    v103 = vzip1q_s16(v99, v100);
    v104 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v103)), vceqzq_s16(v103));
    v105 = vpmaxq_s16(v104, v104);
    v472 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080)), 6uLL), 6uLL);
    v106 = vqtbl1q_s8(vmaxq_s16(v473, v472), xmmword_29D2F1090);
    v107 = vqtbl1q_s8(vminq_s16(v473, v472), xmmword_29D2F1090);
    v108 = vpmaxq_s16(v106, v106);
    v109 = vpminq_s16(v107, v107);
    v110 = vpmaxq_s16(v108, v108);
    v111 = vpminq_s16(v109, v109);
    v112 = vmaxq_s16(v101, v110);
    v113 = vminq_s16(v102, v111);
    v114 = vzip1q_s16(v110, v111);
    v115 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v114)), vceqzq_s16(v114));
    v116 = vpmaxq_s16(v115, v115);
    v117 = vqtbl1q_s8(vmaxq_s16(v92, v93), xmmword_29D2F1090);
    v118 = vqtbl1q_s8(vminq_s16(v92, v93), xmmword_29D2F1090);
    v119 = vpmaxq_s16(v117, v117);
    v120 = vpminq_s16(v118, v118);
    v121 = vpmaxq_s16(v119, v119);
    v122 = vpminq_s16(v120, v120);
    v123 = vmaxq_s16(v112, v121);
    v124 = vminq_s16(v113, v122);
    v125 = vzip1q_s16(v121, v122);
    v126 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v125)), vceqzq_s16(v125));
    v127 = vpmaxq_s16(v126, v126);
    v475 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080)), 6uLL), 6uLL);
    v128 = vqtbl1q_s8(vmaxq_s16(v475, v94), xmmword_29D2F1090);
    v129 = vqtbl1q_s8(vminq_s16(v475, v94), xmmword_29D2F1090);
    v130 = vpmaxq_s16(v128, v128);
    v131 = vpminq_s16(v129, v129);
    v132 = vpmaxq_s16(v130, v130);
    v133 = vpminq_s16(v131, v131);
    v494 = v30;
    v134 = vmaxq_s16(v123, v132);
    v135 = vminq_s16(v124, v133);
    v136 = vzip1q_s16(v132, v133);
    v137 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v136)), vceqzq_s16(v136));
    v138 = v25;
    v139 = vpmaxq_s16(v137, v137);
    v140 = vmaxq_s16(vmaxq_s16(v105, v116), vmaxq_s16(v127, v139));
    v141 = vclzq_s16(vsubq_s16(v134, v135));
    v142 = vsubq_s16(v43, v141);
    v143 = vcgtq_s16(v140, v142);
    v144 = vminq_s16(v142, v140);
    v142.i64[0] = 0x18001800180018;
    v142.i64[1] = 0x18001800180018;
    v145 = vbslq_s8(v143, v142, v43);
    v146 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v105), v87), 0);
    v147 = v29;
    v148 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v116), v87), 0);
    v149 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v127), v87), 0);
    v150 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v139), v87), 0);
    v151 = vsubq_s16(v144, v146);
    v152 = vsubq_s16(v144, v148);
    v153 = vsubq_s16(v144, v149);
    v154 = vsubq_s16(v144, v150);
    v155 = vceqq_s16(vaddq_s16(v150, v149), vnegq_s16(vaddq_s16(v146, v148)));
    v146.i64[0] = 0x4000400040004;
    v146.i64[1] = 0x4000400040004;
    v156 = vbicq_s8(v146, v155);
    v148.i64[0] = 0x7000700070007;
    v148.i64[1] = 0x7000700070007;
    v157 = vandq_s8(v487, v85);
    v158 = vorrq_s8(v476, v90);
    v159 = vaddq_s16(vandq_s8(v82, v85), vaddq_s16(v90, v90));
    v160 = vsubq_s16(v82, v477);
    v161 = vsubq_s16(v82, v480);
    v162 = vsubq_s16(v82, v478);
    v163 = vsubq_s16(v82, v88);
    v164 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(v159, v160, v148), vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v161), v163), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v144, vceqzq_s16((*&v145 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v156, v156)), v151, v148), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v152), v154), 3uLL))), 0);
    v165 = vaddvq_s16(v164);
    v167 = a5 < 4 || a6 < 2;
    if (v165)
    {
      v168.i64[0] = 0x3000300030003;
      v168.i64[1] = 0x3000300030003;
      v169 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v144), v168), v145), v156);
      v168.i64[0] = 0xF000F000F000FLL;
      v168.i64[1] = 0xF000F000F000FLL;
      v170.i64[0] = -1;
      v170.i64[1] = -1;
      v171 = vandq_s8(vsubq_s16(vshlq_s16(v170, vsubq_s16(v168, v141)), v135), v143);
      v23 = vbslq_s8(v164, vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080)), v23);
      v498 = vbslq_s8(v164, v91, v498);
      v488 = vbslq_s8(v164, v474, v138);
      v172 = vbslq_s8(v164, v473, v489);
      v173 = vbslq_s8(v164, v472, v490);
      v174 = vbslq_s8(v164, v92, v492);
      v175 = vbslq_s8(v164, v93, v147);
      v176 = vbslq_s8(v164, v94, v496);
      v160 = vbslq_s8(v164, v151, v160);
      v161 = vbslq_s8(v164, v152, v161);
      v162 = vbslq_s8(v164, v153, v162);
      v163 = vbslq_s8(v164, v154, v163);
      v157 = vbslq_s8(v164, v171, v157);
      v82 = vbslq_s8(v164, v144, v82);
      v158 = vbslq_s8(v164, v169, v158);
      v177 = vbslq_s8(v164, v475, v494);
    }

    else
    {
      v488 = v138;
      v177 = v494;
      v176 = v496;
      v175 = v147;
      v173 = v490;
      v174 = v492;
      v172 = v489;
    }

    v180 = v482;
    if (!v167)
    {
      v479 = v157;
      v491 = v173;
      v493 = v174;
      v481 = v175;
      v495 = v177;
      v497 = v176;
      v181 = vsubq_s16(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80));
      v182 = vsubq_s16(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F1030));
      v499.val[0] = v483;
      v499.val[1] = v469;
      v499.val[1].i32[3] = v18.i32[3];
      v183 = vqtbl2q_s8(v499, xmmword_29D2F1040);
      v184 = vsubq_s16(v483, vqtbl2q_s8(v499, xmmword_29D2F0FA0));
      v499.val[1] = v485;
      v185 = v470;
      v185.i32[3] = v18.i32[3];
      v186 = vsubq_s16(v485, vqtbl2q_s8(*(&v499 + 16), xmmword_29D2F1050));
      v187 = vsubq_s16(v470, vqtbl2q_s8(*(&v499 + 16), xmmword_29D2F0F80));
      v188 = v471;
      v188.i32[3] = v18.i32[3];
      v499.val[1] = v182;
      v499.val[1].i32[3] = v181.i32[0];
      v181.i32[0] = v182.i32[3];
      v189 = vshrq_n_s16(vshlq_n_s16(v181, 6uLL), 6uLL);
      v190 = vshrq_n_s16(vshlq_n_s16(v499.val[1], 6uLL), 6uLL);
      v191 = vshrq_n_s16(vshlq_n_s16(v184, 6uLL), 6uLL);
      v192 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v469, v183), 6uLL), 6uLL);
      v193 = vshrq_n_s16(vshlq_n_s16(v186, 6uLL), 6uLL);
      v194 = vshrq_n_s16(vshlq_n_s16(v187, 6uLL), 6uLL);
      v195 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v482, vqtbl2q_s8(*v180.i8, xmmword_29D2F1060)), 6uLL), 6uLL);
      v196 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v471, vqtbl2q_s8(*v180.i8, xmmword_29D2F0F80)), 6uLL), 6uLL);
      v486 = v189;
      v197 = vqtbl1q_s8(vmaxq_s16(v189, v190), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v189, v190), xmmword_29D2F1090);
      v198 = vpmaxq_s16(v197, v197);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v199 = vpmaxq_s16(v198, v198);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v185.i64[0] = 0x8000800080008000;
      v185.i64[1] = 0x8000800080008000;
      v200 = vmaxq_s16(v199, v185);
      v189.i64[0] = 0x8000800080008000;
      v189.i64[1] = 0x8000800080008000;
      v201 = vminq_s16(v499.val[0], v189);
      v202 = vzip1q_s16(v199, v499.val[0]);
      v189.i64[0] = 0x10001000100010;
      v189.i64[1] = 0x10001000100010;
      v203 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v202)), vceqzq_s16(v202));
      v204 = v162;
      v205 = vpmaxq_s16(v203, v203);
      v206 = vqtbl1q_s8(vmaxq_s16(v191, v192), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v191, v192), xmmword_29D2F1090);
      v207 = vpmaxq_s16(v206, v206);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v208 = vpmaxq_s16(v207, v207);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v209 = vmaxq_s16(v200, v208);
      v210 = vminq_s16(v201, v499.val[0]);
      v211 = vzip1q_s16(v208, v499.val[0]);
      v212 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v211)), vceqzq_s16(v211));
      v213 = vpmaxq_s16(v212, v212);
      v214 = vqtbl1q_s8(vmaxq_s16(v193, v194), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v193, v194), xmmword_29D2F1090);
      v215 = vpmaxq_s16(v214, v214);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v216 = vpmaxq_s16(v215, v215);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v217 = vmaxq_s16(v209, v216);
      v218 = vminq_s16(v210, v499.val[0]);
      v219 = vzip1q_s16(v216, v499.val[0]);
      v220 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v219)), vceqzq_s16(v219));
      v221 = vpmaxq_s16(v220, v220);
      v484 = v196;
      v222 = vqtbl1q_s8(vmaxq_s16(v195, v196), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v195, v196), xmmword_29D2F1090);
      v223 = vpmaxq_s16(v222, v222);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v224 = vpmaxq_s16(v223, v223);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v225 = vmaxq_s16(v217, v224);
      v226 = vminq_s16(v218, v499.val[0]);
      v227 = vzip1q_s16(v224, v499.val[0]);
      v228 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v499.val[0] = vmaxq_s16(vmaxq_s16(v205, v213), vmaxq_s16(v221, v229));
      v230 = vclzq_s16(vsubq_s16(v225, v226));
      v231 = vsubq_s16(v189, v230);
      v232 = vcgtq_s16(v499.val[0], v231);
      v233 = vminq_s16(v231, v499.val[0]);
      v234.i64[0] = 0x3000300030003;
      v234.i64[1] = 0x3000300030003;
      v235 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v205), v234), 0);
      v236 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v213), v234), 0);
      v237 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v221), v234), 0);
      v238 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v229), v234), 0);
      v239 = vsubq_s16(v233, v235);
      v240 = vsubq_s16(v233, v236);
      v241 = vsubq_s16(v233, v237);
      v242 = vsubq_s16(v233, v238);
      v243 = vceqq_s16(vaddq_s16(v238, v237), vnegq_s16(vaddq_s16(v235, v236)));
      v238.i64[0] = 0x4000400040004;
      v238.i64[1] = 0x4000400040004;
      v244 = vbicq_s8(v238, v243);
      v237.i64[0] = 0x7000700070007;
      v237.i64[1] = 0x7000700070007;
      v236.i64[0] = 0x8000800080008;
      v236.i64[1] = 0x8000800080008;
      v245 = vandq_s8(v158, v234);
      v246.i64[0] = 0x2000200020002;
      v246.i64[1] = 0x2000200020002;
      v247 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(vandq_s8(v158, v236))), vandq_s8(vaddq_s16(v158, v158), v236)), vandq_s8(vceqq_s16(v245, v246), v189)), v160, v237), vshlq_n_s16(vaddq_s16(vaddq_s16(v204, v161), v163), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v233, v232), vaddq_s16(v244, v244)), v239, v237), vshlq_n_s16(vaddq_s16(vaddq_s16(v241, v240), v242), 3uLL))), 0);
      if (vaddvq_s16(v247))
      {
        v248 = vandq_s8(vceqzq_s16(v233), v246);
        v249.i64[0] = 0x9000900090009;
        v249.i64[1] = 0x9000900090009;
        v250 = vorrq_s8(vorrq_s8(v248, vsubq_s16(vandq_s8(v232, v249), vmvnq_s8(v232))), v244);
        v251.i64[0] = 0xF000F000F000FLL;
        v251.i64[1] = 0xF000F000F000FLL;
        v252 = vsubq_s16(v251, v230);
        v253.i64[0] = -1;
        v253.i64[1] = -1;
        v254 = vandq_s8(vsubq_s16(vshlq_s16(v253, v252), v226), v232);
        v23.i32[0] = vbslq_s8(v247, vextq_s8(v18, v18, 0xCuLL), v23).u32[0];
        v498 = vbslq_s8(v247, v486, v498);
        v488 = vbslq_s8(v247, v190, v488);
        v172 = vbslq_s8(v247, v191, v172);
        v173 = vbslq_s8(v247, v192, v491);
        v174 = vbslq_s8(v247, v193, v493);
        v175 = vbslq_s8(v247, v194, v481);
        v177 = vbslq_s8(v247, v195, v495);
        v176 = vbslq_s8(v247, v484, v497);
        v160 = vbslq_s8(v247, v239, v160);
        v161 = vbslq_s8(v247, v240, v161);
        v162 = vbslq_s8(v247, v241, v204);
        v163 = vbslq_s8(v247, v242, v163);
        v157 = vbslq_s8(v247, v254, v479);
        v82 = vbslq_s8(v247, v233, v82);
        v158 = vbslq_s8(v247, v250, v158);
      }

      else
      {
        v177 = v495;
        v176 = v497;
        v157 = v479;
        v175 = v481;
        v173 = v491;
        v174 = v493;
        v162 = v204;
      }
    }

    v255.i64[0] = 0x8000800080008;
    v255.i64[1] = 0x8000800080008;
    v256 = vandq_s8(v158, v255);
    v257.i64[0] = 0x3000300030003;
    v257.i64[1] = 0x3000300030003;
    v258.i64[0] = 0x2000200020002;
    v258.i64[1] = 0x2000200020002;
    v259 = vceqq_s16(vandq_s8(v158, v257), v258);
    v258.i64[0] = 0x10001000100010;
    v258.i64[1] = 0x10001000100010;
    v260 = vandq_s8(v259, v258);
    v258.i64[0] = 0x7000700070007;
    v258.i64[1] = 0x7000700070007;
    v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(v256)), vandq_s8(vaddq_s16(v158, v158), v255)), v260), v160, v258), vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v161), v163), 3uLL));
    if ((vpaddq_s16(v261, v261).i16[0] - 347) < 0xFFFFFFFFFFFFFE78)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 48;
    }

    else
    {
      v262 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v263 = 8 * (a1 & 7);
      if (v263)
      {
        v264 = *v262 & ~(-1 << v263);
      }

      else
      {
        v264 = 0;
      }

      *a2 = 0;
      v265 = ((v82.i16[0] << 10) + 15360) & 0x3C00;
      if (!v82.i16[0])
      {
        v265 = 0;
      }

      if (v82.i16[1])
      {
        v266 = ((v82.u16[1] << 14) + 245760) & 0x3C000;
      }

      else
      {
        v266 = 0;
      }

      v267 = v265 | v266 | v158.i8[0] & 0x1F | (32 * (v158.i8[2] & 0x1Fu));
      v268 = v23.i16[0] & 0x3FF | ((v23.i16[1] & 0x3FF) << 10);
      v269 = (v267 << v263) | v264;
      if (v263 >= 0x2E)
      {
        *v262 = v269;
        v269 = v267 >> (-8 * (a1 & 7u));
      }

      v270 = (v263 + 18) & 0x3A;
      v271 = v269 | (v268 << v270);
      if (v270 >= 0x2C)
      {
        *(v262 + (((v263 + 18) >> 3) & 8)) = v271;
        v271 = v268 >> -v270;
      }

      v272 = v263 + 38;
      v273 = vsubq_s16(v82, v160);
      v274 = vsubq_s16(v82, v161);
      v275 = vsubq_s16(v82, v162);
      v276 = vsubq_s16(v82, v163);
      *v273.i8 = vqmovn_u16(v273);
      *v274.i8 = vqmovn_u16(v274);
      *v275.i8 = vqmovn_u16(v275);
      *v276.i8 = vqmovn_u16(v276);
      v273.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v273, v274), vzip1q_s8(v275, v276)), vzip1q_s16(vtrn2q_s8(v273, v274), vtrn2q_s8(v275, v276))).u64[0];
      v275.i64[0] = 0x202020202020202;
      v275.i64[1] = 0x202020202020202;
      v277 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v158.i8, 0x4000400040004)))), v275);
      v275.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v275.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v276.i64[0] = -1;
      v276.i64[1] = -1;
      v278 = vandq_s8(vshlq_u8(v276, vorrq_s8(v277, v275)), v273.u64[0]);
      v279 = vmovl_u8(*v277.i8);
      v280 = vpaddq_s16(vshlq_u16(vmovl_u8(*v278.i8), vtrn1q_s16(0, v279)), vmovl_high_u8(v278));
      v281 = vpaddq_s16(v279, vmovl_high_u8(v277));
      v282 = vmovl_u16(*v281.i8);
      v283 = vmovl_high_u16(v281);
      v284 = vpaddq_s32(vshlq_u32(vmovl_u16(*v280.i8), vtrn1q_s32(0, v282)), vshlq_u32(vmovl_high_u16(v280), vtrn1q_s32(0, v283)));
      v285 = vpaddq_s32(v282, v283);
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
      v292 = (v263 + 38) & 0x3E;
      v293 = (v290.i64[0] << v292) | v271;
      if ((v291.i64[0] + v292) >= 0x40)
      {
        *(v262 + ((v272 >> 3) & 8)) = v293;
        v293 = v290.i64[0] >> -v292;
      }

      v294 = vceqq_s16(v82, v160);
      v295 = v291.i64[0] + v272;
      v296 = v293 | (v290.i64[1] << v295);
      if ((v295 & 0x3F) + v291.i64[1] >= 0x40)
      {
        *(v262 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v296;
        v296 = v290.i64[1] >> -(v295 & 0x3F);
        if ((v295 & 0x3F) == 0)
        {
          v296 = 0;
        }
      }

      v297 = vandq_s8(v157, v294);
      v298 = v295 + v291.i64[1];
      v299.i64[0] = -1;
      v299.i64[1] = -1;
      v300 = vandq_s8(vextq_s8(vtstq_s16(v256, v256), 0, 0xCuLL), v82);
      v301.i64[0] = 0xF000F000F000FLL;
      v301.i64[1] = 0xF000F000F000FLL;
      v302 = vandq_s8(vshlq_u16(v299, vaddq_s16(v300, v301)), v157);
      v303 = vmovl_u16(*v300.i8);
      v304 = vpaddq_s32(vshlq_u32(vmovl_u16(*v302.i8), vtrn1q_s32(0, v303)), vmovl_high_u16(v302));
      v305 = vpaddq_s32(v303, vmovl_high_u16(v300));
      v306.i64[0] = v304.u32[0];
      v306.i64[1] = v304.u32[1];
      v307 = v306;
      v306.i64[0] = v304.u32[2];
      v306.i64[1] = v304.u32[3];
      v308 = v306;
      v306.i64[0] = v305.u32[0];
      v306.i64[1] = v305.u32[1];
      v309 = v306;
      v306.i64[0] = v305.u32[2];
      v306.i64[1] = v305.u32[3];
      v310 = vpaddq_s64(vshlq_u64(v307, vzip1q_s64(0, v309)), vshlq_u64(v308, vzip1q_s64(0, v306)));
      v311 = vpaddq_s64(v309, v306);
      v312 = (v310.i64[0] << v298) | v296;
      if (v311.i64[0] + (v298 & 0x3F) >= 0x40)
      {
        *(v262 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
        v312 = v310.i64[0] >> -(v298 & 0x3F);
        if ((v298 & 0x3F) == 0)
        {
          v312 = 0;
        }
      }

      v313 = vaddq_s16(v297, v498);
      v314 = v311.i64[0] + v298;
      v315 = v312 | (v310.i64[1] << v314);
      if ((v314 & 0x3F) + v311.i64[1] >= 0x40)
      {
        *(v262 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
        v315 = v310.i64[1] >> -(v314 & 0x3F);
        if ((v314 & 0x3F) == 0)
        {
          v315 = 0;
        }
      }

      v316 = v314 + v311.i64[1];
      v317 = vextq_s8(0, v160, 0xCuLL);
      v318.i64[0] = 0xF000F000F000FLL;
      v318.i64[1] = 0xF000F000F000FLL;
      v319.i64[0] = -1;
      v319.i64[1] = -1;
      v320 = vandq_s8(vshlq_u16(v319, vaddq_s16(v317, v318)), v313);
      v321 = vmovl_u16(*v317.i8);
      v322 = vmovl_high_u16(v317);
      v323 = vpaddq_s32(vshlq_u32(vmovl_u16(*v320.i8), vtrn1q_s32(0, v321)), vshlq_u32(vmovl_high_u16(v320), vtrn1q_s32(0, v322)));
      v324 = vpaddq_s32(v321, v322);
      v325.i64[0] = v323.u32[0];
      v325.i64[1] = v323.u32[1];
      v326 = v325;
      v325.i64[0] = v323.u32[2];
      v325.i64[1] = v323.u32[3];
      v327 = v325;
      v325.i64[0] = v324.u32[0];
      v325.i64[1] = v324.u32[1];
      v328 = v325;
      v325.i64[0] = v324.u32[2];
      v325.i64[1] = v324.u32[3];
      v329 = vpaddq_s64(vshlq_u64(v326, vzip1q_s64(0, v328)), vshlq_u64(v327, vzip1q_s64(0, v325)));
      v330 = vpaddq_s64(v328, v325);
      v331 = (v329.i64[0] << v316) | v315;
      if (v330.i64[0] + (v316 & 0x3F) >= 0x40)
      {
        *(v262 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v329.i64[0] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = vceqq_s16(v82, v161);
      v333 = vaddq_s16(v488, v297);
      v334 = v330.i64[0] + v316;
      v335 = v331 | (v329.i64[1] << v334);
      if ((v334 & 0x3F) + v330.i64[1] >= 0x40)
      {
        *(v262 + ((v334 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
        v335 = v329.i64[1] >> -(v334 & 0x3F);
        if ((v334 & 0x3F) == 0)
        {
          v335 = 0;
        }
      }

      v336 = vandq_s8(v157, v332);
      v337 = v334 + v330.i64[1];
      v338.i64[0] = 0xF000F000F000FLL;
      v338.i64[1] = 0xF000F000F000FLL;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vandq_s8(vshlq_u16(v339, vaddq_s16(v160, v338)), v333);
      v341 = vmovl_u16(*v160.i8);
      v342 = vmovl_high_u16(v160);
      v343 = vpaddq_s32(vshlq_u32(vmovl_u16(*v340.i8), vtrn1q_s32(0, v341)), vshlq_u32(vmovl_high_u16(v340), vtrn1q_s32(0, v342)));
      v344 = vpaddq_s32(v341, v342);
      v345.i64[0] = v343.u32[0];
      v345.i64[1] = v343.u32[1];
      v346 = v345;
      v345.i64[0] = v343.u32[2];
      v345.i64[1] = v343.u32[3];
      v347 = v345;
      v345.i64[0] = v344.u32[0];
      v345.i64[1] = v344.u32[1];
      v348 = v345;
      v345.i64[0] = v344.u32[2];
      v345.i64[1] = v344.u32[3];
      v349 = vpaddq_s64(vshlq_u64(v346, vzip1q_s64(0, v348)), vshlq_u64(v347, vzip1q_s64(0, v345)));
      v350 = vpaddq_s64(v348, v345);
      v351 = (v349.i64[0] << v337) | v335;
      if (v350.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v262 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        v351 = v349.i64[0] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v351 = 0;
        }
      }

      v352 = vaddq_s16(v172, v336);
      v353 = v350.i64[0] + v337;
      v354 = v351 | (v349.i64[1] << v353);
      if ((v353 & 0x3F) + v350.i64[1] >= 0x40)
      {
        *(v262 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v349.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v350.i64[1];
      v356.i64[0] = 0xF000F000F000FLL;
      v356.i64[1] = 0xF000F000F000FLL;
      v357.i64[0] = -1;
      v357.i64[1] = -1;
      v358 = vshlq_u16(v357, vaddq_s16(v161, v356));
      v359 = vandq_s8(v358, v352);
      v360 = vmovl_u16(*v359.i8);
      v361 = vmovl_high_u16(v359);
      v362 = vmovl_u16(*v161.i8);
      v363 = vmovl_high_u16(v161);
      v364 = vtrn1q_s32(0, v362);
      v365 = vtrn1q_s32(0, v363);
      v366 = vpaddq_s32(vshlq_u32(v360, v364), vshlq_u32(v361, v365));
      v367 = vpaddq_s32(v362, v363);
      v368.i64[0] = v366.u32[0];
      v368.i64[1] = v366.u32[1];
      v369 = v368;
      v368.i64[0] = v366.u32[2];
      v368.i64[1] = v366.u32[3];
      v370 = v368;
      v368.i64[0] = v367.u32[0];
      v368.i64[1] = v367.u32[1];
      v371 = v368;
      v368.i64[0] = v367.u32[2];
      v368.i64[1] = v367.u32[3];
      v372 = vzip1q_s64(0, v371);
      v373 = vzip1q_s64(0, v368);
      v374 = vpaddq_s64(vshlq_u64(v369, v372), vshlq_u64(v370, v373));
      v375 = vpaddq_s64(v371, v368);
      v376 = (v374.i64[0] << v355) | v354;
      if (v375.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v262 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        if ((v355 & 0x3F) != 0)
        {
          v376 = v374.i64[0] >> -(v355 & 0x3F);
        }

        else
        {
          v376 = 0;
        }
      }

      v377 = vceqq_s16(v82, v162);
      v378 = vaddq_s16(v173, v336);
      v379 = v375.i64[0] + v355;
      v380 = v376 | (v374.i64[1] << v379);
      if ((v379 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v262 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v374.i64[1] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = vandq_s8(v157, v377);
      v382 = v379 + v375.i64[1];
      v383 = vandq_s8(v358, v378);
      v384 = vpaddq_s32(vshlq_u32(vmovl_u16(*v383.i8), v364), vshlq_u32(vmovl_high_u16(v383), v365));
      v385.i64[0] = v384.u32[0];
      v385.i64[1] = v384.u32[1];
      v386 = v385;
      v385.i64[0] = v384.u32[2];
      v385.i64[1] = v384.u32[3];
      v387 = vpaddq_s64(vshlq_u64(v386, v372), vshlq_u64(v385, v373));
      v388 = (v387.i64[0] << v382) | v380;
      if (v375.i64[0] + (v382 & 0x3F) >= 0x40)
      {
        *(v262 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
        v388 = v387.i64[0] >> -(v382 & 0x3F);
        if ((v382 & 0x3F) == 0)
        {
          v388 = 0;
        }
      }

      v389 = vaddq_s16(v174, v381);
      v390 = v375.i64[0] + v382;
      v391 = (v375.i64[0] + v382) & 0x3F;
      v392 = v388 | (v387.i64[1] << v390);
      if ((v390 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v262 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v392;
        v392 = v387.i64[1] >> -v391;
        if (!v391)
        {
          v392 = 0;
        }
      }

      v393 = v390 + v375.i64[1];
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v395.i64[0] = -1;
      v395.i64[1] = -1;
      v396 = vshlq_u16(v395, vaddq_s16(v162, v394));
      v397 = vandq_s8(v396, v389);
      v398 = vmovl_u16(*v397.i8);
      v399 = vmovl_high_u16(v397);
      v400 = vmovl_u16(*v162.i8);
      v401 = vmovl_high_u16(v162);
      v402 = vtrn1q_s32(0, v400);
      v403 = vtrn1q_s32(0, v401);
      v404 = vpaddq_s32(vshlq_u32(v398, v402), vshlq_u32(v399, v403));
      v405 = vpaddq_s32(v400, v401);
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
      v410 = vzip1q_s64(0, v409);
      v411 = vzip1q_s64(0, v406);
      v412 = vpaddq_s64(vshlq_u64(v407, v410), vshlq_u64(v408, v411));
      v413 = vpaddq_s64(v409, v406);
      v414 = (v390 + v375.i64[1]) & 0x3F;
      v415 = (v412.i64[0] << (v390 + v375.i8[8])) | v392;
      if ((v413.i64[0] + v414) >= 0x40)
      {
        *(v262 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
        if (v414)
        {
          v415 = v412.i64[0] >> -v414;
        }

        else
        {
          v415 = 0;
        }
      }

      v416 = vceqq_s16(v82, v163);
      v417 = vaddq_s16(v175, v381);
      v418 = v413.i64[0] + v393;
      v419 = v415 | (v412.i64[1] << v418);
      if ((v418 & 0x3F) + v413.i64[1] >= 0x40)
      {
        *(v262 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v419;
        v419 = v412.i64[1] >> -(v418 & 0x3F);
        if ((v418 & 0x3F) == 0)
        {
          v419 = 0;
        }
      }

      v420 = vandq_s8(v157, v416);
      v421 = v418 + v413.i64[1];
      v422 = vandq_s8(v396, v417);
      v423 = vpaddq_s32(vshlq_u32(vmovl_u16(*v422.i8), v402), vshlq_u32(vmovl_high_u16(v422), v403));
      v424.i64[0] = v423.u32[0];
      v424.i64[1] = v423.u32[1];
      v425 = v424;
      v424.i64[0] = v423.u32[2];
      v424.i64[1] = v423.u32[3];
      v426 = vpaddq_s64(vshlq_u64(v425, v410), vshlq_u64(v424, v411));
      v427 = (v426.i64[0] << v421) | v419;
      if (v413.i64[0] + (v421 & 0x3F) >= 0x40)
      {
        *(v262 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
        v427 = v426.i64[0] >> -(v421 & 0x3F);
        if ((v421 & 0x3F) == 0)
        {
          v427 = 0;
        }
      }

      v428 = vaddq_s16(v177, v420);
      v429 = v413.i64[0] + v421;
      v430 = (v413.i64[0] + v421) & 0x3F;
      v431 = v427 | (v426.i64[1] << v429);
      if ((v429 & 0x3F) + v413.i64[1] >= 0x40)
      {
        *(v262 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        v431 = v426.i64[1] >> -v430;
        if (!v430)
        {
          v431 = 0;
        }
      }

      v432 = v429 + v413.i64[1];
      v433.i64[0] = 0xF000F000F000FLL;
      v433.i64[1] = 0xF000F000F000FLL;
      v434.i64[0] = -1;
      v434.i64[1] = -1;
      v435 = vshlq_u16(v434, vaddq_s16(v163, v433));
      v436 = vandq_s8(v435, v428);
      v437 = vmovl_u16(*v436.i8);
      v438 = vmovl_high_u16(v436);
      v439 = vmovl_u16(*v163.i8);
      v440 = vmovl_high_u16(v163);
      v441 = vtrn1q_s32(0, v439);
      v442 = vtrn1q_s32(0, v440);
      v443 = vpaddq_s32(vshlq_u32(v437, v441), vshlq_u32(v438, v442));
      v444 = vpaddq_s32(v439, v440);
      v445.i64[0] = v443.u32[0];
      v445.i64[1] = v443.u32[1];
      v446 = v445;
      v445.i64[0] = v443.u32[2];
      v445.i64[1] = v443.u32[3];
      v447 = v445;
      v445.i64[0] = v444.u32[0];
      v445.i64[1] = v444.u32[1];
      v448 = v445;
      v445.i64[0] = v444.u32[2];
      v445.i64[1] = v444.u32[3];
      v449 = vzip1q_s64(0, v448);
      v450 = vzip1q_s64(0, v445);
      v451 = vpaddq_s64(vshlq_u64(v446, v449), vshlq_u64(v447, v450));
      v452 = vpaddq_s64(v448, v445);
      v453 = (v429 + v413.i64[1]) & 0x3F;
      v454 = (v451.i64[0] << (v429 + v413.i8[8])) | v431;
      if ((v452.i64[0] + v453) > 0x3F)
      {
        *(v262 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v454;
        if (v453)
        {
          v454 = v451.i64[0] >> -v453;
        }

        else
        {
          v454 = 0;
        }
      }

      v455 = vaddq_s16(v176, v420);
      v456 = v452.i64[0] + v432;
      v457 = v454 | (v451.i64[1] << v456);
      if ((v456 & 0x3F) + v452.i64[1] >= 0x40)
      {
        *(v262 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
        v457 = v451.i64[1] >> -(v456 & 0x3F);
        if ((v456 & 0x3F) == 0)
        {
          v457 = 0;
        }
      }

      v458 = v456 + v452.i64[1];
      v459 = vandq_s8(v435, v455);
      v460 = vpaddq_s32(vshlq_u32(vmovl_u16(*v459.i8), v441), vshlq_u32(vmovl_high_u16(v459), v442));
      v461.i64[0] = v460.u32[0];
      v461.i64[1] = v460.u32[1];
      v462 = v461;
      v461.i64[0] = v460.u32[2];
      v461.i64[1] = v460.u32[3];
      v463 = vpaddq_s64(vshlq_u64(v462, v449), vshlq_u64(v461, v450));
      v464 = (v463.i64[0] << v458) | v457;
      if (v452.i64[0] + (v458 & 0x3F) >= 0x40)
      {
        *(v262 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
        v464 = v463.i64[0] >> -(v458 & 0x3F);
        if ((v458 & 0x3F) == 0)
        {
          v464 = 0;
        }
      }

      v465 = v452.i64[0] + v458;
      v466 = (v452.i64[0] + v458) & 0x3F;
      v467 = v464 | (v463.i64[1] << (v452.i8[0] + v458));
      if ((v466 + v452.i64[1]) >= 0x40)
      {
        *(v262 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
        v467 = v463.i64[1] >> -v466;
        if (!v466)
        {
          v467 = 0;
        }
      }

      v468 = v465 + v452.i64[1];
      if ((v468 & 0x3F) != 0)
      {
        *(v262 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      }

      result = (v468 - v263 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v178 = (a3->i32[0] >> 12) & 0xFFFFFC00 | (a3->i32[0] >> 6);
    *(a1 + 2) = a3->i32[0] >> 28;
    *a1 = v178;
    *a2 = 2;
    return 3;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v70 = *MEMORY[0x29EDCA608];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (a6 && a5)
  {
    v11 = a6;
    if (a5 > 3)
    {
      v14 = a5 & 0x7C;
      if (a5 == v14)
      {
        v15 = 0;
        v16 = &v64;
        do
        {
          v17 = a3;
          v18 = v16;
          v19 = a5;
          do
          {
            v20 = *v17++;
            v21 = vshrq_n_u32(v20, 6uLL);
            *(v18 - 8) = v21.i32[0] & 0xFFFF03FF;
            *(v18 - 4) = v21.i32[1] & 0xFFFF03FF;
            *v18 = v21.i32[2] & 0xFFFF03FF;
            v18[4] = v21.i32[3] & 0xFFFF03FF;
            v18 += 16;
            v19 -= 4;
          }

          while (v19);
          ++v15;
          v16 = (v16 + 4);
          a3 = (a3 + a4);
        }

        while (v15 != a6);
      }

      else
      {
        v22 = 0;
        v23 = &v62;
        v24 = &v64;
        do
        {
          v25 = a3;
          v26 = v24;
          v27 = a5 & 0x7C;
          do
          {
            v28 = *v25++;
            v29 = vshrq_n_u32(v28, 6uLL);
            *(v26 - 8) = v29.i32[0] & 0xFFFF03FF;
            *(v26 - 4) = v29.i32[1] & 0xFFFF03FF;
            *v26 = v29.i32[2] & 0xFFFF03FF;
            v26[4] = v29.i32[3] & 0xFFFF03FF;
            v26 += 16;
            v27 -= 4;
          }

          while (v27);
          v30 = v14;
          v31 = a5 - v14;
          do
          {
            LODWORD(v23[v30]) = (a3->i32[v30] >> 6) & 0x3FF03FF;
            ++v30;
            --v31;
          }

          while (v31);
          ++v22;
          v24 = (v24 + 4);
          a3 = (a3 + a4);
          v23 = (v23 + 4);
        }

        while (v22 != a6);
      }
    }

    else
    {
      v12 = &a3->i32[2];
      v13 = &v63;
      do
      {
        *(v13 - 4) = (*(v12 - 2) >> 6) & 0x3FF03FF;
        if (a5 != 1)
        {
          *v13 = (*(v12 - 1) >> 6) & 0x3FF03FF;
          if (a5 != 2)
          {
            v13[4] = (*v12 >> 6) & 0x3FF03FF;
          }
        }

        v12 = (v12 + a4);
        ++v13;
        --v11;
      }

      while (v11);
    }
  }

  v46 = v62;
  v47 = WORD1(v62);
  v48 = v63;
  v49 = WORD1(v63);
  v50 = WORD2(v62);
  v51 = WORD3(v62);
  v52 = WORD2(v63);
  v53 = WORD3(v63);
  v54 = v64;
  v55 = WORD1(v64);
  v56 = v65;
  v57 = WORD1(v65);
  v58 = WORD2(v64);
  v59 = WORD3(v64);
  if (a5 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = a5;
  }

  if (a5 >= 4)
  {
    v33 = a5 - 4;
  }

  else
  {
    v33 = 0;
  }

  v60 = WORD2(v65);
  v61 = WORD3(v65);
  if (a6 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = a6;
  }

  if (a6 >= 2)
  {
    v35 = a6 - 2;
  }

  else
  {
    v35 = 0;
  }

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v46, a7, v32, v34);
  v46 = WORD4(v62);
  v47 = WORD5(v62);
  v48 = WORD4(v63);
  v49 = WORD5(v63);
  v50 = WORD6(v62);
  v51 = HIWORD(v62);
  v52 = WORD6(v63);
  v53 = HIWORD(v63);
  v54 = WORD4(v64);
  v55 = WORD5(v64);
  v56 = WORD4(v65);
  v57 = WORD5(v65);
  v58 = WORD6(v64);
  v59 = HIWORD(v64);
  v60 = WORD6(v65);
  v61 = HIWORD(v65);
  if (a6 >= 4)
  {
    v37 = 2;
  }

  else
  {
    v37 = v35;
  }

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 12, &v46, a7, v32, v37);
  v46 = v66;
  v47 = WORD1(v66);
  v48 = v67;
  v49 = WORD1(v67);
  v50 = WORD2(v66);
  v51 = WORD3(v66);
  v52 = WORD2(v67);
  v53 = WORD3(v67);
  v54 = v68;
  v55 = WORD1(v68);
  v56 = v69;
  v57 = WORD1(v69);
  v58 = WORD2(v68);
  v59 = WORD3(v68);
  if (a5 >= 8)
  {
    v39 = 4;
  }

  else
  {
    v39 = v33;
  }

  v60 = WORD2(v69);
  v61 = WORD3(v69);
  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 24, &v46, a7, v39, v34);
  v46 = WORD4(v66);
  v47 = WORD5(v66);
  v48 = WORD4(v67);
  v49 = WORD5(v67);
  v50 = WORD6(v66);
  v51 = HIWORD(v66);
  v52 = WORD6(v67);
  v53 = HIWORD(v67);
  v54 = WORD4(v68);
  v55 = WORD5(v68);
  v56 = WORD4(v69);
  v57 = WORD5(v69);
  v58 = WORD6(v68);
  v59 = HIWORD(v68);
  v60 = WORD6(v69);
  v61 = HIWORD(v69);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 36, &v46, a7, v39, v37);
  if (v40)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  if (v38)
  {
    v43 = 2;
  }

  else
  {
    v43 = 0;
  }

  if (result)
  {
    v44 = -8;
  }

  else
  {
    v44 = -16;
  }

  *a2 = v44 | v42 | v36 | v43;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v350 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v299 = v7;
  v8 = a4 < 2 || a5 == 0;
  v298 = v8;
  v9 = a4 < 2 || a5 < 2;
  v297 = v9;
  v10 = a4 < 3 || a5 == 0;
  v296 = v10;
  v11 = a4 < 3 || a5 < 2;
  v295 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v294 = v6;
  v12 = a4 < 4 || a5 < 2;
  v293 = v12;
  v13 = &v332;
  v14 = &v334;
  v15 = &v338;
  v16 = &v342;
  v17 = &v346;
  v18 = &v348;
  v19 = &v317;
  v20 = &v315;
  v21 = &v313;
  v22 = &v311;
  v23 = &v309;
  v24 = v307;
  v25 = 1;
  v26 = &v336;
  v27 = &v340;
  v28 = &v344;
  v292 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)5,(AGXTextureFootprint)3>::compBits[v5];
    *v19 = v32;
    if (v32 <= 11)
    {
      if (v32 == 2)
      {
        v30 = 5;
      }

      else
      {
        v30 = v32 == 10;
      }
    }

    else
    {
      switch(v32)
      {
        case 12:
          v30 = 2;
          break;
        case 16:
          v30 = 3;
          break;
        case 32:
          v30 = 4;
          break;
      }
    }

    *v23 = v30;
    v33 = 1 << (v32 - 1);
    *v24 = v33;
    v34 = *(a2 + 4 * v5);
    if (a3 == 1)
    {
      v34 ^= v33;
      if (v34 == 1)
      {
        v34 = 0;
      }

      *v13 = v34;
      v43 = (a2 + 4 * v5);
      if ((v43[2] ^ v33) == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = v43[2] ^ v33;
      }

      *v14 = v36;
      if ((v43[4] ^ v33) == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v43[4] ^ v33;
      }

      *v26 = v37;
      if ((v43[6] ^ v33) == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = v43[6] ^ v33;
      }

      *v15 = v38;
      v39 = v43[8] ^ v33;
      if (v39 == 1)
      {
        v39 = 0;
      }

      *v27 = v39;
      if ((v43[10] ^ v33) == 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = v43[10] ^ v33;
      }

      *v16 = v40;
      if ((v43[12] ^ v33) == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = v43[12] ^ v33;
      }

      *v28 = v41;
      v44 = v43[14] ^ v33;
      if (v44 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = v44;
      }
    }

    else if (a3 == 3)
    {
      v34 ^= v33;
      *v13 = v34;
      v35 = (a2 + 4 * v5);
      v36 = v35[2] ^ v33;
      *v14 = v36;
      v37 = v35[4] ^ v33;
      *v26 = v37;
      v38 = v35[6] ^ v33;
      *v15 = v38;
      v39 = v35[8] ^ v33;
      *v27 = v39;
      v40 = v35[10] ^ v33;
      *v16 = v40;
      v41 = v35[12] ^ v33;
      *v28 = v41;
      v42 = v35[14] ^ v33;
    }

    else
    {
      *v13 = v34;
      v45 = (a2 + 4 * v5);
      v36 = v45[2];
      *v14 = v36;
      v37 = v45[4];
      *v26 = v37;
      v38 = v45[6];
      *v15 = v38;
      v39 = v45[8];
      *v27 = v39;
      v40 = v45[10];
      *v16 = v40;
      v41 = v45[12];
      *v28 = v41;
      v42 = v45[14];
    }

    *v17 = v42;
    *v21 = v34;
    *v20 = v34;
    *v22 = 0;
    if (v298)
    {
      v46 = v34;
    }

    else
    {
      v46 = v34;
      if (v36 < v34)
      {
        *v22 = 1;
        *v20 = v36;
        v46 = v36;
      }

      if (v34 >= v36)
      {
        v47 = v21;
      }

      else
      {
        v47 = v14;
      }

      v34 = *v47;
      *v21 = v34;
    }

    a2 = v29;
    if (v299)
    {
      if (v297)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v37 < v46)
      {
        *v22 = 2;
        *v20 = v37;
        v46 = v37;
      }

      if (v34 >= v37)
      {
        v48 = v21;
      }

      else
      {
        v48 = v26;
      }

      v34 = *v48;
      *v21 = v34;
      if (v297)
      {
LABEL_69:
        if (v296)
        {
          goto LABEL_70;
        }

        goto LABEL_84;
      }
    }

    if (v38 < v46)
    {
      *v22 = 3;
      *v20 = v38;
      v46 = v38;
    }

    if (v34 >= v38)
    {
      v49 = v21;
    }

    else
    {
      v49 = v15;
    }

    v34 = *v49;
    *v21 = v34;
    if (v296)
    {
LABEL_70:
      if (v294)
      {
        goto LABEL_96;
      }

LABEL_90:
      if (v40 < v46)
      {
        *v22 = 5;
        *v20 = v40;
        v46 = v40;
      }

      if (v34 >= v40)
      {
        v51 = v21;
      }

      else
      {
        v51 = v16;
      }

      v34 = *v51;
      *v21 = v34;
      goto LABEL_96;
    }

LABEL_84:
    if (v39 < v46)
    {
      *v22 = 4;
      *v20 = v39;
      v46 = v39;
    }

    if (v34 >= v39)
    {
      v50 = v21;
    }

    else
    {
      v50 = v27;
    }

    v34 = *v50;
    *v21 = v34;
    if (!v294)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v292;
    if (!v295)
    {
      if (v41 < v46)
      {
        *v22 = 6;
        *v20 = v41;
        v46 = v41;
      }

      if (v34 >= v41)
      {
        v52 = v21;
      }

      else
      {
        v52 = v28;
      }

      v34 = *v52;
      *v21 = v34;
    }

    if (!v293)
    {
      if (v42 < v46)
      {
        *v22 = 7;
        *v20 = v42;
        v46 = v42;
      }

      if (v34 >= v42)
      {
        v53 = v21;
      }

      else
      {
        v53 = v17;
      }

      v34 = *v53;
      *v21 = *v53;
    }

    v54 = v34 - v46;
    v55 = __clz(v34 - v46);
    v56 = 32 - v55;
    if (v32 <= 11)
    {
      if (v32 != 2)
      {
        if (v32 == 8)
        {
          v58 = 1;
          goto LABEL_133;
        }

        if (v32 == 10)
        {
          if (v55 - 29 < 3)
          {
            v56 = 3;
          }

          goto LABEL_132;
        }

        goto LABEL_125;
      }

      v57 = v55 == 31;
      goto LABEL_130;
    }

    if (v32 != 12)
    {
      if (v32 != 16)
      {
        if (v32 == 32)
        {
          v56 -= v56 >> 1;
LABEL_132:
          v58 = -1;
          goto LABEL_133;
        }

LABEL_125:
        v58 = 0;
        goto LABEL_133;
      }

      v57 = v55 == 31 && v34 == 0xFFFF;
LABEL_130:
      if (v57)
      {
        v56 = 2;
      }

      goto LABEL_132;
    }

    if ((v55 & 0x3C) == 0x1C)
    {
      v56 = 4;
    }

    v58 = -2;
LABEL_133:
    v59 = v56 + v58;
    v60 = v59 & ~(v59 >> 31);
    if (v34 == v46 && (v32 - 8) <= 4 && v59 <= 2)
    {
      if (v46)
      {
        v60 = (v46 ^ (-1 << v32)) != 0xFFFFFFFF || v32 > 0xB;
      }

      else
      {
        v60 = 0;
      }
    }

    *v18 = v60;
    if ((v292 | 2) == 3)
    {
      v61 = 0;
      if (v46 < v33 && v34 >= v33)
      {
        v61 = kDQuadParamTable[160 * v30 + 8 + 10 * v60] == 0;
      }
    }

    else
    {
      v61 = 0;
    }

    if (v60 >= kDquadTransition[v30] || v61)
    {
      v62 = kDQuadParamTable[160 * v30 + 4 + 10 * v60] - v61 + *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v30 + 2);
      if (v61)
      {
        v63 = 0;
      }

      else
      {
        v63 = -2;
      }

      v68 = v32 >= v62;
      v64 = v32 - v62;
      v91 = v64 != 0 && v68;
      v65 = v46 & ~(-1 << v64);
      if (!v91)
      {
        v65 = 0;
      }

      v66 = v65 + v63;
      v91 = v66 < 1;
      v67 = __clz(v66 + v54);
      v68 = v91 || v67 >= v55;
      if (v68)
      {
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *v18 = ++v60;
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      v69 = kDquadMaxMode[v30];
      if (v69 >= v60)
      {
        v69 = v60;
      }

      *v18 = v69;
    }

LABEL_22:
    v25 = 0;
    v19 = &v316;
    v20 = &v314;
    v21 = &v312;
    v22 = &v310;
    v23 = &v308;
    v24 = v306;
    v14 = &v335;
    v13 = &v333;
    v15 = &v339;
    v26 = &v337;
    v16 = &v343;
    v27 = &v341;
    v17 = &v347;
    v28 = &v345;
    v18 = &v349;
    v5 = 1u;
  }

  while ((v31 & 1) != 0);
  if (a5)
  {
    v70 = a4 == 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v70;
  v286 = v71;
  v72 = v309;
  v73 = v348;
  v74 = v349;
  v76 = v349 >= v348;
  v77 = v308;
  v78 = kDQuadParamTable[160 * v308 + 6 + 10 * v349];
  v320 = kDQuadParamTable[160 * v309 + 6 + 10 * v348];
  v75 = v320;
  v321 = v78;
  v322[0] = v320;
  v322[1] = v78;
  if (*(&v348 + (v349 >= v348)) == *(&v348 + (v349 < v348)))
  {
    v79 = v320;
  }

  else
  {
    v80 = v322[v349 < v348];
    v79 = v320;
    if (v80 >= 1)
    {
      *(&v320 + (v349 < v348)) = 0;
      *(&v320 + v76) += v80;
      v79 = v320;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v83 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v72 + 2);
  v84 = v81[4];
  LODWORD(v81) = v81[5];
  v85 = v84 + v83;
  v305 = v85;
  v86 = v81 + v83;
  v303 = v86;
  v87 = v79 - v75;
  if (v87 < 0)
  {
    v89 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v89[7] < -v87)
    {
      v303 = --v86;
      if (!v89[8])
      {
        v88 = -1;
LABEL_177:
        v305 = v88 + v85;
      }
    }
  }

  else if (v87)
  {
    v86 += v87;
    v303 = v86;
    v88 = v87;
    goto LABEL_177;
  }

  v91 = v72 == 5 && v73 == 1 && v87 < 2;
  v92 = v91;
  if (v292 == 4)
  {
    v93 = 1 << (v317 - 1);
    if (v72 == 3)
    {
      v94 = -31745;
    }

    else
    {
      v94 = -1;
    }

    if (v72 == 4)
    {
      v95 = -2139095041;
    }

    else
    {
      v95 = v94;
    }

    if (v286)
    {
      if (v298)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v334 | v95) == 0xFFFFFFFF || v334 == v93)
      {
        v92 = 1;
      }

      if (!v299)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v297)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v338 | v95) == 0xFFFFFFFF || v338 == v93)
      {
        v92 = 1;
      }

      if (!v296)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v294)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v342 | v95) == 0xFFFFFFFF || v342 == v93)
      {
        v92 = 1;
      }

      if (!v295)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v293)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v332 | v95) == 0xFFFFFFFF || v332 == v93)
      {
        v92 = 1;
      }

      if (!v298)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v299)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v336 | v95) == 0xFFFFFFFF || v336 == v93)
      {
        v92 = 1;
      }

      if (!v297)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v296)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v340 | v95) == 0xFFFFFFFF || v340 == v93)
      {
        v92 = 1;
      }

      if (!v294)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v295)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v344 | v95) == 0xFFFFFFFF || v344 == v93)
      {
        v92 = 1;
      }

      if (!v293)
      {
LABEL_204:
        if ((v346 | v95) == 0xFFFFFFFF || v346 == v93)
        {
          v92 = 1;
        }
      }
    }
  }

  v91 = v82 >> v86 > 0x10;
  v97 = v286;
  if (v91)
  {
    v97 = 1;
  }

  v98 = v97 | v92;
  v99 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v100 = *(v99 + 1);
  v101 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v77 + 2);
  v102 = v99[5];
  v103 = v99[4] + v101;
  v304 = v103;
  v104 = v102 + v101;
  v302 = v102 + v101;
  v105 = v321 - v78;
  if (v105 < 0)
  {
    v107 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v107[7] < -v105)
    {
      v302 = --v104;
      if (!v107[8])
      {
        v106 = -1;
LABEL_216:
        v304 = v106 + v103;
      }
    }
  }

  else if (v105)
  {
    v104 += v105;
    v302 = v104;
    v106 = v105;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v98 |= v105 < 2;
  }

  v282 = v73;
  if (v292 == 4)
  {
    v108 = 1 << (v316 - 1);
    if (v77 == 3)
    {
      v109 = -31745;
    }

    else
    {
      v109 = -1;
    }

    if (v77 == 4)
    {
      v110 = -2139095041;
    }

    else
    {
      v110 = v109;
    }

    if (v286)
    {
      if (v298)
      {
        goto LABEL_231;
      }

LABEL_402:
      v206 = (v335 | v110) == 0xFFFFFFFF || v335 == v108;
      v98 |= v206;
      if (!v299)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v297)
      {
        goto LABEL_233;
      }

LABEL_416:
      v210 = (v339 | v110) == 0xFFFFFFFF || v339 == v108;
      v98 |= v210;
      if (!v296)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v294)
      {
        goto LABEL_235;
      }

LABEL_430:
      v214 = (v343 | v110) == 0xFFFFFFFF || v343 == v108;
      v98 |= v214;
      if (v295)
      {
        goto LABEL_243;
      }

LABEL_236:
      v112 = (v345 | v110) == 0xFFFFFFFF || v345 == v108;
      v98 |= v112;
      goto LABEL_243;
    }

    v204 = (v333 | v110) == 0xFFFFFFFF || v333 == v108;
    v98 |= v204;
    if (!v298)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v299)
    {
      goto LABEL_232;
    }

LABEL_409:
    v208 = (v337 | v110) == 0xFFFFFFFF || v337 == v108;
    v98 |= v208;
    if (!v297)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v296)
    {
      goto LABEL_234;
    }

LABEL_423:
    v212 = (v341 | v110) == 0xFFFFFFFF || v341 == v108;
    v98 |= v212;
    if (!v294)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v295)
    {
      goto LABEL_236;
    }

LABEL_243:
    v113 = &v336;
    v114 = v324;
    if (!v293)
    {
      v116 = (v347 | v110) == 0xFFFFFFFF || v347 == v108;
      v98 |= v116;
    }

    v284 = v98;
  }

  else
  {
    v284 = v98;
    v113 = &v336;
    v114 = v324;
  }

  v117 = 0;
  v118 = v286;
  if (v100 >> v104 > 0x10)
  {
    v118 = 1;
  }

  v283 = v118;
  v301 = 0;
  v300 = 0;
  v119 = &v317;
  v120 = &v315;
  v319 = 0;
  v291 = &v311;
  v121 = &v348;
  v122 = &v309;
  v289 = v307;
  v123 = &v305;
  v124 = &v303;
  memset(v318, 0, sizeof(v318));
  v125 = &v301;
  v126 = 1;
  v127 = v323;
  v128 = &v332;
  v129 = &v327 + 4;
  v130 = &v326 + 4;
  v131 = &v327;
  v133 = &v325 + 4;
  v132 = &v326;
  v134 = &v338;
  v135 = &v325;
  v136 = &v334;
  v138 = &v342;
  v137 = &v340;
  v140 = &v346;
  v139 = &v344;
  do
  {
    v141 = 0;
    v142 = 0;
    v143 = *v119;
    if (v143 >= *v123)
    {
      v144 = *v123;
    }

    else
    {
      v144 = v143;
    }

    *v123 = v144;
    v145 = &kDQuadParamTable[160 * *v122 + 10 * *v121];
    if (v145[5])
    {
      v146 = v143;
    }

    else
    {
      v146 = 0;
    }

    v147 = *v124;
    if (v146 < *v124)
    {
      v147 = v146;
    }

    v290 = v126;
    *v124 = v147;
    v148 = -1 << v143;
    v149 = *(v145 + 1);
    v150 = *v120 & (-1 << (v143 - v144));
    *v125 = v150;
    v151 = v149 >> v147;
    v152 = *v128 - v150;
    if (v286)
    {
      v152 = 0;
    }

    *v127 = v152;
    v153 = *v136 - v150;
    if (v298)
    {
      v153 = 0;
    }

    *v114 = v153;
    v154 = *v113 - v150;
    if (v299)
    {
      v154 = 0;
    }

    *v135 = v154;
    v155 = *v134 - v150;
    if (v297)
    {
      v155 = 0;
    }

    *v133 = v155;
    v156 = *v137 - v150;
    if (v296)
    {
      v156 = 0;
    }

    *v132 = v156;
    v157 = *v138 - v150;
    if (v294)
    {
      v157 = 0;
    }

    *v130 = v157;
    v158 = *v139 - v150;
    if (v295)
    {
      v158 = 0;
    }

    *v131 = v158;
    v159 = *v140 - v150;
    if (v293)
    {
      v159 = 0;
    }

    *v129 = v159;
    if (v151 <= 1)
    {
      v160 = 1;
    }

    else
    {
      v160 = v149 >> v147;
    }

    v161 = &v323[32 * v117];
    v162 = 4 * v117;
    v163 = 4 * *v291;
    v164 = v318 + 28 * v117;
    v165 = &byte_29D2F3081;
    do
    {
      if (v163 != v141)
      {
        if (v147)
        {
          v166 = *&v161[v141] / v160;
        }

        else
        {
          LODWORD(v166) = 0;
        }

        *&v164[4 * v142] = v166;
        if (v151 >= 2)
        {
          v167 = *&v161[v141];
          if (v167)
          {
            if (v167 / v160 * v160 == v167 && ((v167 / v160) & 1) != 0)
            {
              if (v150 || v166 != 1)
              {
                if ((v292 | 2) != 3 || (v169 = *(&v332 + v162), v170 = *v289, v169 != v170) && ((v292 | 2) != 3 || v160 + v170 != v169))
                {
                  LODWORD(v166) = v166 - 1;
                  *&v164[4 * v142] = v166;
                }
              }

              else
              {
                LODWORD(v166) = 1;
              }
            }
          }
        }

        if (v166 >> v147 || (*(&v332 + v162) ^ v148) == 0xFFFFFFFF)
        {
          *&v164[4 * v142] = ~(-1 << v147);
        }

        if (*v165 >= a5 || *(v165 - 1) >= a4)
        {
          *&v164[4 * v142] = 0;
        }

        ++v142;
      }

      v141 += 4;
      v162 += 8;
      v165 += 2;
    }

    while (v141 != 32);
    v126 = 0;
    v119 = &v316;
    v120 = &v314;
    v291 = &v310;
    v122 = &v308;
    v289 = v306;
    v123 = &v304;
    v124 = &v302;
    v125 = &v300;
    v114 = &v328 + 4;
    v127 = &v328;
    v133 = &v329 + 4;
    v135 = &v329;
    v130 = &v330 + 4;
    v132 = &v330;
    v129 = &v331 + 4;
    v131 = &v331;
    v136 = &v335;
    v128 = &v333;
    v134 = &v339;
    v113 = &v337;
    v138 = &v343;
    v137 = &v341;
    v140 = &v347;
    v139 = &v345;
    v121 = &v349;
    v117 = 1;
  }

  while ((v290 & 1) != 0);
  v171 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v172 = 8 * (a1 & 7);
  *(a1 + 8) = 0;
  *a1 = 0;
  if ((v283 | v284))
  {
    v173 = 0;
    v174 = 0;
    v175 = v317;
    v176 = v317 - 4;
    v177 = v316;
    v178 = v316 - 4;
    v179 = 8 * (a1 & 7);
    while (1)
    {
      v180 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v173;
      v181 = v180[1] < a5 && a4 > *v180;
      v182 = !v181;
      if (v181)
      {
        v183 = *(&v332 + 2 * v173) >> 4;
        if (v176 > 0x100)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v183 = 0;
        if (v176 > 0x100)
        {
          goto LABEL_331;
        }
      }

      if (v175 != 4 && v179 - v172 + (v174 << 6) + v176 <= 0x60)
      {
        v184 = 0;
        v185 = v176;
        do
        {
          v186 = 64 - v179;
          if (64 - v179 >= v185)
          {
            v186 = v185;
          }

          v171[v174] |= ((v183 >> v184) & ~(-1 << v186)) << v179;
          v184 += v186;
          v187 = v186 + v179;
          v174 += v187 >> 6;
          v179 = v187 & 0x3F;
          v185 -= v186;
        }

        while (v185);
      }

LABEL_331:
      if (v182)
      {
        v188 = 0;
        if (v178 <= 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v188 = *(&v332 + 2 * v173 + 1) >> 4;
        if (v178 <= 0x100)
        {
LABEL_335:
          if (v177 != 4 && v179 - v172 + (v174 << 6) + v178 <= 0x60)
          {
            v189 = 0;
            v190 = v178;
            do
            {
              v191 = 64 - v179;
              if (64 - v179 >= v190)
              {
                v191 = v190;
              }

              v171[v174] |= ((v188 >> v189) & ~(-1 << v191)) << v179;
              v189 += v191;
              v192 = v191 + v179;
              v174 += v192 >> 6;
              v179 = v192 & 0x3F;
              v190 -= v191;
            }

            while (v190);
          }
        }
      }

      if (++v173 == 8)
      {
        return (v283 | v284) & 1;
      }
    }
  }

  if (v315 | v282)
  {
    if (v282 <= 2)
    {
      v193 = 0;
      v194 = 0;
      v195 = v282 + 1;
      goto LABEL_439;
    }

    v216 = 0;
    v195 = 0;
    v215 = 0;
    v193 = (v282 + 6) & 7;
    v194 = 1;
  }

  else
  {
    v193 = 0;
    v194 = 0;
    v195 = 0;
LABEL_439:
    v215 = 1;
    v216 = 2;
  }

  v217 = (v193 << v172) | *v171;
  *v171 = v217;
  v218 = v172 | 3;
  v219 = v349;
  if (v314 | v349)
  {
    if (v349 < 3)
    {
      v220 = 0;
      v221 = 0;
      v222 = v349 + 1;
      goto LABEL_445;
    }

    v224 = 0;
    v222 = 0;
    v223 = 0;
    v220 = (v349 + 6) & 7;
    v221 = 1;
  }

  else
  {
    v220 = 0;
    v221 = 0;
    v222 = 0;
LABEL_445:
    v223 = 1;
    v224 = 2;
  }

  if ((v218 - v172) <= 0x5D)
  {
    *v171 = (v220 << v218) | v217;
    v218 = v172 | 6;
  }

  if (!v215)
  {
    v226 = 0;
    v227 = 6;
    if (v223)
    {
      goto LABEL_462;
    }

LABEL_455:
    v228 = v317;
    if (!v282)
    {
      goto LABEL_470;
    }

    goto LABEL_474;
  }

  v225 = v216;
  if (v218 - v172 + v216 > 0x60)
  {
    v194 = 1;
  }

  if (v194)
  {
    v226 = 0;
  }

  else
  {
    v226 = 0;
    v229 = 0;
    do
    {
      v230 = 64 - v218;
      if (64 - v218 >= v225)
      {
        v230 = v225;
      }

      v171[v226] |= ((v195 >> v229) & ~(-1 << v230)) << v218;
      v229 += v230;
      v231 = v230 + v218;
      v226 += v231 >> 6;
      v218 = v231 & 0x3F;
      v225 -= v230;
    }

    while (v225);
  }

  v227 = v216 + 6;
  if (!v223)
  {
    goto LABEL_455;
  }

LABEL_462:
  v232 = v224;
  if (v218 - v172 + (v226 << 6) + v224 > 0x60)
  {
    v221 = 1;
  }

  if ((v221 & 1) == 0)
  {
    v233 = 0;
    do
    {
      v234 = 64 - v218;
      if (64 - v218 >= v232)
      {
        v234 = v232;
      }

      v171[v226] |= ((v222 >> v233) & ~(-1 << v234)) << v218;
      v233 += v234;
      v235 = v234 + v218;
      v226 += v235 >> 6;
      v218 = v235 & 0x3F;
      v232 -= v234;
    }

    while (v232);
  }

  v227 += v224;
  v228 = v317;
  if (!v282)
  {
LABEL_470:
    if (v228 != 2 && v228 < 0x10)
    {
      v236 = v316;
      if (!v219)
      {
        goto LABEL_535;
      }

LABEL_482:
      v243 = v304;
      if (v304 <= 0x100 && v304 && v218 - v172 + (v226 << 6) + v304 <= 0x60)
      {
        v244 = 0;
        v245 = v300 >> (v236 - v304);
        v246 = v304;
        do
        {
          v247 = 64 - v218;
          if (64 - v218 >= v246)
          {
            v247 = v246;
          }

          v171[v226] |= ((v245 >> v244) & ~(-1 << v247)) << v218;
          v244 += v247;
          v248 = v247 + v218;
          v226 += v248 >> 6;
          v218 = v248 & 0x3F;
          v246 -= v247;
        }

        while (v246);
      }

      v227 += v243;
      goto LABEL_490;
    }
  }

LABEL_474:
  v237 = v305;
  if (v305 <= 0x100 && v305 && v218 - v172 + (v226 << 6) + v305 <= 0x60)
  {
    v238 = 0;
    v239 = v301 >> (v228 - v305);
    v240 = v305;
    do
    {
      v241 = 64 - v218;
      if (64 - v218 >= v240)
      {
        v241 = v240;
      }

      v171[v226] |= ((v239 >> v238) & ~(-1 << v241)) << v218;
      v238 += v241;
      v242 = v241 + v218;
      v226 += v242 >> 6;
      v218 = v242 & 0x3F;
      v240 -= v241;
    }

    while (v240);
  }

  v227 += v237;
  v236 = v316;
  if (v219)
  {
    goto LABEL_482;
  }

LABEL_535:
  if (v236 == 2 || v236 >= 0x10)
  {
    goto LABEL_482;
  }

LABEL_490:
  v249 = v303;
  if (v303)
  {
    if ((v218 - v172 + (v226 << 6) + 3) <= 0x60)
    {
      v250 = 0;
      v251 = v311;
      v252 = 3;
      do
      {
        v253 = 64 - v218;
        if (64 - v218 >= v252)
        {
          v253 = v252;
        }

        v171[v226] |= ((v251 >> v250) & ~(-1 << v253)) << v218;
        v250 += v253;
        v254 = v253 + v218;
        v226 += v254 >> 6;
        v218 = v254 & 0x3F;
        v252 -= v253;
      }

      while (v252);
    }

    v227 += 3;
  }

  v255 = v302;
  if (v302)
  {
    if ((v218 - v172 + (v226 << 6) + 3) <= 0x60)
    {
      v256 = 0;
      v257 = v310;
      v258 = 3;
      do
      {
        v259 = 64 - v218;
        if (64 - v218 >= v258)
        {
          v259 = v258;
        }

        v171[v226] |= ((v257 >> v256) & ~(-1 << v259)) << v218;
        v256 += v259;
        v260 = v259 + v218;
        v226 += v260 >> 6;
        v218 = v260 & 0x3F;
        v258 -= v259;
      }

      while (v258);
    }

    v227 += 3;
  }

  v261 = 96 - v227;
  v262 = (96 - v227) / 7u;
  v263 = v261 % 7;
  if ((v263 - 257) >= 0xFFFFFF00 && v218 - v172 + (v226 << 6) + v263 <= 0x60)
  {
    do
    {
      v264 = 64 - v218;
      if (64 - v218 >= v263)
      {
        v264 = v263;
      }

      v265 = v264 + v218;
      v226 += v265 >> 6;
      v218 = v265 & 0x3F;
      v263 -= v264;
    }

    while (v263);
  }

  v266 = 0;
  v267 = v255 + v249;
  while (2)
  {
    if (v249 && v249 <= 0x100 && v218 - v172 + (v226 << 6) + v249 <= 0x60)
    {
      v268 = 0;
      v269 = *(v318 + v266);
      v270 = v249;
      do
      {
        v271 = 64 - v218;
        if (64 - v218 >= v270)
        {
          v271 = v270;
        }

        v171[v226] |= ((v269 >> v268) & ~(-1 << v271)) << v218;
        v268 += v271;
        v272 = v271 + v218;
        v226 += v272 >> 6;
        v218 = v272 & 0x3F;
        v270 -= v271;
      }

      while (v270);
    }

    if (v255)
    {
      if (v255 <= 0x100 && v218 - v172 + (v226 << 6) + v255 <= 0x60)
      {
        v273 = 0;
        v274 = *(&v318[1] + v266 + 3);
        v275 = v255;
        do
        {
          v276 = 64 - v218;
          if (64 - v218 >= v275)
          {
            v276 = v275;
          }

          v171[v226] |= ((v274 >> v273) & ~(-1 << v276)) << v218;
          v273 += v276;
          v277 = v276 + v218;
          v226 += v277 >> 6;
          v218 = v277 & 0x3F;
          v275 -= v276;
        }

        while (v275);
      }

      v278 = v262 - v267;
      if (v262 != v267)
      {
LABEL_528:
        if (v278 <= 0x100 && v218 - v172 + (v226 << 6) + v278 <= 0x60)
        {
          do
          {
            v279 = 64 - v218;
            if (64 - v218 >= v278)
            {
              v279 = v278;
            }

            v280 = v279 + v218;
            v226 += v280 >> 6;
            v218 = v280 & 0x3F;
            v278 -= v279;
          }

          while (v278);
        }
      }
    }

    else
    {
      v278 = v262 - v249;
      if (v262 != v249)
      {
        goto LABEL_528;
      }
    }

    if (++v266 != 7)
    {
      continue;
    }

    return (v283 | v284) & 1;
  }
}