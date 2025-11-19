uint64_t sub_23C441600(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = **(result + 40);
  do
  {
    v7 = v3 >> 3;
    v8.i64[0] = -1;
    v8.i64[1] = -1;
    v9 = *v4;
    v10 = v4 + 1;
    v11 = *v10;
    v12 = v10 + 1;
    v13 = v6;
    v14 = vsub_s8(v6, 0x101010101010101);
    v15 = vadd_s8(v6, 0x101010101010101);
LABEL_3:
    for (i = *v12; ; i.i64[1] = -1)
    {
      v17 = vextq_s8(v8, v9, 0xCuLL);
      v18 = vextq_s8(v9, v11, 0xCuLL);
      v19 = vextq_s8(v9, v11, 4uLL);
      v20 = vextq_s8(v11, i, 4uLL);
      v21 = vcgtq_u32(v9, v17);
      v22 = vcgtq_u32(v11, v18);
      v23 = vbsl_s8(vmovn_s16(vmovn_hight_s32(vmovn_s32(v21), v22)), v14, v13);
      v24 = vbslq_s8(v21, v17, v9);
      v25 = vbslq_s8(v22, v18, v11);
      v26 = vcgtq_u32(v24, v19);
      v27 = vcgtq_u32(v25, v20);
      v28 = vbsl_s8(vmovn_s16(vmovn_hight_s32(vmovn_s32(v26), v27)), v15, v23);
      v29 = vbslq_s8(v26, v19, v24);
      v26.i64[0] = *v2++;
      v30 = vmovl_u8(*v26.i8);
      v31 = &v12[-2];
      *v31++ = vaddw_u16(v29, *v30.i8);
      *v31 = vaddw_high_u16(vbslq_s8(v27, v20, v25), v30);
      v31 += 2;
      *v1++ = v28;
      v8 = v11;
      v9 = i;
      v11 = *v31;
      v12 = &v31[1];
      v13 = vadd_s8(v13, 0x808080808080808);
      v14 = vadd_s8(v14, 0x808080808080808);
      v15 = vadd_s8(v15, 0x808080808080808);
      if (--v7 > 1)
      {
        goto LABEL_3;
      }

      if (!v7)
      {
        break;
      }

      i.i64[0] = -1;
    }

    v4 = *(result + 32);
    v32 = *(result + 48);
    v1 = (v1 + v32 - v3);
    v2 = (v2 + v32 - v3);
    --v5;
  }

  while (v5);
  return result;
}

__n128 sub_23C441864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x8_t *a8)
{
  result = *a8->i8;
  *a8->i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vqdmulhq_s16(vaddq_s16(vaddq_s16(vaddl_u8(*a8, a8[10]), vaddl_u8(a8[20], a8[30])), vmovl_u8(a8[40])), v8), 1uLL), vqdmulhq_s16(vaddq_s16(vaddq_s16(vaddl_high_u8(*a8->i8, *a8[10].i8), vaddl_high_u8(*a8[20].i8, *a8[30].i8)), vmovl_high_u8(*a8[40].i8)), v8), 1uLL);
  return result;
}

uint8x8_t sub_23C4418CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x8_t *a8)
{
  result = *a8;
  *a8 = vqrshrn_n_u16(vqdmulhq_s16(vaddq_s16(vaddq_s16(vaddl_u8(*a8, a8[10]), vaddl_u8(a8[20], a8[30])), vmovl_u8(a8[40])), v8), 1uLL);
  return result;
}

void sub_23C441918(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1 - 6 * v3 - 8;
  v5 = v2;
  v6 = a1[3] + 12;
  do
  {
    v7 = vdupq_lane_s64(*v4, 0);
    sub_23C441800(*v7.i64, *(v4 + 8), *(v4 + 24), *(v4 + 40), *(v4 + 56), *(v4 + 72), vextq_s8(v7, *(v4 + 8), 0xAuLL), vextq_s8(v7, *(v4 + 8), 0xBuLL), a1, v1, v2, v3, v6, v4 + v3, v4, v5);
    sub_23C441800(v16, *v17.i64, *v18.i64, v19, v20, v21, vextq_s8(v17, v18, 0xAuLL), vextq_s8(v17, v18, 0xBuLL), v9, v10, v11, v12, v13, v14, v15, v8 + 1);
    sub_23C441800(v30, v31, *v32.i64, *v33.i64, v34, v35, vextq_s8(v32, v33, 0xAuLL), vextq_s8(v32, v33, 0xBuLL), v23, v24, v25, v26, v27, v28, v29, v22 + 1);
    sub_23C441800(v44, v45, v46, *v47.i64, *v48.i64, v49, vextq_s8(v47, v48, 0xAuLL), vextq_s8(v47, v48, 0xBuLL), v37, v38, v39, v40, v41, v42, v43, v36 + 1);
    sub_23C441840(v58, v59, v60, v61, *v62.i64, *v63.i64, *&vextq_s8(v62, v63, 0xAuLL), *&vextq_s8(v62, v63, 0xBuLL), v51, v52, v53, v54, v55, v56, v57, v50 + 2);
    v5 = v65 + 1;
    v4 = v66 + v3;
    v6 = v67 - 1;
  }

  while (v6);
  v68 = v2;
  v69 = 72;
  do
  {
    sub_23C441864(a1, v1, v2, v3, v69, v64, v4, v68);
    sub_23C441864(v71, v72, v73, v74, v75, v76, v77, v70 + 2);
    sub_23C441864(v79, v80, v81, v82, v83, v84, v85, v78 + 2);
    sub_23C441864(v87, v88, v89, v90, v91, v92, v93, v86 + 2);
    sub_23C4418CC(v95, v96, v97, v98, v99, v100, v101, v94 + 2);
    v68 = v102 + 2;
    v69 = v103 - 1;
  }

  while (v69);
}

__n128 sub_23C441AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x8_t *a8)
{
  result = *a8->i8;
  *a8->i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vqdmulhq_s16(vqaddq_u16(vqaddq_u16(vaddl_u8(*a8, a8[10]), vaddl_u8(a8[20], a8[30])), vqaddq_u16(vaddl_u8(a8[40], a8[50]), vmovl_u8(a8[60]))), v8), 1uLL), vqdmulhq_s16(vqaddq_u16(vqaddq_u16(vaddl_high_u8(*a8->i8, *a8[10].i8), vaddl_high_u8(*a8[20].i8, *a8[30].i8)), vqaddq_u16(vaddl_high_u8(*a8[40].i8, *a8[50].i8), vmovl_high_u8(*a8[60].i8))), v8), 1uLL);
  return result;
}

uint8x8_t sub_23C441B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x8_t *a8)
{
  result = vqrshrn_n_u16(vqdmulhq_s16(vaddq_s16(vaddq_s16(vaddl_u8(*a8, a8[10]), vaddl_u8(a8[20], a8[30])), vaddq_s16(vaddl_u8(a8[40], a8[50]), vmovl_u8(a8[60]))), v8), 1uLL);
  *a8 = result;
  return result;
}

void sub_23C441BDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1 - 7 * v3 - 8;
  v5 = v2;
  v6 = a1[3] + 14;
  do
  {
    v7 = vdupq_lane_s64(*v4, 0);
    sub_23C441A74(*v7.i64, *(v4 + 8), *(v4 + 24), *(v4 + 40), *(v4 + 56), *(v4 + 72), vextq_s8(v7, *(v4 + 8), 9uLL), vextq_s8(v7, *(v4 + 8), 0xAuLL), a1, v1, v2, v3, v6, v4 + v3, v4, v5);
    sub_23C441A74(v16, *v17.i64, *v18.i64, v19, v20, v21, vextq_s8(v17, v18, 9uLL), vextq_s8(v17, v18, 0xAuLL), v9, v10, v11, v12, v13, v14, v15, v8 + 1);
    sub_23C441A74(v30, v31, *v32.i64, *v33.i64, v34, v35, vextq_s8(v32, v33, 9uLL), vextq_s8(v32, v33, 0xAuLL), v23, v24, v25, v26, v27, v28, v29, v22 + 1);
    sub_23C441A74(v44, v45, v46, *v47.i64, *v48.i64, v49, vextq_s8(v47, v48, 9uLL), vextq_s8(v47, v48, 0xAuLL), v37, v38, v39, v40, v41, v42, v43, v36 + 1);
    sub_23C441AC4(v58, v59, v60, v61, *v62.i64, *v63.i64, *&vextq_s8(v62, v63, 9uLL), *&vextq_s8(v62, v63, 0xAuLL), v51, v52, v53, v54, v55, v56, v57, v50 + 2);
    v5 = v65 + 1;
    v4 = v66 + v3;
    v6 = v67 - 1;
  }

  while (v6);
  v68 = v2;
  v69 = 72;
  do
  {
    sub_23C441AF0(a1, v1, v2, v3, v69, v64, v4, v68);
    sub_23C441AF0(v71, v72, v73, v74, v75, v76, v77, v70 + 2);
    sub_23C441AF0(v79, v80, v81, v82, v83, v84, v85, v78 + 2);
    sub_23C441AF0(v87, v88, v89, v90, v91, v92, v93, v86 + 2);
    sub_23C441B78(v95, v96, v97, v98, v99, v100, v101, v94 + 2);
    v68 = v102 + 2;
    v69 = v103 - 1;
  }

  while (v69);
}

double sub_23C441D60(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int8x16_t *a8)
{
  a2.i64[0] = a8[1].i64[0];
  v10 = vextq_s8(*a8, a2, 8uLL);
  *&result = vandq_s8(v10, vcgeq_u8(v8, vabdq_u8(v10, v9))).u64[0];
  return result;
}

double sub_23C441E9C()
{
  v2 = veorq_s8(v0, v0);
  v3 = vzip1q_s8(v2, vshlq_u8(v1, vclzq_s8(v1)));
  *&result = vrshrq_n_u16(vqshrn_high_n_u32(vqshrn_n_u32(vrecpeq_u32(vzip1q_s16(v2, v3)), 0x10uLL), vrecpeq_u32(vzip2q_s16(v2, v3)), 0x10uLL), 1uLL).u64[0];
  return result;
}

void sub_23C441F10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a1;
  do
  {
    v8 = *(v7 + 324);
    v9 = vdupq_n_s8(v6);
    v10 = vmull_u8(*v9.i8, *v8.i8);
    v11 = sub_23C441D60(*vrshrn_high_n_s16(vrshrn_n_s16(v10, 7uLL), vmull_high_u8(v9, v8), 7uLL).i64, v10, a1, v4, a3, a4, v5, v7);
    v19 = sub_23C441D60(v11, v18, v13, v14, v15, v16, v17, v12 + 4);
    v27 = sub_23C441D60(v19, v26, v21, v22, v23, v24, v25, v20 + 4);
    v35 = sub_23C441D60(v27, v34, v29, v30, v31, v32, v33, v28 + 4);
    v43 = sub_23C441D60(v35, v42, v37, v38, v39, v40, v41, v36 + 4);
    v51 = sub_23C441D60(v43, v50, v45, v46, v47, v48, v49, v44 + 4);
    v59 = sub_23C441D60(v51, v58, v53, v54, v55, v56, v57, v52 + 4);
    v67 = sub_23C441D60(v59, v66, v61, v62, v63, v64, v65, v60 + 4);
    sub_23C441D60(v67, v74, v69, v70, v71, v72, v73, v68 + 4);
    sub_23C441E9C();
    *v75 = v76;
    v77 += 16;
    v78 = *(v77 + 324);
    v80 = vdupq_n_s8(v79);
    v81 = vmull_u8(*v80.i8, *v78.i8);
    v87 = sub_23C441D60(*vrshrn_high_n_s16(vrshrn_n_s16(v81, 7uLL), vmull_high_u8(v80, v78), 7uLL).i64, v81, v82, v83, v84, v85, v86, v77);
    v95 = sub_23C441D60(v87, v94, v89, v90, v91, v92, v93, v88 + 4);
    v103 = sub_23C441D60(v95, v102, v97, v98, v99, v100, v101, v96 + 4);
    v111 = sub_23C441D60(v103, v110, v105, v106, v107, v108, v109, v104 + 4);
    v119 = sub_23C441D60(v111, v118, v113, v114, v115, v116, v117, v112 + 4);
    v127 = sub_23C441D60(v119, v126, v121, v122, v123, v124, v125, v120 + 4);
    v135 = sub_23C441D60(v127, v134, v129, v130, v131, v132, v133, v128 + 4);
    v143 = sub_23C441D60(v135, v142, v137, v138, v139, v140, v141, v136 + 4);
    sub_23C441D60(v143, v150, v145, v146, v147, v148, v149, v144 + 4);
    sub_23C441E9C();
    *v151 = v152;
    v153 += 16;
    v154 = *(v153 + 324);
    v156 = vdupq_n_s8(v155);
    v157 = vmull_u8(*v156.i8, *v154.i8);
    v163 = sub_23C441D60(*vrshrn_high_n_s16(vrshrn_n_s16(v157, 7uLL), vmull_high_u8(v156, v154), 7uLL).i64, v157, v158, v159, v160, v161, v162, v153);
    v171 = sub_23C441D60(v163, v170, v165, v166, v167, v168, v169, v164 + 4);
    v179 = sub_23C441D60(v171, v178, v173, v174, v175, v176, v177, v172 + 4);
    v187 = sub_23C441D60(v179, v186, v181, v182, v183, v184, v185, v180 + 4);
    v195 = sub_23C441D60(v187, v194, v189, v190, v191, v192, v193, v188 + 4);
    v203 = sub_23C441D60(v195, v202, v197, v198, v199, v200, v201, v196 + 4);
    v211 = sub_23C441D60(v203, v210, v205, v206, v207, v208, v209, v204 + 4);
    v219 = sub_23C441D60(v211, v218, v213, v214, v215, v216, v217, v212 + 4);
    sub_23C441D60(v219, v226, v221, v222, v223, v224, v225, v220 + 4);
    sub_23C441E9C();
    *v227 = v228;
    v229 += 16;
    v230 = *(v229 + 324);
    v232 = vdupq_n_s8(v231);
    v233 = vmull_u8(*v232.i8, *v230.i8);
    v239 = sub_23C441D60(*vrshrn_high_n_s16(vrshrn_n_s16(v233, 7uLL), vmull_high_u8(v232, v230), 7uLL).i64, v233, v234, v235, v236, v237, v238, v229);
    v247 = sub_23C441D60(v239, v246, v241, v242, v243, v244, v245, v240 + 4);
    v255 = sub_23C441D60(v247, v254, v249, v250, v251, v252, v253, v248 + 4);
    v263 = sub_23C441D60(v255, v262, v257, v258, v259, v260, v261, v256 + 4);
    v271 = sub_23C441D60(v263, v270, v265, v266, v267, v268, v269, v264 + 4);
    v279 = sub_23C441D60(v271, v278, v273, v274, v275, v276, v277, v272 + 4);
    v287 = sub_23C441D60(v279, v286, v281, v282, v283, v284, v285, v280 + 4);
    v295 = sub_23C441D60(v287, v294, v289, v290, v291, v292, v293, v288 + 4);
    sub_23C441D60(v295, v302, v297, v298, v299, v300, v301, v296 + 4);
    sub_23C441E9C();
    *v303 = v304;
    v7 = v305 + 32;
    v5 = v306 - 1;
  }

  while (v5);
}

void sub_23C44228C()
{
  do
  {
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C441E9C();
    *v0 = v1;
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C441E9C();
    *v2 = v3;
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C441E9C();
    *v4 = v5;
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C442188();
    sub_23C441E9C();
    *v6 = v7;
  }

  while (v8 != 1);
}

__n128 sub_23C442418(uint8x16_t **a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  do
  {
    result = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = v5[1];
    v11 = v5[2];
    v12 = v5[3];
    v13 = vsubl_high_u8(*v4, *v5);
    *v1 = vsubl_u8(*v4->i8, *v5->i8);
    v14 = v1 + 1;
    *v14++ = v13;
    *v14++ = vsubl_u8(*v7.i8, *v10.i8);
    *v14++ = vsubl_high_u8(v7, v10);
    *v14++ = vsubl_u8(*v8.i8, *v11.i8);
    *v14++ = vsubl_high_u8(v8, v11);
    *v14++ = vsubl_u8(*v9.i8, *v12.i8);
    *v14 = vsubl_high_u8(v9, v12);
    v1 = v14 + 1;
    v4 = (v2 + v4);
    v5 += 5;
    v3 = (v3 - 1);
  }

  while (v3);
  return result;
}

int8x16_t sub_23C442500(uint8x16_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  do
  {
    v6 = *v1;
    v7 = v1[1];
    v8 = v1[2];
    v9 = v1[3];
    v1 += 4;
    v10 = *v2;
    v11 = v2[1];
    v12 = v2[2];
    v13 = v2[3];
    v14 = v2[4];
    v15 = v2[5];
    v16 = v2[6];
    v17 = v2[7];
    v2 += 8;
    result = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v10, vmovl_u8(*v6.i8))), vaddq_s16(v11, vmovl_high_u8(v6)));
    *v3 = result;
    v3[1] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v12, vmovl_u8(*v7.i8))), vaddq_s16(v13, vmovl_high_u8(v7)));
    v3[2] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v14, vmovl_u8(*v8.i8))), vaddq_s16(v15, vmovl_high_u8(v8)));
    v3[3] = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v16, vmovl_u8(*v9.i8))), vaddq_s16(v17, vmovl_high_u8(v9)));
    v3 = &v4->i8[v3];
    v5 = (v5 - 1);
  }

  while (v5);
  return result;
}

__n128 sub_23C442700()
{
  result.n128_u64[0] = 0x101010101010101;
  result.n128_u64[1] = 0x101010101010101;
  return result;
}

uint16x8_t sub_23C4427FC()
{
  v2 = veorq_s8(v1, v1);
  v3 = vzip1q_s8(v2, vshlq_u8(v0, vclzq_s8(v0)));
  return vrshrq_n_u16(vqshrn_high_n_u32(vqshrn_n_u32(vrecpeq_u32(vzip1q_s16(v2, v3)), 0x10uLL), vrecpeq_u32(vzip2q_s16(v2, v3)), 0x10uLL), 1uLL);
}

void sub_23C442870()
{
  do
  {
    v3 = veorq_s8(v2, v2);
    v4 = veorq_s8(v0, v0);
    v5 = veorq_s8(v1, v1);
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C4427FC();
    *v6 = v4;
    v7 = veorq_s8(v3, v3);
    v8 = veorq_s8(v4, v4);
    v9 = veorq_s8(v5, v5);
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C4427FC();
    *v10 = v8;
    v11 = veorq_s8(v7, v7);
    v12 = veorq_s8(v8, v8);
    v13 = veorq_s8(v9, v9);
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C4427FC();
    *v14 = v12;
    v2 = veorq_s8(v11, v11);
    v0 = veorq_s8(v12, v12);
    v1 = veorq_s8(v13, v13);
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C442700();
    sub_23C4427FC();
    *v15 = v0;
  }

  while (v16 != 1);
}

__n128 sub_23C442B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint8x8_t *a8)
{
  result = *a8->i8;
  *a8->i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vqdmulhq_s16(vaddq_s16(vaddq_s16(vaddl_u8(*a8, a8[12]), vaddl_u8(a8[24], a8[36])), vmovl_u8(a8[48])), v8), 1uLL), vqdmulhq_s16(vaddq_s16(vaddq_s16(vaddl_high_u8(*a8->i8, *a8[12].i8), vaddl_high_u8(*a8[24].i8, *a8[36].i8)), vmovl_high_u8(*a8[48].i8)), v8), 1uLL);
  return result;
}

void sub_23C442BA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1 - 18 * v3 - 24;
  v5 = v2;
  v6 = a1[3] + 36;
  do
  {
    v7 = vdupq_lane_s64(*v4, 0);
    sub_23C442B00(*v7.i64, *(v4 + 8), *(v4 + 24), *(v4 + 40), *(v4 + 56), *(v4 + 72), vextq_s8(v7, *(v4 + 8), 0xEuLL), vextq_s8(v7, *(v4 + 8), 0xFuLL), a1, v1, v2, v3, v6, v4 + 88, v4, v5);
    sub_23C442B00(v16, *v17.i64, *v18.i64, v19, v20, v21, vextq_s8(v17, v18, 0xEuLL), vextq_s8(v17, v18, 0xFuLL), v9, v10, v11, v12, v13, v14, v15, v8 + 1);
    sub_23C442B00(*v23, v23[2], *v30.i64, *v31.i64, v32, v33, vextq_s8(v30, v31, 0xEuLL), vextq_s8(v30, v31, 0xFuLL), v25, v26, v27, v28, v29, v24 + v28, v24, v22 + 1);
    sub_23C442B00(v42, v43, v44, *v45.i64, *v46.i64, v47, vextq_s8(v45, v46, 0xEuLL), vextq_s8(v45, v46, 0xFuLL), v35, v36, v37, v38, v39, v40, v41, v34 + 1);
    sub_23C442B00(v56, v57, v58, v59, *v60.i64, *v61.i64, vextq_s8(v60, v61, 0xEuLL), vextq_s8(v60, v61, 0xFuLL), v49, v50, v51, v52, v53, v54, v55, v48 + 1);
    sub_23C442B00(*v70.i64, v71, v72, v73, v74, *v75.i64, vextq_s8(v75, v70, 0xEuLL), vextq_s8(v75, v70, 0xFuLL), v63, v64, v65, v66, v67, v68, v69, v62 + 1);
    v5 = v77 + 1;
    v4 = v78 + v3;
    v6 = v79 - 1;
  }

  while (v6);
  v80 = v2;
  v81 = 96;
  do
  {
    sub_23C442B40(a1, v1, v2, v3, v81, v76, v4, v80);
    sub_23C442B40(v83, v84, v85, v86, v87, v88, v89, v82 + 2);
    sub_23C442B40(v91, v92, v93, v94, v95, v96, v97, v90 + 2);
    sub_23C442B40(v99, v100, v101, v102, v103, v104, v105, v98 + 2);
    sub_23C442B40(v107, v108, v109, v110, v111, v112, v113, v106 + 2);
    sub_23C442B40(v115, v116, v117, v118, v119, v120, v121, v114 + 2);
    v80 = v122 + 2;
    v81 = v123 - 1;
  }

  while (v81);
}

uint16x8_t sub_23C442E7C()
{
  v2 = veorq_s8(v1, v1);
  v3 = vzip1q_s8(v2, vshlq_u8(v0, vclzq_s8(v0)));
  return vrshrq_n_u16(vqshrn_high_n_u32(vqshrn_n_u32(vrecpeq_u32(vzip1q_s16(v2, v3)), 0x10uLL), vrecpeq_u32(vzip2q_s16(v2, v3)), 0x10uLL), 1uLL);
}

void sub_23C442EF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[2];
  v9 = *a1;
  do
  {
    v10 = veorq_s8(v6, v6);
    v11 = veorq_s8(v4, v4);
    v12 = veorq_s8(v5, v5);
    sub_23C442D38(a1, v7, a3, a4, v8, v9);
    sub_23C442D38(v14, v15, v16, v17, v18, v13 + 22);
    sub_23C442D38(v20, v21, v22, v23, v24, v19 + 22);
    sub_23C442D38(v26, v27, v28, v29, v30, v25 + 22);
    sub_23C442D38(v32, v33, v34, v35, v36, v31 + 22);
    sub_23C442D38(v38, v39, v40, v41, v42, v37 + 22);
    sub_23C442D38(v44, v45, v46, v47, v48, v43 + 22);
    sub_23C442D38(v50, v51, v52, v53, v54, v49 + 22);
    sub_23C442D38(v56, v57, v58, v59, v60, v55 + 22);
    sub_23C442E7C();
    *v61 = v11;
    v62 = veorq_s8(v10, v10);
    v63 = veorq_s8(v11, v11);
    v64 = veorq_s8(v12, v12);
    sub_23C442D38(v66, v67, v68, v69, v70, v65 + 1);
    sub_23C442D38(v72, v73, v74, v75, v76, v71 + 22);
    sub_23C442D38(v78, v79, v80, v81, v82, v77 + 22);
    sub_23C442D38(v84, v85, v86, v87, v88, v83 + 22);
    sub_23C442D38(v90, v91, v92, v93, v94, v89 + 22);
    sub_23C442D38(v96, v97, v98, v99, v100, v95 + 22);
    sub_23C442D38(v102, v103, v104, v105, v106, v101 + 22);
    sub_23C442D38(v108, v109, v110, v111, v112, v107 + 22);
    sub_23C442D38(v114, v115, v116, v117, v118, v113 + 22);
    sub_23C442E7C();
    *v119 = v63;
    v120 = veorq_s8(v62, v62);
    v121 = veorq_s8(v63, v63);
    v122 = veorq_s8(v64, v64);
    sub_23C442D38(v124, v125, v126, v127, v128, v123 + 1);
    sub_23C442D38(v130, v131, v132, v133, v134, v129 + 22);
    sub_23C442D38(v136, v137, v138, v139, v140, v135 + 22);
    sub_23C442D38(v142, v143, v144, v145, v146, v141 + 22);
    sub_23C442D38(v148, v149, v150, v151, v152, v147 + 22);
    sub_23C442D38(v154, v155, v156, v157, v158, v153 + 22);
    sub_23C442D38(v160, v161, v162, v163, v164, v159 + 22);
    sub_23C442D38(v166, v167, v168, v169, v170, v165 + 22);
    sub_23C442D38(v172, v173, v174, v175, v176, v171 + 22);
    sub_23C442E7C();
    *v177 = v121;
    v178 = veorq_s8(v120, v120);
    v179 = veorq_s8(v121, v121);
    v180 = veorq_s8(v122, v122);
    sub_23C442D38(v182, v183, v184, v185, v186, v181 + 1);
    sub_23C442D38(v188, v189, v190, v191, v192, v187 + 22);
    sub_23C442D38(v194, v195, v196, v197, v198, v193 + 22);
    sub_23C442D38(v200, v201, v202, v203, v204, v199 + 22);
    sub_23C442D38(v206, v207, v208, v209, v210, v205 + 22);
    sub_23C442D38(v212, v213, v214, v215, v216, v211 + 22);
    sub_23C442D38(v218, v219, v220, v221, v222, v217 + 22);
    sub_23C442D38(v224, v225, v226, v227, v228, v223 + 22);
    sub_23C442D38(v230, v231, v232, v233, v234, v229 + 22);
    sub_23C442E7C();
    *v235 = v179;
    v6 = veorq_s8(v178, v178);
    v4 = veorq_s8(v179, v179);
    v5 = veorq_s8(v180, v180);
    v9 = v236 + 3;
    v8 = v237 - 1;
  }

  while (v8);
}

__n128 sub_23C443168()
{
  result.n128_u64[0] = 0x101010101010101;
  result.n128_u64[1] = 0x101010101010101;
  return result;
}

void sub_23C443268()
{
  do
  {
    v3 = veorq_s8(v2, v2);
    v4 = veorq_s8(v0, v0);
    v5 = veorq_s8(v1, v1);
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C442E7C();
    *v6 = v4;
    v7 = veorq_s8(v3, v3);
    v8 = veorq_s8(v4, v4);
    v9 = veorq_s8(v5, v5);
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C442E7C();
    *v10 = v8;
    v11 = veorq_s8(v7, v7);
    v12 = veorq_s8(v8, v8);
    v13 = veorq_s8(v9, v9);
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C442E7C();
    *v14 = v12;
    v2 = veorq_s8(v11, v11);
    v0 = veorq_s8(v12, v12);
    v1 = veorq_s8(v13, v13);
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C443168();
    sub_23C442E7C();
    *v15 = v0;
  }

  while (v16 != 1);
}

__n128 sub_23C443400()
{
  result.n128_u64[0] = 0x101010101010101;
  result.n128_u64[1] = 0x101010101010101;
  return result;
}

uint16x8_t sub_23C44354C()
{
  v2 = veorq_s8(v1, v1);
  v3 = vuzp1q_s8(v0, v0);
  *v3.i8 = vshl_u8(*v3.i8, vclz_s8(*v3.i8));
  v4 = vzip1q_s8(v2, v3);
  return vrshrq_n_u16(vqshrn_high_n_u32(vqshrn_n_u32(vrecpeq_u32(vzip1q_s16(v2, v4)), 0x10uLL), vrecpeq_u32(vzip2q_s16(v2, v4)), 0x10uLL), 1uLL);
}

void sub_23C4435B4()
{
  sub_23C443400();
  sub_23C443400();
  sub_23C443400();
  sub_23C443400();
  sub_23C443400();
  sub_23C44354C();
  *v1 = veorq_s8(v0, v0);
}

void sub_23C44363C()
{
  do
  {
    sub_23C4435B4();
    sub_23C4435B4();
    sub_23C4435B4();
    sub_23C4435B4();
  }

  while (v0 != 1);
}

int16x8_t sub_23C4436C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  v11 = a6 + 1;
  v12 = v11[1];
  v13 = v6 + 1;
  *v14.i8 = *v13;
  v15 = v13[1];
  v16 = vextq_s8(*v11, v12, 4uLL);
  v17 = vextq_s8(*v11, v12, 8uLL);
  v18 = vextq_s8(*v11, v12, 0xCuLL);
  v19 = vcgeq_u8(v7, vabdq_u8(v16, v8));
  v20 = vcgeq_u8(v7, vabdq_u8(v18, v8));
  v21 = vcgeq_u8(v7, vabdq_u8(v12, v8));
  *v22.i8 = vext_s8(*v13, v15, 4uLL);
  v14.u64[1] = vext_s8(*v13, v15, 2uLL);
  v22.u64[1] = vext_s8(*v13, v15, 6uLL);
  v23 = vshlq_n_s8(vcgeq_u8(v7, vabdq_u8(*v11, v8)), 0);
  v24 = vuzp1q_s8(v23, v19);
  v25 = vuzp2q_s8(v23, v19);
  v26 = vshlq_n_s8(vcgeq_u8(v7, vabdq_u8(v17, v8)), 0);
  v27 = vuzp1q_s8(v26, v20);
  v28 = vuzp2q_s8(v26, v20);
  v29 = vshlq_n_s8(v21, 0);
  v30 = vuzp2q_s8(v21, v21);
  v31 = vandq_s8(vandq_s8(v24, v25), vcgeq_u8(v10, vabdq_u8(v14, v9)));
  v32 = vandq_s8(vandq_s8(v27, v28), vcgeq_u8(v10, vabdq_u8(v22, v9)));
  *v30.i8 = vand_s8(vand_s8(*v30.i8, *&vuzp1q_s8(v29, v29)), vcge_u8(*v10.i8, vabd_u8(v15, *v9.i8)));
  return vaddq_s16(vaddq_s16(vaddl_u8(*&vandq_s8(*v11, vzip1q_s8(v31, v31)), *&vandq_s8(v16, vzip2q_s8(v31, v31))), vaddl_u8(*&vandq_s8(v17, vzip1q_s8(v32, v32)), *&vandq_s8(v18, vzip2q_s8(v32, v32)))), vmovl_u8(*&vandq_s8(v12, vzip1q_s8(v30, v30))));
}

void sub_23C4438F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_23C4436C4(a1, a2, a3, a4, a5, (a7 - v7));
  sub_23C4436C4(v10, v11, v12, v13, v14, (v9 + v13));
  sub_23C4436C4(v16, v17, v18, v19, v20, (v15 + v19));
  sub_23C4436C4(v22, v23, v24, v25, v26, (v21 + v25));
  sub_23C4436C4(v28, v29, v30, v31, v32, (v27 + v31));
  sub_23C4436C4(v34, v35, v36, v37, v38, (v33 + v37));
  sub_23C4436C4(v40, v41, v42, v43, v44, (v39 + v43));
  sub_23C4436C4(v46, v47, v48, v49, v50, (v45 + v49));
  sub_23C4436C4(v52, v53, v54, v55, v56, (v51 + v55));
  sub_23C44354C();
  *v57 = veorq_s8(v8, v8);
}

void sub_23C4439A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[6];
  v5 = 2 * a1[2];
  v6 = *a1;
  do
  {
    sub_23C4438F0(a1, v1, v2, v5, v3, v4, v6);
    sub_23C4438F0(v7, v8, v9, v10, v11, v12, v13);
    sub_23C4438F0(v14, v15, v16, v17, v18, v19, v20);
    sub_23C4438F0(v21, v22, v23, v24, v25, v26, v27);
    v28 >>= 1;
    v6 = v29 + v28 - 64;
    v5 = 2 * v28;
    v3 = v30 - 1;
  }

  while (v3);
}

uint16x8_t sub_23C443A30(uint8x16_t **a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  do
  {
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v5[1];
    v10 = v5[2];
    v11 = v5[3];
    v12 = vsubl_high_u8(*v4, *v5);
    result = vsubl_u8(*v6.i8, *v9.i8);
    *v1 = vsubl_u8(*v4->i8, *v5->i8);
    v14 = v1 + 1;
    *v14++ = v12;
    *v14++ = result;
    *v14++ = vsubl_high_u8(v6, v9);
    *v14++ = vsubl_u8(*v7.i8, *v10.i8);
    *v14++ = vsubl_high_u8(v7, v10);
    *v14++ = vsubl_u8(*v8.i8, *v11.i8);
    *v14 = vsubl_high_u8(v8, v11);
    v1 = v14 + 1;
    v4 = (v2 + v4);
    v5 += 6;
    v3 = (v3 - 1);
  }

  while (v3);
  return result;
}

int8x16_t sub_23C443B18(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = (*a1 - (16 * v2 + 16));
  v4 = (a1[3] + 32) >> 1;
  do
  {
    result = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_u8(*v3), vpaddlq_u8(*(v3 + v2))), 2uLL), vaddq_s16(vpaddlq_u8(v3[1]), vpaddlq_u8(*(&v3[1] + v2))), 2uLL);
    v6 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_u8(v3[2]), vpaddlq_u8(*(&v3[2] + v2))), 2uLL), vaddq_s16(vpaddlq_u8(v3[3]), vpaddlq_u8(*(&v3[3] + v2))), 2uLL);
    v7 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_u8(v3[4]), vpaddlq_u8(*(&v3[4] + v2))), 2uLL), vaddq_s16(vpaddlq_u8(v3[5]), vpaddlq_u8(*(&v3[5] + v2))), 2uLL);
    *v1 = result;
    v8 = v1 + 1;
    *v8++ = v6;
    *v8 = v7;
    v1 = v8 + 1;
    v3 = (v3 + v2 + v2);
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_23C443D00(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32) >> 3;
  do
  {
    v6 = v2;
    v7 = v4 >> 4;
    do
    {
      v8 = (v3 - *(result + 56));
      v9 = *v8;
      v10 = v8[1];
      v11 = *(result + 40);
      v12 = *v1->i8;
      v13 = *&v1->i8[v11];
      v14 = (v1 + v11 + v11);
      v15 = *v14;
      v16 = (v14 + v11);
      v17 = *v16;
      v18 = (v16 + v11);
      v19 = vaddq_s16(vmovl_u8(*v1), v9);
      v20 = vaddq_s16(vmovl_high_u8(*v1->i8), v10);
      v21 = *(result + 56) - 16;
      *v3 = v19;
      v3[1] = v20;
      v22 = (v3 + v21 + 16);
      v23 = vaddq_s16(vmovl_u8(*v13.i8), v19);
      v24 = vaddq_s16(vmovl_high_u8(v13), v20);
      v25 = vaddq_s16(vaddl_u8(*v15.i8, *v17.i8), v23);
      v26 = vaddq_s16(vaddl_high_u8(v15, v17), v24);
      *v22++ = v23;
      *v22 = v24;
      v27 = (v22 + v21);
      *v27++ = vaddq_s16(vaddl_u8(*v13.i8, *v15.i8), v19);
      *v27 = vaddq_s16(vaddl_high_u8(v13, v15), v20);
      v28 = (v27 + v21);
      *v28++ = v25;
      *v28 = v26;
      v29 = (v28 + v21);
      v30 = *(result + 40);
      v31 = *v18;
      v32 = (v18 + v30);
      v33 = *v32;
      v34 = &v32->i8[v30];
      v35 = *v34->i8;
      v36 = *&v34->i8[v30];
      v37 = vaddq_s16(vmovl_u8(*v31.i8), v25);
      v38 = vaddq_s16(vmovl_high_u8(v31), v26);
      v39 = *(result + 56) - 16;
      v40 = vaddl_u8(*v33.i8, *v34);
      v41 = vaddl_high_u8(v33, *v34->i8);
      *v29++ = v37;
      *v29 = v38;
      v42 = (v29 + v39);
      v43 = vaddq_s16(vaddl_u8(*v31.i8, *v33.i8), v25);
      v44 = vaddq_s16(vaddl_high_u8(v31, v33), v26);
      *v42++ = v43;
      *v42 = v44;
      v45 = (v42 + v39);
      *v45++ = vaddq_s16(v40, v37);
      *v45 = vaddq_s16(v41, v38);
      v46 = (v45 + v39);
      *v46 = vaddq_s16(v43, vaddl_u8(*v35.i8, *v36.i8));
      v46[1] = vaddq_s16(v44, vaddl_high_u8(v35, v36));
      v47 = *(result + 48);
      v48 = &v6[-v47];
      v47 -= 16;
      v49 = *v48++;
      v50 = *v48;
      v51 = (v48 + v47);
      v52 = vshlq_n_s8(v12, 0);
      v53 = vshlq_n_s8(v15, 0);
      v54 = vshlq_n_s8(v31, 0);
      v55 = vshlq_n_s8(v35, 0);
      v56 = vzip1q_s8(v52, v13);
      v57 = vzip2q_s8(v52, v13);
      v58 = vzip1q_s8(v53, v17);
      v59 = vzip2q_s8(v53, v17);
      v60 = vzip1q_s8(v54, v33);
      v61 = vzip2q_s8(v54, v33);
      v62 = vzip1q_s8(v55, v36);
      v63 = vzip2q_s8(v55, v36);
      v64 = vshlq_n_s16(v56, 0);
      v65 = vshlq_n_s16(v57, 0);
      v66 = vshlq_n_s16(v60, 0);
      v67 = vshlq_n_s16(v61, 0);
      v68 = vzip1q_s16(v64, v58);
      v69 = vzip2q_s16(v64, v58);
      v70 = vzip1q_s16(v65, v59);
      v71 = vzip2q_s16(v65, v59);
      v72 = vzip1q_s16(v66, v62);
      v73 = vzip2q_s16(v66, v62);
      v74 = vzip1q_s16(v67, v63);
      v75 = vzip2q_s16(v67, v63);
      v76 = vshlq_n_s32(v68, 0);
      v77 = vshlq_n_s32(v69, 0);
      v78 = vshlq_n_s32(v70, 0);
      v79 = vshlq_n_s32(v71, 0);
      v80 = vzip1q_s32(v76, v72);
      v81 = vzip2q_s32(v76, v72);
      v82 = vzip1q_s32(v77, v73);
      v83 = vzip2q_s32(v77, v73);
      v84 = vzip1q_s32(v78, v74);
      v85 = vzip2q_s32(v78, v74);
      v86 = vzip1q_s32(v79, v75);
      v87 = vzip2q_s32(v79, v75);
      v88 = vmovl_u8(*v80.i8);
      v89 = vaddl_u8(*v80.i8, v80.u64[1]);
      v90 = vaddl_u8(*v81.i8, v80.u64[1]);
      v91 = vaddl_u8(*v81.i8, v81.u64[1]);
      v92 = vaddl_u8(*v82.i8, v81.u64[1]);
      v93 = vaddw_u16(v49, *v88.i8);
      v94 = vaddw_high_u16(v50, v88);
      v95 = vaddw_u16(v49, *v89.i8);
      v96 = vaddw_high_u16(v50, v89);
      *v51++ = v93;
      *v51 = v94;
      v97 = (v51 + v47);
      *v97++ = v95;
      *v97 = v96;
      v98 = (v97 + v47);
      v99 = vaddw_u16(v93, *v90.i8);
      v100 = vaddw_high_u16(v94, v90);
      v101 = vaddw_u16(v95, *v91.i8);
      v102 = vaddw_high_u16(v96, v91);
      *v98++ = v99;
      *v98 = v100;
      v103 = (v98 + v47);
      *v103++ = v101;
      *v103 = v102;
      v104 = (v103 + v47);
      v105 = vaddl_u8(*v83.i8, v82.u64[1]);
      v106 = vaddl_u8(*v82.i8, v82.u64[1]);
      v107 = vaddw_u16(v99, *v92.i8);
      v108 = vaddw_high_u16(v100, v92);
      v109 = vaddw_u16(v101, *v106.i8);
      v110 = vaddw_high_u16(v102, v106);
      *v104++ = v107;
      *v104 = v108;
      v111 = (v104 + v47);
      *v111++ = v109;
      *v111 = v110;
      v112 = (v111 + v47);
      v113 = vaddl_u8(*v84.i8, v83.u64[1]);
      v114 = vaddl_u8(*v83.i8, v83.u64[1]);
      v115 = vaddw_u16(v107, *v105.i8);
      v116 = vaddw_high_u16(v108, v105);
      v117 = vaddw_u16(v109, *v114.i8);
      v118 = vaddw_high_u16(v110, v114);
      *v112++ = v115;
      *v112 = v116;
      v119 = (v112 + v47);
      *v119++ = v117;
      *v119 = v118;
      v120 = (v119 + v47);
      v121 = vaddl_u8(v84.u64[1], *v84.i8);
      v122 = vaddw_u16(v115, *v113.i8);
      v123 = vaddw_high_u16(v116, v113);
      v124 = vaddw_u16(v117, *v121.i8);
      v125 = vaddw_high_u16(v118, v121);
      *v120++ = v122;
      *v120 = v123;
      v126 = (v120 + v47);
      *v126++ = v124;
      *v126 = v125;
      v127 = (v126 + v47);
      v128 = vaddl_u8(v84.u64[1], *v85.i8);
      v129 = vaddl_u8(v85.u64[1], *v86.i8);
      v130 = vaddl_u8(*v85.i8, v85.u64[1]);
      v131 = vaddl_u8(v86.u64[1], *v86.i8);
      v132 = vaddw_u16(v122, *v128.i8);
      v133 = vaddw_high_u16(v123, v128);
      v134 = vaddw_u16(v124, *v130.i8);
      v135 = vaddw_high_u16(v125, v130);
      *v127++ = v132;
      *v127 = v133;
      v136 = (v127 + v47);
      *v136++ = v134;
      *v136 = v135;
      v137 = (v136 + v47);
      v138 = vaddw_u16(v132, *v129.i8);
      v139 = vaddw_high_u16(v133, v129);
      v140 = vaddw_u16(v134, *v131.i8);
      v141 = vaddw_high_u16(v135, v131);
      *v137++ = v138;
      *v137 = v139;
      v142 = (v137 + v47);
      *v142++ = v140;
      *v142 = v141;
      v143 = (v142 + v47);
      v144 = vaddl_u8(v86.u64[1], *v87.i8);
      v145 = vaddl_u8(v87.u64[1], *v87.i8);
      *v143++ = vaddw_u16(v138, *v144.i8);
      *v143 = vaddw_high_u16(v139, v144);
      v146 = (v143 + v47);
      *v146++ = vaddw_u16(v140, *v145.i8);
      *v146 = vaddw_high_u16(v141, v145);
      v6 = &v146->i8[v47];
      v3 += 2;
      v1 += 2;
      --v7;
    }

    while (v7);
    v2 += 32;
    v1 = (&v1[*(result + 40)] - v4);
    v3 = (v3 + 8 * *(result + 56) + -2 * v4);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t ABRegInitContext(int a1, int a2, char a3, char a4, char a5, char a6, int *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a1 >= 1 && a2 >= 1)
  {
    *a7 = a1;
    a7[1] = a2;
    if (a2 <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = a2;
    }

    *(a7 + 181) = a4;
    *(a7 + 180) = a3;
    *(a7 + 182) = a5;
    *(a7 + 183) = a6;
    a7[2] = v9;
    v10 = *(a7 + 2);
    if (v10)
    {
      v11 = disposeProjectionContext(v10);
      if ((v11 & 0x80000000) != 0)
      {
        v7 = v11;
        goto LABEL_31;
      }

      v12 = *(a7 + 2);
    }

    else
    {
      v12 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10100407CF591C2uLL);
      *(a7 + 2) = v12;
    }

    inited = initProjectionContext(*a7, a7[1], v12);
    if ((inited & 0x80000000) == 0)
    {
      v14 = *(a7 + 3);
      if (v14)
      {
        free(v14);
      }

      v15 = malloc_type_malloc(8 * a7[1], 0x100004052888210uLL);
      *(a7 + 3) = v15;
      if (v15)
      {
        *(a7 + 4) = &v15[4 * a7[1]];
        v16 = *(a7 + 5);
        if (v16)
        {
          free(v16);
        }

        v17 = malloc_type_malloc(8 * *a7, 0x100004052888210uLL);
        *(a7 + 5) = v17;
        if (v17)
        {
          *(a7 + 6) = &v17[4 * *a7];
          v18 = *(a7 + 7);
          if (v18)
          {
            free(v18);
          }

          v19 = malloc_type_malloc(8 * a7[1], 0x100004052888210uLL);
          *(a7 + 7) = v19;
          if (v19)
          {
            *(a7 + 8) = &v19[4 * a7[1]];
            v20 = *(a7 + 9);
            if (v20)
            {
              free(v20);
            }

            v21 = malloc_type_malloc(8 * *a7, 0x100004052888210uLL);
            *(a7 + 9) = v21;
            if (v21)
            {
              *(a7 + 10) = &v21[4 * *a7];
              v22 = *(a7 + 11);
              if (v22)
              {
                free(v22);
              }

              v23 = malloc_type_malloc(16 * a7[2], 0x100004052888210uLL);
              *(a7 + 11) = v23;
              if (v23)
              {
                v24 = a7[2];
                v25 = &v23[4 * v24];
                v26 = &v25[4 * v24];
                *(a7 + 12) = v25;
                *(a7 + 13) = v26;
                *(a7 + 14) = &v26[4 * v24];
                if (*a7 > 4095 || a7[1] >= 4096)
                {
                  v7 = 0xFFFFFFFFLL;
                  ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", -1, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 115);
                  return v7;
                }

                destroyMeanStdTable((a7 + 30));
                destroyMeanStdTable((a7 + 34));
                MeanStdTable = createMeanStdTable(a7 + 15, 4095);
                if ((MeanStdTable & 0x80000000) != 0)
                {
                  v38 = MeanStdTable;
                  v39 = 119;
                }

                else
                {
                  v29 = createMeanStdTable(a7 + 17, 4095);
                  if ((v29 & 0x80000000) == 0)
                  {
                    v30 = vcvtps_s32_f32(*a7 * 0.125);
                    v31 = vcvtps_s32_f32(a7[1] * 0.125);
                    if (v30 <= v31)
                    {
                      v30 = v31;
                    }

                    a7[44] = v30;
                    v32 = *(a7 + 19);
                    if (v32)
                    {
                      free(v32);
                      v30 = a7[44];
                    }

                    v33 = malloc_type_malloc(4 * v30, 0x100004052888210uLL);
                    *(a7 + 19) = v33;
                    if (v33)
                    {
                      v34 = *(a7 + 20);
                      if (v34)
                      {
                        free(v34);
                      }

                      v35 = malloc_type_malloc(4 * a7[44], 0x100004052888210uLL);
                      *(a7 + 20) = v35;
                      if (v35)
                      {
                        v36 = *(a7 + 21);
                        if (v36)
                        {
                          free(v36);
                        }

                        v37 = malloc_type_malloc(4 * a7[44], 0x100004052888210uLL);
                        *(a7 + 21) = v37;
                        if (v37)
                        {
                          return 0;
                        }
                      }
                    }

                    goto LABEL_32;
                  }

                  v38 = v29;
                  v39 = 120;
                }

                ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v38, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", v39);
                return v38;
              }
            }
          }
        }
      }

LABEL_32:
      v7 = 4294967294;
      ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)");
      return v7;
    }

    v7 = inited;
LABEL_31:
    ACTLogMessageImp(4, "Projections error %d @ %s (line %d)");
  }

  return v7;
}

uint64_t ABRegUpdateIntegralImage(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (a1)
  {
    v3 = computeIntegralImages(a1, *a3, a3[1], a2, *(a3 + 2));
    if ((v3 & 0x80000000) != 0)
    {
      v4 = v3;
      ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 170);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = 4294967291;
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", -5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 168);
  }

  return v4;
}

uint64_t ABRegDisposeContext(uint64_t *a1)
{
  if (!a1)
  {
    return 4294967291;
  }

  v2 = a1[2];
  if (v2)
  {
    v3 = disposeProjectionContext(v2);
    if ((v3 & 0x80000000) != 0)
    {
      v12 = v3;
      ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", v3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 183);
      return v12;
    }

    free(a1[2]);
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
    a1[3] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    free(v5);
    a1[5] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    free(v6);
    a1[7] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    free(v7);
    a1[9] = 0;
  }

  v8 = a1[11];
  if (v8)
  {
    free(v8);
    a1[11] = 0;
  }

  v9 = a1[19];
  if (v9)
  {
    free(v9);
    a1[19] = 0;
  }

  v10 = a1[20];
  if (v10)
  {
    free(v10);
    a1[20] = 0;
  }

  v11 = a1[21];
  if (v11)
  {
    free(v11);
    a1[21] = 0;
  }

  destroyMeanStdTable((a1 + 15));
  destroyMeanStdTable((a1 + 17));
  return 0;
}

uint64_t ABRegComputeShift()
{
  v0 = MEMORY[0x28223BE20]();
  v86 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  if (!v5)
  {
    return 4294967293;
  }

  v11 = vcvtps_s32_f32(v9);
  v76 = vcvtms_s32_f32(v8);
  if (v76 > v11)
  {
    v12 = 0xFFFFFFFFLL;
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", -1, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 528);
    return v12;
  }

  v13 = v7;
  v14 = v6;
  v15 = v3;
  v16 = v2;
  v17 = v10;
  v18 = v1;
  v67 = v4;
  if (v3 < 1)
  {
    v64 = v7;
    goto LABEL_10;
  }

  v19 = v5;
  v20 = smoothSignature(v0, v2, v3, *(v5 + 88));
  if ((v20 & 0x80000000) == 0)
  {
    v21 = smoothSignature(v18, v16, v15, *(v19 + 96));
    if ((v21 & 0x80000000) != 0)
    {
      v12 = v21;
      v61 = 533;
      goto LABEL_75;
    }

    v64 = v13;
    v0 = *(v19 + 88);
    v18 = *(v19 + 96);
    v5 = v19;
LABEL_10:
    v82 = 0.0;
    v22 = *v14;
    v75 = v0;
    v23 = v5;
    initMeanStdTable(v0, v16, v5 + 120);
    v74 = v23;
    initMeanStdTable(v18, v16, v23 + 136);
    v68 = 0;
    v66 = 0;
    v70 = 0;
    v24 = 0;
    v25 = v16 - 1;
    v26 = v16 - 1 - v76;
    v27 = -v76;
    v28 = ~v11 + v76;
    v71 = 0.0;
    v29 = -3.4028e38;
    v30 = 3.4028e38;
    v69 = 3.4028e38;
    v31 = 3.4028e38;
    v32 = 0.0;
    v33 = 3.4028e38;
    v65 = 0.0;
    v34 = 3.4028e38;
    v72 = v28;
    v73 = v16 - 1;
    do
    {
      if (v26 >= v25)
      {
        v35 = v25;
      }

      else
      {
        v35 = v26;
      }

      v36 = v27 & ~(v27 >> 31);
      if ((v35 - v36) >= 19)
      {
        v77 = v26;
        v78 = v27;
        v79 = v24;
        v37 = v76 + v24;
        v38 = v76 + v24 + v36;
        v39 = v35 - v36 + 1;
        __C = 0.0;
        v40 = (v75 + 4 * v36);
        vDSP_dotpr(v40, 1, &v18[v38], 1, &__C, v39);
        __C = __C / v39;
        *&v41 = __C;
        v42 = normalizeMeanStdUsingTable(v75, v36, v35, (v74 + 120), 0, &v84 + 1, &v84, v41);
        if ((v42 & 0x80000000) != 0)
        {
          v55 = v42;
          ACTLogMessageImp(4, "FastVectorMath error %d @ %s (line %d)");
          return v55;
        }

        v44 = normalizeMeanStdUsingTable(v18, v38, v37 + v35, (v74 + 136), 0, &v83 + 1, &v83, v43);
        if ((v44 & 0x80000000) != 0)
        {
          v60 = v44;
          ACTLogMessageImp(4, "FastVectorMath error %d @ %s (line %d)");
          return v60;
        }

        v45 = *&v84 * *&v83;
        if ((*&v84 * *&v83) <= 0.0)
        {
          v80 = 0;
          MEMORY[0x23EED2EE0](v40, 1, &v18[v38], 1, __A, 1, v39, v45);
          vDSP_svesq(__A, 1, &v82, v39);
          vDSP_svesq(v40, 1, &v80 + 1, v39);
          vDSP_svesq(&v18[v38], 1, &v80, v39);
          if ((*(&v80 + 1) + *&v80) <= 0.0)
          {
            v46 = 3.4028e38;
          }

          else
          {
            v46 = v82 / (*(&v80 + 1) + *&v80);
          }

          v28 = v72;
          v25 = v73;
          v27 = v78;
          v24 = v79;
          v26 = v77;
          v82 = v46;
        }

        else
        {
          v46 = ((v45 - __C) + (*(&v84 + 1) * *(&v83 + 1))) / (v45 + v45);
          v82 = v46;
          v28 = v72;
          v25 = v73;
          v27 = v78;
          v24 = v79;
          v26 = v77;
        }

        v47 = v46 + (((v37 - v22) * v17) * (v37 - v22));
        if (v17 <= 0.0)
        {
          v47 = v46;
        }

        if (v47 <= v29)
        {
          if (v47 < v31)
          {
            v31 = v47;
          }
        }

        else
        {
          v29 = v47;
        }

        if (v24 >= 2 && (v34 >= v33 && v47 > v33 || v34 > v33 && v47 >= v33))
        {
          if (v33 >= v30)
          {
            if (v33 >= v69)
            {
              v68 = 1;
            }

            else
            {
              v70 |= v67;
              v52 = v71;
              if (v67)
              {
                v52 = v33 - v30;
              }

              v71 = v52;
              v68 = 1;
              v69 = v33;
            }
          }

          else
          {
            v65 = (v76 - 1 + v24);
            v48 = v30 - v33;
            if ((v66 & 1) == 0)
            {
              v48 = 1.0;
            }

            v49 = v70;
            if (v67)
            {
              v49 = v66;
            }

            v70 = v49;
            v50 = v71;
            if (v67)
            {
              v50 = v48;
            }

            v71 = v50;
            v51 = 1.0 - v46;
            if (v51 <= v32)
            {
              v51 = v32;
            }

            v66 = 1;
            v68 = 1;
            if ((v67 & 2) != 0)
            {
              v32 = v51;
            }

            v69 = v30;
            v30 = v33;
          }
        }

        v34 = v33;
        v33 = v47;
      }

      ++v24;
      --v26;
      --v27;
    }

    while (v28 + v24);
    if ((v67 & 1) == 0 || (v70 & 1) == 0)
    {
      v54 = v64;
      v53 = v71;
    }

    else
    {
      v53 = v71 / (v29 - v31);
      v54 = v64;
    }

    *v14 = v65;
    v56 = 0.0;
    if ((v68 & 1) == 0)
    {
      v12 = 1;
      v57 = 0.0;
      v32 = 0.0;
      v53 = 0.0;
      goto LABEL_77;
    }

    v57 = 0.0;
    if ((v67 & 4) == 0)
    {
      if ((v67 & 2) == 0)
      {
        goto LABEL_76;
      }

LABEL_66:
      if (v32 < 0.0)
      {
        v32 = 0.0;
      }

      if (v32 > 1.0)
      {
        v12 = 0;
        v32 = 1.0;
      }

      else
      {
LABEL_76:
        v12 = 0;
      }

LABEL_77:
      v62 = 0.0;
      if (v67)
      {
        v56 = logf(v53 + 0.000001) + 0.0;
        v62 = 1.0;
        if ((v67 & 2) == 0)
        {
LABEL_79:
          if ((v67 & 4) == 0)
          {
LABEL_81:
            *v54 = expf(v56 / v62);
            return v12;
          }

LABEL_80:
          v56 = logf(v57 + 0.000001) + v56;
          v62 = v62 + 1.0;
          goto LABEL_81;
        }
      }

      else if ((v67 & 2) == 0)
      {
        goto LABEL_79;
      }

      v56 = logf(v32 + 0.000001) + v56;
      v62 = v62 + 1.0;
      if ((v67 & 4) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    HIDWORD(v80) = 0;
    __C = 0.0;
    v58 = signatureLineRegressionQuality();
    if ((v58 & 0x80000000) != 0)
    {
      v60 = v58;
      ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)");
      return v60;
    }

    v59 = signatureLineRegressionQuality();
    if ((v59 & 0x80000000) == 0)
    {
      if (__C >= *(&v80 + 1))
      {
        v57 = *(&v80 + 1);
      }

      else
      {
        v57 = __C;
      }

      goto LABEL_66;
    }

    v12 = v59;
    v61 = 879;
LABEL_75:
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v12, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", v61);
    return v12;
  }

  v55 = v20;
  ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)");
  return v55;
}

uint64_t ABRegRegisterSlices(uint64_t a1, int a2, int a3, uint64_t a4, float *a5, float *a6, _DWORD *a7, _DWORD *a8)
{
  if (!a4)
  {
    v17 = 4294967293;
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 1018);
    return v17;
  }

  v15 = *(a4 + 4);
  v49 = *a4 - 1;
  v50 = 0;
  v47 = v15 - 1;
  v48 = 0;
  v45 = v49;
  v46 = 0;
  v43 = v15 - 1;
  v44 = 0;
  v42 = 0;
  v16 = *a6;
  if (fabsf(*a6) > v15)
  {
    v16 = 0.0;
  }

  sub_23C445234(&v50, &v49, &v48, &v47, &v46, &v45, &v44, &v43, *a5, v16, 1, &v42 + 4, &v42);
  if (a3 != 1 && a3 != 2)
  {
    v17 = 0xFFFFFFFFLL;
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", -1, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 1101);
    return v17;
  }

  if ((a2 & 0xFFFFFFFD) != 1)
  {
    goto LABEL_15;
  }

  *a7 = 0;
  v18 = v49;
  v19 = v50;
  v20 = projectionRowsFromIntegralImage(0, *(a4 + 16), v50, v49, v48, v47, *(a4 + 40));
  if ((v20 & 0x80000000) != 0)
  {
    v33 = v20;
    v34 = 1118;
LABEL_26:
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v33, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", v34);
    return v33;
  }

  v21 = projectionRowsFromIntegralImage(1, *(a4 + 16), v46, v45, v44, v43, *(a4 + 48));
  if ((v21 & 0x80000000) != 0)
  {
    v33 = v21;
    v34 = 1121;
    goto LABEL_26;
  }

  v22 = v18 - v19;
  v23 = signatureDerivative(*(a4 + 40), v22 + 1, *(a4 + 72));
  if ((v23 & 0x80000000) != 0)
  {
    v37 = v23;
    v38 = 1124;
LABEL_31:
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v37, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", v38);
    return v37;
  }

  v24 = signatureDerivative(*(a4 + 48), v22 + 1, *(a4 + 80));
  if ((v24 & 0x80000000) != 0)
  {
    v37 = v24;
    v38 = 1125;
    goto LABEL_31;
  }

  v25 = ABRegComputeShift();
  if ((v25 & 0x80000000) != 0)
  {
    v35 = v25;
    v36 = 1131;
    goto LABEL_34;
  }

  *a5 = *(&v42 + 1) + 0.0;
LABEL_15:
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  *a8 = 0;
  v26 = v47;
  v27 = v48;
  v28 = projectionColsFromIntegralImage(0, *(a4 + 16), v50, v49, v48, v47, *(a4 + 24));
  if ((v28 & 0x80000000) != 0)
  {
    v35 = v28;
    v36 = 1149;
LABEL_34:
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v35, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", v36);
    return v35;
  }

  v29 = projectionColsFromIntegralImage(1, *(a4 + 16), v46, v45, v44, v43, *(a4 + 32));
  if ((v29 & 0x80000000) != 0)
  {
    v35 = v29;
    v36 = 1152;
    goto LABEL_34;
  }

  v30 = signatureDerivative(*(a4 + 24), v26 - v27 + 1, *(a4 + 56));
  if ((v30 & 0x80000000) != 0)
  {
    v39 = v30;
    v40 = 1155;
LABEL_36:
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v39, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", v40);
    return v39;
  }

  v31 = signatureDerivative(*(a4 + 32), v26 - v27 + 1, *(a4 + 64));
  if ((v31 & 0x80000000) != 0)
  {
    v39 = v31;
    v40 = 1156;
    goto LABEL_36;
  }

  v32 = ABRegComputeShift();
  if ((v32 & 0x80000000) != 0)
  {
    v17 = v32;
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v32, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 1162);
  }

  else
  {
    v17 = 0;
    *a6 = *&v42 + 0.0;
  }

  return v17;
}

uint64_t sub_23C445234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, int a11, uint64_t a12, uint64_t a13)
{
  if (a11 >= 1)
  {
    v13 = 0;
    v14 = a9;
    v15 = a10;
    v16 = a9;
    do
    {
      v17 = *(a5 + v13) - v14;
      v18 = *(a6 + v13) - v14;
      v19 = *(a7 + v13) - v15;
      v20 = *(a8 + v13) - v15;
      if (*(result + v13) > v17)
      {
        v17 = *(result + v13);
      }

      *(result + v13) = v17;
      v21 = *(a2 + v13);
      if (v21 >= v18)
      {
        v21 = v18;
      }

      *(a2 + v13) = v21;
      v22 = *(a3 + v13);
      if (v22 <= v19)
      {
        v22 = v19;
      }

      *(a3 + v13) = v22;
      v23 = *(a4 + v13);
      if (v23 >= v20)
      {
        v23 = v20;
      }

      *(a4 + v13) = v23;
      *(a5 + v13) = *(result + v13) + v14;
      *(a6 + v13) = *(a2 + v13) + v14;
      *(a7 + v13) = *(a3 + v13) + v15;
      *(a8 + v13) = *(a4 + v13) + v15;
      *(a12 + v13) = v16;
      *(a13 + v13) = v15;
      v13 += 4;
    }

    while (4 * a11 != v13);
  }

  return result;
}

uint64_t ABRegRegisterSlicesRobust(int a1, float a2, uint64_t a3, int a4, uint64_t a5, float *a6, float *a7, _DWORD *a8, float *a9)
{
  v78 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    v19 = 4294967293;
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 1181);
    return v19;
  }

  v10 = a7;
  *a8 = 0;
  *a9 = 0.0;
  v16 = ABRegRegisterSlices(2, 1, a4, a5, a6, a7, a8, a9);
  if ((v16 & 0x80000000) != 0)
  {
    v20 = v16;
    v21 = 1190;
LABEL_12:
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v20, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", v21);
    return v20;
  }

  v17 = blockyfyGeometry(*a5, *(a5 + 4), a1, 2, 1, 0, v77, v76, a2, 0.0, v75, v74);
  if ((v17 & 0x80000000) != 0)
  {
    v20 = v17;
    v21 = 1217;
    goto LABEL_12;
  }

  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  __memcpy_chk();
  v18 = *v10;
  if (fabsf(*v10) > *(a5 + 4))
  {
    v18 = 0.0;
  }

  sub_23C445234(v77, v76, v75, v74, v73, v72, v71, v70, *a6, v18, a1, v69, v68);
  if (a4 != 1 && a4 != 2)
  {
    v19 = 0xFFFFFFFFLL;
    ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", -1, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", 1261);
    return v19;
  }

  if (a1 < 1)
  {
    v38 = 0.0;
    v37 = -3.4028e38;
    v36 = 3.4028e38;
    v33 = 0.0;
    goto LABEL_31;
  }

  v65 = v10;
  v23 = 0;
  v24 = a1;
  do
  {
    v25 = v74[v23];
    v26 = v75[v23];
    v27 = projectionColsFromIntegralImage(0, *(a5 + 16), v77[v23], v76[v23], v26, v25, *(a5 + 24));
    if ((v27 & 0x80000000) != 0)
    {
      v20 = v27;
      v21 = 1275;
      goto LABEL_12;
    }

    v28 = projectionColsFromIntegralImage(1, *(a5 + 16), *&v73[v23 * 4], *&v72[v23 * 4], *&v71[v23 * 4], *&v70[v23 * 4], *(a5 + 32));
    if ((v28 & 0x80000000) != 0)
    {
      v20 = v28;
      v21 = 1278;
      goto LABEL_12;
    }

    v29 = v25 - v26;
    v30 = signatureDerivative(*(a5 + 24), v29 + 1, *(a5 + 56));
    if ((v30 & 0x80000000) != 0)
    {
      v63 = v30;
      v64 = 1281;
LABEL_54:
      ACTLogMessageImp(4, "ABReg error %d @ %s (line %d)", v63, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ABReg.c", v64);
      return v63;
    }

    v31 = signatureDerivative(*(a5 + 32), v29 + 1, *(a5 + 64));
    if ((v31 & 0x80000000) != 0)
    {
      v63 = v31;
      v64 = 1282;
      goto LABEL_54;
    }

    v32 = ABRegComputeShift();
    if ((v32 & 0x80000000) != 0)
    {
      v63 = v32;
      v64 = 1288;
      goto LABEL_54;
    }

    *&v67[v23 * 4] = *&v68[v23 * 4] + 0.0;
    ++v23;
  }

  while (a1 != v23);
  v33 = 0.0;
  v34 = v66;
  v35 = v67;
  v36 = 3.4028e38;
  v37 = -3.4028e38;
  v38 = 0.0;
  v10 = v65;
  do
  {
    v39 = *v35++;
    v40 = v39;
    if (v36 > v39)
    {
      v36 = v40;
    }

    if (v37 < v40)
    {
      v37 = v40;
    }

    v41 = *v34++;
    v38 = v38 + v41;
    v33 = v33 + v40;
    --v24;
  }

  while (v24);
LABEL_31:
  if (isZero(v38))
  {
    return 0;
  }

  if ((v37 - v36) >= 0.000001)
  {
    v45 = vcvtms_s32_f32((v37 - v36) * 0.125);
    if (v45 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    bzero(*(a5 + 152), 4 * v46);
    bzero(*(a5 + 168), 4 * v46);
    bzero(*(a5 + 160), 4 * v46);
    if (a1 >= 1)
    {
      v47 = *(a5 + 152);
      v48 = *(a5 + 160);
      v49 = v66;
      v50 = v67;
      v51 = a1;
      v52 = *(a5 + 168);
      do
      {
        v53 = *v50++;
        v54 = v53;
        v55 = vcvtms_s32_f32((v53 - v36) * 0.125);
        v56 = *v49++;
        v57 = v56;
        if (v46 == v55)
        {
          v55 = v46 - 1;
        }

        *(v47 + 4 * v55) = v57 + *(v47 + 4 * v55);
        *(v48 + 4 * v55) = *(v48 + 4 * v55) + 1.0;
        *(v52 + 4 * v55) = *(v52 + 4 * v55) + (v54 * v57);
        --v51;
      }

      while (v51);
    }

    if (v46 < 1)
    {
      v62 = 0.0;
      v61 = 0.0;
      v60 = 0.0;
    }

    else
    {
      v58 = 0;
      v60 = 0.0;
      v61 = 0.0;
      v62 = 0.0;
      do
      {
        v59 = *(a5 + 152);
        if (*(v59 + v58) > v62)
        {
          v61 = *(*(a5 + 160) + v58);
          v60 = *(*(a5 + 168) + v58);
          v62 = *(v59 + v58);
        }

        v58 += 4;
      }

      while (4 * v46 != v58);
    }

    *v10 = v60 / v62;
    v44 = v62 / v61;
  }

  else
  {
    v42 = 1.0 / a1;
    v43 = v42 * v33;
    v44 = v42 * v38;
    *v10 = v43;
  }

  v19 = 0;
  *a9 = v44;
  return v19;
}

void *createACTRegistrationContext()
{
  v0 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040EA86B388uLL);
  if (!v0)
  {
    v3 = 33;
LABEL_8:
    ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", v3);
    deleteACTRegistrationContext(v0);
    return 0;
  }

  v1 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10A004006781751uLL);
  v0[3] = v1;
  if (!v1)
  {
    v3 = 40;
    goto LABEL_8;
  }

  v2 = malloc_type_calloc(1uLL, 0x1088uLL, 0x1000040BD4C5F4CuLL);
  v0[4] = v2;
  if (!v2)
  {
    v3 = 48;
    goto LABEL_8;
  }

  v0[12] = 0;
  v0[13] = 0;
  v0[15] = 0;
  v0[16] = 0;
  return v0;
}

void deleteACTRegistrationContext(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      ABRegDisposeContext(v2);
      free(*(a1 + 3));
    }

    v3 = *(a1 + 4);
    if (v3)
    {
      MFRegDisposeContext(v3);
      free(*(a1 + 4));
    }

    v4 = *(a1 + 12);
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

uint64_t resetACTRegistrationContext(int a1, int a2, uint64_t a3)
{
  if (a3)
  {
    *a3 = 1;
    *(a3 + 8) = 0;
    *(a3 + 12) = 1;
    *(a3 + 116) = 0;
    *(a3 + 16) = 2;
    *(a3 + 92) = 0;
    setACTRegistrationCSVLogLevel(a3, 0);
    v6 = MEMORY[0x277CBF2C0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *(a3 + 40) = *MEMORY[0x277CBF2C0];
    *(a3 + 56) = v7;
    *(a3 + 72) = *(v6 + 32);
    *(a3 + 95) = 1;
    if (ABRegInitContext(a1, a2, 0, 0, *(a3 + 93), 0, *(a3 + 24)))
    {
      v8 = 143;
    }

    else
    {
      if (!MFRegInitContext(*(a3 + 16), 0, *(a3 + 93), 0, *(a3 + 32)))
      {
        v9 = 0;
        *(a3 + 88) = 0;
        *(a3 + 120) = 0;
        *(a3 + 128) = 0;
        return v9;
      }

      v8 = 149;
    }

    v9 = 4294967294;
    ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -2, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", v8);
  }

  else
  {
    v9 = 4294967294;
    ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -2, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 113);
  }

  return v9;
}

void setACTRegistrationCSVLogLevel(uint64_t a1, int a2)
{
  v4 = a1 + 96;
  v3 = *(a1 + 96);
  *(v4 - 2) = a2;
  if (v3)
  {
    free(v3);
    *v4 = 0;
    *(v4 + 8) = 0;
    a2 = *(a1 + 94);
  }

  if (a2)
  {
    v5 = malloc_type_calloc(0x2000uLL, 1uLL, 0x100004077774924uLL);
    *v4 = v5;
    if (v5)
    {
      *(a1 + 104) = 0x2000;
      __sprintf_chk(v5, 0, 0x2000uLL, "time (2nd), warmup, status, qualityMain, method, prediction, fallback, txPrediction, tyPrediction, predictionReliable, txMain, tyMain, tx, ty, txMotionFilter, tyMotionFilter, xAlpha, xBeta, nXRingBufferElements, tXBegin, tXEnd, yAlpha, yBeta, nYRingBufferElements, tYBegin, tYEnd, slice1FirstBytes, slice2FirstBytes\n");
      *(a1 + 112) = 0;
    }

    else
    {
      ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 1092);
      if (*v4)
      {
        free(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
      }
    }
  }
}

__n128 setACTRegistrationCumulativeTransform(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *a2;
  *(a1 + 56) = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 72) = result;
  return result;
}

uint64_t registerSampleBuffers(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, __CVBuffer *a4, uint64_t a5, int a6, _OWORD *a7, _DWORD *a8, unsigned __int8 a9)
{
  if (!*a1)
  {
    v21 = 0xFFFFFFFFLL;
    ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -1, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 178);
    goto LABEL_32;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 1uLL);
  if (!a9)
  {
    if (!pixelBuffer || !a4)
    {
      v21 = 4294967293;
      ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 194);
      goto LABEL_32;
    }

    v23 = *(MEMORY[0x277CBF2C0] + 16);
    v80 = *MEMORY[0x277CBF2C0];
    v22 = v80;
    v81 = v23;
    v24 = *(MEMORY[0x277CBF2C0] + 32);
    v82 = v24;
    v76 = v80;
    v77 = v23;
    v78 = v24;
    if (*(a1 + 13) != 1)
    {
      v26 = 0;
      v58 = 0;
      goto LABEL_20;
    }

    v62 = v24;
    v65 = v23;
    v68 = v80;
    v25 = ACTPreRegisterSlices(pixelBuffer, v18, a4, v19, *(a1 + 4), &v80, &v79, a1);
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      if (*(a1 + 88) >= 7)
      {
        v26 = 0;
        v76 = v80;
        v77 = v81;
        v78 = v82;
        v58 = 1;
LABEL_19:
        v23 = v65;
        v22 = v68;
        v24 = v62;
LABEL_20:
        v73 = v22;
        v74 = v23;
        v75 = v24;
        v72 = 0;
        v27 = ACTRegisterSlices(pixelBuffer, v18, a4, a5, *a1, &v72, &v76, &v73, &v72 + 1, a1);
        v21 = v27;
        if ((v27 & 0x80000000) != 0)
        {
          ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", v27, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 250);
        }

        else
        {
          v57 = *(&v72 + 1);
          v10 = *(&v75 + 1);
          *&v9 = v75;
          if (*(a1 + 12) == 1 && v27 == 1 && v72)
          {
            v66 = v74;
            v69 = v73;
            v63 = v72;
            if (ACTRegisterSlices(pixelBuffer, v28, a4, a5, v72, &v71 + 1, &v76, &v73, &v72 + 1, a1))
            {
              *(a1 + 8) = *a1;
              v73 = v69;
              v74 = v66;
              v75 = __PAIR128__(*&v10, *&v9);
              *(&v72 + 1) = v57;
            }

            else
            {
              *(a1 + 8) = v63;
            }

            v32 = v58;
            v31 = 1;
          }

          else
          {
            v31 = 0;
            *(a1 + 8) = *a1;
            v32 = v58;
          }

          v56 = v31;
          v33 = ACTPostRegisterSlices(pixelBuffer, v28, a4, v29, v26, v21, v30, v31, v32, &v80, &v73, v55, a1);
          if ((v33 & 0x80000000) != 0)
          {
            v21 = v33;
            ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", v33, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 349);
          }

          else
          {
            v21 = 0;
          }
        }

        goto LABEL_32;
      }

      v26 = 0;
    }

    v58 = 0;
    goto LABEL_19;
  }

  v20 = ACTRegistrationWarmup(pixelBuffer, a3, a4, v19, a1);
  if ((v20 & 0x80000000) == 0)
  {
    return 0;
  }

  v21 = v20;
  ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", v20, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 189);
LABEL_32:
  v34 = v74;
  *a7 = v73;
  a7[1] = v34;
  a7[2] = v75;
  *a8 = HIDWORD(v72);
  if (*(a1 + 94))
  {
    v71 = 0;
    MFGetMotionFilterIncrementalTranslation(pixelBuffer, a4, *(a1 + 32), &v71 + 1, &v71);
    v70 = *(a1 + 8);
    v67 = *(a1 + 13);
    v35 = *&v82;
    v36 = *(&v82 + 1);
    v61 = v36;
    v64 = v35;
    v37 = v9;
    v38 = v10;
    v59 = v38;
    v60 = v37;
    v39 = v71;
    v40 = *(a1 + 32);
    v41 = *(v40 + 2076);
    v42 = *(v40 + 2080);
    v43 = *(v40 + 24);
    v44 = *(v40 + 2104);
    v45 = *(v40 + 4176);
    v46 = *(v40 + 4180);
    v47 = *(v40 + 2124);
    v48 = *(v40 + 4204);
    v49 = *(v40 + 4208);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    v51 = &BaseAddressOfPlane[CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0) * a3];
    v52 = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
    ACTAddCSVMetadata(a4, a9, v21, v70, v67, v56 & 1, v58 & 1, &v73, v57, v64, v61, v60, v59, *(&v39 + 1), *&v39, v41, v42, v43, *&v44, *(&v44 + 1), v45, v46, v47, v48, v49, v51, &v52[BytesPerRowOfPlane * a5], a1);
  }

  *(a1 + 95) = 0;
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(a4, 1uLL);
  return v21;
}

uint64_t ACTRegistrationWarmup(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  __sprintf_chk(__format, 0, 0x200uLL, "{ACTRegistration|log:Warmup}");
  if (*(a5 + 92))
  {
    syslog(5, "%s", __format);
  }

  if (*(a5 + 93))
  {
    ACTLogMessageImp(1, __format);
  }

  if (*(a5 + 4) != 3 && (*a5 | 2) != 3)
  {
    return 0;
  }

  if (a1 | a3)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    v12 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    if (ABRegUpdateIntegralImage(BaseAddressOfPlane + BytesPerRowOfPlane * a2, v12, *(a5 + 24)))
    {
      return 4294967289;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = 4294967293;
    ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 544);
  }

  return v9;
}

uint64_t ACTPreRegisterSlices(__CVBuffer *a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, int a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v22 = *MEMORY[0x277D85DE8];
  getACTRegistrationMethodDescription(*(a8 + 4), v20);
  __sprintf_chk(__format, 0, 0x200uLL, "{ACTRegistration|predictionMethod:%s}", v20);
  if (*(a8 + 92))
  {
    syslog(5, "%s", __format);
  }

  if (*(a8 + 93))
  {
    ACTLogMessageImp(1, __format);
  }

  v19 = 0;
  v18 = 0;
  if (a5)
  {
    if (a5 != 2)
    {
      return 0xFFFFFFFFLL;
    }

    if (MFRegRegisterSlices(a1, a3, *(a8 + 32), &v19 + 1, &v19, &v18))
    {
      return 4294967290;
    }

    v16 = v18;
    v17 = *(&v19 + 1);
    v15 = *&v19;
  }

  else
  {
    v15 = 0.0;
    v16 = 0;
    v17 = 0.0;
  }

  result = 0;
  *(a6 + 32) = v17;
  *(a6 + 40) = v15;
  *a7 = v16;
  return result;
}

uint64_t ACTRegisterSlices(__CVBuffer *a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, int a5, int *a6, uint64_t a7, uint64_t a8, float *a9, uint64_t a10)
{
  v36 = *MEMORY[0x277D85DE8];
  getACTRegistrationMethodDescription(*a10, v34);
  __sprintf_chk(__format, 0, 0x200uLL, "{ACTRegistration|registrationMethod:%s}", v34);
  if (*(a10 + 92))
  {
    syslog(5, "%s", __format);
  }

  if (*(a10 + 93))
  {
    ACTLogMessageImp(1, __format);
  }

  *a8 = *a7;
  *(a8 + 16) = *(a7 + 16);
  *(a8 + 32) = *(a7 + 32);
  if (a5 == 1 || a5 == 3)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    v20 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    *&v21 = *(a7 + 32);
    *&v22 = *(a7 + 40);
    v33 = __PAIR64__(v21, v22);
    updated = ABRegUpdateIntegralImage(BaseAddressOfPlane + BytesPerRowOfPlane * a4, v20, *(a10 + 24));
    v32 = 0;
    if (!updated)
    {
      updated = ABRegRegisterSlicesRobust(10, 0.5, 5, *(a10 + 20), *(a10 + 24), &v33 + 1, &v33, &v32 + 1, &v32);
      *a9 = v32;
    }

    if (!correctTxTyWithIspData(&v33 + 1, &v33, a10))
    {
      ACTLogMessageImp(1, "{ACTRegistration|txty corrected %f %f}\n", *(&v33 + 1), *&v33);
      updated = 0;
    }

    v17 = 4294967292;
    v24 = 2;
    if ((updated & 0x80000000) == 0 && updated != 1)
    {
      CGAffineTransformMakeTranslation(&v31, *(&v33 + 1), *&v33);
      v25 = *&v31.c;
      *a8 = *&v31.a;
      *(a8 + 16) = v25;
      *(a8 + 32) = *&v31.tx;
      v17 = *a9 < 0.175;
      v24 = 2 * v17;
    }

    *a6 = v24;
  }

  else
  {
    if (a5 != 2)
    {
      v17 = 0xFFFFFFFFLL;
      ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)");
      return v17;
    }

    LODWORD(v31.a) = 0;
    v33 = 0;
    if (MFRegRegisterSlices(a1, a3, *(a10 + 32), &v31, &v33 + 1, &v33))
    {
      *a6 = 0;
      v17 = 4294967292;
    }

    else
    {
      v17 = 0;
      v27 = *(&v33 + 1);
      *(a8 + 32) = *&v31.a;
      *(a8 + 40) = v27;
    }
  }

  __sprintf_chk(__format, 0, 0x200uLL, "{ACTRegistration|tx:%.3f}{ACTRegistration|ty:%.3f}{ACTRegistration|quality:%.3f}", *(a8 + 32), *(a8 + 40), *a9);
  if (*(a10 + 92))
  {
    syslog(5, "%s", __format);
  }

  if (*(a10 + 93))
  {
    ACTLogMessageImp(1, __format, v28, v29, v30);
  }

  return v17;
}

uint64_t ACTPostRegisterSlices(__CVBuffer *a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = *MEMORY[0x277D85DE8];
  __sprintf_chk(__format, 0, 0x200uLL, "{ACTRegistration|postRegistration}");
  if (*(a13 + 92))
  {
    syslog(5, "%s", __format);
  }

  if (*(a13 + 93))
  {
    ACTLogMessageImp(1, __format);
  }

  v18 = *(a13 + 56);
  *&t1.a = *(a13 + 40);
  *&t1.c = v18;
  *&t1.tx = *(a13 + 72);
  memset(&v35, 0, sizeof(v35));
  v19 = *(a11 + 16);
  *&t2.a = *a11;
  *&t2.c = v19;
  *&t2.tx = *(a11 + 32);
  CGAffineTransformConcat(&v35, &t1, &t2);
  v20 = *&v35.c;
  *(a13 + 40) = *&v35.a;
  *(a13 + 56) = v20;
  *(a13 + 72) = *&v35.tx;
  if (!(a6 | a5) && *(a13 + 16) && *(a13 + 8) != 2 && *(a13 + 4) == 2 && a9)
  {
    LODWORD(t1.a) = 0;
    LODWORD(t2.a) = 0;
    v25 = *(a11 + 32);
    v26 = *(a11 + 40);
    if (MFGetMotionFilterIncrementalTranslation(a1, a3, *(a13 + 32), &t1, &t2))
    {
      v27 = v26;
      v28 = v25;
      updated = MFRegUpdateCorrector(a3, *(a13 + 32), v28, v27, *&t1.a, *&t2.a);
      if (!updated || (v30 = updated, MFResetCorrector(*(a13 + 32)), (v30 & 0x80000000) == 0))
      {
        v21 = 0;
        goto LABEL_12;
      }

      v32 = 913;
    }

    else
    {
      v32 = 902;
    }

    v21 = 4294967290;
    ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -6, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", v32);
    return v21;
  }

  if (MFRegDampenCorrector(a3, *(a13 + 32)))
  {
    v21 = 4294967290;
  }

  else
  {
    v21 = 0;
  }

  if (!v21)
  {
LABEL_12:
    if ((a8 & 1) == 0)
    {
      v22 = *(a11 + 32) - *(a10 + 32);
      v23 = *(a11 + 40) - *(a10 + 40);
      if (((v23 * v23) + (v22 * v22)) <= 900.0)
      {
        v24 = *(a13 + 88) + 1;
      }

      else
      {
        v24 = 0;
      }

      *(a13 + 88) = v24;
    }
  }

  if (*(a13 + 95) == 1)
  {
    ACTAttachRegistrationMetadata(a1, MEMORY[0x277CBF2C0], *(a13 + 8), a8);
  }

  ACTAttachRegistrationMetadata(a3, a11, *(a13 + 8), a8);
  return v21;
}

uint64_t ACTAddCSVMetadata(__CVBuffer *a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, float a17, int a18, float a19, float a20, float a21, float a22, int a23, float a24, float a25, unsigned __int8 *a26, unsigned __int8 *a27, uint64_t a28)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a28 + 96))
  {
    Attachment = CVBufferGetAttachment(a1, @"CaptureTimeInSeconds", 0);
    v42 = (a28 + 112);
    if (Attachment)
    {
      CFNumberGetValue(Attachment, kCFNumberFloatType, v42);
    }

    else
    {
      *v42 = *v42 + 1.0;
    }

    __sprintf_chk(v53, 0, 0x20uLL, "%3d|%3d|%3d|%3d", *a26, a26[1], a26[2], a26[3]);
    __sprintf_chk(v52, 0, 0x20uLL, "%3d|%3d|%3d|%3d", *a27, a27[1], a27[2], a27[3]);
    __sprintf_chk(__s, 0, 0x200uLL, "%f, %d, %d, %.3f, %d, %d, %d, %.3f, %.3f, %d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.6f, %.6f, %d, %.6f, %.6f, %.6f, %.6f, %d, %.6f, %.6f, %s, %s\n", *(a28 + 112), a2, a3, a9, a4, a5, a6, a10, a11, a7, a12, a13, *(a8 + 32), *(a8 + 40), a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v53, v52);
    v44 = strlen(__s);
    v45 = *(a28 + 96);
    v46 = strlen(v45);
    v47 = *(a28 + 104);
    if (v46 + v44 >= v47)
    {
      v48 = malloc_type_realloc(v45, v47 + 512, 0x100004077774924uLL);
      *(a28 + 96) = v48;
      if (!v48)
      {
        v43 = 4294967291;
        ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 508);
        return v43;
      }

      v45 = v48;
      *(a28 + 104) += 512;
    }

    strcat(v45, __s);
    return 0;
  }

  else
  {
    v43 = 4294967293;
    ACTLogMessageImp(4, "ACTRegistration Error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/ACTRegistration.c", 452);
  }

  return v43;
}

uint64_t ACTAttachRegistrationMetadata(__CVBuffer *a1, const UInt8 *a2, int a3, int a4)
{
  valuePtr = a3;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFDataCreate(*MEMORY[0x277CBECE8], a2, 48);
  CVBufferSetAttachment(a1, @"ACTRegistrationTransformationKey", v7, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v7);
  v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
  CVBufferSetAttachment(a1, @"ACTRegistrationLastMethodKey", v8, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v8);
  v11 = a4;
  v9 = CFNumberCreate(v6, kCFNumberIntType, &v11);
  CVBufferSetAttachment(a1, @"ACTRegistrationWasFallbackInvokedKey", v9, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v9);
  return 0;
}

uint64_t ACTUpdatePredictorValidator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32) - *(a1 + 32);
  v4 = *(a2 + 40) - *(a1 + 40);
  if (((v4 * v4) + (v3 * v3)) <= 900.0)
  {
    v5 = *(a3 + 88) + 1;
  }

  else
  {
    v5 = 0;
  }

  *(a3 + 88) = v5;
  return 0;
}

uint64_t getACTRegistrationMethodDescription(unsigned int a1, char *a2)
{
  if (a1 > 3)
  {
    return sprintf(a2, "Invalid");
  }

  else
  {
    return sprintf(a2, off_278BBD5D8[a1]);
  }
}

BOOL correctTxTyWithIspData(float *a1, float *a2, float *a3)
{
  v5 = a3[32] - a3[30];
  v6 = a3[33] - a3[31];
  ACTLogMessageImp(1, "{ACTRegistration|correctTxTyWithIspData %f %f, %f %f}\n", *a1, *a2, v5, v6);
  v7 = vabds_f32(*a2, v6);
  if (v7 > 50.0)
  {
    *a1 = v5;
    *a2 = v6;
  }

  return v7 <= 50.0;
}

float getACTRegistrationCurTxTy(uint64_t a1, _DWORD *a2, float *a3)
{
  *a2 = *(a1 + 128);
  result = *(a1 + 132);
  *a3 = result;
  return result;
}

float getACTRegistrationPrevTxTy(uint64_t a1, _DWORD *a2, float *a3)
{
  *a2 = *(a1 + 120);
  result = *(a1 + 124);
  *a3 = result;
  return result;
}

uint64_t setACTRegistrationCurTxTy(uint64_t result, float a2, float a3)
{
  *(result + 128) = a2;
  *(result + 132) = a3;
  return result;
}

uint64_t setACTRegistrationPrevTxTy(uint64_t result, float a2, float a3)
{
  *(result + 120) = a2;
  *(result + 124) = a3;
  return result;
}

__n128 getACTRegistrationCumulativeTransform(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 40);
  *(a2 + 16) = *(a1 + 56);
  result = *(a1 + 72);
  *(a2 + 32) = result;
  return result;
}

void *createBlendingContext(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0xA004003AA5C4EuLL);
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x78uLL, 0x80040B858004BuLL);
    v2[3] = v3;
    if (!v3)
    {
      goto LABEL_44;
    }

    v4 = *(a1 + 56);
    v24[0] = 0;
    v24[1] = v4;
    v2[1] = createACTNoiseReductionContext(v24);
    v5 = v2[3];
    v6 = *(a1 + 48) == 1;
    if (*(a1 + 48) == 1)
    {
      v7 = BlendingCtrl_createBlendingContext_v2;
    }

    else
    {
      v7 = BlendingCtrl_createBlendingContext;
    }

    v8 = BlendingCtrl_deleteBlendingContext;
    if (*(a1 + 48) == 1)
    {
      v8 = BlendingCtrl_deleteBlendingContext_v2;
    }

    v23 = v8;
    v9 = BlendingCtrl_setOptions_v2;
    v10 = BlendingCtrl_getTargetContext_v2;
    *v5 = v7;
    v5[1] = v23;
    if (!v6)
    {
      v9 = BlendingCtrl_setOptions;
      v10 = BlendingCtrl_getTargetContext;
    }

    v5[2] = v9;
    v5[3] = v10;
    v11 = v6 ? BlendingCtrl_resetBlendingContext_v2 : BlendingCtrl_resetBlendingContext;
    v12 = v6 ? BlendingCtrl_cropAndRotateBuffer_v2 : BlendingCtrl_cropAndRotateBuffer;
    v5[4] = v11;
    v5[5] = v12;
    v13 = v6 ? BlendingCtrl_blendSliceIntoContext_v2 : BlendingCtrl_blendSliceIntoContext;
    v14 = v6 ? BlendingCtrl_finishBlending_v2 : BlendingCtrl_finishBlending;
    v5[6] = v13;
    v5[7] = v14;
    v15 = v6 ? BlendingCtrl_setBlendingForceMaxComputation_v2 : BlendingCtrl_setBlendingForceMaxComputation;
    v16 = v6 ? BlendingCtrl_setPanoramaDirection_v2 : BlendingCtrl_setPanoramaDirection;
    v5[10] = v16;
    v5[11] = v15;
    v17 = v6 ? BlendingCtrl_getCroppingArea_v2 : BlendingCtrl_getCroppingArea;
    v18 = v6 ? BlendingCtrl_setEdgeBlendingErrorMetricLogging_v2 : BlendingCtrl_setEdgeBlendingErrorMetricLogging;
    v5[8] = v17;
    v5[9] = v18;
    v19 = v6 ? BlendingCtrl_Defaults_getBlendingDefaults_v2 : BlendingCtrl_Defaults_getBlendingDefaults;
    v5[14] = v19;
    v20 = v6 ? BlendingCtrl_Defaults_setBlendingDefaults_v2 : BlendingCtrl_Defaults_setBlendingDefaults;
    v21 = v6 ? BlendingCtrl_setMaxOverlapPercent_v2 : BlendingCtrl_setMaxOverlapPercent;
    v5[12] = v21;
    v5[13] = v20;
    (v7)(v2, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 52));
    if (!*v2)
    {
LABEL_44:
      free(v2);
      return 0;
    }
  }

  return v2;
}

void deleteBlendingContext(void *a1)
{
  if (a1)
  {
    (*(a1[3] + 8))(*a1);
    v2 = a1[1];
    if (v2)
    {
      deleteNoiseReductionContext(v2);
    }

    free(a1[3]);

    free(a1);
  }
}

uint64_t cropAndRotateBufferForBlending(void *a1, __CVBuffer *a2)
{
  if (a1[1])
  {
    HostTime = ACT_getHostTime();
    attachmentMode = kCVAttachmentMode_ShouldPropagate;
    Attachment = CVBufferGetAttachment(a2, @"MetadataDictionary", &attachmentMode);
    updated = updateACTNoiseReductionContext(a1[1], Attachment);
    v7 = a1[1];
    if (*(v7 + 156) == 1)
    {
      v8 = (*(a1[3] + 24))(*a1, updated);
      setACTNoiseReductionBuffer(v7, v8);
    }

    v9 = -1;
    valuePtr = -1;
    v10 = CVBufferGetAttachment(a2, @"ID", 0);
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
      v9 = valuePtr;
    }

    v11 = ACT_getHostTime();
    ACTLogMessageImp(1, "{Blending%d|nrWorkBeginTook:%f\n}", v9, v11 - HostTime);
  }

  return (*(a1[3] + 40))(*a1, a2);
}

__CFDictionary *getDefaultPowerBlurTuning(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  valuePtr = 0;
  result = ACT_CopyDefaultConfigurationForPanorama();
  if (result)
  {
    v6 = result;
    Value = CFDictionaryGetValue(result, @"ACTPanoramaPowerBlurSlope");
    v8 = CFDictionaryGetValue(v6, @"ACTPanoramaPowerBlurBias");
    if (Value && v8 && CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr))
    {
      v9 = CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
      CFRelease(v6);
      if (v9)
      {
        v10 = HIDWORD(valuePtr);
        *a2 = valuePtr;
        *a3 = v10;
        return 1;
      }
    }

    else
    {
      CFRelease(v6);
    }

    return 0;
  }

  return result;
}

uint64_t setPowerBlurTuning(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    *(v3 + 140) = a3;
    *(v3 + 144) = a2;
    *(v3 + 136) = 1;
  }

  return result;
}

void resetNoiseReduction(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    resetNoiseReductionContext(v1);
  }
}

uint64_t set_Defaults_ACTBlendingConfig(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4)
  {
    resetNoiseReductionContext(v4);
  }

  v5 = *a1;
  v6 = *(a1[3] + 104);

  return v6(v5, a2);
}

uint64_t openPanoArchive(uint64_t a1, uint64_t *a2)
{
  *a2 = archive_write_new();
  archive_write_set_compression_none();
  archive_write_set_format_ar_bsd();
  archive_write_open_filename();
  return 0;
}

uint64_t addDataFileToPanoArchive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v5 = sub_23C447734(a1, a2, a4, &v8);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = v5;
    syslog(3, "ACTDataDump error %d @ %s (line %d)", v5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/Utilities/ACTDataDump.c", 58);
  }

  else if (archive_write_data() == a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4294967293;
    syslog(3, "ACTDataDump error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/Utilities/ACTDataDump.c", 62);
  }

  if (v8)
  {
    archive_entry_free();
  }

  return v6;
}

uint64_t sub_23C447734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    *a4 = archive_entry_new();
    archive_entry_set_pathname();
    archive_entry_set_size();
    archive_entry_set_filetype();
    archive_entry_set_perm();
    time(0);
    archive_entry_set_mtime();
    if (!archive_write_header())
    {
      return 0;
    }

    v4 = 46;
  }

  else
  {
    v4 = 34;
  }

  v5 = 4294967293;
  syslog(3, "ACTDataDump error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/Utilities/ACTDataDump.c", v4);
  return v5;
}

uint64_t addCVPixelBufferToPanoArchive(uint64_t a1, uint64_t a2, CVPixelBufferRef pixelBuffer, int a4)
{
  v8 = CVPixelBufferGetDataSize(pixelBuffer) + 16;
  PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (a4)
  {
    v11 = v8;
  }

  else
  {
    v11 = 16;
  }

  if (PlaneCount)
  {
    for (i = 0; i != PlaneCount; ++i)
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
      v11 += CVPixelBufferGetHeightOfPlane(pixelBuffer, i) * BytesPerRowOfPlane;
    }
  }

  Width = 0;
  v33 = 0;
  v14 = sub_23C447734(a1, a2, v11, &v33);
  if ((v14 & 0x80000000) != 0)
  {
    v17 = v14;
    syslog(3, "ACTDataDump error %d @ %s (line %d)", v14, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/Utilities/ACTDataDump.c", 93);
    goto LABEL_24;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  if (archive_write_data() != 4)
  {
    v18 = 99;
    goto LABEL_23;
  }

  Width = CVPixelBufferGetHeight(pixelBuffer);
  if (archive_write_data() != 4)
  {
    v18 = 103;
    goto LABEL_23;
  }

  Width = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  if (archive_write_data() != 4)
  {
    v18 = 107;
    goto LABEL_23;
  }

  Width = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  if (archive_write_data() != 4)
  {
    v18 = 111;
    goto LABEL_23;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  if (PlaneCount > 1)
  {
    if (!a4 || (PixelFormatType & 0xFFFFFFEF) != 0x34323066)
    {
      v26 = 0;
      while (1)
      {
        v27 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v26);
        v28 = CVPixelBufferGetHeightOfPlane(pixelBuffer, v26) * v27;
        CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v26);
        if (archive_write_data() != v28)
        {
          break;
        }

        if (PlaneCount == ++v26)
        {
          goto LABEL_51;
        }
      }

      v18 = 166;
      goto LABEL_23;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    if (CVPixelBufferGetHeightOfPlane(pixelBuffer, 0))
    {
      v21 = 0;
      while (1)
      {
        v22 = CVPixelBufferGetWidth(pixelBuffer);
        if (archive_write_data() != v22)
        {
          break;
        }

        BaseAddressOfPlane += CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
        if (CVPixelBufferGetHeightOfPlane(pixelBuffer, 0) <= ++v21)
        {
          goto LABEL_33;
        }
      }

      v18 = 148;
      goto LABEL_23;
    }

LABEL_33:
    v23 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    if (CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL))
    {
      v24 = 0;
      while (1)
      {
        v25 = CVPixelBufferGetWidth(pixelBuffer);
        if (archive_write_data() != v25)
        {
          break;
        }

        v23 += CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
        if (CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL) <= ++v24)
        {
          goto LABEL_51;
        }
      }

      v18 = 157;
      goto LABEL_23;
    }

    goto LABEL_51;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (!a4)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    v30 = CVPixelBufferGetHeight(pixelBuffer) * BytesPerRow;
    if (archive_write_data() == v30)
    {
      goto LABEL_51;
    }

    v18 = 137;
LABEL_23:
    v17 = 4294967293;
    syslog(3, "ACTDataDump error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/Utilities/ACTDataDump.c", v18);
    goto LABEL_24;
  }

  if (PixelFormatType <= 2037741157)
  {
    if (PixelFormatType == 32 || PixelFormatType == 1111970369)
    {
      v16 = 4;
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v16 = 2;
  if (PixelFormatType != 2037741158 && PixelFormatType != 2037741171)
  {
LABEL_46:
    v16 = 1;
  }

LABEL_47:
  if (CVPixelBufferGetHeight(pixelBuffer))
  {
    v31 = 0;
    while (1)
    {
      v32 = CVPixelBufferGetWidth(pixelBuffer) * v16;
      if (archive_write_data() != v32)
      {
        break;
      }

      BaseAddress += CVPixelBufferGetBytesPerRow(pixelBuffer);
      if (CVPixelBufferGetHeight(pixelBuffer) <= ++v31)
      {
        goto LABEL_51;
      }
    }

    v18 = 129;
    goto LABEL_23;
  }

LABEL_51:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  v17 = 0;
LABEL_24:
  if (v33)
  {
    archive_entry_free();
  }

  return v17;
}

uint64_t closePanoArchive(uint64_t a1)
{
  if (a1)
  {
    archive_write_close();
    archive_write_finish();
    return 0;
  }

  else
  {
    v1 = 4294967293;
    syslog(3, "ACTDataDump error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/Utilities/ACTDataDump.c", 187);
  }

  return v1;
}

char *createACTNoiseReductionContext(uint64_t a1)
{
  valuePtr[4] = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10E0040D6D02D48uLL);
  v2[156] = 1;
  updateACTNoiseReductionContext(v2, *a1);
  v3 = *(a1 + 8);
  *(v2 + 148) = v3;
  *(v2 + 26) = getCFPreferenceNumber(@"PanoNR_Mode", @"com.apple.act", v3);
  *(v2 + 27) = getCFPreferenceNumber(@"PanoNR_Prefilter", @"com.apple.act", 0);
  *(v2 + 28) = getCFPreferenceNumber(@"PanoNR_Yfilter", @"com.apple.act", 0);
  *(v2 + 29) = getCFPreferenceNumber(@"PanoNR_Cfilter", @"com.apple.act", 0);
  *(v2 + 30) = getCFPreferenceNumber(@"PanoNR_Flags", @"com.apple.act", 0);
  *(v2 + 31) = getCFPreferenceNumber(@"PanoNR_C_YgainScale", @"com.apple.act", 300);
  *(v2 + 32) = getCFPreferenceNumber(@"PanoNR_C_YmaxThreshold", @"com.apple.act", 20);
  *(v2 + 33) = getCFPreferenceNumber(@"PanoNR_Y_invSlope", @"com.apple.act", 50);
  v2[136] = 0;
  *(v2 + 35) = 0;
  *(v2 + 36) = 0;
  *(v2 + 21) = 0;
  if ((*(v2 + 26) - 4) <= 4 && !*(v2 + 22) && !*(v2 + 23))
  {
    v7 = objc_msgSend_sharedInstance(MEMORY[0x277CF3B80], v4, v5, v6);
    v11 = objc_msgSend_cameraParameters(v7, v8, v9, v10);

    v12 = *(v2 + 26);
    if (v12)
    {
      CFRelease(v12);
    }

    *(v2 + 26) = 0;
    if (v11)
    {
      Value = CFDictionaryGetValue(v11, @"TuningParameters");
      v14 = Value;
      if (Value)
      {
        v15 = CFDictionaryGetValue(Value, @"DefaultSensorIDs");
        *(v2 + 26) = CFRetain(v15);
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v14);
      CFRelease(v11);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v18 = *(v2 + 26);
    if ((v18 - 5) < 2)
    {
      Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF4088], MutableCopy);
      LODWORD(valuePtr[0]) = 2;
      v27 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF6948], v27);
      if (v27)
      {
        CFRelease(v27);
      }

      LODWORD(v42[0]) = 1;
      v28 = CFNumberCreate(0, kCFNumberIntType, v42);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF6950], v28);
      if (v28)
      {
        CFRelease(v28);
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF6958], *MEMORY[0x277CBED28]);
      FigSampleBufferProcessorCreateForCustom();
      CFRelease(Mutable);
      goto LABEL_30;
    }

    if ((v18 - 7) >= 2)
    {
      if (v18 == 4)
      {
        LODWORD(valuePtr[0]) = 2;
        v29 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(MutableCopy, @"NoiseReductionMethod", v29);
        CFRelease(v29);
        *(v2 + 21) = noiseReductionContextCreateWithOptions();
      }

      goto LABEL_30;
    }

    v19 = *MEMORY[0x277CF6950];
    v42[0] = *MEMORY[0x277CF4088];
    v42[1] = v19;
    valuePtr[0] = MutableCopy;
    valuePtr[1] = &unk_284F10670;
    v20 = *MEMORY[0x277CF6958];
    v42[2] = *MEMORY[0x277CF6948];
    v42[3] = v20;
    valuePtr[2] = &unk_284F10688;
    valuePtr[3] = &unk_284F106A0;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, valuePtr, v42, 4);
    v24 = *(v2 + 26) - 7;
    if (v24 > 2)
    {
      v25 = 0;
    }

    else
    {
      v25 = objc_msgSend_bundleWithPath_(MEMORY[0x277CCA8D8], v21, off_278BBD5F8[v24], v22);
    }

    v41 = 0;
    v30 = objc_msgSend_loadAndReturnError_(v25, v21, &v41, v22);
    v31 = v41;
    if (v30)
    {
      v32 = *(v2 + 26) - 7;
      if (v32 <= 2)
      {
        NSClassFromString(&off_278BBD610[v32]->isa);
      }

      v33 = objc_opt_new();
      v36 = v33;
      if (v33 && !objc_msgSend_setupWithOptions_(v33, v34, v23, v35))
      {
        objc_msgSend_setFusionMode_(v36, v37, 1, v38);
        v39 = v36;
        *(v2 + 23) = v39;
LABEL_29:

LABEL_30:
        CFRelease(MutableCopy);
        goto LABEL_31;
      }
    }

    else
    {
      v36 = 0;
    }

    v39 = 0;
    goto LABEL_29;
  }

LABEL_31:
  *(v2 + 24) = 0;
  *(v2 + 25) = 0;
  return v2;
}

double updateACTNoiseReductionContext(uint64_t a1, CFDictionaryRef theDict)
{
  if ((*(a1 + 104) - 4) <= 4)
  {
    updateMultiBandNoiseReductionMetadata(*(a1 + 200), theDict);
  }

  if (*(a1 + 156) == 1)
  {
    *a1 = 1065353216;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"ExposureTime");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloat32Type, a1);
      }

      *(a1 + 4) = 256;
      v6 = CFDictionaryGetValue(theDict, @"AGC");
      if (v6)
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, (a1 + 4));
      }

      *(a1 + 8) = 256;
      v7 = CFDictionaryGetValue(theDict, @"sensorDGain");
      if (v7)
      {
        CFNumberGetValue(v7, kCFNumberSInt32Type, (a1 + 8));
      }

      *(a1 + 12) = 256;
      v8 = CFDictionaryGetValue(theDict, @"ispDGain");
      if (v8)
      {
        CFNumberGetValue(v8, kCFNumberSInt32Type, (a1 + 12));
      }

      *(a1 + 68) = "YUVF";
      v9 = *(a1 + 192);
      if (v9)
      {
        CFRelease(v9);
      }

      *(a1 + 192) = CFRetain(theDict);
    }

    else
    {
      *&result = 0x10000000100;
      *(a1 + 4) = 0x10000000100;
      *(a1 + 12) = 256;
      *(a1 + 68) = "YUVF";
    }
  }

  return result;
}

void setACTNoiseReductionCropRect(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int a6)
{
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = *(a1 + 104);
  if (v14 == 3 || v14 == 0)
  {
    v16 = *a2;
    v17 = *a4;
    if (*a4 + *a2 > v13)
    {
      v17 = v13 - v16;
      *a4 = v13 - v16;
    }

    if (*a5 + *a3 > v12)
    {
      *a5 = v12 - *a3;
      v17 = *a4;
    }

    v18 = (*a2 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (*a2 != v18)
    {
      *a4 = *a2 - v18 + v17;
      *a2 = v18;
      v17 = *a4;
    }

    *a4 = v17 & 0xFFFFFFFFFFFFFFF0;
  }

  else if ((v14 - 4) <= 4)
  {
    updateMultiBandNoiseReductionCropRect(*(a1 + 200), *a2, *a3, *a4, *a5);
    v14 = *(a1 + 104);
  }

  if ((v14 | 2) == 3)
  {
    v19 = *a2;
    v20 = *a4;
    if (*a2 <= 0x1F)
    {
      *a4 = v20 + v19 - 32;
      v19 = 32;
      *a2 = 32;
      v20 = *a4;
    }

    v21 = v20 + v19;
    v22 = v13 - 32;
    v23 = v13 - 32 - v19;
    if (v21 <= v13 - 32)
    {
      v23 = v20;
    }

    if (a6)
    {
      v24 = (v23 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFFFFFFFFC0;
    }

    if (v21 > v22 || (a6 & 1) == 0)
    {
      if (!a6)
      {
        v23 &= 0xFFFFFFFFFFFFFFC0;
      }

      *a4 = v23;
    }

    if (*a2 + v24 > v22)
    {
      v24 -= 64;
      *a4 = v24;
    }

    v25 = v12 - 20;
    v26 = v12 - 40;
    if (*a5 < v12 - 40)
    {
      v26 = *a5;
    }

    *a5 = v26;
    v27 = *a3;
    if (*a3 <= 0x13)
    {
      v27 = 20;
      *a3 = 20;
      v26 = *a5;
    }

    v28 = v26 + v27;
    v29 = v25 - v26;
    if (v28 <= v25)
    {
      v30 = v27;
    }

    else
    {
      v30 = v29;
    }

    *a3 = v30 & 0xFFFFFFFFFFFFFFFELL;
    v31 = *a5 & 0xFFFFFFFFFFFFFFFELL;
    *a5 = v31;
    updateBandPassNoiseReductionCropRect(*(a1 + 200), *a2, *a3, v24, v31);
  }

  *(a1 + 72) = *a2;
  *(a1 + 80) = *a3;
  *(a1 + 88) = *a4;
  *(a1 + 96) = *a5;
  *(a1 + 216) = a6;
}

uint64_t ACTNoiseReduction(int *a1, CVPixelBufferRef pixelBuffer)
{
  formatDescriptionOut = 0;
  memset(&sampleTiming, 0, sizeof(sampleTiming));
  sampleBufferOut = 0;
  *(a1 + 2) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  *(a1 + 3) = CVPixelBufferGetWidthOfPlane(pixelBuffer, 1uLL);
  *(a1 + 4) = CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL);
  *(a1 + 5) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  *(a1 + 6) = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  *(a1 + 7) = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  v4 = a1[26];
  if (v4 != 3 && v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CBECE8];
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], pixelBuffer, &formatDescriptionOut);
  v6 = CMSampleBufferCreateForImageBuffer(v5, pixelBuffer, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &sampleBufferOut);
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (!v6)
  {
    v7 = sampleBufferOut;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    valuePtr = *a1;
    v9 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionarySetValue(Mutable, @"ExposureTime", v9);
    if (v9)
    {
      CFRelease(v9);
    }

    sub_23C448EF8(Mutable, @"AGC", a1[1]);
    sub_23C448EF8(Mutable, @"sensorDGain", a1[2]);
    sub_23C448EF8(Mutable, @"ispDGain", a1[3]);
    CMSetAttachment(v7, @"MetadataDictionary", Mutable, 0);
    v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v22.origin.x = *(a1 + 9);
    v22.origin.y = *(a1 + 10);
    v22.size.width = *(a1 + 11);
    v22.size.height = *(a1 + 12);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v22);
    CFDictionarySetValue(v10, *MEMORY[0x277CF3BA0], DictionaryRepresentation);
    if (*(a1 + 136) == 1)
    {
      v12 = CFNumberCreate(v5, kCFNumberIntType, a1 + 36);
      v13 = CFNumberCreate(v5, kCFNumberIntType, a1 + 35);
      CFDictionarySetValue(v10, *MEMORY[0x277CF3BA8], v12);
      CFDictionarySetValue(v10, *MEMORY[0x277CF3BB0], v13);
      CFRelease(v12);
      CFRelease(v13);
    }

    v14 = noiseReductionWithTuningOptions();
    sub_23C4488A8(sampleBufferOut);
    FigSampleBufferRelease();
    CFRelease(v10);
    CFRelease(DictionaryRepresentation);
    if (!v14)
    {
      v4 = a1[26];
LABEL_12:
      if ((v4 | 2) == 3)
      {
        v15 = *(a1 + 25);
        if (v15)
        {
          DoBandPassNoiseReductionComplete(v15, *(a1 + 216));
          v4 = a1[26];
        }
      }

      if ((v4 - 4) <= 4)
      {
        v16 = *(a1 + 25);
        if (v16)
        {
          DoMultiBandNoiseReductionComplete(v16, *(a1 + 216));
        }
      }
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return 1;
}

void sub_23C4488A8(const void *a1)
{
  v2 = CMGetAttachment(a1, @"MetadataDictionary", 0);
  CFDictionaryRemoveAllValues(v2);
  CMRemoveAttachment(a1, @"MetadataDictionary");

  CFRelease(v2);
}

void setACTNoiseReductionBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  *(a1 + 16) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  *(a1 + 24) = CVPixelBufferGetWidthOfPlane(pixelBuffer, 1uLL);
  *(a1 + 32) = CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL);
  *(a1 + 40) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  *(a1 + 48) = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  *(a1 + 56) = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  v4 = *(a1 + 104);
  if ((v4 - 4) > 4 || *(a1 + 200))
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 168);
  v33 = pixelBuffer;
  v34 = v5;
  *(&v37 + 1) = *(a1 + 208);
  LODWORD(v37) = v4;
  v35 = 0;
  v36 = 0;
  v6 = *(a1 + 104);
  if ((v6 - 5) < 2)
  {
    v7 = &v35;
    v8 = 176;
  }

  else
  {
    if ((v6 - 7) > 1)
    {
      goto LABEL_8;
    }

    v7 = &v36;
    v8 = 184;
  }

  *v7 = *(a1 + v8);
LABEL_8:
  MultiBandNoiseReductionContext = createMultiBandNoiseReductionContext(&v33);
  *(a1 + 200) = MultiBandNoiseReductionContext;
  if (MultiBandNoiseReductionContext)
  {
    v10 = *(a1 + 192);
    if (v10)
    {
      updateMultiBandNoiseReductionMetadata(MultiBandNoiseReductionContext, v10);
    }
  }

  v4 = *(a1 + 104);
LABEL_12:
  if ((v4 | 2) != 3 || *(a1 + 200))
  {
    goto LABEL_46;
  }

  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v12 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  v13 = *(a1 + 8) * *(a1 + 4) * *(a1 + 12);
  v14 = *(a1 + 40);
  v33 = BaseAddressOfPlane;
  v34 = v14;
  v15 = *(a1 + 16);
  v35 = v12;
  v36 = v15;
  v37 = *(a1 + 48);
  v16 = *(a1 + 108);
  if ((v16 | 2) != 7)
  {
    if (v13 <= 9)
    {
      v16 = 5;
    }

    else
    {
      v16 = 7;
    }
  }

  LODWORD(v38[0]) = v16;
  v17 = *(a1 + 112);
  if (v17 == 1)
  {
    DWORD1(v38[0]) = 0;
  }

  else
  {
    if (v17 == 33)
    {
      v18 = 0x400000021;
    }

    else
    {
      v18 = 0x100000009;
    }

    *(v38 + 4) = v18;
  }

  v19 = vcvts_n_f32_s32(v13, 0x18uLL);
  HIDWORD(v21) = *(a1 + 116) - 1;
  LODWORD(v21) = HIDWORD(v21);
  v20 = v21 >> 3;
  if (v20 > 1)
  {
    if (v20 == 2)
    {
LABEL_31:
      v22 = 0x200000011;
      goto LABEL_33;
    }

    if (v20 == 4)
    {
LABEL_32:
      v22 = 0x200000021;
      goto LABEL_33;
    }

LABEL_30:
    if (v19 < 4.0)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!v20)
  {
    HIDWORD(v38[0]) = 0;
    goto LABEL_34;
  }

  if (v20 != 1)
  {
    goto LABEL_30;
  }

  v22 = 0x100000009;
LABEL_33:
  *(v38 + 12) = v22;
LABEL_34:
  if (*(a1 + 120))
  {
    v23 = 31;
  }

  else
  {
    v23 = 23;
  }

  DWORD2(v39) = v23;
  v24 = sqrtf(v19);
  if (*(a1 + 152) == 1)
  {
    v38[0] = xmmword_23C47A530;
    LODWORD(v38[1]) = 2;
  }

  v25 = *(a1 + 128);
  v26 = *(a1 + 124) / 1000.0;
  v27 = ((v24 * 128.0) / *(a1 + 132));
  v28 = v24 + 3.0;
  if (v28 > 8.0)
  {
    v28 = 8.0;
  }

  v29 = v28;
  v30 = v25;
  *(&v38[1] + 4) = __PAIR64__(v27, v29);
  v31 = (v26 * v19) + 5.0;
  if (v31 <= v25)
  {
    v30 = v31;
  }

  v32 = (v19 + 5.0);
  if (v32 >= 0x28)
  {
    v32 = 40;
  }

  HIDWORD(v38[1]) = v30;
  LODWORD(v39) = v32;
  DWORD1(v39) = v32;
  *(a1 + 200) = createBandPassNoiseReductionContext(&v33);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
LABEL_46:
  *(a1 + 156) = 0;
}

void resetNoiseReductionContext(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 104);
    if (v2 == 1)
    {
      v3 = *(a1 + 200);
      if (!v3)
      {
LABEL_8:
        *(a1 + 156) = 1;
        *(a1 + 160) = 0;
        *(a1 + 216) = 0;
        return;
      }

      destroyBandPassNoiseReductionContext(v3);
      *(a1 + 200) = 0;
      v2 = *(a1 + 104);
    }

    if ((v2 - 4) <= 4)
    {
      v4 = *(a1 + 200);
      if (v4)
      {
        destroyMultiBandNoiseReductionContext(v4);
        *(a1 + 200) = 0;
      }
    }

    goto LABEL_8;
  }
}

void deleteNoiseReductionContext(uint64_t a1)
{
  if (a1)
  {
    resetNoiseReductionContext(a1);
    if (*(a1 + 168))
    {
      noiseReductionContextDestroy();
      *(a1 + 168) = 0;
    }

    v2 = *(a1 + 104);
    if ((v2 - 5) > 1)
    {
      if ((v2 - 7) <= 1)
      {
        v6 = *(a1 + 184);
        if (v6)
        {
          *(a1 + 184) = 0;
        }
      }
    }

    else if (*(a1 + 176))
    {
      FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
      if (FigBaseObject)
      {
        v4 = FigBaseObject;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(v4);
        }
      }

      CFRelease(*(a1 + 176));
      *(a1 + 176) = 0;
    }

    v7 = *(a1 + 192);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 208);
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

void *ACTFinalThreadedNoiseReduction(void *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  if (result)
  {
    v5 = result;
    result = *result;
    if (result)
    {
      ACTThreadMutexLock(result);
      ACTThreadMutexUnlock(*v5);
      FigSimpleMutexLock();
      *(v5 + 1) = *a2;
      *(v5 + 2) = *a3;
      *(v5 + 3) = *a4;
      *(v5 + 4) = *a5;
      ++*(v5 + 18);
      *(v5 + 80) = 1;
      FigSimpleMutexUnlock();
      ACTThreadWakeup();
      FigSemaphoreWaitRelative();
      FigSimpleMutexLock();
      v10 = *(v5 + 6);
      *a2 = *(v5 + 5);
      *a3 = v10;
      v11 = *(v5 + 8);
      *a4 = *(v5 + 7);
      *a5 = v11;

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

void sub_23C448EF8(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t ACTLogAddListener(uint64_t a1, int a2, uint64_t a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040914F2AA0uLL);
    if (v7)
    {
      *v7 = a1;
      v7[2] = a2;
      v8 = gListenerList;
      *(v7 + 2) = a3;
      *(v7 + 3) = v8;
      gListenerList = v7;
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ACTLogRemoveListener(uint64_t a1)
{
  v1 = 0xFFFFFFFFLL;
  if (a1)
  {
    v3 = gListenerList;
    if (gListenerList)
    {
      if (*gListenerList == a1)
      {
        v5 = 0;
LABEL_9:
        v6 = (v5 + 24);
        if (!v5)
        {
          v6 = &gListenerList;
        }

        *v6 = v3[3];
        free(v3);
        return 1;
      }

      else
      {
        v4 = gListenerList;
        while (1)
        {
          v3 = *(v4 + 24);
          if (!v3)
          {
            return 0xFFFFFFFFLL;
          }

          v5 = v4;
          v4 = *(v4 + 24);
          if (*v3 == a1)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t ACTLogReset()
{
  v0 = gListenerList;
  if (gListenerList)
  {
    do
    {
      v1 = v0[3];
      free(v0);
      v0 = v1;
    }

    while (v1);
  }

  gListenerList = 0;
  return 1;
}

uint64_t ACTLogMessageImp(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  result = 0xFFFFFFFFLL;
  if (a1 && __format)
  {
    v5 = gListenerList;
    va_copy(v10, va);
    v6 = vsnprintf(&__str, 1uLL, __format, va);
    if (v6 > 0 && (v7 = (v6 + 1), v8 = malloc_type_malloc(v7, 0x526167uLL), vsnprintf(v8, v7, __format, va), v8))
    {
      if (v5)
      {
        do
        {
          if ((*(v5 + 8) & a1) != 0)
          {
            (*v5)(a1, *(v5 + 16), v8);
          }

          v5 = *(v5 + 24);
        }

        while (v5);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
      }

      free(v8);
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *ACTThreadCreate(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v7 = malloc_type_malloc(0x30uLL, 0x10A00405C994BCAuLL);
  v8 = v7;
  if (v7)
  {
    v7[12] = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 4) = a1;
    *(v7 + 5) = a2;
    valuePtr = 64;
    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"ACTThreadBufferRingSize");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      v10 = CFDictionaryGetValue(a4, @"ACTThreadIdentifier");
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = @"com.act.thread";
    }

    v12 = FigSimpleMutexCreate();
    v8[2] = v12;
    if (!v12 || (v13 = FigSemaphoreCreate(), (v8[1] = v13) == 0) || (v14 = *MEMORY[0x277CC1AC8], keys[0] = *MEMORY[0x277CC1AD0], keys[1] = v14, values[0] = *MEMORY[0x277CBED10], values[1] = v11, v15 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), *(v8 + 24) = 1, v16 = FigThreadCreate(), CFRelease(v15), !*v8) || v16)
    {
      FigSignalErrorAtGM();
      ACTThreadRelease(v8);
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23C4493B8(uint64_t a1)
{
  while (*(a1 + 24))
  {
    *(a1 + 25) = 1;
    FigSimpleMutexLock();
    (*(a1 + 32))(*(a1 + 40));
    FigSimpleMutexUnlock();
    *(a1 + 25) = 0;
    FigSemaphoreWaitRelative();
  }

  return 0;
}

void ACTThreadRelease(_BYTE *a1)
{
  if (a1)
  {
    if (*a1)
    {
      a1[24] = 0;
      FigMemoryBarrier();
      FigSemaphoreSignal();
      FigThreadJoin();
    }

    if (*(a1 + 2))
    {
      FigSimpleMutexDestroy();
    }

    if (*(a1 + 1))
    {
      FigSemaphoreDestroy();
    }

    free(a1);
  }
}

uint64_t ACTThreadMutexUnlock(uint64_t a1)
{
  result = FigSimpleMutexUnlock();
  *(a1 + 25) = 0;
  return result;
}

double ACT_getHostTime()
{
  info = 0;
  if (*&qword_2810D7490 == 0.0 && !mach_timebase_info(&info))
  {
    LODWORD(v0) = info.numer;
    LODWORD(v1) = info.denom;
    *&qword_2810D7490 = v0 / v1 * 0.000000001;
  }

  return *&qword_2810D7490 * mach_absolute_time();
}

void applyWiringAssertionToProperties(CFDictionaryRef *a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (getCFPreferenceNumber(@"IOSurfaceWiringAssert", @"com.apple.act", 1))
  {
    if (*a1)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *a1);
      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC4DF8], *MEMORY[0x277CBED28]);
      CFRelease(*a1);
      *a1 = MutableCopy;
    }

    else
    {
      keys[0] = *MEMORY[0x277CC4DF8];
      values = *MEMORY[0x277CBED28];
      *a1 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }
  }
}

uint64_t getCFPreferenceNumber(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (IntValue <= 0)
      {
        IntValue = 1;
        if (CFStringCompare(v5, @"true", 1uLL))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"yes", 1uLL))
          {
            if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
            {
              IntValue = 0;
            }
          }
        }
      }
    }

    else
    {
      v8 = CFGetTypeID(v5);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v9 = CFGetTypeID(v5);
        IntValue = a3;
        if (v9 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, *MEMORY[0x277CBED28]);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

float getCFPreferenceFloat(const __CFString *a1, const __CFString *a2, float DoubleValue)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr))
      {
        DoubleValue = valuePtr;
      }
    }

    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      DoubleValue = CFStringGetDoubleValue(v5);
    }

    CFRelease(v5);
  }

  return DoubleValue;
}

uint64_t copyDebugDescrioption(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_description(a1, v3, v4, v5);
  objc_autoreleasePoolPop(v2);
  return v6;
}

void getIspTxTy(opaqueCMSampleBuffer *a1, _DWORD *a2, _DWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  CMSampleBufferGetImageBuffer(a1);
  v6 = CMGetAttachment(a1, @"ClientSpecifiedMetadata", 0);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"Translation", v8);

  if (v9)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v6, v10, @"Translation", v11);
    if (objc_msgSend_length(v12, v13, v14, v15) == 8)
    {
      objc_msgSend_getBytes_length_(v12, v16, v18, 8);
      v17 = v18[1];
      *a2 = v18[0];
      *a3 = v17;
    }
  }

  else
  {
    *a2 = -1082130432;
    *a3 = -1082130432;
  }
}

uint64_t sub_23C44B74C(CFDictionaryRef pixelBufferAttributes)
{

  return CVPixelBufferCreate(0, v2, v3, 0x34323066u, pixelBufferAttributes, v1);
}

void *createBandPassNoiseReductionContext(uint64_t *a1)
{
  v2 = malloc_type_malloc(0x1C8uLL, 0x10B00409047C607uLL);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = *(a1 + 22);
  if ((v4 & 8) != 0)
  {
    v11 = malloc_type_malloc(((3 * a1[5]) >> 1) * a1[1], 0x100004077774924uLL);
    v3[56] = v11;
    bzero(v11, a1[1] * a1[5]);
    v9 = v3[56];
    v8 = a1[5];
    v7 = *a1;
    v5 = a1[1];
    v10 = v9 + v8 * v5;
    v6 = a1[2];
    v4 = *(a1 + 22);
  }

  else
  {
    v2[56] = 0;
    v5 = a1[1];
    v6 = a1[2];
    v7 = *a1;
    v8 = a1[5];
    v9 = *a1;
    v10 = v6;
  }

  v3[2] = v9;
  v3[3] = v10;
  *v3 = v7;
  v3[1] = v6;
  v12 = a1[4];
  v3[8] = v5;
  v3[9] = v12;
  v3[10] = v8;
  LODWORD(v12) = *(a1 + 12);
  v13 = *(a1 + 13) >> 1;
  v14 = *(a1 + 14);
  v15 = *(a1 + 15) >> 1;
  *(v3 + 22) = v13;
  *(v3 + 23) = v15;
  *(v3 + 24) = v12 >> 1;
  *(v3 + 25) = v14;
  v3[13] = a1[8];
  LODWORD(v12) = *(a1 + 20) | (*(a1 + 21) << 8);
  v16 = *(a1 + 19);
  *(v3 + 28) = *(a1 + 18);
  *(v3 + 29) = v12;
  *(v3 + 30) = v16;
  *(v3 + 31) = v4;
  v17 = 80;
  if (v13 == 4 || v13 == 8)
  {
    goto LABEL_9;
  }

  if (v13 == 16)
  {
    v17 = 96;
LABEL_9:
    *(v3 + 32) = v17;
  }

  v18 = 0;
  *(v3 + 33) = (v8 + 63) >> 6;
  *(v3 + 34) = v8 - ((v8 + 63) & 0xFFFFFFC0) + 64;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  v3[40] = 0;
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = &v3[9 * v18 + 18];
    *v21 = v3;
    *(v21 + 8) = v18;
    *(v21 + 16) = malloc_type_malloc(0x2640uLL, 0x100004077774924uLL);
    *(v21 + 24) = malloc_type_malloc(0x2000uLL, 0x1000040BDFB0063uLL);
    *(v21 + 32) = malloc_type_malloc(0x1330uLL, 0x100004077774924uLL);
    v22 = malloc_type_malloc(0x2000uLL, 0x1000040BDFB0063uLL);
    v19 = 0;
    *(v21 + 40) = 0;
    *(v21 + 48) = v22;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    v18 = 1;
  }

  while ((v20 & 1) != 0);
  *(v3 + 26) = 0u;
  *(v3 + 27) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 25) = 0u;
  *(v3 + 22) = 0u;
  *(v3 + 23) = 0u;
  *(v3 + 21) = 0u;
  v23 = *(a1 + 13);
  if (v23 == 33)
  {
    v3[42] = sub_23C442BA8;
    v3[52] = sub_23C443A30;
    v3[55] = sub_23C442500;
    v25 = sub_23C442EF0;
  }

  else
  {
    if (v23 != 9)
    {
      if (v23)
      {
        return v3;
      }

      v3[52] = 0;
      v3[53] = 0;
      goto LABEL_21;
    }

    v24 = sub_23C441918;
    if (*(a1 + 12) == 7)
    {
      v24 = sub_23C441BDC;
    }

    v3[42] = v24;
    v3[52] = sub_23C442418;
    v3[55] = sub_23C442500;
    v25 = sub_23C441F10;
  }

  v3[53] = v25;
LABEL_21:
  v26 = *(a1 + 15);
  if (v26 > 16)
  {
    if (v26 == 17)
    {
      v27 = sub_23C442870;
      goto LABEL_31;
    }

    if (v26 == 33)
    {
      if ((a1[11] & 0x10) != 0)
      {
        v3[51] = sub_23C443B18;
        if (*(a1 + 16) == 4)
        {
          v27 = sub_23C44363C;
        }

        else
        {
          v27 = sub_23C4439A8;
        }
      }

      else
      {
        v27 = sub_23C443268;
      }

      goto LABEL_31;
    }
  }

  else if (v26)
  {
    if (v26 == 9)
    {
      v27 = sub_23C44228C;
LABEL_31:
      v3[54] = v27;
    }
  }

  else
  {
    v3[54] = 0;
  }

  return v3;
}

void destroyBandPassNoiseReductionContext(char *a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = a1 + 144;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = &v3[72 * v2];
      v7 = *(v6 + 2);
      if (v7)
      {
        free(v7);
      }

      v8 = *(v6 + 3);
      if (v8)
      {
        free(v8);
      }

      v9 = *(v6 + 4);
      if (v9)
      {
        free(v9);
      }

      v10 = *(v6 + 5);
      if (v10)
      {
        free(v10);
      }

      v11 = *(v6 + 6);
      if (v11)
      {
        free(v11);
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);
    v12 = *(a1 + 56);
    if (v12)
    {
      free(v12);
    }

    free(a1);
  }
}

uint64_t updateBandPassNoiseReductionCropRect(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    *(result + 288) = a2;
    *(result + 296) = a3;
    *(result + 304) = a4;
    *(result + 312) = a5;
    *(result + 328) = 1;
    if (!*(result + 204))
    {
      return sub_23C44BBCC(result);
    }
  }

  return result;
}

uint64_t sub_23C44BBCC(uint64_t result)
{
  if (*(result + 328) == 1)
  {
    v1 = *(result + 56);
    v2 = *(result + 296);
    v3 = *(result + 312);
    v4 = *(result + 320);
    if (v3 > v4)
    {
      *(result + 320) = v3;
      v4 = v3;
    }

    v5 = v3 + v2;
    if (v1)
    {
      v6 = *(result + 40);
      v7 = v1 + v6;
      v8 = v4 + v2;
      if (v4 + v2 >= *(result + 80) - 20)
      {
        v8 = *(result + 80) - 20;
      }

      v9 = v5 - v4;
      if (v9 <= 0x14)
      {
        v9 = 20;
      }

      if (v7 > v5)
      {
        v5 = v7;
      }

      if (v8 > v5)
      {
        v5 = v8;
      }

      if (v6 < v2)
      {
        v2 = *(result + 40);
      }

      if (v9 < v2)
      {
        v2 = v9;
      }
    }

    v10 = v5 - v2;
    *(result + 32) = *(result + 288);
    *(result + 40) = v2;
    v11 = *(result + 304);
    *(result + 48) = v11;
    *(result + 56) = v10;
    *(result + 132) = (v10 + 63) >> 6;
    *(result + 136) = v10 - ((v10 + 63) & 0xFFFFFFC0) + 64;
    *(result + 208) = v11 >> 6;
    *(result + 328) = 0;
  }

  return result;
}

uint64_t DoBandPassNoiseReductionComplete(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      if (*(result + 328) == 1)
      {
        v3 = *(result + 204);
        if (v3)
        {
          *(result + 212) = *(result + 132) - v3;
          sub_23C44BDF4(result + 144);
        }
      }

      *(v2 + 212) = 0;
      v11 = 0;
      v10 = 1;
      v9 = 4;
      sysctlbyname("hw.ncpu", &v10, &v9, 0, 0);
      v4 = *(v2 + 208);
      v5 = *(v2 + 200);
      if ((v4 - v5) >= 4 && v10 >= 2)
      {
        v7 = v5 + ((v4 - v5) >> 1);
        *(v2 + 272) = v7;
        *(v2 + 280) = v4;
        *(v2 + 208) = v7;
        if (!FigThreadCreate())
        {
          sub_23C44BDF4(v2 + 144);
          FigMemoryBarrier();
          result = FigThreadJoin();
          *(v2 + 200) = *(v2 + 272);
          return result;
        }

        FigSignalErrorAtGM();
        *(v2 + 208) = *(v2 + 280);
      }

      return sub_23C44BDF4(v2 + 144);
    }

    else
    {
      *(result + 212) = 0;
      v8 = result + 144;

      return sub_23C44BDF4(v8);
    }
  }

  return result;
}

uint64_t sub_23C44BDF4(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v2 = *a1;
  v3 = *(a1 + 56);
  if (v3 < *(a1 + 64))
  {
    v29 = *(a1 + 32);
    v30 = *(a1 + 24);
    v28 = *(v2 + 124);
    v33 = *(a1 + 16);
    v34 = *(v2 + 64);
    v27 = *(v2 + 120);
    v26 = *(v2 + 116);
    v31 = *(v2 + 112);
    v4 = *(a1 + 68);
    v24 = v33 + *(v2 + 88) * *(v2 + 128) + *(v2 + 88);
    v25 = *(v2 + 108);
    do
    {
      v5 = *(a1 + 60);
      if (v5 == *(v2 + 132) - 1)
      {
        v6 = *(v2 + 136);
        if (v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = 64;
        }
      }

      else
      {
        v7 = 64;
      }

      v8 = *(v2 + 40);
      v9 = *(v2 + 64);
      v10 = *(v2 + 32) + (v3 << 6);
      v11 = *v2 + v10 + (v8 + (v5 << 6)) * v9;
      v32 = *(v2 + 16);
      v12 = *(v2 + 432);
      if (v12)
      {
        v13 = *(v2 + 8);
        v14 = *(v2 + 24);
        if ((v28 & 0x10) == 0 || (v15 = *(v2 + 408)) == 0 || (*&v35 = *v2 + v10 + (v8 + (v5 << 6)) * v9, *(&v35 + 1) = v29, *&v36 = v34, *(&v36 + 1) = v7, v23 = v14, v15(&v35), v14 = v23, (v12 = *(v2 + 432)) != 0))
        {
          v16 = v10 + ((v8 >> 1) + 32 * v5) * v9;
          *&v35 = v13 + v16;
          *(&v35 + 1) = v14 + v16;
          *&v36 = v34;
          *(&v36 + 1) = v7 >> 1;
          *&v37 = v26;
          *(&v37 + 1) = v29;
          *&v38 = v27;
          *(&v38 + 1) = v31;
          v12(&v35);
        }
      }

      v17 = *(v2 + 336);
      if (v17)
      {
        *&v35 = v11;
        *(&v35 + 1) = v33;
        *&v36 = v34;
        *(&v36 + 1) = v7;
        v17(&v35);
        v18 = *(v2 + 416);
        if (v18)
        {
          *&v35 = v11;
          *(&v35 + 1) = v24;
          *&v36 = v30;
          *(&v36 + 1) = v34;
          *&v37 = v7;
          v18(&v35);
        }

        v19 = *(v2 + 424);
        if (v19)
        {
          *&v35 = v33;
          *(&v35 + 1) = v25;
          *&v36 = v7;
          *(&v36 + 1) = v31;
          v19(&v35);
        }

        v20 = *(v2 + 440);
        if (v20)
        {
          *&v35 = v33;
          *(&v35 + 1) = v30;
          *&v36 = v32 + v10 + (v8 + (v5 << 6)) * v9;
          *(&v36 + 1) = v34;
          *&v37 = v7;
          v20(&v35);
        }
      }

      v21 = *(a1 + 60) + 1;
      *(a1 + 60) = v21;
      if (v21 == *(v2 + 132))
      {
        *(a1 + 56) = (*(a1 + 56) + 1);
        sub_23C44BBCC(v2);
      }

      if (v4)
      {
        if (!--v4)
        {
          break;
        }
      }

      v3 = *(a1 + 56);
    }

    while (v3 < *(a1 + 64));
  }

  if (!*(a1 + 60))
  {
    sub_23C44BBCC(v2);
  }

  return 0;
}

void *Blending_constructor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = malloc_type_calloc(1uLL, 0x130uLL, 0x10B00409EC01B3FuLL);
  if (v19 && (*v19 = a9, v19[1] = a10, v19[2] = a9, v19[3] = a10, v19[4] = a10 * a9, v19[6] = a2, v19[7] = a3, v19[8] = a4 * a3, v19[9] = a4, v19[15] = 0, v19[16] = a1, v19[10] = a6, v19[11] = a7, v19[12] = a8 * a7, v19[13] = a8, v19[17] = a5, *(v19 + 74) = 1064514355, v20 = Stitcher_constructor(a9, a10, a11), (v19[15] = v20) != 0))
  {
    v21 = Stitcher_maxMinOverlapWidth(v20);
    v19[5] = malloc_type_malloc(4 * v21 + 4, 0x100004052888210uLL);
  }

  else
  {
    Blending_destructor(v19);
    return 0;
  }

  return v19;
}

void Blending_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[15];
    if (v2)
    {
      Stitcher_destructor(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void *Blending_zero()
{
  result = malloc_type_calloc(1uLL, 0x130uLL, 0x10B00409EC01B3FuLL);
  if (result)
  {
    result[15] = 0;
  }

  return result;
}

int8x16_t Blending_start(uint64_t a1, uint64_t a2, __CVBuffer *a3, __CVBuffer *a4, double a5, float a6, float32x2_t a7, float32_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, unint64_t a23)
{
  v27 = (*(a1 + 56) + 1) >> 1;
  *(a1 + 148) = a7.i32[0];
  *(a1 + 152) = v27;
  Blending_overlap(a1, a23, a22, 0, a5, a6, a7, a8);
  sub_23C44C4D4(a15, a2, a16, a3, a4, *(a1 + 192), *(a1 + 200), *(a1 + 224), *(a1 + 228), HIDWORD(*(a1 + 228)), *(a1 + 236), v35, a18, a19, a20);
  v28 = *(a1 + 272);
  v29 = *(a1 + 204);
  if (v28 >= v29)
  {
    v28 = *(a1 + 204);
  }

  *(a1 + 272) = v28;
  v30 = *(a1 + 248);
  v31 = *(a1 + 192);
  if (v30 >= v31)
  {
    v30 = *(a1 + 192);
  }

  *(a1 + 248) = v30;
  v32 = *(a1 + 196);
  v33.i64[0] = v32;
  v33.i64[1] = SHIDWORD(v32);
  *(a1 + 256) = vbslq_s8(vcgtq_u64(*(a1 + 256), v33), *(a1 + 256), v33);
  *(a1 + 160) = v31;
  result = vextq_s8(v33, v33, 8uLL);
  *(a1 + 168) = result;
  *(a1 + 184) = v29;
  ++*(a1 + 112);
  return result;
}

uint64_t Blending_overlap(uint64_t a1, unint64_t a2, int a3, int a4, double a5, float a6, float32x2_t a7, float32_t a8)
{
  if (a4)
  {
    v8 = *(a1 + 148);
  }

  else
  {
    if (*&a5 < 0.0 && !*(a1 + 280))
    {
      *(a1 + 280) = 1;
      *(a1 + 284) = *(a1 + 148);
    }

    *(&a5 + 1) = a6;
    v8 = vadd_f32(*(a1 + 148), *&a5);
    *(a1 + 148) = v8;
    if (v8.f32[0] > *(a1 + 284))
    {
      *(a1 + 284) = v8.i32[0];
      *(a1 + 280) = 0;
    }
  }

  a7.f32[1] = a8;
  v9 = vcvt_s32_f32(vadd_f32(vsub_f32(v8, a7), 0x3F0000003F000000));
  v10 = *(a1 + 48);
  if (v9.i32[0] >= v10 || v9.i32[0] + a2 < 1)
  {
    return 0;
  }

  v12 = *(a1 + 56);
  if (v9.i32[1] >= v12 || v9.i32[1] + a3 < 1)
  {
    return 0;
  }

  v15 = vmax_s32(v9, 0);
  v16 = vmax_s32(v15, vmovn_s64(*(a1 + 160)));
  v17 = v10 - v15.i32[0];
  v18 = vmax_s32(vneg_s32(v9), 0);
  if (v17 >= a2 - v18.i32[0])
  {
    v17 = a2 - v18.i32[0];
  }

  v19 = v12 - v15.i32[1];
  if (v19 >= a3 - v18.i32[1])
  {
    v19 = a3 - v18.i32[1];
  }

  v20 = v17 + v15.i32[0] <= *(a1 + 176) ? v17 + v15.i32[0] - 1 : *(a1 + 176);
  v21 = v19 + v15.i32[1] <= *(a1 + 184) ? v19 + v15.i32[1] - 1 : *(a1 + 184);
  v22 = v20 - v16.i32[0];
  if (v20 < v16.i32[0])
  {
    v22 = -1;
  }

  v23 = v22 + 1;
  if (!a4 && *(a1 + 112) >= 1 && ((v23 / a2) > 0.9 || *(a1 + 280)))
  {
    return 0;
  }

  *(a1 + 192) = v15.i32[0];
  *(a1 + 196) = v17 + v15.i32[0] - 1;
  *(a1 + 200) = v15.i32[1];
  *(a1 + 204) = v19 + v15.i32[1] - 1;
  *(a1 + 208) = v16;
  *(a1 + 216) = v20;
  *(a1 + 220) = v21;
  *(a1 + 224) = v18;
  *(a1 + 232) = v17;
  *(a1 + 236) = v19;
  *(a1 + 240) = v23;
  *(a1 + 244) = v21 - v16.i32[1] + 1;
  return 1;
}

uint64_t sub_23C44C4D4(uint64_t result, uint64_t a2, int a3, CVBufferRef sourceBuffer, CVBufferRef destinationBuffer, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15)
{
  v15 = a11 & 0xFFFFFFFE;
  v16 = a10 & 0xFFFFFFFE;
  if ((a10 & 0xFFFFFFFE) == 0 || v15 == 0)
  {
    return result;
  }

  v24 = result;
  v25 = a13 + a9;
  v41 = a15 + a8;
  CVBufferPropagateAttachments(sourceBuffer, destinationBuffer);
  if (a2)
  {
    if (a3 == 1)
    {
      v27 = MEMORY[0x277CBED10];
      v26 = a13 + a9;
      goto LABEL_18;
    }

    if (a3 == 2)
    {
      v26 = a13 + a9;
      v27 = MEMORY[0x277CBED28];
LABEL_18:
      MEMORY[0x23EED2570](a2, *MEMORY[0x277CE2808], *v27);
      CVPixelBufferUnlockBaseAddress(sourceBuffer, 1uLL);
      CVPixelBufferUnlockBaseAddress(destinationBuffer, 0);
      MEMORY[0x23EED2580](a2, sourceBuffer, destinationBuffer, v26, v41, v15, v16, a6, a7, v16, v15);
      CVPixelBufferLockBaseAddress(destinationBuffer, 0);

      return CVPixelBufferLockBaseAddress(sourceBuffer, 1uLL);
    }

    goto LABEL_14;
  }

  v39 = v24;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(destinationBuffer, 0);
  v40 = CVPixelBufferGetBytesPerRowOfPlane(destinationBuffer, 1uLL);
  v38 = CVPixelBufferGetBaseAddressOfPlane(destinationBuffer, 0) + a6 + BytesPerRowOfPlane * a7;
  v37 = CVPixelBufferGetBaseAddressOfPlane(destinationBuffer, 1uLL) + (a6 & 0xFFFFFFFFFFFFFFFELL) + v40 * (a7 >> 1);
  CVPixelBufferLockBaseAddress(sourceBuffer, 1uLL);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(sourceBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(sourceBuffer, 0);
  v30 = CVPixelBufferGetBytesPerRowOfPlane(sourceBuffer, 0);
  v31 = CVPixelBufferGetBytesPerRowOfPlane(sourceBuffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(sourceBuffer, 0);
  v33 = CVPixelBufferGetBaseAddressOfPlane(sourceBuffer, 1uLL);
  v34 = BaseAddressOfPlane + v25 + v30 * v41;
  v35 = v33 + (v25 & 0xFFFFFFFFFFFFFFFELL) + v31 * (v41 >> 1);
  if (a3 == 2)
  {
    PixelShuffler_yuv420TransposeRoi(v39, v38, v37, v34, v35, WidthOfPlane, HeightOfPlane, v30, BytesPerRowOfPlane, v31, v40, 0, 0, v15, v16);
  }

  else
  {
    if (a3 != 1)
    {
LABEL_14:

      return puts("ERROR: panorama direction unknown");
    }

    PixelShuffler_yuv420TransposeAndFlipHorizontallyRoi(v39, v38, v37, v34, v35, WidthOfPlane, HeightOfPlane, v30, BytesPerRowOfPlane, v31, v40, 0, 0, v15, v16);
  }

  return CVPixelBufferUnlockBaseAddress(sourceBuffer, 1uLL);
}

int8x16_t Blending_post(uint64_t a1)
{
  v1 = *(a1 + 272);
  v2 = *(a1 + 204);
  if (v1 >= v2)
  {
    v1 = *(a1 + 204);
  }

  *(a1 + 272) = v1;
  v3 = *(a1 + 248);
  v4 = *(a1 + 192);
  if (v3 >= v4)
  {
    v3 = *(a1 + 192);
  }

  *(a1 + 248) = v3;
  v5 = *(a1 + 196);
  v6.i64[0] = v5;
  v6.i64[1] = SHIDWORD(v5);
  *(a1 + 256) = vbslq_s8(vcgtq_u64(*(a1 + 256), v6), *(a1 + 256), v6);
  *(a1 + 160) = v4;
  result = vextq_s8(v6, v6, 8uLL);
  *(a1 + 168) = result;
  *(a1 + 184) = v2;
  return result;
}

int8x16_t Blending_end(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __CVBuffer *a5, __CVBuffer *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, int a17, int a18, signed int a19)
{
  v25 = *(a1 + 48);
  if (*(a1 + 144))
  {
    LODWORD(v25) = v25 + 32;
  }

  v26 = (*(a1 + 176) + 1) & 0xFFFFFFFE;
  *(a1 + 224) = 0;
  v27 = v25 - v26;
  if ((v25 - v26) >= a19)
  {
    v27 = a19;
  }

  v28 = *(a1 + 200);
  v29 = a17 - *(a1 + 228);
  if (*(a1 + 56) - v28 < v29)
  {
    v29 = *(a1 + 56) - v28;
  }

  *(a1 + 232) = v27;
  *(a1 + 236) = v29;
  *(a1 + 192) = v26;
  *(a1 + 196) = v26 + v27 - 1;
  *(a1 + 204) = v28 + v29 - 1;
  ACTLogMessageImp(1, "Blending_end: xStart=%d, xMax=%d, widthToCopy=%d, xStop=%d, aInRoiHeight=%d, xStartImage=%d\n", v26, v25, v27, v26 + v27 - 1, a19, 0);
  v30 = *(a1 + 232);
  v31 = a19 - v30;
  if (a4 != 1)
  {
    v31 = a15;
  }

  sub_23C44C4D4(a3, a2, a4, a5, a6, *(a1 + 192), *(a1 + 200), *(a1 + 224), *(a1 + 228), v30, *(a1 + 236), v39, a13, a14, v31);
  v32 = *(a1 + 272);
  v33 = *(a1 + 204);
  if (v32 >= v33)
  {
    v32 = *(a1 + 204);
  }

  *(a1 + 272) = v32;
  v34 = *(a1 + 248);
  v35 = *(a1 + 192);
  if (v34 >= v35)
  {
    v34 = *(a1 + 192);
  }

  *(a1 + 248) = v34;
  v36 = *(a1 + 196);
  v37.i64[0] = v36;
  v37.i64[1] = SHIDWORD(v36);
  *(a1 + 256) = vbslq_s8(vcgtq_u64(*(a1 + 256), v37), *(a1 + 256), v37);
  *(a1 + 160) = v35;
  result = vextq_s8(v37, v37, 8uLL);
  *(a1 + 168) = result;
  *(a1 + 184) = v33;
  return result;
}

int8x16_t Blending_addImage(uint64_t a1, double a2, double a3, float a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  *(a1 + 288) = a12;
  v17 = *(a1 + 196);
  v18 = *(a1 + 200);
  v104 = *(a1 + 204);
  v19 = *(a1 + 208);
  v94 = *(a1 + 220);
  v20 = *(a1 + 228);
  v21 = *(a1 + 232);
  v22 = *(a1 + 244);
  v98 = *(a1 + 224);
  v99 = *(a1 + 192);
  v96 = *(a1 + 212);
  v90 = (v96 - v18 + v20) & ~((v96 - v18 + v20) >> 31);
  v87 = v19 & 0xFFFFFFFFFFFFFFFELL;
  v88 = (v19 - v99 + v98) & ~((v19 - v99 + v98) >> 31);
  v89 = v88 & 0x7FFFFFFE;
  v103 = *(a1 + 240);
  v91 = v18;
  v92 = v20;
  v93 = v17;
  if (v103 > Stitcher_minOverlapWidth(*(a1 + 120), a5) && v22 >= 1)
  {
    Stitcher_pasteImageToReference(*(a1 + 120), *(a1 + 128) + v19 + *(a1 + 72) * v96, *(a1 + 136) + v87 + *(a1 + 104) * ((v96 + (v96 >> 31)) >> 1), *(a1 + 72), *(a1 + 56), a10 + v88 + v90 * a8, a11 + v89 + (v90 >> 1) * a9, a8, a4, a7, v21, v103, v22, *(a1 + 288), a13);
    v25 = a10;
    v26 = v96;
    v27 = a8;
    goto LABEL_38;
  }

  v102 = a8;
  if ((v103 & 0x80000000) != 0 || (v22 & 0x80000000) != 0 || (v28 = v21, v21 <= 0))
  {
    v27 = a8;
LABEL_37:
    v25 = a10;
    v26 = v96;
    goto LABEL_38;
  }

  v101 = v22;
  v29 = *(a1 + 72);
  v31 = *(a1 + 128);
  v30 = *(a1 + 136);
  v32 = *(a1 + 104);
  if (v103 >= 0x10)
  {
    v33 = 16;
  }

  else
  {
    v33 = v103;
  }

  v34 = *(a1 + 40);
  if (v103)
  {
    v35 = 0;
    *v23.i32 = v33;
    v24 = vdupq_n_s64(v33 - 1);
    v36 = xmmword_23C47A580;
    v37 = xmmword_23C47A590;
    v38 = (v34 + 8);
    v39 = vdupq_n_s64(4uLL);
    do
    {
      v40 = vmovn_s64(vcgeq_u64(v24, v37));
      if (vuzp1_s16(v40, v23).u8[0])
      {
        *(v38 - 2) = v35 / *v23.i32;
      }

      if (vuzp1_s16(v40, v23).i8[2])
      {
        *(v38 - 1) = (v35 + 1) / *v23.i32;
      }

      if (vuzp1_s16(v23, vmovn_s64(vcgeq_u64(v24, *&v36))).i32[1])
      {
        *v38 = (v35 + 2) / *v23.i32;
        v38[1] = (v35 + 3) / *v23.i32;
      }

      v35 += 4;
      v36 = vaddq_s64(v36, v39);
      v37 = vaddq_s64(v37, v39);
      v38 += 4;
    }

    while (((v33 + 3) & 0x3C) != v35);
  }

  v27 = a8;
  v25 = a10;
  v26 = v96;
  if (v22 >= 1)
  {
    v41 = 0;
    v42 = v31 + v19 + v29 * v96;
    v43 = a10 + v88 + v90 * v102;
    v44 = v30 + v87 + v32 * ((v96 + (v96 >> 31)) >> 1);
    v45 = a11 + v89 + (v90 >> 1) * a9;
    v46 = v22;
    v47 = v28 - v33;
    v48 = v29;
    do
    {
      if (v103)
      {
        v49 = 0;
        do
        {
          v23.i8[0] = *(v42 + v49);
          v24.i8[0] = *(v43 + v49);
          v50 = v23.u32[0];
          *v24.i32 = v24.u32[0] - v50;
          *v23.i32 = v50 + (*(v34 + 4 * v49) * *v24.i32);
          *(v42 + v49++) = *v23.i32;
        }

        while (v33 != v49);
      }

      if (v47 > 0)
      {
        memcpy((v42 + v33), (v43 + v33), v47);
        v29 = v48;
        v46 = v101;
      }

      if (v41)
      {
        v57 = v102;
      }

      else
      {
        if (v103)
        {
          v51 = 0;
          do
          {
            v52 = (v44 + v51);
            v23.i8[0] = *(v44 + v51);
            v53 = v23.u32[0];
            v24.i8[0] = *(v45 + v51);
            *&v54 = v24.u32[0] - v53;
            *&v55 = v53 + (*(v34 + 4 * v51) * *&v54);
            *v52 = *&v55;
            LOBYTE(v55) = *(v44 + v51 + 1);
            v56 = v55;
            LOBYTE(v54) = *(v45 + v51 + 1);
            *v24.i32 = v54 - v56;
            *v23.i32 = v56 + (*(v34 + 4 * v51) * *v24.i32);
            v52[1] = *v23.i32;
            v51 += 2;
          }

          while (v51 < v33);
        }

        if (v47 > 0)
        {
          memcpy((v44 + v33), (v45 + v33), v47);
          v29 = v48;
          v46 = v101;
        }

        v44 += v29;
        v57 = v102;
        v45 += v102;
      }

      v42 += v29;
      v43 += v57;
      ++v41;
    }

    while (v41 != v46);
    v20 = v92;
    v17 = v93;
    v27 = v102;
    v18 = v91;
    goto LABEL_37;
  }

LABEL_38:
  v58 = *(a1 + 72);
  v59 = *(a1 + 128) + v58 * v18;
  v60 = v25 + v20 * v27;
  v61 = v17 - v99;
  v62 = v27;
  v63 = v26;
  if (v18 >= v26)
  {
    v65 = v104;
  }

  else
  {
    v64 = v18;
    v65 = v104;
    do
    {
      if (v64 <= v65)
      {
        memcpy((v59 + v99), (v60 + v98), v61 + 1);
        v65 = v104;
        v26 = v63;
        v60 += v62;
        v58 = *(a1 + 72);
      }

      v59 += v58;
      ++v64;
    }

    while (v26 != v64);
  }

  if (v94 + 1 <= v65)
  {
    v66 = (v60 + v98);
    v67 = v94 + 1;
    do
    {
      memcpy((v59 + v99), v66, v61 + 1);
      v65 = v104;
      v59 += *(a1 + 72);
      ++v67;
      v66 += v62;
    }

    while (v67 <= v104);
  }

  if (a11)
  {
    v68 = (v91 + 1) >> 1;
    v105 = (v94 + 1) >> 1;
    v69 = (v65 + 1) >> 1;
    v70 = (v99 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v71 = (v98 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v72 = *(a1 + 104);
    v73 = *(a1 + 136) + v72 * v68;
    v74 = a11 + ((v92 + 1) >> 1) * a9;
    v75 = v93 - v70 + 1;
    if (v68 < (v63 + 1) >> 1)
    {
      v76 = (v63 + 1) >> 1;
      do
      {
        if (v68 <= v69)
        {
          memcpy((v73 + v70), (v74 + v71), v75 | 1);
          v74 += a9;
          v72 = *(a1 + 104);
        }

        v73 += v72;
        ++v68;
      }

      while (v76 != v68);
    }

    v77 = v69 > v105;
    v78 = v69 - v105;
    if (v77)
    {
      v79 = (v74 + v71);
      do
      {
        memcpy((v73 + v70), v79, v75 | 1);
        v73 += *(a1 + 104);
        v79 += a9;
        --v78;
      }

      while (v78);
    }
  }

  v80 = *(a1 + 272);
  v81 = *(a1 + 204);
  if (v80 >= v81)
  {
    v80 = *(a1 + 204);
  }

  *(a1 + 272) = v80;
  v82 = *(a1 + 248);
  v83 = *(a1 + 192);
  if (v82 >= v83)
  {
    v82 = *(a1 + 192);
  }

  *(a1 + 248) = v82;
  v84 = *(a1 + 196);
  v85.i64[0] = v84;
  v85.i64[1] = SHIDWORD(v84);
  *(a1 + 256) = vbslq_s8(vcgtq_u64(*(a1 + 256), v85), *(a1 + 256), v85);
  *(a1 + 160) = v83;
  result = vextq_s8(v85, v85, 8uLL);
  *(a1 + 168) = result;
  *(a1 + 184) = v81;
  ++*(a1 + 112);
  return result;
}

void Blending_reset(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  *(a1 + 264) = 0;
  *(a1 + 272) = v2;
  *(a1 + 248) = v3;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  if (*(a1 + 144) == 1)
  {
    ACTLogMessageImp(1, "Blending_reset - padding start to %d", 32);
    *(a1 + 160) = 32;
    *(a1 + 176) = 32;
  }

  bzero(*(a1 + 128), *(a1 + 64));
  memset(*(a1 + 136), 128, *(a1 + 96));
  *(a1 + 292) = 1;
  v4 = *(a1 + 120);

  Stitcher_reset(v4);
}

void *Blending_constructor_v2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = malloc_type_calloc(1uLL, 0x130uLL, 0x10B00409EC01B3FuLL);
  if (v19 && (*v19 = a9, v19[1] = a10, v19[2] = a9, v19[3] = a10, v19[4] = a10 * a9, v19[6] = a2, v19[7] = a3, v19[8] = a4 * a3, v19[9] = a4, v19[15] = 0, v19[16] = a1, v19[10] = a6, v19[11] = a7, v19[12] = a8 * a7, v19[13] = a8, v19[17] = a5, *(v19 + 74) = 1064514355, v20 = Stitcher_constructor_v2(a9, a10, a11), (v19[15] = v20) != 0))
  {
    v21 = Stitcher_maxMinOverlapWidth_v2(v20);
    v19[5] = malloc_type_malloc(4 * v21 + 4, 0x100004052888210uLL);
  }

  else
  {
    Blending_destructor_v2(v19);
    return 0;
  }

  return v19;
}

void Blending_destructor_v2(void *a1)
{
  if (a1)
  {
    v2 = a1[15];
    if (v2)
    {
      Stitcher_destructor_v2(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void *Blending_zero_v2()
{
  result = malloc_type_calloc(1uLL, 0x130uLL, 0x10B00409EC01B3FuLL);
  if (result)
  {
    result[15] = 0;
  }

  return result;
}

int8x16_t Blending_start_v2(uint64_t a1, uint64_t a2, __CVBuffer *a3, __CVBuffer *a4, double a5, float a6, float32x2_t a7, float32_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, unint64_t a23)
{
  v27 = (*(a1 + 56) + 1) >> 1;
  *(a1 + 148) = a7.i32[0];
  *(a1 + 152) = v27;
  Blending_overlap_v2(a1, a23, a22, 0, a5, a6, a7, a8);
  sub_23C44C4D4(a15, a2, a16, a3, a4, *(a1 + 192), *(a1 + 200), *(a1 + 224), *(a1 + 228), HIDWORD(*(a1 + 228)), *(a1 + 236), v35, a18, a19, a20);
  v28 = *(a1 + 272);
  v29 = *(a1 + 204);
  if (v28 >= v29)
  {
    v28 = *(a1 + 204);
  }

  *(a1 + 272) = v28;
  v30 = *(a1 + 248);
  v31 = *(a1 + 192);
  if (v30 >= v31)
  {
    v30 = *(a1 + 192);
  }

  *(a1 + 248) = v30;
  v32 = *(a1 + 196);
  v33.i64[0] = v32;
  v33.i64[1] = SHIDWORD(v32);
  *(a1 + 256) = vbslq_s8(vcgtq_u64(*(a1 + 256), v33), *(a1 + 256), v33);
  *(a1 + 160) = v31;
  result = vextq_s8(v33, v33, 8uLL);
  *(a1 + 168) = result;
  *(a1 + 184) = v29;
  ++*(a1 + 112);
  return result;
}

uint64_t Blending_overlap_v2(uint64_t a1, unint64_t a2, int a3, int a4, double a5, float a6, float32x2_t a7, float32_t a8)
{
  if (a4)
  {
    v8 = *(a1 + 148);
  }

  else
  {
    if (*&a5 < 0.0 && !*(a1 + 280))
    {
      *(a1 + 280) = 1;
      *(a1 + 284) = *(a1 + 148);
    }

    *(&a5 + 1) = a6;
    v8 = vadd_f32(*(a1 + 148), *&a5);
    *(a1 + 148) = v8;
    if (v8.f32[0] > *(a1 + 284))
    {
      *(a1 + 284) = v8.i32[0];
      *(a1 + 280) = 0;
    }
  }

  a7.f32[1] = a8;
  v9 = vcvt_s32_f32(vadd_f32(vsub_f32(v8, a7), 0x3F0000003F000000));
  v10 = *(a1 + 48);
  if (v9.i32[0] >= v10 || v9.i32[0] + a2 < 1)
  {
    return 0;
  }

  v12 = *(a1 + 56);
  if (v9.i32[1] >= v12 || v9.i32[1] + a3 < 1)
  {
    return 0;
  }

  v15 = vmax_s32(v9, 0);
  v16 = vmax_s32(v15, vmovn_s64(*(a1 + 160)));
  v17 = v10 - v15.i32[0];
  v18 = vmax_s32(vneg_s32(v9), 0);
  if (v17 >= a2 - v18.i32[0])
  {
    v17 = a2 - v18.i32[0];
  }

  v19 = v12 - v15.i32[1];
  if (v19 >= a3 - v18.i32[1])
  {
    v19 = a3 - v18.i32[1];
  }

  v20 = v17 + v15.i32[0] <= *(a1 + 176) ? v17 + v15.i32[0] - 1 : *(a1 + 176);
  v21 = v19 + v15.i32[1] <= *(a1 + 184) ? v19 + v15.i32[1] - 1 : *(a1 + 184);
  v22 = v20 - v16.i32[0];
  if (v20 < v16.i32[0])
  {
    v22 = -1;
  }

  v23 = v22 + 1;
  if (!a4 && *(a1 + 112) >= 1 && ((v23 / a2) > *(a1 + 296) || *(a1 + 280)))
  {
    return 0;
  }

  *(a1 + 192) = v15.i32[0];
  *(a1 + 196) = v17 + v15.i32[0] - 1;
  *(a1 + 200) = v15.i32[1];
  *(a1 + 204) = v19 + v15.i32[1] - 1;
  *(a1 + 208) = v16;
  *(a1 + 216) = v20;
  *(a1 + 220) = v21;
  *(a1 + 224) = v18;
  *(a1 + 232) = v17;
  *(a1 + 236) = v19;
  *(a1 + 240) = v23;
  *(a1 + 244) = v21 - v16.i32[1] + 1;
  return 1;
}

int8x16_t Blending_end_v2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __CVBuffer *a5, __CVBuffer *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, int a17, int a18, signed int a19)
{
  v25 = *(a1 + 48);
  if (*(a1 + 144))
  {
    LODWORD(v25) = v25 + 32;
  }

  v26 = (*(a1 + 176) + 1) & 0xFFFFFFFE;
  *(a1 + 224) = 0;
  v27 = v25 - v26;
  if ((v25 - v26) >= a19)
  {
    v27 = a19;
  }

  v28 = *(a1 + 200);
  v29 = a17 - *(a1 + 228);
  if (*(a1 + 56) - v28 < v29)
  {
    v29 = *(a1 + 56) - v28;
  }

  *(a1 + 232) = v27;
  *(a1 + 236) = v29;
  *(a1 + 192) = v26;
  *(a1 + 196) = v26 + v27 - 1;
  *(a1 + 204) = v28 + v29 - 1;
  ACTLogMessageImp(1, "Blending_end: xStart=%d, xMax=%d, widthToCopy=%d, xStop=%d, aInRoiHeight=%d, xStartImage=%d\n", v26, v25, v27, v26 + v27 - 1, a19, 0);
  v30 = *(a1 + 232);
  v31 = a19 - v30;
  if (a4 != 1)
  {
    v31 = a15;
  }

  sub_23C44C4D4(a3, a2, a4, a5, a6, *(a1 + 192), *(a1 + 200), *(a1 + 224), *(a1 + 228), v30, *(a1 + 236), v39, a13, a14, v31);
  v32 = *(a1 + 272);
  v33 = *(a1 + 204);
  if (v32 >= v33)
  {
    v32 = *(a1 + 204);
  }

  *(a1 + 272) = v32;
  v34 = *(a1 + 248);
  v35 = *(a1 + 192);
  if (v34 >= v35)
  {
    v34 = *(a1 + 192);
  }

  *(a1 + 248) = v34;
  v36 = *(a1 + 196);
  v37.i64[0] = v36;
  v37.i64[1] = SHIDWORD(v36);
  *(a1 + 256) = vbslq_s8(vcgtq_u64(*(a1 + 256), v37), *(a1 + 256), v37);
  *(a1 + 160) = v35;
  result = vextq_s8(v37, v37, 8uLL);
  *(a1 + 168) = result;
  *(a1 + 184) = v33;
  return result;
}

int8x16_t Blending_addImage_v2(uint64_t a1, double a2, double a3, float a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v17 = *(a1 + 192);
  v100 = *(a1 + 196);
  v18 = *(a1 + 204);
  v19 = *(a1 + 208);
  v94 = *(a1 + 220);
  v21 = *(a1 + 228);
  v20 = *(a1 + 232);
  v22 = *(a1 + 244);
  v23 = *(a1 + 240);
  v97 = *(a1 + 224);
  v98 = *(a1 + 200);
  v96 = *(a1 + 212);
  v101 = (v96 - v98 + v21) & ~((v96 - v98 + v21) >> 31);
  v89 = v19 & 0xFFFFFFFFFFFFFFFELL;
  v90 = (v19 - v17 + v97) & ~((v19 - v17 + v97) >> 31);
  v91 = v90 & 0x7FFFFFFE;
  v24 = Stitcher_minOverlapWidth_v2(*(a1 + 120), a5);
  v106 = v23;
  v27 = v22;
  v92 = v21;
  v93 = a9;
  v95 = v17;
  if (v23 > v24 && v22 >= 1)
  {
    v28 = a8;
    Stitcher_pasteImageToReference_v2(*(a1 + 120), *(a1 + 128) + v19 + *(a1 + 72) * v96, *(a1 + 136) + v89 + *(a1 + 104) * ((v96 + (v96 >> 31)) >> 1), *(a1 + 72), *(a1 + 56), a10 + v90 + v101 * a8, a11 + v91 + (v101 >> 1) * a9, a8, a4, a7, v20, v23, v27, a13);
    v29 = v96;
LABEL_37:
    v43 = v100;
    goto LABEL_38;
  }

  if ((v23 & 0x80000000) != 0 || (v22 & 0x80000000) != 0 || (v30 = v20, v20 <= 0))
  {
    v28 = a8;
    v29 = v96;
    goto LABEL_37;
  }

  v31 = *(a1 + 72);
  v33 = *(a1 + 128);
  v32 = *(a1 + 136);
  v34 = *(a1 + 104);
  if (v23 >= 0x10)
  {
    v35 = 16;
  }

  else
  {
    v35 = v23;
  }

  v36 = *(a1 + 40);
  if (v23)
  {
    v37 = 0;
    *v25.i32 = v35;
    v26 = vdupq_n_s64(v35 - 1);
    v38 = xmmword_23C47A580;
    v39 = xmmword_23C47A590;
    v40 = (v36 + 8);
    v41 = vdupq_n_s64(4uLL);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v26, v39));
      if (vuzp1_s16(v42, v25).u8[0])
      {
        *(v40 - 2) = v37 / *v25.i32;
      }

      if (vuzp1_s16(v42, v25).i8[2])
      {
        *(v40 - 1) = (v37 + 1) / *v25.i32;
      }

      if (vuzp1_s16(v25, vmovn_s64(vcgeq_u64(v26, *&v38))).i32[1])
      {
        *v40 = (v37 + 2) / *v25.i32;
        v40[1] = (v37 + 3) / *v25.i32;
      }

      v37 += 4;
      v38 = vaddq_s64(v38, v41);
      v39 = vaddq_s64(v39, v41);
      v40 += 4;
    }

    while (((v35 + 3) & 0x3C) != v37);
  }

  v28 = a8;
  v29 = v96;
  v43 = v100;
  if (v27 >= 1)
  {
    v104 = v27;
    v44 = 0;
    v88 = a10;
    v45 = a10 + v90;
    v46 = v33 + v19 + v31 * v96;
    v47 = v45 + v101 * a8;
    v48 = v32 + v89 + v34 * ((v96 + (v96 >> 31)) >> 1);
    v49 = a11 + v91 + (v101 >> 1) * v93;
    v50 = v30 - v35;
    v102 = v31;
    do
    {
      if (v106)
      {
        v51 = 0;
        do
        {
          v25.i8[0] = *(v46 + v51);
          v26.i8[0] = *(v47 + v51);
          v52 = v25.u32[0];
          *v26.i32 = v26.u32[0] - v52;
          *v25.i32 = v52 + (*(v36 + 4 * v51) * *v26.i32);
          *(v46 + v51++) = *v25.i32;
        }

        while (v35 != v51);
      }

      if (v50 > 0)
      {
        memcpy((v46 + v35), (v47 + v35), v50);
        v31 = v102;
      }

      if (v44)
      {
        v59 = a8;
      }

      else
      {
        if (v106)
        {
          v53 = 0;
          do
          {
            v54 = (v48 + v53);
            v25.i8[0] = *(v48 + v53);
            v55 = v25.u32[0];
            v26.i8[0] = *(v49 + v53);
            *&v56 = v26.u32[0] - v55;
            *&v57 = v55 + (*(v36 + 4 * v53) * *&v56);
            *v54 = *&v57;
            LOBYTE(v57) = *(v48 + v53 + 1);
            v58 = v57;
            LOBYTE(v56) = *(v49 + v53 + 1);
            *v26.i32 = v56 - v58;
            *v25.i32 = v58 + (*(v36 + 4 * v53) * *v26.i32);
            v54[1] = *v25.i32;
            v53 += 2;
          }

          while (v53 < v35);
        }

        if (v50 > 0)
        {
          memcpy((v48 + v35), (v49 + v35), v50);
          v31 = v102;
        }

        v48 += v31;
        v59 = a8;
        v49 += a8;
      }

      v46 += v31;
      v47 += v59;
      ++v44;
    }

    while (v44 != v104);
    v43 = v100;
    v28 = a8;
    v21 = v92;
    v29 = v96;
    a10 = v88;
  }

LABEL_38:
  v60 = *(a1 + 72);
  v61 = *(a1 + 128) + v60 * v98;
  v62 = a10 + v21 * v28;
  v63 = v43 - v95;
  v64 = v29;
  if (v98 < v29)
  {
    v65 = v98;
    do
    {
      if (v65 <= v18)
      {
        memcpy((v61 + v95), (v62 + v97), v63 + 1);
        v29 = v64;
        v62 += v28;
        v60 = *(a1 + 72);
      }

      v61 += v60;
      ++v65;
    }

    while (v29 != v65);
  }

  if (v94 + 1 <= v18)
  {
    v66 = (v62 + v97);
    v67 = v94 + 1;
    do
    {
      memcpy((v61 + v95), v66, v63 + 1);
      v61 += *(a1 + 72);
      ++v67;
      v66 += v28;
    }

    while (v67 <= v18);
  }

  if (a11)
  {
    v68 = (v98 + 1) >> 1;
    v69 = v64 + 1;
    v107 = (v94 + 1) >> 1;
    v70 = (v18 + 1) >> 1;
    v71 = (v95 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v72 = (v97 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v73 = *(a1 + 104);
    v74 = *(a1 + 136) + v73 * v68;
    v75 = a11 + ((v92 + 1) >> 1) * v93;
    v76 = v100 - v71 + 1;
    if (v68 < v69 >> 1)
    {
      v77 = v69 >> 1;
      do
      {
        if (v68 <= v70)
        {
          memcpy((v74 + v71), (v75 + v72), v76 | 1);
          v75 += v93;
          v73 = *(a1 + 104);
        }

        v74 += v73;
        ++v68;
      }

      while (v77 != v68);
    }

    v78 = v70 > v107;
    v79 = v70 - v107;
    if (v78)
    {
      v80 = (v75 + v72);
      do
      {
        memcpy((v74 + v71), v80, v76 | 1);
        v74 += *(a1 + 104);
        v80 += v93;
        --v79;
      }

      while (v79);
    }
  }

  v81 = *(a1 + 272);
  v82 = *(a1 + 204);
  if (v81 >= v82)
  {
    v81 = *(a1 + 204);
  }

  *(a1 + 272) = v81;
  v83 = *(a1 + 248);
  v84 = *(a1 + 192);
  if (v83 >= v84)
  {
    v83 = *(a1 + 192);
  }

  *(a1 + 248) = v83;
  v85 = *(a1 + 196);
  v86.i64[0] = v85;
  v86.i64[1] = SHIDWORD(v85);
  *(a1 + 256) = vbslq_s8(vcgtq_u64(*(a1 + 256), v86), *(a1 + 256), v86);
  *(a1 + 160) = v84;
  result = vextq_s8(v86, v86, 8uLL);
  *(a1 + 168) = result;
  *(a1 + 184) = v82;
  ++*(a1 + 112);
  return result;
}

void Blending_reset_v2(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  *(a1 + 264) = 0;
  *(a1 + 272) = v2;
  *(a1 + 248) = v3;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  if (*(a1 + 144) == 1)
  {
    ACTLogMessageImp(1, "Blending_reset - padding start to %d", 32);
    *(a1 + 160) = 32;
    *(a1 + 176) = 32;
  }

  bzero(*(a1 + 128), *(a1 + 64));
  memset(*(a1 + 136), 128, *(a1 + 96));
  v4 = *(a1 + 120);

  Stitcher_reset_v2(v4);
}

void *BlendingCtrl_zero()
{
  v0 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (v0)
  {
    v1 = malloc_type_calloc(1uLL, 0x140uLL, 0x1030040F50785DDuLL);
    *v0 = v1;
    if (!v1)
    {
      free(v0);
      return 0;
    }
  }

  return v0;
}

void BlendingCtrl_createBlendingContext(void ***a1, int a2, uint64_t a3, int a4, size_t a5, uint64_t a6, uint64_t a7)
{
  pixelBufferOut[2] = *MEMORY[0x277D85DE8];
  v13 = BlendingCtrl_zero();
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  v15 = *v13;
  *(v15 + 8) = a4;
  *(v15 + 70) = 0;
  *(v15 + 14) = a5;
  *(v15 + 15) = a6;
  *(v15 + 16) = a7;
  v16 = a1[1];
  if (v16 && (v17 = *(v16 + 26), (v17 | 2) == 3))
  {
    v18 = 1;
    ACTLogMessageImp(1, "mode = %d: padding buffer to %d", v17, ((a2 + 63) & 0xFFFFFFC0) + 64);
  }

  else
  {
    v18 = 0;
  }

  theDict = 0;
  FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  v19 = *MEMORY[0x277CBECE8];
  cf = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, 0);
  CFRelease(0);
  Value = CFDictionaryGetValue(cf, *MEMORY[0x277CC4D78]);
  valuePtr = 768;
  v21 = CFNumberCreate(v19, kCFNumberSInt32Type, &valuePtr);
  CFArraySetValueAtIndex(Value, 0, v21);
  CFRelease(v21);
  applyWiringAssertionToProperties(&cf);
  IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
  CFRelease(cf);
  if (IOSurfaceBackedCVPixelBufferWithAttributes)
  {
    goto LABEL_7;
  }

  v50 = a5;
  CVPixelBufferLockBaseAddress(*v15, 0);
  *(v15 + 8) = 1;
  *(v15 + 5) = 0;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*v15, 0);
  v24 = CVPixelBufferGetBaseAddressOfPlane(*v15, 1uLL);
  *(v15 + 2) = CVPixelBufferGetWidth(*v15);
  *(v15 + 3) = CVPixelBufferGetHeight(*v15);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*v15, 1uLL);
  v26 = (*(v15 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*v15, 0);
  v28 = CVPixelBufferGetBytesPerRowOfPlane(*v15, 1uLL);
  v29 = *(v15 + 2);
  if (v18)
  {
    v29 -= 64;
    *(v15 + 2) = v29;
    v26 -= 64;
  }

  v30 = Blending_constructor(BaseAddressOfPlane, v29, *(v15 + 3), BytesPerRowOfPlane, v24, v26, HeightOfPlane, v28, *(v15 + 14), *(v15 + 15), *(v15 + 29));
  *(v15 + 27) = v30;
  if (!v30)
  {
    goto LABEL_7;
  }

  *(v30 + 144) = v18;
  v56 = 2;
  values = CFNumberCreate(v19, kCFNumberSInt32Type, &v56);
  v31 = MEMORY[0x277CBF138];
  v32 = MEMORY[0x277CBF150];
  v33 = CFDictionaryCreate(v19, MEMORY[0x277CC4E50], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(values);
  Mutable = CFDictionaryCreateMutable(0, 0, v31, v32);
  pixelBufferAttributes = Mutable;
  v35 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v53 = 875704422;
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v53);
  CFArrayAppendValue(v35, v36);
  CFRelease(v36);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v35);
  CFRelease(v35);
  v37 = *(v15 + 14);
  v51 = *(v15 + 15);
  v52 = v37;
  v38 = CFNumberCreate(v19, kCFNumberSInt32Type, &v52);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4EC8], v38);
  CFRelease(v38);
  v39 = CFNumberCreate(v19, kCFNumberSInt32Type, &v51);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DD8], v39);
  CFRelease(v39);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4F68], *MEMORY[0x277CBED28]);
  IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(1);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  applyWiringAssertionToProperties(&pixelBufferAttributes);
  CVPixelBufferPoolCreate(v19, v33, pixelBufferAttributes, v15 + 6);
  CFRelease(v33);
  CFRelease(pixelBufferAttributes);
  pixelBufferOut[0] = 0;
  pixelBufferOut[1] = 0;
  if (v56 >= 1)
  {
    v41 = 0;
    v42 = pixelBufferOut;
    do
    {
      CVPixelBufferPoolCreatePixelBuffer(v19, *(v15 + 6), v42);
      CVPixelBufferLockBaseAddress(*v42, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(*v42);
      DataSize = CVPixelBufferGetDataSize(*v42);
      bzero(BaseAddress, DataSize);
      v45 = *v42++;
      CVPixelBufferUnlockBaseAddress(v45, 0);
      ++v41;
    }

    while (v41 < v56);
    if (v56 >= 1)
    {
        ;
      }
    }
  }

  v47 = PixelShuffler_constructor(v50, *(v15 + 15));
  *(v15 + 28) = v47;
  if (v47 && (CVPixelBufferUnlockBaseAddress(*v15, 0), *(v15 + 8) = 0, !VTImageRotationSessionCreate()) && (v48 = FlareDetector_constructor(), (*(v15 + 37) = v48) != 0) && (v49 = BlendingDefaults_constructor(), (*(v15 + 38) = v49) != 0))
  {
    *a1 = v14;
    *(v15 + 39) = a1;
  }

  else
  {
LABEL_7:
    BlendingCtrl_deleteBlendingContext(v14);
    *a1 = 0;
  }
}

void BlendingCtrl_deleteBlendingContext(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      CVPixelBufferUnlockBaseAddress(v3, 0);
      *(v2 + 8) = 0;
      CVPixelBufferRelease(*v2);
    }

    v4 = v2[5];
    if (v4)
    {
      CVPixelBufferUnlockBaseAddress(v4, 1uLL);
      CVPixelBufferRelease(v2[5]);
      v2[5] = 0;
    }

    v5 = v2[6];
    if (v5)
    {
      CVPixelBufferPoolRelease(v5);
      v2[6] = 0;
    }

    v6 = v2[27];
    if (v6)
    {
      Blending_destructor(v6);
    }

    v7 = v2[28];
    if (v7)
    {
      PixelShuffler_destructor(v7);
    }

    v8 = v2[36];
    if (v8)
    {
      VTPixelRotationSessionInvalidate(v8);
      VTImageRotationSessionRelease();
    }

    v9 = v2[37];
    if (v9)
    {
      FlareDetector_destructor(v9);
    }

    v10 = v2[38];
    if (v10)
    {
      BlendingDefaults_destructor(v10);
    }

    if (*a1)
    {
      free(*a1);
    }

    free(a1);
  }
}

const __CFNumber *BlendingCtrl_setOptions(const __CFNumber *result, const __CFDictionary *a2)
{
  if (result)
  {
    if (a2)
    {
      return PixelShuffler_setOptions(*(*result + 224), a2);
    }
  }

  return result;
}

uint64_t BlendingCtrl_initSlice(void *a1, size_t a2, size_t a3)
{
  v5 = *a1;
  v6 = (*a1 + 40);
  if (*v6)
  {
    CVPixelBufferUnlockBaseAddress(*v6, 1uLL);
    CVPixelBufferRelease(*v6);
    *v6 = 0;
  }

  if (*(v5 + 72) == a2 && *(v5 + 80) == a3)
  {
    CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(v5 + 48), v6);
  }

  else
  {
    pixelBufferAttributes = 0;
    applyWiringAssertionToProperties(&pixelBufferAttributes);
    if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], a2, a3, *(v5 + 32), pixelBufferAttributes, v6))
    {
      CVPixelBufferUnlockBaseAddress(*v6, 1uLL);
      CVPixelBufferRelease(*v6);
      *v6 = 0;
      return 0xFFFFFFFFLL;
    }

    if (pixelBufferAttributes)
    {
      CFRelease(pixelBufferAttributes);
    }
  }

  CVPixelBufferLockBaseAddress(*(v5 + 40), 1uLL);
  *(v5 + 56) = CVPixelBufferGetBaseAddressOfPlane(*(v5 + 40), 0);
  *(v5 + 64) = CVPixelBufferGetBaseAddressOfPlane(*(v5 + 40), 1uLL);
  *(v5 + 72) = CVPixelBufferGetWidthOfPlane(*(v5 + 40), 0);
  *(v5 + 80) = CVPixelBufferGetHeightOfPlane(*(v5 + 40), 0);
  *(v5 + 88) = CVPixelBufferGetBytesPerRowOfPlane(*(v5 + 40), 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v5 + 40), 1uLL);
  result = 0;
  *(v5 + 96) = BytesPerRowOfPlane;
  return result;
}

void BlendingCtrl_resetBlendingContext(uint64_t *a1)
{
  v1 = *a1;
  Blending_reset(*(*a1 + 216));
  *(v1 + 248) = 0;
  v1 += 248;
  *(v1 + 32) = 0;
  *(v1 - 8) = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 21) = 0;
}

float BlendingCtrl_Roi(uint64_t *a1, CVPixelBufferRef pixelBuffer)
{
  v3 = *a1;
  *(v3 + 200) = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  *(v3 + 208) = Height;
  v5 = *(v3 + 200);
  v6 = *(v3 + 128);
  v9 = vandq_s8(*(v3 + 112), vdupq_n_s64(0xFFFFFFFFFFFFFFFELL));
  *(v3 + 152) = vextq_s8(v9, v9, 8uLL);
  v7 = v9.i64[0];
  v8 = ((v5 - v9.i64[1]) >> 1) & 0x7FFFFFFFFFFFFFFELL;
  *(v3 + 136) = v8;
  *(v3 + 144) = v6;
  *v9.i8 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(v9)), 0x3F0000003F000000);
  *(v3 + 104) = v9.i64[0];
  if (*(v3 + 240) < 1)
  {
    v11 = *(v3 + 280);
    if (v11 == 2)
    {
      *(v3 + 160) = v6 + v7;
      *v9.i32 = vcvts_n_f32_u64(Height, 1uLL);
      *(v3 + 104) = v9.i32[0];
      *(v3 + 144) = 0;
      return *v9.i32;
    }

    if (v11 == 1)
    {
      *(v3 + 160) = Height - v6;
      *v9.i32 = vcvts_n_f32_u64(Height, 1uLL);
      *(v3 + 104) = v9.i32[0];
      return *v9.i32;
    }
  }

  else
  {
    if (!*(v3 + 272))
    {
      return *v9.i32;
    }

    *(v3 + 168) = v8;
    *(v3 + 184) = v9.i64[1];
    v10 = *(v3 + 280);
    if (v10 == 2)
    {
      v12 = v6 + v7;
      *(v3 + 176) = v12;
      v6 = Height - v12;
      goto LABEL_13;
    }

    if (v10 == 1)
    {
      *(v3 + 176) = 0;
LABEL_13:
      *(v3 + 192) = v6;
      return *v9.i32;
    }
  }

  puts("ERROR: panorama direction unknown");
  return *v9.i32;
}

uint64_t BlendingCtrl_blendSlice(uint64_t *a1, CFDictionaryRef theDict)
{
  v3 = *a1;
  valuePtr = 3;
  v30 = 0;
  Value = CFDictionaryGetValue(theDict, @"ACTRegistrationTransformationKey");
  if (Value)
  {
    BytePtr = CFDataGetBytePtr(Value);
    v6 = *(BytePtr + 4);
    v7 = *(BytePtr + 5);
  }

  else
  {
    v6 = *(MEMORY[0x277CBF2C0] + 32);
    v7 = *(MEMORY[0x277CBF2C0] + 40);
  }

  v8 = CFDictionaryGetValue(theDict, @"ACTRegistrationWasFallbackInvokedKey");
  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
    v9 = valuePtr == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = CFDictionaryGetValue(theDict, @"ID");
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberIntType, &v30);
  }

  v13 = v7;
  v14 = v6;
  v15 = *(v3 + 112);
  if (v13 > v15)
  {
    v13 = v15;
  }

  if (v13 < -v15)
  {
    v13 = -v15;
  }

  if (*(v3 + 284))
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  if (*(v3 + 280) == 2)
  {
    v17 = -v13;
  }

  else
  {
    v17 = v13;
  }

  if ((*(v3 + 8) & 1) == 0)
  {
    CVPixelBufferLockBaseAddress(*v3, 0);
    *(v3 + 8) = 1;
  }

  v18 = -v14;
  v20 = *(v3 + 152);
  v19 = *(v3 + 160);
  if (*(v3 + 240) >= 1)
  {
    v12.i32[0] = *(v3 + 104);
    *&v11 = v17;
    if (!Blending_overlap(*(v3 + 216), *(v3 + 160), *(v3 + 152), *(v3 + 272), v11, v18, v12, *(v3 + 108)))
    {
      goto LABEL_29;
    }

    CVPixelBufferRelease(*(v3 + 264));
    v21 = *(v3 + 256);
    *(v3 + 264) = v21;
    CVPixelBufferRetain(v21);
  }

  v28 = 0.0;
  Attachment = CVBufferGetAttachment(*(v3 + 40), *MEMORY[0x277CF4910], 0);
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberFloatType, &v28);
  }

  v23 = *(v3 + 240);
  if (v23 >= 1)
  {
    SNR = getSNR(*(v3 + 264));
    *&v25 = v17;
    *&v26 = v18;
    Blending_addImage(*(v3 + 216), v25, v26, SNR, v28, v19, v20, *(v3 + 88), *(v3 + 96), *(v3 + 56), *(v3 + 64), v16, v30);
    v23 = *(v3 + 240);
  }

  *(v3 + 240) = v23 + 1;
LABEL_29:
  CVPixelBufferRelease(*(v3 + 256));
  *(v3 + 256) = 0;
  return 0;
}

float getSNR(const void *a1)
{
  valuePtr = -1082130432;
  v1 = CMGetAttachment(a1, @"MetadataDictionary", 0);
  v2 = -1.0;
  if (v1)
  {
    Value = CFDictionaryGetValue(v1, @"SNR");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
      return *&valuePtr;
    }
  }

  return v2;
}

uint64_t BlendingCtrl_cropAndRotateSlice(uint64_t *a1, __CVBuffer *a2)
{
  v4 = *a1;
  HostTime = ACT_getHostTime();
  valuePtr = -1;
  Attachment = CVBufferGetAttachment(a2, @"ID", 0);
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr);
  }

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  if ((*(v4 + 8) & 1) == 0)
  {
    CVPixelBufferLockBaseAddress(*v4, 0);
    *(v4 + 8) = 1;
  }

  v7 = CVBufferGetAttachment(a2, @"MetadataDictionary", 0);
  v8 = v7;
  v68 = 1.0;
  if (v7 && (v9 = CFDictionaryGetValue(v7, *MEMORY[0x277CF4910])) != 0)
  {
    v67 = 0;
    CFNumberGetValue(v9, kCFNumberIntType, &v67);
    v68 = 256.0 / v67;
    Value = CFDictionaryGetValue(v8, *MEMORY[0x277CF4EC0]);
    if (Value)
    {
      v11 = 0;
      v60 = CFBooleanGetValue(Value) != 0;
    }

    else
    {
      v60 = 0;
      v11 = 0;
    }
  }

  else
  {
    v60 = 1;
    v11 = 1;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v12 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v14 = *(v4 + 200);
  v13 = *(v4 + 208);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v16 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
  if (BlendingCtrl_initSlice(a1, *(v4 + 160), *(v4 + 152)) == -1)
  {
    v20 = "ERROR: Cannot reallocate the slice for new dimensions";
LABEL_18:
    puts(v20);
    v21 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  if (PixelShuffler_init(*(v4 + 224), BytesPerRowOfPlane, v13) == -1)
  {
    v20 = "ERROR: Cannot reallocate pixel shuffler";
    goto LABEL_18;
  }

  if (*(v4 + 240) >= 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CVPixelBufferUnlockBaseAddress(*(v4 + 40), 0);
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    CVBufferPropagateAttachments(a2, *(v4 + 40));
    v18 = *(v4 + 280);
    if (v18 == 1)
    {
      v19 = MEMORY[0x277CBED10];
    }

    else
    {
      if (v18 != 2)
      {
        puts("ERROR: panorama direction unknown");
LABEL_54:
        v21 = 0;
        goto LABEL_70;
      }

      v19 = MEMORY[0x277CBED28];
    }

    MEMORY[0x23EED2570](*(v4 + 288), *MEMORY[0x277CE2808], *v19);
    MEMORY[0x23EED2580](*(v4 + 288), a2, *(v4 + 40), *(v4 + 136), *(v4 + 144), *(v4 + 152), *(v4 + 160), 0.0, 0.0, *(v4 + 160), *(v4 + 152));
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    CVPixelBufferLockBaseAddress(*(v4 + 40), 0);
    *(v4 + 56) = CVPixelBufferGetBaseAddressOfPlane(*(v4 + 40), 0);
    *(v4 + 64) = CVPixelBufferGetBaseAddressOfPlane(*(v4 + 40), 1uLL);
    v29 = valuePtr;
    v30 = ACT_getHostTime();
    ACTLogMessageImp(1, "{Blending%d|blendingCtrl_cropAndRotateSliceBeforeExposureBlendingTook:%f}", v29, v30 - HostTime);
    v31 = ACT_getHostTime();
    if ((v11 & 1) == 0)
    {
      v32 = v31;
      if (v68 != 1.0 || *(v4 + 284) == 1)
      {
        v66 = 1;
        v67 = 1;
        v64 = 1;
        v65 = 1;
        v62 = 1;
        v63 = 1;
        v33 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49D8]);
        if (v33)
        {
          CFNumberGetValue(v33, kCFNumberIntType, &v67);
        }

        v34 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49A8]);
        if (v34)
        {
          CFNumberGetValue(v34, kCFNumberIntType, &v66);
        }

        else
        {
          v66 = v67;
        }

        v35 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49B0]);
        if (v35)
        {
          CFNumberGetValue(v35, kCFNumberIntType, &v65);
        }

        v36 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49A0]);
        if (v36)
        {
          CFNumberGetValue(v36, kCFNumberIntType, &v64);
        }

        else
        {
          v64 = v65;
        }

        v37 = CFDictionaryGetValue(v8, *MEMORY[0x277CF4978]);
        if (v37)
        {
          CFNumberGetValue(v37, kCFNumberIntType, &v63);
        }

        v38 = CFDictionaryGetValue(v8, *MEMORY[0x277CF4998]);
        if (v38)
        {
          CFNumberGetValue(v38, kCFNumberIntType, &v62);
        }

        else
        {
          v62 = v63;
        }

        if (v60)
        {
          PixelShuffler_yuv420ExposureMap();
        }

        v39 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &v68);
        CVBufferSetAttachment(*(v4 + 40), *MEMORY[0x277CF4910], v39, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v39);
        v40 = v68;
        LODWORD(v39) = valuePtr;
        v41 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Blending%d|exposureRatio:%f}{Blending%d|exposureBlendingTook:%f}", v39, v40, v39, v41 - v32);
      }
    }

    v42 = CFAbsoluteTimeGetCurrent();
    Blending_storeM2MTime(*(v4 + 216), v42 - Current);
    IOSurface = CVPixelBufferGetIOSurface(a2);
    v44 = CVPixelBufferGetIOSurface(*(v4 + 40));
    LODWORD(IOSurface) = IOSurfaceGetID(IOSurface);
    ID = IOSurfaceGetID(v44);
    Blending_storeIOSurfaceIDs(*(v4 + 216), IOSurface, ID);
    goto LABEL_54;
  }

  v22 = valuePtr;
  v23 = ACT_getHostTime();
  ACTLogMessageImp(1, "{Blending%d|blendingCtrl_cropAndRotateSliceBeforeExposureBlendingTook:%f}", v22, v23 - HostTime);
  if (*(*(v4 + 216) + 144))
  {
    v24 = 32.0;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = ACT_getHostTime();
  if ((v11 & 1) == 0)
  {
    v26 = v25;
    if (v68 != 1.0 || *(v4 + 284) == 1)
    {
      v66 = 1;
      v67 = 1;
      v64 = 1;
      v65 = 1;
      v62 = 1;
      v63 = 1;
      v27 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49D8]);
      if (v27)
      {
        CFNumberGetValue(v27, kCFNumberIntType, &v67);
      }

      v28 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49A8]);
      if (v28)
      {
        CFNumberGetValue(v28, kCFNumberIntType, &v66);
      }

      else
      {
        v66 = v67;
      }

      v46 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49B0]);
      if (v46)
      {
        CFNumberGetValue(v46, kCFNumberIntType, &v65);
      }

      v47 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49A0]);
      if (v47)
      {
        CFNumberGetValue(v47, kCFNumberIntType, &v64);
      }

      else
      {
        v64 = v65;
      }

      v48 = CFDictionaryGetValue(v8, *MEMORY[0x277CF4978]);
      if (v48)
      {
        CFNumberGetValue(v48, kCFNumberIntType, &v63);
      }

      v49 = CFDictionaryGetValue(v8, *MEMORY[0x277CF4998]);
      if (v49)
      {
        CFNumberGetValue(v49, kCFNumberIntType, &v62);
      }

      else
      {
        v62 = v63;
      }

      if (v60)
      {
        PixelShuffler_yuv420ExposureMap();
      }

      v50 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &v68);
      CVBufferSetAttachment(*(v4 + 40), *MEMORY[0x277CF4910], v50, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v50);
      v51 = v68;
      LODWORD(v50) = valuePtr;
      v52 = ACT_getHostTime();
      ACTLogMessageImp(1, "{Blending%d|exposureRatio:%f}{Blending%d|exposureBlendingTook:%f}", v50, v51, v50, v52 - v26);
    }
  }

  v53 = ACT_getHostTime();
  v54.i32[0] = *(v4 + 104);
  v55 = *(v4 + 136);
  *&v55 = v24;
  Blending_start(*(v4 + 216), *(v4 + 288), a2, *v4, *&v55, 0.0, v54, *(v4 + 108), v14, v13, BytesPerRowOfPlane, v16, BaseAddressOfPlane, v12, *(v4 + 224), *(v4 + 280), v59, *(v4 + 136), HIDWORD(*(v4 + 136)), *(v4 + 144), HIDWORD(*(v4 + 136)), *(v4 + 152), *(v4 + 160));
  v56 = valuePtr;
  v57 = ACT_getHostTime();
  ACTLogMessageImp(1, "{Blending%d|Blending_startTook:%f}", v56, v57 - v53);
  v21 = 0;
  ++*(v4 + 240);
LABEL_70:
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return v21;
}

uint64_t BlendingCtrl_cropAndRotateBuffer(uint64_t *a1, CVPixelBufferRef texture)
{
  if (!texture)
  {
    return 0;
  }

  v4 = *a1;
  if (*(*a1 + 240))
  {
    goto LABEL_5;
  }

  if (*(v4 + 280))
  {
    *(v4 + 248) = 0;
LABEL_5:
    CVPixelBufferRelease(*(v4 + 256));
    *(v4 + 256) = texture;
    CVPixelBufferRetain(texture);
    BlendingCtrl_Roi(a1, texture);
    if (BlendingCtrl_cropAndRotateSlice(a1, texture) != -1)
    {
      return *(v4 + 40);
    }

    return 0;
  }

  *(v4 + 248) = texture;
  CVPixelBufferRetain(texture);
  return 0;
}

uint64_t BlendingCtrl_blendSliceIntoContext(uint64_t *a1, const __CFDictionary *a2)
{
  if (*(*a1 + 240))
  {
    BlendingCtrl_blendSlice(a1, a2);
  }

  return 0;
}

uint64_t BlendingCtrl_finishBlending(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 264);
  if (!v2)
  {
    goto LABEL_33;
  }

  if (*(v1 + 240))
  {
    *(v1 + 272) = 1;
    BlendingCtrl_Roi(a1, v2);
    if (!*(v1 + 192))
    {
LABEL_33:
      v10 = 0;
      goto LABEL_34;
    }

    Attachment = CVBufferGetAttachment(*(v1 + 264), @"MetadataDictionary", 0);
    LODWORD(v43) = 1065353216;
    if (Attachment && (v4 = Attachment, v5 = *MEMORY[0x277CF4910], (v6 = CFDictionaryGetValue(Attachment, *MEMORY[0x277CF4910])) != 0))
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      v7 = 256.0 / valuePtr;
      *&v43 = v7;
      Value = CFDictionaryGetValue(v4, *MEMORY[0x277CF4EC0]);
      if (Value)
      {
        v9 = CFBooleanGetValue(Value) != 0;
      }

      else
      {
        v9 = 0;
      }

      HostTime = ACT_getHostTime();
      if (v7 != 1.0 || *(v1 + 284) == 1)
      {
        LODWORD(valuePtr) = 1;
        LODWORD(v41) = 1;
        LODWORD(v40) = 1;
        v46 = 1;
        v47 = 1;
        v45 = 1;
        v12 = CFDictionaryGetValue(v4, *MEMORY[0x277CF49D8]);
        if (v12)
        {
          CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
        }

        v13 = CFDictionaryGetValue(v4, *MEMORY[0x277CF49A8]);
        if (v13)
        {
          CFNumberGetValue(v13, kCFNumberIntType, &v41);
        }

        else
        {
          LODWORD(v41) = valuePtr;
        }

        v14 = CFDictionaryGetValue(v4, *MEMORY[0x277CF49B0]);
        if (v14)
        {
          CFNumberGetValue(v14, kCFNumberIntType, &v40);
        }

        v15 = CFDictionaryGetValue(v4, *MEMORY[0x277CF49A0]);
        if (v15)
        {
          CFNumberGetValue(v15, kCFNumberIntType, &v47);
        }

        else
        {
          v47 = v40;
        }

        v16 = CFDictionaryGetValue(v4, *MEMORY[0x277CF4978]);
        if (v16)
        {
          CFNumberGetValue(v16, kCFNumberIntType, &v46);
        }

        v17 = CFDictionaryGetValue(v4, *MEMORY[0x277CF4998]);
        if (v17)
        {
          CFNumberGetValue(v17, kCFNumberIntType, &v45);
          if (!v9)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v45 = v46;
          if (!v9)
          {
LABEL_30:
            v18 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &v43);
            CVBufferSetAttachment(*(v1 + 264), v5, v18, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v18);
            v44 = 0;
            v19 = CVBufferGetAttachment(*(v1 + 264), @"ID", 0);
            if (v19)
            {
              CFNumberGetValue(v19, kCFNumberIntType, &v44);
              v20 = *&v43;
              v21 = v44;
              v22 = ACT_getHostTime();
              ACTLogMessageImp(1, "{Blending%d|exposureRatio:%f}{Blending%d|exposureBlendingTook:%f}", v21, v20, v21, v22 - HostTime);
            }

            goto LABEL_32;
          }
        }

        PixelShuffler_yuv420ExposureMap();
        goto LABEL_30;
      }
    }

    else
    {
      ACT_getHostTime();
    }

LABEL_32:
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(v1 + 264), 0);
    v24 = CVPixelBufferGetBaseAddressOfPlane(*(v1 + 264), 1uLL);
    v25 = *(v1 + 200);
    v26 = *(v1 + 208);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v1 + 264), 0);
    v28 = CVPixelBufferGetBytesPerRowOfPlane(*(v1 + 264), 1uLL);
    Blending_end(*(v1 + 216), *(v1 + 288), *(v1 + 224), *(v1 + 280), *(v1 + 264), *v1, v25, v26, BytesPerRowOfPlane, v28, BaseAddressOfPlane, v24, *(v1 + 168), HIDWORD(*(v1 + 168)), *(v1 + 176), HIDWORD(*(v1 + 168)), *(v1 + 184), HIDWORD(*(v1 + 184)), *(v1 + 192));
    goto LABEL_33;
  }

  if (!*(v1 + 280))
  {
    BlendingCtrl_setPanoramaDirection(a1, 1);
  }

  v10 = 0xFFFFFFFFLL;
LABEL_34:
  CVPixelBufferRelease(*(v1 + 264));
  *(v1 + 264) = 0;
  CVPixelBufferRelease(*(v1 + 256));
  *(v1 + 256) = 0;
  if (*(v1 + 280) == 2)
  {
    v29 = *(v1 + 8);
    if (!v29)
    {
      CVPixelBufferLockBaseAddress(*v1, 0);
      *(v1 + 8) = 1;
    }

    v30 = *(v1 + 312);
    v31 = *(v30 + 8);
    if (v31)
    {
      v32 = *(v31 + 104);
      if ((v32 - 3) < 6 || v32 == 1)
      {
        v34 = *(v1 + 216);
        v35 = v34[32];
        v43 = v34[31];
        v37 = v34[33];
        v36 = v34[34];
        v41 = v35 - v43 + 1;
        valuePtr = v37;
        v40 = v36 - v37;
        ACTFinalThreadedNoiseReduction(*(v30 + 16), &v43, &valuePtr, &v41, &v40);
      }
    }

    v38 = *(v1 + 216);
    valuePtr = v38[7];
    v43 = 0;
    PixelShuffler_yuv420FlipHorizontally(*v1, v38 + 31, v38 + 32, &v43, &valuePtr);
    if ((v29 & 1) == 0)
    {
      CVPixelBufferUnlockBaseAddress(*v1, 0);
      *(v1 + 8) = 0;
    }
  }

  CVPixelBufferUnlockBaseAddress(*v1, 0);
  *(v1 + 8) = 0;
  return v10;
}

void BlendingCtrl_setPanoramaDirection(uint64_t *a1, int a2)
{
  v2 = *a1;
  *(v2 + 280) = a2;
  v3 = *(v2 + 248);
  if (v3)
  {
    BlendingCtrl_Roi(a1, v3);
    BlendingCtrl_cropAndRotateSlice(a1, *(v2 + 248));
    CFRelease(*(v2 + 248));
    *(v2 + 248) = 0;
  }
}

uint64_t BlendingCtrl_getCroppingArea(uint64_t result, void *a2, void *a3, void *a4, void *a5)
{
  v5 = *(*result + 216);
  *a4 = v5[31];
  *a5 = v5[32];
  *a2 = v5[33];
  *a3 = v5[34];
  return result;
}

uint64_t BlendingCtrl_Defaults_setBlendingDefaults(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 4;
  }

  v3 = *a1;
  v4 = *(*a1 + 304);
  *v4 = (v2 >> 1) & 1;
  v4[1] = v2 & 1;
  v4[2] = (v2 >> 2) & 1;
  return Blending_setDefaults(*(v3 + 216), v4);
}

uint64_t BlendingCtrl_Defaults_getBlendingDefaults(uint64_t a1)
{
  v1 = *(*a1 + 304);
  v2 = v1[1];
  v3 = v2 == 0;
  v4 = v2 != 0;
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (*v1)
  {
    v4 = v5;
  }

  if (v1[2])
  {
    return v4 | 4u;
  }

  else
  {
    return v4;
  }
}

void *BlendingCtrl_zero_v2()
{
  v0 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (v0)
  {
    v1 = malloc_type_calloc(1uLL, 0x140uLL, 0x1030040F50785DDuLL);
    *v0 = v1;
    if (!v1)
    {
      free(v0);
      return 0;
    }
  }

  return v0;
}

void BlendingCtrl_createBlendingContext_v2(void ***a1, int a2, uint64_t a3, int a4, size_t a5, uint64_t a6, uint64_t a7, char a8)
{
  pixelBufferOut[2] = *MEMORY[0x277D85DE8];
  v15 = BlendingCtrl_zero_v2();
  v16 = v15;
  if (!v15)
  {
    goto LABEL_20;
  }

  v17 = *v15;
  *(v17 + 8) = a4;
  *(v17 + 70) = 0;
  *(v17 + 14) = a5;
  *(v17 + 15) = a6;
  *(v17 + 16) = a7;
  v18 = a1[1];
  if (!v18 || (v19 = *(v18 + 26), (v19 | 2) != 3))
  {
    v20 = 0;
    if ((a8 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v25 = 0;
    *v17 = 0;
    goto LABEL_9;
  }

  v20 = 1;
  ACTLogMessageImp(1, "mode = %d: padding buffer to %d", v19, ((a2 + 63) & 0xFFFFFFC0) + 64);
  if (a8)
  {
    goto LABEL_8;
  }

LABEL_5:
  theDict = 0;
  FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  v21 = *MEMORY[0x277CBECE8];
  cf = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, 0);
  CFRelease(0);
  Value = CFDictionaryGetValue(cf, *MEMORY[0x277CC4D78]);
  valuePtr = 768;
  v23 = CFNumberCreate(v21, kCFNumberSInt32Type, &valuePtr);
  CFArraySetValueAtIndex(Value, 0, v23);
  CFRelease(v23);
  applyWiringAssertionToProperties(&cf);
  IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
  CFRelease(cf);
  if (IOSurfaceBackedCVPixelBufferWithAttributes)
  {
    goto LABEL_20;
  }

  v25 = *v17;
LABEL_9:
  CVPixelBufferLockBaseAddress(v25, 0);
  *(v17 + 8) = 1;
  *(v17 + 5) = 0;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*v17, 0);
  v27 = CVPixelBufferGetBaseAddressOfPlane(*v17, 1uLL);
  *(v17 + 2) = CVPixelBufferGetWidth(*v17);
  *(v17 + 3) = CVPixelBufferGetHeight(*v17);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*v17, 1uLL);
  v29 = (*(v17 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*v17, 0);
  v31 = CVPixelBufferGetBytesPerRowOfPlane(*v17, 1uLL);
  v32 = *(v17 + 2);
  if (v20)
  {
    v32 -= 64;
    *(v17 + 2) = v32;
    v29 -= 64;
  }

  v33 = Blending_constructor_v2(BaseAddressOfPlane, v32, *(v17 + 3), BytesPerRowOfPlane, v27, v29, HeightOfPlane, v31, *(v17 + 14), *(v17 + 15), *(v17 + 29));
  *(v17 + 27) = v33;
  if (v33)
  {
    *(v33 + 144) = v20;
    v59 = 2;
    v34 = *MEMORY[0x277CBECE8];
    values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &v59);
    v35 = MEMORY[0x277CBF138];
    v36 = MEMORY[0x277CBF150];
    v37 = CFDictionaryCreate(v34, MEMORY[0x277CC4E50], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(values);
    Mutable = CFDictionaryCreateMutable(0, 0, v35, v36);
    pixelBufferAttributes = Mutable;
    v39 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v56 = 875704422;
    v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v56);
    CFArrayAppendValue(v39, v40);
    CFRelease(v40);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v39);
    CFRelease(v39);
    v41 = *(v17 + 14);
    v54 = *(v17 + 15);
    v55 = v41;
    v42 = CFNumberCreate(v34, kCFNumberSInt32Type, &v55);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4EC8], v42);
    CFRelease(v42);
    v43 = CFNumberCreate(v34, kCFNumberSInt32Type, &v54);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DD8], v43);
    CFRelease(v43);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4F68], *MEMORY[0x277CBED28]);
    IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(1);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], IOSurfacePropertiesDictionary);
    CFRelease(IOSurfacePropertiesDictionary);
    applyWiringAssertionToProperties(&pixelBufferAttributes);
    CVPixelBufferPoolCreate(v34, v37, pixelBufferAttributes, v17 + 6);
    CFRelease(v37);
    CFRelease(pixelBufferAttributes);
    pixelBufferOut[0] = 0;
    pixelBufferOut[1] = 0;
    if (v59 >= 1)
    {
      v45 = 0;
      v46 = pixelBufferOut;
      do
      {
        CVPixelBufferPoolCreatePixelBuffer(v34, *(v17 + 6), v46);
        CVPixelBufferLockBaseAddress(*v46, 0);
        BaseAddress = CVPixelBufferGetBaseAddress(*v46);
        DataSize = CVPixelBufferGetDataSize(*v46);
        bzero(BaseAddress, DataSize);
        v49 = *v46++;
        CVPixelBufferUnlockBaseAddress(v49, 0);
        ++v45;
      }

      while (v45 < v59);
      if (v59 >= 1)
      {
          ;
        }
      }
    }

    v51 = PixelShuffler_constructor(a5, *(v17 + 15));
    *(v17 + 28) = v51;
    if (v51)
    {
      CVPixelBufferUnlockBaseAddress(*v17, 0);
      *(v17 + 8) = 0;
      if (!VTImageRotationSessionCreate())
      {
        v52 = FlareDetector_constructor();
        *(v17 + 37) = v52;
        if (v52)
        {
          v53 = BlendingDefaults_constructor();
          *(v17 + 38) = v53;
          if (v53)
          {
            *a1 = v16;
            *(v17 + 39) = a1;
            return;
          }
        }
      }
    }
  }

LABEL_20:
  BlendingCtrl_deleteBlendingContext_v2(v16);
  *a1 = 0;
}

void BlendingCtrl_deleteBlendingContext_v2(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      CVPixelBufferUnlockBaseAddress(v3, 0);
      *(v2 + 8) = 0;
      CVPixelBufferRelease(*v2);
    }

    v4 = v2[5];
    if (v4)
    {
      CVPixelBufferUnlockBaseAddress(v4, 1uLL);
      CVPixelBufferRelease(v2[5]);
      v2[5] = 0;
    }

    v5 = v2[6];
    if (v5)
    {
      CVPixelBufferPoolRelease(v5);
      v2[6] = 0;
    }

    v6 = v2[27];
    if (v6)
    {
      Blending_destructor_v2(v6);
    }

    v7 = v2[28];
    if (v7)
    {
      PixelShuffler_destructor(v7);
    }

    v8 = v2[36];
    if (v8)
    {
      VTPixelRotationSessionInvalidate(v8);
      VTImageRotationSessionRelease();
    }

    v9 = v2[37];
    if (v9)
    {
      FlareDetector_destructor(v9);
    }

    v10 = v2[38];
    if (v10)
    {
      BlendingDefaults_destructor(v10);
    }

    if (*a1)
    {
      free(*a1);
    }

    free(a1);
  }
}

const __CFNumber *BlendingCtrl_setOptions_v2(const __CFNumber *result, const __CFDictionary *a2)
{
  if (result)
  {
    if (a2)
    {
      return PixelShuffler_setOptions(*(*result + 224), a2);
    }
  }

  return result;
}

uint64_t BlendingCtrl_initSlice_v2(void *a1, size_t a2, size_t a3)
{
  v5 = *a1;
  v6 = (*a1 + 40);
  if (*v6)
  {
    CVPixelBufferUnlockBaseAddress(*v6, 1uLL);
    CVPixelBufferRelease(*v6);
    *v6 = 0;
  }

  if (*(v5 + 72) == a2 && *(v5 + 80) == a3)
  {
    CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(v5 + 48), v6);
  }

  else
  {
    pixelBufferAttributes = 0;
    applyWiringAssertionToProperties(&pixelBufferAttributes);
    if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], a2, a3, *(v5 + 32), pixelBufferAttributes, v6))
    {
      CVPixelBufferUnlockBaseAddress(*v6, 1uLL);
      CVPixelBufferRelease(*v6);
      *v6 = 0;
      return 0xFFFFFFFFLL;
    }

    if (pixelBufferAttributes)
    {
      CFRelease(pixelBufferAttributes);
    }
  }

  CVPixelBufferLockBaseAddress(*(v5 + 40), 1uLL);
  *(v5 + 56) = CVPixelBufferGetBaseAddressOfPlane(*(v5 + 40), 0);
  *(v5 + 64) = CVPixelBufferGetBaseAddressOfPlane(*(v5 + 40), 1uLL);
  *(v5 + 72) = CVPixelBufferGetWidthOfPlane(*(v5 + 40), 0);
  *(v5 + 80) = CVPixelBufferGetHeightOfPlane(*(v5 + 40), 0);
  *(v5 + 88) = CVPixelBufferGetBytesPerRowOfPlane(*(v5 + 40), 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v5 + 40), 1uLL);
  result = 0;
  *(v5 + 96) = BytesPerRowOfPlane;
  return result;
}

void BlendingCtrl_resetBlendingContext_v2(uint64_t *a1)
{
  v1 = *a1;
  Blending_reset_v2(*(*a1 + 216));
  *(v1 + 248) = 0;
  v1 += 248;
  *(v1 + 32) = 0;
  *(v1 - 8) = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 21) = 0;
}

float BlendingCtrl_Roi_v2(uint64_t *a1, CVPixelBufferRef pixelBuffer)
{
  v3 = *a1;
  *(v3 + 200) = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  *(v3 + 208) = Height;
  v5 = *(v3 + 200);
  v6 = *(v3 + 128);
  v9 = vandq_s8(*(v3 + 112), vdupq_n_s64(0xFFFFFFFFFFFFFFFELL));
  *(v3 + 152) = vextq_s8(v9, v9, 8uLL);
  v7 = v9.i64[0];
  v8 = ((v5 - v9.i64[1]) >> 1) & 0x7FFFFFFFFFFFFFFELL;
  *(v3 + 136) = v8;
  *(v3 + 144) = v6;
  *v9.i8 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(v9)), 0x3F0000003F000000);
  *(v3 + 104) = v9.i64[0];
  if (*(v3 + 240) < 1)
  {
    v11 = *(v3 + 280);
    if (v11 == 2)
    {
      *(v3 + 160) = v6 + v7;
      *v9.i32 = vcvts_n_f32_u64(Height, 1uLL);
      *(v3 + 104) = v9.i32[0];
      *(v3 + 144) = 0;
      return *v9.i32;
    }

    if (v11 == 1)
    {
      *(v3 + 160) = Height - v6;
      *v9.i32 = vcvts_n_f32_u64(Height, 1uLL);
      *(v3 + 104) = v9.i32[0];
      return *v9.i32;
    }
  }

  else
  {
    if (!*(v3 + 272))
    {
      return *v9.i32;
    }

    *(v3 + 168) = v8;
    *(v3 + 184) = v9.i64[1];
    v10 = *(v3 + 280);
    if (v10 == 2)
    {
      v12 = v6 + v7;
      *(v3 + 176) = v12;
      v6 = Height - v12;
      goto LABEL_13;
    }

    if (v10 == 1)
    {
      *(v3 + 176) = 0;
LABEL_13:
      *(v3 + 192) = v6;
      return *v9.i32;
    }
  }

  puts("ERROR: panorama direction unknown");
  return *v9.i32;
}

uint64_t BlendingCtrl_blendSlice_v2(uint64_t *a1, CFDictionaryRef theDict)
{
  v3 = *a1;
  valuePtr = 3;
  v29 = 0;
  Value = CFDictionaryGetValue(theDict, @"ACTRegistrationTransformationKey");
  if (Value)
  {
    BytePtr = CFDataGetBytePtr(Value);
    v7 = *(BytePtr + 4);
    v6 = *(BytePtr + 5);
  }

  else
  {
    v7 = *(MEMORY[0x277CBF2C0] + 32);
    v6 = *(MEMORY[0x277CBF2C0] + 40);
  }

  v8 = CFDictionaryGetValue(theDict, @"ACTRegistrationWasFallbackInvokedKey");
  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
  }

  v9 = CFDictionaryGetValue(theDict, @"ID");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberIntType, &v29);
  }

  v10 = v6;
  v11 = *(v3 + 112);
  if (v10 > v11)
  {
    v10 = v11;
  }

  if (v10 < -v11)
  {
    v10 = -v11;
  }

  if (*(v3 + 280) == 2)
  {
    v12 = -v10;
  }

  else
  {
    v12 = v10;
  }

  if ((*(v3 + 8) & 1) == 0)
  {
    CVPixelBufferLockBaseAddress(*v3, 0);
    *(v3 + 8) = 1;
  }

  v14 = *(v3 + 152);
  v13 = *(v3 + 160);
  v15 = CFDictionaryGetValue(theDict, @"MetadataDictionary");
  if (!v15 || !CFDictionaryGetValue(v15, *MEMORY[0x277CF4B78]))
  {
    v18 = v7;
    v19 = -v18;
    if (*(v3 + 240) >= 1)
    {
      v17.i32[0] = *(v3 + 104);
      *&v16 = v12;
      if (!Blending_overlap_v2(*(v3 + 216), v13, v14, *(v3 + 272), v16, v19, v17, *(v3 + 108)))
      {
        goto LABEL_27;
      }

      CVPixelBufferRelease(*(v3 + 264));
      v20 = *(v3 + 256);
      *(v3 + 264) = v20;
      CVPixelBufferRetain(v20);
    }

    v27 = 0.0;
    Attachment = CVBufferGetAttachment(*(v3 + 40), *MEMORY[0x277CF4910], 0);
    if (Attachment)
    {
      CFNumberGetValue(Attachment, kCFNumberFloatType, &v27);
    }

    v22 = *(v3 + 240);
    if (v22 >= 1)
    {
      SNR_v2 = getSNR_v2(*(v3 + 264));
      *&v24 = v12;
      *&v25 = v19;
      Blending_addImage_v2(*(v3 + 216), v24, v25, SNR_v2, v27, v13, v14, *(v3 + 88), *(v3 + 96), *(v3 + 56), *(v3 + 64), 1, v29);
      v22 = *(v3 + 240);
    }

    *(v3 + 240) = v22 + 1;
  }

LABEL_27:
  CVPixelBufferRelease(*(v3 + 256));
  *(v3 + 256) = 0;
  return 0;
}

float getSNR_v2(const void *a1)
{
  valuePtr = -1082130432;
  v1 = CMGetAttachment(a1, @"MetadataDictionary", 0);
  v2 = -1.0;
  if (v1)
  {
    Value = CFDictionaryGetValue(v1, @"SNR");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
      return *&valuePtr;
    }
  }

  return v2;
}

uint64_t BlendingCtrl_cropAndRotateSlice_v2(uint64_t *a1, __CVBuffer *a2)
{
  v4 = *a1;
  HostTime = ACT_getHostTime();
  valuePtr = -1;
  Attachment = CVBufferGetAttachment(a2, @"ID", 0);
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr);
  }

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  if ((*(v4 + 8) & 1) == 0)
  {
    CVPixelBufferLockBaseAddress(*v4, 0);
    *(v4 + 8) = 1;
  }

  v7 = CVBufferGetAttachment(a2, @"MetadataDictionary", 0);
  v8 = v7;
  v68 = 1.0;
  if (v7 && (v9 = CFDictionaryGetValue(v7, *MEMORY[0x277CF4910])) != 0)
  {
    v67 = 0;
    CFNumberGetValue(v9, kCFNumberIntType, &v67);
    v68 = 256.0 / v67;
    Value = CFDictionaryGetValue(v8, *MEMORY[0x277CF4EC0]);
    if (Value)
    {
      v11 = 0;
      v60 = CFBooleanGetValue(Value) != 0;
    }

    else
    {
      v60 = 0;
      v11 = 0;
    }
  }

  else
  {
    v60 = 1;
    v11 = 1;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v12 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v14 = *(v4 + 200);
  v13 = *(v4 + 208);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v16 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
  if (BlendingCtrl_initSlice_v2(a1, *(v4 + 160), *(v4 + 152)) == -1)
  {
    v20 = "ERROR: Cannot reallocate the slice for new dimensions";
LABEL_18:
    puts(v20);
    v21 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  if (PixelShuffler_init(*(v4 + 224), BytesPerRowOfPlane, v13) == -1)
  {
    v20 = "ERROR: Cannot reallocate pixel shuffler";
    goto LABEL_18;
  }

  if (*(v4 + 240) >= 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CVPixelBufferUnlockBaseAddress(*(v4 + 40), 0);
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    CVBufferPropagateAttachments(a2, *(v4 + 40));
    v18 = *(v4 + 280);
    if (v18 == 1)
    {
      v19 = MEMORY[0x277CBED10];
    }

    else
    {
      if (v18 != 2)
      {
        puts("ERROR: panorama direction unknown");
LABEL_54:
        v21 = 0;
        goto LABEL_70;
      }

      v19 = MEMORY[0x277CBED28];
    }

    MEMORY[0x23EED2570](*(v4 + 288), *MEMORY[0x277CE2808], *v19);
    MEMORY[0x23EED2580](*(v4 + 288), a2, *(v4 + 40), *(v4 + 136), *(v4 + 144), *(v4 + 152), *(v4 + 160), 0.0, 0.0, *(v4 + 160), *(v4 + 152));
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    CVPixelBufferLockBaseAddress(*(v4 + 40), 0);
    *(v4 + 56) = CVPixelBufferGetBaseAddressOfPlane(*(v4 + 40), 0);
    *(v4 + 64) = CVPixelBufferGetBaseAddressOfPlane(*(v4 + 40), 1uLL);
    v29 = valuePtr;
    v30 = ACT_getHostTime();
    ACTLogMessageImp(1, "{Blending%d|blendingCtrl_cropAndRotateSliceBeforeExposureBlendingTook:%f}", v29, v30 - HostTime);
    v31 = ACT_getHostTime();
    if ((v11 & 1) == 0)
    {
      v32 = v31;
      if (v68 != 1.0 || *(v4 + 284) == 1)
      {
        v66 = 1;
        v67 = 1;
        v64 = 1;
        v65 = 1;
        v62 = 1;
        v63 = 1;
        v33 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49D8]);
        if (v33)
        {
          CFNumberGetValue(v33, kCFNumberIntType, &v67);
        }

        v34 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49A8]);
        if (v34)
        {
          CFNumberGetValue(v34, kCFNumberIntType, &v66);
        }

        else
        {
          v66 = v67;
        }

        v35 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49B0]);
        if (v35)
        {
          CFNumberGetValue(v35, kCFNumberIntType, &v65);
        }

        v36 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49A0]);
        if (v36)
        {
          CFNumberGetValue(v36, kCFNumberIntType, &v64);
        }

        else
        {
          v64 = v65;
        }

        v37 = CFDictionaryGetValue(v8, *MEMORY[0x277CF4978]);
        if (v37)
        {
          CFNumberGetValue(v37, kCFNumberIntType, &v63);
        }

        v38 = CFDictionaryGetValue(v8, *MEMORY[0x277CF4998]);
        if (v38)
        {
          CFNumberGetValue(v38, kCFNumberIntType, &v62);
        }

        else
        {
          v62 = v63;
        }

        if (v60)
        {
          PixelShuffler_yuv420ExposureMap();
        }

        v39 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &v68);
        CVBufferSetAttachment(*(v4 + 40), *MEMORY[0x277CF4910], v39, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v39);
        v40 = v68;
        LODWORD(v39) = valuePtr;
        v41 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Blending%d|exposureRatio:%f}{Blending%d|exposureBlendingTook:%f}", v39, v40, v39, v41 - v32);
      }
    }

    v42 = CFAbsoluteTimeGetCurrent();
    Blending_storeM2MTime_v2(*(v4 + 216), v42 - Current);
    IOSurface = CVPixelBufferGetIOSurface(a2);
    v44 = CVPixelBufferGetIOSurface(*(v4 + 40));
    LODWORD(IOSurface) = IOSurfaceGetID(IOSurface);
    ID = IOSurfaceGetID(v44);
    Blending_storeIOSurfaceIDs_v2(*(v4 + 216), IOSurface, ID);
    goto LABEL_54;
  }

  v22 = valuePtr;
  v23 = ACT_getHostTime();
  ACTLogMessageImp(1, "{Blending%d|blendingCtrl_cropAndRotateSliceBeforeExposureBlendingTook:%f}", v22, v23 - HostTime);
  if (*(*(v4 + 216) + 144))
  {
    v24 = 32.0;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = ACT_getHostTime();
  if ((v11 & 1) == 0)
  {
    v26 = v25;
    if (v68 != 1.0 || *(v4 + 284) == 1)
    {
      v66 = 1;
      v67 = 1;
      v64 = 1;
      v65 = 1;
      v62 = 1;
      v63 = 1;
      v27 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49D8]);
      if (v27)
      {
        CFNumberGetValue(v27, kCFNumberIntType, &v67);
      }

      v28 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49A8]);
      if (v28)
      {
        CFNumberGetValue(v28, kCFNumberIntType, &v66);
      }

      else
      {
        v66 = v67;
      }

      v46 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49B0]);
      if (v46)
      {
        CFNumberGetValue(v46, kCFNumberIntType, &v65);
      }

      v47 = CFDictionaryGetValue(v8, *MEMORY[0x277CF49A0]);
      if (v47)
      {
        CFNumberGetValue(v47, kCFNumberIntType, &v64);
      }

      else
      {
        v64 = v65;
      }

      v48 = CFDictionaryGetValue(v8, *MEMORY[0x277CF4978]);
      if (v48)
      {
        CFNumberGetValue(v48, kCFNumberIntType, &v63);
      }

      v49 = CFDictionaryGetValue(v8, *MEMORY[0x277CF4998]);
      if (v49)
      {
        CFNumberGetValue(v49, kCFNumberIntType, &v62);
      }

      else
      {
        v62 = v63;
      }

      if (v60)
      {
        PixelShuffler_yuv420ExposureMap();
      }

      v50 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &v68);
      CVBufferSetAttachment(*(v4 + 40), *MEMORY[0x277CF4910], v50, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v50);
      v51 = v68;
      LODWORD(v50) = valuePtr;
      v52 = ACT_getHostTime();
      ACTLogMessageImp(1, "{Blending%d|exposureRatio:%f}{Blending%d|exposureBlendingTook:%f}", v50, v51, v50, v52 - v26);
    }
  }

  v53 = ACT_getHostTime();
  v54.i32[0] = *(v4 + 104);
  v55 = *(v4 + 136);
  *&v55 = v24;
  Blending_start_v2(*(v4 + 216), *(v4 + 288), a2, *v4, *&v55, 0.0, v54, *(v4 + 108), v14, v13, BytesPerRowOfPlane, v16, BaseAddressOfPlane, v12, *(v4 + 224), *(v4 + 280), v59, *(v4 + 136), HIDWORD(*(v4 + 136)), *(v4 + 144), HIDWORD(*(v4 + 136)), *(v4 + 152), *(v4 + 160));
  v56 = valuePtr;
  v57 = ACT_getHostTime();
  ACTLogMessageImp(1, "{Blending%d|Blending_startTook:%f}", v56, v57 - v53);
  v21 = 0;
  ++*(v4 + 240);
LABEL_70:
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return v21;
}

uint64_t BlendingCtrl_cropAndRotateBuffer_v2(uint64_t *a1, CVPixelBufferRef texture)
{
  if (!texture)
  {
    return 0;
  }

  v4 = *a1;
  if (*(*a1 + 240))
  {
    goto LABEL_5;
  }

  if (*(v4 + 280))
  {
    *(v4 + 248) = 0;
LABEL_5:
    CVPixelBufferRelease(*(v4 + 256));
    *(v4 + 256) = texture;
    CVPixelBufferRetain(texture);
    BlendingCtrl_Roi_v2(a1, texture);
    if (BlendingCtrl_cropAndRotateSlice_v2(a1, texture) != -1)
    {
      return *(v4 + 40);
    }

    return 0;
  }

  *(v4 + 248) = texture;
  CVPixelBufferRetain(texture);
  return 0;
}

uint64_t BlendingCtrl_blendSliceIntoContext_v2(uint64_t *a1, const __CFDictionary *a2)
{
  if (*(*a1 + 240))
  {
    BlendingCtrl_blendSlice_v2(a1, a2);
  }

  return 0;
}

uint64_t BlendingCtrl_finishBlending_v2(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 264);
  if (!v2)
  {
    goto LABEL_33;
  }

  if (*(v1 + 240))
  {
    *(v1 + 272) = 1;
    BlendingCtrl_Roi_v2(a1, v2);
    if (!*(v1 + 192))
    {
LABEL_33:
      v10 = 0;
      goto LABEL_34;
    }

    Attachment = CVBufferGetAttachment(*(v1 + 264), @"MetadataDictionary", 0);
    LODWORD(v43) = 1065353216;
    if (Attachment && (v4 = Attachment, v5 = *MEMORY[0x277CF4910], (v6 = CFDictionaryGetValue(Attachment, *MEMORY[0x277CF4910])) != 0))
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      v7 = 256.0 / valuePtr;
      *&v43 = v7;
      Value = CFDictionaryGetValue(v4, *MEMORY[0x277CF4EC0]);
      if (Value)
      {
        v9 = CFBooleanGetValue(Value) != 0;
      }

      else
      {
        v9 = 0;
      }

      HostTime = ACT_getHostTime();
      if (v7 != 1.0 || *(v1 + 284) == 1)
      {
        LODWORD(valuePtr) = 1;
        LODWORD(v41) = 1;
        LODWORD(v40) = 1;
        v46 = 1;
        v47 = 1;
        v45 = 1;
        v12 = CFDictionaryGetValue(v4, *MEMORY[0x277CF49D8]);
        if (v12)
        {
          CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
        }

        v13 = CFDictionaryGetValue(v4, *MEMORY[0x277CF49A8]);
        if (v13)
        {
          CFNumberGetValue(v13, kCFNumberIntType, &v41);
        }

        else
        {
          LODWORD(v41) = valuePtr;
        }

        v14 = CFDictionaryGetValue(v4, *MEMORY[0x277CF49B0]);
        if (v14)
        {
          CFNumberGetValue(v14, kCFNumberIntType, &v40);
        }

        v15 = CFDictionaryGetValue(v4, *MEMORY[0x277CF49A0]);
        if (v15)
        {
          CFNumberGetValue(v15, kCFNumberIntType, &v47);
        }

        else
        {
          v47 = v40;
        }

        v16 = CFDictionaryGetValue(v4, *MEMORY[0x277CF4978]);
        if (v16)
        {
          CFNumberGetValue(v16, kCFNumberIntType, &v46);
        }

        v17 = CFDictionaryGetValue(v4, *MEMORY[0x277CF4998]);
        if (v17)
        {
          CFNumberGetValue(v17, kCFNumberIntType, &v45);
          if (!v9)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v45 = v46;
          if (!v9)
          {
LABEL_30:
            v18 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &v43);
            CVBufferSetAttachment(*(v1 + 264), v5, v18, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v18);
            v44 = 0;
            v19 = CVBufferGetAttachment(*(v1 + 264), @"ID", 0);
            if (v19)
            {
              CFNumberGetValue(v19, kCFNumberIntType, &v44);
              v20 = *&v43;
              v21 = v44;
              v22 = ACT_getHostTime();
              ACTLogMessageImp(1, "{Blending%d|exposureRatio:%f}{Blending%d|exposureBlendingTook:%f}", v21, v20, v21, v22 - HostTime);
            }

            goto LABEL_32;
          }
        }

        PixelShuffler_yuv420ExposureMap();
        goto LABEL_30;
      }
    }

    else
    {
      ACT_getHostTime();
    }

LABEL_32:
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(v1 + 264), 0);
    v24 = CVPixelBufferGetBaseAddressOfPlane(*(v1 + 264), 1uLL);
    v25 = *(v1 + 200);
    v26 = *(v1 + 208);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v1 + 264), 0);
    v28 = CVPixelBufferGetBytesPerRowOfPlane(*(v1 + 264), 1uLL);
    Blending_end_v2(*(v1 + 216), *(v1 + 288), *(v1 + 224), *(v1 + 280), *(v1 + 264), *v1, v25, v26, BytesPerRowOfPlane, v28, BaseAddressOfPlane, v24, *(v1 + 168), HIDWORD(*(v1 + 168)), *(v1 + 176), HIDWORD(*(v1 + 168)), *(v1 + 184), HIDWORD(*(v1 + 184)), *(v1 + 192));
    goto LABEL_33;
  }

  if (!*(v1 + 280))
  {
    BlendingCtrl_setPanoramaDirection_v2(a1, 1);
  }

  v10 = 0xFFFFFFFFLL;
LABEL_34:
  CVPixelBufferRelease(*(v1 + 264));
  *(v1 + 264) = 0;
  CVPixelBufferRelease(*(v1 + 256));
  *(v1 + 256) = 0;
  if (*(v1 + 280) == 2)
  {
    v29 = *(v1 + 8);
    if (!v29)
    {
      CVPixelBufferLockBaseAddress(*v1, 0);
      *(v1 + 8) = 1;
    }

    v30 = *(v1 + 312);
    v31 = *(v30 + 8);
    if (v31)
    {
      v32 = *(v31 + 104);
      if ((v32 - 3) < 6 || v32 == 1)
      {
        v34 = *(v1 + 216);
        v35 = v34[32];
        v43 = v34[31];
        v37 = v34[33];
        v36 = v34[34];
        v41 = v35 - v43 + 1;
        valuePtr = v37;
        v40 = v36 - v37;
        ACTFinalThreadedNoiseReduction(*(v30 + 16), &v43, &valuePtr, &v41, &v40);
      }
    }

    v38 = *(v1 + 216);
    valuePtr = v38[7];
    v43 = 0;
    PixelShuffler_yuv420FlipHorizontally(*v1, v38 + 31, v38 + 32, &v43, &valuePtr);
    if ((v29 & 1) == 0)
    {
      CVPixelBufferUnlockBaseAddress(*v1, 0);
      *(v1 + 8) = 0;
    }
  }

  CVPixelBufferUnlockBaseAddress(*v1, 0);
  *(v1 + 8) = 0;
  return v10;
}

void BlendingCtrl_setPanoramaDirection_v2(uint64_t *a1, int a2)
{
  v2 = *a1;
  *(v2 + 280) = a2;
  v3 = *(v2 + 248);
  if (v3)
  {
    BlendingCtrl_Roi_v2(a1, v3);
    BlendingCtrl_cropAndRotateSlice_v2(a1, *(v2 + 248));
    CFRelease(*(v2 + 248));
    *(v2 + 248) = 0;
  }
}

uint64_t BlendingCtrl_getCroppingArea_v2(uint64_t result, void *a2, void *a3, void *a4, void *a5)
{
  v5 = *(*result + 216);
  *a4 = v5[31];
  *a5 = v5[32];
  *a2 = v5[33];
  *a3 = v5[34];
  return result;
}

uint64_t BlendingCtrl_Defaults_setBlendingDefaults_v2(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 4;
  }

  v3 = *a1;
  v4 = *(*a1 + 304);
  *v4 = (v2 >> 1) & 1;
  v4[1] = v2 & 1;
  v4[2] = (v2 >> 2) & 1;
  return Blending_setDefaults_v2(*(v3 + 216), v4);
}

uint64_t BlendingCtrl_Defaults_getBlendingDefaults_v2(uint64_t a1)
{
  v1 = *(*a1 + 304);
  v2 = v1[1];
  v3 = v2 == 0;
  v4 = v2 != 0;
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (*v1)
  {
    v4 = v5;
  }

  if (v1[2])
  {
    return v4 | 4u;
  }

  else
  {
    return v4;
  }
}

_DWORD *BlendingDefaults_constructor()
{
  result = malloc_type_calloc(1uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  if (result)
  {
    *result = 0;
    result[2] = 1;
  }

  return result;
}

uint64_t BlendingDefaults_reset(uint64_t result)
{
  *result = 0;
  *(result + 8) = 1;
  return result;
}

void BlendingDefaults_destructor(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

double BlendingDefaults_copy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t getPointersFromGeometry(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, int *a5, _DWORD *a6, int a7, void *a8, _DWORD *a9, _DWORD *a10)
{
  if (a7 >= 1)
  {
    v12 = a7;
    do
    {
      v14 = *a3++;
      v13 = v14;
      *a8++ = a1 + *a5 * a2 + v14;
      LODWORD(v14) = *a4++;
      *a9++ = v14 - v13 + 1;
      LODWORD(v14) = *a6++;
      v15 = v14;
      LODWORD(v14) = *a5++;
      *a10++ = v15 - v14 + 1;
      --v12;
    }

    while (v12);
  }

  return 0;
}

uint64_t blockyfyGeometry(int a1, int a2, int a3, char a4, int a5, char a6, _DWORD *a7, _DWORD *a8, float a9, float a10, _DWORD *a11, _DWORD *a12)
{
  v13 = a11;
  v12 = a12;
  v14 = -1 << a4;
  LODWORD(v15) = 0;
  if (a5 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1.0 - a9;
    v19 = v14 & (a1 / (((a3 - 1) * v18) + 1.0));
    v20 = 1.0 - a10;
    v21 = (-1 << a6) & (a2 / (((a5 - 1) * v20) + 1.0));
    do
    {
      if (a3 >= 1)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          a7[v15 + v22] = v23;
          a8[v15 + v22] = v19 - 1 + v23;
          a11[v15 + v22] = v17;
          a12[v15 + v22] = v21 - 1 + v17;
          v23 += (v18 * v19);
          ++v22;
        }

        while (a3 != v22);
        LODWORD(v15) = v15 + v22;
      }

      v17 += (v20 * v21);
      ++v16;
    }

    while (v16 != a5);
  }

  if (v15 >= 1)
  {
    v24 = 4 * v15 - 4;
    v25 = a2 - *(a12 + v24);
    v26 = v14 & ((a1 - *(a8 + v24)) >> 1);
    v27 = v14 & (v25 >> 1);
    v15 = v15;
    do
    {
      *a7++ += v26;
      *a8++ += v26;
      *v13++ += v27;
      *v12++ += v27;
      --v15;
    }

    while (v15);
  }

  return 0;
}

_DWORD *FastFilter_constructor(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x68uLL, 0x103004088C62291uLL);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v6[7] = a2;
  v6[8] = a3;
  v6[9] = a1;
  v6[1] = -1;
  v6[2] = -1;
  *(v6 + 6) = -1;
  v8 = (boxFilter_uint8_init(a1, a2, a3) & 0x80000000) != 0 ? 0 : boxFilter_uint8_init(a1, a2, a3);
  if (v7[3] == -1 && v8 <= horTentFilter_uint8_init(a1, a2, a3))
  {
    v8 = horTentFilter_uint8_init(a1, a2, a3);
  }

  if (v8)
  {
    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    *(v7 + 6) = v9;
    if (!v9)
    {
LABEL_10:
      FastFilter_destructor(v7);
      return 0;
    }
  }

  return v7;
}

vImage_Error boxFilter_uint8_init(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  src.data = &v6;
  src.height = a3;
  src.width = a2;
  src.rowBytes = a1;
  dest.data = &v6;
  dest.height = a3;
  dest.width = a2;
  dest.rowBytes = a1;
  result = vImageBoxConvolve_Planar8(&src, &dest, 0, 0, 0, 3u, 3u, 0, 0x82u);
  if (result < 0)
  {
    printf("ERROR: box filter failed when request minimum size err=%d\n", result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

vImage_Error horTentFilter_uint8_init(unsigned int a1, unsigned int a2, unsigned int a3)
{
  *backgroundColor = 0;
  v6 = 0;
  src.data = &v6;
  src.height = a3;
  src.width = a2;
  src.rowBytes = a1;
  dest.data = &v6;
  dest.height = a3;
  dest.width = a2;
  dest.rowBytes = a1;
  result = vImageConvolve_ARGB8888(&src, &dest, 0, 0, 0, word_23C47A62C, 0x1Fu, 1u, 256, backgroundColor, 0xC0u);
  if (result < 0)
  {
    printf("ERROR: tent filter failed when request minimum size err=%d\n", result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void FastFilter_destructor(char *a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = a1 + 88;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = *&v3[8 * v2];
      if (v6)
      {
        CVPixelBufferUnlockBaseAddress(v6, 0);
        CVPixelBufferRelease(*&v3[8 * v2]);
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);
    v7 = *(a1 + 6);
    if (v7)
    {
      free(v7);
    }

    free(a1);
  }
}

uint64_t FastFilter_allocFilterSpecificData(uint64_t a1, int a2)
{
  *(a1 + 80) = a2;
  if ((a2 - 1) >= 2)
  {
    if (a2)
    {
      puts("ERROR: FastFilter unknown filter type");
    }

    else
    {
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
    }
  }

  return 0;
}

uint64_t FastFilter_execute(uint64_t a1, int a2, CVPixelBufferRef pixelBuffer, __CVBuffer *a4, uint64_t a5, uint64_t a6, vImagePixelCount a7, vImagePixelCount a8)
{
  if (a2 == 2)
  {
    return FastFilter_HorTentFilterByResampling(a1, pixelBuffer, a4, a5, a6, a7, a8);
  }

  if (a2 == 1)
  {
    return FastFilter_HorTentFilter(a1, pixelBuffer, a4, a5, a6, a7, a8);
  }

  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  return FastFilter_BoxFilter(a1, pixelBuffer, a4, a5, a6, a7, a8);
}

vImage_Error FastFilter_BoxFilter(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, uint64_t a4, uint64_t a5, vImagePixelCount a6, vImagePixelCount a7)
{
  if (*(a1 + 8) != -1)
  {
    return 0;
  }

  v21 = v7;
  v22 = v8;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v18 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  src.data = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0) + BytesPerRowOfPlane * a5 + a4;
  src.height = a7;
  src.width = a6;
  src.rowBytes = v18;
  dest.data = CVPixelBufferGetBaseAddressOfPlane(a3, 0) + v18 * a5 + a4;
  dest.height = a7;
  dest.width = a6;
  dest.rowBytes = BytesPerRowOfPlane;
  result = vImageBoxConvolve_Planar8(&src, &dest, *(a1 + 48), 0, 0, 3u, 3u, 0, 0);
  if (result)
  {
    printf("ERROR: box filter failed err=%d\n", result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t FastFilter_HorTentFilter(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, uint64_t a4, uint64_t a5, vImagePixelCount a6, vImagePixelCount a7)
{
  if (*(a1 + 80) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v30 = 1;
  v11 = (a1 + 88);
  BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 88));
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(*v11);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  PixelShuffler_dirRot90(BaseAddress, BaseAddressOfPlane, WidthOfPlane, HeightOfPlane, BytesPerRow, BytesPerRowOfPlane, a4, a5, a6, a7);
  v18 = FastFilter_horTentFilter(a1, v11, 0, &v30, a4, a5, a7 >> 2, a6);
  v19 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v20 = v30;
  v21 = CVPixelBufferGetBaseAddress(v11[v30]);
  v22 = CVPixelBufferGetWidthOfPlane(a3, 0);
  v23 = CVPixelBufferGetHeightOfPlane(a3, 0);
  v24 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v25 = CVPixelBufferGetBytesPerRow(v11[v20]);
  PixelShuffler_invRot90(v19, v21, v22, v23, v24, v25, a4, a5, a6, a7);
  return v18;
}

vImage_Error FastFilter_HorTentFilterByResampling(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, uint64_t a4, uint64_t a5, vImagePixelCount a6, vImagePixelCount a7)
{
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v15 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v16 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0) + BytesPerRowOfPlane * a5 + a4;
  src.data = CVPixelBufferGetBaseAddressOfPlane(a3, 0) + v15 * a5 + a4;
  src.height = a7;
  src.width = a6;
  src.rowBytes = v15;
  dest.data = v16;
  dest.height = a7;
  dest.width = a6;
  dest.rowBytes = BytesPerRowOfPlane;
  result = vImageConvolve_Planar8(&src, &dest, *(a1 + 48), 0, 0, word_23C47A5B0, 1u, 0x1Fu, 256, 0, 0x40u);
  if (result)
  {
    printf("ERROR: tent filter failed err=%d\n", result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *FastFilter_HorBoxFilterAndSubsampling(uint64_t a1, CVPixelBufferRef pixelBuffer, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v13 = CVPixelBufferGetBytesPerRowOfPlane(*(a1 + 88), 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  result = CVPixelBufferGetBaseAddressOfPlane(*(a1 + 88), 0);
  if (a6)
  {
    v16 = 0;
    v17 = result + v13 * a4 + (a3 >> 3);
    v18 = &BaseAddressOfPlane[BytesPerRowOfPlane * a4 + a3];
    do
    {
      if (a5 >= 8)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          _X14 = &v18[v19];
          __asm { PRFM            #0x11, [X14] }

          v27 = vmovl_u8(*&v18[v19]);
          v27.i16[0] = vaddvq_s16(v27);
          *(v17 + v20++) = v27.i32[0] >> 3;
          v19 += 8;
        }

        while (a5 >> 3 != v20);
      }

      v18 += BytesPerRowOfPlane;
      v17 += v13;
      ++v16;
    }

    while (v16 != a6);
  }

  return result;
}

vImage_Error FastFilter_horTentFilter(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t a5, uint64_t a6, vImagePixelCount a7, vImagePixelCount a8)
{
  *a4 = a3 == 0;
  if (*(a1 + 12) != -1)
  {
    return 0;
  }

  v25 = v8;
  v26 = v9;
  BytesPerRow = CVPixelBufferGetBytesPerRow(*(a2 + 8 * (a3 == 0)));
  v20 = CVPixelBufferGetBytesPerRow(*(a2 + 8 * a3));
  v21 = CVPixelBufferGetBaseAddress(*(a2 + 8 * *a4)) + 4 * a5 + BytesPerRow * a6;
  src.data = CVPixelBufferGetBaseAddress(*(a2 + 8 * a3)) + 4 * a5 + v20 * a6;
  src.height = a8;
  src.width = a7;
  src.rowBytes = v20;
  dest.data = v21;
  dest.height = a8;
  dest.width = a7;
  dest.rowBytes = BytesPerRow;
  *backgroundColor = 0;
  result = vImageConvolve_ARGB8888(&src, &dest, *(a1 + 48), 0, 0, word_23C47A5EE, 0x1Fu, 1u, 256, backgroundColor, 0x40u);
  if (result)
  {
    printf("ERROR: tent filter failed err=%d\n", result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t *FIR1DFilter_constructor(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800401A0D9B52uLL);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  *v8 = a2;
  v8[1] = a3;
  v8[3] = a4;
  v8[5] = a4 + a2;
  v10 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  v9[2] = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  for (i = *v9; i; --i)
  {
    v12 = *a1++;
    *v10++ = v12;
  }

  v13 = malloc_type_malloc(4 * v9[5], 0x100004052888210uLL);
  v9[4] = v13;
  if (!v13)
  {
LABEL_6:
    FIR1DFilter_destructor(v9);
    return 0;
  }

  return v9;
}

void FIR1DFilter_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
      a1[2] = 0;
    }

    v3 = a1[4];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t *FIR1DFilter_Gaussian(uint64_t a1, double a2)
{
  v3 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800401A0D9B52uLL);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = (*&a2 * 6.0 + -1.0) | 1;
  if (v5 <= 3)
  {
    v5 = 3;
  }

  *v3 = v5;
  v3[1] = v5 >> 1;
  v3[3] = a1;
  v3[5] = v5 + a1;
  v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  v4[2] = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = *v4;
  if (*v4)
  {
    v9 = v6;
    *v7.i32 = v4[1];
    v10 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = vdupq_n_s64(v8 - 1);
    v32 = vdupq_lane_s32(*&a2, 0);
    v33 = vdupq_lane_s32(v7, 0);
    v12 = xmmword_23C47A580;
    v13 = xmmword_23C47A590;
    v14 = xmmword_23C47A5A0;
    v15 = v6 + 8;
    v16 = 0.0;
    v31 = vdupq_n_s64(4uLL);
    v34 = v11;
    do
    {
      v38 = v13;
      v39 = v12;
      v36 = vcgeq_u64(v11, v13);
      v37 = v14;
      v17 = vmovn_s64(v36);
      v35 = vuzp1_s16(v17, *v36.i8);
      v18 = vdivq_f32(vsubq_f32(vcvtq_f32_u32(v14), v33), v32);
      v19.i64[0] = 0xBF000000BF000000;
      v19.i64[1] = 0xBF000000BF000000;
      v44 = vmulq_f32(v18, vmulq_f32(v18, v19));
      v40 = expf(v44.f32[1]);
      *v20.i32 = expf(v44.f32[0]);
      *&v20.i32[1] = v40;
      v41 = v20;
      v21 = expf(v44.f32[2]);
      v22 = v41;
      *&v22.i32[2] = v21;
      v42 = v22;
      v23 = expf(v44.f32[3]);
      v24 = v42;
      *&v24.i32[3] = v23;
      if (v35.i8[0])
      {
        *(v15 - 2) = v42.i32[0];
      }

      if (vuzp1_s16(v17, v35).i8[2])
      {
        *(v15 - 1) = v42.i32[1];
      }

      v11 = v34;
      v25 = vcgeq_u64(v34, v39);
      if (vuzp1_s16(*&v25, vmovn_s64(*&v25)).i32[1])
      {
        *v15 = v42.i32[2];
        v15[1] = v24.i32[3];
      }

      v26.i64[0] = 0x8000000080000000;
      v26.i64[1] = 0x8000000080000000;
      v27 = vbslq_s8(vuzp1q_s32(v36, v25), v24, v26);
      v16 = (((v16 + *v27.i32) + *&v27.i32[1]) + *&v27.i32[2]) + *&v27.i32[3];
      v12 = vaddq_s64(v39, v31);
      v13 = vaddq_s64(v38, v31);
      v28.i64[0] = 0x400000004;
      v28.i64[1] = 0x400000004;
      v14 = vaddq_s32(v37, v28);
      v15 += 4;
      v10 -= 4;
    }

    while (v10);
    do
    {
      *v9 = *v9 / v16;
      ++v9;
      --v8;
    }

    while (v8);
  }

  v29 = malloc_type_malloc(4 * v4[5], 0x100004052888210uLL);
  v4[4] = v29;
  if (!v29)
  {
LABEL_16:
    FIR1DFilter_destructor(v4);
    return 0;
  }

  return v4;
}

uint64_t FIR1DFilter_execute(uint64_t a1, void *a2, vDSP_Length a3)
{
  if (*(a1 + 24) >= a3)
  {
    memcpy((*(a1 + 32) + 4 * *(a1 + 8)), a2, 4 * a3);
    bzero(*(a1 + 32), 4 * *(a1 + 8));
    bzero((*(a1 + 32) + 4 * *(a1 + 8) + 4 * a3), 4 * (*a1 - *(a1 + 8)));
    vDSP_conv(*(a1 + 32), 1, *(a1 + 16), 1, a2, 1, a3, *a1);
    return 0;
  }

  else
  {
    puts("ERROR: too long input data for filtering");
    return 0xFFFFFFFFLL;
  }
}

int8x8_t fastRecSqrtf(double a1)
{
  v1 = vdup_lane_s32(*&a1, 0);
  v2 = vceqz_f32(v1);
  v3 = vcgt_s32(vneg_f32(0x7F0000007FLL), v1);
  v4 = vrsqrte_f32(v1);
  return vbsl_s8(vbic_s8(v3, v2), vmul_f32(v4, vrsqrts_f32(vmul_n_f32(v4, *&a1), v4)), v4);
}

int8x8_t fastSqrtf(double a1)
{
  *&a1 = *&a1 + 0.0;
  v1 = vdup_lane_s32(*&a1, 0);
  v2 = vrsqrte_f32(v1);
  return vbsl_s8(vbic_s8(vcgt_s32(vneg_f32(0x7F0000007FLL), v1), vceqz_f32(v1)), vmul_f32(*&a1, vmul_f32(v2, vrsqrts_f32(v2, vmul_n_f32(v2, *&a1)))), v1);
}

uint64_t normalizeMinMax(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = (a1 + 4 * a2);
  v7 = a3 - a2;
  if (a3 < a2)
  {
    if (!isZero(-INFINITY))
    {
      return 0;
    }

    goto LABEL_11;
  }

  v9 = v7 + 1;
  v10 = 3.4028e38;
  v11 = -3.4028e38;
  v12 = (a1 + 4 * a2);
  do
  {
    if (*v12 >= v10)
    {
      if (*v12 > v11)
      {
        v11 = *v12;
      }
    }

    else
    {
      v10 = *v12;
    }

    ++v12;
    --v9;
  }

  while (v9);
  v13 = v11 - v10;
  if (isZero(v11 - v10))
  {
LABEL_11:
    memcpy((a4 + 4 * a2), v6, 4 * (v7 + 1));
    return 0;
  }

  v14 = (a1 + 4 * a2);
  v15 = v7 + 1;
  v16 = (a4 + 4 * a2);
  do
  {
    v17 = *v14++;
    *v16++ = (v17 - v10) / v13;
    --v15;
  }

  while (v15);
  return 0;
}

uint64_t normalizeMeanStd(uint64_t a1, int a2, int a3, uint64_t a4, float *a5, float *a6)
{
  v9 = a3 - a2 + 1;
  __SumOfSquares = 0;
  v10 = a2;
  v11 = (a1 + 4 * a2);
  vDSP_sve_svesq(v11, 1, &__SumOfSquares + 1, &__SumOfSquares, v9);
  v12 = *&__SumOfSquares;
  v13 = *(&__SumOfSquares + 1) / v9;
  *a5 = v13;
  *&v14 = (v12 / v9) - (v13 * v13);
  LODWORD(v15) = fastSqrtf(v14).u32[0];
  *a6 = v15;
  if (isZero(v15))
  {
    memcpy((a4 + 4 * v10), v11, 4 * v9);
  }

  else
  {
    v18 = 1.0 / *a6;
    v17 = -(*a5 * v18);
    MEMORY[0x23EED2ED0](v11, 1, &v18, &v17, a4 + 4 * v10, 1, v9);
  }

  return 0;
}

uint64_t createMeanStdTable(void *a1, int a2)
{
  v3 = 4 * a2;
  v4 = malloc_type_malloc(v3 + 4, 0x100004052888210uLL);
  v5 = malloc_type_malloc(v3 + 4, 0x100004052888210uLL);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v4)
    {
      free(v4);
    }

    if (v6)
    {
      free(v6);
    }

    *a1 = 0;
    a1[1] = 0;
    return 4294967293;
  }

  else
  {
    result = 0;
    *a1 = v4;
    a1[1] = v6;
  }

  return result;
}

uint64_t initMeanStdTable(float *a1, int a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  if (*a3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 4294967293;
  }

  *v3 = 0;
  *v4 = 0;
  if (a2 >= 1)
  {
    v7 = (v3 + 1);
    v8 = (v4 + 1);
    v9 = (a2 + 1) - 1;
    do
    {
      *v7 = *(v7 - 1) + *a1;
      ++v7;
      v10 = *a1++;
      *v8 = *(v8 - 1) + (v10 * v10);
      ++v8;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t normalizeMeanStdUsingTable(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, float *a6, float *a7, double a8)
{
  v13 = 4 * a3 + 4;
  v14 = (a3 - a2 + 1);
  v15 = (*(a4[1] + v13) - *(a4[1] + 4 * a2)) / v14;
  *&a8 = (*(*a4 + v13) - *(*a4 + 4 * a2)) / v14;
  *a6 = *&a8;
  *&a8 = v15 - (*&a8 * *&a8);
  LODWORD(v16) = fastSqrtf(a8).u32[0];
  *a7 = v16;
  if (a5)
  {
    if (isZero(v16))
    {
      memcpy((a5 + 4 * a2), (a1 + 4 * a2), vcvts_n_u32_f32(v14, 2uLL));
    }

    else
    {
      v19 = 1.0 / *a7;
      v18 = -(*a6 * v19);
      MEMORY[0x23EED2ED0](a1 + 4 * a2, 1, &v19, &v18, a5 + 4 * a2, 1, v14);
    }
  }

  return 0;
}

uint64_t destroyMeanStdTable(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
    *(a1 + 8) = 0;
  }

  return 0;
}

BOOL ACT_IsPanoramaSupported()
{
  v0 = MGCopyAnswer();
  v1 = v0 == *MEMORY[0x277CBED28];
  CFRelease(v0);
  return v1;
}

__CFDictionary *ACT_CopyDefaultConfigurationForPanorama()
{
  v26 = *MEMORY[0x277D85DE8];
  *v21 = 0x200000006;
  v19 = 64;
  *__s1 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  if (sysctl(v21, 2u, __s1, &v19, 0, 0))
  {
    return 0;
  }

  v2 = strstr(__s1, "AP");
  if (v2 || (v2 = strstr(__s1, "DEV")) != 0)
  {
    *v2 = 0;
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], __s1, 0x201u);
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.ACTFramework");
  v6 = CFBundleCopyResourceURL(BundleWithIdentifier, @"firebreak-Configuration", @"plist", v4);
  if (v6)
  {
    error = 0;
    v7 = CFReadStreamCreateWithFile(v3, v6);
    if (v7)
    {
      v8 = v7;
      CFReadStreamOpen(v7);
      v9 = CFPropertyListCreateWithStream(v3, v8, 0, 0, 0, &error);
      if (v9)
      {
        v10 = v9;
        v0 = CFRetain(v9);
        CFRelease(v10);
      }

      else
      {
        v0 = 0;
      }

      CFReadStreamClose(v8);
      CFRelease(v8);
      if (!v4)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v0 = 0;
  if (v4)
  {
LABEL_12:
    CFRelease(v4);
  }

LABEL_13:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v0)
  {
    Count = CFDictionaryGetCount(v0);
    v12 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(v0, v12, 0);
    v13 = Count - 1;
    if (Count == 1)
    {
      free(v12);
    }

    else
    {
      MutableCopy = 0;
      v15 = *MEMORY[0x277CBF040];
      v16 = *MEMORY[0x277CBF010];
      do
      {
        v17 = CFPreferencesCopyValue(v12[v13], @"com.apple.act", v15, v16);
        if (v17)
        {
          v18 = v17;
          if (!MutableCopy)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, v0);
          }

          CFDictionaryReplaceValue(MutableCopy, v12[v13], v18);
          CFRelease(v18);
        }

        --v13;
      }

      while (v13);
      free(v12);
      if (MutableCopy)
      {
        CFRelease(v0);
        return MutableCopy;
      }
    }
  }

  return v0;
}

uint64_t ACT_FigSampleBufferProcessorStartPanoramaCaptureWithMetadata(uint64_t a1, const void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  Storage = sbp_pano_getStorage();
  if (*(Storage + 196))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = Storage;
  if (*(Storage + 197) || *(Storage + 199))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(Storage + 444))
  {
    if (!*(Storage + 456))
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v6 = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE80]);
      Current = CFAbsoluteTimeGetCurrent();
      CFCalendarDecomposeAbsoluteTime(v6, Current, "yMdHms", &v19 + 4, &v19, &v18 + 4, &v18, &v17 + 4, &v17);
      CFRelease(v6);
      snprintf((v4 + 456), 0x100uLL, "/var/mobile/Library/Caches/com.apple.camera/Pano_%d-%d-%d_%d-%d-%d", HIDWORD(v19), v19, HIDWORD(v18), v18, HIDWORD(v17), v17);
      if (mkdir((v4 + 456), 0x1FFu) == -1)
      {
        bzero(__filename, 0x400uLL);
        confstr(65537, __filename, 0x400uLL);
        snprintf((v4 + 456), 0x100uLL, "%s", __filename);
        mkdir((v4 + 456), 0x1FFu);
      }
    }

    if (!*(v4 + 448))
    {
      __sprintf_chk(__filename, 0, 0x100uLL, "%s/panoLog.txt", (v4 + 456));
      *(v4 + 448) = fopen(__filename, "w+");
      ACTLogMessageImp(1, "{panoLog|Version:200}\n");
      ACTLogMessageImp(1, "%s\n", (v4 + 456));
      ACTLogMessageImp(1, "{Pano|sliceOffsetToZero:%d}\n", *(v4 + 360));
    }

    if (!*(v4 + 736))
    {
      __sprintf_chk(__filename, 0, 0x100uLL, "%s/panoArchive.tar", (v4 + 456));
      *(v4 + 736) = archive_write_new();
      archive_write_set_compression_none();
      archive_write_set_format_ar_bsd();
      archive_write_open_filename();
    }

    if (!*(v4 + 744))
    {
      *(v4 + 744) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 150, MEMORY[0x277CBF128]);
    }
  }

  v8 = *(v4 + 864);
  if (v8)
  {
    RobustPano_startCapture(v8, a2, (v4 + 456));
  }

  HostTime = ACT_getHostTime();
  ACTLogMessageImp(1, "ACT_FigSampleBufferProcessorStartPanoramaCapture started %.2f\n", HostTime);
  v10 = *(v4 + 160);
  *(v4 + 164) = v10;
  v11 = 0.0;
  if (v10 != 1)
  {
    v11 = *(v4 + 312);
  }

  *(v4 + 296) = 0;
  *(v4 + 280) = v11;
  ACTLogMessageImp(1, "{Default|direction:%d}\n", v10);
  setACTRegistrationDirection(*(v4 + 432), *(v4 + 164));
  setPanoramaDirection(*(v4 + 424));
  v14 = *(v4 + 864);
  if (v14)
  {
    RobustPano_setDirection(v14, *(v4 + 164), v12, v13);
  }

  v15 = 0.0;
  if (*(v4 + 164) == 2)
  {
    v15 = *(v4 + 312);
  }

  *(v4 + 264) = v15;
  *(v4 + 268) = v15;
  *(v4 + 196) = 1;
  if (!a2)
  {
    return 0;
  }

  v16 = CFRetain(a2);
  result = 0;
  *(v4 + 720) = v16;
  return result;
}

uint64_t ACT_FigSampleBufferProcessorStopPanoramaCapture()
{
  Storage = sbp_pano_getStorage();
  v1 = *(Storage + 864);
  if (v1)
  {
    RobustPano_stopCapture(v1);
  }

  return LegacyPano_stopCapture(Storage);
}

uint64_t ACT_FigSampleBufferProcessorCreateForPanoramaWithOptions(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  if (a2 && a3)
  {
    valuePtr = getCFPreferenceFloat(@"ACTPanoramaPreviewScale", @"com.apple.act", 0.066667);
    Value = CFDictionaryGetValue(a2, @"ACTPanoramaPreviewScale");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
    }

    v11 = 10800;
    v12 = 0;
    v6 = CFDictionaryGetValue(a2, @"ACTFrameWidth");
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberIntType, &v12);
      v7 = CFDictionaryGetValue(a2, @"ACTPanoramaMaxWidth");
      if (v7)
      {
        CFNumberGetValue(v7, kCFNumberIntType, &v11);
        v8 = v11;
      }

      else
      {
        v8 = 10800;
      }

      CFPreferenceNumber = getCFPreferenceNumber(@"ACTPanoramaMaxWidth", @"com.apple.act", v8);
      v11 = CFPreferenceNumber;
      return ACT_FigSampleBufferProcessorCreateForPanoramaWithOptionsAndPreviewSize((valuePtr * CFPreferenceNumber), (valuePtr * v12), CFPreferenceNumber, a2, a3);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t ACT_FigSampleBufferProcessorCreateForPanoramaWithOptionsAndPreviewSize(double a1, double a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  v9 = MGCopyAnswer();
  v53 = 0;
  if (v9 == *MEMORY[0x277CBED10])
  {
    v10 = MGCopyAnswer();
    v11 = *MEMORY[0x277CBED28];
    CFRelease(v10);
    if (v10 != v11)
    {
      v14 = 0;
      v45 = 0xFFFFFFFFLL;
LABEL_40:
      if (v9)
      {
        CFRelease(v9);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v53)
      {
        CFRelease(v53);
      }

      return v45;
    }
  }

  if (a4 && a5)
  {
    FigSampleBufferProcessorGetClassID();
    v12 = CMDerivedObjectCreate();
    if (v12)
    {
      v45 = v12;
      v14 = 0;
    }

    else
    {
      v13 = ACT_CopyDefaultConfigurationForPanorama();
      v14 = v13;
      v16 = v13 && (Value = CFDictionaryGetValue(v13, @"ACTPanoramaRobustPano")) != 0 && CFBooleanGetValue(Value) != 0;
      CFPreferenceNumber = getCFPreferenceNumber(@"robustPano.enable", @"com.apple.act", v16);
      Storage = sbp_pano_getStorage(v53);
      bzero(Storage, 0x400uLL);
      *(Storage + 872) = CFPreferenceNumber > 0;
      LegacyPano_createProcessor(v53, a4, a1, a2);
      *a5 = v53;
      v53 = 0;
      if (CFPreferenceNumber >= 1)
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        valuePtr = 0u;
        v49 = 0u;
        v19 = CFDictionaryGetValue(a4, @"ACTFrameWidth");
        if (v19)
        {
          if (CFNumberGetValue(v19, kCFNumberCFIndexType, &valuePtr))
          {
            v20 = CFDictionaryGetValue(a4, @"ACTFrameHeight");
            if (v20)
            {
              if (CFNumberGetValue(v20, kCFNumberCFIndexType, &valuePtr + 8))
              {
                v21 = CFDictionaryGetValue(a4, @"ACTPanoramaTranslationCorrection");
                if (v21)
                {
                  v22 = v21;
                  v23 = CFDictionaryGetValue(v21, @"movingAverageFilterSize");
                  CFNumberGetValue(v23, kCFNumberIntType, &v50 + 4);
                  v24 = CFDictionaryGetValue(v22, @"referenceMeanStartingFrame");
                  CFNumberGetValue(v24, kCFNumberIntType, &v50 + 8);
                  v25 = CFDictionaryGetValue(v22, @"atlasTranslationShiftLowThreshold");
                  CFNumberGetValue(v25, kCFNumberFloat32Type, &v50 + 12);
                  v26 = CFDictionaryGetValue(v22, @"atlasTranslationShiftHighThreshold");
                  CFNumberGetValue(v26, kCFNumberFloat32Type, &v51);
                  v27 = CFDictionaryGetValue(v22, @"atlasTranslationCorrectionStrength");
                  CFNumberGetValue(v27, kCFNumberFloat32Type, &v51 + 4);
                  v28 = v50;
                }

                else
                {
                  v28 = 0;
                  LOBYTE(v50) = 0;
                }

                LODWORD(v46[0]) = 0;
                LOBYTE(v50) = getCFPreferenceNumber(@"enableTranslationCorrection", @"com.apple.act", v28) > 0;
                v54 = 0.0;
                v30 = CFDictionaryGetValue(v14, @"ACTPanoramaVerticalDriftFilterWeight");
                if (v30)
                {
                  CFNumberGetValue(v30, kCFNumberFloat32Type, &v54);
                  v31 = v54;
                }

                else
                {
                  v31 = 0.0;
                }

                DWORD2(v51) = getCFPreferenceFloat(@"ACTPanoramaVerticalDriftFilterWeight", @"com.apple.act", v31);
                if (v54 > 0.0)
                {
                  LOBYTE(v50) = 0;
                }

                v32 = CFDictionaryGetValue(v14, @"ACTPanoramaRobustPanoNRFUsePanoType");
                v33 = v32 && CFBooleanGetValue(v32);
                BYTE12(v51) = v33;
                v34 = CFDictionaryGetValue(v14, @"ACTPanoramaRobustPanoDisableCropping");
                v35 = v34 && CFBooleanGetValue(v34);
                BYTE13(v51) = v35;
                v36 = *(Storage + 328);
                *&valuePtr = *(Storage + 336);
                *(&valuePtr + 1) = v36;
                v37 = CFDictionaryGetValue(v14, @"ACTPanoramaMaxWidth");
                v38 = CFNumberGetValue(v37, kCFNumberIntType, v46);
                v39 = SLODWORD(v46[0]);
                if (!v38)
                {
                  v39 = 0x4000;
                }

                *&v49 = 16 * ((valuePtr * 1.1 + 15.0) * 0.0625);
                *(&v49 + 1) = v39;
              }
            }
          }
        }

        v40 = getCFPreferenceNumber(@"robustPano.disableCropping", @"com.apple.act", 0) > 0;
        *(Storage + 421) = v40;
        BYTE13(v51) = v40;
        v46[2] = v50;
        v46[3] = v51;
        v47 = v52;
        v46[0] = valuePtr;
        v46[1] = v49;
        Processor = RobustPano_createProcessor(v46);
        *(Storage + 864) = Processor;
        RobustPano_reset(Processor, v42, v43, v44);
      }

      v45 = 0;
    }

    goto LABEL_40;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}