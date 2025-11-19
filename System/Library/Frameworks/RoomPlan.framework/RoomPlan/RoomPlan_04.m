void *sub_23A8F99A8(float *a1, unint64_t a2, char a3, char a4, float32x2_t a5, float a6, float a7, float a8)
{
  v191 = MEMORY[0x277D84F90];
  v192 = MEMORY[0x277D84F90];
  v190 = MEMORY[0x277D84F90];
  v13 = a1[4];
  v14 = a1[5];
  v160 = a1[6];
  v154 = a1[7];
  v172 = cosf(v13);
  *&v15 = sinf(v13);
  v166 = v15;
  v16.f32[0] = cosf(v14);
  v176 = v16;
  v17 = sinf(v14);
  *(&v38 + 1) = *(&v166 + 1);
  *&v38 = vadd_f32(vmul_n_f32(__PAIR64__(v166, LODWORD(v172)), a6), a5);
  v18 = vsub_f32(a5, *&v38);
  v19 = vmul_f32(v18, v18);
  v19.i32[0] = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
  v20 = vrsqrte_f32(v19.u32[0]);
  v21 = vmul_f32(v20, vrsqrts_f32(v19.u32[0], vmul_f32(v20, v20)));
  v22 = vmul_n_f32(v18, vmul_f32(v21, vrsqrts_f32(v19.u32[0], vmul_f32(v21, v21))).f32[0]);
  v25 = v176;
  v25.f32[1] = v17;
  v23 = vadd_f32(vmul_n_f32(*v25.f32, a6), a5);
  v24 = vsub_f32(a5, v23);
  *v25.f32 = vmul_f32(v24, v24);
  v25.i32[0] = vadd_f32(*v25.f32, vdup_lane_s32(*v25.f32, 1)).u32[0];
  v26 = vrsqrte_f32(v25.u32[0]);
  v27 = vmul_f32(v26, vrsqrts_f32(v25.u32[0], vmul_f32(v26, v26)));
  v28 = vmul_n_f32(v24, vmul_f32(v27, vrsqrts_f32(v25.u32[0], vmul_f32(v27, v27))).f32[0]);
  DWORD1(v29) = 0;
  HIDWORD(v30) = 0;
  *&v30 = *&v38 + (a7 * v22.f32[0]);
  v32 = v30;
  v32.f32[1] = (a7 * 0.0) + v160;
  v31 = *(&v38 + 1) + vmuls_lane_f32(a7, v22, 1);
  v32.f32[2] = v31;
  v33.i32[1] = 0;
  v33.i64[1] = 0;
  v34 = vmuls_lane_f32(a7, v28, 1);
  v35 = v23.f32[0] + (a7 * v28.f32[0]);
  v36 = v23.f32[1];
  v22.f32[0] = (0.0 - v22.f32[0]) * a8;
  v37 = *(&v38 + 1) + ((0.0 - v22.f32[1]) * a8);
  *v41.f32 = vmul_n_f32(COERCE_UNSIGNED_INT(0.0 - v28.f32[0]), a8);
  DWORD1(v38) = v41.i32[1];
  v22.f32[1] = v160;
  *v39.f32 = vadd_f32(*&v38, v22);
  v42 = v39;
  v42.i32[3] = 0;
  v40 = v42;
  v40.i32[1] = v39.i32[1];
  v40.f32[2] = v37;
  v23.f32[1] = v154;
  *v41.f32 = vadd_f32(*v41.f32, v23);
  v42.i32[1] = v41.i32[1];
  v42.f32[2] = v37;
  v43 = vsubq_f32(v32, v40);
  v44 = vmulq_f32(v43, v43);
  if ((v44.f32[2] + vaddv_f32(*v44.f32)) < 1.4211e-14)
  {
    *v32.f32 = vadd_f32(*v39.f32, 0x3F80000000000000);
    v32.f32[2] = v37 + 0.0;
    v32.i32[3] = 0;
  }

  v33.f32[0] = v35;
  v45 = v41;
  v45.i32[3] = 0;
  *&v29 = v36 + v34;
  v159 = v29;
  *&v38 = v36 + ((0.0 - v28.f32[1]) * a8);
  v161 = v38;
  *(&v30 + 2) = v31;
  *(&v30 + 1) = (a7 * 0.0) + v154;
  v155 = v30;
  v151 = v40;
  v46 = vsubq_f32(v42, v40);
  v47 = vmulq_f32(v46, v46);
  if ((v47.f32[2] + vaddv_f32(*v47.f32)) < 1.4211e-14)
  {
    *v42.f32 = vadd_f32(*v39.f32, 0);
    v42.f32[2] = v37 + -1.0;
    v42.i32[3] = 0;
  }

  v149 = v42;
  v173 = v33;
  v33.f32[1] = (a7 * 0.0) + v154;
  v167 = v33;
  v177 = v45;
  v153 = *v41.f32;
  v45.i32[1] = v41.i32[1];
  v163 = v45;
  *v25.f32 = vsub_f32(*v32.f32, *v39.f32);
  v25.f32[2] = v32.f32[2] - v37;
  v152 = v39.i32[1];
  *v47.f32 = vsub_f32(*v42.f32, *v39.f32);
  v47.f32[2] = v42.f32[2] - v37;
  v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), vnegq_f32(v25)), v47, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
  v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
  v50 = vmulq_f32(v48, v48);
  *&v51 = v50.f32[1] + (v50.f32[2] + v50.f32[0]);
  *v50.f32 = vrsqrte_f32(v51);
  *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
  v150 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]);
  v148 = v32;
  type metadata accessor for RoomCaptureQuad();
  v52 = swift_allocObject();
  v52[1] = v151;
  v52[2] = v148;
  v52[3] = v155;
  v52[4] = v149;
  v52[5] = v150;
  v147 = a2;
  v146 = a3;
  if (a4)
  {
    sub_23A9313A0();
    v54 = v53;

    v52 = v54;
  }

  v55 = v177;
  v55.i32[1] = v152;
  v178 = v55;
  v56 = v167;
  v56.i32[2] = v159;
  v168 = v56;
  v57 = v163;
  v57.i32[2] = v161;
  v164 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA11BB0;
  *(inited + 32) = v52;

  v59 = sub_23A982850(inited);
  swift_setDeallocating();
  v60 = *(inited + 16);
  swift_arrayDestroy();
  v156 = v59;
  v61 = *(v59 + 32);
  v62 = *(v61 + 16);
  v63 = MEMORY[0x277D84F90];
  if (v62)
  {
    v182 = MEMORY[0x277D84F90];

    sub_23A975E54(0, v62, 0);
    v64 = 32;
    v63 = v182;
    do
    {
      v65 = *(v61 + v64);
      v67 = *(v182 + 16);
      v66 = *(v182 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_23A975E54((v66 > 1), v67 + 1, 1);
      }

      *(v182 + 16) = v67 + 1;
      *(v182 + 4 * v67 + 32) = v65;
      v64 += 4;
      --v62;
    }

    while (v62);
  }

  v68 = v173;
  v68.f32[1] = (a7 * 0.0) + v160;
  v174 = v68;
  v69 = v178;
  v69.i32[2] = v161;
  v179 = v69;
  sub_23A911A8C(v63);
  v70 = *(v156 + 16);

  sub_23A9119A0(v71);
  v72 = *(v156 + 24);

  sub_23A9119A0(v73);
  v74 = v168;
  v75 = vsubq_f32(v168, v164);
  v76 = vmulq_f32(v75, v75);
  if ((v76.f32[2] + vaddv_f32(*v76.f32)) < 1.4211e-14)
  {
    *v74.f32 = vadd_f32(v153, 0x3F80000000000000);
    v74.f32[2] = *&v161 + 0.0;
    v74.i32[3] = 0;
  }

  v77 = v174;
  v78.i32[3] = HIDWORD(v159);
  v77.i32[2] = v159;
  v175 = v77;
  v79 = v179;
  v80 = vsubq_f32(v179, v164);
  v81 = vmulq_f32(v80, v80);
  if ((v81.f32[2] + vaddv_f32(*v81.f32)) < 1.4211e-14)
  {
    *v79.f32 = vadd_f32(v153, 0);
    v78.i32[3] = HIDWORD(v161);
    v79.f32[2] = *&v161 + -1.0;
    v79.i32[3] = 0;
  }

  v180 = v79;
  *v81.f32 = vsub_f32(*v74.f32, v153);
  v81.f32[2] = v74.f32[2] - *&v161;
  *v78.f32 = vsub_f32(*v79.f32, v153);
  v78.f32[2] = v79.f32[2] - *&v161;
  v169 = v74;
  v82 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL), vnegq_f32(v81)), v78, vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL));
  v83 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
  v84 = vmulq_f32(v82, v82);
  *&v85 = v84.f32[1] + (v84.f32[2] + v84.f32[0]);
  *v84.f32 = vrsqrte_f32(v85);
  *v84.f32 = vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32)));
  v162 = vmulq_n_f32(v83, vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32))).f32[0]);
  v86 = swift_allocObject();
  v86[1] = v164;
  v86[2] = v169;
  v86[3] = v175;
  v86[4] = v180;
  v86[5] = v162;
  if (a4)
  {
    sub_23A9313A0();
    v88 = v87;

    v86 = v88;
  }

  v89 = swift_initStackObject();
  *(v89 + 16) = xmmword_23AA11BB0;
  *(v89 + 32) = v86;

  v90 = sub_23A982850(v89);
  swift_setDeallocating();
  v91 = *(v89 + 16);
  swift_arrayDestroy();
  v181 = v90;
  v92 = *(v90 + 32);
  v93 = *(v92 + 16);
  v94 = MEMORY[0x277D84F90];
  if (v93)
  {
    v183 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v93, 0);
    v94 = v183;
    v96 = 32;
    while (1)
    {
      v97 = *(v192 + 16);
      if (HIDWORD(v97))
      {
        break;
      }

      v98 = *(v92 + v96);
      v99 = v98 + v97;
      if (__CFADD__(v98, v97))
      {
        goto LABEL_58;
      }

      v101 = *(v183 + 16);
      v100 = *(v183 + 24);
      if (v101 >= v100 >> 1)
      {
        result = sub_23A975E54((v100 > 1), v101 + 1, 1);
      }

      *(v183 + 16) = v101 + 1;
      *(v183 + 4 * v101 + 32) = v99;
      v96 += 4;
      if (!--v93)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_27:
  sub_23A911A8C(v94);
  v102 = *(v181 + 16);

  sub_23A9119A0(v103);
  v104 = *(v181 + 24);

  sub_23A9119A0(v105);
  sub_23A8F92F4(a4 & 1, v147, v146 & 1, v13, v14, a5, a6, v160, a7, a8);
  v107 = v106;
  v108 = v106[4];
  v109 = *(v108 + 16);
  v110 = MEMORY[0x277D84F90];
  if (v109)
  {
    v184 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v109, 0);
    v110 = v184;
    v111 = 32;
    while (1)
    {
      v112 = *(v192 + 16);
      if (HIDWORD(v112))
      {
        break;
      }

      v113 = *(v108 + v111);
      v114 = v113 + v112;
      if (__CFADD__(v113, v112))
      {
        goto LABEL_60;
      }

      v116 = *(v184 + 16);
      v115 = *(v184 + 24);
      if (v116 >= v115 >> 1)
      {
        result = sub_23A975E54((v115 > 1), v116 + 1, 1);
      }

      *(v184 + 16) = v116 + 1;
      *(v184 + 4 * v116 + 32) = v114;
      v111 += 4;
      if (!--v109)
      {

        goto LABEL_35;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_35:
  sub_23A911A8C(v110);
  v117 = v107[2];

  sub_23A9119A0(v118);
  v119 = v107[3];

  sub_23A9119A0(v120);
  v121 = v107[4];
  v122 = *(v121 + 16);
  v123 = MEMORY[0x277D84F90];
  if (v122)
  {
    v185 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v122, 0);
    v123 = v185;
    v124 = v122 + 7;
    while (v124 != 7)
    {
      v125 = *(v192 + 16);
      if (HIDWORD(v125))
      {
        goto LABEL_63;
      }

      v126 = *(v121 + 4 * v124);
      v127 = v126 + v125;
      if (__CFADD__(v126, v125))
      {
        goto LABEL_64;
      }

      v129 = *(v185 + 16);
      v128 = *(v185 + 24);
      if (v129 >= v128 >> 1)
      {
        result = sub_23A975E54((v128 > 1), v129 + 1, 1);
      }

      *(v185 + 16) = v129 + 1;
      *(v185 + 4 * v129 + 32) = v127;
      if (--v124 == 7)
      {

        goto LABEL_44;
      }
    }

    goto LABEL_62;
  }

LABEL_44:
  sub_23A911A8C(v123);
  v130 = v107[2];
  v131 = *(v130 + 16);
  result = MEMORY[0x277D84F90];
  if (v131)
  {
    v186 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v131, 0);
    v132 = 0;
    result = v186;
    LODWORD(v133) = 0;
    *(&v133 + 1) = v154 - v160;
    while (v132 < *(v130 + 16))
    {
      v134 = *(v130 + 32 + 16 * v132);
      v187 = result;
      v136 = result[2];
      v135 = result[3];
      if (v136 >= v135 >> 1)
      {
        v165 = *(v130 + 32 + 16 * v132);
        v170 = v133;
        sub_23A975DC0((v135 > 1), v136 + 1, 1);
        v134 = v165;
        v133 = v170;
        result = v187;
      }

      ++v132;
      *&v137 = vadd_f32(*&v133, *&v134);
      *(&v137 + 2) = *(&v134 + 2) + 0.0;
      HIDWORD(v137) = 0;
      result[2] = v136 + 1;
      *&result[2 * v136 + 4] = v137;
      if (v131 == v132)
      {
        goto LABEL_50;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_50:
  sub_23A9119A0(result);
  v138 = v107[3];
  v139 = *(v138 + 16);
  result = MEMORY[0x277D84F90];
  if (!v139)
  {
LABEL_56:
    sub_23A9119A0(result);

    type metadata accessor for RoomCaptureMesh();
    result = swift_allocObject();
    result[2] = v192;
    result[3] = v191;
    result[4] = v190;
    return result;
  }

  v188 = MEMORY[0x277D84F90];
  sub_23A975DC0(0, v139, 0);
  v140 = 0;
  result = v188;
  v141 = 0uLL;
  while (v140 < *(v138 + 16))
  {
    v142 = *(v138 + 32 + 16 * v140);
    v189 = result;
    v144 = result[2];
    v143 = result[3];
    if (v144 >= v143 >> 1)
    {
      v171 = *(v138 + 32 + 16 * v140);
      sub_23A975DC0((v143 > 1), v144 + 1, 1);
      v142 = v171;
      v141 = 0uLL;
      result = v189;
    }

    ++v140;
    *&v145 = vsubq_f32(v141, v142).u64[0];
    *(&v145 + 2) = 0.0 - v142.f32[2];
    HIDWORD(v145) = 0;
    result[2] = v144 + 1;
    *&result[2 * v144 + 4] = v145;
    if (v139 == v140)
    {
      goto LABEL_56;
    }
  }

LABEL_65:
  __break(1u);
  return result;
}

void *sub_23A8FA5A0(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, unint64_t a8, int a9)
{
  v137 = a5;
  v138 = a4;
  v139 = a3;
  v141.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v140.n128_u64[0] = *(v141.n128_u64[0] - 8);
  v15 = *(v140.n128_u64[0] + 64);
  MEMORY[0x28223BE20](v141.n128_u64[0]);
  v17 = &v126 - v16;
  v18 = MEMORY[0x277D84F90];
  v145 = MEMORY[0x277D84F90];
  v146 = MEMORY[0x277D84F90];
  v144 = MEMORY[0x277D84F90];
  v136 = a9;
  v133 = a1;
  v134 = a2;
  v135 = a8;
  v142 = sub_23A8F4B4C(a1, a2, a8, a9 & 1, v139);
  v19 = v142[2];
  inited = *(v19 + 16);
  if (inited)
  {
    v143 = v18;

    sub_23A975DC0(0, inited, 0);
    v21 = *(v19 + 16);
    v18 = v143;
    v22 = 2;
    v23 = v138.n128_f32[0];
    while (v21)
    {
      if ((v22 - 2) >= *(v19 + 16))
      {
        goto LABEL_70;
      }

      v24 = v142[3];
      if ((v22 - 2) >= *(v24 + 16))
      {
        goto LABEL_71;
      }

      v25 = *(v19 + 16 * v22);
      v26 = *(v24 + 16 * v22);
      v143 = v18;
      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      a8 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v132 = v25;
        v131 = v26;
        sub_23A975DC0((v27 > 1), v28 + 1, 1);
        v26 = v131;
        v25 = v132;
        v23 = v138.n128_f32[0];
        v18 = v143;
      }

      v29 = vmuls_lane_f32(v23, v26, 2);
      *&v30 = vaddq_f32(v25, vmulq_n_f32(v26, v23)).u64[0];
      *(&v30 + 1) = COERCE_UNSIGNED_INT(v25.f32[2] + v29);
      *(v18 + 16) = a8;
      *(v18 + 16 * v28 + 32) = v30;
      --v21;
      ++v22;
      if (!--inited)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_10:
  sub_23A9119A0(v18);
  v31 = v142;
  v32 = v142[3];

  sub_23A9119A0(v33);
  v34 = v31[4];

  sub_23A911A8C(v35);
  v37 = v31[4];
  a8 = *(v37 + 16);
  v38 = MEMORY[0x277D84F90];
  if (a8)
  {
    v143 = MEMORY[0x277D84F90];

    sub_23A975E54(0, a8, 0);
    v38 = v143;
    v39 = 32;
    v40 = v146;
    do
    {
      v41 = *(v40 + 16);
      if (HIDWORD(v41))
      {
        goto LABEL_72;
      }

      v42 = *(v37 + v39);
      v43 = v42 + v41;
      if (__CFADD__(v42, v41))
      {
        goto LABEL_73;
      }

      v143 = v38;
      v45 = *(v38 + 16);
      v44 = *(v38 + 24);
      inited = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_23A975E54((v44 > 1), v45 + 1, 1);
        v38 = v143;
      }

      *(v38 + 16) = inited;
      *(v38 + 4 * v45 + 32) = v43;
      v39 += 4;
      --a8;
    }

    while (a8);
  }

  sub_23A912078(v38, v36);
  v46 = v142[2];
  v47 = *(v46 + 16);
  inited = MEMORY[0x277D84F90];
  if (v47)
  {
    v143 = MEMORY[0x277D84F90];

    sub_23A975DC0(0, v47, 0);
    v48 = *(v46 + 16);
    inited = v143;
    v49 = 2;
    v9 = 0;
    v50 = 0uLL;
    v51 = v137.n128_f32[0];
    do
    {
      if (!v48)
      {
        goto LABEL_75;
      }

      if ((v49 - 2) >= *(v46 + 16))
      {
        goto LABEL_76;
      }

      v52 = v142[3];
      if ((v49 - 2) >= *(v52 + 16))
      {
        goto LABEL_77;
      }

      v53 = *(v46 + 16 * v49);
      v54 = *(v52 + 16 * v49);
      v143 = inited;
      v56 = *(inited + 16);
      v55 = *(inited + 24);
      a8 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v132 = v53;
        v131 = v54;
        sub_23A975DC0((v55 > 1), v56 + 1, 1);
        v54 = v131;
        v53 = v132;
        v50 = 0uLL;
        v51 = v137.n128_f32[0];
        inited = v143;
      }

      v54.i64[0] = vaddq_f32(v53, vmulq_n_f32(vsubq_f32(v50, v54), v51)).u64[0];
      v54.i64[1] = COERCE_UNSIGNED_INT(v53.f32[2] + ((0.0 - v54.f32[2]) * v51));
      *(inited + 16) = a8;
      *(inited + 16 * v56 + 32) = v54;
      --v48;
      ++v49;
      --v47;
    }

    while (v47);
  }

  sub_23A9119A0(inited);
  v57 = v142[3];
  v58 = *(v57 + 16);
  v59 = MEMORY[0x277D84F90];
  if (v58)
  {
    v143 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v58, 0);
    v60 = 0;
    v59 = v143;
    v61 = 0uLL;
    v9 = 0;
    while (v60 < *(v57 + 16))
    {
      v62 = *(v57 + 32 + 16 * v60);
      v143 = v59;
      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      a8 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v132 = v62;
        sub_23A975DC0((v63 > 1), v64 + 1, 1);
        v62 = v132;
        v61 = 0uLL;
        v59 = v143;
      }

      ++v60;
      *&v65 = vsubq_f32(v61, v62).u64[0];
      *(&v65 + 2) = 0.0 - v62.f32[2];
      HIDWORD(v65) = 0;
      *(v59 + 16) = a8;
      *(v59 + 16 * v64 + 32) = v65;
      if (v58 == v60)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_74;
  }

LABEL_33:
  sub_23A9119A0(v59);
  v66 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v67 = *(v66 + 24);
  v68 = objc_opt_self();
  v69 = [v68 radians];
  v70 = v133;
  v71 = v141.n128_u64[0];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v73 = v72;
  v74 = *(v140.n128_u64[0] + 8);
  v75 = v74(v17, v71);
  v75.n128_f32[0] = v73;
  v140 = v75;
  v76 = *(v66 + 28);
  v77 = [v68 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v79 = v78;
  v80 = v74(v17, v71);
  v80.n128_f32[0] = v79;
  v141 = v80;
  v80.n128_u64[0] = vmul_n_f32(COERCE_FLOAT32X2_T(--0.0000305175998), v139.n128_f32[0]);
  v139 = v80;
  v130 = type metadata accessor for CurvedElement();
  inited = swift_initStackObject();
  v81 = v141.n128_u32[0];
  *(inited + 16) = v140.n128_u32[0];
  *(inited + 20) = v81;
  *(inited + 24) = v139.n128_u64[0];
  v9 = *v70;
  v10 = v70[1].f32[0];
  v133 = sub_23A8F99A8(inited, v135, v136 & 1, 0, *v70, v10, v138.n128_f32[0], v137.n128_f32[0]);
  v82 = v133[4];
  a8 = *(*&v82 + 16);
  v83 = MEMORY[0x277D84F90];
  if (a8)
  {
    v143 = MEMORY[0x277D84F90];

    sub_23A975E54(0, a8, 0);
    v83 = v143;
    v84 = 32;
    v85 = v146;
    do
    {
      v86 = *(v85 + 16);
      if (HIDWORD(v86))
      {
        goto LABEL_78;
      }

      v87 = *(*&v82 + v84);
      v88 = v87 + v86;
      if (__CFADD__(v87, v86))
      {
        goto LABEL_79;
      }

      v143 = v83;
      v90 = *(v83 + 16);
      v89 = *(v83 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_23A975E54((v89 > 1), v90 + 1, 1);
        v83 = v143;
      }

      *(v83 + 16) = v90 + 1;
      *(v83 + 4 * v90 + 32) = v88;
      v84 += 4;
      --a8;
    }

    while (a8);
  }

  sub_23A911A8C(v83);
  v91 = v133;
  v92 = v133[2];

  sub_23A9119A0(v93);
  v94 = v91[3];

  result = sub_23A9119A0(v95);
  a8 = v134;
  if (v134 >> 62)
  {
    goto LABEL_82;
  }

  v97 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v97)
  {
LABEL_83:

    v124 = v145;
    v123 = v146;
    v125 = v144;
    type metadata accessor for RoomCaptureMesh();
    result = swift_allocObject();
    result[2] = v123;
    result[3] = v124;
    result[4] = v125;
    return result;
  }

LABEL_43:
  if (v97 >= 1)
  {
    v131.i64[0] = inited;
    inited = 0;
    v98 = a8 & 0xC000000000000001;
    v99 = a8 + 32;
    v100.i64[0] = __PAIR64__(v141.n128_u32[0], v140.n128_u32[0]);
    v101 = vabds_f32(v140.n128_f32[0], v141.n128_f32[0]);
    v102 = v139.n128_f32[1];
    v103 = vabds_f32(v139.n128_f32[0], v139.n128_f32[1]);
    v100.i64[1] = v139.n128_u64[0];
    v129 = v100;
    while (1)
    {
      if (v98)
      {
        v104 = MEMORY[0x23EE90360](inited, a8);
      }

      else
      {
        v104 = *(v99 + 8 * inited);
      }

      v105.i64[0] = *(v104 + 16);
      if (vabds_f32(v105.f32[0], v105.f32[1]) < 0.00000011921 || (v106 = *(v104 + 24), vabds_f32(*&v106, *(&v106 + 1)) < 0.00000011921) || v101 < 0.00000011921 || v103 < 0.00000011921 || v105.f32[0] >= v141.n128_f32[0] || v105.f32[1] <= v140.n128_f32[0] || v102 <= *&v106 || *(&v106 + 1) <= v139.n128_f32[0])
      {
      }

      else
      {
        v126 = v99;
        v127 = v98;
        v105.i64[1] = v106;
        v128 = v105;
        v132 = vmovl_s16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgeq_f32(v129, v105))), vmovn_s32(vcgtq_f32(v105, v129))));
        v107 = swift_initStackObject();
        *(v107 + 16) = vbslq_s8(v132, v129, v128);
        v128.i64[0] = sub_23A8F99A8(v107, v135, v136 & 1, 1, v9, v10, v138.n128_f32[0], v137.n128_f32[0]);
        v108 = *(v128.i64[0] + 32);
        v109 = *(v108 + 16);
        if (v109)
        {
          v143 = MEMORY[0x277D84F90];

          sub_23A975E54(0, v109, 0);
          v110 = v143;
          v111 = v146;
          a8 = 32;
          v132.i64[0] = v108;
          while (1)
          {
            v112 = *(v111 + 16);
            if (HIDWORD(v112))
            {
              break;
            }

            v113 = *(v108 + a8);
            v114 = v113 + v112;
            if (__CFADD__(v113, v112))
            {
              goto LABEL_81;
            }

            v143 = v110;
            v116 = *(v110 + 16);
            v115 = *(v110 + 24);
            if (v116 >= v115 >> 1)
            {
              v117 = v111;
              sub_23A975E54((v115 > 1), v116 + 1, 1);
              v111 = v117;
              v110 = v143;
            }

            *(v110 + 16) = v116 + 1;
            *(v110 + 4 * v116 + 32) = v114;
            a8 += 4;
            --v109;
            v108 = v132.i64[0];
            if (!v109)
            {

              a8 = v134;
              goto LABEL_68;
            }
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          result = sub_23AA0D7F4();
          v97 = result;
          if (!result)
          {
            goto LABEL_83;
          }

          goto LABEL_43;
        }

        v110 = MEMORY[0x277D84F90];
LABEL_68:
        sub_23A911A8C(v110);
        v118 = v128.i64[0];
        v119 = *(v128.i64[0] + 16);

        sub_23A9119A0(v120);
        v121 = *(v118 + 24);

        sub_23A9119A0(v122);

        v98 = v127;
        v99 = v126;
      }

      if (++inited == v97)
      {
        goto LABEL_83;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_23A8FB114()
{
  type metadata accessor for Constants();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_23AA0D134();
    v5 = v4;
  }

  else
  {
    v5 = 0x800000023AA1DEC0;
    v3 = 0xD000000000000012;
  }

  qword_27DFC0600 = v3;
  *algn_27DFC0608 = v5;
}

uint64_t sub_23A8FB660(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_23AA0CD84();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_23A8FB6B8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_23AA0CE14();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  (MEMORY[0x28223BE20])();
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_23AA0CCF4() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_23AA0CCD4() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_23AA0CD54() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v36 = &v34 - v11;
  v12 = sub_23AA0CC74();
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  (MEMORY[0x28223BE20])();
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23AA0CC34();
  v16 = *(v46 - 8);
  v17 = *(v16 + 64);
  v18 = (MEMORY[0x28223BE20])();
  v34 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v22 = sub_23AA0CC14();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v34 - v28;
  (*(v23 + 104))(&v34 - v28, *MEMORY[0x277CDB2A8], v22);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  sub_23AA0CC24();
  sub_23A93C058();
  sub_23AA0CC64();
  v37 = v21;
  v38 = v16;
  v30 = v16;
  v31 = v35;
  (*(v30 + 16))(v34, v21, v46);
  v32 = v36;
  (*(v31 + 16))(v36, v15, v12);
  (*(v31 + 56))(v32, 0, 1, v12);
  (*(v23 + 16))(v27, v29, v22);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v44 + 104))(v43, *MEMORY[0x277CDB490], v45);
  sub_23AA0CBD4();
  (*(v31 + 8))(v15, v12);
  (*(v38 + 8))(v37, v46);
  return (*(v23 + 8))(v29, v22);
}

uint64_t sub_23A8FBD38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>, __n128 a5@<Q0>)
{
  v54 = a4;
  v57 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v50 - v10;
  v11 = sub_23AA0CBB4();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0CD84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, a3);
  v59 = v15;
  v20 = *(v15 + 16);
  v20(v18, v19, v14);
  updated = type metadata accessor for MeshUpdateScanMaterial();
  v22 = *(updated + 48);
  v23 = *(updated + 52);
  v55 = updated;
  v24 = swift_allocObject();
  *(v24 + 1) = v57;
  v56 = v18;
  v20(&v24[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v18, v14);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v57.n128_f32[0] green:v57.n128_f32[1] blue:v57.n128_f32[2] alpha:v57.n128_f32[3]];
  swift_beginAccess();
  v25 = sub_23AA0CD64();
  sub_23AA0CD34();
  v25(v58, 0);
  v26 = sub_23AA0CC84();
  sub_23AA0CB94();
  v26(v58, 0);
  swift_endAccess();
  v27 = type metadata accessor for MeshParamTexture();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  result = swift_allocObject();
  if ((a1 - 0x2000000000000000) >> 62 == 3)
  {
    v31 = result;
    v32 = a1;
    v33 = 4 * a1;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v34 = sub_23A93BFA4();
    v35 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v35 setPixelFormat_];
    [v35 setWidth_];
    [v35 setHeight_];
    [v35 setUsage_];
    v36 = [v34 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v36)
    {
      *(v31 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v36;
      *(v31 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = v32;
      *(v31 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = 0;
      *(v31 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = v33;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v37 = v50;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v38 = v51;
      v39 = v37;
      v40 = v52;
      (*(v51 + 32))(v31 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v39, v52);
      *&v24[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture] = v31;
      v41 = v53;
      (*(v38 + 16))(v53, v31 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v40);
      (*(v38 + 56))(v41, 0, 1, v40);
      swift_beginAccess();
      v42 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v42(v58, 0);
      swift_endAccess();
      result = (*(v59 + 8))(v56, v14);
      v43 = v54;
      v54[3] = v55;
      v43[4] = &off_284D84550;
      *v43 = v24;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v44 = xmmword_23AA12320;
      *(v44 + 16) = 2;
      swift_willThrow();
      v45 = *(*v31 + 48);
      v46 = *(*v31 + 52);
      swift_deallocPartialClassInstance();
      v47 = *(v59 + 8);
      v47(v56, v14);
      v47(&v24[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v14);
      v48 = *(*v24 + 48);
      v49 = *(*v24 + 52);
      return swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A8FC39C@<X0>(uint64_t a1@<X0>, char **a2@<X8>, __n128 a3@<Q0>)
{
  v54 = a2;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v48 - v6;
  v7 = sub_23AA0CBB4();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CD84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  if (qword_27DFAE3B8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_27DFAED90);
  v55 = v11;
  v19 = *(v11 + 16);
  v19(v17, v18, v10);
  v20 = type metadata accessor for SimpleScanMaterial();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v49 = v20;
  v23 = swift_allocObject();
  *&v23[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity] = 1065353216;
  *&v23[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity] = 1065353216;
  v59 = v17;
  v19(v15, v17, v10);
  *(v23 + 1) = v57;
  v56 = v15;
  v19(&v23[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v15, v10);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v57.n128_f32[0] green:v57.n128_f32[1] blue:v57.n128_f32[2] alpha:v57.n128_f32[3]];
  swift_beginAccess();
  v24 = sub_23AA0CD64();
  sub_23AA0CD34();
  v24(v58, 0);
  v25 = sub_23AA0CC84();
  sub_23AA0CB94();
  v25(v58, 0);
  swift_endAccess();
  v26 = type metadata accessor for MeshParamTexture();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  result = swift_allocObject();
  if ((a1 - 0x2000000000000000) >> 62 == 3)
  {
    v30 = result;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v31 = sub_23A93BFA4();
    v32 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v32 setPixelFormat_];
    [v32 setWidth_];
    [v32 setHeight_];
    [v32 setUsage_];
    v33 = [v31 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v33)
    {
      *(v30 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v33;
      *(v30 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = a1;
      *(v30 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = 0;
      *(v30 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = 4 * a1;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v34 = v50;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v35 = v51;
      v36 = v34;
      v37 = v52;
      (*(v51 + 32))(v30 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v36, v52);
      *&v23[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture] = v30;
      v38 = v53;
      (*(v35 + 16))(v53, v30 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v37);
      (*(v35 + 56))(v38, 0, 1, v37);
      swift_beginAccess();
      v39 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v39(v58, 0);
      swift_endAccess();
      v40 = *(v55 + 8);
      v40(v56, v10);
      result = (v40)(v59, v10);
      v41 = v54;
      v54[3] = v49;
      v41[4] = &off_284D84550;
      *v41 = v23;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v42 = xmmword_23AA12320;
      *(v42 + 16) = 2;
      swift_willThrow();
      v43 = *(*v30 + 48);
      v44 = *(*v30 + 52);
      swift_deallocPartialClassInstance();
      v45 = *(v55 + 8);
      v45(v56, v10);
      v45(v59, v10);
      v45(&v23[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v10);
      type metadata accessor for MeshUpdateScanMaterial();
      v46 = *(*v23 + 48);
      v47 = *(*v23 + 52);
      return swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A8FCB64@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_23AA0CE14();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0CCF4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CCD4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CD54();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v46 = &v43 - v15;
  v44 = sub_23AA0CC74();
  v59 = *(v44 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v44);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23AA0CC34();
  v57 = *(v19 - 8);
  v58 = v19;
  v20 = *(v57 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v43 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - v23;
  v25 = sub_23AA0CC14();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v43 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v43 - v34;
  v36 = *(v26 + 104);
  v36(&v43 - v34, *MEMORY[0x277CDB2A8], v25);
  v36(v33, *MEMORY[0x277CDB2A0], v25);
  sub_23AA0CC04();
  v47 = *(v26 + 8);
  v45 = v26 + 8;
  v47(v33, v25);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  v37 = v44;
  sub_23AA0CC24();
  sub_23A93C058();
  sub_23AA0CC64();
  v38 = *(v57 + 16);
  v48 = v24;
  v38(v43, v24, v58);
  v39 = v59;
  v40 = *(v59 + 16);
  v41 = v46;
  v49 = v18;
  v40(v46, v18, v37);
  (*(v39 + 56))(v41, 0, 1, v37);
  (*(v26 + 16))(v30, v35, v25);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v55 + 104))(v54, *MEMORY[0x277CDB490], v56);
  sub_23AA0CBD4();
  (*(v59 + 8))(v49, v37);
  (*(v57 + 8))(v48, v58);
  return (v47)(v35, v25);
}

uint64_t sub_23A8FD1D8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_23AA0CCF4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0CCD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CD54();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v39 - v12;
  v13 = sub_23AA0CC74();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23AA0CC34();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v40 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v39 - v21;
  v23 = sub_23AA0CC14();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v39 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v39 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v39 - v31;
  v33 = *(v24 + 104);
  v33(&v39 - v31, *MEMORY[0x277CDB2A8], v23);
  v33(v30, *MEMORY[0x277CDB2A0], v23);
  sub_23AA0CC04();
  v42 = *(v24 + 8);
  v42(v30, v23);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  v34 = v41;
  sub_23AA0CC24();
  sub_23A93C058();
  sub_23AA0CC64();
  v35 = *(v50 + 16);
  v44 = v22;
  v35(v40, v22, v51);
  v36 = *(v34 + 16);
  v37 = v43;
  v45 = v16;
  v36(v43, v16, v13);
  (*(v34 + 56))(v37, 0, 1, v13);
  (*(v24 + 16))(v39, v32, v23);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v34 + 8))(v45, v13);
  (*(v50 + 8))(v44, v51);
  return (v42)(v32, v23);
}

void sub_23A8FDA00(uint64_t a1@<X0>, char **a2@<X8>, __n128 a3@<Q0>)
{
  v59 = a2;
  v63 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v54 - v6;
  v7 = sub_23AA0CBB4();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CD84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  if (qword_27DFAE3D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_27DFAEDF0);
  v60 = v11;
  v19 = *(v11 + 16);
  v19(v17, v18, v10);
  v20 = type metadata accessor for SimpleScanMaterial();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v55 = v20;
  v23 = swift_allocObject();
  *&v23[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity] = 1065353216;
  *&v23[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity] = 1065353216;
  v62 = v17;
  v19(v15, v17, v10);
  *(v23 + 1) = v63;
  v61 = v15;
  v19(&v23[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v15, v10);
  v24 = v63.n128_u32[3];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v63.n128_f32[0] green:v63.n128_f32[1] blue:v63.n128_f32[2] alpha:v63.n128_f32[3]];
  swift_beginAccess();
  v25 = sub_23AA0CD64();
  sub_23AA0CD34();
  v25(v64, 0);
  v26 = sub_23AA0CC84();
  __asm { FMOV            V0.4S, #1.0 }

  sub_23AA0CB94();
  v26(v64, 0);
  swift_endAccess();
  v32 = type metadata accessor for MeshParamTexture();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  if ((a1 - 0x2000000000000000) >> 62 == 3)
  {
    v36 = v35;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v37 = sub_23A93BFA4();
    v38 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v38 setPixelFormat_];
    [v38 setWidth_];
    [v38 setHeight_];
    [v38 setUsage_];
    v39 = [v37 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v39)
    {
      *(v36 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v39;
      *(v36 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = a1;
      *(v36 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = 1;
      *(v36 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = 4 * a1;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v40 = v54;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v41 = v56;
      v42 = v40;
      v43 = v57;
      (*(v56 + 32))(v36 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v42, v57);
      *&v23[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture] = v36;
      v44 = v58;
      (*(v41 + 16))(v58, v36 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v43);
      (*(v41 + 56))(v44, 0, 1, v43);
      swift_beginAccess();
      v45 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v45(v64, 0);
      swift_endAccess();
      v46 = *(v60 + 8);
      v46(v61, v10);
      v46(v62, v10);
      *&v23[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity] = v24;
      sub_23A9026C0();
      v47 = v59;
      v59[3] = v55;
      v47[4] = &off_284D84550;
      *v47 = v23;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v48 = xmmword_23AA12320;
      *(v48 + 16) = 2;
      swift_willThrow();
      v49 = *(*v36 + 48);
      v50 = *(*v36 + 52);
      swift_deallocPartialClassInstance();
      v51 = *(v60 + 8);
      v51(v61, v10);
      v51(v62, v10);
      v51(&v23[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v10);
      type metadata accessor for MeshUpdateScanMaterial();
      v52 = *(*v23 + 48);
      v53 = *(*v23 + 52);
      swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A8FE200(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_23AA0CD84();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_23A8FE258@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_23AA0CCF4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0CCD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CD54();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v41 - v12;
  v13 = sub_23AA0CC74();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23AA0CC34();
  v54 = *(v17 - 8);
  v55 = v17;
  v18 = *(v54 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v42 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v41 - v21;
  v23 = sub_23AA0CC14();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v41 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v41 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v41 - v31;
  v33 = *(v24 + 104);
  v33(&v41 - v31, *MEMORY[0x277CDB2A8], v23);
  v33(v30, *MEMORY[0x277CDB2A0], v23);
  sub_23AA0CC04();
  v34 = *(v24 + 8);
  v45 = v24 + 8;
  v46 = v34;
  v34(v30, v23);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  v35 = v43;
  sub_23AA0CC24();
  sub_23A93C058();
  v36 = v44;
  sub_23AA0CC64();
  v37 = *(v54 + 16);
  v48 = v22;
  v37(v42, v22, v55);
  v38 = *(v35 + 16);
  v39 = v47;
  v49 = v16;
  v38(v47, v16, v36);
  (*(v35 + 56))(v39, 0, 1, v36);
  (*(v24 + 16))(v41, v32, v23);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v35 + 8))(v49, v36);
  (*(v54 + 8))(v48, v55);
  return v46(v32, v23);
}

uint64_t sub_23A8FE878@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_23AA0CCF4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0CCD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CD54();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = &v39 - v12;
  v13 = sub_23AA0CC74();
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23AA0CC34();
  v49 = *(v18 - 8);
  v19 = *(v49 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  v25 = sub_23AA0CC14();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v39 - v31;
  (*(v26 + 104))(&v39 - v31, *MEMORY[0x277CDB2A8], v25);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  sub_23AA0CC24();
  sub_23A93C058();
  v33 = v40;
  sub_23AA0CC64();
  v34 = *(v49 + 16);
  v43 = v24;
  v44 = v18;
  v35 = v18;
  v36 = v41;
  v34(v22, v24, v35);
  v37 = v42;
  (*(v36 + 16))(v42, v17, v33);
  (*(v36 + 56))(v37, 0, 1, v33);
  (*(v26 + 16))(v30, v32, v25);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v36 + 8))(v17, v33);
  (*(v49 + 8))(v43, v44);
  return (*(v26 + 8))(v32, v25);
}

uint64_t sub_23A8FEDC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char **a6@<X8>, __n128 a7@<Q0>)
{
  v61 = a5;
  v66 = a4;
  v70 = a7;
  v72 = a1;
  v65 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v59 - v11;
  v63 = sub_23AA0CBB4();
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v59 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0CD84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  if (*a2 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, a3);
  v69 = v15;
  v23 = *(v15 + 16);
  v23(v21, v22, v14);
  v24 = type metadata accessor for SimpleScanMaterial();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v60 = v24;
  v27 = swift_allocObject();
  *&v27[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity] = 1065353216;
  *&v27[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity] = 1065353216;
  v68 = v21;
  v23(v19, v21, v14);
  *(v27 + 1) = v70;
  v67 = v19;
  v23(&v27[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v19, v14);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v70.n128_f32[0] green:v70.n128_f32[1] blue:v70.n128_f32[2] alpha:v70.n128_f32[3]];
  swift_beginAccess();
  v28 = sub_23AA0CD64();
  sub_23AA0CD34();
  v28(v71, 0);
  v29 = sub_23AA0CC84();
  __asm { FMOV            V0.4S, #1.0 }

  sub_23AA0CB94();
  v29(v71, 0);
  swift_endAccess();
  v35 = type metadata accessor for MeshParamTexture();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  result = swift_allocObject();
  v39 = v72;
  if ((v72 - 0x2000000000000000) >> 62 == 3)
  {
    v40 = result;
    v41 = 4 * v72;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v42 = sub_23A93BFA4();
    v43 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v43 setPixelFormat_];
    [v43 setWidth_];
    [v43 setHeight_];
    [v43 setUsage_];
    v44 = [v42 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v44)
    {
      *(v40 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v44;
      *(v40 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = v39;
      *(v40 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = v61;
      *(v40 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = v41;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v45 = v59;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v46 = v62;
      v47 = v45;
      v48 = v63;
      (*(v62 + 32))(v40 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v47, v63);
      *&v27[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture] = v40;
      v49 = v64;
      (*(v46 + 16))(v64, v40 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v48);
      (*(v46 + 56))(v49, 0, 1, v48);
      swift_beginAccess();
      v50 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v50(v71, 0);
      swift_endAccess();
      v51 = *(v69 + 8);
      v51(v67, v14);
      result = (v51)(v68, v14);
      v52 = v65;
      v65[3] = v60;
      v52[4] = &off_284D84550;
      *v52 = v27;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v53 = xmmword_23AA12320;
      *(v53 + 16) = 2;
      swift_willThrow();
      v54 = *(*v40 + 48);
      v55 = *(*v40 + 52);
      swift_deallocPartialClassInstance();
      v56 = *(v69 + 8);
      v56(v67, v14);
      v56(v68, v14);
      v56(&v27[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v14);
      type metadata accessor for MeshUpdateScanMaterial();
      v57 = *(*v27 + 48);
      v58 = *(*v27 + 52);
      return swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A8FF548@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_23AA0CCF4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0CCD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CD54();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = &v39 - v12;
  v13 = sub_23AA0CC74();
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23AA0CC34();
  v49 = *(v18 - 8);
  v19 = *(v49 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  v25 = sub_23AA0CC14();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v39 - v31;
  (*(v26 + 104))(&v39 - v31, *MEMORY[0x277CDB2A0], v25);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  sub_23AA0CC24();
  sub_23A93C058();
  v33 = v40;
  sub_23AA0CC64();
  v34 = *(v49 + 16);
  v43 = v24;
  v44 = v18;
  v35 = v18;
  v36 = v41;
  v34(v22, v24, v35);
  v37 = v42;
  (*(v36 + 16))(v42, v17, v33);
  (*(v36 + 56))(v37, 0, 1, v33);
  (*(v26 + 16))(v30, v32, v25);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v36 + 8))(v17, v33);
  (*(v49 + 8))(v43, v44);
  return (*(v26 + 8))(v32, v25);
}

uint64_t sub_23A8FFA74@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_23AA0CCF4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0CCD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CD54();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v48 = &v42 - v12;
  v13 = sub_23AA0CC74();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23AA0CC34();
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v43 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  v23 = sub_23AA0CC14();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v42 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v42 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v42 - v31;
  v33 = *MEMORY[0x277CDB2A0];
  v34 = *(v24 + 104);
  v34(&v42 - v31, v33, v23);
  v34(v30, v33, v23);
  sub_23AA0CC04();
  v35 = *(v24 + 8);
  v46 = v24 + 8;
  v47 = v35;
  v35(v30, v23);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  v36 = v44;
  sub_23AA0CC24();
  sub_23A93C058();
  v37 = v45;
  sub_23AA0CC64();
  v38 = *(v55 + 16);
  v49 = v22;
  v38(v43, v22, v56);
  v39 = *(v36 + 16);
  v40 = v48;
  v50 = v16;
  v39(v48, v16, v37);
  (*(v36 + 56))(v40, 0, 1, v37);
  (*(v24 + 16))(v42, v32, v23);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v36 + 8))(v50, v37);
  (*(v55 + 8))(v49, v56);
  return v47(v32, v23);
}

uint64_t sub_23A90007C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>, __n128 a5@<Q0>)
{
  v67 = a4;
  v72 = a5;
  v70 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v62 - v10;
  v65 = sub_23AA0CBB4();
  v64 = *(v65 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CD84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v71 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v74 = &v62 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = v72;
  if (Strong)
  {
    v21 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v20 = v72;
    if ((v27 & 1) == 0)
    {
      v20.n128_u64[0] = v23;
      v20.n128_u64[1] = v25;
    }
  }

  v69 = v20;
  if (*a2 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v13, a3);
  v68 = v14;
  v29 = *(v14 + 16);
  v30 = v74;
  v29(v74, v28, v13);
  v31 = type metadata accessor for SimpleScanMaterial();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v62 = v31;
  v34 = swift_allocObject();
  *&v34[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity] = 1065353216;
  *&v34[OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity] = 1065353216;
  v35 = v71;
  v29(v71, v30, v13);
  *(v34 + 1) = v72;
  v29(&v34[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v35, v13);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v72.n128_f32[0] green:v72.n128_f32[1] blue:v72.n128_f32[2] alpha:v72.n128_f32[3]];
  swift_beginAccess();
  v36 = sub_23AA0CD64();
  sub_23AA0CD34();
  v36(v73, 0);
  v37 = sub_23AA0CC84();
  sub_23AA0CB94();
  v37(v73, 0);
  swift_endAccess();
  v38 = type metadata accessor for MeshParamTexture();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  result = swift_allocObject();
  v42 = v70;
  if ((v70 - 0x2000000000000000) >> 62 == 3)
  {
    v43 = result;
    v44 = 4 * v70;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v45 = sub_23A93BFA4();
    v46 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v46 setPixelFormat_];
    [v46 setWidth_];
    [v46 setHeight_];
    [v46 setUsage_];
    v47 = [v45 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v47)
    {
      *(v43 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v47;
      *(v43 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = v42;
      *(v43 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = 1;
      *(v43 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = v44;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v48 = v63;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v49 = v64;
      v50 = v48;
      v51 = v65;
      (*(v64 + 32))(v43 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v50, v65);
      *&v34[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture] = v43;
      v52 = v66;
      (*(v49 + 16))(v66, v43 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v51);
      (*(v49 + 56))(v52, 0, 1, v51);
      swift_beginAccess();
      v53 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v53(v73, 0);
      swift_endAccess();
      v54 = *(v68 + 8);
      v54(v71, v13);
      result = (v54)(v74, v13);
      v55 = v67;
      v67[3] = v62;
      v55[4] = &off_284D84550;
      *v55 = v34;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v56 = xmmword_23AA12320;
      *(v56 + 16) = 2;
      swift_willThrow();
      v57 = *(*v43 + 48);
      v58 = *(*v43 + 52);
      swift_deallocPartialClassInstance();
      v59 = *(v68 + 8);
      v59(v71, v13);
      v59(v74, v13);
      v59(&v34[OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial], v13);
      type metadata accessor for MeshUpdateScanMaterial();
      v60 = *(*v34 + 48);
      v61 = *(*v34 + 52);
      return swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A900804()
{
  sub_23A8E9694(v0 + 16);
  v1 = *(v0 + 96);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23A9008EC(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.4S, #1.0 }

  *(v2 + 32) = _Q0;
  *(v2 + 48) = _Q0;
  *(v2 + 64) = _Q0;
  *(v2 + 80) = _Q0;
  *(v2 + 96) = a1;
  sub_23AA0C3F4();
  swift_unknownObjectRetain();
  sub_23AA0C394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA10FC0;
  if (qword_27DFAE3D8 != -1)
  {
    swift_once();
  }

  v10 = sub_23AA0CD84();
  v11 = __swift_project_value_buffer(v10, qword_27DFAEDF0);
  v12 = MEMORY[0x277CDB298];
  *(v9 + 56) = v10;
  *(v9 + 64) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
  v14 = sub_23AA0C164();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_23AA0C154();

  return v2;
}

uint64_t sub_23A900A58(uint64_t a1)
{
  __asm { FMOV            V0.4S, #1.0 }

  return sub_23A900A80(a1, &qword_27DFAE3F8, qword_27DFAEE50, _Q0);
}

uint64_t sub_23A900A80(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v7 = v4;
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.4S, #1.0 }

  *(v7 + 32) = _Q0;
  *(v7 + 48) = _Q0;
  *(v7 + 64) = xmmword_23AA12340;
  *(v7 + 80) = a4;
  *(v7 + 96) = a1;
  sub_23AA0C3F4();
  swift_unknownObjectRetain();
  sub_23AA0C394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23AA10FC0;
  if (*a2 != -1)
  {
    swift_once();
  }

  v15 = sub_23AA0CD84();
  v16 = __swift_project_value_buffer(v15, a3);
  v17 = MEMORY[0x277CDB298];
  *(v14 + 56) = v15;
  *(v14 + 64) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
  v19 = sub_23AA0C164();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_23AA0C154();

  return v7;
}

uint64_t sub_23A900BF8(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 96) = a1;
  sub_23AA0C3F4();
  swift_unknownObjectRetain();
  sub_23AA0C394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AA10FC0;
  v5 = qword_27DFAE3B8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_23AA0CD84();
  v7 = __swift_project_value_buffer(v6, qword_27DFAED90);
  v8 = MEMORY[0x277CDB298];
  *(v4 + 56) = v6;
  *(v4 + 64) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  v10 = *(*(v6 - 8) + 16);
  v10(boxed_opaque_existential_1, v7, v6);
  v11 = sub_23AA0C164();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_23AA0C154();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23AA10FC0;
  if (qword_27DFAE3A8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_27DFAED60);
  *(v14 + 56) = v6;
  *(v14 + 64) = v8;
  v16 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  v10(v16, v15, v6);
  v17 = *(v11 + 48);
  v18 = *(v11 + 52);
  swift_allocObject();
  sub_23AA0C154();

  return v2;
}

uint64_t sub_23A900E38(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.4S, #1.0 }

  *(v2 + 32) = _Q0;
  *(v2 + 48) = _Q0;
  *(v2 + 64) = _Q0;
  *(v2 + 80) = _Q0;
  *(v2 + 96) = a1;
  sub_23AA0C3F4();
  swift_unknownObjectRetain();
  sub_23AA0C394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA10FC0;
  v10 = qword_27DFAE3D0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_23AA0CD84();
  v12 = __swift_project_value_buffer(v11, qword_27DFAEDD8);
  v13 = MEMORY[0x277CDB298];
  *(v9 + 56) = v11;
  *(v9 + 64) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  v15 = *(*(v11 - 8) + 16);
  v15(boxed_opaque_existential_1, v12, v11);
  v16 = sub_23AA0C164();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_23AA0C154();

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA10FC0;
  if (qword_27DFAE3C0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_27DFAEDA8);
  *(v19 + 56) = v11;
  *(v19 + 64) = v13;
  v21 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  v15(v21, v20, v11);
  v22 = *(v16 + 48);
  v23 = *(v16 + 52);
  swift_allocObject();
  sub_23AA0C154();

  return v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_23A901114()
{
  result = qword_27DFAEEB0;
  if (!qword_27DFAEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEEB0);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Corner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Corner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_23A901288(_BYTE *a1, _BYTE *a2)
{
  v2 = -1.0;
  if (*a1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = -1.0;
  }

  if (*a2)
  {
    v2 = 1.0;
  }

  return v3 == v2;
}

float *sub_23A901300@<X0>(float *result@<X0>, char *a2@<X8>)
{
  if (*result == 1.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == -1.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_23A901328(float *a1@<X8>)
{
  v2 = -1.0;
  if (*v1)
  {
    v2 = 1.0;
  }

  *a1 = v2;
}

uint64_t sub_23A901344()
{
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD34();
  return sub_23AA0DD34();
}

uint64_t sub_23A9013AC()
{
  sub_23AA0DD14();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD34();
  sub_23AA0DD34();
  return sub_23AA0DD54();
}

uint64_t sub_23A901440()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4];
  v3 = 256;
  if (!v0[1])
  {
    v3 = 0;
  }

  v4 = v3 | *v0;
  return sub_23A9013AC();
}

uint64_t sub_23A901498()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4];
  v3 = 256;
  if (!v0[1])
  {
    v3 = 0;
  }

  v4 = v3 | *v0;
  return sub_23A901344();
}

uint64_t sub_23A9014F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_23AA0DD14();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD34();
  sub_23AA0DD34();
  return sub_23AA0DD54();
}

uint64_t sub_23A9015A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = 0x100000000;
  if (a1[4])
  {
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  v13 = v3 == 0;
  v18 = 256;
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = 256;
  }

  v20 = v19 | v2 | v17 | v15;
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  if (!v7)
  {
    v18 = 0;
  }

  return sub_23A901694(v20 | v12, v18 | v6 | v16 | v14 | v11);
}

unint64_t sub_23A901640()
{
  result = qword_27DFAEEC0;
  if (!qword_27DFAEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEEC0);
  }

  return result;
}

uint64_t sub_23A901694(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a1)
  {
    return 0;
  }

  if ((a2 & 0x100) != 0)
  {
    if ((a1 & 0x100) == 0)
    {
      return 0;
    }
  }

  else if ((a1 & 0x100) != 0)
  {
    return 0;
  }

  if ((a2 & 0x10000) != 0)
  {
    if (((a1 & 0x10000) == 0) | (a1 >> 24) & 1 ^ (a2 >> 24) & 1)
    {
      return 0;
    }
  }

  else if ((a1 >> 16) & 1 | (a1 >> 24) & 1 ^ (a2 >> 24) & 1)
  {
    return 0;
  }

  return BYTE4(a1) & 1 ^ ((a2 & 0x100000000) == 0);
}

unint64_t sub_23A901730()
{
  result = qword_27DFAEEC8;
  if (!qword_27DFAEEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEEC8);
  }

  return result;
}

char *sub_23A901794(char *a1, __n128 a2, __n128 a3)
{
  v4 = sub_23A938D78(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = (v6 + 1);
  if (v6 >= v5 >> 1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    *(v4 + 2) = v7;
    v8 = &v4[32 * v6];
    v8[2] = a2;
    v8[3] = a3;
    v69 = v4;
    v9 = *(a1 + 2);
    if (!v9)
    {
      return v4;
    }

    v10 = 0;
    v11 = a1 + 32;
    v44 = a1 + 32;
    v45 = *(a1 + 2);
    while (1)
    {
      a1 = v69;
      v12 = *(v69 + 2);
      if (v12)
      {
        break;
      }

LABEL_34:
      if (++v10 == v9)
      {
        return v69;
      }
    }

    v46 = v10;
    v13 = &v11[32 * v10];
    v52 = v13[1];
    v53 = *v13;

    v6 = 0;
    v14 = v12;
    v47 = v12;
    while (1)
    {
      if (v14 == v12)
      {
        v6 = *(a1 + 2);
      }

      if (__OFSUB__(v6--, 1))
      {
        break;
      }

      v5 = *(a1 + 2);
      if (v14 > v5)
      {
        goto LABEL_39;
      }

      v16 = &a1[32 * v14];
      a3 = *v16;
      v54 = *(v16 + 1);
      if (sub_23A902530(*v16, v54, v53, v52))
      {
        v17 = 0;
        v7 = v69;
        v18 = v54;
        v19 = a3;
        do
        {
          v5 = &unk_284D7FAE8 + v17;
          v20 = *(&unk_284D7FAE8 + v17 + 32);
          if (v20 > 2)
          {
            __break(1u);
            goto LABEL_38;
          }

          v65 = v53;
          v21 = *(&v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
          v66 = v52;
          v22 = *(&v66 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
          v67 = v19;
          v23 = *(&v67 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
          v68 = v18;
          v24 = *(&v68 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
          v25 = v24 * 0.5;
          v26 = v23 + (v24 * 0.5);
          v27 = v22 * 0.5;
          v28 = v21 + (v22 * 0.5);
          if ((v28 + 0.0001) < v26)
          {
            a3 = v19;
            v64 = v19;
            *(&v64 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = (v28 + v26) * 0.5;
            v50 = v64;
            a2 = v18;
            v63 = v18;
            *(&v63 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v26 - v28;
            v48 = v63;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_23A938D78(0, *(v7 + 2) + 1, 1, v7);
            }

            v30 = *(v7 + 2);
            v29 = *(v7 + 3);
            v18 = a2;
            v19 = a3;
            if (v30 >= v29 >> 1)
            {
              v40 = sub_23A938D78((v29 > 1), v30 + 1, 1, v7);
              v18 = a2;
              v19 = a3;
              v7 = v40;
            }

            *(v7 + 2) = v30 + 1;
            v31 = &v7[32 * v30];
            *(v31 + 2) = v50;
            *(v31 + 3) = v48;
            v32 = v23 - v25;
            if (((v23 - v25) + 0.0001) < v28)
            {
              v23 = (v32 + v28) * 0.5;
              v62 = v19;
              *(&v62 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v23;
              v19 = v62;
              v24 = v28 - v32;
              v61 = v18;
              *(&v61 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v28 - v32;
              v18 = v61;
            }
          }

          v33 = v24 * -0.5;
          v34 = v23 + v33;
          v35 = v21 - v27;
          if (((v23 + v33) + 0.0001) < v35)
          {
            a3 = v19;
            v60 = v19;
            *(&v60 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = (v35 + v34) * 0.5;
            v51 = v60;
            a2 = v18;
            v59 = v18;
            *(&v59 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v35 - v34;
            v49 = v59;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_23A938D78(0, *(v7 + 2) + 1, 1, v7);
            }

            v37 = *(v7 + 2);
            v36 = *(v7 + 3);
            v18 = a2;
            v19 = a3;
            if (v37 >= v36 >> 1)
            {
              v41 = sub_23A938D78((v36 > 1), v37 + 1, 1, v7);
              v18 = a2;
              v19 = a3;
              v7 = v41;
            }

            *(v7 + 2) = v37 + 1;
            v38 = &v7[32 * v37];
            *(v38 + 2) = v51;
            *(v38 + 3) = v49;
            v39 = v23 - v33;
            if ((v35 + 0.0001) < (v23 - v33))
            {
              v58 = v19;
              *(&v58 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = (v35 + v39) * 0.5;
              v19 = v58;
              v57 = v18;
              *(&v57 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v39 - v35;
              v18 = v57;
            }
          }

          v17 += 8;
        }

        while (v17 != 24);
        v69 = v7;
        v42 = vmovn_s32(vceqq_f32(v18, v54));
        v12 = v47;
        if ((v42.i8[0] & 1) == 0 || (v5 = (v42.i16[1] & v42.i16[2]), (v42.i8[2] & v42.i8[4] & 1) == 0))
        {
          v7 = &v69;
          sub_23A9851B8(v6);
        }
      }

      if (!--v14)
      {

        v9 = v45;
        v10 = v46;
        v11 = v44;
        goto LABEL_34;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v4 = sub_23A938D78((v5 > 1), v7, 1, v4);
  }
}

uint64_t sub_23A901C30(unsigned __int8 a1)
{
  if (qword_27DFAE378 != -1)
  {
    swift_once();
  }

  v2 = sub_23A9AD42C(a1, qword_27DFC05B0);
  if (qword_27DFAE380 != -1)
  {
    swift_once();
  }

  v3 = sub_23A9AD42C(a1, qword_27DFC05B8);
  if (qword_27DFAE388 != -1)
  {
    swift_once();
  }

  v4 = sub_23A9AD42C(a1, qword_27DFC05C0);
  v5 = sub_23A9AD42C(a1, qword_27DFAECA8);
  if (qword_27DFAE390 != -1)
  {
    v9 = v5;
    swift_once();
    v5 = v9;
  }

  v6 = v2;
  if (v3)
  {
    v6 = v2 | 2;
  }

  if (v4)
  {
    v6 |= 4u;
  }

  if (v5)
  {
    v7 = v6 | 8;
  }

  else
  {
    v7 = v6;
  }

  if (sub_23A9AD42C(a1, qword_27DFC05C8))
  {
    v7 |= 0x20u;
  }

  if (sub_23A9AD42C(a1, qword_27DFAECB0))
  {
    return v7 | 0x10;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_23A901DDC(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v4 = swift_allocObject();
  v5 = a2;
  v6 = a2.f32[2];
  v7.i32[3] = 0;
  v8.i64[0] = vsubq_f32(0, a2).u64[0];
  v5.i32[3] = 0;
  v45 = v5;
  v8.f32[2] = 0.0 - v6;
  v8.i32[3] = 0;
  v9 = v8;
  v40 = v8;
  v10 = a3;
  v11 = a3.f32[2];
  v7.i64[0] = vsubq_f32(0, a3).u64[0];
  v10.i32[3] = 0;
  v47 = v10;
  v7.f32[2] = 0.0 - v11;
  v4[2] = v9;
  v4[3] = v5;
  v41 = v7;
  v4[4] = v7;
  v4[5] = v10;
  v12 = a4;
  v13 = vnegq_f32(a4);
  v13.i32[3] = 0;
  v43 = v13;
  v12.i32[3] = 0;
  v49 = v12;
  v4[6] = v13;
  v4[7] = v12;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v14 = vmulq_f32(v40, a1);
  v15 = vmulq_f32(v45, a1);
  *v14.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8)));
  v16 = vcgt_f32(vdup_lane_s32(*v14.i8, 1), *v14.i8).u8[0];
  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vbslq_s8(vdupq_n_s32(v17), v45, v40);
  v19 = vmulq_f32(v18, a1);
  v20 = vmulq_f32(v41, a1);
  *v19.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)), vadd_f32(vzip1_s32(*v19.i8, *v20.i8), vzip2_s32(*v19.i8, *v20.i8)));
  v19.i8[0] = vcgt_f32(vdup_lane_s32(*v19.i8, 1), *v19.i8).u8[0];
  v21 = (v19.i8[0] & 1) == 0;
  if (v19.i8[0])
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23 = vbslq_s8(vdupq_n_s32(v22), v41, v18);
  v24 = vmulq_f32(v23, a1);
  v25 = vmulq_f32(v47, a1);
  *v24.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8)));
  v26 = vcgt_f32(vdup_lane_s32(*v24.i8, 1), *v24.i8).u8[0];
  v27 = v16 & 1;
  if (!v21)
  {
    v27 = 2;
  }

  v28 = (v26 & 1) == 0;
  if (v26)
  {
    v29 = -1;
  }

  else
  {
    v29 = 0;
  }

  v30 = vbslq_s8(vdupq_n_s32(v29), v47, v23);
  v31 = vmulq_f32(v30, a1);
  v32 = vmulq_f32(v43, a1);
  *v31.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8)));
  v33 = vcgt_f32(vdup_lane_s32(*v31.i8, 1), *v31.i8).u8[0];
  if (!v28)
  {
    v27 = 3;
  }

  v34 = (v33 & 1) == 0;
  if (v33)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  v36 = vmulq_f32(vbslq_s8(vdupq_n_s32(v35), v43, v30), a1);
  v37 = vmulq_f32(v49, a1);
  *v36.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)), vadd_f32(vzip1_s32(*v36.i8, *v37.i8), vzip2_s32(*v36.i8, *v37.i8)));
  v38 = vcgt_f32(vdup_lane_s32(*v36.i8, 1), *v36.i8).u8[0];
  if (!v34)
  {
    v27 = 4;
  }

  if (v38)
  {
    v27 = 5;
  }

  return dword_284D7FA40[v27 + 8];
}

void sub_23A902044(int a1@<W0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>, float32x4_t a6@<Q3>, float32x4_t a7@<Q4>, float32x4_t a8@<Q5>, float32x4_t a9@<Q6>, float32x4_t a10@<Q7>, __int128 a11, __int128 a12)
{
  v13 = 0uLL;
  if (!a1)
  {
    v29 = 1;
    v30 = 0uLL;
    goto LABEL_10;
  }

  v14 = a1;
  v95.columns[2] = a11;
  v95.columns[3] = a12;
  v95.columns[0] = a9;
  v95.columns[1] = a10;
  v96 = __invert_f4(v95);
  if (qword_284D7FA98 <= 2)
  {
    v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v96.columns[0], a7.f32[0]), v96.columns[1], *a7.f32, 1), v96.columns[2], a7, 2), v96.columns[3], a7, 3);
    v18 = vmuls_lane_f32(0.5, a3, 2);
    v19 = vmul_f32(*a3.f32, 0x3F0000003F000000);
    *v20.f32 = vsub_f32(*v17.f32, v19);
    v20.f32[2] = v17.f32[2] - v18;
    v20.i32[3] = 0;
    *v21.f32 = vadd_f32(v19, *v17.f32);
    v21.f32[2] = v18 + v17.f32[2];
    v21.i32[3] = 0;
    *v15.i8 = vmul_f32(*a8.f32, 0xBF000000BF000000);
    v22 = vmuls_lane_f32(-0.5, a8, 2);
    v23.i64[0] = v15.i64[0];
    v23.i64[1] = LODWORD(v22);
    *v16.i8 = vmul_f32(*a8.f32, 0x3F0000003F000000);
    v24 = vmuls_lane_f32(0.5, a8, 2);
    v25.i64[0] = v16.i64[0];
    v25.i64[1] = LODWORD(v24);
    v91 = v20;
    v17.i32[0] = *(&v91 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FA98 & 3)));
    v92 = v25;
    v26 = *(&v92 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FA98 & 3)));
    v93 = v21;
    v27 = *(&v93 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FA98 & 3)));
    v94 = v23;
    v28 = v26 > v17.f32[0] && v27 > *(&v94 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FA98 & 3)));
    if (!v28)
    {
      v29 = 1;
LABEL_8:
      v30 = 0uLL;
      v13 = 0uLL;
LABEL_10:
      *a2 = v13;
      *(a2 + 16) = v30;
      *(a2 + 32) = v29;
      return;
    }

    if (qword_284D7FAA0 <= 2)
    {
      v87 = v20;
      v31 = *(&v87 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA0 & 3)));
      v88 = v25;
      v32 = *(&v88 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA0 & 3)));
      v89 = v21;
      v33 = *(&v89 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA0 & 3)));
      v90 = v23;
      v29 = 1;
      if (v32 <= v31 || v33 <= *(&v90 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA0 & 3))))
      {
        goto LABEL_8;
      }

      if (qword_284D7FAA8 <= 2)
      {
        v83 = v20;
        v34 = *(&v83 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA8 & 3)));
        v84 = v25;
        v35 = *(&v84 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA8 & 3)));
        v85 = v21;
        v36 = *(&v85 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA8 & 3)));
        v86 = v23;
        v29 = 1;
        if (v35 <= v34)
        {
          goto LABEL_8;
        }

        v28 = v36 > *(&v86 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA8 & 3)));
        v30 = 0uLL;
        v13 = 0uLL;
        if (!v28)
        {
          goto LABEL_10;
        }

        v20.i32[3] = 0;
        v23.i32[3] = 0;
        v37 = vmaxnmq_f32(v20, v23);
        v21.i32[3] = 0;
        v25.i32[3] = 0;
        v38 = vminnmq_f32(v21, v25);
        v78 = v22;
        v80 = v38;
        v70 = v15;
        v71 = v24;
        v69 = v16;
        v82 = v37;
        if (v14)
        {
          v42.i32[3] = 0;
          v42.i64[0] = vsubq_f32(0, a4).u64[0];
          v42.f32[2] = 0.0 - a4.f32[2];
          v43 = sub_23A901DDC(v42, a9, a10, a11);
          if (v43)
          {
            v45 = v43;
            v39 = a9;
            v40 = a10;
            if ((v14 & 2) == 0)
            {
              if ((v14 & 4) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_46;
            }
          }

          else
          {
            v41 = a6;
            if ((v14 & 2) == 0)
            {
              if ((v14 & 4) == 0)
              {
                v39 = a9;
                v40 = a10;
                if ((v14 & 8) == 0)
                {
                  if ((v14 & 0x20) == 0)
                  {
                    if ((v14 & 0x10) != 0)
                    {
LABEL_69:
                      v45 = 0;
                      goto LABEL_63;
                    }

                    v38 = v80;
                    v37 = v82;
LABEL_68:
                    v29 = 0;
                    v68.i64[0] = 0x3F0000003F000000;
                    v68.i64[1] = 0x3F0000003F000000;
                    *&v13 = vmulq_f32(vaddq_f32(v38, v37), v68).u64[0];
                    *(&v13 + 2) = (v38.f32[2] + v37.f32[2]) * 0.5;
                    HIDWORD(v13) = 0;
                    *&v30 = vsubq_f32(v38, v37).u64[0];
                    *(&v30 + 2) = v38.f32[2] - v37.f32[2];
                    HIDWORD(v30) = 0;
                    goto LABEL_10;
                  }

                  goto LABEL_58;
                }

                goto LABEL_44;
              }

              v45 = 0;
              v39 = a9;
              v40 = a10;
              goto LABEL_46;
            }

            v45 = 0;
            v39 = a9;
            v40 = a10;
          }
        }

        else
        {
          v39 = a9;
          v40 = a10;
          v41 = a6;
          if ((v14 & 2) == 0)
          {
            if ((v14 & 4) == 0)
            {
              if ((v14 & 8) == 0)
              {
                if ((v14 & 0x20) == 0)
                {
                  if ((v14 & 0x10) != 0)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_68;
                }

LABEL_58:
                v45 = 0;
                goto LABEL_59;
              }

LABEL_44:
              v45 = 0;
              goto LABEL_52;
            }

            v45 = 0;
            goto LABEL_46;
          }

          v45 = 0;
        }

        v46 = a4;
        v46.i32[3] = 0;
        v47 = sub_23A901DDC(v46, v39, v40, a11);
        v39 = a9;
        v40 = a10;
        if ((v47 & ~v45) != 0)
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        v45 |= v48;
        if ((v14 & 4) == 0)
        {
LABEL_42:
          if ((v14 & 8) != 0)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

LABEL_46:
        v49.i32[3] = 0;
        v49.i64[0] = vsubq_f32(0, a5).u64[0];
        v49.f32[2] = 0.0 - a5.f32[2];
        v50 = sub_23A901DDC(v49, v39, v40, a11);
        v39 = a9;
        v40 = a10;
        if ((v50 & ~v45) != 0)
        {
          v51 = v50;
        }

        else
        {
          v51 = 0;
        }

        v45 |= v51;
        if ((v14 & 8) != 0)
        {
LABEL_52:
          v52 = a5;
          v52.i32[3] = 0;
          v53 = sub_23A901DDC(v52, v39, v40, a11);
          v39 = a9;
          v40 = a10;
          if ((v53 & ~v45) != 0)
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          v45 |= v54;
          v41 = a6;
          if ((v14 & 0x20) != 0)
          {
LABEL_59:
            v55 = vnegq_f32(v41);
            v55.i32[3] = 0;
            v56 = sub_23A901DDC(v55, v39, v40, a11);
            v41 = a6;
            v39 = a9;
            v40 = a10;
            if ((v56 & ~v45) != 0)
            {
              v57 = v56;
            }

            else
            {
              v57 = 0;
            }

            v45 |= v57;
            if ((v14 & 0x10) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_63;
          }

LABEL_56:
          if ((v14 & 0x10) == 0)
          {
LABEL_67:
            v41.i32[0] = 0;
            v39.i32[0] = v45 & 1;
            v60.i64[1] = v82.i64[1];
            v61 = vbslq_s8(vceqq_s32(v39, v41), v82, v70);
            v40.i32[0] = v45 & 2;
            v62 = vbslq_s8(vceqq_s32(v40, v41), v80, v69);
            v44.i32[0] = v45 & 8;
            v63.i64[1] = v80.i64[1];
            v63.i32[0] = v62.i32[0];
            v62.i32[0] = v45 & 4;
            v60.i32[0] = v61.i32[0];
            v60.i32[1] = vbslq_s8(vdupq_lane_s32(vceqq_s32(v62, *&v41), 0), v82, v70).i32[1];
            v63.i32[1] = vbslq_s8(vdupq_lane_s32(vceqq_s32(v44, *&v41), 0), v80, v69).i32[1];
            v61.i32[0] = v45 & 0x20;
            v64 = vdupq_lane_s32(*&vceqq_s32(v61, v41), 0);
            v65 = v60;
            *&v65.i32[2] = v78;
            v37 = vbslq_s8(v64, v60, v65);
            v64.i32[0] = v45 & 0x10;
            v66 = vdupq_lane_s32(*&vceqq_s32(v64, v41), 0);
            v67 = v63;
            *&v67.i32[2] = v71;
            v38 = vbslq_s8(v66, v63, v67);
            goto LABEL_68;
          }

LABEL_63:
          v41.i32[3] = 0;
          v58 = sub_23A901DDC(v41, v39, v40, a11);
          if ((v58 & ~v45) != 0)
          {
            v59 = v58;
          }

          else
          {
            v59 = 0;
          }

          LOBYTE(v45) = v59 | v45;
          goto LABEL_67;
        }

LABEL_50:
        v41 = a6;
        if ((v14 & 0x20) != 0)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }
    }
  }

  __break(1u);
}

BOOL sub_23A902530(__n128 a1, float32x4_t a2, __n128 a3, float32x4_t a4)
{
  if (qword_284D7FAD0 <= 2)
  {
    v4 = vmuls_lane_f32(0.5, a4, 2);
    v5 = vmul_f32(*a4.f32, 0x3F0000003F000000);
    *&v6 = vsub_f32(a3.n128_u64[0], v5);
    *(&v6 + 2) = a3.n128_f32[2] - v4;
    HIDWORD(v6) = 0;
    a3.n128_u64[0] = vadd_f32(a3.n128_u64[0], v5);
    a3.n128_f32[2] = a3.n128_f32[2] + v4;
    a3.n128_u32[3] = 0;
    v8 = vmuls_lane_f32(0.5, a2, 2);
    v9 = vmul_f32(*a2.f32, 0x3F0000003F000000);
    *&v10 = vsub_f32(a1.n128_u64[0], v9);
    *(&v10 + 2) = a1.n128_f32[2] - v8;
    HIDWORD(v10) = 0;
    a1.n128_u64[0] = vadd_f32(a1.n128_u64[0], v9);
    a1.n128_f32[2] = a1.n128_f32[2] + v8;
    a1.n128_u32[3] = 0;
    v34 = v6;
    v12 = *(&v34 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD0 & 3)));
    v35 = a1;
    v13 = *(&v35 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD0 & 3)));
    v36 = a3;
    v14 = *(&v36 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD0 & 3)));
    v37 = v10;
    if (v13 <= v12 || v14 <= *(&v37 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD0 & 3))))
    {
      return 0;
    }

    if (qword_284D7FAD8 <= 2)
    {
      v30 = v6;
      v16 = *(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD8 & 3)));
      v31 = a1;
      v17 = *(&v31 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD8 & 3)));
      v32 = a3;
      v18 = *(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD8 & 3)));
      v33 = v10;
      if (v17 <= v16 || v18 <= *(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD8 & 3))))
      {
        return 0;
      }

      if (qword_284D7FAE0 <= 2)
      {
        v26 = v6;
        v21 = *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAE0 & 3)));
        v27 = a1;
        v22 = *(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAE0 & 3)));
        v28 = a3;
        v23 = *(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAE0 & 3)));
        v29 = v10;
        return v23 > *(&v29 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAE0 & 3))) && v22 > v21;
      }
    }
  }

  __break(1u);
  return result;
}

float sub_23A9026C0()
{
  v1 = v0;
  v2 = sub_23AA0CE24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CCB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity;
  v14 = *(v1 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity);
  v15 = 1.0;
  if (v14 == 1.0)
  {
    if (*(v1 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity) != 1.0)
    {
      (*(v3 + 104))(v6, *MEMORY[0x277CDB518], v2);
      sub_23AA0CCA4();
LABEL_7:
      swift_beginAccess();
      sub_23AA0CD04();
      swift_endAccess();
      goto LABEL_8;
    }
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity);
  }

  if (v14 != v15)
  {
    v16 = v10;
    sub_23AA0CC94();
    (*(v8 + 104))(v12, *MEMORY[0x277CDB2B0], v16);
    goto LABEL_7;
  }

LABEL_8:
  result = *(v1 + v13);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity) = result;
  return result;
}

uint64_t sub_23A9028C8()
{
  v1 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
  v2 = sub_23AA0CD84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SimpleScanMaterial()
{
  result = qword_27DFAEED0;
  if (!qword_27DFAEED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ScanEntity()
{
  result = qword_27DFAEF10;
  if (!qword_27DFAEF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A902A60()
{
  result = sub_23AA0C0E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_23A902B54(uint64_t a1, int a2, double a3)
{
  v5 = v4;
  v6 = v3;
  v258 = a2;
  v259 = a1;
  v8 = sub_23AA0CA04();
  v263 = v8[-1].i64[1];
  v264 = v8;
  v9 = *(v263 + 64);
  MEMORY[0x28223BE20](v8);
  v262 = (&v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_23AA0C4C4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v255.i64[0] = &v230 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253.i64[0] = sub_23AA0C5C4();
  v251 = *(v253.i64[0] - 8);
  v14 = *(v251 + 64);
  MEMORY[0x28223BE20](v253.i64[0]);
  v250 = &v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261.i64[0] = sub_23AA0C5F4();
  v254.i64[0] = *(v261.i64[0] - 8);
  v16 = *(v254.i64[0] + 64);
  MEMORY[0x28223BE20](v261.i64[0]);
  v252 = &v230 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v269 = &v230 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v268 = &v230 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v267 = (&v230 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v270 = (&v230 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v271 = (&v230 - v30);
  MEMORY[0x28223BE20](v31);
  v265.i64[0] = &v230 - v32;
  MEMORY[0x28223BE20](v33);
  v266.i64[0] = &v230 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = (&v230 - v36);
  v38 = sub_23AA0C0E4();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v260 = &v230 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v230 - v43;
  if (qword_27DFAE368 != -1)
  {
    v207 = v42;
    swift_once();
    v42 = v207;
  }

  v45 = qword_27DFC04B0;
  v46 = v42;
  v47 = *(v42 + 16);
  v274 = v38;
  v256 = v47;
  v257 = v42 + 16;
  v47(v44, (v6 + qword_27DFC0620), v38);
  swift_beginAccess();
  v48 = *(v45 + 24);
  if (!*(v48 + 16))
  {
    return (*(v46 + 8))(v44, v274);
  }

  v49 = *(v45 + 24);

  v50 = sub_23A9EDD28(v44);
  if ((v51 & 1) == 0)
  {

    return (*(v46 + 8))(v44, v274);
  }

  v53 = *(v46 + 8);
  v52 = v46 + 8;
  v272 = *(*(v48 + 56) + 8 * v50);

  v246 = v53;
  v247 = v52;
  v53(v44, v274);

  if (sub_23AA0CA84())
  {
    v54 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
    v44 = v272;
    swift_beginAccess();
    sub_23A8D5194(&v44[v54], v37, &unk_27DFAF030, &qword_23AA11B48);
    v55 = type metadata accessor for AnimationGraph();
    if ((*(*(v55 - 8) + 48))(v37, 1, v55) == 1)
    {
      sub_23A8D50D0(v37, &unk_27DFAF030, &qword_23AA11B48);
    }

    else
    {
      v57 = v37[4];
      sub_23A910618(v37);
      if (v57 == 0.0)
      {
LABEL_12:
        sub_23AA0CA94();
        goto LABEL_13;
      }
    }
  }

  if ((sub_23AA0CA84() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (qword_27DFAE518 != -1)
  {
    goto LABEL_160;
  }

  while (1)
  {
    v58 = off_27DFB17B0;
    swift_beginAccess();
    v59 = *(v58 + 181);
    v273 = v6;
    if (v59)
    {
      break;
    }

    swift_beginAccess();
    if (*(v58 + 41) != 1 || v272[OBJC_IVAR____TtC8RoomPlan8ScanItem_category] != 10)
    {
      break;
    }

    v243 = v58;
    v249.i64[0] = v5;
    v60 = *(v45 + 24);
    v277[0] = MEMORY[0x277D84F90];
    v6 = v60 + 64;
    v61 = 1 << *(v60 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v5 = v62 & *(v60 + 64);
    v52 = (v61 + 63) >> 6;

    v63 = 0;
    v248.i64[0] = v60;
    while (v5)
    {
LABEL_25:
      v65 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v44 = *(*(v60 + 56) + ((v63 << 9) | (8 * v65)));
      if (v44[OBJC_IVAR____TtC8RoomPlan8ScanItem_type] == 3 && v44[OBJC_IVAR____TtC8RoomPlan8ScanItem_category] != 10)
      {

        sub_23AA0D944();
        v45 = *(v277[0] + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        v60 = v248.i64[0];
      }
    }

    while (1)
    {
      v64 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v64 >= v52)
      {

        v66 = v277[0];
        v58 = v243;
        swift_beginAccess();
        sub_23A8D9F98(v66, v58[11]);

        v6 = v273;
        sub_23AA0CA94();
        v5 = v249.i64[0];
        goto LABEL_29;
      }

      v5 = *(v6 + 8 * v64);
      ++v63;
      if (v5)
      {
        v63 = v64;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_160:
    swift_once();
  }

LABEL_29:
  if ((sub_23AA0CA84() & 1) == 0)
  {
  }

  v243 = v58;
  v67 = qword_27DFC0630;
  if (*(v6 + qword_27DFC0630))
  {
    v68 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
  }

  else
  {
    v68 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
  }

  v69 = *&v272[*v68];
  v70 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
  if (!*(v6 + qword_27DFC0630))
  {
    v70 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
  }

  v71 = *&v272[*v70];
  v241 = v69;
  v242 = v71;
  v232 = xmmword_23AA11AF0;
  *v72.i64 = MEMORY[0x23EE8FF80]();
  v248 = v73;
  v249 = v72;
  v244 = v75;
  v245 = v74;
  v234 = v67;
  v76 = *(v6 + v67);

  v78 = sub_23A980C74(v77, v76, v249, v248, v245, v244);

  v233 = qword_27DFAEF08;
  if (*(v6 + qword_27DFAEF08))
  {
    v79 = *(v6 + qword_27DFAEF08);

    v80 = sub_23A980560(v78, 0.001);

    if (v80)
    {
      goto LABEL_69;
    }
  }

  v81 = OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects;
  v82 = *(v78 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects);
  if (v82 >> 62)
  {
    goto LABEL_168;
  }

  for (i = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v248.i64[0] = v78;
    if (i < 1)
    {
      v78 = MEMORY[0x277D84F90];
    }

    else
    {
      v81 = *(v78 + v81);
      if (v81 >> 62)
      {
LABEL_170:
        v6 = sub_23AA0D7F4();
      }

      else
      {
        v6 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v78 = MEMORY[0x277D84F90];
      if (v6)
      {
        v245.n128_u64[0] = v81;
        v249.i64[0] = v5;
        v277[0] = MEMORY[0x277D84F90];
        sub_23A975F04(0, v6 & ~(v6 >> 63), 0);
        if (v6 < 0)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v84 = 0;
        v78 = v277[0];
        v85 = v245.n128_u64[0];
        v86 = v245.n128_u64[0] & 0xC000000000000001;
        do
        {
          if (v86)
          {
            v87 = MEMORY[0x23EE90360](v84, v85);
          }

          else
          {
            v88 = *(v85 + 8 * v84 + 32);
          }

          v89 = *(v87 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category);

          v277[0] = v78;
          v91 = *(v78 + 16);
          v90 = *(v78 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_23A975F04((v90 > 1), v91 + 1, 1);
            v85 = v245.n128_u64[0];
            v78 = v277[0];
          }

          ++v84;
          *(v78 + 16) = v91 + 1;
          *(v78 + v91 + 32) = v89;
        }

        while (v6 != v84);
        v5 = v249.i64[0];
      }

      v6 = v273;
    }

    v249.i64[0] = v5;
    if (qword_27DFAE490 != -1)
    {
      swift_once();
    }

    v245.n128_u64[0] = qword_27DFC07E0;
    v92 = v248.i64[0];
    v244 = *(v248.i64[0] + 16);
    v93 = v272;
    v94 = v272[OBJC_IVAR____TtC8RoomPlan8ScanItem_category];
    v239 = *(v6 + qword_27DFAEEE0);
    v240 = v94;
    v95 = v267;
    sub_23A8D5194(v248.i64[0] + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve, v267, &qword_27DFAEB38, &unk_23AA11B60);
    v238 = *(v92 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners);
    v237 = *(v92 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements);
    v236 = *(v92 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements);
    v235 = *(v92 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements);
    v231 = OBJC_IVAR____TtC8RoomPlan8ScanItem_type;
    v96 = *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
    v97 = v268;
    sub_23A8D5194(v92 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut, v268, &unk_27DFAF020, &unk_23AA12300);
    v98 = v269;
    sub_23A8D5194(v92 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut, v269, &unk_27DFAF020, &unk_23AA12300);
    v99 = *(v273 + qword_27DFC0638);
    if (*(v273 + qword_27DFC0638 + 4))
    {
      v100 = 0.0;
    }

    else
    {
      v100 = *(v273 + qword_27DFC0638);
    }

    type metadata accessor for RoomCaptureMeshDimensionsRestriction();
    inited = swift_initStaticObject();
    v102 = sub_23A996EFC(v239, v240, v95, v238, v237, v236, v235, v78, v244, v100, v96 != 6, v96 != 6, v97, v98, inited);

    sub_23A8D50D0(v98, &unk_27DFAF020, &unk_23AA12300);
    sub_23A8D50D0(v97, &unk_27DFAF020, &unk_23AA12300);
    sub_23A8D50D0(v95, &qword_27DFAEB38, &unk_23AA11B60);
    v245.n128_u64[0] = v102;
    v103 = qword_27DFAEF00;
    LODWORD(v269) = sub_23A946C70(v102[4], *(v273 + qword_27DFAEF00));
    v104 = (v273 + qword_27DFC0628);
    swift_beginAccess();
    sub_23A8CA9D8(v104, v277);
    v105 = v278;
    v106 = v279;
    __swift_project_boxed_opaque_existential_1(v277, v278);
    LODWORD(v268) = (*(v106 + 40))(*(v102[2] + 16), v105, v106);
    __swift_destroy_boxed_opaque_existential_1(v277);
    v107 = *(v273 + v103);
    *(v273 + v103) = v102[4];

    v108 = *(v273 + qword_27DFAEEF0 + 8);
    v267 = *(v273 + qword_27DFAEEF0);
    v109 = v104[3];
    v110 = v104[4];
    v111 = __swift_project_boxed_opaque_existential_1(v104, v109);
    v112 = *(v109 - 8);
    v113 = *(v112 + 64);
    v114 = MEMORY[0x28223BE20](v111);
    v116 = &v230 - v115;
    (*(v112 + 16))(&v230 - v115, v114);
    v117.n128_f64[0] = (*(v110 + 16))(v109, v110);
    v244 = v117;
    v118 = (*(v112 + 8))(v116, v109);
    v119 = v245.n128_u64[0];
    v120 = v267(v118, v244);
    v121 = v249.i64[0];
    sub_23A904B7C(v119, v120 & 1 | ((v269 & 1) == 0) | v268 & 1);
    if (v121)
    {
    }

    sub_23A8CA9D8(v104, v277);
    v122 = v278;
    v123 = v279;
    __swift_project_boxed_opaque_existential_1(v277, v278);
    v125 = v119[2];
    v124 = v119[3];
    v126 = *(v123 + 48);

    v126(v272, v125, v124, v122, v123, a3);

    __swift_destroy_boxed_opaque_existential_1(v277);
    v6 = v273;
    v127 = *(v273 + v233);
    v78 = v248.i64[0];
    *(v273 + v233) = v248.i64[0];

    if ((UIAccessibilityIsVoiceOverRunning() || (v128 = v243, swift_beginAccess(), *(v128 + 144) == 1)) && v272[v231] == 2 && *(v6 + v234) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_23AA11BB0;
      sub_23AA0C414();
      *(v129 + 32) = MEMORY[0x23EE8EEA0](*&v272[OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions]);
      (*(v251 + 104))(v250, *MEMORY[0x277CDADC8], v253.i64[0]);
      sub_23AA0C4B4();
      v130 = v252;
      sub_23AA0C5D4();
      v131 = v262;
      sub_23AA0C9C4();
      v132 = v261.i64[0];
      sub_23AA0C9E4();

      (*(v263 + 8))(v131, v264);
      (*(v254.i64[0] + 8))(v130, v132);
    }

    else
    {
      v133 = v262;
      sub_23AA0C9C4();
      sub_23AA0C9F4();

      (*(v263 + 8))(v133, v264);
    }

    v5 = 0;
LABEL_69:
    type metadata accessor for ScanEntity();
    sub_23AA0C254();
    sub_23AA0C294();
    v52 = *(v6 + qword_27DFC0640);
    if (v52)
    {
      v134 = *(v6 + qword_27DFC0640);
      sub_23AA0CA94();
    }

    v44 = &unk_27DFC0000;
    if (dword_27DFC06F8)
    {
      if (qword_27DFAE458 == -1)
      {
LABEL_73:
        v135 = qword_27DFC0700;
        if (qword_27DFC0700)
        {
          if (*(qword_27DFC0700 + 24) == 1)
          {
            swift_beginAccess();
            v136 = *(v135 + 16);

            v137 = sub_23A94ED3C(v6, v136);

            if (v137)
            {
              v138 = *(v137 + 32);
              if ((sub_23AA0CA84() & 1) == 0)
              {
                v139 = *(v137 + 32);
                sub_23AA0CA94();
              }
            }
          }
        }

        goto LABEL_79;
      }

LABEL_173:
      swift_once();
      goto LABEL_73;
    }

LABEL_79:
    if ((!v52 || (sub_23AA0CA84() & 1) == 0) && ((v44[1784] & 1) == 0 || *(v6 + v234) != 1))
    {
      goto LABEL_89;
    }

    v248.i64[0] = v78;
    v140 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
    v141 = v272;
    swift_beginAccess();
    v142 = v141 + v140;
    v143 = v266.i64[0];
    sub_23A8D5194(v142, v266.i64[0], &unk_27DFAF030, &qword_23AA11B48);
    v144 = type metadata accessor for AnimationGraph();
    v145 = *(v144 - 8);
    v146 = *(v145 + 48);
    v147 = (v145 + 48);
    if (v146(v143, 1, v144) == 1)
    {
      v148 = v143;
      goto LABEL_87;
    }

    v263 = *(v143 + 16);
    sub_23A910618(v143);
    v149 = &v272[v140];
    v150 = v265.i64[0];
    sub_23A8D5194(v149, v265.i64[0], &unk_27DFAF030, &qword_23AA11B48);
    v269 = v146;
    if (v146(v150, 1, v144) == 1)
    {
      v148 = v150;
LABEL_87:
      sub_23A8D50D0(v148, &unk_27DFAF030, &qword_23AA11B48);
LABEL_88:
      v78 = v248.i64[0];
      goto LABEL_89;
    }

    v267 = v147;
    v268 = v144;
    v251 = sub_23A93DDA4();
    v152 = sub_23A910618(v150);
    v153 = v272;
    *v281.columns[0].i64 = MEMORY[0x23EE8FF80](v152, *&v272[OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition], *&v272[OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation], v232);
    v282 = __invert_f4(v281);
    v261 = v282.columns[0];
    v254 = v282.columns[2];
    v255 = v282.columns[1];
    v253 = v282.columns[3];
    v44 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
    v154 = *(v153 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);

    v156 = sub_23A8DC460(v155);

    v157 = *(v156 + 16);

    v252 = v52;
    if (v157)
    {
      v158 = *&v44[v153];

      v160 = sub_23A8DC460(v159);

      v161 = *(v160 + 16);
      if (v161)
      {
        v276 = MEMORY[0x277D84F90];
        sub_23A975DC0(0, v161, 0);
        v163 = v276;
        v164 = v276[1].u64[0];
        v165 = 32;
        v166 = v261;
        v168 = v254;
        v167 = v255;
        v169 = v253;
        do
        {
          v170 = *(v160 + v165);
          v276 = v163;
          v171 = v163[1].u64[1];
          v44 = (v164 + 1);
          if (v164 >= v171 >> 1)
          {
            v265 = v170;
            v266 = v162;
            sub_23A975DC0((v171 > 1), v164 + 1, 1);
            v170 = v265;
            v162.i32[3] = v266.i32[3];
            v169 = v253;
            v168 = v254;
            v167 = v255;
            v166 = v261;
            v163 = v276;
          }

          v172 = vaddq_f32(v169, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v166, v170.f32[0]), v167, *v170.f32, 1), v168, v170, 2));
          v172.i32[3] = v162.i32[3];
          v163[1].i64[0] = v44;
          v163[v164 + 2] = v172;
          v165 += 16;
          ++v164;
          v162 = v172;
          --v161;
        }

        while (v161);
      }

      else
      {

        v163 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      sub_23A9BAE80(*(v153 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
      v163 = v173;
    }

    v6 = *(v248.i64[0] + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childOpenings);
    v266.i64[0] = v6 & 0xFFFFFFFFFFFFFF8;
    v52 = v6 >> 62 ? sub_23AA0D7F4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v264 = v163;
    v249.i64[0] = v5;
    if (v52)
    {
      v78 = 0;
      v265.i64[0] = v6 & 0xC000000000000001;
      v81 = MEMORY[0x277D84F90];
      v5 = &unk_27DFAF030;
      do
      {
        v262 = v81;
        v81 = v78;
        while (1)
        {
          if (v265.i64[0])
          {
            v44 = MEMORY[0x23EE90360](v81, v6);
            v78 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              goto LABEL_161;
            }
          }

          else
          {
            if (v81 >= *(v266.i64[0] + 16))
            {
              goto LABEL_162;
            }

            v44 = *(v6 + 8 * v81 + 32);

            v78 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
              goto LABEL_163;
            }
          }

          v174 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
          swift_beginAccess();
          v175 = &v44[v174];
          v176 = v271;
          sub_23A8D5194(v175, v271, &unk_27DFAF030, &qword_23AA11B48);
          if ((v269)(v176, 1, v268) != 1)
          {
            break;
          }

          sub_23A8D50D0(v176, &unk_27DFAF030, &qword_23AA11B48);
          ++v81;
          if (v78 == v52)
          {
            v81 = v262;
            goto LABEL_122;
          }
        }

        *v177.i64 = MEMORY[0x23EE8FF80](*&v44[OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition], *&v44[OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation], v232);
        v250 = sub_23A93DF80(v264, v177, v178, v179, v180, v261, v255, v254, v253);

        sub_23A910618(v176);
        v181 = v262;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_23A9391BC(0, v181[2] + 1, 1, v181);
        }

        v182 = v181;
        v183 = v181[2];
        v184 = v182;
        v185 = v182[3];
        v44 = (v183 + 1);
        if (v183 >= v185 >> 1)
        {
          v184 = sub_23A9391BC((v185 > 1), v183 + 1, 1, v184);
        }

        v184[2] = v44;
        v186 = &v184[v183];
        v81 = v184;
        v186[4] = v250;
      }

      while (v78 != v52);
    }

    else
    {
      v81 = MEMORY[0x277D84F90];
    }

LABEL_122:

    v44 = *(v81 + 16);
    if (!v44)
    {
      break;
    }

    v78 = 0;
    v271 = (v81 + 32);
    v187 = MEMORY[0x277D84F90];
    while (v78 < *(v81 + 16))
    {
      v52 = v81;
      v188 = v271[v78];
      v81 = *(v188 + 16);
      v6 = v187[2];
      v5 = v6 + v81;
      if (__OFADD__(v6, v81))
      {
        goto LABEL_164;
      }

      v189 = v271[v78];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v5 > v187[3] >> 1)
      {
        if (v6 <= v5)
        {
          v191 = v6 + v81;
        }

        else
        {
          v191 = v6;
        }

        v187 = sub_23A939084(isUniquelyReferenced_nonNull_native, v191, 1, v187);
      }

      v6 = v273;
      if (*(v188 + 16))
      {
        v5 = (v187[3] >> 1) - v187[2];
        v192 = *(type metadata accessor for LineAnimation() - 8);
        if (v5 < v81)
        {
          __break(1u);
          goto LABEL_170;
        }

        v193 = (*(v192 + 80) + 32) & ~*(v192 + 80);
        v194 = *(v192 + 72);
        swift_arrayInitWithCopy();

        v6 = v273;
        if (v81)
        {
          v195 = v187[2];
          v196 = __OFADD__(v195, v81);
          v197 = v195 + v81;
          if (v196)
          {
            __break(1u);
            goto LABEL_172;
          }

          v187[2] = v197;
        }
      }

      else
      {

        if (v81)
        {
          goto LABEL_165;
        }
      }

      ++v78;
      v81 = v52;
      if (v44 == v78)
      {
        goto LABEL_140;
      }
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    ;
  }

  v187 = MEMORY[0x277D84F90];
  v6 = v273;
LABEL_140:

  v52 = *(v248.i64[0] + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects);
  if (v52 >> 62)
  {
    v266.i64[0] = v52 & 0xFFFFFFFFFFFFFF8;
    v198 = sub_23AA0D7F4();
    v262 = v187;
    if (v198)
    {
      goto LABEL_142;
    }

    goto LABEL_176;
  }

  v266.i64[0] = v52 & 0xFFFFFFFFFFFFFF8;
  v198 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v262 = v187;
  if (!v198)
  {
LABEL_176:
    v271 = MEMORY[0x277D84F90];
    goto LABEL_177;
  }

LABEL_142:
  v78 = 0;
  v265.i64[0] = v52 & 0xC000000000000001;
  v271 = MEMORY[0x277D84F90];
  v5 = &qword_23AA11B48;
  v264 = v198;
  do
  {
    v81 = v78;
    while (1)
    {
      if (v265.i64[0])
      {
        v44 = MEMORY[0x23EE90360](v81, v52);
        v78 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (v81 >= *(v266.i64[0] + 16))
        {
          goto LABEL_167;
        }

        v44 = *(v52 + 8 * v81 + 32);

        v78 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_166;
        }
      }

      v199 = sub_23A901C30(v44[OBJC_IVAR____TtC8RoomPlan8ScanItem_category]);
      v200 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
      swift_beginAccess();
      v201 = &v44[v200];
      v202 = v270;
      sub_23A8D5194(v201, v270, &unk_27DFAF030, &qword_23AA11B48);
      if ((v269)(v202, 1, v268) != 1)
      {
        break;
      }

      sub_23A8D50D0(v202, &unk_27DFAF030, &qword_23AA11B48);
      ++v81;
      v6 = v273;
      if (v78 == v264)
      {
        goto LABEL_177;
      }
    }

    v203 = sub_23A93E81C(v44, v272, v199);

    sub_23A910618(v202);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v271 = sub_23A9391BC(0, v271[2] + 1, 1, v271);
    }

    v205 = v271[2];
    v204 = v271[3];
    v44 = (v205 + 1);
    if (v205 >= v204 >> 1)
    {
      v271 = sub_23A9391BC((v204 > 1), v205 + 1, 1, v271);
    }

    v206 = v271;
    v271[2] = v44;
    v206[v205 + 4] = v203;
    v6 = v273;
  }

  while (v78 != v264);
LABEL_177:
  v208 = v271;
  if (v271[2])
  {
    v209 = v271[2];
    v210 = 0;
    v270 = v271 + 4;
    v211 = MEMORY[0x277D84F90];
    v212 = v249.i64[0];
    while (v210 < v208[2])
    {
      v213 = v212;
      v214 = v270[v210];
      v215 = *(v214 + 16);
      v212 = v211[2];
      v6 = v212 + v215;
      if (__OFADD__(v212, v215))
      {
        goto LABEL_206;
      }

      v216 = v270[v210];

      v217 = swift_isUniquelyReferenced_nonNull_native();
      if (!v217 || v6 > v211[3] >> 1)
      {
        if (v212 <= v6)
        {
          v218 = v212 + v215;
        }

        else
        {
          v218 = v212;
        }

        v211 = sub_23A939084(v217, v218, 1, v211);
      }

      v212 = v213;
      v6 = v273;
      if (*(v214 + 16))
      {
        v212 = v211[2];
        v6 = (v211[3] >> 1) - v212;
        v219 = *(type metadata accessor for LineAnimation() - 8);
        if (v6 < v215)
        {
          goto LABEL_208;
        }

        v220 = (*(v219 + 80) + 32) & ~*(v219 + 80);
        v221 = *(v219 + 72);
        swift_arrayInitWithCopy();

        v212 = v213;
        v6 = v273;
        if (v215)
        {
          v222 = v211[2];
          v196 = __OFADD__(v222, v215);
          v223 = v222 + v215;
          if (v196)
          {
            goto LABEL_209;
          }

          v211[2] = v223;
        }
      }

      else
      {

        if (v215)
        {
          goto LABEL_207;
        }
      }

      ++v210;
      v208 = v271;
      if (v209 == v210)
      {
        goto LABEL_195;
      }
    }

    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    swift_once();
  }

  else
  {
    v211 = MEMORY[0x277D84F90];
    v212 = v249.i64[0];
LABEL_195:

    v280 = v251;
    sub_23A912360(v262);
    sub_23A912360(v211);
    v211 = v280;
    if (qword_27DFAE458 != -1)
    {
      goto LABEL_210;
    }
  }

  v224 = qword_27DFC0700;
  v225 = v260;
  v226 = v252;
  v227 = v263;
  if (qword_27DFC0700)
  {
    v256(v260, &v272[OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid], v274);
    swift_beginAccess();
    v228 = *(v224 + 16);

    v229 = sub_23A94ED3C(v6, v228);

    if (v229)
    {
      sub_23A94FC90(v211);
    }

    v246(v225, v274);
  }

  if (!v226)
  {

    goto LABEL_88;
  }

  v275 = 0;
  sub_23A941308(v211, v227, v259, v258 & 1);
  v78 = v248.i64[0];
  if (v212)
  {
  }

LABEL_89:
  if (*(v6 + qword_27DFAEEF8))
  {
    v151 = *(v78 + 16);
    REMeshComponentSetBoundsMargin();
  }
}

uint64_t sub_23A904938()
{
  if (*(v0 + qword_27DFC0640))
  {
    type metadata accessor for ScanEntity();

    sub_23AA0C1F4();
  }

  if (qword_27DFAE458 != -1)
  {
    swift_once();
  }

  if (qword_27DFC0700)
  {
    swift_beginAccess();
    sub_23A9058E4(v0, sub_23A9EDC7C, sub_23A90B8A4, sub_23A90CE28, sub_23A905BDC);
    swift_endAccess();
  }

  v1 = sub_23AA0CAC4();
  v2 = qword_27DFC0620;
  v3 = sub_23AA0C0E4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v1 + qword_27DFC0628));
  v4 = *(v1 + qword_27DFC0640);

  v5 = *(v1 + qword_27DFAEEE8 + 8);

  v6 = *(v1 + qword_27DFAEEF0 + 8);

  v7 = *(v1 + qword_27DFAEF00);

  v8 = *(v1 + qword_27DFAEF08);

  return v1;
}

uint64_t sub_23A904B7C(void *a1, char a2)
{
  v4 = v3;
  v5 = v2;
  v71 = a1;
  v64 = sub_23AA0C184();
  v63 = *(v64 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF000, &qword_23AA128F0);
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  v13 = sub_23AA0C2E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF008, &qword_23AA128F8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v67 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = &v60 - v22;
  MEMORY[0x28223BE20](v23);
  v66 = &v60 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v70 = *(v5 + qword_27DFAEEE0);
  v27 = *(v14 + 56);
  v77 = &v60 - v28;
  v73 = v13;
  v68 = v27;
  v27(v26);
  if ((a2 & 1) == 0)
  {
    v37 = v73;
LABEL_9:
    v38 = v77;
    goto LABEL_10;
  }

  v69 = v3;
  if (qword_27DFAE490 != -1)
  {
    swift_once();
  }

  sub_23A996AE0(v71);
  v29 = qword_27DFC0628;
  swift_beginAccess();
  sub_23A8CA9D8(v5 + v29, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF010, qword_23AA14E50);
  type metadata accessor for MeshUpdateScanMaterial();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = v73;
    (*(v14 + 8))(v17, v73);
    v4 = v69;
    goto LABEL_9;
  }

  v61 = v14;

  v30 = v5 + qword_27DFAEEE8;
  v60 = v5;
  v32 = *(v5 + qword_27DFAEEE8);
  v31 = *(v30 + 8);
  v33 = v73;
  sub_23AA0CDC4();
  v34 = sub_23AA0CB64();
  (*(v65 + 8))(v12, v9);
  v35 = v69;
  v32(&v74, v34);
  v4 = v35;
  if (v35)
  {
    (*(v61 + 8))(v17, v33);
    v36 = v77;
    return sub_23A8D50D0(v36, &qword_27DFAF008, &qword_23AA128F8);
  }

  v5 = v60;
  v38 = v77;
  if (v75)
  {
    sub_23A8D50D0(v77, &qword_27DFAF008, &qword_23AA128F8);
    sub_23A8CAA3C(&v74, v76);
    v14 = v61;
    v37 = v73;
    (*(v61 + 32))(v38, v17, v73);
    (v68)(v38, 0, 1, v37);
    swift_beginAccess();
    __swift_assign_boxed_opaque_existential_1((v5 + v29), v76);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v76);
    *(v5 + qword_27DFAEEF8) = 0;
  }

  else
  {
    v14 = v61;
    v37 = v73;
    (*(v61 + 8))(v17, v73);
    sub_23A8D50D0(&v74, &qword_27DFAF018, &qword_23AA12900);
  }

LABEL_10:
  v39 = v72;
  if (*(v5 + qword_27DFAEEF8))
  {
    v36 = v38;
    return sub_23A8D50D0(v36, &qword_27DFAF008, &qword_23AA128F8);
  }

  v65 = qword_27DFAEEF8;
  v69 = v4;
  sub_23A8D5194(v38, v72, &qword_27DFAF008, &qword_23AA128F8);
  v41 = *(v14 + 48);
  if (v41(v39, 1, v37) == 1)
  {
    if (qword_27DFAE490 != -1)
    {
      swift_once();
    }

    v42 = v66;
    sub_23A996AE0(v71);
    v38 = v77;
    sub_23A8D50D0(v77, &qword_27DFAF008, &qword_23AA128F8);
    v43 = v72;
    if (v41(v72, 1, v37) != 1)
    {
      sub_23A8D50D0(v43, &qword_27DFAF008, &qword_23AA128F8);
    }
  }

  else
  {
    sub_23A8D50D0(v38, &qword_27DFAF008, &qword_23AA128F8);
    v44 = v39;
    v42 = v66;
    (*(v14 + 32))(v66, v44, v37);
  }

  (v68)(v42, 0, 1, v37);
  sub_23A9101F0(v42, v38);
  if (qword_27DFAE490 != -1)
  {
    swift_once();
  }

  v45 = v67;
  sub_23A8D5194(v38, v67, &qword_27DFAF008, &qword_23AA128F8);
  result = (v41)(v45, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v46 = sub_23A910260(&qword_27DFAE8B0, type metadata accessor for ScanEntity);
    v47 = (v5 + qword_27DFC0628);
    swift_beginAccess();
    v48 = v47[3];
    v49 = v47[4];
    v50 = __swift_project_boxed_opaque_existential_1(v47, v48);
    v51 = v5;
    v52 = *(v48 - 8);
    v53 = *(v52 + 64);
    v54 = MEMORY[0x28223BE20](v50);
    v56 = &v60 - v55;
    (*(v52 + 16))(&v60 - v55, v54);
    (*(v49 + 8))(v76, v48, v49);
    (*(v52 + 8))(v56, v48);
    v57 = v69;
    sub_23A998954(v51, v46, v45, v76);
    sub_23A8D50D0(v76, &qword_27DFAF780, &qword_23AA14670);
    if (v57)
    {
      sub_23A8D50D0(v77, &qword_27DFAF008, &qword_23AA128F8);
      return (*(v14 + 8))(v45, v73);
    }

    else
    {
      (*(v14 + 8))(v45, v73);
      v58 = v62;
      sub_23AA0C9A4();
      sub_23AA0C114();
      (*(v63 + 8))(v58, v64);
      REMeshComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      result = sub_23A8D50D0(v77, &qword_27DFAF008, &qword_23AA128F8);
      *(v51 + v65) = ComponentByClass;
    }
  }

  return result;
}

uint64_t sub_23A905558()
{
  v1 = qword_27DFC0620;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_27DFC0628));
  v3 = *(v0 + qword_27DFC0640);

  v4 = *(v0 + qword_27DFAEEE8 + 8);

  v5 = *(v0 + qword_27DFAEEF0 + 8);

  v6 = *(v0 + qword_27DFAEF00);

  v7 = *(v0 + qword_27DFAEF08);
}

uint64_t sub_23A905630@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27DFC0620;
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23A9056A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23A9EDD28(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23A90F618(type metadata accessor for ScanItemStrut, &qword_27DFAEFD8, &qword_23AA128C8, type metadata accessor for ScanItemStrut);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_23AA0C0E4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ScanItemStrut();
    v22 = *(v15 - 8);
    sub_23A910188(v14 + *(v22 + 72) * v8, a2, type metadata accessor for ScanItemStrut);
    sub_23A90C644(v8, v11, type metadata accessor for ScanItemStrut);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ScanItemStrut();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23A9058E4(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v10 = *v8;
  if ((*v8 & 0xC000000000000001) == 0)
  {
    v15 = a4;
    v21 = *v8;
    v22 = a2(a1);
    if (v23)
    {
      v10 = v22;
      v24 = *v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v8;
      v29 = *v8;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v27 = *(*(v26 + 48) + 8 * v10);

        v20 = *(*(v26 + 56) + 8 * v10);
        a3(v10, v26);
        *v8 = v26;
        return v20;
      }

LABEL_14:
      (v15)();
      v26 = v29;
      goto LABEL_10;
    }

    return 0;
  }

  if (v10 < 0)
  {
    v12 = *v8;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = sub_23AA0D9C4();

  if (!v13)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v14 = sub_23AA0D7F4();
  v15 = a5(v12, v14);

  v16 = a2(a1);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(*(v15 + 48) + 8 * v16);

  v20 = *(*(v15 + 56) + 8 * v16);
  a3(v16, v15);

  *v8 = v15;
  return v20;
}

uint64_t sub_23A905A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23A9EE264(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23A90FBEC();
      v11 = v22;
    }

    v12 = *(*(v11 + 48) + 8 * v8);

    v13 = *(v11 + 56);
    v14 = sub_23AA0BFB4();
    v21 = *(v14 - 8);
    (*(v21 + 32))(a2, v13 + *(v21 + 72) * v8, v14);
    sub_23A90C9AC(v8, v11);
    *v3 = v11;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = sub_23AA0BFB4();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_23A905BDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF20, &qword_23AA12838);
    v2 = sub_23AA0DA34();
    v20 = v2;
    sub_23AA0D9A4();
    v3 = sub_23AA0D9D4();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for ScanEntity();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for ScanEntityDebugUtility();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_23A905F94(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        sub_23A910260(&qword_27DFAEF28, type metadata accessor for ScanEntity);
        result = sub_23AA0D054();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_23AA0D9D4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_23A905E4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA8, &qword_23AA128A8);
    v2 = sub_23AA0DA34();
    v10 = v2;
    sub_23AA0D9A4();
    v3 = sub_23AA0D9D4();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for PixelBufferFormat();
      v5 = v4;
      do
      {
        v8 = v5;
        swift_dynamicCast();
        type metadata accessor for CVPixelBufferPool(0);
        swift_dynamicCast();
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_23A909D40(v6 + 1, 1);
        }

        v2 = v10;
        sub_23A90CD54(v9, v8, v10);
        v5 = sub_23AA0D9D4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_23A905F94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF20, &qword_23AA12838);
  v34 = a2;
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v35 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      type metadata accessor for ScanEntity();
      sub_23A910260(&qword_27DFAEF28, type metadata accessor for ScanEntity);
      result = sub_23AA0D054();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v33;
      v13 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v10, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A9062B4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_23AA0DA24();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      result = sub_23AA0D054();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_23A9066CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEF60, &qword_23AA12868);
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v34 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {

        v22 = v34;
        v23 = *(&v34 + 1);
      }

      v24 = *(v8 + 40);
      sub_23AA0DD14();
      sub_23AA0C0B4();
      result = sub_23AA0DD54();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v34;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A90697C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF58, &qword_23AA12860);
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 48);
      v22 = *(v21 + 8 * v20);
      v23 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      sub_23AA0DD14();
      sub_23AA0C0B4();
      result = sub_23AA0DD54();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A906C14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF090, &unk_23AA1B300);
  result = sub_23AA0DA24();
  v9 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v5 + 64);
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = v18 | (v10 << 6);
      v22 = *(v5 + 56);
      *&v8 = *(*(v5 + 48) + 8 * v21);
      v35 = v8;
      v23 = *(v22 + 8 * v21);
      if ((a2 & 1) == 0)
      {
        v24 = *(v22 + 8 * v21);
      }

      v25 = *(v9 + 40);
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      result = sub_23AA0DD54();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(&v8 + 1) = *(&v35 + 1);
      *(*(v9 + 48) + 8 * v17) = v35;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

uint64_t sub_23A906EE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF80, &qword_23AA12888);
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *(v23 + 8);
      v25 = *v23;
      v26 = *(v8 + 40);
      result = sub_23AA0DD04();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_23A907164(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEFB0, &qword_23AA128B0);
  v39 = a2;
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v39 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_23AA0DD14();
      v24 = *(v21 + 48);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = (v24 + 32);
        do
        {
          v27 = *v26++;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
          v28 = sub_23AA0DC84();
          MEMORY[0x23EE907C0](v28);
          --v25;
        }

        while (v25);
      }

      result = sub_23AA0DD54();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v5 = v38;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v5 = v38;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v13 = v40;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_38;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_23A907454(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFC0, &qword_23AA128B8);
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_23AA0DD04();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A9076C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF040, &qword_23AA12908);
  result = sub_23AA0DA24();
  v9 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v10 = 0;
    v11 = (v5 + 64);
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = v18 | (v10 << 6);
      *&v8 = *(*(v5 + 48) + 8 * v21);
      v34 = v8;
      v22 = *(*(v5 + 56) + 4 * v21);
      v23 = *(v9 + 40);
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      result = sub_23AA0DD54();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(&v8 + 1) = *(&v34 + 1);
      *(*(v9 + 48) + 8 * v17) = v34;
      *(*(v9 + 56) + 4 * v17) = v22;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v9;
  return result;
}

uint64_t sub_23A907978(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA0, &qword_23AA128A0);
  v43 = a2;
  result = sub_23AA0DA24();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      result = sub_23AA0D054();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23A907D54(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF70, &qword_23AA12878);
  v46 = a2;
  result = sub_23AA0DA24();
  v14 = result;
  if (*(v11 + 16))
  {
    v50 = v10;
    v42 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = (v7 + 16);
    v44 = v7;
    v47 = (v7 + 32);
    v21 = result + 64;
    v45 = v11;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v25 = (v19 - 1) & v19;
LABEL_17:
      v28 = v24 | (v15 << 6);
      v49 = v25;
      v29 = *(v7 + 72);
      v30 = *(v11 + 48) + v29 * v28;
      if (v46)
      {
        (*v47)(v50, v30, v6);
      }

      else
      {
        (*v43)(v50, v30, v6);
      }

      v31 = *(v11 + 56) + 32 * v28;
      v32 = *(v31 + 16);
      v48 = *v31;
      v33 = *(v14 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      result = sub_23AA0D054();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v47)(*(v14 + 48) + v29 * v22, v50, v6);
      v23 = *(v14 + 56) + 32 * v22;
      *v23 = v48;
      *(v23 + 16) = v32;
      ++*(v14 + 16);
      v7 = v44;
      v11 = v45;
      v19 = v49;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23A908144(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_23AA0DA24();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_23AA0DD04();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_23A9083AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF078, &qword_23AA1B2A0);
  v38 = a2;
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v40 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + 40 * v21;
      v23 = *v22;
      v39 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      v26 = *(v22 + 32);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v40);
      result = sub_23AA0DD54();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v40;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v23;
      *(v17 + 8) = v39;
      *(v17 + 16) = v24;
      *(v17 + 24) = v25;
      *(v17 + 32) = v26;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A908698(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF088, &qword_23AA12938);
  v33 = a2;
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v21);
      result = sub_23AA0DD54();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A90893C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1490, &qword_23AA12870);
  v36 = a2;
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23A8EF9F0(v25, v37);
      }

      else
      {
        sub_23A9100C4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23AA0DD14();
      sub_23AA0D1D4();
      result = sub_23AA0DD54();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23A8EF9F0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23A908C30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFF8, &qword_23AA128E8);
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v21);
      result = sub_23AA0DD54();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_23A908EB0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFF0, &qword_23AA128E0);
  v48 = a2;
  result = sub_23AA0DA24();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      result = sub_23AA0D054();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23A909298(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFE0, &qword_23AA128D0);
  v33 = a2;
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_23AA0DD14();
      sub_23AA0D1D4();

      result = sub_23AA0DD54();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A9095E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFC8, &qword_23AA128C0);
  v50 = a2;
  result = sub_23AA0DA24();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v6;
    v20 = v18 & *(v11 + 64);
    v21 = (v17 + 63) >> 6;
    v48 = (v7 + 16);
    v49 = v7;
    v51 = (v7 + 32);
    v22 = result + 64;
    v55 = v19;
    v56 = v10;
    v23 = v7;
    while (v20)
    {
      v29 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v32 = v29 | (v15 << 6);
      v33 = *(v11 + 48);
      v54 = *(v23 + 72);
      v34 = v33 + v54 * v32;
      if (v50)
      {
        (*v51)(v56, v34, v55);
      }

      else
      {
        (*v48)(v56, v34, v55);
      }

      v35 = (*(v11 + 56) + 32 * v32);
      v36 = v35[1];
      v52 = *v35;
      v53 = v36;
      v37 = *(v14 + 40);
      sub_23A910260(&qword_27DFAEFD0, MEMORY[0x277CC9260]);
      result = sub_23AA0D054();
      v38 = -1 << *(v14 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v22 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v25 = v49;
        v26 = v56;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v22 + 8 * v40);
          if (v44 != -1)
          {
            v24 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v39) & ~*(v22 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v25 = v49;
      v26 = v56;
LABEL_9:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v51)(*(v14 + 48) + v54 * v24, v26, v55);
      v27 = (*(v14 + 56) + 32 * v24);
      v28 = v53;
      *v27 = v52;
      v27[1] = v28;
      ++*(v14 + 16);
      v23 = v25;
    }

    v30 = v15;
    while (1)
    {
      v15 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v21)
      {
        break;
      }

      v31 = v16[v15];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v20 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v11 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v16, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v45;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23A9099C0(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_23AA0C0E4();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFE8, &qword_23AA128D8);
  v46 = a2;
  result = sub_23AA0DA24();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_23AA0DD14();
      sub_23AA0D1D4();
      result = sub_23AA0DD54();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_23A909D40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA8, &qword_23AA128A8);
  v40 = a2;
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v40 & 1) == 0)
      {

        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_23AA0DD14();
      v25 = *(v21 + 16);
      v26 = sub_23AA0D444();
      MEMORY[0x23EE907C0](v26);
      v27 = *(v21 + 24);
      v28 = sub_23AA0D444();
      MEMORY[0x23EE907C0](v28);
      v29 = *(v21 + 32);
      v30 = sub_23AA0DD64();
      MEMORY[0x23EE907C0](v30);
      result = sub_23AA0DD54();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A909FF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF90, &qword_23AA12898);
  v39 = a2;
  result = sub_23AA0DA24();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_23AA0DD14();
      sub_23AA0D1D4();
      result = sub_23AA0DD54();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23A90A2B0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_23AA0DA24();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_23AA0DD14();
      sub_23AA0D1D4();
      result = sub_23AA0DD54();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_23A90A548(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF50, &qword_23AA12858);
  v44 = a2;
  result = sub_23AA0DA24();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      result = sub_23AA0D054();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23A90A944(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v62 = a6;
  v9 = v6;
  v12 = a3(0);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v51 - v14;
  v15 = sub_23AA0C0E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  v21 = v19;
  result = sub_23AA0DA24();
  v23 = result;
  if (*(v19 + 16))
  {
    v60 = v15;
    v24 = 0;
    v25 = (v19 + 64);
    v26 = 1 << *(v19 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v19 + 64);
    v29 = (v26 + 63) >> 6;
    v51 = v9;
    v52 = (v16 + 16);
    v53 = v19;
    v54 = v16;
    v58 = (v16 + 32);
    v30 = result + 64;
    v31 = v57;
    while (v28)
    {
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v36 = v33 | (v24 << 6);
      v37 = *(v21 + 48);
      v59 = *(v54 + 72);
      v38 = v37 + v59 * v36;
      if (v56)
      {
        (*v58)(v31, v38, v60);
        v39 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_23A910188(v39 + v40 * v36, v61, v62);
      }

      else
      {
        (*v52)(v31, v38, v60);
        v41 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_23A910120(v41 + v40 * v36, v61, v62);
      }

      v42 = *(v23 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      result = sub_23AA0D054();
      v43 = -1 << *(v23 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v30 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v31 = v57;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v30 + 8 * v45);
          if (v49 != -1)
          {
            v32 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v44) & ~*(v30 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v31 = v57;
LABEL_9:
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      (*v58)((*(v23 + 48) + v59 * v32), v31, v60);
      result = sub_23A910188(v61, *(v23 + 56) + v40 * v32, v62);
      ++*(v23 + 16);
      v21 = v53;
    }

    v34 = v24;
    while (1)
    {
      v24 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v24 >= v29)
      {
        break;
      }

      v35 = v25[v24];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v28 = (v35 - 1) & v35;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v21 + 32);
    v9 = v51;
    if (v50 >= 64)
    {
      bzero(v25, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v50;
    }

    *(v21 + 16) = 0;
  }

LABEL_36:
  *v9 = v23;
  return result;
}

uint64_t sub_23A90ADF4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1510, &qword_23AA12850);
  v43 = a2;
  result = sub_23AA0DA24();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        swift_unknownObjectRetain();
      }

      v29 = *(v14 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      result = sub_23AA0D054();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23A90B1D0(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_23AA0BFB4();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0A0, &qword_23AA12948);
  v43 = a2;
  result = sub_23AA0DA24();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 8 * v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_23AA0DD14();
      sub_23A9102A8(v46, v27);
      result = sub_23AA0DD54();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_23A90B540(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_23AA0BFB4();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF098, &qword_23AA12940);
  v43 = a2;
  result = sub_23AA0DA24();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v27);
      result = sub_23AA0DD54();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_23A90B8A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    type metadata accessor for ScanEntity();
    sub_23A910260(&qword_27DFAEF28, type metadata accessor for ScanEntity);
    do
    {
      v9 = *(a2 + 40);
      v22 = *(*(a2 + 48) + 8 * v6);
      result = sub_23AA0D054();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 8 * v3);
          v15 = (v13 + 8 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_23A90BA78(int64_t a1, uint64_t a2)
{
  v41 = sub_23AA0C0E4();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_23AA0D784();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      v25 = sub_23AA0D054();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

uint64_t sub_23A90BD98(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    v28 = v2;
    v29 = v4;
    do
    {
      v9 = v7;
      v10 = *(v2 + 40);
      v11 = *(*(v2 + 48) + 8 * v6);
      sub_23AA0DD14();
      v12 = *(v11 + 48);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = (v12 + 32);

        do
        {
          v15 = *v14++;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
          v16 = sub_23AA0DC84();
          MEMORY[0x23EE907C0](v16);
          --v13;
        }

        while (v13);
      }

      else
      {
      }

      v17 = sub_23AA0DD54();

      v7 = v9;
      v18 = v17 & v9;
      if (v3 >= v8)
      {
        v2 = v28;
        v4 = v29;
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = v28;
        v4 = v29;
        if (v18 >= v8)
        {
          goto LABEL_15;
        }
      }

      if (v3 >= v18)
      {
LABEL_15:
        v19 = *(v2 + 48);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(v2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}