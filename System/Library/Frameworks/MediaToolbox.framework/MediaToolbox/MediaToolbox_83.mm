uint64_t sub_1968CC3F4@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v7 = a2 ^ 0xF85;
  (*(a1 + 8 * (a2 + 3915)))();
  v8 = STACK[0x370];
  *(v4 + 24) = 0;
  v9 = (*(v8 + 8 * (v7 + v5)))(v4);
  return (*(STACK[0x370] + 8 * (((((v6 == 0) ^ (v7 + v3)) & 1) * (3 * (v7 ^ v2) - 1160)) ^ v7)))(v9);
}

uint64_t sub_1968CC418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x728];
  STACK[0x6B8] = *(a6 + 8 * v6);
  return (*(a6 + 8 * (((v7 != 0) * ((5 * (((v6 + 4145) | 0x600) ^ 0x12E1)) ^ 0x1600)) ^ ((v6 + 4145) | 0x600))))();
}

void sub_1968CC48C()
{
  v0 = LOWORD(STACK[0x8DE]);
  LODWORD(STACK[0x330]) = v0;
  LODWORD(STACK[0x320]) = v0 ^ 0xFFFFB88F;
  v1 = STACK[0x8E0];
  LODWORD(STACK[0x340]) = -1720256289;
  LODWORD(STACK[0x2B0]) = LODWORD(STACK[0x8E4]) ^ 0xD8C2E756;
  v2 = LOWORD(STACK[0x95E]);
  LODWORD(STACK[0x310]) = v2;
  LODWORD(STACK[0x300]) = v2 ^ 0xFFFF9583;
  v3 = STACK[0x960];
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x964]) ^ 0xD8C2E756;
  STACK[0x350] = STACK[0x388] + 24;
  LODWORD(STACK[0x2D0]) = v1;
  LODWORD(STACK[0x2F0]) = v1 ^ 0xD8C2E756;
  LODWORD(STACK[0x2C0]) = v3;
  LODWORD(STACK[0x2E0]) = v3 ^ 0xD8C2E756;
  JUMPOUT(0x1969257F0);
}

uint64_t sub_1968CC4A0(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1428) = 16;
  v5 = *(a2 + 4) == (v2 ^ 0x1244) + 763601550 + 149 * (v2 ^ 0x1244);
  return (*(v3 + 8 * (((2 * v5) | (32 * v5)) ^ v2)))();
}

uint64_t sub_1968CC4F8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, __n128 a3@<Q1>)
{
  v6 = (a1 + v4);
  v6[73] = a3;
  v6[74] = a3;
  return (*(v5 + 8 * ((254 * ((v3 ^ (v4 == 224)) & 1)) ^ a2)))();
}

uint64_t sub_1968CC5E4@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *&STACK[0x230] = vdupq_n_s64(0x38uLL);
  *&STACK[0x340] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x350] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x320] = vdupq_n_s64(a1);
  *&STACK[0x330] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x310] = vdupq_n_s64(a2);
  *&STACK[0x210] = vdupq_n_s64(v15);
  *&STACK[0x220] = vdupq_n_s64(v14);
  *&STACK[0x200] = vdupq_n_s64(v17);
  v197 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v198 = vdupq_n_s64(a6);
  *&STACK[0x2F0] = vdupq_n_s64(v16);
  *&STACK[0x300] = vdupq_n_s64(a5);
  *&STACK[0x2D0] = vdupq_n_s64(v13);
  *&STACK[0x2E0] = vdupq_n_s64(a7);
  *&STACK[0x2B0] = vdupq_n_s64(v8);
  *&STACK[0x2C0] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x290] = vdupq_n_s64(0xC249F792A028E260);
  *&STACK[0x2A0] = vdupq_n_s64(a4);
  v20 = *&STACK[0x200];
  v19 = *&STACK[0x210];
  v21 = vdupq_n_s64(a3);
  v22 = vdupq_n_s64(v9);
  v23 = vdupq_n_s64(v18);
  v24 = vdupq_n_s64(0xAB3042D228875C41);
  v25 = *&STACK[0x230];
  v26.i64[0] = a8 + v12 - 5;
  v26.i64[1] = a8 + v12 - 6;
  *&STACK[0x280] = v26;
  v26.i64[0] = a8 + v12 - 3;
  v26.i64[1] = a8 + v12 - 4;
  *&STACK[0x270] = v26;
  v27.i64[0] = a8 + v12 + 3;
  v27.i64[1] = a8 + v12 + 2;
  v28.i64[0] = a8 + v12 + 5;
  v28.i64[1] = a8 + v12 + 4;
  v29.i64[0] = a8 + v12 + 7;
  v29.i64[1] = a8 + v12 + 6;
  v26.i64[0] = a8 + v12 + 9;
  v26.i64[1] = a8 + v12 + ((v11 - 197986723) & 0xBCD179F ^ 0x1585);
  *&STACK[0x250] = v26;
  v30 = *&STACK[0x340];
  v31 = vandq_s8(v26, *&STACK[0x350]);
  v32 = vandq_s8(v29, *&STACK[0x350]);
  v33 = vandq_s8(v28, *&STACK[0x350]);
  v34 = vandq_s8(v27, *&STACK[0x350]);
  v35 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v39 = vaddq_s64(v38, *&STACK[0x340]);
  v40 = vaddq_s64(v37, *&STACK[0x340]);
  v41 = vaddq_s64(v36, *&STACK[0x340]);
  v43 = *&STACK[0x320];
  v42 = *&STACK[0x330];
  v44 = *&STACK[0x310];
  *&STACK[0x260] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v38), *&STACK[0x320]), v39), vandq_s8(v39, *&STACK[0x310]));
  v45 = vaddq_s64(v35, v30);
  v46 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v42, v37), v43), v40), vandq_s8(v40, v44));
  v47 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v42, v36), v43), v41), vandq_s8(v41, v44));
  v48 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v42, v35), v43), v45), vandq_s8(v45, v44));
  v49 = *&STACK[0x220];
  v50 = veorq_s8(v48, *&STACK[0x220]);
  v51 = veorq_s8(v47, *&STACK[0x220]);
  v52 = veorq_s8(v47, v19);
  v53 = veorq_s8(v48, v19);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v54, v20), vorrq_s8(v54, v22)), v22), v23);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, v20), vorrq_s8(v55, v22)), v22), v23);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = vaddq_s64(v60, v58);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, *&STACK[0x300]), vorrq_s8(v61, v21)), v21), v198);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, *&STACK[0x300]), vorrq_s8(v62, v21)), v21), v198);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v65), v197);
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66), v197);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v71 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = *&STACK[0x2C0];
  v75 = *&STACK[0x2D0];
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), *&STACK[0x2F0]), v73), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), *&STACK[0x2F0]), v72), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v79 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), *&STACK[0x2C0]);
  v83 = veorq_s8(v81, *&STACK[0x2C0]);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = *&STACK[0x2B0];
  v90 = *&STACK[0x290];
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), *&STACK[0x2B0]), v88), *&STACK[0x2A0]), *&STACK[0x290]);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v87, v87), *&STACK[0x2B0]), v87), *&STACK[0x2A0]), *&STACK[0x290]);
  v93.i64[0] = a8 + v12 - 1;
  v93.i64[1] = a8 + v12 - 2;
  v94 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v25)));
  v95 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v25)));
  v96 = veorq_s8(v46, *&STACK[0x220]);
  v97 = veorq_s8(v46, v19);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v98, v20), vorrq_s8(v98, v22)), v22), v23);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = *&STACK[0x300];
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, *&STACK[0x300]), vorrq_s8(v101, v21)), v21), v198);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v197);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = *&STACK[0x2F0];
  v109 = *&STACK[0x2E0];
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), *&STACK[0x2F0]), v107), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), *&STACK[0x2C0]);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = *&STACK[0x2A0];
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), *&STACK[0x2B0]), v114), *&STACK[0x2A0]), *&STACK[0x290]);
  v92.i64[0] = a8 + v12 + 1;
  v92.i64[1] = a8 + v12;
  *&STACK[0x240] = v92;
  v117 = vandq_s8(v92, *&STACK[0x350]);
  v118 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v25)));
  v119 = veorq_s8(*&STACK[0x260], v49);
  v120 = veorq_s8(*&STACK[0x260], v19);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, v20), vorrq_s8(v121, v22)), v22), v23);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v102), vorrq_s8(v124, v21)), v21), v198);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v197);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v108), v129), v109), v75);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v74);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), v89), v134), v115), v90);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v138 = v93;
  v139 = vandq_s8(v93, *&STACK[0x350]);
  v140 = vaddq_s64(v137, v136);
  v141 = vandq_s8(*&STACK[0x270], *&STACK[0x350]);
  v199.val[1] = v118;
  v199.val[2] = v95;
  v199.val[3] = v94;
  v199.val[0] = vshlq_u64(veorq_s8(v140, v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), v25)));
  v142 = vandq_s8(*&STACK[0x280], *&STACK[0x350]);
  v143 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v147 = vaddq_s64(v146, *&STACK[0x340]);
  v148 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v146), *&STACK[0x320]), v147), vandq_s8(v147, *&STACK[0x310]));
  v149 = vaddq_s64(v145, *&STACK[0x340]);
  v150 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v145), *&STACK[0x320]), v149), vandq_s8(v149, *&STACK[0x310]));
  v151 = vaddq_s64(v144, *&STACK[0x340]);
  v152 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v144), *&STACK[0x320]), v151), vandq_s8(v151, *&STACK[0x310]));
  v153 = vaddq_s64(v143, *&STACK[0x340]);
  v154 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v143), *&STACK[0x320]), v153), vandq_s8(v153, *&STACK[0x310]));
  v153.i64[0] = vqtbl4q_s8(v199, xmmword_196EBFA60).u64[0];
  v199.val[0] = veorq_s8(v154, v49);
  v199.val[1] = veorq_s8(v152, v49);
  v199.val[2] = veorq_s8(v152, v19);
  v199.val[3] = veorq_s8(v154, v19);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[0], v20), vorrq_s8(v199.val[0], v22)), v22), v23);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[1], v20), vorrq_s8(v199.val[1], v22)), v22), v23);
  v199.val[2] = veorq_s8(v199.val[1], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[0], v102), vorrq_s8(v199.val[0], v21)), v21), v198);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[1], v102), vorrq_s8(v199.val[1], v21)), v21), v198);
  v199.val[2] = veorq_s8(v199.val[1], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]), v197);
  v199.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[3]), v197);
  v155 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v155);
  v156 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(v156, v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), *&STACK[0x2F0]), v199.val[1]), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), *&STACK[0x2F0]), v199.val[0]), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v157 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v157);
  v158 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = veorq_s8(vaddq_s64(v158, v199.val[2]), *&STACK[0x2C0]);
  v199.val[0] = veorq_s8(v199.val[0], *&STACK[0x2C0]);
  v159 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v159);
  v160 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(v160, v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), *&STACK[0x2B0]), v199.val[1]), *&STACK[0x2A0]), *&STACK[0x290]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), *&STACK[0x2B0]), v199.val[0]), *&STACK[0x2A0]), *&STACK[0x290]);
  v161 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), veorq_s8(v199.val[1], v161)), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x280], 3uLL), v25)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), v25)));
  v162 = veorq_s8(v150, v49);
  v163 = veorq_s8(v150, v19);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, v20), vorrq_s8(v164, v22)), v22), v23);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, v102), vorrq_s8(v167, v21)), v21), v198);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v197);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), *&STACK[0x2F0]), v172), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), *&STACK[0x2C0]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), *&STACK[0x2B0]), v177), *&STACK[0x2A0]), *&STACK[0x290]);
  v199.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v138, 3uLL), v25)));
  v179 = veorq_s8(v148, v49);
  v180 = veorq_s8(v148, v19);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, v20), vorrq_s8(v181, v22)), v22), v23);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v184, v102), vorrq_s8(v184, v21)), v21), v198);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v197);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189, v189), *&STACK[0x2F0]), v189), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191), *&STACK[0x2C0]);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v194, v194), *&STACK[0x2B0]), v194), *&STACK[0x2A0]), *&STACK[0x290]);
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), v25)));
  v153.i64[1] = vqtbl4q_s8(v199, xmmword_196EBFA60).u64[0];
  v199.val[1] = vrev64q_s8(v153);
  *(a8 + v12 - 6) = veorq_s8(vextq_s8(v199.val[1], v199.val[1], 8uLL), *(v10 + v12 - 16));
  return (*(STACK[0x370] + 8 * ((213 * ((((v11 - 75) ^ 0xFFFFF8B5) & v12) != 16)) ^ (v11 - 75))))(v13);
}

uint64_t sub_1968CD5AC@<X0>(uint64_t a1@<X8>)
{
  v10 = ((272 * (v7 ^ 0x11A4u)) ^ 0x44FLL) & v5;
  *(v9 + v5) = *(v3 + v10) ^ *(a1 + v5) ^ *(v1 + v10) ^ *(v2 + v10) ^ (-93 * v10);
  return (*(v8 + 8 * ((105 * (((v5 + 1) ^ v6) != v4)) ^ v7)))();
}

uint64_t sub_1968CD61C@<X0>(int a1@<W8>)
{
  v7 = STACK[0x55C];
  v8 = STACK[0x500];
  v9 = STACK[0x4EC];
  v10 = &v4[6 * v3];
  v10[2] = v6;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v4 = v2 + 1;
  LODWORD(STACK[0x534]) = v1;
  v11 = v1 + 687779640;
  v13 = v11 > -782290144 && v11 < SLODWORD(STACK[0x300]);
  return (*(v5 + 8 * ((((19 * (a1 ^ 0x209)) ^ 0xC1) * v13) ^ a1)))();
}

uint64_t sub_1968CD698(uint64_t a1)
{
  v8 = *(v3 + a1 + 16);
  v9 = (v4 + a1);
  *v9 = *(v3 + a1);
  v9[1] = v8;
  return (*(v7 + 8 * (((v1 == a1) * v6) ^ v5)))(a1 + v2);
}

uint64_t sub_1968CD6C8()
{
  v3 = v0;
  v4 = (*(v1 + 8 * (v2 ^ 0x145D)))();
  return (*(v1 + 8 * ((4214 * (v3 == ((25 * (STACK[0x228] ^ 0xE19)) ^ 0x719F8C89))) ^ (STACK[0x228] - 2605))))(v4);
}

void sub_1968CD730()
{
  v1 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v2 = STACK[0xAA0] + (((((v0 + 3939) | 9) - 3201) | 0xA14u) ^ 0xE18);
  STACK[0x2F0] = (v2 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v2) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v3 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v4 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v5 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v1 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v1 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v3 + 10;
  STACK[0x290] = v4 + 10;
  STACK[0x310] = v5;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t sub_1968CD834@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  v13 = 7 * (a1 ^ 0xB064C273);
  v14 = v11 + a1 + 1622;
  a10 = a1 + 1575331711 * ((-353583955 - (&a10 | 0xEAECBCAD) + (&a10 | 0x15134352)) ^ 0x7948D650) - 1303759005;
  v15 = (*(v12 + 8 * (a1 + 1335580684)))(&a10);
  return (*(v12 + 8 * (((a11 != 1906281716) * (v13 ^ 0x67F)) ^ v14)))(v15);
}

uint64_t sub_1968CD8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = (a8 + 696092042) & 0xD68266F8;
  v9 = STACK[0x6EC];
  STACK[0x568] += (v8 - 512713571) & 0x1E8F76DF ^ 0xFFFFFFFFFFFFE98DLL;
  return (*(a6 + 8 * (((v9 == 1906281716) * ((v8 + 3976) ^ 0x1879)) ^ v8)))();
}

uint64_t sub_1968CD998(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v11 = v7 + 2;
  v12 = v9 + 2;
  v13 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a5)), a6);
  v12[-1] = vaddq_s8(vsubq_s8(v11[-1], vandq_s8(vaddq_s8(v11[-1], v11[-1]), a5)), a6);
  *v12 = v13;
  return (*(v10 + 8 * (((v8 == 32) * (v6 + 2426)) ^ (v6 + 1834))))();
}

uint64_t sub_1968CDB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v8 - 216) = v6 + 654144011 * ((2 * ((v8 - 224) & 0x420E72A0) - (v8 - 224) - 1108243105) ^ 0x9125F0C3) + 86335098;
  v9 = (*(a6 + 8 * (v6 ^ 0xCAD)))(v8 - 224);
  v10 = STACK[0x370];
  *v7 = *(v8 - 224) ^ 0x21;
  return (*(v10 + 8 * ((v6 + 771) ^ 0x13)))(v9);
}

uint64_t sub_1968CDBFC(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v11 = v7 + 2;
  v12 = v9 + 2;
  v13 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a5)), a6);
  v12[-1] = vaddq_s8(vsubq_s8(v11[-1], vandq_s8(vaddq_s8(v11[-1], v11[-1]), a5)), a6);
  *v12 = v13;
  return (*(v10 + 8 * (((v8 == 32) * ((v6 - 1641) ^ 0xE92)) ^ v6)))();
}

uint64_t fp_dh_3cf198074748d47c5fbcb9da23202246(uint64_t result)
{
  **result = 0;
  *(result + 8) = 1055331504;
  return result;
}

uint64_t sub_1968CDC24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v24 = a17 + 267430747 + (v23 ^ (v23 - 2638)) - 2706;
  v25 = v24 < 0xFF0AB5B;
  v26 = v24 > a22;
  if (a22 < 0xFF0AB5B != v25)
  {
    v26 = v25;
  }

  return (*(v22 + 8 * ((11 * (((a21 ^ v26) & 1) == 0)) ^ (a4 + v23 + 2201))))(&STACK[0x29C]);
}

uint64_t sub_1968CDC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  *v14 = v12;
  v15 = v12 - ((2 * v12) & 0x166DE57C) + 188146014 + ((a11 - 3127) | 0x1120) != ((4 * (a11 - 2136)) ^ 0xB36E2C2);
  return (*(v13 + 8 * (((8 * v15) | (v15 << 6)) ^ (a11 - 2136))))(a1, a2, a3, a4, a5, a6, a12);
}

void fp_dh_76fa1f5745da40561b91fdd4745a77d5(uint64_t a1)
{
  v1 = *(a1 + 24) - 998242381 * (a1 ^ 0xAA6F98D6);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1968CDE24()
{
  v3 = ((v0 ^ 0x136) - 2823) | 0x2D0;
  v9 = v7;
  v8 = (v0 ^ 0x136) - ((2 * (&v8 & 0x2A96198) - &v8 + 2102828646) ^ 0x858ABE27) * v2 + 3272;
  (*(v1 + 8 * (v0 ^ 0x1090)))(&v8);
  v8 = v3 - ((&v8 - 542635042 - 2 * (&v8 & 0xDFA80BDE)) ^ 0x27742B9F) * v2 + 5375;
  v9 = v5;
  (*(v1 + 8 * (v3 ^ 0x187D)))(&v8);
  return (v6 ^ 0xF3DF9FF5) + 2109730047 + (((v0 ^ 0x136) - 406899491) & (2 * v6)) - 1906281716;
}

uint64_t sub_1968CDE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  STACK[0x560] = a6;
  LODWORD(STACK[0x4A4]) = STACK[0x724];
  return (*(a1 + 8 * (((STACK[0x4B0] != 0) * ((25 * (((v6 - 3588) | 0x30) ^ 0x57)) ^ 0x164E)) ^ v6)))(a1, a2, a3, a4, a5, a1);
}

uint64_t sub_1968CDEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, int a23, uint64_t a24, uint64_t a25)
{
  v28 = &a22;
  v29 = 753662761 * (((v28 | 0x21262CE4) - v28 + (v28 & 0xDED9D318)) ^ 0x443CD7AF);
  v30 = v27 ^ (v27 - 2645);
  v31 = 753662761 * ((2 * (v28 & 0x750743C0) - v28 - 1963410375) ^ 0xEFE24772);
  v32 = *(v25 + 8);
  v33 = *(v32 + 8);
  LODWORD(v32) = *v32;
  v34 = a16 + v27 - 1242;
  a24 = a20;
  a25 = v33;
  a22 = (v32 ^ 0xF7BECEF9) - v29 + ((((v27 + 795800711) & 0x235FDD6) - 276982740) & (2 * v32)) + 1584872343;
  a23 = v34 ^ v29;
  (*(v26 + 8 * v30))(&a22);
  v35 = *(v25 + 8);
  v36 = *(v35 + 24);
  a22 = (*(v35 + 16) ^ 0x7636EA94) - v31 + ((2 * *(v35 + 16)) & 0xEC6DD528) - 536928260;
  a23 = v34 ^ v31;
  a24 = a20;
  a25 = v36;
  v37 = (*(v26 + 8 * v30))(&a22);
  return (*(v26 + 8 * ((2047 * (*(v25 + 16) > 1u)) ^ (a16 + v27 - 2052))))(v37);
}

uint64_t sub_1968CE054@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = ((((2 * v4) ^ 0x1Cu) - 2579) ^ v3) + v2;
  *(a2 - 7 + v8) = vadd_s8(vsub_s8(*(a1 - 7 + v8), vand_s8(vadd_s8(*(a1 - 7 + v8), *(a1 - 7 + v8)), v6)), v7);
  return (*(v5 + 8 * (v4 | (16 * ((v2 & 0xFFFFFFF8) - 8 == v3)))))();
}

uint64_t sub_1968CE0AC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v3) = *(v5 + v3);
  v7 = v3 - 686315296;
  v8 = v3 + 1;
  v10 = v7 < v2 && v8 < ((v1 - 2017666920) & 0x784333F7 ^ 0x28E844F2);
  return (*(v6 + 8 * ((v10 * v4) ^ v1)))();
}

uint64_t sub_1968CE170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *(v20 - 99) << (v18 + 8);
  v22 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v18 ^ 0xAFC));
  v23 = *(v22 + ((((v21 & 0x62 | 0xC2FCD71C) ^ v21 & 0x19C) >> 1) ^ 0x617E6B94)) + 12;
  v24 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v18 ^ 0xB2A)) - 8;
  v25 = v24[*(v20 - 97) ^ 0x6ALL];
  v26 = (v25 >> 4) | (16 * v25);
  v27 = v25 & 3;
  v28 = v27 ^ v26;
  v29 = v27 ^ ~v26;
  v30 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v18 - 2676) - 4;
  LOBYTE(v26) = v30[*(v20 - 110) ^ 0x90];
  v31 = (v29 | 0xFFFC00) & ((((v23 >> 2) & 0x3C ^ v23) << 16) ^ 0xE71CE1) | v28 & 0x1E;
  v32 = *(v20 - 106);
  v33 = (v26 - ((2 * v26) & 0xBC) + 94) << 8;
  HIDWORD(v34) = (-(v32 ^ 0xB5) ^ (91 - (v32 ^ 0xFFFFFFEE)) ^ ((v32 ^ 0xB5) - ((2 * (v32 ^ 0xB5)) & 0x1F8) + 124) ^ 0x7C) + 91;
  LODWORD(v34) = BYTE4(v34) & 0xF8;
  v35 = (v30[v32 ^ 0x14] ^ __ROR4__((v34 >> 3) ^ __ROR4__(v32 ^ 0xB5, 3), 29));
  LODWORD(v32) = v24[*(v20 - 101) ^ 0xEFLL];
  v36 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v18 ^ 0xB4B)) - 12;
  LODWORD(v32) = v32 & 3 ^ ((v32 >> 4) | (16 * v32));
  v37 = *(v22 + (*(v20 - 103) ^ 0x6ELL)) + 12;
  v38 = ((((v37 >> 2) & 0x3C ^ v37) << 16) ^ 0x6C193BB9) & (v32 ^ 0xEFFF3FBB) | v32 & 0x46;
  LODWORD(v32) = v24[*(v20 - 109) ^ 0xE3];
  v39 = (v32 & 3 | 0xA4) ^ ((v32 >> 4) | (16 * v32));
  LODWORD(v32) = (v39 & 0xE5 ^ 0xFF69FF41) & (((((v36[*(v20 - 112) ^ 0x10] << 24) + 201326592) ^ 0xBE68E4D1) & (v33 ^ 0xFF6DEFFF) | v33 & 0x1B00) ^ 0x5F290A34);
  v40 = ((v30[*(v20 - 98) ^ 0x59] << 8) ^ 0x46E15EC2) & (v31 ^ 0xF77BE32F) | v31 & 0x1E003D;
  v41 = *(v22 + (*(v20 - 107) ^ 0xB2)) + 12;
  v42 = ((((v36[*(v20 - 104) ^ 0x5BLL] + 12) ^ 0x11111111) << 24) ^ 0x17945EA9) & (v38 ^ 0x938EE402) ^ v38 & 0x2C6B0156;
  v43 = (v41 >> 2) & 0x3C;
  v44 = v43 ^ v41;
  v45 = v43 ^ ~v41;
  v46 = (v36[*(v20 - 108) ^ 0x1DLL] + 12) << 8;
  v47 = (((v35 << 24) ^ 0x3B156DA88DD1231ALL) & (v46 ^ 0x3FBD6DEAFFDD4D3FLL) | v46 & 0xDC00) ^ 0xD1F4697105708713;
  LODWORD(v35) = (v45 | 0xFF00) & v47 | v44 & 0xF6;
  v242 = v22;
  v48 = (((v36[*(v20 - 100) ^ 0x16] << 24) + 201326592) ^ 0xE7C4AACB) & (v40 ^ 0xB91A1618);
  v240 = v30;
  v49 = ((v30[*(v20 - 102) ^ 0x25] << 8) ^ 0xCE74AA92) & (v42 ^ 0x3C3A00E);
  v50 = ((((*(v22 + (*(v20 - 111) ^ 0x4FLL)) + 12) >> 2) & 0x3C | 0x41) ^ (*(v22 + (*(v20 - 111) ^ 0x4FLL)) + 12)) << 16;
  LODWORD(v32) = (v50 ^ 0xFF58FFFF) & ((v39 & 0x1A | v32) ^ 0x243765B1);
  v51 = v50 & 0x890000;
  v241 = v24;
  v52 = v24[*(v20 - 105) ^ 0x5CLL] & 3 ^ ((v24[*(v20 - 105) ^ 0x5CLL] >> 4) | (16 * v24[*(v20 - 105) ^ 0x5CLL]));
  *(v20 - 132) = v51 ^ 0x635CCEF9 ^ v32;
  *(v20 - 128) = v40 & 0x63B5534 ^ 0x7891248 ^ v48;
  v247 = (v47 >> 16) ^ (v35 << 16) ^ v52 ^ 0x57D71A39;
  *(v20 - 124) = v42 & 0x318B0C6D ^ 0xFD513A61 ^ v49;
  v53 = v18 - 1625;
  *(v20 - 116) = (((v17 ^ 0x16689E60) + 756567258) ^ ((v17 ^ 0xE8EA81D3) - 744860821) ^ ((v17 ^ 0x2ABD0173) + 298701771)) - 1464938813;
  *(v20 - 120) = 0;
  v246 = *(v20 - 116) < 0x97FE9B3D;
  v245 = v18 - 6118 + ((v18 + 1381852162) & 0xADA29BFD);
  v54 = v19;
  v55 = v24[v19[15] ^ 0xFBLL];
  LODWORD(v32) = (v55 & 3 ^ ~((v55 >> 4) | (16 * v55)) | 0xFFFFFC00) & ((((v36[v19[v245] ^ 0x9CLL] + 12) ^ 0x4F) << 24) ^ 0xF0AF40B) | (v55 & 3 ^ ((v55 >> 4) | (16 * v55))) & 0xF4;
  v56 = *(v22 + (v19[13] ^ 0x87));
  LODWORD(v47) = *(v22 + (v19[5] ^ 0xDFLL)) + 12;
  v57 = ((((((-12 - v56) ^ (-21 - ((v56 + 12) ^ 0xEB)) ^ 0x37 ^ (v56 - ((2 * (v56 + 12)) & 0x6E) + 67)) - 21) ^ ((v56 + 12) >> 2) & 0x3C) << 16) ^ 0x179FCE47) & (v32 ^ 0x3BF52B4C) | v32 & 0xE80010B8;
  LOBYTE(v32) = ((v47 >> 2) & 0x3C) + v47 - 2 * ((v47 >> 2) & 0x3C & v47);
  LODWORD(v47) = *(v22 + (v19[1] ^ 0x26)) + 12;
  v58 = (v47 >> 2) & 0x3C ^ v47;
  v59 = (v36[v19[8] ^ 0xA6] << 24) + 201326592;
  v60 = v30[v19[6] ^ 0x8FLL];
  LODWORD(v47) = v24[v19[7] ^ 0xADLL];
  LODWORD(v32) = ((v32 << 16) ^ 0x65F308E7) & ((v60 << 8) ^ 0x77FF7BEF) | (v60 << 8) & 0xFFFFF7FF;
  LODWORD(v47) = v47 & 3 ^ ((v47 >> 4) | (16 * v47));
  v61 = v30[v19[10] ^ 0x7DLL];
  v62 = v24[v19[3] ^ 3];
  v63 = ((v61 << 8) ^ 0xEED3EE21) & (v59 ^ 0xBDD3FFB9) | v59 & 0x11111111;
  v64 = v62 & 3 ^ ((v62 >> 4) | (16 * v62));
  v65 = v30[v19[2] ^ 0xA8];
  v66 = v24[v54[11] ^ 0x6DLL];
  v67 = v66 & 3 ^ ((v66 >> 4) | (16 * v66));
  v68 = *(v22 + (v54[9] ^ 0x43)) + 12;
  v69 = ((((v68 >> 2) & 0x3C ^ v68) << 16) ^ 0xD0D69DC4) & (v63 ^ 0x122C6FF7) ^ v63 & 0x2F026200;
  v70 = ((((((v36[v54[4] ^ 0x1ALL] + 12) ^ 0x31) << 24) ^ 0x82354844) & (v47 ^ 0xFF7FF87D) | v47 & 0xBB) ^ 0xAF671BA0) & (v32 ^ 0x9A199E18) ^ v32 & 0x25ADAC01;
  LODWORD(v32) = v30[v54[14] ^ 0x1CLL] << 8;
  v243 = (v36[*v54 ^ 0x29] + 12) ^ 0x47;
  v244 = (v32 ^ 0xFFFFDCFF) & (v57 ^ 0xB68A621F) ^ (v32 & 0x4300 | 0x90C0000C);
  v71 = v244 ^ 0x7D794BF0;
  v72 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v53 ^ 0x4B5));
  v73 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v53 - 1358) - 8;
  v74 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v53 ^ 0x7A2)) - 4;
  LODWORD(v24) = *&v74[4 * (v61 ^ 0x93)] + 1892743849;
  v75 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v53 ^ 0x55F)) - 12;
  v76 = (-800038331 * *&v73[4 * ((v244 ^ 0x7D794BF0u) >> 16)]) ^ ((v243 ^ 0x69E8C0E5) + *(v72 + 4 * (v243 ^ 0xA4u))) ^ v24 ^ (*&v75[4 * (v47 ^ 0xBE)] - 1498534676) ^ (4 * (5 * v24 - ((8 * v24) & (2 * v24))));
  v77 = *&v74[4 * ((v244 ^ 0x4BF0) >> 8)] + 1892743849;
  v78 = (4 * v77) & 8;
  if ((v78 & v77) != 0)
  {
    v78 = -v78;
  }

  v79 = (-800038331 * *&v73[4 * (v58 ^ 0xB3)]) ^ (*(v72 + 4 * (HIBYTE(v70) ^ 0xB1)) + (HIBYTE(v70) ^ 0x69E8C0F0)) ^ (16 * v77) ^ (*&v75[4 * (v67 ^ 0x5B)] - 1498534676);
  v80 = HIBYTE(v71);
  v81 = v79 ^ (4 * v77) & 0xFFFFFFF7 ^ (v78 + v77);
  v82 = *&v74[4 * (v65 ^ 0x4D)] + 1892743849;
  v83 = *(v72 + 4 * (HIBYTE(v71) ^ 0xE8));
  v84 = (-800038331 * *&v73[4 * (BYTE2(v70) ^ 0x3F)]) ^ (*(v72 + 4 * (HIBYTE(v69) ^ 0x30)) + (HIBYTE(v69) ^ 0x69E8C071)) ^ v82 ^ (4 * v82) ^ (16 * v82) ^ (*&v75[4 * (v244 ^ 0xF0)] - 1498534676);
  v85 = v76 ^ 0xDE;
  v86 = *&v74[4 * (v60 ^ 0x2E)] + 1892743849;
  v87 = (-800038331 * *&v73[4 * (BYTE2(v69) ^ 0xD4)]) ^ v86 ^ (v83 + (v80 ^ 0x69E8C0A9)) ^ (4 * v86) ^ (16 * v86) ^ (*&v75[4 * (v64 ^ 0xB1)] - 1498534676);
  v88 = (v76 ^ 0x6B641FDE) >> 24;
  v89 = *(v72 + 4 * (v88 ^ 0xE8));
  v90 = (v88 ^ 0x69E8C0A9 ^ v89) + 2 * (v89 & (v88 ^ 0x69E8C0A9));
  v91 = (v87 ^ 0xE45A034E) >> (v87 & 0x18 ^ 8) >> (v87 & 0x18 ^ 0x10);
  v92 = *&v74[4 * (BYTE1(v84) ^ 0x2F)];
  v93 = v90 ^ (-800038331 * *&v73[4 * (BYTE2(v87) ^ 0xEA)]) ^ (4 * (v92 + 1892743849)) ^ (16 * (v92 + 1892743849)) ^ (*&v75[4 * (v81 ^ 0x3D)] - 1498534676) ^ (v92 - ((2 * (v92 + 1892743849)) & 0x9DB39A60) - 1079326759);
  HIDWORD(v95) = v84 ^ 0x9237EB7F;
  LODWORD(v95) = HIDWORD(v95);
  v94 = v95 >> 2;
  HIDWORD(v95) = v94 ^ 0xEE7F0AC;
  LODWORD(v95) = v94;
  v96 = *&v74[4 * (BYTE1(v87) ^ 0x9F)] + 1892743849;
  v97 = (-800038331 * *&v73[4 * ((v76 ^ 0x6B641FDE) >> 16)]) ^ (*(v72 + 4 * (HIBYTE(v81) ^ 0xB9)) + (HIBYTE(v81) ^ 0x69E8C0F8)) ^ v96 ^ (4 * v96) ^ (16 * v96) ^ (*&v75[4 * ((v95 >> 30) ^ 0xA9A829A4)] - 1498534676);
  v98 = *&v74[4 * (BYTE1(v76) ^ 0x83)] + 1892743849;
  v99 = (-800038331 * *&v73[4 * (BYTE2(v81) ^ 0x89)]) ^ (*(v72 + 4 * (HIBYTE(v84) ^ 0x9A)) + (HIBYTE(v84) ^ 0x69E8C0DB)) ^ v98 ^ (4 * v98) ^ (16 * v98) ^ (*&v75[4 * (v87 ^ 0x3F)] - 1498534676);
  v100 = *(v72 + 4 * (v91 ^ 0xE8u)) + (v91 & 0xA9 ^ 0xAA039621 ^ (v91 & 0x56 | 0xC3EB5688));
  v101 = v93 ^ 0x4ED9CD30;
  v102 = -800038331 * *&v73[4 * (BYTE2(v84) ^ 0xE0)];
  v103 = *&v74[4 * (BYTE1(v81) ^ 0x98)] + 1892743849;
  if ((v93 & 0x200) != 0)
  {
    v104 = -512;
  }

  else
  {
    v104 = 512;
  }

  v105 = v102 ^ v103 ^ v100 ^ (4 * v103) ^ (16 * v103) ^ (*&v75[4 * v85] - 1498534676);
  v106 = *&v74[4 * (BYTE1(v99) ^ 0xD7)] + 1892743849;
  v107 = (-800038331 * *&v73[4 * (BYTE2(v105) ^ 0x46)]) ^ (*(v72 + 4 * (((v104 + v101) >> 24) ^ 0x91)) + (((v104 + v101) >> 24) ^ 0x69E8C0D0)) ^ v106 ^ (4 * v106) ^ (16 * v106) ^ (*&v75[4 * (v97 ^ 0x1F)] - 1498534676);
  v108 = *&v74[4 * (BYTE1(v105) ^ 0xD0)] + 1892743849;
  v109 = (-800038331 * *&v73[4 * (((v104 + v101) >> 16) ^ 0xD6)]) ^ (*(v72 + 4 * (HIBYTE(v97) ^ 0x98)) + (HIBYTE(v97) ^ 0x69E8C0D9)) ^ v108 ^ (4 * v108) ^ (16 * v108) ^ (*&v75[4 * (((v99 ^ 0xDB) - (v99 ^ 0xAA)) ^ 0xFFFFFFFE) + 4 * (v99 ^ 0xDB)] - 1498534676);
  v110 = *&v74[4 * (((v104 + v101) >> 8) ^ 0x8D)] + 1892743849;
  v111 = (-800038331 * *&v73[4 * (BYTE2(v97) ^ 0xA1)]) ^ (*(v72 + 4 * (((v99 ^ 0x69954BDBu) >> 24) ^ 0xE8)) + (((v99 ^ 0x69954BDBu) >> 24) ^ 0x69E8C0A9)) ^ v110 ^ (4 * v110) ^ (16 * v110);
  v112 = HIBYTE(v105);
  v113 = v111 ^ (*&v75[4 * (v105 ^ 0xA8)] - 1498534676);
  v114 = *&v74[4 * (BYTE1(v97) ^ 0x7B)] + 1892743849;
  v115 = *&v75[4 * (v101 ^ 3)] - 1498534676;
  v116 = (-800038331 * *&v73[4 * (BYTE2(v99) ^ 0x25)]) ^ (*(v72 + 4 * (v112 ^ 0x34)) + (v112 ^ 0x69E8C075)) ^ v114 ^ (4 * v114) ^ (16 * v114);
  v117 = v116 ^ v115;
  v118 = v116 ^ ~v115;
  v119 = v113 ^ 0x53C85049;
  v120 = *&v74[4 * (BYTE1(v107) ^ 0xD)] + 1892743849;
  v121 = (-800038331 * *&v73[4 * (BYTE2(v109) ^ 0x8B) + 708 + 4 * ((v109 >> 15) & 0x160 ^ 0xFFFFFEFF)]) ^ (*(v72 + 4 * (((v113 ^ 0x53C85049u) >> 24) ^ 0xE8)) + (((v113 ^ 0x53C85049u) >> 24) ^ 0x69E8C0A9)) ^ (*&v75[4 * (v117 ^ 0xFE)] - 1498534676) ^ (((16 * v120) ^ (4 * v120)) + v120 - 2 * (((16 * v120) ^ (4 * v120)) & v120));
  v122 = *&v74[4 * (BYTE1(v113) ^ 0xCC)] + 1892743849;
  v123 = (*(v72 + 4 * (HIBYTE(v107) ^ 0x38)) + (HIBYTE(v107) ^ 0x69E8C079)) ^ v122 ^ (-800038331 * *&v73[4 * (BYTE2(v117) ^ 0x2F)]) ^ (4 * v122) ^ (16 * v122) ^ (*&v75[4 * (v109 ^ 0xE0)] - 1498534676) ^ 0xE848C6AD;
  v124 = *&v74[4 * (BYTE1(v117) ^ 0x67)] + 1892743849;
  v125 = (*(v72 + 4 * (HIBYTE(v109) ^ 0xAB)) + (HIBYTE(v109) ^ 0x69E8C0EA)) ^ v124 ^ (-800038331 * *&v73[4 * (BYTE2(v107) ^ 0xE2)]) ^ (4 * v124) ^ (16 * v124);
  v126 = *&v75[4 * v119] - 1498534676;
  v127 = *&v74[4 * (BYTE1(v109) ^ 0x94)] + 1892743849;
  v128 = v125 ^ v126 ^ 0xD995F9D9;
  v129 = (-800038331 * *&v73[4 * BYTE2(v119)]) ^ (*(v72 + 4 * (HIBYTE(v118) ^ 0xE8)) + (HIBYTE(v118) ^ 0x69E8C0A9)) ^ v127 ^ (4 * v127) ^ (16 * v127) ^ (*&v75[4 * (v107 ^ 0xC5)] - 1498534676);
  v130 = *&v74[4 * (BYTE1(v121) ^ 0x38)] + 1892743849;
  v131 = (-800038331 * *&v73[4 * (BYTE2(v129) ^ 0xAB)]) ^ (*(v72 + 4 * (HIBYTE(v123) ^ 0xE8)) + (HIBYTE(v123) ^ 0x69E8C0A9)) ^ v130 ^ (4 * v130) ^ (16 * v130) ^ (*&v75[4 * (v125 ^ v126 ^ 0xD9)] - 1498534676);
  v132 = (-800038331 * *&v73[4 * BYTE2(v123)]) ^ (*(v72 + 4 * (HIBYTE(v128) ^ 0xE8)) + (HIBYTE(v128) ^ 0x69E8C0A9));
  v133 = *&v74[4 * (BYTE1(v129) ^ 0xCB)];
  v134 = v121 ^ 0x5ABFA455;
  v135 = (16 * (v133 + 1892743849)) ^ (4 * (v133 + 1892743849)) ^ (v133 - ((2 * (v133 + 1892743849)) & 0xA0688C7A) - 1056620314);
  v136 = v135 & 0x20000000;
  v137 = v135 & 0xDFFFFFFF;
  if ((v136 & v132) != 0)
  {
    v136 = -v136;
  }

  v138 = *(v72 + 4 * (HIBYTE(v134) ^ 0xE8));
  v139 = v137 ^ (*&v75[4 * v134] - 1498534676) ^ (v136 + v132);
  v140 = *&v74[4 * BYTE1(v123)] + 1892743849;
  v141 = v129 ^ 0xE61B574B;
  v142 = v140 ^ (*&v75[4 * v141] - 1498534676) ^ (-800038331 * *&v73[4 * BYTE2(v128)]) ^ ((HIBYTE(v134) ^ 0xDBE475C2 ^ (v138 - ((2 * v138) & 0x64196AD6) - 1307789973)) + 2 * (v138 & (HIBYTE(v134) ^ 0x69E8C0A9))) ^ (4 * (((v140 & 0xACB34C3 ^ 0xFA35AA5 ^ (4 * v140) & 0xACB34C0) & (~((4 * v140) ^ v140) | 0x3ADFB5DB)) + (((4 * v140) ^ v140) & 0x30148118)));
  v143 = *&v74[4 * BYTE1(v128)] + 1892743849;
  BYTE1(v123) = BYTE1(v139) ^ 0x19;
  v144 = (-800038331 * *&v73[4 * BYTE2(v134)]) ^ (*(v72 + 4 * (HIBYTE(v141) ^ 0xE8)) + (HIBYTE(v141) ^ 0x69E8C0A9)) ^ v143 ^ (4 * v143) ^ (16 * v143) ^ (*&v75[4 * v123] - 1498534676);
  v145 = *&v73[4 * (BYTE2(v144) ^ 0x58)];
  v146 = *&v74[4 * (BYTE1(v142) ^ 0xCB)] + 1892743849;
  v147 = v144 ^ 0xF6E893E2;
  v148 = v146 ^ (16 * v146) ^ (4 * v146) ^ (*&v75[4 * (v139 ^ 0xB5)] - 1498534676) ^ __ROR4__(((1099502592 * v145) | ((-800038331 * v145) >> 22)) ^ __ROR4__(*(v72 + 4 * (HIBYTE(v131) ^ 0x51)) + (HIBYTE(v131) ^ 0x69E8C010), 22) ^ 0x8ADC0933, 10);
  v149 = *&v74[4 * ((v144 ^ 0x93E2) >> 8)] + 1892743849;
  v142 ^= 0xF7EB57E4;
  v150 = (-800038331 * *&v73[4 * (BYTE2(v131) ^ 0xBB)]) ^ ((((v139 ^ 0x2B1519B5u) >> 24) ^ 0x69E8C0A9) + *(v72 + 4 * (((v139 ^ 0x2B1519B5u) >> 24) ^ 0xE8))) ^ v149 ^ (4 * v149) ^ (16 * v149) ^ (*&v75[4 * v142] - 1498534676);
  v151 = *&v74[4 * (BYTE1(v131) ^ 0xF3)] + 1892743849;
  v152 = (-800038331 * *&v73[4 * (BYTE2(v139) ^ 0xA5)]) ^ (*(v72 + 4 * (HIBYTE(v142) ^ 0xE8)) + (HIBYTE(v142) ^ 0x69E8C0A9)) ^ v151 ^ (4 * v151) ^ (16 * v151);
  v153 = *(v72 + 4 * (HIBYTE(v147) ^ 0xE8)) + (HIBYTE(v147) ^ 0x69E8C0A9);
  v154 = *&v75[4 * v147] - 1498534676;
  v155 = *&v73[4 * BYTE2(v142)];
  v156 = v152 ^ v154;
  v157 = v152 ^ ~v154;
  v158 = *&v74[4 * BYTE1(v123)] + 1892743849;
  v159 = *&v75[4 * (v131 ^ 0x7A)] - 1498534676;
  v160 = v148 ^ 0xA09AC9EB;
  v161 = v153 ^ v158 ^ (-800038331 * v155) ^ (4 * v158) ^ (16 * v158) ^ v159 ^ 0x7572526E;
  v162 = *&v74[4 * (BYTE1(v156) ^ 0x9E)] + 1892743849;
  v163 = (-800038331 * *&v73[4 * BYTE2(v161)]) ^ (*(v72 + 4 * (HIBYTE(v160) ^ 0xE8)) + (HIBYTE(v160) ^ 0x69E8C0A9)) ^ v162 ^ (4 * v162) ^ (16 * v162) ^ (*&v75[4 * (v150 ^ 0xE)] - 1498534676);
  v164 = *(v72 + 4 * (HIBYTE(v150) ^ 0x60));
  HIDWORD(v165) = (v156 >> 1) ^ 0x961171B;
  LODWORD(v165) = ~(v157 << 31);
  v166 = *&v74[4 * BYTE1(v161)] + 1892743849;
  v167 = v166 ^ (-800038331 * *&v73[4 * ((v148 ^ 0xA09AC9EB) >> 16)]) ^ (4 * v166) ^ (16 * v166) ^ (*&v75[4 * ((v165 >> 31) ^ 0x12C22E32)] - 1498534676) ^ ((HIBYTE(v150) ^ 0xE3FE8E0C ^ (v164 - ((2 * v164) & 0x142C9C5A) - 1978249683)) + 2 * (v164 & (HIBYTE(v150) ^ 0x69E8C021)));
  v168 = (-800038331 * *&v73[4 * (BYTE2(v150) ^ 0x66)]) ^ (*(v72 + 4 * (HIBYTE(v156) ^ 0x10)) + (HIBYTE(v156) ^ 0x69E8C051));
  v169 = *&v74[4 * (BYTE1(v148) ^ 0x55)];
  v170 = (16 * (v169 + 1892743849)) ^ (4 * (v169 + 1892743849)) ^ (v169 - ((2 * (v169 + 1892743849)) & 0xA02E7A26) + 1088960444);
  v171 = v168 & 8;
  v172 = (v170 & v168 & 8) == 0;
  v173 = v170 ^ 0xD0173D13;
  if (!v172)
  {
    v171 = -v171;
  }

  v174 = -800038331 * *&v73[4 * (BYTE2(v156) ^ 0xBB)];
  v175 = *&v74[4 * (BYTE1(v150) ^ 0xCC)] + 1892743849;
  v176 = (*&v75[4 * v161] - 1498534676) ^ v168 & 0xFFFFFFF7 ^ 0x3A9132F6 ^ (v171 + v173);
  v177 = v174 ^ (*(v72 + 4 * (HIBYTE(v161) ^ 0xE8)) + (HIBYTE(v161) ^ 0x69E8C0A9)) ^ v175 ^ (4 * v175) ^ (16 * v175) ^ (*&v75[4 * v160] - 1498534676);
  v178 = *&v74[4 * BYTE1(v176)] + 1892743849;
  v179 = (-800038331 * *&v73[4 * (BYTE2(v177) ^ 0x85)]) ^ (*(v72 + 4 * (HIBYTE(v163) ^ 0xC5)) + (HIBYTE(v163) ^ 0x69E8C084)) ^ v178 ^ (4 * v178) ^ (16 * v178) ^ (*&v75[4 * (v167 ^ 0x1B)] - 1498534676);
  v180 = *&v74[4 * (BYTE1(v177) ^ 0xAC)];
  v181 = (*(v72 + 4 * (((v167 ^ 0x2EE2D21B) >> 24) ^ 0xE8)) + (((v167 ^ 0x2EE2D21B) >> 24) ^ 0x69E8C0A9)) ^ (-800038331 * *&v73[4 * (BYTE2(v163) ^ 0x76)]) ^ (4 * (v180 + 1892743849)) ^ (16 * (v180 + 1892743849)) ^ (*&v75[4 * v176] - 1498534676) ^ (v180 - ((2 * (v180 + 1892743849)) & 0x7B8DDAFA) + 781707302) ^ 0xBDC6ED7D;
  v182 = *(v72 + 4 * (HIBYTE(v176) ^ 0xE8)) + (HIBYTE(v176) ^ 0x69E8C0A9);
  v183 = -800038331 * *&v73[4 * (BYTE2(v167) ^ 0x52)];
  v184 = (v182 ^ -v182 ^ (v183 - (v183 ^ v182))) + v183;
  v185 = *&v74[4 * (BYTE1(v163) ^ 0x31)] + 1892743849;
  v186 = HIBYTE(v177);
  v187 = v185 ^ (16 * v185) ^ (4 * v185) ^ (*&v75[4 * (v177 ^ 0x96)] - 1498534676) ^ v184;
  v188 = *&v74[4 * (BYTE1(v167) ^ 0x4E)] + 1892743849;
  v189 = (-800038331 * *&v73[4 * BYTE2(v176)]) ^ (*(v72 + 4 * (v186 ^ 0x2F)) + (v186 ^ 0x69E8C06E)) ^ v188 ^ (4 * v188) ^ (16 * v188) ^ (*&v75[4 * (v163 ^ 0x50)] - 1498534676);
  v190 = *&v74[4 * ((v187 ^ 0x1C11) >> 8)] + 1892743849;
  v191 = (-800038331 * *&v73[4 * (BYTE2(v189) ^ 0x58)]) ^ (*(v72 + 4 * (((v179 ^ 0x6776BCCDu) >> 24) ^ 0xE8)) + (__ROR4__(__ROR4__((v179 ^ 0x6776BCCDu) >> 24, 2) ^ 0x9E0E47A5, 30) ^ 0x11D1DE3F)) ^ v190 ^ (4 * v190) ^ (16 * v190) ^ (*&v75[4 * (v181 ^ 0xB7)] - 1498534676);
  v192 = *&v74[4 * (BYTE1(v189) ^ 0xFE)] + 1892743849;
  LODWORD(v193) = v192 & 0xFFFFFFF ^ __ROR4__(v192, 2) ^ 0x8E2F3514;
  HIDWORD(v193) = v193;
  v194 = (-800038331 * *&v73[4 * ((v179 ^ 0x6776BCCDu) >> 16)]) ^ (*(v72 + 4 * (HIBYTE(v181) ^ 0xA1)) + (HIBYTE(v181) ^ 0x69E8C0E0)) ^ v192 ^ (*&v75[4 * (v187 ^ 0x11)] - 1498534676) ^ (4 * (v193 >> 30));
  v195 = *(v72 + 4 * (HIBYTE(v189) ^ 0x5F));
  v196 = *&v74[4 * (BYTE1(v179) ^ 0x20)] + 1892743849;
  v197 = (-800038331 * *&v73[4 * (BYTE2(v181) ^ 0x68)]) ^ (*(v72 + 4 * (((v187 ^ 0x5E3F1C11u) >> 24) ^ 0xE8)) + (((v187 ^ 0x5E3F1C11u) >> 24) ^ 0x69E8C0A9)) ^ v196 ^ (4 * v196) ^ (16 * v196) ^ (*&v75[4 * (v189 ^ 0x9C)] - 1498534676);
  v198 = *&v74[4 * (BYTE1(v181) ^ 0x1F)] + 1892743849;
  v199 = *&v75[4 * (v179 ^ 0xBC)];
  v200 = (v191 ^ 0xE891E5EA) >> 24;
  v201 = v194 ^ 0x12F6920A;
  v202 = (-800038331 * *&v73[4 * (BYTE2(v187) ^ 0x8F)]) ^ (v195 + (__ROR4__(__ROR4__(HIBYTE(v189) ^ 0x27573682, 5) ^ 0xABDD625C, 27) ^ 0x3513BD09)) ^ v198 ^ (4 * v198) ^ (16 * v198) ^ (v199 - 1498534676);
  if (((v194 ^ 0x12F6920A) & 8) != 0)
  {
    v203 = -8;
  }

  else
  {
    v203 = 8;
  }

  v204 = v203 + v201;
  v205 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v53 ^ 0x4DE)) - 8;
  v206 = *&v205[4 * (v200 ^ 0xB7)];
  v207 = v200 ^ 0x1B32BA8C;
  v208 = v206 + v207;
  v209 = v206 & v207;
  v210 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v53 ^ 0x551)) - 8;
  v211 = v208 - 2 * v209;
  v212 = __ROR4__(*&v210[4 * (BYTE2(v202) ^ 0x7D)], 21);
  v213 = v204 & 0x18 ^ (v204 | 0x18);
  v214 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v53 - 1183) - 8;
  v215 = *&v214[4 * (((v197 ^ 0xFFEF) >> 8) ^ 0x48)] ^ ((v197 ^ 0xFFEF) >> 8) ^ 0x8C546680;
  v216 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v53 - 874) - 8;
  v217 = ((v215 ^ -v215 ^ ((v211 ^ v212) - (v215 ^ v211 ^ v212))) + (v211 ^ v212)) ^ __ROR4__(*&v216[4 * (v213 ^ 8)], 31);
  v218 = HIBYTE(v201);
  v219 = v202 ^ 0x37CC1EDC;
  v220 = *&v205[4 * (HIBYTE(v201) ^ 0xB7)] ^ BYTE1(v219) ^ __ROR4__(*&v210[4 * (BYTE2(v191) ^ 0x20)], 21) ^ *&v214[4 * (BYTE1(v219) ^ 0x48)] ^ __ROR4__(*&v216[4 * (v197 ^ 0xF7)], 31);
  v221 = *&v210[4 * (BYTE2(v194) ^ 0x47)];
  LODWORD(v210) = *&v210[4 * (BYTE2(v197) ^ 0x4D)];
  v222 = *(v20 - 120);
  v223 = ((v197 ^ 0xC9FCFFEF) >> 24) ^ (((v191 ^ 0xE5EA) >> 8) - 1940625792 - (((v191 ^ 0xE891E5EA) >> 7) & 0x100)) ^ *&v205[4 * (((v197 ^ 0xC9FCFFEF) >> 24) ^ 0xB7)] ^ *&v214[4 * (((v191 ^ 0xE5EA) >> 8) ^ 0x48)] ^ __ROR4__(v221, 21) ^ (2 * *&v216[4 * v219]) ^ (*&v216[4 * v219] >> 31);
  v224 = BYTE1(v201);
  LODWORD(v214) = *&v214[4 * (BYTE1(v201) ^ 0x48)];
  v225 = (v220 - ((2 * v220) & 0x7FEA7AEC) + 1073036662) ^ v247;
  v226 = (v217 - ((2 * v217) & 0x3568AD4) - 2119482006) ^ *(v20 - 132);
  HIDWORD(v227) = *&v216[4 * (v191 ^ 0xF2)];
  LODWORD(v227) = HIDWORD(v227);
  LODWORD(v205) = HIBYTE(v219) ^ v224 ^ *&v205[4 * (HIBYTE(v219) ^ 0xB7)] ^ __ROR4__(v210, 21) ^ v214 ^ 0x9766DC0C;
  LODWORD(v205) = (v205 ^ -v205 ^ ((v227 >> 31) - (v205 ^ (v227 >> 31)))) + (v227 >> 31);
  LODWORD(v210) = (v223 - ((2 * v223) & 0x74CCABE) + 61236575) ^ *(v20 - 124);
  LODWORD(v227) = __ROR4__(*(v20 - 128) ^ 0xA10BAA45 ^ (v205 - ((2 * v205) & 0xE0E9F87E) + 1886714943), 9) ^ 0x22D085D5;
  HIDWORD(v227) = v227;
  v228 = v227 >> 23;
  v229 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v53 ^ 0x4B8)) - 12;
  LODWORD(v227) = __ROR4__(v218 ^ 0x58 ^ ((v220 - ((2 * v220) & 0xEC) + 118) ^ v247), 4) ^ 0xCC605DEE;
  HIDWORD(v227) = v227;
  v54[3] = v229[((v217 - ((2 * v217) & 0xD4) + 106) ^ *(v20 - 132)) ^ 2] ^ 0xA0;
  v54[7] = v229[(v227 >> 28) ^ 0xC605DE69] ^ 0x13;
  v230 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v53 ^ 0x5E6)) - 4;
  v54[1] = (v230[BYTE2(v226) ^ 0x5ALL] + (BYTE2(v226) ^ 0xDE)) ^ 0x87;
  v54[15] = v229[v228 ^ 8] ^ 0x6B;
  v54[13] = ((BYTE2(v228) ^ 0x67 ^ v230[BYTE2(v228) ^ 0xE3]) + 2 * ((BYTE2(v228) ^ 0x67) & v230[BYTE2(v228) ^ 0xE3])) ^ 0x8C;
  v231 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v53 - 908) - 8;
  v54[14] = v231[BYTE1(v228) ^ 0x31] ^ 0x2C;
  v54[10] = v231[BYTE1(v210) ^ 0x7ELL] ^ 0x58;
  v54[6] = v231[BYTE1(v225) ^ 0x13] ^ 0x95;
  v232 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v53 - 1202) - 8;
  LOBYTE(v228) = v232[HIBYTE(v228) ^ 0xC9];
  *(a16 + v245) = v228 ^ 0xC8 ^ (8 * (v228 & 1));
  v54[9] = (v230[BYTE2(v210) ^ 0xDCLL] + (BYTE2(v210) ^ 0x58)) ^ 0x72;
  LOBYTE(v228) = v232[HIBYTE(v226) ^ 0x8DLL];
  *v54 = v228 ^ 0x63 ^ ((8 * ~v228) | 0xF0);
  v233 = v232[(v210 >> 24) ^ 0xC1];
  v234 = (8 * ~v233) | 0xF0u;
  v54[8] = v233 ^ 0x59 ^ ((8 * ~v233) | 0xF0);
  LOBYTE(v233) = v232[HIBYTE(v225) ^ 0x83];
  v235 = 8 * (v233 & 1u);
  v54[4] = v233 ^ (8 * (v233 & 1)) ^ 0x3C;
  v236 = BYTE2(v225) ^ 0x93;
  v237 = v230[v236];
  v54[5] = (v237 + (BYTE2(v225) ^ 0x17)) ^ 0xEB;
  v54[2] = v231[BYTE1(v226) ^ 0xAFLL] ^ 0x1E;
  v54[11] = v229[v210 ^ 0x55] ^ 0x3D;
  v238 = (v222 - 1744921779) < *(v20 - 116);
  if (v246 != (v222 - 1744921779) < 0x97FE9B3D)
  {
    v238 = v246;
  }

  return (*(a17 + 8 * ((5156 * v238) ^ v53)))(v237, v236, v235, v234, 19, v222, v216, v217, a9, a10, a11, v36, v240, v241, v242, a16, a17);
}

uint64_t sub_1968D010C@<X0>(int a1@<W8>)
{
  v4 = (((a1 ^ 0x571) - 1723) ^ 0x662F0308) + v3;
  v6 = v4 > 0x96B3F8D4 && -1766590187 - v1 > v4;
  return (*(v2 + 8 * ((v6 * ((((a1 ^ 0x571) - 1158991679) & 0x4514BFDF) - 1845)) ^ a1 ^ 0x571)))();
}

uint64_t sub_1968D0214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, uint64_t a18, char a19)
{
  a17 = v19 + 196526829;
  *(v22 - 120) = (v21 + 426) ^ (654144011 * ((((2 * (v22 - 120)) | 0xA7C4B498) - (v22 - 120) - 1407343180) ^ 0x7F3627D0));
  *(v22 - 112) = a15;
  *(v22 - 104) = &a19;
  (*(v20 + 8 * (v21 + 3010)))(v22 - 120);
  *(v22 - 104) = v21 + 753662761 * ((v22 + 985750267 - 2 * ((v22 - 120) & 0x3AC15B73)) ^ 0x5FDBA038) - 1558;
  *(v22 - 120) = a15;
  *(v22 - 112) = &a16;
  v23 = (*(v20 + 8 * (v21 + 2980)))(v22 - 120);
  return (*(v20 + 8 * (((*(v22 - 100) > 0x5818ABABu) * ((((v21 - 2541) | 0x48) + 1833) ^ 0xD81)) ^ v21)))(v23);
}

uint64_t sub_1968D0380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34, uint64_t a35)
{
  v41 = (v36 - 68160783) & 0xD7176FD7;
  v42 = (*(v35 + 8 * (v36 ^ 0x1648)))(a34 + 4, 0);
  v43 = a34[4] - 1055553398 - ((a34[4] << ((v36 - 15) & 0xD7 ^ v37)) & 0x822B1114);
  a34[1] = a34[6] - 1055553398 - ((2 * a34[6]) & 0x822B1114);
  a34[2] = v43;
  v44 = (*(a35 + 8 * (v36 ^ 0x1629)))(v42);
  a34[3] = v44 - 1055553397 + ~((2 * v44) & 0x822B1114);
  v45 = (*(a35 + 8 * (v36 + 3609)))();
  *a34 = v45 - 1055553397 + ~((2 * v45) & 0x822B1114);
  v46 = 489239129 * ((((v40 - 144) | 0xC43CCEDF86550AE2) - (v40 - 144) + ((v40 - 144) & 0x3BC3312079AAF518)) ^ 0x53E6E5C3F7D29D4);
  v38[1] = (*a34 ^ 0xC115888A) + ((1664525 * (*v38 ^ (*v38 >> 30))) ^ v38[1]);
  *(v40 - 104) = -1658788277 - v46 + v41;
  *(v40 - 144) = 2 - v46;
  *(v40 - 112) = v41 + 1336198699 + v46;
  *(v40 - 108) = (v41 + 1336198810) ^ v46;
  *(v40 - 120) = v46 + 623;
  *(v40 - 136) = v46 + 1;
  *(v40 - 132) = ((v41 + 1336198699) ^ 0x1C9) + v46;
  v47 = (*(a35 + 8 * (v39 + v41 + 1010)))(v40 - 144);
  return (*(a35 + 8 * *(v40 - 128)))(v47);
}

void fp_dh_c2e9d4f12312b546fcc81227b732d5c4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) + 1790939281 * ((2 * (a1 & 0x622C5BCF) - a1 + 500409392) ^ 0xE50F8471);
  v3[0] = v1 - 1068996913 * ((-65860552 - (v3 | 0xFC130C38) + (v3 | 0x3ECF3C7)) ^ 0xD6021256) + 192806015;
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x691)) - 4;
  (*&v2[8 * (v1 ^ 0x1E2B)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968D0728@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = (((LODWORD(STACK[0x4B8]) ^ 0x84668622) + 2073655774) ^ ((LODWORD(STACK[0x4B8]) ^ 0x4DB025E2) - 1303389666) ^ (((2 * (((a2 + 2479) | 0x60) ^ 0x16A9)) ^ 0xAF5FAD67) + (LODWORD(STACK[0x4B8]) ^ 0x50A05B1B))) - 1754839307;
  v3 = (v2 ^ 0x2A4FA9C4) & (2 * (v2 & 0x20FB1E6)) ^ v2 & 0x20FB1E6;
  v4 = ((2 * (v2 ^ 0x2A44E900)) ^ 0x5096B1CC) & (v2 ^ 0x2A44E900) ^ (2 * (v2 ^ 0x2A44E900)) & 0x284B58E6;
  v5 = v4 ^ 0x28494822;
  v6 = (v4 ^ 0x20080) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xA12D6398) & v5 ^ (4 * v5) & 0x284B58E4;
  v8 = (v7 ^ 0x20094080) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x8421866)) ^ 0x84B58E60) & (v7 ^ 0x8421866) ^ (16 * (v7 ^ 0x8421866)) & 0x284B58E0;
  return (*(a1 + 8 * ((56 * ((v2 ^ (2 * ((((v9 ^ 0x284A5086) << 8) & 0x284B5800 ^ 0x8480000 ^ (((v9 ^ 0x284A5086) << 8) ^ 0x4B580000) & (v9 ^ 0x284A5086)) & (((v9 ^ 0x10800) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x10800) & (v8 << 8) ^ v8))) == 34583014)) ^ a2)))();
}

void fp_dh_90af17de9096f52d63ed42cf1f6ee4a5(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) - 676339932;
  if (v2 < 0)
  {
    v2 = 676339932 - *(*(a1 + 8) + 4);
  }

  v1 = *a1 ^ (1068996913 * (((a1 | 0xA922E3F9) - a1 + (a1 & 0x56DD1C06)) ^ 0x7CCC0268));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1968D2114@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = a2 - 1229;
  STACK[0x3E0] = *(a1 + 8 * (a2 - 5697));
  LODWORD(STACK[0x320]) = STACK[0x800];
  LODWORD(STACK[0x330]) = STACK[0x43C];
  LODWORD(STACK[0x350]) = v2 - 5;
  LODWORD(STACK[0x340]) = STACK[0x48C];
  v4 = (*(a1 + 8 * ((a2 - 1229) ^ 0xB1D)))(112, 0x100004098D10E67);
  v5 = STACK[0x370];
  STACK[0x3C8] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (25 * (v3 ^ 0x1175) - 5668)) ^ v3)))();
}

uint64_t sub_1968D2124@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v33 = &a27 + v28;
  *v33 = a1;
  v33[1] = v27;
  v33[2] = v29;
  *(&a27 + (a8 ^ 0x90) + v28) = v30;
  v34 = 1283153057 * ((((2 * (v32 - 168)) | 0x4DE76390) - (v32 - 168) + 1493978680) ^ 0xE92BB2FF);
  *(v32 - 160) = &a27;
  *(v32 - 152) = (a8 + 2832) ^ v34;
  *(v32 - 168) = v34 + 751314306;
  v35 = (*(v31 + 8 * (a8 + 6649)))(v32 - 168);
  return a16(v35, 216);
}

uint64_t sub_1968D2154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v51 = 552 * (v47 ^ 0x15ED);
  v52 = (*(v48 + 8 * (v47 + 1245)))(&a47, 0);
  (*(v48 + 8 * (v47 + 1214)))(v52);
  v53 = (*(v48 + 8 * (v47 + 1214)))();
  *a29 = v53 - 1131472623 - ((2 * v53) & 0x791E3222);
  v54 = 489239129 * ((v50 - 176) ^ 0xC102A083B9282336);
  v55 = *v49;
  v56 = 1664525 * (((((v55 >> 30) | 0x2454E86C) ^ v55 ^ 0xD6531C70) + 699196304) ^ ((((v55 >> 30) | 0x2454E86C) ^ v55 ^ 0xDF9905FC) + 543619588) ^ ((((v55 >> 30) | 0x2454E86C) ^ v55 ^ 0x2D9EF1E0) - 765391328)) + 2019370385;
  v57 = v56 ^ v49[1] ^ ((v56 ^ 0x1E6A20E1) - 109867252) ^ ((v56 ^ 0x5F82104C) - 1197752409) ^ ((v56 ^ 0x36F19E67) - 773312114) ^ ((v56 ^ 0x6FFFFEDF) - 1998171850);
  v49[1] = (((*a29 ^ 0x2560EA39) - 627108409) ^ ((*a29 ^ 0xCD396D8D) + 851874419) ^ ((*a29 ^ 0x54D69EA5) - 1423351461)) - 1367387379 + (((v57 ^ 0x6A806380) + 2087318935) ^ ((v57 ^ 0x3D3E2490) + 735556231) ^ ((v57 ^ 0x4F581705) + 1504805140));
  v58 = (v50 - 176);
  v58[3] = v54 + 623;
  *(v50 - 144) = v51 - 518056025 + v54;
  *(v50 - 140) = v54 ^ (v51 - 518056025) ^ 0x63;
  *(v50 - 136) = 1881689346 - v54 + v51;
  *v58 = 2 - v54;
  *(v50 - 168) = v54 | 1;
  *(v50 - 164) = ((v51 - 518056025) ^ 0x1AC) + v54;
  v59 = (*(v48 + 8 * (v51 + 4663)))(v50 - 176);
  return (*(v48 + 8 * *(v50 - 160)))(v59);
}

uint64_t sub_1968D256C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, unsigned int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int64x2_t a23, int8x16_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int8x16_t a29, int8x16_t a30, int64x2_t a31, int8x16_t a32, int8x16_t a33, int8x16_t a34, int8x16_t a35, int8x16_t a36, int64x2_t a37, int8x16_t a38, int8x16_t a39, int64x2_t a40, int8x16_t a41, int8x16_t a42, int64x2_t a43, int8x16_t a44, int8x16_t a45, int8x16_t a46, uint64_t a47, uint64_t a48, int8x16_t a49, int64x2_t a50)
{
  v61 = v53 - 16;
  *&STACK[0x380] = *(v57 + v61 - 16);
  v62.i64[0] = v55 + v61 + v54;
  v62.i64[1] = v57 + v61 - 8;
  v63.i64[0] = v57 + v61 - 1;
  v63.i64[1] = v57 + v61 - 2;
  v64.i64[0] = v57 + v61 - 3;
  v64.i64[1] = v57 + v61 - 4;
  v65.i64[0] = v57 + v61 - 5;
  v65.i64[1] = v57 + v61 - 6;
  v66.i64[0] = v57 + v61 - 9;
  v66.i64[1] = v57 + v61 - 10;
  v67.i64[0] = v57 + v61 - 11;
  v67.i64[1] = v57 + v61 - 12;
  v68.i64[0] = v57 + v61 - 13;
  v68.i64[1] = v57 + v61 - 14;
  v69.i64[0] = v57 + v61 - 15;
  v69.i64[1] = v57 + v61 - 16;
  *&v70 = a1 + v61 + v54;
  *(&v70 + 1) = v56 + v61 - 8;
  *&STACK[0x370] = v70;
  *&v70 = v56 + v61 - 1;
  *(&v70 + 1) = v56 + v61 - 2;
  *&STACK[0x360] = v70;
  *&v70 = v56 + v61 - 3;
  *(&v70 + 1) = v56 + v61 - 4;
  *&STACK[0x2F0] = v70;
  *&v70 = v56 + v61 - 5;
  *(&v70 + 1) = v56 + v61 - 6;
  *&STACK[0x2E0] = v70;
  v71 = vandq_s8(v69, *&STACK[0x3E0]);
  v72 = vandq_s8(v68, *&STACK[0x3E0]);
  v73 = vandq_s8(v67, *&STACK[0x3E0]);
  v74 = vandq_s8(v66, *&STACK[0x3E0]);
  v75 = vandq_s8(v65, *&STACK[0x3E0]);
  v76 = vandq_s8(v64, *&STACK[0x3E0]);
  v77 = vandq_s8(v63, *&STACK[0x3E0]);
  v78 = vandq_s8(v62, *&STACK[0x3E0]);
  v79 = *&STACK[0x3E0];
  v80 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v88 = vaddq_s64(vorrq_s8(vsubq_s64(a50, v87), a49), vorrq_s8(vaddq_s64(v87, *&STACK[0x210]), *&STACK[0x200]));
  v89 = vaddq_s64(vorrq_s8(vsubq_s64(a50, v86), a49), vorrq_s8(vaddq_s64(v86, *&STACK[0x210]), *&STACK[0x200]));
  v90 = vaddq_s64(vorrq_s8(vsubq_s64(a50, v85), a49), vorrq_s8(vaddq_s64(v85, *&STACK[0x210]), *&STACK[0x200]));
  v91 = vaddq_s64(vorrq_s8(vsubq_s64(a50, v84), a49), vorrq_s8(vaddq_s64(v84, *&STACK[0x210]), *&STACK[0x200]));
  v92 = vaddq_s64(vorrq_s8(vsubq_s64(a50, v83), a49), vorrq_s8(vaddq_s64(v83, *&STACK[0x210]), *&STACK[0x200]));
  v93 = vaddq_s64(vorrq_s8(vsubq_s64(a50, v82), a49), vorrq_s8(vaddq_s64(v82, *&STACK[0x210]), *&STACK[0x200]));
  v94 = vaddq_s64(vorrq_s8(vsubq_s64(a50, v81), a49), vorrq_s8(vaddq_s64(v81, *&STACK[0x210]), *&STACK[0x200]));
  v95 = vsubq_s64(*&STACK[0x3B0], vaddq_s64(vorrq_s8(vsubq_s64(a50, v80), a49), vorrq_s8(vaddq_s64(v80, *&STACK[0x210]), *&STACK[0x200])));
  v96 = vsubq_s64(*&STACK[0x3B0], v94);
  v97 = vsubq_s64(*&STACK[0x3B0], v93);
  v98 = vsubq_s64(*&STACK[0x3B0], v92);
  v99 = vsubq_s64(*&STACK[0x3B0], v91);
  v100 = vsubq_s64(*&STACK[0x3B0], v90);
  v101 = vsubq_s64(*&STACK[0x3B0], v89);
  v102 = vsubq_s64(*&STACK[0x3B0], v88);
  v103 = *&STACK[0x3B0];
  v104 = veorq_s8(v102, a46);
  v105 = veorq_s8(v101, a46);
  v106 = veorq_s8(v100, a46);
  v107 = veorq_s8(v99, a46);
  v108 = veorq_s8(v98, a46);
  v109 = veorq_s8(v97, a46);
  v110 = veorq_s8(v96, a46);
  v111 = veorq_s8(v95, a46);
  v112 = veorq_s8(v95, a45);
  v113 = veorq_s8(v96, a45);
  v114 = veorq_s8(v97, a45);
  v115 = veorq_s8(v98, a45);
  v116 = veorq_s8(v99, a45);
  v117 = veorq_s8(v100, a45);
  v118 = veorq_s8(v101, a45);
  v119 = veorq_s8(v102, a45);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v119);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v118);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v117);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v116);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v115);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v114);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v113);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), a44), v127), a43), a42);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), a44), v126), a43), a42);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), a44), v125), a43), a42);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), a44), v124), a43), a42);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), a44), v123), a43), a42);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), a44), v122), a43), a42);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), a44), v121), a43), a42);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), a44), v120), a43), a42);
  v136 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v140 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v141 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v142 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v143 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v144 = veorq_s8(v131, v139);
  v145 = veorq_s8(v130, v138);
  v146 = veorq_s8(v129, v137);
  v147 = veorq_s8(v128, v136);
  v148 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v147);
  v156 = vaddq_s64(v154, v146);
  v157 = vaddq_s64(v153, v145);
  v158 = vaddq_s64(v152, v144);
  v159 = vaddq_s64(v151, v143);
  v160 = vaddq_s64(v150, v142);
  v161 = vaddq_s64(v149, v141);
  v162 = vaddq_s64(v148, v140);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), a41), v162), a40), a39);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), a41), v161), a40), a39);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), a41), v160), a40), a39);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), a41), v159), a40), a39);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), a41), v158), a40), a39);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v157, v157), a41), v157), a40), a39);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), a41), v156), a40), a39);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v155, v155), a41), v155), a40), a39);
  v171 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v175 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v176 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v177 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v178 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v179 = veorq_s8(v166, v174);
  v180 = veorq_s8(v165, v173);
  v181 = veorq_s8(v164, v172);
  v182 = veorq_s8(v163, v171);
  v183 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v182);
  v191 = vaddq_s64(v189, v181);
  v192 = vaddq_s64(v188, v180);
  v193 = vaddq_s64(v187, v179);
  v194 = vaddq_s64(v186, v178);
  v195 = vaddq_s64(v185, v177);
  v196 = vaddq_s64(v184, v176);
  v197 = vaddq_s64(v183, v175);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), a38)), a37), a36);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(v196, vandq_s8(vaddq_s64(v196, v196), a38)), a37), a36);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(v195, vandq_s8(vaddq_s64(v195, v195), a38)), a37), a36);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(v194, vandq_s8(vaddq_s64(v194, v194), a38)), a37), a36);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(v193, vandq_s8(vaddq_s64(v193, v193), a38)), a37), a36);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(v192, vandq_s8(vaddq_s64(v192, v192), a38)), a37), a36);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(v191, vandq_s8(vaddq_s64(v191, v191), a38)), a37), a36);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(v190, vandq_s8(vaddq_s64(v190, v190), a38)), a37), a36);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v207 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v208 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v209 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v210 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v211 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v212 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v213 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v214 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v218 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v213);
  v222 = vaddq_s64(v220, v212);
  v223 = vaddq_s64(v219, v211);
  v224 = vaddq_s64(v218, v210);
  v225 = vaddq_s64(v217, v209);
  v226 = vaddq_s64(v216, v208);
  v227 = vaddq_s64(v215, v207);
  v228 = vaddq_s64(v214, v206);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v221, a35), vorrq_s8(v221, a23)), a23), a34);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v222, a35), vorrq_s8(v222, a23)), a23), a34);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223, a35), vorrq_s8(v223, a23)), a23), a34);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v224, a35), vorrq_s8(v224, a23)), a23), a34);
  v233 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v225, a35), vorrq_s8(v225, a23)), a23), a34);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v226, a35), vorrq_s8(v226, a23)), a23), a34);
  v235 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v227, a35), vorrq_s8(v227, a23)), a23), a34);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228, a35), vorrq_s8(v228, a23)), a23), a34);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v238 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v239 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v240 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v241 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v242 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v243 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v244 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v245 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v246 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v247 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v249 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v244);
  v253 = vaddq_s64(v246, v238);
  v254 = veorq_s8(vaddq_s64(v245, v237), a33);
  v255 = veorq_s8(v253, a33);
  v256 = veorq_s8(vaddq_s64(v247, v239), a33);
  v257 = veorq_s8(vaddq_s64(v248, v240), a33);
  v258 = veorq_s8(vaddq_s64(v249, v241), a33);
  v259 = veorq_s8(vaddq_s64(v250, v242), a33);
  v260 = veorq_s8(vaddq_s64(v251, v243), a33);
  v261 = veorq_s8(v252, a33);
  v262 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v263 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v264 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v265 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v266 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v267 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v268 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v269 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v270 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v273 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL);
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v269);
  v278 = vaddq_s64(v276, v268);
  v279 = vaddq_s64(v275, v267);
  v280 = vaddq_s64(v274, v266);
  v281 = vaddq_s64(v273, v265);
  v282 = vaddq_s64(v272, v264);
  v283 = vaddq_s64(v271, v263);
  v284 = vaddq_s64(v270, v262);
  v285 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v284, v284), a32), v284), a31), a30);
  v286 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v283, v283), a32), v283), a31), a30);
  v287 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v282, v282), a32), v282), a31), a30);
  v288 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v281, v281), a32), v281), a31), a30);
  v289 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v280, v280), a32), v280), a31), a30);
  v290 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v279, v279), a32), v279), a31), a30);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v278, v278), a32), v278), a31), a30);
  v292 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v277, v277), a32), v277), a31), a30);
  *&STACK[0x300] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), veorq_s8(v286, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), a24)));
  *&STACK[0x310] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v62, 3uLL), a24)));
  *&STACK[0x2D0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), a24)));
  v293 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), a24)));
  *&STACK[0x340] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v67, 3uLL), a24)));
  *&STACK[0x350] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v66, 3uLL), a24)));
  *&STACK[0x320] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), a24)));
  *&STACK[0x330] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), a24)));
  v295 = *&STACK[0x2E0];
  v294 = *&STACK[0x2F0];
  v296 = vandq_s8(*&STACK[0x2E0], v79);
  v297 = vandq_s8(*&STACK[0x2F0], v79);
  v298 = v79;
  v299 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v300 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v301 = *&STACK[0x3F0];
  v302 = *&STACK[0x3D0];
  v303 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3D0], v300), *&STACK[0x400]), vorrq_s8(vaddq_s64(v300, *&STACK[0x3F0]), *&STACK[0x410]));
  v304 = vsubq_s64(v103, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3D0], v299), *&STACK[0x400]), vorrq_s8(vaddq_s64(v299, *&STACK[0x3F0]), *&STACK[0x410])));
  v305 = vsubq_s64(v103, v303);
  v306 = veorq_s8(v305, *&STACK[0x3A0]);
  v307 = veorq_s8(v304, *&STACK[0x3A0]);
  v308 = vdupq_n_s64(a2);
  *&STACK[0x2C0] = v308;
  v309 = veorq_s8(v304, v308);
  v310 = veorq_s8(v305, v308);
  v311 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v310);
  v312 = vdupq_n_s64(a3);
  *&STACK[0x280] = v312;
  v313 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), v309), v312);
  v314 = veorq_s8(v311, v312);
  v315 = vdupq_n_s64(a4);
  *&STACK[0x2B0] = v315;
  v316 = vsubq_s64(v314, vandq_s8(vaddq_s64(v314, v314), v315));
  v317 = vsubq_s64(v313, vandq_s8(vaddq_s64(v313, v313), v315));
  v318 = vdupq_n_s64(a5);
  v319 = vdupq_n_s64(a6);
  *&STACK[0x290] = v319;
  *&STACK[0x2A0] = v318;
  v320 = veorq_s8(vaddq_s64(v316, v318), v319);
  v321 = veorq_s8(vaddq_s64(v317, v318), v319);
  v322 = vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL);
  v323 = veorq_s8(v321, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL));
  v324 = veorq_s8(v320, v322);
  v325 = vdupq_n_s64(a7);
  *&STACK[0x270] = v325;
  v326 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v323), v325);
  v327 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v324), v325);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v324, 3uLL), v324, 0x3DuLL));
  v329 = veorq_s8(v326, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v330 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v329);
  v332 = vdupq_n_s64(v58);
  *&STACK[0x260] = v332;
  v333 = veorq_s8(vaddq_s64(v330, v328), v332);
  v334 = veorq_s8(v331, v332);
  v335 = veorq_s8(v334, vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL));
  v336 = veorq_s8(v333, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL));
  v337 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v336);
  v338 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), v335);
  v339 = vdupq_n_s64(v60);
  v340 = vdupq_n_s64(v50);
  v341 = vdupq_n_s64(v51);
  *&STACK[0x3C0] = v341;
  v342 = veorq_s8(vaddq_s64(vsubq_s64(v338, vandq_s8(vaddq_s64(v338, v338), v339)), v340), v341);
  v343 = veorq_s8(vaddq_s64(vsubq_s64(v337, vandq_s8(vaddq_s64(v337, v337), v339)), v340), v341);
  v344 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v345 = veorq_s8(v343, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v346 = veorq_s8(v342, v344);
  v347 = vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL);
  v348 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL), v346);
  v349 = vaddq_s64(v347, v345);
  v350 = vdupq_n_s64(0x60B83CEF67356D1BuLL);
  v351 = veorq_s8(v349, v350);
  v352 = veorq_s8(v348, v350);
  v353 = veorq_s8(v352, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v354 = veorq_s8(v351, vsraq_n_u64(vshlq_n_s64(v345, 3uLL), v345, 0x3DuLL));
  v355 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v356 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), v354);
  v357 = vaddq_s64(v355, v353);
  v358 = vdupq_n_s64(v52);
  v359 = vsubq_s64(v356, vandq_s8(vaddq_s64(v356, v356), v358));
  v360 = vdupq_n_s64(0x715A94BD6AF46B8EuLL);
  v361 = vaddq_s64(vsubq_s64(v357, vandq_s8(vaddq_s64(v357, v357), v358)), v360);
  v362 = vdupq_n_s64(0x7AEF220226ADDE8CuLL);
  v363 = veorq_s8(v361, v362);
  v364 = veorq_s8(vaddq_s64(v359, v360), v362);
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL), veorq_s8(v363, vsraq_n_u64(vshlq_n_s64(v353, 3uLL), v353, 0x3DuLL)));
  v366 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), veorq_s8(v364, vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL)));
  v367 = vdupq_n_s64(0xEF0989440325BE54);
  v368 = vsubq_s64(v365, vandq_s8(vaddq_s64(v365, v365), v367));
  v369 = vdupq_n_s64(0xF784C4A20192DF2ALL);
  v370 = vaddq_s64(vsubq_s64(v366, vandq_s8(vaddq_s64(v366, v366), v367)), v369);
  v371 = vdupq_n_s64(0x4EED5A497390D0E3uLL);
  v491.val[2] = veorq_s8(v293, vshlq_u64(veorq_s8(v370, v371), vnegq_s64(vandq_s8(vshlq_n_s64(v295, 3uLL), a24))));
  v491.val[1] = veorq_s8(*&STACK[0x2D0], vshlq_u64(veorq_s8(vaddq_s64(v368, v369), v371), vnegq_s64(vandq_s8(vshlq_n_s64(v294, 3uLL), a24))));
  v372 = *&STACK[0x370];
  v373 = v298;
  v374 = vandq_s8(*&STACK[0x370], v298);
  v375 = vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL);
  v376 = *&STACK[0x360];
  v377 = vandq_s8(*&STACK[0x360], v373);
  v378 = vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL);
  v379 = vaddq_s64(vorrq_s8(vsubq_s64(v302, v375), *&STACK[0x400]), vorrq_s8(vaddq_s64(v375, v301), *&STACK[0x410]));
  v380 = *&STACK[0x3A0];
  v381 = *&STACK[0x3B0];
  v382 = vsubq_s64(*&STACK[0x3B0], vaddq_s64(vorrq_s8(vsubq_s64(v302, v378), *&STACK[0x400]), vorrq_s8(vaddq_s64(v378, v301), *&STACK[0x410])));
  v383 = veorq_s8(v382, *&STACK[0x3A0]);
  v384 = *&STACK[0x2B0];
  v385 = *&STACK[0x2C0];
  v386 = veorq_s8(v382, *&STACK[0x2C0]);
  v387 = *&STACK[0x280];
  v388 = *&STACK[0x290];
  v389 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL), v386), *&STACK[0x280]);
  v390 = vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL);
  v391 = *&STACK[0x2A0];
  v392 = veorq_s8(vaddq_s64(vsubq_s64(v389, vandq_s8(vaddq_s64(v389, v389), *&STACK[0x2B0])), *&STACK[0x2A0]), *&STACK[0x290]);
  v393 = veorq_s8(v392, v390);
  v395 = *&STACK[0x260];
  v394 = *&STACK[0x270];
  v396 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL), v393), *&STACK[0x270]);
  v397 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v393, 3uLL), v393, 0x3DuLL));
  v398 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL), v397), *&STACK[0x260]);
  v399 = veorq_s8(v398, vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL));
  v400 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL), v399);
  *&STACK[0x230] = v339;
  v401 = *&STACK[0x3C0];
  v402 = veorq_s8(vaddq_s64(vsubq_s64(v400, vandq_s8(vaddq_s64(v400, v400), v339)), v340), *&STACK[0x3C0]);
  v403 = veorq_s8(v402, vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL));
  *&STACK[0x250] = v350;
  v404 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL), v403), v350);
  v405 = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v403, 3uLL), v403, 0x3DuLL));
  v406 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v405);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(v406, vandq_s8(vaddq_s64(v406, v406), v358)), v360), v362);
  v408 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL)));
  v407.i64[0] = v56 + v61 - 11;
  v407.i64[1] = v56 + v61 - 12;
  v409 = vsubq_s64(v381, v379);
  v491.val[0] = veorq_s8(*&STACK[0x300], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v408, vandq_s8(vaddq_s64(v408, v408), v367)), v369), v371), vnegq_s64(vandq_s8(vshlq_n_s64(v376, 3uLL), a24))));
  v410 = veorq_s8(v409, v380);
  v411 = veorq_s8(v409, v385);
  v412 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL), v411), v387);
  v413 = veorq_s8(vaddq_s64(vsubq_s64(v412, vandq_s8(vaddq_s64(v412, v412), v384)), v391), v388);
  v414 = veorq_s8(v413, vsraq_n_u64(vshlq_n_s64(v411, 3uLL), v411, 0x3DuLL));
  v415 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL), v414), v394);
  v416 = veorq_s8(v415, vsraq_n_u64(vshlq_n_s64(v414, 3uLL), v414, 0x3DuLL));
  v417 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL), v416), v395);
  v418 = veorq_s8(v417, vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL));
  v419 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v417, 0x38uLL), v417, 8uLL), v418);
  v420 = veorq_s8(vaddq_s64(vsubq_s64(v419, vandq_s8(vaddq_s64(v419, v419), v339)), v340), v401);
  v421 = veorq_s8(v420, vsraq_n_u64(vshlq_n_s64(v418, 3uLL), v418, 0x3DuLL));
  v422 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL), v421), v350);
  v423 = veorq_s8(v422, vsraq_n_u64(vshlq_n_s64(v421, 3uLL), v421, 0x3DuLL));
  v424 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v423);
  v425 = vsubq_s64(v424, vandq_s8(vaddq_s64(v424, v424), v358));
  v426 = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v424.i64[0] = v56 + v61 - 13;
  v424.i64[1] = v56 + v61 - 14;
  v427 = veorq_s8(vaddq_s64(v425, v360), v362);
  v428 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL), veorq_s8(v427, v426));
  v425.i64[0] = v56 + v61 - 15;
  v425.i64[1] = v56 + v61 - 16;
  v429 = vandq_s8(v424, *&STACK[0x3E0]);
  v491.val[3] = veorq_s8(*&STACK[0x310], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v428, vandq_s8(vaddq_s64(v428, v428), v367)), v369), v371), vnegq_s64(vandq_s8(vshlq_n_s64(v372, 3uLL), a24))));
  v430 = vandq_s8(v407, *&STACK[0x3E0]);
  v431 = vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL);
  v432 = vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL);
  v433 = vandq_s8(v425, *&STACK[0x3E0]);
  v434 = vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL);
  v435 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3D0], v431), *&STACK[0x400]), vorrq_s8(vaddq_s64(v431, *&STACK[0x3F0]), *&STACK[0x410]));
  v436 = vsubq_s64(v381, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3D0], v432), *&STACK[0x400]), vorrq_s8(vaddq_s64(v432, *&STACK[0x3F0]), *&STACK[0x410])));
  v437 = vsubq_s64(v381, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3D0], v434), *&STACK[0x400]), vorrq_s8(vaddq_s64(v434, *&STACK[0x3F0]), *&STACK[0x410])));
  *&STACK[0x370] = vqtbl4q_s8(v491, *&STACK[0x390]);
  v491.val[0] = veorq_s8(v437, v380);
  v491.val[1] = veorq_s8(v436, v380);
  v491.val[2] = veorq_s8(v436, v385);
  v491.val[3] = veorq_s8(v437, v385);
  v491.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[1], 0x38uLL), v491.val[1], 8uLL), v491.val[2]), v387);
  v491.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[0], 0x38uLL), v491.val[0], 8uLL), v491.val[3]), v387);
  v491.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v491.val[0], vandq_s8(vaddq_s64(v491.val[0], v491.val[0]), v384)), v391), v388);
  v491.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v491.val[1], vandq_s8(vaddq_s64(v491.val[1], v491.val[1]), v384)), v391), v388);
  v491.val[2] = veorq_s8(v491.val[1], vsraq_n_u64(vshlq_n_s64(v491.val[2], 3uLL), v491.val[2], 0x3DuLL));
  v491.val[3] = veorq_s8(v491.val[0], vsraq_n_u64(vshlq_n_s64(v491.val[3], 3uLL), v491.val[3], 0x3DuLL));
  v491.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[1], 0x38uLL), v491.val[1], 8uLL), v491.val[2]), v394);
  v491.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[0], 0x38uLL), v491.val[0], 8uLL), v491.val[3]), v394);
  v438 = vsraq_n_u64(vshlq_n_s64(v491.val[2], 3uLL), v491.val[2], 0x3DuLL);
  v491.val[2] = veorq_s8(v491.val[0], vsraq_n_u64(vshlq_n_s64(v491.val[3], 3uLL), v491.val[3], 0x3DuLL));
  v491.val[3] = veorq_s8(v491.val[1], v438);
  v439 = vsraq_n_u64(vshlq_n_s64(v491.val[0], 0x38uLL), v491.val[0], 8uLL);
  v491.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[1], 0x38uLL), v491.val[1], 8uLL), v491.val[3]);
  v491.val[1] = veorq_s8(vaddq_s64(v439, v491.val[2]), v395);
  v491.val[0] = veorq_s8(v491.val[0], v395);
  v440 = vsraq_n_u64(vshlq_n_s64(v491.val[2], 3uLL), v491.val[2], 0x3DuLL);
  v491.val[2] = veorq_s8(v491.val[0], vsraq_n_u64(vshlq_n_s64(v491.val[3], 3uLL), v491.val[3], 0x3DuLL));
  v491.val[3] = veorq_s8(v491.val[1], v440);
  v441 = vsraq_n_u64(vshlq_n_s64(v491.val[0], 0x38uLL), v491.val[0], 8uLL);
  v491.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[1], 0x38uLL), v491.val[1], 8uLL), v491.val[3]);
  v491.val[1] = vaddq_s64(v441, v491.val[2]);
  v491.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v491.val[1], vandq_s8(vaddq_s64(v491.val[1], v491.val[1]), *&STACK[0x230])), v340), *&STACK[0x3C0]);
  v491.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v491.val[0], vandq_s8(vaddq_s64(v491.val[0], v491.val[0]), *&STACK[0x230])), v340), *&STACK[0x3C0]);
  v442 = vsraq_n_u64(vshlq_n_s64(v491.val[2], 3uLL), v491.val[2], 0x3DuLL);
  v491.val[2] = veorq_s8(v491.val[0], vsraq_n_u64(vshlq_n_s64(v491.val[3], 3uLL), v491.val[3], 0x3DuLL));
  v491.val[3] = veorq_s8(v491.val[1], v442);
  v443 = vsraq_n_u64(vshlq_n_s64(v491.val[0], 0x38uLL), v491.val[0], 8uLL);
  v491.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[1], 0x38uLL), v491.val[1], 8uLL), v491.val[3]);
  v491.val[1] = veorq_s8(vaddq_s64(v443, v491.val[2]), *&STACK[0x250]);
  v491.val[0] = veorq_s8(v491.val[0], *&STACK[0x250]);
  v444 = vsraq_n_u64(vshlq_n_s64(v491.val[2], 3uLL), v491.val[2], 0x3DuLL);
  v491.val[2] = veorq_s8(v491.val[0], vsraq_n_u64(vshlq_n_s64(v491.val[3], 3uLL), v491.val[3], 0x3DuLL));
  v491.val[3] = veorq_s8(v491.val[1], v444);
  v445 = vsraq_n_u64(vshlq_n_s64(v491.val[0], 0x38uLL), v491.val[0], 8uLL);
  v491.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[1], 0x38uLL), v491.val[1], 8uLL), v491.val[3]);
  v491.val[1] = vaddq_s64(v445, v491.val[2]);
  v491.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v491.val[1], vandq_s8(vaddq_s64(v491.val[1], v491.val[1]), v358)), v360), v362);
  v491.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v491.val[0], vandq_s8(vaddq_s64(v491.val[0], v491.val[0]), v358)), v360), v362);
  v446 = vsraq_n_u64(vshlq_n_s64(v491.val[2], 3uLL), v491.val[2], 0x3DuLL);
  v491.val[2] = veorq_s8(v491.val[0], vsraq_n_u64(vshlq_n_s64(v491.val[3], 3uLL), v491.val[3], 0x3DuLL));
  v491.val[3] = veorq_s8(v491.val[1], v446);
  v447 = vsraq_n_u64(vshlq_n_s64(v491.val[0], 0x38uLL), v491.val[0], 8uLL);
  v491.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491.val[1], 0x38uLL), v491.val[1], 8uLL), v491.val[3]);
  v491.val[1] = vaddq_s64(v447, v491.val[2]);
  v448 = vsubq_s64(v381, v435);
  v491.val[3] = veorq_s8(*&STACK[0x320], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v491.val[1], vandq_s8(vaddq_s64(v491.val[1], v491.val[1]), v367)), v369), v371), vnegq_s64(vandq_s8(vshlq_n_s64(v425, 3uLL), a24))));
  v491.val[2] = veorq_s8(*&STACK[0x330], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v491.val[0], vandq_s8(vaddq_s64(v491.val[0], v491.val[0]), v367)), v369), v371), vnegq_s64(vandq_s8(vshlq_n_s64(v424, 3uLL), a24))));
  v449 = veorq_s8(v448, v380);
  v450 = veorq_s8(v448, v385);
  v451 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v449, 0x38uLL), v449, 8uLL), v450), v387);
  v452 = veorq_s8(vaddq_s64(vsubq_s64(v451, vandq_s8(vaddq_s64(v451, v451), v384)), v391), v388);
  v453 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL));
  v454 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453), v394);
  v455 = veorq_s8(v454, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v456 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL), v455), v395);
  v457 = veorq_s8(v456, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v458 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL), v457);
  v459 = veorq_s8(vaddq_s64(vsubq_s64(v458, vandq_s8(vaddq_s64(v458, v458), *&STACK[0x230])), v340), *&STACK[0x3C0]);
  v460 = veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL));
  v461 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL), v460), *&STACK[0x250]);
  v462 = veorq_s8(v461, vsraq_n_u64(vshlq_n_s64(v460, 3uLL), v460, 0x3DuLL));
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v461, 0x38uLL), v461, 8uLL), v462);
  v464 = veorq_s8(vaddq_s64(vsubq_s64(v463, vandq_s8(vaddq_s64(v463, v463), v358)), v360), v362);
  v465 = veorq_s8(v464, vsraq_n_u64(vshlq_n_s64(v462, 3uLL), v462, 0x3DuLL));
  v466 = vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL);
  v464.i64[0] = v56 + v61 - 9;
  v464.i64[1] = v56 + v61 - 10;
  v467 = vaddq_s64(v466, v465);
  v491.val[1] = veorq_s8(*&STACK[0x340], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v467, vandq_s8(vaddq_s64(v467, v467), v367)), v369), v371), vnegq_s64(vandq_s8(vshlq_n_s64(v407, 3uLL), a24))));
  v468 = vandq_s8(v464, *&STACK[0x3E0]);
  v469 = vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL);
  v470 = vsubq_s64(v381, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3D0], v469), *&STACK[0x400]), vorrq_s8(vaddq_s64(v469, *&STACK[0x3F0]), *&STACK[0x410])));
  v471 = veorq_s8(v470, v380);
  v472 = veorq_s8(v470, v385);
  v473 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472), v387);
  v474 = veorq_s8(vaddq_s64(vsubq_s64(v473, vandq_s8(vaddq_s64(v473, v473), v384)), v391), v388);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v394);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), v395);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479);
  v481 = veorq_s8(vaddq_s64(vsubq_s64(v480, vandq_s8(vaddq_s64(v480, v480), *&STACK[0x230])), v340), *&STACK[0x3C0]);
  v482 = veorq_s8(v481, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v483 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v481, 0x38uLL), v481, 8uLL), v482), *&STACK[0x250]);
  v484 = veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v482, 3uLL), v482, 0x3DuLL));
  v485 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), v484);
  v486 = veorq_s8(vaddq_s64(vsubq_s64(v485, vandq_s8(vaddq_s64(v485, v485), v358)), v360), v362);
  v487 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL), veorq_s8(v486, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL)));
  v491.val[0] = veorq_s8(*&STACK[0x350], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v487, vandq_s8(vaddq_s64(v487, v487), v367)), v369), v371), vnegq_s64(vandq_s8(vshlq_n_s64(v464, 3uLL), a24))));
  v488 = *&STACK[0x370];
  v488.i64[1] = vqtbl4q_s8(v491, *&STACK[0x390]).u64[0];
  v489 = vrev64q_s8(v488);
  *(v56 + v61 - 16) = veorq_s8(vextq_s8(v489, v489, 8uLL), *&STACK[0x380]);
  return (*(STACK[0x248] + 8 * ((56 * (v59 == v61)) ^ a8)))();
}

uint64_t sub_1968D2574()
{
  v9 = v7 - 16;
  *&STACK[0x280] = *(v4 + v9 - 16);
  v10.i64[0] = v4 + v9 + (v6 ^ v0);
  v10.i64[1] = v4 + v9 - 8;
  v11 = v10;
  *&STACK[0x250] = v10;
  v12.i64[0] = v4 + v9 - 1;
  v12.i64[1] = v4 + v9 - 2;
  v13.i64[0] = v4 + v9 - 3;
  v13.i64[1] = v4 + v9 - 4;
  v14.i64[0] = v4 + v9 - 5;
  v14.i64[1] = v4 + v9 - 6;
  v10.i64[0] = v4 + v9 - 9;
  v10.i64[1] = v4 + v9 - 10;
  *&STACK[0x390] = v10;
  v10.i64[0] = v4 + v9 - 11;
  v10.i64[1] = v4 + v9 - 12;
  *&STACK[0x380] = v10;
  v10.i64[0] = v4 + v9 - 13;
  v10.i64[1] = v4 + v9 - 14;
  *&STACK[0x270] = v10;
  v15 = vandq_s8(v14, *&STACK[0x290]);
  v16 = vandq_s8(v13, *&STACK[0x290]);
  v17 = vandq_s8(v12, *&STACK[0x290]);
  v18 = vandq_s8(v11, *&STACK[0x290]);
  v19 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v20 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v21 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v22 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v15, 0x38uLL), v15, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v23 = *&STACK[0x3E0];
  v24 = vorrq_s8(v22, *&STACK[0x3E0]);
  v25 = vorrq_s8(v21, *&STACK[0x3E0]);
  v26 = *&STACK[0x300];
  *&STACK[0x260] = vsubq_s64(vorrq_s8(v19, *&STACK[0x3E0]), vorrq_s8(v19, *&STACK[0x300]));
  v27 = vorrq_s8(v21, v26);
  v28 = vsubq_s64(vorrq_s8(v20, v23), vorrq_s8(v20, v26));
  v29 = vaddq_s64(vsubq_s64(v24, vorrq_s8(v22, v26)), v26);
  v30 = vaddq_s64(vsubq_s64(v25, v27), v26);
  v31 = veorq_s8(v30, *&STACK[0x370]);
  v32 = veorq_s8(v29, *&STACK[0x370]);
  v33 = *&STACK[0x350];
  v34 = veorq_s8(v29, *&STACK[0x360]);
  v35 = veorq_s8(v30, *&STACK[0x360]);
  v36 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v34), *&STACK[0x350]);
  v37 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), v35), *&STACK[0x350]);
  v38 = vsraq_n_u64(vshlq_n_s64(v34, 3uLL), v34, 0x3DuLL);
  v39 = veorq_s8(v37, vsraq_n_u64(vshlq_n_s64(v35, 3uLL), v35, 0x3DuLL));
  v40 = veorq_s8(v36, v38);
  v41 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v40);
  v43 = *&STACK[0x330];
  v44 = veorq_s8(vaddq_s64(v41, v39), *&STACK[0x340]);
  v45 = veorq_s8(v42, *&STACK[0x340]);
  v46 = vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL);
  v47 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v48 = veorq_s8(v44, v46);
  v49 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v48);
  v51 = vaddq_s64(v49, v47);
  v52 = *&STACK[0x2F0];
  v53 = *&STACK[0x320];
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v50, *&STACK[0x330]), vorrq_s8(v50, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v51, *&STACK[0x330]), vorrq_s8(v51, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v56 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v57 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56);
  v60 = *&STACK[0x2E0];
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, *&STACK[0x3D0]), vorrq_s8(v58, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, *&STACK[0x3D0]), vorrq_s8(v59, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v63);
  v67 = *&STACK[0x2D0];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, *&STACK[0x3B0]), vorrq_s8(v65, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, *&STACK[0x3B0]), vorrq_s8(v66, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v70 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v71);
  v75 = *&STACK[0x310];
  v77 = *&STACK[0x2B0];
  v76 = *&STACK[0x2C0];
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), *&STACK[0x310]), v74), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), *&STACK[0x310]), v73), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v84 = vdupq_n_s64(v2);
  v85 = vaddq_s64(v28, v26);
  v86 = *&STACK[0x2A0];
  v233.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v83, v81), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v84)));
  v233.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v82, v80), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v84)));
  v87 = veorq_s8(v85, *&STACK[0x370]);
  v88 = veorq_s8(v85, *&STACK[0x360]);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), *&STACK[0x350]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), *&STACK[0x340]);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v93, *&STACK[0x330]), vorrq_s8(v93, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, *&STACK[0x3D0]), vorrq_s8(v96, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, *&STACK[0x3B0]), vorrq_s8(v99, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), *&STACK[0x310]), v102), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v103.i64[0] = v4 + v9 - 15;
  v103.i64[1] = v4 + v9 - 16;
  v106 = vaddq_s64(v105, v104);
  v107 = vandq_s8(v103, *&STACK[0x290]);
  v108 = vaddq_s64(*&STACK[0x260], v26);
  v233.val[0] = vshlq_u64(veorq_s8(v106, *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), v84)));
  v109 = veorq_s8(v108, *&STACK[0x370]);
  v110 = *&STACK[0x370];
  v111 = veorq_s8(v108, *&STACK[0x360]);
  v112 = *&STACK[0x360];
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v111), *&STACK[0x350]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), *&STACK[0x340]);
  v116 = *&STACK[0x340];
  v117 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, *&STACK[0x330]), vorrq_s8(v118, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, *&STACK[0x3D0]), vorrq_s8(v121, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, *&STACK[0x3B0]), vorrq_s8(v124, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x310]), v127), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v131 = *&STACK[0x270];
  v132 = vandq_s8(*&STACK[0x270], *&STACK[0x290]);
  v133 = vaddq_s64(v130, v129);
  v134 = vandq_s8(*&STACK[0x380], *&STACK[0x290]);
  v233.val[3] = vshlq_u64(veorq_s8(v133, *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), v84)));
  v135 = vandq_s8(*&STACK[0x390], *&STACK[0x290]);
  v136 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), *&STACK[0x400]);
  v140 = vaddq_s64(v138, *&STACK[0x400]);
  v141 = veorq_s8(vaddq_s64(v136, *&STACK[0x400]), *&STACK[0x3F0]);
  v142 = veorq_s8(vaddq_s64(v137, *&STACK[0x400]), *&STACK[0x3F0]);
  v143 = veorq_s8(v140, *&STACK[0x3F0]);
  v144 = veorq_s8(v139, *&STACK[0x3F0]);
  v145 = *&STACK[0x3E0];
  *&STACK[0x260] = vsubq_s64(vorrq_s8(v141, *&STACK[0x3E0]), vorrq_s8(v141, v26));
  v146 = vsubq_s64(vorrq_s8(v142, v145), vorrq_s8(v142, v26));
  v147 = vaddq_s64(vsubq_s64(vorrq_s8(v144, v145), vorrq_s8(v144, v26)), v26);
  v148 = vaddq_s64(vsubq_s64(vorrq_s8(v143, v145), vorrq_s8(v143, v26)), v26);
  v233.val[3].i64[0] = vqtbl4q_s8(v233, *&STACK[0x210]).u64[0];
  v149 = veorq_s8(v148, v110);
  v150 = veorq_s8(v147, v110);
  v151 = veorq_s8(v147, v112);
  v152 = veorq_s8(v148, v112);
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v33);
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v152), v33);
  v155 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v156 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v157 = veorq_s8(v153, v155);
  v158 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v157);
  v160 = veorq_s8(vaddq_s64(v158, v156), v116);
  v161 = veorq_s8(v159, v116);
  v162 = vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL);
  v163 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v164 = veorq_s8(v160, v162);
  v165 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v164);
  v167 = vaddq_s64(v165, v163);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, v43), vorrq_s8(v166, v52)), v52), v53);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, v43), vorrq_s8(v167, v52)), v52), v53);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v171 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v171);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, *&STACK[0x3D0]), vorrq_s8(v172, v60)), v60), *&STACK[0x3C0]);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, *&STACK[0x3D0]), vorrq_s8(v173, v60)), v60), *&STACK[0x3C0]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v177 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v177);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v178, *&STACK[0x3B0]), vorrq_s8(v178, v67)), v67), *&STACK[0x3A0]);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v179, *&STACK[0x3B0]), vorrq_s8(v179, v67)), v67), *&STACK[0x3A0]);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v183 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v183);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v185, v185), v75), v185), v76), v77);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184, v184), v75), v184), v76), v77);
  v188 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v189 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v190 = veorq_s8(v186, v188);
  v191 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v193 = vaddq_s64(v146, v26);
  v232.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v192, v190), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v103, 3uLL), v84)));
  v232.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v191, v189), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v131, 3uLL), v84)));
  v194 = veorq_s8(v193, v110);
  v195 = veorq_s8(v193, v112);
  v196 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195), v33);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v116);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v200, v43), vorrq_s8(v200, v52)), v52), v53);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v203, *&STACK[0x3D0]), vorrq_s8(v203, v60)), v60), *&STACK[0x3C0]);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v206, *&STACK[0x3B0]), vorrq_s8(v206, v67)), v67), *&STACK[0x3A0]);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v209, v209), v75), v209), v76), v77);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL)));
  v212 = vaddq_s64(*&STACK[0x260], v26);
  v232.val[1] = vshlq_u64(veorq_s8(v211, v86), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v84)));
  v213 = veorq_s8(v212, v110);
  v214 = veorq_s8(v212, v112);
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v33);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), v116);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v219, v43), vorrq_s8(v219, v52)), v52), v53);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v222, *&STACK[0x3D0]), vorrq_s8(v222, v60)), v60), *&STACK[0x3C0]);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v225, *&STACK[0x3B0]), vorrq_s8(v225, v67)), v67), *&STACK[0x3A0]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228, v228), v75), v228), v76), v77);
  v232.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL))), v86), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v84)));
  v233.val[3].i64[1] = vqtbl4q_s8(v232, *&STACK[0x210]).u64[0];
  v230 = vrev64q_s8(v233.val[3]);
  *(v5 + v9) = veorq_s8(vextq_s8(v230, v230, 8uLL), *&STACK[0x280]);
  return (*(STACK[0x248] + 8 * (((v3 + v9 != 0) * v1) ^ v8)))();
}

uint64_t sub_1968D25FC@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>, int8x16_t a5@<Q0>, int8x8_t a6@<D1>, int8x8_t a7@<D2>)
{
  v13 = a4 - 8;
  v15.val[0].i64[0] = (a2 + v13 - 105) & 0xF;
  v15.val[0].i64[1] = (v10 + v13 + 22) & 0xF;
  v15.val[1].i64[0] = (v10 + v13 + 21) & 0xF;
  v15.val[1].i64[1] = (v10 + v13 + 20) & 0xF;
  v15.val[2].i64[0] = (v10 + v13 + 19) & 0xF;
  v15.val[2].i64[1] = (v10 + v13 + 18) & 0xF;
  v15.val[3].i64[0] = (v10 + v13 + 17) & 0xF;
  v15.val[3].i64[1] = (v10 + v13 + 8) & 0xF ^ 8;
  *(a3 + v13 - 880) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + v13 - 880), *(v15.val[0].i64[0] + v9)), veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(v7 + v15.val[0].i64[0] - 7)))), a7), vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v12 + 8 * (v11 ^ (8 * (a1 != v13)))))();
}

uint64_t sub_1968D266C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, double a8, int8x16_t a9, int64x2_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int8x16_t a58, uint64_t a59, uint64_t a60, int8x16_t a61, int64x2_t a62, uint64_t a63)
{
  v85 = v72 - 8;
  STACK[0x350] = *(v73 + v85 - 8);
  v86.i64[0] = v73 + v85 + v75 - 2045;
  v86.i64[1] = v73 + v85 - 6;
  v87.i64[0] = v73 + v85 - 1;
  v87.i64[1] = v73 + v85 - 2;
  v88.i64[0] = v73 + v85 - 3;
  v88.i64[1] = v73 + v85 - 4;
  v89.i64[0] = v73 + v85 - 7;
  v89.i64[1] = v73 + v85 - 8;
  v90.i64[0] = v74 + v85 + 5;
  v90.i64[1] = v74 + v85 + 4;
  *&STACK[0x330] = v90;
  v91.i64[0] = v74 + v85 + 9;
  v91.i64[1] = v74 + v85 + 8;
  v92.i64[0] = v74 + v85 + 7;
  v92.i64[1] = v74 + v85 + 6;
  v93.i64[0] = v74 + v85 + 3;
  v93.i64[1] = v74 + v85 + 2;
  v94 = vandq_s8(v89, a58);
  v95 = vandq_s8(v88, a58);
  v96 = vandq_s8(v87, a58);
  v97 = vandq_s8(v86, a58);
  v98 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), a10), *&STACK[0x320]);
  v99 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), a10), *&STACK[0x320]);
  v100 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), a10), *&STACK[0x320]);
  v101 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), a10), *&STACK[0x320]);
  v102 = veorq_s8(v101, *&STACK[0x310]);
  v103 = veorq_s8(v100, *&STACK[0x310]);
  v104 = veorq_s8(v99, *&STACK[0x310]);
  v105 = veorq_s8(v98, *&STACK[0x310]);
  v106 = veorq_s8(v98, *&STACK[0x300]);
  v107 = veorq_s8(v99, *&STACK[0x300]);
  v108 = veorq_s8(v100, *&STACK[0x300]);
  v109 = veorq_s8(v101, *&STACK[0x300]);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v109);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v108);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v107);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), *&STACK[0x2F0]), v113), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), *&STACK[0x2F0]), v112), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), *&STACK[0x2F0]), v111), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), *&STACK[0x2F0]), v110), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v119 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v120 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v121 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v121);
  v126 = vaddq_s64(v124, v120);
  v127 = vaddq_s64(v123, v119);
  v128 = vaddq_s64(v122, v118);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(v127, v127), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(v126, v126), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(v125, v125), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v133 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v136 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v137 = veorq_s8(v131, v135);
  v138 = veorq_s8(v130, v134);
  v139 = veorq_s8(v129, v133);
  v140 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v139);
  v144 = veorq_s8(vaddq_s64(v140, v136), v83);
  v145 = veorq_s8(vaddq_s64(v141, v137), v83);
  v146 = veorq_s8(vaddq_s64(v142, v138), v83);
  v147 = veorq_s8(v143, v83);
  v148 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v151 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v152 = veorq_s8(v146, v150);
  v153 = veorq_s8(v145, v149);
  v154 = veorq_s8(v144, v148);
  v155 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v154);
  v159 = vaddq_s64(v157, v153);
  v160 = vaddq_s64(v156, v152);
  v161 = vaddq_s64(v155, v151);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, *&STACK[0x290]), vorrq_s8(v158, v84)), v84), *&STACK[0x280]);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v159, *&STACK[0x290]), vorrq_s8(v159, v84)), v84), *&STACK[0x280]);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, *&STACK[0x290]), vorrq_s8(v160, v84)), v84), *&STACK[0x280]);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v161, *&STACK[0x290]), vorrq_s8(v161, v84)), v84), *&STACK[0x280]);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v167 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v168 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v169 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v170 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v169);
  v174 = vaddq_s64(v172, v168);
  v175 = vaddq_s64(v171, v167);
  v176 = vaddq_s64(v170, v166);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v176, v176), *&STACK[0x270]), v176), *&STACK[0x260]), *&STACK[0x250]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v175, v175), *&STACK[0x270]), v175), *&STACK[0x260]), *&STACK[0x250]);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v174, v174), *&STACK[0x270]), v174), *&STACK[0x260]), *&STACK[0x250]);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173, v173), *&STACK[0x270]), v173), *&STACK[0x260]), *&STACK[0x250]);
  v181 = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v184 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v185 = veorq_s8(v179, v183);
  v186 = veorq_s8(v178, v182);
  v187 = veorq_s8(v177, v181);
  v188 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v187);
  v192 = veorq_s8(vaddq_s64(v188, v184), *&STACK[0x240]);
  v193 = veorq_s8(vaddq_s64(v189, v185), *&STACK[0x240]);
  v194 = veorq_s8(vaddq_s64(v190, v186), *&STACK[0x240]);
  v195 = veorq_s8(v191, *&STACK[0x240]);
  v196 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v198 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v199 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), veorq_s8(v192, v196));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), veorq_s8(v193, v197));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), veorq_s8(v194, v198));
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v199);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), *&STACK[0x230]), v203), *&STACK[0x220]), *&STACK[0x210]);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202, v202), *&STACK[0x230]), v202), *&STACK[0x220]), *&STACK[0x210]);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v201, v201), *&STACK[0x230]), v201), *&STACK[0x220]), *&STACK[0x210]);
  *&STACK[0x340] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v200, v200), *&STACK[0x230]), v200), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a9)));
  v207 = vshlq_u64(v206, vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a9)));
  v208 = vshlq_u64(v205, vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a9)));
  v209 = vshlq_u64(v204, vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), a9)));
  v210 = vandq_s8(v93, a58);
  v211 = vandq_s8(v92, a58);
  v212 = vandq_s8(v91, a58);
  v213 = vandq_s8(v90, a58);
  v214 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v218 = vaddq_s64(v217, a10);
  v219 = vaddq_s64(v216, a10);
  v220 = vaddq_s64(v215, a10);
  v221 = vaddq_s64(v214, a10);
  v222 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x200], v217), a68), v218), vandq_s8(v218, a67));
  v223 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x200], v216), a68), v219), vandq_s8(v219, a67));
  v224 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x200], v215), a68), v220), vandq_s8(v220, a67));
  v225 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x200], v214), a68), v221), vandq_s8(v221, a67));
  v226 = veorq_s8(v223, v79);
  v227 = veorq_s8(v222, v79);
  v228 = veorq_s8(v222, v80);
  v229 = veorq_s8(v223, v80);
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v229);
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(v231, vandq_s8(vaddq_s64(v231, v231), v82)), a62), v81);
  v233 = veorq_s8(vaddq_s64(vsubq_s64(v230, vandq_s8(vaddq_s64(v230, v230), v82)), a62), v81);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v235 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v236 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v235);
  v238 = vaddq_s64(v236, v234);
  v239 = vdupq_n_s64(v69);
  v240 = vsubq_s64(vorrq_s8(vaddq_s64(v237, v237), v239), v237);
  v241 = vdupq_n_s64(v70);
  v242 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238, v238), v239), v238), v241);
  v243 = vdupq_n_s64(a1);
  v244 = veorq_s8(v242, v243);
  v245 = veorq_s8(vaddq_s64(v240, v241), v243);
  v246 = vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL);
  v247 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v248 = veorq_s8(v244, v246);
  v249 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v248);
  v251 = veorq_s8(vaddq_s64(v249, v247), v83);
  v252 = veorq_s8(v250, v83);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v254 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v255 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v254);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v257 = vdupq_n_s64(a2);
  v258 = vsubq_s64(vorrq_s8(vaddq_s64(v255, v255), v257), v255);
  v259 = vdupq_n_s64(a3);
  v260 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v256, v256), v257), v256), v259);
  v261 = vdupq_n_s64(a4);
  v262 = veorq_s8(v260, v261);
  v263 = veorq_s8(vaddq_s64(v258, v259), v261);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v265 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264);
  v267 = vdupq_n_s64(v78);
  v268 = veorq_s8(v266, v267);
  v269 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v265), v267);
  v270 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v271 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v272 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v271);
  v273 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), v270);
  v274 = vdupq_n_s64(a5);
  v275 = vsubq_s64(vorrq_s8(vaddq_s64(v272, v272), v274), v272);
  v276 = vdupq_n_s64(a6);
  v277 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v273, v273), v274), v273), v276);
  v278 = vdupq_n_s64(a7);
  v279 = veorq_s8(v277, v278);
  v280 = veorq_s8(vaddq_s64(v275, v276), v278);
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL)));
  v282 = vdupq_n_s64(v77);
  v318.val[3] = veorq_s8(v209, vshlq_u64(veorq_s8(v281, v282), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), a9))));
  v318.val[1] = veorq_s8(v208, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL))), v282), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), a9))));
  v283 = veorq_s8(v224, v79);
  v284 = veorq_s8(v224, v80);
  v285 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL), v284);
  v286 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), v82)), a62), v81);
  v287 = veorq_s8(v286, vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL));
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287);
  v289 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v288, v288), v239), v288), v241), v243);
  v290 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v291 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v290), v83);
  v292 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL));
  v293 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v293, v293), v257), v293), v259), v261);
  v295 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v296 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295), v267);
  v297 = veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v298 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), v297);
  v299 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v298, v298), v274), v298), v276), v278);
  v318.val[0] = veorq_s8(v207, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v297, 3uLL), v297, 0x3DuLL))), v282), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a9))));
  v300 = veorq_s8(v225, v79);
  v301 = veorq_s8(v225, v80);
  v302 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL), v301);
  v303 = veorq_s8(vaddq_s64(vsubq_s64(v302, vandq_s8(vaddq_s64(v302, v302), v82)), a62), v81);
  v304 = veorq_s8(v303, vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL));
  v305 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL), v304);
  v306 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v305, v305), v239), v305), v241), v243);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL));
  v308 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v307), v83);
  v309 = veorq_s8(v308, vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL));
  v310 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), v309);
  v311 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v310, v310), v257), v310), v259), v261);
  v312 = veorq_s8(v311, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL));
  v313 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL), v312), v267);
  v314 = veorq_s8(v313, vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL));
  v315 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v313, 0x38uLL), v313, 8uLL), v314);
  v316 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v315, v315), v274), v315), v276), v278);
  v318.val[2] = veorq_s8(*&STACK[0x340], vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL), veorq_s8(v316, vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL))), v282), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), a9))));
  *(v74 + v85 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v318, a61)), STACK[0x350]);
  return (*(STACK[0x370] + 8 * (((v71 == v85) * v76) ^ v68)))();
}

void fp_dh_ab58d0ec3fb67b7df1b9059f031bca71(uint64_t a1)
{
  v1 = 1068996913 * ((-2 - ((a1 | 0x5DC5985) + (~a1 | 0xFA23A67A))) ^ 0x2FCD47EB);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1968D2BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unint64_t a17, uint64_t a18, unint64_t a19)
{
  v24 = 1068996913 * (((v23 | 0xE97AB51D04845165) - v23 + (v23 & 0x16854AE2FB7BAE98)) ^ 0x7D1B818ED16AB0F4);
  a19 = a11;
  LODWORD(a18) = 6365 - v24;
  a17 = v24 ^ ((v21 ^ 0x7E9EF5FB8E7FDAF5) - 0x28840C808695025 + ((2 * v21) & 0xFD3DEBF71CFFB5EALL));
  (*(v22 + 54528))(&a15);
  v25 = 753662761 * (((v23 ^ 0x3404E00 | 0xEC9D919D) + (v23 ^ 0xAC1D1019 | 0x13626E62)) ^ 0xCA47A553);
  a15 = ((2 * v20) & 0xAC6D357C) - v25 + (v20 ^ 0xD6369ABE) + 2147446738;
  a16 = v25 ^ 0x15D7;
  a17 = a11;
  a18 = v19;
  v26 = (*(v22 + 54232))(&a15);
  return (*(v22 + 8 * ((4826 * (a19 == 1906281716)) ^ 0x728u)))(v26);
}

uint64_t sub_1968D2D60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  *(v7 + 8) = a1;
  LODWORD(STACK[0x644]) = 1906281716;
  return (*(a6 + 8 * (((((3 * (v6 ^ 0x160A)) ^ 0x719F8DF1) != 1906281716) * (((v6 ^ 0x160A) + 6284) ^ 0x18AB)) ^ (v6 - 3649))))();
}

uint64_t sub_1968D2DC4@<X0>(int a1@<W1>, int a2@<W7>, int a3@<W8>)
{
  LODWORD(STACK[0x3EC]) = a3;
  LODWORD(STACK[0x3F4]) = v8;
  LODWORD(STACK[0x3F8]) = v7;
  v11 = LODWORD(STACK[0x570]) - LODWORD(STACK[0x59C]);
  v12 = LODWORD(STACK[0x568]) - LODWORD(STACK[0x588]);
  v13 = (v4 + (((v3 + 1826) | 0x10) ^ 0xFD7B727)) ^ v11;
  v14 = v12 ^ LODWORD(STACK[0x56C]);
  v15 = ((v3 ^ 0x7BFFD708) & (2 * (LODWORD(STACK[0x588]) - a1))) + ((LODWORD(STACK[0x588]) - a1) ^ 0xBDFFEB6B);
  v16 = v12 - 1107301525 - v15;
  v17 = ((2 * (LODWORD(STACK[0x59C]) - a2)) & 0x6B7ECFEA) + ((LODWORD(STACK[0x59C]) - a2) ^ 0x35BF67F5);
  v18 = v11 - v17;
  v19 = v11 - v17 + 754665386;
  v15 += 1064007119;
  v20 = a2 - 2 * v13;
  v21 = v16 - 147071051;
  v22 = v13 ^ 0x67A1D59A;
  v23 = v17 - 945030843;
  v24 = v20 ^ (v17 - 945030843);
  v25 = v15 ^ (a1 - 2 * v14);
  v14 ^= 0x67A1D59Au;
  v26 = v14 - (v16 - 147071051);
  v27 = v24 - v19;
  v28 = v15 + v14;
  v29 = v19 - (v19 ^ 0x9FE83F5B);
  v30 = v22 + 1436497351 - v19;
  v31 = ((((-1436497352 - v26) & 0x9928BE0A) + ((v26 + 1436497351) & 0x9928BE0A)) ^ (((v16 - 147071051) & 0x9928BE0A) + ((147071050 - v16) & 0x9928BE0A)) | 0x1B4B0254) + v30;
  v32 = v27 ^ v30;
  v33 = (v26 + 1436497351) ^ (v25 - v21);
  v34 = v31 + v32 + 1757032890;
  v35 = v26 - 643536427 + v33;
  v36 = v28 + v25 + v25 - v21 - v35;
  v37 = v22 + v23 + v24 + v27 - v34;
  v38 = (v34 - 1492254796) ^ (v32 - 91257092);
  v39 = (v21 ^ 0x9FE83F5B) + 2 * v35 + 702301363;
  v40 = v18 + (v29 ^ 0xFFFFFFFE) + 2 * v34 + 1456966749;
  v41 = (v38 - 1075197692) ^ (v34 - 1492254796);
  v42 = (v38 ^ v37) - v40;
  v43 = v38 - 1075197692 - v42;
  v44 = (v35 - 1492254796) ^ (v33 - 91257092);
  v45 = (v44 ^ v36) - v39;
  v44 -= 1075197692;
  v46 = v44 ^ (v35 - 1492254796);
  v47 = v44 - v45;
  v48 = (v43 ^ 0x8C03731B) + (v40 ^ 0xA777E1CD ^ v41);
  v49 = ((v41 + v9) ^ 0xFD7BE37) + v42 + ((2 * (v41 + v9)) & 0x1FAF7C6E) + v48;
  v50 = (v47 ^ 0x8C03731B) + (v39 ^ 0xA777E1CD ^ v46);
  v51 = v46 + v45 + v50;
  v52 = (v41 + 1286339390 + v49) ^ v43 ^ 0x8C03731B;
  v53 = (v46 + 1286339390 + v51) ^ v47 ^ 0x8C03731B;
  v54 = v43 ^ 0xAF2FF43F;
  v55 = (v51 ^ v50) - v53 - 361680099;
  v56 = (v52 - 931253268) ^ v43 ^ 0xAF2FF43F;
  v43 ^= 0x7E429716u;
  v57 = v43 + 400693218;
  v58 = v47 ^ 0xAF2FF43F;
  v59 = (v53 - 931253268) ^ v47 ^ 0xAF2FF43F;
  v60 = ((v49 ^ v48) - 361680099 - v52) ^ 0xDCA50AD7;
  v47 ^= 0x7E429716u;
  v61 = v50 - (v47 + v58);
  v62 = (v56 ^ 0xDC8B8F86) - v60;
  v63 = v61 + v53 - v59;
  v64 = 1746790429 - v43;
  v65 = v48 - (v43 + v54) + v52 - v56;
  v66 = v65 - 541663961;
  v65 -= 737928521;
  v67 = v65 ^ ((v60 ^ (v64 | v57) & 0x7E4B9080) + 1512143198);
  v68 = (v59 ^ 0xDC8B8F86) - (v55 ^ 0xDCA50AD7);
  v69 = v67 - v65;
  v70 = v65 ^ v62;
  v71 = (v57 ^ 0xBE0CC7A8 ^ v66) + v67;
  v72 = v63 - 737928521;
  v73 = (v47 + 400693218) ^ 0xBE0CC7A8 ^ (v63 - 541663961);
  v74 = (((2 * v55) & 0xB442F2BC ^ 0x44030AC) + (v55 ^ 0xF8CFE309)) ^ (v63 - 737928521);
  v75 = v74 - (v63 - 737928521);
  v76 = v68 ^ 0xDE0573CA;
  v77 = v68 ^ 0xDE0573CA ^ v72;
  v78 = (v68 ^ 0xDE0573CA) + 1892632063;
  v79 = ((v62 ^ 0xDE0573CA) - ((2 * (v62 ^ 0xDE0573CA) + 564038654) & 0x3C96EF8A) - 1894072892) ^ v70 ^ 0xC04E040F;
  v80 = v74 + v73;
  v69 ^= 0x79BD2C1Bu;
  v81 = v78 ^ v77;
  v82 = ((254851584 - v76) | v78) & 0x13090200;
  v83 = (v71 + 544000528) ^ 0xCE6820F6;
  v75 ^= 0x79BD2C1Bu;
  v84 = v81 + v77 + v80;
  v85 = (v70 ^ 0xF85B6762) + v82 + v71 - 319357440 + ((2 * (v70 ^ 0xC04E040F)) & 0x4CBC2950 ^ 0xC942900);
  v86 = v85 + v79;
  v87 = (v85 + v79) ^ 0xA818440A;
  v88 = v71 + 699304986 + v69 - v83;
  v89 = (v80 + 544000528) ^ 0xCE6820F6;
  v86 ^= 0x36DF0229u;
  v90 = v85 + v69 - v87 + v86;
  v91 = v80 + 5176229 + v75 - v89;
  v92 = v83 + 699304986 - v88 + v87;
  v93 = (v84 + 643699880) ^ 0xA818440A;
  v94 = (v84 + 643699880) ^ 0x36DF0229;
  v95 = v75 - v81 + v84 - v93 + v94 - 2096503295;
  v96 = ((2 * v90) & 0xB957A2B2) + (v90 ^ 0x5CABD159);
  v97 = v95 ^ (v94 - 1735498331);
  v98 = v96 ^ v92 ^ (v96 - 1924403982);
  v99 = (v86 - 1735498331) ^ 0xF721EA71 ^ v96;
  v100 = v95 ^ (v89 + 5176229 - v91 + v93) ^ (v95 - 1924403982);
  v101 = v91 + v95 - 1924403982 + (v97 ^ 0xF721EA71) + 778976396;
  v102 = (v98 ^ 0x7790E89B ^ (v96 - ((2 * v96 + 97205398) & 0x170FF68E) - 831678062)) - 669548280;
  v103 = v88 + v96 + v99 - 1839556343;
  v104 = v96 + 438989700 - v103;
  v105 = v97 ^ 0x3738E8BA ^ v100;
  v106 = (v100 ^ 0x6FA7A6E5 ^ (v95 - ((2 * v95 + 97205398) & 0x27616A72) - 694791292)) - 669548280;
  v107 = v95 + 438989700 - v101;
  v108 = (v101 ^ v105) - v106;
  v109 = v98 ^ v99 ^ 0xC01902CB;
  v110 = (v109 ^ v103) - v102;
  v111 = v102 ^ 0x1D3B4573;
  v112 = v105 - v107;
  v113 = v109 - v104;
  v114 = v108 ^ v107;
  v106 ^= 0x1D3B4573u;
  v115 = v110 - (v113 + (v102 ^ 0x1D3B4573));
  v116 = v108 - (v112 + v106);
  v117 = v110 ^ v104;
  v112 ^= 0xC7CEAD85;
  v113 ^= 0xC7CEAD85;
  v118 = v111 + v113 - 1648627615 + v115;
  v119 = v115 ^ 0x426FA2DD;
  v120 = v112 + v106 + v116;
  v121 = v114 + v112;
  v122 = v117 + v113;
  LOBYTE(STACK[0xFA5]) = v120 + 97;
  v116 ^= 0x426FA2DDu;
  v123 = v117 - (v115 ^ 0x426FA2DD);
  v124 = v114 - v116;
  LOBYTE(STACK[0xBE2]) = v124;
  LOBYTE(STACK[0xCD2]) = ((v115 ^ 0xDD) - 41) ^ v6;
  v125 = v118 ^ 0x1992F011 ^ v123;
  LOBYTE(STACK[0xCDD]) = v118 ^ ((v120 + 97) | (-98 - v120)) & v6;
  LOBYTE(STACK[0xF9A]) = v116 - 41;
  v126 = (v116 + 597872087) ^ v124;
  v127 = v123 ^ 0xEBC1AEC2 ^ (v122 - ((2 * v122) & 0xE4A6BDA6) - 229417261);
  v128 = (((v115 ^ 0x426FA2DD) + 597872087) ^ v123) - v127;
  v129 = v127 + v125;
  v130 = v125 - v128;
  LOBYTE(STACK[0xBED]) = v121;
  v131 = v124 ^ 0x7C406FB3;
  v132 = (v121 + 1708302242 - ((2 * v121) & 0xCBA53F44)) ^ v124 ^ 0x7C406FB3;
  LOBYTE(STACK[0xCF3]) = v122 ^ v6;
  v133 = (v120 - ((2 * (v120 - 1648627615)) & 0xCBA53F44) + 59674627) ^ v131;
  LOBYTE(STACK[0xCE8]) = v123 ^ v6;
  v134 = v126 - v132;
  v135 = v133 + v132;
  LOBYTE(STACK[0xD09]) = v130 ^ v6;
  v136 = v133 - v134;
  v137 = (v136 + 1708302242 - ((2 * v136) & 0xCBA53F44)) ^ v131;
  LOBYTE(STACK[0xD14]) = v130 ^ v123 ^ 0xAB;
  LOBYTE(STACK[0xBF8]) = v134;
  LOBYTE(STACK[0xC03]) = v136;
  LOBYTE(STACK[0xCFE]) = (((v130 ^ v123) & v6 ^ 0x10) + ((v130 ^ v123) & v6 ^ 0xAA)) ^ v128;
  v136 += 141861663;
  v138 = v136 ^ v134;
  v139 = ((v119 + 597872087) & 0x3EAE6883) + ((475869736 - v119) & 0x3EAE6883);
  LOBYTE(STACK[0xD1F]) = v129 ^ v6;
  v140 = v138 + v136;
  LOBYTE(STACK[0xC19]) = v135;
  LOBYTE(STACK[0xC0E]) = v137;
  v141 = (((2 * (v128 - 457900628)) & 0x369604A8) + ((v128 - 457900628) ^ 0x1B4B0254)) ^ (v130 + 141861663);
  v142 = v136 ^ 0x16744638 ^ v137 ^ (v138 + v136 + 376718904 - ((2 * (v138 + v136)) & 0x2CE88C70));
  v143 = v130 + v141;
  v144 = v139 ^ 0xB7E7CC7B ^ v129;
  v145 = v130 + v141 - 123935512;
  v135 ^= 0x8949A4F8;
  LOBYTE(STACK[0xC2F]) = v140;
  v146 = v138 + v135;
  v147 = v141 + v144;
  LOBYTE(STACK[0xC24]) = v146;
  v148 = v130 ^ v123 ^ (v130 - ((2 * (v130 + 141861663)) & 0xEB1900BA) + 2114003836) ^ (v145 + 265797175);
  v149 = v148 ^ 0x6C1E704C;
  LOBYTE(STACK[0xC3A]) = v142;
  v150 = (v148 ^ 0x6C1E704C) + v144;
  LOBYTE(STACK[0xD35]) = (v143 + 31) ^ v6;
  v151 = v142 + v135;
  LOBYTE(STACK[0xD40]) = v148 ^ 0xF6;
  LOBYTE(STACK[0xC45]) = v151;
  v152 = v151 ^ v142;
  v153 = (v146 ^ 0xE690D41) - (v151 ^ v142);
  LOBYTE(STACK[0xD4B]) = v150 ^ v6;
  v154 = v150 ^ v149;
  v155 = (v147 ^ 0xE690D41) - v154;
  v156 = v145 - v149;
  v157 = v140 - v142 + 192120369;
  v158 = v156 + 457917544 + v154;
  LOBYTE(STACK[0xC50]) = v153;
  LOBYTE(STACK[0xC5B]) = v157;
  v159 = v149 - 1329929659 - v158;
  v160 = v152 + v157;
  LOBYTE(STACK[0xD61]) = (v156 + 104) ^ v6;
  v161 = v142 - 1329929659 - v160;
  LOBYTE(STACK[0xD2A]) = v147 ^ v6;
  LOBYTE(STACK[0xC71]) = v160;
  LOBYTE(STACK[0xD56]) = v155 ^ v6;
  LOBYTE(STACK[0xD6C]) = v159 ^ v6;
  LOBYTE(STACK[0xC66]) = v161;
  LOBYTE(STACK[0xD77]) = v158 ^ v6;
  v162 = (v161 ^ v157) + 2 * (v161 & v157);
  v163 = v159 + v156;
  v164 = v159 - 1852533711 + (v155 ^ 0x78A4FED6);
  v165 = v163 - v164;
  v143 -= 1686891073;
  v166 = v160 - 690943446 + v162;
  v167 = v161 - 1852533711 + (v153 ^ 0x78A4FED6);
  v168 = v162 - v167;
  LOBYTE(STACK[0xD82]) = v155 ^ 0x8D;
  LOBYTE(STACK[0xC9D]) = v166;
  v153 ^= 0x7036C237u;
  v163 += 457917544;
  LOBYTE(STACK[0xC7C]) = v153;
  LOBYTE(STACK[0xC87]) = v162 - v167;
  LOBYTE(STACK[0xD98]) = v164 ^ v6;
  v169 = v163 ^ (((v22 + 1436497351) & 0x1B4B0254) - 457900628 + ((174115384 - v22) & 0x1B4B0254) + (v155 ^ 0x7036C237));
  LOBYTE(STACK[0xC92]) = v167;
  v170 = ((v169 & 0x6613E426 ^ 0x954AD2EE) & (v169 & 0x99EC1BD9 ^ 0xFF5BF6EF) | v169 & 0x8A40911) ^ 0x954AD2EE;
  v171 = v165 - (v155 ^ 0x7036C237) + 457917544;
  v172 = v168 - v153;
  LOBYTE(STACK[0xD8D]) = (v165 + 104) ^ v6;
  v173 = v163 ^ v143;
  v174 = v162 ^ v153;
  LOBYTE(STACK[0xDA3]) = v143 ^ v6;
  v175 = v170 + v163;
  v176 = v173 - (v171 ^ 0x249A257D);
  v172 ^= 0x249A257Du;
  v177 = (v166 ^ v162) - v172;
  v178 = v174 + v162;
  v179 = v177 + v174;
  LOBYTE(STACK[0xDAE]) = (v170 + v176) ^ v6;
  v180 = STACK[0x5A0];
  *(v180 + ((v170 + v176) & 0xC8 ^ 0xC8) + ((v170 + v176) & 0xC8)) = v177 + v174;
  v181 = (v171 ^ 0x249A257D) + 1045776148;
  LOBYTE(STACK[0xDB9]) = v171 ^ 0xC7;
  v182 = v175 + v181;
  LOBYTE(STACK[0xDCF]) = v176 ^ v6;
  v183 = v170 + v176 - (v175 + v181);
  v184 = ((235 - (v171 ^ 0x249A257D)) & 0xF4) + (v181 & 0xF4);
  v185 = (v183 - 1992381042) ^ (v176 + 1790271172);
  LOBYTE(STACK[0xDDA]) = (v183 - 114) ^ v6;
  LOBYTE(STACK[0xCC9]) = v177;
  LOBYTE(STACK[0xCBE]) = v178;
  LOBYTE(STACK[0xCB3]) = v172;
  v186 = v175 + v181 + v181;
  v187 = v172 - 1474842175;
  v188 = v178 + 303094163 + v172 - 1474842175;
  LOBYTE(STACK[0xDC4]) = v175 ^ v6;
  *(v180 + v184) = v179 - v188 - 50;
  LODWORD(v184) = v187 + 443175187 + v188;
  v189 = (v179 - v188 + 85062094) ^ (v177 + 1790271172);
  v190 = v188 - 2077443136 + v189;
  LOBYTE(STACK[0xCDF]) = v184;
  LOBYTE(STACK[0xCEA]) = v190;
  v191 = (v185 + v182) ^ v186;
  LOBYTE(STACK[0xDF0]) = (v185 + v182) ^ v6;
  v192 = v185 - v191 + v186;
  v193 = v190 ^ v184;
  LOBYTE(STACK[0xDE5]) = v186 ^ v6;
  LODWORD(v184) = v189 - v193 + v184;
  LOBYTE(v186) = v185 ^ 0xBA;
  LOBYTE(STACK[0xDFB]) = v185 ^ 0xBA;
  LOBYTE(STACK[0xCF5]) = v189;
  v194 = v192 ^ v191;
  v195 = v173 + v170 - 946604894 + v194;
  v196 = v184 ^ v193;
  LOBYTE(STACK[0xD21]) = v189;
  LODWORD(v184) = v184 + v189;
  LOBYTE(STACK[0xD0B]) = v184;
  LOBYTE(STACK[0xE06]) = v195 ^ v6;
  v197 = v187 + v179 + 528237281 + v196;
  LOBYTE(STACK[0xE1C]) = v194 ^ v6;
  LOBYTE(STACK[0xE11]) = (v192 + v185) ^ v6;
  LODWORD(v184) = v197 + v184;
  v198 = v195 + v192 + v185;
  v199 = v194 - 259734903 + v195;
  v200 = v199 ^ v185;
  LOBYTE(STACK[0xD16]) = v196;
  LOBYTE(STACK[0xD00]) = v197;
  v201 = v196 - 259734903 + v197;
  v202 = v184 + v197;
  v203 = v198 + v195;
  LOBYTE(STACK[0xD2C]) = v202 - 119;
  LODWORD(v184) = v184 - (v201 + 1667895521);
  LOBYTE(STACK[0xD42]) = v201 - 31;
  LOBYTE(STACK[0xE27]) = v186;
  LOBYTE(STACK[0xD37]) = v184;
  LOBYTE(STACK[0xE48]) = (v199 - 31) ^ v6;
  LOBYTE(STACK[0xE32]) = (v203 - 119) ^ v6;
  LOBYTE(STACK[0xE3D]) = (v198 - (v199 - 31)) ^ v6;
  v204 = v198 - (v199 + 1667895521) - (v203 + 1455681134);
  v205 = v189 ^ 0x7713BA0A ^ v201;
  LOBYTE(STACK[0xD4D]) = v205;
  v206 = v200 ^ 0x7713BA0A ^ (v203 + 1455681134);
  v207 = v203 + 1455681134 - v206;
  LOBYTE(STACK[0xE53]) = v200 ^ v10;
  v208 = v206 - v204;
  v209 = v207 ^ v204;
  LOBYTE(STACK[0xE5E]) = v207 ^ v6;
  LOBYTE(STACK[0xE69]) = v209 ^ v6;
  LODWORD(v184) = v184 - (v202 + 1455681134);
  v210 = (v202 + 1455681134) ^ v205;
  v211 = v202 + 1455681134 - v210;
  v212 = v199 + 1408160618 + v203 + v209;
  v213 = v210 - v184;
  LOBYTE(STACK[0xD58]) = v211;
  v214 = v209 + v208;
  LOBYTE(STACK[0xD79]) = v213;
  LODWORD(v184) = v211 ^ v184;
  v215 = v201 + 1408160618 + v202 + v184;
  LOBYTE(STACK[0xD63]) = v184;
  LOBYTE(STACK[0xD6E]) = v215;
  LODWORD(v184) = v184 + v213;
  v216 = v211 - v213;
  v217 = v215 + v213;
  LOBYTE(STACK[0xE7F]) = v208 ^ v6;
  v218 = v215 + v184;
  v219 = v212 + v208 + v214 + v212;
  v220 = v219 ^ (v207 - v208);
  v221 = v217 + v218;
  LOBYTE(STACK[0xDA5]) = v221;
  v222 = v221 ^ v216;
  LOBYTE(STACK[0xD84]) = v222;
  v223 = v222 ^ v218;
  LOBYTE(STACK[0xE74]) = v212 ^ v6;
  LODWORD(v184) = v184 - 489185966;
  LOBYTE(STACK[0xE8A]) = v220 ^ v6;
  LOBYTE(STACK[0xD8F]) = v184;
  v224 = v220 ^ (v214 + v212);
  LOBYTE(STACK[0xE95]) = (v214 + 82) ^ v6;
  LOBYTE(STACK[0xD9A]) = v223;
  LOBYTE(STACK[0xEA0]) = v224 ^ v6;
  LOBYTE(STACK[0xEAB]) = v219 ^ v6;
  LODWORD(v184) = v184 - v221;
  v225 = v214 - ((((20713873 - v203) & 0x18F76DF) + ((v203 + 1455681134) & 0x18F76DF)) & 0x107C7FE) - v219 - 471931856;
  v226 = v224 + v225;
  v227 = v223 + v184;
  v228 = (v226 ^ v219) + v226;
  v229 = (v224 + v225) ^ (v220 + v219);
  v230 = v228 + v225;
  v231 = v227 ^ (v222 + v221);
  v232 = (v227 ^ v221) + v227;
  LOBYTE(STACK[0xEB6]) = v229 ^ v6;
  LOBYTE(STACK[0xEC1]) = v230 ^ v6;
  LOBYTE(STACK[0xDD1]) = v232;
  LODWORD(v184) = v232 + v184;
  LOBYTE(STACK[0xDBB]) = v184;
  LODWORD(v184) = v184 ^ v232;
  LOBYTE(STACK[0xED7]) = v228 ^ v6;
  LOBYTE(STACK[0xDC6]) = v227 + 91;
  LOBYTE(STACK[0xECC]) = (v226 + 91) ^ v6;
  v233 = v230 ^ v228;
  v234 = v233 ^ v229;
  LOBYTE(STACK[0xDB0]) = v231;
  v235 = v233 + v226 - 1518998437;
  v236 = v229 ^ 0x80F41E17 ^ (v228 - 2131485161 - ((2 * v228) & 0x1E83C2E));
  v237 = 1518998437 - v226;
  v238 = v184 + v227 - 1518998437;
  v239 = v184 ^ v231;
  v240 = 1518998437 - v227;
  v241 = v234 ^ 0xD4A7A328 ^ (v235 - 727211224 - ((2 * v235) & 0xA94F4650));
  v242 = v239 ^ 0x671C6456 ^ (v238 + 1729913942 - ((2 * v238) & 0xCE38C8AC));
  v243 = v232 ^ v231;
  v244 = v241 + v236;
  LOBYTE(STACK[0xDF2]) = v242;
  LOBYTE(STACK[0xEE2]) = v234 ^ 0x5C;
  LOBYTE(STACK[0xDDC]) = v239 ^ 0xE6;
  LOBYTE(STACK[0xEED]) = (v241 + v236) ^ v6;
  v245 = v241 + (v234 ^ 0x48A716E6);
  v246 = v242 + v243;
  LOBYTE(STACK[0xDE7]) = v246;
  LOBYTE(STACK[0xEF8]) = v241 ^ v6;
  v247 = (v234 ^ 0xBCA2A78D) & 0x8000;
  v248 = v244 + (v234 ^ 0xBCA2A78D);
  v249 = v242 + (v239 ^ 0x48A716E6);
  LOBYTE(STACK[0xDFD]) = v240;
  if ((v248 & v247) != 0)
  {
    v247 = -v247;
  }

  v250 = (v247 + v248) ^ (v234 ^ 0xBCA2A78D) & 0xFFFF7FFF;
  v251 = v239 ^ 0xBCA2A78D;
  LOBYTE(STACK[0xF03]) = v237 ^ v6;
  v252 = v246 + v251;
  v253 = v252 ^ v251;
  v254 = v252 + (v240 ^ 0xDF000EE5);
  v255 = v237 ^ 0xDF000EE5;
  v256 = (v248 - 1022091762) ^ v245;
  LOBYTE(STACK[0xF19]) = (v248 + 14) ^ v6;
  v257 = ((1022091761 - v248) & 0xC3141E0E) + v252 + ((v248 - 1022091762) & 0xC3141E0E);
  LOBYTE(STACK[0xF0E]) = v250 ^ v6;
  LOBYTE(STACK[0xE08]) = v253;
  v258 = v250 + v248 + v255;
  LOBYTE(STACK[0xE13]) = v257;
  v259 = v257 ^ v249;
  LOBYTE(STACK[0xF24]) = v256 ^ v6;
  LOBYTE(STACK[0xF2F]) = (v248 + v255) ^ v6;
  v260 = v255 - v248;
  v261 = v258 + v255 - v248;
  LOBYTE(STACK[0xE29]) = v254;
  LOBYTE(STACK[0xE1E]) = v259;
  v262 = v254 + v253;
  v263 = 1022091761 - v248 + v256 - v258 + 1;
  v264 = v254 - 2 * v257 + 348973933;
  v265 = v259 - (v262 + v257);
  v266 = v264 + v262;
  v267 = v258 + v255 + 1935256829;
  LOBYTE(STACK[0xF3A]) = (v261 + 81) ^ v6;
  v268 = v257 - 348973933 + v266;
  LOBYTE(STACK[0xE34]) = v266;
  LOBYTE(STACK[0xF45]) = (v267 - 11) ^ v6;
  LOBYTE(STACK[0xE3F]) = v268;
  LOBYTE(STACK[0xE55]) = v264;
  LOBYTE(STACK[0xE4A]) = v265;
  v269 = (v255 - v248 - 1178112036 + v267 - 1636862870) ^ (v261 + 2107457362);
  LOBYTE(STACK[0xF5B]) = (v260 + 81) ^ v6;
  v270 = v265 - 263263143 + v266;
  v266 -= 285700095;
  LOBYTE(STACK[0xF50]) = v263 ^ v6;
  v271 = v268 + v264;
  v272 = v266 + v268;
  LOBYTE(STACK[0xE6B]) = v272 - 68;
  LOBYTE(STACK[0xF66]) = (v261 + 82) ^ 0xE3;
  LOBYTE(STACK[0xF7C]) = (v261 - 86 + v263) ^ v6;
  LODWORD(STACK[0x59C]) = (v261 + 2129894314 + v263) ^ (v267 - 1636862870 + v261 + 2107457362 - 877635094);
  LOBYTE(STACK[0xE76]) = v270;
  LOBYTE(STACK[0xE60]) = v266 ^ 0x59;
  v272 -= 1601332897;
  LOBYTE(STACK[0xE81]) = v271 ^ v266;
  LODWORD(STACK[0x588]) = v272 ^ v270;
  LODWORD(STACK[0x56C]) = v272 - (v272 ^ v266 ^ 0x9EA10259);
  LOBYTE(STACK[0xF71]) = (v267 + 106 + v261 + 82 + 71) ^ v6;
  LODWORD(STACK[0x570]) = v269 ^ 0x8936E190;
  LODWORD(STACK[0x568]) = v271 ^ v266 ^ 0x8936E190;
  LOBYTE(STACK[0xF87]) = v269 ^ v6;
  return (*(v5 + 8 * ((v3 + 1451) ^ (45 * (STACK[0x3F0] & 1)))))();
}

uint64_t sub_1968D415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, unint64_t a27, uint64_t a28, _DWORD *a29)
{
  *a29 = v31 + v33 - 754493325;
  v34 = v32 & (((((v30 >> 11) ^ v30) << 7) & 0x9D2C5680 ^ (v30 >> 11) ^ v30) << 15) ^ (((v30 >> 11) ^ v30) << 7) & 0x9D2C5680 ^ (v30 >> 11) ^ v30;
  *(*a25 + a27) ^= (v31 > 0x13FF) ^ v34 ^ (v34 >> 18);
  return (*(v29 + 8 * ((v33 - 754487465) ^ (449 * (a27 < 0x1FC)))))();
}

void fp_dh_c2100b9a4cd13c48816768adaf543213(_DWORD *a1)
{
  v1 = *a1 + 1790939281 * ((-486501845 - (a1 | 0xE300922B) + (a1 | 0x1CFF6DD4)) ^ 0xE4234D95);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1968D42DC@<X0>(int a1@<W8>)
{
  v7 = v1;
  v6 = a1 - (((&v6 | 0x52B3FE03) - &v6 + (&v6 & 0xAD4C01F8)) ^ 0xAA6FDE42) * v2 + 5552;
  (*(v3 + 8 * (a1 ^ 0x188E)))(&v6);
  return (v4 - 1906281716);
}

uint64_t sub_1968D4500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6 + 585;
  (*(a6 + 8 * (v6 ^ 0x1CA4)))();
  v8 = STACK[0x370];
  STACK[0x5F8] = 0;
  return (*(v8 + 8 * ((((1187 * (v7 ^ 0x92C) - 1739) ^ (v7 - 1819)) * (STACK[0x4E0] == 0)) ^ v7)))();
}

uint64_t sub_1968D455C@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, int a4@<W6>, int a5@<W7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v91 = v54;
  v63 = (a1 + 16);
  v64 = v52;
  v65 = v57;
  v66 = v58;
  v67 = (a4 - 1257803994) & 0x4AF88FDB;
  v68 = v63[11];
  v69 = a4 - 1640;
  v70 = v63[3] ^ a2;
  v71 = v63[1] ^ v65;
  v72 = *v63 ^ v64;
  v73 = v63[2] ^ v61;
  v74 = v63[8] ^ v91;
  v75 = v63[4] ^ v51;
  v76 = v63[5] ^ v66;
  v77 = v63[7] ^ a5;
  v78 = v63[6] ^ v56;
  v79 = v63[12] ^ v55;
  v80 = v63[9] ^ a6;
  v81 = v63[10] ^ v53;
  HIDWORD(v82) = (((v68 ^ v59) >> 5) | (8 * (v68 ^ v59))) ^ 6;
  LODWORD(v82) = ((v68 ^ v59) << 27) ^ 0x60000000;
  v83 = v63[14] ^ v60;
  v84 = v63[15] ^ v50;
  v85 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v69 ^ 0x589)) - 8;
  v86 = v77 ^ v72 ^ v75 ^ v78 ^ v76 ^ v70 ^ v81 ^ v80 ^ (v82 >> 27) ^ v74 ^ v73 ^ v79 ^ v83 ^ v84 ^ (v63[13] + a3 - 2 * (v63[13] & a3)) ^ (*&v85[8 * (v72 ^ 0x7E)] * (v67 ^ 0xFFFFFFF6)) ^ (*&v85[8 * (v71 ^ 0x7F)] * (v69 ^ 0xFFFFF05C)) ^ (109 * *&v85[8 * (v73 ^ 0x17CLL)]) ^ (109 * *&v85[8 * (v70 ^ 0x7D)]) ^ (109 * *&v85[8 * (v75 ^ 0x7A)]) ^ (109 * *&v85[8 * (v76 ^ 0x17BLL)]) ^ (109 * *&v85[8 * (v78 ^ 0x78)]) ^ (109 * *&v85[8 * (v77 ^ 0x79)]) ^ (109 * *&v85[8 * (v74 ^ 0x17ELL)]) ^ (109 * *&v85[8 * (v80 ^ 0x17FLL)]);
  v87 = (109 * *&v85[8 * (v81 ^ 0x7C)]) ^ 0xFFFFFF8A;
  v90 = *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v69 - 1224) + (((109 * *&v85[8 * (v79 ^ 0x7A)]) ^ (109 * *&v85[8 * ((v63[13] + a3 - 2 * (v63[13] & a3)) ^ 0x17BLL)]) ^ (109 * *&v85[8 * (v83 ^ 0x78)]) ^ (109 * *&v85[8 * (v84 ^ 0x79)]) ^ (109 * *&v85[8 * ((v82 >> 27) ^ 0xB1)]) ^ ((-(v86 ^ 0xCC) ^ (v87 - (v87 ^ v86 ^ 0xCC)) ^ 0x59 ^ ((v86 ^ 0xCC) + ~(2 * ((v86 ^ 0xCC) & 0x5B ^ v86 & 2)) + 90)) + v87) ^ (v71 + (~(2 * v71) | 0x1B) + 115)) ^ 0x15) - 12);
  v88 = ((((v90 - 16) ^ 0xBCu) << 8) ^ 0xDA1C36BC16709E23) & ((v90 - 16) ^ 0xFA5E3FFC76FEFF82) | ((v90 - 16) ^ 0xBCu) & 0xDCLL;
  return (*(a50 + 8 * (v69 + 5374)))(((((v88 << 16) ^ 0x4943A98CB804FFFFLL) & (v88 ^ 0x8FFDA9D0B98C5FE5) ^ (v88 << 16) & 0x221C001050030000) << 32) & 0xAF1C6D5500000000);
}

uint64_t sub_1968D4594@<X0>(unsigned int a1@<W8>)
{
  v9 = v2 - 2;
  v10 = v3 + 2;
  *(v9 + 91) = (v10 ^ v6) * (v10 + 17);
  *(v9 + (v5 ^ 0x2E87084B)) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v4 == 2) * v7) ^ a1)))();
}

void fp_dh_c74f64e7102d79d3558110fb7d344e46(uint64_t a1)
{
  v1 = 455395931 * ((a1 & 0xD1E0724E | ~(a1 | 0xD1E0724E)) ^ 0x58EED37D);
  v2 = *(a1 + 24) - v1;
  if (*(a1 + 8))
  {
    v3 = (*a1 ^ v1) == 1456321583;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X10, X17 }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1968D46B4(uint64_t a1@<X8>)
{
  v13 = a1;
  v12 = v4 - 148684669 - ((&v12 - 1084695064 - 2 * (&v12 & 0xBF58DDE8)) ^ 0xDA4226A3) * v2;
  (*(v7 + 8 * (v4 + 4317)))(&v12);
  *v6 = v14;
  *v3 += 4;
  v13 = v5 + 8;
  v12 = v4 - 148684669 - ((&v12 & 0x9161D87C | ~(&v12 | 0x9161D87C)) ^ 0xB84DCC8) * v2;
  v9 = (*(v7 + 8 * (v4 ^ 0x135F)))(&v12);
  v10 = v14;
  *v3 += 4;
  v11 = v1 + 5;
  if ((((v10 ^ 0xEFB4C2CF) + 273366321) ^ ((v10 ^ 0x2ED8751E) - 785937694) ^ ((v10 ^ 0xD14F2C3E) + 2 * v8 + 783333980)) == 0xEFDD1429)
  {
    v11 = 1906281716;
  }

  *(v9 + 8) = v11;
}

void df35957c4e0()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_ba7d2e3963f889e142b08795b6633620 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * (fp_dh_ba7d2e3963f889e142b08795b6633620 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0xD2]) - 77);
  v1 = *(v0 - 4);
  v2 = off_1F0B0CD68 - 4;
  v3 = off_1F0B0C8F0 - 4;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) - 4) ^ 0x4Eu) - 4) ^ (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 404);
  v5 = v1 ^ &v10 ^ *(v4 - 4);
  *(v0 - 4) = 810526117 * v5 + 0x3983E51A1E6C17ABLL;
  *(v4 - 4) = 810526117 * (v5 ^ 0xC67C1AE5E193E855);
  v8 = 0;
  v7 = 0;
  v11 = &v7;
  v12 = 496586312 - 654144011 * ((((&v11 | 0x2532C454) ^ 0xFFFFFFFE) - (~&v11 | 0xDACD3BAB)) ^ 0xF6194637);
  v6 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_ba7d2e3963f889e142b08795b6633620) ^ 0x55)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_ba7d2e3963f889e142b08795b6633620) ^ 0x55))] ^ 0x60]) + 595) - 4;
  (*&v6[8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * (*(v0 - 4) ^ 0x55 ^ *(v4 - 4)))) ^ 0xDCu) - 8) ^ (-91 * (*(v0 - 4) ^ 0x55 ^ *(v4 - 4)))) + 54312])(&v11);
  v9 = 0;
  v11 = &v9;
  v12 = 496586312 - 654144011 * ((-1722730254 - (&v11 | 0x995138F2) + (&v11 | 0x66AEC70D)) ^ 0x4A7ABA91);
  (*&v6[8 * ((-91 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x55)) ^ v3[v2[(-91 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x55))] ^ 0xD2]) + 53240])(&v11);
  LODWORD(v11) = 1575331711 * (&v11 ^ 0x6C5B9502) + 1655634431;
  (*&v6[8 * ((-91 * (*(v0 - 4) ^ 0x55 ^ *(v4 - 4))) ^ v3[v2[(-91 * (*(v0 - 4) ^ 0x55 ^ *(v4 - 4)))] ^ 0xD2]) + 52784])(&v11);
  __asm { BRAA            X8, X17 }
}

uint64_t fp_dh_e92a042d2088825111a887bc735b63af(uint64_t result)
{
  v1 = *result - 1068996913 * ((result & 0x43834E34 | ~(result | 0x43834E34)) ^ 0x6992505A);
  v2 = *(result + 8);
  *v2 = HIBYTE(v1);
  v2[1] = BYTE2(v1) ^ 0x89;
  v2[2] = BYTE1(v1) ^ 0xAA;
  v2[3] = v1 ^ 0xE9;
  return result;
}

void TRKYieUV6ptjZFoDvz()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_6c4efbf1eea916c91ddfcf10ea3f2ce9) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_6c4efbf1eea916c91ddfcf10ea3f2ce9) ^ 0x55))] ^ 0xB]) + 159);
  v1 = -91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + *v0) ^ 0x55);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v1 - 4) ^ 0x15u) - 4) ^ v1) + 428);
  v3 = *v0 - &v5 + *(v2 - 4);
  *v0 = 810526117 * v3 + 0x3983E51A1E6C17ABLL;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 192807272 - 1068996913 * ((2 * (v6 & 0x400B47C0) - v6 + 1073002559) ^ 0xEA1A59AE);
  LOBYTE(v2) = -91 * ((*(v2 - 4) + *v0) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_6c4efbf1eea916c91ddfcf10ea3f2ce9) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_6c4efbf1eea916c91ddfcf10ea3f2ce9) ^ 0x55))] ^ 0x76]) + 626) - 4;
  (*&v4[8 * (*(off_1F0B0CB90 + (*(off_1F0B0C400 + v2) ^ 0xCu)) ^ v2) + 52800])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968D4F6C()
{
  *(v6 - 136) = (v3 ^ 0x91) + ((2 * (v3 ^ 0x6F)) & 0xFC) - ((((2 * (v6 + 112)) | 0xF6) - (v6 + 112) + 5) ^ 0xCC) * v2 + 88;
  *(v6 - 144) = v5 + 144;
  *(v6 - 120) = v1 - ((((2 * (v6 - 144)) | 0xE81333F6) - (v6 - 144) - 1946786299) ^ 0x749FCACC) * v2 - 701;
  *(v6 - 128) = v4;
  *(v6 - 112) = 123 - ((((2 * (v6 + 112)) | 0xF6) - (v6 + 112) + 5) ^ 0xCC) * v2;
  v7 = (*(v0 + 8 * (v1 ^ 0x934)))(v6 - 144);
  return (*(v0 + 8 * ((2813 * (*(v6 - 116) == ((v1 - 1608365034) & 0x5FDDAFBD) + 1906278079)) ^ v1)))(v7);
}

uint64_t sub_1968D5054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, char a59)
{
  *(v63 - 152) = &a59;
  *(v63 - 144) = v59 + 12;
  *(v63 - 168) = a53;
  *(v63 - 136) = (v60 + 3464) ^ (998242381 * ((((v63 - 168) | 0xC4F73AD4) - ((v63 - 168) & 0xC4F73AD4)) ^ 0x6E98A202));
  (*(v62 + 8 * (v60 ^ 0x1D56)))(v63 - 168);
  return (*(v62 + 8 * (v60 | (2 * ((((v60 - 121) ^ (v61 + 35)) ^ (*(v63 - 160) == 1906281716)) & 1)))))();
}

uint64_t sub_1968D51EC@<X0>(int a1@<W3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  *&v18 = 0xECECECECECECECECLL;
  *(&v18 + 1) = 0xECECECECECECECECLL;
  *(&a15 + a2) = v18;
  *(&a15 + a2 + 16) = v18;
  return (*(v17 + 8 * ((119 * ((v15 & 0xFFFFFFFFFFFFFFE0) != 32)) ^ (a1 + v16 - 1881))))();
}

uint64_t sub_1968D529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v20 = *(v11 + 8);
  v21 = (v19 - 128) & 0xD0F5608D655F76E4;
  *(v19 - 120) = &a11;
  *(v19 - 104) = 1621291457 * ((v19 - 128 - 2 * v21 - 0x2F0A9F729AA0891CLL) ^ 0xAD833A605348F77DLL) + v16 + v20 - (v14 & (2 * v20));
  *(v19 - 128) = (v13 + v17) ^ (1621291457 * ((v19 - 128 - 2 * v21 + 1700755172) ^ 0x5348F77D));
  v22 = (*(v12 + 8 * v18))(v19 - 128);
  return (*(v12 + 8 * ((3780 * (*(v19 - 112) == v15)) ^ v13)))(v22);
}

uint64_t sub_1968D537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, uint64_t a27, int a28)
{
  v32 = 654144011 * ((&a25 & 0x3D49C940 | ~(&a25 | 0x3D49C940)) ^ 0xEE624B23);
  a26 = v29 - v32 + 418966289;
  a27 = v31;
  a28 = v32 ^ 0x462933C0;
  v33 = (*(v28 + 8 * (v29 + 6296)))(&a25);
  return (*(v28 + 8 * (((a25 == v30) * (((v29 - 597) | 0xA30) ^ 0x6B7)) ^ v29)))(v33);
}

uint64_t sub_1968D5428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int32x4_t a17, int8x16_t a18, int8x16_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v37 = v32 - v34 + 623;
  *v36 = ((((a23 - v32) | (v32 - a23)) >= 0) | 0x80000000) ^ (v32 + v32 + 623 - 622);
  (*(v33 + 8 * (v32 ^ 0x1A41)))(a28);
  v38 = vld1q_dup_f32(v36);
  v39 = (v37 + 648996967) & 0x649B87B;
  v40.i64[0] = 0x8000000080000000;
  v40.i64[1] = 0x8000000080000000;
  v41.i32[0] = *(v36 + 4 * v39 - 16612);
  v41.i32[1] = *(v36 + 8);
  v41.i32[2] = *(v36 + 12);
  v42 = vextq_s8(v38, v41, 0xCuLL);
  v43 = v41;
  v43.i32[3] = *(v36 + 16);
  v44 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v43, a19), vandq_s8(v42, v40)), 1uLL), *(v36 + 1588));
  v42.i32[0] = *(v35 + 4 * (*(v36 + 4 * v39 - 16612) & 1));
  v42.i32[1] = *(v35 + 4 * (*(v36 + 8) & 1));
  v42.i32[2] = *(v35 + 4 * (*(v36 + 12) & 1));
  v42.i32[3] = *(v35 + 4 * (v43.i8[12] & 1));
  *v36 = veorq_s8(vaddq_s32(vsubq_s32(v44, vandq_s8(vaddq_s32(v44, v44), a18)), a17), v42);
  return (*(a32 + 8 * (v37 + 754489036)))(550206709);
}

uint64_t sub_1968D55A8()
{
  *v3 = 0;
  *v2 = 0;
  v5 = (v0 ^ 0xFBFF9EFC) + ((2 * v0) & 0xF7FF3DF8) + 1973413537 + v1 - 1293;
  v6 = (v1 - 3172) | 0x2BB;
  v11 = v9;
  v10 = v1 - 1293 - 1790939281 * ((417994124 - (&v10 | 0x18EA158C) + (&v10 | 0xE715EA73)) ^ 0x1FC9CA32) + 4222;
  (*(v4 + 8 * ((v1 - 1293) ^ 0x1DFC)))(&v10);
  v10 = v6 - 1790939281 * ((&v10 & 0x775E3402 | ~(&v10 | 0x775E3402)) ^ 0x707DEBBC) + 5402;
  v11 = v8;
  (*(v4 + 8 * (v6 + 6128)))(&v10);
  return v5 - 1906281716;
}

uint64_t sub_1968D5708(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = (v19 ^ 0x15) - a4;
  v23 = 1283153057 * ((v21 - 160) ^ 0x4FD80337);
  STACK[0x308] = &STACK[0x29C];
  *(v21 - 144) = (v19 + 2949) ^ v23;
  *(v21 - 160) = v23 + a16 - 12289790;
  v24 = (*(v20 + 8 * (v19 + 6766)))(v21 - 160);
  v25 = ((STACK[0x2E0] & 0x3F ^ 0x7A8F53E0) + 1850191731) ^ ((v22 ^ STACK[0x2E0] & 0x3F ^ 0xB337A94A) + 64862793) ^ ((STACK[0x2E0] & 0x3F ^ 0x6D9A153A) + ((337 * (v19 ^ 0x15)) ^ 0x7952E7D2));
  *(&STACK[0x29C] + v25 - 348716179) = 108;
  return (*(v20 + 8 * ((4562 * (v25 - 348716235 < 0xFFFFFFC8)) ^ v19)))(v24, a19);
}

uint64_t sub_1968D5858@<X0>(uint64_t a1@<X3>, uint64_t a2@<X7>, _DWORD *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t (*a24)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v30 = (((v29 ^ 0x30018243) - 805405251) ^ ((v29 ^ 0x92C4CA82) + 1832596862) ^ ((v29 ^ 0xDE824FAA) + 561885270)) + 45604299 + (((a3[22] ^ 0x72588A69) - 1918405225) ^ ((a3[22] ^ 0x2E02BCCC) - 771931340) ^ ((a3[22] ^ ((v28 - 535) | 0x1484) ^ 0x201D2513) - 538784206));
  a3[22] = v30 ^ ((v30 ^ 0x503DFF2E) - 1511272923) ^ ((v30 ^ 0xB1ACC50F) + 1148908550) ^ ((v30 ^ 0x4438BBB) - 241845582) ^ ((v30 ^ 0xEFFB7F6F) + 439176806) ^ 0x766EC99E;
  v31 = (((v25 ^ 0x790133D1) - 2030121937) ^ ((v25 ^ 0x89866F57) + 1987678377) ^ ((v25 ^ 0x8CC05BED) + 1933550611)) + (((a3[18] ^ 0x17DF8A1B) - 400525851) ^ ((a3[18] ^ 0xC76A8B14) + 949318892) ^ ((a3[18] ^ 0xACF20664) + 1393424796)) + 2018565548;
  v32 = (((v27 ^ 0xB036D309) + 1338584311) ^ ((v27 ^ 0xA3B47EA8) + 1548452184) ^ ((v27 ^ 0x6FC5AACA) - 1875225290)) + (((a3[19] ^ 0xD30BB3C) - 221297468) ^ ((a3[19] ^ 0xE3F70C65) + 470348699) ^ ((a3[19] ^ 0x9280B032) + 1837060046)) + 1380682618;
  a3[18] = v31 ^ ((v31 ^ 0x7B881234) - 72015074) ^ ((v31 ^ 0xF5CFE656) + 1978849152) ^ ((v31 ^ 0x65EC70B) - 2040269277) ^ ((v31 ^ 0xF7DBFDBF) + 2011614359) ^ 0x385C9BD;
  a3[19] = v32 ^ ((v32 ^ 0x8C69AAB4) + 707471856) ^ ((v32 ^ 0x8000DF99) + 641883331) ^ ((v32 ^ 0xEA23F636) + 1281455470) ^ ((v32 ^ 0xBFF7FFBF) + 431324389) ^ 0x25FA7BCF;
  v33 = (((v26 ^ 0x1126EC6C) - 287763564) ^ ((v26 ^ 0xC0B02655) + 1062197675) ^ ((v26 ^ 0xADD1CD52) + 1378759342)) + (((a3[20] ^ 0x8C92E23C) + 1936530884) ^ ((a3[20] ^ 0x7AC8892E) - 2059962670) ^ ((a3[20] ^ 0x8A1D6C79) + 1977783175)) + 1511783272;
  v34 = (v33 ^ 0x9C791B4C) & (2 * (v33 & 0x9E72136E)) ^ v33 & 0x9E72136E;
  v35 = ((2 * (v33 ^ 0xBC791B8C)) ^ 0x441611C4) & (v33 ^ 0xBC791B8C) ^ (2 * (v33 ^ 0xBC791B8C)) & 0x220B08E2;
  v36 = v35 ^ 0x22090822;
  v37 = (v35 ^ 0xC0) & (4 * v34) ^ v34;
  v38 = ((4 * v36) ^ 0x882C2388) & v36 ^ (4 * v36) & 0x220B08E0;
  v39 = v37 ^ 0x220B08E2 ^ (v38 ^ 0x80080) & (16 * v37);
  v40 = (16 * (v38 ^ 0x22030862)) & 0x220B08E0 ^ 0x20B00C2 ^ ((16 * (v38 ^ 0x22030862)) ^ 0x20B08E20) & (v38 ^ 0x22030862);
  v41 = (v39 << 8) & 0x220B0800 ^ v39 ^ ((v39 << 8) ^ 0xB08E200) & v40;
  v42 = (((v24 ^ 0x25B870B3) - 632844467) ^ ((v24 ^ 0x687A458B) - 1752843659) ^ ((v24 ^ 0x31853253) - 830812755)) + (((a3[21] ^ 0x99F6E83B) + 1711871941) ^ ((a3[21] ^ 0x3D42BCF2) - 1027783922) ^ ((a3[21] ^ 0xD8F353A2) + 655141982)) + 1406679100;
  a3[20] = v33 ^ (2 * ((v41 << 16) & 0x220B0000 ^ v41 ^ ((v41 << 16) ^ 0x8E20000) & ((v40 << 8) & 0x220B0000 ^ 0x20030000 ^ ((v40 << 8) ^ 0xB080000) & v40))) ^ 0xA23705C1;
  a3[21] = v42 ^ ((v42 ^ 0x635DEB19) - 941081215) ^ ((v42 ^ 0xA06A24CF) + 81785431) ^ ((v42 ^ 0x67C2194F) - 1015558185) ^ ((v42 ^ 0xFFBFFFFF) + 1527392615) ^ 0x270D2E0D;
  return a24(571148512, a22, 2614, a1, a21, a23, a20, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1968D5F50@<X0>(_DWORD *a1@<X8>, uint8x8_t a2@<D2>)
{
  a2.i32[0] = *v2;
  v5 = vmovl_u8(a2).u64[0];
  *a1 = vuzp1_s8(vadd_s16(vsub_s16(v5, vand_s8(vadd_s16(v5, v5), 0xD800D800D800D8)), 0xEC00EC00EC00ECLL), 0xD800D800D800D8).u32[0];
  return (*(v4 + 8 * (((v3 ^ 0x9F9) + 4009) ^ v3)))();
}

uint64_t sub_1968D6050@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = ((2 * a1) & 0xFFF9137F5E5DFB7ALL) + (a1 ^ 0x7FFC89BFAF2EFDBDLL) + (v55 ^ 0xEE677F745AF9572CLL);
  v74 = STACK[0x8D0];
  v75 = STACK[0x8D0] + 4;
  STACK[0x350] = STACK[0x7A8];
  STACK[0x260] = (v75 ^ 0x2DFF72FD5EAFFF3ELL) - 0x9A12090E8BB200 + ((2 * v75) & 0x5BFEE5FABD5FFE7CLL);
  STACK[0x250] = STACK[0x8C8];
  v76 = STACK[0x8C0];
  STACK[0x240] = ((STACK[0x8C0] + (((v55 ^ 0x1245) + 987) ^ 0x1659)) ^ 0xAF6774F55FACEFBELL) + 0x7DFDEBFEF0775D80 + ((2 * (STACK[0x8C0] + (((v55 ^ 0x1245) + 987) ^ 0x1659))) & 0x5ECEE9EABF59DF7CLL);
  v77 = STACK[0x8B0];
  STACK[0x230] = ((STACK[0x8B0] + 4) ^ 0xBFEDEEFC70FEFDBFLL) + 0x6D7771F7DF254F7FLL + ((2 * (STACK[0x8B0] + 4)) & 0x7FDBDDF8E1FDFB7ELL);
  v78 = STACK[0x900];
  STACK[0x220] = ((STACK[0x900] + 4) ^ 0x3DFF6EF47FF4DFFFLL) - 0x109A0E002FD092C1 + ((2 * (STACK[0x900] + 4)) & 0x7BFEDDE8FFE9BFFELL);
  v79 = STACK[0x920];
  STACK[0x210] = ((STACK[0x920] + 4) ^ 0xEF6D74F5576FEFFFLL) + 0x3DF7EBFEF8B45D3FLL + ((2 * (STACK[0x920] + 4)) & 0xDEDAE9EAAEDFDFFELL);
  v80 = STACK[0x8A0];
  STACK[0x200] = ((STACK[0x8A0] + 4) ^ 0x2FFD72F4DDB7DF3ELL) - 0x29812008D939200 + ((2 * (STACK[0x8A0] + 4)) & 0x5FFAE5E9BB6FBE7CLL);
  v81 = STACK[0x940];
  v82 = STACK[0x950];
  v90 = ((STACK[0x890] + 4) ^ 0xAF7D7AFED265DF7FLL) + 0x7DE7E5F57DBE6DBFLL + ((2 * (STACK[0x890] + 4)) & 0x5EFAF5FDA4CBBEFELL);
  v83 = STACK[0x988];
  v89 = ((STACK[0x988] + 4) ^ 0xBD6F7DF7F16C7F3ELL) + 0x6FF5E2FC5EB7CE00 + ((2 * (STACK[0x988] + 4)) & 0x7ADEFBEFE2D8FE7CLL);
  v88 = ((v78 + 6) ^ 0xEEF61BF6FFBCD5BALL) + 0x7F6DED3D0A6B7FEELL + ((2 * (v78 + 6)) & 0xDDEC37EDFF79AB74);
  v87 = ((STACK[0x890] + 6) ^ 0xEF6C2D3DDE6D75A8) + 0x7EF7DBF62BBAE000 + ((2 * (STACK[0x890] + 6)) & 0xDED85A7BBCDAEB50);
  STACK[0x270] = v74 + 10;
  STACK[0x2B0] = STACK[0x628];
  STACK[0x2A0] = STACK[0x600];
  STACK[0x2D0] = STACK[0x7C0];
  STACK[0x2C0] = STACK[0x598];
  STACK[0x290] = STACK[0x5B0];
  STACK[0x320] = STACK[0x4C0];
  v86 = STACK[0x938];
  STACK[0x300] = STACK[0x4A8];
  v85 = STACK[0x948];
  STACK[0x280] = STACK[0x468];
  STACK[0x2F0] = STACK[0x3B0];
  v84 = STACK[0x980];
  LODWORD(STACK[0x2E0]) = LOWORD(STACK[0x87A]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x85E]);
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x84E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x82E]);
  v58 = __ROR8__((v56 + v57 - 0x6E6409340A2855A8 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = ((2 * ((v58 - 0x6AF7234D0CC131D5) ^ 0xC30ED5EEE3F57A90)) | 0x9B480BC5A364AA58) - ((v58 - 0x6AF7234D0CC131D5) ^ 0xC30ED5EEE3F57A90) + 0x325BFA1D2E4DAAD4;
  v60 = v59 ^ 0x474392375D51C86ELL;
  v59 ^= 0xEF0577A0C4A7B932;
  v61 = __ROR8__(v60, 8);
  v62 = __ROR8__((0xA71A3A30759F19F1 - ((v61 + v59) | 0xA71A3A30759F19F1) + ((v61 + v59) | 0x58E5C5CF8A60E60ELL)) ^ 0xBC78B2100D5D5970, 8);
  v63 = (0xA71A3A30759F19F1 - ((v61 + v59) | 0xA71A3A30759F19F1) + ((v61 + v59) | 0x58E5C5CF8A60E60ELL)) ^ 0xBC78B2100D5D5970 ^ __ROR8__(v59, 61);
  v64 = (((2 * (v62 + v63)) | 0xBF13494C79250678) - (v62 + v63) + 0x20765B59C36D7CC4) ^ 0x2A2B551F89423135;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((2 * (v66 + v65)) & 0xDCAAC815B6E790B4) - (v66 + v65) - 0x6E55640ADB73C85BLL) ^ 0xC8C92D30715548BALL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x61459D2AF01F24F7;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((2 * (v71 + v70)) & 0x10F33DC44BD18E2ALL) - (v71 + v70) + 0x7786611DDA1738EALL) ^ 0x13457D1FAA93E686;
  return (*(STACK[0x370] + 8 * v55))(0xE0FE33F42CA4A733, 2574711003, 0xE61471F4DE6E4C44, 0x2800831150900C10, 0xF30A38FA6F372622, STACK[0x370], 0x91AA9BF5248C37A5, (2 * ((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v70, 61))) ^ 0xE8E98C8663AAE2BLL)) & 0x65466F5D602B4D82, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, ((v83 + 10) ^ 0x6E6DBD3C8ABA77B9) - 0x9B40880922211 + ((2 * (v83 + 10)) & 0xDCDB7A791574EF72), a19, ((v82 + 10) ^ 0x7FEEED7D9E78F5BDLL) - 0x118AE4499450A015 + ((2 * (v82 + 10)) & 0xFFDDDAFB3CF1EB7ALL), a21, ((v81 + 10) ^ 0xFF7C59B76B3FF5F8) + 0x6EE7AF7C9EE85FB0 + ((2 * (v81 + 10)) & 0xFEF8B36ED67FEBF0), a23, ((v74 + 10) ^ 0xEFFE6D340EEE57FBLL) + 0x7E659BFFFB39FDADLL + ((2 * (v74 + 10)) & 0xDFFCDA681DDCAFF6), a25, v84, a27, v85, a29, v86, a31, v83 + 10, a33, ((v83 + 6) ^ 0xEF7F8B7CBF6DD7FDLL) + 0x7EE47DB74ABA7DABLL + ((2 * (v83 + 6)) & 0xDEFF16F97EDBAFFALL), a35, v87, a37, ((v82 + 6) ^ 0xEEEDCB75AAAF57B9) + 0x7F763DBE5F78FDEFLL + ((2 * (v82 + 6)) & 0xDDDB96EB555EAF72), a39, ((v81 + 6) ^ 0xEF6CBD377FADD5EFLL) + 0x7EF74BFC8A7A7FB9 + ((2 * (v81 + 6)) & 0xDED97A6EFF5BABDELL), a41, ((v79 + 6) ^ 0xEF6D7D7CFA6AFFEDLL) + 0x7EF68BB70FBD55BBLL + ((2 * (v79 + 6)) & 0xDEDAFAF9F4D5FFDALL), a43, ((v80 + 6) ^ 0xFE77FB75FFABFFB9) + 0x6FEC0DBE0A7C55EFLL + ((2 * (v80 + 6)) & 0xFCEFF6EBFF57FF72), a45, v88, a47, ((v77 + 6) ^ 0xEFFECFF74B2B7DAALL) + 0x7E65393CBEFCD7FELL + ((2 * (v77 + 6)) & 0xDFFD9FEE9656FB54), a49, ((v76 + 6) ^ 0x6FE429B5DB3A75AALL) - 0x1802081D1122002 + ((2 * (v76 + 6)) & 0xDFC8536BB674EB54), a51, ((v74 + 6) ^ 0xFF7DFFBD5BB9D7BELL) + 0x6EE60976AE6E7DEALL + ((2 * (v74 + 6)) & 0xFEFBFF7AB773AF7CLL), a53, v89, a55, v90);
}

uint64_t sub_1968D60A4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  *v16 = 0;
  v17 = (a1 - 240850726) | 0x208;
  v18 = a1 - 240850206;
  a14 = a1 + 1575331711 * ((&a14 + 1841835600 - 2 * (&a14 & 0x6DC82E50)) ^ 0x193BB52) + 1414783639;
  v19 = (*(v15 + 8 * (a1 ^ 0xE5B0DC0u)))(&a14);
  return (*(v15 + 8 * (((a15 == 1906281716) * (v17 ^ 0x125A)) | v18)))(v19);
}

void fp_dh_29d86722bf889f39040dd716e8f80bea(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_511d7ba764af588483f3ca8826b1e6b6 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (fp_dh_511d7ba764af588483f3ca8826b1e6b6 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x16]) - 87);
  v4 = *(v3 - 4);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + (-91 * (v4 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) - 4) ^ 0x4Eu) - 4) ^ (-91 * (v4 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 404);
  v6 = &v8[*(v5 - 4) ^ v4];
  *(v3 - 4) = 810526117 * v6 - 0x3983E51A1E6C17ABLL;
  *(v5 - 4) = 810526117 * (v6 ^ 0xC67C1AE5E193E855);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 1068996913 * (v10 ^ 0xD5EEE191);
  v11 = v9;
  v10[2] = v6 + 46798682;
  v10[0] = v6 ^ 0xADA01D3E;
  LOBYTE(v5) = -91 * (*(v3 - 4) ^ 0x55 ^ *(v5 - 4));
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_511d7ba764af588483f3ca8826b1e6b6) ^ 0x55)) ^ fp_dh_222236759e9e7014a4b1132c99a61f18[fp_dh_a39239c15ed61b79f612ca2106c00643[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_511d7ba764af588483f3ca8826b1e6b6) ^ 0x55))] ^ 0x5C]) + 504) - 4;
  (*&v7[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v5 - 8) ^ 0x76u) - 12) ^ v5) + 54520])(v10);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1968D634C@<X0>(int8x16_t *a1@<X2>, int a2@<W8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>)
{
  v8 = (v6 + v4);
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a3)), a4);
  *a1 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a3)), a4);
  a1[1] = v9;
  return (*(v7 + 8 * (((5 * (a2 ^ 0x893) != 2707) * v5) ^ (5 * (a2 ^ 0x893)))))();
}

uint64_t sub_1968D6444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v37 = *v33 + 126;
  v38 = v37 & 0x56 ^ 0xFFFFFFC7;
  v39 = *(a32 + (v37 ^ (2 * ((v37 ^ v34) & (2 * ((v37 ^ v34) & (2 * (((((v37 ^ v34) & (2 * (v37 & (2 * (v38 ^ v37 & 0x1E)) ^ v38))) ^ v38) << ((a30 ^ 0x46) - 110)) & (v37 ^ v34) ^ v38)) ^ v38)) ^ v38)) ^ a2) - 2 * ((v37 ^ (2 * ((v37 ^ v34) & (2 * ((v37 ^ v34) & (2 * ((((v37 ^ v34) & (2 * (v37 & (2 * (v38 ^ v37 & 0x1E)) ^ v38)) ^ v38) << ((a30 ^ 0x46) - 110)) & (v37 ^ v34) ^ v38)) ^ v38)) ^ v38)) ^ a2) & v36) + 211);
  v40 = ((*(a29 + (a6 ^ 0x8C)) >> 5) | (8 * *(a29 + (a6 ^ 0x8C)))) ^ 0xFFFFFFF5;
  HIDWORD(v41) = v39;
  LODWORD(v41) = ((-44 * (v39 ^ v35)) ^ v39 ^ v35) << 24;
  return (*(a33 + 8 * (a30 ^ 0xF46)))(a1, a2, a3, a29, 0, (((v41 >> 25) ^ 0xFu) << ((v40 >> 5) | (8 * v40))) ^ a4, a5, a30 ^ 0xF46u, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1968D6464@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x956;
  v3 = 5 * (a1 ^ 0x1F20);
  v4 = (*(v1 + 8 * (a1 ^ 0xE5)))(32, 0x101004023FF3BD5) == 0;
  return (*(v1 + 8 * ((v4 * (v3 ^ (v2 + 1276636222) & 0xB3E80AFF ^ 0x1061)) ^ v2)))();
}

uint64_t sub_1968D64E8@<X0>(unsigned __int16 a1@<W8>)
{
  v4 = ((((v1 ^ 0x638E) + (v2 ^ 0x958F)) ^ ((v2 ^ 0x7B14) - 31508) ^ ((v2 ^ 0x850) + v1 + 1738 - 6425)) - 5957);
  v5 = v4 < 0x1F0;
  v6 = v4 > (a1 + 496);
  if ((a1 >> 4) > 0xFE0u != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((6439 * v6) ^ v1)))();
}

uint64_t sub_1968D6690@<X0>(char a1@<W1>, int a2@<W8>)
{
  v8 = v5 - v2;
  *(v8 + 91) = ((v2 + v3) ^ v4) * (v2 + v3 + 17);
  *(v8 + 90) = (v6 + (a2 ^ (a1 + 61)) + v2 + v3 - 14) * ((v2 + v3) ^ 0xBB);
  return (*(v7 + 8 * (((2 * (v2 == 90)) | ((v2 == 90) << 9)) ^ a2)))(0);
}

uint64_t sub_1968D7F80(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v17 = (v7 + 4 * v15);
  v18 = HIDWORD(v5) + v16 * (*(v12 + 4 * v15) ^ v4) + (*v17 ^ v4) + (v6 >> ((a2 ^ v13) - 83)) + v11 * (*(v8 + 4 * v15) ^ v4);
  *(v17 - 1) = v18 + v4 - (a4 & (2 * v18));
  return (*(v9 + 8 * (((v15 + 1 == v10) * v14) ^ a2)))();
}

uint64_t sub_1968D82C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v20 = ~v18 + v15;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v23.i64[1] = a11;
  v24 = vrev64q_s8(vmulq_s8(v23, a12));
  *(a3 + v20) = veorq_s8(veorq_s8(veorq_s8(*(v14 + v21 - 15), *(a1 + v20)), veorq_s8(*(v12 + v21 - 15), *(v13 + v21 - 15))), vextq_s8(v24, v24, 8uLL));
  return (*(v19 + 8 * (((v18 + a4 - 1723 == v16) * a5) ^ v17)))();
}

uint64_t sub_1968D9300(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, int a8)
{
  v14 = a4 - 8;
  v16.val[0].i64[0] = (v11 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (a5 + v14) & 0xF;
  v16.val[1].i64[0] = (v11 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v11 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v11 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + v14) & 0xF ^ 8;
  *(a6 + v14) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a6 + v14)), veor_s8(*(v10 + v16.val[0].i64[0] + 4 - 7), *(v8 + v16.val[0].i64[0] + 4 - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v13 + 8 * (((v12 == v14) * a8) ^ a7)))();
}

uint64_t sub_1968D9360@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W7>, int a4@<W8>)
{
  LODWORD(STACK[0x598]) = 0;
  v9 = STACK[0x410];
  v10 = LODWORD(STACK[0x410]) + 422198421;
  v11 = a3 + LOBYTE(STACK[0x410]) - 107;
  LODWORD(STACK[0x554]) = a3 + v10;
  v12 = STACK[0x5A0];
  v13 = LODWORD(STACK[0x40C]) - v5 - 1884712451;
  v14 = *(STACK[0x5A0] + ((a3 + v10) >> 12) * v8);
  v15 = (((*(STACK[0x5A0] + (((a3 + v10) >> 24) & 0xF) * v8) << 8) ^ (*(STACK[0x5A0] + ((a3 + v10) >> 28) * v8) << 12) | *(STACK[0x5A0] + (((a3 + v10) >> 16) & 0xF) * v8)) ^ (16 * *(STACK[0x5A0] + (((a3 + v10) >> 20) & 0xF) * v8))) << (((10 - v9) ^ v10) & 8);
  v16 = (HIBYTE(v13) & 0xF) * v8;
  v17 = v15 ^ *(STACK[0x5A0] + (((a3 + v10) >> 8) & 0xF) * v8);
  LODWORD(STACK[0x540]) = v17;
  LODWORD(STACK[0x4EC]) = v15;
  v18 = ((v13 >> 20) & 0xF) * v8;
  v19 = v12[(v11 >> 4) * v8];
  v20 = (HIWORD(v13) & 0xF) * v8;
  v21 = v17 << 8;
  v22 = (v13 >> 12) * v8;
  v23 = ((v13 >> 8) & 0xF) * v8;
  v24 = v21 ^ (v14 << 12);
  v25 = (v13 >> 4) * v8;
  v26 = v12[(v11 & 0xF) * v8];
  v27 = v12[(v13 >> 28) * v8];
  LODWORD(STACK[0x53C]) = v26 & 0xF;
  v28 = v12[(v13 & 0xF) * v8];
  v29 = (v26 & 0xF | (16 * (v28 & 0xF))) * v8;
  v30 = v12[v16];
  v31 = v12[v18];
  LODWORD(v16) = v12[(v29 + 990 - 974 * (((8613 * (v29 + 990)) >> 16) >> 7))];
  LODWORD(v18) = *v12;
  LODWORD(STACK[0x570]) = v18;
  LODWORD(v16) = ((16 * v18) ^ v16) * v8;
  LODWORD(STACK[0x520]) = v16;
  v32 = v12[(v29 + 3894) % (((v29 + 3894) ^ (201 - v29)) & 0x3CEu)] ^ (v12[(v16 + 3894) % 0x3CEu] >> 4);
  LODWORD(v16) = STACK[0x594];
  v33 = (v30 << 8) ^ (v27 << 12);
  LODWORD(STACK[0x538]) = v33;
  LODWORD(v22) = v12[v22];
  v34 = ((v33 | v12[v20]) << 8) ^ (v31 << 12);
  LODWORD(v20) = v12[v23];
  LOBYTE(v23) = v12[v25];
  v35 = v34;
  LODWORD(STACK[0x4F0]) = v34;
  v36 = ((v34 | v20) << 8) ^ (v22 << 12);
  LOBYTE(v20) = v23 ^ ((v36 | v28) >> 4);
  LODWORD(v22) = v19 ^ ((v24 | v26) >> 4);
  LOBYTE(v28) = v19 ^ ((v24 | v26) >> 4);
  LODWORD(STACK[0x534]) = v22;
  v37 = v22 & 0xF | (16 * (v20 & 0xF));
  LOWORD(v22) = v16 + v37 * v8 - 974 * (((8613 * (v16 + v37 * v8)) >> 16) >> 7);
  v38 = ((((-99 - v37) ^ (v37 + 98)) & 0xF9) + 18) * (v37 + 354);
  LODWORD(v22) = (v12[v22] ^ (16 * v12[(v16 + v32 * v8 - 974 * (((8613 * (v16 + v32 * v8)) >> 16) >> 7))])) * v8;
  LODWORD(STACK[0x518]) = v22;
  v39 = v16 + (v12[(v38 - 974 * ((4409618 * v38) >> 32))] ^ (v12[(v22 + 3894) % 0x3CEu] >> 4)) * v8;
  LODWORD(v22) = v20 & 0xF0 | (v28 >> 4);
  v40 = STACK[0x414];
  LODWORD(v20) = LODWORD(STACK[0x414]) - 1861247072;
  LODWORD(STACK[0x568]) = v20;
  LODWORD(v23) = v16 + v22 * v8 - 974 * ((8613 * (v16 + v22 * v8)) >> 23);
  LOWORD(v22) = (((v20 ^ (95 - v40)) & 0x60 | ((v23 & 0x142 ^ 0x142) + (v23 & 0x142)) | 2) + v22) * v8;
  v41 = v12[(v39 - 974 * (((8613 * v39) >> 16) >> 7))];
  LODWORD(STACK[0x564]) = 16 * v18;
  LODWORD(v23) = v12[v23] ^ (16 * v41);
  LODWORD(STACK[0x510]) = v23;
  v42 = v16 + (v12[v22 % 0x3CEu] ^ (v12[(v23 - 1366219074 * ((((16 * v18) & 0xE0 ^ 0x249C70E2) + ((16 * v18) & 0xE0)) | 0x1218254D)) * v8 % 0x3CE] >> 4)) * v8;
  LOWORD(v22) = v42 - 974 * (((8613 * v42) >> 16) >> 7);
  v43 = (v36 >> 8) & 0xF0 | (v24 >> 12);
  LODWORD(v23) = v43 * v8;
  v44 = STACK[0x59C];
  v45 = LODWORD(STACK[0x59C]) + 457900628 + v4;
  v46 = 94743 * v43 + 8526870;
  v47 = v45 + (LODWORD(STACK[0x59C]) ^ 0xF63239A0);
  v48 = a3 - v45;
  v49 = (v12[(v23 - 974 * (v46 >> 23) + 990)] ^ (16 * v12[v22])) * v8;
  LODWORD(STACK[0x4FC]) = v49;
  v50 = v16;
  LODWORD(v22) = v16 + (v12[(v23 + 3894 - 974 * (((8613 * (v23 + 3894)) >> 16) >> 7))] ^ (v12[(v49 + 3894) % 0x3CEu] >> 4)) * v8;
  LODWORD(STACK[0x514]) = v24;
  v51 = (v36 >> 12) & 0xF0 | HIWORD(v24) & 0xF;
  LODWORD(v23) = v12[(v16 + v51 * v8 - 974 * (((8613 * (v16 + v51 * v8)) >> 16) >> 7))];
  v52 = (((v51 + 354) ^ (13 - HIWORD(v24))) & v8) * (v51 + 354);
  v53 = v12[(v52 - 974 * (((8613 * v52) >> 16) >> 7))];
  LODWORD(v22) = (v23 ^ (16 * v12[(v22 - 974 * (((8613 * v22) >> 16) >> 7))])) * v8;
  LODWORD(STACK[0x4E8]) = v22;
  LODWORD(v22) = v12[(v22 + 3894) % 0x3CEu];
  v54 = v48 - v47;
  v55 = v47;
  LODWORD(STACK[0x544]) = v47;
  LODWORD(v23) = (v35 >> 8) & 0xF0 | (v15 >> 12);
  LODWORD(v22) = v12[(v16 + (v53 ^ (v22 >> 4)) * v8 - 974 * (((8613 * (v16 + (v53 ^ (v22 >> 4)) * v8)) >> 16) >> 7))];
  LODWORD(STACK[0x4E0]) = v23 * v8;
  LODWORD(v22) = v12[(v23 * v8 - 974 * ((94743 * v23 + 8526870) >> 23) + 990)] ^ (16 * v22);
  v56 = (HIWORD(v36) & 0x3CE ^ 0x3CE) + (HIWORD(v36) & 0x3CE);
  v57 = LODWORD(STACK[0x3F4]) + 585047407 + v48 - v47;
  v58 = v54;
  LODWORD(STACK[0x488]) = v54;
  LODWORD(STACK[0x524]) = v57;
  v59 = v12[(v57 >> 12) * v8];
  v60 = v12[((v57 >> 8) & 0xF) * v8];
  v61 = (((v12[(HIBYTE(v57) & 0xF) * v8] << 8) ^ (v12[(v57 >> 28) * v8] << 12) | v12[(HIWORD(v57) & 0xF) * v8]) << 8) ^ (v12[((v57 >> 20) & 0xF) * v8] << 12);
  LODWORD(STACK[0x500]) = v61;
  LODWORD(v23) = v12[(v57 >> 4) * v8];
  v62 = v12[(v57 & 0xF) * v8];
  LODWORD(STACK[0x50C]) = v61 | v60;
  v63 = (v61 | v60) << 8;
  LODWORD(STACK[0x4F4]) = v63;
  v64 = v63 ^ (v59 << 12);
  LODWORD(STACK[0x4DC]) = v64;
  v65 = (v64 | v62) ^ (16 * v23);
  v66 = (v7 ^ 0xF63239A0) + v7 + a1;
  LODWORD(STACK[0x528]) = v66;
  v67 = a2 - a1 - v66;
  LODWORD(v23) = LODWORD(STACK[0x408]) - v67 - 528918048;
  LODWORD(v25) = (v12[(BYTE3(v23) & 0xF) * v8] << 8) ^ (v12[(v23 >> 28) * v8] << 12);
  LODWORD(STACK[0x4F8]) = v25;
  v68 = v12[(v23 & 0xF) * v8];
  v69 = v62 & 0xF;
  v70 = v69 & 0xFFFFFF0F | (16 * (v68 & 0xF));
  v71 = v70 * v8;
  LODWORD(v25) = ((v25 | v12[(WORD1(v23) & 0xF) * v8]) << 8) ^ (v12[((v23 >> 20) & 0xF) * v8] << 12);
  LODWORD(STACK[0x4D0]) = v25;
  LODWORD(v16) = v12[((v23 >> 8) & 0xF) * v8] ^ (16 * v12[(BYTE1(v23) >> (((((BYTE2(v23) & 0xF) * v8) | 0x3E) - (((BYTE2(v23) & 0xF) * v8) & 0xC1)) & 0x84)) * v8]);
  LODWORD(STACK[0x4C8]) = v16;
  LOWORD(v59) = (v12[(v70 * v8 - 974 * ((94743 * v70 + 8526870) >> 23) + 990)] ^ (16 * v18)) * v8;
  LOWORD(v70) = (v59 + 990) % 0x3CEu;
  v72 = v12[(v71 + 3894 - 974 * (((8613 * (v71 + 3894)) >> 16) >> 7))] ^ (v12[(v59 + 3894) % 0x3CEu] >> 4);
  LODWORD(v23) = v12[(v23 >> 4) * v8];
  LODWORD(v25) = v25 ^ v16;
  LODWORD(STACK[0x4CC]) = v25;
  LODWORD(v25) = v23 ^ ((v68 | (v25 << 8)) >> 4);
  LODWORD(STACK[0x4C0]) = v25;
  LODWORD(v23) = v12[(v50 + v72 * v8 - 974 * (((8613 * (v50 + v72 * v8)) >> 16) >> 7))];
  LODWORD(STACK[0x4A4]) = v65;
  v73 = (v65 >> 4) | (16 * (v25 & 0xF));
  LODWORD(STACK[0x4B8]) = v73 * v8;
  LODWORD(v20) = (v12[(v73 * v8 - 974 * ((94743 * v73 + 8526870) >> 23) + 990)] ^ (16 * v23)) * v8;
  LODWORD(STACK[0x4B4]) = v20;
  LOBYTE(v73) = v12[v70];
  LODWORD(v23) = (v69 & 0xFFFFFF0F | (16 * (v73 & 0xF))) * v8 + 7788;
  LODWORD(v20) = v12[(v20 + 990) % 0x3CEu];
  LODWORD(STACK[0x4B0]) = v20;
  v74 = ((v73 ^ (16 * v20)) & 0xF0 | (v65 >> 4)) * v8 + 7788;
  LODWORD(STACK[0x490]) = v22 * v8;
  v75 = v12[(v23 - 974 * (((8613 * v23) >> 16) >> 7))];
  LODWORD(STACK[0x4BC]) = v75;
  LODWORD(v23) = v12[(v74 - 974 * (((8613 * v74) >> 16) >> 7))];
  LODWORD(STACK[0x48C]) = (v22 * v8 - v56 + 3894) % v56;
  v76 = v75 ^ (16 * v23);
  LODWORD(STACK[0x4A8]) = v76;
  LODWORD(STACK[0x56C]) = v6;
  LODWORD(STACK[0x4AC]) = ((v76 >> 4) * v8 + 7590) % (((601 - (v76 >> 4) * v8) ^ ((v76 >> 4) * v8 + 7590)) & 0x3CE);
  v77 = ((v58 ^ v55 ^ 0xA3426765) + 1898953318) ^ ((v58 ^ v55 ^ 0x9B1757C3) + 1232767684) ^ ((v58 ^ v55 ^ 0x15C71259) - 945107110);
  LODWORD(STACK[0x4A0]) = v77;
  v78 = LODWORD(STACK[0x3F8]) - 345960918 + v77;
  v79 = v67;
  v80 = ((v67 ^ v66 ^ 0xF27109E3) + 538760420) ^ ((v67 ^ v66 ^ 0x15D3C828) - 943844055) ^ ((v67 ^ v66 ^ 0xCA30E334) + 408763957);
  v81 = (((v12[(HIBYTE(v78) & 0xF) * v8] << 8) ^ (v12[(v78 >> 28) * v8] << 12) | v12[(HIWORD(v78) & 0xF) * v8]) << 8) ^ (v12[((v78 >> 20) & 0xF) * v8] << 12);
  LODWORD(v23) = v12[(v78 >> 12) * v8];
  LODWORD(v20) = v81 | v12[((v8 & (v78 >> 8) ^ v8) + (v8 & (v78 >> 8))) * ((v78 >> 8) & 0xF)];
  LODWORD(STACK[0x498]) = v20;
  v82 = (v20 << 8) ^ (v23 << 12);
  LODWORD(v20) = LODWORD(STACK[0x568]) - v80;
  v83 = (v12[(BYTE3(v20) & 0xF) * v8] << 8) ^ (v12[(v20 >> 28) * v8] << 12);
  LODWORD(STACK[0x568]) = v83;
  LODWORD(v16) = ((v83 | v12[(WORD1(v20) & 0xF) * v8]) << 8) ^ (v12[((v20 >> 20) & 0xF) * v8] << 12);
  v84 = ((v16 | v12[((v20 >> 8) & 0xF) * v8]) << 8) ^ (v12[(v20 >> 12) * v8] << 12);
  LODWORD(v23) = (v84 >> 8) & 0xC0 | (v82 >> 12) & 0xCE;
  v85 = ((v84 >> 8) & 0xF0 | (v82 >> 12)) * v8;
  v86 = (v85 + 990) % ((v23 ^ 0x3CE) + v23);
  LODWORD(STACK[0x49C]) = v78;
  LODWORD(v22) = v12[(v78 & 0xF) * v8];
  LODWORD(v23) = v12[(v20 & 0xF) * v8];
  LODWORD(v18) = v22 & 0xF;
  v87 = v18 | (16 * (v23 & 0xF));
  v88 = v87 * v8;
  LODWORD(v25) = v7;
  LODWORD(STACK[0x588]) = v7;
  v89 = 11 * (v12[(v87 * v8 - 974 * ((94743 * v87 + 8526870) >> 23) + 990)] ^ (LODWORD(STACK[0x570]) << ((STACK[0x570] & 4 ^ 4) + (STACK[0x570] & 4))));
  v90 = (v89 + 990) % 0x3CEu;
  v91 = v50 + 11 * (v12[(v88 + 3894 - 974 * (((8613 * (v88 + 3894)) >> 16) >> 7))] ^ (v12[(v89 + 3894) % 0x3CEu] >> 4));
  v92 = v12[11 * (v78 >> 4)] ^ ((v82 | v22) >> 4);
  LOBYTE(v20) = v12[11 * (v20 >> 4)] ^ ((v84 | v23) >> 4);
  LODWORD(v22) = v92 & 0xF | (16 * (v20 & 0xF));
  v93 = 11 * v22 + 3894 - 974 * (((8613 * (11 * v22 + 3894)) >> 16) >> 7);
  LOWORD(v22) = 11 * (v12[(11 * v22 - 974 * ((94743 * v22 + 8526870) >> 23) + 990)] ^ (16 * v12[(v91 - 974 * (((8613 * v91) >> 16) >> 7))]));
  LOWORD(v23) = (v22 + 990) % 0x3CEu;
  LODWORD(v22) = v12[v93] ^ (v12[(v22 + 3894) % 0x3CEu] >> 4);
  LODWORD(v22) = (29 * (((37 - v22) | (v22 + 90)) & 0x47)) * (v22 + 90);
  v94 = v6 ^ v25 ^ v79;
  LODWORD(v20) = v20 & 0xF0 | (v92 >> 4);
  LODWORD(v25) = 11 * v20;
  LOWORD(v20) = 11 * (v12[(11 * v20 - 974 * ((94743 * v20 + 8526870) >> 23) + 990)] ^ (16 * v12[(v22 - 974 * ((4409618 * v22) >> 32))]));
  v95 = (v20 + 990) % 0x3CEu;
  v96 = (v94 ^ LODWORD(STACK[0x334])) - 175321445;
  LODWORD(STACK[0x548]) = v94;
  LODWORD(v20) = v50 + 11 * (v12[(v25 + 3894 - 974 * (((8613 * (v25 + 3894)) >> 16) >> 7))] ^ (v12[(v20 + 3894) % 0x3CEu] >> 4));
  LODWORD(v25) = v80 - (v96 ^ ((v94 ^ 0xF9B6DE87) + 1093347856) ^ ((v94 ^ 0xB4A7E495) + 205131806));
  LOWORD(v20) = 11 * (v12[v86] ^ (16 * v12[(v20 - 974 * (((8613 * v20) >> 16) >> 7))]));
  LOWORD(v86) = (v20 + 990) % 0x3CEu;
  LODWORD(v25) = (((v25 - 1197607799) ^ 0xF2FA3D02) - 1245440503) ^ (((v25 - 1197607799) ^ 0x9E04571D) - 650478568) ^ (((v25 - 1197607799) ^ 0xF223CB4D) - 1256333240);
  LODWORD(v20) = v50 + 11 * (v12[(v85 + 3894 - 974 * (((8613 * (v85 + 3894)) >> 16) >> 7))] ^ (v12[(v20 + 3894) % 0x3CEu] >> 4));
  v97 = a4 + 1871753626;
  LODWORD(STACK[0x480]) = v97;
  v98 = v97 ^ v44 ^ LODWORD(STACK[0x488]);
  v99 = (v84 >> 12) & 0xF0 | HIWORD(v82) & 0xF;
  v100 = 11 * v99;
  LOWORD(v20) = 11 * (v12[(11 * v99 - 974 * ((94743 * v99 + 8526870) >> 23) + 990)] ^ (16 * v12[(v20 - 974 * (((8613 * v20) >> 16) >> 7))]));
  LOWORD(v99) = (v20 + 990) % 0x3CEu;
  v101 = v50 + 11 * (v12[(v100 + 3894 - 974 * (((8613 * (v100 + 3894)) >> 16) >> 7))] ^ (v12[(v20 + 3894) % 0x3CEu] >> 4));
  LOWORD(v20) = v101 - 974 * (((8613 * v101) >> 16) >> 7);
  v102 = v12[v90] ^ (16 * v12[v23]) ^ (v12[v95] << ((v12[v95] & 8 ^ 8) + (v12[v95] & 8)));
  LODWORD(v23) = (v16 >> 8) & 0xF0 | (v81 >> 12);
  LOWORD(v96) = 11 * v23 + 3894 - 974 * (((8613 * (11 * v23 + 3894)) >> 16) >> 7);
  LOWORD(v20) = 11 * (v12[(11 * v23 - 974 * ((94743 * v23 + 8526870) >> 23) + 990)] ^ (16 * v12[v20]));
  LOWORD(v23) = (v20 + 990) % 0x3CEu;
  LODWORD(v20) = v50 + 11 * (v12[v96] ^ (v12[(v20 + 3894) % 0x3CEu] >> 4));
  v103 = (v16 >> 12) & 0xF0 | HIWORD(v81) & 0xF;
  LOWORD(v20) = 11 * (v12[(11 * v103 - 974 * ((94743 * v103 + 8526870) >> 23) + 990)] ^ (16 * v12[(v20 - 974 * (((8613 * v20) >> 16) >> 7))]));
  v104 = v50;
  v105 = v50 + 11 * (v12[(11 * v103 + 3894 - 974 * (((8613 * (11 * v103 + 3894)) >> 16) >> 7))] ^ (v12[(v20 + 3894) % 0x3CEu] >> 4));
  v106 = v50 + 11 * ((LODWORD(STACK[0x568]) >> 8) & 0xF0 | (LODWORD(STACK[0x498]) >> 20) & 0xF);
  LOWORD(v84) = (v20 + 990) % 0x3CEu;
  LOWORD(v20) = v50 + 11 * (v12[(v106 - 974 * (((8613 * v106) >> 16) >> 7))] ^ (16 * v12[(v105 - 974 * (((8613 * v105) >> 16) >> 7))]));
  v107 = 11 * (v18 & 0xFFFFFF0F | (16 * (v102 & 0xF))) + 7788;
  LOWORD(v106) = v107 - 974 * (((8613 * v107) >> 16) >> 7);
  v108 = 11 * (v102 & 0xF0 | v92 & 0xF) + 7788;
  LOWORD(v16) = v108 - 974 * (((8613 * v108) >> 16) >> 7);
  v109 = v102 ^ (v12[v86] << 12);
  v110 = 11 * ((v102 >> 4) & 0xF0 | (v92 >> 4)) + 7788;
  LODWORD(v18) = v12[v23];
  v111 = v109 ^ (v12[v99] << 16);
  LODWORD(v23) = 11 * ((v109 >> 8) & 0xF0 | (v82 >> 12)) + 7788;
  v112 = v111 ^ (v18 << 20);
  v113 = 11 * ((v111 >> 12) & 0xF0 | HIWORD(v82) & 0xF) + 7788;
  LOWORD(v82) = v113 - 974 * (((8613 * v113) >> 16) >> 7);
  v114 = v112 ^ (v12[v84] << 24);
  v115 = 11 * (HIWORD(v112) & 0xF0 | (v81 >> 12)) + 7788;
  LODWORD(v20) = v114 ^ (v12[v20 % 0x3CEu] << 28);
  v116 = 11 * ((v114 >> 20) & 0xF0 | HIWORD(v81) & 0xF) + 7788;
  LOWORD(v74) = v116 - 974 * (((8613 * v116) >> 16) >> 7);
  v117 = 11 * (BYTE3(v20) & 0xF0 | (LODWORD(STACK[0x498]) >> 20) & 0xF) + 7788;
  LOWORD(v20) = v117 - 974 * (((8613 * v117) >> 16) >> 7);
  v118 = v12[v106];
  LODWORD(v22) = v118 ^ (16 * v12[v16]);
  LODWORD(STACK[0x488]) = v22;
  v119 = v22 ^ (v12[(v110 - 974 * (((8613 * v110) >> 16) >> 7))] << 8);
  LODWORD(v22) = v119 ^ (v12[(v23 - 974 * (((8613 * v23) >> 16) >> 7))] << 12);
  LODWORD(STACK[0x484]) = v22;
  LODWORD(v23) = v22 ^ (v12[v82] << 16);
  v120 = v23 ^ (v12[(v115 - 974 * (((8613 * v115) >> 16) >> 7))] << 20);
  LODWORD(v20) = v120 ^ (v12[v74] << 24) ^ (v12[v20] << 28);
  v121 = 11 * (BYTE3(v20) >> ((BYTE3(v20) & 4 ^ 4) + (BYTE3(v20) & 4))) + 7590;
  v122 = (((v12[(11 * (BYTE3(v20) & 0xF) + 7590 - 974 * (((8613 * (11 * (BYTE3(v20) & 0xF) + 7590)) >> 16) >> 7))] << 8) ^ (v12[(v121 - 974 * (((8613 * v121) >> 16) >> 7))] << 12) | v12[(11 * (BYTE2(v23) & 0xF) + 7590 - 974 * (((8613 * (11 * (WORD1(v23) & 0xF) + 7590)) >> 16) >> 7))]) << 8) ^ (v12[(11 * ((v120 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v120 >> 20) & 0xF) + 7590)) >> 16) >> 7))] << 12) | v12[(11 * ((v119 >> 8) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v119 >> 8) & 0xF) + 7590)) >> 16) >> 7))];
  LODWORD(STACK[0x44C]) = v122;
  v123 = 11 * (v118 & 0xF) + 7590 - 974 * ((8613 * (11 * (v118 & 0xFu) + 7590)) >> 23);
  STACK[0x470] = v123;
  v124 = ((v123 & 0x173 ^ 0xEDDB173) + (v123 & 0x173)) & 0x8000352 ^ (LODWORD(STACK[0x4A0]) - (((v98 ^ 0x1B922887) + 385886173) ^ ((v98 ^ 0x2C33A07F) + 547467045) ^ ((v98 ^ 0x37A188F8) + 993232804)) + 210898780);
  LODWORD(v18) = ((v124 ^ 0x5B937C0E) - 2041918025) ^ ((v124 ^ 0xD774B267) + 179110880) ^ ((v124 ^ 0x1A3A6E69) - 941367342);
  LODWORD(v22) = LODWORD(STACK[0x428]) - 1847646894 + v18 - 1236503627;
  LODWORD(v23) = v12[11 * ((LOWORD(STACK[0x428]) + 9554 + v18 + 29621) >> 12)];
  v125 = (((v12[11 * (BYTE3(v22) & 0xF)] << 8) ^ (v12[11 * (v22 >> 28)] << 12) | v12[11 * (WORD1(v22) & 0xF)]) << 8) ^ (v12[11 * ((v22 >> 20) & 0xF)] << 12);
  LODWORD(STACK[0x47C]) = v22;
  v126 = v125 | v12[11 * ((v22 >> 8) & 0xF)];
  LODWORD(STACK[0x468]) = v126;
  v127 = (v126 << 8) ^ (v23 << 12);
  LODWORD(v23) = v12[11 * (v22 & 0xF)];
  v128 = (v127 | v23) ^ (16 * v12[11 * (v22 >> 4)]);
  v129 = LODWORD(STACK[0x400]) - v25 - 2111663444;
  LODWORD(v22) = (v12[11 * (HIBYTE(v129) & 0xF)] << 8) ^ (v12[11 * (v129 >> 28)] << 12);
  LODWORD(STACK[0x460]) = v22;
  v130 = ((v22 | v12[11 * (HIWORD(v129) & 0xF)]) << 8) ^ (v12[11 * ((v129 >> 20) & 0xF)] << 12);
  v131 = ((v130 | v12[11 * ((v129 >> 8) & 0xF)]) << 8) ^ (v12[11 * (v129 >> 12)] << 12);
  v132 = v23 & 0xF;
  LODWORD(v23) = v12[11 * (v129 & 0xF)];
  v133 = v132 & 0xFFFFFF0F | (16 * (v23 & 0xF));
  LOBYTE(v23) = v12[11 * (v129 >> 4)] ^ ((v131 | v23) >> 4);
  v134 = 11 * (v12[(11 * v133 - 974 * ((94743 * v133 + 8526870) >> 23) + 990)] ^ LODWORD(STACK[0x564]));
  v135 = v50 + 11 * (v12[(11 * v133 + 3894 - 974 * (((8613 * (11 * v133 + 3894)) >> 16) >> 7))] ^ (v12[(v134 + 3894) % 0x3CEu] >> 4));
  v136 = (v128 >> 4) | (16 * (v23 & 0xF));
  LOWORD(v86) = 11 * (v12[(11 * v136 - 974 * ((94743 * v136 + 8526870) >> 23) + 990)] ^ (16 * v12[(v135 - 974 * (((8613 * v135) >> 16) >> 7))]));
  v137 = (v50 + 11 * (v12[(11 * v136 + 3894 - 974 * (((8613 * (11 * v136 + 3894)) >> 16) >> 7))] ^ (v12[(v86 + 3894) % 0x3CEu] >> 4))) % ((v122 & 0x3CE ^ 0x3CE) + (v122 & 0x3CEu));
  LOWORD(v136) = (v134 + 990) % 0x3CEu;
  LOWORD(v84) = (v86 + 990) % 0x3CEu;
  v138 = LODWORD(STACK[0x528]) - LODWORD(STACK[0x548]);
  v139 = ((LODWORD(STACK[0x588]) ^ 0x22F240D6) - v138) ^ 0xAF7DDEC0;
  v140 = v139 ^ v138;
  v141 = v25 + (((LODWORD(STACK[0x548]) ^ 0xA8FCA900) + 274816393) ^ ((LODWORD(STACK[0x548]) ^ 0x29F19373) - 1855166468) ^ ((LODWORD(STACK[0x548]) ^ 0x810D3A73) + 965791484));
  LODWORD(STACK[0x450]) = v141;
  v142 = v140 + v25;
  LODWORD(STACK[0x46C]) = v140 + v25;
  v143 = v139 - v140;
  LODWORD(v25) = v139 - 418125654 - v143;
  LODWORD(STACK[0x45C]) = v142 + 639399335;
  LODWORD(STACK[0x568]) = v142 + 221273681;
  v144 = v25 ^ (v142 + 221273681 - v143);
  v145 = v141 - 1080397264;
  v146 = v25 - (v141 - 1080397264);
  LODWORD(STACK[0x588]) = v146;
  LODWORD(STACK[0x368]) = v141 - 1080397264;
  v146 ^= 0x6611E539u;
  LODWORD(STACK[0x528]) = v146;
  LODWORD(STACK[0x498]) = v144 ^ v146 ^ 0x90BB8406;
  v147 = v98;
  LODWORD(STACK[0x3C4]) = v98;
  v148 = (((v98 ^ 0x227520D1) + 786902923) ^ ((v98 ^ 0xD8703A2F) - 723372683) ^ ((v98 ^ 0xFA051AFE) - 157870682)) + v18 - 1236503627;
  LODWORD(STACK[0x360]) = v148;
  LODWORD(v23) = v23 & 0xF0 | (v128 >> 8) & 0xF;
  LODWORD(v25) = 11 * v23;
  LOWORD(v23) = 11 * (v12[(11 * v23 - 974 * ((94743 * v23 + 8526870) >> 23) + 990)] ^ (16 * v12[v137]));
  LOWORD(v139) = (v23 + 990) % 0x3CEu;
  LODWORD(v23) = v104 + 11 * (v12[(v25 + 3894 - 974 * (((8613 * (v25 + 3894)) >> 16) >> 7))] ^ (v12[(v23 + 3894) % 0x3CEu] >> 4));
  LODWORD(v25) = LODWORD(STACK[0x544]) - v147;
  v149 = ((LODWORD(STACK[0x59C]) ^ 0x22F240D6) - v25) ^ 0xAF7DDEC0;
  LODWORD(v16) = v149 ^ v25;
  v150 = (v149 ^ v25) - 1676683535 + v18;
  LODWORD(v25) = (v131 >> 8) & 0xF0 | (v127 >> 12);
  LOWORD(v23) = 11 * (v12[(11 * v25 - 974 * ((94743 * v25 + 8526870) >> 23) + 990)] ^ (16 * v12[(v23 - 974 * (((8613 * v23) >> 16) >> 7))]));
  LOWORD(v18) = (v23 + 990) % 0x3CEu;
  LODWORD(v23) = v104 + 11 * (v12[(11 * v25 + 3894 - 974 * (((8613 * (11 * v25 + 3894)) >> 16) >> 7))] ^ (v12[(v23 + 3894) % 0x3CEu] >> 4));
  LODWORD(v25) = (v131 >> 12) & 0xF0 | HIWORD(v127) & 0xF;
  LOWORD(v23) = 11 * (v12[(11 * v25 - 974 * ((94743 * v25 + 8526870) >> 23) + 990)] ^ (16 * v12[(v23 - 974 * (((8613 * v23) >> 16) >> 7))]));
  LODWORD(v25) = v104 + 11 * (v12[(11 * v25 + 3894 - 974 * (((8613 * (11 * v25 + 3894)) >> 16) >> 7))] ^ (v12[(v23 + 3894) % 0x3CEu] >> 4));
  v151 = (v130 >> 8) & 0xF0 | (v125 >> 12);
  LOWORD(v25) = 11 * (v12[(11 * v151 - 974 * ((94743 * v151 + 8526870) >> 23) + 990)] ^ (16 * v12[(v25 - 974 * (((8613 * v25) >> 16) >> 7))]));
  LOWORD(v131) = (v23 + 990) % 0x3CEu;
  LODWORD(v23) = v104 + 11 * (v12[(11 * v151 + 3894 - 974 * (((8613 * (11 * v151 + 3894)) >> 16) >> 7))] ^ (v12[(v25 + 3894) % 0x3CEu] >> 4));
  v152 = (v130 >> 12) & 0xF0 | HIWORD(v125) & 0xF;
  v153 = v12[(v23 - 974 * (((8613 * v23) >> 16) >> 7))];
  LODWORD(STACK[0x59C]) = 11 * v152;
  LOWORD(v23) = (v25 + 990) % 0x3CEu;
  LODWORD(v20) = 11 * (v12[(11 * v152 - 974 * ((94743 * v152 + 8526870) >> 23) + 990)] ^ (16 * v153));
  LODWORD(STACK[0x3C0]) = v20;
  LOBYTE(v151) = v12[v136];
  LOBYTE(v136) = v12[v84];
  LODWORD(v25) = 11 * (v132 & 0xFFFFFF0F | (16 * (v151 & 0xF))) + 7788;
  LOWORD(v153) = v25 - 974 * (((8613 * v25) >> 16) >> 7);
  v154 = 11 * ((v151 ^ (16 * v136)) & 0xF0 | (v128 >> 4)) + 7788;
  LOBYTE(v132) = v12[v139];
  v155 = 11 * ((v136 ^ (16 * v132)) & 0xF0 | (v128 >> 8) & 0xF) + 7788;
  LOWORD(v136) = v155 - 974 * (((8613 * v155) >> 16) >> 7);
  LOBYTE(v155) = v12[v18];
  LOBYTE(v139) = v12[v131];
  v156 = 11 * ((v132 ^ (16 * v155)) & 0xF0 | (v127 >> 12)) + 7788;
  LOWORD(v131) = v156 - 974 * (((8613 * v156) >> 16) >> 7);
  v157 = 11 * ((v155 ^ (16 * v139)) & 0xF0 | HIWORD(v127) & 0xF) + 7788;
  LOBYTE(v23) = v12[v23];
  v158 = 11 * ((v139 ^ (16 * v23)) & 0xF0 | (v125 >> 12)) + 7788;
  LODWORD(v20) = v12[(v20 + 990) % 0x3CEu];
  LODWORD(STACK[0x3B4]) = v20;
  LODWORD(v23) = 11 * ((v23 ^ (16 * v20)) & 0xF0 | HIWORD(v125) & 0xF) + 7788;
  LOWORD(v152) = v23 - 974 * (((8613 * v23) >> 16) >> 7);
  LODWORD(v123) = (v12[(v158 - 974 * (((8613 * v158) >> 16) >> 7))] << 20) ^ (v12[(v157 - 974 * (((8613 * v157) >> 16) >> 7))] << 16);
  LODWORD(v22) = v150;
  LODWORD(STACK[0x35C]) = v150;
  v159 = v150 + v16 - v149;
  LODWORD(STACK[0x364]) = v159;
  LODWORD(STACK[0x544]) = v148 + 1144609864;
  LODWORD(v23) = v159 ^ (v16 - 418125654);
  v160 = v16 - 418125654 - (v148 + 1144609864);
  LODWORD(STACK[0x3C8]) = v160;
  v161 = v23 ^ v160;
  LODWORD(STACK[0x448]) = v161;
  v162 = ((v161 ^ v22 ^ 0x24358318) - 206543390) ^ ((v161 ^ v22 ^ 0x6E21715A) - 1180395612) ^ ((v161 ^ v22 ^ 0x626EEB44) - 1242886722);
  LODWORD(STACK[0x3CC]) = v162;
  LODWORD(v22) = LODWORD(STACK[0x41C]) - 351101056 + v162;
  LODWORD(STACK[0x4A0]) = v22;
  v163 = v12[11 * (v22 >> 12)];
  v164 = (((v12[11 * (BYTE3(v22) & 0xF)] << 8) ^ (v12[11 * (v22 >> 28)] << 12) | v12[11 * (WORD1(v22) & 0xF)]) << 8) ^ (v12[11 * ((v22 >> 20) & 0xF)] << 12);
  LODWORD(STACK[0x3AC]) = v164;
  v165 = v164 | v12[11 * ((v22 >> 8) & 0xF)];
  LODWORD(STACK[0x3B8]) = v165;
  LODWORD(v20) = v165 << 8;
  v166 = (v165 << 8) ^ (v163 << 12);
  LODWORD(STACK[0x3A4]) = v166;
  v167 = v20;
  LODWORD(STACK[0x398]) = v20;
  v168 = v12[11 * (v22 & 0xF)];
  v169 = (v166 | v168) ^ (16 * v12[11 * (v22 >> 4)]);
  LODWORD(v23) = (STACK[0x570] & 0xB ^ 0xB) + (STACK[0x570] & 0xB);
  v170 = __ROR4__(__ROR4__(STACK[0x498], 26) ^ 0x3246D62, 6);
  LODWORD(STACK[0x498]) = v170 ^ 0x880C91B5;
  LODWORD(v20) = LODWORD(STACK[0x568]) ^ 0xDED07839 ^ v170 ^ 0x880C91B5;
  LODWORD(STACK[0x3D0]) = v20;
  v171 = LODWORD(STACK[0x430]) - v20 + 1258760733;
  LODWORD(v22) = v168 & 0xF;
  LODWORD(STACK[0x3BC]) = v22;
  LOBYTE(v168) = v12[11 * (v171 & 0xF)];
  v172 = v22 & 0xFFFFFF0F | (16 * (v168 & 0xF));
  LOWORD(v23) = (v172 + 90) * v23 - 974 * (((8613 * (v172 + 90) * v23) >> 16) >> 7);
  LODWORD(v25) = STACK[0x560];
  LOWORD(v172) = LOWORD(STACK[0x560]) + 11 * v172 - 974 * (((8613 * (LODWORD(STACK[0x560]) + 11 * v172)) >> 16) >> 7);
  LODWORD(v20) = 11 * (v12[v23] ^ LODWORD(STACK[0x564]));
  LODWORD(STACK[0x394]) = v20;
  v173 = v104 + 11 * (v12[v172] ^ (v12[(v20 + 3894) % 0x3CEu] >> 4));
  LOWORD(v23) = v173 - 974 * (((8613 * v173) >> 16) >> 7);
  LOBYTE(v173) = v12[11 * (v171 >> 4)];
  LODWORD(STACK[0x3A8]) = v169;
  v174 = (v168 ^ (16 * v173)) & 0xF0 | (v169 >> 4);
  LODWORD(v23) = v12[(11 * v174 - 974 * ((94743 * v174 + 8526870) >> 23) + 990)] ^ (16 * v12[v23]);
  LODWORD(STACK[0x390]) = 11 * v23;
  v175 = v12[v153];
  v176 = v175 ^ (16 * v12[(v154 - 974 * (((8613 * v154) >> 16) >> 7))]);
  v177 = v176 ^ (v12[v136] << 8);
  v178 = v177 ^ (v12[v131] << 12);
  v179 = v123 ^ v178;
  v180 = v123 ^ v178 ^ (*(STACK[0x5A0] + v152) << 24);
  v181 = *(STACK[0x5A0] + (11 * v174 + 3894 - 974 * (((8613 * (11 * v174 + 3894)) >> 16) >> 7)));
  LODWORD(v16) = *(STACK[0x5A0] + (11 * v23 + 3894) % 0x3CEu);
  LODWORD(STACK[0x358]) = (11 * (HIBYTE(v180) & 0xF) + 7590) % (((601 - 11 * (HIBYTE(v180) & 0xF)) ^ (11 * (HIBYTE(v180) & 0xF) + 7590)) & 0x3CE);
  LODWORD(v20) = *(STACK[0x5A0] + 11 * ((v171 >> 8) & 0xF));
  LODWORD(STACK[0x380]) = v20;
  LODWORD(v123) = *(STACK[0x5A0] + (v104 + 11 * (v181 ^ (v16 >> 4)) - 974 * (((8613 * (v104 + 11 * (v181 ^ (v16 >> 4)))) >> 16) >> 7)));
  v182 = (v173 ^ (16 * v20)) & 0xF0 | (v169 >> 8) & 0xF;
  LODWORD(STACK[0x37C]) = 11 * v182;
  v183 = *(STACK[0x5A0] + (11 * v182 - 974 * ((94743 * v182 + 8526870) >> 23) + 990)) ^ (16 * v123);
  LODWORD(v123) = *(STACK[0x5A0] + 11 * (v171 >> 28));
  LODWORD(STACK[0x378]) = 11 * v183;
  LODWORD(STACK[0x38C]) = (11 * v183 + 990) % (((33 - 11 * v183) ^ (11 * v183 + 990)) & 0x3CEu);
  LODWORD(v22) = (*(STACK[0x5A0] + 11 * (HIBYTE(v171) & 0xF)) << 8) ^ (v123 << 12);
  LODWORD(STACK[0x3A0]) = v22;
  v184 = ((v22 | *(STACK[0x5A0] + 11 * (HIWORD(v171) & 0xF))) << 8) ^ (*(STACK[0x5A0] + 11 * ((v171 >> 20) & 0xF)) << 12);
  LODWORD(STACK[0x36C]) = v184;
  LODWORD(v20) = 11 * ((v184 >> 12) & 0xF0 | HIBYTE(v167) & 0xF);
  LODWORD(STACK[0x370]) = v20;
  LODWORD(STACK[0x374]) = (v20 + 3894) % (((201 - v20) | (v20 + 3894)) & 0x3CEu);
  LODWORD(STACK[0x3B0]) = (v145 ^ 0xE8D2C120) - LODWORD(STACK[0x588]);
  v185 = (*(STACK[0x5A0] + (LOWORD(STACK[0x4FC]) + 990) % 0x3CEu) << 12) ^ (*(STACK[0x5A0] + (v104 + 11 * LOWORD(STACK[0x510])) % 0x3CEu) << 8);
  v186 = v104 + 11 * (*(STACK[0x5A0] + (LOWORD(STACK[0x4E0]) + 3894 - 974 * (((8613 * (LODWORD(STACK[0x4E0]) + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + LODWORD(STACK[0x48C])) >> 4));
  v187 = v104;
  v188 = (LODWORD(STACK[0x4F0]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x4EC])) & 0xF;
  v189 = 16 * *(STACK[0x5A0] + (v186 - 974 * (((8613 * v186) >> 16) >> 7)));
  v190 = *(STACK[0x5A0] + (11 * v188 - 974 * ((94743 * v188 + 8526870) >> 23) + 990));
  v191 = 11 * ((v190 ^ -v190 ^ (v189 - (v189 ^ v190))) + v189);
  v192 = v104 + 11 * (*(STACK[0x5A0] + (11 * v188 + 3894 - 974 * (((8613 * (11 * v188 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v191 + 3894) % 0x3CEu) >> 4));
  v193 = v104 + 11 * ((LODWORD(STACK[0x538]) >> 8) & 0xF0 | (LODWORD(STACK[0x540]) >> 20) & 0xF);
  LOWORD(v192) = *(STACK[0x5A0] + (v193 - 974 * (((8613 * v193) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v192 - 974 * (((8613 * v192) >> 16) >> 7))));
  v194 = *(STACK[0x5A0] + (LOWORD(STACK[0x520]) + 990) % 0x3CEu);
  LOWORD(v188) = (v104 + 11 * v192) % 0x3CEu;
  v195 = v194 ^ (16 * *(STACK[0x5A0] + (LOWORD(STACK[0x518]) + 990) % 0x3CEu));
  LODWORD(v123) = 11 * (STACK[0x53C] & 0xFFFFFF0F | (16 * (v194 & 0xF))) + 7788;
  v196 = 11 * (v195 & 0xF0 | STACK[0x534] & 0xF) + 7788;
  LOWORD(v104) = v196 - 974 * (((8613 * v196) >> 16) >> 7);
  v197 = v185 ^ v195;
  LODWORD(v20) = v197 ^ (*(STACK[0x5A0] + (LOWORD(STACK[0x4E8]) + 990) % 0x3CEu) << 16);
  v198 = 11 * ((v197 >> 4) & 0xF0 | (LODWORD(STACK[0x534]) >> 4)) + 7788;
  v199 = 11 * ((v185 >> 8) & 0xF0 | (LODWORD(STACK[0x514]) >> 12)) + 7788;
  v200 = (*(STACK[0x5A0] + (v199 - 974 * (((8613 * v199) >> 16) >> 7))) << 12) ^ (*(STACK[0x5A0] + (v198 - 974 * (((8613 * v198) >> 16) >> 7))) << 8);
  v201 = v20 ^ (*(STACK[0x5A0] + (LOWORD(STACK[0x490]) + 990) % 0x3CEu) << 20);
  LODWORD(v20) = 11 * ((v20 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x514])) & 0xF) + 7788;
  v202 = v201 ^ (*(STACK[0x5A0] + (v191 + 990) % 0x3CEu) << 24);
  v203 = v202 ^ (*(STACK[0x5A0] + v188) << 28);
  v204 = 11 * (HIWORD(v201) & 0xF0 | (LODWORD(STACK[0x4EC]) >> 12)) + 7788;
  v205 = 11 * ((v202 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x4EC])) & 0xF) + 7788;
  LODWORD(v123) = *(STACK[0x5A0] + (v123 - 974 * (((8613 * v123) >> 16) >> 7)));
  v206 = 11 * (HIBYTE(v203) & 0xF0 | (LODWORD(STACK[0x540]) >> 20) & 0xF) + 7788;
  v207 = v123 ^ (16 * *(STACK[0x5A0] + v104));
  LODWORD(v20) = v200 ^ v207 ^ (*(STACK[0x5A0] + (v20 - 974 * (((8613 * v20) >> 16) >> 7))) << 16);
  v208 = v20 ^ (*(STACK[0x5A0] + (v204 - 974 * (((8613 * v204) >> 16) >> 7))) << 20);
  v209 = v208 ^ (*(STACK[0x5A0] + (v205 - 974 * (((8613 * v205) >> 16) >> 7))) << 24);
  v210 = 11 * ((v209 ^ (*(STACK[0x5A0] + (v206 - 974 * (((8613 * v206) >> 16) >> 7))) << 28)) >> 28) + 7590;
  LODWORD(v20) = (((*(STACK[0x5A0] + (11 * (HIBYTE(v209) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIBYTE(v209) & 0xF) + 7590)) >> 16) >> 7))) << 8) ^ (*(STACK[0x5A0] + (v210 - 974 * (((8613 * v210) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (BYTE2(v20) & 0xF) + 7590 - 974 * (((8613 * (11 * (WORD1(v20) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * ((v208 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v208 >> 20) & 0xF) + 7590)) >> 16) >> 7))) << 12);
  v211 = ((v20 | *(STACK[0x5A0] + (11 * (((v200 ^ v207) >> 8) & 0xF) + 7590 - 974 * (((8613 * (11 * (((v200 ^ v207) >> 8) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * (v200 >> 12) + 7590 - 974 * (((8613 * (11 * (v200 >> 12) + 7590)) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (v123 & 0xF) + 7590 - 974 * (((8613 * (11 * (v123 & 0xF) + 7590)) >> 16) >> 7)));
  LODWORD(STACK[0x534]) = LODWORD(STACK[0x480]) ^ 0x7EE2667C ^ LODWORD(STACK[0x554]);
  LODWORD(STACK[0x538]) = LODWORD(STACK[0x56C]) ^ (16 * *(STACK[0x5A0] + (11 * (v207 >> 4) + 7590 - 974 * (((8613 * (11 * (v207 >> 4) + 7590)) >> 16) >> 7)))) ^ v211;
  v212 = v187 + 11 * (*(STACK[0x5A0] + (LOWORD(STACK[0x4B8]) + 3894 - 974 * (((8613 * (LODWORD(STACK[0x4B8]) + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (LOWORD(STACK[0x4B4]) + 3894) % 0x3CEu) >> 4));
  LODWORD(v123) = STACK[0x4C0] & 0xF0 | (LODWORD(STACK[0x4A4]) >> 8) & 0xF;
  LOWORD(v212) = 11 * (*(STACK[0x5A0] + (11 * v123 - 974 * ((94743 * v123 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v212 - 974 * (((8613 * v212) >> 16) >> 7)))));
  LOWORD(v208) = (v212 + 990) % 0x3CEu;
  v213 = v187 + 11 * (*(STACK[0x5A0] + (11 * v123 + 3894 - 974 * (((8613 * (11 * v123 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v212 + 3894) % 0x3CEu) >> 4));
  LOWORD(v213) = v213 - 974 * (((8613 * v213) >> 16) >> 7);
  LODWORD(v123) = 11 * (((v213 & 0xF ^ 0xF) + (v213 & 0xF)) & (LODWORD(STACK[0x4DC]) >> 12) ^ STACK[0x4C8] & 0xF0);
  LOWORD(v213) = 11 * (*(STACK[0x5A0] + (v123 + 990) % 0x3CEu) ^ (16 * *(STACK[0x5A0] + v213)));
  LOWORD(v209) = (v213 + 990) % 0x3CEu;
  v214 = *(STACK[0x5A0] + (v123 + 3894) % 0x3CEu) ^ (*(STACK[0x5A0] + (v213 + 3894) % 0x3CEu) >> 4);
  LODWORD(v123) = (LODWORD(STACK[0x4CC]) >> 4) & 0xF0 | HIWORD(LODWORD(STACK[0x4DC])) & 0xF;
  LOWORD(v214) = 11 * (*(STACK[0x5A0] + (11 * v123 - 974 * ((94743 * v123 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v187 + 11 * v214 - 974 * (((8613 * (v187 + 11 * v214)) >> 16) >> 7)))));
  v215 = (v214 + 990) % 0x3CEu;
  v216 = v187 + 11 * (*(STACK[0x5A0] + (11 * v123 + 3894 - 974 * (((8613 * (11 * v123 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v214 + 3894) % 0x3CEu) >> 4));
  LODWORD(v123) = (LODWORD(STACK[0x4D0]) >> 8) & 0xF0 | (LODWORD(STACK[0x4F4]) >> 20) & 0xF;
  LODWORD(v20) = (((v123 + 90) | (5 - (LODWORD(STACK[0x4F4]) >> 20))) & 0xB) * (v123 + 90);
  LOWORD(v216) = 11 * (*(STACK[0x5A0] + (v20 - 974 * (((8613 * v20) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v216 - 974 * (((8613 * v216) >> 16) >> 7)))));
  LOWORD(v207) = (v216 + 990) % 0x3CEu;
  v217 = v187 + 11 * (*(STACK[0x5A0] + (v25 + 11 * v123 - 974 * (((8613 * (v25 + 11 * v123)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v216 + 3894) % 0x3CEu) >> 4));
  LODWORD(v123) = (LODWORD(STACK[0x4D0]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x500])) & 0xF;
  LODWORD(v20) = 11 * v123;
  LOWORD(v123) = 11 * (*(STACK[0x5A0] + (11 * v123 - 974 * ((94743 * v123 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v217 - 974 * (((8613 * v217) >> 16) >> 7)))));
  LOWORD(v217) = (v123 + 990) % 0x3CEu;
  LODWORD(v123) = v187 + 11 * (*(STACK[0x5A0] + (v20 + 3894 - 974 * (((8613 * (v20 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v123 + 3894) % 0x3CEu) >> 4));
  LODWORD(v20) = v187 + 11 * ((LODWORD(STACK[0x4F8]) >> 8) & 0xF0 | (LODWORD(STACK[0x50C]) >> 20) & 0xF);
  LOWORD(v123) = v187 + 11 * (*(STACK[0x5A0] + (v20 - 974 * (((8613 * v20) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v123 - 974 * (((8613 * v123) >> 16) >> 7)))));
  LOBYTE(v20) = *(STACK[0x5A0] + v208);
  v218 = 11 * ((LODWORD(STACK[0x4B0]) ^ (16 * v20)) & 0xF0 | (LODWORD(STACK[0x4A4]) >> 8) & 0xF) + 7788;
  v219 = LODWORD(STACK[0x4A8]) ^ (*(STACK[0x5A0] + (v218 - 974 * (((8613 * v218) >> 16) >> 7))) << 8);
  LOBYTE(v209) = *(STACK[0x5A0] + v209);
  LODWORD(v20) = 11 * ((v20 ^ (16 * v209)) & 0xF0 | (LODWORD(STACK[0x4DC]) >> 12)) + 7788;
  LOBYTE(v210) = *(STACK[0x5A0] + v215);
  v220 = 11 * ((v209 ^ (16 * v210)) & 0xF0 | HIWORD(LODWORD(STACK[0x4DC])) & 0xF) + 7788;
  LOBYTE(v215) = *(STACK[0x5A0] + v207);
  LOBYTE(v217) = *(STACK[0x5A0] + v217);
  v221 = 11 * ((v210 ^ (16 * v215)) & 0xF0 | (LODWORD(STACK[0x4F4]) >> 20) & 0xF) + 7788;
  LOBYTE(v123) = v217 ^ (16 * *(STACK[0x5A0] + v123 % 0x3CEu));
  v222 = 11 * ((v215 ^ (16 * v217)) & 0xF0 | HIWORD(LODWORD(STACK[0x500])) & 0xF) + 7788;
  LODWORD(v123) = 11 * (v123 & 0xF0 | (LODWORD(STACK[0x50C]) >> 20) & 0xF) + 7788;
  LODWORD(v20) = v219 ^ (*(STACK[0x5A0] + (v20 - 974 * (((8613 * v20) >> 16) >> 7))) << 12);
  v223 = v20 ^ (*(STACK[0x5A0] + (v220 - 974 * (((8613 * v220) >> 16) >> 7))) << 16);
  v224 = v223 ^ (*(STACK[0x5A0] + (v221 - 974 * (((8613 * v221) >> 16) >> 7))) << 20);
  v225 = v224 ^ (*(STACK[0x5A0] + (v222 - 974 * (((8613 * v222) >> 16) >> 7))) << 24);
  LODWORD(v123) = 11 * ((v225 ^ (*(STACK[0x5A0] + (v123 - 974 * (((8613 * v123) >> 16) >> 7))) << 28)) >> 28) + 7590;
  v226 = 11 * (v20 >> 12) + 7590 - 974 * ((8613 * (11 * (v20 >> 12) + 7590)) >> 23);
  v227 = (((*(STACK[0x5A0] + (11 * (HIBYTE(v225) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIBYTE(v225) & 0xF) + 7590)) >> 16) >> 7))) << 8) ^ (*(STACK[0x5A0] + (v123 - 974 * (((8613 * v123) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (BYTE2(v223) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIWORD(v223) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * ((v224 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v224 >> 20) & 0xF) + 7590)) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * ((v219 >> 8) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v219 >> 8) & 0xF) + 7590)) >> 16) >> 7)));
  v228 = 11 * (STACK[0x4BC] & 0xF) + 7590 - 1948 * ((2204809 * (11 * (STACK[0x4BC] & 0xF) + 7590)) >> 32);
  if (v228 >= 0x3CE)
  {
    v228 -= 974;
  }

  v229 = *(STACK[0x5A0] + LODWORD(STACK[0x4AC]));
  v230 = *(STACK[0x5A0] + v228);
  v231 = STACK[0x548];
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x548]) ^ (v230 - ((2 * v230) & 0x1E0) + 1894184944) & 0x8062C6 ^ (16 * (v229 - ((2 * v229) & 0x50)) + 478057088) ^ 0xFD0B0B05 ^ ((v230 - ((2 * v230) & 0x1E0) + 1894184944) ^ 0x8F190809) & ((*(STACK[0x5A0] + v226) << 12) ^ (v227 << 8) ^ 0x9F179D39);
  v232 = 11 * (LODWORD(STACK[0x484]) >> 12) + 7590;
  v233 = LODWORD(STACK[0x3C4]) ^ 0x1FE4DFE8;
  LODWORD(STACK[0x554]) = v233 ^ LODWORD(STACK[0x524]);
  LODWORD(STACK[0x588]) = v233 ^ LODWORD(STACK[0x49C]);
  v234 = 11 * (LODWORD(STACK[0x488]) >> 4) + 7590;
  v235 = *(STACK[0x5A0] + STACK[0x470]);
  v236 = v235 - ((2 * v235) & 0x38) - 1650172132;
  v237 = (v236 ^ 0x625BA061) & ((*(STACK[0x5A0] + (v232 - 974 * (((8613 * v232) >> 16) >> 7))) << 12) ^ (LODWORD(STACK[0x44C]) << 8) ^ 0xFC198879);
  v238 = *(STACK[0x5A0] + (v234 - 974 * (((8613 * v234) >> 16) >> 7)));
  v239 = v231 ^ v236 & 0x1247786 ^ (16 * (v238 - ((2 * v238) & 0x30)) + 1500692864);
  v240 = v187 + 11 * (*(STACK[0x5A0] + (LOWORD(STACK[0x59C]) + 3894 - 974 * (((8613 * (LODWORD(STACK[0x59C]) + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (LOWORD(STACK[0x3C0]) + 3894) % 0x3CEu) >> 4));
  v241 = STACK[0x468];
  v242 = v187 + 11 * ((LODWORD(STACK[0x460]) >> 8) & 0xF0 | (LODWORD(STACK[0x468]) >> 20) & 0xF);
  LOBYTE(v240) = *(STACK[0x5A0] + (v187 + 11 * (*(STACK[0x5A0] + (v242 - 974 * (((8613 * v242) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v240 - 974 * (((8613 * v240) >> 16) >> 7)))))) % 0x3CEu);
  LODWORD(STACK[0x524]) = v239 ^ 0xDAAD7881 ^ v237;
  v243 = 11 * ((LODWORD(STACK[0x3B4]) ^ (16 * v240)) & 0xF0 | (v241 >> 20) & 0xF) + 7788;
  v244 = 11 * ((v180 ^ (*(STACK[0x5A0] + (v243 - 974 * (((8613 * v243) >> 16) >> 7))) << 28)) >> 28) + 7590;
  v245 = (((((*(STACK[0x5A0] + LODWORD(STACK[0x358])) << 8) ^ (*(STACK[0x5A0] + (v244 - 974 * (((8613 * v244) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (BYTE2(v179) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIWORD(v179) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * ((v179 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v179 >> 20) & 0xF) + 7590)) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * ((v177 >> 8) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v177 >> 8) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * (v178 >> 12) + 7590 - 974 * (((8613 * (11 * (v178 >> 12) + 7590)) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (v175 & 0xF) + 7590 - 974 * (((8613 * (11 * (v175 & 0xFu) + 7590)) >> 16) >> 7)));
  LODWORD(STACK[0x56C]) = v245 - ((2 * v245) & 0xD3CE082C);
  LODWORD(STACK[0x59C]) = LODWORD(STACK[0x47C]) ^ 0x1FE4DFE8 ^ (LODWORD(STACK[0x360]) + 2043686003);
  LODWORD(STACK[0x548]) = (LODWORD(STACK[0x450]) - 181321125) ^ (16 * *(STACK[0x5A0] + (11 * (v176 >> 4) + 7590 - 974 * (((8613 * (11 * (v176 >> 4) + 7590)) >> 16) >> 7))));
  LOBYTE(v242) = STACK[0x364];
  v246 = LODWORD(STACK[0x3D4]) - 605600053;
  LODWORD(STACK[0x3C4]) = v246;
  v247 = LODWORD(STACK[0x35C]) + v246;
  v248 = v247 >> (((19 - v242) & 0x10) + ((v242 + 12) & 0x10));
  v249 = (((*(STACK[0x5A0] + 11 * (HIBYTE(v247) & 0xF)) << 8) ^ (*(STACK[0x5A0] + 11 * (v247 >> 28)) << 12) | *(STACK[0x5A0] + 11 * (v248 & 0xF))) << 8) ^ (*(STACK[0x5A0] + 11 * (v248 >> 4)) << 12);
  v250 = v249 | *(STACK[0x5A0] + 11 * ((v247 >> 8) & 0xF));
  v251 = (v250 << 8) ^ (*(STACK[0x5A0] + 11 * (v247 >> 12)) << 12);
  v252 = LODWORD(STACK[0x418]) - LODWORD(STACK[0x45C]) - 1035267175;
  v253 = (*(STACK[0x5A0] + 11 * (HIBYTE(v252) & 0xF)) << 8) ^ (*(STACK[0x5A0] + 11 * (v252 >> 28)) << 12) | *(STACK[0x5A0] + 11 * (HIWORD(v252) & 0xF));
  LODWORD(STACK[0x540]) = v247;
  v254 = *(STACK[0x5A0] + 11 * (v247 & 0xF));
  v255 = (v251 | v254) ^ (16 * *(STACK[0x5A0] + 11 * (v247 >> 4)));
  v256 = (v253 ^ (16 * *(STACK[0x5A0] + 11 * ((v252 >> 20) & 0xF)))) << ((v254 & 8 ^ 8) + (v254 & 8));
  v257 = ((v256 ^ *(STACK[0x5A0] + 11 * ((v252 >> 8) & 0xF))) << 8) ^ (*(STACK[0x5A0] + 11 * (v252 >> 12)) << 12);
  v258 = v254 & 0xF;
  v259 = *(STACK[0x5A0] + 11 * (v252 & 0xF));
  v260 = v258 | (16 * (v259 & 0xF));
  v261 = 11 * v260;
  v262 = 11 * (LODWORD(STACK[0x564]) ^ *(STACK[0x5A0] + (11 * v260 - 974 * ((94743 * v260 + 8526870) >> 23) + 990)));
  v263 = (v262 + 990) % 0x3CEu;
  LOBYTE(v252) = *(STACK[0x5A0] + 11 * (v252 >> 4)) ^ ((v257 | v259) >> 4);
  v264 = v187 + 11 * (*(STACK[0x5A0] + (v261 + 3894 - 974 * (((8613 * (v261 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v262 + 3894) % 0x3CEu) >> 4));
  v265 = 11 * ((16 * (v252 & 0xF)) ^ ((STACK[0x568] & 0xF) + ((94 - LODWORD(STACK[0x46C])) & 0xF)) & (v255 >> 4));
  LOWORD(v264) = 11 * (*(STACK[0x5A0] + (v265 + 990 - 974 * (((34451 * (((v265 + 990) >> 1) & 0xFFF)) >> 16) >> 8))) ^ (16 * *(STACK[0x5A0] + (v264 - 974 * (((8613 * v264) >> 16) >> 7)))));
  v266 = (v264 + 990) % 0x3CEu;
  v267 = v187 + 11 * (*(STACK[0x5A0] + (v265 + 3894 - 974 * (((34451 * (((v265 + 3894) >> 1) & 0xFFF)) >> 16) >> 8))) ^ (*(STACK[0x5A0] + (v264 + 3894) % 0x3CEu) >> 4));
  v268 = v252 & 0xF0 | (v255 >> 8) & 0xF;
  v269 = 11 * v268;
  LOWORD(v268) = 11 * (*(STACK[0x5A0] + (11 * v268 - 974 * ((94743 * v268 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v267 - 974 * (((8613 * v267) >> 16) >> 7)))));
  LOWORD(v267) = (v268 + 990) % 0x3CEu;
  v270 = v187 + 11 * (*(STACK[0x5A0] + (v269 + 3894 - 974 * (((8613 * (v269 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v268 + 3894) % 0x3CEu) >> 4));
  v271 = (v257 >> 8) & 0xF0 | (v251 >> 12);
  LOWORD(v270) = 11 * (*(STACK[0x5A0] + (11 * v271 - 974 * ((94743 * v271 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v270 - 974 * (((8613 * v270) >> 16) >> 7)))));
  v272 = (v270 + 990) % 0x3CEu;
  v273 = v187 + 11 * (*(STACK[0x5A0] + (11 * v271 + 3894 - 974 * (((8613 * (11 * v271 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v270 + 3894) % 0x3CEu) >> 4));
  v274 = (v257 >> 12) & 0xF0 | HIWORD(v251) & 0xF;
  LOWORD(v273) = *(STACK[0x5A0] + (11 * v274 - 974 * ((94743 * v274 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v273 - 974 * (((8613 * v273) >> 16) >> 7))));
  LOWORD(v257) = (v187 + 11 * v273) % 0x3CEu;
  v275 = v187 + 11 * (*(STACK[0x5A0] + (11 * v274 + 3894 - 974 * (((8613 * (11 * v274 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (11 * (((2 * v273) & 0x2C4) + (v273 ^ 0x162))) % 0x3CEu) >> 4));
  v276 = (v256 >> 8) & 0xF0 | (v249 >> 12);
  LOWORD(v275) = 11 * (*(STACK[0x5A0] + (11 * v276 - 974 * ((94743 * v276 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v275 - 974 * (((8613 * v275) >> 16) >> 7)))));
  v277 = (v275 + 990) % 0x3CEu;
  v278 = v187 + 11 * (*(STACK[0x5A0] + (11 * v276 + 3894 - 974 * (((8613 * (11 * v276 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v275 + 3894) % 0x3CEu) >> 4));
  v279 = (v256 >> 12) & 0xF0 | HIWORD(v249) & 0xF;
  LOWORD(v278) = 11 * (*(STACK[0x5A0] + (11 * v279 - 974 * ((94743 * v279 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v278 - 974 * (((8613 * v278) >> 16) >> 7)))));
  v280 = v187 + 11 * (*(STACK[0x5A0] + (11 * v279 + 3894 - 974 * (((8613 * (11 * v279 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v278 + 3894) % 0x3CEu) >> 4));
  v281 = v187 + 11 * (HIWORD(v256) & 0xF0 | (v250 >> 20) & 0xF);
  v282 = v187;
  v283 = *(STACK[0x5A0] + (v280 - 974 * (((8613 * v280) >> 16) >> 7)));
  LOWORD(v280) = (v278 + 990) % 0x3CEu;
  LOBYTE(v261) = *(STACK[0x5A0] + v263);
  v284 = 11 * (v258 & 0xFFFFFF0F | (16 * (v261 & 0xF))) + 7788;
  LOBYTE(v258) = *(STACK[0x5A0] + v266);
  LOBYTE(v267) = *(STACK[0x5A0] + v267);
  v285 = (v261 ^ (16 * v258)) & 0xF0 | (v255 >> 4);
  v286 = 11 * ((v258 ^ (16 * v267)) & 0xF0 | (v255 >> 8) & 0xF) + 7788;
  LOWORD(v258) = 11 * v285 + 7788 - 974 * (((8613 * (11 * v285 + 7788)) >> 16) >> 7);
  LOBYTE(v285) = *(STACK[0x5A0] + v272);
  v287 = 11 * ((v267 ^ (16 * v285)) & 0xF0 | (v251 >> 12)) + 7788;
  v288 = (*(STACK[0x5A0] + (v287 - 974 * (((8613 * v287) >> 16) >> 7))) << 12) ^ (*(STACK[0x5A0] + (v286 - 974 * (((8613 * v286) >> 16) >> 7))) << 8);
  LOBYTE(v286) = *(STACK[0x5A0] + v257);
  v289 = 11 * ((v285 ^ (16 * v286)) & 0xF0 | HIWORD(v251) & 0xF) + 7788;
  v290 = v288 ^ (*(STACK[0x5A0] + (v289 - 974 * (((8613 * v289) >> 16) >> 7))) << 16);
  LOBYTE(v289) = *(STACK[0x5A0] + v277);
  v291 = 11 * ((v286 ^ (16 * v289)) & 0xF0 | (v249 >> 12)) + 7788;
  LOBYTE(v280) = *(STACK[0x5A0] + v280);
  v292 = (v289 ^ (16 * v280)) & 0xF0 | HIWORD(v249) & 0xF;
  LOBYTE(v249) = v280 ^ (16 * *(STACK[0x5A0] + (v187 + 11 * (*(STACK[0x5A0] + (v281 - 974 * (((8613 * v281) >> 16) >> 7))) ^ (16 * v283))) % 0x3CEu));
  LOWORD(v280) = 11 * v292 + 7788 - 974 * (((8613 * (11 * v292 + 7788)) >> 16) >> 7);
  v293 = v249 & 0xF0 | (v250 >> 20) & 0xF;
  v294 = *(STACK[0x5A0] + (v284 - 974 * (((8613 * v284) >> 16) >> 7)));
  v295 = v294 ^ (16 * *(STACK[0x5A0] + v258));
  v296 = (v295 | (*(STACK[0x5A0] + (v291 - 974 * (((8613 * v291) >> 16) >> 7))) << 20)) ^ v290;
  v297 = v296 ^ (*(STACK[0x5A0] + v280) << 24);
  v298 = 11 * ((v297 ^ (*(STACK[0x5A0] + (11 * v293 + 7788 - 974 * (((8613 * (11 * v293 + 7788)) >> 16) >> 7))) << 28)) >> 28) + 7590;
  v299 = *(STACK[0x5A0] + (11 * (v294 & 0xF) + 7590 - 974 * (((8613 * (11 * (v294 & 0xFu) + 7590)) >> 16) >> 7)));
  v300 = (((((*(STACK[0x5A0] + (11 * (HIBYTE(v297) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIBYTE(v297) & 0xF) + 7590)) >> 16) >> 7))) << 8) ^ (*(STACK[0x5A0] + (v298 - 974 * (((8613 * v298) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (BYTE2(v290) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIWORD(v290) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * ((v296 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v296 >> 20) & 0xF) + 7590)) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * ((v296 >> 8) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v296 >> 8) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * (v296 >> 12) + 7590 - 974 * (((8613 * (11 * (v296 >> 12) + 7590)) >> 16) >> 7))) << 12) | v299;
  LODWORD(STACK[0x568]) = v300 + 300735749 - 2 * (v300 & 0x11ECDD1D ^ v299 & 0x18);
  LODWORD(STACK[0x520]) = LODWORD(STACK[0x368]) ^ (16 * *(STACK[0x5A0] + (11 * (v295 >> 4) + 7590 - 974 * (((8613 * (11 * (v295 >> 4) + 7590)) >> 16) >> 7))));
  LOBYTE(v295) = *(STACK[0x5A0] + 11 * (v171 >> 12)) ^ ((LODWORD(STACK[0x36C]) | LODWORD(STACK[0x380])) >> 4);
  v301 = v187 + 11 * (*(STACK[0x5A0] + (LOWORD(STACK[0x37C]) + 3894 - 974 * (((8613 * (LODWORD(STACK[0x37C]) + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (LOWORD(STACK[0x378]) + 3894) % 0x3CEu) >> 4));
  v302 = (LODWORD(STACK[0x3A4]) >> 12) & 0xFFFFFF0F | (16 * (v295 & 0xF));
  v303 = 11 * v302;
  LOWORD(v297) = 11 * (*(STACK[0x5A0] + (11 * v302 - 974 * ((94743 * v302 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v301 - 974 * (((8613 * v301) >> 16) >> 7)))));
  LOWORD(v302) = (v297 + 990) % 0x3CEu;
  v304 = v282 + 11 * (*(STACK[0x5A0] + (v303 + 3894 - 974 * (((8613 * (v303 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v297 + 3894) % 0x3CEu) >> 4));
  LOWORD(v303) = v304 - 974 * (((8613 * v304) >> 16) >> 7);
  v305 = (*(STACK[0x5A0] + v302) << 12) ^ (*(STACK[0x5A0] + LODWORD(STACK[0x38C])) << 8);
  v306 = v295 & 0xF0 | HIWORD(LODWORD(STACK[0x3A4])) & 0xF;
  LOWORD(v302) = *(STACK[0x5A0] + v303);
  v307 = 11 * v306;
  LOWORD(v306) = *(STACK[0x5A0] + (11 * v306 - 974 * ((94743 * v306 + 8526870) >> 23) + 990)) ^ (16 * v302);
  LOWORD(v302) = v307 + 3894 - 974 * (((8613 * (v307 + 3894)) >> 16) >> 7);
  LOWORD(v306) = 11 * v306;
  LOWORD(v307) = (v306 + 990) % 0x3CEu;
  v308 = v282 + 11 * (*(STACK[0x5A0] + v302) ^ (*(STACK[0x5A0] + (v306 + 3894) % 0x3CEu) >> 4));
  v309 = (LODWORD(STACK[0x36C]) >> 8) & 0xF0 | (LODWORD(STACK[0x3AC]) >> 12);
  LOWORD(v308) = 11 * (*(STACK[0x5A0] + (11 * v309 - 974 * ((94743 * v309 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v308 - 974 * (((8613 * v308) >> 16) >> 7)))));
  v310 = (v308 + 990) % 0x3CEu;
  v311 = v282 + 11 * (*(STACK[0x5A0] + (11 * v309 + 3894 - 974 * (((8613 * (11 * v309 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v308 + 3894) % 0x3CEu) >> 4));
  v312 = (*(STACK[0x5A0] + v310) << 20) ^ (*(STACK[0x5A0] + v307) << 16);
  LOWORD(v311) = 11 * (*(STACK[0x5A0] + (LOWORD(STACK[0x370]) + 990 - 974 * (((8613 * (LODWORD(STACK[0x370]) + 990)) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v311 - 974 * (((8613 * v311) >> 16) >> 7)))));
  v313 = v282 + 11 * (*(STACK[0x5A0] + LODWORD(STACK[0x374])) ^ (*(STACK[0x5A0] + (v311 + 3894) % 0x3CEu) >> 4));
  v314 = v282 + 11 * ((LODWORD(STACK[0x3A0]) >> 8) & 0xF0 | (LODWORD(STACK[0x3B8]) >> 20) & 0xF);
  LOWORD(v313) = *(STACK[0x5A0] + (v314 - 974 * (((8613 * v314) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v313 - 974 * (((8613 * v313) >> 16) >> 7))));
  LOBYTE(v300) = *(STACK[0x5A0] + (LOWORD(STACK[0x394]) + 990) % 0x3CEu);
  v315 = 16 * *(STACK[0x5A0] + (LOWORD(STACK[0x390]) + 990) % 0x3CEu);
  v316 = 11 * ((v315 ^ v300) & 0xF0 | (LODWORD(STACK[0x3A8]) >> 4)) + 7788;
  v317 = v305 ^ v315;
  v318 = 11 * (((v305 ^ v315) >> 4) & 0xF0 | (LODWORD(STACK[0x3A8]) >> 8) & 0xF) + 7788;
  v319 = v318 - 974 * (((8613 * v318) >> 16) >> 7);
  v320 = STACK[0x3BC] & 0xFFFFFF0F | (16 * (v300 & 0xF));
  v321 = (*(STACK[0x5A0] + v319) << 8) ^ (16 * *(STACK[0x5A0] + (v316 - 974 * (((8613 * v316) >> 16) >> 7))));
  v322 = v312 ^ v317 ^ (*(STACK[0x5A0] + (v311 + 990) % 0x3CEu) << 24);
  v323 = 11 * (((v312 ^ v317) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x3A4])) & 0xF) + 7788;
  v324 = (*(STACK[0x5A0] + (v323 - 974 * (((8613 * v323) >> 16) >> 7))) << 16) ^ (*(STACK[0x5A0] + (11 * (((v305 >> 12) << ((v319 & 0x79) + (v319 & 0x79 ^ 0x79u) - 117)) ^ (LODWORD(STACK[0x3A4]) >> 12)) + 7788) % 0x3CE) << 12);
  v325 = HIWORD(v312) & 0xF0 | (LODWORD(STACK[0x3AC]) >> 12);
  v326 = v322 ^ (*(STACK[0x5A0] + (v282 + 11 * v313) % 0x3CEu) << 28);
  v327 = ((v322 >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0x398])) & 0xF) + 708;
  v328 = HIBYTE(v326) & 0xF0 | (LODWORD(STACK[0x3B8]) >> 20) & 0xF;
  v329 = *(STACK[0x5A0] + (11 * v320 + 7788 - 974 * (((8613 * (11 * v320 + 7788)) >> 16) >> 7)));
  v330 = (((HIBYTE(LODWORD(STACK[0x398])) & 7 ^ 0xFC) - (v327 & 7)) ^ 0xF3) * v327;
  LODWORD(STACK[0x53C]) = v321 ^ v329;
  LOWORD(v313) = 11 * v325 + 7788 - 974 * (((8613 * (11 * v325 + 7788)) >> 16) >> 7);
  v331 = v324 ^ v321 ^ v329;
  v332 = v331 ^ (*(STACK[0x5A0] + v313) << 20);
  v333 = (*(STACK[0x5A0] + (11 * v328 + 7788 - 974 * (((8613 * (11 * v328 + 7788)) >> 16) >> 7))) << 28) ^ (*(STACK[0x5A0] + (v330 - 974 * (((8613 * v330) >> 16) >> 7))) << 24) ^ v332;
  v334 = (*(STACK[0x5A0] + (11 * (HIBYTE(v333) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIBYTE(v333) & 0xF) + 7590)) >> 16) >> 7))) << 8) ^ (*(STACK[0x5A0] + (11 * (v333 >> 28) + 7590 - 974 * (((8613 * (11 * (v333 >> 28) + 7590)) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (BYTE2(v324) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIWORD(v324) & 0xF) + 7590)) >> 16) >> 7)));
  v335 = STACK[0x3C8];
  v336 = (LODWORD(STACK[0x544]) ^ 0xE8D2C120) - LODWORD(STACK[0x3C8]);
  v337 = (v334 << 8) ^ (*(STACK[0x5A0] + (11 * ((v332 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v332 >> 20) & 0xF) + 7590)) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * ((v321 >> 8) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v321 >> 8) & 0xF) + 7590)) >> 16) >> 7)));
  v338 = v329 & 0xF;
  v339 = LODWORD(STACK[0x3CC]) + v336;
  v340 = ((LODWORD(STACK[0x448]) ^ 0x157545A0) - 1239577928) ^ ((LODWORD(STACK[0x448]) ^ 0x7655494B) - 717388195) ^ ((LODWORD(STACK[0x448]) ^ 0x958A6DD4) + 920822468);
  v341 = *(STACK[0x5A0] + (11 * v338 + 7590 - 974 * (((8613 * (11 * v338 + 7590)) >> 16) >> 7)));
  v342 = (v337 << 8) ^ (*(STACK[0x5A0] + (11 * (v331 >> 12) + 7590 - 974 * (((8613 * (11 * (v331 >> 12) + 7590)) >> 16) >> 7))) << 12) | v341;
  LODWORD(STACK[0x518]) = v342 - 2 * (v342 & 0x6974563D ^ v341 & 9);
  v343 = LODWORD(STACK[0x43C]) - 474937745 + (((v339 ^ 0x7458174E) - 1810602006) ^ ((v339 ^ 0xD8B7FC20) + 956009608) ^ ((v339 ^ 0xB058FAA1) + 1343523335));
  v344 = 16 * *(STACK[0x5A0] + 11 * ((LOBYTE(STACK[0x43C]) + 111 + (((v339 ^ 0x4E) - 22) ^ ((v339 ^ 0x20) - 120) ^ ((v339 ^ 0xA1) + 7))) >> 4));
  v345 = (((((*(STACK[0x5A0] + 11 * (HIBYTE(v343) & 0xF)) << 8) ^ (*(STACK[0x5A0] + 11 * (v343 >> 28)) << 12) | *(STACK[0x5A0] + 11 * (HIWORD(v343) & 0xF))) << 8) ^ (*(STACK[0x5A0] + 11 * ((v343 >> 20) & 0xF)) << 12) | *(STACK[0x5A0] + 11 * ((v343 >> 8) & 0xF))) << 8) ^ (*(STACK[0x5A0] + 11 * ((LOWORD(STACK[0x43C]) + 1647 + (((v339 ^ 0x174E) + 26602) ^ ((v339 ^ 0xFC20) - 29560) ^ ((v339 ^ 0xFAA1) - 30201))) >> 12)) << 12) | *(STACK[0x5A0] + 11 * (v343 & 0xF));
  v346 = v345 & 0xB7AC4C1B ^ v344 & 0xFFFFFC1F;
  v347 = STACK[0x3B0];
  v348 = LODWORD(STACK[0x3D0]) + LODWORD(STACK[0x3B0]);
  v349 = v345 & 0x4853B3E4 ^ v344 & 0x3E0;
  v350 = v348 ^ 0x1CB711CF;
  v351 = v346 | v349;
  v352 = LODWORD(STACK[0x404]) - (v348 ^ 0x1CB711CF) + 563854808;
  v353 = (((HIWORD(v352) & 0x23 ^ 0x23) + (HIWORD(v352) & 0x23)) ^ 0x28) * ((v352 >> 20) & 0xF);
  if (v353 >= 0x3CE)
  {
    v353 -= 974;
  }

  v354 = (*(STACK[0x5A0] + 11 * (HIBYTE(v352) & 0xF)) << 8) ^ (*(STACK[0x5A0] + 11 * (v352 >> 28)) << 12);
  v355 = ((v354 | *(STACK[0x5A0] + 11 * (HIWORD(v352) & 0xF))) << 8) ^ (*(STACK[0x5A0] + v353) << 12);
  v356 = ((v355 | *(STACK[0x5A0] + 11 * (((LODWORD(STACK[0x404]) - (v348 ^ 0x1CB711CFu) + 563854808) >> 8) & 0xF))) << 8) ^ (*(STACK[0x5A0] + 11 * ((LOWORD(STACK[0x404]) - (v348 ^ 0x11CF) - 16936) >> 12)) << 12);
  v357 = *(STACK[0x5A0] + 11 * ((LOBYTE(STACK[0x404]) - (v348 ^ 0xCF) - 40) & 0xF));
  v358 = v351 & 0xF | (16 * (v357 & 0xF));
  LOBYTE(v357) = *(STACK[0x5A0] + 11 * ((LOBYTE(STACK[0x404]) - (v348 ^ 0xCF) - 40) >> 4)) ^ ((v356 | v357) >> 4);
  v359 = 11 * v358;
  v360 = 11 * (*(STACK[0x5A0] + (11 * v358 - 974 * ((94743 * v358 + 8526870) >> 23) + 990)) ^ LODWORD(STACK[0x564]));
  v361 = v282 + 11 * (*(STACK[0x5A0] + (v359 + 3894 - 974 * (((8613 * (v359 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v360 + 3894) % 0x3CEu) >> 4));
  v362 = (v351 >> 4) | (16 * (v357 & 0xF));
  v363 = 11 * (*(STACK[0x5A0] + (11 * v362 - 974 * ((94743 * v362 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v361 - 974 * (((8613 * v361) >> 16) >> 7)))));
  v364 = v282 + 11 * (*(STACK[0x5A0] + (11 * v362 + 3894 - 974 * (((8613 * (11 * v362 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v363 + 3894) % 0x3CEu) >> 4));
  v365 = v357 & 0xF0 | (v351 >> 8) & 0xF;
  LOWORD(v362) = 11 * v365 + 3894 - 974 * (((8613 * (11 * v365 + 3894)) >> 16) >> 7);
  LOWORD(v365) = 11 * (*(STACK[0x5A0] + (11 * v365 - 974 * ((94743 * v365 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v364 - 974 * (((8613 * v364) >> 16) >> 7)))));
  v366 = v282 + 11 * (*(STACK[0x5A0] + v362) ^ (*(STACK[0x5A0] + (v365 + 3894) % 0x3CEu) >> 4));
  v367 = (v356 >> 8) & 0xF0 | (v351 >> 12);
  v368 = 11 * (*(STACK[0x5A0] + (11 * v367 - 974 * ((94743 * v367 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v366 - 974 * (((8613 * v366) >> 16) >> 7)))));
  v369 = v282 + 11 * (*(STACK[0x5A0] + (11 * v367 + 3894 - 974 * (((8613 * (11 * v367 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v368 + 3894) % 0x3CEu) >> 4));
  v370 = (v356 >> 12) & 0xF0 | HIWORD(v351) & 0xF;
  v371 = (94743 * v370 + 8526870) >> 23;
  v370 *= 11;
  v372 = *(STACK[0x5A0] + (v370 - 974 * v371 + 990)) ^ (16 * *(STACK[0x5A0] + (v369 - 974 * (((8613 * v369) >> 16) >> 7))));
  LOWORD(v371) = v370 + 3894 - 974 * (((8613 * (v370 + 3894)) >> 16) >> 7);
  v373 = 11 * v372;
  v374 = v335 ^ 0x6611E539;
  v375 = (v339 + (v335 ^ 0x6611E539) + v336) ^ (v340 - ((v335 ^ 0x6611E539) + v336) - 1438821929);
  v376 = v282 + 11 * (*(STACK[0x5A0] + v371) ^ (*(STACK[0x5A0] + (11 * v372 + 3894) % 0x3CEu) >> 4));
  v377 = (v355 >> 8) & 0xF0 | (v351 >> 20) & 0xF;
  v378 = (94743 * v377 + 8526870) >> 23;
  v377 *= 11;
  LOWORD(v376) = *(STACK[0x5A0] + (v377 - 974 * v378 + 990)) ^ (16 * *(STACK[0x5A0] + (v376 - 974 * (((8613 * v376) >> 16) >> 7))));
  LOWORD(v378) = (v368 + 990) % 0x3CEu;
  v379 = 11 * v376;
  v380 = (*(STACK[0x5A0] + v378) << 12) ^ (*(STACK[0x5A0] + (v365 + 990) % 0x3CEu) << 8);
  v381 = v282 + 11 * (*(STACK[0x5A0] + (v377 + 3894 - 974 * (((8613 * (v377 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (11 * v376 + 3894) % 0x3CEu) >> 4));
  LOBYTE(v381) = *(STACK[0x5A0] + (v381 - 974 * (((8613 * v381) >> 16) >> 7)));
  v382 = (v355 >> 12) & 0xF0 | HIBYTE(v351) & 0xF;
  v383 = (94743 * v382 + 8526870) >> 23;
  v382 *= 11;
  LOWORD(v383) = 11 * (((16 * (v381 & 0x3F)) ^ *(STACK[0x5A0] + (v382 - 974 * v383 + 990))) & 0xF3FF | (v381 >> 6 << 10));
  v384 = v282 + 11 * (*(STACK[0x5A0] + (v382 + 3894 - 974 * (((8613 * (v382 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v383 + 3894) % 0x3CEu) >> 4));
  v385 = v282 + 11 * ((v354 >> 8) & 0xF0 | (v351 >> 28));
  LOWORD(v385) = *(STACK[0x5A0] + (v385 - 974 * (((8613 * v385) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v384 - 974 * (((8613 * v384) >> 16) >> 7))));
  v386 = *(STACK[0x5A0] + (v360 + 990) % 0x3CEu);
  v387 = v386 ^ (16 * *(STACK[0x5A0] + (v363 + 990) % 0x3CEu));
  v388 = v351 & 0xF | (16 * (v386 & 0xF));
  v389 = v380 ^ v387 ^ (*(STACK[0x5A0] + (v373 + 990) % 0x3CEu) << 16);
  v390 = 11 * (((v380 ^ v387) >> 4) & 0xF0 | (v351 >> 8) & 0xF) + 7788;
  v391 = (((v380 >> 8) & 0xF0 | (v351 >> 12)) + 708) * (((3 - v375) & 0xB) + ((v375 + 12) & 0xB));
  v392 = (*(STACK[0x5A0] + (v391 - 974 * (((34451 * v391) >> 16) >> 9))) << 12) ^ (*(STACK[0x5A0] + (v390 - 974 * (((8613 * v390) >> 16) >> 7))) << 8);
  v393 = v389 ^ (*(STACK[0x5A0] + (v379 + 16) % 0x3CEu) << 20);
  v394 = v393 ^ (*(STACK[0x5A0] + (v383 + 990) % 0x3CEu) << 24);
  v395 = v394 ^ (*(STACK[0x5A0] + (v282 + 11 * v385) % 0x3CEu) << 28);
  v396 = v387 & 0xF0 | (v351 >> 4);
  v397 = (v389 >> 12) & 0xF0 | HIWORD(v351) & 0xF;
  v398 = (v394 >> 20) & 0xF0 | HIBYTE(v351) & 0xF;
  v399 = HIBYTE(v395) & 0xF0 | (v351 >> 28);
  v400 = 11 * (HIWORD(v393) & 0xF0 | (v351 >> 20) & 0xF) + 7788;
  v401 = (*(STACK[0x5A0] + (11 * v398 + 7788 - 974 * (((8613 * (11 * v398 + 7788)) >> 16) >> 7))) << 24) ^ (*(STACK[0x5A0] + (v400 - 974 * (((8613 * v400) >> 16) >> 7))) << 20);
  v402 = *(STACK[0x5A0] + (11 * v388 + 7788 - 974 * (((8613 * (11 * v388 + 7788)) >> 16) >> 7)));
  v403 = v402 ^ (16 * *(STACK[0x5A0] + (11 * v396 + 7788 - 974 * (((8613 * (11 * v396 + 7788)) >> 16) >> 7))));
  v404 = v392 ^ v403 ^ (*(STACK[0x5A0] + (11 * v397 + 7788 - 974 * (((8613 * (11 * v397 + 7788)) >> 16) >> 7))) << 16);
  v405 = v401 ^ v404;
  v406 = 11 * ((v405 ^ (*(STACK[0x5A0] + (11 * v399 + 7788 - 974 * (((8613 * (11 * v399 + 7788)) >> 16) >> 7))) << 28)) >> 28) + 7590;
  v407 = (((((*(STACK[0x5A0] + (11 * (HIBYTE(v405) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIBYTE(v405) & 0xF) + 7590)) >> 16) >> 7))) << 8) ^ (*(STACK[0x5A0] + (v406 - 974 * (((8613 * v406) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (BYTE2(v404) & 0xF) + 7590 - 974 * (((8613 * (11 * (HIWORD(v404) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * ((v405 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v405 >> 20) & 0xF) + 7590)) >> 16) >> 7))) << 12) | *(STACK[0x5A0] + (11 * (((v392 ^ v403) >> 8) & 0xF) + 7590 - 974 * (((8613 * (11 * (((v392 ^ v403) >> 8) & 0xF) + 7590)) >> 16) >> 7)))) << 8) ^ (*(STACK[0x5A0] + (11 * (v392 >> 12) + 7590 - 974 * (((8613 * (11 * (v392 >> 12) + 7590)) >> 16) >> 7))) << 12);
  v408 = *(STACK[0x5A0] + (11 * (v402 & 0xF) + 7590 - 974 * (((8613 * (11 * (v402 & 0xFu) + 7590)) >> 16) >> 7)));
  v409 = (v407 | v408) - 2 * ((v407 | v408) & 0x2DFE0EBF ^ v408 & 3);
  v410 = (v347 + 1147749207) ^ (16 * *(STACK[0x5A0] + (11 * (v403 >> 4) + 7590 - 974 * (((8613 * (11 * (v403 >> 4) + 7590)) >> 16) >> 7))));
  v411 = 11 * (LODWORD(STACK[0x53C]) >> 4) + 7590;
  v412 = v347 ^ (16 * *(STACK[0x5A0] + (v411 - 974 * (((8613 * v411) >> 16) >> 7))));
  v413 = STACK[0x598];
  LODWORD(STACK[0x548]) ^= 0x1705626A ^ (LODWORD(STACK[0x56C]) + 1776747542);
  LODWORD(STACK[0x53C]) = LODWORD(STACK[0x420]) - 1804339465;
  LODWORD(STACK[0x568]) ^= LODWORD(STACK[0x520]) ^ 0x5690C703;
  v414 = LODWORD(STACK[0x540]) ^ 0x782C42D4 ^ LODWORD(STACK[0x544]);
  v415 = v336 ^ 0x782C42D4 ^ LODWORD(STACK[0x4A0]);
  v416 = STACK[0x528];
  v417 = LODWORD(STACK[0x528]) + v347;
  v418 = v347;
  v419 = LODWORD(STACK[0x498]) - v417;
  LODWORD(STACK[0x56C]) = v412 ^ 0xAE084C32 ^ (LODWORD(STACK[0x518]) - 378251724);
  v420 = v409 - 1375859012;
  v421 = (v336 + 1147749207) ^ 0x782C42D4 ^ v343;
  v422 = v336 - 562246321;
  v423 = v339 + v374;
  v424 = v339 + v374 - 909144178 + v375;
  v425 = v410 ^ 0xEA8214BA ^ v420;
  v426 = (562246320 - v336) & 0xB78B7138;
  v427 = (((v348 + v417) ^ v419 ^ 0xBF60139E) - 871545430) ^ (((v348 + v417) ^ v419 ^ 0xBEA4AC6A) - 842401186) ^ (((v348 + v417) ^ v419 ^ 0x1C4BFF4) + 1923738052);
  LODWORD(STACK[0x540]) = v423 + 1092582590;
  v428 = v348 + v416;
  v429 = v428 + 1449277782 + v427;
  v430 = v428 + 194304314;
  LODWORD(STACK[0x4F8]) = (v422 ^ 0x70F6F9BD) - 1480533563;
  v431 = ((v426 + (v422 & 0xB78B7138)) ^ v350) + v429;
  v432 = (v418 - 562246321) ^ 0x70F6F9BD;
  v433 = v424 + (v339 ^ 0xAB3C60F7);
  v434 = v432 + 570842796;
  LODWORD(STACK[0x4F4]) = -194304314 - v428;
  v435 = -1092582590 - v423;
  LODWORD(STACK[0x518]) = LODWORD(STACK[0x538]) ^ 0x1FE4DFE8;
  STACK[0x450] = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + LODWORD(STACK[0x558]) - 5301) - 12;
  LODWORD(STACK[0x544]) = STACK[0x3FC];
  LODWORD(STACK[0x598]) = v413;
  v436 = v414;
  v437 = LODWORD(STACK[0x558]) + 326;
  HIDWORD(v439) = v414;
  LODWORD(v439) = v414;
  v438 = v439 >> 6;
  LODWORD(STACK[0x45C]) = v437;
  v440 = STACK[0x568];
  v441 = v437 ^ 0x477C0D84 ^ LODWORD(STACK[0x568]);
  v442 = ((v414 << 7) ^ 0x89293FF7) & ((v414 >> 25) ^ 0xFFFFFFCB) | (v414 >> 25) & 8;
  v443 = STACK[0x56C];
  v444 = (LODWORD(STACK[0x56C]) ^ 0x477C1A06) & (v414 ^ 0x77EF0AC2);
  v445 = __PAIR64__(STACK[0x568], __ROR4__(v436, 11));
  v446 = v438 ^ v445 ^ v442;
  v447 = v441 & (LODWORD(STACK[0x56C]) ^ 0x4D3DC246);
  v448 = (LODWORD(STACK[0x568]) ^ 0x40EC0ED0) & (v415 ^ 0x782C42D4);
  LODWORD(STACK[0x510]) = v425;
  LODWORD(STACK[0x50C]) = v421;
  LODWORD(STACK[0x514]) = v421 ^ 0x782C42D4;
  v449 = v421 & 0x3CFEA3FC ^ v425 & 0xB0A5F197 ^ (v436 ^ 0x37764CBC) & (v425 ^ 0x477C1A06) ^ v415 & 0x79014D6 ^ v443 & 0xFC34816 ^ v444 ^ v448 ^ (v440 ^ 0x7B82B9FA) & (v421 ^ 0x782C42D4);
  LODWORD(STACK[0x528]) = v415;
  LODWORD(STACK[0x520]) = v436;
  v450 = (v436 ^ 0x879C9ACE) & (v421 ^ 0x782C42D4) ^ v421 & 0x4F27E5 ^ v415 & 0x90F105E5 ^ (v415 ^ 0x782C42D4) & (v436 ^ 0xE8DD4731) ^ v440 & 0x44D3F489 ^ v447 ^ v441 & (v425 ^ 0x9EE36CF);
  v451 = ((v446 ^ 0xFFB81361) - 2144745287) ^ ((v446 ^ 0x337C6848) + 1290646418) ^ ((v446 ^ 0x58A39A55) + 657605005);
  v452 = LODWORD(STACK[0x4F8]) + 1480533563;
  v453 = (LODWORD(STACK[0x4F8]) - ((2 * v452) & 0x5CAA78F2) - 2037095756) ^ v424 ^ v446 ^ 0xBA32DD05;
  LODWORD(v445) = v440;
  v454 = (v445 >> 6) ^ __ROR4__(v440, 11);
  LODWORD(v445) = __ROR4__(v440, 25);
  v455 = v435 + v424;
  v456 = ((v454 ^ v445 ^ 0x254A311B ^ (v432 + 570842796 - ((2 * v432) & 0x85245BA6) - 1601450201)) - v432) ^ ((v454 ^ v445 ^ 0x254A311B ^ (v429 - 1030607405 - ((2 * v429) & 0x85245BA6))) - v429) ^ ((v454 ^ v445 ^ 0x254A311B ^ (v453 - 1030607405 - ((2 * v453) & 0x85245BA6))) - v453);
  v457 = v430 - 1103448492 + v431;
  v458 = ((v456 ^ 0x34E427DF) - 295838115) ^ ((v456 ^ 0xE739CB5C) + 1031811808) ^ ((v456 ^ 0xD3DDEC83) + 157553921);
  v459 = (LODWORD(STACK[0x540]) ^ 0x4CB15289) & (2 * (STACK[0x540] & 0x88B012D0)) ^ STACK[0x540] & 0x88B012D0;
  v460 = ((2 * (LODWORD(STACK[0x540]) ^ 0x4DF15309)) ^ 0x8A8283B2) & (LODWORD(STACK[0x540]) ^ 0x4DF15309) ^ (2 * (LODWORD(STACK[0x540]) ^ 0x4DF15309)) & 0xC54141D8;
  v461 = (v460 ^ 0x10189) & (4 * v459) ^ v459;
  v462 = ((4 * (v460 ^ 0x45414049)) ^ 0x15050764) & (v460 ^ 0x45414049) ^ (4 * (v460 ^ 0x45414049)) & 0xC54141D8;
  v463 = (v462 ^ 0x5010150) & (16 * v461) ^ v461;
  v464 = ((16 * (v462 ^ 0xC0404099)) ^ 0x54141D90) & (v462 ^ 0xC0404099) ^ (16 * (v462 ^ 0xC0404099)) & 0xC54141D0;
  v465 = v463 ^ 0xC54141D9 ^ (v464 ^ 0x44000100) & (v463 << 8);
  v466 = v452 ^ LODWORD(STACK[0x540]) ^ (2 * ((v465 << 16) & 0x45410000 ^ v465 ^ ((v465 << 16) ^ 0x41D90000) & (((v464 ^ 0x81414049) << 8) & 0x45410000 ^ (((v464 ^ 0x81414049) << 8) ^ 0x41410000) & (v464 ^ 0x81414049) ^ 0x4000000)));
  v467 = (v430 ^ 0xBFB0A700) & (2 * (v430 & 0xBE3AB654)) ^ v430 & 0xBE3AB654;
  v468 = ((2 * (v430 ^ 0xBBE4A700)) ^ 0xBBC22A8) & (v430 ^ 0xBBE4A700) ^ (2 * (v430 ^ 0xBBE4A700)) & 0x5DE1154;
  v469 = (v468 ^ 0x59C0004) & (4 * v467) ^ v467;
  v470 = ((4 * (v468 ^ 0x4421154)) ^ 0x17784550) & (v468 ^ 0x4421154) ^ (4 * (v468 ^ 0x4421154)) & 0x5DE1154;
  v471 = (v470 ^ 0x5580140) & (16 * v469) ^ v469;
  v472 = ((16 * (v470 ^ 0x861004)) ^ 0x5DE11540) & (v470 ^ 0x861004) ^ (16 * (v470 ^ 0x861004)) & 0x5DE1150;
  v473 = v471 ^ 0x5DE1154 ^ (v472 ^ 0x5C01100) & (v471 << 8);
  v474 = ((v473 << 16) ^ 0x11540000) & (((v472 ^ 0x1E0014) << 8) & 0x5DE0000 ^ 0x1CE0000 ^ (((v472 ^ 0x1E0014) << 8) ^ 0x5E110000) & (v472 ^ 0x1E0014));
  v475 = (v473 << 16) & 0x5DE0000 ^ v473;
  v476 = v455 + 2001726768;
  v477 = v433 - 2001726768 + LODWORD(STACK[0x540]);
  v478 = LODWORD(STACK[0x4F8]) + 186860711;
  v479 = v476 ^ v478;
  v480 = (v466 ^ 0x80B09162) + v477;
  v481 = v480 + v478;
  v482 = v432 ^ v430 ^ (2 * (v475 ^ v474));
  v483 = v449 ^ v479 ^ v481;
  v484 = ((v483 ^ v450 ^ 0x634CD4FC) + 869077799) ^ ((v483 ^ v450 ^ 0xB11B0475) - 509951056) ^ ((v483 ^ v450 ^ 0xB963D889) - 371056812);
  v485 = STACK[0x4F4];
  v486 = (LODWORD(STACK[0x4F4]) + v429 + 1103448492) ^ (v432 - 1293672852);
  v487 = (v482 ^ 0xB72E94FC) + v457;
  v450 ^= 0x547C1200u;
  v488 = v484 - (((v483 ^ 0xC4DC5D7F) + 680728004) ^ ((v483 ^ 0x26D07848) - 895536907) ^ ((v483 ^ 0xDD443F37) + 822835084));
  v489 = (v450 ^ v486) - v486;
  v490 = v487 + v434 - 1864515648;
  v491 = (v450 ^ v490) - v490;
  v492 = ((v449 ^ 0x5B8B8067) + 774942972) ^ ((v449 ^ 0xC736EAB4) - 1299326423) ^ ((v449 ^ 0xA3F570D3) - 699514800);
  v493 = v489 ^ 0x20C2025C ^ (v491 + 549585500 - ((2 * v491) & 0x418404B8)) ^ (v488 - 1756265758);
  v494 = LODWORD(STACK[0x598]) ^ 0x3A;
  v495 = STACK[0x450];
  v496 = LODWORD(STACK[0x598]) ^ (v494 - 465681635) ^ 0x8686482F ^ *(STACK[0x450] + 4 * ((151 * (v413 ^ 0x31) + 10117) % 0xC0u));
  LOWORD(v491) = 53 * LODWORD(STACK[0x598]);
  v497 = (v477 ^ 0x760923CD) + 1894241228;
  v498 = v481 - v479;
  v499 = LODWORD(STACK[0x540]) + LODWORD(STACK[0x53C]) + v451;
  v500 = v498 ^ (v479 + 1276492233);
  v497 ^= 0x171CC5F6u;
  LODWORD(STACK[0x4F8]) = v479 + v497;
  v501 = ((v457 ^ 0x760923CD) + 1894241228) ^ 0x171CC5F6;
  v502 = STACK[0x580];
  LODWORD(STACK[0x500]) = v499 + v496 + *(STACK[0x580] + 4 * (v491 - 275 * ((((56481 * v491) >> 16) + (((v491 - ((56481 * v491) >> 16)) & 0xFFFE) >> 1)) >> 8))) - v487 + v493;
  v503 = v479 + v497 - 1807916635 + (v480 ^ 0x4E56E8E1);
  LODWORD(STACK[0x53C]) = v503;
  LODWORD(STACK[0x4EC]) = v500;
  v504 = ((v500 & 0x8420032 ^ 0x7ECEBFF6 ^ (v500 & 0x78461D36 ^ 0x768CBFC4) & (v500 | 0x688A2C0)) + 31042056) ^ *(v495 + 4 * ((151 * v494) % 0xC0u));
  v505 = v485 + LODWORD(STACK[0x544]) + v492 + v458 + *(v502 + 4 * (v491 + 11024 - 275 * ((((56481 * (v491 + 11024)) >> 16) + (((v491 + 11024 - ((56481 * (v491 + 11024)) >> 16)) & 0xFFFE) >> 1)) >> 8))) + v480 - 1949682208 + (((v504 ^ 0x3FBFF8F6) - 46270440) ^ ((v504 ^ 0x2CD23F2F) - 296730673) ^ ((v504 ^ 0x5CFA374A) - 1636288596));
  LODWORD(STACK[0x4E0]) = v505;
  LODWORD(STACK[0x544]) = v500 ^ v497;
  v506 = v503 - 478895199 + (((v500 ^ v497 ^ 0x5C8FFAB8) - 1997779397) ^ ((v500 ^ v497 ^ 0x89EF17DC) + 1569497951) ^ ((v500 ^ v497 ^ 0xD560ED64) + 16996839));
  LODWORD(STACK[0x4E8]) = v506;
  v507 = v506 ^ 0x6E5347A2;
  LODWORD(STACK[0x4D0]) = v506 ^ 0x6E5347A2;
  v508 = v500 ^ v497 ^ (v479 + 1276492233);
  v509 = ((v506 ^ 0x6E5347A2 ^ (v479 + 1276492233) ^ 0xF38966A9) + 209099095) ^ ((v506 ^ 0x6E5347A2 ^ (v479 + 1276492233) ^ 0xC0619336) + 1067347146) ^ ((v506 ^ 0x6E5347A2 ^ (v479 + 1276492233) ^ 0x97DC5D18) + 1747165928);
  v510 = (((v497 - v509 - 635664539) ^ v507 ^ v508 ^ 0x93047A29) - 626714153) ^ (((v497 - v509 - 635664539) ^ v507 ^ v508 ^ 0xFA01A832) - 1281307698) ^ (((v497 - v509 - 635664539) ^ v507 ^ v508 ^ 0xCD317A9C) - 2070931100);
  v511 = ((v507 ^ v508 ^ 0x44B7F029) + 219583447) ^ ((v507 ^ v508 ^ 0x2BCAED85) + 1651215995) ^ ((v507 ^ v508 ^ 0xCB49B52B) - 2098669867);
  v512 = (v440 & 0x1B4B0254 ^ 0x51F37A71) & (v440 & 0x1B4B0254 ^ 0xFCB778F3) ^ v440 & 0x120B0054;
  v513 = (((v507 ^ v508 ^ 0x53C8BD2E) + 443145938) ^ ((v507 ^ v508 ^ 0x1A6A003F) + 1405838273) ^ ((v507 ^ v508 ^ 0xED961596) - 1539869078)) + (((v508 ^ 0x27314DC4) - 1287626338) ^ ((v508 ^ 0x92DD3CB3) + 111939819) ^ ((v508 ^ 0x37906F82) - 1545518116));
  v514 = v509 - v511;
  v515 = (((v512 ^ 0x98FBC18C) - 61104078) ^ ((v512 ^ 0x9703D862) - 207373856) ^ ((v512 ^ 0x440063CB) + 547357303)) + 1193760275 + v509 - v511;
  LODWORD(STACK[0x4B8]) = v515;
  v516 = STACK[0x548];
  v510 += 823139484;
  LODWORD(v502) = v509 + 353967554 + v510;
  LODWORD(STACK[0x498]) = v513;
  v517 = (((v515 ^ 0xD78C4391) - 1124681352) ^ ((v515 ^ 0x2D51B2F2) + 1177241621) ^ ((v515 ^ 0x664E8694) + 221543539)) + 1247572711 + v502;
  LODWORD(STACK[0x4A8]) = v517;
  LODWORD(STACK[0x48C]) = v513 - 1975869632;
  v518 = (v513 - 1975869632) ^ v516 ^ (v517 + 659528078);
  v519 = STACK[0x59C];
  v520 = (((v518 ^ LODWORD(STACK[0x59C]) ^ 0xE9406173) + 162722488) ^ ((v518 ^ LODWORD(STACK[0x59C]) ^ 0x8495E41A) + 1684502495) ^ ((v518 ^ LODWORD(STACK[0x59C]) ^ 0xCD33CFD) - 333336774)) - (((v518 ^ 0x3798EFC1) - 680887290) ^ ((v518 ^ 0x6598AC44) - 2056634495) ^ ((v518 ^ 0x2CE225F9) - 871320002));
  v521 = v490 - v486;
  v486 += 1276492233;
  LODWORD(STACK[0x548]) = v501 + v486;
  v522 = (v487 ^ 0x4E56E8E1) + v501 + v486;
  LODWORD(STACK[0x4F4]) = v522;
  v523 = v521 ^ v486 ^ 0x49108BDB;
  LODWORD(STACK[0x490]) = v523;
  v524 = v521 ^ v501;
  LODWORD(STACK[0x484]) = v524;
  v525 = ((v523 ^ (v501 + 1225821147 - ((2 * v501) & 0x922117B6))) + v522) ^ 0xCA67EF25;
  LODWORD(STACK[0x4F0]) = v525;
  v526 = (v501 - (v525 ^ v486) + 2119249900) ^ v525 ^ v524;
  v527 = (v525 ^ v524) + (v524 ^ 0x827C1EF5);
  v528 = (v525 ^ v486) - (v525 ^ v524);
  LODWORD(v495) = v519 ^ 0x1FE4DFE8;
  v529 = v526 + (v525 ^ v486);
  LODWORD(STACK[0x4AC]) = v528 ^ 0x9C9377F7;
  v530 = v528;
  LODWORD(STACK[0x49C]) = v528;
  v531 = v529 + (v528 ^ 0x9C9377F7);
  LODWORD(STACK[0x4A0]) = v527;
  LODWORD(STACK[0x4C0]) = v527 - 1914856090;
  v532 = ((v516 ^ 0xFA7D56BF) + 92449089) ^ ((v516 ^ 0xE6D22887) + 422434681) ^ ((v516 ^ 0x624D1844) - 1649219652);
  LODWORD(STACK[0x4A4]) = v529;
  LODWORD(STACK[0x4CC]) = v529 - v527;
  v533 = v530 + v526 - (v529 - v527) + v531 + 1232910675;
  LODWORD(STACK[0x488]) = v502;
  LODWORD(STACK[0x4C8]) = v502 - v513;
  v534 = v514 + v510 + (((v515 ^ 0xD78C4391) - 1124681352) ^ ((v515 ^ 0x2D51B2F2) + 1177241621) ^ ((v515 ^ 0x664E8694) + 221543539)) + 1247572711 + v513 + 1991788319;
  LODWORD(STACK[0x4B0]) = v534;
  LODWORD(STACK[0x4B4]) = v534 ^ 0x75EDFB71;
  v535 = v505 - v529 + (v534 ^ 0x75EDFB71) + 351535752 + (((v495 ^ (v527 - 1914856090)) - (v527 - 1914856090)) ^ 0x84877D23 ^ ((v495 ^ (v531 - 115345705)) - (v531 - 115345705) - 2071495389 - ((2 * ((v495 ^ (v531 - 115345705)) - (v531 - 115345705))) & 0x90EFA46)) ^ (v520 + 471649128));
  LODWORD(v495) = v531 - 115345705 - ((v527 - 1914856090) ^ 0x4CB2ED32);
  v536 = STACK[0x5A0];
  v537 = *(STACK[0x5A0] + 11 * (v535 >> 28));
  v538 = STACK[0x500];
  v539 = LODWORD(STACK[0x500]) + 808303100;
  LODWORD(STACK[0x4DC]) = v539;
  LODWORD(STACK[0x4BC]) = v533;
  v540 = v532 + v539 + (v533 ^ 0x8A12048E);
  v541 = *(v536 + 11 * (HIWORD(v535) & 0xF));
  v542 = ((v537 << 12) ^ (*(v536 + 11 * (HIBYTE(v535) & 0xF)) << 8) ^ 0xFDEE) & ~v541 | v541 & 0x11111111;
  v543 = ((*(v536 + 11 * ((v535 >> 20) & 0xF)) << 20) | (*(STACK[0x5A0] + 11 * ((v535 >> 8) & 0xF)) << 8)) ^ (*(STACK[0x5A0] + 11 * (v535 >> 12)) << 12);
  v544 = v543 ^ (v542 << 16);
  LODWORD(STACK[0x540]) = v535;
  v545 = *(STACK[0x5A0] + 11 * (v535 & 0xF));
  v546 = ((v544 ^ 0x3061FAE2) & (v545 ^ 0xFFFFFFF6) | v545 & 0x1D) ^ (16 * *(STACK[0x5A0] + 11 * (v535 >> 4)));
  LODWORD(v495) = v533 ^ v495;
  LODWORD(STACK[0x59C]) = v495;
  v547 = v540 - 2061410292 + v502;
  v548 = *(STACK[0x5A0] + 11 * (HIWORD(v547) & 0xF));
  v549 = (*(STACK[0x5A0] + 11 * (v547 >> 28)) << 12) ^ (*(STACK[0x5A0] + 11 * (HIBYTE(v547) & 0xF)) << 8) ^ 0x1505847A;
  v550 = (v549 & ~v548 | v548 & 0x85) ^ (16 * *(STACK[0x5A0] + ((v547 >> 20) & 0xF) * (((v495 & 0xBFFF59F ^ 0xBFFF59F) + (v495 & 0xBFFF59F)) & (((131579446 - ((v513 - 1975869632) ^ 0xCC139538)) & 0x4401ECF) + ((((v513 - 1975869632) ^ 0xCC139538) + 2638281) & 0x4401ECF)) & ((v544 & 0xFB7A800 ^ 0xDA60000) + (v544 & 0xFB7A800 ^ 0x211A82B))) % 0x3CE));
  LODWORD(v495) = *(STACK[0x5A0] + 11 * ((v547 >> 8) & 0xF));
  v551 = (((v550 << 16) ^ 0xF06EC343) & ((v495 << 8) ^ 0xFFFFFB6B) & 0xFFFFC3FF | (((v495 >> 2) & 0xF) << 10)) ^ (*(STACK[0x5A0] + 11 * (v547 >> 12)) << 12);
  LODWORD(v495) = *(STACK[0x5A0] + 11 * (v547 & 0xF));
  LOBYTE(v547) = *(STACK[0x5A0] + 11 * (v547 >> 4)) ^ (((v551 ^ 0xAA7026D0) & ~v495 | v495 & 0x60) >> 4);
  v552 = v545 & 0xF;
  v553 = v552 | (16 * (v495 & 0xF));
  LODWORD(v536) = 11 * (*(STACK[0x5A0] + (11 * v553 - 974 * ((94743 * v553 + 8526870) >> 23) + 990)) ^ LODWORD(STACK[0x564]));
  LOWORD(v535) = (v536 + 990) % 0x3CEu;
  LODWORD(v495) = LODWORD(STACK[0x594]) + 11 * (*(STACK[0x5A0] + (11 * v553 + 3894 - 974 * (((8613 * (11 * v553 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v536 + 3894) % 0x3CEu) >> 4));
  v554 = STACK[0x594];
  LODWORD(v536) = ((v546 >> 4) | (16 * (v547 & 0xF))) ^ 0x9E;
  v555 = 11 * v536;
  LOWORD(v536) = *(STACK[0x5A0] + (11 * v536 - 974 * ((94743 * v536 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v495 - 974 * (((8613 * v495) >> 16) >> 7))));
  LOBYTE(v555) = *(STACK[0x5A0] + (v555 + 3894 - 974 * (((8613 * (v555 + 3894)) >> 16) >> 7)));
  LOWORD(v495) = (v555 & 0x5A ^ 0x5A) + (v555 & 0x5A) + v536;
  v556 = STACK[0x560];
  LODWORD(v536) = *(STACK[0x5A0] + (LOWORD(STACK[0x560]) + 11 * v536) % 0x3CEu) >> 4;
  LODWORD(v536) = LODWORD(STACK[0x594]) + 11 * (((v555 & 0xF4 ^ 0xB1 ^ (v536 | 0xCB)) & (~(v536 ^ v555) | 0xF4) & 0xFE | (v536 ^ v555) & 1) ^ 0x7A);
  v557 = (v546 >> 8) & 0xF;
  v558 = 11 * (((v547 & 0xF0 | 0x9105) & (v557 ^ 0x9DF7) | (v546 >> 8) & 0xA) ^ 0xFFFF915F);
  LOWORD(v536) = 11 * (*(STACK[0x5A0] + (v558 + 990) % 0x3CEu) ^ (16 * *(STACK[0x5A0] + (v536 - 974 * (((8613 * v536) >> 16) >> 7)))));
  v559 = (11 * v495) % 0x3CEu;
  v560 = ((*(STACK[0x5A0] + (v558 + 3894) % 0x3CEu) ^ (*(STACK[0x5A0] + (v536 + 3894) % 0x3CEu) >> 4)) + 90) * (((v538 + 808303114) & 0xB) + ((-808303099 - v538) & 0xB));
  v561 = 11 * ((((v551 >> 8) & 0xF0 ^ 0x691C) & ((v543 >> 12) ^ 0x69FC) & 0xFFFFFFFC | (v544 >> 12) & 3) ^ 0x69DC);
  LOWORD(v495) = (v536 + 990) % 0x3CEu;
  LOWORD(v560) = 11 * (*(STACK[0x5A0] + (v561 + 990) % 0x3CEu) ^ (16 * *(STACK[0x5A0] + (v560 - 974 * (((8613 * v560) >> 16) >> 7)))));
  LOWORD(v536) = (v560 + 990) % 0x3CEu;
  v562 = *(STACK[0x5A0] + (v561 + 3894) % 0x3CEu) ^ (*(STACK[0x5A0] + (v560 + 3894) % 0x3CEu) >> 4);
  LODWORD(v502) = HIWORD(v544) & 0xF;
  LODWORD(STACK[0x480]) = v502;
  v563 = 11 * (((v551 >> 12) & 0x70 ^ 0xFFFFC03F) & (v502 ^ 0xC07E) ^ ((v551 >> 12) & 0x80 | 0xC070));
  LOWORD(v562) = 11 * (*(STACK[0x5A0] + (v563 + 990 - 974 * (((34451 * (((v563 + 990) >> 1) & 0xFFF)) >> 16) >> 8))) ^ (16 * *(STACK[0x5A0] + (v554 + 11 * v562 - 974 * (((8613 * (v554 + 11 * v562)) >> 16) >> 7)))));
  LOWORD(v413) = (v562 + 990) % 0x3CEu;
  v564 = (v544 >> 20) & 0xF;
  LODWORD(STACK[0x47C]) = v564;
  v565 = (v550 & 0xF0 ^ 0x7B2608D3) & (v564 ^ 0xFFA67CFD) | (v544 >> 20) & 0xC;
  v566 = v554 + 11 * (*(STACK[0x5A0] + (v563 + 3894 - 974 * (((34451 * (((v563 + 3894) >> 1) & 0xFFF)) >> 16) >> 8))) ^ (*(STACK[0x5A0] + (v562 + 3894) % 0x3CEu) >> 4));
  LOWORD(v563) = v556 + 11 * (v565 ^ 0x8AF);
  LOWORD(v565) = 11 * (*(STACK[0x5A0] + (11 * (((2 * (v565 ^ 0x8AF)) & 0xB4) + (v565 ^ 0x8F5))) % 0x3CEu) ^ (16 * *(STACK[0x5A0] + (v566 - 974 * (((8613 * v566) >> 16) >> 7)))));
  LOWORD(v566) = v565 + 990;
  v567 = v554 + 11 * (*(STACK[0x5A0] + v563 % 0x3CEu) ^ (*(STACK[0x5A0] + (v565 + 3894) % 0x3CEu) >> 4));
  v568 = 11 * (((v550 >> 4) & 0xF0 ^ 0xFFFFFFBF) & (HIBYTE(v544) & 0xF ^ 0xA7F6) ^ 0xFFFFA7FB);
  LOWORD(v567) = 11 * (*(STACK[0x5A0] + (v568 + 990) % 0x3CEu) ^ (16 * *(STACK[0x5A0] + (v567 - 974 * (((8613 * v567) >> 16) >> 7)))));
  v569 = *(STACK[0x5A0] + v535) ^ (16 * *(STACK[0x5A0] + v559)) ^ (*(STACK[0x5A0] + v495) << 8) ^ (*(STACK[0x5A0] + v536) << 12) ^ (*(STACK[0x5A0] + v413) << 16) ^ (*(STACK[0x5A0] + v566 % 0x3CEu) << 20) ^ (*(STACK[0x5A0] + (v567 + 990) % 0x3CEu) << 24);
  LODWORD(v495) = v554 + 11 * (*(STACK[0x5A0] + (v568 + 3894) % 0x3CEu) ^ (*(STACK[0x5A0] + (v567 + 3894) % 0x3CEu) >> 4));
  v570 = v542 >> 12;
  LODWORD(v445) = (4 * (*(STACK[0x5A0] + (v554 + 11 * (*(STACK[0x5A0] + (v554 + 11 * ((((v549 >> 8) & 0xF0 ^ 0x2A84) & (v570 ^ 0xFEF1) | v570 & 0xFFFB) ^ 0x2A0F)) % 0x3CEu) ^ (16 * *(STACK[0x5A0] + (v495 - 974 * (((8613 * v495) >> 16) >> 7)))))) % 0x3CEu) & 0xF)) ^ __ROR4__(v569 ^ 0xD1E66CD9, 26) ^ 0x40FFB364;
  HIDWORD(v445) = v445;
  v571 = v445 >> 6;
  v572 = 11 * ((v552 & 0xFFFFFF0F | (16 * (v571 & 0xF))) ^ 0x40) + 7788;
  LODWORD(v495) = 11 * ((v571 & 0xF0 | (v546 >> 4)) ^ 0x1E) + 7788;
  LOWORD(v567) = v495 - 974 * (((8613 * v495) >> 16) >> 7);
  LODWORD(v495) = (*(STACK[0x5A0] + (11 * ((((v571 >> 8) | 0xFF0F) & ((v543 >> 12) ^ 0xD597) | (v571 >> 8) & 0x60) ^ 0xD597) + 7788) % 0x3CEu) << 12) ^ (*(STACK[0x5A0] + (11 * (((((v571 >> 4) & 0x70 ^ 0xFFDF) & (v557 ^ 0xFD75) | (v571 >> 4) & 0x80) ^ 0xFD7F) + (HIBYTE(v544) & 0xC4) + (HIBYTE(v544) & 0xC4 ^ 0xC4)) + 5632) % 0x3CEu) << 8);
  v573 = *(STACK[0x5A0] + (v572 - 974 * (((8613 * v572) >> 16) >> 7)));
  LODWORD(STACK[0x470]) = v573;
  v574 = v573 ^ (16 * *(STACK[0x5A0] + v567));
  LODWORD(STACK[0x46C]) = v574;
  v575 = v495 ^ v574;
  v576 = v495 ^ v574 ^ 0xB1B8EE26;
  LODWORD(STACK[0x468]) = v576;
  LODWORD(STACK[0x460]) = (11 * (v495 >> 12) + 7590) % ((v576 & 0x3CE ^ 0x206) + (~v575 & 0x3CEu));
  v577 = STACK[0x554];
  v578 = STACK[0x534];
  v579 = STACK[0x518];
  LODWORD(v495) = LODWORD(STACK[0x524]) ^ 0x7EE2667C;
  LODWORD(STACK[0x548]) = STACK[0x524];
  LODWORD(STACK[0x4FC]) = v578;
  LODWORD(STACK[0x44C]) = v495;
  LODWORD(STACK[0x500]) = v577;
  LODWORD(STACK[0x448]) = v577 ^ 0x1FE4DFE8;
  LODWORD(STACK[0x554]) = v579;
  v580 = (LODWORD(STACK[0x498]) - 61013542) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x4B8]);
  v581 = (LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x4A0])) - LODWORD(STACK[0x4A0]);
  LODWORD(v495) = (((LODWORD(STACK[0x510]) ^ 0x177AC0DA) - 393920730) ^ ((LODWORD(STACK[0x510]) ^ 0xC4E4D788) + 991635576) ^ ((LODWORD(STACK[0x510]) ^ 0x94E20D54) + 1797124780)) + 1577258174;
  LODWORD(STACK[0x538]) = (((LODWORD(STACK[0x50C]) ^ 0xE4BF3523 ^ LODWORD(STACK[0x49C])) - LODWORD(STACK[0x4AC])) ^ 0x29979D70 ^ (v581 + 697802096 - ((2 * v581) & 0x532F3AE0)) ^ ((((v580 ^ LODWORD(STACK[0x50C]) ^ 0x9FCBB747) - 1030339787) ^ ((v580 ^ LODWORD(STACK[0x50C]) ^ 0x2A6E89BB) + 1999863241) ^ ((v580 ^ LODWORD(STACK[0x50C]) ^ 0x166611D9) + 1262216619)) - (((v580 ^ 0xA3221797) - 25173019) ^ ((v580 ^ 0xB299EAAA) - 272359718) ^ ((v580 ^ 0xCA5490CC) - 1760992064)) - 2011972052)) - LODWORD(STACK[0x4A4]);
  LODWORD(STACK[0x544]) = (((v495 ^ 0xE05DBBC0) + 1607901184) ^ ((v495 ^ 0x4C1ECA2A) - 208277994) ^ ((v495 ^ 0x453A7CA2) - 89040738)) + ((((2 * v495) & 0xD2F21A90 ^ 0x3CD6EF65) - 271094757) ^ (((2 * v495) & 0xD2F21A90 ^ 0x8856DDEA) + 1532452502) ^ (((2 * v495) & 0xD2F21A90 ^ 0xB480328F) + 1736552945)) - 1835135307 + LODWORD(STACK[0x488]);
  LODWORD(v536) = STACK[0x48C];
  v582 = (*(STACK[0x5A0] + (11 * (((BYTE2(v571) & 0xF0 ^ 0x902C) & (LOWORD(STACK[0x47C]) ^ 0xB6F3) & 0xFFFC | (v544 >> 20) & 3) ^ 0x90CE) + 7788) % 0x3CEu) << 20) ^ (*(STACK[0x5A0] + (11 * (((v571 >> 12) & 0xC0 ^ 0xFFBF) & (LOWORD(STACK[0x480]) ^ 0x83C4) ^ ((v571 >> 12) & 0x30 | 0x5805) ^ 0xDBDF) + 7788) % 0x3CEu) << 16);
  v583 = v575 ^ v582 ^ 0x2A9C0057;
  v584 = 11 * (((v571 >> 20) & 0xF0 | HIBYTE(v544) & 0xF) ^ 0xD) + 7788;
  v585 = 11 * ((((16 * (v571 >> 28)) ^ 0x4F5) & (v570 ^ 0xB7FA) | v570 & 0xAAAAAAAA) ^ 0x4BF) + 7788;
  v586 = STACK[0x4B0];
  v587 = v583 ^ (*(STACK[0x5A0] + (v584 - 974 * (((8613 * v584) >> 16) >> 7))) << 24) ^ ((*(STACK[0x5A0] + v585 % 0x3CEu) << 28) | 0x1000000);
  v588 = 11 * ((HIBYTE(v587) ^ 0x2B) >> (111 - (STACK[0x4B0] & 0x70) - (STACK[0x4B4] & 0x70) + 5)) + 7590;
  v589 = 11 * (HIBYTE(v587) & 0xF ^ 0xB) + 7590;
  v590 = 11 * (HIWORD(v583) & 0xF ^ 0xC) + 7590;
  v591 = *(STACK[0x5A0] + (v590 - 974 * (((8613 * v590) >> 16) >> 7)));
  v592 = ((*(STACK[0x5A0] + (v588 - 974 * (((8613 * v588) >> 16) >> 7))) << 12) ^ (*(STACK[0x5A0] + (v589 - 974 * (((8613 * v589) >> 16) >> 7))) << 8) ^ 0xFBEF) & ~v591 | v591 & 0x10;
  v593 = 11 * ((LODWORD(STACK[0x468]) >> 8) & 0xF ^ 0xE) + 7590;
  v594 = ((*(STACK[0x5A0] + (11 * ((v582 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v582 >> 20) & 0xF) + 7590)) >> 16) >> 7))) << 12) | (16 * *(STACK[0x5A0] + LODWORD(STACK[0x460])))) ^ *(STACK[0x5A0] + (v593 - 974 * (((8613 * v593) >> 16) >> 7)));
  v595 = 11 * (LODWORD(STACK[0x46C]) >> 4) + 7590;
  v596 = STACK[0x4C0];
  v597 = LODWORD(STACK[0x4C8]) - 787228287;
  v598 = LODWORD(STACK[0x4B0]) ^ ((LODWORD(STACK[0x48C]) ^ 0xB34D12CD) + 659528078 + LODWORD(STACK[0x4A8]) + 1);
  LODWORD(STACK[0x518]) = LODWORD(STACK[0x4C0]) ^ (v592 << 16) ^ *(STACK[0x5A0] + (11 * (STACK[0x470] & 0xF) + 7590 - 974 * (((8613 * (11 * (STACK[0x470] & 0xF) + 7590)) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v595 - 974 * (((8613 * v595) >> 16) >> 7)))) ^ (v594 << 8);
  LODWORD(STACK[0x524]) = ((v596 ^ 0xFFD08F8D) - ((2 * (v596 ^ 0xFFD08F8D)) & 0xBD2271E6) - 560908045) ^ LODWORD(STACK[0x4BC]) ^ 0xAB7CC382 ^ (LODWORD(STACK[0x59C]) + 214402696);
  LODWORD(STACK[0x534]) = (v598 + 214402696) ^ ((v597 ^ 0x81388396) - 641090009);
  v599 = STACK[0x598];
  LODWORD(STACK[0x53C]) = LODWORD(STACK[0x538]) - 2057198095;
  v600 = LODWORD(STACK[0x524]) - 785351368 + ((LODWORD(STACK[0x59C]) + 2012781340) ^ ((v596 ^ 0xFFD08F8D) - 1931630738));
  v601 = *(STACK[0x578] + 8 * ((123 * (v599 == 63)) ^ LODWORD(STACK[0x558])));
  LODWORD(STACK[0x540]) = (((LODWORD(STACK[0x534]) ^ 0xE32EAB55) + 649748681) ^ ((LODWORD(STACK[0x534]) ^ 0xB2E73600) + 2004090270) ^ ((LODWORD(STACK[0x534]) ^ 0x51C99D55) - 1805822263)) - (v536 ^ 0xFFD08F8D) - (((v598 + 2012781340) ^ ((v536 ^ 0xFFD08F8D) - 1931630738)) - 785351368 + (v536 ^ v586 ^ 0xA0C2DC87 ^ (v598 - 2 * ((v598 + 214402696) & 0x2AFFA87F ^ v598 & 4) + 935800579))) + 1064093963;
  return v601((v596 ^ 0xFFD08F8D) - v600 - 1806387405);
}

uint64_t sub_1968E194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x918] = v7;
  v8 = STACK[0x708];
  STACK[0x920] = STACK[0x708];
  return (*(a6 + 8 * (((v7 - v8 > ((229 * (v6 ^ 0x43Du)) ^ 0x1654uLL)) * (((v6 + 2123467593) & 0x816E71FF) + 2325)) | v6)))();
}

uint64_t sub_1968E1A70()
{
  v5 = v2 - 1790939281 * (((&v5 ^ 0xABF8AA52) & 0x2921F211 | ~(&v5 ^ 0xABF8AA52 | 0x2921F211)) ^ 0x85FA87FD) + 4571;
  v6 = v4;
  (*(v0 + 8 * (v2 ^ 0x1F51)))(&v5);
  return (v1 - 1906281716);
}

uint64_t sub_1968E1A7C(uint64_t a1)
{
  v4 = (v2 + 1375988607) & 0xADFC17FD;
  if (*(a1 + 24))
  {
    v5 = *(a1 + 36) + v1 == 1159615989;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v3 + 8 * ((v6 * (((v4 + 987467101) & 0xC5245FDE) - 842)) ^ v4)))();
}

uint64_t sub_1968E1B64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = STACK[0x43C];
  v15 = LODWORD(STACK[0x43C]) >= LODWORD(STACK[0x424]);
  v16 = *(STACK[0x430] + (a3 + LODWORD(STACK[0x440])));
  v17 = a3 * a8 + v10 - (((((a3 * a8 + v10) * v9) >> 32) + ((a3 * a8 + v10 - (((a3 * a8 + v10) * v9) >> 32)) >> 1)) >> 9) * v11;
  LODWORD(STACK[0x588]) = v8 - 4107;
  *(v13 + v17) ^= v16;
  v19 = !v15;
  if (v19 != (a3 + 1) > 0xA24E8A7A)
  {
    v20 = v19;
  }

  else
  {
    v20 = a3 + 1571911046 < v14;
  }

  v18 = a3 * a8 + v12 - (((((a3 * a8 + v12) * v9) >> 32) + ((a3 * a8 + v12 - (((a3 * a8 + v12) * v9) >> 32)) >> 1)) >> 9) * v11;
  *(v13 + v18) ^= (*(STACK[0x428] + (743 * ((v8 - 4107) ^ a3 & 0xF ^ 0x1DDu) + 628578) % 0x3B0) + 112) ^ 0x7A;
  return (*(a4 + 8 * (((8 * !v20) | (16 * !v20)) ^ v8)))();
}

uint64_t sub_1968E1C94@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + 4 * v3);
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * (((v3 - (v1 & 0x1FFFFFFF8) == -8) * ((2 * v4) ^ 0x742)) ^ v4)))();
}

uint64_t sub_1968E1CF4@<X0>(char a1@<W4>, int a2@<W5>, int a3@<W8>)
{
  v9 = (v6 + 4 * v4);
  v10 = v4 + 1;
  *v9 = *(v8 + 4 * (*(v6 + 4 * v10) & 1)) ^ v9[397] ^ ((*(v6 + 4 * v10) & 0x7FFFFFFE | v3 & 0x80000000) >> (((a3 + a1) & v5) + 43));
  return (*(v7 + 8 * (((v10 == 227) * a2) ^ a3)))();
}

uint64_t sub_1968E1DA0()
{
  v8 = (v5 - 2005) | 0x245;
  v9 = v3 + (v8 ^ 0x42E4ECF6) * *v2;
  v10 = ((((v7 - 136) | 0x2244DDBB) - (v7 - 136) + ((v7 - 136) & 0xDDBB2240)) ^ 0x14535C22) * v6;
  *(v1 + 16) = *v0;
  *(v7 - 132) = v10 + v5 + 72 - 2884;
  *(v7 - 128) = v9 ^ v10;
  v11 = (*(v4 + 8 * ((v5 + 72) ^ 0xAAC)))(v7 - 136);
  return (*(v4 + 8 * (((*(v7 - 136) == 1906281716) * (v8 - 2581)) | v8)))(v11);
}

uint64_t fp_dh_e4409b7c21fcd92a66c174b0d655cc71(uint64_t result)
{
  v1 = 1068996913 * (((result | 0x6B664954B3921AB5) - (result & 0x6B664954B3921AB5)) ^ 0xFF077DC7667CFB24);
  v2 = *(result + 12) + v1;
  v3 = *(result + 32);
  v4 = *(result + 40) ^ v1;
  v5 = *(result + 8) ^ v1;
  v6 = *(result + 4) ^ v1;
  v7 = *(result + 16);
  v8 = v7 - v1 >= v3 - v1;
  v9 = v7 != v3;
  if ((v4 & 1) == 0)
  {
    v8 = v9;
  }

  if (v8)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  *result = v5 ^ v10;
  return result;
}

uint64_t sub_1968E1FE8@<X0>(unsigned int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W5>, int a5@<W6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v17 = (v13 + 32 * a6);
  v18 = *(v9 + 9) * v10 % a1;
  *v17 = a7 + ((a5 + ((v18 + a3 - (a4 & (2 * v18))) << 10) + v14) ^ a2);
  *v7 += 1024;
  v19 = *(v9 + 9) * (v10 + 1) % a1;
  v17[1] = a7 + ((v15 + ((v19 + a3 - (a4 & (2 * v19))) << 10)) ^ a2);
  *v7 += 1024;
  v20 = *(v9 + 9) * (v10 + 2) % a1;
  v17[2] = a7 + ((v15 + ((v20 + a3 - (a4 & (2 * v20))) << 10)) ^ a2);
  *v7 += 1024;
  v21 = *(v9 + 9) * (v10 + 3) % a1;
  v17[3] = a7 + ((v15 + ((v21 + a3 - (a4 & (2 * v21))) << 10)) ^ a2);
  *v7 += 1024;
  return (*(v8 + 8 * (((a6 + 1 != v11) * v16) ^ v12)))();
}

uint64_t fp_dh_d463b3d3adefbbf2e84adb778549c2af()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_46115ae06671c9f4a5dc8000fc9c46c0) ^ 0x55)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_46115ae06671c9f4a5dc8000fc9c46c0) ^ 0x55))] ^ 0x60]) + 312);
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v0) ^ 0x55))) ^ 0x60u) - 8) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v0) ^ 0x55))) + 562);
  v2 = (*(v1 - 4) ^ *v0) - &v10;
  v3 = 810526117 * (v2 + 0x3983E51A1E6C17ABLL);
  v4 = 810526117 * (v2 ^ 0xC67C1AE5E193E855);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = -91 * ((v4 + *v0) ^ 0x55);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + v4) ^ 0x7Fu)) ^ v4) + 335);
  *v5 = 1906281716;
  v12 = 750 - 654144011 * (&v11 ^ 0x2CD47D9C);
  v6 = off_1F0B0C120 - 8;
  v7 = off_1F0B0BBB0 - 12;
  v13 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + (-91 * ((*(v1 - 4) - *v0) ^ 0x55)) - 8) ^ 0x1Du) - 12) ^ (-91 * ((*(v1 - 4) - *v0) ^ 0x55))) - 137) - 4;
  LOBYTE(v4) = -91 * ((*(v1 - 4) - *v0) ^ 0x55);
  v8 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_46115ae06671c9f4a5dc8000fc9c46c0) ^ 0x55)) ^ fp_dh_222236759e9e7014a4b1132c99a61f18[fp_dh_a39239c15ed61b79f612ca2106c00643[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_46115ae06671c9f4a5dc8000fc9c46c0) ^ 0x55))] ^ 0x5C]) + 504) - 4;
  (*&v8[8 * (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v4 - 4) ^ 0xD2u) - 4) ^ v4) + 53208])(&v11);
  v13 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((*(v1 - 4) + *v0) ^ 0x55)) ^ v7[v6[(-91 * ((*(v1 - 4) + *v0) ^ 0x55))] ^ 0xB]) + 233);
  v12 = 750 - 654144011 * (&v11 ^ 0x2CD47D9C);
  result = (*&v8[8 * ((-91 * ((*(v1 - 4) + *v0) ^ 0x55)) ^ v7[v6[(-91 * ((*(v1 - 4) + *v0) ^ 0x55))] ^ 0x16]) + 53744])(&v11);
  *v5 = (v11 ^ 0x75BFEFF4) - 69231360 + ((2 * v11) & 0xEB7FDFE8);
  return result;
}

void fp_dh_a13f034766556a0897f8679cc62ae5b7(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 455395931 * ((-2 - ((a1 | 0xAEC4C450) + (~a1 | 0x513B3BAF))) ^ 0x27CA6563);
  v2 = *(*(a1 + 8) + 4);
  if (v2 - 676339932 < 0)
  {
    v3 = 676339932 - v2;
  }

  else
  {
    v3 = v2 - 676339932;
  }

  v7 = *(a1 + 8);
  v6 = v1 - 455395931 * ((((2 * v5) | 0x860D3D7C) - v5 - 1124507326) ^ 0x35F7C072) - 520;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x1541)) - 4;
  (*&v4[8 * v1 + 7312])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968E26B8()
{
  v1 = *(STACK[0x898] + 24);
  STACK[0x950] = v1;
  return (*(STACK[0x248] + 8 * (((v1 == 0) * (((v0 ^ 0x66F) - 2735) ^ 0x393)) ^ v0)))();
}

uint64_t sub_1968E27B0@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = v2 - 102 + *(v1 + v5) - ((2 * *(v1 + v5)) & 0xD8) + 72;
  return (*(v4 + 8 * ((2170 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1968E27F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t *a12, int a13, uint64_t a14)
{
  v18 = 1283153057 * ((2 * (&a10 & 0x1BBF0F58) - &a10 + 1681977511) ^ 0x2B98F390);
  a14 = v14;
  a12 = &a9;
  a10 = v18 - 1938887815;
  a11 = ((2 * v16) & 0x3C) + v18 + ((v17 - 67655539) & 0x4085575 ^ 0x9FFFB6BC) + (v16 ^ 0x79FFEC50 ^ ((v17 + 2453) | 0x308));
  a13 = v17 - v18 - 639;
  v19 = (*(v15 + 8 * (v17 + 5006)))(&a10);
  return (*(v15 + 8 * ((4830 * (*(v14 + 24) == 1906281716)) ^ v17)))(v19);
}

uint64_t fp_dh_7014a7644291e00aa4ff3305eb742ffc(_DWORD *a1)
{
  v1 = 489239129 * (a1 ^ 0xB9282336);
  v2 = a1[1] - v1;
  v3 = *a1 + v1;
  **(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 - 3642)) = v3;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x120A)) + 8 * ((7 * (v3 == 1477999485)) ^ v2) - 4))();
}

void fp_dh_cc91ad7ad6183a79364ea50c3bf37550(uint64_t a1)
{
  v1 = 998242381 * ((((2 * a1) | 0xB60C2004) - a1 + 620359678) ^ 0x716988D4);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1968E2A0C(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *(v4 + v7 + 40);
  v9 = (v4 + v3 - 16);
  *(v9 - 1) = *(v4 + v7 + 24);
  *v9 = v8;
  return (*(v6 + 8 * ((4147 * ((v5 + 1425) - (v4 & 0xFFFFFFE0) == 5841)) ^ (a3 - 3271))))();
}

uint64_t sub_1968E2AC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = STACK[0x2A0];
  v18 = *v13 + 10;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((v19 + a3) & 0x7B9FBBE89B31A532 ^ 0x6A1EA1C00800A112) + ((v19 + a3) ^ 0x91C11A2AF3FF5CE9) - (((v19 + a3) ^ 0x91C11A2AF3FF5CE9) & 0x7F9FBBE89B31A532);
  v21 = __ROR8__(v20 ^ 0xA7B7E3F907D81E09, 8);
  v20 ^= 0xFF1066E9E2E6F55uLL;
  v22 = __ROR8__((v10 - ((v21 + v20) | v10) + ((v21 + v20) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20, 8);
  v23 = (v10 - ((v21 + v20) | v10) + ((v21 + v20) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20 ^ __ROR8__(v20, 61);
  v24 = (((2 * (v22 + v23)) & 0x80FC60FEBC25C29ELL) - (v22 + v23) + 0x3F81CF80A1ED1EB0) ^ 0xCA233E39143DACB9;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x64C31C027084DE6CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x5CAA8D75362170F6) - 0x51AAB94564EF4785) ^ 0xB47FAD5ED9431778;
  v34 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5646));
  *v18 = (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v31, 61))) ^ 0xAB3042D228875C41) >> (8 * (v18 & 7u))) ^ HIBYTE(LODWORD(STACK[0x2A0])) ^ 0x41;
  v35 = __ROR8__((v18 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = ((2 * (v35 + a3)) | 0xC3A82C8AC586D220) - (v35 + a3) - 0x61D4164562C36910;
  v37 = v36 ^ 0x283D547E0DD58EC2;
  v36 ^= 0x807BB1E99423FF9ELL;
  v38 = __ROR8__(v37, 8);
  v39 = (a4 - ((v38 + v36) | a4) + ((v38 + v36) | 0xF3A01250428D80FFLL)) ^ 0x173D658FC5B03F81;
  v40 = v39 ^ __ROR8__(v36, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xF5A2F1B9B5D0B209;
  v42 = __ROR8__(v41, 8);
  v43 = v41 ^ __ROR8__(v40, 61);
  v44 = (v42 + v43) ^ 0x5963B6C555D97F1FLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x61459D2AF01F24F7;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x64C31C027084DE6CLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0xF225B66F71452428) - (v50 + v49) + 0x6ED24C8475D6DEBLL) ^ 0x1CC7CF2C050EC2E8;
  *(v18 + 1) = (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v49, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v18 + 1) & 7))) ^ BYTE2(v17) ^ 0xB4;
  v52 = __ROR8__((v18 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v53 = v52 - ((2 * v52 + 0x2A11B965E67D9C56) & 0x545857267EBA479CLL) + 0x3F350846329BF1F9;
  v54 = __ROR8__(v53 ^ 0xE3C569A8504BC41CLL, 8);
  v53 ^= 0x4B838C3FC9BDB540uLL;
  v55 = (v54 + v53) ^ 0xE49D77DF873DBF7ELL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xF5A2F1B9B5D0B209;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x5963B6C555D97F1FLL;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x61459D2AF01F24F7;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x64C31C027084DE6CLL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0x9A35C6070C844E0CLL) - (v65 + v64) + 0x32E51CFC79BDD8FALL) ^ 0xD73008E7C4118805;
  *(v18 + 2) = (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v64, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v18 + 2) & 7))) ^ BYTE1(v17) ^ 0x1F;
  v67 = (__ROR8__((v18 + 3) & 0xFFFFFFFFFFFFFFF8, 8) + a3) & 0xFBFFFFFFFFFFFFFFLL;
  v68 = v67 ^ 0x4DE9423B6F16E7D2;
  v67 ^= 0xE5AFA7ACF6E0968ELL;
  v69 = __ROR8__(v68, 8);
  v70 = (((2 * (v69 + v67)) & 0xD4384CBE8D1CCB66) - (v69 + v67) + 0x15E3D9A0B9719A4CLL) ^ 0xF17EAE7F3E4C2532;
  v71 = v70 ^ __ROR8__(v67, 61);
  v72 = __ROR8__(v70, 8);
  v73 = __ROR8__((((2 * (v72 + v71)) & 0x92CB1CAC1BFAFF5ALL) - (v72 + v71) - 0x49658E560DFD7FAELL) ^ 0x4338801047D2325BLL, 8);
  v74 = (((2 * (v72 + v71)) & 0x92CB1CAC1BFAFF5ALL) - (v72 + v71) - 0x49658E560DFD7FAELL) ^ 0x4338801047D2325BLL ^ __ROR8__(v71, 61);
  v75 = (((v73 + v74) & 0xA386F3BFED6BF6BLL ^ 0x8104132A4169360) + ((v73 + v74) & 0xF5C790C401294094 ^ v12) - 1) ^ v15;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x61459D2AF01F24F7;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = __ROR8__(((v16 | (2 * (v79 + v78))) - (v79 + v78) + v9) ^ a8, 8);
  v81 = ((v16 | (2 * (v79 + v78))) - (v79 + v78) + v9) ^ a8 ^ __ROR8__(v78, 61);
  v82 = __ROR8__((v80 + v81) ^ 0x1A2AEBE44253AF03, 8) + ((v80 + v81) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v81, 61));
  *(v18 + 3) = v17 ^ v11 ^ (((v82 - (v14 & (2 * v82)) + v8) ^ a1) >> (8 * ((v18 + 3) & 7)));
  return v34();
}

uint64_t sub_1968E2B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 128) = a16;
  *(v20 - 120) = &a17;
  *(v20 - 136) = (v18 - 207) ^ (654144011 * ((((v20 - 136) | 0x3D17FF51) - (v20 - 136) + ((v20 - 136) & 0xC2E800A8)) ^ 0x11C382CD));
  (*(v17 + 8 * (v18 ^ 0xBC9)))(v20 - 136);
  v21 = 998242381 * (((v20 - 136) & 0x9DFEC09 | ~((v20 - 136) | 0x9DFEC09)) ^ 0x5C4F8B20);
  *(v20 - 128) = a15;
  *(v20 - 136) = v21 ^ 0x65AEB2BB;
  *(v20 - 132) = (v18 + 334) ^ v21;
  (*(v17 + 8 * (v18 ^ 0xB01)))(v20 - 136);
  *(v20 - 120) = v18 + ((-1288146714 - ((v20 - 136) | 0xB33870E6) + ((v20 - 136) | 0x4CC78F19)) ^ 0x29DD7452) * v19 - 2191;
  *(v20 - 136) = a16;
  *(v20 - 128) = a15;
  v22 = (*(v17 + 8 * (v18 + 2347)))(v20 - 136);
  return (*(v17 + 8 * (((*(v20 - 116) <= 0x5818ABABu) * ((3169 * (v18 ^ 0x1164) + 893378204) & 0xCAC00BAF ^ 0x301)) ^ v18)))(v22);
}

uint64_t fp_dh_5d968eb48612975760c1912f04babf83(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *result ^ (-26319 * ((result - 6612 - 2 * (result & 0xE62C)) ^ 0x7BD));
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x13C;
  v3 = v2 ^ 0x3C;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -1080695141;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0x938AACE21B02246ALL;
    *(v1 + 80) = 0x6C75531DE4FDDB95;
    *(v1 + 92) = v4;
  }

  *(result + 4) = -1432558954;
  return result;
}

void fp_dh_be38bac862bd38f4fe8c90603a6272ea(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40) + 1575331711 * ((~a1 & 0x67EC13DE | a1 & 0x9813EC21) ^ 0xBB786DC);
  v2 = 1068996913 * (((v6 | 0x2CF02C7F) - v6 + (v6 & 0xD30FD380)) ^ 0xF91ECDEE);
  v7 = &v4;
  v6[0] = v2 ^ 0xADA01D3E;
  v6[2] = v1 + v2 + 46798454;
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 + 404) - 4;
  (*&v3[8 * (v1 ^ 0x1A41)])(v6);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1968E325C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = a1 - 1854;
  v17 = (a1 - 1854) ^ 0x8F5;
  *(v14 - 144) = v17;
  *(v14 - 140) = 0;
  v18 = *(v14 - 112);
  *(v14 - 152) = v13;
  v19 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a1 - 5055);
  LODWORD(v18) = *(v19 + (v18 ^ 0xBC)) + 72;
  v20 = v18 & 0x44 ^ 0xFFFFFFA7;
  v21 = (v18 ^ (2 * ((v18 ^ 0x7E) & (2 * ((v18 ^ 0x7E) & (2 * ((v18 ^ 0x7E) & (2 * ((v18 ^ 0x7E) & (2 * ((v18 ^ 0x7E) & (2 * ((v18 ^ 0x7E) & (v17 + 42) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ 2) << 24;
  v22 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 2935) - 8;
  v23 = ((v22[*(v14 - 111) ^ 0xB1] ^ *(v14 - 111)) << 16) ^ 0xA37C9324;
  *(v14 - 132) = v23;
  LODWORD(v18) = (v21 ^ 0x20FF9324) & v23;
  v24 = *(v14 - 110);
  v25 = ((v24 ^ 0x145EC67E) - 341755425) ^ ((v24 ^ 0x1835B482) - 406172893) ^ ((v24 ^ 0xC6B7289) - 208368342);
  v26 = v25 - (((v24 ^ 0x566CF150) - 1449980231) ^ ((v24 ^ 0x775063EB) - 2001757180) ^ ((v24 ^ 0x213C92C8) - 557617887)) + 1947371437;
  v27 = (v26 ^ 0xA3E87490) & (2 * (v26 & 0x8BED7819)) ^ v26 & 0x8BED7819;
  v28 = ((2 * (v26 ^ 0xA2A0B490)) ^ 0x529B9912) & (v26 ^ 0xA2A0B490) ^ (2 * (v26 ^ 0xA2A0B490)) & 0x294DCC88;
  v29 = v28 ^ 0x29444489;
  v30 = (v28 ^ 0x98000) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0xA5373224) & v29 ^ (4 * v29) & 0x294DCC88;
  v32 = (v31 ^ 0x21050000) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x848CC89)) ^ 0x94DCC890) & (v31 ^ 0x848CC89) ^ (16 * (v31 ^ 0x848CC89)) & 0x294DCC80;
  v34 = v32 ^ 0x294DCC89 ^ (v33 ^ 0x4CC800) & (v32 << 8);
  v35 = v26 ^ (2 * ((v34 << 16) & 0x294D0000 ^ v34 ^ ((v34 << 16) ^ 0x4C890000) & (((v33 ^ 0x29010409) << 8) & 0x294D0000 ^ 0x20010000 ^ (((v33 ^ 0x29010409) << 8) ^ 0x4DCC0000) & (v33 ^ 0x29010409))));
  v36 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v16 ^ 0xD7A));
  LOBYTE(v25) = *(v36 + v25 - 1620529223 + (((v35 ^ 0xE6368648) - 1338324784) ^ ((v35 ^ 0x58FEBC7D) + 250802939) ^ ((v35 ^ 0x885324C2) - 564172218)));
  v37 = v18 | v21 & 0x5C000000;
  LOBYTE(v21) = (1 - v25) & 2 | (v25 + 74) & 4;
  v38 = ((v25 + 74) ^ (2 * ((v25 + 74) & (2 * ((v25 + 74) & (2 * ((v25 + 74) & (2 * ((v25 + 74) & (2 * ((v25 + 74) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) << 8;
  v39 = *(v14 - 108);
  v40 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 2864) - 8;
  v41 = v40[*(v14 - 109) ^ 0x30];
  v42 = ((2 * v39) & 0xFFFFFFDF) + (v39 ^ 0x6BB5FFEF);
  LODWORD(v18) = v42 - 35678016;
  v43 = 166687115 - (((v39 ^ 0x72D360B0) - 1926455430) ^ ((v39 ^ 0xFB9AE965) + 73733805) ^ ((v39 ^ 0x894989E2) + 1991669292));
  v44 = (v43 ^ 0xF5446E0A) & (2 * (v43 & 0xF6108EAB)) ^ v43 & 0xF6108EAB;
  v45 = ((2 * (v43 ^ 0x5564665C)) ^ 0x46E9D1EE) & (v43 ^ 0x5564665C) ^ (2 * (v43 ^ 0x5564665C)) & 0xA374E8F6;
  v46 = v45 ^ 0xA1142811;
  v47 = (v45 ^ 0x4040E4) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x8DD3A3DC) & v46 ^ (4 * v46) & 0xA374E8F4;
  v49 = (v48 ^ 0x8150A0D0) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x22244823)) ^ 0x374E8F70) & (v48 ^ 0x22244823) ^ (16 * (v48 ^ 0x22244823)) & 0xA374E8F0;
  v51 = v49 ^ 0xA374E8F7 ^ (v50 ^ 0x23448800) & (v49 << 8);
  *(v14 - 148) = (v38 ^ 0xFFFF80FF) & (v37 ^ 0x469332DA) | v38 & 0x5E00;
  v52 = -2040642081 - v42;
  v53 = (-2040642081 - v42) ^ 0xB002FC01;
  v54 = ((-2040642081 - v42) ^ 0xB007B801) & (2 * ((-2040642081 - v42) & 0x7BA10)) ^ (-2040642081 - v42) & 0x7BA10;
  v55 = ((2 * v53) ^ 0xAAAA8C22) & v53 ^ (2 * v53) & 0x55554610;
  v56 = v55 ^ 0x55554211;
  v57 = v55 & (4 * v54) ^ v54;
  v58 = ((4 * v56) ^ 0x55551844) & v56 ^ (4 * v56) & 0x55554610;
  v59 = v57 ^ 0x55554611 ^ (v58 ^ 0x55550000) & (16 * v57);
  v60 = (16 * (v58 ^ 0x4611)) & 0x55554610 ^ 0x10601 ^ ((16 * (v58 ^ 0x4611)) ^ 0x55546110) & (v58 ^ 0x4611);
  v61 = (v59 << 8) & 0x55554600 ^ v59 ^ ((v59 << 8) ^ 0x55461100) & v60;
  v62 = ((v61 << 16) ^ 0x46110000) & ((v60 << 8) & 0x55550000 ^ 0x110000 ^ ((v60 << 8) ^ 0x55460000) & v60);
  LOBYTE(v60) = (~v38 & (v37 ^ 0xDA) ^ 0x15) & (v41 ^ 0x1C);
  v63 = (v18 ^ 0x3BD35654) & (2 * (v18 & 0x26751)) ^ v18 & 0x26751;
  v64 = ((2 * (v18 ^ 0x3BD354F4)) ^ 0x5242674A) & (v18 ^ 0x3BD354F4) ^ (2 * (v18 ^ 0x3BD354F4)) & 0xADB933A4;
  v65 = (v64 ^ 0x102300) & (4 * v63) ^ v63;
  v66 = ((4 * (v64 ^ 0xA48910A5)) ^ 0xB6E4CE94) & (v64 ^ 0xA48910A5) ^ (4 * (v64 ^ 0xA48910A5)) & 0xADB933A4;
  v67 = (v66 ^ 0xA4A00280) & (16 * v65) ^ v65;
  v68 = ((16 * (v66 ^ 0x9193121)) ^ 0xDB933A50) & (v66 ^ 0x9193121) ^ (16 * (v66 ^ 0x9193121)) & 0xADB933A0;
  v69 = v67 ^ 0xADB933A5 ^ (v68 ^ 0x89913200) & (v67 << 8);
  LODWORD(v18) = v52 ^ v18 ^ v43 ^ (2 * (v69 ^ v61 ^ (v61 << 16) & 0x55555555 ^ (v69 << 16) & 0x2DB90000 ^ v51 ^ v62 ^ ((v69 << 16) ^ 0x33A50000) & (((v68 ^ 0x242801A5) << 8) & 0xADB90000 ^ 0x4880000 ^ (((v68 ^ 0x242801A5) << 8) ^ 0xB9330000) & (v68 ^ 0x242801A5)) ^ (v51 << 16) & 0x23740000 ^ ((v51 << 16) ^ 0x68F70000) & (((v50 ^ 0x80306087) << 8) & 0x23740000 ^ 0x3140000 ^ (((v50 ^ 0x80306087) << 8) ^ 0x74E80000) & (v50 ^ 0x80306087))));
  LODWORD(v18) = (((v18 ^ 0xC3069E7E) - 146879275) ^ ((v18 ^ 0x41C738FE) + 1979673173) ^ ((v18 ^ 0x91DDCFEC) - 1511678649)) + 1057432108;
  LOBYTE(v18) = *(v19 + (v18 ^ ((v18 ^ 0xCA90B215) + 1396969559) ^ ((v18 ^ 0x2B635868) - 1296565716) ^ ((v18 ^ 0x5C274C3A) - 973869446) ^ ((v18 ^ 0xDBFFFBFB) + 1110137273) ^ 0x662B5DC4)) + 72;
  LOBYTE(v51) = v18 & 0xE ^ 0x48;
  v70 = *(v19 + (*(v14 - 104) ^ 0x1BLL)) + 72;
  v71 = v70 & 0xFFFFFFB2 ^ 0xFFFFFFAA;
  v72 = (((v70 ^ 0x7C) & (2 * ((v70 ^ 0x7C) & (2 * ((v70 ^ 0x7C) & (2 * ((v70 ^ 0x7C) & (2 * ((v70 ^ 0x7C) & (2 * v71) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71) << 25) ^ (v70 << 24);
  v73 = ((v22[*(v14 - 103) ^ 0x48] ^ *(v14 - 103)) << 16) ^ 0x9798BD12;
  LOBYTE(v19) = *(v19 + (*(v14 - 100) ^ 0x36)) + 72;
  v74 = v19 & 0x3C ^ 0xE3;
  v75 = (v19 ^ (2 * ((v19 ^ 0x7E) & (2 * ((v19 ^ 0x7E) & (2 * ((v19 ^ 0x7E) & (2 * ((v19 ^ 0x7E) & (2 * ((v19 ^ 0x7E) & (2 * ((v19 ^ 0x7E) & 2 ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0x11u;
  v76 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 2965);
  v77 = (v72 ^ 0x15FFBD12) & v73 | v72 & 0x68000000;
  v78 = -2105690221 * *(v76 + 4 * v75) + 681762257;
  v79 = -2105690221 * *(v76 + 4 * (HIBYTE(v37) ^ 0x3F)) + 1537139630;
  v80 = -2105690221 * *(v76 + 4 * ((v18 ^ (2 * ((v18 ^ 0x7C) & (2 * ((v18 ^ 0x7C) & (2 * ((v18 ^ 0x7C) & (2 * ((v18 ^ 0x7C) & (2 * ((v18 ^ 0x7C) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x72u)) - 916443009;
  v81 = -2105690221 * *(v76 + 4 * (HIBYTE(v77) ^ 0x4D)) + 2128923775;
  LOBYTE(v75) = *(v36 + (*(v14 - 106) ^ 0xBBLL));
  v82 = v60 ^ v41 & 0x14;
  LOBYTE(v18) = v75 + 74;
  LOBYTE(v75) = (1 - v75) & 2 | (v75 + 74) & 0x7C | 0x28;
  LOBYTE(v52) = v18 ^ (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75));
  LOBYTE(v18) = *(v36 + (*(v14 - 102) ^ 4)) + 74;
  LOBYTE(v60) = (v18 & 2 | 0x2C) ^ v18 & 0x58;
  LODWORD(v18) = (v18 ^ (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) << 8;
  v83 = (v18 ^ 0x1100) & (v77 ^ 0xEA00);
  v84 = *(v14 - 107);
  LOBYTE(v68) = v22[v84 ^ 0x42];
  LODWORD(v76) = v18 & 0xA800;
  v85 = *(v14 - 99);
  LOBYTE(v22) = v22[v85 ^ 0xAD];
  LODWORD(v76) = v83 | v76;
  LOBYTE(v36) = *(v36 + (*(v14 - 98) ^ 0xBLL));
  LOBYTE(v83) = (1 - v36) & 2 | 0xAD;
  LOBYTE(v36) = v36 + 74;
  v86 = v83 ^ v36 & 0x5A;
  LOBYTE(v83) = v36 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * (v36 & (2 * v83) ^ v86)) ^ 4) & v36 ^ v86)) ^ 4) & v36 ^ v86)) ^ 4) & v36 ^ v86)) ^ 4) & v36 ^ v86)) ^ 4) & v36 ^ v86));
  v87 = v40[*(v14 - 105) ^ 0x55];
  v88 = v40[*(v14 - 101) ^ 0x6FLL];
  v89 = v40[*(v14 - 97) ^ 0xA7];
  LOBYTE(v40) = (((v83 ^ 0x34) - 26) ^ ((v83 ^ 0x51) - 127) ^ ((v83 ^ 0x79) - 87)) - ((((2 * v83) & 0xDF ^ 0xC2) + 35) ^ (((2 * v83) & 0xDF ^ 0x3D) - 34) ^ (((2 * v83) & 0xDF ^ 0xE7) + 8));
  LOBYTE(v83) = v40 + 15;
  LOBYTE(v40) = ((v40 - 113) & 0x8B | 0x70) ^ (v40 + 15) & 0xE0;
  LOBYTE(v40) = v83 ^ (2 * ((v83 ^ 0xA) & (2 * ((v83 ^ 0xA) & (2 * ((v83 ^ 0xA) & (2 * ((v83 ^ 0xA) & (2 * ((v83 ^ 0xA) & (2 * ((v83 ^ 2) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0x84;
  v90 = (v78 ^ 0xCABC198D) & (2 * (v78 & 0xCB3D592D)) ^ v78 & 0xCB3D592D;
  *(v14 - 224) = v15;
  v91 = ((2 * (v78 ^ 0xC8D6A997)) ^ 0x7D7E174) & (v78 ^ 0xC8D6A997) ^ (2 * (v78 ^ 0xC8D6A997)) & 0x3EBF0BA;
  v92 = ((4 * (v91 ^ 0x28108A)) ^ 0xFAFC2E8) & (v91 ^ 0x28108A) ^ (4 * (v91 ^ 0x28108A)) & 0x3EBF0B8;
  v93 = (v92 ^ 0x3ABC0A0) & (16 * ((v91 ^ 0x1C3E030) & (4 * v90) ^ v90)) ^ (v91 ^ 0x1C3E030) & (4 * v90) ^ v90;
  v94 = ((16 * (v92 ^ 0x403012)) ^ 0x3EBF0BA0) & (v92 ^ 0x403012) ^ (16 * (v92 ^ 0x403012)) & 0x3EBF0B0;
  v95 = v93 ^ 0x3EBF0BA ^ (v94 ^ 0x2AB0000) & (v93 << 8);
  v96 = v78 ^ (2 * ((v95 << 16) & 0x3EB0000 ^ v95 ^ ((v95 << 16) ^ 0x70BA0000) & (((v94 ^ 0x140F01A) << 8) & 0x3EB0000 ^ 0xB0000 ^ (((v94 ^ 0x140F01A) << 8) ^ 0x6BF00000) & (v94 ^ 0x140F01A))));
  LOBYTE(v85) = v85 ^ 0xF6 ^ v22;
  LOBYTE(v22) = ((((2 * v89) ^ 0x44) + 85) ^ (((2 * v89) ^ 0x48) + 89) ^ (((2 * v89) ^ 0xFE) - 17)) + 93;
  LOBYTE(v78) = v22 & 0x84 | 3;
  v97 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 3081);
  v98 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v16 ^ 0xEA3)) - 8;
  v99 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 2777) - 8;
  LODWORD(v75) = *&v98[4 * (v40 ^ 0x77)] ^ *(v97 + 4 * v85) ^ v96 ^ (v96 >> 3) & 0xE375FA2;
  LODWORD(v85) = v40 ^ (v99[v89 ^ 0x2C] ^ v22 ^ (2 * ((v22 ^ 6) & (2 * ((v22 ^ 6) & (2 * ((v22 ^ 6) & (2 * ((v22 ^ 6) & (2 * ((v22 ^ 6) & (2 * (((2 * (v22 & 7)) ^ 2) & (v22 ^ 6) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)));
  LODWORD(v89) = ((v79 ^ 0xF1D53EF3) + 1771335101) ^ v79 ^ ((v79 ^ 0xA5177108) + 1029055048) ^ ((v79 ^ 0x4CB318B6) - 722318342) ^ ((v79 ^ 0x7FCFFBFD) - 410081101);
  LOBYTE(v40) = ((((2 * v82) ^ 0x11) - 55) ^ (2 * v82 - 38) ^ (((2 * v82) ^ 0xE8) + 50)) - 73;
  LOBYTE(v96) = v40 & 2 ^ 0x9A;
  v100 = BYTE1(*(v14 - 148));
  v101 = v100 ^ *(v97 + 4 * ~HIWORD(*(v14 - 132))) ^ v89 ^ (v89 >> 3) & 0xE375FA2 ^ *&v98[4 * (v100 ^ 0x18)] ^ 0x3C990DB7 ^ (v99[v41 ^ 0x21] ^ v40 ^ (2 * ((v40 ^ 0x6C) & (2 * ((v40 ^ 0x6C) & (2 * ((v40 ^ 0x6C) & (2 * ((v40 ^ 0x6C) & (2 * ((v40 ^ 0x6C) & (2 * v96) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96)));
  v102 = v75 ^ v85;
  *(v14 - 168) = v75 ^ v85;
  LODWORD(v89) = (v75 ^ v85) ^ 0x7B;
  v103 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v16 ^ 0xC48)) - 4;
  LOBYTE(v41) = BYTE3(v75) ^ v103[BYTE3(v75) ^ 0x49];
  LODWORD(v85) = ((v80 ^ 0xBAE8B4D2) - 1872186707) ^ v80 ^ ((v80 ^ 0xD3D8B0D4) - 111626581) ^ ((v80 ^ 0xE3310679) - 911147000) ^ ((v80 ^ 0x5F7EFBFE) + 1979645313);
  *(v14 - 136) = v16;
  v104 = BYTE2(v75);
  v105 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 3098) - 8;
  LODWORD(v40) = *&v105[4 * (BYTE2(v75) ^ 0x54)];
  LODWORD(v75) = BYTE1(v75);
  v106 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 3251) - 8;
  v107 = *&v106[4 * (v75 ^ 0x51)] ^ v40;
  v108 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v16 ^ 0xC33)) - 12;
  LODWORD(v75) = v107 ^ *&v108[4 * v89] ^ v75 ^ v104 ^ v41;
  LOBYTE(v89) = v84 ^ v68;
  LOBYTE(v104) = ((((2 * v87) ^ 0x43) + 98) ^ (((2 * v87) ^ 0x1D) + 64) ^ (((2 * v87) ^ 0x60) + 67)) + 20;
  LOBYTE(v84) = v104 & 0x52 ^ 0x66;
  v109 = v52 ^ 0xA5 ^ *(v97 + 4 * (v89 ^ 0xCFu)) ^ (v104 ^ (2 * ((v104 ^ 0x14) & (2 * ((v104 ^ 0x14) & (2 * ((v104 ^ 0x14) & (2 * ((v104 ^ 0x14) & (2 * ((v104 ^ 0x14) & (2 * v84) ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v99[v87 ^ 0xCA]) ^ *&v98[4 * (v52 ^ 0x1E)] ^ v85 ^ 0x1BD2D9EE ^ (v85 >> 3) & 0xE375FA2;
  LODWORD(v85) = (v81 ^ 0x76F2617F) & (2 * (v81 & 0x74FB6A7F)) ^ v81 & 0x74FB6A7F;
  LODWORD(v89) = ((2 * (v81 ^ 0xDF72F531)) ^ 0x57133E9C) & (v81 ^ 0xDF72F531) ^ (2 * (v81 ^ 0xDF72F531)) & 0xAB899F4E;
  LODWORD(v85) = (v89 ^ 0x3011A0C) & (4 * v85) ^ v85;
  LODWORD(v89) = ((4 * (v89 ^ 0xA8888142)) ^ 0xAE267D38) & (v89 ^ 0xA8888142) ^ (4 * (v89 ^ 0xA8888142)) & 0xAB899F4C;
  LODWORD(v85) = (v89 ^ 0xAA001D00) & (16 * v85) ^ v85;
  LODWORD(v89) = ((16 * (v89 ^ 0x1898246)) ^ 0xB899F4E0) & (v89 ^ 0x1898246) ^ (16 * (v89 ^ 0x1898246)) & 0xAB899F40;
  LODWORD(v85) = v85 ^ 0xAB899F4E ^ (v89 ^ 0xA8899400) & (v85 << 8);
  LODWORD(v85) = v81 ^ (2 * ((v85 << 16) & 0x2B890000 ^ v85 ^ ((v85 << 16) ^ 0x1F4E0000) & (((v89 ^ 0x3000B0E) << 8) & 0x2B890000 ^ 0x22000000 ^ (((v89 ^ 0x3000B0E) << 8) ^ 0x99F0000) & (v89 ^ 0x3000B0E))));
  LOBYTE(v73) = ((((2 * v88) ^ 4) - 78) ^ (((2 * v88) ^ 0x78) - 50) ^ (((2 * v88) ^ 0x8C) + 58)) - 14;
  LOBYTE(v81) = v73 & 0xDC ^ 0xAB;
  LODWORD(v89) = *(v97 + 4 * (BYTE2(v73) ^ 0x10u)) ^ (v76 >> 8) ^ (v73 ^ (2 * ((v73 ^ 0xE) & (2 * ((v73 ^ 0xE) & (2 * ((v73 ^ 0xE) & (2 * ((v73 ^ 0xE) & (2 * ((v73 ^ 0xE) & (2 * (((2 * (v73 & 0xF)) ^ 0x52) & (v73 ^ 0xE) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v99[v88 ^ 0xAD]) ^ *&v98[4 * ((v76 >> 8) ^ 0x20)] ^ v85 ^ (v85 >> 3) & 0xE375FA2;
  *(v14 - 132) = v89;
  *(v14 - 228) = v101;
  LODWORD(v75) = v75 ^ v101;
  v110 = v75 ^ 0xA8362019;
  v300 = v109;
  v111 = v75 ^ v109;
  LODWORD(v85) = v75 ^ v109 ^ v89;
  *(v14 - 148) = v85;
  LODWORD(v75) = v85 ^ 0x6B0D60AB;
  LODWORD(v89) = v85 ^ 0x6B0D60AB ^ v102;
  LODWORD(v41) = (((((v89 ^ 0x790CE901) >> 24) ^ 0xDE568104) - 1467110404) ^ ((((v89 ^ 0x790CE901) >> 24) ^ 0x449FC6DD) + 843377699) ^ ((((v89 ^ 0x790CE901) >> 24) ^ 0x9AC947A9) - 334336681)) - (((((v89 ^ 0x790CE901) >> 23) & 0x8E ^ 0x86FD40A7) - 1829882600) ^ ((((v89 ^ 0x790CE901) >> 23) & 0x8E) - 643070543) ^ ((((v89 ^ 0x790CE901) >> 23) & 0x8E ^ 0x60204817) + 1949515176)) - 691857443;
  v112 = ((v41 ^ 0x8E8708D0) + 1223834587) ^ v41 ^ ((v41 ^ 0xA02BAFC7) + 1717476558) ^ ((v41 ^ 0x7DD9944D) - 1146312888) ^ ((v41 ^ 0x6AFFFFAF) - 1400189786);
  v298 = v111;
  v299 = v110;
  v113 = *&v105[4 * (BYTE2(v89) ^ 0xD0)] ^ *&v106[4 * (BYTE1(v89) ^ 0x7F)] ^ *&v108[4 * (v85 ^ 0xAB ^ v102 ^ 0xE9)] ^ v110 ^ BYTE2(v89) ^ BYTE1(v89) ^ 0x72BFED6B ^ (v112 ^ v103[v112 ^ 0x398ACCE1]);
  v295 = v113 ^ v111;
  LODWORD(v85) = v113 ^ v111 ^ 0x43C91E7C;
  LODWORD(v75) = (v85 - ((2 * v85) & 0x1A7D769E) + 222214991) ^ v75;
  v297 = v89 ^ 0x790CE901;
  LODWORD(v76) = ((v75 ^ 0x31B36EF1) - 2 * ((v75 ^ 0x31B36EF1) & 0x70C16F77 ^ v75 & 4) + 1891725171) ^ v89 ^ 0x790CE901;
  LODWORD(v89) = (((v76 ^ 0x53D) >> 8) - ((v76 >> 7) & 0x164) - 223275854) ^ *&v106[4 * (((v76 ^ 0x53D) >> 8) ^ 0xF9)];
  LODWORD(v112) = ((v76 ^ 0x1E08053D) >> 16);
  LODWORD(v89) = (v89 - ((2 * v89) & 0xAABF7058) - 715147220) ^ *&v105[4 * (v112 ^ 0x1D)];
  LODWORD(v89) = v103[((v76 ^ 0x1E08053D) >> 24) ^ 0x53] ^ (((v76 ^ 0x1E08053D) >> 24) - (((v76 ^ 0x1E08053D) >> 23) & 0x30) + 24) ^ v112 ^ *&v108[4 * (v76 ^ 0xA6)] ^ 0x26 ^ (v89 - ((2 * v89) & 0x7600D0D4) - 1157601174);
  v296 = v113;
  v114 = (v89 - ((2 * v89) & 0x44B17020) - 1571244016) ^ v113;
  v115 = v114 ^ v85;
  v294 = v75 ^ 0x31B36EF1;
  v116 = v114 ^ v85 ^ v75 ^ 0x31B36EF1;
  v117 = v116 ^ v76 ^ 0x1E08053D;
  LODWORD(v85) = v117 ^ 0xEAFDA0AD;
  v293 = v114;
  LODWORD(v75) = *&v106[4 * (((v117 ^ 0xA0AD) >> 8) ^ 0xF9)] ^ *&v105[4 * (((v117 ^ 0xEAFDA0AD) >> 16) ^ 0x1D)] ^ v114 ^ (((v117 ^ 0xA0AD) >> 8) - (((v117 ^ 0xEAFDA0AD) >> 7) & 0x164) - 223275854) ^ (((v117 ^ 0xEAFDA0AD) >> 16) - (((v117 ^ 0xEAFDA0AD) >> 15) & 0x58) - 715147220);
  v291 = v117;
  LODWORD(v89) = v103[((v117 ^ 0xEAFDA0AD) >> 24) ^ 0x53] ^ (((v117 ^ 0xEAFDA0AD) >> 24) - (((v117 ^ 0xEAFDA0AD) >> 23) & 0x30) + 24) ^ *&v108[4 * ((v116 ^ v76 ^ 0x3D) ^ 0x36)] ^ (v75 - ((2 * v75) & 0x7600D0D4) - 1157601174);
  *(v14 - 156) = v89;
  v292 = v116;
  v290 = v89 ^ 0xDFC38368 ^ v115;
  v118 = v290 ^ 0x55F5A590 ^ v116 ^ 0xDAE89111;
  v119 = v118 ^ v117 ^ 0xEAFDA0AD;
  v120 = ((v119 >> 12) & 0xF0 | (v119 >> 20) & 0xF) ^ 0x4D;
  LODWORD(v112) = *&v106[4 * (((v119 ^ 0xFB2C) >> 8) ^ 0xF9)] ^ v89 ^ 0xDFC38368 ^ (((v119 ^ 0xFB2C) >> 8) - (((v119 ^ 0xB809FB2C) >> 7) & 0x164) - 223275854) ^ (((v120 >> 4) | (16 * v120)) - ((2 * ((v120 >> 4) | (16 * v120))) & 0x58) - 715147220) ^ *&v105[4 * (((v120 >> 4) | (16 * v120)) ^ 0xC0)];
  v289 = v118;
  LODWORD(v85) = v118 ^ ~v85;
  v121 = (((BYTE3(v85) - ((v85 >> 23) & 0x30) + 24) ^ v103[BYTE3(v85) ^ 0x14]) & 0xF2 | (BYTE3(v85) ^ v103[BYTE3(v85) ^ 0x14]) & 0xD) ^ *&v108[4 * (v119 ^ 0xB7)] ^ (v112 - ((2 * v112) & 0x7600D0D4) - 1157601174);
  LODWORD(v112) = v121 ^ 0x319076B0 ^ v116 ^ 0xDAE89111;
  v288 = v119 ^ 0xB809FB2C;
  LODWORD(v89) = v112 ^ v119 ^ 0xB809FB2C;
  v122 = v89 ^ 0x8C09FB2C;
  v123 = v89 ^ 0xEBB29F77;
  LODWORD(v89) = *&v106[4 * (BYTE1(v122) ^ 0x9D)] ^ *&v105[4 * (((v89 ^ 0xEBB29F77) >> 16) ^ 0x1D)] ^ (((v89 ^ 0xEBB29F77) >> 16) - (((v89 ^ 0xEBB29F77) >> 15) & 0x58) - 715147220) ^ (BYTE1(v122) - ((v122 >> 7) & 0x164) - 223275854);
  LODWORD(v89) = v103[HIBYTE(v123) ^ 0x53] ^ (HIBYTE(v123) - ((v123 >> 23) & 0x30) + 24) ^ *&v108[4 * (v122 ^ 0xC0)] ^ v121 ^ 0x319076B0 ^ 0x6C9ACF14 ^ (v89 - ((2 * v89) & 0x7600D0D4) - 1157601174);
  v286 = v123;
  v287 = v112;
  v285 = v121 ^ 0x319076B0 ^ v290 ^ 0x55F5A590;
  v124 = v89 ^ v285;
  LODWORD(v85) = v89 ^ v285 ^ 0x53BB645B;
  LODWORD(v112) = v85 & 0x7FFFFFFF ^ (((v89 ^ v285) & 0x80000000) + (v112 ^ 0x40B29F77));
  v125 = v112 ^ v123;
  v284 = v89;
  v126 = *&v106[4 * (((v125 ^ 0x73C2) >> 8) ^ 0xF9)] ^ *&v105[4 * (((v125 ^ 0xD1673C2) >> 16) ^ 0x1D)] ^ v89 ^ (((v125 ^ 0x73C2) >> 8) - (((v125 ^ 0xD1673C2) >> 7) & 0x164) - 223275854) ^ (((v125 ^ 0xD1673C2) >> 16) - (((v125 ^ 0xD1673C2) >> 15) & 0x58) - 715147220);
  v283 = __PAIR64__(v112, v125);
  LODWORD(v89) = v103[((v125 ^ 0xD1673C2) >> 24) ^ 0x53] ^ (((v125 ^ 0xD1673C2) >> 24) - (((v125 ^ 0xD1673C2) >> 23) & 0x30) + 24) ^ *&v108[4 * (v125 ^ 0x59)] ^ (v126 - 1157601174 + (~(2 * v126) | 0x89FF2F2B) + 1);
  *(v14 - 172) = v89;
  v127 = v89 ^ 0x3AB1DDA6;
  v128 = v89 ^ 0x3AB1DDA6 ^ v85;
  v129 = v128 ^ v112;
  LODWORD(v75) = v128 ^ v112 ^ v125 ^ 0xD1673C2;
  LODWORD(v99) = v75 ^ 0x1A0AB952;
  LODWORD(v89) = v75 ^ 0xAA8CBC1D;
  LODWORD(v75) = *&v106[4 * (BYTE1(v89) ^ 0xF9)] ^ *&v105[4 * (((v75 ^ 0xAA8CBC1D) >> 16) ^ 0x1D)] ^ v127 ^ (BYTE1(v89) - ((v89 >> 7) & 0x164) - 223275854) ^ (((v75 ^ 0xAA8CBC1D) >> 16) - ((v89 >> 15) & 0x58) - 715147220);
  LODWORD(v99) = v103[(v99 >> 24) ^ 0xE3] ^ (BYTE3(v99) - ((v99 >> 23) & 0x30) + 24) ^ *&v108[4 * (v99 ^ 0xD4)] ^ 0x96 ^ (v75 - ((2 * v75) & 0x7600D0D4) - 1157601174);
  v282 = __PAIR64__(v128, v89);
  LODWORD(v112) = v128 ^ 0x2B9ACFE6 ^ v99 ^ 0x3190763D;
  LODWORD(v89) = v112 ^ v129 ^ v89;
  v130 = v89 ^ 0xFBBB645B;
  LODWORD(v98) = ((v89 ^ 0xFBBB645B) >> 16);
  LODWORD(v75) = ((v89 ^ 0x645B) >> 8);
  v131 = v75 - (((v89 ^ 0xFBBB645B) >> 7) & 0x164);
  LODWORD(v75) = *&v106[4 * (v75 ^ 0xF9)] ^ *&v105[4 * (v98 ^ 0x1D)];
  LODWORD(v97) = v98 - (((v89 ^ 0xFBBB645B) >> 15) & 0x58) - 715147220;
  LODWORD(v98) = v131 - 223275854;
  v132 = *(v14 - 224);
  v281 = __PAIR64__(v112, v89);
  LODWORD(v75) = v103[HIBYTE(v130) ^ 0x53] ^ (HIBYTE(v130) - ((v130 >> 23) & 0x30) + 24) ^ v99 ^ 0x3190763D ^ *&v108[4 * (v89 ^ 0xC0)] ^ ((v75 ^ v97 ^ v98) - ((2 * (v75 ^ v97 ^ v98)) & 0x7600D0D4) - 1157601174);
  LODWORD(v97) = v75 ^ 0x4B73A0D3 ^ v112;
  HIDWORD(v280) = v112 ^ v129 ^ 0xFEBB645B;
  LODWORD(v112) = v97 ^ HIDWORD(v280) ^ v89 ^ 0xFBBB645B;
  LODWORD(v98) = v112 ^ 0xA858B293;
  LODWORD(v89) = (BYTE1(v98) - ((v98 >> 7) & 0x164) - 223275854) ^ *&v106[4 * (BYTE1(v98) ^ 0xF9)];
  LODWORD(v280) = v112;
  LODWORD(v89) = (v89 - ((2 * v89) & 0xAABF7058) - 715147220) ^ *&v105[4 * (((v112 ^ 0xA858B293) >> 16) ^ 0x1D)];
  LOBYTE(v105) = v103[((v112 ^ 0xA858B293) >> 24) ^ 0x53] ^ (((v112 ^ 0xA858B293) >> 24) - (((v112 ^ 0xA858B293) >> 23) & 0x30) + 24) ^ 0x26;
  LODWORD(v85) = *&v108[4 * ((v97 ^ BYTE4(v280) ^ v130) ^ 8)] ^ v75 ^ 0x4B73A0D3 ^ ((v112 ^ 0xA858B293) >> 16) ^ 0xD358B21A ^ (v89 - ((2 * v89) & 0x7600D0D4) - 1157601174);
  LODWORD(v88) = v85 & 0x641517F2 ^ v105 & 0xF2 | v85 & 0x9BEAE80D ^ v105 & 0xD;
  HIDWORD(v277) = v115 ^ 0xA2BF2E2B;
  LODWORD(v278) = *(v14 - 168) ^ 0x6BE3F74B;
  LODWORD(v277) = v76 ^ 0x72DAA53;
  HIDWORD(v278) = v121 ^ 0xE5A93BBA;
  LODWORD(v103) = v278 - (v76 ^ 0x72DAA53) - (v115 ^ 0xA2BF2E2B) - (v121 ^ 0xE5A93BBA) + 1669887692;
  LODWORD(v275) = v75 ^ 0x35;
  HIDWORD(v275) = v124 ^ 0xE14D126D;
  LODWORD(v276) = *(v14 - 148) ^ 0x4691CF67;
  HIDWORD(v276) = v129 ^ 0x7AEEAC51;
  LODWORD(v108) = v276 + v103 + (v129 ^ 0x7AEEAC51) + (v124 ^ 0xE14D126D) + 345424551 + (v75 ^ 0x459604E);
  HIDWORD(a13) = (*(v14 - 132) ^ 0xF31535CD ^ -(*(v14 - 132) ^ 0xF31535CD) ^ (67553656 - (*(v14 - 132) ^ 0xF713FCB5))) + 67553656;
  v133 = *(v14 - 136);
  v134 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v133 - 2992) - 8;
  LODWORD(v75) = *&v134[4 * (*(v14 - 123) ^ 0xB0)];
  HIDWORD(v135) = v75 ^ 0xE;
  LODWORD(v135) = v75 ^ 0x833592C0;
  LODWORD(v112) = v135 >> 5;
  LODWORD(v75) = *&v134[4 * (*(v14 - 127) ^ 0xD4)];
  HIDWORD(v135) = v75 ^ 0xE;
  LODWORD(v135) = v75 ^ 0x833592C0;
  LODWORD(v85) = v135 >> 5;
  v136 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v133 - 2994) - 4;
  v137 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v133 - 3252) - 8;
  LODWORD(v75) = *(v14 - 118) ^ *&v136[4 * (*(v14 - 118) ^ 0x45)] ^ *&v137[4 * (*(v14 - 120) ^ 0x9ELL)] ^ 0xBA2A589E;
  v138 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v133 - 3213) - 8;
  v139 = (v138[*(v14 - 117) ^ 0xC4] - 47) ^ 0x9B;
  LODWORD(v75) = v139 + v75 - 2 * (v139 & v75);
  v140 = (v138[*(v14 - 125) ^ 0xFELL] - 47) ^ (8 * v85) ^ *&v136[4 * (*(v14 - 126) ^ 0x49)] ^ (*(v14 - 126) - ((2 * *(v14 - 126)) & 0xB4) + 871792474);
  v141 = (v138[*(v14 - 121) ^ 0xA0] - 47) ^ 0x9B ^ (8 * v112) ^ *&v136[4 * (*(v14 - 122) ^ 0xC2)] ^ ((*(v14 - 122) ^ 0xCC) - ((2 * (*(v14 - 122) ^ 0xCC)) & 0xB4) + 871792474);
  LODWORD(v87) = *&v134[4 * (*(v14 - 119) ^ 0xDALL)];
  HIDWORD(v135) = v87 ^ 0xE;
  LODWORD(v135) = v87 ^ 0x833592C0;
  LODWORD(v87) = v135 >> 5;
  v271 = v138;
  v142 = *(v14 - 114);
  v273 = v136;
  v274 = v134;
  v143 = *&v136[4 * (v142 ^ 0x90)];
  HIDWORD(v135) = v143 ^ 0x13F67F5A;
  LODWORD(v135) = v143 ^ 0x20000000;
  LODWORD(v105) = *&v137[4 * (*(v14 - 116) ^ 0x24)] ^ ((v138[*(v14 - 113) ^ 0x43] - 47) - ((2 * (v138[*(v14 - 113) ^ 0x43] - 47)) & 0xE6) + 167080051) ^ __ROR4__((v135 >> 29) ^ (8 * v142) ^ 0x204D4844, 3);
  LODWORD(v142) = *&v134[4 * (*(v14 - 115) ^ 0xFLL)];
  HIDWORD(v135) = v142 ^ 0xE;
  LODWORD(v135) = v142 ^ 0x833592C0;
  LODWORD(v105) = v105 ^ (v135 >> 5) ^ (8 * (v135 >> 5)) ^ 0x6E31441D;
  *(v14 - 132) = v75 ^ v87 ^ (8 * v87) ^ 0xFB21EFFF;
  *(v14 - 148) = v112 ^ *&v137[4 * (*(v14 - 124) ^ 0x5FLL)] ^ 0x94963FD9 ^ (v141 - ((2 * v141) & 0x13EAE0E6) + 167080051);
  v272 = v137;
  *(v14 - 136) = v85 ^ *&v137[4 * (*(v14 - 128) ^ 0xF8)] ^ 0x54A3327B ^ (v140 - ((2 * v140) & 0x13EAE0E6) + 167080051);
  HIDWORD(v270) = (((*(v14 - 152) ^ 0x3EEC703) + 1202786591) ^ ((*(v14 - 152) ^ 0x3B5789BE) + 2131255204) ^ ((*(v14 - 152) ^ 0x3D821220) + 2044576830)) - 917948712;
  LODWORD(v135) = __ROR4__(v103, 7) ^ 0x8C466251;
  HIDWORD(v135) = v135;
  LODWORD(v270) = (v135 >> 25) ^ v103;
  HIDWORD(v269) = v99 ^ 0x5D211FA6;
  LODWORD(v269) = v108 ^ ((v97 ^ 0xE3447803) + v108 - 2 * ((v97 ^ 0xE3447803) & v108));
  LODWORD(v106) = *(v14 - 140);
  HIDWORD(v268) = *(v14 - 156) ^ 0x26;
  LODWORD(v268) = *(v14 - 172) ^ 0x26;
  LODWORD(v279) = v88;
  HIDWORD(v279) = v97 ^ HIDWORD(v280) ^ 0x5F58B293;
  HIDWORD(v267) = v88 ^ v97 ^ 0xA89CEFE1;
  v144 = *(v14 - 144);
  LODWORD(v267) = v88 ^ v97 ^ HIDWORD(v279);
  HIDWORD(a4) = v267 ^ v98;
  *(v14 - 144) = v144;
  *(v14 - 140) = v106;
  v145 = (v144 - 1414008090) & 0x54480FDF;
  *(v14 - 204) = 0;
  *(v14 - 200) = v145;
  LODWORD(v75) = v145 ^ 0x6DE | v106;
  *(v14 - 152) = v75;
  *(v14 - 172) = *&v137[4 * (*(v132 + v75) ^ 0x15)];
  v146 = (v132 + v106);
  LODWORD(v89) = *&v134[4 * (v146[13] ^ 0xFDLL)];
  HIDWORD(v135) = v89 ^ 0xE;
  LODWORD(v135) = v89 ^ 0x833592C0;
  LODWORD(v89) = v135 >> 5;
  LODWORD(v106) = (v144 - 779563) & 0xBEDFF;
  *(v14 - 196) = v106;
  LODWORD(v106) = v106 ^ 0xCE6 | *(v14 - 140);
  *(v14 - 156) = v106;
  v147 = v138[*(v132 + v106) ^ 0xFCLL] - 47;
  LODWORD(v106) = *&v137[4 * (*v146 ^ 0x7FLL)];
  LODWORD(v108) = *&v134[4 * (v146[5] ^ 0x46)];
  HIDWORD(v135) = v108 ^ 0xE;
  LODWORD(v135) = v108 ^ 0x833592C0;
  LODWORD(v142) = v135 >> 5;
  LODWORD(v108) = (v146[14] & 0x40 | 0x89) ^ v146[14] & 0xBF;
  v148 = *&v136[4 * (v108 ^ 0xE)] ^ (8 * v89 + 871792474 - ((16 * v89) & 0x67ECFEB0));
  v149 = *&v134[4 * (v146[9] ^ 0x5ELL)];
  v150 = v146[6];
  HIDWORD(v135) = v149 ^ 0xE;
  LODWORD(v135) = v149 ^ 0x833592C0;
  v151 = v135 >> 5;
  LODWORD(v88) = *&v136[4 * (v150 ^ 0x8F)];
  v152 = (v150 ^ 0x81) + 871792474 - ((2 * v150) & 0xB4);
  LODWORD(v150) = (v138[v146[11] ^ 0x57] - 47);
  v153 = v146[2];
  LODWORD(v138) = *&v136[4 * (v153 ^ 9)];
  LODWORD(v136) = *&v274[4 * (v146[1] ^ 0x42)];
  LODWORD(v88) = v88 ^ (8 * v142) ^ v152 ^ (v271[v146[7] ^ 0x38] - 47);
  HIDWORD(v135) = v136 ^ 0xE;
  LODWORD(v135) = v136 ^ 0x833592C0;
  LOBYTE(v107) = v271[v146[15] ^ 0xBCLL] - 47;
  LODWORD(v98) = v105 ^ v278 ^ v89 ^ *&v272[4 * (v146[12] ^ 0x4ALL)] ^ (v148 + 167080051 - ((2 * v148) & 0x13EAE0E6));
  *(v14 - 168) = v146;
  LODWORD(v105) = v142 ^ *(v14 - 148) ^ *&v272[4 * (v146[4] ^ 0x33)] ^ (v88 + 167080051 - ((2 * v88) & 0x13EAE0E6));
  LODWORD(v85) = v106 ^ *(v14 - 136) ^ v138 ^ ((v153 ^ 7) + 871792474 - ((2 * (v153 ^ 7)) & 0xB4)) ^ (v135 >> 5) ^ (v147 + 167080051 - ((2 * v147) & 0xE6)) ^ (8 * (v135 >> 5));
  LODWORD(v97) = *(v14 - 132) ^ HIDWORD(a13) ^ v151 ^ *(v14 - 172) ^ (8 * v151 + 167080051 - ((16 * v151) & 0x13EAE0E0)) ^ v150 ^ *&v273[4 * (v146[10] ^ 0xB0)] ^ (v146[10] + 871792474 - ((2 * v146[10]) & 0xB4));
  v154 = (v85 - ((2 * v85) & 0x1F3A0E80) - 1885534400) ^ *(v14 - 228);
  v155 = v154 ^ 0x96400BE7;
  LODWORD(v142) = (v105 - ((2 * v105) & 0x380F18F2) + 470256761) ^ v300;
  BYTE1(v106) = (((v105 - ((2 * v105) & 0x18F2) - 29575) ^ v300) >> 8) ^ 0xA7;
  LODWORD(v88) = *(v14 - 144);
  v156 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v88 - 486);
  LODWORD(v85) = *(v156 + 4 * ((v154 ^ 0x96400BE7) >> 24));
  HIDWORD(v135) = v85 ^ 0x50A;
  LODWORD(v135) = v85 ^ 0x77309000;
  LODWORD(v150) = v135 >> 12;
  v157 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v88 ^ 0x4BB)) - 8;
  v158 = *&v157[4 * (BYTE2(v142) ^ 0xDE)];
  HIDWORD(v135) = v158 ^ 0xC5B08;
  LODWORD(v135) = v158 ^ 0xFF400000;
  LODWORD(v136) = v107 ^ 0x9B ^ v98 ^ v108;
  v159 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v88 - 401) - 12;
  LODWORD(v146) = (v150 >> 3) & 0xFE65EA5 ^ v150 ^ (v135 >> 21) ^ (2 * (v135 >> 21) - 197699802);
  LODWORD(v150) = *&v159[4 * (BYTE1(v97) ^ 0x48)] + 748250554;
  v160 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v88 ^ 0x5B9));
  LODWORD(v88) = *(v160 + 4 * (v136 ^ 0x3C));
  *(v14 - 132) = -734032436;
  LODWORD(v88) = ((v136 ^ 0xBE) - 734032436 - ((2 * (v136 ^ 0xBE) + 322715488) & 0x11005C38)) ^ v136 ^ 0xBE ^ v88;
  v161 = *(v156 + 4 * ((v142 ^ 0x6A62A737) >> 24));
  LODWORD(v150) = ((v146 + v150 - 2 * (v146 & v150)) ^ (2 * (v146 & v150) - (v146 + v150)) ^ (v88 - ((v146 + v150 - 2 * (v146 & v150)) ^ v88))) + v88;
  HIDWORD(v135) = v161 ^ 0x50A;
  LODWORD(v135) = v161 ^ 0x77309000;
  v162 = v135 >> 12;
  v163 = *&v157[4 * ((v97 ^ 0xF6A52EA9) >> 16)];
  HIDWORD(v135) = v163 ^ 0xC5B08;
  LODWORD(v135) = v163 ^ 0xFF400000;
  v164 = v135 >> 21;
  *(v14 - 136) = (v162 >> 3) & 0xFE65EA5;
  LODWORD(v153) = v154 ^ 0xE7;
  LODWORD(v138) = (v154 ^ 0x499E1F57) + ((2 * (v154 ^ 0x96400BE7)) & 0x160);
  v165 = v138 - 1969132004 + ((2 * (v138 & 0x2E1E ^ (v154 ^ 0x96400BE7 | 0x7FFFFFFD))) ^ 0x11000005);
  v166 = *(v156 + 4 * ((v97 ^ 0xF6A52EA9) >> 24));
  HIDWORD(v135) = v166 ^ 0x50A;
  LODWORD(v135) = v166 ^ 0x77309000;
  v167 = v135 >> 12;
  LODWORD(v138) = *&v157[4 * (BYTE2(v98) ^ 0x1B)];
  HIDWORD(v135) = v138 ^ 0xC5B08;
  LODWORD(v135) = v138 ^ 0xFF400000;
  LODWORD(v138) = *&v159[4 * (BYTE1(v98) ^ 0x5A)] + 748250554;
  v168 = *(v160 + 4 * (v154 ^ 0x65u));
  v169 = v142 ^ 0x37 ^ v276 ^ v167 ^ ((v142 ^ 0x37) - 734032436 - ((2 * (v142 ^ 0x37) + 322715488) & 0x11005C38)) ^ *(v160 + 4 * (v142 ^ 0xB5u)) ^ (v135 >> 21) ^ (v167 >> 3) & 0xFE65EA5 ^ (2 * (v135 >> 21) - 197699802) ^ (*&v159[4 * BYTE1(v155)] + 748250554);
  LODWORD(v89) = *(v156 + 4 * ((v98 >> 24) ^ 1));
  v170 = *&v157[4 * BYTE2(v155)];
  HIDWORD(v135) = v89 ^ 0x50A;
  LODWORD(v135) = v89 ^ 0x77309000;
  LODWORD(v89) = v135 >> 12;
  HIDWORD(v135) = v170 ^ 0xC5B08;
  LODWORD(v135) = v170 ^ 0xFF400000;
  LODWORD(v106) = *&v159[4 * BYTE1(v106)];
  v171 = v159;
  *(v14 - 192) = v159;
  LODWORD(v89) = ((v97 ^ 0xA9) - 734032435 + ((2 * (((v97 ^ 0xA9) + 8112) & 0x2E1E ^ (v97 | 0x7FFFFFFD))) ^ 0x11000005)) ^ v97 ^ 0xA9 ^ *(v160 + 4 * (v97 ^ 0x2Bu)) ^ v89 ^ (v106 + 748250554) ^ (v89 >> 3) & 0xFE65EA5 ^ (v135 >> 21) ^ (2 * (v135 >> 21) - 197699802);
  LODWORD(v150) = (v150 - ((2 * v150) & 0x15ED1B14) - 1963553398) ^ v299;
  LODWORD(v112) = v270 ^ v153 ^ v162 ^ v138 ^ v168 ^ (v165 + 1) ^ v164 ^ *(v14 - 136) ^ (2 * v164 - 197699802);
  v172 = (v112 - ((2 * v112) & 0x796D27E4) - 1128885262) ^ v298;
  LODWORD(v142) = (v89 + 1891725171 - ((2 * v89) & 0xE182DEE6)) ^ v297;
  LODWORD(v106) = v150 ^ 0xB931F6A7;
  BYTE1(v89) = BYTE1(v172) ^ 0x1B;
  LODWORD(v159) = v169;
  *(v14 - 172) = v169;
  v169 ^= 0x279E30BAu;
  v173 = *(v156 + 4 * (BYTE3(v150) ^ 0x11));
  HIDWORD(v135) = v173 ^ 0x50A;
  LODWORD(v135) = v173 ^ 0x77309000;
  v174 = v135 >> 12;
  v175 = *&v157[4 * ((v172 ^ 0x9D4E1B73) >> 16)];
  HIDWORD(v135) = v175 ^ 0xC5B08;
  LODWORD(v135) = v175 ^ 0xFF400000;
  LODWORD(v88) = v135 >> 21;
  LODWORD(v138) = ((v142 ^ 0xE4) + 1235099568) ^ v142 ^ 0xE4;
  LODWORD(v112) = *(v156 + 4 * ((v172 ^ 0x9D4E1B73) >> 24));
  v176 = *(v160 + 4 * (v142 ^ 0x66u));
  HIDWORD(v135) = v112 ^ 0x50A;
  LODWORD(v135) = v112 ^ 0x77309000;
  LODWORD(v97) = v135 >> 12;
  v177 = v174 ^ (*&v171[4 * BYTE1(v169)] + 748250554) ^ 0x8AA16E1C ^ v88 ^ (2 * v88 - 197699802) ^ (v174 >> 3) & 0xFE65EA5 ^ (v138 & 0x9841829 ^ v176 & 0xB9E51829 | v138 & 0x401A27D6 ^ v176 & 0x461AE7D6);
  LODWORD(v112) = *&v157[4 * BYTE2(v169)];
  v178 = v157;
  HIDWORD(v135) = v112 ^ 0xC5B08;
  LODWORD(v135) = v112 ^ 0xFF400000;
  v179 = v135 >> 21;
  LODWORD(v88) = v150 ^ 0xA7;
  *(v14 - 148) = 285212675;
  *(v14 - 136) = v88 - 734032435 + ((2 * ((v88 + 8112) & 0x2E1D ^ (v150 ^ 0xB931F6A7 | 0x7FFFFFFE))) ^ 0x11000003);
  LODWORD(v153) = *(v156 + 4 * ((v159 >> 24) ^ 0x8F));
  HIDWORD(v135) = v153 ^ 0x50A;
  LODWORD(v135) = v153 ^ 0x77309000;
  v180 = v135 >> 12;
  LODWORD(v153) = *&v157[4 * (BYTE2(v142) ^ 0x86)];
  HIDWORD(v135) = v153 ^ 0xC5B08;
  LODWORD(v135) = v153 ^ 0xFF400000;
  v181 = v135 >> 21;
  v182 = v172 ^ 0x73;
  LODWORD(v138) = *(v156 + 4 * (BYTE3(v142) ^ 0xB1));
  LODWORD(v99) = *&v157[4 * (BYTE2(v150) ^ 0x8D)];
  HIDWORD(v135) = v138 ^ 0x50A;
  LODWORD(v135) = v138 ^ 0x77309000;
  LODWORD(v150) = v135 >> 12;
  HIDWORD(v135) = v99 ^ 0xC5B08;
  LODWORD(v135) = v99 ^ 0xFF400000;
  LODWORD(v99) = v182 - 734032435 + ((2 * ((v182 + 8112) & 0x2E1E ^ (v172 ^ 0x9D4E1B73 | 0x7FFFFFFD))) ^ 0x11000005);
  v183 = v97;
  LODWORD(v138) = (v97 >> 3) & 0xFE65EA5;
  v184 = *(v14 - 192);
  LODWORD(v97) = *(v184 + 4 * (BYTE1(v142) ^ 0xB1u)) + 748250554;
  LODWORD(v142) = v182 ^ v294 ^ v180 ^ *(v160 + 4 * (v172 ^ 0xF1u)) ^ v181 ^ (v180 >> 3) & 0xFE65EA5;
  v185 = *(v160 + 4 * (v88 - ((2 * v106) & 0x104) + 130));
  v186 = v184;
  LODWORD(v87) = v142 ^ v99 ^ (2 * v181 - 197699802) ^ (*(v184 + 4 * BYTE1(v106)) + 748250554);
  *(v14 - 176) = v87;
  LODWORD(v157) = *(v184 + 4 * BYTE1(v89)) + 748250554;
  LODWORD(v106) = (v177 - 1571244016 - ((2 * v177) & 0x44B17020)) ^ v296;
  LODWORD(v89) = v106 ^ 0xD259F83A;
  LODWORD(v184) = v88 ^ v295 ^ v183 ^ v138 ^ v97 ^ v179 ^ (2 * v179 - 197699802) ^ *(v14 - 136) ^ v185;
  LODWORD(v88) = v184 ^ 0xFBC237FD;
  v187 = v87 ^ 0xAF8EB4D9;
  LODWORD(v184) = v184 ^ 0xC3F25189;
  v188 = v169 ^ v277 ^ (v169 - 734032435 + ((2 * ((v169 + 8112) & 0x2E1D ^ (*(v14 - 172) | 0x7FFFFFFE))) ^ 0x11000003)) ^ *(v160 + 4 * (*(v14 - 172) ^ 0x38u)) ^ v157 ^ v150 ^ (v150 >> 3) & 0xFE65EA5 ^ (v135 >> 21) ^ (2 * (v135 >> 21) - 197699802);
  v189 = *(v156 + 4 * ((v106 ^ 0xD259F83A) >> 24));
  HIDWORD(v135) = v189 ^ 0x50A;
  LODWORD(v135) = v189 ^ 0x77309000;
  *(v14 - 180) = v135 >> 12;
  v190 = *&v178[4 * (BYTE2(v88) ^ 0x8C)];
  HIDWORD(v135) = v190 ^ 0xC5B08;
  LODWORD(v135) = v190 ^ 0xFF400000;
  LODWORD(v150) = v135 >> 21;
  v191 = *(v156 + 4 * BYTE3(v184));
  HIDWORD(v135) = v191 ^ 0x50A;
  LODWORD(v135) = v191 ^ 0x77309000;
  v192 = v135 >> 12;
  v193 = *&v178[4 * ((v87 ^ 0xAF8EB4D9) >> 16)];
  HIDWORD(v135) = v193 ^ 0xC5B08;
  LODWORD(v135) = v193 ^ 0xFF400000;
  LODWORD(v138) = v106 ^ 0x3A;
  v194 = v138 - 734032435 + ((2 * ((v138 + 8112) & 0x2E1E ^ (v106 ^ 0xD259F83A | 0x7FFFFFFD))) ^ 0x11000005);
  LODWORD(v106) = v192 ^ HIDWORD(v277) ^ (*(v186 + 4 * ((v188 ^ 0x1E8A) >> 8)) + 748250554) ^ (v135 >> 21) ^ (v192 >> 3) & 0xFE65EA5 ^ (2 * (v135 >> 21) - 197699802) ^ *(v160 + 4 * (v106 ^ 0xB8u)) ^ v138;
  LODWORD(v136) = *(v156 + 4 * ((v87 ^ 0xAF8EB4D9) >> 24));
  HIDWORD(v135) = v136 ^ 0x50A;
  LODWORD(v135) = v136 ^ 0x77309000;
  v195 = v135 >> 12;
  LODWORD(v87) = v106 ^ v194;
  LODWORD(v106) = *&v178[4 * ((v188 ^ 0xA8A31E8A) >> 16)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  v196 = v135 >> 21;
  LODWORD(v153) = *(v156 + 4 * ((v188 ^ 0xA8A31E8A) >> 24));
  HIDWORD(v135) = v153 ^ 0x50A;
  LODWORD(v135) = v153 ^ 0x77309000;
  LODWORD(v153) = v135 >> 12;
  LODWORD(v99) = v184 + *(v14 - 132) - ((2 * v184 + 322715488) & 0x11005C38);
  LODWORD(v106) = *&v178[4 * BYTE2(v89)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  LODWORD(v97) = v187;
  *(v14 - 136) = 285212679;
  LODWORD(v157) = v187 - 734032435 + ((2 * ((v187 + 8112) & 0x2E1F ^ (v187 | 0x7FFFFFFC))) ^ 0x11000007);
  LODWORD(v89) = v292 ^ v184 ^ v99 ^ v195 ^ *(v160 + 4 * (v88 ^ 0xF6u)) ^ v196 ^ (v195 >> 3) & 0xFE65EA5 ^ (2 * v196 - 197699802) ^ (*(v186 + 4 * BYTE1(v89)) + 748250554);
  v197 = v293 ^ *(v160 + 4 * (v188 ^ 8u)) ^ (*(v186 + 4 * BYTE1(v187)) + 748250554);
  v198 = *(v186 + 4 * BYTE1(v184)) + 748250554;
  LODWORD(v184) = *(v14 - 180) ^ v197 ^ v150 ^ (2 * v150 - 197699802) ^ (*(v14 - 180) >> 3) & 0xFE65EA5 ^ ((v188 ^ 0x8A) - 734032435 + ((2 * (((v188 ^ 0x8A) + 8112) & 0x2E1E ^ (v188 ^ 0xA8A31E8A | 0x7FFFFFFD))) ^ 0x11000005));
  LOBYTE(v189) = *(v14 - 180) ^ v197 ^ v150 ^ (2 * v150 + 38) ^ (*(v14 - 180) >> 3) & 0xA5 ^ ((v188 ^ 0x8A) - 51 + ((2 * (((v188 ^ 0x8A) - 80) & 0x1E ^ (v188 ^ 0x8A | 0xFD))) ^ 5)) ^ v188 ^ 0x8A;
  LODWORD(v150) = v97 ^ v291 ^ v157 ^ *(v160 + 4 * (*(v14 - 176) ^ 0x5Bu)) ^ v198 ^ v153 ^ (v153 >> 3) & 0xFE65EA5 ^ (v135 >> 21) ^ (2 * (v135 >> 21) - 197699802);
  LODWORD(v136) = (v89 ^ 0xD3DB0702) - ((2 * (v89 ^ 0xD3DB0702)) & 0x4038E096) + 538734667;
  *(v14 - 172) = v87;
  LOWORD(v193) = v87 ^ 0x3A5F;
  LODWORD(v89) = *(v156 + 4 * (BYTE3(v184) ^ 0x74));
  HIDWORD(v135) = v89 ^ 0x50A;
  LODWORD(v135) = v89 ^ 0x77309000;
  LODWORD(v99) = v135 >> 12;
  v199 = v178;
  LODWORD(v89) = *&v178[4 * ((v87 ^ 0x4FCC3A5F) >> 16)];
  HIDWORD(v135) = v89 ^ 0xC5B08;
  LODWORD(v135) = v89 ^ 0xFF400000;
  LODWORD(v89) = v135 >> 21;
  LODWORD(v142) = *(v156 + 4 * (BYTE3(v87) ^ 0xE7));
  HIDWORD(v135) = v142 ^ 0x50A;
  LODWORD(v135) = v142 ^ 0x77309000;
  *(v14 - 176) = v135 >> 12;
  LODWORD(v138) = *&v178[4 * ((v136 ^ 0xA8BC6600) >> 16)];
  HIDWORD(v135) = v138 ^ 0xC5B08;
  LODWORD(v135) = v138 ^ 0xFF400000;
  LODWORD(v142) = v135 >> 21;
  v200 = v189;
  v201 = v189 ^ 0x65;
  v202 = *(v156 + 4 * ((v136 ^ 0xA8BC6600) >> 24));
  HIDWORD(v135) = v202 ^ 0x50A;
  LODWORD(v135) = v202 ^ 0x77309000;
  LODWORD(v87) = v135 >> 12;
  LODWORD(v97) = *&v178[4 * ((v150 ^ 0x5B7B1149) >> 16)];
  LODWORD(v146) = v201 - 734032435 + (*(v14 - 148) ^ (2 * ((v201 + 8112) & 0x2E1D ^ (v201 | 0x7FFFFFFE))));
  *(v14 - 184) = v87;
  *(v14 - 180) = v146;
  HIDWORD(v135) = v97 ^ 0xC5B08;
  LODWORD(v135) = v97 ^ 0xFF400000;
  v203 = v135 >> 21;
  LODWORD(v97) = *(v186 + 4 * (BYTE1(v184) ^ 0xEAu));
  LODWORD(v106) = (v97 ^ 0xF05BC05C) & (2 * (v97 & 0xF953E25E)) ^ v97 & 0xF953E25E;
  LODWORD(v112) = ((2 * (v97 ^ 0xC0FF4050)) ^ 0x7359441C) & (v97 ^ 0xC0FF4050) ^ (2 * (v97 ^ 0xC0FF4050)) & 0x39ACA20E;
  LODWORD(v106) = (v112 ^ 0x21080008) & (4 * v106) ^ v106;
  LODWORD(v112) = ((4 * (v112 ^ 0x8A4A202)) ^ 0xE6B28838) & (v112 ^ 0x8A4A202) ^ (4 * (v112 ^ 0x8A4A202)) & 0x39ACA20C;
  LODWORD(v106) = (v112 ^ 0x20A08000) & (16 * v106) ^ v106;
  LODWORD(v112) = ((16 * (v112 ^ 0x190C2206)) ^ 0x9ACA20E0) & (v112 ^ 0x190C2206) ^ (16 * (v112 ^ 0x190C2206)) & 0x39ACA200;
  LODWORD(v106) = v106 ^ 0x39ACA20E ^ (v112 ^ 0x18882000) & (v106 << 8);
  LODWORD(v112) = (2 * v203 - 197699802) ^ (v87 >> 3) & 0xFE65EA5 ^ ((((4 * ((v106 << 16) & 0xFFE1FFFF ^ v106 ^ ((v106 << 16) ^ 0x20000) & (((v112 ^ 0x2124820E) << 8) & 0x39AC0000 ^ 0x11000000 ^ (((v112 ^ 0x2124820E) << 8) ^ 0x2CA20000) & (v112 ^ 0x2124820E)))) ^ (2 * v97)) & 0x668B06B8 ^ 0x4010480) + (v97 ^ ((v97 ^ 0xF12BE18) - 163488698) ^ ((v97 ^ 0x8AB808E2) + 1944840896) ^ ((v97 ^ 0xFC797487) + 86677211) ^ ((v97 ^ 0x7F7FDFDF) - 2043921021) ^ 0x35E99EFE));
  v204 = v112 - 1969132004 - ((2 * v112) & 0x1542DC38);
  LODWORD(v112) = *(v156 + 4 * ((v150 ^ 0x5B7B1149) >> 24));
  HIDWORD(v135) = v112 ^ 0x50A;
  LODWORD(v135) = v112 ^ 0x77309000;
  LODWORD(v112) = v135 >> 12;
  LODWORD(v184) = *&v178[4 * (BYTE2(v184) ^ 0x72)];
  HIDWORD(v135) = v184 ^ 0xC5B08;
  LODWORD(v135) = v184 ^ 0xFF400000;
  LODWORD(v184) = v135 >> 21;
  LODWORD(v106) = (v112 >> 3) & 0xFE65EA5 ^ (*(v186 + 4 * BYTE1(v193)) + 748250554) ^ (2 * v184 - 197699802);
  LODWORD(v99) = v99 ^ HIDWORD(v268) ^ *(v160 + 4 * (v150 ^ 0xCBu)) ^ (*(v186 + 4 * ((v136 ^ 0x6600) >> 8)) + 748250554) ^ v89 ^ (2 * v89 - 197699802) ^ (v99 >> 3) & 0xFE65EA5 ^ v150 ^ 0x49 ^ ((v150 ^ 0x49) - 734032435 + ((2 * (((v150 ^ 0x49) + 8112) & 0x2E1E ^ (v150 | 0x7FFFFFFD))) ^ 0x11000005));
  v205 = v136 ^ v288 ^ (v136 + 1235099568) ^ *(v160 + 4 * (v136 ^ 0x82u)) ^ v112 ^ v184 ^ (v106 - 1969132004 - ((2 * v106) & 0x1542DC38));
  LODWORD(v112) = *(v14 - 176) ^ v290 ^ v201 ^ (*(v186 + 4 * (BYTE1(v150) ^ 0x11u)) + 748250554) ^ *(v160 + 4 * (v200 ^ 0xE7u)) ^ (*(v14 - 176) >> 3) & 0xFE65EA5 ^ v142 ^ *(v14 - 180) ^ (2 * v142 - 197699802);
  LOBYTE(v142) = *(v14 - 176) ^ v290 ^ v201 ^ (*(v186 + 4 * (BYTE1(v150) ^ 0x11u)) - 70) ^ *(v160 + 4 * (v200 ^ 0xE7u)) ^ (*(v14 - 176) >> 3) & 0xA5 ^ v142 ^ *(v14 - 180) ^ (2 * v142 + 38) ^ 0x48;
  LOWORD(v201) = v112 ^ 0xDEE4;
  v206 = v193 ^ v289 ^ (v193 + 1235099568) ^ *(v160 + 4 * (*(v14 - 172) ^ 0xDDu)) ^ v203 ^ *(v14 - 184) ^ v204;
  LODWORD(v106) = *(v156 + 4 * ((v99 ^ 0x4759F83A) >> 24));
  HIDWORD(v135) = v106 ^ 0x50A;
  LODWORD(v135) = v106 ^ 0x77309000;
  LODWORD(v106) = v135 >> 12;
  LODWORD(v87) = *&v178[4 * (((v112 ^ 0xC440D048) >> 16) ^ 0x2F)];
  HIDWORD(v135) = v87 ^ 0xC5B08;
  LODWORD(v135) = v87 ^ 0xFF400000;
  LODWORD(v87) = v135 >> 21;
  HIDWORD(v135) = v87 + 2048633747;
  LODWORD(v135) = v87 + 2048633747;
  v207 = (((v205 ^ 0xE4) + 1235099568) ^ (-1235099568 - (v205 ^ 0xE4)) ^ ((v205 ^ 0xE4) - (((v205 ^ 0xE4) + 1235099568) ^ v205 ^ 0xE4))) + (v205 ^ 0xE4);
  LODWORD(v106) = v106 ^ HIDWORD(v278) ^ *(v160 + 4 * (v205 ^ 0x66u)) ^ (v106 >> 3) & 0xFE65EA5 ^ (*(v186 + 4 * (BYTE1(v206) ^ 0x4Au)) + 748250554) ^ __ROR4__((v135 >> 27) & 0xFFFFFFEF ^ __ROR4__(v87, 28) ^ 0x82A6F428, 4);
  LODWORD(v112) = *(v156 + 4 * ((v112 ^ 0x6CD3DEE4) >> 24));
  HIDWORD(v135) = v112 ^ 0x50A;
  LODWORD(v135) = v112 ^ 0x77309000;
  v208 = v135 >> 12;
  LODWORD(v136) = v106 ^ (v207 - 1969132004 - ((2 * v207) & 0x1542DC38));
  LODWORD(v112) = *&v178[4 * (BYTE2(v206) ^ 0x8F)];
  HIDWORD(v135) = v112 ^ 0xC5B08;
  LODWORD(v135) = v112 ^ 0xFF400000;
  LODWORD(v88) = v135 >> 21;
  LODWORD(v171) = *(v14 - 136);
  LODWORD(v112) = *(v156 + 4 * (HIBYTE(v206) ^ 9));
  HIDWORD(v135) = v112 ^ 0x50A;
  LODWORD(v135) = v112 ^ 0x77309000;
  LODWORD(v150) = v135 >> 12;
  LODWORD(v112) = *&v178[4 * (BYTE2(v205) ^ 0x86)];
  HIDWORD(v135) = v112 ^ 0xC5B08;
  LODWORD(v135) = v112 ^ 0xFF400000;
  v209 = v135 >> 21;
  LODWORD(v112) = ((v201 << 8) - 1642090423) ^ (v201 << 8);
  v210 = (v112 >> 8) - 1969132004 - ((v112 >> 7) & 0x1005C38);
  LODWORD(v112) = *(v156 + 4 * (HIBYTE(v205) ^ 0xB1));
  HIDWORD(v135) = v112 ^ 0x50A;
  LODWORD(v135) = v112 ^ 0x77309000;
  LODWORD(v138) = v135 >> 12;
  LODWORD(v112) = *&v178[4 * ((v99 ^ 0x4759F83A) >> 16)];
  HIDWORD(v135) = v112 ^ 0xC5B08;
  LODWORD(v135) = v112 ^ 0xFF400000;
  LODWORD(v184) = *(v186 + 4 * ((v99 ^ 0xF83A) >> 8)) + 748250554;
  LODWORD(v142) = *(v160 + 4 * (v142 ^ 0x2Eu));
  LODWORD(v146) = v208 ^ v285 ^ v99 ^ 0x3A ^ *(v160 + 4 * (v99 ^ 0xB8u)) ^ (*(v186 + 4 * (BYTE1(v205) ^ 0xB1u)) + 748250554) ^ (v208 >> 3) & 0xFE65EA5 ^ v88 ^ ((v99 ^ 0x3A) - 734032435 + (v171 ^ (2 * (((v99 ^ 0x3A) + 8112) & 0x2E1F ^ (v99 ^ 0x4759F83A | 0x7FFFFFFC))))) ^ (2 * v88 - 197699802);
  *(v14 - 172) = v146;
  LODWORD(v142) = v210 ^ v287 ^ v184 ^ v142;
  LODWORD(v184) = v146 ^ 0xE23DD5BF;
  v211 = v142 ^ v209 ^ v150 ^ (2 * v209 - 197699802) ^ (v150 >> 3) & 0xFE65EA5;
  v212 = (v146 ^ 0xE23DD5BF) >> 24;
  LODWORD(v150) = v138 ^ v286 ^ (*(v186 + 4 * BYTE1(v201)) + 748250554) ^ (v135 >> 21) ^ (v138 >> 3) & 0xFE65EA5 ^ (2 * (v135 >> 21) - 197699802) ^ v206 ^ 0xC8 ^ *(v160 + 4 * (v206 ^ 0x4Au)) ^ ((v206 ^ 0xC8) - 734032435 + (v171 ^ (2 * (((v206 ^ 0xC8) + 8112) & 0x2E1F ^ (v206 | 0x7FFFFFFC)))));
  LODWORD(v106) = *(v156 + 4 * ((v136 >> 24) ^ 0x36));
  HIDWORD(v135) = v106 ^ 0x50A;
  LODWORD(v135) = v106 ^ 0x77309000;
  *(v14 - 184) = v135 >> 12;
  LODWORD(v106) = *&v178[4 * ((v146 ^ 0xE23DD5BF) >> 16)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  LODWORD(v178) = v135 >> 21;
  v213 = v150 ^ 0xE4;
  LODWORD(v146) = *(v14 - 148);
  *(v14 - 176) = v213 - 734032435 + (v146 ^ (2 * ((v213 + 8112) & 0x2E1D ^ (v150 | 0x7FFFFFFE))));
  LODWORD(v106) = *(v156 + 4 * v212);
  HIDWORD(v135) = v106 ^ 0x50A;
  LODWORD(v135) = v106 ^ 0x77309000;
  LODWORD(v106) = v135 >> 12;
  LODWORD(v87) = *&v199[4 * (BYTE2(v211) ^ 0x34)];
  HIDWORD(v135) = v87 ^ 0xC5B08;
  LODWORD(v135) = v87 ^ 0xFF400000;
  LODWORD(v87) = v135 >> 21;
  v214 = v136 ^ 0x67;
  LODWORD(v112) = *(v156 + 4 * ((v211 ^ 0x13882E93u) >> 24));
  HIDWORD(v135) = v112 ^ 0x50A;
  LODWORD(v135) = v112 ^ 0x77309000;
  LODWORD(v138) = v135 >> 12;
  LODWORD(v112) = v106 ^ HIDWORD(v275) ^ *(v160 + 4 * (v136 ^ 0xE5u)) ^ (*(v186 + 4 * ((v150 ^ 0xB1E4) >> 8)) + 748250554) ^ v87 ^ (v106 >> 3) & 0xFE65EA5;
  LODWORD(v106) = (2 * v87 - 197699802) ^ (v214 + *(v14 - 132) - ((2 * v214 + 322715488) & 0x11005C38));
  LODWORD(v87) = *&v199[4 * ((v150 ^ 0xB186B1E4) >> 16)];
  v215 = v112 ^ v106;
  HIDWORD(v135) = v87 ^ 0xC5B08;
  LODWORD(v135) = v87 ^ 0xFF400000;
  v216 = v135 >> 21;
  v217 = v184;
  LODWORD(v97) = v184 - 734032435 + (v146 ^ (2 * ((v184 + 8112) & 0x2E1D ^ (v184 | 0x7FFFFFFE))));
  LODWORD(v112) = *(v156 + 4 * ((v150 ^ 0xB186B1E4) >> 24));
  HIDWORD(v135) = v112 ^ 0x50A;
  LODWORD(v135) = v112 ^ 0x77309000;
  LODWORD(v112) = v135 >> 12;
  LODWORD(v106) = *&v199[4 * (((v136 ^ 0x9E8E5B67) >> 16) ^ 0xBC)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  LODWORD(v106) = v135 >> 21;
  LODWORD(v142) = *(v14 - 184);
  LODWORD(v150) = *(v160 + 4 * (v150 ^ 0x66u));
  v218 = *(v186 + 4 * ((v211 ^ 0x2E93) >> 8));
  LODWORD(v184) = v211 ^ 0x93 ^ v283 ^ v112 ^ *(v160 + 4 * (v211 ^ 0x11u)) ^ ((v211 ^ 0x93) - 734032435 + (v146 ^ (2 * (((v211 ^ 0x93) + 8112) & 0x2E1D ^ (v211 ^ 0x13882E93 | 0x7FFFFFFE))))) ^ (*(v186 + 4 * BYTE1(v184)) + 748250554) ^ v106 ^ (v112 >> 3) & 0xFE65EA5;
  *(v14 - 180) = v215;
  LODWORD(v112) = v215 ^ v214;
  LODWORD(v184) = v184 ^ (2 * v106 - 197699802);
  LODWORD(v136) = *(v186 + 4 * (BYTE1(v136) ^ 0x3Du)) + 748250554;
  LODWORD(v153) = *(v160 + 4 * (*(v14 - 172) ^ 0x3Du));
  v219 = v150 ^ v284 ^ v142 ^ v178 ^ (v142 >> 3) & 0xFE65EA5 ^ (v218 + 748250554) ^ (2 * v178 - 197699802) ^ *(v14 - 176);
  *(v14 - 148) = v219 ^ v213;
  LODWORD(v89) = v219 ^ v213 ^ 0x172CC226;
  LODWORD(v138) = v217 ^ HIDWORD(v283) ^ v97 ^ v153 ^ v138 ^ v136 ^ v216 ^ (v138 >> 3) & 0xFE65EA5 ^ (2 * v216 - 197699802);
  LODWORD(v106) = *(v156 + 4 * BYTE3(v89));
  HIDWORD(v135) = v106 ^ 0x50A;
  LODWORD(v135) = v106 ^ 0x77309000;
  v220 = v135 >> 12;
  LODWORD(v106) = *&v199[4 * ((v112 ^ 0xD66D210) >> 16)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  LODWORD(v88) = v135 >> 21;
  LODWORD(v106) = (v220 >> 3) & 0xFE65EA5 ^ (*(v186 + 4 * (BYTE1(v138) ^ 0xC2u)) + 748250554) ^ (2 * v88 - 197699802);
  LODWORD(v171) = v106 - 1969132004 - ((2 * v106) & 0x1542DC38);
  LODWORD(v106) = *(v156 + 4 * (HIBYTE(v215) ^ 0xA5));
  HIDWORD(v135) = v106 ^ 0x50A;
  LODWORD(v135) = v106 ^ 0x77309000;
  *(v14 - 176) = v135 >> 12;
  *(v14 - 172) = v171;
  LODWORD(v106) = *&v199[4 * (BYTE2(v138) ^ 0x90)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  v221 = v135 >> 21;
  LODWORD(v150) = (v219 ^ v213) ^ 0x26;
  LODWORD(v87) = *(v156 + 4 * ((v138 >> 24) ^ 0xBC));
  HIDWORD(v135) = v87 ^ 0x50A;
  LODWORD(v135) = v87 ^ 0x77309000;
  v222 = v135 >> 12;
  LODWORD(v106) = *&v199[4 * ((v184 ^ 0x1490A426) >> 16)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  LODWORD(v99) = v135 >> 21;
  LODWORD(v87) = *(v156 + 4 * (BYTE3(v184) ^ 0xBC));
  HIDWORD(v135) = v87 ^ 0x50A;
  LODWORD(v135) = v87 ^ 0x77309000;
  LODWORD(v87) = v135 >> 12;
  v223 = *&v199[4 * (BYTE2(v219) ^ 0x90)];
  HIDWORD(v135) = v223 ^ 0xC5B08;
  LODWORD(v135) = v223 ^ 0xFF400000;
  v224 = v138 ^ 0x26 ^ v282 ^ ((v138 ^ 0x26) + *(v14 - 132) - ((2 * (v138 ^ 0x26) + 322715488) & 0x11005C38)) ^ *(v160 + 4 * (v138 ^ 0xA4u)) ^ (*(v186 + 4 * (BYTE1(*(v14 - 180)) ^ 0xB4u)) + 748250554) ^ v87 ^ (v135 >> 21) ^ (v87 >> 3) & 0xFE65EA5 ^ (197699801 - 2 * (v135 >> 21));
  v225 = v220 ^ v268 ^ *(v160 + 4 * (v184 ^ 0xA4u)) ^ v88 ^ v184 ^ 0x26 ^ ((v184 ^ 0x26) + 1235099568) ^ *(v14 - 172);
  LODWORD(v112) = v112 ^ 0x10 ^ HIDWORD(v276) ^ *(v160 + 4 * (v112 ^ 0x92u)) ^ (*(v186 + 4 * BYTE1(v89)) + 748250554) ^ v222 ^ ((v112 ^ 0x10) - 734032435 + (*(v14 - 136) ^ (2 * (((v112 ^ 0x10) + 8112) & 0x2E1F ^ (v112 | 0x7FFFFFFC))))) ^ v99 ^ (v222 >> 3) & 0xFE65EA5 ^ (2 * v99 - 197699802);
  LODWORD(v184) = *(v14 - 176) ^ HIDWORD(v282) ^ *(v160 + 4 * (*(v14 - 148) ^ 0xA4u)) ^ (*(v186 + 4 * (BYTE1(v184) ^ 0xC2u)) + 748250554) ^ v221 ^ (*(v14 - 176) >> 3) & 0xFE65EA5 ^ (2 * v221 - 197699802) ^ (v150 - 734032435 + ((2 * ((v150 + 8112) & 0x2E1E ^ (v89 | 0x7FFFFFFD))) ^ 0x11000005));
  v226 = v150 ^ 0x16A07E3B ^ v184;
  LODWORD(v106) = *(v156 + 4 * ((v225 ^ 0x8ABBD079) >> 24));
  LODWORD(v184) = *&v199[4 * (BYTE2(v184) ^ 0x1C)];
  HIDWORD(v135) = v106 ^ 0x50A;
  LODWORD(v135) = v106 ^ 0x77309000;
  LODWORD(v106) = v135 >> 12;
  HIDWORD(v135) = v184 ^ 0xC5B08;
  LODWORD(v135) = v184 ^ 0xFF400000;
  LODWORD(v184) = v135 >> 21;
  LODWORD(v142) = (v106 >> 3) & 0xFE65EA5 ^ (*(v186 + 4 * (BYTE1(v112) ^ 0xA1u)) + 748250554) ^ (2 * v184 - 197699802);
  LODWORD(v184) = *(v160 + 4 * (v224 ^ 0x99u)) ^ v184 ^ v106 ^ (v142 - 1969132004 - ((2 * v142) & 0x1542DC38));
  LODWORD(v106) = ((v224 ^ 0x1B) + 1235099568) ^ v224 ^ 0x1B;
  v227 = (v106 ^ -v106 ^ (v184 - (v184 ^ v106))) + v184;
  LODWORD(v142) = __ROR4__(*(v156 + 4 * HIBYTE(v226)), 12) ^ 0x50A77309;
  *(v14 - 148) = (v142 >> 3) & 0xFE65EA5;
  LODWORD(v106) = *&v199[4 * (BYTE2(v112) ^ 0xE4)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  v228 = v135 >> 21;
  LODWORD(v88) = *(v186 + 4 * (BYTE1(v224) ^ 0x4Eu)) + 748250554;
  LODWORD(v153) = v225 ^ 0x79;
  LODWORD(v136) = *(v160 + 4 * (v225 ^ 0xFBu));
  LODWORD(v106) = *(v156 + 4 * (BYTE3(v112) ^ 0x61));
  HIDWORD(v135) = v106 ^ 0x50A;
  LODWORD(v135) = v106 ^ 0x77309000;
  v229 = v135 >> 12;
  LODWORD(v106) = *&v199[4 * (BYTE2(v224) ^ 0x79)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  v230 = v135 >> 21;
  LODWORD(v87) = *(v160 + 4 * (v226 - ((2 * v226) & 0x104) + 130));
  LODWORD(v106) = (v87 ^ 0x8AA16E1C) + ((v226 + 1235099568) ^ v226) + ((2 * (((v226 + 1235099568) ^ v226) & (v87 ^ 0x9942E1C))) ^ 0xFDD7FFFF);
  LODWORD(v87) = *(v156 + 4 * (HIBYTE(v224) ^ 0x4E));
  HIDWORD(v135) = v87 ^ 0x50A;
  LODWORD(v135) = v87 ^ 0x77309000;
  LODWORD(v87) = v135 >> 12;
  v231 = *&v199[4 * ((v225 ^ 0x8ABBD079) >> 16)];
  HIDWORD(v135) = v231 ^ 0xC5B08;
  LODWORD(v135) = v231 ^ 0xFF400000;
  v232 = v135 >> 21;
  v233 = (v87 >> 3) & 0xFE65EA5 ^ (*(v186 + 4 * BYTE1(v226)) + 748250554) ^ (2 * v232 - 197699802);
  LODWORD(v89) = *(v186 + 4 * ((v225 ^ 0xD079) >> 8)) + 748250554;
  v234 = v112 ^ 0xA8 ^ v281 ^ ((v112 ^ 0xA8) + 1235099568) ^ *(v160 + 4 * (v112 ^ 0x2Au)) ^ v87 ^ v232 ^ (v233 - 1969132004 - ((2 * v233) & 0x1542DC38));
  LODWORD(v89) = v229 ^ HIDWORD(v280) ^ v230 ^ (v229 >> 3) & 0xFE65EA5 ^ v89 ^ (2 * v230 - 197699802) ^ (v106 + 1);
  LODWORD(v138) = v153 ^ HIDWORD(v281) ^ v142 ^ (v153 + *(v14 - 132) - ((2 * v153 + 322715488) & 0x11005C38)) ^ v88 ^ v136 ^ v228 ^ *(v14 - 148) ^ (2 * v228 - 197699802);
  LODWORD(v112) = *(v156 + 4 * ((HIDWORD(v269) ^ v227) >> 24));
  HIDWORD(v135) = v112 ^ 0x50A;
  LODWORD(v135) = v112 ^ 0x77309000;
  LODWORD(v112) = v135 >> 12;
  LODWORD(v184) = *&v199[4 * ((v138 ^ 0xE0B169A2) >> 16)];
  HIDWORD(v135) = v184 ^ 0xC5B08;
  LODWORD(v135) = v184 ^ 0xFF400000;
  v235 = v135 >> 21;
  LODWORD(v87) = (v112 >> 3) & 0xFE65EA5 ^ (*(v186 + 4 * (BYTE1(v89) ^ 0xB1u)) + 748250554) ^ (2 * v235 - 197699802);
  LODWORD(v184) = *(v156 + 4 * ((v138 ^ 0xE0B169A2) >> 24));
  *(v14 - 172) = *(v160 + 4 * (v234 ^ 0x3Du));
  HIDWORD(v135) = v184 ^ 0x50A;
  LODWORD(v135) = v184 ^ 0x77309000;
  LODWORD(v184) = v135 >> 12;
  LODWORD(v142) = *&v199[4 * (BYTE2(v89) ^ 0x86)];
  HIDWORD(v135) = v142 ^ 0xC5B08;
  LODWORD(v135) = v142 ^ 0xFF400000;
  LODWORD(v142) = v135 >> 21;
  *(v14 - 148) = *(v186 + 4 * (BYTE1(v234) ^ 0xD5u));
  *(v14 - 132) = (BYTE4(v269) ^ v227) - 734032435 + ((2 * (((BYTE4(v269) ^ v227) + 8112) & 0x2E1E ^ (HIDWORD(v269) ^ v227 | 0x7FFFFFFD))) ^ 0x11000005);
  LODWORD(v106) = *(v156 + 4 * (BYTE3(v89) ^ 0xB4));
  HIDWORD(v135) = v106 ^ 0x50A;
  LODWORD(v135) = v106 ^ 0x77309000;
  v236 = v135 >> 12;
  LODWORD(v106) = *&v199[4 * (BYTE2(v234) ^ 0x3D)];
  HIDWORD(v135) = v106 ^ 0xC5B08;
  LODWORD(v135) = v106 ^ 0xFF400000;
  v237 = v135 >> 21;
  LODWORD(v156) = *(v156 + 4 * (HIBYTE(v234) ^ 0x4A));
  HIDWORD(v135) = v156 ^ 0x50A;
  LODWORD(v135) = v156 ^ 0x77309000;
  LODWORD(v156) = v135 >> 12;
  LODWORD(v171) = *&v199[4 * ((HIDWORD(v269) ^ v227) >> 16)];
  HIDWORD(v135) = v171 ^ 0xC5B08;
  LODWORD(v135) = v171 ^ 0xFF400000;
  LODWORD(v150) = v89 ^ 0xE4;
  LODWORD(v146) = *(v160 + 4 * (v89 ^ 0x66u));
  LODWORD(v97) = v150 - 734032435 + ((2 * ((v150 + 8112) & 0x2E1E ^ (v89 | 0x7FFFFFFD))) ^ 0x11000005);
  LODWORD(v171) = v275 ^ v235 ^ *(v14 - 172) ^ v112 ^ v234 ^ 0xBF ^ ((v234 ^ 0xBF) + 1235099568) ^ 0x5E4DF519 ^ (v87 - 1969132004 - ((2 * v87) & 0x1542DC38));
  LODWORD(v89) = v138 ^ 0xA2 ^ HIDWORD(v279) ^ ((v138 ^ 0xA2) - 734032435 + (*(v14 - 136) ^ (2 * (((v138 ^ 0xA2) + 8112) & 0x2E1F ^ (v138 ^ 0xE0B169A2 | 0x7FFFFFFC))))) ^ *(v160 + 4 * (v138 ^ 0x20u)) ^ v236 ^ v237 ^ (v236 >> 3) & 0xFE65EA5 ^ (*(v186 + 4 * ((WORD2(v269) ^ v227) >> 8)) + 748250554) ^ (2 * v237 - 197699802);
  LODWORD(v184) = v269 ^ v184 ^ (BYTE4(v269) ^ v227) ^ (v184 >> 3) & 0xFE65EA5 ^ (*(v14 - 148) + 748250554) ^ v142 ^ (2 * v142 - 197699802) ^ *(v160 + 4 * ((BYTE4(v269) ^ v227) ^ 0x82u)) ^ *(v14 - 132) ^ 0xA74DF5BA;
  LODWORD(v156) = v280 ^ v146 ^ (*(v186 + 4 * (BYTE1(v138) ^ 0x69u)) + 748250554) ^ v156 ^ (v156 >> 3) & 0xFE65EA5 ^ (v135 >> 21) ^ v150 ^ (2 * (v135 >> 21) - 197699802) ^ v97 ^ 0x41098DB9;
  v238 = *(v14 - 144);
  v239 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v238 - 456) - 4;
  v240 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v238 ^ 0x536)) - 4;
  v241 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v238 - 641) - 4;
  HIDWORD(v135) = *&v241[4 * (BYTE1(v89) ^ 0x3F)];
  LODWORD(v135) = HIDWORD(v135) ^ 0xCCB4FEFC;
  LODWORD(v106) = *&v240[4 * (BYTE2(v184) ^ 4)] ^ BYTE2(v184) ^ (v135 >> 2) ^ ((v135 >> 2) >> 2) & 0x1F739B4D ^ *&v239[4 * ((v171 >> 24) ^ 0xF5)];
  HIDWORD(v135) = *&v241[4 * BYTE1(v156)];
  LODWORD(v135) = HIDWORD(v135) ^ 0xCCB4FEFC;
  LODWORD(v87) = *&v239[4 * (BYTE3(v184) ^ 0xF5)] ^ (BYTE3(v184) + 1653490993 - ((v184 >> 23) & 0x62)) ^ (((v89 ^ 0x1E51CD95) >> 16) + 1703262569 - (((v89 ^ 0x1E51CD95) >> 15) & 0xD2)) ^ *&v240[4 * (((v89 ^ 0x1E51CD95) >> 16) ^ 4)] ^ (v135 >> 2) ^ ((v135 >> 2) >> 2) & 0x1F739B4D;
  v242 = v87 + 226260177 - ((2 * v87) & 0x1AF8E9A2);
  HIDWORD(v135) = *&v241[4 * BYTE1(v171)];
  LODWORD(v135) = HIDWORD(v135) ^ 0xCCB4FEFC;
  LODWORD(v87) = *&v239[4 * (((v89 ^ 0x1E51CD95) >> 24) ^ 0xF5)] ^ (((v89 ^ 0x1E51CD95) >> 24) + 1653490993 - (((v89 ^ 0x1E51CD95) >> 23) & 0x62)) ^ *&v240[4 * (BYTE2(v156) ^ 4)] ^ (v135 >> 2) ^ (BYTE2(v156) + 1703262569 - ((v156 >> 15) & 0xD2)) ^ ((v135 >> 2) >> 2) & 0x1F739B4D;
  v243 = *&v239[4 * (BYTE3(v156) ^ 0xF5)];
  LODWORD(v240) = *&v240[4 * (BYTE2(v171) ^ 4)];
  LODWORD(v150) = BYTE2(v171) + 1703262569 - ((v171 >> 15) & 0xD2);
  v244 = HIDWORD(v270) < 0xAADC159;
  LODWORD(v240) = (v240 ^ v150) + 1653490993 - ((2 * (v240 ^ v150)) & 0xC51C8A62);
  HIDWORD(v135) = *&v241[4 * BYTE1(v184)];
  LODWORD(v135) = HIDWORD(v135) ^ 0xCCB4FEFC;
  v245 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v238 - 650) - 8;
  v246 = *&v245[4 * v171];
  v247 = *&v245[4 * v156] ^ v279 ^ ((v106 ^ 0x70BFC58) + 226260177 - 2 * ((v106 ^ 0x70BFC58) & 0xD7C74D7 ^ v106 & 6));
  v248 = v247 ^ (v171 >> 24);
  v249 = *&v245[4 * v184] ^ v267 ^ (v87 + 226260177 - ((2 * v87) & 0x1AF8E9A2));
  v250 = HIDWORD(a4) ^ *&v245[4 * (v89 ^ 0x2A)] ^ (v135 >> 2) ^ ((v240 ^ v243 ^ ((v135 >> 2) >> 2) & 0x1F739B4D) + 226260177 - ((2 * (v240 ^ v243 ^ ((v135 >> 2) >> 2) & 0x1F739B4D)) & 0x1AF8E9A2));
  v251 = v250 ^ BYTE3(v156);
  v252 = (HIDWORD(v267) ^ v246 ^ v242 ^ 0xC0A18B06 ^ -(HIDWORD(v267) ^ v246 ^ v242 ^ 0xC0A18B06) ^ (496393792 - (HIDWORD(v267) ^ v246 ^ v242 ^ 0xDD37D546))) + 496393792;
  v253 = v248 ^ 0x17FE5630;
  if (((v249 ^ 0x3C38259F) & 0x4000000) != 0)
  {
    v254 = -67108864;
  }

  else
  {
    v254 = 0x4000000;
  }

  v255 = v254 + (v249 ^ 0x3C38259F);
  v256 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v238 - 510) - 4;
  v257 = *(v14 - 224);
  *(v257 + *(v14 - 156)) = v256[v248 ^ 0x4ELL] ^ ((v248 ^ 0xCF) + (v248 ^ 0x9C) - ((2 * ((v248 ^ 0xCF) + (v248 ^ 0x9C))) & 0x30) - 104) ^ 0xA;
  v258 = ((v249 & 0x40 | (v255 ^ 0x98) & 0xBF) ^ 0x53) + (v255 ^ 0x98);
  v259 = *(v14 - 168);
  v259[11] = v256[v249 ^ 0x86] ^ 0x5B ^ (v258 - ((2 * v258) & 0x30) - 104);
  v260 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v238 - 417);
  v259[14] = *(v260 + (((v251 ^ 0x3C5B) >> 8) ^ 0xEELL)) ^ (((v251 ^ 0x3C5B) >> 8) - (((v251 ^ 0x4EEB3C5Bu) >> 7) & 0x52) - 87) ^ 6;
  v259[6] = *(v260 + (BYTE1(v252) ^ 0x61)) ^ ((BYTE1(v252) ^ 0x3D) - ((2 * (BYTE1(v252) ^ 0x3D)) & 0x52) - 87) ^ 0x9D;
  v261 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v238 ^ 0x5A1)) - 4;
  *(v257 + *(v14 - 152)) = v261[HIBYTE(v255) ^ 0xD2] ^ 0x85;
  v259[7] = ((v252 ^ 0x9D) + (v252 ^ 0xCE) + (~(2 * ((v252 ^ 0x9D) + (v252 ^ 0xCE))) | 0xCF) - 103) ^ v256[v252 ^ 0x1CLL] ^ 0xC1;
  v262 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v238 ^ 0x5BE)) - 12;
  v259[13] = v262[((v251 ^ 0x4EEB3C5Bu) >> 16) ^ 0xF4] ^ (((v251 ^ 0x4EEB3C5Bu) >> 16) - (((v251 ^ 0x4EEB3C5Bu) >> 15) & 0x12) + 9) ^ 0xC4;
  v259[1] = (BYTE2(v253) - ((v253 >> 15) & 0x12) + 9) ^ 0xC8 ^ v262[BYTE2(v253) ^ 0xBELL];
  v259[10] = (((v255 ^ 0x4198) >> 8) - (((v255 ^ 0x88BE4198) >> 7) & 0x52) - 87) ^ 0xDE ^ *(v260 + (((v255 ^ 0x4198) >> 8) ^ 0x4FLL));
  v259[5] = (BYTE2(v252) - ((v252 >> 15) & 0x12) + 9) ^ 0x31 ^ v262[BYTE2(v252) ^ 0xA6];
  v259[4] = v261[HIBYTE(v252) ^ 0x5ALL] ^ 0xF1;
  v263 = (BYTE1(v253) ^ -BYTE1(v253) ^ (121 - (BYTE1(v253) ^ 0x79u))) + 121;
  v259[15] = ((v251 ^ 0xB3) + (v251 ^ 0xE0) - ((2 * ((v251 ^ 0xB3) + (v251 ^ 0xE0))) & 0x30) - 104) ^ 0xA9 ^ v256[v251 ^ 0x32];
  v259[2] = (v263 - ((2 * v263) & 0x52) - 87) ^ 0x47 ^ *(v260 + (v263 ^ 0x4D));
  v259[12] = v261[BYTE3(v250) ^ 0x14] ^ 0x5F;
  v259[9] = (((v255 ^ 0x88BE4198) >> 16) - (((v255 ^ 0x88BE4198) >> 15) & 0x12) + 9) ^ 0x8E ^ v262[((v255 ^ 0x88BE4198) >> 16) ^ 0x7ELL];
  v264 = HIBYTE(v247);
  v265 = *(v14 - 140);
  *v259 = v261[v264 ^ 0xCE];
  if (v244 == (v265 + 179159401) < 0xAADC159)
  {
    v244 = (v265 + 179159401) < HIDWORD(v270);
  }

  return (*(*(v14 - 216) + 8 * ((14 * !v244) ^ v238)))(142, v260, v262, 169, 90, 82, 121, v250, a2, a3, a4, v267, v268, v269, v270, v271, v272, v273, v274, a13, v275, v276, v277, v278, v279, v280, v281, v282, v283);
}

uint64_t sub_1968E7FB4()
{
  v0 = LODWORD(STACK[0x59C]) - 732367625;
  v1 = v0 < 0xC86A4E31;
  if (v0 >= 0xC86A4E31)
  {
    v1 = v0 > 0xC86A4E32;
  }

  return (*(STACK[0x578] + 8 * ((110 * v1) ^ (LODWORD(STACK[0x5A0]) + 5217))))();
}

uint64_t sub_1968E8354@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = v14 - 18;
  v27 = STACK[0x580];
  v28 = a12 - 0x2EEB018C334DAD5ALL + v15;
  *(STACK[0x580] + a6 * v20 + ((v26 - 1110) ^ 0x3AA88) - (a6 * v20 + ((v26 - 1110) ^ 0x3AA88u)) / 0x3C7 * v19) ^= *v28;
  v29 = a1 + v28 - ((2 * v28) & 0xCA300A5D16DA61E4);
  *(&v30 + 1) = (v29 + 242) & 0xF8 ^ 0xF0u;
  *&v30 = (v29 + 242) ^ a1;
  v31 = (v30 >> 8) + v16;
  v32 = v31 ^ v25;
  v33 = (__ROR8__(v31 ^ 0x49E9423B6F16E7D2, 8) + (v31 ^ v25)) ^ v23;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (v34 + __ROR8__(v33, 8)) ^ v21;
  v36 = __ROR8__(v35, 8);
  v37 = a6 * v20 + v22 - (a6 * v20 + v22) / 0x3C7u * v19;
  v38 = v35 ^ __ROR8__(v34, 61);
  v39 = (v38 + v36) ^ a4;
  *&v30 = __ROR8__(v38, 61);
  v40 = v39 ^ v30;
  v41 = (v39 ^ v30) + (v39 >> 8);
  v42 = (v41 + (v39 << 56)) ^ a3;
  *&v30 = __ROR8__(v40, 61);
  v43 = v42 ^ v30;
  v44 = (((v42 << (v42 & 0x38 | v41 & 0x38 ^ 8)) ^ (v42 >> 8)) + (v42 ^ v30)) ^ a2;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x1A2AEBE44253AF03;
  *(v27 + v37) = (*(v27 + v37) - (v17 & (2 * *(v27 + v37))) + 88) ^ 0x58 ^ (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v45, 61))) ^ 0xAB3042D228875C41) >> (~(8 * v29 - 112) & 0x10) >> ((8 * v29 - 112) & 0x28));
  v47 = a6 + 1;
  v48 = a5 + a6 + 2511 < v12;
  if (v12 < v13 != v47 > v24)
  {
    v48 = v12 < v13;
  }

  return (*(v18 + 8 * ((2 * v48) | (16 * v48) | v26)))();
}

uint64_t sub_1968E8590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 120) = v20 + ((((v22 - 136) | 0xAF45FCFB) + (~(v22 - 136) | 0x50BA0304)) ^ 0xCA5F07B1) * v17 + 1481;
  *(v22 - 136) = &a17;
  *(v22 - 128) = v19;
  v23 = (*(v18 + 8 * (v20 ^ 0x199F)))(v22 - 136);
  return (*(v18 + 8 * ((77 * (*(v22 - 116) > (v21 + v20 + 2011 - 2793))) ^ v20)))(v23);
}

uint64_t sub_1968E86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x3D8] = 0;
  STACK[0x5F0] = 0;
  return (*(a6 + 8 * (((LODWORD(STACK[0x784]) == v8 + ((35 * (a8 ^ 0x1644) - 851) | 0xC0) - 216) * ((35 * (a8 ^ 0x1644) + 1095) ^ 0x1C93)) ^ (35 * (a8 ^ 0x1644)))))();
}

uint64_t sub_1968E8734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = *(v18 + 8 * (v14 - 2645));
  v23 = *v15;
  v24 = v21 - 4 + v17;
  *(*v15 + v24) = -20;
  *(v23 + v24 + 1) = (v16 ^ 0xF) - 2 * ((v16 ^ 0xF) & 0xEE ^ 2) - 20;
  *(v23 + v24 + 2) = (v20 ^ 0xE3) - (v19 & (2 * (v20 ^ 0xE3))) - 20;
  *(v23 + v24 + 3) = -76;
  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1968E878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 136) = (v18 + 517) ^ (654144011 * ((1416787951 - ((v19 - 136) | 0x547277EF) + ((v19 - 136) | 0xAB8D8810)) ^ 0x8759F58C));
  *(v19 - 128) = v16;
  *(v19 - 120) = a16;
  v20 = (*(v17 + 8 * (v18 + 3101)))(v19 - 136);
  return (*(v17 + 8 * (((a12 < 1) * ((v18 + 724) ^ 0x1A64)) ^ (v18 + 980))))(v20);
}

uint64_t sub_1968E8830(int a1)
{
  v7 = a1 | 0xC04;
  v8 = v6 + v4;
  v9 = (v4 - 1) & 0xF;
  v10 = v1 - v4 + v9 + 1;
  v11 = v1 + v9 + 1;
  v12 = v9 - v4 + v2 + 3;
  v13 = v9 + v7 - 3128 + v2 - 778;
  v14 = v9 - v4 + v3 + 2;
  v15 = v3 + (v7 ^ 0xF47) + v9;
  v17 = v11 > v6 && v10 < v8;
  if (v12 < v8 && v13 > v6)
  {
    v17 = 1;
  }

  v20 = v14 < v8 && v15 > v6 || v17;
  return (*(v5 + 8 * ((206 * v20) ^ v7)))(v15);
}

uint64_t sub_1968E8948()
{
  v11.val[1].i64[0] = (v3 + 13) & 0xF;
  v11.val[1].i64[1] = (v3 + 12) & 0xF;
  v11.val[2].i64[0] = (v3 + 11) & 0xF;
  v11.val[2].i64[1] = (v3 + 10) & 0xF;
  v11.val[3].i64[0] = (v3 + 9) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF ^ 8;
  v12.val[0].i64[0] = (v3 + 7) & 0xF;
  v12.val[0].i64[1] = (v3 + 6) & 0xF;
  v12.val[1].i64[0] = (v3 + 5) & 0xF;
  v12.val[1].i64[1] = (v3 + 4) & 0xF;
  v12.val[2].i64[0] = (v3 + 3) & 0xF;
  v12.val[2].i64[1] = (v3 + 2) & 0xF;
  v12.val[3].i64[0] = (v3 + 1) & 0xF;
  v12.val[3].i64[1] = v3 & 0xF;
  v7 = vqtbl4q_s8(v12, xmmword_196EBFA60).u64[0];
  v8.i64[0] = 0x2D2D2D2D2D2D2D2DLL;
  v8.i64[1] = 0x2D2D2D2D2D2D2D2DLL;
  v9 = ((v4 + 1970292347) & 0x8A8FA71D ^ 0xFFFFFFFFFFFFFBE6) + v3;
  v11.val[0].i64[0] = v9 & 0xF;
  v11.val[0].i64[1] = (v3 + 14) & 0xF;
  v12.val[3].i64[0] = vqtbl4q_s8(v11, xmmword_196EBFA60).u64[0];
  v12.val[3].i64[1] = v7;
  v12.val[0] = vrev64q_s8(vmulq_s8(v12.val[3], v8));
  *(v5 - 15 + v9) = veorq_s8(veorq_s8(veorq_s8(*(v1 + v11.val[0].i64[0] - 15), *(v5 - 15 + v9)), veorq_s8(*(v2 + v11.val[0].i64[0] + 4 - 15), *(v0 + v11.val[0].i64[0] + 4 - 15))), vextq_s8(v12.val[0], v12.val[0], 8uLL));
  return (*(v6 + 8 * ((4018 * ((v3 & 0x10) == 16)) ^ v4)))();
}

uint64_t sub_1968E8AE0()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + 1 - v3;
  v10 = v1 + v9;
  v11 = v1 + v8 + 1;
  v12 = v0 + v9;
  v13 = v0 + v8 + 1;
  v14 = v2 - v3 + v8 + 5;
  v15 = v8 + (v4 - 2473) + v2 - 1193;
  v17 = v11 > v6 && v10 < v7;
  v19 = v13 > v6 && v12 < v7 || v17;
  if (v14 < v7 && v15 > v6)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  return (*(v5 + 8 * (((v21 ^ 1) * (((v4 - 2132218200) & 0x7F171B0C) - 6107)) ^ v4)))();
}

uint64_t sub_1968E8BB8@<X0>(uint64_t a1@<X8>)
{
  v7 = v4;
  v8 = v4;
  v6 = a1;
  v9 = v3 - (((&v6 | 0x644AF93A) - (&v6 & 0x644AF93A)) ^ 0x9C96D97B) * v2 + 1096;
  return (*(v1 + 8 * (v3 ^ 0x15C6)))(&v6);
}

uint64_t sub_1968E8C44@<X0>(int a1@<W8>)
{
  v7 = v6 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v8 + 1;
  v10 = v8 + 1 - v4;
  v11 = v2 + v10;
  v12 = v2 + v8 + 1;
  v13 = v3 - v4 + v8 + 8;
  v14 = v3 + ((a1 + 1831447775) & 0x92D653BF ^ 0x1192) + v8;
  v15 = v1 + v10;
  v16 = v1 + v9;
  v18 = v12 > v6 && v11 < v7;
  v20 = v13 < v7 && v14 > v6 || v18;
  if (v16 > v6 && v15 < v7)
  {
    v20 = 1;
  }

  return (*(v5 + 8 * (((v20 ^ 1) * (a1 - 3872)) ^ a1)))(v4);
}

uint64_t sub_1968E8E04@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x898] = v2;
  v3 = STACK[0x420];
  STACK[0x8A0] = STACK[0x420];
  return (*(a1 + 8 * (((v2 - v3 > 9) * (((1145 * (a2 ^ 0x6D1)) ^ 0x1762) - 304)) ^ a2)))();
}

uint64_t sub_1968E8E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x968] ^ 0x1E148796BE9C1935 ^ (1145 * (v6 ^ 0x47u));
  v8 = *(STACK[0x650] + 24);
  v9 = __ROR8__((v8 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = *(a6 + 8 * v6);
  v11 = ((v9 - 0x6AF7234D0CC131D5) | 0xF5741EBC79E75D8BLL) - ((v9 - 0x6AF7234D0CC131D5) | 0xA8BE1438618A274) + 0xA8BE1438618A274;
  v12 = v11 ^ 0xBC9D5C8716F1BA59;
  v11 ^= 0x14DBB9108F07CB05uLL;
  v13 = __ROR8__(v12, 8);
  v14 = (v13 + v11 - ((2 * (v13 + v11)) & 0x47290E7AD9A73A5CLL) - 0x5C6B78C2932C62D2) ^ 0x4709F0E2EBEE2250;
  v15 = v14 ^ __ROR8__(v11, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xF5A2F1B9B5D0B209;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5963B6C555D97F1FLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x61459D2AF01F24F7;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0xE1F70A3F6B007860) - (v22 + v21) + 0xF047AE04A7FC3D0) ^ 0x9438991DC504E25CLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x1A2AEBE44253AF03;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v8[10] = (((((2 * (v27 + v26)) & 0xEFB27CCA430C5310) - (v27 + v26) - 0x77D93E6521862989) ^ 0x23168348F6FE8A36) >> (8 * ((v8 + 10) & 7u))) ^ HIBYTE(v7) ^ 0x3B;
  v28 = __ROR8__((v8 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = ((0x6AF7234D0CC131D4 - v28) & 0x718AFB3F88B2FB92) + v28 - 0x6AF7234D0CC131D5 - ((v28 - 0x6AF7234D0CC131D5) & 0x718AFB3F88B2FB92);
  v30 = v29 ^ 0x3863B904E7A41C40;
  v29 ^= 0x90255C937E526D1CLL;
  v31 = __ROR8__(v30, 8);
  v32 = (((v31 + v29) | 0xC6651A441539D693) - ((v31 + v29) | 0x399AE5BBEAC6296CLL) + 0x399AE5BBEAC6296CLL) ^ 0x22F86D9B920469EDLL;
  v33 = v32 ^ __ROR8__(v29, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xF5A2F1B9B5D0B209;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0xE0B8A78EC4DC8F5ELL) - 0xFA3AC389D91B851) ^ 0xA93FE50237B738B0;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0xFB64E2FF47BB85F6) - 0x24D8E805C223D05) ^ 0x9CF7EC5553C2E60CLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__((((2 * (v42 + v41)) | 0xD59B1727603C7B4) - (v42 + v41) + 0x79532746C4FE1C26) ^ 0xE26FC4BB4B853DB6, 8);
  v44 = (((2 * (v42 + v41)) | 0xD59B1727603C7B4) - (v42 + v41) + 0x79532746C4FE1C26) ^ 0xE26FC4BB4B853DB6 ^ __ROR8__(v41, 61);
  v8[11] = (((__ROR8__((v43 + v44) ^ 0x1A2AEBE44253AF03, 8) + ((v43 + v44) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v44, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v8 + 11) & 7u))) ^ BYTE6(v7) ^ 0xA6;
  v45 = __ROR8__((v8 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = -2 - (((0x6AF7234D0CC131D4 - v45) | 0xB20363FF0EB302E4) + ((v45 - 0x6AF7234D0CC131D5) | 0x4DFC9C00F14CFD1BLL));
  v47 = v46 ^ 0xFBEA21C461A5E536;
  v46 ^= 0x53ACC453F853946AuLL;
  v48 = (__ROR8__(v47, 8) + v46) ^ 0xE49D77DF873DBF7ELL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xF5A2F1B9B5D0B209;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x5963B6C555D97F1FLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x61459D2AF01F24F7;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x64C31C027084DE6CLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x1A2AEBE44253AF03;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v8[12] = (((v60 + v59 - ((2 * (v60 + v59)) & 0x2C67776B5A33595ALL) + 0x1633BBB5AD19ACADLL) ^ 0xBD03F967859EF0ECLL) >> (8 * ((v8 + 12) & 7u))) ^ BYTE5(v7) ^ 0x76;
  v61 = __ROR8__((v8 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = ((v61 - 0x6AF7234D0CC131D5) | 0x4EEFAABF0D43E864) - ((v61 - 0x6AF7234D0CC131D5) | 0xB1105540F2BC179BLL) - 0x4EEFAABF0D43E865;
  v63 = v62 ^ 0x706E88462550FB6;
  v62 ^= 0xAF400D13FBA37EEALL;
  v64 = (__ROR8__(v63, 8) + v62) ^ 0xE49D77DF873DBF7ELL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((v66 + v65) | 0xABE77288DEBD9E47) - ((v66 + v65) | 0x54188D77214261B8) + 0x54188D77214261B8) ^ 0x5E4583316B6D2C4ELL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x5963B6C555D97F1FLL;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x61459D2AF01F24F7;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x64C31C027084DE6CLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x1A2AEBE44253AF03;
  v76 = __ROR8__(v75, 8);
  v77 = __ROR8__(v74, 61);
  v8[13] = (((v76 + (v75 ^ v77) - ((2 * (v76 + (v75 ^ v77))) & 0x95BAF272F22CB3BALL) + 0x4ADD7939791659DDLL) ^ 0xE1ED3BEB5191059CLL) >> (8 * ((v8 + 13) & 7u))) ^ BYTE4(v7) ^ 0x3C;
  v78 = (__ROR8__((v8 + 14) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v79 = v78 ^ 0x4DE9423B6F16E7D2;
  v78 ^= 0xE5AFA7ACF6E0968ELL;
  v80 = (__ROR8__(v79, 8) + v78) ^ 0xE49D77DF873DBF7ELL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((2 * (v82 + v81)) & 0x41E1CF65099D63B0) - (v82 + v81) - 0x20F0E7B284CEB1D9) ^ 0x2AADE9F4CEE1FC2ELL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (v85 + v84 - ((2 * (v85 + v84)) & 0xB14D4FA9C6CCA32) + 0x58A6A7D4E366519) ^ 0x5CE9DCB81BEF1A06;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0x61459D2AF01F24F7;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x64C31C027084DE6CLL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0x1A2AEBE44253AF03;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v8[14] = (((v94 + v93 - ((2 * (v94 + v93)) & 0xCF6C87B91D7E08B0) + 0x67B643DC8EBF0458) ^ 0xCC86010EA6385819) >> (8 * ((v8 + 14) & 7u))) ^ BYTE3(v7) ^ 0xD2;
  v95 = (__ROR8__((v8 + 15) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v96 = v95 ^ 0x4DE9423B6F16E7D2;
  v95 ^= 0xE5AFA7ACF6E0968ELL;
  v97 = (__ROR8__(v96, 8) + v95) ^ 0xE49D77DF873DBF7ELL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) & 0x3139FF60E415DD50) - (v99 + v98) + 0x6763004F8DF51157) ^ 0x92C1F1F63825A35ELL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0x5963B6C555D97F1FLL;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x61459D2AF01F24F7;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x64C31C027084DE6CLL;
  v107 = __ROR8__(v106, 8);
  v108 = v106 ^ __ROR8__(v105, 61);
  v109 = (((2 * (v107 + v108)) | 0xEB56ABFC03F9346ALL) - (v107 + v108) - 0x75AB55FE01FC9A35) ^ 0x6F81BE1A43AF3536;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v8[15] = (((v111 + v110 - ((2 * (v111 + v110)) & 0xD63F64183411F2CALL) + 0x6B1FB20C1A08F965) ^ 0xC02FF0DE328FA524) >> (8 * ((v8 + 15) & 7u))) ^ BYTE2(v7) ^ 0x39;
  v112 = __ROR8__((v8 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v113 = (0x6AF7234D0CC131D4 - v112) & 0xB94550FEFCE7EFF3 | (v112 + 0x1508DCB2F33ECE2BLL) & 0x42BAAF010318100CLL;
  v114 = __ROR8__(v113 ^ 0xF4AC12C593F10821, 8);
  v113 ^= 0x5CEAF7520A07797DuLL;
  v115 = (v114 + v113) ^ 0xE49D77DF873DBF7ELL;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xF5A2F1B9B5D0B209;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((2 * (v119 + v118)) | 0x514BC2D110FA32C0) - (v119 + v118) + 0x575A1E977782E6A0) ^ 0xF1C657ADDDA4667FLL;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x61459D2AF01F24F7;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((v124 + v123) | 0x4EC93EC210EDB9DBLL) - ((v124 + v123) | 0xB136C13DEF124624) - 0x4EC93EC210EDB9DCLL) ^ 0x2A0A22C0606967B7;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (((2 * (v127 + v126)) & 0x9B077D47A53351D8) - (v127 + v126) + 0x327C415C2D665713) ^ 0x2856AAB86F35F810;
  v129 = __ROR8__((v8 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v8[16] = (((__ROR8__(v128, 8) + (v128 ^ __ROR8__(v126, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v8 + 16) & 7u))) ^ BYTE1(v7) ^ 0xF1;
  v130 = ((2 * (v129 - 0x6AF7234D0CC131D5)) | 0x3F94E15ED3FBE75ALL) - (v129 - 0x6AF7234D0CC131D5) - 0x1FCA70AF69FDF3ADLL;
  v131 = __ROR8__(v130 ^ 0x5623329406EB147FLL, 8);
  v130 ^= 0xFE65D7039F1D6523;
  v132 = (((2 * (v131 + v130)) | 0x9759016C3D9B7660) - (v131 + v130) - 0x4BAC80B61ECDBB30) ^ 0xAF31F76999F0044ELL;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0xF5A2F1B9B5D0B209;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((v136 + v135) | 0x654D750091A395A9) - ((v136 + v135) | 0x9AB28AFF6E5C6A56) - 0x654D750091A395AALL) ^ 0x3C2EC3C5C47AEAB6;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x61459D2AF01F24F7;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((2 * (v141 + v140)) & 0x1F4EE1AFF1FD8BA8) - (v141 + v140) - 0xFA770D7F8FEC5D5) ^ 0x949B932A7785E447;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x1A2AEBE44253AF03;
  v8[17] = (((__ROR8__(v144, 8) + (v144 ^ __ROR8__(v143, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v8 + 17) & 7u))) ^ v7 ^ 0x8A;
  return v10();
}

uint64_t sub_1968E8EF8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = (*(v2 + 8 * ((v3 + 2162) ^ 0x39B)))(0, va) == (((v3 - 3526) | 0x1507) ^ 0xFFFFF83D) + v3;
  return (*(v2 + 8 * ((121 * v4) ^ (v3 + 2162))))();
}

uint64_t sub_1968E8F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13.i64[0] = 0xB1B1B1B1B1B1B1B1;
  v13.i64[1] = 0xB1B1B1B1B1B1B1B1;
  v14.i64[0] = 0xD6D6D6D6D6D6D6D6;
  v14.i64[1] = 0xD6D6D6D6D6D6D6D6;
  *(v12 - 112) = veorq_s8(vmlaq_s8(v14, **(v11 + 32), v13), xmmword_196EBFA70);
  return (*(v9 + 8 * (a2 ^ (97 * (v10 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, v11);
}

uint64_t sub_1968E8FF4@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v6 = (v4 - 1031542421) & 0xD7C05BB;
  v7 = 127 * (v6 ^ 0x53D);
  v8 = *(STACK[0x530] + 100);
  v9 = (*(STACK[0x530] + 120) ^ 0xF4EAEAFE) + (v7 ^ 0x7FBFD9AF) + ((2 * *(STACK[0x530] + 120)) & 0xE9D5D5FC);
  v10 = 1068996913 * ((2 * ((v5 - 224) & 0x77237040) - (v5 - 224) - 1998811205) ^ 0x5D326E2A);
  *(v5 - 200) = STACK[0x530] + 104;
  *(v5 - 216) = a2;
  *(v5 - 168) = 2065987003 - v10;
  *(v5 - 208) = v9 ^ v10;
  *(v5 - 192) = v6 - v10 + 3157;
  *(v5 - 224) = (v8 ^ 0xF7BCFEF7) - v10 + ((2 * v8) & 0xEF79FDEE) + 2129900014;
  *(v5 - 220) = v10 + 1212704019 * (((v3 ^ 0xF5B96DD) - 257660637) ^ ((v3 ^ 0x98C741AE) + 1731771986) ^ ((v3 ^ 0xEEA2FA8) - 250228648)) + 575815493;
  *(v5 - 184) = v2;
  *(v5 - 176) = a2;
  v12 = (*(a1 + 8 * (v6 ^ 0x1FFAu)))(v5 - 224);
  return (*(a1 + 8 * ((3733 * (*(v5 - 164) == ((v7 - 1612959478) & 0x6023CFA3) + 1906279891)) ^ v7)))(v12);
}

void sub_1968E91D0()
{
  LODWORD(STACK[0x3EC]) = v1 + 1704834436;
  LODWORD(STACK[0x3E4]) = LODWORD(STACK[0x3E4]) + v3 - 1240201458;
  LODWORD(STACK[0x3E8]) += LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x440]) = ((v0 + 4107) ^ 0x11A9) + v2;
  JUMPOUT(0x1968D0FACLL);
}

void fp_dh_e9bb30da6f629eb46f6d969dde5cce69(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (1621291457 * (((a1 | 0x8C83FDBF) - a1 + (a1 & 0x737C0240)) ^ 0xBA947C26));
  __asm { BRAA            X2, X17 }
}

uint64_t sub_1968E93F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 2 * (v3 ^ (v5 + 363)) - 3795 + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v4 + 8 * ((6199 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v3 - 71598878))))();
}

uint64_t sub_1968E94D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6 - 4972;
  v9 = *v7;
  STACK[0x580] = 0;
  LODWORD(STACK[0x798]) = 0;
  STACK[0x458] = &STACK[0x580];
  STACK[0x3D0] = *(a6 + 8 * v8);
  STACK[0x408] = 0;
  LODWORD(STACK[0x7D4]) = 1001618587;
  LODWORD(STACK[0x7F4]) = 0;
  return (*(a6 + 8 * (((v9 != 0) * (5 * (v8 ^ 0x440) - 4754)) ^ (5 * (v8 ^ 0x440) + 890))))();
}

uint64_t sub_1968E954C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = (v18 + 3239) ^ (1790939281 * ((((v20 - 136) | 0xA0A778E1) - (v20 - 136) + ((v20 - 136) & 0x5F588718)) ^ 0x587B58A0));
  *(v20 - 136) = &a17;
  *(v20 - 128) = a15;
  v21 = (*(v17 + 8 * (v18 ^ 0x19C0)))(v20 - 136);
  return (*(v17 + 8 * (((v19 == ((v18 - 16177187) & 0xF6DFFD) - 2792) * (v18 ^ 0x1923)) ^ v18)))(v21);
}

uint64_t sub_1968E963C()
{
  v3 = 489239129 * ((((v2 - 208) | 0x1D2F3842) - (v2 - 208) + ((v2 - 208) & 0xE2D0C7B8)) ^ 0xA4071B74);
  *(v2 - 192) = (v0 + 2441) ^ v3;
  *(v2 - 176) = v3 + 483267742;
  *(v2 - 184) = 0;
  *(v2 - 208) = &STACK[0x44C];
  *(v2 - 200) = &STACK[0x418];
  v4 = (*(v1 + 8 * (v0 + 5488)))(v2 - 208);
  return (*(v1 + 8 * (((*(v2 - 172) != 1906281716) * (((v0 - 536) | 4) - 732)) ^ v0)))(v4);
}

uint64_t sub_1968E97D0()
{
  v3 = (v0 - 381157381) & 0x16B817FF;
  if (((STACK[0x300] - v0) | (v0 - STACK[0x300])) > v3 - 6140)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = 0x80000000;
  }

  *v1 = v4 + (v0 ^ 1);
  (*(v2 + 8 * (v0 + 6721)))(STACK[0x330]);
  v5 = v1[1];
  v6 = v1[398] ^ 0x324F0A61 ^ ((v1[2] & 0x7FFFFFFE | v5 & 0x80000000) >> 1) ^ *(&STACK[0x6B8] + (v1[2] & 1));
  *v1 = v1[397] ^ 0x324F0A61 ^ ((v5 & 0x7FFFFFFE | *v1 & 0x80000000) >> 1) ^ *(&STACK[0x6B8] + (v5 & 1));
  v1[1] = v6;
  return (*(v2 + 8 * ((803 * (v3 ^ 0x17F9)) ^ 0x29)))(3642, -6056, 505, &STACK[0x6B8]);
}

uint64_t sub_1968E98FC@<X0>(int a1@<W1>, int a2@<W8>)
{
  v6 = *(v3 + 48 * v2 + 36);
  v8 = v6 == v5 || v6 + a1 >= ((a2 - 5433) | 0x300u) + 2147482822;
  return (*(v4 + 8 * ((198 * v8) ^ a2)))();
}

uint64_t sub_1968E998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6 ^ 0x1B2B;
  v8 = (*(a6 + 8 * (v7 + 483)))(32, 0x103004054B5FA7DLL);
  v9 = STACK[0x370];
  STACK[0x620] = v8;
  return (*(v9 + 8 * (((v8 == 0) * (((5 * (v7 ^ 0x1CD3)) ^ 0x29E) - 5188)) ^ v7)))();
}

uint64_t sub_1968E9A94@<X0>(uint64_t a1@<X5>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = v2;
  return (*(a1 + 8 * ((((v3 & 0xC8710DBF) - 496) | 0x1411) + 545)))();
}

uint64_t sub_1968E9C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 1203807166;
  v4 = *(a1 + 12) + 64700622;
  v5 = v3 < 0x5AA8F4FD;
  v6 = v3 > v4;
  if (v5 != v4 < 0x5AA8F4FD)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((225 * !v6) ^ ((v2 + 944) | 0x121))))();
}

uint64_t sub_1968E9D0C@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = v3 + v2;
  *(v6 + 24) = a2;
  *(v6 + 40) = a2;
  return (*(v4 + 8 * (v5 | (32 * ((a1 ^ 0x14EF) + v2 == 64)))))();
}

uint64_t sub_1968E9D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t *a26, int a27, unint64_t a28)
{
  v35 = *(v28 + 8);
  v36 = (&a25 ^ 0x7D765AED36178199) * v32;
  a25 = v34 ^ v36;
  a28 = v33 + v35 + v36 - ((2 * v35) & 0x8889B80CB23BF32ELL) + 1;
  a26 = &a9;
  v37 = (*(v29 + 8 * (v30 ^ 0x18B5)))(&a25);
  return (*(v29 + 8 * ((1202 * (a27 == v31)) ^ v30)))(v37);
}

uint64_t sub_1968E9F18@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x328] + 32);
  STACK[0x340] = &STACK[0xB90];
  STACK[0x338] = &STACK[0xFB0];
  STACK[0x318] = v2;
  v3 = *(v1 + 8 * (((v2 == 0) * ((a1 ^ 0x13CB) + ((2 * a1) ^ 0x35DC) - 3793)) ^ a1));
  STACK[0x588] = &STACK[0x693D3F00085A2CBF];
  return v3(1761633157, 1906239667);
}

void fp_dh_44c6b568ecd9f2cece3f8d503f865e1e(uint64_t a1)
{
  v1 = 998242381 * ((((2 * a1) | 0xA5BA868C) - a1 - 1390232390) ^ 0xF8B2DB90);
  __asm { BRAA            X12, X17 }
}

void fp_dh_aacc8ae7cf7bb00cf2a15f00916bfc13(_DWORD *a1)
{
  v1 = 455395931 * ((((2 * a1) | 0x5020940C) - a1 + 1475327482) ^ 0xDEE114CA);
  v2 = a1[2] - v1;
  v3 = a1[3] + v1;
  v4 = *a1 - v1;
  v5 = a1[4] - v1;
  v6 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x2C2));
  v7 = a1[1] ^ v1;
  *v6 = v3;
  v6[1] = v4;
  v6[2] = v5;
  v6[3] = v7;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968EA1E0()
{
  v0 = STACK[0x310];
  if (LODWORD(STACK[0x310]) == 36731)
  {
    return (*(STACK[0x370] + 8 * ((LODWORD(STACK[0x36C]) - 3001) ^ (11 * (LODWORD(STACK[0x2C0]) == LODWORD(STACK[0x340]))))))();
  }

  v2 = STACK[0x370];
  if (v0 == 18647)
  {
    v4 = LODWORD(STACK[0x978]) - ((2 * LODWORD(STACK[0x978])) & 0xB3868DE6) - 641513741 == (LODWORD(STACK[0x36C]) ^ 0x1116) - 641515608;
    return (*(v2 + 8 * (((8 * v4) | (32 * v4)) ^ (LODWORD(STACK[0x36C]) - 1026))))();
  }

  else
  {
    v3 = STACK[0x36C];
    if (v0 == 40073)
    {
      return (*(v2 + 8 * ((1683 * (LODWORD(STACK[0x960]) == (LODWORD(STACK[0x36C]) ^ 0x161F) - 1720256367)) ^ (LODWORD(STACK[0x36C]) - 3215))))();
    }

    else
    {
      v5 = (((v3 - 3677) | 0xF8) ^ 0x719F840C) == 1906239693;
      return (*(v2 + 8 * (v5 | (32 * v5) | (v3 - 1555))))();
    }
  }
}

uint64_t sub_1968EA454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = v23;
  v27 = v23 ^ 0x456;
  v28 = v23 ^ 0x1494u;
  v29 = v23 - 5052;
  v30 = *(v24 + 32);
  v31 = STACK[0x5F8];
  v32 = *(v24 + 104) + 1087902565;
  v33 = 489239129 * ((v25 - 224) ^ 0xC102A083B9282336);
  v34 = v33 + 1467904985 * LODWORD(STACK[0x4FC]) + 859645773;
  *(v25 - 208) = &STACK[0x4E0];
  *(v25 - 200) = &STACK[0x3A4];
  *(v25 - 184) = v34;
  *(v25 - 180) = v26 - v33 + 76237113;
  *(v25 - 224) = v31;
  *(v25 - 216) = v30 - v33 - ((v28 ^ 0xAADF4744EB8F91CFLL) & (2 * v30)) - 0x2A905C5D8A38367DLL;
  *(v25 - 192) = (((a23 ^ 0x44555C38) - 1146444856) ^ ((a23 ^ 0x7BF689D) - 129984669) ^ ((a23 ^ 0xA2E89481 ^ v27) + 1561819510)) - v33 + 1144487328;
  *(v25 - 188) = v32 ^ v33;
  (*(a6 + 8 * (v26 ^ 0xD38)))(v25 - 224);
  v35 = 654144011 * ((((v25 - 224) | 0x8DD2A482) - (v25 - 224) + ((v25 - 224) & 0x722D5B78)) ^ 0xA106D91E);
  *(v25 - 224) = 810694853 - v35 + v26;
  *(v25 - 216) = a22 ^ v35;
  v36 = (*(STACK[0x370] + 8 * (v26 + 1284)))(v25 - 224);
  return (*(STACK[0x370] + 8 * ((120 * (*(v25 - 220) == 1618133546)) ^ v29)))(v36);
}

uint64_t sub_1968EA668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = *(STACK[0x3D8] + 8);
  STACK[0x6F0] = *(a6 + 8 * (a8 - 5634));
  STACK[0x480] = &STACK[0x55C];
  STACK[0x778] = 0;
  LODWORD(STACK[0x7A4]) = -1720256293;
  STACK[0x520] = 0;
  return (*(a6 + 8 * (((((((a8 - 98) & 0xF6) + 1) ^ (v8 == 0)) & 1) * (((a8 - 1083336034) & 0x40925FF6) - 3841)) ^ (a8 - 1083336034) & 0x40925FF6)))();
}

uint64_t sub_1968EA72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v23 - 104) = v18 + ((v23 - 120 + v20 - 2 * ((v23 - 120) & v20)) ^ 0xB95E4DDE) * v21 - 922;
  *(v23 - 120) = &a18;
  *(v23 - 112) = &a16;
  v24 = (*(v19 + 8 * (v18 ^ 0x16E0)))(v23 - 120);
  return (*(v19 + 8 * ((5262 * (*(v23 - 100) > (((v18 - 3185) | 0x45E) ^ (v22 + 1098)))) ^ v18)))(v24);
}

uint64_t sub_1968EA81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _DWORD *a49, uint64_t a50, uint64_t a51, unint64_t a52, uint64_t a53, unint64_t a54)
{
  *v54 = *a49;
  v54[1] = a49[1];
  v54[2] = a49[2];
  v54[3] = a49[3];
  v54[4] = a49[4];
  v54[5] = a49[5];
  return (*(v55 + 8 * (((v56 ^ 0x2A1) * (a54 < a52)) ^ v56 ^ 0x1ACE)))();
}

uint64_t sub_1968EA82C(uint64_t result)
{
  v4 = *(v1 + 16);
  *result = v2;
  *(result + 8) = v3;
  *(result + 12) = v3;
  *(result + 16) = 0x6C1D2F7C12E85147;
  *(result + 24) = 1906281716;
  *v4 = result;
  *(v1 + 28) = 1906281716;
  return result;
}

uint64_t sub_1968EA8B0(int a1, int a2)
{
  v10 = *(v9 + (((a2 - 884260389) & 0x34B4BFF7) + (v2 ^ 0xDu) * a1 + 596250) % 0x3B0);
  v11 = v8 + ((v10 ^ (8 * v10)) ^ 0xC1) * v3;
  *(v7 + (v2 * v3 - (((((v2 * v3) * v4) >> 16) + (((v2 * v3 - (((v2 * v3) * v4) >> 16)) & 0xFFFE) >> 1)) >> 9) * v5)) = *(v7 + (v11 - ((4387097 * v11) >> 32) * v5));
  return (*(v6 + 8 * ((1484 * (v2 == 15)) ^ a2)))();
}

uint64_t sub_1968EA974@<X0>(uint64_t a1@<X8>)
{
  v6 = -v3;
  *(v1 + v2 + 1444 + v6) = vadd_s8(vsub_s8(*(v1 + a1 - 8 + v6), vand_s8(vadd_s8(*(v1 + a1 - 8 + v6), *(v1 + a1 - 8 + v6)), 0xD8D8D8D8D8D8D8D8)), 0xECECECECECECECECLL);
  return (*(v5 + 8 * ((125 * (((((v4 - 1621) | 0x612) ^ 0xFFFFF867) & v1) + v6 != 8)) ^ ((v4 - 1621) | 0x612))))();
}

uint64_t fp_dh_1c458a2923266a52e32d28a2060e9055(_DWORD *a1)
{
  v2 = *a1 - 1575331711 * ((a1 + 1873449530 - 2 * (a1 & 0x6FAA923A)) ^ 0x3F10738);
  result = (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 - 1655633799)) + 8 * (v2 ^ 0x62AEE30A) - 4))(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x62AEF9A1)) - 8, fp_dh_6d82f96f2b5a8a41364d6e14dc7a5ff1);
  v4 = **(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x62AEF90B));
  if (result)
  {
    v4 = 1906239410;
  }

  a1[1] = v4;
  return result;
}

uint64_t sub_1968EAB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x800]) = v7;
  v9 = (v6 - 721) | 0x1204;
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v8;
  LODWORD(STACK[0x414]) = 1906239693;
  STACK[0x6F8] = *(a6 + 8 * (v9 - 5476));
  STACK[0x508] = &STACK[0x3C0];
  v10 = STACK[0x3C0];
  STACK[0x5A8] = STACK[0x3C0];
  return (*(a6 + 8 * ((197 * (((v10 == 0) ^ (((v6 + 47) | 4) - 44)) & 1)) ^ (v9 + 32))))();
}

uint64_t sub_1968EABFC@<X0>(unsigned int a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a4 + 1;
  v11 = v6 & 0x80000000;
  v12 = *(v7 + 4 * (v10 + (((v4 - 453) | a1) ^ a2)));
  *(v7 + 4 * v10 + 908) = *(v9 + 4 * (v12 & 1)) ^ *(v7 + 4 * v10) ^ ((v12 & 0x7FFFFFFE | v11) >> 1);
  return (*(v8 + 8 * (((v10 == 395) * a3) ^ v5)))();
}

void fp_dh_10d56aadefccb0b3b9a58eb3b1052000(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24) - 455395931 * ((a1 + 1949510120 - 2 * (a1 & 0x743329E8)) ^ 0x2C27724);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x1440)) - 4;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  (*&v2[8 * v1 + 9720])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 5201) - 4, v7, 16);
  (*&v2[8 * (v1 ^ 0xCCF)])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 5205), v6, 16);
  v9 = v1 + 753662761 * (v8 ^ 0x651AFB4B) - 1080;
  v8[0] = v3;
  v8[1] = &v5;
  (*&v2[8 * v1 + 8336])(v8);
  (*&v2[8 * (v1 ^ 0xCCF)])();
  (*&v2[8 * v1 + 9720])();
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968EAEE0@<X0>(_DWORD *a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int a12)
{
  *a1 = 0;
  v14 = a2 ^ 0x444889C;
  v15 = v12 + a2 + 1323;
  a11 = a2 + 1575331711 * ((2 * (&a11 & 0x462EC10) - &a11 - 73591827) ^ 0x97C686EF) + 1584032913;
  v16 = (*(v13 + 8 * (a2 ^ 0x44497C6u)))(&a11);
  return (*(v13 + 8 * ((7485 * (a12 == v14 + 1906280194)) ^ v15)))(v16);
}

uint64_t sub_1968EAFBC(double a1, double a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v30 = v10 - 8;
  v31.i64[0] = v11 + v30 + 11;
  v31.i64[1] = v11 + v30 + 10;
  v32.i64[0] = v11 + v30 + 15;
  v32.i64[1] = v11 + v30 + 14;
  v33.i64[0] = v11 + v30 + 17;
  v33.i64[1] = v11 + v30 + 16;
  v34.i64[0] = v11 + v30 + 13;
  v34.i64[1] = v11 + v30 + ((v8 + 1160) ^ v13) + 8;
  v35 = vandq_s8(v34, *&STACK[0x350]);
  v36 = vandq_s8(v33, *&STACK[0x350]);
  v37 = vandq_s8(v32, *&STACK[0x350]);
  v38 = vandq_s8(v31, *&STACK[0x350]);
  v39 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v43 = vaddq_s64(v42, *&STACK[0x320]);
  v44 = vaddq_s64(v41, *&STACK[0x320]);
  v45 = vaddq_s64(v40, *&STACK[0x320]);
  v46 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v15, v42), a6), v43), vandq_s8(v43, a7));
  v47 = vaddq_s64(v39, *&STACK[0x320]);
  v48 = vaddq_s64(vandq_s8(vsubq_s64(v15, v39), a6), v47);
  v49 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v15, v41), a6), v44), vandq_s8(v44, a7));
  v50 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v15, v40), a6), v45), vandq_s8(v45, a7));
  v51 = vsubq_s64(v48, vandq_s8(v47, a7));
  v52 = veorq_s8(v51, *&STACK[0x2F0]);
  v53 = veorq_s8(v50, *&STACK[0x2F0]);
  v54 = veorq_s8(v50, a8);
  v55 = veorq_s8(v51, a8);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, v14), vorrq_s8(v56, v16)), v16), v17);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v57, v14), vorrq_s8(v57, v16)), v16), v17);
  v60 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v61);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v63, v18), vorrq_s8(v63, v19)), v19), v20);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, v18), vorrq_s8(v64, v19)), v19), v20);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v67), v21);
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68), v21);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), v22), v76), v23), v24);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), v22), v75), v23), v24);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), v25);
  v85 = veorq_s8(v83, v25);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v84, v86);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v91 = vaddq_s64(v89, v87);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v91, v91), v26), v91), v27), v28);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v90, v90), v26), v90), v27), v28);
  v129.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), *&STACK[0x340])));
  v129.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), *&STACK[0x340])));
  v94 = veorq_s8(v49, *&STACK[0x2F0]);
  v95 = veorq_s8(v49, a8);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, v14), vorrq_s8(v96, v16)), v16), v17);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, v18), vorrq_s8(v99, v19)), v19), v20);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v21);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v22), v104), v23), v24);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v25);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v26), v109), v27), v28);
  v129.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x340])));
  v111 = veorq_s8(v46, *&STACK[0x2F0]);
  v112 = veorq_s8(v46, a8);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, v14), vorrq_s8(v113, v16)), v16), v17);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v18), vorrq_s8(v116, v19)), v19), v20);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v21);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), v22), v121), v23), v24);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v25);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v26), v126), v27), v28);
  v129.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), *&STACK[0x340])));
  *(v11 + v30 + 10) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v129, *&STACK[0x2E0])), *(v12 + v30));
  return (*(STACK[0x370] + 8 * ((30 * (v9 != v30)) ^ v8)))();
}

uint64_t sub_1968EB04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34, uint64_t a35)
{
  v39 = v35 ^ 0x91504119B61D4B4CLL ^ a6;
  v40 = v35 ^ 0x91504119B61D4B4CLL ^ v38;
  v41 = a28 ^ a7;
  v42 = a28 ^ a7 ^ ((v36 ^ 0x26Cu) - 3363) ^ 0x5E8CC683F9A3713CLL;
  v43 = __ROR8__(__ROR8__(__ROR8__(v40 ^ 0x991E59C70E39900ELL, 12) ^ 0x846B2CF6E2BA5DBALL, 56) ^ 0x15157463E1784FB7, 60);
  v44 = (v42 - 0xDE8BCBA0385373ALL - ((2 * v42) & 0xE42E868BF8F5918CLL)) ^ v37;
  v45 = v42 | v39 ^ 0x754484F8A3175691;
  v46 = a28 ^ a7 ^ 0xA173397C065C8DEALL;
  v47 = v39 ^ 0x8ABB7B075CE8A96ELL;
  v48 = v44 ^ 0x629A61E2FE92CDE4 ^ (v43 ^ 0xE3982815B25F5337) & (v38 ^ 0x66E1A638F1C66FF1);
  v49 = (v44 ^ 0x629A61E2FE92CDE4) & v46 ^ v39 ^ 0x8ABB7B075CE8A96ELL;
  v50 = v43 ^ 0xE3982815B25F5337 ^ v39 ^ 0x754484F8A3175691 ^ v42 ^ v45;
  v51 = v50 ^ v49 ^ 0xF38BFF733C051F6;
  v52 = v48 - 0x6D303E9D02AECEBDLL - ((2 * v48) & 0x259F82C5FAA26286);
  v53 = (v52 >> 6) | ((v48 - 0x6D303E9D02AECEBDLL) << 63);
  v54 = v51 >> 28;
  v55 = v44 ^ 0x9D659E1D016D321BLL;
  v56 = v52 ^ (v52 << 58) ^ (v52 >> 1);
  v57 = v41 ^ v55 & (v38 ^ 0x991E59C70E39900ELL) ^ 0xD4323EFF71ABBEA0 ^ v49;
  v58 = v51 << 36;
  v59 = v38 ^ v47 & (v40 ^ 0x66E1A638F1C66FF1) ^ 0x2881BBF325ACF7D9 ^ v48;
  v60 = v51 ^ (v51 >> 19) ^ (v51 << 36) ^ -(v51 ^ (v51 >> 19) ^ (v51 << 36)) ^ ((v51 >> 28) - (v51 ^ (v51 >> 19) ^ (v51 << 36) ^ (v51 >> 28)));
  v61 = v59 ^ __ROR8__(v59, 10) ^ (v59 >> 17) ^ (v59 << 47);
  v62 = v50 ^ 0xB73927F7504FC0F2 ^ ((v50 ^ 0xB73927F7504FC0F2) >> 7) ^ ((v50 ^ 0xB73927F7504FC0F2) << 23) ^ (((v50 ^ 0xB73927F7504FC0F2) >> 41) | ((v50 ^ 0xB73927F7504FC0F2) << 57));
  v63 = v62 ^ (v51 << 45);
  v64 = ((v57 ^ (8 * v57)) & 0xA61BED31FDA481C8 ^ (v57 >> 39) & 0x1A481C8 | (v57 ^ (8 * v57)) & 0x59E412CE025B7E37 ^ (v57 >> 39) & 0x5B7E37) ^ ((v57 >> 61) | (v57 << 25));
  v65 = v63 ^ (v60 + v54);
  v66 = v64 & ~v65 ^ v61 ^ v62;
  v67 = v56 ^ v53;
  v68 = v65 ^ v67 & ~v64;
  v69 = __ROR8__(__ROR8__(v68 ^ 0xAC7C0FF4012565E3 ^ __ROR8__(__ROR8__(v66 ^ 0x2932868AAEFE9362, 55) ^ 0x650D155DFD26C452, 9), 19) ^ 0x79E9C8A977B73E15, 45) ^ 0x454BBDB9F0ABCF4ELL;
  v70 = v64 ^ v67;
  *(&v71 + 1) = v70 ^ v62 & ~v61;
  *&v71 = *(&v71 + 1) ^ 0x6F45779FA95FC03ALL;
  v72 = v61 ^ 0x28FA59BDD48D0B6 ^ *(&v71 + 1) ^ v65 & (~(2 * (v61 ^ v62)) + (v61 ^ v62));
  v73 = v64 ^ 0x5747C156E755AED6 ^ v61 & ~v70 ^ v68;
  v74 = v73 ^ (8 * v73) ^ (v73 << 25) ^ (v73 >> 39) ^ (v73 >> 61);
  v75 = (v71 >> 1) ^ *(&v71 + 1) ^ 0x6F45779FA95FC03ALL ^ ((*(&v71 + 1) ^ 0x6F45779FA95FC03AuLL) >> 6);
  v76 = v69 << (v45 & 0x24) << (v45 & 0x24 ^ 0x24);
  v77 = v66 ^ 0x9A383CF881807545 ^ __ROR8__(v66 ^ 0x9A383CF881807545, 7) ^ ((v66 ^ 0x9A383CF881807545) << 23) ^ ((v66 ^ 0x9A383CF881807545) >> 41);
  v78 = v69 ^ v77 ^ __ROR8__(v69, 19) ^ (v69 >> 28) ^ v76;
  v79 = v74 ^ ((*(&v71 + 1) ^ 0x6F45779FA95FC03ALL) << 58);
  v80 = v79 + v75;
  v81 = v79 & v75;
  v82 = v72 ^ (v72 << 47) ^ ((v72 >> 17) ^ (v72 >> 10) | (v72 << 54));
  v83 = v80 - 2 * v81;
  v84 = v82 ^ v77;
  if (v58)
  {
    v85 = v74;
  }

  else
  {
    v85 = -1;
  }

  v86 = v78 ^ v83 & ~v74;
  v87 = v74 ^ 0x3278F838FE43D2BCLL ^ v82 & ~v83 ^ v86;
  v88 = (v78 ^ v85) & v74 ^ v84;
  v89 = v86 ^ 0x6E04C15915AB860ALL ^ v88;
  v90 = v89 >> (v89 & 0x1C) >> (v89 & 0x1C ^ 0x1C);
  v91 = v89 ^ -v89 ^ (v90 - (v90 ^ v89));
  v92 = (v91 ^ v90) + 2 * (v91 & v90);
  v88 ^= 0x26974B18501E2B14uLL;
  v93 = v83 ^ v77 & ~v82;
  v94 = v82 ^ 0x7370AC685030CB36 ^ v93 ^ v78 & ~v84;
  v95 = (v94 >> 17) | (v94 << 54);
  v96 = v93 ^ 0x7955EAEC4D48B80CLL ^ (v93 << 63) ^ ((v93 ^ 0x7955EAEC4D48B80CLL) << 58) ^ ((v93 ^ 0x7955EAEC4D48B80CLL) >> 1) ^ ((v93 ^ 0x7955EAEC4D48B80CLL) >> 6);
  v97 = v94 ^ (v94 << 47) ^ (v94 >> 10);
  v98 = (v88 >> 7) ^ (v88 >> 41) | (v88 << 57);
  v99 = v88 ^ (v88 << 23);
  v100 = v87 ^ (8 * v87) ^ (v87 >> 39) ^ ((v87 >> 61) | (v87 << 25));
  v101 = v100 ^ v96;
  v102 = v97 ^ v95;
  v103 = v99 ^ v98;
  v104 = __ROR8__(v89, 19) ^ (v89 << 36) ^ v99 ^ v98 ^ v92;
  v105 = (v97 ^ v95) & ~(v100 ^ v96);
  v106 = v99 ^ v98 ^ v102;
  if ((v104 & 0x1000000) != 0)
  {
    v107 = -16777216;
  }

  else
  {
    v107 = 0x1000000;
  }

  v108 = (v107 + v104) ^ 0x1000000;
  v109 = v108 ^ v96 & ~v100;
  v110 = v100 ^ 0x425764BB5877DA25 ^ v105 ^ v109;
  v111 = v104 ^ v100;
  v112 = v100 | ~v104;
  v113 = (v110 >> 39) + v110 - 2 * ((v110 >> 39) & v110);
  v114 = ((v110 >> 61) | (v110 << 25)) ^ (8 * v110);
  v115 = (v111 + v112 + 1) ^ v106;
  v116 = v115 ^ 0x70C7A8D3F3643DFDLL;
  v117 = ((v115 ^ 0x70C7A8D3F3643DFDuLL) >> 7) ^ ((v115 ^ 0x70C7A8D3F3643DFDuLL) >> 41);
  v118 = v103 & ~v102 ^ v101;
  v119 = v118 ^ 0xD3DA1E3360BF843ALL;
  v120 = v109 ^ v115;
  v121 = v120 ^ 0x97F6A7E5F6E8F58ALL;
  v122 = v108 & ~v106;
  v123 = v118 ^ 0xD3DA1E3360BF843ALL ^ (v118 << 63) ^ ((v118 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v124 = v102 ^ 0x44C9D571A5C4A51CLL ^ v118 ^ v122;
  v125 = (v120 ^ 0x97F6A7E5F6E8F58ALL) << 45;
  v126 = ((v120 ^ 0x97F6A7E5F6E8F58ALL) >> 19) & 0x200;
  v127 = ((v120 ^ 0x97F6A7E5F6E8F58ALL) >> 19) & 0xFFFFFFFFFFFFFDFFLL;
  v128 = (v126 & v120) == 0;
  v129 = v123 ^ (v119 >> 1) ^ (v119 << 58);
  if (v128)
  {
    v130 = v126;
  }

  else
  {
    v130 = -v126;
  }

  v131 = v114 ^ v113;
  v132 = v114 ^ v113 ^ v129;
  v133 = v117 ^ (v116 << 23) ^ (v116 << 57);
  v134 = v125 ^ __ROR8__(v121, 28) ^ v127 ^ (v130 + v121) ^ v133 ^ v116;
  v135 = v124 ^ (v124 << 47) ^ ((v124 >> 10) ^ (v124 >> 17) | (v124 << 54));
  v136 = v135 ^ v133 ^ v116;
  v137 = v134 ^ v129 & ~v131;
  v138 = (v133 ^ v116) & ~v135 ^ v132;
  v139 = v131 ^ 0x6005BE354A5BB0B2 ^ v135 & ~v132 ^ v137;
  v140 = v138 ^ v134 & ~v136 ^ __ROR8__(__ROR8__(v135, 21) ^ 0xBBB90042969BB0ABLL, 43) ^ 0xFB267377C6F7CAE2;
  v141 = __ROR8__(v140, 10);
  v142 = v131 & ~v134 ^ v136;
  v143 = v137 ^ 0x93C23431B76D41FLL ^ v142;
  v144 = v142 ^ 0x2DB5B6AF87F64351;
  v145 = (v142 ^ 0x2DB5B6AF87F64351) << 23;
  v146 = (v139 >> 39) ^ (8 * v139) ^ ((v139 << 25) | v139) ^ ((v139 << 25) & v139 & 0xFFFFFFFFFFFFFFF8 | (v139 >> 61));
  v147 = (v140 ^ v141) + (v140 >> 17) - 2 * ((v140 ^ v141) & (v140 >> 17));
  v148 = v140 << 47;
  v149 = __ROR8__(((2 * (v138 & 1)) | 0xD03F52EC52674638) ^ __ROR8__(v138 ^ 0x6DC4FB0BD4FFFF44 ^ __ROR8__(v138 ^ 0x6DC4FB0BD4FFFF44, 6) ^ ((v138 ^ 0x6DC4FB0BD4FFFF44uLL) >> 1) ^ v146, 62), 2);
  v150 = v147 ^ v148;
  v151 = (v144 >> 7) ^ (v144 >> 41) ^ ((v144 ^ (v144 << 57) | v145) & 0xD802C3870D519A19 ^ (v144 ^ (v144 << 57)) & v145 & 0xD802C3870D000000 | (v144 ^ (v144 << 57) | v145) & 0x27FD3C78F2AE65E6 ^ (v144 ^ (v144 << 57)) & v145 & 0x27FD3C78F2800000);
  v152 = v143 ^ __ROR8__(v143, 19) ^ (v143 >> 28) ^ (v143 << 36) ^ v151;
  v153 = v149 ^ 0x340FD4BB1499D18ELL;
  if (v133 == v116)
  {
    v154 = -1;
  }

  else
  {
    v154 = v146;
  }

  v155 = v153 ^ v151 & ~v150 ^ 0xC39D9869C05A48AELL;
  v156 = v153 & ~v146 ^ v152;
  v157 = v156 ^ (v152 ^ v154) & v146 ^ v150 ^ v151 ^ 0x69309AC4CAE2F93;
  v158 = (v149 ^ 0xCBF02B44EB662E71) & v150 ^ v146 ^ v156;
  *(&v159 + 1) = v158 ^ 0x62030E578F798D5ALL;
  *&v159 = v158;
  return (*(a35 + 8 * (v36 ^ (2855 * (a33 + 1 == a27)))))(a1, a2, a3, 2855, v158 ^ 0x62030E578F798D5ALL, v157 ^ __ROR8__(v157, 19) ^ (v157 >> 28) ^ (v157 << 36), v158 ^ 0x62030E578F798D5ALL ^ ((v158 ^ 0x62030E578F798D5ALL) << 25) ^ (v159 >> 61) ^ ((v158 ^ 0x62030E578F798D5ALL) >> 39) ^ 3, v155, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1968EBC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, char *a22, unsigned int a23)
{
  a23 = v23 - 1825732043 * ((&a21 & 0xA686B864 | ~(&a21 | 0xA686B864)) ^ 0x59EF14AC) + 912;
  a22 = &a19;
  v27 = (*(v24 + 8 * (v23 ^ 0x1860)))(&a21);
  return (*(v24 + 8 * (((a21 == v26) * (((v23 ^ (v25 - 582)) + 2117) ^ (v25 + v23 - 586))) ^ v23)))(v27);
}

uint64_t sub_1968EBD24@<X0>(int a1@<W5>, int a2@<W7>, int a3@<W8>)
{
  v10 = -768689608 - a3;
  LODWORD(STACK[0x540]) = 16 * LOBYTE(STACK[0x781]);
  LODWORD(STACK[0x59C]) = 16;
  LODWORD(STACK[0x544]) = 729;
  LODWORD(STACK[0x560]) = 181;
  LODWORD(STACK[0x548]) = 0;
  LODWORD(STACK[0x554]) = 0;
  v11 = LODWORD(STACK[0x598]) + 587;
  v12 = STACK[0x5A0];
  v13 = *(STACK[0x5A0] + 312);
  LODWORD(STACK[0x558]) = v11;
  v14 = (v11 ^ 0x926E5413) + ((2 * v4) & 0xDB2340FE) + (v4 ^ 0x6D91A07F);
  v15 = (v13 >> 3) ^ __ROR4__(v13 ^ 0x7929FA07, 18) ^ __ROR4__(v13 ^ 0x7929FA07, 7) ^ 0x8E945EA0;
  HIDWORD(v16) = v12[25];
  LODWORD(v16) = HIDWORD(v16);
  v17 = (HIDWORD(v16) >> 3) ^ __ROR4__(HIDWORD(v16), 7) ^ ((v16 >> 18) + 1698902416 - ((2 * (v16 >> 18)) & 0xCA866320));
  v18 = v12[35];
  v19 = v18 ^ 0x4049B72C;
  HIDWORD(v16) = v18 ^ 0x4049B72C;
  LODWORD(v16) = v18 ^ 0x4049B72C;
  v20 = v17 ^ 0x65433190;
  v21 = v12[256];
  v22 = (v16 >> 17) ^ (v18 >> 10);
  v23 = v3 + 806562000;
  HIDWORD(v16) = v21;
  LODWORD(v16) = v21;
  v24 = v16 >> 17;
  LODWORD(STACK[0x500]) = a1;
  v26 = __PAIR64__(v21, __ROR4__(v19, 19));
  v25 = v22 ^ v26;
  v27 = v25 ^ 0x6BB22055;
  v28 = 935196014 - v6 + (v6 ^ ((v6 ^ 0x827A038B) + 1245186331) ^ ((v6 ^ 0x6AD83AFF) - 1566953361) ^ ((v6 ^ 0xA2E01365) + 1789008373) ^ ((v6 ^ 0x7DFFDF7F) - 1245850129) ^ 0x9F6B2A0E ^ v15);
  LODWORD(v26) = v21;
  v29 = (a1 - 1955313854) ^ (v3 - 2 * ((v3 + 806562000) & 0x233C173F ^ v3 & 4) - 749780981) ^ 0xC67F26AB ^ v17;
  v30 = v24 ^ (v21 >> 10) ^ ((v26 >> 19) + 1567164204 - ((2 * (v26 >> 19)) & 0xBAD20E58));
  v31 = v30 ^ 0x5D69072C;
  v32 = ((v29 - 1462313120 - ((2 * v29) & 0x51ADBEC0)) ^ v15) - v29;
  v33 = v32 & 2;
  v34 = (v15 ^ (v7 - 1462313120 - ((2 * v7) & 0x51ADBEC0))) - v7;
  v35 = v7 + 837900122;
  LODWORD(STACK[0x594]) = v7;
  v36 = v32 & 0xFFFFFFFD;
  if ((v33 & v34) != 0)
  {
    v33 = -v33;
  }

  v37 = v28 ^ 0x7F8DA75 ^ v36 ^ (v33 + v34 + 133749365 - ((2 * (v33 + v34)) & 0xFF1B4EA));
  v38 = v10 - 935196014 + v6;
  v39 = (v23 - a2) ^ 0x8DC3F69;
  v40 = ((v5 ^ 0xAE90D09E) - 377790817) ^ ((v5 ^ 0x946E9597) - 746251368) ^ ((v5 ^ 0xC1E84416) - 2046572009);
  v41 = a2 - v40;
  v42 = v14 ^ 0xFB16011F;
  v43 = v27 ^ (v7 - ((2 * v35) & 0xCF916DDC) + 431623752);
  v44 = (a1 - 1117413732) ^ (v39 - ((2 * v39) & 0xD44DFCC6) + 1780940387) ^ 0x374FF94F ^ v30;
  v45 = ((v44 - ((2 * v44) & 0xCF916DDC) - 406276370) ^ v27) - v44;
  v46 = v43 - v35;
  v47 = v40 + a1 + 6819708;
  LODWORD(STACK[0x588]) = v38 ^ 0x8DC3F69;
  v48 = (a2 - v40 - 70385396) ^ 0x74315308;
  v49 = v46 ^ 0xB6CE288E ^ ((v38 ^ 0x84A6A9D2 ^ v25) - (v38 ^ 0x8DC3F69) - 1228003186 - ((2 * ((v38 ^ 0x84A6A9D2 ^ v25) - (v38 ^ 0x8DC3F69))) & 0x6D9C511C)) ^ v45;
  v50 = v8 - v42 + 1053848044;
  v51 = (v35 + v42) ^ v38 ^ 0x8DC3F69;
  v52 = v39 ^ v47;
  v53 = v39;
  v54 = v12[84];
  LODWORD(STACK[0x570]) = v50 ^ 0x74315308;
  v55 = v48 + 648003941 + v52;
  LODWORD(STACK[0x568]) = v48 + 648003941;
  v56 = (v50 ^ 0x74315308) + 648003941;
  v57 = v12[265];
  LODWORD(STACK[0x56C]) = v56;
  v58 = v10 - v50 + v54 + v57 + v49 - 792595940 + v37;
  v12[10] = v58 - 1751185678;
  v59 = v58 - (v51 + v56);
  v60 = a2 + v41 + v12[LODWORD(STACK[0x554])] + v12[LODWORD(STACK[0x560])] + v20 + v31 + 2141884620;
  v61 = v60 + v55;
  LODWORD(STACK[0x564]) = 1296;
  v12[200] = v60 + 1041348640;
  v62 = STACK[0x580];
  v63 = 782 * (((v60 + v55) >> 16) >> ((((v50 ^ 8) + 101) & 0xF9) + (((v50 ^ 8) + 101) & 0xF9 ^ 0xF9u) + 11)) + 204102;
  v64 = *(STACK[0x580] + (782 * (HIWORD(v61) & 0xF) + 204102 - 967 * ((4441539 * (782 * (HIWORD(v61) & 0xF) + 204102)) >> 32)));
  v65 = *(STACK[0x580] + (782 * ((v61 >> 8) & 0xF) + 204102 - 967 * ((4441539 * (782 * ((v61 >> 8) & 0xF) + 204102)) >> 32)));
  v66 = ((*(STACK[0x580] + (v63 - 967 * ((4441539 * v63) >> 32))) << 12) ^ (((LODWORD(STACK[0x4A8]) ^ (*(STACK[0x580] + (782 * (v61 >> 28) + 204102 - 967 * ((4441539 * (782 * (v61 >> 28) + 204102)) >> 32))) << 12) ^ (*(STACK[0x580] + (782 * (HIBYTE(v61) & 0xF) + 204102 - 967 * ((4441539 * (782 * (HIBYTE(v61) & 0xF) + 204102)) >> 32))) << 8)) & ~v64 | v64 & 0x44444444) << 8) ^ 0x588A03) & (v65 ^ 0xFFFFA7);
  v67 = *(STACK[0x580] + (782 * ((v60 + v48 + 101 + v52) >> 4) + 204102 - 967 * ((4441539 * (782 * ((v60 + v48 + 101 + v52) >> 4) + 204102)) >> 32)));
  v68 = (v66 | v65 & 0xFC) ^ (*(STACK[0x580] + (782 * ((v60 + v55) >> 12) + 204102 - 967 * ((4441539 * (782 * ((v60 + v55) >> 12) + 204102)) >> 32))) << ((v55 & 4 ^ 4) + (v55 & 4)));
  v69 = *(STACK[0x580] + (782 * (v61 & 0xF) + 204102 - 967 * ((4441539 * (782 * (v61 & 0xF) + 204102)) >> 32)));
  v70 = (((v68 << 8) ^ 0x2EB71E24) & (v69 ^ 0xFFFFFFA4) | v69 & 0xDB) ^ (16 * v67);
  v71 = *(STACK[0x580] + (782 * (v59 >> 28) + 204102 - 967 * ((4441539 * (782 * (v59 >> 28) + 204102)) >> 32))) << 12;
  v72 = *(STACK[0x580] + (782 * (HIBYTE(v59) & 0xF) + 204102 - 967 * ((4441539 * (782 * (HIBYTE(v59) & 0xF) + 204102)) >> 32))) << 8;
  v73 = *(STACK[0x580] + (782 * (HIWORD(v59) & 0xF) + 204102 - 967 * ((4441539 * (782 * (HIWORD(v59) & 0xF) + 204102)) >> 32)));
  v74 = (v71 ^ 0x8AE333B1 ^ v72) & ~v73 | v73 & 0x4E;
  if (v71 == v72)
  {
    v75 = 76;
  }

  else
  {
    v75 = v55 ^ 0x4C;
  }

  v76 = v69 & 0xF;
  v77 = v59 >> 4;
  v78 = ((16 * *(STACK[0x580] + (782 * ((v59 >> 20) & 0xF) + 204102 - 967 * ((4441539 * (782 * ((v59 >> 20) & 0xF) + 204102)) >> 32)))) ^ 0x8AE333B1 ^ v74) << ((((26 - v48) ^ (v48 + 101)) & 0x35) - ((v75 & 0x18 ^ (v75 ^ 0x60) & ((v48 + 101 + v52) ^ 0xE2) ^ 0xCC) & (v55 & 0x28 ^ 0xFA) ^ (v55 & 0x20 | 0xCDu)));
  v79 = v78 - ((2 * v78) & 0x851EB142) + 1116690593;
  v80 = *(v62 + (782 * (v59 & 0xF) + 204102 - 967 * ((4441539 * (782 * (v59 & 0xF) + 204102)) >> 32)));
  v81 = ((v79 ^ *(v62 + (782 * ((v59 >> 8) & 0xF) + 204102 - 967 * ((4441539 * (782 * ((v59 >> 8) & 0xF) + 204102)) >> 32)))) << 8) ^ (*(v62 + (782 * (v59 >> 12) + 204102 - 967 * ((4441539 * (782 * (v59 >> 12) + 204102)) >> 32))) << 12);
  LODWORD(v78) = *(v62 + (782 * v77 + 204102 - 967 * ((4441539 * (782 * v77 + 204102)) >> 32))) ^ ((v81 | v80) >> 4);
  v82 = 782 * (v76 | (16 * (v80 & 0xF)));
  v83 = *(v62 + (v82 + 548964 - 967 * ((4441539 * (v82 + 548964)) >> 32)));
  v84 = 782 * (*(v62 + (v82 + 293250 - 967 * ((4441539 * (v82 + 293250)) >> 32))) ^ LODWORD(STACK[0x540]));
  v85 = v84 + 293250 - 967 * (((8883077 * (v84 + 293250)) >> 32) >> 1);
  v86 = v83 ^ (*(v62 + v84 + 548964 - 967 * (((8883077 * (v84 + 548964)) >> 32) >> 1)) >> 4);
  v87 = 782 * (((((16 * v78) ^ 0xD0) & 0x70 ^ 0xE218A62F) & ((v70 >> 4) ^ 0xE218A677) | ((16 * v78) ^ 0xD0) & 0x80) ^ 0xE218A6F5);
  v88 = *(v62 + (v87 + 548964) % 0x3C7);
  v89 = 782 * (*(v62 + (v87 + 293250) % 0x3C7) ^ (16 * *(v62 + (782 * v86 + 293250 - 967 * ((4441539 * (782 * v86 + 293250)) >> 32)))));
  v90 = v89 + 293250 - 967 * (((8883077 * (v89 + 293250)) >> 32) >> 1);
  v91 = 782 * (v88 ^ (*(v62 + v89 + 548964 - 967 * (((8883077 * (v89 + 548964)) >> 32) >> 1)) >> 4)) + 293250;
  v92 = *(v62 + (v91 - 967 * ((4441539 * v91) >> 32)));
  v93 = (v70 >> 8) & 0xF;
  LODWORD(v78) = 782 * (((v78 & 0xF0 ^ 0x2EC23347) & (v93 ^ 0x2EC233F2) | (v70 >> 8) & 8) ^ 0x2EC2335F);
  v94 = *(v62 + (v78 + 548964) % 0x3C7u);
  v95 = 782 * (*(v62 + (v78 + 293250) % 0x3C7u) ^ (16 * v92));
  LODWORD(v78) = *(v62 + v95 + 293250 - 967 * (((8883077 * (v95 + 293250)) >> 32) >> 1));
  v96 = 782 * (v94 ^ (*(v62 + v95 + 548964 - 967 * (((8883077 * (v95 + 548964)) >> 32) >> 1)) >> 4)) + 293250;
  v97 = v96 - 967 * ((4441539 * v96) >> 32);
  v98 = 782 * (((v81 >> 8) & 0x80 | 0x28242A02) ^ 0x28242AA2 ^ ((v81 >> 8) & 0x70 | (v68 >> 4)));
  v99 = *(v62 + (v98 + 293250) % 0x3C7u);
  LOBYTE(v98) = *(v62 + (v98 + 548964) % 0x3C7u);
  v100 = 782 * (v99 ^ (16 * *(v62 + v97)));
  v101 = *(v62 + v100 + 293250 - 967 * (((8883077 * (v100 + 293250)) >> 32) >> 1));
  v102 = 782 * (((v98 + (~(2 * v98) | 3) + 127) ^ ((*(v62 + v100 + 548964 - 967 * (((8883077 * (v100 + 548964)) >> 32) >> 1)) >> (v69 & 4)) >> (v69 & 4 ^ 4))) ^ 0x7E) + 293250;
  v103 = (v101 << 12) ^ (v78 << 8);
  v104 = 782 * ((((v81 >> 12) | 0x2761010F) & ((v68 >> 8) & 0xF ^ 0x27610186) | (v81 >> 12) & 0x70) ^ 0x27610187);
  LODWORD(v78) = *(v62 + (v104 + 548964) % (((v68 >> 8) & 0x3C7 ^ 0x3C6) + ((v68 >> 8) & 0x3C7 ^ 1)));
  v105 = 782 * (*(v62 + (v104 + 293250) % 0x3C7u) ^ (16 * *(v62 + (v102 - 967 * ((4441539 * v102) >> 32)))));
  v106 = v105 + 293250 - 967 * (((8883077 * (v105 + 293250)) >> 32) >> 1);
  v107 = 782 * (v78 ^ (*(v62 + v105 + 548964 - 967 * (((8883077 * (v105 + 548964)) >> 32) >> 1)) >> 4)) + 293250;
  LODWORD(v78) = 782 * ((((v79 >> 8) & 0x60 ^ 0x4EB4DC2F) & ((v68 >> 12) ^ 0x4EB4DC62) | (v79 >> 8) & 0x90) ^ 0x4EB4DC71);
  v108 = *(v62 + (v78 + 548964) % 0x3C7u);
  v109 = 782 * (*(v62 + (v78 + 293250) % 0x3C7u) ^ (16 * *(v62 + (v107 - 967 * ((4441539 * v107) >> 32)))));
  LODWORD(v78) = v109 + 293250 - 967 * (((8883077 * (v109 + 293250)) >> 32) >> 1);
  v110 = 782 * (v108 ^ (*(v62 + v109 + 548964 - 967 * (((8883077 * (v109 + 548964)) >> 32) >> 1)) >> 4)) + 293250;
  v111 = 782 * (((v79 >> 12) & 0xF0 | HIWORD(v68) & 0xF) ^ 0xF8);
  v112 = v111 + 548964 - 967 * ((4441539 * (v111 + 548964)) >> 32);
  v113 = 782 * (*(v62 + (v111 + 293250 - 967 * ((4441539 * (v111 + 293250)) >> 32))) ^ (16 * *(v62 + (v110 - 967 * ((4441539 * v110) >> 32)))));
  v114 = v113 + 293250 - 967 * (((8883077 * (v113 + 293250)) >> 32) >> 1);
  v115 = 782 * (*(v62 + v112) ^ (*(v62 + v113 + 548964 - 967 * (((8883077 * (v113 + 548964)) >> 32) >> 1)) >> 4)) + 293250;
  v116 = 782 * (*(v62 + (782 * (HIWORD(v79) & 0xA0 ^ 0x571BE7D1 ^ (~HIWORD(v79) | 0x7FFFFFAF) & ((v66 >> 20) ^ 0x571BE75F)) + 293250) % 0x3C7) ^ (16 * *(v62 + (v115 - 967 * ((4441539 * v115) >> 32))))) + 293250;
  v117 = v116 - 967 * (((8883077 * v116) >> 32) >> 1);
  v118 = *(v62 + v85);
  v119 = v118 ^ (16 * *(v62 + v90));
  v120 = 782 * (v76 & 0xFFFFFF0F | (16 * (v118 & 0xF)));
  v121 = v120 - 967 * ((4441539 * v120) >> 32);
  v122 = v119 ^ 0xE9012608 ^ v103;
  v123 = v122 ^ (*(v62 + v106) << 16);
  v124 = 782 * ((v119 & 0xF0 | (v70 >> 4)) ^ 2);
  v125 = 782 * ((((v122 >> 4) & 0xD0 ^ 0xE337FA9F) & (v93 ^ 0xE337FAD9) | (v122 >> 4) & 0x20) ^ 0xE337FAF4) % 0x3C7;
  LODWORD(v78) = v123 ^ (*(v62 + v78) << 20);
  v126 = v78 ^ (*(v62 + v114) << 24);
  v127 = *(v62 + (v124 - 967 * ((4441539 * v124) >> 32)));
  v128 = 782 * (((v103 >> 8) & 0xF0 | 0x51B700B) & ((v68 >> 4) ^ 0x453F70FB) ^ ((v68 >> 4) & 4 | 0x51B700B)) % 0x3C7;
  v129 = 782 * (((v123 >> 12) & 0xF0 | (v68 >> 8) & 0xF) ^ 0x11);
  v130 = v129 - 967 * ((4441539 * v129) >> 32);
  v131 = WORD1(v78) & 0xF0 | (v68 >> 12);
  v132 = ((v68 >> 12) ^ 0xE83) >> ((v127 & 4 ^ 4) + (v127 & 4));
  v133 = STACK[0x564];
  LODWORD(v78) = *(v62 + v117);
  v134 = v132 - ((2 * v132) & 0xD6) + 107;
  v135 = STACK[0x5A0];
  *(STACK[0x5A0] + 4 * ((v133 + 5751) % 0x112u)) = (v53 + 2017806245 + v48) ^ 0xC88F02C7 ^ v61;
  v136 = 782 * (((v134 & 7 ^ 0xB94579F4) & ((v126 >> 20) & 0xF0 ^ 0xB9457917) | v134 & 8) ^ 0xB945798F);
  v137 = *(v62 + v121);
  v138 = v137 ^ (16 * v127);
  v139 = v138 ^ (*(v62 + v125) << 8);
  v140 = v139 ^ (*(v62 + v128) << 12);
  v141 = v140 ^ (*(v62 + v130) << 16);
  v142 = v141 ^ (*(v62 + (782 * (v131 ^ 3) - 967 * ((4441539 * (782 * (v131 ^ 3))) >> 32))) << 20);
  v143 = 782 * ((((v126 ^ (v78 << 28)) >> 24) & 0xF0 | (v134 >> 4)) ^ 0xE6);
  v144 = v142 ^ (*(v62 + v136 % 0x3C7) << 24);
  v145 = v144 ^ (*(v62 + (v143 - 967 * ((4441539 * v143) >> 32))) << 28);
  LODWORD(v78) = *(v62 + (782 * (HIWORD(v141) & 0xF) + 222870 - 967 * ((4441539 * (782 * (HIWORD(v141) & 0xF) + 222870)) >> 32)));
  v146 = ((*(v62 + (782 * (v145 >> 28) + 222870 - 967 * ((4441539 * (782 * (v145 >> 28) + 222870)) >> 32))) << 12) ^ 0x138A04 ^ (*(v62 + (782 * (HIBYTE(v144) & 0xF) + 222870 - 967 * ((4441539 * (782 * (HIBYTE(v144) & 0xF) + 222870)) >> 32))) << 8)) & ~v78 | v78 & 0xFFFFFFFB;
  v147 = *(v62 + (782 * ((v139 >> 8) & 0xF) + 222870 - 967 * ((4441539 * (782 * ((v139 >> 8) & 0xF) + 222870)) >> 32)));
  v148 = ((*(v62 + (782 * ((v142 >> 20) & 0xF) + 222870 - 967 * ((4441539 * (782 * ((v142 >> 20) & 0xF) + 222870)) >> 32))) << 12) ^ (v146 << 8) ^ 0x94560F) & (v147 ^ 0xFFFF2F) | v147 & 0xF0;
  v149 = *(v62 + (782 * (v137 & 0xF) + 222870 - 967 * ((4441539 * (782 * (v137 & 0xFu) + 222870)) >> 32)));
  v150 = *(v62 + (782 * (v138 >> 4) + 222870 - 967 * ((4441539 * (782 * (v138 >> 4) + 222870)) >> 32)));
  *(v135 + 4 * ((v133 + 11178) % 0x112u)) = (LODWORD(STACK[0x588]) + 2017806245 + LODWORD(STACK[0x570])) ^ (16 * v150 - ((32 * v150) & 0x1520) + 1094146709) ^ 0x9C0A2460 ^ (((*(v62 + (782 * (v140 >> 12) + 222870 - 967 * ((4441539 * (782 * (v140 >> 12) + 222870)) >> 32))) << 12) ^ (v148 << 8) ^ 0xC36F71F5) & (v149 ^ 0xFFFFFFFD) | v149 & 0xA);
  return (*(STACK[0x578] + 8 * ((7455 * (LODWORD(STACK[0x59C]) == 63)) ^ LODWORD(STACK[0x598]))))();
}

uint64_t sub_1968ED0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = v9 + 1;
  if (v8 < a8 != v11 < a8)
  {
    v12 = v8 < a8;
  }

  else
  {
    v12 = v11 < v8;
  }

  return (*(STACK[0x578] + 8 * (((8 * !v12) | (16 * !v12)) ^ v10)))();
}

uint64_t sub_1968ED0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  STACK[0x380] = v7;
  if (v9)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(a6 + 8 * ((v11 * ((((v8 - 2263) | 8) + 332) ^ 0x2BA)) ^ v8)))();
}

uint64_t sub_1968ED128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, __int16 a14, char a15, uint64_t a16, char a17, int a18, char a19, uint64_t a20, uint64_t a21, char *a22, char *a23)
{
  v25 = v24 ^ 0x1CA6;
  v26 = (v24 ^ 0x1CA6) - 3196;
  LODWORD(a20) = v26 ^ (1575331711 * ((((2 * &a20) | 0x65266E64) - &a20 + 1298974926) ^ 0xDEC8A230));
  a21 = a16;
  a22 = &a19;
  a23 = &a15;
  (*(v23 + 8 * (v25 + 234)))(&a20);
  LODWORD(a20) = v26 ^ (1575331711 * (((&a20 | 0x9E8E3D45) - &a20 + (&a20 & 0x6171C2B8)) ^ 0xF2D5A847));
  a22 = &a17;
  a23 = &a13;
  a21 = a16;
  (*(v23 + 8 * (v25 ^ 0x32Au)))(&a20);
  a21 = a16;
  a22 = &a11;
  LODWORD(a20) = v25 - 1575331711 * ((&a20 - 441967454 - 2 * (&a20 & 0xE5A81CA2)) ^ 0x89F389A0) - 4339;
  (*(v23 + 8 * (v25 ^ 0x31Au)))(&a20);
  HIDWORD(a21) = v25 - 489239129 * ((-1673185501 - (&a20 | 0x9C453723) + (&a20 | 0x63BAC8DC)) ^ 0xDA92EBEA) - 5675;
  a20 = a16;
  v27 = (*(v23 + 8 * (v25 ^ 0x304u)))(&a20);
  return (*(v23 + 8 * ((944 * (a21 == ((v25 + 571243559) & 0x6F36 ^ 0x719F84F8) + v25 - 3754)) ^ v25)))(v27);
}

uint64_t sub_1968ED418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _BYTE *a34, uint64_t a35)
{
  *a34 = (v37 - ((2 * v37) & 0x40) + (((v35 - 5) | 0x8A) ^ 0xBA)) ^ 0x20;
  *(v42 - 128) = v38 + v35 + 2750;
  *(v42 - 124) = v39;
  *(v42 - 144) = v40;
  *(v42 - 136) = a34;
  (*(v36 + 8 * (v35 + 4510)))(v42 - 144);
  *(v42 - 128) = v35 + 753662761 * v41 + 2283;
  *(v42 - 144) = v40;
  *(v42 - 136) = a35 + 16 * v37;
  v43 = (*(v36 + 8 * (v35 + 4405)))(v42 - 144);
  return (*(v36 + 8 * (v35 ^ (50 * (v37 == 8)))))(v43);
}

uint64_t sub_1968ED50C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  v23 = v16 < v17;
  *(&a16 + a3) = *(a2 + v18) - ((v22 ^ 0xD7) & (2 * *(a2 + v18))) - 20;
  if (v23 == v18 + 1 > a1)
  {
    v23 = v19 + v18 + 272 < v16;
  }

  return (*(v20 + 8 * (v21 ^ (2 * v23))))();
}

uint64_t sub_1968ED570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v19 - 112) = v16 + ((((v19 - 128) | 0x9E476217) - (v19 - 128) + ((v19 - 128) & 0x61B89DE8)) ^ 0xFB5D995C) * v17 + 994;
  *(v19 - 128) = &a13;
  *(v19 - 120) = &a15;
  v20 = (*(v15 + 8 * (v16 + 5532)))(v19 - 128);
  return (*(v15 + 8 * (((*(v19 - 108) <= ((v16 + 461806088) & 0xE4796B8F ^ (v18 + 1008))) * (((v16 - 268598711) & 0x10027DEF) - 851)) ^ v16)))(v20);
}

uint64_t fp_dh_0b1bf0982f8cc89fc716dd37f718c186(_DWORD *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1 ^ (654144011 * ((a1 & 0xE6F5D08F | ~(a1 | 0xE6F5D08F)) ^ 0x35DE52EC));
  v3 = 1575331711 * ((((2 * &v5) | 0x59BC755C) - &v5 + 1394722130) ^ 0xC085AFAC);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 + 1144378907)) - 4;
  v6 = v3 ^ 0x6F85AD8F;
  v7 = v2 + 1144378907 + v3 + 1299;
  result = (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0xBBCA2E3D)) + 8 * (v2 + 1144385110) - 4))(&v5);
  a1[4] = v8;
  return result;
}

void fp_dh_692be43eb22f3a5fe2088213ebf5a149(uint64_t a1)
{
  v1 = *(a1 + 8) - 654144011 * ((a1 + 1807187527 - 2 * (a1 & 0x6BB77E47)) ^ 0x476303DB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968ED92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  *(a2 - 16) = *v40 - ((*v40 << (((v41 + ((v39 + 28) | 0xB9) + 70) ^ 0x9F) & 0xEB)) & a3) - 20;
  v43 = (a2 - 16);
  v43[1] = v40[1] - (a3 & (2 * v40[1])) - 20;
  v43[2] = v40[2] - (a3 & (2 * v40[2])) - 20;
  v43[3] = v40[3] - (a3 & (2 * v40[3])) - 20;
  v43[4] = v40[4] - (a3 & (2 * v40[4])) - 20;
  v43[5] = v40[5] - (a3 & (2 * v40[5])) - 20;
  v43[6] = v40[6] - (a3 & (2 * v40[6])) - 20;
  v43[7] = v40[7] - (a3 & (2 * v40[7])) - 20;
  v43[8] = v40[8] - (a3 & (2 * v40[8])) - 20;
  v43[9] = v40[9] - (a3 & (2 * v40[9])) - 20;
  v43[10] = v40[10] - (a3 & (2 * v40[10])) - 20;
  v43[11] = v40[11] - (a3 & (2 * v40[11])) - 20;
  v43[12] = v40[12] - (a3 & (2 * v40[12])) - 20;
  v43[13] = v40[13] - (a3 & (2 * v40[13])) - 20;
  v43[14] = v40[14] - (a3 & (2 * v40[14])) - 20;
  v43[15] = v40[15] - (a3 & (2 * v40[15])) - 20;
  return (*(v42 + 8 * ((105 * (((((v39 - 3044) | 0xDB9) ^ 0xFFFFF249) + a39) > 16)) ^ ((v39 - 3044) | 0xDB9))))(a1, v43, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1968ED95C@<X0>(uint64_t a1@<X8>)
{
  v4 = 2309 * (v3 ^ 0x12B6);
  v5 = 1825732043 * (((&v7 | 0x6710FE0D) - &v7 + (&v7 & 0x98EF01F0)) ^ 0x6786AD3A);
  v7 = v1;
  v8 = v4 - (((-883071628 - 2 * v2) & 0xD6EDCEC2) + v2 + v5) - 786069487;
  v9 = v5 + v4 - 2038;
  return (*(a1 + 8 * (v4 + 2330)))(&v7);
}

uint64_t sub_1968EDC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v23 - 160) = v19;
  *(v23 - 156) = 611007558;
  v27 = **(v22 + 8 * (v18 ^ 0x8B6));
  v24 = v18 + 534356342 + a18;
  *(v23 - 136) = v18 - a18 - 1918690758;
  *(v20 + 24) = v27 + a18;
  *(v20 + 32) = a18;
  *(v23 - 144) = v24;
  *(v23 - 140) = v24 + 22;
  *(v23 - 152) = v24 - 166;
  *(v23 - 148) = a18;
  v25 = (*(v21 + 8 * (v18 + 4408)))(v23 - 152);
  return (*(v21 + 8 * *(v23 - 112)))(v25);
}

uint64_t sub_1968EDD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = LODWORD(STACK[0x59C]) - 1442225052;
  v10 = -407536117 - 196962297 * ((*STACK[0x430] ^ 0x7DDD4FFE) + 1239712664 + ((2 * *STACK[0x430]) & 0x1FC));
  v11 = (89 * ((a3 - 2873) ^ 0x1C1) + 1201195800 - a7 + v7 + ((v10 % 0x101) ^ v10) - 2759) ^ v8;
  v12 = v11 + v7;
  HIDWORD(v13) = v11 - 1640135532;
  LODWORD(v13) = v11 - 1640135532;
  v14 = (v11 - 1640135532) ^ a7;
  v15 = v11 - 1640135532 + v8;
  v16 = (v12 + v14 + (v13 >> 30) - 438939732) ^ v15;
  v17 = v16 + 1634081432;
  v18 = v15 & 0x1D;
  v19 = v12 - v16 - 2073021164;
  v20 = v17 >> (v15 & 0x1D);
  v21 = v17 ^ v14;
  v22 = v17 ^ v15;
  v23 = (v19 ^ (8 * v17) ^ v21 ^ (v20 >> (v18 ^ 0x1D))) + v22;
  HIDWORD(v13) = v23 + 1206327647;
  LODWORD(v13) = v23 + 1206327647;
  v24 = v21 ^ 0x459450D9 ^ (v23 - ((2 * (v23 + 1206327647)) & 0x8B28A1B2) - 1921291720);
  v25 = ((v13 >> 29) - 1183980711 - ((v23 + 1206327647) ^ v19) - v24 + (((((~(2 * (v13 >> 29)) + (v13 >> 29)) & 0xF1A726A2) + ((v13 >> 29) & 0xF1A726A2)) ^ 0x36101955) & ((((((v23 + 1206327647) ^ ~v19) + 1201195800) & 0x4A12080D) + ((((v23 + 1206327647) ^ v19) + 946287848) & 0x4A12080D)) | (((941156000 - v23) & 0x3C921CAE) + ((v23 + 1206327647) & 0x3C921CAE))))) ^ (v23 + 1206327647 + v22);
  v26 = v9 < 0x9E1ABD9E || v9 > 0x9E1ABD9F;
  return (*(STACK[0x578] + 8 * ((139 * !v26) ^ (a3 - 1514))))(a1, 2654831764, 1634081432, 1206327647, 4054263458, a6, v24 - v25 + 1513914800);
}

uint64_t sub_1968EDFA0@<X0>(uint64_t a1@<X8>)
{
  v10 = (v7 - 47);
  v11 = (v10 - 2490) ^ 0xFFFFFFFFFFFFFBD2;
  v13.val[0].i64[0] = (v4 - v6 + v11) & 0xF;
  v13.val[0].i64[1] = (v4 - v6 + 14) & 0xF;
  v13.val[1].i64[0] = (v4 - v6 + 13) & 0xF;
  v13.val[1].i64[1] = (v4 - v6 + 12) & 0xF;
  v13.val[2].i64[0] = (v4 - v6 + 11) & 0xF;
  v13.val[2].i64[1] = (v4 - v6 + 10) & 0xF;
  v13.val[3].i64[0] = (v4 - v6 + 9) & 0xF;
  v13.val[3].i64[1] = (v4 - v6) & 0xF ^ 8;
  *(v9 + -7 - v6 + v4 + v11) = veor_s8(veor_s8(veor_s8(*(v1 + v13.val[0].i64[0] - 7), *(a1 + -7 - v6 + v4 + v11)), veor_s8(*(v2 + v13.val[0].i64[0] - 7), *(v13.val[0].i64[0] + v3 - 3))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v13, xmmword_196EBFAE0), 0xB0B0B0B0B0B0B0BLL)));
  return (*(v8 + 8 * ((1009 * (((v10 ^ 0xDFF) & v5) - 8 != v6)) ^ v10)))(xmmword_196EBFAE0);
}

uint64_t sub_1968EE0A8(unsigned int a1, int a2, unsigned int a3, int a4, unsigned int a5)
{
  v14 = (((v7 - 190) | 1) - 2702) * (a1 & 0xF);
  v15 = (((a1 >> 4) * v8) * v5) >> 16;
  v16 = v6 + (*(v11 + (v14 - ((((v14 * v5) >> 16) + (((v14 - ((v14 * v5) >> 16)) & 0xFFFE) >> 1)) >> 9) * v9)) ^ (16 * (*(v11 + ((a1 >> 4) * v8 - ((v15 + ((((a1 >> 4) * v8 - v15) & 0xFFFE) >> 1)) >> 9) * v9)) & 0xF)) ^ 0xC4) * a2;
  v17 = v12 + ((*(v13 + (v16 - ((v16 * a3) >> 32) * a4)) + 107) ^ 0x49) * v8;
  LODWORD(STACK[0x594]) = 3458;
  v18 = ((a1 * v8 + 3458) * v5) >> 16;
  *(v11 + (a1 * v8 + 3458 - ((v18 + (((a1 * v8 + 3458 - v18) & 0xFFFE) >> 1)) >> 9) * v9)) = *(v11 + (v17 - ((v17 * a5) >> 32) * v9));
  return (*(v10 + 8 * ((7831 * (a1 == 255)) ^ v7)))();
}

uint64_t sub_1968EE214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, int a13)
{
  a12 = 0;
  a11 = (v15 - 1144379917) ^ (654144011 * (((&a11 | 0xB5E978C9) - (&a11 & 0xB5E978C9)) ^ 0x993D0555));
  (*(v13 + 8 * (v15 ^ 0x1CC8)))(&a11);
  v18 = a13;
  v19 = *v17;
  a11 = (v15 + 1574) ^ (((&a11 & 0x2F1AFACA | ~(&a11 | 0x2F1AFACA)) ^ 0xA6145BF9) * v16);
  a12 = v19;
  v20 = (*(v13 + 8 * (v15 ^ 0x1C8C)))(&a11);
  return (*(v13 + 8 * (((v18 != v14) * (325 * ((v15 - 677437715) & 0x3FFFDEDC ^ 0x179F0419) - 1614)) ^ v15)))(v20);
}

uint64_t sub_1968EE354()
{
  *(v3 - 216) = 654144011 * ((((v3 - 224) | 0x67058DE6) - ((v3 - 224) & 0x67058DE6)) ^ 0x4BD1F07A) + 86337211 + v0 + 1882;
  v4 = (*(v2 + 8 * (v0 + 5166)))(v3 - 224);
  *v1 = *(v3 - 224) ^ 0x21;
  return (*(v2 + 8 * (v0 | (16 * (v0 == 1723)))))(v4);
}

uint64_t sub_1968EE410@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 - 1167759009) & 0x459A93FC;
  v6.i64[0] = 0xD8D8D8D8D8D8D8D8;
  v6.i64[1] = 0xD8D8D8D8D8D8D8D8;
  v7.i64[0] = 0xECECECECECECECECLL;
  v7.i64[1] = 0xECECECECECECECECLL;
  v8 = ((v5 - 23) ^ 0xFFFFFFFFFFFFECFALL) + v2;
  v9 = *(a1 + v8 - 15);
  v10 = *(a1 + v8 - 31);
  v11 = v1 + v8;
  *(v11 - 15) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v6)), v7);
  *(v11 - 31) = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), v6)), v7);
  return (*(v4 + 8 * ((2648 * ((v2 & 0xFFFFFFE0) == 32)) ^ v5)))(-4870);
}

uint64_t sub_1968EE4DC@<X0>(int a1@<W8>)
{
  v5 = 4 * (v2 - 1491);
  v6 = v5 ^ 0x12C8;
  v7 = *(v3 + 4);
  v8 = (v5 ^ 0x18DC) - a1;
  if (v7 + 1471143716 >= 0)
  {
    v8 = a1;
  }

  *(v3 + 4) = v8 + v7;
  v9 = v1 + 544702646;
  v10 = v9 < 499903155;
  **(v3 + 8) = *(*(v3 + 8) + 4 * a1);
  if (v9 < 499903155)
  {
    v10 = v9 > -1647580492;
  }

  return (*(v4 + 8 * ((7676 * v10) ^ v6)))();
}

uint64_t sub_1968EE588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) | v2)))();
}

uint64_t sub_1968EE618()
{
  LODWORD(v12) = v0 - 1575331711 * ((9868324 - (&v12 | 0x969424) + (&v12 | 0xFF696BDB)) ^ 0x9332FED9) + 198;
  v13 = v9;
  v14 = &v11;
  (*(v1 + 8 * (v0 ^ 0x1D55)))(&v12);
  HIDWORD(v13) = v0 - 489239129 * ((2 * (&v12 & 0x2A526318) - &v12 - 710042394) ^ 0x6C85BFD0) - 1138;
  v12 = v9;
  (*(v1 + 8 * (v0 + 4789)))(&v12);
  if (v13 == ((v0 - 1140) ^ (v2 + 639)))
  {
    v4 = 1975500542;
  }

  else
  {
    v4 = -37765900;
  }

  if (v13 == ((v0 - 1140) ^ (v2 + 639)))
  {
    v5 = -343966212;
  }

  else
  {
    v5 = -75531800;
  }

  if (v13 == ((v0 - 1140) ^ (v2 + 639)))
  {
    v6 = -69218826;
  }

  else
  {
    v6 = 1944047616;
  }

  v7 = (v4 ^ v11) + v6 + (v5 & (2 * v11));
  v13 = v9;
  LODWORD(v12) = v0 - (((&v12 | 0x1955BBA5) - (&v12 & 0x1955BBA5)) ^ 0xE1899BE4) * v3 + 4058;
  (*(v1 + 8 * (v0 + 4784)))(&v12);
  LODWORD(v12) = v0 - 1140 - (((&v12 | 0x1F80F70) - &v12 + (&v12 & 0xFE07F088)) ^ 0xF9242F31) * v3 + 5198;
  v13 = v10;
  (*(v1 + 8 * (v0 + 4784)))(&v12);
  return (v7 - 1906281716);
}

uint64_t sub_1968EE848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, int a11, int a12, uint64_t a13, uint64_t a14)
{
  v17 = (v14 + 715) | 0x460;
  a12 = 0;
  a14 = 4;
  v18 = (*(v15 + 8 * (v17 ^ 0xEAC)))(*(v16 + 4), 23, 0, 0, &a10, &a14);
  v23 = v18 == ((v17 - 1427768442) & 0x5519FE5B ^ 0xE4B) && a14 == 4;
  return (*(v15 + 8 * ((v23 * (((v17 - 3623) | 0x809) ^ 0xE49)) | v17)))(v18, v19, v20, v21);
}

uint64_t sub_1968EE8EC@<X0>(uint64_t a1@<X5>, _BYTE *a2@<X8>)
{
  *(v3 + 72) = 32;
  *(v3 + 39) = a2[55];
  *(v3 + 38) = a2[54];
  *(v3 + 37) = a2[53];
  *(v3 + 36) = a2[52];
  *(v3 + 35) = a2[51];
  *(v3 + 34) = a2[50];
  *(v3 + 33) = a2[49];
  *(v3 + 32) = a2[48];
  *(v3 + 31) = a2[47];
  *(v3 + 30) = a2[46];
  *(v3 + 29) = a2[45];
  *(v3 + 28) = a2[44];
  *(v3 + 27) = a2[43];
  *(v3 + 26) = a2[42];
  *(v3 + 25) = a2[41];
  *(v3 + 24) = a2[40];
  *(v3 + 23) = a2[39];
  *(v3 + 22) = a2[38];
  *(v3 + 21) = a2[37];
  *(v3 + 20) = a2[36];
  *(v3 + 19) = a2[35];
  *(v3 + 18) = a2[34];
  *(v3 + 17) = a2[33];
  *(v3 + 16) = a2[32];
  *(v3 + 15) = a2[31];
  *(v3 + 14) = a2[30];
  *(v3 + 13) = a2[29];
  *(v3 + 12) = a2[28];
  *(v3 + 11) = a2[27];
  *(v3 + 10) = a2[26];
  *(v3 + 9) = a2[25];
  *(v3 + 8) = a2[24];
  return (*(a1 + 8 * (((STACK[0x540] != 0) * ((v2 - 1046360742) & 0x3E5E276F ^ 0x7CA)) ^ v2)))();
}

uint64_t sub_1968EEC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v9 = (v6 - 2579) | 0xC4;
  v10 = 1283153057 * ((((v8 - 168) | 0xBDB8D82E) - (v8 - 168) + ((v8 - 168) & 0x424727D0)) ^ 0xF260DB19);
  *(v8 - 168) = v10 + 751314306;
  *(v8 - 152) = (v9 + 2751) ^ v10;
  *(v8 - 160) = a3;
  v11 = (*(v7 + 8 * (v9 ^ 0x1A68)))(v8 - 168);
  return a6(v11);
}

uint64_t sub_1968EEC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 263) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 262) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v12 + 8 * ((3221 * (((v11 - 1117025383) & 0x429476EC) == 1838)) ^ v11)))();
}

uint64_t sub_1968EECDC()
{
  v0 = STACK[0x578];
  v1 = STACK[0x5A0];
  STACK[0x580] = &STACK[0x740];
  *(&STACK[0xBB0] + 0x12A36 % (((v1 ^ 0x11DB) - 1786) ^ 0xAD8u)) = -15;
  *(&STACK[0x1366B] - 979 * ((((0x12ABB * 0xBC4614657568DBBuLL) >> 64) + ((76475 - ((0x12ABB * 0xBC4614657568DBBuLL) >> 64)) >> 1)) >> 9)) = -16;
  return (*(v0 + 8 * (v1 ^ 0x11DB)))(&STACK[0x1366B], 76475, 0xBC4614657568DBBLL, -979);
}

uint64_t sub_1968EEDFC@<X0>(int a1@<W8>)
{
  v3 = (a1 - 3537) | 0x1C2;
  (*(v1 + 8 * (a1 ^ 0x15A3)))(v2);
  STACK[0x888] = 0;
  return (*(v1 + 8 * ((54 * (((STACK[0x668] == 0) ^ (v3 + 118)) & 1)) ^ v3)))();
}

uint64_t sub_1968EEE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, char *a19, unsigned int a20)
{
  a20 = v20 - 1825732043 * (((&a18 | 0x37735927) + (~&a18 | 0xC88CA6D8)) ^ 0x37E50A11) - 175;
  a19 = &a16;
  v23 = (*(v21 + 8 * (v20 + 5025)))(&a18);
  return (*(v21 + 8 * (((a18 == 1906281716) * (((v20 - 1191262124) & 0xF765F3BE ^ (v22 + 1308)) + 38 * (v20 ^ 0x6CB))) ^ v20)))(v23);
}

uint64_t sub_1968EEF30(uint64_t a1, int a2)
{
  v13.val[1].i64[0] = (v5 + 13) & 0xF;
  v13.val[1].i64[1] = (v5 + 12) & 0xF;
  v13.val[2].i64[0] = (v5 + 11) & 0xF;
  v13.val[2].i64[1] = (v5 + 10) & 0xF;
  v13.val[3].i64[0] = (v5 + 9) & 0xF;
  v13.val[3].i64[1] = v5 & 0xF ^ 8;
  v14.val[0].i64[0] = (v5 + 7) & 0xF;
  v14.val[0].i64[1] = (v5 + 6) & 0xF;
  v14.val[1].i64[0] = (v5 + 5) & 0xF;
  v14.val[1].i64[1] = (v5 + 4) & 0xF;
  v14.val[2].i64[0] = (v5 + 3) & 0xF;
  v14.val[2].i64[1] = (v5 + 2) & 0xF;
  v14.val[3].i64[0] = (v5 + 1) & 0xF;
  v14.val[3].i64[1] = v5 & 0xF;
  v9 = *(v7 - 208);
  v10 = vqtbl4q_s8(v14, xmmword_196EBFA60).u64[0];
  v11.i64[0] = 0x9797979797979797;
  v11.i64[1] = 0x9797979797979797;
  v13.val[0].i64[0] = (((a2 - 326) | 0x420u) ^ 0x162FLL) & v6;
  v13.val[0].i64[1] = (v5 + 14) & 0xF;
  v14.val[1].i64[0] = vqtbl4q_s8(v13, xmmword_196EBFA60).u64[0];
  v14.val[1].i64[1] = v10;
  v14.val[0] = vrev64q_s8(vmulq_s8(v14.val[1], v11));
  *(v5 + v8 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v2 + v13.val[0].i64[0] - 15), *(v5 + v8 - 16)), veorq_s8(*(v13.val[0].i64[0] + v3 - 13), *(v13.val[0].i64[0] + v4 - 14))), vextq_s8(v14.val[0], v14.val[0], 8uLL));
  return (*(v9 + 8 * ((498 * ((v5 & 0x10) == 16)) ^ (a2 - 4172))))(v5 + v8 - 32, (v5 & 0x10) - 16, 1056, 5679);
}

uint64_t sub_1968EF46C()
{
  v8 = (v3 - 1) & 0xF;
  v12 = v4 < 0x10 || (1 - v7 + v1 - v3 + v8) < 0x10 || (1 - v7 + v2 - v3 + v8) < 0x10 || v0 - v7 - v3 + v8 + ((v5 ^ 0x731) - 1576) - 777 < 0x10;
  return (*(v6 + 8 * (((4 * v12) | (v12 << 6)) ^ v5)))();
}

uint64_t sub_1968EF534@<X0>(unint64_t a1@<X4>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, __int16 a53, unsigned __int8 a54, unsigned __int8 a55)
{
  v57 = (v55 - 1809676916) & 0x6BDD7FFF ^ 0xC;
  v107 = a54;
  v58 = *(a2 - 12);
  v59 = *(a2 - 8);
  v60 = *(a2 - 4);
  v106 = a55 != (((v55 - 116) ^ 0xC) + 32);
  v105 = 2u % a55;
  v61 = *(a2 - 3);
  v62 = *(a2 - 7);
  v63 = *(a2 - 11);
  v64 = *(a2 - 15);
  v104 = 3u % a55;
  v65 = *(a2 - 14);
  v66 = *(a2 - 6);
  v67 = *(a2 - 10);
  v68 = *(a2 - 2);
  v69 = *(a2 - 13);
  v70 = *(a2 - 9);
  v71 = *(a2 - 5);
  v108 = v57;
  v72 = *(a2 - 1);
  v73 = *(a8 - 14);
  v74 = *a7 ^ *(*(a8 - 15) + (*v56 ^ a1));
  *v56 = v74 ^ a1;
  v75 = *(a8 - 10);
  v76 = a7[v57 ^ 0x5E5] ^ *(*(a8 - 11) + (v58 ^ a1));
  *(a2 - 12) = v76 ^ a1;
  v77 = *(a8 - 6);
  v78 = a7[8] ^ *(*(a8 - 7) + (v59 ^ a1));
  *(a2 - 8) = v78 ^ a1;
  v79 = *(a8 - 2);
  v109 = a7[12] ^ *(*(a8 - 3) + (v60 ^ a1));
  *(a2 - 4) = v109 ^ a1;
  v80 = a7[13] ^ *(v79 + (v62 ^ a1));
  *(a2 - 3) = v80 ^ a1;
  v81 = a7[9] ^ *(v77 + (v63 ^ a1));
  *(a2 - 7) = v81 ^ a1;
  v82 = a7[5] ^ *(v75 + (v64 ^ a1));
  *(a2 - 11) = v82 ^ a1;
  v83 = a7[1] ^ *(v73 + (v61 ^ a1));
  *(a2 - 15) = v83 ^ a1;
  v84 = *(a8 - 12);
  LOBYTE(v73) = a7[2] ^ *(*(a8 - 13) + (v66 ^ a1));
  *(a2 - 14) = v73 ^ a1;
  v85 = v65 ^ a1;
  v86 = *(a8 - 4);
  v87 = a7[10] ^ *(*(a8 - 5) + v85);
  *(a2 - 6) = v87 ^ a1;
  v88 = *(a8 - 8);
  v89 = a7[6] ^ *(*(a8 - 9) + (v68 ^ a1));
  *(a2 - 10) = v89 ^ a1;
  v90 = *a8;
  v91 = a7[14] ^ *(*(a8 - 1) + (v67 ^ a1));
  *(a2 - 2) = v91 ^ a1;
  v92 = a7[3] ^ *(v84 + (v70 ^ a1));
  *(a2 - 13) = v92 ^ a1;
  v93 = a7[7] ^ *(v88 + (v71 ^ a1));
  *(a2 - 9) = v93 ^ a1;
  v94 = a7[11] ^ *(v86 + (v72 ^ a1));
  *(a2 - 5) = v94 ^ a1;
  v95 = a7[15] ^ *(v90 + (v69 ^ a1));
  *(a2 - 1) = v95 ^ a1;
  v96 = &a51 + 128 * (8 % v107);
  v97 = *(*(v96 + 148) + 4 * v83) ^ *(*(v96 + 147) + 4 * v74) ^ *(*(v96 + 149) + 4 * v73) ^ *(*(v96 + 150) + 4 * v92);
  *(a2 - 13) = HIBYTE(v97) - ((v97 >> 23) & 0xD8) - 20;
  *(a2 - 14) = BYTE2(v97) - ((v97 >> 15) & 0xD8) - 20;
  *(a2 - 15) = BYTE1(v97) - ((v97 >> 7) & 0xD8) - 20;
  *v56 = v97 - ((2 * v97) & 0xD8) - 20;
  v98 = &v96[32 * v106 + 1176];
  v99 = *(*(v98 + 1) + 4 * v82) ^ *(*v98 + 4 * v76) ^ *(*(v98 + 2) + 4 * v89) ^ *(*(v98 + 3) + 4 * v93);
  *(a2 - 9) = HIBYTE(v99) - ((v99 >> 23) & 0xD8) - 20;
  *(a2 - 10) = (~(v99 >> 15) | 0x27) + BYTE2(v99) - 19;
  *(a2 - 11) = BYTE1(v99) - ((v99 >> 7) & 0xD8) - 20;
  *(a2 - 12) = v99 - ((2 * v99) & 0xD8) - 20;
  v100 = &v96[32 * v105 + 1176];
  v101 = *(*(v100 + 1) + 4 * v81) ^ *(*v100 + 4 * v78) ^ *(*(v100 + 2) + 4 * v87) ^ *(*(v100 + 3) + 4 * v94);
  *(a2 - 5) = HIBYTE(v101) - ((v101 >> 23) & 0xD8) - 20;
  *(a2 - 6) = BYTE2(v101) - ((v101 >> 15) & 0xD8) - 20;
  *(a2 - 7) = BYTE1(v101) - ((v101 >> 7) & 0xD8) - 20;
  *(a2 - 8) = v101 - ((2 * v101) & 0xD8) - 20;
  v102 = &v96[32 * v104 + 1176];
  LODWORD(v102) = *(*(v102 + 8) + 4 * v80) ^ *(*v102 + 4 * v109) ^ *(*(v102 + 16) + 4 * v91) ^ *(*(v102 + 24) + 4 * v95);
  *(a2 - 1) = BYTE3(v102) ^ 0xEC;
  *(a2 - 2) = BYTE2(v102) ^ 0xEC;
  *(a2 - 3) = BYTE1(v102) ^ 0xEC;
  *(a2 - 4) = v102 - ((2 * v102) & 0xD8) - 20;
  return (*(a18 + 8 * (v108 ^ 0xC)))(8);
}

uint64_t sub_1968EFAC8(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, int a21, int a22, unsigned int a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unsigned int a28, unsigned int a29, unsigned int a30)
{
  v31.n128_u64[0] = 0xD8D8D8D8D8D8D8D8;
  v31.n128_u64[1] = 0xD8D8D8D8D8D8D8D8;
  v32.n128_u64[0] = 0xECECECECECECECECLL;
  v32.n128_u64[1] = 0xECECECECECECECECLL;
  return (*(v30 + 8 * ((((((a19 + 606) | 0x820) ^ 0x9E0) + ((a19 + 74) | 0xA34)) * (a15 < 0xFFFFFFFE)) ^ a19)))(a23, 59, a28, a29, a20, 307, a30, 2724484984, a1, a2, a3, v31, v32);
}

uint64_t sub_1968EFC6C()
{
  v0 = STACK[0x330];
  if (LODWORD(STACK[0x330]) == 41591)
  {
    return (*(STACK[0x370] + 8 * ((LODWORD(STACK[0x36C]) + 651) ^ (424 * (LODWORD(STACK[0x2D0]) != LODWORD(STACK[0x340]))))))();
  }

  v2 = STACK[0x370];
  if (v0 == 26075)
  {
    return (*(v2 + 8 * ((25 * (LODWORD(STACK[0x8F0]) - ((2 * LODWORD(STACK[0x8F0])) & 0xECA48B6E) + ((LODWORD(STACK[0x36C]) - 3068) ^ 0xFFFFF58F) - 162380343 == -162380361)) ^ (LODWORD(STACK[0x36C]) - 405))))();
  }

  if (v0 != 45445)
  {
    JUMPOUT(0x1968EFE94);
  }

  return (*(v2 + 8 * (((LODWORD(STACK[0x8E0]) == -1720256301) * (LODWORD(STACK[0x36C]) ^ 0x171F)) ^ (LODWORD(STACK[0x36C]) - 4641))))();
}

uint64_t sub_1968EFD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == 1906281716)
  {
    v10 = STACK[0x470];
    v11 = *(STACK[0x470] + 8);
    v12 = STACK[0x620];
    v12[1] = v11;
    *v12 = *v10;
    return (*(a6 + 8 * (((((v11 == 0) ^ (a8 - 62)) & 1) * (((a8 - 5149) | 0x4B2) - 1655)) ^ (a8 - 1950))))();
  }

  else
  {
    if (v8 != 1906239664)
    {
      JUMPOUT(0x1968EFE94);
    }

    return (*(a6 + 8 * ((31 * ((((a8 + 932110367) ^ (*(STACK[0x3F0] + 8) == 0)) & 1) == 0)) ^ (a8 + 81))))();
  }
}

void sub_1968EFE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 8 * (v6 + 5637)))();
  STACK[0x470] = 0;
  JUMPOUT(0x1968EFE8CLL);
}

uint64_t sub_1968EFF14@<X0>(unsigned int a1@<W8>)
{
  v8 = v7 < v1;
  *(v4 + v2 + 24) = *(v3 + v2);
  if (v8 == v2 + 1 > 0x73AA4C6)
  {
    v8 = (v5 ^ 0x14EE) + v2 - 121288857 < a1;
  }

  return (*(v6 + 8 * ((126 * !v8) ^ v5)))();
}

uint64_t sub_1968EFF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, unsigned int a8)
{
  v19 = (*(v11 + (v13 & 0xF) * v12) ^ (16 * *(v11 + (v13 >> 4) * v12)) ^ (((-28 - v10) & 0xA1) + (v13 & 0xA1)) ^ 5) * a7;
  LOBYTE(v19) = *(a4 + (v19 - ((v19 * a8) >> 32) * v14)) + 62;
  LOBYTE(v19) = v19 ^ (((((v19 >> (v13 & 2)) >> (v13 & 2 ^ 2)) ^ v19) & 0xF0) >> 4) ^ 0x1C;
  *(v11 + (v10 * v12 - 16491 - (((((v10 * v12 - 16491) >> 1) * v18) >> 16) >> 8) * v17)) = *(v11 + (v15 + v19 * v12 - ((((v15 + v19 * v12) * v16) >> 16) >> 7) * v17));
  return (*(v9 + 8 * ((19 * (v10 + 1 != v8 + 256)) ^ a5)))();
}

uint64_t sub_1968F007C@<X0>(int a1@<W3>, unsigned int a2@<W8>)
{
  v7 = *(v6 - 220 + a2 + 72);
  v8 = ((2 * a2) & 0xFF597D50) + (a2 ^ 0x7FACBEAA) + v3;
  *(v4 + v8) = v7 ^ (a1 + v2 - 47);
  *(v4 + v8 + 1) = (BYTE1(v7) ^ 7) - ((2 * (BYTE1(v7) ^ 7)) & 0xD8) - 20;
  *(v4 + v8 + 2) = (BYTE2(v7) ^ 0x47) - ((2 * (BYTE2(v7) ^ 0x47)) & 0xD8) - 20;
  *(v4 + v8 + 3) = (HIBYTE(v7) ^ 0x7C) - 2 * ((HIBYTE(v7) ^ 0x7C) & 0x6D ^ HIBYTE(v7) & 1) - 20;
  return (*(v5 + 8 * ((2720 * (a2 + 4 < *(v6 - 128))) ^ v2)))((a1 + v2 - 1189));
}

uint64_t sub_1968F0148()
{
  v7 = v5;
  v0 = 599 * (*(STACK[0x580] + ((v3 ^ 0x30BBC) + 782 * (v5 & 0xF)) % 0x3C7) ^ (16 * (*(STACK[0x580] + (782 * (v5 >> 4) + 204102) % 0x3C7) & 0xF)) ^ 0xAC) + 167121;
  v1 = 782 * (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v4) + (v0 - 928 * ((4628198 * v0) >> 32)) - 8) ^ 0x80) + 495788;
  *(STACK[0x580] + (782 * v7 + 293250) % 0x3C7) = *(STACK[0x580] + (v1 - 967 * ((4441539 * v1) >> 32)));
  return (*(STACK[0x578] + 8 * ((953 * (v7 == 255)) ^ v6)))();
}

void sub_1968F0224()
{
  if (v0 == 1041170922)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 16) = v2;
}

uint64_t sub_1968F0358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14)
{
  a13 = v14 + 5580 - 1790939281 * ((1123446567 - (&a13 | 0x42F66F27) + (&a13 | 0xBD0990D8)) ^ 0x45D5B099);
  a14 = a11;
  (*(v16 + 8 * (v14 | 0x18A2)))(&a13);
  a13 = v14 + 5580 - 1790939281 * ((2 * (&a13 & 0x1220E208) - &a13 + 1843338743) ^ 0x95033DB6);
  a14 = a10;
  v18 = (*(v16 + 8 * (v14 | 0x18A2)))(&a13);
  return (*(v16 + 8 * (((v17 == v15) * (v14 - 241)) ^ v14)))(v18);
}

uint64_t sub_1968F0A34()
{
  v3 = STACK[0x248];
  (*(STACK[0x248] + 8 * (v0 + 2394)))(v2, 0, 24);
  *(v1 + 104) = 0x1FA834112;
  *(v1 + 112) = 0x200000004;
  STACK[0x708] = v2;
  LODWORD(STACK[0x79C]) = 0;
  STACK[0x678] = 0;
  v4 = (*(v3 + 8 * (v0 ^ 0xB18)))(128, 0x10800400FED9166);
  STACK[0x508] = v4;
  return (*(v3 + 8 * (((v4 != 0) * (((v0 - 511046392) & 0x1E75EF7E ^ 0xFFFFFC18) + 28 * (v0 ^ 0x1114))) ^ v0)))();
}

uint64_t sub_1968F0DE0@<X0>(int a1@<W8>)
{
  v2 = a1 - 3221;
  v3 = a1 ^ 0xE85;
  v4 = a1 + 1851;
  v5 = STACK[0x4A0];
  STACK[0x4D8] = *(v1 + 8 * v2);
  return (*(v1 + 8 * (((4 * ((v3 ^ (v5 == 0)) & 1)) & 0xF7 | (8 * ((v3 ^ (v5 == 0)) & 1))) ^ v4)))();
}

uint64_t sub_1968F0E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x240] = v9;
  STACK[0x248] = v8;
  STACK[0x458] = *(v10 + 8 * v7);
  v12 = (((v7 + 17) | 0xC84) + 1405522498) & 0xAC396FFB;
  v13 = &STACK[0x6E0] + STACK[0x590];
  STACK[0x590] += 64;
  STACK[0x330] = STACK[0x570];
  STACK[0x2E8] = &v13[16 * (((v13 & 1 ^ 0x431CC6BEDC1107FLL) + 0x5258F13861070A2) ^ ((v13 & 1) + 0xD6A6483942A92DFLL) ^ ((v13 & 1 ^ 0xA1E9FBE70BDC92BLL) + (v12 ^ 0xB0ADCC61B6CA71CLL)))];
  STACK[0x2F8] = &STACK[0x19D0];
  v14 = *(v10 + 8 * ((((((v12 + 608) | 0x6B1) ^ 0x17DB) == 32) * (((2 * v12) ^ 0x1178) + 2882)) ^ v12));
  STACK[0x340] = *(v11 + 8 * (v12 ^ 0xCF4));
  STACK[0x338] = *(v11 + 8 * (v12 - 3569));
  return v14(a1, a2, a3, a4, a5, a6, a7, &STACK[0x19D0]);
}

uint64_t sub_1968F0EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (v58 == -2103896724)
  {
    v70 = a1;
    v77 = v61;
    (*(v59 + 8 * (v77 ^ 0xA65)))(*(v60 + 8 * (v77 - 3602)) - 12);
    (*(v59 + 8 * (v77 + 2661)))(*(v60 + 8 * (v77 - 3897)) - 12, &STACK[0xC28], 16);
    a38 = 0;
    v78 = 753662761 * ((1676154613 - ((v63 - 144) | 0x63E816F5) + ((v63 - 144) | 0x9C17E90A)) ^ 0xF90D1241);
    *(v63 - 144) = *(v60 + 8 * (v61 - 4175));
    *(v63 - 132) = v78 ^ 0xA6E53D0;
    *(v63 - 112) = (v61 + 2260) ^ v78;
    *(v63 - 128) = &a38;
    *(v63 - 120) = &a57;
    (*(v59 + 8 * (v61 ^ 0xB92)))(v63 - 144);
    return (*(v59 + 8 * ((3054 * (*(v63 - 136) == 7 * (v61 ^ 0x1091) + 1906281695)) ^ (v61 - 4203))))(v70);
  }

  if (v58 != -2103896723)
  {
    return sub_1968BB25C(a1, 1906281716);
  }

  v64 = *(v62 + 12);
  v65 = v62 + 16;
  if (v64 == 2)
  {
    v73 = 1790939281 * ((v63 - 144) ^ 0xF8DC2041);
    v74 = *(v60 + 8 * (v61 - 3952)) - 8;
    *(v63 - 128) = v65;
    *(v63 - 120) = v74;
    *(v63 - 136) = &STACK[0xD40];
    *(v63 - 144) = v73 + 674489376;
    *(v63 - 108) = v73 + v61 - 2037;
    v75 = a1;
    (*(v59 + 8 * (v61 | 0xA29)))(v63 - 144, 1906281716);
    a1 = v75;
    return sub_1968BB25C(a1, 1906281716);
  }

  if (v64 == 1)
  {
    v71 = 1575331711 * ((v63 + 537818357 - 2 * ((v63 - 144) & 0x200E7585)) ^ 0x4C55E087);
    *(v63 - 120) = v71 ^ 0x2ECCCAE0;
    *(v63 - 136) = v65;
    *(v63 - 128) = &STACK[0xD40];
    *(v63 - 112) = *(v60 + 8 * (v61 ^ 0x10E1)) - 8;
    *(v63 - 144) = v71 + v61 + 1241;
    v72 = a1;
    (*(v59 + 8 * (v61 ^ 0xACC)))(v63 - 144, 1906281716);
    a1 = v72;
    return sub_1968BB25C(a1, 1906281716);
  }

  v66 = a1;
  if (*(v62 + 12))
  {
    v76 = 1068996913 * (((~(v63 - 144) & 0x7BBCEF7A) - (~(v63 - 144) | 0x7BBCEF7B)) ^ 0xAE520EEA);
    *(v63 - 144) = *(v60 + 8 * (v61 - 4040)) - 8;
    *(v63 - 112) = v76 + 1936046652;
    *(v63 - 128) = &STACK[0xD40];
    *(v63 - 120) = v65;
    *(v63 - 136) = v76 + v61 - 3044;
    (*(v59 + 8 * (v61 + 2631)))(v63 - 144, 1906281716);
  }

  else
  {
    v67 = ((2 * ((v63 - 144) & 0x74D29F0) - (v63 - 144) - 122497522) ^ 0x419AF538) * v57;
    *(v63 - 144) = v61 - v67 - 282;
    *(v63 - 136) = v65;
    v68 = v67 + 264370296;
    v69 = *(v60 + 8 * (v61 - 3762));
    *(v63 - 104) = v68;
    *(v63 - 120) = &STACK[0xD40];
    *(v63 - 112) = v69 - 12;
    (*(v59 + 8 * (v61 + 2756)))(v63 - 144, 1906281716);
  }

  return sub_1968BB25C(v66, 1906281716);
}

void sub_1968F13AC()
{
  v1 = STACK[0x8D0];
  v2 = STACK[0x8D0] + 4;
  STACK[0x350] = STACK[0x7A8];
  STACK[0x260] = (v2 ^ 0x2DFF72FD5EAFFF3ELL) - 0x9A12090E8BB200 + ((2 * v2) & 0x5BFEE5FABD5FFE7CLL);
  STACK[0x250] = STACK[0x8C8];
  STACK[0x240] = ((STACK[0x8C0] + ((v0 + 5424) ^ 0x1659)) ^ 0xAF6774F55FACEFBELL) + 0x7DFDEBFEF0775D80 + ((2 * (STACK[0x8C0] + ((v0 + 5424) ^ 0x1659))) & 0x5ECEE9EABF59DF7CLL);
  STACK[0x230] = ((STACK[0x8B0] + 4) ^ 0xBFEDEEFC70FEFDBFLL) + 0x6D7771F7DF254F7FLL + ((2 * (STACK[0x8B0] + 4)) & 0x7FDBDDF8E1FDFB7ELL);
  STACK[0x220] = ((STACK[0x900] + 4) ^ 0x3DFF6EF47FF4DFFFLL) - 0x109A0E002FD092C1 + ((2 * (STACK[0x900] + 4)) & 0x7BFEDDE8FFE9BFFELL);
  STACK[0x210] = ((STACK[0x920] + 4) ^ 0xEF6D74F5576FEFFFLL) + 0x3DF7EBFEF8B45D3FLL + ((2 * (STACK[0x920] + 4)) & 0xDEDAE9EAAEDFDFFELL);
  STACK[0x200] = ((STACK[0x8A0] + 4) ^ 0x2FFD72F4DDB7DF3ELL) - 0x29812008D939200 + ((2 * (STACK[0x8A0] + 4)) & 0x5FFAE5E9BB6FBE7CLL);
  STACK[0x270] = v1 + 10;
  STACK[0x2B0] = STACK[0x628];
  STACK[0x2A0] = STACK[0x600];
  STACK[0x2D0] = STACK[0x7C0];
  STACK[0x2C0] = STACK[0x598];
  STACK[0x290] = STACK[0x5B0];
  STACK[0x320] = STACK[0x4C0];
  STACK[0x300] = STACK[0x4A8];
  STACK[0x280] = STACK[0x468];
  STACK[0x2F0] = STACK[0x3B0];
  LODWORD(STACK[0x2E0]) = LOWORD(STACK[0x87A]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x85E]);
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x84E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x82E]);
  JUMPOUT(0x1969D15C0);
}

uint64_t sub_1968F1404()
{
  *(v5 - 216) = v4 + 654144011 * ((((v5 - 224) | 0x3447A52) - ((v5 - 224) & 0x3447A52)) ^ 0x2F9007CE) + v1;
  v6 = (*(v0 + 8 * (v1 + 1171)))(v5 - 224);
  v7 = STACK[0x370];
  *(v2 + 8) = *(v5 - 224) ^ v3;
  return (*(v7 + 8 * ((435 * (((2 * v1) ^ 0x2CB5uLL) > 8)) ^ (v1 - 2007))))(v6);
}

uint64_t sub_1968F14A0()
{
  v6 = v4;
  v5 = 1742068269 - 1790939281 * (((&v5 | 0x94953A21) - (&v5 & 0x94953A21)) ^ 0x6C491A60) + v0 + 811;
  (*(v2 + 8 * (v0 ^ 0x982A20D6)))(&v5);
  return (v1 - 1906281716);
}

void sub_1968F1558(int a1@<W8>)
{
  if (a1 == 1263912868)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *v1 = v2;
}

uint64_t sub_1968F1614(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  v20 = (((a5 ^ 0x72455EE5) - 1917148901) ^ ((a5 ^ 0xE2F2114C) + a8) ^ ((a5 ^ v13) + v14)) + v10;
  v21 = (((v12 ^ v19) + a3) ^ ((v12 ^ v17) + v18) ^ (((1670 * (a6 ^ 0xA57) + v15) ^ v12) + v16)) + v10;
  v22 = (v20 < v9) ^ (v21 < v9);
  v23 = v20 < v21;
  if (v22)
  {
    v23 = v21 < v9;
  }

  return (*(v8 + 8 * ((v23 * v11) ^ a6)))();
}

uint64_t sub_1968F1714@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a3 + a9 + v20) = vadd_s8(vsub_s8(*(v22 + v20), vand_s8(vadd_s8(*(v22 + v20), *(v22 + v20)), v24)), v25);
  v26 = *(v23 + 8 * ((((((v21 - 27) ^ 0x307) & a1) - 8 != v20) * ((v21 - 321) ^ 0x2BC)) ^ (v21 - 27)));
  return v26(v26, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1968F17F0@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W5>, int a4@<W7>, unsigned __int8 *a5@<X8>)
{
  v10 = ((v5 + 2568) ^ 0x4F53D093) + LODWORD(STACK[0x498]);
  v11 = v10 < 0xF40890B;
  v12 = ((*a5 ^ 0x5CFD18F7) - 83414181 + ((2 * *a5) & 0xFFEF)) * (v9 + v5 - 2416 + 3671) - 1269865897;
  v13 = (a1 + v8 + ((v12 % 0x101 + v12) ^ a2)) ^ v7;
  v14 = a2 - v13;
  v15 = v13 ^ v8;
  HIDWORD(v16) = v13;
  LODWORD(v16) = v13;
  v17 = v13 + a1;
  v18 = v15 + a4 + (((v16 >> 31) - v14) ^ v17);
  v19 = v18 + v14;
  HIDWORD(v16) = v18;
  LODWORD(v16) = v18;
  v20 = v18 ^ v17;
  v21 = v18 ^ v15;
  v22 = v21 + a3 + ((v19 + (v16 >> 29)) ^ v20);
  v23 = v20 - v22;
  HIDWORD(v16) = v22;
  LODWORD(v16) = v22;
  v24 = v21 ^ v6 ^ v22 ^ ((v16 >> 31) - (v20 - v22 + v19 - v22));
  if (v10 >= 0xF40890B)
  {
    v11 = v10 > 0xF40890C;
  }

  return (*(STACK[0x578] + 8 * ((v5 + 2568) ^ (8 * v11))))((v23 - v24));
}

uint64_t sub_1968F1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35)
{
  v38 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v35 - 14);
  HIDWORD(a32) = 0;
  a35 = 0;
  v39 = 753662761 * ((2 * ((v37 - 144) & 0x8DC3B58) - (v37 - 144) + 1998832806) ^ 0x12393FED);
  *(v37 - 144) = v38;
  *(v37 - 112) = ((v35 ^ 0x1669) + 814) ^ v39;
  *(v37 - 132) = v39 ^ 0xA6E53D0;
  *(v37 - 128) = &a32 + 4;
  *(v37 - 120) = v36;
  v40 = (*(a3 + 8 * (v35 ^ 0x1B51)))(v37 - 144);
  v42 = *(v37 - 136) == 1906281716 && HIDWORD(a32) == (v35 ^ 0x1669) - 5676;
  return (*(a31 + 8 * ((7944 * v42) ^ ((v35 ^ 0x1669) - 3450))))(v40);
}

void fp_dh_0a61d6ae0d1065433c2c12337f06ad4e(_DWORD *a1)
{
  v1 = *a1 + 489239129 * ((a1 & 0xC03478D8 | ~(a1 | 0xC03478D8)) ^ 0x86E3A411);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1968F1FE0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  v20 = v19 - 761197499 + 257 * (a3 ^ (a3 + 3447) ^ 0xD9A);
  v21 = v20 < 0xD2A11F18;
  v22 = v20 > a18;
  if (a18 < 0xD2A11F18 != v21)
  {
    v22 = v21;
  }

  return (*(v18 + 8 * ((119 * v22) ^ (a4 + a3 - 1787))))();
}

uint64_t sub_1968F2068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18)
{
  v21 = (v18 << 56) | (a12 << 48) | (a13 << 40) | (a14 << 32) | (a15 << 24) | (a16 << 16) | (a17 << 8) | a18;
  v22 = v21 - ((v21 << (v20 + 63)) & 0x3EDA3E99DE6655F4) + 0x1F6D1F4CEF332AFALL;
  return (*(v19 + 8 * ((752 * ((((v22 ^ 0x55E61C4FB972ED94) - 0x55E61C4FB972ED94) ^ ((v22 ^ 0xB6CD1E48CA31F5ADLL) + 0x4932E1B735CE0A53) ^ ((v22 ^ 0xFC461D4B9C7032C3) + 0x3B9E2B4638FCD3DLL)) + 0x1F6D1F4CEF332AFALL < 0xE)) ^ (v20 + 1341))))();
}

uint64_t sub_1968F2434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (a11 + v13);
  *(v16 - 1) = v15;
  *v16 = v15;
  return (*(v14 + 8 * ((((v11 & 0xFFFFFFFFFFFFFFF0) == 16) * (v12 + 633)) ^ v12)))();
}

uint64_t sub_1968F2474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a3 - 1;
  v12 = a4 + v11 + v5;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = (v13 + 0x568FD0F9DF82F1E3) ^ (v9 + 11 * (v4 ^ 0x170Fu) - 3718);
  v15 = (__ROR8__((v13 + 0x568FD0F9DF82F1E3) ^ 0x315FDBFEB957105ELL, 8) + v14) ^ 0x8174304F61371433;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x48DE3944125A0254;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x57D072DFC3A5F657;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xF2620266DFD8DE82;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a2;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  *v12 = ((__ROR8__((v25 + v24 - (v10 & (2 * (v25 + v24))) + v7) ^ v8, 8) + ((v25 + v24 - (v10 & (2 * (v25 + v24))) + v7) ^ v8 ^ __ROR8__(v24, 61))) ^ v6) >> (8 * (v12 & 7u));
  return (*(a1 + 8 * ((3810 * (v11 == 0)) ^ (v4 + 221))))();
}

uint64_t sub_1968F2614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unint64_t a28)
{
  v33 = 1825732043 * ((((2 * v32) | 0xD3AEA95C) - v32 - 1775719598) ^ 0x69410799);
  a25 = v31;
  LODWORD(a26) = (v29 + 2131677886) ^ v33;
  HIDWORD(a26) = -948458806 - v33;
  (*(v28 + 8 * (v29 + 6295)))(&a25);
  v34 = 1621291457 * (((v32 | 0xFD0FB09F7617211CLL) - v32 + (v32 & 0x2F04F6089E8DEE0)) ^ 0x8079EA724000A085);
  LODWORD(a25) = (v29 + 1643794370) ^ v34;
  a28 = v34 - 0x3BBB23F9A6E2066ALL;
  a26 = v31;
  v35 = (*(v28 + 8 * (v29 + 6285)))(&a25);
  return (*(v28 + 8 * ((3972 * (a27 == v30)) ^ v29)))(v35);
}

uint64_t sub_1968F2774@<X0>(__int16 a1@<W1>, unsigned __int8 a2@<W2>, unint64_t a3@<X4>, unsigned __int8 a4@<W5>, unsigned __int8 a5@<W6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(void), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _BYTE *a33)
{
  v35 = *(STACK[0xA98] + (*a33 ^ a3));
  *a33 = v35 - ((2 * v35) & 0xD8) - 20;
  v36 = *(STACK[0xAD8] + (v33 ^ a3));
  *(a6 - 12) = v36 - ((2 * v36) & 0xD8) - 20;
  v37 = *(STACK[0xB18] + (a4 ^ a3));
  *(a6 - 8) = v37 - ((2 * v37) & 0xD8) - 20;
  v38 = *(STACK[0xB58] + (a2 ^ a3));
  *(a6 - 4) = v38 - ((2 * v38) & 0xD8) - 20;
  v39 = *(STACK[0xB68] + (a5 ^ a3));
  *(a6 - 3) = v39 - ((2 * v39) & 0xD8) - 20;
  v40 = *(STACK[0xB28] + (*(a6 - 11) ^ a3));
  *(a6 - 7) = v40 + (~(2 * v40) | 0x27) - 19;
  v41 = *(STACK[0xAE8] + (*(a6 - 15) ^ a3));
  *(a6 - 11) = v41 - ((2 * v41) & 0xD8) - 20;
  *(a6 - 15) = *(STACK[0xAA8] + HIBYTE(a1)) - ((2 * *(STACK[0xAA8] + HIBYTE(a1))) & 0xD8) - 20;
  v42 = *(a6 - 14);
  v43 = *(STACK[0xAB8] + (v34 ^ a3));
  *(a6 - 14) = v43 - ((2 * v43) & 0xD8) - 20;
  *(a6 - 6) = *(STACK[0xB38] + (v42 ^ a3)) - ((2 * *(STACK[0xB38] + (v42 ^ a3))) & 0xD8) - 20;
  v44 = *(a6 - 10);
  v45 = *(STACK[0xAF8] + (*(a6 - 2) ^ a3));
  *(a6 - 10) = v45 + (~(2 * v45) | 0x27) - 19;
  *(a6 - 2) = *(STACK[0xB78] + (v44 ^ a3)) - ((2 * *(STACK[0xB78] + (v44 ^ a3))) & 0xD8) - 20;
  v46 = *(a6 - 13);
  v47 = *(STACK[0xAC8] + (*(a6 - 9) ^ a3));
  *(a6 - 13) = v47 - ((2 * v47) & 0xD8) - 20;
  v48 = *(STACK[0xB08] + (*(a6 - 5) ^ a3));
  *(a6 - 9) = v48 - ((2 * v48) & 0xD8) - 20;
  v49 = *(STACK[0xB48] + (*(a6 - 1) ^ a3));
  *(a6 - 5) = v49 - ((2 * v49) & 0xD8) - 20;
  *(a6 - 1) = *(STACK[0xB88] + (v46 ^ a3)) + (~(2 * *(STACK[0xB88] + (v46 ^ a3))) | 0x27) - 19;
  return a16();
}

uint64_t sub_1968F2988@<X0>(char a1@<W8>)
{
  v9 = v3 + 2;
  v10 = (v4 - 2);
  *v10 = (a1 ^ v9 ^ v6) * (v9 + 17);
  *(v10 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v8 + 8 * (((v5 != 2) * v7) ^ v2)))();
}

void sub_1968F2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v12 = *(v10 + 24);
  **(v10 + 32) = v11;
  *v12 = a10;
  JUMPOUT(0x1968C2024);
}

uint64_t sub_1968F29AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5571));
  v8 = STACK[0x2D0] + STACK[0x220] - 0x2D6560F450244D3ELL;
  v9 = (__ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8) + v6) & 0xFBFFFFFFFFFFFFFFLL;
  v10 = v9 ^ 0x4DE9423B6F16E7D2;
  v9 ^= 0xE5AFA7ACF6E0968ELL;
  v11 = __ROR8__(v10, 8);
  v12 = __ROR8__((v11 + v9 - ((2 * (v11 + v9)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69, 8);
  v13 = (v11 + v9 - ((2 * (v11 + v9)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69 ^ __ROR8__(v9, 61);
  v14 = (v12 + v13) ^ 0xF5A2F1B9B5D0B209;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0xB8A665E197C7F47ELL) - (v16 + v15) - 0x5C5332F0CBE3FA3FLL) ^ 0x53084359E3A8520;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x1D3A72000429358 - ((v19 + v18) | 0x1D3A72000429358) + ((v19 + v18) | 0xFE2C58DFFFBD6CA7)) ^ 0x9F69C5F50FA24850;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0x25583E6B392D1AC8 - ((v22 + v21) | 0x25583E6B392D1AC8) + ((v22 + v21) | 0xDAA7C194C6D2E537)) ^ 0xBE64DD96B6563B5BLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0x272BFFDC1C3FC546 - ((v25 + v24) | 0x272BFFDC1C3FC546) + ((v25 + v24) | 0xD8D40023E3C03AB9)) ^ 0xC2FEEBC7A19395BALL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((((2 * (v28 + v27)) | 0xC355F3281D11914) - (v28 + v27) - 0x61AAF9940E88C8ALL) ^ 0xAD2AED4B686FD0CBLL) >> (8 * (v8 & 7u))) ^ *v8;
  v30 = *++v8;
  v31 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = -2 - (((0x6AF7234D0CC131D4 - v31) | 0x1A41569DA1CC8FFALL) + ((v31 + 0x1508DCB2F33ECE2BLL) | 0xE5BEA9625E337005));
  v33 = v32 ^ 0x53A814A6CEDA6828;
  v32 ^= 0xFBEEF131572C1974;
  v34 = __ROR8__(v33, 8);
  v35 = (((2 * (v34 + v32)) & 0xF2BD014CC6D06D4ALL) - (v34 + v32) + 0x6A17F599C97C95ALL) ^ 0xE23C08861BAA7624;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xF5A2F1B9B5D0B209;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (0xFF7817662BD390FALL - ((v38 + v39) | 0xFF7817662BD390FALL) + ((v38 + v39) | 0x87E899D42C6F05)) ^ 0x59E45E5C81F5101ALL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x61459D2AF01F24F7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x64C31C027084DE6CLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (0xD96EC6C1FDF6D5E3 - ((v46 + v45) | 0xD96EC6C1FDF6D5E3) + ((v46 + v45) | 0x2691393E02092A1CLL)) ^ 0x3CBBD2DA405A851FLL;
  LOBYTE(v45) = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v45, 61))) ^ 0xAB3042D228875C41) >> (8 * (v8 & 7u))) ^ v30;
  return v7(a1, (v45 | (v29 << 8)) - 2 * ((v45 & 5 | (v29 << 8) & 0x3505) ^ v45 & 5) + 13568);
}

uint64_t sub_1968F2A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, _BYTE *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 + 128) = a55[12];
  *(v67 + 129) = a55[4];
  v77 = v68 + v69 - 397;
  v109 = *(v75 + 8 * (v77 - 177)) - 8;
  v103 = *(v75 + 8 * (v77 - 28)) - 8;
  v78 = (v69 - 397) ^ (v72 + 220);
  v79 = *(v75 + 8 * (v77 + 250)) - 12;
  v101 = *(v75 + 8 * (v77 + 60)) - 8;
  v102 = v79;
  v100 = *(v75 + 8 * ((v69 - 397) ^ (v72 - 77))) - 8;
  v107 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 55)));
  v108 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 423))) - 4;
  v114 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 640))) - 12;
  v112 = *(v75 + 8 * v78);
  v105 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 176)));
  v106 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 77))) - 12;
  v111 = *(v75 + 8 * ((v69 - 397) ^ (v72 - 95))) - 12;
  v104 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 51))) - 12;
  v113 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 201))) - 12;
  if (a54 == 3)
  {
    v84 = a55[13];
    if (a55[13])
    {
      if (v84 == 2)
      {
        v110 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 55)));
        v85 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 51))) - 12;
      }

      else if (v84 == 1)
      {
        v110 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 176)));
        v85 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 423))) - 4;
      }

      else
      {
        v110 = *(v75 + 8 * ((v69 - 397) ^ (v72 + 77))) - 12;
        v85 = *(v75 + 8 * (v77 - 177)) - 8;
      }
    }

    else
    {
      v85 = *(v75 + 8 * v78);
      v110 = *(v75 + 8 * ((v69 - 397) ^ (v72 - 95))) - 12;
    }

    v115 = v85;
    v89 = (v72 + 260368858) | 0x5A1;
    (*(v74 + 8 * (v72 + 260375183)))(v114);
    (*(v74 + 8 * (v72 + 260375183)))(v113, &STACK[0xD78], 16);
    v90 = *(v75 + 8 * (v72 ^ (v72 - 61)));
    HIDWORD(a61) = 0;
    v91 = 753662761 * ((2 * ((v76 - 168) & 0x19D9CF38) - (v76 - 168) - 433704766) ^ 0x833CCB89);
    *(v76 - 168) = v90;
    *(v76 - 136) = (v89 + 4483) ^ v91;
    *(v76 - 156) = v91 ^ 0xA6E53D0;
    *(v76 - 152) = &a61 + 4;
    *(v76 - 144) = &STACK[0x2D0];
    (*(v74 + 8 * (v89 ^ 0x1CE3)))(v76 - 168);
    return (*(v74 + 8 * (((*(v76 - 160) == 1906281716) * (v89 + 69)) ^ v89)))(*(v76 - 160), v92, v93, v94, v95, v96, v97, v98, a9, v100, v101, v102, v103, a14, v104, v105, v106, v107, v108, v109, a55 + 14, v110, v111, v112, v113, v114, a27, &a67, v70, v71, v115, &STACK[0xD88], &STACK[0xD78], &STACK[0xDE0], a35, a36, a37, &STACK[0xCE8], a39, 0, 0, a42, v74, a44, a45, a46, a47, a48, a49, a50, a51, &STACK[0x2D0], &STACK[0x2D0]);
  }

  else
  {
    v80 = 1906239625;
    if (a54 == 2)
    {
      v81 = a55[13];
      v82 = a55 + 14;
      if (v81 == 2)
      {
        v87 = 1790939281 * ((((2 * (v76 - 168)) | 0xB84B0F5A) - (v76 - 168) + 601520211) ^ 0x24F9A7EC);
        *(v76 - 160) = &a67;
        *(v76 - 152) = v82;
        *(v76 - 132) = v72 + 260368510 + v87 + 1975;
        *(v76 - 144) = v101;
        *(v76 - 168) = v87 + 674489376;
        (*(v74 + 8 * (v72 + 260375123)))(v76 - 168);
        v80 = *(v76 - 136);
      }

      else if (v81 == 1)
      {
        v86 = ((((v76 - 168) ^ 0x120286C0 | 0xE8BC593D) + ((v76 - 168) ^ 0x8841019 | 0x1743A6C2)) ^ 0x76DD03DA) * v73;
        *(v76 - 136) = v100;
        *(v76 - 144) = v86 ^ 0x2ECCCAE0;
        *(v76 - 168) = v72 + 260375183 + v86 - 1420;
        *(v76 - 160) = v82;
        *(v76 - 152) = &a67;
        (*(v74 + 8 * (v72 ^ 0xF07B0236)))(v76 - 168);
        v80 = *(v76 - 128);
      }

      else if (a55[13])
      {
        v88 = 1068996913 * ((((2 * (v76 - 168)) | 0xB4D187E2) - (v76 - 168) + 630668303) ^ 0xF862260);
        *(v76 - 160) = v72 + 260368510 + v88 + 968;
        *(v76 - 136) = v88 + 1936046652;
        *(v76 - 168) = v103;
        *(v76 - 152) = &a67;
        *(v76 - 144) = v82;
        (*(v74 + 8 * (v72 ^ 0xF07B02B1)))(v76 - 168);
        v80 = *(v76 - 132);
      }

      else
      {
        v83 = 489239129 * ((((2 * (v76 - 168)) | 0xE04F43BA) - (v76 - 168) + 265838115) ^ 0x490F82EB);
        *(v76 - 168) = 260368510 - v83 + v72 + 3730;
        *(v76 - 128) = v83 + 264370296;
        *(v76 - 160) = v82;
        *(v76 - 144) = &a67;
        *(v76 - 136) = v79;
        (*(v74 + 8 * (v72 + 260375278)))(v76 - 168);
        v80 = *(v76 - 152);
      }
    }

    return (*(v74 + 8 * ((5709 * (v80 == 1906281716)) ^ 0x273)))(v80, v79, a3, a4, a5, a6, a7, a8, a9, v100, v101, v102, v103, a14, v104, v105, v106, v107, v108, v109, a21, a22, v111, v112, v113, v114, a27, &a67, v70, v71, v78, a32, a33, a34, a35);
  }
}

uint64_t sub_1968F3008(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = ((v19 ^ a1 ^ 0xFB231965) + 2046067626) ^ ((v19 ^ a1 ^ 0x41AD36C4) - 1015370743) ^ ((v19 ^ a1 ^ 0xA650D9E5) + 612844330);
  v26 = v18 ^ a2;
  v27 = v20 ^ 0x75CBFA81;
  v28 = v19 ^ v27;
  v29 = v18 ^ v17;
  v30 = v28 - v25 - 1643549559;
  LODWORD(STACK[0x4FC]) = v30;
  v31 = v29 + v14;
  v32 = v29 - v26;
  LODWORD(STACK[0x594]) = v31 - v26;
  LODWORD(STACK[0x500]) = v28 + v16 - v25 + 311764295;
  LODWORD(STACK[0x4E0]) = v32;
  v33 = v32 ^ (v17 + 1264487439);
  LODWORD(STACK[0x4F4]) = v33;
  LODWORD(STACK[0x4F8]) = v26 + 935196014 + v33;
  LODWORD(STACK[0x59C]) = v30 ^ (v27 + 1264487439);
  LODWORD(STACK[0x524]) = 293 * (v15 ^ 0x237);
  v34 = STACK[0x598];
  v35 = LODWORD(STACK[0x598]) + 1303244372;
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x598]) + 1303244373;
  LODWORD(STACK[0x56C]) = v35 + 3;
  LODWORD(STACK[0x568]) = v35 + 4;
  LODWORD(STACK[0x564]) = v35 + 5;
  LODWORD(STACK[0x560]) = v35 + 6;
  LODWORD(STACK[0x558]) = v35 + 7;
  LODWORD(STACK[0x554]) = v35 + 8;
  LODWORD(STACK[0x548]) = v34 + 1542868998;
  LODWORD(STACK[0x544]) = v35 + 10;
  LODWORD(STACK[0x53C]) = v35 + 11;
  LODWORD(STACK[0x540]) = v35 + 12;
  LODWORD(STACK[0x538]) = v35 + 13;
  LODWORD(STACK[0x534]) = v35 + 14;
  LODWORD(STACK[0x588]) = v35;
  LODWORD(STACK[0x528]) = v35 + 15;
  v36 = a14 - 0x2EEB018C334DAD5ALL;
  v37 = a14 - 0x2EEB018C334DAD5ALL + (LODWORD(STACK[0x588]) - 1303244372);
  v38 = (((((v37 - 0x474061DAADBB796CLL - ((2 * v37) & 0x717F3C4AA4890D28)) << 56) ^ 0xEFFFFFFFFFFFFFFFLL) & (((v37 - 0x474061DAADBB796CLL - ((2 * v37) & 0x717F3C4AA4890D28uLL)) >> 8) ^ 0x70512585186065BDLL) | ((v37 - 0x474061DAADBB796CLL - ((2 * v37) & 0x717F3C4AA4890D28)) << 56) & 0x8888888888888888) ^ 0xF0E99A1B3D32213BLL) + v21;
  v39 = __ROR8__(v38 ^ 0x49E9423B6F16E7D2, 8);
  v40 = v38 ^ v24;
  v41 = (v39 + v40) ^ v23;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (v42 + __ROR8__(v41, 8)) ^ v22;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (v44 + __ROR8__(v43, 8)) ^ 0x5963B6C555D97F1FLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x61459D2AF01F24F7;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (v48 + __ROR8__(v47, 8)) ^ 0x64C31C027084DE6CLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (v50 + __ROR8__(v49, 8)) ^ 0x1A2AEBE44253AF03;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = a14 - 0x2EEB018C334DAD5ALL + (LODWORD(STACK[0x570]) - 1303244372);
  v54 = (((((v53 - 0xE8D2DA7703AA26CLL - ((2 * v53) & 0xE2E5A4B11F8ABB28)) << 56) & 0xF0FFFFFFFFFFFFFFLL ^ 0xCFFFFFFFFFFFFFFFLL) & (((v53 - 0xE8D2DA7703AA26CLL - ((2 * v53) & 0xE2E5A4B11F8ABB28)) >> 8) ^ 0x5763228AA0CEF2E7) | ((v53 - 0xE8D2DA7703AA26CLL - ((2 * v53) & 0xE2E5A4B11F8ABB28)) << 56) & 0xA800000000000000) ^ 0xD7925058F84137BALL) + v21;
  v55 = __ROR8__(v54 ^ 0x49E9423B6F16E7D2, 8);
  v56 = v54 ^ v24;
  v57 = (v55 + v56) ^ v23;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v22;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x5963B6C555D97F1FLL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x61459D2AF01F24F7;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x64C31C027084DE6CLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (v66 + __ROR8__(v65, 8)) ^ 0x1A2AEBE44253AF03;
  v68 = STACK[0x580];
  *(STACK[0x580] + 855) ^= *v37;
  v69 = STACK[0x524];
  v68[(((v69 + 339) ^ 0x49559248u) - 1229849752) % 0x3C7] = (v68[(((v69 + 339) ^ 0x49559248u) - 1229849752) % 0x3C7] + (~(2 * v68[(((v69 + 339) ^ 0x49559248u) - 1229849752) % 0x3C7]) | 0x75) - 58) ^ 0xC5 ^ (((v52 + __ROR8__(v51, 8)) ^ 0xAB3042D228875C41) >> (((8 * (v37 - 108)) ^ 0xF1) & 0x28) >> (~((8 * (v37 - 108)) ^ 0xF1) & 0x10));
  v68[670] ^= *v53;
  v68[499] = (v68[499] - ((2 * v68[499]) & 0x70) - 72) ^ 0xB8 ^ (((__ROR8__(v67, 8) + (v67 ^ __ROR8__(v66, 61))) ^ 0xAB3042D228875C41) >> (((8 * (v53 - 108)) ^ 0x39) & 0x28 ^ 8) >> (~((8 * (v53 - 108)) ^ 0x39) & 0x10));
  v70 = a14 - 0x2EEB018C334DAD5ALL + (LODWORD(STACK[0x598]) + v69 - 1463);
  v68[485] ^= *v70;
  v71 = v70 - ((2 * v70) & 0x84594D712CBAA2BCLL) - 0x3DD3594769A2AEA2;
  v72 = ((((v71 << 56) ^ 0x20FFFFFFFFFFFFFFLL) & ((v71 >> 8) ^ 0x708E5061C3C822BALL) | (v71 << 56) & 0x8888888888888888) ^ 0x784C7CC77B5E7FEBLL) - 0x6AF7234D0CC131D5;
  v73 = v72 ^ 0x49E9423B6F16E7D2;
  v74 = v72 ^ v24;
  v75 = (__ROR8__(v73, 8) + v74) ^ v23;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (v76 + __ROR8__(v75, 8)) ^ v22;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = v78 + v79;
  v81 = (v78 + v79) & 0x40;
  v82 = (v78 + v79) ^ 0x5963B6C555D97F1FLL;
  v83 = __ROR8__(v78, 61);
  v84 = v82 >> (((v81 ^ 0xF9) + v81 + 15) & 0xF8);
  v85 = (((v84 - ((2 * v84) & 0x121BC3197C31234) + 0x6190DE18CBE1891ALL) & 0xBF52A1B93F901F1 ^ 0xF59ADFFCEFE7FF1ELL ^ ((v84 - ((2 * v84) & 0x121BC3197C31234) + 0x6190DE18CBE1891ALL) ^ 0x9E0A01E424067604) & ((v80 << 56) ^ 0xEB0AD5E46C06FE0ELL)) + (v82 ^ v83)) ^ 0x61459D2AF01F24F7;
  v86 = v85 ^ __ROR8__(v82 ^ v83, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x64C31C027084DE6CLL;
  v88 = (LODWORD(STACK[0x56C]) - 1303244372);
  v89 = v87 ^ __ROR8__(v86, 61);
  v90 = (v89 + __ROR8__(v87, 8)) ^ 0x1A2AEBE44253AF03;
  v68[314] = (v68[314] - ((2 * v68[314]) & 0xAC) - 42) ^ 0xD6 ^ (((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ 0xAB3042D228875C41) >> ((8 * (v71 & 7)) ^ 0x30));
  v68[300] ^= *(a14 - 0x2EEB018C334DAD5ALL + v88);
  v91 = v36 + v88 - ((2 * (v36 + v88)) & 0xF0AE47C3146CC64CLL);
  v92 = ((((v91 + 0x785723E18A366326) << 56) ^ 0xDFFFFFFFFFFFFFFFLL) & (((v91 + 0x785723E18A366326) >> 8) ^ 0xF8EDB8ED3985B3BELL) ^ 0xF895EFCED80F85DDLL) - 0x6AF7234D0CC131D5;
  v93 = v92 ^ v24;
  v94 = (((v92 << 56) ^ 0xD200000000000000) + (v92 ^ v24) + ((v92 >> 8) ^ 0x49E9423B6F16E7)) ^ v23;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8) + v95;
  v97 = __ROR8__(v95, 61);
  v98 = v96 ^ v97 ^ v22;
  v99 = (__ROR8__(((((v96 ^ v97) & 0x5D2D40CD558A7AD4) + 0x787590EC4EC62735 + ((v96 ^ v97) & 0x5D2D40CD558A7AD4 ^ 0x5D2D40CD558A7AD4)) | 0xA420303111D09200) ^ v96, 8) + v98) ^ 0x5963B6C555D97F1FLL;
  v100 = __ROR8__(v99, 8);
  v101 = v99 ^ __ROR8__(v98, 61);
  v102 = (v100 + v101) ^ 0x61459D2AF01F24F7;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = (v103 + __ROR8__(v102, 8)) ^ 0x64C31C027084DE6CLL;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8) + v105;
  v68[129] = (v68[129] - ((2 * v68[129]) & 0xF7) + 123) ^ 0x7B ^ ((((v106 ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v105, 61)) + ((v106 >> 8) ^ 0x1A2AEBE44253AFLL) + ((v106 << 56) ^ 0x300000000000000)) ^ 0xAB3042D228875C41) >> (~(8 * v91 - 16) & 0x10) >> ((8 * v91 - 16) & 0x28 ^ 0x20));
  v107 = a14 - 0x2EEB018C334DAD5ALL + (LODWORD(STACK[0x568]) - 1303244372);
  v68[115] ^= *v107;
  v108 = v107 - ((2 * v107) & 0x68D2919E592D5D70) - 0x4B96B730D3695148;
  LOBYTE(v100) = (((v108 & 0x24) - 3) ^ ((v108 & 0x24) - 1) ^ ((v108 & 0x24 ^ 0xDD) + 38)) + 14 + (((v108 & 0x24 ^ 7) - 44) ^ ((v108 & 0x24) - 25) ^ ((v108 & 0x24 ^ 0x6E) - 69));
  v109 = ((((v108 << 56) & 0xF8FFFFFFFFFFFFFFLL ^ 0xC7FFFFFFFFFFFFFFLL) & ((v108 >> 8) ^ 0x6B9BA0633F84EDF5) | (v108 << 56) & 0x9000000000000000) ^ 0xFB2FC92BF0A87B5BLL) - 0x6AF7234D0CC131D5;
  v110 = __ROR8__(v109 ^ 0x49E9423B6F16E7D2, 8);
  v111 = v109 ^ v24;
  v112 = v111 >> (v100 | 0x1Du);
  v113 = v110 + v111;
  v114 = ((v110 + v111) << 56) ^ 0x7E00000000000000;
  v115 = (v110 + v111) ^ v23 ^ (8 * v111 + v112);
  v116 = v115 + ((v113 >> 8) ^ 0xE49D77DF873DBFLL) + v114;
  v117 = __ROR8__(v115, 61);
  v118 = (v117 - ((2 * v117) & 0x31FE9DA445152B92) - 0x6700B12DDD756A37) ^ v116;
  v119 = v118 ^ 0x6D5DBF6B975A27C0;
  v120 = (v116 ^ v22) << (((v118 & 0x18 ^ 0x18) + (v118 & 0x18)) | 0x30);
  v121 = (((v120 - ((2 * v120) & 0xFE8A000000000000) - 0xBA19926151A14ELL) & 0x46B3000000000000 ^ 0xFF4D463B70BAA159 ^ ((v120 - ((2 * v120) & 0xFE8A000000000000) - 0xBA19926151A14ELL) ^ 0xBA19926151A14DLL) & ((v116 >> 8) ^ 0xB9B9E4CAC90F71EBLL)) + v119) ^ 0x5963B6C555D97F1FLL;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = (v122 + __ROR8__(v121, 8)) ^ 0x61459D2AF01F24F7;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x64C31C027084DE6CLL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x1A2AEBE44253AF03;
  v68[911] = (v68[911] - ((2 * v68[911]) & 4) + 2) ^ (((__ROR8__(v127, 8) + (v127 ^ __ROR8__(v126, 61))) ^ 0xAB3042D228875C41) >> (((8 * v107) ^ 0xF5) & 0x18 ^ 0x10) >> (~((8 * v107) ^ 0xF5) & 0x20)) ^ 2;
  v128 = a14 - 0x2EEB018C334DAD5ALL + (LODWORD(STACK[0x564]) - 1303244372);
  v68[897] ^= *v128;
  *(&v129 + 1) = (v128 - ((2 * v128) & 0x90) + 72) & 0xF8 ^ 0x48u;
  *&v129 = (v128 + 0x43B048AB47A6D000 - ((2 * v128) & 0x876091568F4DA090) + 72) ^ 0x43B048AB47A6D000;
  v130 = (v129 >> 8) - 0x6AF7234D0CC131D5;
  v131 = v130 ^ 0x49E9423B6F16E7D2;
  v132 = v130 ^ v24;
  v133 = (__ROR8__(v131, 8) + v132) ^ v23;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ v22;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = __ROR8__(v135, 8) + v136;
  v138 = __ROR8__(v136, 61) ^ 0x5963B6C555D97F1FLL ^ v137;
  v139 = (((v137 >> 8) ^ 0x5963B6C555D97FLL) + v138 + ((v137 << 56) ^ 0x1F00000000000000)) ^ 0x61459D2AF01F24F7;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x64C31C027084DE6CLL;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (v142 + __ROR8__(v141, 8)) ^ 0x1A2AEBE44253AF03;
  v144 = (v143 ^ __ROR8__(v142, 61)) + __ROR8__(v143, 8);
  LOBYTE(v67) = 8 * (v128 - ((2 * v128) & 0x90) + 72);
  LODWORD(v119) = v67 & 0x30;
  v68[726] ^= (v144 ^ 0xAB3042D228875C41) >> (v67 & 0x20) >> (v67 & 0x18);
  v145 = a14 - 0x2EEB018C334DAD5ALL + (LODWORD(STACK[0x560]) - 1303244372);
  LODWORD(v144) = (v144 ^ 0xA3BE) & (v144 ^ 0x70A8) ^ v144 & 0x2CE9;
  LODWORD(v144) = (((v119 ^ 0xE933C220) + 498315732) ^ ((v119 ^ 0xB1B3C090) + 1161016164) ^ ((v119 ^ 0x588002B0) - 1409257148)) + ((v119 - 1172954571) ^ (v119 - 971137623) ^ ((v119 ^ 0x1DE15DFD) + 604029146)) + (((v144 ^ 0x5EF1D55B) + 1516969582) ^ ((v144 ^ 0xCDCD18A0) - 916991081) ^ ((v144 ^ 0x933CED53) - 1750718874));
  LODWORD(v144) = (v144 - ((2 * v144 + 5298) & 0xFEBE) + 35256) & 0x2C57D;
  v68[(782 * ((((v144 ^ LODWORD(STACK[0x4A0])) - 2079540364) ^ ((v144 ^ 0x54CB12AC) + 396133547) ^ ((v144 ^ 0x13907A84) + 1355279491)) - 1303244372) - 1828293660) % 0x3C7] = *v145 ^ v68[712];
  v146 = v145 - 0x1109F0F824841E00 - ((2 * v145) & 0xDDEC1E0FB6F7C580) + 192;
  *(&v129 + 1) = (v145 - ((2 * v145) & 0x80) - 64) & 0xF8 ^ 0xC0u;
  *&v129 = v146 ^ 0xEEF60F07DB7BE200;
  v147 = (v129 >> 8) - 0x6AF7234D0CC131D5;
  v148 = v147 ^ v24;
  v149 = (__ROR8__(v147 ^ 0x49E9423B6F16E7D2, 8) + (v147 ^ v24)) ^ v23;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = (__ROR8__(v149, 8) + v150) ^ v22;
  v152 = v151 ^ __ROR8__(v150, 61);
  v153 = (v152 + __ROR8__(v151, 8)) ^ 0x5963B6C555D97F1FLL;
  v154 = v153 ^ __ROR8__(v152, 61);
  *&v129 = __ROR8__(v153, 8);
  v155 = v129 + v154 == 0;
  v156 = (v129 + v154) ^ 0x61459D2AF01F24F7 ^ __ROR8__(v154, 61);
  v157 = (__ROR8__((v129 + v154) ^ 0x61459D2AF01F24F7, 8) + v156) ^ 0x64C31C027084DE6CLL;
  v158 = __ROR8__(v157, 8);
  v159 = v157 ^ __ROR8__(v156, 61);
  v160 = v158 + v159;
  *(&v129 + 1) = v160 ^ 3;
  *&v129 = v160 ^ 0x1A2AEBE44253AF00;
  v68[541] = (v68[541] + (~(2 * v68[541]) | 0xEF) + 9) ^ ((((v160 ^ (8 * v159) ^ ((v159 >> 61) | 0xD998A36573B480C0) ^ 0xC3B2488131E72FC3) + (v129 >> 8)) ^ 0xAB3042D228875C41) >> ((8 * v146) & 0x30) >> ((8 * v146) & 8)) ^ 8;
  v161 = a14 - 0x2EEB018C334DAD5ALL + (LODWORD(STACK[0x558]) - 1303244372);
  v68[527] ^= *v161;
  v162 = v161 + 0x2697D8ACFD0FEA00 - ((2 * v161) & 0x4D2FB159FA1FD4ECLL) + 118;
  *(&v129 + 1) = (v161 - 49288704 - ((2 * v161) & 0xFA1FD4EC) + 118) & 0xF8 ^ 0x70;
  *&v129 = v162 ^ 0x2697D8ACFD0FEA00;
  v163 = (v129 >> 8) - 0x6AF7234D0CC131D5;
  v164 = v163 ^ v24;
  v165 = __ROR8__(v163 ^ 0x49E9423B6F16E7D2, 8) + (v163 ^ v24);
  v166 = v23 ^ __ROR8__(v164, 61) ^ v165;
  v167 = (((v165 >> 8) ^ 0xE49D77DF873DBFLL) + v166 + ((v165 << 56) ^ 0x7E00000000000000)) ^ v22;
  v168 = v167 ^ __ROR8__(v166, 61);
  v169 = (__ROR8__(v167, 8) + v168) ^ 0x5963B6C555D97F1FLL;
  v170 = v169 ^ __ROR8__(v168, 61);
  v171 = (__ROR8__(v169, 8) + v170) ^ 0x61459D2AF01F24F7;
  v172 = v171 ^ __ROR8__(v170, 61);
  v173 = (v172 + __ROR8__(v171, 8)) ^ 0x64C31C027084DE6CLL;
  v174 = __ROR8__(v173, 8);
  v175 = v173 ^ __ROR8__(v172, 61);
  v176 = (v175 + v174) ^ 0x1A2AEBE44253AF03;
  v177 = (LODWORD(STACK[0x554]) - 1303244372);
  v68[356] = (((__ROR8__(v176, 8) + (v176 ^ __ROR8__(v175, 61))) ^ 0xAB3042D228875C41) >> ((8 * (v162 & 7)) ^ 0x30)) ^ (v68[356] - ((2 * v68[356]) & 0x46) - 93) ^ 0xA3;
  v68[342] ^= *(a14 - 0x2EEB018C334DAD5ALL + v177);
  v178 = v36 + v177 - ((2 * (v36 + v177)) & 0x267AE819688F611ALL) + 0x133D740CB447B08DLL;
  v179 = ((((v178 << 56) & 0x7800000000000000 ^ 0xF7FFFFFFFFFFFFFFLL) & ((v178 >> 8) ^ 0x7C258467559935A8) & 0x7FFFFFFFFFFFFFFFLL | ((v178 >> 7) << 63)) ^ 0xFC36B913592D7218) - 0x6AF7234D0CC131D5;
  v180 = v179 ^ 0x49E9423B6F16E7D2;
  v181 = v179 ^ v24;
  v182 = (__ROR8__(v180, 8) + v181) ^ v23;
  v183 = v182 ^ __ROR8__(v181, 61);
  v184 = (__ROR8__(v182, 8) + v183) ^ v22;
  v185 = v184 ^ __ROR8__(v183, 61);
  v186 = (__ROR8__(v184, 8) + v185) ^ 0x5963B6C555D97F1FLL;
  v187 = v186 ^ __ROR8__(v185, 61);
  v188 = (__ROR8__(v186, 8) + v187) ^ 0x61459D2AF01F24F7;
  v189 = v188 ^ __ROR8__(v187, 61);
  v190 = (__ROR8__(v188, 8) + v189) ^ 0x64C31C027084DE6CLL;
  v191 = v190 ^ __ROR8__(v189, 61);
  v192 = __ROR8__(v190, 8) + v191;
  v193 = __ROR8__(v191, 61);
  *(&v129 + 1) = v192 ^ 3;
  *&v129 = v192 ^ 0x1A2AEBE44253AF00;
  v194 = (((v192 ^ 0x327E95B34F7329AELL ^ (v193 - ((2 * v193) & 0x50A8FCAE1A410D5ALL) + 0x28547E570D2086ADLL)) + (v129 >> 8)) ^ 0xAB3042D228875C41) >> ((8 * ((v36 + v177 - ((2 * (v36 + v177)) & 0x1A) - 115) & 7)) ^ 0x28);
  LODWORD(v178) = LODWORD(STACK[0x548]) - 1303244372;
  LODWORD(v192) = (v178 ^ 0xF1279C57) & (2 * (v178 & 0xF1B79E57)) ^ v178 & 0xF1B79E57;
  LODWORD(v193) = ((2 * (v178 ^ 0xF1038077)) ^ 0x1683C40) & (v178 ^ 0xF1038077) ^ (2 * (v178 ^ 0xF1038077)) & 0xB41E20;
  LODWORD(v176) = v193 ^ 0x940220;
  LODWORD(v193) = (v193 ^ 0x201800) & (4 * v192) ^ v192;
  LODWORD(v192) = ((4 * v176) ^ 0x2D07880) & v176 ^ (4 * v176) & 0xB41E20;
  LODWORD(v193) = v193 ^ 0xB41E20 ^ (v192 ^ 0x901800) & (16 * v193);
  LODWORD(v192) = (16 * (v192 ^ 0x240620)) & 0xB41E20 ^ 0xB41C20 ^ ((16 * (v192 ^ 0x240620)) ^ 0xB41E200) & (v192 ^ 0x240620);
  LODWORD(v193) = (v193 << 8) & 0xB41E00 ^ v193 ^ ((v193 << 8) ^ 0xB41E2000) & v192;
  v195 = v178 ^ (2 * ((v193 << 16) & 0xB40000 ^ v193 ^ ((v193 << 16) ^ 0x1E200000) & ((v192 << 8) & 0xB40000 ^ 0xA00000 ^ ((v192 << 8) ^ 0xB41E0000) & v192)));
  v68[171] = v194 ^ (v68[171] - ((2 * v68[171]) & 0xF7) - 5) ^ 0xFB;
  v196 = a14 - 0x2EEB018C334DAD5ALL + (v195 ^ 0xF0B7A217);
  v68[157] ^= *v196;
  v197 = v196 + 0x711DBEE07318FD00 - ((2 * v196) & 0xE23B7DC0E631FB56) + 171;
  *(&v129 + 1) = v197 & 0xF8 ^ 0xA8;
  *&v129 = v197 ^ 0x711DBEE07318FD00;
  v198 = (v129 >> 8) - 0x6AF7234D0CC131D5;
  v199 = v198 ^ v24;
  v200 = (__ROR8__(v198 ^ 0x49E9423B6F16E7D2, 8) + (v198 ^ v24)) ^ v23;
  v201 = v200 ^ __ROR8__(v199, 61);
  v202 = (v201 + __ROR8__(v200, 8)) ^ v22;
  v203 = v202 ^ __ROR8__(v201, 61);
  v204 = (__ROR8__(v202, 8) + v203) ^ 0x5963B6C555D97F1FLL;
  v205 = v204 ^ __ROR8__(v203, 61);
  LOBYTE(v195) = v195 & 3;
  v206 = (__ROR8__(v204, 8) + v205) ^ 0x61459D2AF01F24F7;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = (v207 + __ROR8__(v206, 8)) ^ 0x64C31C027084DE6CLL;
  *&v129 = __ROR8__(v207, 61);
  v209 = __ROR8__(v208, 8) + (v208 ^ v129);
  v210 = (((v208 ^ v129) << (((((v195 ^ 0xD3) + 79) ^ ((v195 ^ 0x56) - 52)) ^ ((v195 ^ 0x85) + 25)) + ((((v195 ^ 0xCA) - 113) ^ (v195 + 85)) ^ ((v195 ^ 0xC1) - 122)) + 26)) + ((v208 ^ v129) >> 61)) ^ 0xB98DA33CE7A2878BLL ^ (v209 - 0x46725CC3185D7875 - ((2 * v209) & 0x731B4679CF450F16)) ^ (((v209 << 56) & 0x1A00000000000000 ^ 0x182AEBE44253AF03) + ((v209 << 56) & 0x1A00000000000000 ^ 0x200000000000000));
  v211 = (LODWORD(STACK[0x544]) - 1303244372);
  v68[953] = (v68[953] - ((2 * v68[953]) & 0xEC) + 118) ^ 0x76 ^ (((v210 + ((((v209 << 56) ^ 0x71D39DFC31BC30B4) & ((v209 >> 8) ^ 0xFFED95149DBF6F1ALL) | (v209 >> 8) & 0x2C6203CE43CF4BLL) ^ 0x72DBBFFFF5FE73BFLL)) ^ 0xAB3042D228875C41) >> (((8 * v197) ^ 0xAE) & 0x18 ^ 0x10) >> (~((8 * v197) ^ 0xAE) & 0x20));
  v212 = v197 & 0x4A941492510C80 ^ 0x5D3DFDE13F9EEFEBLL ^ (v197 & 0x4D7F9DD4B25DAF83 ^ 0x515768F5ADCBE16BLL) & (v197 & 0x4D7F9DD4B25DAF83 ^ 0x1E62633D8DE75268);
  v68[939] = v68[0x3CE72 % ((0x51F9B9CBED03C7B4 - (((0x7DF8C7253DFC398 - 2 * v212) & 0x9C13E7218627CB90) + v212)) ^ 0xF879DBF6B481D466)] ^ *(a14 - 0x2EEB018C334DAD5ALL + v211);
  v213 = v36 + v211 - ((2 * (v36 + v211)) & 0xF314C142F1A07DA2);
  v214 = (((((v213 - 0x6759F5E872FC12FLL) >> 8) ^ 0x24A9F1D14DB26D4FLL) & (~((v213 - 0x6759F5E872FC12FLL) << 56) | 0xDFFFFFFFFFFFFFFFLL) | ((v213 - 0x6759F5E872FC12FLL) << 56) & 0xD800000000000000) ^ 0xF4507BB1ECCABD71) - 0x6AF7234D0CC131D5;
  v215 = v214 ^ 0x49E9423B6F16E7D2;
  v216 = v214 ^ v24;
  v217 = (__ROR8__(v215, 8) + v216) ^ v23;
  v218 = v217 ^ __ROR8__(v216, 61);
  v219 = (__ROR8__(v217, 8) + v218) ^ v22;
  v220 = v219 ^ __ROR8__(v218, 61);
  v221 = (v220 + __ROR8__(v219, 8)) ^ 0x5963B6C555D97F1FLL;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = (v222 + __ROR8__(v221, 8)) ^ 0x61459D2AF01F24F7;
  v224 = v223 ^ __ROR8__(v222, 61);
  v225 = (__ROR8__(v223, 8) + v224) ^ 0x64C31C027084DE6CLL;
  v226 = v225 ^ __ROR8__(v224, 61);
  v227 = (v226 + __ROR8__(v225, 8)) ^ 0x1A2AEBE44253AF03;
  v228 = v227 ^ __ROR8__(v226, 61);
  *&v129 = __ROR8__(v227, 8);
  v229 = (LODWORD(STACK[0x53C]) - 1303244372);
  v68[768] = (((v228 + v129) ^ 0xAB3042D228875C41) >> ((8 * v213 - 120) & 0x10) >> ((8 * v213 - 120) & 0x28 ^ 8)) ^ (v68[768] - 2 * (v68[768] & 0x3F) - 65) ^ 0xBF;
  v68[754] ^= *(a14 - 0x2EEB018C334DAD5ALL + v229);
  v230 = a14 - 0x2EEB018C334DAD5ALL + v229 - 0x99FC652A2B36F14;
  v231 = v230 - ((2 * (a14 - 0x2EEB018C334DAD5ALL + v229)) & 0xECC0735ABA9921D8);
  v232 = v231 >> 8;
  v233 = v231 << 56;
  v234 = (v233 ^ 0xD8427CFE269BCD14) & (v232 ^ 0xF8109DC60AC2932FLL) | v232 & 0xBD8301D96432EBLL;
  v235 = v233 & 0xF800000000000000 ^ 0x140736F1D583353CLL;
  if (v155)
  {
    v235 = 0xFC0736F1D583353CLL;
  }

  v236 = (v235 & 0x8C02004115800120 ^ (v235 ^ 0x6908C80222148201) & (v233 & 0xF800000000000000 ^ 0x9908DC2262168201) ^ 0x6A81000C08416842) & 0x7E8B406F3DC16963 | v233 & ~(v235 & 0x8C02004115800120 ^ (v235 ^ 0x6908C80222148201) & (v233 & 0xF800000000000000 ^ 0x9908DC2262168201)) & 0x9000000000000000;
  v237 = (((v234 ^ 0xD259F04DCE19386) - 0x3C41B09A336EB946) ^ ((v234 ^ 0xC6032F1AFE209E3ALL) + 0x898FF7BEE504B06) ^ ((v234 ^ 0xFBD0CCE18D1EC028) + 0x354B1C809D6E1518)) + 0x3563067A921239A1 + (((v236 ^ 0x3B7829852A5A5056) + 0x14D4F9BE4A9B5AADLL) ^ ((v236 ^ 0xF638AE29C5961CD9) - 0x266B81ED5AA8E9DCLL) ^ ((v236 ^ 0x2EC31B712133EBC7) + 0x16FCB4A41F2E13ELL));
  v238 = v237 ^ v24;
  v239 = (__ROR8__(v237 ^ 0x49E9423B6F16E7D2, 8) + (v237 ^ v24)) ^ ((v237 & v23 ^ 0x4105053011D2970) + ((v237 ^ v24) & v23));
  v240 = __ROR8__(v238, 61);
  v241 = v239 ^ 0x45ED1E621C7BA4CCLL ^ (v240 + 0x45ED1E621C7BA4CCLL - ((2 * v240) & 0x8BDA3CC438F74998));
  v242 = (v241 + __ROR8__(v239, 8)) ^ v22;
  v243 = v242 ^ __ROR8__(v241, 61);
  v244 = (v243 + __ROR8__(v242, 8)) ^ 0x5963B6C555D97F1FLL;
  v245 = v244 ^ __ROR8__(v243, 61);
  v246 = (v245 + __ROR8__(v244, 8)) ^ 0x61459D2AF01F24F7;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = (__ROR8__(v246, 8) + v247) ^ 0x64C31C027084DE6CLL;
  v249 = __ROR8__(v248, 8);
  v250 = v248 ^ __ROR8__(v247, 61);
  v251 = __ROR8__((v250 + v249) ^ 0x1A2AEBE44253AF03, 8) + ((v250 + v249) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v250, 61));
  v252 = ((v251 ^ 0xAB3042D228875C41) >> (~((8 * v230) ^ 0x3B) & 0x18) >> (((8 * v230) ^ 0x3B) & 0x20)) ^ (v68[583] - ((2 * v68[583]) & 0xBC) - 34) ^ 0xDE;
  LODWORD(v251) = (v251 & 0x132AF27F ^ 0x25041) + (v251 & 0x132AF27F ^ 0x1328A23E);
  LODWORD(v251) = (v251 - ((2 * v251) & 0x2C3CE8A6) + 1050571859) & 0x2454027A;
  v68[(782 * ((((v251 ^ 0x54BD1089) + 211757408) ^ ((v251 ^ 0x324B316C) - 362215237) ^ ((v251 ^ 0x42E221B7) - 1698686878)) - 1303244372) - 609586708) % 0x3C7] = v252;
  v253 = (v36 + (LODWORD(STACK[0x540]) - 1303244372));
  v68[569] ^= *v253;
  v254 = &v253[-((2 * v253) & 0x2DA146678AC6DB6ELL) + 0x16D0A333C5636DB7];
  v255 = ((((v254 >> 8) ^ 0xEF4FF8E4FBC8E00CLL) - 0x4FED971149594B21) ^ (((v254 >> 8) ^ 0xB96DE057979D31C0) - 0x19CF8FA2250C9AEDLL) ^ (((v254 >> 8) ^ 0x5634C8105F90B2A1) + 0x969581A12FEE674)) - 0x66A89039297E98BFLL + ((((v254 << 56) & 0xF800000000000000 ^ 0xE57649F60CDFD3B4) - 0x36EF9A4B6D320362) ^ (((v254 << 56) & 0xF800000000000000 ^ 0x683A99F2C1C9AF9ALL) + 0x445CB5B05FDB80B4) ^ (((v254 << 56) & 0xF800000000000000 ^ 0x3D4CD004CD167C2ELL) + 0x112AFC4653045308));
  v256 = v255 ^ 0x49E9423B6F16E7D2;
  v257 = v255 ^ v24;
  v258 = (__ROR8__(v256, 8) + v257) ^ v23;
  v259 = v258 ^ __ROR8__(v257, 61);
  v260 = __ROR8__(v258, 8) + v259;
  v261 = v260 ^ v22 ^ __ROR8__(v259, 61);
  v262 = ((((v260 ^ v22) << (((v253 - ((2 * v253) & 0x6E) - 73) & 0x38 ^ 8) & ((v253 - ((2 * v253) & 0x6E) - 73) ^ 0x30) ^ 0x38u)) ^ (v260 >> 8) ^ 0xF5A2F1B9B5D0B2) + v261) ^ 0x5963B6C555D97F1FLL;
  v263 = v262 ^ __ROR8__(v261, 61);
  v264 = __ROR8__(v262, 8) + v263;
  v265 = ~v264 << 62;
  v266 = v264 >> 2;
  v267 = __ROR8__(v263, 61) ^ 0x61459D2AF01F24F7 ^ v264;
  v268 = (__ROR8__(((((v266 ^ 0x6BE6AB720AE02404) & (v265 ^ 0xFFF6BB76EBFCA717) | v265 & 0x8000000000000000) ^ 0x9419548DF51FDBC6) & (v266 & 0x3FFFFFFFFFFFFFC0 ^ 0xC67D5DD27AC50597) | v266 & 0x28) ^ 0x98FBCA593C831036, 6) ^ 0x251B5FC307E90772) + v267;
  v269 = __ROR8__(v267, 61) ^ 0x64C31C027084DE6CLL ^ v268;
  v270 = (((v268 << 56) ^ 0x6C00000000000000) + v269 + ((v268 >> 8) ^ 0x64C31C027084DELL)) ^ 0x1A2AEBE44253AF03;
  v271 = v270 ^ __ROR8__(v269, 61);
  v272 = __ROR8__(v270, 8);
  v68[398] = (((((v272 + v271) & 0xAB3042D228875C41 ^ 0xAB3042D228875C41) + ((v272 + v271) & 0xAB3042D228875C41)) ^ (v272 + v271)) >> (((8 * (v253 - ((2 * v253) & 0x6E) - 73)) ^ 0x9C) & 8) >> (((8 * (v253 - ((2 * v253) & 0x6E) - 73)) ^ 0x9C) & 0x30 ^ 0x20u)) ^ (v68[398] - 2 * (v68[398] & 1) + 1) ^ 1;
  v273 = (v36 + (LODWORD(STACK[0x538]) - 1303244372));
  v68[384] ^= *v273;
  v274 = &v273[-((2 * v273) & 0x7EE02E02E8687C42) + 0x3F70170174343E21];
  v275 = ((((v274 >> 3 << 59) ^ 0x27F985F4C40C0C88) & ((v274 >> 8) ^ 0xFFC2AFE1FCC8A980) | (v274 >> 8) & 0x67A0B3BF3F377) ^ 0x7FFF5F7C57C3CBELL) - 0x6AF7234D0CC131D5;
  v276 = v275 ^ 0x49E9423B6F16E7D2;
  v277 = v275 ^ v24;
  v278 = (__ROR8__(v276, 8) + v277) ^ v23;
  v279 = v278 ^ __ROR8__(v277, 61);
  v280 = (v279 + __ROR8__(v278, 8)) ^ v22;
  v281 = v280 ^ __ROR8__(v279, 61);
  v282 = __ROR8__(v280, 8);
  v283 = (v282 + v281) ^ 0x5963B6C555D97F1FLL;
  v284 = ((v282 + v281 - v283) ^ 0xFFFFFFFFFFFFFFFELL) + v282 + v281;
  v285 = v283 ^ __ROR8__(v281, 61);
  v286 = v285 + (v284 >> 8);
  v287 = v286 + (v284 << 56);
  v288 = __ROR8__(v285, 61) ^ 0x61459D2AF01F24F7 ^ v287;
  v289 = (((v286 << 56) ^ 0xF700000000000000) + v288 + ((v287 >> 8) ^ 0x61459D2AF01F24)) ^ 0x64C31C027084DE6CLL;
  v290 = v289 ^ __ROR8__(v288, 61);
  v291 = (__ROR8__(v289, 8) + v290) ^ 0x1A2AEBE44253AF03;
  v292 = (LODWORD(STACK[0x534]) - 1303244372);
  v68[213] = (((__ROR8__(v291, 8) + (v291 ^ __ROR8__(v290, 61))) ^ 0xAB3042D228875C41) >> ((8 * (v274 & 7)) ^ 8)) ^ (v68[213] - ((2 * v68[213]) & 0xBF) + 95) ^ 0x5F;
  v68[199] ^= *(v36 + v292);
  v293 = v36 + v292 - 0x28914538EE715A9CLL;
  v294 = ((((v293 - ((2 * (v36 + v292)) & 0xAEDD758E231D4AC8)) << 56) & 0xFBFFFFFFFFFFFFFFLL ^ 0x9FFFFFFFFFFFFFFFLL) & (((v293 - ((2 * (v36 + v292)) & 0xAEDD758E231D4AC8)) >> 8) ^ 0xEC5B4401F8EA2E67) ^ (((((v293 - ((2 * (v36 + v292)) & 0xAEDD758E231D4AC8)) >> 4) & 1) << 60) | 0xEC8C2ABB3FFBA0C2)) - 0x6AF7234D0CC131D5;
  v295 = __ROR8__(v294 ^ 0x49E9423B6F16E7D2, 8);
  v296 = v294 ^ v24;
  v297 = __ROR8__((v295 + v296) ^ v23, 8);
  v298 = (v295 + v296) ^ v23 ^ __ROR8__(v296, 61);
  v299 = v297 + v298;
  v300 = __ROR8__(v298, 61);
  v301 = (v297 + v298) ^ 0xEDFD29D14165D167 ^ (v300 - ((2 * v300) & 0x30BFB0D1E96AC6DCLL) + 0x185FD868F4B5636ELL);
  v302 = v301 + (__ROR8__(v299, 8) ^ 0x9F5A2F1B9B5D0B2);
  LODWORD(v268) = (v268 & 0x6C4055FD ^ 0x6000546C) + (v268 & 0x6C4055FD ^ 0xC400191);
  v303 = __ROR8__(v301, 61) ^ __ROR8__(__ROR8__(v302, 12) ^ 0xD7604B820728973BLL, 52) ^ 0x5DDB96B7DCAAC269;
  v304 = (v303 + __ROR8__(v302 ^ 0x5963B6C555D97F1FLL, 8)) ^ 0x61459D2AF01F24F7;
  v305 = v304 ^ __ROR8__(v303, 61);
  v306 = (v305 + __ROR8__(v304, 8)) ^ 0x64C31C027084DE6CLL;
  v307 = v306 ^ __ROR8__(v305, 61);
  v308 = (v307 + __ROR8__(v306, 8)) ^ 0x1A2AEBE44253AF03;
  v309 = v308 ^ __ROR8__(v307, 61);
  v310 = __ROR8__(v308, 8);
  LOBYTE(v293) = (8 * v293) ^ 0x38;
  v311 = v293 & 0x30 ^ 0x10;
  v68[(782 * (((((v268 - ((2 * v268) & 0xC0810108) + 1615298692) ^ 0x55BD3BBC) - 1438464956) ^ (((v268 - ((2 * v268) & 0xC0810108) + 1615298692) ^ 0x64116B34) + 468620492) ^ (((v268 - ((2 * v268) & 0xC0810108) + 1615298692) ^ 0x51EBD00C) + 773074932)) - 1303244372) - 1220958102) % 0x3C7] = (((v310 + v309) ^ 0xAB3042D228875C41) >> v311 >> (~v293 & 8)) ^ (v68[28] - ((2 * v68[28]) & 0x33) - 103) ^ 0x99;
  v312 = (v36 + (LODWORD(STACK[0x528]) - 1303244372));
  v68[14] ^= *v312;
  LOBYTE(v268) = v312 - 52;
  v313 = &v312[-((2 * v312) & 0x3D602C63F26B4138) - 0x614FE9CE06CA5F64];
  *(&v314 + 1) = v313 & 0xF8 ^ 0x98;
  *&v314 = v313 ^ 0x9EB01631F935A000;
  v315 = (v314 >> 8) - 0x6AF7234D0CC131D5;
  v316 = v315 ^ v24;
  v317 = __ROR8__(v315 ^ 0x49E9423B6F16E7D2, 8) + (v315 ^ v24);
  *&v314 = __ROR8__(v316, 61);
  v318 = v317 ^ 0xBDCE3D3B19E48D77 ^ (v314 - ((2 * v314) & 0xB2A695C93DB26412) + 0x59534AE49ED93209);
  v319 = (v318 + (__ROR8__(v317, 8) ^ 0x7EE49D77DF873DBFLL)) ^ v22;
  v320 = v319 ^ __ROR8__(v318, 61);
  v321 = (__ROR8__(v319, 8) + v320) ^ 0x5963B6C555D97F1FLL;
  v322 = v321 ^ __ROR8__(v320, 61);
  v323 = (__ROR8__(v321, 8) + v322) ^ 0x61459D2AF01F24F7;
  v324 = v323 ^ __ROR8__(v322, 61);
  v325 = (v324 + __ROR8__(v323, 8)) ^ 0x64C31C027084DE6CLL;
  v326 = __ROR8__(v325, 8);
  v327 = v325 ^ __ROR8__(v324, 61);
  *&v314 = __ROR8__(v327, 61);
  v68[810] = ((((((v326 + v327) >> 8) & 0x216B3FF4D140CDLL ^ 0x52DEBEEBEF6EFFBFLL ^ ((((v326 + v327) ^ 0xEBE44253AF03) << (((v326 + v327) ^ v314) & 8 ^ (((v326 + v327) ^ v314) & 8 | 0x20) ^ 8) << 16) ^ 0x52DE94C00B2EBF32) & (((v326 + v327) >> 8) ^ 0xFFE5D5141BBDAC50)) + ((v326 + v327) ^ v314 ^ 0x1A2AEBE44253AF03)) ^ 0xAB3042D228875C41) >> (((8 * v268) ^ 0xA7) & 0x28) >> (((8 * v268) ^ 0xA7) & 0x10)) ^ (v68[810] - ((2 * v68[810]) & 0x4A) + 37) ^ 0x25;
  return (*(STACK[0x578] + 8 * (v69 ^ 0x7E)))((v326 + v327) >> 8, 2274067483, 0xAB3042D228875C41, v311, 0x64C31C027084DE6CLL);
}

uint64_t sub_1968F5B24@<X0>(int a1@<W8>)
{
  v6 = *(v1 + 4 * (v4 - 1));
  v7 = 1566083941 * (((v6 ^ (v6 >> 30) ^ 0x653FF240) + 429385095) ^ ((v6 ^ (v6 >> 30) ^ 0x4121A8CB) + 1032437518) ^ ((v6 ^ (v6 >> 30) ^ 0x241E5A8B) + 1488342350)) + 1424171926;
  *(v1 + 4 * v4) = (*(v1 + 4 * v4) ^ v7 ^ ((v7 ^ 0x8DDF334E) + 1302683305) ^ ((v7 ^ 0xD09E11D2) + 283409461) ^ ((v7 ^ 0xD3B4C7A) - 851369571) ^ ((v7 ^ 0x6FFFFCFF) - 1350201062) ^ 0x3F859219) - v4;
  *(v5 - 116) = (a1 - 84368465) ^ v2;
  *(v5 - 152) = v2 + a1 + 410185365 - 16;
  *(v5 - 148) = (a1 + 410185365) ^ v2;
  *(v5 - 144) = v2 ^ 0x26F;
  *(v5 - 136) = v4 + 1 - v2;
  *(v5 - 120) = ((a1 + 410185365) ^ 0x1C0) - v2;
  *(v5 - 128) = v2;
  v8 = (*(v3 + 8 * (a1 ^ 0x130B)))(v5 - 152);
  return (*(v3 + 8 * *(v5 - 124)))(v8);
}

void fp_dh_3630ddab85ab6cc9b3de0c0fe3165b68(uint64_t a1)
{
  v1 = *(a1 + 48) + 455395931 * ((-2 - ((a1 | 0x8C7A974) + (~a1 | 0xF738568B))) ^ 0x81C90847);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1968F5DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v21 - 104) = (v18 + 836) ^ (1790939281 * ((2 * ((v21 - 120) & 0xB23ADE8) - (v21 - 120) + 1960595990) ^ 0x8C007257));
  *(v21 - 120) = &a18;
  *(v21 - 112) = &a16;
  v22 = (*(v19 + 8 * (v18 + 3677)))(v21 - 120);
  return (*(v19 + 8 * (((v20 == ((v18 - 2064) | 0x12) - 1138) * (26 * (v18 ^ 0xC5A) - 1116)) | v18)))(v22);
}

uint64_t sub_1968F5E8C()
{
  v3 = 64 - ((((v1 - 1563) | 0x966) ^ 0xD7E3AE3C) + v0);
  v4 = (v1 ^ 0x281C5EB8) - v0;
  if (HIDWORD(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= v3;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((58 * v6) ^ v1)))();
}

uint64_t sub_1968F5EF0()
{
  *(v5 - 224) = *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 1684) - 4);
  *(v5 - 216) = v1 + ((2 * ((v5 - 224) & 0x2F43FA78) - (v5 - 224) - 792984191) ^ 0x286025C0) * v4 + 1504;
  (*(v0 + 8 * (v1 + 5016)))(v5 - 224);
  *(v5 - 224) = v3 + ((2 * ((v5 - 224) & 0x4ADFE3C8) - (v5 - 224) + 891296821) ^ 0xB18994D9) * v2 + v1 + 264;
  v6 = (*(STACK[0x370] + 8 * (v1 ^ 0x1C54)))(v5 - 224);
  return (*(STACK[0x370] + 8 * (((*(v5 - 220) == 1477999483) * ((((v1 - 1871308516) ^ 0x907609A0) + 1504) ^ (v1 - 1871308516) & 0x6F89F65F)) ^ v1)))(v6);
}

void sub_1968F6008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x6C0] = 0;
  STACK[0x430] = 0;
  STACK[0x440] = *(a6 + 8 * ((v6 - 2873) | 0x145));
  JUMPOUT(0x1969AF37CLL);
}

uint64_t sub_1968F6588(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  STACK[0x310] = v27 & 0xFFFFFFF8;
  STACK[0x320] = v25 - (v27 & 0xFFFFFFF8) + 8;
  v31 = STACK[0x350] + a17 + a1 + a25 + v27 - v25;
  v32 = STACK[0x340] + v27 - v25;
  v33 = v30;
  v34 = (v26 + 1745390585) & 0x97F779F6;
  v35.i64[0] = v32 + v34 - 2135;
  v35.i64[1] = v32 - 6;
  v36.i64[0] = v32 - 1;
  v36.i64[1] = v32 - 2;
  v37.i64[0] = v32 - 3;
  v37.i64[1] = v32 - 4;
  v38.i64[0] = v32 - 7;
  v38.i64[1] = v32 - 8;
  v39.i64[0] = v31 + v34 - 2135;
  v39.i64[1] = v31 - 6;
  v40.i64[0] = v31 - 1;
  v40.i64[1] = v31 - 2;
  v41.i64[0] = v31 - 3;
  v41.i64[1] = v31 - 4;
  v42.i64[0] = v31 - 7;
  v42.i64[1] = v31 - 8;
  v43 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v44 = vandq_s8(v38, v43);
  v45 = vandq_s8(v37, v43);
  v46 = vandq_s8(v36, v43);
  v47 = vandq_s8(v35, v43);
  v48 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v51 = vdupq_n_s64(0x38uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v53 = vdupq_n_s64(v33);
  v54 = vaddq_s64(v52, v53);
  v55 = vaddq_s64(v50, v53);
  v56 = vaddq_s64(v49, v53);
  v57 = vaddq_s64(v48, v53);
  v58 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v59 = veorq_s8(v57, v58);
  v60 = veorq_s8(v56, v58);
  v61 = veorq_s8(v55, v58);
  v62 = veorq_s8(v54, v58);
  v63 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v64 = veorq_s8(v54, v63);
  v65 = veorq_s8(v55, v63);
  v66 = veorq_s8(v56, v63);
  v67 = veorq_s8(v57, v63);
  v68 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v65);
  v70 = vaddq_s64(v68, v64);
  v71 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v72 = veorq_s8(v70, v71);
  v73 = veorq_s8(v69, v71);
  v74 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v66), v71);
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v67), v71);
  v76 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v79 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v80 = veorq_s8(v73, v77);
  v81 = veorq_s8(v72, v76);
  v82 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v81);
  v86 = vaddq_s64(v84, v80);
  v87 = vaddq_s64(v83, v79);
  v88 = vaddq_s64(v82, v78);
  v89 = vdupq_n_s64(0xD3E2C6F73124A4A2);
  v90 = vdupq_n_s64(a7);
  v91 = vaddq_s64(vsubq_s64(vorrq_s8(v88, v89), vorrq_s8(v88, v90)), v90);
  v92 = vaddq_s64(vsubq_s64(vorrq_s8(v87, v89), vorrq_s8(v87, v90)), v90);
  v93 = vaddq_s64(vsubq_s64(vorrq_s8(v86, v89), vorrq_s8(v86, v90)), v90);
  v94 = vaddq_s64(vsubq_s64(vorrq_s8(v85, v89), vorrq_s8(v85, v90)), v90);
  v95 = vdupq_n_s64(0x2640374E84F416ABuLL);
  v96 = veorq_s8(v94, v95);
  v97 = veorq_s8(v93, v95);
  v98 = veorq_s8(v92, v95);
  v99 = veorq_s8(v91, v95);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v101 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v102 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v103 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v104 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v102);
  v107 = vaddq_s64(v105, v101);
  v108 = vaddq_s64(v104, v100);
  v109 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v110 = veorq_s8(v108, v109);
  v111 = veorq_s8(v107, v109);
  v112 = veorq_s8(v106, v109);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v103), v109);
  v114 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v117 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v118 = veorq_s8(v112, v116);
  v119 = veorq_s8(v111, v115);
  v120 = veorq_s8(v110, v114);
  v121 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v120);
  v125 = vaddq_s64(v121, v117);
  v126 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v127 = veorq_s8(v125, v126);
  v128 = veorq_s8(vaddq_s64(v122, v118), v126);
  v129 = veorq_s8(vaddq_s64(v123, v119), v126);
  v130 = veorq_s8(v124, v126);
  v131 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v134 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v135 = veorq_s8(v129, v133);
  v136 = veorq_s8(v128, v132);
  v137 = veorq_s8(v127, v131);
  v138 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v137);
  v142 = vaddq_s64(v140, v136);
  v143 = vaddq_s64(v139, v135);
  v144 = vaddq_s64(v138, v134);
  v145 = vdupq_n_s64(0x96E1782549DF8832);
  v146 = vdupq_n_s64(a5);
  v147 = vsubq_s64(vorrq_s8(v141, v145), vorrq_s8(v141, v146));
  v148 = vaddq_s64(vsubq_s64(vorrq_s8(v144, v145), vorrq_s8(v144, v146)), v146);
  v149 = vaddq_s64(vsubq_s64(vorrq_s8(v143, v145), vorrq_s8(v143, v146)), v146);
  v150 = vaddq_s64(vsubq_s64(vorrq_s8(v142, v145), vorrq_s8(v142, v146)), v146);
  v151 = vdupq_n_s64(0xF2226427395B565ELL);
  v152 = veorq_s8(vaddq_s64(v147, v146), v151);
  v153 = veorq_s8(v150, v151);
  v154 = veorq_s8(v149, v151);
  v155 = veorq_s8(v148, v151);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v157 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v158 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v159 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v159);
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v158);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v157);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156);
  v164 = vdupq_n_s64(0x25FD83206EC49CC2uLL);
  v165 = vdupq_n_s64(0xED013E6FC89DB19FLL);
  v166 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), v164), v160), v165);
  v167 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), v164), v161), v165);
  v168 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v164), v162), v165);
  v169 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), v164), v163), v165);
  v170 = vdupq_n_s64(0x8D42A747531E162uLL);
  v171 = veorq_s8(v169, v170);
  v172 = veorq_s8(v168, v170);
  v173 = veorq_s8(v167, v170);
  v174 = veorq_s8(v166, v170);
  v175 = vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL)));
  v179 = vdupq_n_s64(0xAB3042D228875C41);
  v180 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, v175)), v179), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v51)));
  v181 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, v176)), v179), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v51)));
  v182 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), veorq_s8(v173, v177)), v179), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v51)));
  v183 = vshlq_u64(veorq_s8(v178, v179), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v51)));
  v184 = vandq_s8(v42, v43);
  v185 = vandq_s8(v41, v43);
  v186 = vandq_s8(v40, v43);
  v187 = vandq_s8(v39, v43);
  v188 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v189 = vdupq_n_s64(v28);
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v189);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v189);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v189);
  v193 = vdupq_n_s64(a2);
  v194 = vaddq_s64(v188, v189);
  v195 = veorq_s8(v194, v193);
  v196 = veorq_s8(v192, v193);
  v197 = veorq_s8(v191, v193);
  v198 = vdupq_n_s64(0x85215C3045409F44);
  v199 = veorq_s8(v190, v193);
  v200 = veorq_s8(v190, v198);
  v201 = veorq_s8(v191, v198);
  v202 = veorq_s8(v192, v198);
  v203 = veorq_s8(v194, v198);
  v204 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v203);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v202);
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v201);
  v208 = vaddq_s64(v204, v200);
  v209 = vdupq_n_s64(0x387A58471D908FDEuLL);
  v210 = vdupq_n_s64(0xE3C2D3DC7137B810);
  v211 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205, v205), v209), v205), v210);
  v212 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v206, v206), v209), v206), v210);
  v213 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v207, v207), v209), v207), v210);
  v214 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v208, v208), v209), v208), v210);
  v215 = vdupq_n_s64(a3);
  v216 = veorq_s8(v214, v215);
  v217 = veorq_s8(v213, v215);
  v218 = veorq_s8(v212, v215);
  v219 = veorq_s8(v211, v215);
  v220 = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v223 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v224 = veorq_s8(v218, v222);
  v225 = veorq_s8(v217, v221);
  v226 = veorq_s8(v216, v220);
  v227 = vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL);
  v228 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v229 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v226);
  v231 = vaddq_s64(v229, v225);
  v232 = vaddq_s64(v228, v224);
  v233 = vaddq_s64(v227, v223);
  v234 = vdupq_n_s64(0x4598FFA5B9B7CB6CuLL);
  v235 = vdupq_n_s64(a4);
  v236 = vaddq_s64(vsubq_s64(vorrq_s8(v233, v234), vorrq_s8(v233, v235)), v235);
  v237 = vaddq_s64(vsubq_s64(vorrq_s8(v232, v234), vorrq_s8(v232, v235)), v235);
  v238 = vaddq_s64(vsubq_s64(vorrq_s8(v231, v234), vorrq_s8(v231, v235)), v235);
  v239 = vaddq_s64(vsubq_s64(vorrq_s8(v230, v234), vorrq_s8(v230, v235)), v235);
  v240 = vdupq_n_s64(0xD46C6E1ABEDC938uLL);
  v241 = veorq_s8(v239, v240);
  v242 = veorq_s8(v238, v240);
  v243 = veorq_s8(v237, v240);
  v244 = veorq_s8(v236, v240);
  v245 = vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL);
  v246 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v247 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v248 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v249 = veorq_s8(v242, v246);
  v250 = veorq_s8(v241, v245);
  v251 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v250);
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v249);
  v255 = vaddq_s64(v252, v248);
  v256 = vaddq_s64(v251, v247);
  v257 = vdupq_n_s64(0xFFAB05F3AEBE5606);
  v258 = vdupq_n_s64(0x802A7D0628A0D4FDLL);
  v259 = vdupq_n_s64(0x2805F02614FADD54uLL);
  v260 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v256, v256), v257), v256), v258), v259);
  v261 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v255, v255), v257), v255), v258), v259);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v254, v254), v257), v254), v258), v259);
  v263 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v253, v253), v257), v253), v258), v259);
  v264 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v265 = vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL);
  v266 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v267 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v268 = veorq_s8(v262, v266);
  v269 = veorq_s8(v261, v265);
  v270 = veorq_s8(v260, v264);
  v271 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v273 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v270);
  v275 = vaddq_s64(v273, v269);
  v276 = vaddq_s64(v272, v268);
  v277 = vdupq_n_s64(0x13AF7A4AD7D948E4uLL);
  v278 = vaddq_s64(v271, v267);
  v279 = vdupq_n_s64(v29);
  v280 = vsubq_s64(vorrq_s8(v274, v277), vorrq_s8(v274, v279));
  v281 = vsubq_s64(vorrq_s8(v275, v277), vorrq_s8(v275, v279));
  v282 = vsubq_s64(vorrq_s8(v276, v277), vorrq_s8(v276, v279));
  v283 = vaddq_s64(vsubq_s64(vorrq_s8(v278, v277), vorrq_s8(v278, v279)), v279);
  v284 = vdupq_n_s64(0xE1CD782C08019666);
  v285 = veorq_s8(vaddq_s64(v280, v279), v284);
  v286 = veorq_s8(vaddq_s64(v281, v279), v284);
  v287 = veorq_s8(vaddq_s64(v282, v279), v284);
  v288 = veorq_s8(v283, v284);
  v289 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v290 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v291 = vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL);
  v292 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v293 = veorq_s8(v287, v291);
  v294 = veorq_s8(v286, v290);
  v295 = veorq_s8(v285, v289);
  v296 = vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL);
  v297 = vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL);
  v298 = vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL);
  v299 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v295);
  v300 = vaddq_s64(v297, v293);
  v301 = vaddq_s64(v296, v292);
  v302 = vdupq_n_s64(0xB9BEF0CD865D21FDLL);
  v303 = veorq_s8(v301, v302);
  v304 = veorq_s8(v300, v302);
  v305 = veorq_s8(vaddq_s64(v298, v294), v302);
  v306 = veorq_s8(v299, v302);
  v307 = vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v294, 3uLL), v294, 0x3DuLL);
  v310 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v311 = veorq_s8(v305, v309);
  v312 = veorq_s8(v304, v308);
  v313 = veorq_s8(v303, v307);
  v314 = vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL);
  v315 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v316 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v317 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL), v313);
  v318 = vaddq_s64(v316, v312);
  v319 = vaddq_s64(v315, v311);
  v320 = vaddq_s64(v314, v310);
  v321 = vdupq_n_s64(0x787E07DA35E0BFF0uLL);
  v322 = vdupq_n_s64(0x43C0FC12E50FA007uLL);
  v323 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v317, v317), v321), v317), v322);
  v324 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v318, v318), v321), v318), v322);
  v325 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v319, v319), v321), v319), v322);
  v326 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v320, v320), v321), v320), v322);
  v327 = vdupq_n_s64(0x2DDEE5CF5633123DuLL);
  v328 = veorq_s8(v326, v327);
  v329 = veorq_s8(v325, v327);
  v330 = veorq_s8(v324, v327);
  v331 = veorq_s8(v323, v327);
  v332 = vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL);
  v333 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v334 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL)));
  v335 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  v336 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), veorq_s8(v329, v333)), v335), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v51)));
  v338.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL))), v335), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v51))), v183);
  v338.val[1] = veorq_s8(vshlq_u64(veorq_s8(v334, v335), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v51))), v182);
  v338.val[0] = veorq_s8(v336, v181);
  v338.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), veorq_s8(v328, v332)), v335), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v51))), v180);
  *(v31 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v338, xmmword_196EBFAE0)), *(v32 - 8));
  return (*(STACK[0x370] + 8 * ((1624 * (STACK[0x320] == 0)) ^ v26)))();
}

void sub_1968F72A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, char a13)
{
  v19 = *(a1 + 16) + 56 * **(a1 + 16) + 24;
  v20 = v18 - 128;
  v21 = 753662761 * ((-2 - ((~(v18 - 128) | 0x1B47B517) + ((v18 - 128) | 0xE4B84AE8))) ^ 0x7E5D4E5C);
  *(v18 - 112) = v21 + 1904658650;
  *(v18 - 108) = v14 - v21 + 2780;
  *(v18 - 128) = v21 ^ 0x6298;
  *(v18 - 120) = v19;
  *(v18 - 104) = &a13;
  (*(v13 + 8 * (v14 + 6023)))(v18 - 128);
  v22 = 998242381 * (((v20 | 0x866775A) - (v20 & 0x866775A)) ^ 0xA209EF8C);
  *(v18 - 120) = &a13;
  *(v18 - 112) = v16;
  *(v18 - 128) = (v14 + 2707) ^ v22;
  *(v18 - 124) = v22 + 2125716593;
  (*(v13 + 8 * (v14 ^ 0x1862)))(v18 - 128);
  v23 = 998242381 * ((v20 & 0xBD556037 | ~(v20 | 0xBD556037)) ^ 0xE8C5071E);
  *(v18 - 128) = (v14 + 2707) ^ v23;
  *(v18 - 124) = v23 + 966100568 + v17;
  *(v18 - 120) = &a13;
  *(v18 - 112) = v15;
  (*(v13 + 8 * (v14 + 6114)))(v18 - 128);
  *(v18 - 120) = &a10;
  *(v18 - 112) = &a13;
  *(v18 - 128) = (v14 - 584) ^ (1575331711 * ((((v18 - 128) | 0xDE32A2AF) - (v18 - 128) + ((v18 - 128) & 0x21CD5D50)) ^ 0xB26937AD));
  (*(v13 + 8 * (v14 + 5975)))(v18 - 128);
  JUMPOUT(0x1968F748CLL);
}

uint64_t sub_1968F74C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, int a25, int a26, void *a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v39 = (a33 + 4 * v38);
  v40 = *v39;
  v41 = *(&a35 + v38);
  LODWORD(v39) = ((*(*a27 + (*a28 & 0x52DF4D14)) ^ v39) & 0x7FFFFFFF) * a25;
  LODWORD(v39) = v39 ^ (v39 >> 16);
  v42 = -1555358357 * v39;
  *(&a35 + v38) = v40 ^ 0xE7B68FF4 ^ (v41 - 407465996 - ((2 * v41) & 0xCF6D1FE8)) ^ ((((v36 - 467) ^ v38) & v38) >> (__clz((v36 - 467) ^ v38 | 1) ^ 0x1F)) & 1 ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a24) + HIBYTE(v42) - 3) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a23) + HIBYTE(v42) - 2) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v36 - 50) + HIBYTE(v42) - 1) ^ (493551616 * v39) ^ v42 ^ (175838075 * HIBYTE(v42));
  return (*(v37 + 8 * ((37 * ((((a26 - 5583) | 0x92) ^ 0xFFFFFE29) + v35 != (((a26 - 5841) | 0x194) ^ 0x1D6))) ^ a26)))();
}

uint64_t sub_1968F7670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + 8);
  STACK[0x770] = v8;
  return (*(a6 + 8 * (((v9 != 0) * ((v7 - 274) ^ 0xA4F)) ^ v7)))();
}

uint64_t sub_1968F76E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (v4 - 3494) | 0x828;
  *v11 = a1;
  *a4 = (v4 - 3263) ^ (v5 + 364) ^ v12;
  v9 = 239 * (v8 ^ 0x9FA);
  v15 = v8 - ((2 * (&v15 & 0x28355308) - &v15 - 674583310) ^ 0x2F168CB3) * v6 + 3544;
  v16 = v13;
  (*(v7 + 8 * (v8 + 4270)))(&v15);
  v16 = v14;
  v15 = v9 - ((2 * (&v15 & 0x62832BC8) - &v15 - 1652763593) ^ 0x65A0F476) * v6 + 4428;
  (*(v7 + 8 * (v9 + 5154)))(&v15);
  return 0;
}

uint64_t sub_1968F782C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = *(*(v2 + 8) + 4 * v6);
  *(*(a1 + 24) + (v4 + a2)) = (v8 ^ v5) - (((v8 ^ v5) << (((51 * (v7 ^ 0x26) - 52) | 0x40) - 88)) & 0xD8) - 20;
  return (*(v3 + 8 * (v7 ^ 0x196D ^ ((2 * (v4 == 1274312565)) | ((v4 == 1274312565) << 6)))))();
}

uint64_t sub_1968F7854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned int a30)
{
  v36 = (v31 + 4 * (v30 + v34));
  *v36 = v32 ^ __ROR4__(*(v36 - 8) ^ *(v36 - 3) ^ *(v36 - 14) ^ *(v36 - 16), 31);
  return (*(v33 + 8 * ((83 * (v30 + 1 == (a29 ^ (v35 + 1942)))) ^ a30)))(1120196616);
}

uint64_t sub_1968F78BC()
{
  *(v2 + v0 + 24) = 0;
  v4 = v0 + ((v1 - 3116) | 0x4Au) != 2182;
  return (*(v3 + 8 * (((4 * v4) | (8 * v4)) ^ v1)))();
}

uint64_t sub_1968F7C24()
{
  v7 = v5 + 127 - v0;
  v8 = *(v7 - 31);
  v9 = v2 + 127 - v0;
  v10.i64[0] = 0xD8D8D8D8D8D8D8D8;
  v10.i64[1] = 0xD8D8D8D8D8D8D8D8;
  v11.i64[0] = 0xECECECECECECECECLL;
  v11.i64[1] = 0xECECECECECECECECLL;
  *(v9 - 15) = vaddq_s8(vsubq_s8(*(v7 - 15), vandq_s8(vaddq_s8(*(v7 - 15), *(v7 - 15)), v10)), v11);
  *(v9 - 31) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v10)), v11);
  return (*(v6 + 8 * (((((v0 == 96) ^ (v4 - v1 - 1)) & 1) * v3) ^ v4)))();
}

uint64_t sub_1968F7CCC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t (*a28)(uint64_t, uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44, unsigned int a45, unsigned int a46, unsigned int a47, unsigned int a48)
{
  v53 = (((v52 ^ 0xF8A70ABC) + 123270468) ^ ((v52 ^ 0x18E4CAEC) - 417647340) ^ ((v52 ^ 0x9C04C73B) + 1677408453)) + 1541262973 + (((a48 ^ 0x1A5172EA) - 441545450) ^ ((a48 ^ 0xE13E8D13) + 515994349) ^ ((a48 ^ 0x8728F876 ^ (38 * (a1 ^ 0x1818))) + 2027358062));
  v54 = (v53 ^ 0x1A337714) & (2 * (v53 & 0x9CB04059)) ^ v53 & 0x9CB04059;
  v55 = ((2 * (v53 ^ 0x13537736)) ^ 0x1FC66EDE) & (v53 ^ 0x13537736) ^ (2 * (v53 ^ 0x13537736)) & 0x8FE3376E;
  v56 = v55 ^ 0x80211121;
  v57 = (v55 ^ 0x7C2024C) & (4 * v54) ^ v54;
  v58 = ((4 * v56) ^ 0x3F8CDDBC) & v56 ^ (4 * v56) & 0x8FE3376C;
  v59 = (v58 ^ 0xF801520) & (16 * v57) ^ v57;
  v60 = ((16 * (v58 ^ 0x80632243)) ^ 0xFE3376F0) & (v58 ^ 0x80632243) ^ (16 * (v58 ^ 0x80632243)) & 0x8FE33760;
  v61 = v59 ^ 0x8FE3376F ^ (v60 ^ 0x8E233600) & (v59 << 8);
  a48 = v53 ^ (2 * ((v61 << 16) & 0xFE30000 ^ v61 ^ ((v61 << 16) ^ 0x376F0000) & (((v60 ^ 0x1C0010F) << 8) & 0xFE30000 ^ 0xCC00000 ^ (((v60 ^ 0x1C0010F) << 8) ^ 0x63370000) & (v60 ^ 0x1C0010F)))) ^ 0xF1F729EC;
  v62 = (((v51 ^ 0x4DA2A25B) - 1302504027) ^ ((v51 ^ 0xDC17063C) + 602470852) ^ ((v51 ^ 0xEDF2A30C) + 302865652)) + (((a44 ^ 0xF934D5C7) + 113977913) ^ ((a44 ^ 0xEC1F922) - 247593250) ^ ((a44 ^ 0x8BB22B8E) + 1951257714)) + 977822075;
  v63 = (v62 ^ 0xBF25A953) & (2 * (v62 & 0xBE45AD5B)) ^ v62 & 0xBE45AD5B;
  v64 = ((2 * (v62 ^ 0xEF27F9C1)) ^ 0xA2C4A934) & (v62 ^ 0xEF27F9C1) ^ (2 * (v62 ^ 0xEF27F9C1)) & 0x5162549A;
  v65 = v64 ^ 0x5122548A;
  v66 = (v64 ^ 0x10) & (4 * v63) ^ v63;
  v67 = ((4 * v65) ^ 0x45895268) & v65 ^ (4 * v65) & 0x51625498;
  v68 = (v67 ^ 0x41005000) & (16 * v66) ^ v66;
  v69 = ((16 * (v67 ^ 0x10620492)) ^ 0x162549A0) & (v67 ^ 0x10620492) ^ (16 * (v67 ^ 0x10620492)) & 0x51625490;
  v70 = v68 ^ 0x5162549A ^ (v69 ^ 0x10204000) & (v68 << 8);
  v71 = v62 ^ (2 * ((v70 << 16) & 0x51620000 ^ v70 ^ ((v70 << 16) ^ 0x549A0000) & (((v69 ^ 0x4142141A) << 8) & 0x51620000 ^ 0x11220000 ^ (((v69 ^ 0x4142141A) << 8) ^ 0x62540000) & (v69 ^ 0x4142141A))));
  v72 = (((v50 ^ 0x71086FC7) - 1896378311) ^ ((v50 ^ 0xF42E98D3) + 198272813) ^ ((v50 ^ 0xF961F07F) + 111021953)) + (((a45 ^ 0xA0C535B0) + 1597688400) ^ ((a45 ^ 0xA2A07840) + 1566541760) ^ ((a45 ^ 0x7E224A9B) - 2116176539)) + 1753087999;
  v73 = (2 * (v72 & 0x90100ED7)) & (v72 ^ 0x821F8FB3) ^ v72 & 0x90100ED7 ^ ((2 * (v72 & 0x90100ED7)) & 0x124 | 0xA0000);
  v74 = (2 * (v72 ^ 0x821F8FB3)) & 0x120F8164 ^ 0x12008124 ^ ((2 * (v72 ^ 0x821F8FB3)) ^ 0x241F02C8) & (v72 ^ 0x821F8FB3);
  v75 = (4 * v73) & 0x120F8164 ^ v73 ^ ((4 * v73) ^ 0x280000) & v74;
  v76 = (4 * v74) & 0x120F8164 ^ 0x12018064 ^ ((4 * v74) ^ 0x483E0590) & v74;
  v77 = v75 ^ (16 * v75) & 0x120F8160 ^ ((16 * v75) ^ 0x200000) & v76;
  v78 = (16 * v76) & 0x120F8160 ^ 0x12078124 ^ ((16 * v76) ^ 0x20F81640) & v76;
  v79 = ((v77 ^ 0x120D8164) << 8) & 0x120F8100 ^ v77 ^ 0x120D8164 ^ (((v77 ^ 0x120D8164) << 8) ^ 0xF816400) & v78;
  a44 = v71 ^ 0xC0C20304;
  a45 = v72 ^ (2 * ((v79 << 16) & 0x120F0000 ^ v79 ^ ((v79 << 16) ^ 0x1640000) & ((v78 << 8) & 0x120F0000 ^ 0x100E0000 ^ ((v78 << 8) ^ 0xF810000) & v78))) ^ 0xCC420B74;
  v80 = (((v49 ^ 0xF1BC8B18) + 239301864) ^ ((v49 ^ 0xCF124871) + 820885391) ^ ((v49 ^ 0x42E9C402) - 1122616322)) + (((a46 ^ 0xC4DDBEBB) + 992100677) ^ ((a46 ^ 0x5D2F555D) - 1563383133) ^ ((a46 ^ 0xE5B5EC8D) + 441062259)) + 78311627;
  v81 = (((v48 ^ 0x9B6DFF33) + 1687290061) ^ ((v48 ^ 0xC3A34162) + 1012711070) ^ ((v48 ^ 0x2489B93A) - 613005626)) + (((a47 ^ 0xE0B883E2) + 524778526) ^ ((a47 ^ 0x4CDECC86) - 1289669766) ^ ((a47 ^ 0xD021480F) + 803125233)) - 18411184;
  a46 = v80 ^ ((v80 ^ 0xCB1194E2) + 955419369) ^ ((v80 ^ 0x341D5644) - 939636657) ^ ((v80 ^ 0x86FDFBD) - 74661448) ^ ((v80 ^ 0xFB7FFCEE) + 144499429) ^ 0x705BE69E;
  a47 = v81 ^ ((v81 ^ 0x32D08BC7) - 881428925) ^ ((v81 ^ 0xDC0CAB15) + 631920273) ^ ((v81 ^ 0x866ADD57) + 2144084179) ^ ((v81 ^ 0x6EEFFFFF) - 1756822917) ^ 0x7A1E0511;
  return a28(303006048, 303006052, &a34 + 4, HIDWORD(a26), a5, 1672, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_1968F857C()
{
  *(v2 - 224) = v1 + 1012216201 * ((((2 * (v2 - 224)) | 0x6111547E) - (v2 - 224) + 1333220801) ^ 0x342122D3) - 5149423;
  v3 = (*(v0 + 8 * (v1 ^ 0x1D5C)))(v2 - 224);
  return (*(STACK[0x370] + 8 * ((4118 * (*(v2 - 220) == (((v1 ^ 0x108) + 1477994737) ^ (v1 + 3264)))) ^ v1)))(v3);
}

void sub_1968F865C(int a1@<W8>)
{
  v5 = ((8 * v3) ^ 0xFB68FA67799957D0) + (v2 - 107) - 1202;
  LODWORD(v5) = bswap32(*&v6[(v5 ^ 0x7F7FBF3FAFF1EBEFLL) - 0x7F7FBF3FAFF1EBEBLL + ((2 * v5) & 0xFEFF7E7F5FE3D7D0)]);
  *(v4 + 24) = ((((v5 + v1 - (a1 & (2 * v5))) ^ 0x28289671) + 1957632565) ^ (((v5 + v1 - (a1 & (2 * v5))) ^ 0xD870AF4B) - 2064178417) ^ (((v5 + v1 - (a1 & (2 * v5))) ^ 0x1F6B13C0) + 1139580806)) - 1108679116;
}

uint64_t sub_1968F86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23)
{
  v29 = (a21 ^ a17) + a22;
  v27 = a18 < 0xF9BBB978;
  if (v27 == v29 > 0x6444687)
  {
    v27 = v29 - 105137800 < a18;
  }

  return (*(v25 + 8 * ((v27 * (((v26 - 8) ^ 0xB82) - 360)) ^ (v26 + 3718))))(a1, a2, a23 + (v23 ^ v24), a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1968F8768(uint64_t a1, int a2)
{
  v5 = v4 - 431459010;
  v6 = v5 < ((v3 - 665) ^ 0x8E989C4F);
  v7 = a2 - 431459010 < v5;
  if (a2 - 431459010 < -1902602726 != v6)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((v7 * ((v3 - 1047) ^ 0x935)) ^ v3)))();
}

void fp_dh_aee8907eda4a1633fd08d82b13fe2f7a(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 12) - 1825732043 * (((a1 | 0x9382A0C4) - a1 + (a1 & 0x6C7D5F3B)) ^ 0x9314F3F3);
  v4 = *a1;
  v3[0] = v1 + 489239129 * (((v3 | 0xBE45EA61) - (v3 & 0xBE45EA61)) ^ 0x76DC957) - 1389;
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x86C)) - 4;
  (*&v2[8 * v1 + 34832])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968F8914@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  *&v5 = 0xECECECECECECECECLL;
  *(&v5 + 1) = 0xECECECECECECECECLL;
  *(&STACK[0x29C] + v2) = v5;
  *(&STACK[0x29C] + v2 + 16) = v5;
  return (*(v4 + 8 * ((((a2 & 0xFFFFFFFFFFFFFFE0) == 32) * (((a1 + v3 + 110) | 0x1300) - 4957)) ^ (a1 + v3 + 2431))))();
}

uint64_t sub_1968F8A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  v29 = a28 + 1437878979 > a21;
  if (a21 < 0x55B44A83 != a28 + 1437878979 < (((a8 + 257) | 0x21) ^ 0x55B44B36u))
  {
    v29 = a28 + 1437878979 < (((a8 + 257) | 0x21) ^ 0x55B44B36u);
  }

  return (*(v28 + 8 * ((!v29 * (a8 + 357)) ^ a18)))(1162, 216);
}

uint64_t sub_1968F8A90()
{
  v7[0] = v3 + 1825732043 * ((v7 - 793235811 - 2 * (v7 & 0xD0B82E9D)) ^ 0xD02E7DAA) + 364621763;
  (*(v1 + 8 * (v3 ^ 0x1815)))(v7);
  v4 = 1283153057 * (((v7 ^ 0xB967384C) + 222794525 - 2 * ((v7 ^ 0xB967384C) & 0xD47931D)) ^ 0xFBF8A866);
  v7[0] = v4 ^ 0x26D0C6E8;
  v7[1] = (v3 - 1156387109) ^ v4;
  (*(v1 + 8 * (v3 ^ 0x1850)))(v7);
  v7[0] = v3 + ((1665137623 - (v7 | 0x633FFBD7) + (v7 | 0x9CC00428)) ^ 0xEA315AE4) * v2 + 5043;
  (*(v1 + 8 * (v3 ^ 0x187C)))(v7);
  v8 = *v6;
  v7[0] = ((v3 ^ 0x7A2) + 1935) ^ (((v7 & 0xB89A1537 | ~(v7 | 0xB89A1537)) ^ 0x3194B404) * v2);
  result = (*(v1 + 8 * (v3 ^ 0x1995)))(v7);
  *v0 = 1906281716;
  return result;
}

void fp_dh_e55d8917ac11a1dd5a00e146a8240be5(uint64_t a1)
{
  v1 = *(a1 + 4) + 654144011 * ((2 * (a1 & 0x6D6F966B) - a1 + 311454100) ^ 0x3E441408);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968F8D28(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1968F90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, int a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v40 = (a29 + 4 * v35);
  v41 = ((((((~(v37 - 2500) + v35) ^ (v36 - (v37 - 2500))) - 1) & ((v37 - 2500) - v35)) >> 63) - 1555358357) * ((*(*a30 + (*a31 & ((a26 & 0xA80B4EBF) - 1171927591))) ^ v40) & 0x7FFFFFFF);
  v42 = v41 ^ HIWORD(v41);
  v43 = (-1555358357 * v42) >> 24;
  *(&a35 + v35) ^= *v40 ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a25) + v43 - 2) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a24) + v43 + 1) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a23) + v43 + 1) ^ (493551616 * v42) ^ (-1555358357 * v42) ^ (-735752965 * v43);
  return (*(v38 + 8 * (((((((a26 & 0xA80B4EBF) - 1518) | 0x106) ^ 0xFFFFF638) + v39 != 0) * ((((a26 & 0xA80B4EBF) - 1388) | 0x84) - 2483)) ^ a26 & 0xA80B4EBF)))();
}

uint64_t fp_dh_364aa76a08630b4905bef2f3b95382a3(uint64_t a1)
{
  v1 = 1575331711 * ((-2 - ((a1 | 0xCD8EF6F3) + (~a1 | 0x3271090C))) ^ 0x5E2A9C0E);
  v2 = *(a1 + 24) ^ v1;
  v3 = *a1 ^ v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 676339932;
  v5 = v4 - 676339932 < 0;
  v7 = 676339932 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x1029)) + 8 * ((((v3 - 1940999060) >= (4 * v7)) * (((v2 - 4612) | 0x590) - 1462)) ^ v2) - 4))();
}

uint64_t sub_1968F9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, void *a26, int *a27)
{
  v34 = (-(((a11 ^ a13 & 0xAA042569 ^ 0xFFFFFFFE) + v28) ^ (~a11 + v28)) | (~a11 + v28)) >= 0;
  *v30 = 0;
  v35 = 449 * (a13 & 0xAA042569 ^ 3);
  v36 = ((v27 ^ (v27 >> 11)) << (-63 * (a13 & 0x69 ^ 3) - 123)) & 0x9D2C5680 ^ v27 ^ (v27 >> 11);
  v37 = (v32 + (((v35 + 1282) | 0xA) ^ 0xFFFFF771) + a23);
  v38 = -1555358357 * ((v37 ^ *(*a26 + (*a27 & 0xFFFFFFFFC9F92FDCLL))) & 0x7FFFFFFF);
  v39 = -1555358357 * ((v38 >> (((v35 - 110) | 0xC2) ^ 0xC6)) ^ v38);
  LODWORD(v39) = *(*(v33 + 8 * (v35 ^ 0x1D1)) + (v39 >> 24) - 8) ^ ((v34 - (a13 & 0xAA042569) + 470 - v29 + v36) << 15) & 0xEFC60000 ^ v36 ^ ((((v34 - (a13 & 0xAA042569) + 470 - v29 + v36) << 15) & 0xEFC60000 ^ v36) >> 18) ^ *(*(v33 + 8 * (v35 ^ 0x212)) + (v39 >> 24) + 1 - 12) ^ *(*(v33 + 8 * (v35 ^ 0x1E4)) + (v39 >> 24) + 1 - 8) ^ v39 ^ (101 * (v39 >> 24));
  *v37 = v39;
  return (*(v31 + 8 * (v35 ^ (8 * (a23 != (v39 != 236))))))();
}

uint64_t sub_1968F9394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v34 - 132) = 0;
  v36 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v33 - 5710) - 4;
  v37 = v36[*(v34 - 128) ^ 0x26];
  *(v34 - 188) = v37;
  v38 = v33;
  v39 = (v37 ^ 0x17) << 24;
  v40 = *(v34 - 127);
  *(v34 - 176) = v32;
  v41 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v38 ^ 0x1676u)) - 8;
  v42 = v38;
  LODWORD(v40) = (v40 - ((v38 ^ 0xFFFFEA5E) & (2 * v40)) - 116) ^ v41[v40 ^ 0x7E];
  *(v34 - 180) = v40;
  v43 = v39 & 0xFF00FFFF | ((v40 ^ 0x94) << 16);
  v44 = *(v34 - 125);
  v45 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v38 - 5458);
  v46 = *(v45 + (*(v34 - 126) ^ 0x37));
  *(v34 - 224) = v46;
  v47 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v42 ^ 0x1724u)) - 4;
  v48 = ((v44 ^ 0x3A) + ~(2 * (((v44 ^ 0x3A) + 8) & 0x47 ^ v44 & 1)) + 79) ^ v47[v44 ^ 0xBC];
  v519 = v48;
  LODWORD(v44) = v36[(((*(v34 - 124) - (*(v34 - 124) ^ 7)) ^ 0xFFFFFFFE) + *(v34 - 124)) ^ 0x99];
  *(v34 - 184) = v44;
  LODWORD(v46) = v43 | ((v46 ^ 0x68) << 8);
  v49 = (*(v34 - 123) + (~(2 * *(v34 - 123)) | 0xFFFFFFE7) - 115) ^ v41[*(v34 - 123) ^ 0x63];
  *(v34 - 192) = v49;
  v50 = ((*(v34 - 121) ^ 0xA) - ((2 * (*(v34 - 121) ^ 0xA) + 16) & 0x8C) + 78) ^ v47[*(v34 - 121) ^ 0x8CLL];
  v521 = v50;
  v51 = ((v44 ^ 0xFFFFFFC1) << 24) | ((v49 ^ 0x63) << 16) | ((*(v45 + (*(v34 - 122) ^ 0xB3)) ^ 0x82) << 8);
  LODWORD(v44) = (*(v34 - 119) - ((2 * *(v34 - 119)) & 0x18) - 116) ^ v41[*(v34 - 119) ^ 0xC6];
  v52 = v36[*(v34 - 120) ^ 0xELL];
  *(v34 - 200) = v44;
  *(v34 - 196) = v52;
  v53 = ((v52 ^ 0x6F) << 24) | ((v44 ^ 0xB) << 16);
  v54 = ((*(v34 - 117) ^ 0x6B) - 2 * (((*(v34 - 117) ^ 0x6B) + 8) & 0x47 ^ (*(v34 - 117) ^ 0x6B) & 1) + 78) ^ v47[*(v34 - 117) ^ 0xEDLL];
  v525 = v54;
  LODWORD(v55) = __ROR4__(*(v34 - 116) ^ 0x62, 5) ^ 0x809D82C0;
  HIDWORD(v55) = v55;
  v56 = (*(v34 - 115) - ((2 * *(v34 - 115)) & 0x18) - 116) ^ v41[*(v34 - 115) ^ 0xD6];
  LODWORD(v36) = (v36[(v55 >> 27) ^ 0x13B05889] ^ 0xC0) << 24;
  LOBYTE(v49) = (*(v34 - 115) - ((2 * *(v34 - 115)) & 0x18) - 116) ^ v41[*(v34 - 115) ^ 0xD6];
  *(v34 - 232) = v56;
  LODWORD(v36) = v36 & 0xFF00FFFF | ((v56 ^ 0x15) << 16);
  v57 = *(v45 + (*(v34 - 118) ^ 0x8ELL));
  v523 = *(v45 + (*(v34 - 118) ^ 0x8ELL));
  LOBYTE(v56) = ((*(v34 - 113) ^ 0xCA) - ((2 * (*(v34 - 113) ^ 0xCA) + 16) & 0x8C) + 78) ^ v47[*(v34 - 113) ^ 0x4CLL];
  LODWORD(v47) = (v56 | ((*(v45 + (*(v34 - 114) ^ 0x89)) ^ 0xD0) << 8) | v36) ^ 0x5A0D536;
  v58 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v42 ^ 0x1775u));
  LODWORD(v44) = *(v58 + 4 * (v49 ^ 0xBEu));
  v59 = ((1545758264 * (v44 ^ 0xD0C5A43)) & 0x68A4DD88 ^ (v44 ^ 0xD0C5A43) & 0x68A4DD8F | ((1545758264 * (v44 ^ 0xD0C5A43)) ^ v44 ^ 0xD0C5A43) & 0x975B2270) - 2 * ((((1545758264 * (v44 ^ 0xD0C5A43)) & 0x68A4DD88 ^ (v44 ^ 0xD0C5A43) & 0x68A4DD8F) & 0x1516AD1F | ((1545758264 * (v44 ^ 0xD0C5A43)) ^ v44 ^ 0xD0C5A43) & 0x15122010) ^ v44 & 4);
  v60 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v42 ^ 0x1530u));
  v61 = v47 >> 24;
  *(v34 - 240) = v61;
  v62 = *(v60 + (v61 ^ 0xC7)) ^ 0x42 ^ (-60 * (*(v60 + (v61 ^ 0xC7)) ^ 0x2F));
  *(v34 - 144) = v42;
  v63 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v42 - 5700);
  v64 = *(v63 + 4 * (v56 ^ 0x29u)) ^ 0xC1C6511A;
  LODWORD(v46) = (v46 & 0xFFFFFF00 | v48) ^ v64 ^ (v64 >> 1) & 0x59495B37;
  v65 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v42 ^ 0x1698u)) - 12;
  *(v34 - 248) = v47;
  *(v34 - 244) = BYTE1(v47);
  v503 = *&v65[4 * (BYTE1(v47) ^ 0x45)] ^ v46 ^ (v59 + 353807643);
  *(v34 - 252) = v57 ^ 0xAC;
  LODWORD(v41) = v503 ^ v62;
  v494 = v503 ^ v62;
  v501 = v41 ^ (v51 & 0xFFFFFF00 | v50);
  v66 = v501 ^ (v53 & 0xFFFFFF00 | v54 | ((v57 ^ 0xAC) << 8));
  LODWORD(v61) = v66 ^ v47 ^ 0x1F18268D;
  v514 = BYTE2(v61);
  v67 = *(v58 + 4 * (BYTE2(v61) ^ 0xBu)) ^ 0xD0C5A43;
  v516 = BYTE3(v61);
  v511 = BYTE1(v61);
  v506 = v61;
  v508 = (v503 ^ v62 ^ v50 ^ v54 ^ v47);
  v68 = *(v63 + 4 * (v508 ^ 0x92u)) ^ 0xC1C6511A;
  v469 = v67 ^ *&v65[4 * (BYTE1(v61) ^ 0x45)] ^ v68 ^ (v68 >> 1) & 0x59495B37 ^ v41 ^ (1545758264 * v67 - ((944032880 * v67) & 0x2A2D5A30) + 353807643);
  v472 = v469 ^ *(v60 + (v516 ^ 0xC7)) ^ 0x42 ^ (-60 * (*(v60 + (v516 ^ 0xC7)) ^ 0x2F));
  v477 = v472 ^ 5 ^ v501;
  v497 = v66;
  v482 = v477 ^ 0x7106DB07 ^ v66;
  LODWORD(v41) = v482 ^ v61 ^ 0xEA89ADE5;
  v490 = BYTE2(v41);
  v69 = *(v58 + 4 * (BYTE2(v41) ^ 0xBu)) ^ 0xD0C5A43;
  v484 = BYTE1(v41);
  v487 = (v482 ^ v61);
  v70 = *(v63 + 4 * (v487 ^ 0xFAu));
  v489 = v41 >> 24;
  LODWORD(v61) = v69 ^ *&v65[4 * (BYTE1(v41) ^ 0x45)] ^ v70 ^ 0xC1C6511A ^ ((v70 ^ 0xC1C6511A) >> 1) & 0x59495B37 ^ (1545758264 * v69 - ((944032880 * v69) & 0x2A2D5A30) + 353807643) ^ ((-60 * (*(v60 + (v489 ^ 0xC7)) ^ 0x6F)) ^ *(v60 + (v489 ^ 0xC7)) ^ 0x6F) ^ v472 ^ 5;
  v442 = v61 ^ v66;
  v479 = v41;
  LODWORD(v41) = ((v41 | v442 ^ 0xEEC0EBFD) - (v41 & (v442 ^ 0xEEC0EBFD) & 0x40000000)) ^ v41 & (v442 ^ 0xEEC0EBFD) & 0xBFFFFFFF;
  v459 = BYTE2(v41);
  v71 = *(v58 + 4 * (BYTE2(v41) ^ 0xBu)) ^ 0xD0C5A43;
  v72 = 1545758264 * v71 - ((944032880 * v71) & 0x2A2D5A30);
  v458 = v41 >> 24;
  LOBYTE(v69) = *(v60 + (v458 ^ 0xC7)) ^ (-60 * (*(v60 + (v458 ^ 0xC7)) ^ 0x6F) - ((-120 * (*(v60 + (v458 ^ 0xC7)) ^ 0x6F)) & 0xB0) + 90);
  v451 = BYTE1(v41);
  v73 = v71 ^ *&v65[4 * (BYTE1(v41) ^ 0x45)];
  v447 = v41;
  v448 = v41;
  v74 = *(v63 + 4 * (v41 ^ 0x1Fu)) ^ 0xC1C6511A;
  *(v34 - 148) = v61;
  v75 = v73 ^ v74 ^ (v74 >> 1) & 0x59495B37 ^ v61 ^ (v72 + 353807643);
  *(v34 - 156) = v75;
  v433 = v61 ^ v477 ^ 0x7106DB07;
  v440 = v61 ^ v66 ^ 0x1F18265E;
  v417 = v75 ^ v69 ^ 0x18;
  LODWORD(v36) = v417 ^ 0xFC39E40D ^ v433;
  *(v34 - 136) = v36;
  v76 = v36 ^ 0x97DDD0B9;
  LODWORD(v36) = v36 ^ 0x97DDD0B9 ^ v440;
  *(v34 - 152) = v36;
  LODWORD(v61) = v36 ^ 0x98E4344A ^ v41;
  v428 = BYTE2(v61);
  v77 = *(v58 + 4 * (BYTE2(v61) ^ 0xBu));
  v517 = (v51 >> 8) ^ 0x944634;
  v78 = ((2 * v77) & 0xD61C279A ^ 0x3BFBFCE7) - 787456676 + (((v77 ^ 0xA83750D3) + 1472769837) ^ ((v77 ^ 0xB96478B4) + 1184597836) ^ ((v77 ^ 0x775161E9) - 2001822185));
  v79 = v61 ^ 0x49000000;
  v426 = (v61 ^ 0x49000000) >> 24;
  v421 = v61;
  v423 = BYTE1(v61);
  v415 = v36 ^ 0x4A ^ v41;
  v80 = *(v63 + 4 * (v415 ^ 0x1Fu)) ^ 0xC1C6511A;
  v430 = v80 ^ *&v65[4 * (BYTE1(v61) ^ 0x45)] ^ (v80 >> 1) & 0x59495B37 ^ v78 ^ *(v60 + (v426 ^ 0xC7)) ^ 0x42 ^ (-60 * (*(v60 + (v426 ^ 0xC7)) ^ 0x2F)) ^ v417 ^ 0xFC39E40D ^ (1545758264 * v78 - ((944032880 * v78) & 0x2A2D5A30) + 353807643);
  v404 = v76;
  LODWORD(v61) = v430 ^ 0x99494635 ^ v76;
  *(v34 - 172) = v61;
  LODWORD(v61) = v61 ^ v36 ^ 0x98E4344A;
  v397 = v61 ^ 0xB49496A1;
  v391 = v61;
  LODWORD(v41) = v61 ^ 0xB49496A1 ^ v79;
  v407 = BYTE2(v41);
  v81 = *(v58 + 4 * (BYTE2(v41) ^ 0xBu)) ^ 0xD0C5A43;
  v403 = (v41 ^ 0xD0000000) >> 24;
  v399 = v41;
  v400 = BYTE1(v41);
  v425 = v61 ^ 0xA1 ^ v79;
  v82 = *(v63 + 4 * (v425 ^ 0x1Fu)) ^ 0xC1C6511A;
  v83 = v81 ^ *&v65[4 * (BYTE1(v41) ^ 0x45)] ^ v82 ^ (v82 >> 1) & 0x59495B37 ^ (1545758264 * v81 - ((944032880 * v81) & 0x2A2D5A30) + 353807643) ^ *(v60 + (v403 ^ 0xC7)) ^ 0x42 ^ (-60 * (*(v60 + (v403 ^ 0xC7)) ^ 0x2F));
  v456 = v83 ^ v430 ^ 0x99494635;
  v386 = v83 ^ v76 ^ 0xB49496A1;
  v444 = v386 ^ v61;
  LODWORD(v383) = v386 ^ v61 ^ 0x73CF9E9;
  LODWORD(v385) = v383 ^ v41 ^ 0xD0000000;
  v435 = ((v385 ^ 0xD8494635) >> 16);
  v84 = *(v58 + 4 * (v435 ^ 0xBu)) ^ 0xD0C5A43;
  v387 = (v385 ^ 0x31494635) >> 24;
  v85 = *(v60 + (v387 ^ 0xC7));
  HIDWORD(v55) = v85 ^ 0x6F;
  LODWORD(v55) = v85 << 24;
  v86 = (v55 >> 31) ^ 0xFFFFFFC5 ^ ((-120 * (v85 ^ 0x6F)) | ((-60 * (v85 ^ 0x6Fu)) >> 7) & 1);
  HIDWORD(v384) = ((v386 ^ v61 ^ 0xF9E9 ^ v41 ^ 0x4635) >> 8);
  v87 = *(v63 + 4 * ((v386 ^ v61) ^ 0xE9 ^ v41 ^ 0x2Au)) ^ 0xC1C6511A;
  v453 = v84 ^ *&v65[4 * (HIDWORD(v384) ^ 0x45)] ^ v87 ^ (v87 >> 1) & 0x59495B37 ^ v456 ^ (1545758264 * v84 - ((944032880 * v84) & 0x2A2D5A30) + 353807643);
  v467 = v453 ^ ((v86 >> 1) | (v86 << 7)) ^ 0xE2;
  v88 = v467 ^ 0x4CE12950 ^ v83 ^ v76 ^ 0xE675BFDC;
  v89 = v83 ^ v76 ^ 0xE675BFDC;
  v90 = v88 ^ v383 ^ v385 ^ 0x31494635;
  LODWORD(v381) = v88 ^ v383;
  HIDWORD(v381) = v89;
  v389 = BYTE2(v90);
  v91 = *(v58 + 4 * (BYTE2(v90) ^ 0xBu)) ^ 0xD0C5A43;
  v92 = 1545758264 * v91 - ((944032880 * v91) & 0x2A2D5A30);
  v388 = (v90 ^ 0xAD000000) >> 24;
  HIDWORD(v383) = BYTE1(v90);
  LODWORD(v382) = v90;
  HIDWORD(v382) = (v88 ^ v386 ^ v61 ^ 0xE9 ^ v386 ^ v61 ^ 0xE9 ^ v41 ^ 0x35);
  v93 = v91 ^ *&v65[4 * (BYTE1(v90) ^ 0x45)];
  v94 = *(v63 + 4 * (HIDWORD(v382) ^ 0x1Fu)) ^ 0xC1C6511A;
  v95 = v93 ^ v94 ^ (v94 >> 1) & 0x59495B37 ^ (v92 + 353807643) ^ *(v60 + (v388 ^ 0xC7)) ^ 0x42 ^ (-60 * (*(v60 + (v388 ^ 0xC7)) ^ 0x2F));
  LODWORD(v47) = v88 ^ v383 ^ 0xF7000000;
  LODWORD(v61) = v467 ^ 0x4CE12950 ^ v95;
  *(v34 - 168) = v61;
  v96 = v95 ^ v89;
  v97 = v95 ^ v89 ^ 0x91F66D49;
  v98 = v47 ^ v97;
  LODWORD(v46) = v47 ^ v97 ^ v90 ^ 0xAD000000 ^ 0x42BF2B7C;
  v402 = BYTE2(v46);
  v99 = *(v58 + 4 * (BYTE2(v46) ^ 0xBu)) ^ 0xD0C5A43;
  v396 = BYTE3(v46);
  v100 = *(v60 + (v396 ^ 0xC7)) ^ 0x6F;
  *(v34 - 216) = v35;
  LODWORD(v36) = ((v88 ^ v383 ^ v97 ^ v90 ^ 0x2B7C) >> 8);
  *(v34 - 140) = v36;
  v394 = (v88 ^ v383 ^ v97 ^ v90);
  v101 = *(v63 + 4 * (v394 ^ 0x63u)) ^ 0xC1C6511A;
  v102 = v99 ^ *&v65[4 * (v36 ^ 0x45)] ^ v101 ^ (v101 >> 1) & 0x59495B37 ^ (1545758264 * v99 - ((944032880 * v99) & 0x2A2D5A30) + 353807643) ^ ((-60 * v100) ^ v100) ^ v61;
  v103 = v102 ^ 0x76A86F65 ^ v47;
  v474 = v103 ^ 0x41494635;
  LODWORD(v46) = v103 ^ 0x41494635 ^ v46;
  v104 = ((v46 ^ 0x57A86F48) >> 16);
  LODWORD(v61) = *(v58 + 4 * (v104 ^ 0xBu)) ^ 0xD0C5A43;
  v105 = ((v46 ^ 0x6F48) >> 8);
  LODWORD(v63) = *(v63 + 4 * (v46 ^ 0x57u)) ^ 0xC1C6511A;
  v106 = (v46 ^ 0x57A86F48) >> 24;
  LODWORD(v61) = v61 ^ *&v65[4 * (v105 ^ 0x45)] ^ v63 ^ (v63 >> 1) & 0x59495B37 ^ (1545758264 * v61 - ((944032880 * v61) & 0x2A2D5A30) + 353807643) ^ ((-60 * (*(v60 + (v106 ^ 0xC7)) ^ 0x6F)) ^ *(v60 + (v106 ^ 0xC7)) ^ 0x6F);
  v462 = v61 ^ v102 ^ 0x76A86F65;
  v464 = v61 ^ v97;
  LODWORD(v61) = ((v102 ^ 0x4635) >> 8);
  LODWORD(v41) = (((v61 ^ 0x8F) - (v61 ^ 0xFF5C2FBA)) ^ 0xFFFFFFFE) + (v61 ^ 0x8F);
  LODWORD(v47) = v41 - ((2 * v41) & 0xF0381D38);
  v107 = *(v34 - 144);
  v108 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v107 - 5380) - 8;
  v109 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v107 - 5440) - 12;
  v110 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v107 ^ 0x1543u)) - 8;
  LODWORD(v47) = *&v109[4 * (v61 ^ 0x32)] ^ (*&v108[4 * (v102 ^ 0xA4)] - 1436270327) ^ (*&v110[4 * (((v102 ^ 0x99494635) >> 16) ^ 0x35)] - 1121495748) ^ (v47 + 2025770652);
  v111 = v47 - ((2 * v47) & 0x103F64E6);
  v112 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v107 - 5625);
  *(v34 - 228) = (v111 - 2011188621) ^ *(v112 + 4 * (HIBYTE(v102) ^ 0x30));
  LODWORD(v61) = v102 ^ 0x76A86F65 ^ v97;
  v113 = (*&v108[4 * (v61 ^ 0xA)] - 1436270327) ^ ((BYTE1(v61) ^ 0x36) - ((2 * ((v61 >> 8) ^ 0x545E36)) & 0x138) + 2025770652) ^ *&v109[4 * (BYTE1(v61) ^ 0x8B)] ^ (*&v110[4 * (BYTE2(v61) ^ 0xAE)] - 1121495748);
  v411 = v103;
  LODWORD(v36) = *&v109[4 * (BYTE1(v103) ^ 0x39)] ^ ((BYTE1(v103) ^ 0x82) - ((2 * ((v103 >> 8) ^ 0xC782)) & 0x138) + 2025770652) ^ (*&v108[4 * (v103 ^ 0xF8)] - 1436270327) ^ (*&v110[4 * (((v103 ^ 0xD0BF2B7C) >> 16) ^ 0x28)] - 1121495748);
  v438 = v46 ^ 0x57A86F48;
  v419 = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (v105 ^ 0x9A)] ^ (v105 - (((v46 ^ 0x57A86F48) >> 7) & 0x138) + 2025770652) ^ (*&v110[4 * (v104 ^ 0x39)] - 1121495748) ^ (*&v108[4 * ((v46 ^ 0x48 | v46 & 0x26) ^ 0x8A)] - 1436270327);
  v414 = v36 - ((2 * v36) & 0x103F64E6);
  v114 = *(v34 - 168);
  LODWORD(v36) = *&v109[4 * (BYTE1(v114) ^ 0x54)] ^ ((BYTE1(v114) ^ 0xEF) - ((2 * ((v114 >> 8) ^ 0x6206EF)) & 0x138) + 2025770652) ^ (*&v108[4 * (v114 ^ 0x4C)] - 1436270327) ^ (*&v110[4 * (BYTE2(v114) ^ 0x56)] - 1121495748);
  v410 = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v46) = *&v109[4 * (BYTE1(v96) ^ 0xE8)] ^ ((BYTE1(v96) ^ 0x53) + 2025770653 + (~(2 * ((v96 >> 8) ^ 0x8D1753)) | 0xFFFFFEC7)) ^ (*&v108[4 * (v96 ^ 0x37)] - 1436270327) ^ (*&v110[4 * (((v96 ^ 0xD0F66D49) >> 16) ^ 0xB1)] - 1121495748);
  v499 = (v46 - ((2 * v46) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v96) ^ 0x7D));
  LODWORD(v46) = *&v109[4 * (BYTE1(v98) ^ 0xC0)] ^ ((BYTE1(v98) ^ 0x7B) - ((2 * ((v98 >> 8) ^ 0xBA487B)) & 0x138) + 2025770652) ^ (*&v108[4 * (v98 ^ 0xA7)] - 1436270327) ^ (*&v110[4 * (BYTE2(v98) ^ 0x18)] - 1121495748);
  v493 = (v46 - ((2 * v46) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v98) ^ 0x4A));
  v115 = *&v108[4 * (v394 ^ 0xFE)];
  v395 = v396 ^ 0xF2;
  LODWORD(v46) = (*&v110[4 * (v402 ^ 0x79)] - 1121495748) ^ *&v109[4 * (*(v34 - 140) ^ 3 ^ -(*(v34 - 140) ^ 3) ^ (189 - (*(v34 - 140) ^ 0xBE))) + 756] ^ (v115 - ((2 * v115 + 1422426642) & 0xF17D9D38) + 589500325);
  HIDWORD(v401) = v46 - ((2 * v46) & 0x103F64E6);
  v392 = HIBYTE(v453) ^ 0x48;
  LODWORD(v46) = *&v109[4 * (BYTE1(v453) ^ 0xF7)] ^ ((BYTE1(v453) ^ 0x4C) - ((2 * ((v453 >> 8) ^ 0xB88E4C)) & 0x138) + 2025770652) ^ (*&v110[4 * (BYTE2(v453) ^ 0xDE)] - 1121495748) ^ (*&v108[4 * (v467 ^ 0x73)] - 1436270327);
  LODWORD(v396) = v46 - ((2 * v46) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(v88) ^ 0xAF)] ^ ((BYTE1(v88) ^ 0x14) + 2025770653 + ~(2 * (((v88 >> 8) ^ 0x1A3514) & 0x9D ^ (v88 >> 8) & 1))) ^ (*&v108[4 * (v88 ^ 0x28)] - 1436270327) ^ (*&v110[4 * (BYTE2(v88) ^ 0x65)] - 1121495748);
  v454 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v88) ^ 0xEA));
  LODWORD(v36) = *&v109[4 * (BYTE1(v381) ^ 0x55)] ^ ((BYTE1(v381) ^ 0xEE) - ((2 * ((v381 >> 8) ^ 0x210DEE)) & 0x138) + 2025770652) ^ (*&v108[4 * (v381 ^ 0xFB)] - 1436270327) ^ (*&v110[4 * (BYTE2(v381) ^ 0x5D)] - 1121495748);
  v468 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (((v88 ^ v383) >> 24) ^ 0xD1));
  LODWORD(v36) = *&v109[4 * (HIDWORD(v383) ^ 5)] ^ (HIDWORD(v383) - ((v382 >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (HIDWORD(v382) ^ 0xC6)] - 1436270327) ^ (*&v110[4 * (v389 ^ 0x83)] - 1121495748);
  LODWORD(v390) = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(v456) ^ 0xE0)] ^ ((BYTE1(v456) ^ 0x29) - ((2 * ((v456 >> 8) ^ 0xCBE129)) & 0x138) + 2025770652) ^ (*&v108[4 * (v456 ^ 0x47)] - 1436270327) ^ (*&v110[4 * (BYTE2(v456) ^ 0xA6)] - 1121495748);
  v457 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v456) ^ 0x46));
  LODWORD(v36) = *&v109[4 * (BYTE5(v381) ^ 0x41)] ^ (BYTE5(v381) - ((HIDWORD(v381) >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (BYTE4(v381) ^ 0x27)] - 1436270327) ^ (*&v110[4 * (BYTE2(v386) ^ 0xAA)] - 1121495748);
  LODWORD(v46) = ~((HIDWORD(v381) >> 21) & 0xF8 | (HIDWORD(v381) >> 29));
  HIDWORD(v383) = (v46 >> 3) | (32 * v46);
  HIDWORD(v385) = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(v444) ^ 0x88)] ^ ((BYTE1(v444) ^ 0x33) - ((2 * ((v444 >> 8) ^ 0xBB1F33)) & 0x138) + 2025770652) ^ (*&v108[4 * (v383 ^ 0x6B)] - 1436270327) ^ (*&v110[4 * (BYTE2(v383) ^ 0x73)] - 1121495748);
  v445 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v444) ^ 0x4B));
  LODWORD(v36) = *&v109[4 * (HIDWORD(v384) ^ 0x81)] ^ (HIDWORD(v384) - (((v385 ^ 0xD8494635) >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (v385 ^ 1)] - 1436270327) ^ (*&v110[4 * (v435 ^ 0xD5)] - 1121495748);
  v436 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (v387 ^ 0xA5));
  LODWORD(v36) = *&v109[4 * (BYTE1(v430) ^ 0x9D)] ^ ((BYTE1(v430) ^ 0x20) - ((v430 >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (v430 ^ 0x25)] - 1436270327) ^ (*&v110[4 * (BYTE2(v430) ^ 0xA7)] - 1121495748);
  v116 = *(v34 - 172);
  v117 = (((v116 ^ 0xEC) - (v116 ^ 0xFE)) ^ 0xFFFFFFFC) + (v116 ^ 0xEC);
  v431 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v430) ^ 0x61));
  LODWORD(v36) = ((v116 ^ 0xC7EC) >> 8);
  LODWORD(v46) = v36 - (((v116 ^ 0x9C70C7EC) >> 7) & 0x138);
  v118 = v36 ^ 0xFF5C2F33;
  LODWORD(v36) = *&v109[4 * (v36 ^ 0xBB)];
  LODWORD(v46) = (-2025770652 - (((v36 ^ 0x55F4EC26) - 1442114598) ^ ((v36 ^ 0xDFF8AAF6) + 537351434) ^ ((v36 ^ 0xF2B2884C) + 223180724))) ^ (v118 - ((v46 + 2025770652) ^ 0xFF5C2F33 ^ v36));
  LODWORD(v36) = (*&v110[4 * (BYTE2(*(v34 - 172)) ^ 0x20)] - 1121495748) ^ (*&v108[4 * (v117 ^ 0x1F)] - 1436270327) ^ (((v46 - ((2 * v46) & 0xF17D9D38) + 2025770652) ^ v36) + v118);
  LODWORD(v46) = (v397 ^ -v397 ^ (1129459573 - (v391 ^ 0xF7C6B9D4))) + 1129459573;
  LODWORD(v398) = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(v46) ^ 0xBB)] ^ (BYTE1(v46) - ((v46 >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (v46 ^ 0xD)] - 1436270327) ^ (*&v110[4 * (BYTE2(v46) ^ 0x50)] - 1121495748);
  v119 = v425 ^ 0x3D;
  HIDWORD(v424) = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (BYTE3(v46) ^ 0xF0));
  LODWORD(v36) = *&v109[4 * (v400 ^ 0x5E)] ^ (v400 - ((v399 >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * v119] - 1436270327);
  LODWORD(v401) = BYTE3(v61) ^ 0x2D;
  LODWORD(v46) = *&v110[4 * (v407 ^ 0x2D)];
  v408 = (v36 ^ (v46 - 1121495748)) - ((2 * (v36 ^ (v46 - 1121495748))) & 0x103F64E6);
  LODWORD(v61) = *(v34 - 156);
  LODWORD(v36) = *&v109[4 * (BYTE1(v61) ^ 0x7D)] ^ ((BYTE1(v61) ^ 0xC6) - ((2 * ((v61 >> 8) ^ 0xB32AC6)) & 0x138) + 2025770652) ^ (*&v110[4 * (BYTE2(v61) ^ 0x7A)] - 1121495748) ^ (*&v108[4 * (v417 ^ 0xFB)] - 1436270327);
  v418 = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(*(v34 - 136)) ^ 0x3B)] ^ ((BYTE1(*(v34 - 136)) ^ 0x80) - ((2 * ((*(v34 - 136) >> 8) ^ 0xC68F80)) & 0x138) + 2025770652) ^ (*&v108[4 * (v404 ^ 0x32)] - 1436270327) ^ (*&v110[4 * (BYTE2(v404) ^ 2)] - 1121495748);
  v405 = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v61) = *(v34 - 152);
  LODWORD(v36) = *&v109[4 * (BYTE1(v61) ^ 0xD6)] ^ ((BYTE1(v61) ^ 0x6D) - ((2 * ((v61 >> 8) ^ 0xCEAA6D)) & 0x138) + 2025770652) ^ (*&v108[4 * (v61 ^ 4)] - 1436270327) ^ (*&v110[4 * (((v61 ^ 0x4494618) >> 16) ^ 0xB3)] - 1121495748);
  HIDWORD(v398) = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (v423 ^ 0x31)] ^ (v423 - ((v421 >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (v415 ^ 0x3B)] - 1436270327) ^ (*&v110[4 * (v428 ^ 0xB0)] - 1121495748);
  LODWORD(v426) = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (v426 ^ 0x79));
  v120 = *(v34 - 148);
  LODWORD(v36) = *&v108[4 * (v120 ^ 2 ^ -(v120 ^ 2) ^ (31 - (v120 ^ 0x1D))) + 124];
  v429 = BYTE1(v120);
  LODWORD(v36) = (*&v110[4 * (BYTE2(v120) ^ 0x8D)] - 1121495748) ^ *&v109[4 * (BYTE1(v120) ^ 0x75)] ^ (v36 - ((2 * v36 + 1422426642) & 0xF17D9D38) + 589500325);
  LODWORD(v424) = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(v433) ^ 0xC4)] ^ ((BYTE1(v433) ^ 0x46) - ((2 * ((v433 >> 8) ^ 0x44946)) & 0x138) + 2025770652) ^ (*&v108[4 * (v433 ^ 0x1C)] - 1436270327) ^ (*&v110[4 * (BYTE2(v433) ^ 0x53)] - 1121495748);
  v422 = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(v442) ^ 0x4C)] ^ ((BYTE1(v442) ^ 0xF7) - ((2 * ((v442 >> 8) ^ 0x2EADF7)) & 0x138) + 2025770652) ^ (*&v108[4 * (v440 ^ 8)] - 1436270327) ^ (*&v110[4 * (BYTE2(v440) ^ 0xE5)] - 1121495748);
  v443 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v442) ^ 0xDE));
  LODWORD(v36) = *&v109[4 * (v451 ^ 0xED)] ^ (v451 - ((v447 >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (v448 ^ 0x94)] - 1436270327) ^ (*&v110[4 * (v459 ^ 0xE3)] - 1121495748);
  v460 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (v458 ^ 0x85));
  v121 = HIBYTE(v469) ^ 0xAE;
  LODWORD(v36) = *&v109[4 * (BYTE1(v469) ^ 0xC2)] ^ ((BYTE1(v469) ^ 0x79) - ((2 * ((v469 >> 8) ^ 0x5E2779)) & 0x138) + 2025770652) ^ (*&v108[4 * (v472 ^ 0x89)] - 1436270327) ^ (*&v110[4 * (BYTE2(v469) ^ 0x77)] - 1121495748);
  v122 = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(v477) ^ 0x9E)] ^ ((BYTE1(v477) ^ 0x25) - ((2 * ((v477 >> 8) ^ 0x4C3E25)) & 0x138) + 2025770652) ^ (*&v108[4 * (v477 ^ 0x56)] - 1436270327) ^ (*&v110[4 * (BYTE2(v477) ^ 0xFB)] - 1121495748);
  v123 = v36 - ((2 * v36) & 0x103F64E6);
  LODWORD(v36) = *&v109[4 * (BYTE1(v482) ^ 0xE4)] ^ ((BYTE1(v482) ^ 0x5F) - 2 * (((v482 >> 8) ^ 0x45B05F) & 0xBC ^ (v482 >> 8) & 0x20) + 2025770652) ^ (*&v108[4 * (v482 ^ 0x3E)] - 1436270327) ^ (*&v110[4 * (BYTE2(v482) ^ 0xE0)] - 1121495748);
  v483 = (v36 - ((2 * v36) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v482) ^ 0xB5));
  LODWORD(v36) = *&v109[4 * (v484 ^ 0xEA)] ^ (v484 - ((v479 >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (v487 ^ 0x3F)] - 1436270327) ^ (*&v110[4 * (v490 ^ 5)] - 1121495748);
  LODWORD(v58) = v36 - ((2 * v36) & 0x103F64E6);
  v124 = HIBYTE(v503) ^ 0x84;
  LODWORD(v36) = *&v109[4 * (BYTE1(v503) ^ 0x76)] ^ ((BYTE1(v503) ^ 0xCB) - ((2 * ((v503 >> 8) ^ 0x7447CB)) & 0x138) + 2025770652) ^ (*&v108[4 * (v494 ^ 0xD1)] - 1436270327) ^ (*&v110[4 * (BYTE2(v503) ^ 0x17)] - 1121495748);
  v125 = *&v109[4 * (BYTE1(v501) ^ 0xD7)] ^ ((BYTE1(v501) ^ 0xDB) - ((2 * ((v501 >> 8) ^ 0x7106DB)) & 0x138) + 2025770652) ^ (*&v108[4 * (v501 ^ 3)] - 1436270327) ^ (*&v110[4 * (BYTE2(v501) ^ 0xBE)] - 1121495748);
  v495 = (v125 - ((2 * v125) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v501) ^ 0xFB));
  v126 = *&v109[4 * (((v497 ^ 0x4F1) >> 8) ^ 0xBB)] ^ (((v497 ^ 0x4F1) >> 8) - (((v497 ^ 0xBD6A04F1) >> 7) & 0x138) + 2025770652) ^ (*&v108[4 * (v497 ^ 0xFC)] - 1436270327) ^ (*&v110[4 * (((v497 ^ 0xBD6A04F1) >> 16) ^ 0x50)] - 1121495748);
  LODWORD(v108) = *&v108[4 * (v508 ^ 0x14)];
  v502 = (v126 - ((2 * v126) & 0x103F64E6) - 2011188621) ^ *(v112 + 4 * (HIBYTE(v497) ^ 0x4D));
  LODWORD(v109) = *&v109[4 * (v511 ^ 0x86)];
  LODWORD(v61) = *&v110[4 * (v514 ^ 0x6E)];
  v515 = *(v112 + 4 * v401);
  v412 = *(v112 + 4 * (HIBYTE(v411) ^ 0xF0));
  LODWORD(v65) = v511 - ((v506 >> 7) & 0x138) + 2025770652;
  v491 = *(v112 + 4 * (v106 ^ 0xCF));
  *(v34 - 168) = *(v112 + 4 * (HIBYTE(v114) ^ 0xE5));
  v512 = *(v112 + 4 * v395);
  v507 = *(v112 + 4 * v392);
  v509 = *(v112 + 4 * (v388 ^ 0x9F));
  v504 = *(v112 + 4 * (BYTE4(v383) ^ 0x53u));
  LODWORD(v401) = *(v112 + 4 * (HIBYTE(*(v34 - 172)) ^ 0x6Cu));
  *(v34 - 172) = *(v112 + 4 * (v403 ^ 0x6A));
  *(v34 - 156) = *(v112 + 4 * (HIBYTE(*(v34 - 156)) ^ 0x43u));
  v480 = *(v112 + 4 * (HIBYTE(*(v34 - 136)) ^ 0x36u));
  v473 = *(v112 + 4 * (HIBYTE(*(v34 - 152)) ^ 0x3Eu));
  v470 = *(v112 + 4 * (HIBYTE(*(v34 - 148)) ^ 0xD7u));
  LODWORD(v393) = *(v112 + 4 * (HIBYTE(v433) ^ 0xB0));
  *(v34 - 148) = *(v112 + 4 * v121);
  HIDWORD(v390) = *(v112 + 4 * (HIBYTE(v477) ^ 0xBC));
  LODWORD(v458) = *(v112 + 4 * (v489 ^ 0x4C));
  HIDWORD(v393) = *(v112 + 4 * v124);
  LODWORD(v388) = *(v112 + 4 * (v516 ^ 0x1C));
  LODWORD(v61) = (v109 ^ v65 ^ (v108 - 1436270327) ^ (v61 - 1121495748)) - ((2 * (v109 ^ v65 ^ (v108 - 1436270327) ^ (v61 - 1121495748))) & 0x103F64E6);
  LOBYTE(v109) = *(v34 - 188) ^ 0x5D;
  *(v34 - 152) = v113 - ((2 * v113) & 0x103F64E6) - 2011188621;
  v127 = v419 - 2011188621;
  LODWORD(v489) = v414 - 2011188621;
  *(v34 - 188) = v410 - 2011188621;
  *(v34 - 136) = HIDWORD(v385) - 2011188621;
  v485 = v408 - 2011188621;
  v478 = v418 - 2011188621;
  v449 = v405 - 2011188621;
  v452 = v424 - 2011188621;
  v128 = v422 - 2011188621;
  LODWORD(v516) = v122 - 2011188621;
  v129 = v36 - ((2 * v36) & 0x103F64E6) - 2011188621;
  v130 = *(v34 - 144);
  v131 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v130 ^ 0x1656u)) - 4;
  v132 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v130 - 5646) - 12;
  v133 = v61 - 2011188621;
  LODWORD(v36) = *&v132[4 * (*(v34 - 180) ^ 5)] ^ *&v131[4 * v109];
  v134 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v130 ^ 0x17C0u));
  v135 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v130 - 5882) - 4;
  v498 = v135[v519 ^ 0xDFLL] ^ *(v134 + 4 * (*(v34 - 224) ^ 0x20)) ^ 0x89 ^ ((v36 ^ 0x1BF13F20) - 2 * ((v36 ^ 0x1BF13F20) & 0xD48D7E9 ^ v36 & 8) - 1924605983);
  LOBYTE(v63) = *(v34 - 184) ^ 0x74;
  LOBYTE(v120) = *(v34 - 192) ^ 0xDA;
  *(v34 - 180) = v135[v521 ^ 0x24] ^ 0x5B;
  *(v34 - 192) = v135[v525 ^ 0x2CLL] ^ *(v134 + 4 * (v523 ^ 0x99)) ^ *&v131[4 * (*(v34 - 196) ^ 0x27)] ^ (*(v34 - 252) - ((2 * *(v34 - 252)) & 0xFFFFFFC3) - 1924605983) ^ *&v132[4 * (*(v34 - 200) ^ 0xF4)];
  v488 = v135[*(v34 - 248) ^ 0xD5] ^ *&v131[4 * (*(v34 - 240) ^ 0xFE)] ^ (*(v34 - 244) - ((*(v34 - 248) >> 7) & 0x1C2) - 1924605983) ^ *&v132[4 * (*(v34 - 232) ^ 0x83)] ^ *(v134 + 4 * (*(v34 - 244) ^ 0x7Fu));
  LODWORD(v106) = (v462 >> 8) ^ 0x527AEB;
  LODWORD(v108) = v106 & 0xE5 ^ (v462 >> 8) & 4;
  v136 = v462 ^ 0xC8;
  LODWORD(v110) = BYTE2(v464) ^ 0x49;
  LODWORD(v36) = v464 ^ v474;
  LODWORD(v109) = HIBYTE(v464) ^ 0xC7;
  v137 = (v464 >> 8) ^ 0xE6B6B0;
  v138 = v464 ^ 0xB0;
  LODWORD(v61) = v464 ^ v474 ^ v438;
  *(v34 - 184) = *&v131[4 * v63];
  v465 = *&v131[4 * (HIBYTE(v462) ^ 0x73)];
  LODWORD(v65) = *&v131[4 * v109];
  v475 = *&v131[4 * ((v36 >> 24) ^ 0x88)];
  LODWORD(v109) = *&v131[4 * (BYTE3(v61) ^ 0x76)];
  *(v34 - 196) = *&v132[4 * v120];
  v439 = *&v132[4 * (BYTE2(v462) ^ 0x85)];
  LODWORD(v131) = *&v132[4 * v110];
  v463 = *&v132[4 * (BYTE2(v36) ^ 0xD0)];
  v139 = *&v132[4 * ~((v61 ^ 0x57B84B46) >> 16)];
  *(v34 - 200) = *(v134 + 4 * (v517 ^ 0x7Fu));
  LODWORD(v427) = *(v134 + 4 * (v106 ^ 0x7Fu));
  LODWORD(v63) = *(v134 + 4 * (v137 ^ 0x7Fu));
  LODWORD(v424) = *(v134 + 4 * (BYTE1(v36) ^ 0x29u));
  v140 = ((v61 ^ 0x4B46) >> 8);
  v141 = *(v134 + 4 * (v140 ^ 0x7Fu));
  HIDWORD(v416) = v135[v136];
  LODWORD(v134) = v135[v138];
  LODWORD(v416) = v135[v36 ^ 0xA8];
  HIDWORD(v409) = v135[v61 ^ 0x38];
  v434 = v517 - ((2 * v517) & 0x1C2) - 1924605983;
  LODWORD(v420) = v106 - 2 * v108 - 1924605983;
  HIDWORD(v420) = (BYTE1(v36) ^ 0x56) - ((2 * ((v36 >> 8) ^ 0xA92F56)) & 0x1C2) - 1924605983;
  LODWORD(v409) = v109 ^ (v140 - (((v61 ^ 0x57B84B46) >> 7) & 0x1C2) - 1924605983) ^ v139 ^ v141;
  LODWORD(v109) = v393 ^ 0xF1A2B3AB ^ v128;
  LODWORD(v112) = (v123 - 2011188621) ^ HIDWORD(v390);
  LODWORD(v108) = v401 ^ 0xC3668BB7 ^ (v398 - 2011188621);
  LODWORD(v60) = v388 ^ 0x46BB7C37 ^ v133;
  *(v34 - 244) = v112;
  *(v34 - 240) = v127 ^ v412;
  LODWORD(v36) = (*(v34 - 228) ^ 0x9B30AE3D) - (v127 ^ v412 ^ 0xB9FCAAF5);
  *(v34 - 248) = v108;
  *(v34 - 232) = v109;
  v526 = HIDWORD(v393) ^ 0xC5C3B9EB ^ v129;
  *(v34 - 252) = v60;
  LODWORD(v36) = v36 - v108 - v109 - (v112 ^ 0x2EF62BEF) + v526 - v60;
  v142 = v36 - 1453305515;
  v524 = v507 ^ 0xB9BE8574 ^ (v396 - 2011188621);
  LODWORD(v36) = v36 + v524;
  LODWORD(v403) = v36 + 1803713845;
  v522 = v509 ^ 0x4D665D85 ^ (v390 - 2011188621);
  LODWORD(v36) = v36 + v522;
  v143 = v36 + 1023381904;
  HIDWORD(v406) = v36 - 2047661516;
  LODWORD(v413) = *(v34 - 140) ^ v512 ^ 0x9660A1B9 ^ (HIDWORD(v401) - 2011188621);
  LODWORD(v406) = v36 + 1023381904 - v413 + 2062739035;
  HIDWORD(v413) = (v137 - ((2 * v137) & 0x1C2) - 1924605983) ^ v65 ^ v131 ^ v63 ^ v134 ^ 0x82E862DD;
  v518 = v516 ^ *(v34 - 148);
  v144 = *(v34 - 102) ^ 0xECLL;
  v145 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v130 - 5450) - 4;
  LODWORD(v36) = v145[*(v34 - 105) ^ 0x61];
  LODWORD(v36) = v36 ^ ((v36 ^ 0xD6) >> 6) ^ ((v36 ^ 0xD6) >> 3) ^ 0x51;
  LODWORD(v135) = (~(2 * v36) | 0xFFFFFF71) + v36;
  v146 = *(v34 - 107) ^ 0xA9;
  v147 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v130 - 5395);
  LODWORD(v138) = *(v147 + 4 * (*(v34 - 111) ^ 0x10));
  v148 = v145[*(v34 - 109) ^ 0xA1] ^ 0xD6 ^ ((v145[*(v34 - 109) ^ 0xA1] ^ 0xD6) >> 6) ^ ((v145[*(v34 - 109) ^ 0xA1] ^ 0xD6) >> 3) ^ (v138 >> 2) & 0x807BD99 ^ 0x8031101;
  v149 = *(v147 + 4 * ((-(*(v34 - 103) ^ 0x57) ^ __ROR4__(((*(v34 - 103) ^ 0x57) << 20) ^ __ROR4__(181 - (*(v34 - 103) ^ 0xE2), 12) ^ 0x626D210F, 20) ^ 0xD210F626) + 181)) ^ 0xF3ED4C87;
  v150 = *(v147 + 4 * (*(v34 - 99) ^ 0x43)) ^ 0xF3ED4C87;
  LODWORD(v109) = (v150 >> 2) & 0x807BD99 ^ v145[*(v34 - 97) ^ 0xEDLL] ^ 0xD6 ^ ((v145[*(v34 - 97) ^ 0xEDLL] ^ 0xD6) >> 6) ^ ((v145[*(v34 - 97) ^ 0xEDLL] ^ 0xD6) >> 3);
  v151 = *(v34 - 104) ^ 0x73;
  v152 = v145[*(v34 - 101) ^ 0xACLL] ^ ((v145[*(v34 - 101) ^ 0xACLL] ^ 0xD6) >> 6) ^ ((v145[*(v34 - 101) ^ 0xACLL] ^ 0xD6) >> 3);
  v520 = v515 ^ 0x6D45B0D3 ^ *(v34 - 152);
  LODWORD(v63) = v520 + 1359001813 + v406;
  v153 = v495 ^ v63 ^ 0x837CBC50 ^ -(v495 ^ v63 ^ 0x837CBC50) ^ (-76098872 - (v495 ^ v63 ^ 0x780A6E98));
  v154 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v130 ^ 0x1757u)) - 12;
  LODWORD(v131) = v138 ^ *&v154[4 * (*(v34 - 110) ^ 0xC6)];
  v155 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v130 ^ 0x17F0u));
  LODWORD(v138) = *(v155 + 4 * (*(v34 - 112) ^ 0x91)) ^ 0x1BC72C77;
  *(v34 - 140) = v131 ^ v138 ^ (v148 - ((2 * v148) & 0x488E) + 1647322183) ^ (v138 >> 1) ^ (v138 >> 4) ^ 0x36E9A394;
  LODWORD(v36) = *&v154[4 * (*(v34 - 106) ^ 0x8ELL)] ^ *(v147 + 4 * v146) ^ 0xF3ED4C87 ^ ((*(v147 + 4 * v146) ^ 0xF3ED4C87) >> 2) & 0x807BD99;
  LODWORD(v146) = v135 + 1647322184;
  LODWORD(v135) = *(v155 + 4 * (*(v34 - 108) ^ 0x79)) ^ 0x1BC72C77;
  *(v34 - 148) = v36 ^ v135 ^ v146 ^ (v135 >> 1) ^ (v135 >> 4) ^ 0x557CDD53;
  LODWORD(v146) = *(v155 + 4 * (*(v34 - 100) ^ 0x1ELL)) ^ 0x1BC72C77;
  *(v34 - 144) = *&v154[4 * (*(v34 - 98) ^ 0x21)] ^ v150 ^ v146 ^ (v146 >> 1) ^ (v146 >> 4) ^ 0xF208C214 ^ (v109 - ((2 * v109) & 0x488E) + 1647322183);
  v510 = v155;
  v513 = v154;
  *(v34 - 152) = *&v154[4 * v144] ^ v149 ^ *(v155 + 4 * v151) ^ 0x1BC72C77 ^ (((v149 >> 2) & 0x807BD99) - ((v149 >> 1) & 0x4802) + 1647322183) ^ ((*(v155 + 4 * v151) ^ 0x1BC72C77u) >> 1) ^ ((*(v155 + 4 * v151) ^ 0x1BC72C77u) >> 4) ^ v152 ^ 0xB7714638;
  HIDWORD(v505) = HIDWORD(v409) ^ 0x89 ^ v409;
  LODWORD(v154) = v499 - ((2 * v499) & 0x394486E);
  LODWORD(v144) = v493 - ((2 * v493) & 0x394486E);
  LODWORD(v135) = v468 - ((2 * v468) & 0x394486E);
  LODWORD(v505) = *(v34 - 136) ^ v504;
  LODWORD(v106) = v443 - ((2 * v443) & 0x394486E);
  LODWORD(v136) = v460 - ((2 * v460) & 0x394486E);
  LODWORD(v61) = v483 - ((2 * v483) & 0x394486E);
  LODWORD(v151) = v153 - ((2 * v153 + 49128848) & 0x394486E) + 2101409535;
  LODWORD(v108) = v502 - ((2 * v502) & 0x394486E);
  v156 = v498 - ((2 * v498) & 0x4EA3B33A);
  HIDWORD(v500) = *(v34 - 192) ^ 0x89;
  LODWORD(v500) = v488 ^ 0x89;
  *(v34 - 136) = (((*(v34 - 176) ^ 0x1CCB3272) - 1584766307) ^ ((*(v34 - 176) ^ 0xF8655723) + 1159989198) ^ ((*(v34 - 176) ^ 0x9B7A0A81) + 641423984)) - 2044207191;
  HIDWORD(v496) = v420 ^ v465 ^ v439 ^ v427 ^ HIDWORD(v416) ^ 0x89 ^ 0xD4065549;
  LODWORD(v496) = HIDWORD(v420) ^ v475 ^ v463 ^ v424 ^ v416 ^ 0x89 ^ 0x8BC5FD23;
  HIDWORD(v492) = v491 ^ v489;
  LODWORD(v492) = v406 ^ v413 ^ (v406 ^ 0x1114E2D7) & 0xFFFFFDFF;
  LODWORD(v489) = *(v34 - 168) ^ *(v34 - 188);
  HIDWORD(v486) = v403 ^ (v454 ^ v403) & 0xFFFFFDFF ^ ((v454 ^ v403) & 0x200 | 0x5DDACCBE);
  LODWORD(v486) = *(v34 - 172) ^ v485;
  HIDWORD(v481) = *(v34 - 156) ^ v478;
  LODWORD(v481) = v480 ^ v449;
  HIDWORD(v476) = v473 ^ (HIDWORD(v398) - 2011188621);
  LODWORD(v476) = v470 ^ v429 ^ v452;
  HIDWORD(v471) = v458 ^ (v58 - 2011188621) ^ HIDWORD(v406) ^ (v143 - ((2 * HIDWORD(v406)) & 0x394486E) - 893535013);
  LODWORD(v471) = v142 ^ v434 ^ *(v34 - 184) ^ *(v34 - 196) ^ *(v34 - 200) ^ *(v34 - 180) ^ (((v142 - (v142 ^ 0xADD43D67)) ^ 0xFFFFFFFE) + v142 - ((2 * (((v142 - (v142 ^ 0xADD43D67)) ^ 0xFFFFFFFE) + v142)) & 0x4EA3B33A) + 659675549);
  LODWORD(v146) = *(v34 - 132);
  HIDWORD(v466) = v63 ^ v151;
  LODWORD(v466) = v63 - HIDWORD(v413);
  HIDWORD(v461) = (v63 - HIDWORD(v413)) ^ HIDWORD(v413);
  LODWORD(v461) = v154 - 2117458889;
  LODWORD(v458) = v144 - 2117458889;
  LODWORD(v455) = v135 - 2117458889;
  HIDWORD(v450) = v457 - ((2 * v457) & 0x394486E) - 2117458889;
  LODWORD(v450) = v445 - ((2 * v445) & 0x394486E) - 2117458889;
  LODWORD(v446) = v431 - ((2 * v431) & 0x394486E) - 2117458889;
  HIDWORD(v446) = v436 - ((2 * v436) & 0x394486E) - 2117458889;
  HIDWORD(v441) = HIDWORD(v424) - ((2 * HIDWORD(v424)) & 0x394486E) - 2117458889;
  LODWORD(v441) = v426 - ((2 * v426) & 0x394486E) - 2117458889;
  HIDWORD(v437) = v106 - 2117458889;
  LODWORD(v437) = v136 - 2117458889;
  v157 = *(v34 - 216);
  HIDWORD(v432) = v61 - 2117458889;
  LODWORD(v432) = v108 - 2117458889;
  HIDWORD(v455) = (v406 ^ 0x1114E2D7) & 0x200;
  HIDWORD(v427) = v156 + 659675549;
  *(v34 - 132) = v146;
  *(v34 - 200) = 0;
  *(v34 - 156) = *(v34 - 136) < 0x48BD1EE8u;
  LODWORD(v63) = 331 * (v130 ^ 0x1754);
  v158 = v146;
  v159 = (v157 + v146);
  LOBYTE(v154) = v145[v159[3] ^ 0xAALL] ^ 0xD6;
  LOBYTE(v36) = *v159;
  *(v34 - 196) = (v130 ^ 0x15F7) + 2859;
  LODWORD(v36) = *(v155 + 4 * ((((v130 ^ 0xF7) + 43) ^ v36) ^ 0x77u)) ^ 0x1BC72C77;
  *(v34 - 176) = v63;
  v160 = (v63 - 5957) + v158;
  *(v34 - 168) = v160;
  LODWORD(v144) = *(v147 + 4 * (*(v157 + v160) ^ 0x98)) ^ 0xF3ED4C87;
  LODWORD(v158) = (v36 >> 4) ^ (v36 >> 1) ^ (v154 ^ (v154 >> 6) ^ (v154 >> 3)) ^ v144 ^ (v144 >> 2) & 0x807BD99;
  LODWORD(v144) = *(v147 + 4 * (v159[5] ^ 0xBALL)) ^ 0xF3ED4C87;
  LODWORD(v63) = *(v147 + 4 * (v159[9] ^ 0x66)) ^ 0xF3ED4C87;
  LOBYTE(v143) = v145[v159[7] ^ 0x4BLL];
  LODWORD(v135) = *&v513[4 * (v159[6] ^ 0xD4)];
  LODWORD(v132) = v135 ^ 0x62302447;
  v161 = (v135 ^ 0x62302447) - (v135 ^ 0x5C5F49AE);
  LODWORD(v135) = (v143 ^ ((v143 ^ 0xD6) >> 6) ^ ((v143 ^ 0xD6) >> 3)) ^ 0x51;
  v162 = v161 ^ 0xFFFFFFFE;
  v163 = v145[v159[15] ^ 0xAFLL];
  LODWORD(v132) = v162 + v132;
  v164 = v163 ^ ((v163 ^ 0xD6) >> 6) ^ ((v163 ^ 0xD6) >> 3) ^ 0x51;
  LOBYTE(v163) = v145[v159[11] ^ 0x77];
  LODWORD(v131) = *(v155 + 4 * (v159[8] ^ 0xBLL)) ^ 0x1BC72C77;
  LODWORD(v155) = (((v63 >> 2) & 0x807BD99) + 1647322183 - ((v63 >> 1) & 0x4802)) ^ v63 ^ *&v513[4 * (v159[10] ^ 0xD7)] ^ v131 ^ (v131 >> 1) ^ (v131 >> 4) ^ (v163 ^ ((v163 ^ 0xD6) >> 6) ^ ((v163 ^ 0xD6) >> 3)) ^ 0x51;
  LODWORD(v63) = *(v510 + 4 * ((v159[4] - ((2 * v159[4]) & 0x9Eu) + 79) ^ 0x53)) ^ 0x1BC72C77;
  LODWORD(v58) = (v144 >> 2) & 0x807BD99 ^ v144 ^ v132 ^ v63 ^ v135 ^ (((v63 ^ -v63 ^ ((v63 >> 3) - ((v63 >> 3) ^ v63))) + (v63 >> 3)) >> 1);
  LODWORD(v144) = *(v147 + 4 * (v159[13] ^ 0x15)) ^ 0xF3ED4C87;
  v165 = *(v510 + 4 * (v159[12] ^ 0x91)) ^ 0x1BC72C77;
  LODWORD(v63) = (v164 + 1647322183 - ((2 * v164) & 0x8E)) ^ *&v513[4 * (v159[14] ^ 0x1DLL)] ^ v144 ^ (v144 >> 2) & 0x807BD99 ^ v165 ^ (v165 >> 1) ^ (v165 >> 4);
  LODWORD(v160) = (v158 + 1647322183 - ((2 * v158) & 0xC460488E)) ^ v36 ^ *&v513[4 * (v159[2] ^ 0x5FLL)];
  *(v34 - 184) = v58;
  *(v34 - 192) = v160;
  *(v34 - 188) = v63;
  LODWORD(v63) = HIDWORD(v505) ^ v63;
  LOWORD(v154) = v63 ^ 0x3F20;
  v166 = (v58 + HIDWORD(v461) - 2 * (v58 & HIDWORD(v461))) ^ v466 ^ 0x1659CD1A;
  *(v34 - 180) = v155;
  v167 = (v496 ^ v155) >> 8;
  LODWORD(v151) = v63 ^ 0x53F37049;
  v168 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v130 ^ 0x15F7) - 96);
  LODWORD(v63) = *(v168 + 4 * (((HIDWORD(v496) ^ v160) >> 24) ^ 0xBC));
  v169 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v130 ^ 0x15F7) - 106) - 4;
  LODWORD(v138) = BYTE2(v151) ^ *&v169[4 * (BYTE2(v151) ^ 0x45)];
  LODWORD(v131) = v167 & 0x10 | 0xC1;
  LODWORD(v110) = v167 & 0xEF;
  *(v34 - 172) = v130 ^ 0x15F7;
  v170 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v130 ^ 0x15F7) - 498);
  v171 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v130 ^ 0x17D8));
  LODWORD(v36) = *(v171 + 4 * (((v58 + BYTE4(v461) - 2 * (v58 & BYTE4(v461))) ^ v466) ^ 0x79u)) - 340135609;
  v172 = v63 ^ *(v34 - 228) ^ ((HIDWORD(v496) ^ v160) >> 24) ^ (*(v170 + 4 * (v131 ^ v110)) - 1612831941) ^ v36 ^ (v36 >> 4) & 0x6F87861 ^ (v138 - 2117458889 - ((2 * v138) & 0x394486E));
  LODWORD(v131) = *&v169[4 * (((HIDWORD(v496) ^ v160) >> 16) ^ 0x45)];
  v173 = *(v171 + 4 * (v496 ^ v155)) - 340135609;
  v174 = ((HIDWORD(v496) ^ v160) >> 16) ^ v520 ^ (*(v170 + 4 * (BYTE1(v154) ^ 0x8Eu)) - 1612831941) ^ *(v168 + 4 * (HIBYTE(v166) ^ 0xBC)) ^ (v131 - 2117458889 - ((2 * v131) & 0x394486E)) ^ v173 ^ (v173 >> 4) & 0x6F87861;
  LODWORD(v63) = *&v169[4 * (BYTE2(v166) ^ 0x45)] ^ BYTE2(v166);
  LODWORD(v154) = *(v171 + 4 * (v154 ^ 0xAu)) - 340135609;
  LODWORD(v132) = *(v171 + 4 * ((BYTE4(v496) ^ v160) ^ 0x63u)) - 340135609;
  v175 = *(v34 - 240) ^ ((v496 ^ v155) >> 24) ^ *(v168 + 4 * (((v496 ^ v155) >> 24) ^ 0xBC)) ^ (*(v170 + 4 * ((WORD2(v496) ^ v160) >> 8)) - 1612831941) ^ v154 ^ (v154 >> 4) & 0x6F87861 ^ 0xF912D125 ^ (v63 - 2117458889 - ((2 * v63) & 0x394486E));
  v176 = HIBYTE(v166) ^ 0xA0ADDA15 ^ v174;
  v177 = HIDWORD(v492) ^ ((v496 ^ v155) >> 16) ^ (BYTE3(v151) - 2117458889 - ((v151 >> 23) & 0x6E)) ^ *&v169[4 * (((v496 ^ v155) >> 16) ^ 0x45)] ^ *(v168 + 4 * (BYTE3(v151) ^ 0xBC)) ^ v132 ^ (*(v170 + 4 * BYTE1(v166)) - 1612831941) ^ (v132 >> 4) & 0x6F87861 ^ 0xBC3BB627;
  LODWORD(v132) = *&v169[4 * (BYTE2(v177) ^ 0x45)];
  v178 = v132 - 2117458889 - ((2 * v132) & 0x394486E);
  v179 = (HIBYTE(v177) - 2117458889 + (~(v177 >> 23) | 0xFFFFFF91) + 1) ^ 0x4D872A04 ^ *(v168 + 4 * (HIBYTE(v177) ^ 0xBC));
  v180 = HIDWORD(v455);
  if ((v179 & HIDWORD(v455)) != 0)
  {
    v180 = -HIDWORD(v455);
  }

  v181 = v180 + v179;
  v182 = HIBYTE(v175);
  v183 = v492 ^ BYTE2(v175) ^ (*(v170 + 4 * (BYTE1(v174) ^ 0x1Bu)) - 1612831941) ^ *&v169[4 * (BYTE2(v175) ^ 0x45)];
  v184 = *(v171 + 4 * (v172 ^ 0xA1u)) - 340135609;
  v185 = v183 ^ v184 ^ v181 ^ (v184 >> 4) & 0x6F87861;
  v186 = *(v171 + 4 * v176) - 340135609;
  v187 = v489 ^ ((v172 ^ 0x6487DDA1u) >> 24) ^ *(v168 + 4 * (((v172 ^ 0x6487DDA1u) >> 24) ^ 0xBC)) ^ (*(v170 + 4 * BYTE1(v175)) - 1612831941) ^ v178 ^ v186 ^ (v186 >> 4) & 0x6F87861 ^ 0x36ED9230;
  v188 = *(v171 + 4 * v175) - 340135609;
  v189 = *(v171 + 4 * v177) - 340135609;
  v190 = v461 ^ HIBYTE(v176) ^ BYTE2(v172) ^ 0x87 ^ *(v168 + 4 * (HIBYTE(v176) ^ 0xBC)) ^ *&v169[4 * (BYTE2(v172) ^ 0xC2)] ^ (*(v170 + 4 * BYTE1(v177)) - 1612831941) ^ v188 ^ (v188 >> 4) & 0x6F87861 ^ 0x3A86A352;
  v191 = v458 ^ BYTE2(v176) ^ v182 ^ *&v169[4 * (BYTE2(v176) ^ 0x45)] ^ *(v168 + 4 * (v182 ^ 0xBC)) ^ (*(v170 + 4 * (BYTE1(v172) ^ 0x1Cu)) - 1612831941) ^ v189 ^ (v189 >> 4) & 0x6F87861 ^ 0xDED0924E;
  v192 = ((v185 ^ 0xA4084993) >> 16);
  v193 = *&v169[4 * (v192 ^ 0x45)];
  v194 = *(v171 + 4 * v190) - 340135609;
  v195 = HIBYTE(v187) ^ v524 ^ (*(v170 + 4 * BYTE1(v191)) - 1612831941) ^ *(v168 + 4 * (HIBYTE(v187) ^ 0xBC)) ^ v194 ^ (v194 >> 4) & 0x6F87861 ^ (v193 - 2117458889 - ((2 * v193) & 0x394486E));
  v196 = (v185 ^ 0xA4084993) >> 24;
  v197 = v195 ^ v192;
  v198 = *(v170 + 4 * ((v185 ^ 0x4993) >> 8)) - 1612831941;
  v199 = *(v171 + 4 * v191) - 340135609;
  v200 = *(v171 + 4 * (v185 ^ 0xF0u)) - 340135609;
  v201 = BYTE2(v190) ^ v455 ^ HIBYTE(v191) ^ *(v168 + 4 * (HIBYTE(v191) ^ 0xBC)) ^ *&v169[4 * (BYTE2(v190) ^ 0x45)] ^ (*(v170 + 4 * BYTE1(v187)) - 1612831941) ^ v200 ^ (v200 >> 4) & 0x6F87861;
  v202 = *&v169[4 * (BYTE2(v191) ^ 0x45)] ^ BYTE2(v191);
  v203 = *(v171 + 4 * (v187 ^ BYTE2(v177))) - 340135609;
  v204 = v196 ^ v522 ^ (*(v170 + 4 * BYTE1(v190)) - 1612831941) ^ *(v168 + 4 * (v196 ^ 0xBC)) ^ v203 ^ (v202 - 2117458889 - ((2 * v202) & 0x394486E)) ^ (v203 >> 4) & 0x6F87861;
  v205 = v198 ^ v199 ^ (v199 >> 4) & 0x6F87861 ^ __ROR4__(__ROR4__(HIDWORD(v486) ^ BYTE2(v187) ^ (HIBYTE(v190) - 2117458889 - ((v190 >> 23) & 0x6E)) ^ *(v168 + 4 * (HIBYTE(v190) ^ 0xBC)) ^ *&v169[4 * (BYTE2(v187) ^ 0x45)] ^ 0x9B326113, 17) ^ 0xB92EFEA4, 15) ^ 0xFD49725D;
  v206 = v205 - ((2 * v205) & 0x8D65BEC8) + 1186127716;
  v207 = v201 ^ 0xC48B7B5A;
  BYTE1(v190) = BYTE1(v206) ^ 0xC1;
  v208 = *(v171 + 4 * (v206 ^ 0x63u)) - 340135609;
  v209 = *(v168 + 4 * (((v197 ^ 0xA48E9D12) >> 24) ^ 0xBC)) ^ HIDWORD(v450) ^ ((v197 ^ 0xA48E9D12) >> 24) ^ *&v169[4 * (((v204 ^ 0x3292C9BFu) >> 16) ^ 0x45)] ^ (*(v170 + 4 * ((v201 ^ 0x7B5A) >> 8)) - 1612831941) ^ v208 ^ ((v204 ^ 0x3292C9BFu) >> 16) ^ (v208 >> 4) & 0x6F87861;
  v210 = *(v171 + 4 * (v201 ^ 0x39u));
  v211 = HIBYTE(v207);
  v212 = (v204 ^ 0x3292C9BFu) >> 24;
  v213 = v505 ^ ((v197 ^ 0xA48E9D12) >> 16) ^ *&v169[4 * (((v197 ^ 0xA48E9D12) >> 16) ^ 0x45)] ^ (HIBYTE(v206) - 2117458889 - ((v206 >> 23) & 0x6E)) ^ (*(v170 + 4 * (BYTE1(v204) ^ 8u)) - 1612831941) ^ (((2 * v210) & 0xD773E28E) + (v210 ^ 0xEBB9F147)) ^ *(v168 + 4 * (HIBYTE(v206) ^ 0xBC)) ^ ((((2 * v210) & 0xD773E28E) + (v210 ^ 0xEBB9F147)) >> 4) & 0x6F87861;
  v214 = *(v168 + 4 * (HIBYTE(v207) ^ 0xBC));
  v215 = BYTE2(v206);
  v216 = BYTE2(v207) ^ HIDWORD(v446) ^ v212 ^ *&v169[4 * (BYTE2(v207) ^ 0x45)];
  v217 = *&v169[4 * (BYTE2(v206) ^ 0x45)];
  v218 = *(v171 + 4 * (v204 ^ 0xBFu)) - 340135609;
  v219 = *(v171 + 4 * (v197 ^ 0x71u)) - 340135609;
  v220 = v216 ^ *(v168 + 4 * (v212 ^ 0xBC)) ^ 0x33699A7F ^ (*(v170 + 4 * BYTE1(v190)) - 1612831941);
  v221 = ((v219 >> 4) & 0x6F87861 ^ v219 ^ -((v219 >> 4) & 0x6F87861 ^ v219) ^ (v220 - (v220 ^ (v219 >> 4) & 0x6F87861 ^ v219))) + v220;
  v222 = v209 ^ 0x208FDCF;
  v223 = (v209 ^ 0x208FDCF) >> 24;
  v224 = BYTE2(v213) ^ 0xAB;
  v225 = v450 ^ v211 ^ v215 ^ v214 ^ (*(v170 + 4 * (BYTE1(v195) ^ 0x5Cu)) - 1612831941) ^ v218 ^ (v218 >> 4) & 0x6F87861 ^ 0x6218BDAD ^ v217;
  LODWORD(v227) = __ROR4__(v221, 1) ^ 0xC7F50898;
  HIDWORD(v227) = v227;
  v226 = v227 >> 31;
  v228 = v226 ^ 0x11AA9973;
  v229 = *(v171 + 4 * (v213 ^ 9u)) - 340135609;
  v230 = *(v168 + 4 * (v223 ^ 0xBC)) ^ v446 ^ (*(v170 + 4 * BYTE1(v225)) - 1612831941) ^ v229 ^ (v229 >> 4) & 0x6F87861 ^ *&v169[4 * (((v226 ^ 0x11AA9973u) >> 16) ^ 0x45)];
  v231 = *&v169[4 * (BYTE2(v222) ^ 0x45)] ^ BYTE2(v222);
  v232 = (v213 ^ 0x48AB316Au) >> 24;
  v233 = *(v168 + 4 * (v232 ^ 0xBC)) ^ *(v34 - 248) ^ (v231 - 2117458889 - ((2 * v231) & 0x394486E)) ^ (*(v170 + 4 * ((v226 ^ 0x9973) >> 8)) - 1612831941);
  v234 = *(v171 + 4 * v225) - 340135609;
  v235 = (v234 >> 4) & 0x6F87861 ^ v234;
  v236 = v233 & 0x4000000;
  if ((v233 & 0x4000000 & v235) != 0)
  {
    v236 = -v236;
  }

  v237 = HIBYTE(v228);
  v238 = HIBYTE(v228) - 2117458889 - ((v228 >> 23) & 0x6E);
  v239 = v223 ^ ((v226 ^ 0x11AA9973u) >> 16);
  v240 = v232 ^ v233 & 0xFBFFFFFF ^ 0x6E4DD4D1 ^ (v236 + v235);
  v241 = *(v171 + 4 * (v226 ^ 0x10u)) - 340135609;
  v242 = (v241 >> 4) & 0x6F87861;
  v243 = *(v168 + 4 * (v237 ^ 0xBC));
  v244 = BYTE2(v225);
  v245 = *&v169[4 * (BYTE2(v225) ^ 0x45)];
  v246 = *(v170 + 4 * (BYTE1(v213) ^ 0xF0u)) - 1612831941;
  v247 = *(v171 + 4 * (v209 ^ 0xACu)) - 340135609;
  v248 = HIDWORD(v441) ^ HIBYTE(v225) ^ v224 ^ *(v168 + 4 * (HIBYTE(v225) ^ 0xBC)) ^ *&v169[4 * (v224 ^ 0x45)] ^ (*(v170 + 4 * BYTE1(v222)) - 1612831941) ^ v241;
  v249 = v239 ^ 0xF7E4A89B ^ v230;
  v250 = v248 ^ 0x58945F3 ^ v242;
  v251 = HIBYTE(v249);
  v252 = v486 ^ v244 ^ v245;
  if ((v249 & 8) != 0)
  {
    v253 = -8;
  }

  else
  {
    v253 = 8;
  }

  v254 = v253 + v249;
  v255 = v252 ^ v246 ^ v238;
  v256 = HIBYTE(v250);
  v257 = *(v168 + 4 * (v251 ^ 0xBC));
  v258 = v255 ^ v247 ^ (v247 >> 4) & 0x6F87861 ^ 0x8E447092 ^ v243;
  v259 = *(v168 + 4 * (HIBYTE(v240) ^ 0xBC));
  v260 = v251 - 2117458889 - ((v249 >> 23) & 0x6E);
  if ((v259 & 0x20000000) != 0)
  {
    v261 = -536870912;
  }

  else
  {
    v261 = 0x20000000;
  }

  v262 = (v259 ^ (HIBYTE(v240) - 2117458889 - ((v240 >> 23) & 0x6E)) ^ 0x85761566) + v261;
  v263 = v256 - 2117458889 - ((v250 >> 23) & 0x6E);
  v264 = *(v171 + 4 * v240) - 340135609;
  v265 = HIDWORD(v481) ^ *&v169[4 * (BYTE2(v258) ^ 0x45)] ^ v257 ^ (*(v170 + 4 * BYTE1(v250)) - 1612831941) ^ v260;
  v266 = (v264 >> 4) & 0x6F87861;
  v267 = BYTE2(v249);
  v268 = v265 ^ v264;
  v269 = *&v169[4 * (BYTE2(v249) ^ 0x45)];
  v270 = v268 ^ 0xBD988009 ^ v266;
  v271 = v481 ^ v267 ^ (*(v170 + 4 * BYTE1(v258)) - 1612831941) ^ v269;
  v272 = *(v171 + 4 * v250) - 340135609;
  v273 = *(v168 + 4 * (v256 ^ 0xBC));
  v274 = v271 ^ v272 ^ (v272 >> 4) & 0x6F87861;
  v275 = HIWORD(v258);
  v276 = v274 ^ 0xD2A747C ^ v262;
  v277 = BYTE2(v250) ^ v441 ^ HIBYTE(v258) ^ *(v168 + 4 * (HIBYTE(v258) ^ 0xBC)) ^ *&v169[4 * (BYTE2(v250) ^ 0x45)];
  v278 = *(v171 + 4 * v258) - 340135609;
  v279 = *(v171 + 4 * (v254 ^ 0x6Bu)) - 340135609;
  LOBYTE(v240) = v270 ^ v275;
  v280 = v277 ^ (*(v170 + 4 * BYTE1(v240)) - 1612831941) ^ v279 ^ (v279 >> 4) & 0x6F87861;
  v281 = HIDWORD(v476) ^ v263 ^ BYTE2(v240) ^ v273 ^ (*(v170 + 4 * (BYTE1(v230) ^ 0x69u)) - 1612831941) ^ v278 ^ *&v169[4 * (BYTE2(v240) ^ 0x45)] ^ (v278 >> 4) & 0x6F87861 ^ 0x33CA6B92;
  v282 = (((v280 ^ 0x1F7AE74A) - (v280 ^ 0xA71C9EF4)) ^ 0xFFFFFFFC ^ v280 ^ 0x1F7AE74A) + 2 * ((((v280 ^ 0x1F7AE74A) - (v280 ^ 0xA71C9EF4)) ^ 0xFFFFFFFC) & (v280 ^ 0x1F7AE74A));
  v283 = BYTE2(v282) ^ *&v169[4 * (BYTE2(v282) ^ 0x45)];
  v284 = *(v171 + 4 * v276) - 340135609;
  v285 = v476 ^ HIBYTE(v270) ^ (*(v170 + 4 * BYTE1(v281)) - 1612831941) ^ *(v168 + 4 * (HIBYTE(v270) ^ 0xBC)) ^ v284 ^ (v284 >> 4) & 0x6F87861 ^ (v283 - 2117458889 - ((2 * v283) & 0x394486E));
  v286 = *&v169[4 * (BYTE2(v270) ^ 0x45)] ^ BYTE2(v270);
  v287 = *(v171 + 4 * v281) - 340135609;
  v288 = HIBYTE(v276) ^ *(v34 - 232) ^ *(v168 + 4 * (HIBYTE(v276) ^ 0xBC)) ^ v287 ^ (v286 - 2117458889 - ((2 * v286) & 0x394486E)) ^ (v287 >> 4) & 0x6F87861 ^ (*(v170 + 4 * (BYTE1(v282) ^ 0xC1u)) - 1612831941);
  v289 = HIBYTE(v282);
  v290 = *(v171 + 4 * (v282 ^ 0x63u)) - 340135609;
  v291 = BYTE2(v276) ^ HIDWORD(v437) ^ HIBYTE(v281) ^ *(v168 + 4 * (HIBYTE(v281) ^ 0xBC)) ^ (*(v170 + 4 * BYTE1(v270)) - 1612831941) ^ *&v169[4 * (BYTE2(v276) ^ 0x45)] ^ v290;
  v292 = BYTE2(v281);
  v293 = *&v169[4 * (BYTE2(v281) ^ 0x45)];
  v294 = v291 ^ (v290 >> 4) & 0x6F87861;
  v295 = *(v171 + 4 * v240) - 340135609;
  v296 = v292 ^ v437 ^ v293 ^ v289 ^ (*(v170 + 4 * BYTE1(v276)) - 1612831941) ^ v295 ^ (v295 >> 4) & 0x6F87861 ^ *(v168 + 4 * (v289 ^ 0xBC));
  BYTE2(v276) = BYTE2(v294) ^ 0xE9;
  v297 = ((v296 ^ 0xA6BEB1DD) >> 16) ^ *&v169[4 * (((v296 ^ 0xA6BEB1DD) >> 16) ^ 0x45)];
  v298 = *(v171 + 4 * (v288 ^ 0x3Fu)) - 340135609;
  v299 = v518 ^ (*(v170 + 4 * ((v294 ^ 0x5925) >> 8)) - 1612831941) ^ *(v168 + 4 * (((v285 ^ 0x8C1CB333) >> 24) ^ 0xBC)) ^ v298 ^ (v298 >> 4) & 0x6F87861 ^ ((v285 ^ 0x8C1CB333) >> 24) ^ (v297 - 2117458889 - ((2 * v297) & 0x394486E));
  v300 = ((v285 ^ 0x8C1CB333) >> 16);
  v301 = *&v169[4 * (v300 ^ 0x45)];
  v302 = v301 - 2117458889 - ((2 * v301) & 0x394486E);
  LOWORD(v285) = v285 ^ 0xE7C3;
  v303 = (v294 ^ 0x99E95925) >> 24;
  v304 = *(v171 + 4 * (v294 ^ 0x46u)) - 340135609;
  v305 = *(v168 + 4 * (v303 ^ 0xBC));
  v306 = *(v34 - 244) ^ ((v288 ^ 0x9F2E2B5C) >> 24) ^ (*(v170 + 4 * ((v296 ^ 0xB1DD) >> 8)) - 1612831941) ^ *(v168 + 4 * (((v288 ^ 0x9F2E2B5C) >> 24) ^ 0xBC)) ^ v304 ^ v300 ^ (v304 >> 4) & 0x6F87861 ^ 0x135FAD4E ^ v302;
  v307 = *(v170 + 4 * (BYTE1(v285) ^ 0x95u)) - 1612831941;
  v308 = *(v171 + 4 * ((v296 ^ 0xDD ^ -(v296 ^ 0xDD) ^ (99 - (v296 ^ 0xBEu))) + 99)) - 340135609;
  v309 = HIDWORD(v432) ^ ((v288 ^ 0x9F2E2B5C) >> 16) ^ v303 ^ *&v169[4 * (((v288 ^ 0x9F2E2B5C) >> 16) ^ 0x45)];
  v310 = BYTE2(v276);
  v311 = v309 ^ v305;
  v312 = *&v169[4 * (BYTE2(v276) ^ 0x45)];
  v313 = *(v171 + 4 * (v285 ^ 0x93u)) - 340135609;
  v314 = (v299 ^ 0xEDEC7BCE ^ -(v299 ^ 0xEDEC7BCE) ^ (2071273576 - (v299 ^ 0x96995BA6))) + 2071273576;
  v315 = v311 ^ v308 ^ v307 ^ (v308 >> 4) & 0x6F87861;
  v316 = HIBYTE(v306);
  v315 ^= 0x87973434;
  v317 = HIDWORD(v471) ^ ((v296 ^ 0xA6BEB1DD) >> 24) ^ v310 ^ *(v168 + 4 * (((v296 ^ 0xA6BEB1DD) >> 24) ^ 0xBC)) ^ (*(v170 + 4 * (BYTE1(v288) ^ 0xEAu)) - 1612831941) ^ v312 ^ v313 ^ 0x97F04035 ^ (v313 >> 4) & 0x6F87861;
  v318 = *&v169[4 * (BYTE2(v317) ^ 0x45)];
  v319 = *(v171 + 4 * v306) - 340135609;
  v320 = *(v168 + 4 * (HIBYTE(v314) ^ 0xBC)) ^ v526 ^ (*(v170 + 4 * BYTE1(v315)) - 1612831941) ^ (v318 - 2117458889 - ((2 * v318) & 0x394486E)) ^ v319 ^ (v319 >> 4) & 0x6F87861 ^ HIBYTE(v314) ^ BYTE2(v317);
  v321 = *(v168 + 4 * (HIBYTE(v306) ^ 0xBC));
  v322 = *&v169[4 * (BYTE2(v314) ^ 0x45)];
  v323 = HIBYTE(v317);
  v324 = BYTE2(v306) ^ v432 ^ HIBYTE(v315) ^ *(v168 + 4 * (HIBYTE(v315) ^ 0xBC)) ^ *&v169[4 * (BYTE2(v306) ^ 0x45)];
  v325 = *(v168 + 4 * (HIBYTE(v317) ^ 0xBC));
  v326 = BYTE2(v315);
  v327 = *&v169[4 * (BYTE2(v315) ^ 0x45)];
  v328 = *(v170 + 4 * BYTE1(v317));
  v329 = *(v171 + 4 * v317) - 340135609;
  v330 = v324 ^ v329 ^ (v329 >> 4) & 0x6F87861 ^ (*(v170 + 4 * (BYTE1(v314) ^ 0xC1u)) - 1612831941);
  v331 = *(v171 + 4 * v315) - 340135609;
  v332 = *(v170 + 4 * BYTE1(v306)) - 1612831941;
  v333 = *(v171 + 4 * (v314 ^ 0x63u)) - 340135609;
  v334 = (v320 ^ 0x64BDAD00u) >> 24;
  v335 = HIDWORD(v466) ^ v316 ^ v321 ^ (v328 - 1612831941) ^ BYTE2(v314) ^ v331 ^ v322 ^ (v331 >> 4) & 0x6F87861 ^ 0xE783DDE6;
  v336 = v323 ^ *(v34 - 252) ^ v325 ^ v332 ^ ((v327 ^ v326) - 2117458889 - ((2 * (v327 ^ v326)) & 0x394486E)) ^ v333 ^ (v333 >> 4) & 0x6F87861;
  v337 = (v330 ^ 0x2C04BCD9u) >> 24;
  LOBYTE(v333) = v323 ^ *(v34 - 252) ^ v325 ^ v332 ^ ((v327 ^ v326) + 55 - ((2 * (v327 ^ v326)) & 0x6E)) ^ v333 ^ (v333 >> 4) & 0x61 ^ 0x14;
  v338 = (v334 ^ 0xE5CAF785) + v334;
  v339 = *(v34 - 172);
  v340 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v339 ^ 0x219)) - 12;
  v341 = *&v340[4 * (((v336 ^ 0x964C3714) >> 16) ^ 0xC)] - 1108137340 - ((((v336 ^ 0x964C3714) >> 16) - 301472842) ^ ((v336 ^ 0x964C3714) >> 16));
  v342 = -1108137340 - ((((v320 ^ 0x64BDAD00u) >> 16) - 301472842) ^ ((v320 ^ 0x64BDAD00u) >> 16)) + *&v340[4 * (((v320 ^ 0x64BDAD00u) >> 16) ^ 0xC)];
  v343 = (v337 ^ 0xE5CAF785) + v337 + 659675549 - ((2 * ((v337 ^ 0xE5CAF785) + v337)) & 0x4A81B33A);
  v344 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v339 ^ 0x38C)) - 12;
  v345 = *&v344[4 * (v334 ^ 0x69)];
  v346 = *&v344[4 * (HIBYTE(v335) ^ 0x69)];
  v347 = *&v344[4 * (v337 ^ 0x69)];
  v348 = -1108137340 - ((BYTE2(v335) - 301472842) ^ BYTE2(v335)) + *&v340[4 * (BYTE2(v335) ^ 0xC)];
  v349 = (v336 ^ 0x964C3714) >> 24;
  v350 = *&v344[4 * (v349 ^ 0x69)];
  LODWORD(v344) = (v349 ^ 0xE5CAF785) + v349 + 659675549 - ((2 * ((v349 ^ 0xE5CAF785) + v349)) & 0x4A81B33A);
  v351 = ((v330 ^ 0x2C04BCD9u) >> 16);
  v352 = (v351 - 301472842) ^ v351;
  v353 = *&v340[4 * (v351 ^ 0xC)];
  v354 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v339 - 685)) - 4;
  v355 = *&v354[4 * ((v330 ^ 0xBCD9) >> 8)];
  v356 = -1108137340 - v352 + v353;
  v357 = *&v354[4 * (BYTE1(v336) ^ 0x3A)];
  v358 = *&v354[4 * ((v320 ^ 0xAD00) >> 8)];
  v359 = *&v354[4 * BYTE1(v335)];
  v360 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v339 ^ 0x3C4));
  v361 = *(v360 + 4 * v333);
  HIDWORD(v362) = *(v360 + 4 * (v330 ^ 0xF6u));
  LODWORD(v362) = HIDWORD(v362);
  v363 = v471 ^ *(v34 - 148) ^ ((HIBYTE(v335) ^ 0xE5CAF785) + HIBYTE(v335)) ^ v346 ^ v342 ^ __ROR4__(v357, 9) ^ (v362 >> 6) ^ (2 * (v362 >> 6)) & 0x1AD19380;
  v364 = HIDWORD(v500) ^ *(v34 - 152) ^ v343;
  v365 = *(v34 - 216);
  v366 = v364 ^ v347 ^ v348 ^ (v358 >> 9) ^ (v358 << 23);
  HIDWORD(v362) = *(v360 + 4 * v320);
  LODWORD(v362) = HIDWORD(v362);
  v367 = v362 >> 6;
  HIDWORD(v362) = *(v360 + 4 * v335);
  LODWORD(v362) = HIDWORD(v362);
  v368 = v362 >> 6;
  v369 = v500 ^ *(v34 - 144) ^ v344 ^ v350 ^ v356 ^ __ROR4__(v359, 9) ^ v367 ^ (2 * v367) & 0x1AD19380;
  HIDWORD(v362) = v361;
  LODWORD(v362) = v361;
  v370 = *(v34 - 140) ^ HIDWORD(v427) ^ v338 ^ v345 ^ __ROR4__(v355, 9) ^ v368 ^ (2 * v368) & 0x1AD19380 ^ v341;
  v371 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v339 - 327)) - 8;
  v159[15] = v371[v369 ^ 0xF7] ^ 0x39 ^ (v371[v369 ^ 0xF7] >> 3) & 0x1D;
  v372 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v339 - 564)) - 4;
  v159[4] = v372[HIBYTE(v363) ^ 0xF6] ^ 0xC5;
  v373 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v339 ^ 0xF5));
  BYTE1(v344) = BYTE1(v363) ^ 0x3F;
  *(v365 + *(v34 - 168)) = *(v373 + (BYTE2(v370) ^ 0xA5)) ^ 5 ^ (*(v373 + (BYTE2(v370) ^ 0xA5)) >> 2) & 4;
  v159[13] = *(v373 + (((v369 ^ 0x1BF13F20) >> 16) ^ 0x83)) ^ 0x26 ^ (*(v373 + (((v369 ^ 0x1BF13F20) >> 16) ^ 0x83)) >> 2) & 4;
  v159[5] = *(v373 + (((v363 ^ 0x1BF13F20) >> 16) ^ 0x36)) ^ 0xF6 ^ (*(v373 + (((v363 ^ 0x1BF13F20) >> 16) ^ 0x36)) >> 2) & 4;
  v374 = v366 ^ (v362 >> 6) ^ (2 * (v362 >> 6)) & 0x1AD19380;
  v159[7] = v371[v363 ^ 0x3CLL] ^ 0xB5 ^ (v371[v363 ^ 0x3CLL] >> 3) & 0x1D;
  v375 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v339 - 548));
  v159[2] = (((2 * BYTE1(v370)) ^ 0x6C) + 107) ^ 0xDB ^ *(v375 + (BYTE1(v370) ^ 0x60));
  v159[6] = (((2 * BYTE1(v344)) ^ 0x96) + 107) ^ *(v375 + (BYTE1(v344) ^ 0x9DLL)) ^ 0x18;
  v159[3] = v371[(*(v34 - 224) ^ v370) ^ 0x87] ^ 0x8E ^ (v371[(*(v34 - 224) ^ v370) ^ 0x87] >> 3) & 0x1D;
  v159[10] = (((2 * (BYTE1(v374) ^ 0x1A)) ^ 0xD4) + 107) ^ 0x14 ^ *(v375 + (BYTE1(v374) ^ 0xA6));
  v159[12] = v372[HIBYTE(v369) ^ 0xBELL] ^ 0x1B;
  v376 = v371[v374 ^ 0x56];
  v159[11] = v376 ^ (v376 >> 3) & 0x1D ^ 0xE7;
  *v159 = v372[HIBYTE(v370) ^ 0x54] ^ 0xBE;
  v159[14] = (((2 * (BYTE1(v369) ^ 0x3F)) ^ 0xE0) + 107) ^ *(v375 + (BYTE1(v369) ^ 0x99)) ^ 0xC3;
  v159[8] = v372[BYTE3(v374) ^ 0x5FLL] ^ 0xC9;
  v159[9] = *(v373 + (((v374 ^ 0x1BF13F20) >> 16) ^ 0xB9)) ^ 0x21 ^ (*(v373 + (((v374 ^ 0x1BF13F20) >> 16) ^ 0xB9)) >> 2) & 4;
  v377 = *(v34 - 132) + 1220353784;
  v378 = *(v34 - 156) ^ (v377 < 0x48BD1EE8);
  v379 = v377 < *(v34 - 136);
  if (v378)
  {
    v379 = *(v34 - 156);
  }

  LODWORD(v384) = v385 ^ 0xD8494635;
  HIDWORD(v401) = v396 - 2011188621;
  LODWORD(v427) = -HIDWORD(v455);
  return (*(*(v34 - 208) + 8 * ((2518 * v379) ^ v339)))(190, (v376 >> 3) & 0x1D, v339, 118, v374, 20, v375, 108, a9, v381, v382, v383, v384, v385, v387, v388, v390, v393, v396, v398, v401, v403, v406, v409, v413, v416, v420, v424, v426, a30, a31, a32, v427, v432, v437, v441, v446, v450, v455, v458, v461, v466, v471, v476, v481, v486, v489, v492, v496, v500, v505, v510);
}

uint64_t sub_1968FDBF0()
{
  (*(v2 + 8 * (v1 ^ 0xA39)))(v7);
  v5 = *v4;
  v8 = (v1 - 988) ^ (((2 * (&v8 & 0x4A2603D0) - &v8 - 1244005329) ^ 0xC328A2E3) * v3);
  v9 = v5;
  result = (*(v2 + 8 * (v1 | 0xA8A)))(&v8);
  *v0 = 1906239306;
  return result;
}

uint64_t sub_1968FDC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  a10 = *(*(v12 + 8 * (v13 ^ 0x148D)) - 4);
  a11 = v13 + ((&a10 + 1448695722 - 2 * (&a10 & 0x565957AA)) ^ 0xAE8577EB) * v14 - 2047;
  v15 = (*(v11 + 8 * (v13 ^ 0xEB9)))(&a10);
  v16 = (v13 + 63) ^ (*(*(v12 + 8 * (v13 ^ 0x14D3)) + 32) == ((279 * (v13 ^ 0x14C3u)) ^ 0x345));
  return (*(v11 + 8 * ((v16 & 1 | (8 * (v16 & 1))) ^ v13)))(v15);
}

uint64_t sub_1968FDD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == 1906281716)
  {
    v10 = STACK[0x3F8];
    v11 = *(STACK[0x3F8] + 8);
    v12 = STACK[0x388];
    v12[1] = v11;
    *v12 = *v10;
    return (*(a6 + 8 * (((v11 == 0) * ((a8 ^ 0xFFFFEEEB) + a8 - 3446)) ^ (a8 - 941))))();
  }

  else if (v8 == 1906239664)
  {
    return (*(a6 + 8 * (((*(STACK[0x5D0] + 8) == 0) * ((a8 - 3752) ^ (a8 - 3755))) ^ (a8 - 3973))))();
  }

  else
  {
    return (*(a6 + 8 * (((*(STACK[0x388] + 24) == 0) * (838 * (a8 ^ 0x165F) - 1626)) ^ (a8 - 1476))))();
  }
}

uint64_t sub_1968FDE18@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v8 = v6 - 1;
  *(a2 + v8) = *(v4 + (((a1 + 578) - 6046) & v8)) ^ *(v2 + v8) ^ *(v3 + (((a1 + 578) - 6046) & v8)) ^ *((((a1 + 578) - 6046) & v8) + v5 + 1) ^ (-65 * ((a1 - 92) & v8));
  return (*(v7 + 8 * ((6762 * (v8 == 0)) ^ (a1 - 1934))))();
}

void fp_dh_6d82f96f2b5a8a41364d6e14dc7a5ff1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_8b38df7ad51db0948c8ee7bffc663619) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_8b38df7ad51db0948c8ee7bffc663619) ^ 0x55))] ^ 0xB]) + 259);
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + *v0) ^ 0x55))) ^ 0xBBu) - 8) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + *v0) ^ 0x55))) + 538);
  v2 = (*(v1 - 4) - *v0) ^ &v9;
  v3 = 810526117 * v2 + 0x3983E51A1E6C17ABLL;
  v4 = 810526117 * (v2 ^ 0xC67C1AE5E193E855);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = -91 * ((v4 + *v0) ^ 0x55);
  **(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v4 - 8) ^ 0x76u) - 12) ^ v4) + 238) = 1906281716;
  v5 = off_1F0B0CCB0 - 4;
  v6 = off_1F0B0BE30;
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_8b38df7ad51db0948c8ee7bffc663619 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * (fp_dh_8b38df7ad51db0948c8ee7bffc663619 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0xD2]) + 406) - 4;
  v8 = (*&v7[8 * (*(off_1F0B0BE30 + (*(off_1F0B0CCB0 + (-91 * ((*(v1 - 4) - *v0) ^ 0x55)) - 4) ^ 0xC2u)) ^ (-91 * ((*(v1 - 4) - *v0) ^ 0x55))) + 53544])(512, 0x100004077774924);
  **(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((*(v1 - 4) + *v0) ^ 0x55)) ^ v6[v5[(-91 * ((*(v1 - 4) + *v0) ^ 0x55))] ^ 0xC2]) - 83) = v8;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968FE144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int8x16_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v72 - 16;
  v281 = *(a2 + v73 - 16);
  v74.i64[0] = a2 + v73 - 5;
  v74.i64[1] = a2 + v73 + (v71 ^ v67);
  v75 = v74;
  v277 = v74;
  v76.i64[0] = a2 + v73 - 1;
  v76.i64[1] = a2 + v73 - 2;
  v77.i64[0] = a2 + v73 - 3;
  v77.i64[1] = a2 + v73 - 4;
  v78.i64[0] = a2 + v73 - 7;
  v78.i64[1] = a2 + v73 - 8;
  v74.i64[0] = a2 + v73 - 9;
  v74.i64[1] = a2 + v73 - 10;
  *&STACK[0x2D0] = v74;
  v74.i64[0] = a2 + v73 - 11;
  v74.i64[1] = a2 + v73 - 12;
  *&STACK[0x2C0] = v74;
  v74.i64[0] = a2 + v73 - 13;
  v74.i64[1] = a2 + v73 - 14;
  v280 = v74;
  v79 = vandq_s8(v78, a65);
  v80 = vandq_s8(v77, a65);
  v81 = vandq_s8(v76, a65);
  v82 = vandq_s8(v75, a65);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), *&STACK[0x340]), *&STACK[0x330]);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), *&STACK[0x340]), *&STACK[0x330]);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), *&STACK[0x340]), *&STACK[0x330]);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), *&STACK[0x340]), *&STACK[0x330]);
  v87 = vorrq_s8(v85, *&STACK[0x320]);
  v278 = vsubq_s64(vorrq_s8(v83, *&STACK[0x320]), vorrq_s8(v83, *&STACK[0x240]));
  v88 = vorrq_s8(v85, *&STACK[0x240]);
  v89 = vsubq_s64(vorrq_s8(v84, *&STACK[0x320]), vorrq_s8(v84, *&STACK[0x240]));
  v90 = vaddq_s64(vsubq_s64(vorrq_s8(v86, *&STACK[0x320]), vorrq_s8(v86, *&STACK[0x240])), *&STACK[0x240]);
  v91 = vaddq_s64(vsubq_s64(v87, v88), *&STACK[0x240]);
  v92 = veorq_s8(v91, *&STACK[0x2B0]);
  v93 = veorq_s8(v90, *&STACK[0x2B0]);
  v94 = veorq_s8(v90, *&STACK[0x2A0]);
  v95 = veorq_s8(v91, *&STACK[0x2A0]);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), *&STACK[0x290]);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v95), *&STACK[0x290]);
  v98 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v100);
  v103 = veorq_s8(vaddq_s64(v101, v99), *&STACK[0x280]);
  v104 = veorq_s8(v102, *&STACK[0x280]);
  v105 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v106 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v107 = veorq_s8(v103, v105);
  v108 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v107);
  v110 = vaddq_s64(v108, v106);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, *&STACK[0x270]), vorrq_s8(v109, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x260]);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, *&STACK[0x270]), vorrq_s8(v110, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x260]);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v114 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v114);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, *&STACK[0x310]), vorrq_s8(v115, *&STACK[0x220])), *&STACK[0x220]), *&STACK[0x300]);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, *&STACK[0x310]), vorrq_s8(v116, *&STACK[0x220])), *&STACK[0x220]), *&STACK[0x300]);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v120 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v120);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, *&STACK[0x2F0]), vorrq_s8(v121, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x2E0]);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, *&STACK[0x2F0]), vorrq_s8(v122, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x2E0]);
  v125 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v126 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v127 = veorq_s8(v123, v125);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v127);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v126);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), *&STACK[0x250]), v129), *&STACK[0x200]), a67);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), *&STACK[0x250]), v128), *&STACK[0x200]), a67);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v134 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v136 = vdupq_n_s64(v69);
  v137 = vaddq_s64(v89, *&STACK[0x240]);
  v283.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v135, v133), a66), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), v136)));
  v283.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v134, v132), a66), vnegq_s64(vandq_s8(vshlq_n_s64(v77, 3uLL), v136)));
  v138 = veorq_s8(v137, *&STACK[0x2B0]);
  v139 = veorq_s8(v137, *&STACK[0x2A0]);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), *&STACK[0x290]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), *&STACK[0x280]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, *&STACK[0x270]), vorrq_s8(v144, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x260]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v147, *&STACK[0x310]), vorrq_s8(v147, *&STACK[0x220])), *&STACK[0x220]), *&STACK[0x300]);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, *&STACK[0x2F0]), vorrq_s8(v150, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x2E0]);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), *&STACK[0x250]), v153), *&STACK[0x200]), a67);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v154.i64[0] = a2 + v73 - 15;
  v154.i64[1] = a2 + v73 - 16;
  v157 = vaddq_s64(v156, v155);
  v158 = vandq_s8(v154, a65);
  v159 = vaddq_s64(v278, *&STACK[0x240]);
  v283.val[0] = vshlq_u64(veorq_s8(v157, a66), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v136)));
  v160 = veorq_s8(v159, *&STACK[0x2B0]);
  v161 = veorq_s8(v159, *&STACK[0x2A0]);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), *&STACK[0x290]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), *&STACK[0x280]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, *&STACK[0x270]), vorrq_s8(v166, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x260]);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, *&STACK[0x310]), vorrq_s8(v169, *&STACK[0x220])), *&STACK[0x220]), *&STACK[0x300]);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, *&STACK[0x2F0]), vorrq_s8(v172, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x2E0]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), *&STACK[0x250]), v175), *&STACK[0x200]), a67);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v179 = vandq_s8(v280, a65);
  v180 = vaddq_s64(v178, v177);
  v181 = vandq_s8(*&STACK[0x2C0], a65);
  v283.val[2] = vshlq_u64(veorq_s8(v180, a66), vnegq_s64(vandq_s8(vshlq_n_s64(v277, 3uLL), v136)));
  v182 = vandq_s8(*&STACK[0x2D0], a65);
  v183 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), *&STACK[0x340]);
  v187 = vaddq_s64(v185, *&STACK[0x340]);
  v188 = veorq_s8(vaddq_s64(v183, *&STACK[0x340]), *&STACK[0x330]);
  v189 = veorq_s8(vaddq_s64(v184, *&STACK[0x340]), *&STACK[0x330]);
  v190 = veorq_s8(v187, *&STACK[0x330]);
  v191 = veorq_s8(v186, *&STACK[0x330]);
  v279 = vsubq_s64(vorrq_s8(v188, *&STACK[0x320]), vorrq_s8(v188, *&STACK[0x240]));
  v192 = vaddq_s64(vsubq_s64(vorrq_s8(v191, *&STACK[0x320]), vorrq_s8(v191, *&STACK[0x240])), *&STACK[0x240]);
  v193 = vaddq_s64(vsubq_s64(vorrq_s8(v190, *&STACK[0x320]), vorrq_s8(v190, *&STACK[0x240])), *&STACK[0x240]);
  v283.val[3].i64[0] = vqtbl4q_s8(v283, a55).u64[0];
  v194 = veorq_s8(v193, *&STACK[0x2B0]);
  v195 = veorq_s8(v192, *&STACK[0x2B0]);
  v196 = veorq_s8(v192, *&STACK[0x2A0]);
  v197 = veorq_s8(v193, *&STACK[0x2A0]);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), *&STACK[0x290]);
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v197), *&STACK[0x290]);
  v200 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v201 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v202 = veorq_s8(v198, v200);
  v203 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v202);
  v205 = veorq_s8(vaddq_s64(v203, v201), *&STACK[0x280]);
  v206 = veorq_s8(v204, *&STACK[0x280]);
  v207 = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v208 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v209 = veorq_s8(v205, v207);
  v210 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v209);
  v212 = vaddq_s64(v210, v208);
  v213 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v211, *&STACK[0x270]), vorrq_s8(v211, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x260]);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v212, *&STACK[0x270]), vorrq_s8(v212, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x260]);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v216 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v216);
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v219 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v217, *&STACK[0x310]), vorrq_s8(v217, *&STACK[0x220])), *&STACK[0x220]), *&STACK[0x300]);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v218, *&STACK[0x310]), vorrq_s8(v218, *&STACK[0x220])), *&STACK[0x220]), *&STACK[0x300]);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v222 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v222);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223, *&STACK[0x2F0]), vorrq_s8(v223, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x2E0]);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v224, *&STACK[0x2F0]), vorrq_s8(v224, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x2E0]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v228 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v228);
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v230, v230), *&STACK[0x250]), v230), *&STACK[0x200]), a67);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v229, v229), *&STACK[0x250]), v229), *&STACK[0x200]), a67);
  v233 = vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL);
  v234 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v235 = veorq_s8(v231, v233);
  v236 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v238 = vaddq_s64(vsubq_s64(vorrq_s8(v189, *&STACK[0x320]), vorrq_s8(v189, *&STACK[0x240])), *&STACK[0x240]);
  v282.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v237, v235), a66), vnegq_s64(vandq_s8(vshlq_n_s64(v154, 3uLL), v136)));
  v282.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v236, v234), a66), vnegq_s64(vandq_s8(vshlq_n_s64(v280, 3uLL), v136)));
  v239 = veorq_s8(v238, *&STACK[0x2B0]);
  v240 = veorq_s8(v238, *&STACK[0x2A0]);
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), *&STACK[0x290]);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242), *&STACK[0x280]);
  v244 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v245 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v244);
  v246 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v245, *&STACK[0x270]), vorrq_s8(v245, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x260]);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247);
  v249 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v248, *&STACK[0x310]), vorrq_s8(v248, *&STACK[0x220])), *&STACK[0x220]), *&STACK[0x300]);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250);
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251, *&STACK[0x2F0]), vorrq_s8(v251, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x2E0]);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v254, v254), *&STACK[0x250]), v254), *&STACK[0x200]), a67);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL)));
  v257 = vaddq_s64(v279, *&STACK[0x240]);
  v282.val[1] = vshlq_u64(veorq_s8(v256, a66), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), v136)));
  v258 = veorq_s8(v257, *&STACK[0x2B0]);
  v259 = veorq_s8(v257, *&STACK[0x2A0]);
  v260 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v259), *&STACK[0x290]);
  v261 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL));
  v262 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v261), *&STACK[0x280]);
  v263 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL));
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263);
  v265 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v264, *&STACK[0x270]), vorrq_s8(v264, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x260]);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v267 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v266);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v267, *&STACK[0x310]), vorrq_s8(v267, *&STACK[0x220])), *&STACK[0x220]), *&STACK[0x300]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269);
  v271 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270, *&STACK[0x2F0]), vorrq_s8(v270, *&STACK[0x210])), *&STACK[0x210]), *&STACK[0x2E0]);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v273 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v272);
  v274 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v273, v273), *&STACK[0x250]), v273), *&STACK[0x200]), a67);
  v282.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL))), a66), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2D0], 3uLL), v136)));
  v283.val[3].i64[1] = vqtbl4q_s8(v282, a55).u64[0];
  v275 = vrev64q_s8(v283.val[3]);
  *(a3 + v73) = veorq_s8(vextq_s8(v275, v275, 8uLL), v281);
  return (*(a5 + 8 * (((a1 == v73) * v68) ^ v70)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55.i64[0], a55.i64[1], a56, a57);
}