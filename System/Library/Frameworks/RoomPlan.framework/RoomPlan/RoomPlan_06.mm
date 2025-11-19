uint64_t sub_23A921D78(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = sub_23AA0C0E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for CapturedRoom.Surface(0);
  v19 = *(v18 + 56);
  (*(v4 + 16))(v17, a2 + *(v18 + 44), v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v20 = *(v8 + 56);
  sub_23A8D5194(v30 + v19, v11, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D5194(v17, &v11[v20], &unk_27DFB0970, &qword_23AA14E00);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) != 1)
  {
    v23 = v29;
    sub_23A8D5194(v11, v29, &unk_27DFB0970, &qword_23AA14E00);
    if (v21(&v11[v20], 1, v3) != 1)
    {
      v24 = v28;
      (*(v4 + 32))(v28, &v11[v20], v3);
      sub_23A93032C(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);
      v22 = sub_23AA0D084();
      v25 = *(v4 + 8);
      v25(v24, v3);
      sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
      v25(v23, v3);
      sub_23A8D50D0(v11, &unk_27DFB0970, &qword_23AA14E00);
      return v22 & 1;
    }

    sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
    (*(v4 + 8))(v23, v3);
    goto LABEL_6;
  }

  sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
  if (v21(&v11[v20], 1, v3) != 1)
  {
LABEL_6:
    sub_23A8D50D0(v11, &qword_27DFAEC28, &unk_23AA1AA40);
    v22 = 0;
    return v22 & 1;
  }

  sub_23A8D50D0(v11, &unk_27DFB0970, &qword_23AA14E00);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_23A922178(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = sub_23AA0C0E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = *(type metadata accessor for CapturedRoom.Object(0) + 44);
  v19 = type metadata accessor for CapturedRoom.Surface(0);
  (*(v4 + 16))(v17, a2 + *(v19 + 44), v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v20 = *(v8 + 56);
  sub_23A8D5194(v30 + v18, v11, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D5194(v17, &v11[v20], &unk_27DFB0970, &qword_23AA14E00);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) != 1)
  {
    v23 = v29;
    sub_23A8D5194(v11, v29, &unk_27DFB0970, &qword_23AA14E00);
    if (v21(&v11[v20], 1, v3) != 1)
    {
      v24 = v28;
      (*(v4 + 32))(v28, &v11[v20], v3);
      sub_23A93032C(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);
      v22 = sub_23AA0D084();
      v25 = *(v4 + 8);
      v25(v24, v3);
      sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
      v25(v23, v3);
      sub_23A8D50D0(v11, &unk_27DFB0970, &qword_23AA14E00);
      return v22 & 1;
    }

    sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
    (*(v4 + 8))(v23, v3);
    goto LABEL_6;
  }

  sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
  if (v21(&v11[v20], 1, v3) != 1)
  {
LABEL_6:
    sub_23A8D50D0(v11, &qword_27DFAEC28, &unk_23AA1AA40);
    v22 = 0;
    return v22 & 1;
  }

  sub_23A8D50D0(v11, &unk_27DFB0970, &qword_23AA14E00);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_23A922580(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = sub_23AA0C0E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for CapturedRoom.Object(0);
  v19 = *(v18 + 44);
  (*(v4 + 16))(v17, a2 + *(v18 + 32), v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v20 = *(v8 + 56);
  sub_23A8D5194(v30 + v19, v11, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D5194(v17, &v11[v20], &unk_27DFB0970, &qword_23AA14E00);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) != 1)
  {
    v23 = v29;
    sub_23A8D5194(v11, v29, &unk_27DFB0970, &qword_23AA14E00);
    if (v21(&v11[v20], 1, v3) != 1)
    {
      v24 = v28;
      (*(v4 + 32))(v28, &v11[v20], v3);
      sub_23A93032C(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);
      v22 = sub_23AA0D084();
      v25 = *(v4 + 8);
      v25(v24, v3);
      sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
      v25(v23, v3);
      sub_23A8D50D0(v11, &unk_27DFB0970, &qword_23AA14E00);
      return v22 & 1;
    }

    sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
    (*(v4 + 8))(v23, v3);
    goto LABEL_6;
  }

  sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
  if (v21(&v11[v20], 1, v3) != 1)
  {
LABEL_6:
    sub_23A8D50D0(v11, &qword_27DFAEC28, &unk_23AA1AA40);
    v22 = 0;
    return v22 & 1;
  }

  sub_23A8D50D0(v11, &unk_27DFB0970, &qword_23AA14E00);
  v22 = 1;
  return v22 & 1;
}

void sub_23A922980(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t (**a8)(uint64_t, uint64_t, unint64_t)@<X8>, float32_t a9@<S0>, float32_t a10@<S1>, float a11@<S2>)
{
  v13 = v12;
  v14 = v11;
  v172 = a6;
  v167 = a5;
  v169 = a3;
  v170 = a2;
  v175 = a8;
  v177.n128_u64[0] = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v174 = *(v177.n128_u64[0] - 8);
  v21 = *(v174 + 64);
  MEMORY[0x28223BE20](v177.n128_u64[0]);
  v168 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v24 = *(*(v23 - 8) + 64);
  v25 = (MEMORY[0x28223BE20])(v23 - 8);
  v171 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v176.i64[0] = &v147 - v27;
  v28 = type metadata accessor for CapturedRoom.Surface(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = (MEMORY[0x28223BE20])(v28);
  v31 = (MEMORY[0x28223BE20])(v30);
  v35 = &v147 - v34;
  v36 = *(v31 + 44);
  v37 = *(v11 + 16);
  if (!*(v37 + 16))
  {
    goto LABEL_6;
  }

  v164 = v33;
  v165 = v32;
  v166 = v31;

  v173 = a1;
  v38 = sub_23A9EDD28(a1 + v36);
  if ((v39 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    v49 = v48;
    *v48 = sub_23AA0C074();
    v49[1] = v50;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v163 = v35;
  v161 = a4;
  v162 = a7;
  v40 = (*(v37 + 56) + 16 * v38);
  v41 = *v40;
  v42 = v40[1];

  v178 = v41;
  v179 = v42;

  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v43 = *(v14 + 24);
  v44 = *(v14 + 32);

  MEMORY[0x23EE8FCA0](v43, v44);

  v45 = v175;
  sub_23AA0BF44();

  v46 = sub_23A92D2EC(v45);
  if (v13)
  {
    v47 = sub_23AA0BFB4();
    (*(*(v47 - 8) + 8))(v45, v47);

    return;
  }

  v51 = v46;
  v52 = sub_23AA0BF04();
  v54 = v53;
  v55 = [v51 rootNode];
  v56 = sub_23A92EC38(v41, v42, v52, v54, v55, v51);
  v157 = v41;
  v158 = v42;
  v160 = 0;
  v57 = v56;

  v58 = sub_23AA0D104();
  v159 = v51;
  v59 = v173;
  sub_23AA0C074();
  v60 = objc_allocWithZone(MEMORY[0x277D77878]);
  v61 = sub_23AA0D104();

  v62 = [v60 initWithString_];

  [v57 setCustomMetadata:v58 value:v62];
  v63 = sub_23AA0D104();
  v64 = *v59;
  v65 = v159;
  LOBYTE(v178) = v64;
  v178 = sub_23AA0D1A4();
  v179 = v66;
  sub_23A92F104();
  sub_23AA0D6A4();

  v67 = objc_allocWithZone(MEMORY[0x277D77878]);
  v68 = sub_23AA0D104();

  v69 = [v67 initWithString_];

  [v57 setCustomMetadata:v63 value:v69];
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v70 = [v65 rootNode];
  LOBYTE(v68) = sub_23AA0D634();

  v156 = v57;
  if (v68)
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    v73 = v158;
    v74 = v163;
  }

  else
  {
    v75 = [v57 path];
    v76 = [v75 stringValue];

    v73 = v158;
    v74 = v163;
    if (v76)
    {
      v71 = sub_23AA0D134();
      v72 = v77;
    }

    else
    {
      v71 = 0;
      v72 = 0xE000000000000000;
    }
  }

  v178 = v71;
  v179 = v72;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v157, v73);

  v79 = v178;
  v78 = v179;
  v80 = objc_allocWithZone(MEMORY[0x277D77888]);
  v81 = sub_23AA0D104();
  v82 = [v80 initWithString_];

  if (!v82)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v104 = v79;
    v104[1] = v78;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v82 = v156;
LABEL_19:

    v106 = sub_23AA0BFB4();
    (*(*(v106 - 8) + 8))(v175, v106);
    return;
  }

  v83 = [v65 newNodeAtPath:v82 type:*MEMORY[0x277D77968]];
  if (!v83)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v105 = v79;
    v105[1] = v78;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_19;
  }

  v84 = v83;

  v85 = sub_23AA0D104();
  v86 = *MEMORY[0x277D77948];
  v163 = v84;
  v87 = [v84 newPropertyWithName:v85 type:v86 role:0];

  if (v87)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_23AA11BB0;
    v89 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v90 = sub_23AA0D104();
    v91 = [v89 initWithString_];

    *(v88 + 32) = v91;
    sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
    v92 = sub_23AA0D2E4();

    v151 = v87;
    [v87 setTokenArray_];

    v93 = v173;
    v181.columns[1] = *(v173 + 48);
    v181.columns[2] = *(v173 + 64);
    v181.columns[3] = *(v173 + 80);
    v150 = *(v173 + 32);
    v181.columns[0] = v150;
    v149 = v181.columns[1];
    v148 = v181.columns[2];
    v147 = v181.columns[3];
    v182 = __invert_f4(v181);
    v180 = MEMORY[0x277D84F90];
    v95 = v170;
    v96 = *(v170 + 16);
    v155 = v182.columns[0];
    v154 = v182.columns[1];
    v153 = v182.columns[2];
    v152 = v182.columns[3];
    if (v96)
    {
      *&v97 = MEMORY[0x28223BE20](v94);
      *(&v147 - 5) = v97;
      *(&v147 - 4) = v98;
      *(&v147 - 3) = v99;
      *(&v147 - 2) = v100;
      *(&v147 - 2) = v93;
      v101 = v160;
      v102 = sub_23A97E54C(sub_23A92FFF4, (&v147 - 6), v95);
      v103 = v101;
      v94 = sub_23A912880(v102);
    }

    else
    {
      v103 = v160;
    }

    if (*(v169 + 16))
    {
      MEMORY[0x28223BE20](v94);
      v107 = v154;
      *(&v147 - 5) = v155;
      *(&v147 - 4) = v107;
      v108 = v152;
      *(&v147 - 3) = v153;
      *(&v147 - 2) = v108;
      *(&v147 - 2) = v173;
      v110 = sub_23A96611C(sub_23A9305B0, (&v147 - 6), v109);
      v94 = sub_23A912880(v110);
    }

    v160 = v103;
    if (v96)
    {
      v111 = *(v164 + 72);
      v169 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v112 = v95 + v169;
      v175 = (v174 + 48);
      v113 = MEMORY[0x277D84F90];
      do
      {
        sub_23A930548(v112, v74, type metadata accessor for CapturedRoom.Surface);
        v114 = v176.i64[0];
        sub_23A8D5194(v74 + *(v166 + 52), v176.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
        v115 = (*v175)(v114, 1, v177.n128_u64[0]);
        sub_23A8D50D0(v114, &qword_27DFAEB38, &unk_23AA11B60);
        if (v115 == 1)
        {
          v94 = sub_23A92FED0(v74, type metadata accessor for CapturedRoom.Surface);
        }

        else
        {
          sub_23A92FF30(v74, v165, type metadata accessor for CapturedRoom.Surface);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v178 = v113;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23A976018(0, *(v113 + 16) + 1, 1);
            v113 = v178;
          }

          v118 = *(v113 + 16);
          v117 = *(v113 + 24);
          if (v118 >= v117 >> 1)
          {
            sub_23A976018(v117 > 1, v118 + 1, 1);
            v113 = v178;
          }

          *(v113 + 16) = v118 + 1;
          v94 = sub_23A92FF30(v165, v113 + v169 + v118 * v111, type metadata accessor for CapturedRoom.Surface);
        }

        v112 += v111;
        --v96;
      }

      while (v96);
    }

    else
    {
      v113 = MEMORY[0x277D84F90];
    }

    if (*(v113 + 16))
    {
      MEMORY[0x28223BE20](v94);
      v119 = v154;
      *(&v147 - 5) = v155;
      *(&v147 - 4) = v119;
      v120 = v152;
      *(&v147 - 3) = v153;
      *(&v147 - 2) = v120;
      v121 = v173;
      *(&v147 - 2) = v173;
      v122 = v160;
      v123 = sub_23A97E54C(sub_23A92FFB4, (&v147 - 6), v113);
      v160 = v122;
    }

    else
    {

      v123 = MEMORY[0x277D84F90];
      v121 = v173;
    }

    v124 = v159;
    v125 = v171;
    v126 = v162;
    v176 = v121[1];
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v127 = off_27DFB17B0;
    swift_beginAccess();
    v128 = (v127[138] & 1) == 0 && v121->i8[0] != 5;
    v129 = v166;
    sub_23A8D5194(v121 + *(v166 + 52), v125, &qword_27DFAEB38, &unk_23AA11B60);
    if ((*(v174 + 48))(v125, 1, v177.n128_u64[0]) == 1)
    {
      *v130.i32 = a11 + a11;
      v177 = vaddq_f32(vdupq_lane_s32(v130, 0), v176);

      sub_23A8D50D0(v125, &qword_27DFAEB38, &unk_23AA11B60);
      v131 = *(v121->i64 + *(v129 + 60));
      if (*(v131 + 16))
      {
        v132 = v128;
      }

      else
      {
        v132 = 1;
      }

      if (v132)
      {
        v133 = v161;
        if (v161)
        {
          sub_23A9BAE80(v177.n128_f64[0]);
          v135 = v134;
          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          v136 = sub_23A8F0290(v135, v180, v133, v167 & 1, v172, v126, v177, a9, a10, a11);
        }

        else
        {
          v136 = sub_23A8F89D0(v180, v172, v126, v177, a9, a10);
        }
      }

      else
      {
        type metadata accessor for RoomCaptureGeometryManager();
        swift_initStaticObject();
        v136 = sub_23A8F0290(v131, v180, v161, v167 & 1, v172, v126, v177, a9, a10, a11);
      }
    }

    else
    {
      v137 = v176.i32[1];

      v138 = v168;
      sub_23A92FF30(v125, v168, type metadata accessor for CapturedRoom.Surface.Curve);
      v139.n128_u32[0] = v137;
      v140.n128_f32[0] = a9;
      v141.n128_f32[0] = a10;
      v136 = sub_23A8FA5A0(v138, v123, v139, v140, v141, v172, v126, 0x3C8EFA35uLL, 1);

      sub_23A92FED0(v138, type metadata accessor for CapturedRoom.Surface.Curve);
    }

    sub_23A92F158(v163, v136, v150, v149, v148, v147);

    v142 = v121->u8[0];
    if (v142 == 5 || (v143 = 0.0, v142 == 2))
    {
      v143 = 0.00781250185;
    }

    v144 = v142 == 5 || v142 == 2;
    v145 = 0.0;
    if (v144)
    {
      v145 = 1.0;
    }

    v146 = v163;
    sub_23A92F638(v163, v157, v158, v124, v143, v145);

    [v124 save];
  }

  else
  {
    __break(1u);
  }
}

float32x2_t *sub_23A923B00@<X0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, float32x2_t **a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v12 = a1[1];
  v11 = a1[2];
  v18 = *(a2 + 16);
  v13 = vaddq_f32(v10, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v11, -0.5 * v12.f32[0]), v8, vmuls_lane_f32(-0.5, *v12.f32, 1)), v9, vmuls_lane_f32(-0.5, v12, 2)));
  v14 = vaddq_f32(v10, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v11, 0.5 * v12.f32[0]), v8, vmuls_lane_f32(0.5, *v12.f32, 1)), v9, vmuls_lane_f32(0.5, v12, 2)));
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v14.f32[0]), a5, *v14.f32, 1), a6, v14, 2), a7, v14, 3).u64[0];
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v13.f32[0]), a5, *v13.f32, 1), a6, v13, 2), a7, v13, 3).u64[0];
  type metadata accessor for OpeningElement();
  swift_allocObject();
  result = sub_23AA0A7C4(v17, v16, *&v18, 0.03);
  *a3 = result;
  return result;
}

int32x2_t sub_23A923BEC@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  v112 = a2;
  v108 = a6;
  v109 = a7;
  v107 = a5;
  v106 = a4;
  v114 = a3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v113 = *(v111 - 8);
  v8 = *(v113 + 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v97 - v9;
  v10 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v99.n128_u64[0] = *(v10 - 8);
  v11 = *(v99.n128_u64[0] + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v118 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v97 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v115.i64[0] = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v97 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v97 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v97 - v26;
  v28 = a1[3];
  v102 = a1[2];
  v103 = v28;
  v29 = a1[5];
  v105 = a1[4];
  v104 = v29;
  v30 = type metadata accessor for CapturedRoom.Surface(0);
  v31 = a1 + *(v30 + 52);
  v117 = v27;
  sub_23A8D5194(v31, v27, &qword_27DFAEB38, &unk_23AA11B60);
  v116 = a1[1];
  sub_23A8D5194(&v112[*(v30 + 52)], v25, &qword_27DFAEB38, &unk_23AA11B60);
  v112 = v25;
  v32 = v25;
  v33 = v99.n128_u64[0];
  v34 = v10;
  sub_23A8D5194(v32, v22, &qword_27DFAEB38, &unk_23AA11B60);
  v35 = *(v33 + 48);
  if (v35(v22, 1, v10) == 1)
  {
    v36 = objc_opt_self();
    v37 = [v36 degrees];
    v38 = *(v10 + 24);
    sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
    v34 = v10;
    sub_23AA0BC64();
    v39 = [v36 degrees];
    v40 = &v15[*(v10 + 28)];
    sub_23AA0BC64();
    *v15 = 0;
    *(v15 + 2) = 0;
    if (v35(v22, 1, v10) != 1)
    {
      sub_23A8D50D0(v22, &qword_27DFAEB38, &unk_23AA11B60);
    }
  }

  else
  {
    sub_23A92FF30(v22, v15, type metadata accessor for CapturedRoom.Surface.Curve);
  }

  v41 = v115.i64[0];
  sub_23A8D5194(v117, v115.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v42 = v35(v41, 1, v34);
  v101 = v15;
  if (v42 == 1)
  {
    v43 = objc_opt_self();
    v44 = [v43 degrees];
    v45 = *(v34 + 24);
    sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
    v46 = v118;
    sub_23AA0BC64();
    v47 = [v43 &selRef_saveAndCreateUSDZPackageWithURL_ + 6];
    v48 = v46 + *(v34 + 28);
    sub_23AA0BC64();
    *v46 = 0;
    *(v46 + 8) = 0;
    if (v35(v41, 1, v34) != 1)
    {
      sub_23A8D50D0(v41, &qword_27DFAEB38, &unk_23AA11B60);
    }
  }

  else
  {
    v46 = v118;
    sub_23A92FF30(v41, v118, type metadata accessor for CapturedRoom.Surface.Curve);
  }

  v49.i64[0] = *v46;
  v115 = v49;
  v50 = *(v46 + 8);
  v51 = *(v34 + 24);
  v52 = objc_opt_self();
  v53 = [v52 radians];
  v55 = v110;
  v54 = v111;
  sub_23AA0BC84();

  sub_23AA0BC74();
  v57 = v56;
  v100 = v34;
  v58 = *(v113 + 1);
  v59 = v58(v55, v54);
  v60 = v58;
  v113 = v58;
  *&v57 = v57;
  v59.n128_f32[0] = vmuls_lane_f32(-0.5, *v116.f32, 1);
  v99 = v59;
  *&v61 = v115.f32[0] + (v50 * cosf(*&v57));
  v98 = v61;
  v62 = v115.f32[1];
  *&v63 = v62 + (v50 * sinf(*&v57));
  v97 = v63;
  v64 = *(v34 + 28);
  v65 = [v52 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v67 = v66;
  v68 = v60(v55, v54);
  *&v67 = v67;
  v68.f32[0] = vmuls_lane_f32(0.5, *v116.f32, 1);
  v116 = v68;
  v69.f32[0] = v115.f32[0] + (v50 * cosf(*&v67));
  v115 = v69;
  v70 = sinf(*&v67);
  v71 = vaddq_f32(v104, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v102, *&v98), v103, v99.n128_f32[0]), v105, *&v97));
  v72 = vaddq_f32(v104, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v102, v115.f32[0]), v103, v116.f32[0]), v105, v62 + (v50 * v70)));
  v115 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, v72.f32[0]), v107, *v72.f32, 1), v108, v72, 2), v109, v72, 3);
  v116 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, v71.f32[0]), v107, *v71.f32, 1), v108, v71, 2), v109, v71, 3);
  v73 = v101;
  LODWORD(v74) = HIDWORD(*v101);
  *&v67 = v115.f32[0] - COERCE_FLOAT(*v101);
  v75 = v115.f32[2] - v74;
  v76 = atan2f(v116.f32[2] - v74, v116.f32[0] - COERCE_FLOAT(*v101));
  v77 = atan2f(v75, *&v67);
  v78 = v76 + 6.2832;
  if (v76 >= 0.0)
  {
    v78 = v76;
  }

  else
  {
    v77 = v77 + 6.2832;
  }

  if (v78 < 6.2832)
  {
    v79 = v78;
  }

  else
  {
    v79 = v78 + -6.2832;
  }

  if (v78 >= 6.2832)
  {
    v77 = v77 + -6.2832;
  }

  if (v77 >= v79)
  {
    v80 = v77;
  }

  else
  {
    v80 = v77 + 6.2832;
  }

  v81 = v100;
  v82 = *(v100 + 24);
  v83 = v52;
  v84 = [v52 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v86 = v85;
  v87 = v113;
  v113(v55, v54);
  v88 = v86;
  if (v79 < v88)
  {
    v79 = v86;
  }

  v89 = *(v81 + 28);
  v90 = [v83 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v92 = v91;
  v87(v55, v54);
  sub_23A92FED0(v118, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A92FED0(v73, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A8D50D0(v112, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v117, &qword_27DFAEB38, &unk_23AA11B60);
  v93 = v92;
  if (v80 >= v93)
  {
    v94 = v92;
  }

  else
  {
    v94 = v80;
  }

  type metadata accessor for CurvedElement();
  v95 = swift_allocObject();
  *(v95 + 16) = v79;
  *(v95 + 20) = v94;
  result = vzip2_s32(*v116.f32, *v115.f32);
  *(v95 + 24) = result;
  *v114 = v95;
  return result;
}

void sub_23A924514(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, char *a6@<X8>)
{
  v129 = a1;
  v7 = v6;
  v124 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0990, &qword_23AA12EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v125 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121.i64[0] = &v115 - v16;
  v17 = type metadata accessor for CapturedRoom.Object(0);
  v122 = *(v17 - 8);
  v18 = *(v122 + 64);
  MEMORY[0x28223BE20](v17);
  v126.i64[0] = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120.i64[0] = &v115 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v115 - v24;
  v26 = sub_23AA0BFB4();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v123 = v17;
  v34 = *(v17 + 32);
  v35 = v7[2];
  if (!*(v35 + 16))
  {
    goto LABEL_6;
  }

  v128 = &v115 - v32;
  v118 = v33;
  v119 = v31;
  v117 = *a5;

  v127.i64[0] = a2;
  v36 = sub_23A9EDD28(a2 + v34);
  if ((v37 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    v47 = v46;
    *v46 = sub_23AA0C074();
    v47[1] = v48;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v115.i64[0] = a4;
  v116 = a6;
  v38 = (*(v35 + 56) + 16 * v36);
  v40 = *v38;
  v39 = v38[1];

  *&v131 = v40;
  *(&v131 + 1) = v39;

  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v41 = v7[3];
  v42 = v7[4];

  MEMORY[0x23EE8FCA0](v41, v42);

  v43 = v128;
  sub_23AA0BF44();

  v44 = v130;
  v45 = sub_23A92D2EC(v43);
  if (v44)
  {
    (*(v118 + 8))(v43, v119);

    return;
  }

  v129 = v40;
  v130 = v39;
  v49 = v45;
  if (v117)
  {
    v131 = v117;
    CapturedRoom.ModelProvider.modelFileURL(for:)(v127.i64[0], v25);
    v50 = v118;
    v51 = v119;
    if ((*(v118 + 48))(v25, 1, v119) != 1)
    {

      v129 = *(v50 + 32);
      v130 = v50 + 32;
      v129(v29, v25, v51);
      v72 = v128;
      sub_23A925538(v49, v128, v127.i64[0], v29);
      [v49 save];

      (*(v50 + 8))(v29, v51);
      v129(v116, v72, v51);
      return;
    }

    sub_23A8D50D0(v25, &qword_27DFAF210, &qword_23AA12EE8);
  }

  v52 = sub_23AA0BF04();
  v54 = v53;
  v55 = [v49 rootNode];
  v56 = sub_23A92EC38(v129, v130, v52, v54, v55, v49);

  v57 = sub_23AA0D104();
  v58 = v127.i64[0];
  sub_23AA0C074();
  v59 = objc_allocWithZone(MEMORY[0x277D77878]);
  v60 = sub_23AA0D104();

  v61 = [v59 initWithString_];

  [v56 setCustomMetadata:v57 value:v61];
  v62 = sub_23AA0D104();
  LOBYTE(v131) = *v58;
  *&v131 = sub_23AA0D1A4();
  *(&v131 + 1) = v63;
  sub_23A92F104();
  sub_23AA0D6A4();

  v64 = objc_allocWithZone(MEMORY[0x277D77878]);
  v65 = sub_23AA0D104();

  v66 = [v64 initWithString_];

  [v56 setCustomMetadata:v62 value:v66];
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v67 = [v49 rootNode];
  LOBYTE(v65) = sub_23AA0D634();

  *&v117 = v56;
  if (v65)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
    v70 = v127.i64[0];
    v71 = v129;
  }

  else
  {
    v73 = [v56 path];
    v74 = [v73 stringValue];

    v71 = v129;
    if (v74)
    {
      v68 = sub_23AA0D134();
      v69 = v75;
    }

    else
    {
      v68 = 0;
      v69 = 0xE000000000000000;
    }

    v70 = v127.i64[0];
  }

  *&v131 = v68;
  *(&v131 + 1) = v69;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v71, v130);

  v76 = v131;
  v77 = objc_allocWithZone(MEMORY[0x277D77888]);
  v78 = sub_23AA0D104();
  v79 = [v77 initWithString_];

  if (!v79)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v99 = v76;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v79 = v117;
LABEL_24:

    (*(v118 + 8))(v128, v119);
    return;
  }

  v80 = [v49 newNodeAtPath:v79 type:*MEMORY[0x277D77968]];
  if (!v80)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v100 = v76;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_24;
  }

  v81 = v80;

  v82 = sub_23AA0D104();
  v83 = *MEMORY[0x277D77948];
  v127.i64[0] = v81;
  v84 = [v81 newPropertyWithName:v82 type:v83 role:0];

  if (v84)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_23AA11BB0;
    v86 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v87 = sub_23AA0D104();
    v88 = [v86 initWithString_];

    *(v85 + 32) = v88;
    sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
    v89 = sub_23AA0D2E4();

    v90 = v84;
    [v84 setTokenArray_];

    v92 = v125;
    if (*(v115.i64[0] + 16))
    {
      MEMORY[0x28223BE20](v91);
      *(&v115 - 2) = v70;
      v94 = sub_23A916B68(sub_23A92FF98, (&v115 - 2), v93);
      v95 = sub_23A8F2D70(v94, 0, v70[1], 0.0001);

      v96 = v126.i64[0];
      v97 = v116;
      v98 = v127.i64[0];
    }

    else
    {
      v101 = v70[1];
      v102 = 0;
      v96 = v126.i64[0];
      if (v70->n128_u8[0] == 12)
      {
        v115 = v70[1];
        v103 = v121.i64[0];
        sub_23A8D5194(v124, v121.i64[0], &qword_27DFB0990, &qword_23AA12EE0);
        v104 = (*(v122 + 48))(v103, 1, v123);
        v97 = v116;
        v98 = v127.i64[0];
        if (v104 == 1)
        {
          sub_23A8D50D0(v103, &qword_27DFB0990, &qword_23AA12EE0);
          v101 = v115;
          v102 = 0;
        }

        else
        {
          v105 = v103;
          v106 = v120.i64[0];
          sub_23A92FF30(v105, v120.i64[0], type metadata accessor for CapturedRoom.Object);
          v107 = v106[5].f32[1];
          v121 = v106[1];
          if (qword_27DFAE518 != -1)
          {
            swift_once();
          }

          v108 = off_27DFB17B0;
          sub_23A92FED0(v106, type metadata accessor for CapturedRoom.Object);
          swift_beginAccess();
          v101 = v115;
          v101.i32[1] = vmuls_lane_f32(v108[13], *v121.f32, 1);
          LODWORD(v102) = 0;
          *(&v102 + 1) = ((v107 - vmuls_lane_f32(0.5, *v121.f32, 1)) + (v101.f32[1] * 0.5)) - v70[5].n128_f32[1];
          v97 = v116;
        }
      }

      else
      {
        v97 = v116;
        v98 = v127.i64[0];
      }

      v95 = sub_23A8F29A8(v101, v102);
    }

    v109 = v70[2];
    v126 = v70[3];
    v127 = v109;
    v110 = v70[4];
    v120 = v70[5];
    v121 = v110;

    sub_23A92F158(v98, v95, v127, v126, v121, v120);

    v111 = v70->n128_u8[0];
    v112 = 0.0;
    if (v111 == 2 || v111 == 15)
    {
      goto LABEL_44;
    }

    if (v111 == 4)
    {
      sub_23A8D5194(v124, v92, &qword_27DFB0990, &qword_23AA12EE0);
      if ((*(v122 + 48))(v92, 1, v123) != 1)
      {
        sub_23A92FF30(v92, v96, type metadata accessor for CapturedRoom.Object);
        if (qword_27DFAE518 != -1)
        {
          swift_once();
        }

        v113 = off_27DFB17B0;
        swift_beginAccess();
        v114 = sub_23A8EE240(v96, v113[11]);
        sub_23A92FED0(v96, type metadata accessor for CapturedRoom.Object);
        v112 = 0.0;
        if (!v114)
        {
          v112 = 1.0;
        }

        v97 = v116;
        goto LABEL_44;
      }

      sub_23A8D50D0(v92, &qword_27DFB0990, &qword_23AA12EE0);
    }

    v112 = 1.0;
LABEL_44:
    sub_23A92F638(v98, v129, v130, v49, 0.00781250185, v112);

    [v49 save];

    (*(v118 + 32))(v97, v128, v119);
    return;
  }

  __break(1u);
}

double sub_23A9254A8@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v10[0]) = a1->i8[0];
  v6 = sub_23A9E7514();
  v7 = sub_23A901C30(v6);
  sub_23A902044(v7, v10, a1[1], a1[2], a1[3], a1[4], a1[5], *(a2 + 16), *(a2 + 32), *(a2 + 48), *(a2 + 64), *(a2 + 80));
  result = *v10;
  v9 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v11;
  return result;
}

void sub_23A925538(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v162.i64[0] = a3;
  v169 = a2;
  v167.n128_u64[0] = a1;
  v181 = *MEMORY[0x277D85DE8];
  v165 = sub_23AA0BEB4();
  v164 = *(v165 - 8);
  v5 = *(v164 + 8);
  MEMORY[0x28223BE20](v165);
  v7 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_23AA0BFB4();
  v8 = *(v170 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v170);
  v166.i64[0] = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v168 = &v151 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF208, &qword_23AA12ED8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v151 - v15;
  *&v171.f64[0] = sub_23AA0BEC4();
  v171.f64[1] = v17;
  v179 = 1667527541;
  v180 = 0xE400000000000000;
  v18 = sub_23AA0C104();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = sub_23A92F104();
  v20 = sub_23AA0D6D4();
  sub_23A8D50D0(v16, &qword_27DFAF208, &qword_23AA12ED8);

  if (v20)
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    (*(v8 + 16))(v21, a4, v170);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_35:
    v150 = *MEMORY[0x277D85DE8];
    return;
  }

  v22 = v166.i64[0];
  sub_23AA0BF64();
  v161 = a4;
  *&v171.f64[0] = sub_23AA0BF04();
  v171.f64[1] = v23;
  v24 = v164;
  v25 = v165;
  (*(v164 + 13))(v7, *MEMORY[0x277CC91D8], v165);
  v26 = v168;
  v160 = v19;
  sub_23AA0BFA4();
  (*(v24 + 1))(v7, v25);

  v29 = *(v8 + 8);
  v28 = v8 + 8;
  v27 = v29;
  v30 = v170;
  v29(v22, v170);
  v31 = objc_opt_self();
  v32 = [v31 defaultManager];
  sub_23AA0BF84();
  v33 = sub_23AA0D104();

  v34 = [v32 fileExistsAtPath_];

  if ((v34 & 1) == 0)
  {
    v35 = [v31 defaultManager];
    v36 = sub_23AA0BF14();
    v37 = sub_23AA0BF14();
    v171.f64[0] = 0.0;
    v38 = [v35 copyItemAtURL:v36 toURL:v37 error:&v171];

    if (!v38)
    {
      v72 = *&v171.f64[0];
      sub_23AA0BE74();

      swift_willThrow();
      v27(v26, v30);
      goto LABEL_35;
    }

    v39 = *&v171.f64[0];
  }

  sub_23AA0BF34();
  v40 = sub_23AA0BF04();
  v41 = v22;
  v42 = v40;
  v44 = v43;
  v27(v41, v30);
  v45 = sub_23AA0BF04();
  v47 = v46;
  v48 = v167.n128_u64[0];
  v49 = [v167.n128_u64[0] rootNode];
  v50 = v163;
  v51 = sub_23A92EC38(v42, v44, v45, v47, v49, v48);
  if (v50)
  {
    v27(v168, v30);

    goto LABEL_35;
  }

  v166.i64[0] = v42;
  v163 = 0;
  v169 = v44;
  v164 = v27;
  v165 = v28;
  v52 = v51;

  v53 = sub_23AA0D104();
  v54 = type metadata accessor for CapturedRoom.Object(0);
  v55 = v162.i64[0];
  v56 = v162.i64[0] + *(v54 + 32);
  sub_23AA0C074();
  v57 = objc_allocWithZone(MEMORY[0x277D77878]);
  v58 = sub_23AA0D104();

  v59 = [v57 initWithString_];

  [v52 setCustomMetadata:v53 value:v59];
  v60 = sub_23AA0D104();
  LOBYTE(v171.f64[0]) = *v55;
  *&v171.f64[0] = sub_23AA0D1A4();
  v171.f64[1] = v61;
  sub_23AA0D6A4();

  v62 = objc_allocWithZone(MEMORY[0x277D77878]);
  v63 = sub_23AA0D104();

  v64 = [v62 initWithString_];

  [v52 setCustomMetadata:v60 value:v64];
  v65 = sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v66 = [v167.n128_u64[0] rootNode];
  LOBYTE(v63) = sub_23AA0D634();

  v67 = v52;
  if (v63)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
    v70 = v169;
    v71 = v166.i64[0];
  }

  else
  {
    v73 = [v52 path];
    v74 = [v73 stringValue];

    v70 = v169;
    v71 = v166.i64[0];
    if (v74)
    {
      v68 = sub_23AA0D134();
      v69 = v75;
    }

    else
    {
      v68 = 0;
      v69 = 0xE000000000000000;
    }
  }

  *&v171.f64[0] = v68;
  *&v171.f64[1] = v69;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v71, v70);

  v76 = v171;
  v77 = objc_allocWithZone(MEMORY[0x277D77888]);
  v78 = sub_23AA0D104();
  v79 = [v77 initWithString_];

  if (!v79)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v108 = v76;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_22:

LABEL_34:
    v164(v168, v170);
    goto LABEL_35;
  }

  v166.i64[0] = v65;
  v80 = *MEMORY[0x277D77980];
  v81 = [v167.n128_u64[0] newNodeAtPath:v79 type:*MEMORY[0x277D77980]];
  if (!v81)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v109 = v76;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v67 = v79;
    goto LABEL_22;
  }

  v82 = v81;
  v155 = v80;

  v83 = sub_23AA0D104();
  v84 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v85 = sub_23AA0D104();
  v86 = [v84 initWithString_];

  v87 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  [v82 setMetadataWithKey:v83 value:v87];

  v160 = "modelPositionAndDimensionsCache";
  v88 = sub_23AA0D104();
  v89 = *MEMORY[0x277D778E0];
  v90 = [v82 newPropertyWithName:v88 type:*MEMORY[0x277D778E0] role:0];

  if (!v90)
  {
    __break(1u);
    goto LABEL_37;
  }

  v153 = v89;
  v91 = *(v162.i64[0] + 32);
  v92 = *(v162.i64[0] + 48);
  v93 = *(v162.i64[0] + 64);
  v94 = *(v162.i64[0] + 80);
  v171 = vcvtq_f64_f32(*v91.f32);
  v172 = vcvt_hight_f64_f32(v91);
  v173 = vcvtq_f64_f32(*v92.f32);
  v174 = vcvt_hight_f64_f32(v92);
  v175 = vcvtq_f64_f32(*v93.f32);
  v176 = vcvt_hight_f64_f32(v93);
  v177 = vcvtq_f64_f32(*v94.f32);
  v178 = vcvt_hight_f64_f32(v94);
  v159 = v90;
  [v90 setDouble4x4Value_];
  v95 = sub_23AA0D104();
  v154 = *MEMORY[0x277D77948];
  v96 = [v82 newPropertyWithName:v95 type:? role:?];

  v97 = v167.n128_u64[0];
  if (!v96)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v98 = swift_allocObject();
  v151 = xmmword_23AA11BB0;
  *(v98 + 16) = xmmword_23AA11BB0;
  v99 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v100 = sub_23AA0D104();
  v101 = [v99 initWithString_];

  *(v98 + 32) = v101;
  sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
  v156 = v98;
  v102 = sub_23AA0D2E4();
  v157 = v96;
  [v96 setTokenArray_];

  v103 = [v97 rootNode];
  LOBYTE(v101) = sub_23AA0D634();

  v158 = v67;
  if (v101)
  {
    v104 = 0;
    v105 = 0xE000000000000000;
    v106 = 0x277D77000;
    v107 = 0x277D77000;
  }

  else
  {
    v110 = [v82 path];
    v111 = [v110 stringValue];

    v106 = 0x277D77000uLL;
    v107 = 0x277D77000uLL;
    if (v111)
    {
      v104 = sub_23AA0D134();
      v105 = v112;
    }

    else
    {
      v104 = 0;
      v105 = 0xE000000000000000;
    }
  }

  *&v171.f64[0] = v104;
  *&v171.f64[1] = v105;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x6C65646F6DLL, 0xE500000000000000);

  v113 = v171;
  v114 = objc_allocWithZone(*(v107 + 2184));
  v115 = sub_23AA0D104();
  v116 = [v114 initWithString_];

  if (!v116)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v146 = v113;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v147 = v158;
    v148 = v159;
    v116 = v157;
LABEL_33:

    goto LABEL_34;
  }

  v117 = [v167.n128_u64[0] newNodeAtPath:v116 type:v155];
  if (!v117)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v149 = v113;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v147 = v82;
    v82 = v159;
    v148 = v157;
    goto LABEL_33;
  }

  v118 = v117;

  v119 = sub_23AA0D104();
  v120 = objc_allocWithZone(*(v106 + 2224));
  v121 = sub_23AA0D104();
  v122 = [v120 initWithString_];

  v123 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  [v118 setMetadataWithKey:v119 value:v123];

  v124 = sub_23AA0D104();
  v125 = [v118 newPropertyWithName:v124 type:v154 role:0];

  if (!v125)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v126 = swift_allocObject();
  *(v126 + 16) = v151;
  v127 = objc_allocWithZone(*(v106 + 2224));
  v128 = sub_23AA0D104();
  v129 = [v127 initWithString_];

  *(v126 + 32) = v129;
  v130 = sub_23AA0D2E4();
  [v125 setTokenArray_];

  v167 = sub_23A926908(v161);
  v166 = v131;
  v162 = *(v162.i64[0] + 16);
  v132 = sub_23AA0D104();
  v133 = [v118 newPropertyWithName:v132 type:v153 role:0];

  if (v133)
  {

    v134 = vdivq_f32(v162, v166);
    LODWORD(v135) = 0;
    HIDWORD(v135) = v134.i32[1];
    v136.i64[0] = 0;
    v136.i64[1] = v134.u32[2];
    v137 = vmulq_n_f32(v134.u32[0], 0.0 - v167.n128_f32[0]);
    v138 = vaddq_f32(vmlaq_f32(vmlaq_f32(v134.u32[0], 0, v135), 0, v136), 0);
    *&v139 = 0.0 * v134.f32[0];
    v140 = vaddq_f32(vmlaq_f32(vaddq_f32(v135, COERCE_UNSIGNED_INT(0.0 * v134.f32[0])), 0, v136), 0);
    v141 = vaddq_f32(vaddq_f32(v136, vmlaq_f32(v139, 0, v135)), 0);
    v171 = vcvtq_f64_f32(*v138.f32);
    v172 = vcvt_hight_f64_f32(v138);
    v142 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(v137, v135, 0.0 - v167.n128_f32[1]), v136, 0.0 - v167.n128_f32[2]), xmmword_23AA11AE0);
    v173 = vcvtq_f64_f32(*v140.f32);
    v174 = vcvt_hight_f64_f32(v140);
    v175 = vcvtq_f64_f32(*v141.f32);
    v176 = vcvt_hight_f64_f32(v141);
    v177 = vcvtq_f64_f32(*v142.f32);
    v178 = vcvt_hight_f64_f32(v142);
    [v133 setDouble4x4Value_];
    *&v171.f64[0] = 12078;
    v171.f64[1] = -1.15172193e164;
    v143 = v168;
    v144 = sub_23AA0BF04();
    MEMORY[0x23EE8FCA0](v144);

    v145 = sub_23AA0D104();

    [v118 addReferenceWithPath:v145 nodePath:0];

    v164(v143, v170);
    goto LABEL_35;
  }

LABEL_39:
  __break(1u);
}

__n128 sub_23A926908(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_23A9EE2D0(a1);
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v8 = objc_allocWithZone(MEMORY[0x277CD7AD0]);
    v9 = sub_23AA0BF14();
    v10 = [v8 initWithURL_];

    [v10 boundingBox];
    v25 = v11;
    [v10 boundingBox];
    v13 = vaddq_f32(v25, v12);
    v14.n128_u64[0] = vmul_f32(*v13.f32, 0x3F0000003F000000);
    v14.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, v13, 2));
    v24 = v14;
    [v10 boundingBox];
    v22 = v15;
    [v10 boundingBox];
    v17 = vsubq_f32(v22, v16);
    v17.i32[3] = 0;
    v23 = v17;
    swift_beginAccess();
    v18 = *(v2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    sub_23A9DAD68(a1, isUniquelyReferenced_nonNull_native, v24, v23);
    *(v2 + 40) = v26;
    swift_endAccess();

    return v24;
  }

  v7 = (*(v4 + 56) + 32 * v5);
  v21 = v7[1];
  v24 = *v7;

  return v24;
}

void sub_23A926A94(void *a1, void *a2, void *a3, uint64_t a4)
{
  v311 = a4;
  v316 = a1;
  v6 = type metadata accessor for CapturedRoom.Object(0);
  v303 = *(v6 - 8);
  v7 = *(v303 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v300 = &v297 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v299 = &v297 - v10;
  MEMORY[0x28223BE20](v11);
  v305 = &v297 - v12;
  MEMORY[0x28223BE20](v13);
  v304 = &v297 - v14;
  v15 = type metadata accessor for CapturedRoom.Surface(0);
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15 - 8);
  v19 = (&v297 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v318 = (&v297 - v21);
  MEMORY[0x28223BE20](v22);
  v321 = (&v297 - v23);
  MEMORY[0x28223BE20](v24);
  v324 = (&v297 - v25);
  MEMORY[0x28223BE20](v26);
  v320 = (&v297 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1F8, &qword_23AA12EC8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v313 = &v297 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v312 = (&v297 - v32);
  v328 = sub_23AA0BFB4();
  v33 = *(v328 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v328);
  v301 = &v297 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v297 - v37;
  MEMORY[0x28223BE20](v39);
  v307 = &v297 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v297 - v42;
  MEMORY[0x28223BE20](v44);
  v319 = &v297 - v45;
  MEMORY[0x28223BE20](v46);
  v322 = (&v297 - v47);
  MEMORY[0x28223BE20](v48);
  v323 = (&v297 - v49);
  MEMORY[0x28223BE20](v50);
  v315 = &v297 - v51;
  MEMORY[0x28223BE20](v52);
  v329 = &v297 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v297 - v55;
  v57 = sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v317 = a3;
  v58 = [a3 rootNode];
  v314 = v57;
  LOBYTE(v57) = sub_23AA0D634();

  v302 = a2;
  v306 = v19;
  if ((v57 & 1) != 0 || (v59 = [a2 path], v60 = objc_msgSend(v59, sel_stringValue), v59, !v60))
  {
    v61 = 0;
    v63 = 0xE000000000000000;
  }

  else
  {
    v61 = sub_23AA0D134();
    v63 = v62;
  }

  v332 = v61;
  v333 = v63;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x7072675F68637241, 0xE800000000000000);

  v65 = v332;
  v64 = v333;
  v66 = objc_allocWithZone(MEMORY[0x277D77888]);
  v67 = sub_23AA0D104();
  v68 = [v66 initWithString_];

  if (!v68)
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v152 = v65;
    v152[1] = v64;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v308 = *MEMORY[0x277D77980];
  v69 = [v317 newNodeAtPath:v68 type:?];
  if (!v69)
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v153 = v65;
    v153[1] = v64;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v70 = v69;
  v297 = v38;

  v71 = sub_23AA0D104();
  v72 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v73 = v70;
  v74 = sub_23AA0D104();
  v75 = [v72 initWithString_];

  v76 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  v310 = v73;
  [(float32x4_t *)v73 setMetadataWithKey:v71 value:v76];

  sub_23AA0BF44();
  v77 = v316[3];
  v78 = v316[4];
  __swift_project_boxed_opaque_existential_1(v316, v77);
  v79 = (*(v78 + 24))(v77, v78);
  v80 = (v33 + 8);
  v333 = 0;
  v334 = 0;
  v332 = v79;
  v309 = v56;
  v326 = (v33 + 8);
  v298 = v43;
  while (1)
  {
    v81 = v313;
    sub_23A9166E4(v313);
    v82 = v312;
    sub_23A930208(v81, v312, &qword_27DFAF1F8, &qword_23AA12EC8);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF200, &qword_23AA12ED0);
    if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
    {

      v156 = [v317 rootNode];
      v157 = v302;
      v158 = sub_23AA0D634();

      if (v158)
      {
        v159 = 0;
        v160 = 0xE000000000000000;
      }

      else
      {
        v165 = [v157 path];
        v166 = [v165 stringValue];

        if (v166)
        {
          v159 = sub_23AA0D134();
          v160 = v167;
        }

        else
        {
          v159 = 0;
          v160 = 0xE000000000000000;
        }
      }

      v332 = v159;
      v333 = v160;

      MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

      MEMORY[0x23EE8FCA0](0x72675F726F6F6C46, 0xE900000000000070);

      v169 = v332;
      v168 = v333;
      v170 = objc_allocWithZone(MEMORY[0x277D77888]);
      v171 = sub_23AA0D104();
      v172 = [v170 initWithString_];

      if (v172)
      {
        v173 = [v317 newNodeAtPath:v172 type:v308];
        if (v173)
        {
          v121 = v173;

          v174 = sub_23AA0D104();
          v175 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v176 = sub_23AA0D104();
          v177 = [v175 initWithString_];

          v178 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
          [(float32x4_t *)v121 setMetadataWithKey:v174 value:v178];

          sub_23AA0BF44();
          v179 = v316[3];
          v180 = v316[4];
          __swift_project_boxed_opaque_existential_1(v316, v179);
          v181 = (*(v180 + 64))(v179, v180);
          v182 = v181;
          if (!*(v181 + 16))
          {
LABEL_69:

            v192 = [v317 rootNode];
            v120 = v302;
            v193 = sub_23AA0D634();

            if ((v193 & 1) == 0)
            {
              goto LABEL_74;
            }

            v194 = 0;
            v195 = 0xE000000000000000;
            v111 = v303;
            goto LABEL_80;
          }

          v183 = *(v181 + 16);
          v184 = 0;
          v185 = v307;
          while (v184 < *(v182 + 16))
          {
            v187 = v121;
            v188 = v306;
            sub_23A930548(v182 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v16[9] * v184, v306, type metadata accessor for CapturedRoom.Surface);
            v189 = v325;
            sub_23A929310(v188, 0, v185);
            v325 = v189;
            if (v189)
            {
              sub_23A92FED0(v188, type metadata accessor for CapturedRoom.Surface);

              v200 = *v80;
              v201 = v328;
              (*v80)(v298, v328);
              v200(v309, v201);
              return;
            }

            sub_23A92FED0(v188, type metadata accessor for CapturedRoom.Surface);
            sub_23A916D14();
            if (v190)
            {
              v186 = sub_23AA0D104();
            }

            else
            {
              v186 = 0;
            }

            v121 = v187;
            ++v184;
            [(float32x4_t *)v187 addReferenceWithPath:v186 nodePath:0];

            v185 = v307;
            (*v80)(v307, v328);
            if (v183 == v184)
            {
              goto LABEL_69;
            }
          }

          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          return;
        }

        type metadata accessor for USDModel.Error();
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
        swift_allocError();
        *v196 = v169;
        v196[1] = v168;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        type metadata accessor for USDModel.Error();
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
        swift_allocError();
        *v191 = v169;
        v191[1] = v168;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v172 = v310;
      }

      (*v80)(v309, v328);
      return;
    }

    v84 = *v82;
    sub_23A92FF30(v82 + *(v83 + 48), v320, type metadata accessor for CapturedRoom.Surface);
    v330 = 0x5F6C6C6157;
    v331 = 0xE500000000000000;
    v335 = v84;
    v85 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v85);

    MEMORY[0x23EE8FCA0](1886545759, 0xE400000000000000);
    v87 = v330;
    v86 = v331;
    v88 = [v317 rootNode];
    v89 = v310;
    v90 = sub_23AA0D634();

    if (v90)
    {
      v91 = 0;
      v92 = 0xE000000000000000;
      v93 = v309;
    }

    else
    {
      v94 = [(float32x4_t *)v89 path];
      v95 = [v94 stringValue];

      v93 = v309;
      if (v95)
      {
        v91 = sub_23AA0D134();
        v92 = v96;
      }

      else
      {
        v91 = 0;
        v92 = 0xE000000000000000;
      }
    }

    v330 = v91;
    v331 = v92;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v87, v86);

    v98 = v330;
    v97 = v331;
    v99 = objc_allocWithZone(MEMORY[0x277D77888]);
    v100 = sub_23AA0D104();
    v101 = [v99 initWithString_];

    if (!v101)
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v161 = v98;
      v161[1] = v97;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v101 = v310;
      goto LABEL_52;
    }

    v102 = [v317 newNodeAtPath:v101 type:v308];
    if (!v102)
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v162 = v98;
      v162[1] = v97;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_52:
      (*v326)(v93, v328);
LABEL_54:
      sub_23A92FED0(v320, type metadata accessor for CapturedRoom.Surface);
      return;
    }

    v103 = v102;

    v104 = sub_23AA0D104();
    v105 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v106 = sub_23AA0D104();
    v107 = [v105 initWithString_];

    v108 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    [v103 setMetadataWithKey:v104 value:v108];

    v330 = 1819042135;
    v331 = 0xE400000000000000;
    v335 = v84;
    v109 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v109);

    sub_23AA0BF44();

    v110 = v325;
    sub_23A929310(v320, 1, v315);
    if (v110)
    {

      v163 = *v326;
      v164 = v328;
      (*v326)(v329, v328);

      v163(v93, v164);
      goto LABEL_54;
    }

    sub_23A916D14();
    v111 = v16;
    if (v112)
    {
      v113 = sub_23AA0D104();
    }

    else
    {
      v113 = 0;
    }

    [v103 addReferenceWithPath:v113 nodePath:0];

    v114 = v316[3];
    v115 = v316[4];
    __swift_project_boxed_opaque_existential_1(v316, v114);
    v116 = (*(v115 + 32))(v114, v115);
    MEMORY[0x28223BE20](v116);
    *(&v297 - 2) = v320;
    sub_23A9BD114(sub_23A9305E0, (&v297 - 4), v117);
    v119 = v118;
    v120 = 0;
    v121 = *(v118 + 16);
    v327 = v103;
    if (v121)
    {
      break;
    }

LABEL_27:

    v127 = v316[3];
    v128 = v316[4];
    __swift_project_boxed_opaque_existential_1(v316, v127);
    v129 = (*(v128 + 40))(v127, v128);
    MEMORY[0x28223BE20](v129);
    *(&v297 - 2) = v320;
    sub_23A9BD114(sub_23A9305E0, (&v297 - 4), v130);
    v132 = v131;
    v325 = *(v131 + 16);
    if (v325)
    {
      v133 = 0;
      v80 = v326;
      v121 = v322;
      v16 = v111;
      while (v133 < *(v132 + 16))
      {
        v111 = v16;
        v135 = v132 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v16[9] * v133;
        v136 = v321;
        sub_23A930548(v135, v321, type metadata accessor for CapturedRoom.Surface);
        sub_23A929310(v136, 1, v121);
        sub_23A92FED0(v136, type metadata accessor for CapturedRoom.Surface);
        sub_23A916D14();
        if (v137)
        {
          v134 = sub_23AA0D104();
          v80 = v326;
        }

        else
        {
          v134 = 0;
        }

        v16 = v111;
        ++v133;
        [v327 addReferenceWithPath:v134 nodePath:0];

        v121 = v322;
        (*v80)(v322, v328);
        if (v325 == v133)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v16 = v111;
LABEL_35:

    v138 = v316[3];
    v139 = v316[4];
    __swift_project_boxed_opaque_existential_1(v316, v138);
    v140 = (*(v139 + 48))(v138, v139);
    MEMORY[0x28223BE20](v140);
    *(&v297 - 2) = v320;
    sub_23A9BD114(sub_23A9305E0, (&v297 - 4), v141);
    v143 = v142;
    v325 = 0;
    v121 = *(v142 + 16);
    if (v121)
    {
      v144 = 0;
      v80 = v326;
      v145 = v319;
      while (v144 < *(v143 + 16))
      {
        v111 = v80;
        v147 = v318;
        sub_23A930548(v143 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v16[9] * v144, v318, type metadata accessor for CapturedRoom.Surface);
        v148 = v325;
        sub_23A929310(v147, 1, v145);
        if (v148)
        {
          sub_23A92FED0(v147, type metadata accessor for CapturedRoom.Surface);

          v154 = *v111;
          v155 = v328;
          (*v111)(v315, v328);
          v154(v329, v155);

          v154(v309, v155);
          sub_23A92FED0(v320, type metadata accessor for CapturedRoom.Surface);
          return;
        }

        sub_23A92FED0(v147, type metadata accessor for CapturedRoom.Surface);
        sub_23A916D14();
        v325 = 0;
        if (v149)
        {
          v146 = sub_23AA0D104();
          v80 = v326;
        }

        else
        {
          v146 = 0;
          v80 = v111;
        }

        ++v144;
        [v327 addReferenceWithPath:v146 nodePath:0];

        v145 = v319;
        (*v80)(v319, v328);
        if (v121 == v144)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_78;
    }

    v80 = v326;
LABEL_44:

    v150 = *v80;
    v151 = v328;
    (*v80)(v315, v328);
    v150(v329, v151);
    sub_23A92FED0(v320, type metadata accessor for CapturedRoom.Surface);
  }

  v122 = 0;
  v80 = v326;
  v123 = v323;
  while (v122 < *(v119 + 16))
  {
    v125 = v324;
    sub_23A930548(v119 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + v111[9] * v122, v324, type metadata accessor for CapturedRoom.Surface);
    sub_23A929310(v125, 1, v123);
    sub_23A92FED0(v125, type metadata accessor for CapturedRoom.Surface);
    sub_23A916D14();
    if (v126)
    {
      v124 = sub_23AA0D104();
      v80 = v326;
    }

    else
    {
      v124 = 0;
    }

    ++v122;
    [v327 addReferenceWithPath:v124 nodePath:0];

    v123 = v323;
    (*v80)(v323, v328);
    if (v121 == v122)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_74:
  v197 = [v120 path];
  v198 = [v197 stringValue];

  v111 = v303;
  if (v198)
  {
    v194 = sub_23AA0D134();
    v195 = v199;

    goto LABEL_80;
  }

LABEL_79:
  v194 = 0;
  v195 = 0xE000000000000000;
LABEL_80:
  v332 = v194;
  v333 = v195;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x675F7463656A624FLL, 0xEA00000000007072);

  v203 = v332;
  v202 = v333;
  v204 = objc_allocWithZone(MEMORY[0x277D77888]);
  v205 = sub_23AA0D104();
  v206 = [v204 initWithString_];

  if (v206)
  {
    v207 = [v317 newNodeAtPath:v206 type:v308];
    if (v207)
    {
      v208 = v207;
      v318 = v121;

      v209 = sub_23AA0D104();
      v210 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v211 = sub_23AA0D104();
      v212 = [v210 initWithString_];

      v213 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
      [(float32x4_t *)v208 setMetadataWithKey:v209 value:v213];

      v214 = v316[3];
      v215 = v316[4];
      __swift_project_boxed_opaque_existential_1(v316, v214);
      v216 = (*(v215 + 56))(v214, v215);
      v217 = *(v216 + 16);
      v323 = v208;
      if (v217)
      {
        v332 = MEMORY[0x277D84F90];
        sub_23A97609C(0, v217, 0);
        v218 = v332;
        v219 = v216 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v220 = v111[9];
        do
        {
          v221 = v304;
          sub_23A930548(v219, v304, type metadata accessor for CapturedRoom.Object);
          v222 = *v221;
          sub_23A92FED0(v221, type metadata accessor for CapturedRoom.Object);
          v332 = v218;
          v224 = *(v218 + 16);
          v223 = *(v218 + 24);
          if (v224 >= v223 >> 1)
          {
            sub_23A97609C((v223 > 1), v224 + 1, 1);
            v218 = v332;
          }

          *(v218 + 16) = v224 + 1;
          *(v218 + v224 + 32) = v222;
          v219 += v220;
          --v217;
        }

        while (v217);

        v80 = v326;
        v208 = v323;
      }

      else
      {

        v218 = MEMORY[0x277D84F90];
      }

      v230 = sub_23A9F506C(v218);

      v231 = 0;
      v232 = (v230 + 56);
      v233 = 1 << *(v230 + 32);
      v234 = -1;
      if (v233 < 64)
      {
        v234 = ~(-1 << v233);
      }

      v235 = v234 & *(v230 + 56);
      v236 = (v233 + 63) >> 6;
      v237 = v309;
      v319 = v236;
      v320 = (v230 + 56);
      v321 = v230;
      while (v235)
      {
LABEL_100:
        v239 = __clz(__rbit64(v235));
        v235 &= v235 - 1;
        LODWORD(v327) = *(*(v230 + 48) + (v239 | (v231 << 6)));
        if (v327 != 15)
        {
          v322 = v235;
          v240 = v316[3];
          v241 = v316[4];
          __swift_project_boxed_opaque_existential_1(v316, v240);
          v242 = (*(v241 + 56))(v240, v241);
          v324 = *(v242 + 16);
          if (v324)
          {
            v243 = 0;
            v329 = MEMORY[0x277D84F90];
            v237 = v309;
            v244 = v303;
            v245 = v299;
            while (v243 < *(v242 + 16))
            {
              v246 = (*(v244 + 80) + 32) & ~*(v244 + 80);
              v247 = *(v244 + 72);
              v248 = v305;
              sub_23A930548(v242 + v246 + v247 * v243, v305, type metadata accessor for CapturedRoom.Object);
              if (*v248 == v327)
              {
                sub_23A92FF30(v248, v245, type metadata accessor for CapturedRoom.Object);
                v249 = v329;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v251 = v249;
                v332 = v249;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_23A9760CC(0, *(v249 + 2) + 1, 1);
                  v245 = v299;
                  v251 = v332;
                }

                v253 = *(v251 + 2);
                v252 = *(v251 + 3);
                if (v253 >= v252 >> 1)
                {
                  sub_23A9760CC(v252 > 1, v253 + 1, 1);
                  v245 = v299;
                  v251 = v332;
                }

                *(v251 + 2) = v253 + 1;
                v329 = v251;
                sub_23A92FF30(v245, &v251[v246 + v253 * v247], type metadata accessor for CapturedRoom.Object);
                v237 = v309;
                v244 = v303;
              }

              else
              {
                sub_23A92FED0(v248, type metadata accessor for CapturedRoom.Object);
              }

              if (v324 == ++v243)
              {
                goto LABEL_113;
              }
            }

            goto LABEL_139;
          }

          v329 = MEMORY[0x277D84F90];
          v237 = v309;
          v244 = v303;
LABEL_113:

          if (*(v329 + 2))
          {
            LOBYTE(v332) = v327;
            v332 = sub_23AA0D1A4();
            v333 = v254;
            sub_23A92F104();
            v255 = sub_23AA0D6A4();
            v257 = v256;

            v332 = v255;
            v333 = v257;

            MEMORY[0x23EE8FCA0](1886545759, 0xE400000000000000);
            v258 = v332;
            v259 = v333;
            sub_23AA0BF44();

            v260 = [v317 rootNode];
            v208 = v323;
            v261 = sub_23AA0D634();

            if ((v261 & 1) != 0 || (v262 = -[float32x4_t path](v208, sel_path), v263 = [v262 stringValue], v262, !v263))
            {
              v264 = 0;
              v266 = 0xE000000000000000;
            }

            else
            {
              v264 = sub_23AA0D134();
              v266 = v265;
            }

            v332 = v264;
            v333 = v266;

            MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

            MEMORY[0x23EE8FCA0](v258, v259);

            v267 = v332;
            v268 = v333;
            v269 = objc_allocWithZone(MEMORY[0x277D77888]);
            v270 = sub_23AA0D104();
            v271 = [v269 initWithString_];

            if (!v271)
            {

              type metadata accessor for USDModel.Error();
              sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
              swift_allocError();
              *v292 = v267;
              v292[1] = v268;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v293 = v318;
LABEL_137:

              v295 = *v326;
              v296 = v328;
              (*v326)(v297, v328);
              v295(v298, v296);
              v295(v309, v296);
              return;
            }

            v272 = [v317 newNodeAtPath:v271 type:v308];
            if (!v272)
            {

              type metadata accessor for USDModel.Error();
              sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
              swift_allocError();
              *v294 = v267;
              v294[1] = v268;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              v293 = v208;
              v208 = v271;
              goto LABEL_137;
            }

            v273 = v272;

            v274 = sub_23AA0D104();
            v275 = objc_allocWithZone(MEMORY[0x277D778B0]);
            v276 = sub_23AA0D104();
            v277 = [v275 initWithString_];

            v278 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
            [v273 setMetadataWithKey:v274 value:v278];

            v279 = v329;
            v280 = *(v329 + 2);
            if (v280)
            {
              v281 = 0;
              v282 = v301;
              while (v281 < *(v279 + 2))
              {
                v285 = v300;
                sub_23A930548(&v279[((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v281], v300, type metadata accessor for CapturedRoom.Object);
                v286 = v325;
                sub_23A92AB00(v285, v282);
                v325 = v286;
                if (v286)
                {
                  sub_23A92FED0(v285, type metadata accessor for CapturedRoom.Object);

                  v290 = *v326;
                  v291 = v328;
                  (*v326)(v297, v328);
                  v290(v298, v291);
                  v290(v309, v291);
                  return;
                }

                sub_23A92FED0(v285, type metadata accessor for CapturedRoom.Object);
                sub_23A916D14();
                if (v287)
                {
                  v283 = sub_23AA0D104();
                }

                else
                {
                  v283 = 0;
                }

                ++v281;
                [v273 addReferenceWithPath:v283 nodePath:0];

                v284 = *v326;
                v282 = v301;
                (*v326)(v301, v328);
                v279 = v329;
                if (v280 == v281)
                {
                  v208 = v323;
                  v284(v297, v328);
                  goto LABEL_131;
                }
              }

              goto LABEL_141;
            }

            (*v326)(v297, v328);
LABEL_131:

            v237 = v309;
            v80 = v326;
          }

          else
          {

            v80 = v326;
            v208 = v323;
          }

          v236 = v319;
          v232 = v320;
          v230 = v321;
          v235 = v322;
        }
      }

      while (1)
      {
        v238 = v231 + 1;
        if (__OFADD__(v231, 1))
        {
          goto LABEL_140;
        }

        if (v238 >= v236)
        {

          v288 = *v80;
          v289 = v328;
          (*v80)(v298, v328);
          v288(v237, v289);

          return;
        }

        v235 = v232->u64[v238];
        ++v231;
        if (v235)
        {
          v231 = v238;
          goto LABEL_100;
        }
      }
    }

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v227 = v203;
    v227[1] = v202;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v226 = v121;
    v121 = v206;
  }

  else
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v225 = v203;
    v225[1] = v202;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v226 = v310;
  }

  v228 = *v80;
  v229 = v328;
  (*v80)(v298, v328);
  v228(v309, v229);
}

void sub_23A929310(float32x4_t *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v196 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v197 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v186 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v200 = &v186 - v17;
  v199 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v198 = *(v199 - 8);
  v18 = *(v198 + 64);
  MEMORY[0x28223BE20](v199);
  v201 = &v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CapturedRoom.Surface(0);
  v21 = *(v20 + 44);
  v22 = *(v3 + 16);
  if (!*(v22 + 16))
  {
    goto LABEL_6;
  }

  v23 = v20;

  v24 = sub_23A9EDD28(a1 + v21);
  if ((v25 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    v31 = v30;
    *v30 = sub_23AA0C074();
    v31[1] = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v194 = a3;
  v26 = (*(v22 + 56) + 16 * v24);
  v27 = *v26;
  v195 = v26[1];

  v29 = a1->i8[0] - 2;
  v191 = v14;
  if (v29 >= 4u)
  {
    LODWORD(v28) = 973279855;
  }

  else
  {
    LODWORD(v28) = dword_23AA12E80[v29];
  }

  v192 = v28;
  *&v202.f64[0] = v27;
  v193 = v27;
  v33 = v195;
  *&v202.f64[1] = v195;

  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v34 = *(v6 + 24);
  v35 = *(v6 + 32);

  MEMORY[0x23EE8FCA0](v34, v35);

  v36 = v194;
  sub_23AA0BF44();

  v37 = sub_23A92D2EC(v36);
  if (v5)
  {
    v38 = sub_23AA0BFB4();
    (*(*(v38 - 8) + 8))(v36, v38);

    return;
  }

  v39 = v37;
  v190 = a1;
  v40 = sub_23AA0BF04();
  v42 = v41;
  v43 = [v39 rootNode];
  v44 = sub_23A92EC38(v193, v33, v40, v42, v43, v39);
  v187 = 0;
  v189 = v39;
  v45 = v44;

  v46 = sub_23AA0D104();
  v47 = v190;
  sub_23AA0C074();
  v48 = objc_allocWithZone(MEMORY[0x277D77878]);
  v49 = sub_23AA0D104();

  v50 = [v48 initWithString_];

  [v45 setCustomMetadata:v46 value:v50];
  v51 = sub_23AA0D104();
  LOBYTE(v202.f64[0]) = v47->n128_u8[0];
  *&v202.f64[0] = sub_23AA0D1A4();
  v202.f64[1] = v52;
  sub_23A92F104();
  sub_23AA0D6A4();

  v53 = objc_allocWithZone(MEMORY[0x277D77878]);
  v54 = sub_23AA0D104();

  v55 = [v53 initWithString_];

  [v45 setCustomMetadata:v51 value:v55];
  v56 = v47->n128_u8[0];
  v57 = COERCE_FLOAT(v47[1].n128_u64[1]);
  v186 = v47[1];
  v58 = vmuls_lane_f32(0.5, v186, 2);
  if (v57 <= 0.0)
  {
    v59 = *&v192;
  }

  else
  {
    v59 = v58;
  }

  if (v57 <= 0.0)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = v58;
  }

  v61 = v200;
  sub_23A8D5194(v47 + *(v23 + 52), v200, &qword_27DFAEB38, &unk_23AA11B60);
  v62 = (*(v198 + 48))(v61, 1, v199);
  v188 = v45;
  if (v62 != 1)
  {
    sub_23A92FF30(v61, v201, type metadata accessor for CapturedRoom.Surface.Curve);
    sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
    v74 = [v189 rootNode];
    v75 = sub_23AA0D634();

    if (v75)
    {
      v76 = 0;
      v77 = 0xE000000000000000;
      v78 = v195;
      v79 = v193;
      v80 = &off_278B65000;
    }

    else
    {
      v88 = [v45 path];
      v89 = [v88 stringValue];

      v78 = v195;
      v80 = &off_278B65000;
      if (v89)
      {
        v76 = sub_23AA0D134();
        v77 = v90;
      }

      else
      {
        v76 = 0;
        v77 = 0xE000000000000000;
      }

      v79 = v193;
    }

    *&v202.f64[0] = v76;
    *&v202.f64[1] = v77;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v79, v78);

    v118 = v202;
    v119 = objc_allocWithZone(MEMORY[0x277D77888]);
    v120 = sub_23AA0D104();
    v121 = [v119 v80[469]];

    if (v121)
    {
      v122 = v189;
      v123 = [v189 newNodeAtPath:v121 type:*MEMORY[0x277D77968]];
      if (v123)
      {
        v124 = v123;

        v125 = v124;
        v126 = sub_23AA0D104();
        v127 = *MEMORY[0x277D77948];
        v200 = v125;
        v128 = [v125 newPropertyWithName:v126 type:v127 role:0];

        if (v128)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          v129 = swift_allocObject();
          *(v129 + 16) = xmmword_23AA11BB0;
          v130 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v131 = sub_23AA0D104();
          v132 = [v130 v80[469]];

          *(v129 + 32) = v132;
          sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
          v133 = sub_23AA0D2E4();

          [v128 setTokenArray_];

          v134 = v186.u32[1];
          v135 = type metadata accessor for ScanItemStrut();
          v136 = *(*(v135 - 8) + 56);
          v137 = v191;
          v136(v191, 1, 1, v135);
          v138 = v197;
          v139 = v136(v197, 1, 1, v135);
          v139.n128_u32[0] = v134;
          v140 = v201;
          v141.n128_f32[0] = v60;
          v142.n128_f32[0] = v59;
          v143 = sub_23A8FA5A0(v201, MEMORY[0x277D84F90], v139, v141, v142, v137, v138, 0x3C8EFA35uLL, 1);
          sub_23A8D50D0(v138, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v137, &unk_27DFAF020, &unk_23AA12300);
          v113 = v190;
          v114 = v200;
          sub_23A92F158(v200, v143, v190[2], v190[3], v190[4], v190[5]);

          sub_23A92FED0(v140, type metadata accessor for CapturedRoom.Surface.Curve);
          goto LABEL_57;
        }

        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v145 = v118;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v144 = v118;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v121 = v189;
      v122 = v188;
    }

    sub_23A92FED0(v201, type metadata accessor for CapturedRoom.Surface.Curve);
    goto LABEL_65;
  }

  sub_23A8D50D0(v61, &qword_27DFAEB38, &unk_23AA11B60);
  v63 = *(v47->n128_i64 + *(v23 + 60));
  v64 = *(v63 + 16);
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  if (v64 && v56 == 5)
  {
    v65 = [v189 rootNode];
    v66 = v188;
    v67 = sub_23AA0D634();

    v68 = v195;
    if ((v67 & 1) != 0 || (v69 = [v66 path], v70 = objc_msgSend(v69, sel_stringValue), v69, !v70))
    {
      v71 = 0;
      v73 = 0xE000000000000000;
    }

    else
    {
      v71 = sub_23AA0D134();
      v73 = v72;
    }

    v91 = v193;
    *&v202.f64[0] = v71;
    *&v202.f64[1] = v73;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v91, v68);

    v92 = v202;
    v93 = objc_allocWithZone(MEMORY[0x277D77888]);
    v94 = sub_23AA0D104();
    v95 = [v93 initWithString_];

    if (v95)
    {
      v96 = v189;
      v97 = [v189 newNodeAtPath:v95 type:*MEMORY[0x277D77968]];
      if (v97)
      {
        v98 = v97;

        v99 = v98;
        v100 = sub_23AA0D104();
        v101 = *MEMORY[0x277D77948];
        v200 = v99;
        v102 = [v99 newPropertyWithName:v100 type:v101 role:0];

        if (v102)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_23AA11BB0;
          v104 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v105 = sub_23AA0D104();
          v106 = [v104 initWithString_];

          *(v103 + 32) = v106;
          sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
          v107 = sub_23AA0D2E4();

          [v102 setTokenArray_];

          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          v108 = type metadata accessor for ScanItemStrut();
          v109 = *(*(v108 - 8) + 56);
          v110 = v191;
          v109(v191, 1, 1, v108);
          v111 = v197;
          v109(v197, 1, 1, v108);
          v112 = sub_23A8F0290(v63, MEMORY[0x277D84F90], 0, v196 & 1, v110, v111, v186, v60, v59, 0.0);
          sub_23A8D50D0(v111, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v110, &unk_27DFAF020, &unk_23AA12300);
          v113 = v190;
          v114 = v200;
          sub_23A92F158(v200, v112, v190[2], v190[3], v190[4], v190[5]);

          goto LABEL_57;
        }

        goto LABEL_68;
      }

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v147 = v92;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v146 = v92;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v96 = v189;
      v95 = v188;
    }

LABEL_65:
    v184 = sub_23AA0BFB4();
    (*(*(v184 - 8) + 8))(v194, v184);
    return;
  }

  v81 = [v189 rootNode];
  v82 = v188;
  v83 = sub_23AA0D634();

  v84 = v195;
  if (v83)
  {
    v85 = 0;
    v86 = 0xE000000000000000;
    v87 = &off_278B65000;
  }

  else
  {
    v115 = [v82 path];
    v116 = [v115 stringValue];

    v87 = &off_278B65000;
    if (v116)
    {
      v85 = sub_23AA0D134();
      v86 = v117;
    }

    else
    {
      v85 = 0;
      v86 = 0xE000000000000000;
    }
  }

  *&v202.f64[0] = v85;
  *&v202.f64[1] = v86;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v193, v84);

  v148 = v202;
  v149 = objc_allocWithZone(MEMORY[0x277D77888]);
  v150 = sub_23AA0D104();
  v151 = [v149 v87[469]];

  if (!v151)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v182 = v148;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v151 = v188;
LABEL_64:

    goto LABEL_65;
  }

  v152 = [v189 newNodeAtPath:v151 type:*MEMORY[0x277D77958]];
  if (!v152)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v183 = v148;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_64;
  }

  v153 = v152;

  v154 = v153;
  v155 = sub_23AA0D104();
  v156 = [v154 newPropertyWithName:v155 type:*MEMORY[0x277D77948] role:0];

  if (!v156)
  {
    goto LABEL_67;
  }

  v201 = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_23AA11BB0;
  v158 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v159 = sub_23AA0D104();
  v160 = [v158 v87[469]];

  *(v157 + 32) = v160;
  v210 = v157;
  v161 = sub_23AA0D104();
  v162 = [v154 newPropertyWithName:v161 type:*MEMORY[0x277D778D0] role:0];

  if (!v162)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  [v162 setDoubleValue_];
  v163 = sub_23AA0D104();
  v164 = v154;
  v165 = [v154 byte_278B653D9];

  if (!v165)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  v166 = v186;
  v166.i32[3] = 0;
  v167 = vdupq_lane_s32(*&v192, 0);
  v167.i32[3] = 0;
  v168 = vmaxnmq_f32(v166, v167);
  v202 = vcvtq_f64_f32(*v168.f32);
  v203 = COERCE_UNSIGNED_INT64(v168.f32[2]);
  [v165 setDouble3Value_];
  v169 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v170 = sub_23AA0D104();
  [v169 v87[469]];

  MEMORY[0x23EE8FD70]();
  if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v185 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v171 = sub_23AA0D104();
  v172 = [v164 newPropertyWithName:v171 type:*MEMORY[0x277D778E0] role:0];

  if (!v172)
  {
    goto LABEL_71;
  }

  v113 = v190;
  v173 = v190[2];
  v174 = v190[3];
  v175 = v190[4];
  v176 = v190[5];
  v202 = vcvtq_f64_f32(*v173.f32);
  v203 = vcvt_hight_f64_f32(v173);
  v204 = vcvtq_f64_f32(*v174.f32);
  v205 = vcvt_hight_f64_f32(v174);
  v206 = vcvtq_f64_f32(*v175.f32);
  v207 = vcvt_hight_f64_f32(v175);
  v208 = vcvtq_f64_f32(*v176.f32);
  v209 = vcvt_hight_f64_f32(v176);
  [v172 setDouble4x4Value_];
  sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
  v177 = sub_23AA0D2E4();

  v178 = v201;
  [v201 setTokenArray_];

  v114 = v164;
LABEL_57:
  v179 = v113->u8[0];
  v180 = v189;
  if (v179 == 5 || v179 == 2)
  {
    v181 = 0.00781250185;
  }

  else
  {
    v181 = 0.000000743866278;
  }

  sub_23A92F638(v114, v193, v195, v189, v181, 1.0);

  [v180 save];
}

void sub_23A92AB00(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = *(type metadata accessor for CapturedRoom.Object(0) + 32);
  v9 = *(v2 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

  v10 = sub_23A9EDD28(a1 + v8);
  if ((v11 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    v20 = v19;
    *v19 = sub_23AA0C074();
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v12 = (*(v9 + 56) + 16 * v10);
  v13 = *v12;
  v14 = v12[1];

  *&v80.f64[0] = v13;
  *&v80.f64[1] = v14;

  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v15 = *(v5 + 24);
  v16 = *(v5 + 32);

  MEMORY[0x23EE8FCA0](v15, v16);

  sub_23AA0BF44();

  v17 = sub_23A92D2EC(a2);
  if (v4)
  {
    v18 = sub_23AA0BFB4();
    (*(*(v18 - 8) + 8))(a2, v18);

    return;
  }

  v22 = v17;
  v88 = a2;
  v23 = v14;
  v24 = sub_23AA0BF04();
  v26 = v25;
  v27 = [v22 rootNode];
  v77 = v13;
  v78 = v23;
  v28 = sub_23A92EC38(v13, v23, v24, v26, v27, v22);

  v29 = sub_23AA0D104();
  sub_23AA0C074();
  v79 = v22;
  v30 = objc_allocWithZone(MEMORY[0x277D77878]);
  v31 = sub_23AA0D104();

  v32 = [v30 initWithString_];

  [v28 setCustomMetadata:v29 value:v32];
  v33 = sub_23AA0D104();
  LOBYTE(v80.f64[0]) = *a1;
  *&v80.f64[0] = sub_23AA0D1A4();
  v80.f64[1] = v34;
  sub_23A92F104();
  sub_23AA0D6A4();

  v35 = objc_allocWithZone(MEMORY[0x277D77878]);
  v36 = sub_23AA0D104();

  v37 = [v35 initWithString_];

  [v28 setCustomMetadata:v33 value:v37];
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v38 = [v79 rootNode];
  LOBYTE(v36) = sub_23AA0D634();

  v76 = v28;
  if (v36)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    v41 = v88;
  }

  else
  {
    v42 = [v28 path];
    v43 = [v42 stringValue];

    v41 = v88;
    if (v43)
    {
      v39 = sub_23AA0D134();
      v40 = v44;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }
  }

  *&v80.f64[0] = v39;
  *&v80.f64[1] = v40;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v77, v23);

  v45 = objc_allocWithZone(MEMORY[0x277D77888]);
  v46 = sub_23AA0D104();
  v47 = [v45 initWithString_];

  if (!v47)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v72 = v80;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v47 = v79;
    v48 = v28;
LABEL_21:

    v74 = sub_23AA0BFB4();
    (*(*(v74 - 8) + 8))(v41, v74);
    return;
  }

  v48 = v79;
  v88 = [v79 newNodeAtPath:v47 type:*MEMORY[0x277D77958]];
  if (!v88)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v73 = v80;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_21;
  }

  v49 = sub_23AA0D104();
  v50 = v88;
  v51 = [v88 newPropertyWithName:v49 type:*MEMORY[0x277D778D0] role:0];

  if (!v51)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v51 setDoubleValue_];
  v52 = sub_23AA0D104();
  v53 = [v88 newPropertyWithName:v52 type:*MEMORY[0x277D778D8] role:0];

  if (!v53)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *&v54 = COERCE_FLOAT(*(a1 + 24));
  v80 = vcvtq_f64_f32(*(a1 + 16));
  v81 = v54;
  [v53 setDouble3Value_];
  v55 = sub_23AA0D104();
  v56 = [v50 newPropertyWithName:v55 type:*MEMORY[0x277D778E0] role:0];

  if (v56)
  {
    v75 = v51;
    v57 = *(a1 + 32);
    v58 = *(a1 + 48);
    v59 = *(a1 + 64);
    v60 = *(a1 + 80);
    v80 = vcvtq_f64_f32(*v57.f32);
    v81 = vcvt_hight_f64_f32(v57);
    v82 = vcvtq_f64_f32(*v58.f32);
    v83 = vcvt_hight_f64_f32(v58);
    v84 = vcvtq_f64_f32(*v59.f32);
    v85 = vcvt_hight_f64_f32(v59);
    v86 = vcvtq_f64_f32(*v60.f32);
    v87 = vcvt_hight_f64_f32(v60);
    [v56 setDouble4x4Value_];
    v61 = sub_23AA0D104();
    v62 = [v50 newPropertyWithName:v61 type:*MEMORY[0x277D77948] role:0];

    if (v62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_23AA12E60;
      v64 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v65 = sub_23AA0D104();
      v66 = [v64 byte_278B65578];

      *(v63 + 32) = v66;
      v67 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v68 = sub_23AA0D104();
      v69 = [v67 byte_278B65578];

      *(v63 + 40) = v69;
      sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
      v70 = sub_23AA0D2E4();

      [v62 setTokenArray_];

      v71 = v88;
      sub_23A92F638(v88, v77, v78, v79, 0.00781250185, 1.0);

      [v79 save];

      return;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_23A92B52C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

char *sub_23A92B598(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_23A975EA4(result, v5, 0);
  }

  return result;
}

uint64_t type metadata accessor for USDModel.Error()
{
  result = qword_27DFAF248;
  if (!qword_27DFAF248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A92B65C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_23AA0D1F4();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_23A92B6F8(void *a1)
{
  v272 = type metadata accessor for CapturedRoom.Object(0);
  v274 = *(v272 - 8);
  v2 = *(v274 + 64);
  MEMORY[0x28223BE20](v272);
  v273 = &v270 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v287 = &v270 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v288 = &v270 - v9;
  MEMORY[0x28223BE20](v10);
  v289 = &v270 - v11;
  MEMORY[0x28223BE20](v12);
  v290 = &v270 - v13;
  MEMORY[0x28223BE20](v14);
  v292 = (&v270 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF200, &qword_23AA12ED0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v286 = (&v270 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1F8, &qword_23AA12EC8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v281 = &v270 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v275 = (&v270 - v24);
  MEMORY[0x28223BE20](v25);
  v282 = &v270 - v26;
  MEMORY[0x28223BE20](v27);
  v276 = (&v270 - v28);
  MEMORY[0x28223BE20](v29);
  v283 = &v270 - v30;
  MEMORY[0x28223BE20](v31);
  v277 = (&v270 - v32);
  MEMORY[0x28223BE20](v33);
  v284 = &v270 - v34;
  MEMORY[0x28223BE20](v35);
  v278 = (&v270 - v36);
  MEMORY[0x28223BE20](v37);
  v279 = &v270 - v38;
  MEMORY[0x28223BE20](v39);
  v280 = (&v270 - v40);
  v41 = a1[3];
  v42 = a1[4];
  v271 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v43 = v41;
  v44 = v4;
  v45 = (*(v42 + 24))(v43, v42);
  v46 = 0;
  v47 = *(v45 + 16);
  v296 = (v17 + 48);
  v297 = (v17 + 56);
  v298 = (v5 + 16);
  v285 = v5;
  v293 = (v5 + 8);
  v48 = v16;
  v49 = MEMORY[0x277D84F98];
  v294 = v16;
  v295 = v4;
  while (1)
  {
    if (v46 == v47)
    {
      v52 = 1;
      v53 = v47;
      v54 = v279;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_121;
      }

      if (v46 >= *(v45 + 16))
      {
        goto LABEL_122;
      }

      v55 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
      v56 = v45 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v46;
      v57 = *(v48 + 48);
      v58 = v286;
      *v286 = v46;
      sub_23A930548(v56, v58 + v57, type metadata accessor for CapturedRoom.Surface);
      v59 = v58;
      v54 = v279;
      sub_23A930208(v59, v279, &qword_27DFAF200, &qword_23AA12ED0);
      v52 = 0;
      v53 = (v46 + 1);
    }

    v60 = *v297;
    (*v297)(v54, v52, 1, v48);
    v61 = v54;
    v62 = v280;
    sub_23A930208(v61, v280, &qword_27DFAF1F8, &qword_23AA12EC8);
    v63 = *v296;
    if ((*v296)(v62, 1, v48) == 1)
    {
      v292 = v63;

      v86 = v271[3];
      v87 = v271[4];
      __swift_project_boxed_opaque_existential_1(v271, v86);
      v88 = (*(v87 + 32))(v86, v87);
      v89 = 0;
      v90 = *(v88 + 16);
      for (i = v60; ; v60 = i)
      {
        v93 = v284;
        if (v89 == v90)
        {
          v94 = 1;
          v89 = v90;
        }

        else
        {
          if ((v89 & 0x8000000000000000) != 0)
          {
            goto LABEL_124;
          }

          if (v89 >= *(v88 + 16))
          {
            goto LABEL_125;
          }

          v95 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
          v96 = v88 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v89;
          v97 = *(v48 + 48);
          v98 = v286;
          *v286 = v89;
          sub_23A930548(v96, v98 + v97, type metadata accessor for CapturedRoom.Surface);
          v99 = v98;
          v93 = v284;
          sub_23A930208(v99, v284, &qword_27DFAF200, &qword_23AA12ED0);
          v94 = 0;
          ++v89;
        }

        v60(v93, v94, 1, v48);
        v100 = v278;
        sub_23A930208(v93, v278, &qword_27DFAF1F8, &qword_23AA12EC8);
        if (v292(v100, 1, v48) == 1)
        {
          break;
        }

        v101 = *v100;
        v102 = v100 + *(v48 + 48);
        v103 = type metadata accessor for CapturedRoom.Surface(0);
        v104 = *v298;
        v105 = v290;
        (*v298)(v290, v102 + *(v103 + 44), v44);
        sub_23A92FED0(v102, type metadata accessor for CapturedRoom.Surface);
        v301 = 1919905604;
        v302 = 0xE400000000000000;
        v299 = v101;
        v106 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v106);

        v108 = v301;
        v107 = v302;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v301 = v49;
        v110 = sub_23A9EDD28(v105);
        v112 = v49[2];
        v113 = (v111 & 1) == 0;
        v84 = __OFADD__(v112, v113);
        v114 = v112 + v113;
        if (v84)
        {
          goto LABEL_116;
        }

        v115 = v111;
        if (v49[3] >= v114)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v121 = v110;
            sub_23A90E648();
            v110 = v121;
          }
        }

        else
        {
          sub_23A908EB0(v114, isUniquelyReferenced_nonNull_native);
          v110 = sub_23A9EDD28(v290);
          if ((v115 & 1) != (v116 & 1))
          {
            goto LABEL_139;
          }
        }

        v44 = v295;
        v49 = v301;
        if (v115)
        {
          v91 = (*(v301 + 56) + 16 * v110);
          v92 = v91[1];
          *v91 = v108;
          v91[1] = v107;
        }

        else
        {
          *(v301 + 8 * (v110 >> 6) + 64) |= 1 << v110;
          v117 = v110;
          v104(v49[6] + *(v285 + 72) * v110, v290, v44);
          v118 = (v49[7] + 16 * v117);
          *v118 = v108;
          v118[1] = v107;
          v119 = v49[2];
          v84 = __OFADD__(v119, 1);
          v120 = v119 + 1;
          if (v84)
          {
            goto LABEL_126;
          }

          v49[2] = v120;
        }

        (*v293)(v290, v44);
        v48 = v294;
      }

      v122 = v271[3];
      v123 = v271[4];
      __swift_project_boxed_opaque_existential_1(v271, v122);
      v124 = (*(v123 + 40))(v122, v123);
      v125 = 0;
      v126 = *(v124 + 16);
      while (1)
      {
        v129 = v292;
        v130 = v283;
        if (v125 == v126)
        {
          v131 = 1;
          v125 = v126;
        }

        else
        {
          if ((v125 & 0x8000000000000000) != 0)
          {
            goto LABEL_127;
          }

          if (v125 >= *(v124 + 16))
          {
            goto LABEL_128;
          }

          v132 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
          v133 = v124 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v125;
          v134 = *(v48 + 48);
          v135 = v286;
          *v286 = v125;
          sub_23A930548(v133, v135 + v134, type metadata accessor for CapturedRoom.Surface);
          v136 = v135;
          v130 = v283;
          sub_23A930208(v136, v283, &qword_27DFAF200, &qword_23AA12ED0);
          v131 = 0;
          ++v125;
        }

        v60(v130, v131, 1, v48);
        v137 = v277;
        sub_23A930208(v130, v277, &qword_27DFAF1F8, &qword_23AA12EC8);
        if (v129(v137, 1, v48) == 1)
        {
          break;
        }

        v138 = *v137;
        v139 = v137 + *(v48 + 48);
        v140 = type metadata accessor for CapturedRoom.Surface(0);
        v141 = *v298;
        v142 = v289;
        (*v298)(v289, v139 + *(v140 + 44), v44);
        sub_23A92FED0(v139, type metadata accessor for CapturedRoom.Surface);
        v301 = 0x776F646E6957;
        v302 = 0xE600000000000000;
        v299 = v138;
        v143 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v143);

        v145 = v301;
        v144 = v302;
        v146 = swift_isUniquelyReferenced_nonNull_native();
        v301 = v49;
        v147 = sub_23A9EDD28(v142);
        v149 = v49[2];
        v150 = (v148 & 1) == 0;
        v84 = __OFADD__(v149, v150);
        v151 = v149 + v150;
        if (v84)
        {
          goto LABEL_117;
        }

        v152 = v148;
        if (v49[3] >= v151)
        {
          if ((v146 & 1) == 0)
          {
            v158 = v147;
            sub_23A90E648();
            v147 = v158;
          }
        }

        else
        {
          sub_23A908EB0(v151, v146);
          v147 = sub_23A9EDD28(v289);
          if ((v152 & 1) != (v153 & 1))
          {
            goto LABEL_139;
          }
        }

        v44 = v295;
        v49 = v301;
        if (v152)
        {
          v127 = (*(v301 + 56) + 16 * v147);
          v128 = v127[1];
          *v127 = v145;
          v127[1] = v144;
        }

        else
        {
          *(v301 + 8 * (v147 >> 6) + 64) |= 1 << v147;
          v154 = v147;
          v141(v49[6] + *(v285 + 72) * v147, v289, v44);
          v155 = (v49[7] + 16 * v154);
          *v155 = v145;
          v155[1] = v144;
          v156 = v49[2];
          v84 = __OFADD__(v156, 1);
          v157 = v156 + 1;
          if (v84)
          {
            goto LABEL_129;
          }

          v49[2] = v157;
        }

        (*v293)(v289, v44);
        v48 = v294;
        v60 = i;
      }

      v159 = v271[3];
      v160 = v271[4];
      __swift_project_boxed_opaque_existential_1(v271, v159);
      v161 = (*(v160 + 48))(v159, v160);
      v162 = 0;
      v163 = *(v161 + 16);
      v164 = v282;
      while (1)
      {
        if (v162 == v163)
        {
          v167 = 1;
          v162 = v163;
        }

        else
        {
          if ((v162 & 0x8000000000000000) != 0)
          {
            goto LABEL_130;
          }

          if (v162 >= *(v161 + 16))
          {
            goto LABEL_131;
          }

          v168 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
          v169 = v161 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v162;
          v170 = *(v48 + 48);
          v171 = v286;
          *v286 = v162;
          sub_23A930548(v169, v171 + v170, type metadata accessor for CapturedRoom.Surface);
          v172 = v171;
          v164 = v282;
          sub_23A930208(v172, v282, &qword_27DFAF200, &qword_23AA12ED0);
          v167 = 0;
          ++v162;
        }

        v60(v164, v167, 1, v48);
        v173 = v276;
        sub_23A930208(v164, v276, &qword_27DFAF1F8, &qword_23AA12EC8);
        if (v129(v173, 1, v48) == 1)
        {
          break;
        }

        v174 = *v173;
        v175 = v173 + *(v48 + 48);
        v176 = type metadata accessor for CapturedRoom.Surface(0);
        v177 = *v298;
        v178 = v288;
        (*v298)(v288, v175 + *(v176 + 44), v44);
        sub_23A92FED0(v175, type metadata accessor for CapturedRoom.Surface);
        v301 = 0x676E696E65704FLL;
        v302 = 0xE700000000000000;
        v299 = v174;
        v179 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v179);

        v181 = v301;
        v180 = v302;
        v182 = swift_isUniquelyReferenced_nonNull_native();
        v301 = v49;
        v183 = sub_23A9EDD28(v178);
        v185 = v49[2];
        v186 = (v184 & 1) == 0;
        v84 = __OFADD__(v185, v186);
        v187 = v185 + v186;
        if (v84)
        {
          goto LABEL_118;
        }

        v188 = v184;
        if (v49[3] >= v187)
        {
          if ((v182 & 1) == 0)
          {
            v194 = v183;
            sub_23A90E648();
            v183 = v194;
          }
        }

        else
        {
          sub_23A908EB0(v187, v182);
          v183 = sub_23A9EDD28(v288);
          if ((v188 & 1) != (v189 & 1))
          {
            goto LABEL_139;
          }
        }

        v44 = v295;
        v49 = v301;
        if (v188)
        {
          v165 = (*(v301 + 56) + 16 * v183);
          v166 = v165[1];
          *v165 = v181;
          v165[1] = v180;
        }

        else
        {
          *(v301 + 8 * (v183 >> 6) + 64) |= 1 << v183;
          v190 = v183;
          v177(v49[6] + *(v285 + 72) * v183, v288, v44);
          v191 = (v49[7] + 16 * v190);
          *v191 = v181;
          v191[1] = v180;
          v192 = v49[2];
          v84 = __OFADD__(v192, 1);
          v193 = v192 + 1;
          if (v84)
          {
            goto LABEL_132;
          }

          v49[2] = v193;
        }

        (*v293)(v288, v44);
        v48 = v294;
        v164 = v282;
        v60 = i;
        v129 = v292;
      }

      v195 = v271[3];
      v196 = v271[4];
      __swift_project_boxed_opaque_existential_1(v271, v195);
      v197 = (*(v196 + 64))(v195, v196);
      v198 = 0;
      v199 = *(v197 + 16);
      v200 = v281;
      while (1)
      {
        if (v198 == v199)
        {
          v203 = 1;
          v198 = v199;
        }

        else
        {
          if ((v198 & 0x8000000000000000) != 0)
          {
            goto LABEL_133;
          }

          if (v198 >= *(v197 + 16))
          {
            goto LABEL_134;
          }

          v204 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
          v205 = v197 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v198;
          v206 = *(v48 + 48);
          v207 = v286;
          *v286 = v198;
          sub_23A930548(v205, v207 + v206, type metadata accessor for CapturedRoom.Surface);
          v208 = v207;
          v200 = v281;
          sub_23A930208(v208, v281, &qword_27DFAF200, &qword_23AA12ED0);
          v203 = 0;
          ++v198;
        }

        v60(v200, v203, 1, v48);
        v209 = v275;
        sub_23A930208(v200, v275, &qword_27DFAF1F8, &qword_23AA12EC8);
        if (v129(v209, 1, v48) == 1)
        {
          break;
        }

        v210 = *v209;
        v211 = v209 + *(v48 + 48);
        v212 = type metadata accessor for CapturedRoom.Surface(0);
        v213 = *v298;
        v214 = v287;
        (*v298)(v287, v211 + *(v212 + 44), v44);
        sub_23A92FED0(v211, type metadata accessor for CapturedRoom.Surface);
        v301 = 0x726F6F6C46;
        v302 = 0xE500000000000000;
        v299 = v210;
        v215 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v215);

        v217 = v301;
        v216 = v302;
        v218 = swift_isUniquelyReferenced_nonNull_native();
        v301 = v49;
        v219 = sub_23A9EDD28(v214);
        v221 = v49[2];
        v222 = (v220 & 1) == 0;
        v84 = __OFADD__(v221, v222);
        v223 = v221 + v222;
        if (v84)
        {
          goto LABEL_119;
        }

        v224 = v220;
        if (v49[3] >= v223)
        {
          if ((v218 & 1) == 0)
          {
            v230 = v219;
            sub_23A90E648();
            v219 = v230;
          }
        }

        else
        {
          sub_23A908EB0(v223, v218);
          v219 = sub_23A9EDD28(v287);
          if ((v224 & 1) != (v225 & 1))
          {
            goto LABEL_139;
          }
        }

        v44 = v295;
        v49 = v301;
        if (v224)
        {
          v201 = (*(v301 + 56) + 16 * v219);
          v202 = v201[1];
          *v201 = v217;
          v201[1] = v216;
        }

        else
        {
          *(v301 + 8 * (v219 >> 6) + 64) |= 1 << v219;
          v226 = v219;
          v213(v49[6] + *(v285 + 72) * v219, v287, v44);
          v227 = (v49[7] + 16 * v226);
          *v227 = v217;
          v227[1] = v216;
          v228 = v49[2];
          v84 = __OFADD__(v228, 1);
          v229 = v228 + 1;
          if (v84)
          {
            goto LABEL_135;
          }

          v49[2] = v229;
        }

        (*v293)(v287, v44);
        v48 = v294;
        v200 = v281;
        v60 = i;
        v129 = v292;
      }

      v231 = v271[3];
      v232 = v271[4];
      __swift_project_boxed_opaque_existential_1(v271, v231);
      v233 = (*(v232 + 56))(v231, v232);
      v234 = v233;
      v235 = *(v233 + 16);
      if (!v235)
      {
LABEL_114:

        return v49;
      }

      v236 = 0;
      v237 = v274;
      v238 = MEMORY[0x277D84F98];
      v239 = (v233 + ((*(v274 + 80) + 32) & ~*(v274 + 80)));
      v240 = v273;
      v296 = v239;
      v297 = v235;
      while (1)
      {
        if (v236 >= *(v234 + 16))
        {
          goto LABEL_120;
        }

        sub_23A930548(v239 + *(v237 + 72) * v236, v240, type metadata accessor for CapturedRoom.Object);
        if (*v240 != 15)
        {
          break;
        }

LABEL_95:
        ++v236;
        sub_23A92FED0(v240, type metadata accessor for CapturedRoom.Object);
        if (v235 == v236)
        {
          goto LABEL_114;
        }
      }

      v252 = v238[2];
      if (v252)
      {
        v253 = (sub_23A9F573C)();
        if (v254)
        {
          v252 = *(v238[7] + 8 * v253);
        }

        else
        {
          v252 = 0;
        }
      }

      v255 = v252 + 1;
      if (__OFADD__(v252, 1))
      {
        goto LABEL_136;
      }

      v298 = v252;
      v256 = v234;
      v257 = *v240;
      v258 = swift_isUniquelyReferenced_nonNull_native();
      v301 = v238;
      v260 = sub_23A9F573C(v257);
      v261 = v238[2];
      v262 = (v259 & 1) == 0;
      v263 = v261 + v262;
      if (__OFADD__(v261, v262))
      {
        goto LABEL_137;
      }

      v264 = v259;
      if (v238[3] < v263)
      {
        sub_23A908C30(v263, v258);
        v265 = sub_23A9F573C(v257);
        if ((v264 & 1) != (v266 & 1))
        {
          goto LABEL_140;
        }

        v260 = v265;
        v238 = v301;
        if ((v264 & 1) == 0)
        {
          goto LABEL_110;
        }

LABEL_93:
        *(v238[7] + 8 * v260) = v255;
LABEL_94:
        v241 = v273;
        LOBYTE(v301) = *v273;
        v299 = sub_23AA0D1A4();
        v300 = v242;
        sub_23A92F104();
        v243 = sub_23AA0D6A4();
        v245 = v244;

        v301 = v243;
        v302 = v245;
        v299 = v298;
        v246 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v246);

        v247 = v301;
        v248 = v302;
        v249 = *(v272 + 32);
        v250 = swift_isUniquelyReferenced_nonNull_native();
        v301 = v49;
        v251 = v247;
        v240 = v241;
        sub_23A9DAB8C(v251, v248, &v241[v249], v250);
        v49 = v301;
        v237 = v274;
        v234 = v256;
        v239 = v296;
        v235 = v297;
        goto LABEL_95;
      }

      if (v258)
      {
        v238 = v301;
        if (v259)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_23A90E4FC();
        v238 = v301;
        if (v264)
        {
          goto LABEL_93;
        }
      }

LABEL_110:
      v238[(v260 >> 6) + 8] |= 1 << v260;
      *(v238[6] + v260) = v257;
      *(v238[7] + 8 * v260) = v255;
      v267 = v238[2];
      v84 = __OFADD__(v267, 1);
      v268 = v267 + 1;
      if (v84)
      {
        goto LABEL_138;
      }

      v238[2] = v268;
      goto LABEL_94;
    }

    i = v53;
    v64 = v45;
    v65 = *v62;
    v66 = v62 + *(v48 + 48);
    v67 = type metadata accessor for CapturedRoom.Surface(0);
    v68 = *v298;
    v69 = v292;
    (*v298)(v292, v66 + *(v67 + 44), v44);
    sub_23A92FED0(v66, type metadata accessor for CapturedRoom.Surface);
    v301 = 1819042135;
    v302 = 0xE400000000000000;
    v299 = v65;
    v70 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v70);

    v72 = v301;
    v71 = v302;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v301 = v49;
    v75 = sub_23A9EDD28(v69);
    v76 = v49[2];
    v77 = (v74 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      break;
    }

    v79 = v74;
    if (v49[3] >= v78)
    {
      if ((v73 & 1) == 0)
      {
        sub_23A90E648();
      }
    }

    else
    {
      sub_23A908EB0(v78, v73);
      v80 = sub_23A9EDD28(v292);
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_139;
      }

      v75 = v80;
    }

    v44 = v295;
    v49 = v301;
    if (v79)
    {
      v50 = (*(v301 + 56) + 16 * v75);
      v51 = v50[1];
      *v50 = v72;
      v50[1] = v71;
    }

    else
    {
      *(v301 + 8 * (v75 >> 6) + 64) |= 1 << v75;
      v68(v49[6] + *(v285 + 72) * v75, v292, v44);
      v82 = (v49[7] + 16 * v75);
      *v82 = v72;
      v82[1] = v71;
      v83 = v49[2];
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        goto LABEL_123;
      }

      v49[2] = v85;
    }

    (*v293)(v292, v44);
    v48 = v294;
    v45 = v64;
    v46 = i;
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  sub_23AA0DC24();
  __break(1u);
LABEL_140:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void sub_23A92CFAC(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v5 = sub_23AA0C0E4();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF228, &qword_23AA12F00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v45 = (v41 - v13);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v11 + 48);
    v43 = v5;
    v44 = v15;
    v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    v47 = (v46 + 32);
    v41[2] = v46 + 40;
    v42 = v17;
    while (1)
    {
      v48 = v14;
      v19 = v45;
      sub_23A8D5194(v16, v45, &qword_27DFAF228, &qword_23AA12F00);
      v21 = *v19;
      v20 = v19[1];
      v22 = *v47;
      v23 = v8;
      (*v47)(v8, v19 + v44, v5);
      v24 = *v49;
      v26 = sub_23A9EDDFC(v21, v20);
      v27 = *(v24 + 16);
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        break;
      }

      v30 = v25;
      if (*(v24 + 24) >= v29)
      {
        if ((a2 & 1) == 0)
        {
          sub_23A90ECB4();
        }
      }

      else
      {
        v31 = v49;
        sub_23A9099C0(v29, a2 & 1);
        v32 = *v31;
        v33 = sub_23A9EDDFC(v21, v20);
        if ((v30 & 1) != (v34 & 1))
        {
          goto LABEL_17;
        }

        v26 = v33;
      }

      v35 = *v49;
      if (v30)
      {

        v18 = v35[7] + *(v46 + 72) * v26;
        v8 = v23;
        v5 = v43;
        (*(v46 + 40))(v18, v23, v43);
      }

      else
      {
        v35[(v26 >> 6) + 8] |= 1 << v26;
        v36 = (v35[6] + 16 * v26);
        *v36 = v21;
        v36[1] = v20;
        v37 = v35[7] + *(v46 + 72) * v26;
        v8 = v23;
        v5 = v43;
        v22(v37, v23, v43);
        v38 = v35[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v35[2] = v40;
      }

      v16 += v42;
      a2 = 1;
      v14 = v48 - 1;
      if (v48 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_23AA0DC24();
    __break(1u);
  }
}

id sub_23A92D2EC(uint64_t a1)
{
  v2 = sub_23AA0BCF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = sub_23AA0BFB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_23AA0BF34();
  v15 = sub_23AA0BF04();
  v17 = v16;
  v51 = v11;
  (*(v11 + 8))(v14, v10);
  v52 = v15;
  v53 = v17;
  if (qword_27DFAE420 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v2, qword_27DFC0690);
  (*(v3 + 16))(v9, v18, v2);
  sub_23AA0BCD4();
  v19 = *(v3 + 8);
  v19(v9, v2);
  sub_23A92F104();
  v20 = sub_23AA0D684();
  v19(v7, v2);

  v52 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1E0, &qword_23AA12EC0);
  sub_23A92FE18();
  v21 = sub_23AA0D074();
  v23 = v22;

  if (qword_27DFAE418 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27DFC0678);

  v25 = sub_23A92B65C(1, v21, v23, v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v52 = v25;
  v53 = v27;
  v54 = v29;
  v55 = v31;
  sub_23A92FE7C();
  sub_23AA0D6B4();
  LOBYTE(v25) = v32;

  if ((v25 & 1) == 0)
  {
    v52 = 95;
    v53 = 0xE100000000000000;
    MEMORY[0x23EE8FCA0](v21, v23);
  }

  v33 = v56;
  v34 = objc_opt_self();
  v35 = sub_23AA0BF14();
  v36 = [v34 newSceneWithURL_];

  if (v36)
  {
    v37 = sub_23AA0D104();
    v38 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v39 = sub_23AA0D104();

    v40 = [v38 initWithString_];

    v41 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    [v36 setMetadataWithKey:v37 value:v41];

    v42 = sub_23AA0D104();
    v43 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v44 = sub_23AA0D104();
    v45 = [v43 initWithString_];

    v46 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    [v36 setMetadataWithKey:v42 value:v46];

    v47 = sub_23AA0D104();
    v48 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithDouble_];
    [v36 setMetadataWithKey:v47 value:v48];
  }

  else
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    (*(v51 + 16))(v49, v33, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v36;
}

void sub_23A92D8E4(uint64_t a1, id a2, __int128 *a3, void *a4)
{
  v67 = a3[4];
  v68 = a3[5];
  v69 = a3[6];
  v70 = a3[7];
  v63 = *a3;
  v64 = a3[1];
  v65 = a3[2];
  v66 = a3[3];
  *v53 = *(a1 + 16);
  v52 = *(a1 + 128);
  v54 = *(a1 + 144);
  v6 = [a2 name];
  v7 = [v6 stringValue];

  if (v7)
  {
    v8 = sub_23AA0D134();
    v10 = v9;
  }

  else
  {
    v10 = 0xE700000000000000;
    v8 = 0x6E6F6974636573;
  }

  *&v71[0] = v8;
  *(&v71[0] + 1) = v10;

  MEMORY[0x23EE8FCA0](0x547265746E65635FLL, 0xEA0000000000706FLL);
  v11 = v71[0];
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v12 = [a4 rootNode];
  v13 = sub_23AA0D634();

  if ((v13 & 1) != 0 || (v14 = [a2 path], v15 = objc_msgSend(v14, sel_stringValue), v14, !v15))
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v16 = sub_23AA0D134();
    v18 = v17;
  }

  *&v71[0] = v16;
  *(&v71[0] + 1) = v18;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v11, *(&v11 + 1));

  v19 = objc_allocWithZone(MEMORY[0x277D77888]);
  v20 = sub_23AA0D104();
  v21 = [v19 initWithString_];

  if (v21)
  {
    v22 = [a4 newNodeAtPath:v21 type:*MEMORY[0x277D77980]];
    if (v22)
    {
      v23 = v22;

      v24 = sub_23AA0D104();
      v25 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v26 = sub_23AA0D104();
      v27 = [v25 initWithString_];

      v28 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
      [v23 setMetadataWithKey:v24 value:v28];

      v29 = 1.5;
      if ((v54 & 1) == 0)
      {
        v29 = vmuls_lane_f32(0.5, v52, 1);
      }

      v30 = sub_23AA0D104();
      v31 = [v23 newPropertyWithName:v30 type:*MEMORY[0x277D778E0] role:0];

      if (v31)
      {
        v32 = v29 * 0.0;
        v33 = v53[1] + v29;
        v34 = v53[0] + v32;
        v35 = v53[2] + v32;
        __invert_d4();
        v36 = vmulq_f64(v55, 0);
        v37 = vmulq_f64(v56, 0);
        __asm { FMOV            V25.2D, #-1.0 }

        v71[0] = vmlaq_f64(vmlaq_f64(vmlaq_f64(v55, 0, v57), 0, v59), 0, v61);
        v71[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(v56, 0, v58), 0, v60), 0, v62);
        v71[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(v36, 0, v57), _Q25, v59), 0, v61);
        v71[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(v37, 0, v58), _Q25, v60), 0, v62);
        v71[4] = vmlaq_f64(vmlaq_f64(vaddq_f64(v57, v36), 0, v59), 0, v61);
        v71[5] = vmlaq_f64(vmlaq_f64(vaddq_f64(v58, v37), 0, v60), 0, v62);
        v71[6] = vaddq_f64(v61, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v55, v34), v57, v33), v59, v35));
        v71[7] = vaddq_f64(v62, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v56, v34), v58, v33), v60, v35));
        [v31 setDouble4x4Value_];
        v43 = sub_23AA0D104();
        v44 = [v23 newPropertyWithName:v43 type:*MEMORY[0x277D77948] role:0];

        if (v44)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_23AA11BB0;
          v46 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v47 = sub_23AA0D104();
          v48 = [v46 initWithString_];

          *(v45 + 32) = v48;
          sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
          v49 = sub_23AA0D2E4();

          [v44 setTokenArray_];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v51 = v71[0];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v50 = v71[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_23A92DFB8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v146 = a3;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v8 = MEMORY[0x277D84F98];
    goto LABEL_27;
  }

  v6 = a1 + 32;
  v7 = v5 - 1;
  v8 = MEMORY[0x277D84F98];
  while (1)
  {
    v11 = *(v6 + 80);
    v133 = *(v6 + 64);
    v134 = v11;
    v12 = *(v6 + 48);
    v131 = *(v6 + 32);
    v132 = v12;
    LOBYTE(v138.f64[0]) = *(v6 + 144);
    v13 = *(v6 + 128);
    v136 = *(v6 + 112);
    v137 = v13;
    v135 = *(v6 + 96);
    v14 = *(v6 + 16);
    v129 = *v6;
    v130 = v14;
    v15 = LOBYTE(v129.f64[0]);
    if (*(*&v8 + 16))
    {
      sub_23A93010C(&v129, &v118);
      v16 = sub_23A9EE130(v15);
      v17 = MEMORY[0x277D84F90];
      if (v18)
      {
        v17 = *(*(*&v8 + 56) + 8 * v16);
      }
    }

    else
    {
      sub_23A93010C(&v129, &v118);
      v17 = MEMORY[0x277D84F90];
    }

    sub_23A93010C(&v129, &v118);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_23A9399B8(0, *(v17 + 2) + 1, 1, v17);
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_23A9399B8((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[160 * v20];
    v22 = v130;
    *(v21 + 2) = v129;
    *(v21 + 3) = v22;
    v23 = v131;
    v24 = v132;
    v25 = v134;
    *(v21 + 6) = v133;
    *(v21 + 7) = v25;
    *(v21 + 4) = v23;
    *(v21 + 5) = v24;
    v26 = v135;
    v27 = v136;
    v28 = v137;
    v21[176] = LOBYTE(v138.f64[0]);
    *(v21 + 9) = v27;
    *(v21 + 10) = v28;
    *(v21 + 8) = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118.f64[0] = v8;
    v31 = sub_23A9EE130(v15);
    v32 = *(*&v8 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      result = sub_23AA0DC24();
      __break(1u);
      return result;
    }

    v35 = v30;
    if (*(*&v8 + 24) >= v34)
    {
      sub_23A930168(&v129);
      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v118.f64[0];
        if (v35)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_23A90E8D4();
        v8 = v118.f64[0];
        if (v35)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_23A909298(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_23A9EE130(v15);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_80;
      }

      v31 = v36;
      sub_23A930168(&v129);
      v8 = v118.f64[0];
      if (v35)
      {
LABEL_3:
        v9 = *(*&v8 + 56);
        v10 = *(v9 + 8 * v31);
        *(v9 + 8 * v31) = v17;

        if (!v7)
        {
          break;
        }

        goto LABEL_4;
      }
    }

    *(*&v8 + 8 * (v31 >> 6) + 64) |= 1 << v31;
    *(*(*&v8 + 48) + v31) = v15;
    *(*(*&v8 + 56) + 8 * v31) = v17;
    v38 = *(*&v8 + 16);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_77;
    }

    *(*&v8 + 16) = v40;
    if (!v7)
    {
      break;
    }

LABEL_4:
    --v7;
    v6 += 160;
  }

  v4 = v3;
LABEL_27:
  v41 = *&v8 + 64;
  v42 = 1 << *(*&v8 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(*&v8 + 64);
  v45 = (v42 + 63) >> 6;
  v98 = *MEMORY[0x277D77980];
  v97 = *MEMORY[0x277D778E0];
  v96 = *MEMORY[0x277D77948];

  v46 = 0;
  v91 = *&v8 + 64;
  v92 = v8;
  v90 = v45;
  while (1)
  {
    if (!v44)
    {
      do
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_76;
        }

        if (v47 >= v45)
        {
LABEL_72:
        }

        v44 = *(v41 + 8 * v47);
        ++v46;
      }

      while (!v44);
      v46 = v47;
    }

    v93 = v46;
    v94 = v44;
    v48 = __clz(__rbit64(v44)) | (v46 << 6);
    v49 = *(*(*&v8 + 48) + v48);
    v140 = *(*(*&v8 + 56) + 8 * v48);
    v141 = 0;
    v142 = 0;
    swift_bridgeObjectRetain_n();
    sub_23A9168D4(&v107);
    v126 = v115;
    v127 = v116;
    v128 = v117;
    v122 = v111;
    v123 = v112;
    v124 = v113;
    v125 = v114;
    v118 = v107;
    v119 = v108;
    v120 = v109;
    v121 = v110;
    v137 = v115;
    v138 = v116;
    v139 = v117;
    v133 = v111;
    v134 = v112;
    v135 = v113;
    v136 = v114;
    v129 = v107;
    v130 = v108;
    v131 = v109;
    v132 = v110;
    if (sub_23A9301BC(&v129) != 1)
    {
      break;
    }

LABEL_30:
    v44 = (v94 - 1) & v94;

    v41 = v91;
    v8 = v92;
    v45 = v90;
    v46 = v93;
  }

  v95 = v49;
  while (2)
  {
    v107.f64[0] = 0.0;
    v107.f64[1] = -2.68156159e154;
    if (v49 > 2)
    {
      v53 = 0x6F52676E696E6964;
      if (v49 != 4)
      {
        v53 = 0x69746E6564696E75;
      }

      v52 = 0xEC00000064656966;
      if (v49 == 4)
      {
        v52 = 0xEA00000000006D6FLL;
      }

      v50 = v49 == 3;
      if (v49 == 3)
      {
        v51 = 0x6E65686374696BLL;
      }

      else
      {
        v51 = v53;
      }

LABEL_51:
      if (v50)
      {
        v54 = 0xE700000000000000;
      }

      else
      {
        v54 = v52;
      }
    }

    else
    {
      if (v49)
      {
        v50 = v49 == 1;
        if (v49 == 1)
        {
          v51 = 0x6D6F6F72646562;
        }

        else
        {
          v51 = 0x6D6F6F7268746162;
        }

        v52 = 0xE800000000000000;
        goto LABEL_51;
      }

      v51 = 0x6F52676E6976696CLL;
      v54 = 0xEA00000000006D6FLL;
    }

    MEMORY[0x23EE8FCA0](v51, v54);

    v55 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v55);

    v56 = v107;
    sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
    v57 = [v146 rootNode];
    v58 = sub_23AA0D634();

    if ((v58 & 1) != 0 || (v59 = [a2 path], v60 = objc_msgSend(v59, sel_stringValue), v59, !v60))
    {
      v61 = 0;
      v63 = 0xE000000000000000;
    }

    else
    {
      v61 = sub_23AA0D134();
      v63 = v62;
    }

    *&v107.f64[0] = v61;
    *&v107.f64[1] = v63;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](*&v56.f64[0], *&v56.f64[1]);

    v64 = v107;
    v65 = objc_allocWithZone(MEMORY[0x277D77888]);
    v66 = sub_23AA0D104();
    v67 = [v65 initWithString_];

    if (!v67)
    {

      sub_23A8D50D0(&v118, &qword_27DFAF218, &qword_23AA12EF0);

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v87 = v64;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_72;
    }

    v68 = [v146 newNodeAtPath:v67 type:v98];
    if (!v68)
    {

      sub_23A8D50D0(&v118, &qword_27DFAF218, &qword_23AA12EF0);

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v88 = v64;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_72;
    }

    v69 = v68;

    v70 = sub_23AA0D104();
    v71 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v72 = sub_23AA0D104();
    v73 = [v71 initWithString_];

    v74 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    [v69 setMetadataWithKey:v70 value:v74];

    if (LOBYTE(v137.f64[0]))
    {
      v75 = v131;
      v75.i32[3] = 1.0;
      v106 = 0u;
      v76 = xmmword_23AA10F20;
      v104 = v75;
      v105 = xmmword_23AA10F20;
      v102 = 0u;
      v103 = xmmword_23AA10F30;
      v101 = 0u;
    }

    else
    {
      v104 = v136;
      v105 = vcvtq_f64_f32(*&v133.f64[0]);
      v106 = vcvtq_f64_f32(*&v133.f64[1]);
      v102 = vcvtq_f64_f32(*(&v134 + 8));
      v103 = vcvtq_f64_f32(*&v134);
      v101 = vcvtq_f64_f32(*&v135);
      v76 = vcvtq_f64_f32(*(&v135 + 8));
    }

    v100 = v76;
    v77 = sub_23AA0D104();
    v78 = [v69 newPropertyWithName:v77 type:v97 role:0];

    if (!v78)
    {
      goto LABEL_79;
    }

    v79 = v4;
    v143[0] = v105;
    v143[1] = v106;
    v143[2] = v103;
    v143[3] = v102;
    v143[4] = v101;
    v143[5] = v100;
    v144 = vcvtq_f64_f32(*v104.f32);
    v145 = vcvt_hight_f64_f32(v104);
    v107 = v105;
    v108 = v106;
    v109 = v103;
    v110 = v102;
    v111 = v101;
    v112 = v100;
    v113 = v144;
    v114 = v145;
    [v78 setDouble4x4Value_];
    v80 = sub_23AA0D104();
    v81 = [v69 newPropertyWithName:v80 type:v96 role:0];

    if (!v81)
    {
      goto LABEL_78;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_23AA11BB0;
    v83 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v84 = sub_23AA0D104();
    v85 = [v83 initWithString_];

    *(v82 + 32) = v85;
    sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
    v86 = sub_23AA0D2E4();

    [v81 setTokenArray_];

    v113 = v136;
    v114 = v137;
    v115 = v138;
    LOBYTE(v116.f64[0]) = v139;
    v109 = v132;
    v110 = v133;
    v111 = v134;
    v112 = v135;
    v107 = v130;
    v108 = v131;
    sub_23A92D8E4(&v107, v69, v143, v146);
    v4 = v79;
    if (!v79)
    {

      sub_23A8D50D0(&v118, &qword_27DFAF218, &qword_23AA12EF0);
      sub_23A9168D4(&v107);
      v126 = v115;
      v127 = v116;
      v128 = v117;
      v122 = v111;
      v123 = v112;
      v124 = v113;
      v125 = v114;
      v118 = v107;
      v119 = v108;
      v120 = v109;
      v121 = v110;
      v137 = v115;
      v138 = v116;
      v139 = v117;
      v133 = v111;
      v134 = v112;
      v135 = v113;
      v136 = v114;
      v129 = v107;
      v130 = v108;
      v131 = v109;
      v132 = v110;
      v49 = v95;
      if (sub_23A9301BC(&v129) == 1)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  sub_23A8D50D0(&v118, &qword_27DFAF218, &qword_23AA12EF0);
}

void *sub_23A92EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v10 = [a6 rootNode];
  v11 = sub_23AA0D634();

  if ((v11 & 1) != 0 || (v12 = [a5 path], v13 = objc_msgSend(v12, sel_stringValue), v12, !v13))
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v14 = sub_23AA0D134();
    v16 = v15;
  }

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](a1, a2);

  v18 = v14;
  v17 = v16;
  v19 = objc_allocWithZone(MEMORY[0x277D77888]);
  v20 = sub_23AA0D104();
  v21 = [v19 initWithString_];

  if (v21)
  {
    v22 = [a6 newNodeAtPath:v21 type:*MEMORY[0x277D77980]];
    if (v22)
    {
      a6 = v22;

      v23 = sub_23AA0D104();
      v24 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v25 = sub_23AA0D104();
      v26 = [v24 byte_278B65578];

      v27 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
      [a6 setMetadataWithKey:v23 value:v27];

      v28 = sub_23AA0D104();
      v29 = sub_23AA0D104();
      MEMORY[0x23EE8FCA0](a3, a4);
      v30 = objc_allocWithZone(MEMORY[0x277D77878]);
      v31 = sub_23AA0D104();

      v32 = [v30 initWithResourcePath_];

      [a6 setDictionaryMetadataWithKey:v28 dictionaryKey:v29 value:v32];
      v33 = sub_23AA0D104();
      v34 = sub_23AA0D104();
      v35 = objc_allocWithZone(MEMORY[0x277D77878]);
      v36 = sub_23AA0D104();
      v37 = [v35 initWithString_];

      [a6 setDictionaryMetadataWithKey:v33 dictionaryKey:v34 value:v37];
    }

    else
    {
      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v39 = v18;
      v39[1] = v17;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v38 = v18;
    v38[1] = v17;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return a6;
}

unint64_t sub_23A92F104()
{
  result = qword_27DFB09B0;
  if (!qword_27DFB09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB09B0);
  }

  return result;
}

void sub_23A92F158(void *a1, void *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v8 = sub_23AA0D104();
  v9 = *MEMORY[0x277D77920];
  v10 = [a1 newPropertyWithName:v8 type:*MEMORY[0x277D77920] role:0];

  if (!v10)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = a2[4];
  v12 = MEMORY[0x277D84F90];
  if (*(v11 + 16) > 2uLL)
  {
    v13 = *(v11 + 16) / 3uLL;
    v14 = sub_23AA0D324();
    *(v14 + 16) = v13;
    memset_pattern16((v14 + 32), &unk_23AA12E70, 4 * v13);
  }

  else
  {
    v13 = *(MEMORY[0x277D84F90] + 16);
    v14 = MEMORY[0x277D84F90];
  }

  v40 = v10;
  [v10 setIntArray:v14 + 32 count:v13];
  v15 = sub_23AA0D104();
  v16 = [a1 newPropertyWithName:v15 type:v9 role:0];

  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = *(v11 + 16);
  if (v17)
  {
    *&v45[0] = v12;
    sub_23A975FE8(0, v17, 0);
    v18 = (v11 + 32);
    while (1)
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 < 0)
      {
        break;
      }

      *&v45[0] = v12;
      v22 = *(v12 + 2);
      v21 = *(v12 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_23A975FE8((v21 > 1), v22 + 1, 1);
        v12 = *&v45[0];
      }

      *(v12 + 2) = v23;
      *&v12[4 * v22 + 32] = v19;
      if (!--v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v23 = *(v12 + 2);
LABEL_14:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_23A939AD4(0, v23, 0, v12);
  }

  [v16 setIntArray:v12 + 32 count:v23];
  v24 = sub_23AA0D104();
  v25 = *MEMORY[0x277D77908];
  v26 = [a1 newPropertyWithName:v24 type:*MEMORY[0x277D77908] role:0];

  if (!v26)
  {
    goto LABEL_28;
  }

  v27 = a2[2];
  v28 = *(v27 + 2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_23A9388A8(0, v28, 0, v27);
  }

  [v26 setFloat3Array:v27 + 32 count:v28];
  v29 = sub_23AA0D104();
  v30 = [a1 newPropertyWithName:v29 type:v25 role:0];

  if (!v30)
  {
    goto LABEL_29;
  }

  v31 = a2[3];
  v32 = *(v31 + 2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_23A9388A8(0, v32, 0, v31);
  }

  [v30 setFloat3Array:v31 + 32 count:v32];
  v33 = sub_23AA0D104();
  v34 = [a1 newPropertyWithName:v33 type:*MEMORY[0x277D77940] role:0];

  if (!v34)
  {
    goto LABEL_30;
  }

  v35 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v36 = sub_23AA0D104();
  v37 = [v35 initWithString_];

  [v34 setTokenValue_];
  v38 = sub_23AA0D104();
  v39 = [a1 byte_278B653D9];

  if (v39)
  {

    v45[0] = vcvtq_f64_f32(*a3.f32);
    v45[1] = vcvt_hight_f64_f32(a3);
    v45[2] = vcvtq_f64_f32(*a4.f32);
    v45[3] = vcvt_hight_f64_f32(a4);
    v45[4] = vcvtq_f64_f32(*a5.f32);
    v45[5] = vcvt_hight_f64_f32(a5);
    v45[6] = vcvtq_f64_f32(*a6.f32);
    v45[7] = vcvt_hight_f64_f32(a6);
    [v39 setDouble4x4Value_];

    return;
  }

LABEL_31:
  __break(1u);
}

void sub_23A92F638(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5, float a6)
{
  v10 = sub_23AA0D104();
  v11 = [a1 newPropertyWithName:v10 type:*MEMORY[0x277D77928] role:0];

  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  MEMORY[0x23EE8FCA0](0x726F6C6F635FLL, 0xE600000000000000);
  MEMORY[0x23EE8FCA0](a2, a3);
  MEMORY[0x23EE8FCA0](0x726F6C6F635FLL, 0xE600000000000000);
  v12 = objc_allocWithZone(MEMORY[0x277D77888]);
  v13 = sub_23AA0D104();
  v14 = [v12 initWithString_];

  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v11 setObjectPath_];

  MEMORY[0x23EE8FCA0](a2, a3);
  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);
  MEMORY[0x23EE8FCA0](a2, a3);
  v15 = objc_allocWithZone(MEMORY[0x277D77888]);
  v16 = sub_23AA0D104();

  v17 = [v15 initWithString_];

  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v11;
  v19 = *MEMORY[0x277D77950];
  v20 = [a4 newNodeAtPath:v17 type:*MEMORY[0x277D77960] specifier:*MEMORY[0x277D77950]];

  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = sub_23AA0D104();
  v55 = v20;
  v57 = *MEMORY[0x277D77940];
  v22 = [v20 newPropertyWithName:v21 type:? role:?];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23AA11BB0;
  v24 = objc_allocWithZone(MEMORY[0x277D77888]);
  v25 = sub_23AA0D104();
  v26 = [v24 initWithString_];

  if (!v26)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v23 + 32) = v26;
  if (v22)
  {
    sub_23A8D6C58(0, &qword_27DFAF1D8, 0x277D77888);
    v27 = v22;
    v28 = sub_23AA0D2E4();
    [v27 setConnectionWithTargetPaths_];
  }

  sub_23AA0D8A4();

  MEMORY[0x23EE8FCA0](a2, a3);
  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);
  MEMORY[0x23EE8FCA0](a2, a3);
  MEMORY[0x23EE8FCA0](0x656361667275732FLL, 0xEE00726564616853);
  v29 = objc_allocWithZone(MEMORY[0x277D77888]);
  v30 = sub_23AA0D104();

  v31 = [v29 initWithString_];

  if (!v31)
  {
    goto LABEL_24;
  }

  v32 = [a4 newNodeAtPath:v31 type:*MEMORY[0x277D77978] specifier:v19];

  if (!v32)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v54 = v22;
  v33 = sub_23AA0D104();
  v34 = [v32 newPropertyWithName:v33 type:v57 role:0];

  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v36 = sub_23AA0D104();
  v37 = [v35 initWithString_];

  [v34 setTokenValue_];
  v38 = sub_23AA0D104();
  v39 = *MEMORY[0x277D77900];
  v40 = *MEMORY[0x277D77988];
  v41 = [v32 newPropertyWithName:v38 type:*MEMORY[0x277D77900] role:*MEMORY[0x277D77988]];

  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v41 setFloat3Value_];
  v42 = sub_23AA0D104();
  v43 = [v32 newPropertyWithName:v42 type:v39 role:v40];

  if (!v43)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v43 setFloat3Value_];
  v44 = sub_23AA0D104();
  v45 = [v32 newPropertyWithName:v44 type:v39 role:*MEMORY[0x277D77998]];

  if (!v45)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v45 setFloat3Value_];
  v46 = sub_23AA0D104();
  v47 = *MEMORY[0x277D778E8];
  v48 = [v32 newPropertyWithName:v46 type:*MEMORY[0x277D778E8] role:0];

  if (!v48)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  LODWORD(v49) = 1.0;
  [v48 setFloatValue_];
  v50 = sub_23AA0D104();
  v51 = [v32 newPropertyWithName:v50 type:v47 role:0];

  if (!v51)
  {
LABEL_31:
    __break(1u);
    return;
  }

  *&v52 = a6;
  [v51 setFloatValue_];
  v58 = sub_23AA0D104();
  v53 = [v32 newPropertyWithName:v58 type:v57 role:0];
}

unint64_t sub_23A92FE18()
{
  result = qword_27DFAF1E8;
  if (!qword_27DFAF1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAF1E0, &qword_23AA12EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF1E8);
  }

  return result;
}

unint64_t sub_23A92FE7C()
{
  result = qword_27DFAF1F0;
  if (!qword_27DFAF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF1F0);
  }

  return result;
}

uint64_t sub_23A92FED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A92FF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A93002C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CapturedRoom.Object(0) + 32);
  return sub_23AA0C094() & 1;
}

float32x4_t sub_23A9300E4@<Q0>(float32x2_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  result = vaddq_f32(*(*(v2 + 16) + 80), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(*(v2 + 16) + 32), COERCE_FLOAT(*a1->f32)), *(*(v2 + 16) + 48), *a1, 1), *(*(v2 + 16) + 64), *a1->f32, 2));
  *a2 = result;
  return result;
}

uint64_t sub_23A9301BC(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_23A9301E0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_23A930208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23A930270()
{
  result = qword_27DFAF238;
  if (!qword_27DFAF238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAF230, &qword_23AA12F08);
    sub_23A93032C(&qword_27DFAF240, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF238);
  }

  return result;
}

uint64_t sub_23A93032C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23A9303C4()
{
  sub_23A930458();
  if (v0 <= 0x3F)
  {
    sub_23A9304A0();
    if (v1 <= 0x3F)
    {
      sub_23A9304D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23A930458()
{
  if (!qword_27DFAF258)
  {
    v0 = sub_23AA0BFB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAF258);
    }
  }
}

uint64_t sub_23A9304A0()
{
  result = qword_27DFAF260;
  if (!qword_27DFAF260)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DFAF260);
  }

  return result;
}

uint64_t sub_23A9304D0()
{
  result = qword_27DFAF268;
  if (!qword_27DFAF268)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DFAF268);
  }

  return result;
}

uint64_t sub_23A930548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9305FC(uint64_t a1)
{
  swift_beginAccess();
  if (*(*&v1[6] + 16))
  {

    sub_23A9EDF98(a1);
    v4 = v3;

    if ((v4 & 1) != 0 || *(*&v1[6] + 16) > 1uLL)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  v6 = v5[2];
  if (!*&v6)
  {
    return 0;
  }

  for (i = v5 + 4; ; ++i)
  {
    v8 = *i;
    v9 = vceq_f32(*i, v1[2]);
    if ((v9.i8[0] & 1) == 0 || (v9.i8[4] & 1) == 0)
    {
      v10 = vceq_f32(v8, v1[3]);
      if ((v10.i8[0] & 1) == 0 || (v10.i8[4] & 1) == 0)
      {
        break;
      }
    }

    if (!--*&v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v11 = v1[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v1[6];
  v1[6] = 0x8000000000000000;
  sub_23A9DA2A0(a1, isUniquelyReferenced_nonNull_native, *&v8);
  v1[6] = v14;
  swift_endAccess();
  return 1;
}

uint64_t sub_23A930738()
{
  result = swift_beginAccess();
  v2 = *(v0 + 6);
  if (*(v2 + 16) < 2uLL)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  if (!v5)
  {
    v9 = 0;
    while (((v3 + 63) >> 6) - 1 != v9)
    {
      v6 = v9 + 1;
      v10 = *(v2 + 72 + 8 * v9);
      v5 -= 64;
      ++v9;
      if (v10)
      {
        v8 = (v10 - 1) & v10;
        v7 = __clz(__rbit64(v10)) - v5;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v6 = 0;
  v7 = __clz(__rbit64(v5));
  v8 = (v5 - 1) & v5;
LABEL_11:
  v11 = *(v2 + 56);
  v12 = *(v11 + 8 * v7);
  if (!v8)
  {
    v14 = (v3 + 63) >> 6;
    v15 = v6 << 6;
    v16 = v6 + 1;
    v17 = (v2 + 8 * v6 + 72);
    while (v16 < v14)
    {
      v19 = *v17++;
      v18 = v19;
      v15 += 64;
      ++v16;
      if (v19)
      {
        v13 = __clz(__rbit64(v18)) + v15;
        goto LABEL_17;
      }
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v13 = __clz(__rbit64(v8)) | (v6 << 6);
LABEL_17:
  v20 = *(v11 + 8 * v13);
  v21 = v0[2];
  v22 = _simd_orient_vf2(vsub_f32(*&v20, *&v12), vsub_f32(*&v21, *&v12));
  type metadata accessor for CDTTriangle();
  swift_allocObject();

  if (v22 >= 0.0)
  {
    v23 = sub_23A9C34F8(v12, v20, v21, 0.001);
    v28 = v0[3];
    swift_allocObject();

    v25 = v12;
    v26 = v28;
    v27 = v20;
  }

  else
  {
    v23 = sub_23A9C34F8(v12, v21, v20, 0.001);
    v24 = v0[3];
    swift_allocObject();

    v25 = v12;
    v26 = v20;
    v27 = v24;
  }

  v29 = sub_23A9C34F8(v25, v26, v27, 0.001);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23AA12E60;
  *(v30 + 32) = v23;
  *(v30 + 40) = v29;

  return v30;
}

uint64_t sub_23A9309C8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_23A930A2C(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_50;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v43 = v3;
      v44 = v3 & 0xC000000000000001;
      v40 = v3 + 32;
      v41 = v3 & 0xFFFFFFFFFFFFFF8;
      v42 = v4;
      while (1)
      {
        if (v44)
        {
          v6 = MEMORY[0x23EE90360](v5, v3);
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            break;
          }

          goto LABEL_11;
        }

        if (v5 >= *(v41 + 16))
        {
          goto LABEL_49;
        }

        v6 = *(v40 + 8 * v5);

        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          break;
        }

LABEL_11:
        v8 = *(v6 + 32);
        if (v8 >> 62)
        {
          if (v8 < 0)
          {
            v39 = *(v6 + 32);
          }

          v9 = sub_23AA0D7F4();
          if (v9)
          {
            goto LABEL_13;
          }

LABEL_44:

          if (v5 == v4)
          {
            return result;
          }
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v9)
          {
            goto LABEL_44;
          }

LABEL_13:
          v45 = v5;
          v10 = v8 & 0xC000000000000001;

          swift_beginAccess();
          v11 = 0;
          v47 = v8 + 32;
          v48 = v8 & 0xFFFFFFFFFFFFFF8;
          v46 = v8;
          do
          {
            if (v10)
            {
              v13 = MEMORY[0x23EE90360](v11, v8);
              v7 = __OFADD__(v11++, 1);
              if (v7)
              {
                goto LABEL_46;
              }
            }

            else
            {
              if (v11 >= *(v48 + 16))
              {
                goto LABEL_47;
              }

              v13 = *(v47 + 8 * v11);

              v7 = __OFADD__(v11++, 1);
              if (v7)
              {
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
                goto LABEL_48;
              }
            }

            sub_23AA0DD14();
            v14 = *(v13 + 40);
            MEMORY[0x23EE907C0](*(v14 + 16));
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = (v14 + 32);
              do
              {
                v17 = *v16++;
                sub_23AA0DD44();
                sub_23AA0DD44();
                --v15;
              }

              while (v15);
            }

            v18 = sub_23AA0DD54();
            v3 = *(v2 + 16);
            if (*(v3 + 16))
            {
              v19 = sub_23A9EDF54(v18);
              if (v20)
              {
                v21 = *(*(v3 + 56) + 8 * v19);
                swift_beginAccess();
                v3 = *(v21 + 48);

                v23 = sub_23A9EDF98(v22);
                if (v24)
                {
                  v25 = v23;
                  v26 = *(v21 + 48);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v3 = *(v21 + 48);
                  *(v21 + 48) = 0x8000000000000000;
                  if (!isUniquelyReferenced_nonNull_native)
                  {
                    sub_23A90D46C();
                  }

                  v28 = *(*(v3 + 48) + 8 * v25);

                  sub_23A90BD98(v25, v3);

                  *(v21 + 48) = v3;
                }

                else
                {
                }

                swift_endAccess();
                if (!*(*(v21 + 48) + 16))
                {
                  sub_23AA0DD14();
                  v29 = *(v21 + 40);
                  MEMORY[0x23EE907C0](*(v29 + 16));
                  v30 = *(v29 + 16);
                  if (v30)
                  {
                    v31 = (v29 + 32);
                    do
                    {
                      v32 = *v31++;
                      sub_23AA0DD44();
                      sub_23AA0DD44();
                      --v30;
                    }

                    while (v30);
                  }

                  v33 = sub_23AA0DD54();
                  swift_beginAccess();
                  v3 = *(v2 + 16);
                  v34 = sub_23A9EDF54(v33);
                  v8 = v46;
                  if (v35)
                  {
                    v36 = v34;
                    v37 = *(v2 + 16);
                    v38 = swift_isUniquelyReferenced_nonNull_native();
                    v3 = *(v2 + 16);
                    *(v2 + 16) = 0x8000000000000000;
                    if (!v38)
                    {
                      sub_23A90D5CC();
                    }

                    v12 = *(*(v3 + 56) + 8 * v36);

                    sub_23A90BFA4(v36, v3);
                    *(v2 + 16) = v3;
                  }

                  swift_endAccess();
                }
              }
            }
          }

          while (v11 != v9);

          v4 = v42;
          v3 = v43;
          v5 = v45;
          if (v45 == v42)
          {
            return result;
          }
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      result = sub_23AA0D7F4();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_23A930E4C(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v50 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v5 = 0;
    v45 = v3 & 0xC000000000000001;
    v41 = (v3 + 32);
    v42 = v3 & 0xFFFFFFFFFFFFFF8;
    v47 = MEMORY[0x277D84F90];
    v43 = i;
    v44 = v3;
    while (1)
    {
      if (v45)
      {
        v6 = MEMORY[0x23EE90360](v5, v3);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v5 >= *(v42 + 16))
      {
        goto LABEL_52;
      }

      v6 = v41[v5];

      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        break;
      }

LABEL_11:
      v8 = *(v6 + 32);
      if (v8 >> 62)
      {
        if (v8 < 0)
        {
          v39 = *(v6 + 32);
        }

        v9 = sub_23AA0D7F4();
        if (v9)
        {
          goto LABEL_13;
        }

LABEL_47:

        if (v5 == i)
        {
          return v47;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_47;
        }

LABEL_13:
        v46 = v5;

        swift_beginAccess();
        v10 = 0;
        do
        {
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x23EE90360](v10, v8);
              v7 = __OFADD__(v10++, 1);
              if (v7)
              {
                goto LABEL_49;
              }
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_50;
              }

              v13 = *(v8 + 32 + 8 * v10);

              v7 = __OFADD__(v10++, 1);
              if (v7)
              {
LABEL_49:
                __break(1u);
LABEL_50:
                __break(1u);
                goto LABEL_51;
              }
            }

            sub_23AA0DD14();
            v14 = *(v13 + 5);
            MEMORY[0x23EE907C0](*(v14 + 16));
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = (v14 + 32);
              do
              {
                v17 = *v16++;
                sub_23AA0DD44();
                sub_23AA0DD44();
                --v15;
              }

              while (v15);
            }

            v18 = sub_23AA0DD54();
            v19 = v2[2];
            if (!*(*&v19 + 16))
            {
              break;
            }

            v20 = sub_23A9EDF54(v18);
            if ((v21 & 1) == 0)
            {
              break;
            }

            v22 = *(*(*&v19 + 56) + 8 * v20);
            swift_beginAccess();
            v3 = v22[6];
            v23 = *(v3 + 16);

            if (!v23)
            {
              goto LABEL_36;
            }

            sub_23A9EDF98(v6);
            if (v24)
            {

              goto LABEL_16;
            }

            if (*(*&v22[6] + 16) <= 1uLL)
            {
LABEL_36:
              v32 = *(v6 + 16);
              v33 = v32[2];
              if (v33)
              {
                v34 = v32 + 4;
                while (1)
                {
                  v35 = *v34;
                  v36 = vceq_f32(*v34, v22[2]);
                  if ((v36.i8[0] & 1) == 0 || (v36.i8[4] & 1) == 0)
                  {
                    v37 = vceq_f32(v35, v22[3]);
                    if ((v37.i8[0] & 1) == 0 || (v37.i8[4] & 1) == 0)
                    {
                      break;
                    }
                  }

                  ++v34;
                  if (!--*&v33)
                  {
                    goto LABEL_15;
                  }
                }

                swift_beginAccess();
                v11 = v22[6];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v48 = v22[6];
                v22[6] = 0x8000000000000000;
                v3 = &v48;
                sub_23A9DA2A0(v6, isUniquelyReferenced_nonNull_native, *&v35);
                v22[6] = v48;
                swift_endAccess();
              }
            }

LABEL_15:

LABEL_16:

            if (v10 == v9)
            {
              goto LABEL_4;
            }
          }

          v25 = v13[2];
          v26 = v13[3];
          type metadata accessor for CDTTriangleEdge();
          *(swift_allocObject() + 48) = MEMORY[0x277D84F98];
          v27 = sub_23A947224(v25, v26);
          sub_23A9305FC(v6);
          sub_23AA0DD14();
          sub_23A947DEC(v49, *(v13 + 5));
          v28 = sub_23AA0DD54();
          swift_beginAccess();

          v29 = v2[2];
          v30 = swift_isUniquelyReferenced_nonNull_native();
          v48 = v2[2];
          v2[2] = 0x8000000000000000;
          sub_23A9DA3F0(v27, v28, v30);
          v2[2] = v48;
          swift_endAccess();

          v3 = &v50;
          MEMORY[0x23EE8FD70](v31);
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v38 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23AA0D314();
          }

          sub_23AA0D334();

          v47 = v50;
        }

        while (v10 != v9);
LABEL_4:

        i = v43;
        v3 = v44;
        v5 = v46;
        if (v46 == v43)
        {
          return v47;
        }
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23A931344()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 sub_23A9313A0()
{
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v1.n128_u64[0] = vsubq_f32(0, *(v0 + 80)).u64[0];
  v1.n128_f32[2] = 0.0 - COERCE_FLOAT(*(v0 + 88));
  v1.n128_u32[3] = 0;
  v4 = v1;
  type metadata accessor for RoomCaptureQuad();
  v2 = swift_allocObject();
  v2[1] = v5;
  v2[2] = v8;
  v2[3] = v7;
  v2[4] = v6;
  result = v4;
  v2[5] = v4;
  return result;
}

double sub_23A931450(__n128 a1, double a2)
{
  v2 = vdupq_lane_s32(0, 0);
  *&v3 = __PAIR64__(HIDWORD(a2), a1.n128_u32[0]);
  v4 = a1;
  v4.n128_u32[3] = v2.u32[3];
  v11 = v4;
  *(&v3 + 1) = __PAIR64__(v2.u32[3], a1.n128_u32[2]);
  v10 = v3;
  v2.i32[0] = LODWORD(a2);
  v5 = v2;
  v5.i32[1] = HIDWORD(a2);
  v5.i32[2] = a1.n128_i32[2];
  a1.n128_u32[0] = LODWORD(a2);
  a1.n128_u32[3] = v2.u32[3];
  v8 = a1;
  v9 = v5;
  type metadata accessor for RoomCaptureQuad();
  v6 = swift_allocObject();
  v6[1] = v11;
  v6[2] = v10;
  v6[3] = v9;
  v6[4] = v8;
  result = 0.0;
  v6[5] = xmmword_23AA12240;
  return result;
}

double sub_23A9314E0(double a1, __n128 a2)
{
  v2 = vdupq_lane_s32(0, 0);
  v3 = v2;
  v3.i32[0] = LODWORD(a1);
  v4 = v3;
  v4.i32[1] = HIDWORD(a1);
  v4.i32[2] = a2.n128_i32[2];
  v11 = v4;
  v2.i64[0] = __PAIR64__(HIDWORD(a1), a2.n128_u32[0]);
  v5 = a2;
  v5.n128_u32[3] = v2.u32[3];
  v2.i32[2] = a2.n128_i32[2];
  v9 = v2;
  v10 = v5;
  a2.n128_u32[0] = LODWORD(a1);
  a2.n128_u32[3] = v3.u32[3];
  v8 = a2;
  type metadata accessor for RoomCaptureQuad();
  v6 = swift_allocObject();
  v6[1] = v11;
  v6[2] = v9;
  v6[3] = v10;
  v6[4] = v8;
  result = 0.0;
  v6[5] = xmmword_23AA12250;
  return result;
}

void CapturedRoomData.init(from:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a1;
  v84 = a2;
  v94 = sub_23AA0D904();
  v93 = *(v94 - 8);
  v2 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v85 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF270, &qword_23AA13030);
  v86 = *(v87 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v104 = &v73 - v5;
  v6 = sub_23AA0D014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0D184();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23AA0CFD4();
  v90 = *(v91 - 8);
  v16 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_23AA0CFF4();
  v89 = *(v88 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v96 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0D174();
  v21 = sub_23AA0D144();
  v23 = v22;
  (*(v12 + 8))(v15, v11);
  if (v23 >> 60 == 15)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = sub_23AA0BFC4();
  v26 = v25;
  sub_23A932864(v21, v23);
  sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540]);
  sub_23AA0CFC4();
  sub_23A934274(v24, v26);
  v27 = v92;
  sub_23A934094(v24, v26);
  sub_23A8EFA00(v24, v26);
  sub_23AA0CFB4();
  sub_23A8EFA00(v24, v26);
  (*(v7 + 8))(v10, v6);
  sub_23A934B64(&qword_27DFAF280, MEMORY[0x277CC5290]);
  v28 = v91;
  v29 = sub_23AA0D004();
  v31 = sub_23A9343A8(v29, v30);

  v32 = sub_23A9346C8(v31);
  v34 = v33;

  *&v97[0] = v32;
  *(&v97[0] + 1) = v34;
  v35 = v96;
  sub_23AA0CFE4();
  (*(v90 + 8))(v18, v28);
  v36 = v95;
  v37 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  sub_23A934778();
  sub_23AA0DD74();
  if (v27)
  {
    (*(v89 + 8))(v35, v88);
    v38 = v94;
    swift_allocError();
    v46 = v45;
    sub_23AA0D8E4();
    (*(v93 + 104))(v46, *MEMORY[0x277D84168], v38);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v36);

    return;
  }

  LOBYTE(v102) = 1;
  v39 = sub_23A9347CC();
  sub_23AA0DAF4();
  v92 = v39;
  v40 = v97[0];
  sub_23A934274(*&v97[0], *(&v97[0] + 1));
  v41 = sub_23A932878(v40, *(&v40 + 1));
  v43 = v42;
  v90 = v40;
  v91 = v41;
  v44 = sub_23AA0CF64();
  v82 = *(&v40 + 1);
  v83 = v47;
  v48 = v44;
  v49 = sub_23A8D6C58(0, &qword_27DFAF298, 0x277CCAAC8);
  v81 = v48;
  sub_23AA0D4F4();
  v79 = v49;
  v80 = v43;
  if (!v103)
  {
    goto LABEL_10;
  }

  sub_23A8EF9F0(&v102, v97);
  sub_23A8D6C58(0, &unk_27DFAF2A0, 0x277D46C70);
  swift_dynamicCast();
  v50 = v100;
  LOBYTE(v102) = 0;
  sub_23AA0DAF4();
  v51 = v97[0];
  sub_23A934274(*&v97[0], *(&v97[0] + 1));
  v52 = sub_23A932878(v51, *(&v51 + 1));
  v77 = v51 >> 64;
  v78 = v51;
  v53 = v52;
  v55 = v54;
  v56 = sub_23AA0CF64();
  v75 = v53;
  v76 = v55;
  v57 = v56;
  v74 = v58;
  sub_23AA0D4F4();
  sub_23A934820(&v102, &v100);
  if (!v101)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_23A8EF9F0(&v100, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF2B0, &unk_23AA13040);
  swift_dynamicCast();
  v59 = sub_23AA0D024();

  v60 = RSKeyframeSequenceFromDictionary();

  if (!v60)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_23AA0C0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
  sub_23A934B64(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
  v61 = sub_23AA0D034();

  LOBYTE(v100) = 2;
  sub_23AA0DAF4();
  v62 = v97[0];
  sub_23A934274(*&v97[0], *(&v97[0] + 1));
  v63 = sub_23A932878(v62, *(&v62 + 1));
  v65 = v64;
  v73 = sub_23AA0CF64();
  v92 = v66;
  sub_23AA0D4F4();
  if (v99)
  {
    sub_23A8EFA00(v73, v92);
    sub_23A8EFA00(v63, v65);
    sub_23A8EFA00(v57, v74);
    sub_23A8EFA00(v75, v76);
    sub_23A8EFA00(v81, v83);
    sub_23A8EFA00(v91, v80);
    sub_23A8EFA00(v62, *(&v62 + 1));
    sub_23A8EFA00(v78, v77);
    sub_23A8EFA00(v90, v82);
    sub_23A8D50D0(&v102, &unk_27DFB08E0, &qword_23AA13038);
    (*(v86 + 8))(v104, v87);
    (*(v89 + 8))(v96, v88);
    sub_23A8EF9F0(&v98, &v100);
    type metadata accessor for simd_float4x4(0);
    swift_dynamicCast();
    v70 = v97[0];
    v69 = v97[1];
    v72 = v97[2];
    v71 = v97[3];
    v67 = v84;
    *v84 = v61;
    v67[1] = v50;
    *(v67 + 1) = v70;
    *(v67 + 2) = v69;
    *(v67 + 3) = v72;
    *(v67 + 4) = v71;

    v68 = v50;
    __swift_destroy_boxed_opaque_existential_1(v95);

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_23A932864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A8EFA00(a1, a2);
  }

  return a1;
}

uint64_t sub_23A932878(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v28, 0, 14);
          v14 = v28;
          v13 = v28;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_23AA0BD34();
        if (v17)
        {
          v18 = sub_23AA0BD54();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v28[0] = *v9;
        LOWORD(v28[1]) = v11;
        BYTE2(v28[1]) = BYTE2(v11);
        BYTE3(v28[1]) = BYTE3(v11);
        BYTE4(v28[1]) = BYTE4(v11);
        BYTE5(v28[1]) = BYTE5(v11);
        v13 = v28 + BYTE6(v11);
        v14 = v28;
LABEL_33:
        sub_23A934000(v14, v13, &v29);
        v7 = v29;
        __swift_destroy_boxed_opaque_existential_1(v30);
        goto LABEL_34;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_23AA0BD34();
        if (!v17)
        {
LABEL_25:
          v23 = sub_23AA0BD44();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_23AA0BD54();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_23A8EFA00(a1, a2);
  v7 = sub_23AA0CF94();
  sub_23A934B64(&qword_27DFAF328, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
LABEL_34:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

void CapturedRoomData.encode(to:)(void *a1)
{
  v127 = a1;
  v136 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2D8, &qword_23AA15C80);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v115 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v121 = &v110 - v7;
  MEMORY[0x28223BE20](v6);
  v122 = &v110 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2E0, &qword_23AA13070);
  v130 = *(v9 - 8);
  v131 = v9;
  v10 = *(v130 + 64);
  MEMORY[0x28223BE20](v9);
  v133 = &v110 - v11;
  v12 = sub_23AA0D014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23AA0D184();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23AA0CFD4();
  v123 = *(v22 - 1);
  v124 = v22;
  v23 = *(v123 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23AA0CFF4();
  v27 = *(v26 - 8);
  v128 = v26;
  v129 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v132 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 8);
  v120 = *v1;
  v125 = v30;
  v31 = *(v1 + 32);
  v119 = *(v1 + 16);
  v118 = v31;
  v32 = *(v1 + 64);
  v117 = *(v1 + 48);
  v116 = v32;
  sub_23AA0D174();
  v33 = sub_23AA0D144();
  v35 = v34;
  (*(v18 + 8))(v21, v17);
  if (v35 >> 60 == 15)
  {
    __break(1u);
  }

  v36 = sub_23AA0BFC4();
  v38 = v37;
  sub_23A932864(v33, v35);
  sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540]);
  sub_23AA0CFC4();
  sub_23A934274(v36, v38);
  v39 = v126;
  sub_23A934094(v36, v38);
  v126 = v39;
  sub_23A8EFA00(v36, v38);
  sub_23AA0CFB4();
  sub_23A8EFA00(v36, v38);
  (*(v13 + 8))(v16, v12);
  sub_23A934B64(&qword_27DFAF280, MEMORY[0x277CC5290]);
  v40 = v124;
  v41 = sub_23AA0D004();
  v43 = sub_23A9343A8(v41, v42);

  v44 = sub_23A9346C8(v43);
  v46 = v45;

  *&v135[0] = v44;
  *(&v135[0] + 1) = v46;
  v47 = v132;
  sub_23AA0CFE4();
  (*(v123 + 8))(v25, v40);
  v48 = v127[4];
  __swift_project_boxed_opaque_existential_1(v127, v127[3]);
  sub_23A934778();
  v49 = v133;
  sub_23AA0DD84();
  v50 = objc_opt_self();
  *&v135[0] = 0;
  v51 = [v50 archivedDataWithRootObject:v125 requiringSecureCoding:0 error:v135];
  v52 = *&v135[0];
  v53 = v49;
  v54 = v47;
  if (v51)
  {
    v125 = v50;
    v55 = sub_23AA0BFE4();
    v57 = v56;

    v127 = v55;
    *&v135[0] = v55;
    *(&v135[0] + 1) = v57;
    v58 = sub_23AA0CF84();
    v59 = *(v58 - 8);
    v60 = *(v59 + 56);
    v61 = v59 + 56;
    v62 = v122;
    v60(v122, 1, 1, v58);
    v63 = sub_23A934890();
    v64 = v126;
    v65 = sub_23AA0CF74();
    v67 = v64;
    if (v64)
    {
      sub_23A8D50D0(v62, &qword_27DFAF2D8, &qword_23AA15C80);
      (*(v130 + 8))(v133, v131);
      (*(v129 + 8))(v54, v128);
      sub_23A8EFA00(v127, v57);
    }

    else
    {
      v69 = v65;
      v114 = v63;
      v123 = v61;
      v124 = v60;
      v126 = v57;
      v70 = v66;
      sub_23A8D50D0(v62, &qword_27DFAF2D8, &qword_23AA15C80);
      *&v135[0] = v69;
      *(&v135[0] + 1) = v70;
      v134 = 1;
      sub_23A934274(v69, v70);
      v71 = sub_23A9348E4();
      sub_23AA0DB74();
      v113 = v71;
      v122 = v70;
      sub_23A8EFA00(*&v135[0], *(&v135[0] + 1));
      sub_23AA0C0E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
      sub_23A934B64(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      v77 = sub_23AA0D024();
      v78 = RSKeyframeSequenceToDictionary();

      v79 = v127;
      if (v78)
      {
        v80 = sub_23AA0D034();
      }

      else
      {
        v80 = 0;
      }

      v81 = v121;
      v82 = v125;
      *&v135[0] = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF308, &qword_23AA13088);
      v83 = sub_23AA0D654();

      *&v135[0] = 0;
      v84 = [v82 archivedDataWithRootObject:v83 requiringSecureCoding:1 error:v135];
      swift_unknownObjectRelease();
      v85 = *&v135[0];
      if (v84)
      {
        v86 = sub_23AA0BFE4();
        v88 = v87;

        *&v135[0] = v86;
        *(&v135[0] + 1) = v88;
        v124(v81, 1, 1, v58);
        v89 = sub_23AA0CF74();
        v120 = v58;
        v121 = v86;
        v125 = v88;
        v94 = v93;
        v95 = v89;
        sub_23A8D50D0(v81, &qword_27DFAF2D8, &qword_23AA15C80);
        *&v135[0] = v95;
        *(&v135[0] + 1) = v94;
        v134 = 0;
        sub_23A934274(v95, v94);
        sub_23AA0DB74();
        v111 = v95;
        v112 = v94;
        sub_23A8EFA00(*&v135[0], *(&v135[0] + 1));
        v135[0] = v119;
        v135[1] = v118;
        v135[2] = v117;
        v135[3] = v116;
        type metadata accessor for simd_float4x4(0);
        v96 = sub_23AA0DC04();
        *&v135[0] = 0;
        v97 = [v82 archivedDataWithRootObject:v96 requiringSecureCoding:0 error:v135];
        swift_unknownObjectRelease();
        v98 = *&v135[0];
        v99 = v126;
        if (v97)
        {
          v100 = sub_23AA0BFE4();
          v102 = v101;

          *&v135[0] = v100;
          *(&v135[0] + 1) = v102;
          v103 = v115;
          v124(v115, 1, 1, v120);
          v105 = sub_23AA0CF74();
          v107 = v106;
          v124 = v69;
          sub_23A8D50D0(v103, &qword_27DFAF2D8, &qword_23AA15C80);
          *&v135[0] = v105;
          *(&v135[0] + 1) = v107;
          v134 = 2;
          sub_23A934274(v105, v107);
          v108 = v131;
          v109 = v133;
          sub_23AA0DB74();
          sub_23A8EFA00(v100, v102);
          sub_23A8EFA00(v121, v125);
          sub_23A8EFA00(v127, v99);
          sub_23A8EFA00(v105, v107);
          sub_23A8EFA00(v111, v112);
          sub_23A8EFA00(v124, v122);
          sub_23A8EFA00(*&v135[0], *(&v135[0] + 1));
          (*(v130 + 8))(v109, v108);
          (*(v129 + 8))(v132, v128);
          goto LABEL_8;
        }

        v104 = v98;
        v67 = sub_23AA0BE74();

        swift_willThrow();
        sub_23A8EFA00(v121, v125);
        sub_23A8EFA00(v127, v99);
        v91 = v111;
        v92 = v112;
      }

      else
      {
        v90 = v85;
        v67 = sub_23AA0BE74();

        swift_willThrow();
        v91 = v79;
        v92 = v126;
      }

      sub_23A8EFA00(v91, v92);
      sub_23A8EFA00(v69, v122);
      (*(v130 + 8))(v133, v131);
      (*(v129 + 8))(v132, v128);
    }
  }

  else
  {
    v68 = v52;
    v67 = sub_23AA0BE74();

    swift_willThrow();
    (*(v130 + 8))(v53, v131);
    (*(v129 + 8))(v47, v128);
  }

  v72 = sub_23AA0D924();
  swift_allocError();
  v74 = v73;
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2E8, &qword_23AA13078) + 48);
  v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2F0, &qword_23AA13080);
  *v74 = &type metadata for CapturedRoomData;
  sub_23AA0D8E4();
  (*(*(v72 - 8) + 104))(v74, *MEMORY[0x277D841A8], v72);
  swift_willThrow();

LABEL_8:
  v76 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23A933B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6573734165726F63;
  v4 = 0x800000023AA1CC90;
  if (v2 == 1)
  {
    v5 = 0xE900000000000074;
  }

  else
  {
    v3 = 0xD000000000000018;
    v5 = 0x800000023AA1CC90;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656D61726679656BLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000073;
  }

  v8 = 0x6573734165726F63;
  if (*a2 == 1)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v8 = 0xD000000000000018;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656D61726679656BLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000073;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A933C44()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A933CEC()
{
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A933D80()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A933E24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A934B18();
  *a2 = result;
  return result;
}

void sub_23A933E54(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = *v1;
  v4 = 0x6573734165726F63;
  v5 = 0x800000023AA1CC90;
  if (v3 == 1)
  {
    v5 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656D61726679656BLL;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_23A933EB8()
{
  v1 = 0x6573734165726F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D61726679656BLL;
  }
}

uint64_t sub_23A933F18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A934B18();
  *a1 = result;
  return result;
}

uint64_t sub_23A933F58(uint64_t a1)
{
  v2 = sub_23A934778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A933F94(uint64_t a1)
{
  v2 = sub_23A934778();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *sub_23A934000@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_23A934510(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_23A9345C8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_23A934644(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_23A934094(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_23AA0D014();
      sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540]);
      result = sub_23AA0CFA4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_23A9342C8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23A934274(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23A9342C8(uint64_t a1, uint64_t a2)
{
  result = sub_23AA0BD34();
  if (!result || (result = sub_23AA0BD54(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23AA0BD44();
      sub_23AA0D014();
      sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540]);
      return sub_23AA0CFA4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9343A8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF340, &unk_23AA19BA0);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23A934510(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23A9345C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_23AA0BD64();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_23AA0BD24();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23AA0BFD4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_23A934644(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_23AA0BD64();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_23AA0BD24();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23A9346C8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF330, &unk_23AA13280);
  v10 = sub_23A934BAC();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_23A934000(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_23A934778()
{
  result = qword_27DFAF288;
  if (!qword_27DFAF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF288);
  }

  return result;
}

unint64_t sub_23A9347CC()
{
  result = qword_27DFAF290;
  if (!qword_27DFAF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF290);
  }

  return result;
}

uint64_t sub_23A934820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB08E0, &qword_23AA13038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A934890()
{
  result = qword_27DFAF2F8;
  if (!qword_27DFAF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF2F8);
  }

  return result;
}

unint64_t sub_23A9348E4()
{
  result = qword_27DFAF300;
  if (!qword_27DFAF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF300);
  }

  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_23A934954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23A93499C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23A934A14()
{
  result = qword_27DFAF310;
  if (!qword_27DFAF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF310);
  }

  return result;
}

unint64_t sub_23A934A6C()
{
  result = qword_27DFAF318;
  if (!qword_27DFAF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF318);
  }

  return result;
}

unint64_t sub_23A934AC4()
{
  result = qword_27DFAF320;
  if (!qword_27DFAF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF320);
  }

  return result;
}

uint64_t sub_23A934B18()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23A934B64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A934BAC()
{
  result = qword_27DFAF338;
  if (!qword_27DFAF338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAF330, &unk_23AA13280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF338);
  }

  return result;
}

uint64_t sub_23A934C18()
{
  if (*v0)
  {
    result = 0x7463656A626FLL;
  }

  else
  {
    result = 0x65636166727573;
  }

  *v0;
  return result;
}

uint64_t sub_23A934C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636166727573 && a2 == 0xE700000000000000;
  if (v6 || (sub_23AA0DBD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23AA0DBD4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23A934D34(uint64_t a1)
{
  v2 = sub_23A93A45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A934D70(uint64_t a1)
{
  v2 = sub_23A93A45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A934E00(uint64_t a1)
{
  v2 = sub_23A93A4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A934E3C(uint64_t a1)
{
  v2 = sub_23A93A4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A934E78()
{
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](0);
  return sub_23AA0DD54();
}

uint64_t sub_23A934EBC()
{
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](0);
  return sub_23AA0DD54();
}

uint64_t sub_23A934EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23AA0DBD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23A934F7C(uint64_t a1)
{
  v2 = sub_23A93A558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A934FB8(uint64_t a1)
{
  v2 = sub_23A93A558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedElementCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF350, &qword_23AA13290);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF358, &qword_23AA13298);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF360, &qword_23AA132A0);
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v21 - v13;
  v26 = *v1;
  v15 = v1[1];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A93A45C();
  sub_23AA0DD84();
  if (v15)
  {
    v30 = 1;
    sub_23A93A4B0();
    v17 = v25;
    sub_23AA0DB24();
    v29 = v26;
    sub_23A93A504();
    v18 = v24;
    sub_23AA0DB74();
    (*(v23 + 8))(v6, v18);
  }

  else
  {
    v28 = 0;
    sub_23A93A558();
    v17 = v25;
    sub_23AA0DB24();
    v27 = v26;
    sub_23A93A5AC();
    v19 = v22;
    sub_23AA0DB74();
    (*(v21 + 8))(v10, v19);
  }

  return (*(v11 + 8))(v14, v17);
}

uint64_t CapturedElementCategory.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF390, &qword_23AA132A8);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF398, &qword_23AA132B0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A0, &qword_23AA132B8);
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = &v28 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23A93A45C();
  v17 = v32;
  sub_23AA0DD74();
  if (!v17)
  {
    v32 = v11;
    v18 = v30;
    v19 = sub_23AA0DB14();
    if (*(v19 + 16) == 1)
    {
      v20 = v31;
      v34 = *(v19 + 32);
      if (v34)
      {
        v38 = 1;
        sub_23A93A4B0();
        sub_23AA0DA74();
        sub_23A93A600();
        sub_23AA0DAF4();
        (*(v29 + 8))(v6, v3);
        (*(v32 + 8))(v14, v20);
        swift_unknownObjectRelease();
        v21 = v37;
      }

      else
      {
        v36 = 0;
        sub_23A93A558();
        sub_23AA0DA74();
        sub_23A93A654();
        sub_23AA0DAF4();
        (*(v28 + 8))(v10, v7);
        (*(v32 + 8))(v14, v20);
        swift_unknownObjectRelease();
        v21 = v35;
      }

      *v18 = v21;
      v18[1] = v34;
    }

    else
    {
      v22 = sub_23AA0D904();
      swift_allocError();
      v24 = v23;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0) + 48);
      *v24 = &type metadata for CapturedElementCategory;
      v26 = v31;
      sub_23AA0DA84();
      sub_23AA0D8E4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v32 + 8))(v14, v26);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_23A9357E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A935814()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A935848()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A93587C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9358E4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23A935914@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_23A935928()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_23A935934(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_23A935944()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_23AA0DD14();
  sub_23AA0D1D4();
  sub_23AA0DD34();
  if (v4 != 1)
  {
    MEMORY[0x23EE907C0](v3);
  }

  return sub_23AA0DD54();
}

uint64_t sub_23A9359D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_23AA0D1D4();
  if (v4 == 1)
  {
    return sub_23AA0DD34();
  }

  sub_23AA0DD34();
  return MEMORY[0x23EE907C0](v3);
}

uint64_t sub_23A935A34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_23AA0DD14();
  sub_23AA0D1D4();
  sub_23AA0DD34();
  if (v4 != 1)
  {
    MEMORY[0x23EE907C0](v3);
  }

  return sub_23AA0DD54();
}

void *sub_23A935ABC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_23A935AD4(uint64_t a1)
{
  v2 = sub_23A93A6A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A935B10(uint64_t a1)
{
  v2 = sub_23A93A6A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A935B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_23AA0DBD4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t CapturedRoom.AttributesCodableRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3C0, &qword_23AA132C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A93A6A8();
  sub_23AA0DD74();
  v11 = v2;
  if (!v2)
  {
    v40 = a2;
    v41 = a1;
    v12 = 0;
    v43 = MEMORY[0x277D84F90];
    v45 = v6;
    while (1)
    {
      LOBYTE(v53) = *(&unk_284D805E0 + v12 + 32);
      result = CapturedRoom.Object.Category.supportedAttributeTypes.getter();
      v14 = result;
      v15 = *(result + 16);
      if (!v15)
      {
        goto LABEL_4;
      }

      v16 = 0;
      v47 = *(result + 16);
      v48 = result + 32;
      v42 = v15 - 1;
      v44 = v12;
      v46 = result;
      do
      {
        v17 = v16;
        v18 = v47;
        while (1)
        {
          if (v17 >= *(v14 + 16))
          {
            __break(1u);
            return result;
          }

          v49 = *(v48 + 16 * v17);
          v53 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D0, &qword_23AA132D0);
          *&v53 = sub_23AA0D1A4();
          *(&v53 + 1) = v19;
          v54 = 0;
          v55 = 1;
          v20 = sub_23AA0DA94();
          if (v11)
          {

            (*(v45 + 8))(v9, v5);

            a1 = v41;
            goto LABEL_21;
          }

          v22 = v20;
          v23 = v21;

          if (v23)
          {
            break;
          }

LABEL_8:
          if (v18 == ++v17)
          {
            v12 = v44;
            v6 = v45;
            goto LABEL_4;
          }
        }

        v56 = 0;
        v24 = v9;
        v25 = v5;
        v50 = v22;
        v51 = v23;
        v26 = v49;
        v27 = sub_23AA0D664();
        v28 = *(v27 - 8);
        v29 = *(v28 + 64);
        MEMORY[0x28223BE20](v27);
        v31 = &v39 - v30;
        v32 = *(*(&v49 + 1) + 16);
        sub_23AA0D284();
        v33 = *(v26 - 8);
        if ((*(v33 + 48))(v31, 1, v26) == 1)
        {
          result = (*(v28 + 8))(v31, v27);
          v5 = v25;
          v9 = v24;
          v11 = v56;
          v14 = v46;
          v18 = v47;
          goto LABEL_8;
        }

        *&v52[3] = v49;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
        (*(v33 + 32))(boxed_opaque_existential_1, v31, v26);
        sub_23A8CAA3C(v52, &v53);
        sub_23A8CA9D8(&v53, v52);
        v35 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_23A939C08(0, v35[2] + 1, 1, v35, &qword_27DFAF680, &qword_23AA14418, &qword_27DFAF688, &qword_23AA14420);
        }

        v5 = v25;
        v9 = v24;
        v37 = v35[2];
        v36 = v35[3];
        v11 = v56;
        v14 = v46;
        if (v37 >= v36 >> 1)
        {
          v35 = sub_23A939C08((v36 > 1), v37 + 1, 1, v35, &qword_27DFAF680, &qword_23AA14418, &qword_27DFAF688, &qword_23AA14420);
        }

        v16 = v17 + 1;
        __swift_destroy_boxed_opaque_existential_1(&v53);
        v35[2] = v37 + 1;
        v43 = v35;
        result = sub_23A8CAA3C(v52, &v35[5 * v37 + 4]);
        v12 = v44;
        v6 = v45;
      }

      while (v42 != v17);
LABEL_4:
      ++v12;

      if (v12 == 16)
      {
        (*(v6 + 8))(v9, v5);
        *v40 = v43;
        v38 = v41;
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }
    }
  }

LABEL_21:
  v38 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t CapturedRoom.AttributesCodableRepresentation.encode(to:)(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D8, &qword_23AA132D8);
  v16 = *(v24 - 8);
  v4 = *(v16 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A93A6A8();
  result = sub_23AA0DD84();
  v10 = *(v7 + 16);
  if (!v10)
  {
    return (*(v16 + 8))(v6, v24);
  }

  v11 = 0;
  v12 = v7 + 32;
  while (v11 < *(v7 + 16))
  {
    sub_23A8CA9D8(v12, v21);
    v13 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = *(v13 + 16);
    sub_23AA0D274();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    DynamicType = swift_getDynamicType();
    v18 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D0, &qword_23AA132D0);
    DynamicType = sub_23AA0D1A4();
    v18 = v15;
    v19 = 0;
    v20 = 1;
    sub_23AA0DB34();
    if (v2)
    {

      (*(v16 + 8))(v6, v24);
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    ++v11;
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    v12 += 40;
    if (v10 == v11)
    {
      return (*(v16 + 8))(v6, v24);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A936390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_23A9363FC()
{
  sub_23A8CA9D8(v0, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D0, &qword_23AA132D0);
  sub_23AA0D1A4();
  sub_23AA0D1D4();

  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 16);
  sub_23AA0D274();
  sub_23AA0D1D4();
}

uint64_t sub_23A9364F8()
{
  sub_23AA0DD14();
  sub_23A8CA9D8(v0, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D0, &qword_23AA132D0);
  sub_23AA0D1A4();
  sub_23AA0D1D4();

  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 16);
  sub_23AA0D274();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

BOOL sub_23A9365EC()
{
  sub_23A9106D0();
  v0 = sub_23AA0D054();
  return v0 == sub_23AA0D054();
}

uint64_t sub_23A93665C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v9);
  if (BYTE1(v9) <= 0xFEu)
  {
    v9 = sub_23AA0D1A4();
    v10 = v4;
    MEMORY[0x23EE8FCA0](45, 0xE100000000000000);
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v5 = sub_23AA0D1A4();
    MEMORY[0x23EE8FCA0](v5);
  }

  else
  {
    v9 = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v9 = sub_23AA0D1A4();
    v10 = v3;
  }

  MEMORY[0x23EE8FCA0](45, 0xE100000000000000);
  v6 = *(a2 + 16);
  sub_23AA0D274();
  MEMORY[0x23EE8FCA0](DynamicType);

  return v9;
}

uint64_t ChairType.shortIdentifier.getter()
{
  v1 = 0x6843676E696E6964;
  v2 = 0x6C6576697773;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    v1 = 0x6C6F6F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

RoomPlan::ChairType_optional __swiftcall ChairType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChairType.rawValue.getter()
{
  v1 = 0x676E696E6964;
  v2 = 0x6C6576697773;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    v1 = 0x6C6F6F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A936924()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A9369E4()
{
  *v0;
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A936A90()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A936B58(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E696E6964;
  v4 = 0xE600000000000000;
  v5 = 0x6C6576697773;
  if (*v1 != 2)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (*v1)
  {
    v3 = 0x6C6F6F7473;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23A936BD4()
{
  v1 = 0x6843676E696E6964;
  v2 = 0x6C6576697773;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    v1 = 0x6C6F6F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ChairLegType.shortIdentifier.getter()
{
  v1 = 0x7367654C72617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7367654C72756F66;
  }
}

RoomPlan::ChairLegType_optional __swiftcall ChairLegType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChairLegType.rawValue.getter()
{
  v1 = 1918989427;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1920298854;
  }
}

uint64_t sub_23A936D84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1918989427;
  if (v2 != 1)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1920298854;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1918989427;
  if (*a2 != 1)
  {
    v8 = 0x69746E6564696E75;
    v3 = 0xEC00000064656966;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1920298854;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A936E7C()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A936F18()
{
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A936FA0()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A937044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1918989427;
  if (v2 != 1)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1920298854;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23A9370A8()
{
  v1 = 0x7367654C72617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7367654C72756F66;
  }
}

uint64_t ChairArmType.shortIdentifier.getter()
{
  if (*v0)
  {
    result = 0x736D72416F6ELL;
  }

  else
  {
    result = 0x736D724177;
  }

  *v0;
  return result;
}

uint64_t ChairArmType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x676E697373696DLL;
  }

  else
  {
    result = 0x676E697473697865;
  }

  *v0;
  return result;
}

uint64_t sub_23A9371B4()
{
  *v0;
  sub_23AA0D1D4();
}

void sub_23A937234(uint64_t *a1@<X8>)
{
  v2 = 0x676E697473697865;
  if (*v1)
  {
    v2 = 0x676E697373696DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23A937274()
{
  if (*v0)
  {
    result = 0x736D72416F6ELL;
  }

  else
  {
    result = 0x736D724177;
  }

  *v0;
  return result;
}

uint64_t ChairBackType.shortIdentifier.getter()
{
  if (*v0)
  {
    result = 0x6B6361426F6ELL;
  }

  else
  {
    result = 0x6B63614277;
  }

  *v0;
  return result;
}

uint64_t sub_23A937304(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676E697373696DLL;
  }

  else
  {
    v4 = 0x676E697473697865;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x676E697373696DLL;
  }

  else
  {
    v6 = 0x676E697473697865;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23AA0DBD4();
  }

  return v9 & 1;
}

uint64_t sub_23A9373AC()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A937430()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A9374BC()
{
  if (*v0)
  {
    result = 0x6B6361426F6ELL;
  }

  else
  {
    result = 0x6B63614277;
  }

  *v0;
  return result;
}

unint64_t SofaType.shortIdentifier.getter()
{
  v1 = *v0;
  v2 = 0x75676E6174636572;
  v3 = 0xD000000000000010;
  v4 = 0x6553656C676E6973;
  if (v1 != 3)
  {
    v4 = 0x69746E6564696E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465706168536CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

RoomPlan::SofaType_optional __swiftcall SofaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23A937634()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A937730()
{
  *v0;
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A937818()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A93791C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000072616CLL;
  v4 = 0x75676E6174636572;
  v5 = 0x800000023AA1CFD0;
  v6 = 0xD000000000000010;
  v7 = 0xEA00000000007461;
  v8 = 0x6553656C676E6973;
  if (v2 != 3)
  {
    v8 = 0x69746E6564696E75;
    v7 = 0xEC00000064656966;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6465706168536CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_23A9379E0()
{
  v1 = *v0;
  v2 = 0x75676E6174636572;
  v3 = 0xD000000000000010;
  v4 = 0x6553656C676E6973;
  if (v1 != 3)
  {
    v4 = 0x69746E6564696E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465706168536CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}